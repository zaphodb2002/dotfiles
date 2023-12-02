local ConRO_Druid, ids = ...;

--General
	ids.Racial = {
		Berserking = {spellID = 26297},
		Shadowmeld = {spellID = 58984},
	}
--Druid
	ids.Druid_Ability = {

	}
	ids.Druid_Passive = {

	}
	ids.Druid_Buff = {

	}
	ids.Druid_Debuff = {

	}

--Balance
	ids.Bal_Ability = {
	--Druid
		Barkskin = {spellID = 22812},
		BearForm = {spellID = 5487},
		CatForm = {spellID = 768},
		CharmWoodlandCreature = {spellID = 127757},
		Cyclone = {spellID = 33786, talentID = 103291},
		Dash = {spellID = 1850},
		Dreamwalk = {spellID = 193753},
		EntanglingRoots = {spellID = 339},
		FerociousBite = {spellID = 22568},
		Flap = {spellID = 164862},
		FrenziedRegeneration = {spellID = 22842, talentID = 103298},
		Growl = {spellID = 6795},
		HeartoftheWild = {spellID = 319454, talentID = 103309},
		Hibernate = {spellID = 2637, talentID = 103289},	
		IncapacitatingRoar = {spellID = 99, talentID = 103316},
		Innervate = {spellID = 29166, talentID = 103323},
		Ironfur = {spellID = 192081, talentID = 103305},	
		Maim = {spellID = 22570, talentID = 103299},	
		Mangle = {spellID = 33917},
		MarkoftheWild = {spellID = 1126},
		MassEntanglement = {spellID = 102359, talentID = 103322},
		MightyBash = {spellID = 5211, talentID = 103315},
		Moonfire = {spellID = 8921},
		MoonkinForm = {spellID = 24858, talentID = 103290},	
		MountForm = {spellID = 210053},
		NaturesVigil = {spellID = 124974, talentID = 103324},
		Prowl = {spellID = 5215},
		Rake = {spellID = 1822, talentID = 103277},
		Rebirth = {spellID = 20484},
		Regrowth = {spellID = 8936},
		Rejuvenation = {spellID = 774, talentID = 103295},
		Revive = {spellID = 20769},
		Rip = {spellID = 1079, talentID = 103300},
		RemoveCorruption = {spellID = 2782, talentID = 103283},
		Renewal = {spellID = 108238, talentID = 103310},
		Shred = {spellID = 5221},
		SkullBash = {spellID = 106839, talentID = 103302},	
		Soothe = {spellID = 2908, talentID = 103307},
		StampedingRoar = {spellID = 77764, talentID = 103312},
		Starfire = {spellID = 194153, talentID = 103279},
		Starsurge = {spellID = 78674, talentID = 103280},
		Sunfire = {spellID = 93402, talentID = 103286},
		Swiftmend = {spellID = 18562, talentID = 103294},
		Swipe = {spellID = 213764},
			SwipeBF = {spellID = 213771},
			SwipeCF = {spellID = 106785},
		Thrash = {spellID = 106832, talentID = 103301},
			ThrashBF = {spellID = 77758, talentID = 103301},
			ThrashCF = {spellID = 106830, talentID = 103301},
		TigerDash = {spellID = 252216, talentID = 103275},
		TravelForm = {spellID = 783},
		TreantForm = {spellID = 114282},
		Typhoon = {spellID = 132469, talentID = 103287},
		UrsolsVortex = {spellID = 102793, talentID = 103321},
		WildCharge = {spellID = 102401, talentID = 103276},
			WildChargeBF = {spellID = 16979, talentID = 103276},
			WildChargeCF = {spellID = 49376, talentID = 103276},	
			WildChargeMF = {spellID = 102417, talentID = 103276},
			WildChargeMKF = {spellID = 102383, talentID = 103276},
		WildGrowth = {spellID = 48438, talentID = 103320},
		Wrath = {spellID = 190984},
	--Balance	
		AstralCommunion = {spellID = 202359, talentID = 109871},
		CelestialAlignment = {spellID = 194223, talentID = 109849},
			CelestialAlignmentOS = {spellID = 383410, talentID = 109856},
		ConvoketheSpirits	= {spellID = 391528, talentID = 109838},
		ForceofNature = {spellID = 205636, talentID = 109844},
		FuryofElune	= {spellID = 202770, talentID = 109859},
		IncarnationChosenofElune = {spellID = 102560, talentID = 109839},
			IncarnationChosenofEluneOS = {spellID = 390414, talentID = 109856},
		NewMoon	= {spellID = 274281, talentID = 109860},
			HalfMoon = {spellID = 274282, talentID = 109860},
			FullMoon = {spellID = 274283, talentID = 109860},
		SolarBeam = {spellID = 78675, talentID = 109867},
		Starfall = {spellID = 191034, talentID = 109833},
		StellarFlare = {spellID = 202347, talentID = 109841},
		WildMushroom = {spellID = 88747, talentID = 109854},
		WarriorofElune	= {spellID = 202425, talentID = 109869},
	}
	ids.Bal_Passive = {
	--Druid
		AstralInfluence = {spellID = 197524, talentID = 103288},
		AquaticForm = {spellID = 276012},
		FelineSwiftness = {spellID = 131768, talentID = 103318},
		FlightForm = {spellID = 276029},
		Forestwalk = {spellID = 400129, talentID = 114300},
		ImprovedBarkskin = {spellID = 327993, talentID = 103297},
		ImprovedRejuvenation = {spellID = 231040, talentID = 103319},
		ImprovedStampedingRoar = {spellID = 288826, talentID = 103308},
		ImprovedSunfire = {spellID = 231050, talentID = 103285},
		ImprovedSwipe = {spellID = 400158, talentID = 103304},
		InncessantTempest = {spellID = 400140, talentID = 114298},
		GaleWinds = {spellID = 400142, talentID = 114299},
		KillerInstinct = {spellID = 108299, talentID = 103303},
		LycarasTeachings = {spellID = 378988, talentID = 103311},
		MattedFur = {spellID = 385786, talentID = 103314},
		NaturalRecovery = {spellID = 377796, talentID = 103284},
		NurturingInstinct = {spellID = 33873, talentID = 103292},
		PrimalFury = {spellID = 159286, talentID = 103317},
		ProtectorofthePack = {spellID = 378986, talentID = 103325},
		ThickHide = {spellID = 16931, talentID = 103306},
		TirelessPursuit = {spellID = 377801, talentID = 103274},
		UrsineVigor = {spellID = 377842, talentID = 103313},
		VerdantHeart = {spellID = 301768, talentID = 103296},
		WellHonedInstincts = {spellID = 377847, talentID = 103326},
	--Balance
		AetherialKindling = {spellID = 327541, talentID = 109843},
		AstralSmolder = {spellID = 394058, talentID = 109836},
		BalanceofAllThings = {spellID = 394048, talentID = 109848},
		CosmicRapidity = {spellID = 400059, talentID = 109863},
		DenizenoftheDream = {spellID = 394065, talentID = 109852},
		Eclipse = {spellID = 79577, talentID = 109858},
		ElunesGuidance = {spellID = 393991, talentID = 109864},
		FriendoftheFae = {spellID = 394081, talentID = 109870},
		FungalGrowth = {spellID = 392999, talentID = 109837},
		IncarnationChosenofElune = {spellID = 394013, talentID = 109839},
		LightoftheSun = {spellID = 202918, talentID = 109845},
		LunarShrapnel = {spellID = 393868, talentID = 109868},
		MasteryAstralInvocation = {spellID = 393014},
		NaturesBalance = {spellID = 202430, talentID = 109862},
		NaturesGrace = {spellID = 393958, talentID = 109857},
		OrbitBreaker = {spellID = 383197, talentID = 109831},
		OrbitalStrike = {spellID = 390378, talentID = 109856},
		PowerofGoldrinn = {spellID = 394046, talentID = 109840},
		PrimordialArcanicPulsar = {spellID = 393960, talentID = 109855},
		RadiantMoonlight = {spellID = 394121, talentID = 109847},
		RattletheStars = {spellID = 393954, talentID = 109872},
		ShootingStars = {spellID = 202342, talentID = 109861},
		Solstice = {spellID = 343647, talentID = 109835},
		SouloftheForest = {spellID = 114107, talentID = 109846},
		Starlord = {spellID = 202345, talentID = 109832},
		Starweaver = {spellID = 393940, talentID = 109873},
		StellarInnervation = {spellID = 394115, talentID = 109865},
		SunderedFirmament = {spellID = 394094, talentID = 109851},
		TwinMoons = {spellID = 279620, talentID = 109842},
		UmbralEmbrace = {spellID = 393760, talentID = 109850},
		UmbralIntensity = {spellID = 383195, talentID = 109853},
		WaningTwilight = {spellID = 393956, talentID = 109834},
	}
	ids.Bal_PvPTalent = {
		CelestialGuardian = 233754,
		CrescentBurn = 200567,
		MoonandStars = 233750,
		MoonkinAura = 209740,
		DyingStars = 232546,
		DeepRoots = 233755,
		FaerieSwarm = 209749,
		PricklingThorns = 200549,
		ProtectoroftheGrove = 209730,
		Thorns = 305497,
		HighWinds = 200931,
	}
	ids.Bal_Form = {
		BearForm = 5487,
		CatForm = 768,
		Prowl = 5215,
		MoonkinForm = 24858,
		WarriorofElune = 202425,
	}
	ids.Bal_Buff = {
		Ironfur = 192081,
		Regrowth = 8936,
		CelestialAlignment = 194223,
		DawningSun = 276154,
		IncarnationChosenofElune = 102560,
		OwlkinFrenzy = 157228,
		EclipseLunar = 48518,
		EclipseSolar = 48517,
		Starfall = 191034,
		Starlord = 279709,
		StellarDrift = 202461,
		UmbralEmbrace = 393763,
	}
	ids.Bal_Debuff = {
		Moonfire = 164812,
		Sunfire = 164815,
		StellarFlare = 202347,
	}
	ids.Bal_PetAbility = {

	}
		
