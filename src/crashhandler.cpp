// Copyright 2023 The Forgotten Server Authors. All rights reserved.
// Use of this source code is governed by the GPL-2.0 License that can be found in the LICENSE file.

#include "crashhandler.h"
#include <fstream>
#include <sstream>
#include <iomanip>
#include <chrono>
#include <filesystem>
#include <iostream>

// Static member definitions
std::vector<LuaStackFrame> CrashHandler::luaCallStack;
std::string CrashHandler::currentLuaFile;
int CrashHandler::currentLuaLine = 0;
std::string CrashHandler::lastLuaError;
bool CrashHandler::symbolsInitialized = false;
#ifdef _WIN32
HANDLE CrashHandler::processHandle = nullptr;
#endif

void CrashHandler::initialize() {
#ifdef _WIN32
    // Set up Windows SEH exception handler
    SetUnhandledExceptionFilter(exceptionHandler);
    
    // Initialize debug symbols
    processHandle = GetCurrentProcess();
    SymSetOptions(SYMOPT_UNDNAME | SYMOPT_DEFERRED_LOADS | SYMOPT_LOAD_LINES);
    
    if (SymInitialize(processHandle, nullptr, TRUE)) {
        symbolsInitialized = true;
        std::cout << "[CrashHandler] Debug symbols initialized successfully." << std::endl;
    } else {
        std::cout << "[CrashHandler] Warning: Could not initialize debug symbols." << std::endl;
    }
#else
    // Set up Unix signal handlers
    struct sigaction sa;
    sa.sa_sigaction = signalHandler;
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = SA_SIGINFO | SA_RESTART;
    
    sigaction(SIGSEGV, &sa, nullptr);  // Segmentation fault
    sigaction(SIGABRT, &sa, nullptr);  // Abort signal
    sigaction(SIGFPE, &sa, nullptr);   // Floating point exception
    sigaction(SIGILL, &sa, nullptr);   // Illegal instruction
    sigaction(SIGBUS, &sa, nullptr);   // Bus error
    
    symbolsInitialized = true;
    std::cout << "[CrashHandler] Unix signal handlers initialized." << std::endl;
#endif
    
    // Ensure log directory exists
    ensureLogDirectory();
    
    std::cout << "[CrashHandler] Crash handler initialized." << std::endl;
}

void CrashHandler::cleanup() {
#ifdef _WIN32
    if (symbolsInitialized && processHandle) {
        SymCleanup(processHandle);
        symbolsInitialized = false;
    }
#else
    // Reset signal handlers to default
    signal(SIGSEGV, SIG_DFL);
    signal(SIGABRT, SIG_DFL);
    signal(SIGFPE, SIG_DFL);
    signal(SIGILL, SIG_DFL);
    signal(SIGBUS, SIG_DFL);
    symbolsInitialized = false;
#endif
}

#ifdef _WIN32
LONG WINAPI CrashHandler::exceptionHandler(EXCEPTION_POINTERS* exceptionInfo) {
    std::cout << "[CrashHandler] CRITICAL ERROR: Server crashed!" << std::endl;
    
    // Generate detailed crash report
    generateCrashReport(exceptionInfo);
    
    std::cout << "[CrashHandler] Crash report generated in data/logs/crash.log" << std::endl;
    
    // Return to let the system handle the crash normally
    return EXCEPTION_EXECUTE_HANDLER;
}
#else
void CrashHandler::signalHandler(int signal, siginfo_t* info, void* context) {
    std::cout << "[CrashHandler] CRITICAL ERROR: Server crashed with signal " << signal << "!" << std::endl;
    
    // Generate detailed crash report
    generateCrashReport(signal, info, context);
    
    std::cout << "[CrashHandler] Crash report generated in data/logs/crash.log" << std::endl;
    
    // Reset signal handler and re-raise to get default behavior
    ::signal(signal, SIG_DFL);
    raise(signal);
}
#endif

