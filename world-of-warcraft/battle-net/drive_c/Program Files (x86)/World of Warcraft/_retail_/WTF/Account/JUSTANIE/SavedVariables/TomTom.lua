
TomTomDB = {
	["profileKeys"] = {
		["Pangdai - Dalaran"] = "Default",
		["Morgntreeman - Dalaran"] = "Default",
		["Bretanomyces - Stormreaver"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["poi"] = {
				["enable"] = false,
			},
			["arrow"] = {
				["lock"] = true,
				["position"] = {
					"CENTER", -- [1]
					nil, -- [2]
					"CENTER", -- [3]
					4.999709129333496, -- [4]
					230.000244140625, -- [5]
				},
			},
			["block"] = {
				["position"] = {
					"BOTTOMRIGHT", -- [1]
					nil, -- [2]
					"BOTTOMRIGHT", -- [3]
					-6.999133110046387, -- [4]
					39.00038146972656, -- [5]
				},
			},
		},
	},
}
TomTomWaypoints = nil
TomTomWaypointsM = {
	["profileKeys"] = {
		["Pangdai - Dalaran"] = "Pangdai - Dalaran",
		["Morgntreeman - Dalaran"] = "Morgntreeman - Dalaran",
		["Bretanomyces - Stormreaver"] = "Bretanomyces - Stormreaver",
	},
	["profiles"] = {
		["Pangdai - Dalaran"] = {
		},
		["Morgntreeman - Dalaran"] = {
			[525] = {
				["525:160000000:532000000:Garn Nighthowl"] = {
					525, -- [1]
					0.16, -- [2]
					0.532, -- [3]
					["arrivaldistance"] = 15,
					["crazy"] = true,
					["persistent"] = true,
					["desc"] = "Garn Nighthowl",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Garn Nighthowl",
					["from"] = "Rarity",
					["callbacks"] = {
						["distance"] = {
						},
						["world"] = {
						},
						["minimap"] = {
						},
					},
					["minimap"] = true,
					["world"] = true,
				},
			},
		},
		["Bretanomyces - Stormreaver"] = {
			{
				["1:554000000:112000000:Ravika"] = {
					1, -- [1]
					0.554, -- [2]
					0.112, -- [3]
					["callbacks"] = {
						["distance"] = {
							[10] = nil --[[ skipped inline function ]],
							[15] = nil --[[ skipped inline function ]],
						},
						["world"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
						["minimap"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
					},
					["minimap"] = true,
					["arrivaldistance"] = 15,
					["crazy"] = true,
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["persistent"] = true,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Ravika",
					["from"] = "ATT",
					["minimap_displayID"] = 48768,
					["desc"] = "Ravika",
					["worldmap_displayID"] = 48768,
					["world"] = true,
				},
			}, -- [1]
			[388] = {
				["388:365000000:856000000:Zandalari Warbringer"] = {
					388, -- [1]
					0.365, -- [2]
					0.856, -- [3]
					["callbacks"] = {
						["distance"] = {
							[10] = nil --[[ skipped inline function ]],
							[15] = nil --[[ skipped inline function ]],
						},
						["world"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
						["minimap"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
					},
					["minimap"] = true,
					["arrivaldistance"] = 15,
					["crazy"] = true,
					["worldmap_displayID"] = 47681,
					["persistent"] = true,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Zandalari Warbringer",
					["from"] = "ATT",
					["minimap_displayID"] = 47681,
					["desc"] = "Zandalari Warbringer",
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["world"] = true,
				},
			},
			[87] = {
				["87:770000000:128000000:Rise of the Horde"] = {
					87, -- [1]
					0.77, -- [2]
					0.128, -- [3]
					["arrivaldistance"] = 15,
					["callbacks"] = {
						["distance"] = {
							[10] = nil --[[ skipped inline function ]],
							[15] = nil --[[ skipped inline function ]],
						},
						["world"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
						["minimap"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
					},
					["crazy"] = true,
					["persistent"] = true,
					["desc"] = "Rise of the Horde",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Rise of the Horde",
					["from"] = "ATT",
					["minimap"] = true,
					["worldmap_icon"] = "Interface/Icons/INV_Misc_Book_09",
					["minimap_icon"] = "Interface/Icons/INV_Misc_Book_09",
					["world"] = true,
				},
			},
			[418] = {
				["418:398000000:659000000:Zandalari Warbringer"] = {
					418, -- [1]
					0.398, -- [2]
					0.659, -- [3]
					["callbacks"] = {
						["distance"] = {
							[10] = nil --[[ skipped inline function ]],
							[15] = nil --[[ skipped inline function ]],
						},
						["world"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
						["minimap"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
					},
					["minimap"] = true,
					["arrivaldistance"] = 15,
					["crazy"] = true,
					["worldmap_displayID"] = 47681,
					["persistent"] = true,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Zandalari Warbringer",
					["from"] = "ATT",
					["minimap_displayID"] = 47681,
					["desc"] = "Zandalari Warbringer",
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["world"] = true,
				},
			},
			[379] = {
				["379:751000000:674000000:Zandalari Warbringer"] = {
					379, -- [1]
					0.751, -- [2]
					0.674, -- [3]
					["callbacks"] = {
						["distance"] = {
							[10] = nil --[[ skipped inline function ]],
							[15] = nil --[[ skipped inline function ]],
						},
						["world"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
						["minimap"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
					},
					["minimap"] = true,
					["arrivaldistance"] = 15,
					["crazy"] = true,
					["worldmap_displayID"] = 47681,
					["persistent"] = true,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Zandalari Warbringer",
					["from"] = "ATT",
					["minimap_displayID"] = 47681,
					["desc"] = "Zandalari Warbringer",
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["world"] = true,
				},
			},
			[422] = {
				["422:474000000:615000000:Zandalari Warbringer"] = {
					422, -- [1]
					0.474, -- [2]
					0.615, -- [3]
					["callbacks"] = {
						["distance"] = {
							[10] = nil --[[ skipped inline function ]],
							[15] = nil --[[ skipped inline function ]],
						},
						["world"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
						["minimap"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
					},
					["minimap"] = true,
					["arrivaldistance"] = 15,
					["crazy"] = true,
					["worldmap_displayID"] = 47681,
					["persistent"] = true,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Zandalari Warbringer",
					["from"] = "ATT",
					["minimap_displayID"] = 47681,
					["desc"] = "Zandalari Warbringer",
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["world"] = true,
				},
			},
		},
	},
}
