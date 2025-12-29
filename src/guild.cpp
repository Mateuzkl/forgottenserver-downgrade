// Copyright 2023 The Forgotten Server Authors. All rights reserved.
// Use of this source code is governed by the GPL-2.0 License that can be found in the LICENSE file.

#include "otpch.h"

#include "guild.h"

#include "game.h"
#include "tools.h"

extern Game g_game;

void Guild::addMember(Player* player) { membersOnline.push_back(player); }

void Guild::removeMember(Player* player)
{
	membersOnline.remove(player);

	if (membersOnline.empty()) {
		g_game.removeGuild(id);
	}
}

void Guild::addRank(uint32_t rankId, std::string_view rankName, uint8_t level)
{
	ranks.emplace_back(std::make_shared<GuildRank>(rankId, rankName, level));
}

GuildRank_ptr Guild::getRankById(uint32_t rankId) const
{
	for (auto& rank : ranks) {
		if (rank->id == rankId) {
			return rank;
		}
	}
	return nullptr;
}

GuildRank_ptr Guild::getRankByName(std::string_view name) const
{
	for (auto& rank : ranks) {
		if (caseInsensitiveEqual(rank->name, name)) {
			return rank;
		}
	}
	return nullptr;
}

GuildRank_ptr Guild::getRankByLevel(uint8_t level) const
{
	for (auto& rank : ranks) {
		if (rank->level == level) {
			return rank;
		}
	}
	return nullptr;
}

void Guild::setBankBalance(uint64_t balance)
{
	bankBalance = balance;
	Database& db = Database::getInstance();
	std::ostringstream query;
	query << "UPDATE `guilds` SET `balance`=" << bankBalance << " WHERE `id`=" << id;
	db.executeQuery(query.str());
}

Guild_ptr IOGuild::loadGuild(uint32_t guildId)
{
	Database& db = Database::getInstance();
	DBResult_ptr result = db.storeQuery(fmt::format("SELECT `name` FROM `guilds` WHERE `id` = {:d}", guildId));
	if (!result) {
		return nullptr;
	}

	const auto& guild = std::make_shared<Guild>(guildId, result->getString("name"));

	if (auto ranksResult = db.storeQuery(
	        fmt::format("SELECT `id`, `name`, `level` FROM `guild_ranks` WHERE `guild_id` = {:d}", guildId))) {
		do {
			guild->addRank(ranksResult->getNumber<uint32_t>("id"), ranksResult->getString("name"),
			               ranksResult->getNumber<uint16_t>("level"));
		} while (ranksResult->next());
	}

	return guild;
}

uint32_t IOGuild::getGuildIdByName(std::string_view name)
{
	Database& db = Database::getInstance();

	DBResult_ptr result =
	    db.storeQuery(fmt::format("SELECT `id` FROM `guilds` WHERE `name` = {:s}", db.escapeString(name)));
	if (!result) {
		return 0;
	}
	return result->getNumber<uint32_t>("id");
}