void CrashHandler::luaDebugHook(lua_State* L, lua_Debug* ar) {
    if (ar->event == LUA_HOOKCALL || ar->event == LUA_HOOKRET || ar->event == LUA_HOOKLINE) {
        lua_getinfo(L, "nSl", ar);
        
        if (ar->source && ar->source[0] == '@') {
            currentLuaFile = ar->source + 1; // Skip the '@' character
            currentLuaLine = ar->currentline;
            
            if (ar->event == LUA_HOOKCALL) {
                LuaStackFrame frame;
                frame.file = currentLuaFile;
                frame.line = ar->linedefined;
                frame.function = ar->name ? ar->name : "<unknown>";
                frame.source = ar->source ? ar->source : "<unknown>";
                
                luaCallStack.push_back(frame);
                
                // Keep stack size reasonable
                if (luaCallStack.size() > 50) {
                    luaCallStack.erase(luaCallStack.begin());
                }
            } else if (ar->event == LUA_HOOKRET && !luaCallStack.empty()) {
                luaCallStack.pop_back();
            }
        }
    }
}

#ifdef _WIN32
void CrashHandler::generateCrashReport(EXCEPTION_POINTERS* exceptionInfo, const std::string& additionalInfo) {
    std::ostringstream report;
    
    // Header
    report << "=== TFS CRASH REPORT ===\n";
    report << "Timestamp: " << getCurrentDateTime() << "\n";
    report << "\n";
    
    // Exception information
    if (exceptionInfo) {
        DWORD exceptionCode = exceptionInfo->ExceptionRecord->ExceptionCode;
        PVOID exceptionAddress = exceptionInfo->ExceptionRecord->ExceptionAddress;
        
        report << "=== EXCEPTION INFORMATION ===\n";
        report << "Exception Code: 0x" << std::hex << exceptionCode << std::dec;
        
        switch (exceptionCode) {
            case EXCEPTION_ACCESS_VIOLATION:
                report << " (Access Violation)";
                break;
            case EXCEPTION_STACK_OVERFLOW:
                report << " (Stack Overflow)";
                break;
            case EXCEPTION_INT_DIVIDE_BY_ZERO:
                report << " (Division by Zero)";
                break;
            case EXCEPTION_ILLEGAL_INSTRUCTION:
                report << " (Illegal Instruction)";
                break;
            default:
                report << " (Unknown Exception)";
                break;
        }
        
        report << "\n";
        report << "Exception Address: 0x" << std::hex << exceptionAddress << std::dec << "\n";
        report << "\n";
    }
    
    // C++ Stack trace
    report << "=== C++ STACK TRACE ===\n";
    report << getStackTrace(exceptionInfo);
    report << "\n";
    
    // Lua stack trace
    report << "=== LUA EXECUTION CONTEXT ===\n";
    if (!currentLuaFile.empty()) {
        report << "Current Lua File: " << currentLuaFile << "\n";
        report << "Current Lua Line: " << currentLuaLine << "\n";
        report << "\n";
    }
    
    if (!lastLuaError.empty()) {
        report << "Last Lua Error: " << lastLuaError << "\n";
        report << "\n";
    }
    
    report << "=== LUA CALL STACK ===\n";
    if (luaCallStack.empty()) {
        report << "No Lua call stack available.\n";
    } else {
        for (int i = luaCallStack.size() - 1; i >= 0; i--) {
            const auto& frame = luaCallStack[i];
            report << "#" << (luaCallStack.size() - 1 - i) << " ";
            report << frame.function << " at " << frame.file;
            if (frame.line > 0) {
                report << ":" << frame.line;
            }
            report << "\n";
        }
    }
    report << "\n";
    
    // Additional information
    if (!additionalInfo.empty()) {
        report << "=== ADDITIONAL INFORMATION ===\n";
        report << additionalInfo << "\n";
        report << "\n";
    }
    
    // System information
    report << "=== SYSTEM INFORMATION ===\n";
    SYSTEM_INFO sysInfo;
    GetSystemInfo(&sysInfo);
    report << "Processor Architecture: " << sysInfo.wProcessorArchitecture << "\n";
    report << "Number of Processors: " << sysInfo.dwNumberOfProcessors << "\n";
    report << "Page Size: " << sysInfo.dwPageSize << " bytes\n";
    
    MEMORYSTATUSEX memInfo;
    memInfo.dwLength = sizeof(MEMORYSTATUSEX);
    if (GlobalMemoryStatusEx(&memInfo)) {
        report << "Total Physical Memory: " << (memInfo.ullTotalPhys / 1024 / 1024) << " MB\n";
        report << "Available Physical Memory: " << (memInfo.ullAvailPhys / 1024 / 1024) << " MB\n";
        report << "Memory Load: " << memInfo.dwMemoryLoad << "%\n";
    }
    
    // Write to file
    std::string logPath = "data/logs/crash.log";
    std::ofstream logFile(logPath, std::ios::app);
    if (logFile.is_open()) {
        logFile << report.str();
        logFile << "\n" << std::string(80, '=') << "\n\n";
        logFile.close();
    } else {
        // Fallback: try to write to current directory
        std::ofstream fallbackFile("crash.log", std::ios::app);
        if (fallbackFile.is_open()) {
            fallbackFile << report.str();
            fallbackFile << "\n" << std::string(80, '=') << "\n\n";
            fallbackFile.close();
        }
    }
}
#else
void CrashHandler::generateCrashReport(int signal, siginfo_t* info, void* /* context */, const std::string& additionalInfo) {
    std::ostringstream report;
    
    // Header
    report << "=== TFS CRASH REPORT ===\n";
    report << "Timestamp: " << getCurrentDateTime() << "\n";
    report << "\n";
    
    // Signal information
    report << "=== SIGNAL INFORMATION ===\n";
    report << "Signal: " << signal;
    
    switch (signal) {
        case SIGSEGV:
            report << " (Segmentation Fault)";
            break;
        case SIGABRT:
            report << " (Abort Signal)";
            break;
        case SIGFPE:
            report << " (Floating Point Exception)";
            break;
        case SIGILL:
            report << " (Illegal Instruction)";
            break;
        case SIGBUS:
            report << " (Bus Error)";
            break;
        default:
            report << " (Unknown Signal)";
            break;
    }
    
    report << "\n";
    if (info) {
        report << "Signal Address: 0x" << std::hex << info->si_addr << std::dec << "\n";
    }
    report << "\n";
    
    // Stack trace
    report << "=== STACK TRACE ===\n";
    report << getStackTrace();
    report << "\n";
    
    // Lua context
    report << "=== LUA CONTEXT ===\n";
    if (!currentLuaFile.empty()) {
        report << "Current Lua File: " << currentLuaFile << "\n";
        report << "Current Lua Line: " << currentLuaLine << "\n";
    }
    report << getLuaStackTrace();
    report << "\n";
    
    // Additional info
    if (!additionalInfo.empty()) {
        report << "=== ADDITIONAL INFORMATION ===\n";
        report << additionalInfo << "\n";
        report << "\n";
    }
    
    // System information
    report << "=== SYSTEM INFORMATION ===\n";
    report << "Process ID: " << getpid() << "\n";
    
    // Write to file
    std::string logPath = "data/logs/crash.log";
    std::ofstream logFile(logPath, std::ios::app);
    if (logFile.is_open()) {
        logFile << report.str();
        logFile << "\n" << std::string(80, '=') << "\n\n";
        logFile.close();
    } else {
        // Fallback: try to write to current directory
        std::ofstream fallbackFile("crash.log", std::ios::app);
        if (fallbackFile.is_open()) {
            fallbackFile << report.str();
            fallbackFile << "\n" << std::string(80, '=') << "\n\n";
            fallbackFile.close();
        }
    }
}
#endif

