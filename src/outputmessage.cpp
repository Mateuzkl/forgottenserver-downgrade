// Copyright 2023 The Forgotten Server Authors. All rights reserved.
// Use of this source code is governed by the GPL-2.0 License that can be found in the LICENSE file.

#include "otpch.h"

#include "outputmessage.h"

#include "lockfree.h"
#include "protocol.h"
#include "scheduler.h"

extern Scheduler g_scheduler;

namespace {

constexpr uint16_t OUTPUTMESSAGE_FREE_LIST_CAPACITY = 2048;
constexpr std::chrono::milliseconds OUTPUTMESSAGE_AUTOSEND_DELAY{10};

void sendAll(const std::vector<Protocol_ptr>& bufferedProtocols);

void scheduleSendAll(const std::vector<Protocol_ptr>& bufferedProtocols)
{
	g_scheduler.addEvent(createSchedulerTask(OUTPUTMESSAGE_AUTOSEND_DELAY.count(), 
		[&bufferedProtocols]() { sendAll(bufferedProtocols); }));
}

void sendAll(const std::vector<Protocol_ptr>& bufferedProtocols)
{
	// dispatcher thread
	for (const auto& protocol : bufferedProtocols) {
		if (auto msg = protocol->getCurrentBuffer(); msg) {
			protocol->send(std::move(msg));
		}
	}

	if (!bufferedProtocols.empty()) {
		scheduleSendAll(bufferedProtocols);
	}
}

} // namespace

void OutputMessagePool::addProtocolToAutosend(Protocol_ptr protocol)
{
	// dispatcher thread
	if (bufferedProtocols.empty()) {
		scheduleSendAll(bufferedProtocols);
	}
	bufferedProtocols.emplace_back(std::move(protocol));
}

void OutputMessagePool::removeProtocolFromAutosend(const Protocol_ptr& protocol)
{
	// dispatcher thread
	if (auto it = std::ranges::find(bufferedProtocols, protocol); it != bufferedProtocols.end()) {
		std::swap(*it, bufferedProtocols.back());
		bufferedProtocols.pop_back();
	}
}

OutputMessage_ptr OutputMessagePool::getOutputMessage()
{
	// LockfreePoolingAllocator<void,...> will leave (void* allocate) ill-formed because of sizeof(T), so this
	// guarantees that only one list will be initialized
	return std::allocate_shared<OutputMessage>(LockfreePoolingAllocator<void, OUTPUTMESSAGE_FREE_LIST_CAPACITY>());
}
