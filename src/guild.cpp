// Copyright 2023 The Forgotten Server Authors. All rights reserved.
// Use of this source code is governed by the GPL-2.0 License that can be found in the LICENSE file.

#include "otpch.h"

#include "guild.h"
#include "game.h"
#include "tools.h"

#include <boost/algorithm/string.hpp>

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

std::string IOGuild::getGuildNameById(uint32_t id)
{
	Database& db = Database::getInstance();
	DBResult_ptr result = db.storeQuery(fmt::format("SELECT `name` FROM `guilds` WHERE `id` = {:d}", id));
	if (!result) {
		return "";
	}
	return std::string(result->getString("name"));
}

void IOGuild::guildWar(Player* player, const std::string& param)
{
	auto guild = player->getGuild();
	if (!guild) {
		player->sendCancelMessage("You need to be in a guild in order to execute this talkaction.");
		return;
	}

	if (player->getGuildRank()->level < 3) {
		player->sendCancelMessage("You need to be a guild leader to execute war commands.");
		return;
	}

	std::vector<std::string_view> t = explodeString(param, ",");
	if (t.size() < 2) {
		player->sendCancelMessage("Not enough param(s).");
		return;
	}

	std::string action(t[0]);
	std::string enemyNameStr(t[1]);
	boost::algorithm::trim(enemyNameStr);

	uint32_t enemyId = getGuildIdByName(enemyNameStr);
	if (enemyId == 0) {
		player->sendCancelMessage("Enemy guild not found.");
		return;
	}

	if (enemyId == guild->getId()) {
		player->sendCancelMessage("You cannot start a war with your own guild.");
		return;
	}

	std::string enemyName = getGuildNameById(enemyId);

	Database& db = Database::getInstance();
	std::ostringstream query;

	if (action == "invite") {
		if (t.size() < 3) {
			player->sendCancelMessage("Invalid param(s) for invite.");
			return;
		}

		// invite, target, fraglimit, money, duration
		int32_t fragLimit = std::atoi(std::string(t[2]).c_str());
		int64_t payment = 0;
		int32_t durationDays = 3;

		if (t.size() >= 5) {
			payment = std::atoll(std::string(t[3]).c_str());
			durationDays = std::atoi(std::string(t[4]).c_str());
		}

		if (guild->getBankBalance() < static_cast<uint64_t>(payment)) {
			player->sendCancelMessage("Your guild balance is too low.");
			return;
		}

		if (player->isInWarList(enemyId)) {
			player->sendCancelMessage("You are already in war with this guild.");
			return;
		}

		DBResult_ptr checkResult = db.storeQuery(fmt::format("SELECT `id` FROM `guild_wars` WHERE (`guild1` = {:d} AND `guild2` = {:d}) AND `status` = 0", guild->getId(), enemyId));
		if (checkResult) {
			player->sendCancelMessage("You have already invited this guild.");
			return;
		}

		query << "INSERT INTO `guild_wars` (`guild1`, `guild2`, `name1`, `name2`, `status`, `started`, `ended`, `fraglimit`, `payment`) VALUES (" 
			  << guild->getId() << ", " << enemyId << ", " << db.escapeString(guild->getName()) << ", " << db.escapeString(enemyName) 
			  << ", 0, " << std::time(nullptr) << ", " << (std::time(nullptr) + (durationDays * 86400)) << ", " << fragLimit << ", " << payment << ")";
		
		if (db.executeQuery(query.str())) {
			g_game.broadcastMessage(fmt::format("{:s} has invited {:s} to war.", guild->getName(), enemyName), MESSAGE_EVENT_ADVANCE);
		}

	} else {
		// all other actions require looking up the war entry
		DBResult_ptr result = db.storeQuery(fmt::format("SELECT `id`, `guild1`, `guild2`, `status`, `started`, `ended`, `payment`, `fraglimit` FROM `guild_wars` WHERE (`guild1` = {:d} AND `guild2` = {:d}) OR (`guild1` = {:d} AND `guild2` = {:d}) AND `status` IN (0, 1)", guild->getId(), enemyId, enemyId, guild->getId()));
		
		if (!result) {
			player->sendCancelMessage("There is no active invitation or war with this guild.");
			return;
		}

		uint32_t warId = result->getNumber<uint32_t>("id");
		uint32_t guild1 = result->getNumber<uint32_t>("guild1");
		// uint32_t guild2 = result->getNumber<uint32_t>("guild2");
		int status = result->getNumber<int>("status");
		time_t started = result->getNumber<time_t>("started");
		time_t ended = result->getNumber<time_t>("ended");
		uint64_t payment = result->getNumber<uint64_t>("payment");
		// int32_t fragLimit = result->getNumber<int32_t>("fraglimit");

		std::string msg = "";
		std::ostringstream updateQuery;
		updateQuery << "UPDATE `guild_wars` SET ";

		if (action == "accept") {
			if (status != 0) {
				player->sendCancelMessage("The war is already active.");
				return;
			}

			if (guild1 == guild->getId()) {
				player->sendCancelMessage("You cannot accept your own invitation.");
				return;
			}

			if (guild->getBankBalance() < payment) {
				player->sendCancelMessage("Your guild balance is too low to accept this war.");
				return;
			}
			
			// Transfer payment logic could go here if payments are immediate, but usually stored for end.
			// Just updating status for now as requested.

			time_t originalDuration = (ended > started) ? (ended - started) : 0;
			time_t newEnd = (originalDuration > 0) ? (std::time(nullptr) + originalDuration) : 0;

			updateQuery << "`status` = 1, `started` = " << std::time(nullptr) << ", `ended` = " << newEnd;
			msg = fmt::format("accepted the war against {:s}.", enemyName);
			
			if (db.executeQuery(updateQuery.str())) {
				g_game.broadcastMessage(fmt::format("{:s} has {:s}", guild->getName(), msg), MESSAGE_EVENT_ADVANCE);
				
				for (Player* member : guild->getMembersOnline()) {
					member->reloadWarList(false);
				}
				
				std::vector<Player*> enemyMembers;
				if (auto enemyGuild = g_game.getGuild(enemyId)) {
					for (Player* member : enemyGuild->getMembersOnline()) {
						member->reloadWarList(false);
						enemyMembers.push_back(member);
					}
				}

				for (Player* member : guild->getMembersOnline()) {
					g_game.updateCreatureEmblem(member);
				}
				for (Player* member : enemyMembers) {
					g_game.updateCreatureEmblem(member);
				}
			}
			return;
			
		} else if (action == "reject") {
			if (status != 0) {
				player->sendCancelMessage("You cannot reject an active war.");
				return;
			}
			if (guild1 == guild->getId()) {
				player->sendCancelMessage("You cannot reject your own invitation. Use cancel.");
				return;
			}
			
			updateQuery << "`status` = 2, `ended` = " << std::time(nullptr);
			msg = fmt::format("rejected the war invitation from {:s}.", enemyName);

		} else if (action == "cancel") {
			if (status != 0) {
				player->sendCancelMessage("You cannot cancel an active war.");
				return;
			}
			if (guild1 != guild->getId()) {
				player->sendCancelMessage("You cannot cancel an invitation you didn't send. Use reject.");
				return;
			}

			updateQuery << "`status` = 3, `ended` = " << std::time(nullptr);
			msg = fmt::format("canceled the war invitation to {:s}.", enemyName);

		} else if (action == "end") {
			if (status != 1) {
				player->sendCancelMessage("This war is not active.");
				return;
			}
			
			// This logic handles "force end" or "surrender" depending on implementation.
			// Setting status to 5 (ended).
			updateQuery << "`status` = 5, `ended` = " << std::time(nullptr);
			msg = fmt::format("ended the war with {:s}.", enemyName);
			
			if (db.executeQuery(updateQuery.str())) {
				g_game.broadcastMessage(fmt::format("{:s} has {:s}", guild->getName(), msg), MESSAGE_EVENT_ADVANCE);

				for (Player* member : guild->getMembersOnline()) {
					member->reloadWarList(false);
				}
				
				std::vector<Player*> enemyMembers;
				if (auto enemyGuild = g_game.getGuild(enemyId)) {
					for (Player* member : enemyGuild->getMembersOnline()) {
						member->reloadWarList(false);
						enemyMembers.push_back(member);
					}
				}

				for (Player* member : guild->getMembersOnline()) {
					g_game.updateCreatureEmblem(member);
				}
				for (Player* member : enemyMembers) {
					g_game.updateCreatureEmblem(member);
				}
			}
			return;
		
		} else {
			player->sendCancelMessage("Unknown action.");
			return;
		}

		updateQuery << " WHERE `id` = " << warId;
		if (db.executeQuery(updateQuery.str())) {
			g_game.broadcastMessage(fmt::format("{:s} has {:s}", guild->getName(), msg), MESSAGE_EVENT_ADVANCE);
		}
	}
}

