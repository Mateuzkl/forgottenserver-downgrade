// Copyright 2023 The Forgotten Server Authors. All rights reserved.
// Use of this source code is governed by the GPL-2.0 License that can be found in the LICENSE file.

#ifndef FS_CRASHHANDLER_H
#define FS_CRASHHANDLER_H

#include <string>
#include <vector>

#ifdef _WIN32
#include <windows.h>
#include <dbghelp.h>
#else
#include <signal.h>
#include <execinfo.h>
#include <unistd.h>
#include <sys/types.h>
#endif

extern "C" {
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}

struct LuaStackFrame {
    std::string file;
    int line;
    std::string function;
    std::string source;
};

class CrashHandler {
public:
    static void initialize();
    static void cleanup();
    
#ifdef _WIN32
    // Windows SEH exception handler
    static LONG WINAPI exceptionHandler(EXCEPTION_POINTERS* exceptionInfo);
#else
    // Unix signal handler
    static void signalHandler(int signal, siginfo_t* info, void* context);
#endif
    
    // Lua debug hook for tracking script execution
    static void luaDebugHook(lua_State* L, lua_Debug* ar);
    
    // Generate crash report
#ifdef _WIN32
    static void generateCrashReport(EXCEPTION_POINTERS* exceptionInfo, const std::string& additionalInfo = "");
#else
    static void generateCrashReport(int signal, siginfo_t* info, void* context, const std::string& additionalInfo = "");
#endif
    
private:
#ifdef _WIN32
    static std::string getStackTrace(EXCEPTION_POINTERS* exceptionInfo);
#else
    static std::string getStackTrace();
#endif
    static std::string getLuaStackTrace();
    static std::string getCurrentDateTime();
    static void ensureLogDirectory();
    
    // Lua execution tracking
    static std::vector<LuaStackFrame> luaCallStack;
    static std::string currentLuaFile;
    static int currentLuaLine;
    static std::string lastLuaError;
    
    // Windows debugging symbols
    static bool symbolsInitialized;
#ifdef _WIN32
    static HANDLE processHandle;
#endif
};

#endif // FS_CRASHHANDLER_H