local addonName, addonTable = ...

local L = LibStub("AceLocale-3.0"):GetLocale("Rarity")
local CONSTANTS = addonTable.constants

local mopPets = {
	-- 5.0
	["Hollow Reed"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Hollow Reed"],
		spellId = 126249,
		itemId = 86563,
		npcs = { 50776 },
		chance = 10,
		creatureId = 64633,
		coords = { { m = 422, x = 64.2, y = 58.6 } },
	},
	["Imbued Jade Fragment"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Imbued Jade Fragment"],
		spellId = 126251,
		itemId = 86564,
		npcs = { 50347 },
		chance = 10,
		creatureId = 64634,
		coords = { { m = 422, x = 71.8, y = 37.6 } },
	},
	["Porcupette"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Porcupette"],
		spellId = 118414,
		itemId = 89587,
		items = { 89125, 142447, 151638, 184866 },
		chance = 250,
		creatureId = 61086,
		coords = { { m = CONSTANTS.UIMAPIDS.NONE } },
	},
	-- 5.1
	["Anubisath Idol"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Anubisath Idol"],
		spellId = 135267,
		itemId = 93040,
		npcs = { 15276 },
		chance = 10,
		creatureId = 68659,
		coords = { { m = 319, x = 60.6, y = 69.7, i = true } },
	},
	["Blackwing Banner"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Blackwing Banner"],
		spellId = 135265,
		itemId = 93037,
		npcs = { 12017 },
		chance = 10,
		creatureId = 68663,
		coords = { { m = 287, x = 50.5, y = 61.7, i = true } },
	},
	["Blazing Rune"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Blazing Rune"],
		spellId = 135259,
		itemId = 93034,
		npcs = { 11982 },
		chance = 10,
		creatureId = 68664,
		coords = { { m = 232, x = 69.4, y = 23.6, i = true } },
	},
	["Blighted Spore"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Blighted Spore"],
		spellId = 135255,
		itemId = 93032,
		npcs = { 16011 },
		chance = 10,
		creatureId = 68657,
		coords = { { m = 162, x = 76, y = 28.3, i = true } },
	},
	["Core of Hardened Ash"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Core of Hardened Ash"],
		spellId = 135261,
		itemId = 93035,
		npcs = { 11988 },
		chance = 10,
		creatureId = 68666,
		coords = { { m = 232, x = 68.8, y = 57.6, i = true } },
	},
	["Dusty Clutch of Eggs"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Dusty Clutch of Eggs"],
		spellId = 135254,
		itemId = 93030,
		npcs = { 15952 },
		chance = 10,
		creatureId = 68656,
		coords = { { m = 162, x = 68.6, y = 15.2, i = true } },
	},
	["Gluth's Bone"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Gluth's Bone"],
		spellId = 135257,
		itemId = 93029,
		npcs = { 15932 },
		chance = 10,
		creatureId = 68654,
		coords = { { m = 162, x = 46.2, y = 43.8, i = true } },
	},
	["Imperial Moth"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Imperial Moth"],
		spellId = 132574,
		itemId = 90900,
		items = { 92960 },
		chance = 50,
		creatureId = 67230,
		coords = { { m = CONSTANTS.UIMAPIDS.NONE } },
	},
	["Imperial Silkworm"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Imperial Silkworm"],
		spellId = 132580,
		itemId = 90902,
		items = { 92960 },
		chance = 10,
		creatureId = 67233,
		coords = { { m = CONSTANTS.UIMAPIDS.NONE } },
	},
	["Jewel of Maddening Whispers"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Jewel of Maddening Whispers"],
		spellId = 135268,
		itemId = 93041,
		npcs = { 15263 },
		chance = 10,
		creatureId = 68658,
		coords = { { m = 319, x = 45.7, y = 52.2, i = true } },
	},
	["Mark of Flame"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Mark of Flame"],
		spellId = 135258,
		itemId = 93033,
		npcs = { 12098 },
		chance = 10,
		creatureId = 68665,
		coords = { { m = 232, x = 82.8, y = 82.5, i = true } },
	},
	["Unscathed Egg"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Unscathed Egg"],
		spellId = 135263,
		itemId = 93036,
		npcs = { 12435 },
		chance = 10,
		creatureId = 68661,
		coords = { { m = 287, x = 41.9, y = 60.2, i = true } },
	},
	["Viscidus Globule"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Viscidus Globule"],
		spellId = 135266,
		itemId = 93039,
		npcs = { 15299 },
		chance = 10,
		creatureId = 68660,
		coords = { { m = 319, x = 72.1, y = 17.8, i = true } },
	},
	["Whistle of Chromatic Bone"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Whistle of Chromatic Bone"],
		spellId = 135264,
		itemId = 93038,
		npcs = { 14020 },
		chance = 10,
		creatureId = 68662,
		coords = { { m = 287, x = 39.4, y = 72.6, i = true } },
	},
	-- 5.2
	["Ji-Kun Hatchling"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Ji-Kun Hatchling"],
		spellId = 139148,
		itemId = 94835,
		npcs = { 99999 },
		tooltipNpcs = { 69712 },
		chance = 200,
		statisticId = { 8171, 8169, 8172, 8170, 8168 },
		creatureId = 70144,
		enableCoin = true,
		blackMarket = true,
		lockBossName = "Ji-Kun",
		coords = { { m = 508, x = 49.3, y = 41.5, i = true } },
	},
	["Living Sandling"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Living Sandling"],
		spellId = 137977,
		itemId = 94125,
		npcs = { 69944 },
		chance = 200,
		statisticId = { 8153 },
		doNotUpdateToHighestStat = true,
		creatureId = 69748,
		enableCoin = true,
		blackMarket = true,
		coords = { { m = 508, i = true } },
	},
	["Mountain Panda"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Mountain Panda"],
		spellId = 138382,
		itemId = 94210,
		items = { 94207 },
		chance = 7,
		creatureId = 69892,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.JADE_FOREST },
			{ m = CONSTANTS.UIMAPIDS.VALLEY_OF_THE_FOUR_WINDS },
			{ m = CONSTANTS.UIMAPIDS.KUNLAI_SUMMIT },
			{ m = CONSTANTS.UIMAPIDS.TOWNLONG_STEPPES },
			{ m = CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS_MOP },
			{ m = CONSTANTS.UIMAPIDS.KRASARANG_WILDS },
			{ m = CONSTANTS.UIMAPIDS.DREAD_WASTES },
		},
	},
	["Snowy Panda"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Snowy Panda"],
		spellId = 138381,
		itemId = 94209,
		items = { 94207 },
		chance = 7,
		creatureId = 69893,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.JADE_FOREST },
			{ m = CONSTANTS.UIMAPIDS.VALLEY_OF_THE_FOUR_WINDS },
			{ m = CONSTANTS.UIMAPIDS.KUNLAI_SUMMIT },
			{ m = CONSTANTS.UIMAPIDS.TOWNLONG_STEPPES },
			{ m = CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS_MOP },
			{ m = CONSTANTS.UIMAPIDS.KRASARANG_WILDS },
			{ m = CONSTANTS.UIMAPIDS.DREAD_WASTES },
		},
	},
	["Son of Animus"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Son of Animus"],
		spellId = 138161,
		itemId = 94152,
		npcs = { 99999 },
		tooltipNpcs = { 69427 },
		chance = 200,
		statisticId = { 8186, 8184, 8187, 8185, 8183 },
		creatureId = 69820,
		enableCoin = true,
		blackMarket = true,
		lockBossName = "Dark Animus",
		coords = { { m = 508, x = 42.6, y = 57.6, i = true } },
	},
	["Sunfur Panda"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Sunfur Panda"],
		spellId = 138380,
		itemId = 94208,
		items = { 94207 },
		chance = 7,
		creatureId = 69891,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.JADE_FOREST },
			{ m = CONSTANTS.UIMAPIDS.VALLEY_OF_THE_FOUR_WINDS },
			{ m = CONSTANTS.UIMAPIDS.KUNLAI_SUMMIT },
			{ m = CONSTANTS.UIMAPIDS.TOWNLONG_STEPPES },
			{ m = CONSTANTS.UIMAPIDS.VALE_OF_ETERNAL_BLOSSOMS_MOP },
			{ m = CONSTANTS.UIMAPIDS.KRASARANG_WILDS },
			{ m = CONSTANTS.UIMAPIDS.DREAD_WASTES },
		},
	},
	["Direhorn Runt"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Direhorn Runt"],
		spellId = 139153,
		itemId = 94573,
		npcs = { 70019, 69983, 70016, 70017, 70018, 69992, 70015, 70012, 70013, 70014 },
		chance = 250,
		creatureId = 70154,
		coords = { { m = 507 } },
	},
	["Zandalari Anklerender"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Zandalari Anklerender"],
		spellId = 139932,
		itemId = 95422,
		npcs = { 69925 },
		chance = 50,
		creatureId = 70451,
		coords = { { m = 507 } },
	},
	["Zandalari Footslasher"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Zandalari Footslasher"],
		spellId = 139933,
		itemId = 95423,
		npcs = { 69925 },
		chance = 50,
		creatureId = 70452,
		coords = { { m = 507 } },
	},
	["Zandalari Kneebiter"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Zandalari Kneebiter"],
		spellId = 138087,
		itemId = 94126,
		npcs = { 69925 },
		chance = 50,
		creatureId = 69796,
		coords = { { m = 507 } },
	},
	["Zandalari Toenibbler"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Zandalari Toenibbler"],
		spellId = 139934,
		itemId = 95424,
		npcs = { 69925 },
		chance = 50,
		creatureId = 70453,
		coords = { { m = 507 } },
	},
	-- 5.3
	["Brilliant Phoenix Hawk Feather"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Brilliant Phoenix Hawk Feather"],
		spellId = 141449,
		itemId = 97557,
		npcs = { 19514 },
		chance = 33,
		creatureId = 71022,
		coords = { { m = 334, x = 50.1, y = 58.7, i = true } },
	},
	["Crystal of the Void"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Crystal of the Void"],
		spellId = 141448,
		itemId = 97556,
		npcs = { 18805 },
		chance = 20,
		creatureId = 71021,
		coords = { { m = 334, x = 74, y = 48.9, i = true } },
	},
	["Dark Quivering Blob"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Dark Quivering Blob"],
		spellId = 142029,
		itemId = 97960,
		npcs = { 99999 },
		tooltipNpcs = { 69017 },
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,
		},
		chance = 50,
		statisticId = { 8181, 8179, 8180, 8182 },
		creatureId = 71200,
		enableCoin = true,
		blackMarket = true,
		sourceText = L["All raid formats except Raid Finder"],
		lockBossName = "Primordius",
		coords = { { m = 508, i = true, x = 57.2, y = 78.2 } },
	},
	["Dripping Strider Egg"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Dripping Strider Egg"],
		spellId = 141446,
		itemId = 97554,
		npcs = { 21212 },
		chance = 250,
		creatureId = 71019,
		coords = { { m = 332, x = 72.2, y = 58.9, i = true } },
	},
	["Gahz'rooki's Summoning Stone"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Gahz'rooki's Summoning Stone"],
		spellId = 141789,
		itemId = 97821,
		npcs = {
			71012, -- Kor'kron Butcher
			73590, -- Kor'kron Outrider
		},
		chance = 1000,
		creatureId = 71159,
		coords = { { m = 10, x = 43.7, y = 47.9 } },
	},
	["Half-Empty Food Container"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Half-Empty Food Container"],
		spellId = 142030,
		itemId = 97961,
		npcs = { 69251 },
		chance = 750,
		creatureId = 71201,
		coords = { { m = 504, x = 51.8, y = 80.6 } },
	},
	["Instant Arcane Sanctum Security Kit"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Instant Arcane Sanctum Security Kit"],
		spellId = 141434,
		itemId = 97549,
		npcs = { 15691 },
		chance = 33,
		creatureId = 71015,
		coords = { { m = 794, i = true, x = 49.4, y = 36.6 } },
	},
	["Netherspace Portal-Stone"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Netherspace Portal-Stone"],
		spellId = 141435,
		itemId = 97550,
		npcs = { 15690 },
		chance = 33,
		creatureId = 71016,
		coords = { { m = 350, x = 51.4, y = 30.9, i = true } },
	},
	["Pygmy Direhorn"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Pygmy Direhorn"],
		spellId = 138825,
		itemId = 94574,
		npcs = { 99999 },
		tooltipNpcs = { 68476 },
		chance = 50,
		statisticId = { 8151, 8149, 8152, 8150, 8148 },
		creatureId = 70083,
		enableCoin = true,
		blackMarket = true,
		lockBossName = "Horridon",
		coords = { { m = 508, 26.8, y = 78.7, i = true } },
	},
	["Quivering Blob"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Quivering Blob"],
		spellId = 142028,
		itemId = 97959,
		npcs = { 99999 },
		tooltipNpcs = { 69017 },
		instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true },
		chance = 50,
		statisticId = { 8178 },
		creatureId = 71199,
		enableCoin = true,
		blackMarket = true,
		sourceText = L["Only Raid Finder difficulty"],
		lockBossName = "Primordius",
		coords = { { m = 508, x = 57.2, y = 78.2, i = true } },
	},
	["Satyr Charm"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Satyr Charm"],
		spellId = 141451,
		itemId = 97551,
		npcs = { 15688 },
		chance = 33,
		creatureId = 71033,
		coords = { { m = 794, x = 52.5, y = 69.6, i = true } },
	},
	["Shell of Tide-Calling"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Shell of Tide-Calling"],
		spellId = 141436,
		itemId = 97552,
		npcs = { 21213 },
		chance = 20,
		creatureId = 71017,
		coords = { { m = 332, x = 59.6, y = 26, i = true } },
	},
	["Spiky Collar"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Spiky Collar"],
		spellId = 141433,
		itemId = 97548,
		npcs = { 17521 },
		chance = 14,
		creatureId = 71014,
		coords = { { m = 350, x = 18.1, y = 35, i = true } },
	},
	["Tainted Core"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Tainted Core"],
		spellId = 141437,
		itemId = 97553,
		npcs = { 21216 },
		chance = 25,
		creatureId = 71018,
		coords = { { m = 332, x = 36.3, y = 84.7, i = true } },
	},
	["Tiny Fel Engine Key"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Tiny Fel Engine Key"],
		spellId = 141447,
		itemId = 97555,
		npcs = { 19516 },
		chance = 25,
		creatureId = 71020,
		coords = { { m = 334, x = 26.4, y = 49, i = true } },
	},
	-- 5.4
	["Ashleaf Spriteling"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Ashleaf Spriteling"],
		spellId = 148046,
		itemId = 104156,
		npcs = { 73277 },
		chance = 66,
		creatureId = 73533,
		coords = { { m = 554, x = 67.6, y = 44 } },
	},
	["Azure Crane Chick"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Azure Crane Chick"],
		spellId = 148047,
		itemId = 104157,
		obtain = L["Obtained by opening Crane Nests on the Timeless Isle"],
		chance = 50,
		creatureId = 73534,
		coords = { { m = 554 } },
	},
	["Blackfuse Bombling"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Blackfuse Bombling"],
		spellId = 148049,
		itemId = 104158,
		npcs = { 99999 },
		tooltipNpcs = { 71504 },
		chance = 100,
		blackMarket = true,
		statisticId = { 8624, 8622, 8625, 8623, 8621, 8620 },
		creatureId = 73352,
		lockBossName = "Siegecrafter Blackfuse",
		coords = { { m = 556, x = 58.7, y = 46.5, i = true } },
	},
	["Bonkers"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Bonkers"],
		spellId = 148373,
		itemId = 104202,
		obtain = L["Obtained by opening Timeless Chests on the Timeless Isle"],
		chance = 70,
		creatureId = 73668,
		coords = { { m = 554 } },
	},
	["Death Adder Hatchling"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Death Adder Hatchling"],
		spellId = 148052,
		itemId = 104161,
		npcs = { 73163 },
		chance = 50,
		creatureId = 73364,
		coords = { { m = 554 } },
	},
	["Dandelion Frolicker"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Dandelion Frolicker"],
		spellId = 148051,
		itemId = 104160,
		npcs = { 71826, 71823 },
		chance = 1250,
		questId = 32961,
		creatureId = 73532,
		coords = { { m = 554, x = 45.6, y = 74.6 } },
	},
	["Droplet of Y'Shaarj"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Droplet of Y'Shaarj"],
		spellId = 148058,
		itemId = 104162,
		npcs = { 99999 },
		tooltipNpcs = { 71734 },
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
		},
		chance = 100,
		statisticId = { 8569, 8571, 8573, 8570, 8568 },
		creatureId = 73350,
		enableCoin = true,
		blackMarket = true,
		sourceText = L["All raid formats except Raid Finder"],
		lockBossName = "Sha of Pride",
		coords = { { m = 556, x = 22.5, y = 69.5, i = true } },
	}, -- SHA OF PRIDE (flex/normal/heroic)
	["Gooey Sha-ling"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Gooey Sha-ling"],
		spellId = 148059,
		itemId = 104163,
		npcs = { 99999 },
		tooltipNpcs = { 71734 },
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.LEGACY_LFR] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
		},
		chance = 100,
		statisticId = { 8568, 8567 },
		creatureId = 73351,
		enableCoin = true,
		blackMarket = true,
		sourceText = L["Raid Finder or Flexible difficulty"],
		lockBossName = "Sha of Pride",
		coords = { { m = 556, x = 22.5, y = 69.5, i = true } },
	}, -- SHA OF PRIDE (lfr/flex)
	["Gu'chi Swarmling"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Gu'chi Swarmling"],
		spellId = 148527,
		itemId = 104291,
		npcs = { 72909 },
		chance = 50,
		creatureId = 73730,
		coords = { { m = 554, x = 42.6, y = 75.6 } },
	},
	["Gulp Froglet"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Gulp Froglet"],
		spellId = 148067,
		itemId = 104169,
		npcs = { 72775 },
		chance = 33,
		creatureId = 73359,
		coords = { { m = 554, x = 63.8, y = 73 } },
	},
	["Jadefire Spirit"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Jadefire Spirit"],
		spellId = 148552,
		itemId = 104307,
		npcs = { 72769 },
		chance = 50,
		creatureId = 73738,
		coords = { { m = 554, x = 47.8, y = 36.8 } },
	},
	["Jademist Dancer"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Jademist Dancer"],
		spellId = 148060,
		itemId = 104164,
		npcs = { 72767 },
		chance = 200,
		creatureId = 72767,
		coords = { { m = 554, x = 26.4, y = 29.2 } },
	},
	["Kovok"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Kovok"],
		spellId = 148061,
		itemId = 104165,
		npcs = { 99999 },
		tooltipNpcs = { 71161, 71153, 71160, 71154, 71156, 71155, 71158, 71152, 71157 },
		chance = 100,
		statisticId = { 8630, 8628, 8631, 8629, 8627, 8626 },
		creatureId = 73354,
		enableCoin = true,
		blackMarket = true,
		lockBossName = "Paragons of the Klaxxi",
		coords = { { m = 556, x = 68.3, y = 35.3, i = true } },
	}, -- PARAGONS OF THE KLAXXI (all modes)
	["Lil' Bling"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Lil' Bling"],
		spellId = 147124,
		itemId = 103670,
		items = { 86623, 113258, 132892, 168740 },
		chance = 200,
		creatureId = 73011,
		questId = { 31752, 34774, 40753, 56042 },
		tooltipNpcs = { 77789, 43929 },
		coords = { { m = CONSTANTS.UIMAPIDS.NONE } },
	},
	["Ominous Flame"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Ominous Flame"],
		spellId = 148062,
		itemId = 104166,
		npcs = { 73162 },
		chance = 200,
		creatureId = 73357,
		coords = { { m = 554, x = 47.2, y = 35.6 } },
	},
	["Ruby Droplet"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Ruby Droplet"],
		spellId = 148050,
		itemId = 104159,
		npcs = { 73282 },
		chance = 33,
		creatureId = 73356,
		coords = { { m = 554, x = 64.6, y = 28.6 } },
	},
	["Skunky Alemental"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Skunky Alemental"],
		spellId = 148063,
		itemId = 104167,
		npcs = { 71919 },
		chance = 33,
		creatureId = 73367,
		coords = { { m = 554, x = 37.8, y = 77.2 } },
	},
	["Spineclaw Crab"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Spineclaw Crab"],
		spellId = 148066,
		itemId = 104168,
		npcs = { 73166 },
		chance = 60,
		creatureId = 73366,
		coords = { { m = 554 } },
	},
	["Sunreaver Micro-Sentry"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Sunreaver Micro-Sentry"],
		spellId = 138082,
		itemId = 94124,
		npcs = { 50358 },
		chance = 5,
		creatureId = 69778,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.ISLE_OF_THUNDER, x = 48.4, y = 87.2, n = L["Haywire Sunreaver Construct"] },
		},
	},
}

Rarity.ItemDB.MergeItems(Rarity.ItemDB.pets, mopPets)
