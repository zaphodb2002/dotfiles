
TomTomDB = {
	["profileKeys"] = {
		["Pangdai - Dalaran"] = "Default",
		["Deeohteez - Stormreaver"] = "Default",
		["Arila - Stormreaver"] = "Default",
		["Morgntreeman - Dalaran"] = "Default",
		["Deeohteez - Dalaran"] = "Default",
		["Attacknknees - Dalaran"] = "Default",
		["Bretanomyces - Stormreaver"] = "Default",
		["Ruderalis - Stormreaver"] = "Default",
		["Jenleeviyah - Dalaran"] = "Default",
		["Petitmort - Dalaran"] = "Default",
		["Dumpiss - Stormreaver"] = "Default",
		["Feloril - Stormreaver"] = "Default",
		["Jaalohwa - Stormreaver"] = "Default",
		["Pontiffikate - Dalaran"] = "Default",
		["Icanglidewee - Dalaran"] = "Default",
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
					0, -- [4]
					34.00057983398438, -- [5]
				},
			},
		},
	},
}
TomTomWaypoints = nil
TomTomWaypointsM = {
	["profileKeys"] = {
		["Pangdai - Dalaran"] = "Pangdai - Dalaran",
		["Deeohteez - Stormreaver"] = "Deeohteez - Stormreaver",
		["Arila - Stormreaver"] = "Arila - Stormreaver",
		["Morgntreeman - Dalaran"] = "Morgntreeman - Dalaran",
		["Deeohteez - Dalaran"] = "Deeohteez - Dalaran",
		["Attacknknees - Dalaran"] = "Attacknknees - Dalaran",
		["Bretanomyces - Stormreaver"] = "Bretanomyces - Stormreaver",
		["Ruderalis - Stormreaver"] = "Ruderalis - Stormreaver",
		["Jenleeviyah - Dalaran"] = "Jenleeviyah - Dalaran",
		["Petitmort - Dalaran"] = "Petitmort - Dalaran",
		["Dumpiss - Stormreaver"] = "Dumpiss - Stormreaver",
		["Feloril - Stormreaver"] = "Feloril - Stormreaver",
		["Jaalohwa - Stormreaver"] = "Jaalohwa - Stormreaver",
		["Pontiffikate - Dalaran"] = "Pontiffikate - Dalaran",
		["Icanglidewee - Dalaran"] = "Icanglidewee - Dalaran",
	},
	["profiles"] = {
		["Pangdai - Dalaran"] = {
		},
		["Deeohteez - Stormreaver"] = {
		},
		["Arila - Stormreaver"] = {
		},
		["Morgntreeman - Dalaran"] = {
			[2133] = {
				["2133:442533000:799174000:Go to Briggul"] = {
					2133, -- [1]
					0.442533, -- [2]
					0.799174, -- [3]
					["arrivaldistance"] = 15,
					["crazy"] = true,
					["persistent"] = true,
					["desc"] = "Go to Briggul",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Go to Briggul",
					["from"] = "?",
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
		["Deeohteez - Dalaran"] = {
		},
		["Attacknknees - Dalaran"] = {
		},
		["Bretanomyces - Stormreaver"] = {
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
					["desc"] = "Zandalari Warbringer",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Zandalari Warbringer",
					["minimap_displayID"] = 47681,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["from"] = "ATT",
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
					["minimap_icon"] = "Interface/Icons/INV_Misc_Book_09",
					["worldmap_icon"] = "Interface/Icons/INV_Misc_Book_09",
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
					["desc"] = "Zandalari Warbringer",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Zandalari Warbringer",
					["minimap_displayID"] = 47681,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["from"] = "ATT",
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
					["desc"] = "Zandalari Warbringer",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Zandalari Warbringer",
					["minimap_displayID"] = 47681,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["from"] = "ATT",
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
					["desc"] = "Zandalari Warbringer",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Zandalari Warbringer",
					["minimap_displayID"] = 47681,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["from"] = "ATT",
					["world"] = true,
				},
			},
		},
		["Ruderalis - Stormreaver"] = {
		},
		["Jenleeviyah - Dalaran"] = {
		},
		["Petitmort - Dalaran"] = {
		},
		["Dumpiss - Stormreaver"] = {
		},
		["Feloril - Stormreaver"] = {
		},
		["Jaalohwa - Stormreaver"] = {
		},
		["Pontiffikate - Dalaran"] = {
		},
		["Icanglidewee - Dalaran"] = {
		},
	},
}