#ifdef _WIN32
std::string CrashHandler::getStackTrace(EXCEPTION_POINTERS* exceptionInfo) {
    std::ostringstream trace;
    
    if (!symbolsInitialized || !exceptionInfo) {
        trace << "Stack trace not available (symbols not initialized or no exception info).\n";
        return trace.str();
    }
    
    CONTEXT* context = exceptionInfo->ContextRecord;
    STACKFRAME64 stackFrame = {};
    
#ifdef _WIN64
    DWORD machineType = IMAGE_FILE_MACHINE_AMD64;
    stackFrame.AddrPC.Offset = context->Rip;
    stackFrame.AddrFrame.Offset = context->Rbp;
    stackFrame.AddrStack.Offset = context->Rsp;
#else
    DWORD machineType = IMAGE_FILE_MACHINE_I386;
    stackFrame.AddrPC.Offset = context->Eip;
    stackFrame.AddrFrame.Offset = context->Ebp;
    stackFrame.AddrStack.Offset = context->Esp;
#endif
    
    stackFrame.AddrPC.Mode = AddrModeFlat;
    stackFrame.AddrFrame.Mode = AddrModeFlat;
    stackFrame.AddrStack.Mode = AddrModeFlat;
    
    char symbolBuffer[sizeof(SYMBOL_INFO) + MAX_SYM_NAME * sizeof(TCHAR)];
    SYMBOL_INFO* symbol = (SYMBOL_INFO*)symbolBuffer;
    symbol->MaxNameLen = MAX_SYM_NAME;
    symbol->SizeOfStruct = sizeof(SYMBOL_INFO);
    
    IMAGEHLP_LINE64 line = {};
    line.SizeOfStruct = sizeof(IMAGEHLP_LINE64);
    
    int frameCount = 0;
    while (StackWalk64(machineType, processHandle, GetCurrentThread(), &stackFrame, context, nullptr, SymFunctionTableAccess64, SymGetModuleBase64, nullptr) && frameCount < 50) {
        DWORD64 address = stackFrame.AddrPC.Offset;
        
        trace << "#" << frameCount << " 0x" << std::hex << address << std::dec;
        
        // Try to get symbol name
        DWORD64 displacement = 0;
        if (SymFromAddr(processHandle, address, &displacement, symbol)) {
            trace << " " << symbol->Name;
            
            // Try to get line information
            DWORD lineDisplacement = 0;
            if (SymGetLineFromAddr64(processHandle, address, &lineDisplacement, &line)) {
                trace << " at " << line.FileName << ":" << line.LineNumber;
            }
        } else {
            trace << " <unknown>";
        }
        
        trace << "\n";
        frameCount++;
        
        if (stackFrame.AddrReturn.Offset == 0) {
            break;
        }
    }
    
    if (frameCount == 0) {
        trace << "No stack frames available.\n";
    }
    
    return trace.str();
}
#else
std::string CrashHandler::getStackTrace() {
    std::ostringstream trace;
    
    void* array[50];
    size_t size = backtrace(array, 50);
    char** strings = backtrace_symbols(array, size);
    
    if (strings == nullptr) {
        trace << "Stack trace not available (backtrace_symbols failed).\n";
        return trace.str();
    }
    
    for (size_t i = 0; i < size; i++) {
        trace << "#" << i << " " << strings[i] << "\n";
    }
    
    free(strings);
    return trace.str();
}
#endif

std::string CrashHandler::getLuaStackTrace() {
    std::ostringstream trace;
    
    if (luaCallStack.empty()) {
        trace << "No Lua call stack available.\n";
        return trace.str();
    }
    
    for (size_t i = 0; i < luaCallStack.size(); i++) {
        const auto& frame = luaCallStack[i];
        trace << "#" << i << " " << frame.function << " at " << frame.file;
        if (frame.line > 0) {
            trace << ":" << frame.line;
        }
        trace << "\n";
    }
    
    return trace.str();
}

std::string CrashHandler::getCurrentDateTime() {
    auto now = std::chrono::system_clock::now();
    auto time_t = std::chrono::system_clock::to_time_t(now);
    auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()) % 1000;
    
    std::ostringstream oss;
    oss << std::put_time(std::localtime(&time_t), "%Y-%m-%d %H:%M:%S");
    oss << "." << std::setfill('0') << std::setw(3) << ms.count();
    
    return oss.str();
}

void CrashHandler::ensureLogDirectory() {
    try {
        std::filesystem::create_directories("data/logs");
    } catch (const std::exception& e) {
        std::cout << "[CrashHandler] Warning: Could not create logs directory: " << e.what() << std::endl;
    }
}