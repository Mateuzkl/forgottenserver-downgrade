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

		// Check termination after waking up
		if (getState() == THREAD_STATE_TERMINATED) {
			break;
		}

		// Critical section: move tasks to the temporary list
		{
			std::lock_guard<std::mutex> lockGuard(taskLock);
			if (!taskList.empty()) {
				tmpTaskList.swap(taskList);
			}
		}

		// Process all available tasks
		for (Task* task : tmpTaskList) {
			if (!task->hasExpired()) {
				++dispatcherCycle;
				// execute task
				(*task)();
			}
			delete task;
		}
		tmpTaskList.clear();
	}
}

void Dispatcher::addTask(Task* task)
{
	bool do_signal = false;

	// C++20: Use lock_guard with explicit scope for better RAII and clarity
	{
		std::lock_guard<std::mutex> lockGuard(taskLock);

		if (getState() == THREAD_STATE_RUNNING) {
			do_signal = taskList.empty();
			taskList.push_back(task);
		} else {
			delete task;
		}
	}

	// C++20: Use semaphore release instead of condition_variable notify
	// This is more efficient and has lower overhead
	if (do_signal) {
		taskSignal.release();
	}
}

void Dispatcher::shutdown()
{
	// Create shutdown task
	Task* task = createTask([this]() {
		setState(THREAD_STATE_TERMINATED);
	});

	// Add task to queue
	{
		std::lock_guard<std::mutex> lockGuard(taskLock);
		taskList.push_back(task);
	}

	// C++20: Signal with semaphore release
	taskSignal.release();
}
