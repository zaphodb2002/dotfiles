
TomTomDB = {
	["profileKeys"] = {
		["Pangdai - Dalaran"] = "Default",
		["Deeohteez - Stormreaver"] = "Default",
		["Arila - Stormreaver"] = "Default",
		["Deeohteez - Dalaran"] = "Default",
		["Morgntreeman - Dalaran"] = "Default",
		["Jenleeviyah - Dalaran"] = "Default",
		["Bretanomyces - Stormreaver"] = "Default",
		["Ruderalis - Stormreaver"] = "Default",
		["Attacknknees - Dalaran"] = "Default",
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
		["Deeohteez - Dalaran"] = "Deeohteez - Dalaran",
		["Morgntreeman - Dalaran"] = "Morgntreeman - Dalaran",
		["Jenleeviyah - Dalaran"] = "Jenleeviyah - Dalaran",
		["Bretanomyces - Stormreaver"] = "Bretanomyces - Stormreaver",
		["Ruderalis - Stormreaver"] = "Ruderalis - Stormreaver",
		["Attacknknees - Dalaran"] = "Attacknknees - Dalaran",
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
		["Deeohteez - Dalaran"] = {
		},
		["Morgntreeman - Dalaran"] = {
			[2133] = {
				["2133:442533000:799174000:Go to Briggul"] = {
					2133, -- [1]
					0.442533, -- [2]
					0.799174, -- [3]
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
					["persistent"] = true,
					["minimap"] = true,
					["cleardistance"] = 10,
					["title"] = "Go to Briggul",
					["from"] = "?",
					["crazy"] = true,
					["world"] = true,
				},
			},
		},
		["Jenleeviyah - Dalaran"] = {
		},
		["Bretanomyces - Stormreaver"] = {
			{
				["1:554000000:112000000:Ravika"] = {
					1, -- [1]
					0.554, -- [2]
					0.112, -- [3]
					["crazy"] = true,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["arrivaldistance"] = 15,
					["callbacks"] = {
						["distance"] = {
						},
						["minimap"] = {
						},
						["world"] = {
						},
					},
					["worldmap_displayID"] = 48768,
					["persistent"] = true,
					["desc"] = "Ravika",
					["silent"] = true,
					["cleardistance"] = 10,
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["from"] = "ATT",
					["minimap_displayID"] = 48768,
					["title"] = "Ravika",
					["minimap"] = true,
					["world"] = true,
				},
			}, -- [1]
			[388] = {
				["388:365000000:856000000:Zandalari Warbringer"] = {
					388, -- [1]
					0.365, -- [2]
					0.856, -- [3]
					["crazy"] = true,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["arrivaldistance"] = 15,
					["callbacks"] = {
						["distance"] = {
						},
						["minimap"] = {
						},
						["world"] = {
						},
					},
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["persistent"] = true,
					["desc"] = "Zandalari Warbringer",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Zandalari Warbringer",
					["worldmap_displayID"] = 47681,
					["minimap_displayID"] = 47681,
					["from"] = "ATT",
					["minimap"] = true,
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
						},
						["minimap"] = {
						},
						["world"] = {
						},
					},
					["crazy"] = true,
					["persistent"] = true,
					["desc"] = "Rise of the Horde",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Rise of the Horde",
					["from"] = "ATT",
					["minimap_icon"] = "Interface/Icons/INV_Misc_Book_09",
					["worldmap_icon"] = "Interface/Icons/INV_Misc_Book_09",
					["minimap"] = true,
					["world"] = true,
				},
			},
			[418] = {
				["418:398000000:659000000:Zandalari Warbringer"] = {
					418, -- [1]
					0.398, -- [2]
					0.659, -- [3]
					["crazy"] = true,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["arrivaldistance"] = 15,
					["callbacks"] = {
						["distance"] = {
						},
						["minimap"] = {
						},
						["world"] = {
						},
					},
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["persistent"] = true,
					["desc"] = "Zandalari Warbringer",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Zandalari Warbringer",
					["worldmap_displayID"] = 47681,
					["minimap_displayID"] = 47681,
					["from"] = "ATT",
					["minimap"] = true,
					["world"] = true,
				},
			},
			[379] = {
				["379:751000000:674000000:Zandalari Warbringer"] = {
					379, -- [1]
					0.751, -- [2]
					0.674, -- [3]
					["crazy"] = true,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["arrivaldistance"] = 15,
					["callbacks"] = {
						["distance"] = {
						},
						["minimap"] = {
						},
						["world"] = {
						},
					},
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["persistent"] = true,
					["desc"] = "Zandalari Warbringer",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Zandalari Warbringer",
					["worldmap_displayID"] = 47681,
					["minimap_displayID"] = 47681,
					["from"] = "ATT",
					["minimap"] = true,
					["world"] = true,
				},
			},
			[422] = {
				["422:474000000:615000000:Zandalari Warbringer"] = {
					422, -- [1]
					0.474, -- [2]
					0.615, -- [3]
					["crazy"] = true,
					["worldmap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["arrivaldistance"] = 15,
					["callbacks"] = {
						["distance"] = {
						},
						["minimap"] = {
						},
						["world"] = {
						},
					},
					["minimap_icon"] = "Interface\\Addons\\AllTheThings\\assets\\Difficulty_Normal",
					["persistent"] = true,
					["desc"] = "Zandalari Warbringer",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Zandalari Warbringer",
					["worldmap_displayID"] = 47681,
					["minimap_displayID"] = 47681,
					["from"] = "ATT",
					["minimap"] = true,
					["world"] = true,
				},
			},
		},
		["Ruderalis - Stormreaver"] = {
		},
		["Attacknknees - Dalaran"] = {
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