--Feral
	ids.Feral_Ability = {
	--Druid
		Barkskin = {spellID = 22812},
		BearForm = {spellID = 5487},
		CatForm = {spellID = 768},
		CharmWoodlandCreature = {spellID = 127757},
		Cyclone = {spellID = 33786, talentID = 103291},
		Dash = {spellID = 1850},
		Dreamwalk = {spellID = 193753},
		EntanglingRoots = {spellID = 339},
		FerociousBite = {spellID = 22568},
		Flap = {spellID = 164862},
		FrenziedRegeneration = {spellID = 22842, talentID = 103298},
		Growl = {spellID = 6795},
		HeartoftheWild = {spellID = 319454, talentID = 103309},
		Hibernate = {spellID = 2637, talentID = 103289},	
		IncapacitatingRoar = {spellID = 99, talentID = 103316},
		Innervate = {spellID = 29166, talentID = 103323},
		Ironfur = {spellID = 192081, talentID = 103305},	
		Maim = {spellID = 22570, talentID = 103299},	
		Mangle = {spellID = 33917},
		MarkoftheWild = {spellID = 1126},
		MassEntanglement = {spellID = 102359, talentID = 103322},
		MightyBash = {spellID = 5211, talentID = 103315},
		Moonfire = {spellID = 8921},
			MoonfireCF = {spellID = 155625},
		MoonkinForm = {spellID = 24858, talentID = 103290},	
		MountForm = {spellID = 210053},
		NaturesVigil = {spellID = 124974, talentID = 103324},
		Prowl = {spellID = 5215},
		Rake = {spellID = 1822, talentID = 103277},
		Rebirth = {spellID = 20484},
		Regrowth = {spellID = 8936},
		Rejuvenation = {spellID = 774, talentID = 103295},
		Revive = {spellID = 20769},
		Rip = {spellID = 1079, talentID = 103300},
		RemoveCorruption = {spellID = 2782, talentID = 103283},
		Renewal = {spellID = 108238, talentID = 103310},
		Shred = {spellID = 5221},
		SkullBash = {spellID = 106839, talentID = 103302},
		Soothe = {spellID = 2908, talentID = 103307},
		StampedingRoar = {spellID = 77764, talentID = 103312},
		Starfire = {spellID = 194153, talentID = 103279},
		Starsurge = {spellID = 78674, talentID = 103280},
		Sunfire = {spellID = 93402, talentID = 103286},
		Swiftmend = {spellID = 18562, talentID = 103294},
		Swipe = {spellID = 213764, talentID = 103304},
			SwipeBF = {spellID = 213771, talentID = 103304},
			SwipeCF = {spellID = 106785, talentID = 103304},
		Thrash = {spellID = 106832, talentID = 103301},
			ThrashBF = {spellID = 77758, talentID = 103301},
			ThrashCF = {spellID = 106830, talentID = 103301},
		TigerDash = {spellID = 252216, talentID = 103275},
		TravelForm = {spellID = 783},
		TreantForm = {spellID = 114282},
		Typhoon = {spellID = 132469, talentID = 103287},
		UrsolsVortex = {spellID = 102793, talentID = 103321},
		WildCharge = {spellID = 102401, talentID = 103276},
			WildChargeBF = {spellID = 16979, talentID = 103276},
			WildChargeCF = {spellID = 49376, talentID = 103276},	
			WildChargeMF = {spellID = 102417, talentID = 103276},
			WildChargeMKF = {spellID = 102383, talentID = 103276},
		WildGrowth = {spellID = 48438, talentID = 103320},
		Wrath = {spellID = 190984},
	--Feral	
		AdaptiveSwarm = {spellID = 391888, talentID = 103175},
		Berserk = {spellID = 106951, talentID = 103162},
		BrutalSlash = {spellID = 202028, talentID = 103151},
		ConvoketheSpirits = {spellID = 391528, talentID = 103177},
		FeralFrenzy = {spellID = 274837, talentID = 103170},
		IncarnationAvatarofAshmane = {spellID = 102543, talentID = 103178},
		PrimalWrath = {spellID = 285381, talentID = 103184},
		SurvivalInstincts = {spellID = 61336, talentID = 103180},
		TigersFury = {spellID = 5217, talentID = 103188},
	}
	ids.Feral_Passive = {
	--Druid
		AstralInfluence = {spellID = 197524, talentID = 103288},
		AquaticForm = {spellID = 276012},
		FelineSwiftness = {spellID = 131768, talentID = 103318},
		FlightForm = {spellID = 276029},
		ImprovedBarkskin = {spellID = 327993, talentID = 103297},
		ImprovedRejuvenation = {spellID = 231040, talentID = 103319},
		ImprovedStampedingRoar = {spellID = 288826, talentID = 103308},
		ImprovedSunfire = {spellID = 231050, talentID = 103285},
		KillerInstinct = {spellID = 108299, talentID = 103303},
		LycarasTeachings = {spellID = 378988, talentID = 103311},
		MattedFur = {spellID = 385786, talentID = 103314},
		NaturalRecovery = {spellID = 377796, talentID = 103284},
		NurturingInstinct = {spellID = 33873, talentID = 103292},
		PrimalFury = {spellID = 159286, talentID = 103317},
		ProtectorofthePack = {spellID = 378986, talentID = 103325},
		ThickHide = {spellID = 16931, talentID = 103306},
		TirelessPursuit = {spellID = 377801, talentID = 103274},
		UrsineVigor = {spellID = 377842, talentID = 103313},
		VerdantHeart = {spellID = 301768, talentID = 103296},
		WellHonedInstincts = {spellID = 377847, talentID = 103326},
	--Feral	
		ApexPredatorsCraving = {spellID = 391881, talentID = 103152},
		AshmanesGuidance = {spellID = 391548, talentID = 103176},
		BerserkFrenzy = {spellID = 384668, talentID = 236149},
		BerserkHeartoftheLion = {spellID = 391174, talentID = 103166},
		Bloodtalons = {spellID = 319439, talentID = 103171},
		CarnivorousInstinct = {spellID = 390902, talentID = 103173},
		CatsCuriosity = {spellID = 386318, talentID = 103155},
		CircleofLifeandDeath = {spellID = 400320, talentID = 103156},
		DoubleClawedRake = {spellID = 391700, talentID = 103145},
		DreadfulBleeding = {spellID = 391045, talentID = 103181},
		FelineAdept = {spellID = 300349},
		FeralInstinct = {spellID = 16949},
		FranticMomentum = {spellID = 391875, talentID = 103179},
		InfectedWounds = {spellID = 48484, talentID = 103164},
		LionsStrength = {spellID = 391972, talentID = 103172},
		LunarInspiration = {spellID = 155580, talentID = 103146},
		MasteryRazorClaws = {spellID = 77493},
		MercilessClaws = {spellID = 231063, talentID = 103159},
		MomentofClarity = {spellID = 236068, talentID = 103161},
		OmenofClarity = {spellID = 16864, talentID = 103187},
		PouncingStrikes = {spellID = 390772, talentID = 103183},
		Predator = {spellID = 202021, talentID = 103186},
		PredatorySwiftness = {spellID = 16974, talentID = 103167},
		PrimalClaws = {spellID = 391037, talentID = 103144},
		ProtectiveGrowth = {spellID = 391947, talentID = 103158},
		RagingFury = {spellID = 391078, talentID = 103169},
		RampantFerocity = {spellID = 391709, talentID = 103160},
		RelentlessPredator = {spellID = 393771, talentID = 103147},
		RipandTear = {spellID = 391347, talentID = 103153},
		Sabertooth = {spellID = 202031, talentID = 103163},
		SouloftheForest = {spellID = 158476, talentID = 103157},
		SuddenAmbush = {spellID = 384667, talentID = 103165},
		TasteforBlood = {spellID = 384665, talentID = 103182},
		TearOpenWounds = {spellID = 391785, talentID = 103148},
		TigersTenacity = {spellID = 391872, talentID = 103168},
		TirelessEnergy = {spellID = 383352, talentID = 103185},
		UnbridledSwarm = {spellID = 391951, talentID = 103174},
		Veinripper = {spellID = 391978, talentID = 103154},
		WildSlashes = {spellID = 390864, talentID = 103150},
	}
	ids.Feral_PvPTalent = {
		Thorns = 236696,
		EarthenGrasp = 236023,
		FreedomoftheHerd = 213200,
		MalornesSwiftness = 236012,
		KingoftheJungle = 203052,
		EnragedMaim = 236026,
		FerociousWound = 236020,
		FreshWound = 203224,
		RipandTear = 203242,
		SavageMomentum = 205673,
		ProtectoroftheGrove = 209730,
	}
	ids.Feral_Form = {
		BearForm = 5487,
		CatForm = 768,
		Prowl = 5215,
	}
	ids.Feral_Buff = {
		ApexPredatorsCraving = 391882,
		Berserk = 106951,
		Ironfur = 192081,
		Regrowth = 8936,
		Bloodtalons = 145152,
		Clearcasting = 135700,
		IncarnationKingoftheJungle = 102543,
		TigersFury = 5217,
		PredatorySwiftness = 69369,
		SavageRoar = 52610,
		SuddenAmbush = 391974,
	}
	ids.Feral_Debuff = {
		Moonfire = 155625,
		Rake = 155722,
		RakeStun = 163505,
		Rip = 1079,
		ThrashCF = 106830,
		ThrashBF = 192090,
	}
	ids.Feral_PetAbility = {

	}

