// Copyright 2023 The Forgotten Server Authors. All rights reserved.
// Use of this source code is governed by the GPL-2.0 License that can be found in the LICENSE file.
// Modern C++20 version with performance improvements

#include "otpch.h"

#include "tasks.h"

#include "game.h"

extern Game g_game;

Task* createTask(TaskFunc&& f) { return new Task(std::move(f)); }

Task* createTask(uint32_t expiration, TaskFunc&& f) { return new Task(expiration, std::move(f)); }

void Dispatcher::threadMain()
{
	// C++20: Pre-allocate with reserve to reduce reallocations
	std::vector<Task*> tmpTaskList;
	tmpTaskList.reserve(32);

	while (getState() != THREAD_STATE_TERMINATED) {
		// C++20: Use semaphore acquire instead of condition_variable wait
		taskSignal.acquire();

		if (getState() == THREAD_STATE_TERMINATED) {
			break;
		}

		{
			std::lock_guard<std::mutex> lockGuard(taskLock);

			if (!taskList.empty()) {
				tmpTaskList.swap(taskList);
			}
		}

		for (Task* task : tmpTaskList) {
			if (!task->hasExpired()) {
				++dispatcherCycle;
				(*task)();
			}

			delete task;
		}

		tmpTaskList.clear();
	}
}

void Dispatcher::addTask(Task* task)
{
	bool doSignal = false;

	{
		std::lock_guard<std::mutex> lockGuard(taskLock);

		if (getState() == THREAD_STATE_RUNNING) {
			doSignal = taskList.empty();
			taskList.push_back(task);
		} else {
			delete task;
		}
	}

	if (doSignal) {
		taskSignal.release();
	}
}

void Dispatcher::shutdown()
{
	Task* task = createTask([this]() { setState(THREAD_STATE_TERMINATED); });

	{
		std::lock_guard<std::mutex> lockGuard(taskLock);
		taskList.push_back(task);
	}

	taskSignal.release();
}
