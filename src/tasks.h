// Copyright 2023 The Forgotten Server Authors. All rights reserved.
// Use of this source code is governed by the GPL-2.0 License that can be found in the LICENSE file.
// Modern C++20 version with performance improvements

#ifndef FS_TASKS_H
#define FS_TASKS_H

#include "thread_holder_base.h"
#include "stats.h"

using TaskFunc = std::function<void(void)>;
constexpr int DISPATCHER_TASK_EXPIRATION = 2000;

// C++20: Use steady_clock for monotonic time
const auto SYSTEM_TIME_ZERO = std::chrono::steady_clock::time_point(std::chrono::milliseconds(0));

class Task
{
public:
	// DO NOT allocate this class on the stack
	explicit Task(TaskFunc&& f, const std::string& _description, const std::string& _extraDescription) :
	description(_description), extraDescription(_extraDescription), func(std::move(f)) {}

	Task(uint32_t ms, TaskFunc&& f, const std::string& _description, const std::string& _extraDescription) :
		description(_description), 
		extraDescription(_extraDescription),
		expiration(std::chrono::steady_clock::now() + std::chrono::milliseconds(ms)),
		func(std::move(f))
	{}

	virtual ~Task() = default;

	// C++20: Mark as [[nodiscard]] to prevent ignoring return value (future use)
	void operator()() { func(); }

	void setDontExpire() { expiration = SYSTEM_TIME_ZERO; }

	[[nodiscard]] bool hasExpired() const	// C++20: nodiscard attribute
	{
		if (expiration == SYSTEM_TIME_ZERO) {
			return false;
		}
		return expiration < std::chrono::steady_clock::now();
	}

	const std::string description;
	const std::string extraDescription;
	uint64_t executionTime = 0;

protected:
	// C++20: steady_clock is monotonic and more efficient
	std::chrono::steady_clock::time_point expiration = SYSTEM_TIME_ZERO;

private:
	// Expiration has another meaning for scheduler tasks, then it is the time the task should be added to the
	// dispatcher
	TaskFunc func;
};

Task* createTaskWithStats(TaskFunc&& f, const std::string& description, const std::string& extraDescription);
Task* createTaskWithStats(uint32_t expiration, TaskFunc&& f, const std::string& description, const std::string& extraDescription);

class Dispatcher : public ThreadHolder<Dispatcher>
{
public:
	Dispatcher() : ThreadHolder()
	{
		static int id = 0;
		dispatcherId = id;
		id += 1;

		// C++20: Reserve capacity for task list to reduce allocations
		taskList.reserve(32);
	}
	void addTask(Task* task);

	void addTask(TaskFunc&& f) { addTask(createTask(std::move(f)));}

	void addTask(uint32_t expiration, TaskFunc&& f) { addTask(createTimedTask(expiration, std::move(f))); }


	void shutdown();

	[[nodiscard]] uint64_t getDispatcherCycle() const { return dispatcherCycle; }
	[[nodiscard]] int getDispatcherId() const { return dispatcherId; }

	void threadMain();

private:
	std::mutex taskLock;

	// C++20: binary_semaphore is more efficient than condition_variable
	// No spurious wakeups - Lower overhead - Better performance under contention
	std::binary_semaphore taskSignal{0};

	std::vector<Task*> taskList;
	uint64_t dispatcherCycle = 0;
	int dispatcherId = 0;
};

extern Dispatcher g_dispatcher;

#endif // FS_TASKS_H
