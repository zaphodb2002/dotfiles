--[[
Achievements-related enumerations

Notes: 
	- id's below 80 are usable at will, higher are real in-game id's (negative would also be fine)
	- id's below 80 are sub-categories of real in-game categories, for higher clarity/better grouping
--]]

local enum = DataStore.Enum

enum.AchievementCategories = {
	Character = 92,
	CharacterLevel = -1,
	CharacterMoney = -2,
	CharacterRiding = -3,

	Quests = 96,
	QuestsCompleted = -4,
	QuestsDaily = -5,
	QuestsWorld = -6,
	QuestsDungeon = -7,

	QuestsEasternKingdoms = 14861,
	QuestsKalimdor = 15081,
	QuestsOutland = 14862,
	QuestsNorthrend = 14863,
	QuestsCataclysm = 15070,
	QuestsPandaria = 15110,
	QuestsDraenor = 15220,
	QuestsLegion = 15252,
	QuestsBfA = 15284,
	QuestsShadowlands = 15422,
	QuestsShadowlands92 = -98,
	QuestsDragonflight = 15455,

	Exploration = 97,
	ExplorationExplorer = -8,
	ExplorationEasternKingdoms = 14777,
	ExplorationKalimdor = 14778,
	ExplorationOutland = 14779,
	ExplorationNorthrend = 14780,
	ExplorationCataclysm = 15069,
	ExplorationPandaria = 15113,
	ExplorationDraenor = 15235,
	ExplorationLegion = 15257,
	ExplorationBfA = 15298,
	ExplorationShadowlands = 15436,
	ExplorationShadowlands92 = -99,
	ExplorationDragonflight = 15465,

	PvP = 95,
	PvPHonorableKills = -9,
	PvPKills = -10,
	PvPBattleground = -11,
	PvPArena = 165,
	PvPHonor = 15266,
	PvPWorld = 15283,
	PvPRatedBattleground = 15092,
	PvPWarsongGulch = 14804,
	PvPArathi = 14802,
	PvPEyeOfTheStorm = 14803,
	PvPAlteracValley = 14801,
	PvPAshran = 15414,
	PvPIsleOfConquest = 15003,
	PvPWintergrasp = 14901,
	PvPBattleForGilneas = 15073,
	PvPTwinPeaks = 15074,
	PvPSilvershardMines = 15162,
	PvPTempleOfKotmogu = 15163,
	PvPSeethingShore = 15292,
	PvPDeepwindGorge = 15218,

	Dungeons = 168,
	DungeonHero = 12,
	DungeonGloryHero = 13,
	DungeonGloryRaider = 14,
	DungeonsOther = 19,

	DungeonsClassic = 14808,
	DungeonsBurningCrusade = 14805,
	DungeonsLichKing = 14806,
	DungeonsCataclysm = 15067,
	DungeonsPandaria = 15106,
	DungeonsDraenor = 15228,
	DungeonsLegion = 15254,
	DungeonsBfA = 15285,
	DungeonsShadowlands = 15428,
	DungeonsDragonflight = 15467,

	RaidsClassic = 20,
	RaidsBurningCrusade = 21,

	RaidsLichKing = 14922,
	RaidsLichKingVaultOfArchavon = -109,
	RaidsLichKingNaxxramas = -106,
	RaidsLichKingObsidianSanctum = -107,
	RaidsLichKingEyeOfEternity = -108,
	RaidsLichKingUlduar = -110,
	RaidsLichKingTrialOfTheCrusader = -111,
	RaidsLichKingOnyxiasLair = -112,
	RaidsLichKingIcecrownCitadel = -113,
	RaidsLichKingRubySanctum = -114,

	RaidsCataclysm = 15068,
	RaidsCataclysmBlackwingDescent = -115,
	RaidsCataclysmBastionOfTwilight = -116,
	RaidsCataclysmThroneOfTheFourWinds = -117,
	RaidsCataclysmFirelands = -118,
	RaidsCataclysmDragonSoul = -119,