void IOGuild::guildBalance(Player* player, const std::string& param)
{
	auto guild = player->getGuild();
	if (!guild) {
		player->sendCancelMessage("You are not in a guild.");
		return;
	}

	std::vector<std::string_view> t = explodeString(param, " ");
	if (t.empty()) {
		player->sendChannelMessage("", "Invalid param.", TALKTYPE_CHANNEL_R1, CHANNEL_GUILD);
		return;
	}

	std::string action(t[0]);
	boost::algorithm::trim(action);
	
	if (action == "donate") {
		if (t.size() < 2) {
			player->sendChannelMessage("", "Usage: /balance donate amount", TALKTYPE_CHANNEL_R1, CHANNEL_GUILD);
			return;
		}
		
		uint64_t amount = std::atoll(std::string(t[1]).c_str());
		if (player->getBankBalance() < amount) {
			player->sendChannelMessage("", "You do not have enough money in your bank account.", TALKTYPE_CHANNEL_R1, CHANNEL_GUILD);
			return;
		}

		player->setBankBalance(player->getBankBalance() - amount);
		guild->setBankBalance(guild->getBankBalance() + amount);
		player->sendChannelMessage("", fmt::format("You have donated {:d} gold to the guild balance.", amount), TALKTYPE_CHANNEL_R1, CHANNEL_GUILD);
		
	} else if (action == "pick") {
		if (player->getGuildRank()->level < 3) {
			player->sendChannelMessage("", "Only leader can pick money.", TALKTYPE_CHANNEL_R1, CHANNEL_GUILD);
			return;
		}
		
		if (t.size() < 2) {
			player->sendChannelMessage("", "Usage: /balance pick amount", TALKTYPE_CHANNEL_R1, CHANNEL_GUILD);
			return;
		}
		
		uint64_t amount = std::atoll(std::string(t[1]).c_str());
		if (guild->getBankBalance() < amount) {
			player->sendChannelMessage("", "The guild does not have enough money.", TALKTYPE_CHANNEL_R1, CHANNEL_GUILD);
			return;
		}

		guild->setBankBalance(guild->getBankBalance() - amount);
		player->setBankBalance(player->getBankBalance() + amount);
		player->sendChannelMessage("", fmt::format("You have picked {:d} gold from the guild balance.", amount), TALKTYPE_CHANNEL_R1, CHANNEL_GUILD);

	} else {
		player->sendChannelMessage("", "Unknown action. Use donate or pick.", TALKTYPE_CHANNEL_R1, CHANNEL_GUILD);
	}
}
