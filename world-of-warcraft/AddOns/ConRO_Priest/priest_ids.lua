local ConRO_Priest, ids = ...;

--General
	ids.Racial = {
		AncestralCall = {spellID = 274738},
		ArcanePulse = {spellID = 260364},
		ArcaneTorrent = {spellID = 50613},
		Berserking = {spellID = 26297},
		Cannibalize = {spellID = 20577},
		GiftoftheNaaru = {spellID = 59548},
		Shadowmeld = {spellID = 58984},
	}
	ids.Glyph = {
		Lightspawn = 254224,
		Sha = 132603,
		Voidling = 254232,
	}
--Discipline
	ids.Disc_Ability = {
	--Priest Baseline
		DesperatePrayer = {spellID = 19236},
		Fade = {spellID = 586},
		FlashHeal = {spellID = 2061},
		Levitate = {spellID = 1706},
		MindBlast = {spellID = 8092},
		MindSoothe = {spellID = 453},
		MindVision = {spellID = 2096},
		PowerWordFortitude = {spellID = 21562},
		PowerWordShield = {spellID = 17},
		PsychicScream = {spellID = 8122},
		Resurrection = {spellID = 2006},
		ShadowWordPain = {spellID = 589},
		Smite = {spellID = 585},
		--Passive
		FocusedWill = {spellID = 45243},
	--Discipline Baseline
		Penance = {spellID = 47540},
		Purify = {spellID = 527},
		--Passive
		MasteryGrace = {spellID = 271534},
		SinsoftheMany = {spellID = 280391},
	--Priest
		AngelicFeather = {spellID = 121536, talentID = 103853},
		DispelMagic = {spellID = 528, talentID = 103867},
		DivineStar = {spellID = 110744, talentID = 103831},
			DivineStarSC = {spellID = 122121, talentID = 103831},
		DominantMind = {spellID = 205364, talentID = 103678},
		Halo = {spellID = 120517, talentID = 103830},
			HaloSC = {spellID = 120644, talentID = 103830},
		HolyNova = {spellID = 132157, talentID = 103851},
		LeapofFaith = {spellID = 73325, talentID = 103868},
		MassDispel = {spellID = 32375, talentID = 103849},
		MindControl = {spellID = 605, talentID = 103862},
		Mindgames = {spellID = 375901, talentID = 103837},
		PowerInfusion = {spellID = 10060, talentID = 103844},
		PowerWordLife = {spellID = 373481, talentID = 103822},
		PrayerofMending = {spellID = 33076, talentID = 103870},
		Renew = {spellID = 139, talentID = 103869},
		ShackleUndead = {spellID = 9484, talentID = 103843},
		ShadowWordDeath = {spellID = 32379, talentID = 103864},
		Shadowfiend = {spellID = 34433, talentID = 103865},
		VampiricEmbrace = {spellID = 15286, talentID = 103841},
		VoidShift = {spellID = 108968, talentID = 103820},
		VoidTendrils = {spellID = 108920, talentID = 103859},
		AngelicBulwark = {spellID = 108945, talentID = 103821},
		AngelsMercy = {spellID = 238100, talentID = 103825},
		Apathy = {spellID = 390668, talentID = 103839},
		BindingHeals = {spellID = 368275, talentID = 103824},
		BlessedRecovery = {spellID = 390767, talentID = 103677},
		BodyandSoul = {spellID = 64129, talentID = 103856},
		CrystallineReflection = {spellID = 373457, talentID = 103829},
		DeathandMadness = {spellID = 321291, talentID = 103863},
		FocusedMending = {spellID = 372354, talentID = 103871},
		FromDarknessComesLight = {spellID = 390615, talentID = 103857},
		ImprovedFade = {spellID = 390670, talentID = 103836},
		ImprovedFlashHeal = {spellID = 393870, talentID = 103866},
		ImprovedMassDispel = {spellID = 341167, talentID = 103848},
		ImprovedPurify = {spellID = 390632, talentID = 103855},
		Inspiration = {spellID = 390676, talentID = 103846},
		LightsInspiration = {spellID = 373450, talentID = 103826},
		Manipulation = {spellID = 390996, talentID = 103818},
		MovewithGrace = {spellID = 390620, talentID = 103852},
		Phantasm = {spellID = 108942, talentID = 103834},
		ProtectiveLight = {spellID = 193063, talentID = 108863},
		PsychicVoice = {spellID = 196704, talentID = 103845},
		Rhapsody = {spellID = 390622, talentID = 103850},
		Sanlayn = {spellID = 199855, talentID = 103840},
		ShatteredPerceptions = {spellID = 391112, talentID = 103819},
		SheerTerror = {spellID = 390919, talentID = 103860},
		SpellWarding = {spellID = 390667, talentID = 103872},
		SurgeofLight = {spellID = 109186, talentID = 103823},
		ThroesofPain = {spellID = 377422, talentID = 103861},
		TitheEvasion = {spellID = 373223, talentID = 103838},
		TranslucentImage = {spellID = 373446, talentID = 103835},
		TwinsoftheSunPriestess = {spellID = 373466, talentID = 103832},
		TwistofFate = {spellID = 390972, talentID = 103833},
		UnwaveringWill = {spellID = 373456, talentID = 103847},
		VoidShield = {spellID = 280749, talentID = 103842},
		WordsofthePious = {spellID = 377438, talentID = 103873},
	--Discipline
		Evangelism = {spellID = 246287, talentID = 103691},
		LightsWrath = {spellID = 373178, talentID = 103700},
		MassResurrection = {spellID = 212036},
		Mindbender = {spellID = 123040, talentID = 103710},
		PainSuppression = {spellID = 33206, talentID = 103713},
		DarkReprimand = {spellID = 400169, talentID = 103706},
		PowerWordBarrier = {spellID = 62618, talentID = 103687},
		PowerWordRadiance = {spellID = 194509, talentID = 103722},
		PowerWordSolace = {spellID = 129250, talentID = 103716},
		PurgetheWicked = {spellID = 204197, talentID = 103718},
		Rapture = {spellID = 47536, talentID = 103727},
		Schism = {spellID = 214621, talentID = 103704},
		ShadowCovenant = {spellID = 314867, talentID = 103706},
		AegisofWrath = {spellID = 238135, talentID = 103688},
		Atonement = {spellID = 81749, talentID = 103723},
		BlazeofLight = {spellID = 215768, talentID = 103693},
		BorrowedTime = {spellID = 390691, talentID = 103729},
		BrightPupil = {spellID = 390684, talentID = 103720},
		Castigation = {spellID = 193134, talentID = 103702},
		Contrition = {spellID = 197419, talentID = 103728},
		DarkIndulgence = {spellID = 372972, talentID = 103725},
		DivineAegis = {spellID = 47515, talentID = 103732},
		EmbraceShadow = {spellID = 372985, talentID = 103708},
		EnduringLuminescence = {spellID = 390685, talentID = 103719},
		Exaltation = {spellID = 373042, talentID = 103701},
		Expiation = {spellID = 390832, talentID = 103711},
		HarshDiscipline = {spellID = 373180, talentID = 103697},
		Indemnity = {spellID = 373049, talentID = 108226},
		InescapableTorment = {spellID = 373427, talentID = 103712},
		Lenience = {spellID = 238063, talentID = 103692},
		LightsPromise = {spellID = 322115, talentID = 103721},
		MakeAmends = {spellID = 391079, talentID = 108225},
		MaliciousIntent = {spellID = 372969, talentID = 103705},
		PainandSuffering = {spellID = 390689, talentID = 103703},
		PainTransformation = {spellID = 372991, talentID = 103715},
		PainfulPunishment = {spellID = 390686, talentID = 103726},
		PoweroftheDarkSide = {spellID = 198068, talentID = 103724},
		ProtectoroftheFrail = {spellID = 373035, talentID = 103714},
		ResplendentLight = {spellID = 390765, talentID = 103699},
		RevelinPurity = {spellID = 373003, talentID = 103690},
		ShieldDiscipline = {spellID = 197045, talentID = 103717},
		StolenPsyche = {spellID = 373054, talentID = 103709},
		TrainofThought = {spellID = 390693, talentID = 103731},
		TwilightCorruption = {spellID = 373065, talentID = 425957},
		TwilightEquilibrium = {spellID = 390705, talentID = 103696},
		WealandWoe = {spellID = 390786, talentID = 103694},
		WrathUnleashed = {spellID = 390781, talentID = 103698},
		VoidSummoner = {spellID = 390770, talentID = 103695},
	}
	ids.Disc_PvPTalent = {
		Purification = 196162,
		PurifiedResolve = 196439,
		Trinity = 214205,
		StrengthofSoul = 197535,
		UltimateRadiance = 236499,
		DomeofLight = 197590,
		Archangel = 197862,
		DarkArchangel = 197871,
		Thoughtsteal = 316262,
		SearingLight = 215768,
	}
	ids.Disc_Form = {

	}
	ids.Disc_Buff = {
		Atonement = 194384,
		PoweroftheDarkSide = 198069,
		PowerWordFortitude = 21562,
		PowerWordShield = 17,
		Rapture = 47536,
		ShadowCovenant = 322105,
		SpiritShell = 109964,
	}
	ids.Disc_Debuff = {
		PurgetheWicked = 204213,
		ShadowWordPain = 589,
		WeakenedSoul = 6788,
	}
	ids.Disc_PetAbility = {

	}

