
ZPerlConfig = nil
ZPerlConfig_Global = nil
ZPerlConfigNew = {
	["ConfigVersion"] = "7.1.6",
	["global"] = {
		["highlight"] = {
			["enable"] = 1,
			["AGGRO"] = 1,
			["HOT"] = 1,
			["SHIELD"] = 1,
		},
		["highlightSelection"] = 1,
		["optionsColour"] = {
			["r"] = 0.7,
			["g"] = 0.2,
			["b"] = 0.2,
		},
		["rangeFinder"] = {
			["StatsFrame"] = {
				["item2"] = "",
				["spell"] = "Rejuvenation",
				["item"] = "",
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
			},
			["enabled"] = true,
			["Main"] = {
				["enabled"] = true,
				["spell"] = "Rejuvenation",
				["item"] = "",
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
				["item2"] = "",
			},
			["NameFrame"] = {
				["item2"] = "",
				["spell"] = "Rejuvenation",
				["item"] = "",
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
			},
		},
		["showAFK"] = 1,
		["combatFlash"] = 1,
		["buffHelper"] = {
			["enable"] = 1,
			["sort"] = "group",
			["visible"] = 1,
		},
		["raidpet"] = {
			["enable"] = 1,
		},
		["target"] = {
			["comboindicator"] = {
				["enable"] = 1,
			},
			["debuffs"] = {
				["size"] = 29,
				["curable"] = 0,
				["big"] = 1,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["scale"] = 0.8,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["absorbs"] = 1,
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["hotPrediction"] = 1,
			["threatMode"] = "portraitFrame",
			["elite"] = 1,
			["healprediction"] = 1,
			["values"] = 1,
			["buffs"] = {
				["castable"] = 0,
				["size"] = 22,
				["wrap"] = 1,
				["rows"] = 3,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["raid"] = {
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 20,
			},
			["enable"] = 1,
			["class"] = {
				{
					["enable"] = 1,
					["name"] = "WARRIOR",
				}, -- [1]
				{
					["enable"] = 1,
					["name"] = "ROGUE",
				}, -- [2]
				{
					["enable"] = 1,
					["name"] = "HUNTER",
				}, -- [3]
				{
					["enable"] = 1,
					["name"] = "MAGE",
				}, -- [4]
				{
					["enable"] = 1,
					["name"] = "WARLOCK",
				}, -- [5]
				{
					["enable"] = 1,
					["name"] = "PRIEST",
				}, -- [6]
				{
					["enable"] = 1,
					["name"] = "DRUID",
				}, -- [7]
				{
					["enable"] = 1,
					["name"] = "SHAMAN",
				}, -- [8]
				{
					["enable"] = 1,
					["name"] = "PALADIN",
				}, -- [9]
				{
					["enable"] = 1,
					["name"] = "DEATHKNIGHT",
				}, -- [10]
				{
					["enable"] = 1,
					["name"] = "MONK",
				}, -- [11]
				{
					["enable"] = 1,
					["name"] = "DEMONHUNTER",
				}, -- [12]
				{
					["enable"] = 1,
					["name"] = "EVOKER",
				}, -- [13]
			},
			["healprediction"] = 1,
			["precisionPercent"] = 1,
			["anchor"] = "TOP",
			["size"] = {
				["width"] = 0,
			},
			["sortByRole"] = 1,
			["percent"] = 1,
			["group"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["gap"] = 0,
			["manaPercent"] = 1,
			["hotPrediction"] = 1,
			["titles"] = 1,
			["mana"] = 1,
			["absorbs"] = 1,
			["scale"] = 0.8,
			["spacing"] = 0,
			["buffs"] = {
				["castable"] = 0,
				["inside"] = 1,
				["right"] = 1,
				["size"] = 20,
				["maxrows"] = 2,
			},
			["precisionManaPercent"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
		},
		["targettargettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["scale"] = 0.7,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["absorbs"] = 1,
			["hotPrediction"] = 1,
			["buffs"] = {
				["size"] = 22,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["colour"] = {
			["classic"] = 1,
			["guildList"] = 1,
			["border"] = {
				["a"] = 0,
				["r"] = 0.501960813999176,
				["g"] = 0.501960813999176,
				["b"] = 0.501960813999176,
			},
			["class"] = 1,
			["reaction"] = {
				["tapped"] = {
					["r"] = 0.5,
					["g"] = 0.5,
					["b"] = 0.5,
				},
				["enemy"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["neutral"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["unfriendly"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["friend"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["none"] = {
					["r"] = 0.5,
					["g"] = 0.5,
					["b"] = 1,
				},
			},
			["classbarBright"] = 1,
			["frame"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["gradient"] = {
				["enable"] = 1,
				["s"] = {
					["a"] = 1,
					["r"] = 0.25,
					["g"] = 0.25,
					["b"] = 0.25,
				},
				["e"] = {
					["a"] = 0,
					["r"] = 0.1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
			},
			["classbar"] = 1,
			["bar"] = {
				["rage"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["absorb"] = {
					["a"] = 0.7,
					["r"] = 0.14,
					["g"] = 0.33,
					["b"] = 0.7,
				},
				["hot"] = {
					["a"] = 0.7,
					["r"] = 1,
					["g"] = 0.72,
					["b"] = 0.1,
				},
				["fury"] = {
					["r"] = 0.788,
					["g"] = 0.259,
					["b"] = 0.992,
				},
				["mana"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 1,
				},
				["healthEmpty"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["energy"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["healprediction"] = {
					["a"] = 1,
					["r"] = 0,
					["g"] = 1,
					["b"] = 1,
				},
				["healthFull"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["runic_power"] = {
					["r"] = 0,
					["g"] = 0.82,
					["b"] = 1,
				},
				["focus"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0.25,
				},
				["insanity"] = {
					["r"] = 0.4,
					["g"] = 0,
					["b"] = 0.8,
				},
				["lunar"] = {
					["r"] = 0.3,
					["g"] = 0.52,
					["b"] = 0.9,
				},
				["maelstrom"] = {
					["r"] = 0,
					["g"] = 0.5,
					["b"] = 1,
				},
				["pain"] = {
					["r"] = 1,
					["g"] = 0.611,
					["b"] = 0,
				},
			},
		},
		["minimap"] = {
			["enable"] = 1,
			["radius"] = 101,
			["pos"] = 186,
		},
		["xperlOldroleicons"] = 1,
		["focus"] = {
			["comboindicator"] = {
				["enable"] = 1,
			},
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 29,
				["curable"] = 0,
				["big"] = 1,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["scale"] = 0.78,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["absorbs"] = 1,
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["hotPrediction"] = 1,
			["threatMode"] = "portraitFrame",
			["elite"] = 1,
			["healprediction"] = 1,
			["values"] = 1,
			["buffs"] = {
				["size"] = 22,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 3,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["party"] = {
			["debuffs"] = {
				["halfSize"] = 1,
				["below"] = 1,
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 32,
			},
			["portrait"] = 1,
			["enable"] = 1,
			["castBar"] = {
				["enable"] = 1,
				["castTime"] = 1,
			},
			["spacing"] = 23,
			["anchor"] = "TOP",
			["level"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["size"] = {
				["width"] = 0,
			},
			["scale"] = 0.8,
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["healprediction"] = 1,
			["absorbs"] = 1,
			["values"] = 1,
			["target"] = {
				["enable"] = 1,
				["large"] = 1,
				["size"] = 120,
			},
			["hotPrediction"] = 1,
			["threatMode"] = "portraitFrame",
			["name"] = 1,
			["hitIndicator"] = 1,
			["inRaid"] = 1,
			["buffs"] = {
				["size"] = 22,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 2,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["targettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["hotPrediction"] = 1,
			["absorbs"] = 1,
			["buffs"] = {
				["size"] = 22,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["focustarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["hotPrediction"] = 1,
			["absorbs"] = 1,
			["buffs"] = {
				["size"] = 22,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["pettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["hotPrediction"] = 1,
			["absorbs"] = 1,
			["buffs"] = {
				["size"] = 22,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["partypet"] = {
			["enable"] = 1,
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 12,
			},
			["name"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["mana"] = 1,
			["buffs"] = {
				["enable"] = 1,
				["castable"] = 0,
				["size"] = 12,
				["maxrows"] = 2,
			},
			["size"] = {
				["width"] = 0,
			},
		},
		["transparency"] = {
			["frame"] = 1,
			["text"] = 1,
		},
		["player"] = {
			["partyNumber"] = 1,
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 25,
			},
			["portrait"] = 1,
			["scale"] = 0.9,
			["castBar"] = {
				["enable"] = 1,
			},
			["fullScreen"] = {
				["enable"] = 1,
				["highHP"] = 40,
				["lowHP"] = 30,
			},
			["hitIndicator"] = 1,
			["dockRunes"] = 1,
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["lockRunes"] = 1,
			["totems"] = {
				["enable"] = true,
				["offsetY"] = 0,
				["offsetX"] = 0,
			},
			["healprediction"] = 1,
			["showRunes"] = 1,
			["hotPrediction"] = 1,
			["threatMode"] = "portraitFrame",
			["healerMode"] = {
				["type"] = 1,
			},
			["values"] = 1,
			["absorbs"] = 1,
			["buffs"] = {
				["enable"] = 1,
				["wrap"] = 1,
				["flash"] = 1,
				["count"] = 40,
				["size"] = 25,
				["rows"] = 2,
				["hideBlizzard"] = 1,
				["cooldown"] = 1,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["highlightDebuffs"] = {
			["enable"] = 1,
			["frame"] = 1,
			["border"] = 1,
			["class"] = 1,
		},
		["tooltip"] = {
			["enable"] = 1,
			["enableBuffs"] = 1,
			["modifier"] = "all",
		},
		["pet"] = {
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 18,
			},
			["portrait"] = 1,
			["scale"] = 0.7,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["happiness"] = {
				["enable"] = 1,
				["flashWhenSad"] = 1,
				["onlyWhenSad"] = 1,
			},
			["hotPrediction"] = 1,
			["threatMode"] = "portraitFrame",
			["name"] = 1,
			["healprediction"] = 1,
			["absorbs"] = 1,
			["buffs"] = {
				["size"] = 18,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["maxrows"] = 2,
			},
			["values"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
		},
		["buffs"] = {
			["countdown"] = 1,
			["blizzard"] = 1,
			["cooldown"] = 1,
			["countdownStart"] = 20,
		},
		["maximumScale"] = 1.5,
		["bar"] = {
			["texture"] = {
				"BantoBar", -- [1]
				"Interface\\AddOns\\Details\\images\\BantoBar", -- [2]
			},
			["background"] = 1,
			["fadeTime"] = 0.5,
			["fat"] = 1,
		},
	},
	["savedPositions"] = {
		["Stormreaver"] = {
			["Bretanomyces"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 395,
					["height"] = 250.0000152587891,
					["left"] = 785.0001220703125,
					["width"] = 349.9999694824219,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 602,
					["height"] = 124.0000076293945,
					["left"] = 795,
					["width"] = 330.0000305175781,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 580,
					["height"] = 80,
					["left"] = 860.0001220703125,
					["width"] = 199.9999084472656,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 580,
					["height"] = 80,
					["left"] = 856.9999389648438,
					["width"] = 206.0001068115234,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 425.6000063419342,
					["width"] = false,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 614.9999389648438,
					["height"] = 150,
					["left"] = 890.0000610351562,
					["width"] = 140,
				},
				["XPerl_Focus"] = {
					["top"] = 924.0001345649071,
					["height"] = false,
					["left"] = 211.3799922466278,
					["width"] = false,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 1071.599920715606,
					["height"] = false,
					["left"] = 413.0000356912606,
					["width"] = false,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 923.9999842643738,
					["height"] = false,
					["left"] = 405.9799979690142,
					["width"] = false,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 182.4000027179718,
					["width"] = false,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 0,
					["width"] = false,
				},
				["XPerl_Player"] = {
					["top"] = 1069.199971675873,
					["height"] = false,
					["left"] = 20.69999945163727,
					["width"] = false,
				},
				["XPerl_PetTarget"] = {
					["top"] = 1020.499921585833,
					["height"] = false,
					["left"] = 164.4999865174295,
					["width"] = false,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 486.4000560760505,
					["width"] = false,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 243.2000280380253,
					["width"] = false,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 1017.699921633517,
					["height"] = false,
					["left"] = 72.09999877214432,
					["width"] = false,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 364.8000054359436,
					["width"] = false,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 304.000004529953,
					["width"] = false,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 660,
					["height"] = 240.0000152587891,
					["left"] = 709.9998779296875,
					["width"] = 500.0000610351563,
				},
				["XPerl_Raid_Title13"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 668.8000099658966,
					["width"] = false,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 960.0000143051147,
					["height"] = false,
					["left"] = 0,
					["width"] = false,
				},
				["XPerl_Raid_Title12"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 668.8000099658966,
					["width"] = false,
				},
				["XPerl_Raid_Title11"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 608.000009059906,
					["width"] = false,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 547.2000569820411,
					["width"] = false,
				},
				["XPerl_Target"] = {
					["top"] = 1070.400015950203,
					["height"] = false,
					["left"] = 216.8000032305718,
					["width"] = false,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 60.80000700950632,
					["width"] = false,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 708.0000105500221,
					["height"] = false,
					["left"] = 121.6000140190126,
					["width"] = false,
				},
			},
		},
		["Dalaran"] = {
			["Morgntreeman"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 395,
					["height"] = 250.0000152587891,
					["left"] = 785.0001220703125,
					["width"] = 349.9999694824219,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 602,
					["height"] = 124.0000076293945,
					["left"] = 795,
					["width"] = 330.0000305175781,
				},
				["XPerl_Focus"] = {
					["top"] = 919.9999160528168,
					["height"] = false,
					["left"] = 216.8000032305718,
					["width"] = false,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 580,
					["height"] = 80,
					["left"] = 860.0001220703125,
					["width"] = 199.9999084472656,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 580,
					["height"] = 80,
					["left"] = 856.9999389648438,
					["width"] = 206.0001068115234,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 1244.000702130805,
					["width"] = false,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 614.9999389648438,
					["height"] = 150,
					["left"] = 890.0000610351562,
					["width"] = 140,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 860.0004034400044,
					["width"] = false,
				},
				["XPerl_Player"] = {
					["top"] = 381.1999502287981,
					["height"] = false,
					["left"] = 702.699755554735,
					["width"] = false,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 919.9998500551519,
					["height"] = false,
					["left"] = 410.4875296305327,
					["width"] = false,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 988.0004053473531,
					["width"] = false,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 796.0003536582044,
					["width"] = false,
				},
				["XPerl_OptionsAnchor"] = {
					["top"] = 823.000732421875,
					["height"] = 540.0001220703125,
					["left"] = 1101.00048828125,
					["width"] = 740.0001220703125,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 1372.000606381902,
					["width"] = false,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 1308.000605428228,
					["width"] = false,
				},
				["XPerl_PetTarget"] = {
					["top"] = 1017.699921633517,
					["height"] = false,
					["left"] = 167.2875215651729,
					["width"] = false,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 1017.699921633517,
					["height"] = false,
					["left"] = 72.09999877214432,
					["width"] = false,
				},
				["XPerl_Raid_Title11"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 1436.000412023073,
					["width"] = false,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 1116.000602567205,
					["width"] = false,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 660,
					["height"] = 240.0000152587891,
					["left"] = 709.9998779296875,
					["width"] = 500.0000610351563,
				},
				["XPerl_Raid_Title12"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 1500.000412976748,
					["width"] = false,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 674.0003518402627,
					["height"] = false,
					["left"] = 174.0005519092165,
					["width"] = false,
				},
				["XPerl_Raid_Title13"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 1564.000316274171,
					["width"] = false,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 1180.000505864628,
					["width"] = false,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 1052.00060161353,
					["width"] = false,
				},
				["XPerl_Target"] = {
					["top"] = 383.2000545382507,
					["height"] = false,
					["left"] = 1032.787124764727,
					["width"] = false,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 317.2004401547492,
					["height"] = false,
					["left"] = 1172.475028860994,
					["width"] = false,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 1078.000406688458,
					["height"] = false,
					["left"] = 924.0004043936788,
					["width"] = false,
				},
			},
		},
	},
}
ZPerlConfigSavePerCharacter = nil
ZPerlImportDone = nil