--Guardian
	ids.Guard_Ability = {
	--Druid
		Barkskin = {spellID = 22812},
		BearForm = {spellID = 5487},
		CatForm = {spellID = 768},
		CharmWoodlandCreature = {spellID = 127757},
		Cyclone = {spellID = 33786, talentID = 103291},
		Dash = {spellID = 1850},
		Dreamwalk = {spellID = 193753},
		EntanglingRoots = {spellID = 339},
		FerociousBite = {spellID = 22568},
		Flap = {spellID = 164862},
		FrenziedRegeneration = {spellID = 22842, talentID = 103298},
		Growl = {spellID = 6795},
		HeartoftheWild = {spellID = 319454, talentID = 103309},
		Hibernate = {spellID = 2637, talentID = 103289},	
		IncapacitatingRoar = {spellID = 99, talentID = 103316},
		Innervate = {spellID = 29166, talentID = 103323},
		Ironfur = {spellID = 192081, talentID = 103305},	
		Maim = {spellID = 22570, talentID = 103299},	
		Mangle = {spellID = 33917},
		MarkoftheWild = {spellID = 1126},
		MassEntanglement = {spellID = 102359, talentID = 103322},
		MightyBash = {spellID = 5211, talentID = 103315},
		Moonfire = {spellID = 8921},
		MoonkinForm = {spellID = 24858, talentID = 103290},	
		MountForm = {spellID = 210053},
		NaturesVigil = {spellID = 124974, talentID = 103324},
		Prowl = {spellID = 5215},
		Rake = {spellID = 1822, talentID = 103277},
		Rebirth = {spellID = 20484},
		Regrowth = {spellID = 8936},
		Rejuvenation = {spellID = 774, talentID = 103295},
		Revive = {spellID = 20769},
		Rip = {spellID = 1079, talentID = 103300},
		RemoveCorruption = {spellID = 2782, talentID = 103283},
		Renewal = {spellID = 108238, talentID = 103310},
		Shred = {spellID = 5221},
		SkullBash = {spellID = 106839, talentID = 103302},	
		Soothe = {spellID = 2908, talentID = 103307},
		StampedingRoar = {spellID = 77764, talentID = 103312},
		Starfire = {spellID = 194153, talentID = 103279},
		Starsurge = {spellID = 78674, talentID = 103280},
		Sunfire = {spellID = 93402, talentID = 103286},
		Swiftmend = {spellID = 18562, talentID = 103294},
		Swipe = {spellID = 213764, talentID = 103304},
			SwipeBF = {spellID = 213771, talentID = 103304},
			SwipeCF = {spellID = 106785, talentID = 103304},
		Thrash = {spellID = 106832, talentID = 103301},
			ThrashBF = {spellID = 77758, talentID = 103301},
			ThrashCF = {spellID = 106830, talentID = 103301},
		TigerDash = {spellID = 252216, talentID = 103275},
		TravelForm = {spellID = 783},
		TreantForm = {spellID = 114282},
		Typhoon = {spellID = 132469, talentID = 103287},
		UrsolsVortex = {spellID = 102793, talentID = 103321},
		WildCharge = {spellID = 102401, talentID = 103276},
			WildChargeBF = {spellID = 16979, talentID = 103276},
			WildChargeCF = {spellID = 49376, talentID = 103276},	
			WildChargeMF = {spellID = 102417, talentID = 103276},
			WildChargeMKF = {spellID = 102383, talentID = 103276},
		WildGrowth = {spellID = 48438, talentID = 103320},
		Wrath = {spellID = 190984},
	--Guardian	
		BerserkPersistence = {spellID = 50334, talentID = 103211},
		BerserkRavage = {spellID = 50334, talentID = 103216},
		BerserkUncheckedAggression = {spellID = 50334, talentID = 103224},
		BristlingFur = {spellID = 155835, talentID = 103230},
		ConvoketheSpirits = {spellID = 391528, talentID = 103200},
		IncarnationGuardianofUrsoc = {spellID = 102558, talentID = 103201},
		LunarBeam = {spellID = 204066, talentID = 114700},
		Maul = {spellID = 6807, talentID = 103191},
		Pulverize = {spellID = 80313, talentID = 103222},
		RageoftheSleeper = {spellID = 200851, talentID = 103207},
		Raze = {spellID = 400254, talentID = 114701},
		SurvivalInstincts = {spellID = 61336, talentID = 236169},
	}
	ids.Guard_Passive = {
	--Druid
		AstralInfluence = {spellID = 197524, talentID = 103288},
		AquaticForm = {spellID = 276012},
		FelineSwiftness = {spellID = 131768, talentID = 103318},
		FlightForm = {spellID = 276029},
		ImprovedBarkskin = {spellID = 327993, talentID = 103297},
		ImprovedRejuvenation = {spellID = 231040, talentID = 103319},
		ImprovedStampedingRoar = {spellID = 288826, talentID = 103308},
		ImprovedSunfire = {spellID = 231050, talentID = 103285},
		KillerInstinct = {spellID = 108299, talentID = 103303},
		LycarasTeachings = {spellID = 378988, talentID = 103311},
		MattedFur = {spellID = 385786, talentID = 103314},
		NaturalRecovery = {spellID = 377796, talentID = 103284},
		NurturingInstinct = {spellID = 33873, talentID = 103292},
		PrimalFury = {spellID = 159286, talentID = 103317},
		ProtectorofthePack = {spellID = 378986, talentID = 103325},
		ThickHide = {spellID = 16931, talentID = 103306},
		TirelessPursuit = {spellID = 377801, talentID = 103274},
		UrsineVigor = {spellID = 377842, talentID = 103313},
		VerdantHeart = {spellID = 301768, talentID = 103296},
		WellHonedInstincts = {spellID = 377847, talentID = 103326},
	--Guardian
		AftertheWildfire = {spellID = 371905, talentID = 103206},
		BloodFrenzy = {spellID = 203962, talentID = 103209},
		Brambles = {spellID = 203953, talentID = 103231},
		CircleofLifeandDeath = {spellID = 391969, talentID = 103202},
		DreamofCenarius = {spellID = 372119, talentID = 103218},
		Earthwarden = {spellID = 203974, talentID = 103225},
		ElunesFavored = {spellID = 370586, talentID = 103198},
		FlashingClaws = {spellID = 393427, talentID = 103226},
		FrontofthePack = {spellID = 377835, talentID = 103189},
		FuryofNature = {spellID = 370695, talentID = 103203},
		GalacticGuardian = {spellID = 203964, talentID = 103214},
		Gore = {spellID = 210706, talentID = 103190},
		GoryFur = {spellID = 200854, talentID = 103196},
		GuardianofElune = {spellID = 155578, talentID = 103205},
		ImprovedSurvivalInstincts = {spellID = 328767, talentID = 103192},
		InfectedWounds = {spellID = 345208, talentID = 103232},
		InnateResolve = {spellID = 377811, talentID = 103229},
		LayeredMane = {spellID = 384721, talentID = 103215},
		LightningReflexes = {spellID = 231065},
		Mangle = {spellID = 231064, talentID = 103195},
		MasteryNaturesGuardian = {spellID = 155783},
		ReinforcedFur = {spellID = 393618, talentID = 103204},
		Reinvigoration = {spellID = 372945, talentID = 103223},
		RendandTear = {spellID = 204053, talentID = 103221},
		ScintillatingMoonlight = {spellID = 238049, talentID = 103213},
		SouloftheForest = {spellID = 158477, talentID = 103208},
		SurvivaloftheFittest = {spellID = 203965, talentID = 103210},
		ToothandClaw = {spellID = 135288, talentID = 103197},
		TwinMoonfire = {spellID = 372567, talentID = 103212},
		UntamedSavagery = {spellID = 372943, talentID = 103220},
		UrsineAdept = {spellID = 300346, talentID = 103217},
		UrsocsEndurance = {spellID = 393611, talentID = 103194},
		UrsocsFury = {spellID = 377210, talentID = 103219},
		UrsocsGuidance = {spellID = 393414, talentID = 103199},
		ViciousCycle = {spellID = 371999, talentID = 103227},
		VulnerableFlesh = {spellID = 372618, talentID = 103228},
	}
	ids.Guard_PvPTalent = {
		MasterShapeshifter = 236144,
		Toughness = 201259,
		DenMother = 236180,
		DemoralizingRoar = 201664,
		ClanDefender = 213951,
		RagingFrenzy = 236153,
		SharpenedClaws = 202110,
		ChargingBash = 228431,
		EntanglingClaws = 202226,
		Overrun = 202246,
		ProtectorofthePack = 202043,
		AlphaChallenge = 207017,
		MalornesSwiftness = 236147,
		RoaringSpeed = 236148,
	}
	ids.Guard_Form = {
		BearForm = 5487,
		CatForm = 768,
		Prowl = 5215,	
	}
	ids.Guard_Buff = {
		Barkskin = 22812,
		Ironfur = 192081,
		Regrowth = 8936,
		IncarnationGuardianofUrsoc = 102558,
		Pulverize = 158792,
		GalacticGuardian = 213708,
		SurvivalInstincts = 61336,
	}
	ids.Guard_Debuff = {
		Thrash = 192090,
		Moonfire = 164812,
	}
	ids.Guard_PetAbility = {

	}