--Holy
	ids.Holy_Ability = {
	--Priest Baseline
		DesperatePrayer = {spellID = 19236},
		Fade = {spellID = 586},
		FlashHeal = {spellID = 2061},
		Levitate = {spellID = 1706},
		MindBlast = {spellID = 8092},
		MindSoothe = {spellID = 453},
		MindVision = {spellID = 2096},
		PowerWordFortitude = {spellID = 21562},
		PowerWordShield = {spellID = 17},
		PsychicScream = {spellID = 8122},
		Resurrection = {spellID = 2006},
		ShadowWordPain = {spellID = 589},
		Smite = {spellID = 585},
		--Passive
		FocusedWill = {spellID = 45243},
	--Holy Baseline
		Heal = {spellID = 2060},
		HolyFire = {spellID = 14914},
		MassResurrection = {spellID = 212036},
		Purify = {spellID = 527},
		--Passive
		MasteryEchoofLight = {spellID = 77485},
		SpiritofRedemption = {spellID = 20711},
	--Priest
		AngelicFeather = {spellID = 121536, talentID = 103853},
		DispelMagic = {spellID = 528, talentID = 103867},
		DivineStar = {spellID = 110744, talentID = 103831},
		DominantMind = {spellID = 205364, talentID = 103678},
		Halo = {spellID = 120517, talentID = 103830},
		HolyNova = {spellID = 132157, talentID = 103851},
		LeapofFaith = {spellID = 73325, talentID = 103868},
		MassDispel = {spellID = 32375, talentID = 103849},
		MindControl = {spellID = 605, talentID = 103862},
		Mindgames = {spellID = 375901, talentID = 103837},
		PowerInfusion = {spellID = 10060, talentID = 103844},
		PowerWordLife = {spellID = 373481, talentID = 103822},
		PrayerofMending = {spellID = 33076, talentID = 103870},
		Renew = {spellID = 139, talentID = 103869},
		ShackleUndead = {spellID = 9484, talentID = 103843},
		ShadowWordDeath = {spellID = 32379, talentID = 103864},
		Shadowfiend = {spellID = 34433, talentID = 103865},
		VampiricEmbrace = {spellID = 15286, talentID = 103841},
		VoidShift = {spellID = 108968, talentID = 103820},
		VoidTendrils = {spellID = 108920, talentID = 103859},
		AngelicBulwark = {spellID = 108945, talentID = 103821},
		AngelsMercy = {spellID = 238100, talentID = 103825},
		Apathy = {spellID = 390668, talentID = 103839},
		BindingHeals = {spellID = 368275, talentID = 103824},
		BlessedRecovery = {spellID = 390767, talentID = 103677},
		BodyandSoul = {spellID = 64129, talentID = 103856},
		CrystallineReflection = {spellID = 373457, talentID = 103829},
		DeathandMadness = {spellID = 321291, talentID = 103863},
		FocusedMending = {spellID = 372354, talentID = 103871},
		FromDarknessComesLight = {spellID = 390615, talentID = 103857},
		ImprovedFade = {spellID = 390670, talentID = 103836},
		ImprovedFlashHeal = {spellID = 393870, talentID = 103866},
		ImprovedMassDispel = {spellID = 341167, talentID = 103848},
		ImprovedPurify = {spellID = 390632, talentID = 103855},
		Inspiration = {spellID = 390676, talentID = 103846},
		LightsInspiration = {spellID = 373450, talentID = 103826},
		Manipulation = {spellID = 390996, talentID = 103818},
		MovewithGrace = {spellID = 390620, talentID = 103852},
		Phantasm = {spellID = 108942, talentID = 103834},
		ProtectiveLight = {spellID = 193063, talentID = 108863},
		PsychicVoice = {spellID = 196704, talentID = 103845},
		Rhapsody = {spellID = 390622, talentID = 103850},
		Sanlayn = {spellID = 199855, talentID = 103840},
		ShatteredPerceptions = {spellID = 391112, talentID = 103819},
		SheerTerror = {spellID = 390919, talentID = 103860},
		SpellWarding = {spellID = 390667, talentID = 103872},
		SurgeofLight = {spellID = 109186, talentID = 103823},
		ThroesofPain = {spellID = 377422, talentID = 103861},
		TitheEvasion = {spellID = 373223, talentID = 103838},
		TranslucentImage = {spellID = 373446, talentID = 103835},
		TwinsoftheSunPriestess = {spellID = 373466, talentID = 103832},
		TwistofFate = {spellID = 390972, talentID = 103833},
		UnwaveringWill = {spellID = 373456, talentID = 103847},
		VoidShield = {spellID = 280749, talentID = 103842},
		WordsofthePious = {spellID = 377438, talentID = 103873},
	--Holy
		Apotheosis = {spellID = 200183, talentID = 103743},
		CircleofHealing = {spellID = 204883, talentID = 103758},
		DivineHymn = {spellID = 64843, talentID = 103755},
		DivineWord = {spellID = 372760, talentID = 103675},
		EmpyrealBlaze = {spellID = 372616, talentID = 103739},
		GuardianSpirit = {spellID = 47788, talentID = 103774},
		HolyWordChastise = {spellID = 88625, talentID = 103776},
		HolyWordSalvation = {spellID = 265202, talentID = 103742},
		HolyWordSanctify = {spellID = 34861, talentID = 103767},
		HolyWordSerenity = {spellID = 2050, talentID = 103775},
		Lightwell = {spellID = 372835, talentID = 103733},
		PrayerofHealing = {spellID = 596, talentID = 103766},
		SymbolofHope = {spellID = 64901, talentID = 103751},
		Afterlife = {spellID = 196707, talentID = 103771},
		AnsweredPrayers = {spellID = 391387, talentID = 103740},
		Benediction = {spellID = 193157, talentID = 103779},
		BurningVehemence = {spellID = 372307, talentID = 103777},
		Censure = {spellID = 200199, talentID = 103753},
		CosmicRipple = {spellID = 238136, talentID = 103765},
		CrisisManagement = {spellID = 390954, talentID = 103762},
		DesperateTimes = {spellID = 391381, talentID = 103741},
		DivineImage = {spellID = 392988, talentID = 103736},
		DivineService = {spellID = 391233, talentID = 103780},
		EmpoweredRenew = {spellID = 391339, talentID = 103746},
		Enlightenment = {spellID = 193155, talentID = 103752},
		EverlastingLight = {spellID = 391161, talentID = 103756},
		GalesofSong = {spellID = 372370, talentID = 103747},
		GuardianAngel = {spellID = 200209, talentID = 103773},
		GuardiansoftheLight = {spellID = 196437, talentID = 103772},
		HarmoniousApparatus = {spellID = 390994, talentID = 103744},
		HealingChorus = {spellID = 390881, talentID = 103759},
		HolyMending = {spellID = 391154, talentID = 103778},
		LightoftheNaaru = {spellID = 196985, talentID = 103764},
		Lightweaver = {spellID = 390992, talentID = 103734},
		MiracleWorker = {spellID = 235587, talentID = 103737},
		Orison = {spellID = 390947, talentID = 103761},
		Pontifex = {spellID = 390980, talentID = 103763},
		PrayerCircle = {spellID = 321377, talentID = 103760},
		PrayerfulLitany = {spellID = 391209, talentID = 103757},
		PrayersoftheVirtuous = {spellID = 390977, talentID = 103750},
		PrismaticEchoes = {spellID = 390967, talentID = 103748},
		RapidRecovery = {spellID = 391368, talentID = 103745},
		RenewedFaith = {spellID = 341997, talentID = 103754},
		ResonantWords = {spellID = 372309, talentID = 103735},
		Restitution = {spellID = 391124, talentID = 103676},
		RevitalizingPrayers = {spellID = 391208, talentID = 103769},
		SanctifiedPrayers = {spellID = 196489, talentID = 103768},
		SayYourPrayers = {spellID = 391186, talentID = 103749},
		SearingLight = {spellID = 372611, talentID = 103738},
		TrailofLight = {spellID = 200128, talentID = 103770},
	}
	ids.Holy_PvPTalent = {
		HolyWard = 213610,
		HolyWordConcentration = 289657,
		GreaterHeal = 289666,
		CardinalMending = 328529,
		MiracleWorker = 235587,
		SpiritoftheRedeemer = 215982,
		RayofHope = 197268,
		GreaterFade = 213602,
		DeliveredfromEvil = 196611,
		Thoughtsteal = 316262,
		DivineAscension = 328530,
	}
	ids.Holy_Form = {

	}
	ids.Holy_Buff = {
		PowerWordFortitude = 21562,
		PowerWordShield = 17,
	}
	ids.Holy_Debuff = {
		HolyFire = 14914,
		ShadowWordPain = 589,
		WeakenedSoul = 6788,
	}
	ids.Holy_PetAbility = {

	}

