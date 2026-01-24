// Copyright 2023 The Forgotten Server Authors. All rights reserved.
// Use of this source code is governed by the GPL-2.0 License that can be found in the LICENSE file.
// Modern C++20 version with performance improvements

#include "otpch.h"

#include "tasks.h"

#include "game.h"

extern Game g_game;

Task* createTaskWithStats(TaskFunc&& f, const std::string& description, const std::string& extraDescription)
{
	if (g_stats.isEnabled()) {
		return new Task(std::move(f), description, extraDescription);
	}
	return new Task(std::move(f), "", "");
}

Task* createTaskWithStats(uint32_t expiration, TaskFunc&& f, const std::string& description, const std::string& extraDescription)
{
	if (g_stats.isEnabled()) {
		return new Task(expiration, std::move(f), description, extraDescription);
	}
	return new Task(expiration, std::move(f), "", "");
}

void Dispatcher::threadMain()
{
    std::vector<Task*> tmpTaskList;
    tmpTaskList.reserve(32);

#ifdef STATS_ENABLED
    std::chrono::high_resolution_clock::time_point time_point;
#endif

    while (getState() != THREAD_STATE_TERMINATED) {
        // Measure wait time when STATS_ENABLED
#ifdef STATS_ENABLED
        if (g_stats.isEnabled()) {
            time_point = std::chrono::high_resolution_clock::now();
        }
        taskSignal.acquire();
        if (g_stats.isEnabled()) {
            g_stats.dispatcherWaitTime(dispatcherId) += std::chrono::duration_cast<std::chrono::nanoseconds>(
                std::chrono::high_resolution_clock::now() - time_point
            ).count();
        }
#else
        taskSignal.acquire();
#endif

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
#ifdef STATS_ENABLED
            if (g_stats.isEnabled()) {
                time_point = std::chrono::high_resolution_clock::now();
            }
#endif
            if (!task->hasExpired()) {
                ++dispatcherCycle;
                (*task)();
            }
#ifdef STATS_ENABLED
            if (g_stats.isEnabled()) {
                task->executionTime = std::chrono::duration_cast<std::chrono::nanoseconds>(
                    std::chrono::high_resolution_clock::now() - time_point
                ).count();
                g_stats.addDispatcherTask(dispatcherId, task);
            } else {
                delete task;
            }
#else
            delete task;
#endif
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
	Task* task = createTaskWithStats([this]() {
		setState(THREAD_STATE_TERMINATED);
	}, "Dispatcher::shutdown", "");

	// Add task to queue
	{
		std::lock_guard<std::mutex> lockGuard(taskLock);
		taskList.push_back(task);
	}

	// C++20: Signal with semaphore release
	taskSignal.release();
}