	RaidsPandaria = 15107,
	RaidsPandariaMoguShanVaults = -120,
	RaidsPandariaHeartOfFear = -121,
	RaidsPandariaTerraceOfEndlessSpring = -122,
	RaidsPandariaThroneOfThunder = -123,
	RaidsPandariaSiegeOfOrgrimmar = -124,

	RaidsDraenor = 15231,
	RaidsDraenorHighmaul = -125,
	RaidsDraenorBlackrockFoundry = -126,
	RaidsDraenorHellfireCitadel = -127,

	RaidsLegion = 15255,
	RaidsLegionEmeraldNightmare = -101,
	RaidsLegionTrialOfValor = -102,
	RaidsLegionNighthold = -103,
	RaidsLegionTombOfSargeras = -104,
	RaidsLegionAntorus = -105,

	RaidsBfA = 15286,
	RaidsBfAUldir = -128,
	RaidsBfABattleOfDazaralor = -129,
	RaidsBfACrucibleOfStorms = -130,
	RaidsBfAEternalPalace = -131,
	RaidsBfANyalotha = -132,

	RaidsShadowlands = 15438,
	RaidsShadowlandsCastleNathria = -100,
	RaidsShadowlandsSanctumOfDomination = -133,
	RaidsShadowlandsSepulcherOfTheFirstOnes = -134,

	RaidsDragonflight = 15468,
	RaidsDragonflightVaultOfTheIncarnates = -135,



	Professions = 169,
	ProfessionsCooking = 170,
	ProfessionsCookingLevel = 22,
	ProfessionsCookingLearn = 23,
	ProfessionsCookingCook = 24,
	ProfessionsCookingDailyQuests = 25,
	ProfessionsFishing = 171,
	ProfessionsFishingDragonflight = -139,
	ProfessionsFishingLevel = 26,
	ProfessionsFishingFishUp = 27,
	ProfessionsFishingCatch = 28,
	ProfessionsFishingDailyQuests = 29,
	ProfessionsArchaeology = 15071,
	ProfessionsArchaeologyLevel = 30,
	ProfessionsArchaeologyFind = 31,
	ProfessionsArchaeologyCollector = 32,
	ProfessionsArchaeologyCataclysm = 33,
	ProfessionsArchaeologyPandaria = 34,
	ProfessionsArchaeologyDraenor = 35,
	ProfessionsArchaeologyLegion = 36,
	ProfessionsArchaeologyBfA = 37,

	Reputations = 201,
	ReputationsExalted = -40,
	ReputationsAlliedRaces = -41,
	ReputationsHeritage = -42,
	ReputationsClassic = 14864,
	ReputationsBurningCrusade = 14865,
	ReputationsLichKing = 14866,
	ReputationsCataclysm = 15072,
	ReputationsPandaria = 15114,
	ReputationsDraenor = 15232,
	ReputationsLegion = 15258,
	ReputationsBfA = 15305,
	ReputationsShadowlands = 15439,
	ReputationsDragonflight = 15466,

	WorldEvents = 155,
	WorldEventsLunarFestival = 160,
	WorldEventsLoveIsInTheAir = 187,
	WorldEventsNoblegarden = 159,
	WorldEventsChildrensWeek = 163,
	WorldEventsMidSummer = 161,
	WorldEventsMidSummerDesecrate = -43,
	WorldEventsMidSummerKeepers = -44,
	WorldEventsMidSummerWardens = -45,
	WorldEventsBrewfest = 162,
	WorldEventsHallowsEnd = 158,
	WorldEventsHallowsEndTricks = -46,
	WorldEventsPilgrimsBounty = 14981,
	WorldEventsWinterveil = 156,
	WorldEventsDarkmoon = 15101,
	WorldEventsDarkmoonRealRace = -47,
	WorldEventsDarkmoonRealBigRace = -48,
	WorldEventsBrawlersGuild = 15282,