--Shadow
	ids.Shad_Ability = {
	--Priest Baseline
		DesperatePrayer = {spellID = 19236},
		Fade = {spellID = 586},
		FlashHeal = {spellID = 2061},
		Levitate = {spellID = 1706},
		MindBlast = {spellID = 8092},
		MindSoothe = {spellID = 453},
		MindVision = {spellID = 2096},
		PowerWordFortitude = {spellID = 21562},
		PowerWordShield = {spellID = 17},
		PsychicScream = {spellID = 8122},
		Resurrection = {spellID = 2006},
		ShadowWordPain = {spellID = 589},
		Smite = {spellID = 585},
		--Passive
		FocusedWill = {spellID = 45243},
	--Shadow Baseline
		MindFlay = {spellID = 15407},
		Shadowform = {spellID = 232698},
		VampiricTouch = {spellID = 34914},
		--Passive
		Hallucinations = {spellID = 280752},
		MasteryShadowWeaving = {spellID = 343690},
	--Priest
		AngelicBulwark = {spellID = 108945, talentID = 103821},
		AngelicFeather = {spellID = 121536, talentID = 103853},
		AngelsMercy = {spellID = 238100, talentID = 103825},
		Apathy = {spellID = 390668, talentID = 103839},
		BindingHeals = {spellID = 368275, talentID = 103824},
		BlessedRecovery = {spellID = 390767, talentID = 103677},
		BodyandSoul = {spellID = 64129, talentID = 103856},
		CrystallineReflection = {spellID = 373457, talentID = 103829},
		DeathandMadness = {spellID = 321291, talentID = 103863},
		DispelMagic = {spellID = 528, talentID = 103867},
		DivineStar = {spellID = 122121, talentID = 103828},
		DominantMind = {spellID = 205364, talentID = 103678},
		FocusedMending = {spellID = 372354, talentID = 103871},
		FromDarknessComesLight = {spellID = 390615, talentID = 103857},
		Halo = {spellID = 120644, talentID = 103827},
		HolyNova = {spellID = 132157, talentID = 103851},
		ImprovedFade = {spellID = 390670, talentID = 103836},
		ImprovedFlashHeal = {spellID = 393870, talentID = 103866},
		ImprovedMassDispel = {spellID = 341167, talentID = 103848},
		Inspiration = {spellID = 390676, talentID = 103846},
		LeapofFaith = {spellID = 73325, talentID = 103868},
		LightsInspiration = {spellID = 373450, talentID = 103826},
		Manipulation = {spellID = 390996, talentID = 103818},
		MassDispel = {spellID = 32375, talentID = 103849},
		MindControl = {spellID = 605, talentID = 103862},
		Mindgames = {spellID = 375901, talentID = 103837},
		MovewithGrace = {spellID = 390620, talentID = 103852},
		PetrifyingScream = {spellID = 55676, talentID = 114588},
		Phantasm = {spellID = 108942, talentID = 103834},
		PowerInfusion = {spellID = 10060, talentID = 103844},
		PowerWordLife = {spellID = 373481, talentID = 103822},
		PrayerofMending = {spellID = 33076, talentID = 103870},
		ProtectiveLight = {spellID = 193063, talentID = 108863},
		PsychicVoice = {spellID = 196704, talentID = 103845},
		PurifyDisease = {spellID = 213634, talentID = 103854},
		Renew = {spellID = 139, talentID = 103869},
		Rhapsody = {spellID = 390622, talentID = 103850},
		Sanlayn = {spellID = 199855, talentID = 103840},
		SanguineTeachings = {spellID = 373218, talentID = 114735},
		ShackleUndead = {spellID = 9484, talentID = 103843},
		ShadowWordDeath = {spellID = 32379, talentID = 103864},
		Shadowfiend = {spellID = 34433, talentID = 103865},
		ShatteredPerceptions = {spellID = 391112, talentID = 103819},
		SheerTerror = {spellID = 390919, talentID = 103860},
		SpellWarding = {spellID = 390667, talentID = 103872},
		SurgeofLight = {spellID = 109186, talentID = 103823},
		ThroesofPain = {spellID = 377422, talentID = 103861},
		TitheEvasion = {spellID = 373223, talentID = 103838},
		TranslucentImage = {spellID = 373446, talentID = 103835},
		TwinsoftheSunPriestess = {spellID = 373466, talentID = 103832},
		TwistofFate = {spellID = 390972, talentID = 103833},
		UnwaveringWill = {spellID = 373456, talentID = 103847},
		VampiricEmbrace = {spellID = 15286, talentID = 103841},
		VoidShield = {spellID = 280749, talentID = 103842},
		VoidShift = {spellID = 108968, talentID = 103820},
		VoidTendrils = {spellID = 108920, talentID = 103859},
		WordsofthePious = {spellID = 377438, talentID = 103873},
		--Shadow
		AncientMadness = {spellID = 341240, talentID = 103798},
		AuspiciousSpirits = {spellID = 155271, talentID = 103811},
		DarkAscension = {spellID = 391109, talentID = 103680},
		DarkEvangelism = {spellID = 391095, talentID = 103802},
		Deathspeaker = {spellID = 392507, talentID = 103681},
		DevouringPlague = {spellID = 335467, talentID = 103808},
		Dispersion = {spellID = 47585, talentID = 103806},
		DistortedReality = {spellID = 409044, talentID = 115671},
		IdolofCThun = {spellID = 377349, talentID = 103782},
		IdolofNZoth = {spellID = 373280, talentID = 103781},
		IdolofYoggSaron = {spellID = 373273, talentID = 103817},
		IdolofYShaarj = {spellID = 373310, talentID = 103787},
		InescapableTorment = {spellID = 373427, talentID = 103783},
		InsidiousIre = {spellID = 373212, talentID = 103683},
		Intangibility = {spellID = 288733, talentID = 103801},
		LastWord = {spellID = 263716, talentID = 103794},
		MaddeningTouch = {spellID = 391228, talentID = 103784},
		Malediction = {spellID = 373221, talentID = 103797},
		Mastermind = {spellID = 391151, talentID = 103816},
		MentalDecay = {spellID = 375994, talentID = 103799},
		MentalFortitude = {spellID = 377065, talentID = 103800},
		Mindbender = {spellID = 200174, talentID = 103788},
		MindDevourer = {spellID = 373202, talentID = 103684},
		MindMelt = {spellID = 391090, talentID = 115449},
		MindSpike = {spellID = 73510, talentID = 103803},
		MindsEye = {spellID = 407470, talentID = 103786},
		Misery = {spellID = 238558, talentID = 115448},
		PhantasmalPathogen = {spellID = 407469, talentID = 103686},
		PsychicHorror = {spellID = 64044, talentID = 103793},
		PsychicLink = {spellID = 199484, talentID = 103814},
		ScreamsoftheVoid = {spellID = 375767, talentID = 103789},
		ShadowCrash = {spellID = 205385, talentID = 103813},
		ShadowyApparitions = {spellID = 341491, talentID = 103809},
		ShadowyInsight = {spellID = 375888, talentID = 103805},
		Silence = {spellID = 15487, talentID = 103792},
		SurgeofInsanity = {spellID = 391399, talentID = 103812},
			MindFlayInsanity = {spellID = 391403, talentID = 103812},
			MindSpikeInsanity = {spellID = 407466, talentID = 103812},
		ThoughtHarvester = {spellID = 406788, talentID = 103795},
		TormentedSpirits = {spellID = 391284, talentID = 103810},
		UnfurlingDarkness = {spellID = 341273, talentID = 103804},
		VoidEruption = {spellID = 228260, talentID = 103674},
			VoidBolt = {spellID = 205448, talentID = 103674},
		VoidTorrent = {spellID = 263165, talentID = 103796},
		Voidtouched = {spellID = 407430, talentID = 103785},
		WhisperingShadows = {spellID = 406777, talentID = 103682},
	}
	ids.Shad_PvPTalent = {
		VoidShield = 280749,
		DriventoMadness = 199259,
		MindTrauma = 199445,
		VoidShift = 108968,
		VoidOrigins = 228630,
		Psyfiend = 211522,
		GreaterFade = 213602,
		LastingPlague = 341167,
		Thoughtsteal = 316262,
	}
	ids.Shad_Form = {
		Shadowform = 232698,
		SurrendertoMadness = 193223,
	}
	ids.Shad_Buff = {
		DarkAscension = 391109,
		Deathspeaker = 392511,
		MindDevourer = 373204,
		MindFlayInsanity = 391401,
		MindSpikeInsanity = 407468,
		MindMelt = 391092,
		PowerInfusion = 10060,
		PowerWordFortitude = 21562,
		PowerWordShield = 17,
		UnfurlingDarkness = 341282,
		VampiricEmbrace = 15286,
		Voidform = 194249,
	}
	ids.Shad_Debuff = {
		DevouringPlague = 335467,
		ShadowWordPain = 589,
		VampiricTouch = 34914,
	}
	ids.Shad_PetAbility = {

	}