--Restoration
	ids.Resto_Ability = {
	--Druid
		Barkskin = {spellID = 22812},
		BearForm = {spellID = 5487},
		CatForm = {spellID = 768},
		CharmWoodlandCreature = {spellID = 127757},
		Cyclone = {spellID = 33786, talentID = 103291},
		Dash = {spellID = 1850},
		Dreamwalk = {spellID = 193753},
		EntanglingRoots = {spellID = 339},
		FerociousBite = {spellID = 22568},
		Flap = {spellID = 164862},
		FrenziedRegeneration = {spellID = 22842, talentID = 103298},
		Growl = {spellID = 6795},
		HeartoftheWild = {spellID = 319454, talentID = 103309},
		Hibernate = {spellID = 2637, talentID = 103289},	
		IncapacitatingRoar = {spellID = 99, talentID = 103316},
		Innervate = {spellID = 29166, talentID = 103323},
		Ironfur = {spellID = 192081, talentID = 103305},	
		Maim = {spellID = 22570, talentID = 103299},	
		Mangle = {spellID = 33917},
		MarkoftheWild = {spellID = 1126},
		MassEntanglement = {spellID = 102359, talentID = 103322},
		MightyBash = {spellID = 5211, talentID = 103315},
		Moonfire = {spellID = 8921},
		MoonkinForm = {spellID = 197625, talentID = 103290},
		MountForm = {spellID = 210053},
		NaturesVigil = {spellID = 124974, talentID = 103324},
		Prowl = {spellID = 5215},
		Rake = {spellID = 1822, talentID = 103277},
		Rebirth = {spellID = 20484},
		Regrowth = {spellID = 8936},
		Rejuvenation = {spellID = 774, talentID = 103295},
		Revive = {spellID = 20769},
		Rip = {spellID = 1079, talentID = 103300},
		Renewal = {spellID = 108238, talentID = 103310},
		Shred = {spellID = 5221},
		SkullBash = {spellID = 106839, talentID = 103302},	
		Soothe = {spellID = 2908, talentID = 103307},
		StampedingRoar = {spellID = 77764, talentID = 103312},
		Starfire = {spellID = 194153, talentID = 103279},
		Starsurge = {spellID = 78674, talentID = 103280},
		Sunfire = {spellID = 93402, talentID = 103286},
		Swiftmend = {spellID = 18562, talentID = 103294},
		Swipe = {spellID = 213764, talentID = 103304},
			SwipeBF = {spellID = 213771, talentID = 103304},
			SwipeCF = {spellID = 106785, talentID = 103304},
		Thrash = {spellID = 106832, talentID = 103301},
			ThrashBF = {spellID = 77758, talentID = 103301},
			ThrashCF = {spellID = 106830, talentID = 103301},
		TigerDash = {spellID = 252216, talentID = 103275},
		TravelForm = {spellID = 783},
		TreantForm = {spellID = 114282},
		Typhoon = {spellID = 132469, talentID = 103287},
		UrsolsVortex = {spellID = 102793, talentID = 103321},
		WildCharge = {spellID = 102401, talentID = 103276},
			WildChargeBF = {spellID = 16979, talentID = 103276},
			WildChargeCF = {spellID = 49376, talentID = 103276},	
			WildChargeMF = {spellID = 102417, talentID = 103276},
			WildChargeMKF = {spellID = 102383, talentID = 103276},
		WildGrowth = {spellID = 48438, talentID = 103320},
		Wrath = {spellID = 190984},
	--Restoration	
		AdaptiveSwarm = {spellID = 391888, talentID = 103123},
		CenarionWard = {spellID = 102351, talentID = 103104},
		ConvoketheSpirits = {spellID = 391528, talentID = 103119},
		Effloresence = {spellID = 145205, talentID = 103111},
		Flourish = {spellID = 197721, talentID = 103136},
		IncarnationTreeofLife = {spellID = 33891, talentID = 103120},
		Invigorate = {spellID = 392160, talentID = 103133},
		Ironbark = {spellID = 102342, talentID = 103141},
		Lifebloom = {spellID = 33763, talentID = 103100},
		NaturesCure = {spellID = 88423},
		NaturesSwiftness = {spellID = 132158, talentID = 103101},
		Nourish = {spellID = 50464, talentID = 103094},
		OverGrowth = {spellID = 203651, talentID = 103115},
		Revitalize = {spellID = 212040},
		Tranquility = {spellID = 740, talentID = 103108},
	}
	ids.Resto_Passive = {
	--Druid
		AstralInfluence = {spellID = 197524, talentID = 103288},
		AquaticForm = {spellID = 276012},
		FelineSwiftness = {spellID = 131768, talentID = 103318},
		FlightForm = {spellID = 276029},
		ImprovedBarkskin = {spellID = 327993, talentID = 103297},
		ImprovedNaturesCure = {spellID = 392378, talentID = 103281},
		ImprovedRejuvenation = {spellID = 231040, talentID = 103319},
		ImprovedStampedingRoar = {spellID = 288826, talentID = 103308},
		ImprovedSunfire = {spellID = 231050, talentID = 103285},
		KillerInstinct = {spellID = 108299, talentID = 103303},
		LycarasTeachings = {spellID = 378988, talentID = 103311},
		MattedFur = {spellID = 385786, talentID = 103314},
		NaturalRecovery = {spellID = 377796, talentID = 103284},
		NurturingInstinct = {spellID = 33873, talentID = 103292},
		PrimalFury = {spellID = 159286, talentID = 103317},
		ProtectorofthePack = {spellID = 378986, talentID = 103325},
		ThickHide = {spellID = 16931, talentID = 103306},
		TirelessPursuit = {spellID = 377801, talentID = 103274},
		UrsineVigor = {spellID = 377842, talentID = 103313},
		VerdantHeart = {spellID = 301768, talentID = 103296},
		WellHonedInstincts = {spellID = 377847, talentID = 103326},
	--Restoration	
		Abundance = {spellID = 207383, talentID = 103105},
		BuddingLeaves = {spellID = 392167, talentID = 103128},
		CenariusGuidance = {spellID = 393371, talentID = 103118},
		CircleofLifeandDeath = {spellID = 391969, talentID = 103130},
		Cultivation = {spellID = 200390, talentID = 103110},
		Dreamstate = {spellID = 392162, talentID = 103106},
		EmbraceoftheDream = {spellID = 392124, talentID = 108131},
		FlashofClarity = {spellID = 392220, talentID = 103142},
		Germination = {spellID = 155675, talentID = 103127},
		GroveTending = {spellID = 383192, talentID = 103098},
		HarmoniousBlooming = {spellID = 392256, talentID = 103121},
		ImprovedIronbark = {spellID = 382552, talentID = 103139},
		ImprovedRegrowth = {spellID = 231032, talentID = 103109},
		ImprovedWildGrowth = {spellID = 328025, talentID = 103096},
		InnerPeace = {spellID = 197073, talentID = 103107},
		LuxuriantSoil = {spellID = 392315, talentID = 103124},
		MasteryHarmony = {spellID = 77495},
		NaturalWisdom = {spellID = 326228, talentID = 103135},
		NaturesSplendor = {spellID = 392288, talentID = 103103},
		NurturingDormancy = {spellID = 392099, talentID = 103132},
		OmenofClarity = {spellID = 113043, talentID = 103143},
		PassingSeasons = {spellID = 382550, talentID = 103102},
		Photosynthesis = {spellID = 274902, talentID = 103129},
		PoweroftheArchdruid = {spellID = 392302, talentID = 103134},
		RampantGrowth = {spellID = 278515, talentID = 103112},
		Reforestation = {spellID = 392356, talentID = 103125},
		RegenerativeHeartwood = {spellID = 392116, talentID = 103131},
		Regenesis = {spellID = 383191, talentID = 103117},
		SouloftheForest = {spellID = 158478, talentID = 103113},
		SpringBlossoms = {spellID = 207385, talentID = 103116},
		Stonebark = {spellID = 197061, talentID = 103140},
		UnbridledSwarm = {spellID = 391951, talentID = 103122},
		Undergrowth = {spellID = 392301, talentID = 103095},
		UnstoppableGrowth = {spellID = 382559, talentID = 103138},
		Verdancy = {spellID = 392325, talentID = 103114},
		VerdantInfusion = {spellID = 392410, talentID = 103137},
		WakingDream = {spellID = 382221, talentID = 103097},
		YserasGift = {spellID = 145108, talentID = 103099},
	}
	ids.Resto_PvPTalent = {

	}
	ids.Resto_Form = {
		BearForm = 5487,
		CatForm = 768,
		MoonkinForm = 197625,
		Prowl = 5215,
	}
	ids.Resto_Buff = {
		EclipseLunar = 48518,
		EclipseSolar = 48517,
		Ironfur = 192081,
		Regrowth = 8936,
		Lifebloom =	33763,
	}
	ids.Resto_Debuff = {
		Moonfire = 164812,
		Sunfire = 164815,
	}
	ids.Resto_PetAbility = {

	}
