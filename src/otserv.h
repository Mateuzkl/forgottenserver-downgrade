// Copyright 2023 The Forgotten Server Authors. All rights reserved.
// Use of this source code is governed by the GPL-2.0 License that can be found in the LICENSE file.

#ifndef FS_OTSERV_H
#define FS_OTSERV_H

void printServerVersion();
void startServer();

// Internal restart API
void setProcessArgs(int argc, const char** argv);
void requestServerRestart(uint32_t delaySeconds);
bool isServerRestartRequested();
void restart();

#endif