	PetBattles = 15117,
	PetBattlesCollect = 15118,
	PetBattlesCollectUnique = -50,
	PetBattlesCollectLeashes = -51,
	PetBattlesCollectSafari = -52,
	PetBattlesBattle = 15119,
	PetBattlesBattleWins = -53,
	PetBattlesBattlePvP = -54,
	PetBattlesBattleLegion = -57,
	PetBattlesBattleArgus = -58,
	PetBattlesBattleBfA = -59,
	PetBattlesBattleShadowlands = -60,
	PetBattlesBattleDragonflight = -136,
	PetBattlesLevel = 15120,

	Collections = 15246,
	CollectionsToyBox = 15247,
	CollectionsMounts = 15248,
	CollectionsAppearances = 15259,
	CollectionsAppearancesRaids = -61,
	CollectionsAppearancesPvP = -62,

	ExpansionFeatures = 15301,
	ExpansionFeaturesArgentTournament = 14941,
	ExpansionFeaturesTolBarad = 15075,
	ExpansionFeaturesPandariaScenarios = 15302,
	ExpansionFeaturesProvingGrounds = 15222,
	ExpansionFeaturesProvingGroundsDamage = -63,
	ExpansionFeaturesProvingGroundsHealer = -64,
	ExpansionFeaturesProvingGroundsTank = -65,
	ExpansionFeaturesDraenorGarrisons = 15303,
	ExpansionFeaturesLegionClassHall = 15304,
	ExpansionFeaturesIslandExpeditions = 15307,
	ExpansionFeaturesWarEffort = 15308,
	ExpansionFeaturesHeartOfAzeroth = 15417,
	ExpansionFeaturesVisionsOfNzoth = 15426,
	ExpansionFeaturesTorghast = 15440,
	ExpansionFeaturesTorghastCorridors = -66,
	ExpansionFeaturesTorghastFlawless = -67,
	ExpansionFeaturesTorghastPhantasma = -68,
	ExpansionFeaturesCovenantSanctums = 15441,
	ExpansionFeaturesCovenantSanctumsKyrian = -69,
	ExpansionFeaturesCovenantSanctumsVenthyr = -70,
	ExpansionFeaturesCovenantSanctumsNightFae = -71,
	ExpansionFeaturesCovenantSanctumsNecrolords = -72,
	ExpansionFeaturesCovenantSanctumsAdventures = -73,
	ExpansionFeaturesDragonriderRacing = 15462,
	ExpansionFeaturesPrimalStorms = 15474,

	FeatsOfStrength = 81,
	FeatsOfStrengthMounts = 15269,
	FeatsOfStrengthMountsArena = -80,
	FeatsOfStrengthMountsRaF = -81,
	FeatsOfStrengthDungeons = 15272,
	FeatsOfStrengthDungeonsChallenge = -82,
	FeatsOfStrengthDungeonsBfA = -83,
	FeatsOfStrengthDungeonsShadowlands = -84,
	FeatsOfStrengthDungeonsDragonflight = -137,
	FeatsOfStrengthRaids = 15271,
	FeatsOfStrengthRaidsAhead = -85,
	FeatsOfStrengthRaidsCuttingEdge = -86,
	FeatsOfStrengthPvP = 15270,
	FeatsOfStrengthPvPDraenor = -87,
	FeatsOfStrengthPvPLegion = -88,
	FeatsOfStrengthPvPBfA = -89,
	FeatsOfStrengthPvPShadowlands = -90,
	FeatsOfStrengthPvPDragonflight = -138,
	FeatsOfStrengthPvPRatedBG = -91,
	FeatsOfStrengthPvPUnchained = -92,
	FeatsOfStrengthReputation = 15273,
	FeatsOfStrengthEvents = 15274,
	FeatsOfStrengthEventsWinterveil = -93,
	FeatsOfStrengthEventsAnniversary = -94,
	FeatsOfStrengthPromotions = 15268,
	FeatsOfStrengthPromotionsBlizzCon = -95,
	FeatsOfStrengthPromotionsCollector = -96,
	FeatsOfStrengthRealmFirst = -97,

}
