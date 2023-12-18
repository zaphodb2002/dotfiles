
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Morgntreeman - Dalaran"] = "Default",
		["Hyaae - Dalaran"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["runOnce"] = {
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["forceReloadClassDefaultOptions_20220306_70"] = true,
				["forceReloadClassDefaultOptions_20220306_105"] = true,
				["forceReloadClassDefaultOptions_20220306_66"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
				["forceReloadClassDefaultOptions_20220306_65"] = true,
				["forceReloadClassDefaultOptions_20220306_103"] = true,
				["forceReloadClassDefaultOptions_20220306_104"] = true,
				["forceSpellFlashBrightness_20221030"] = true,
				["forceReloadClassDefaultOptions_20220306_102"] = true,
			},
			["displays"] = {
				["Interrupts"] = {
					["rel"] = "CENTER",
					["x"] = -55.00000381469727,
				},
				["Cooldowns"] = {
					["rel"] = "CENTER",
					["y"] = -280.0000305175781,
				},
				["Primary"] = {
					["rel"] = "CENTER",
					["captions"] = {
						["enabled"] = true,
						["queued"] = true,
					},
					["y"] = -21,
					["x"] = 200,
					["indicators"] = {
						["enabled"] = false,
					},
					["visibility"] = {
						["pve"] = {
							["combat"] = 0.81,
							["target"] = 0.5,
							["always"] = 0,
							["hideMounted"] = true,
						},
						["advanced"] = true,
					},
				},
				["AOE"] = {
					["rel"] = "CENTER",
					["captions"] = {
						["enabled"] = true,
						["queued"] = true,
					},
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -110.0000076293945,
				},
			},
			["packs"] = {
				["Holy Paladin"] = {
					["builtIn"] = true,
					["date"] = 20231117,
					["spec"] = 65,
					["desc"] = "2023-03-22:  Updated for 10.0.7 (Seraphim removed, Avenging Wrath and Avenging Crusader split).",
					["lists"] = {
						["spenders"] = {
							{
								["enabled"] = true,
								["criteria"] = "! talent.awakening.enabled || active_enemies > 1",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.awakening.enabled & group",
								["action"] = "light_of_dawn",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.awakening.enabled",
								["action"] = "word_of_glory",
							}, -- [3]
						},
						["default"] = {
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "avenging_crusader",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "blessing_of_summer",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "blessing_of_autumn",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "blessing_of_winter",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "blessing_of_spring",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.avenging_crusader.enabled || cooldown.avenging_crusader.remains > gcd.max || holy_power.deficit = 0",
								["list_name"] = "spenders",
							}, -- [9]
							{
								["action"] = "divine_toll",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "lights_hammer",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "holy_prism",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up & action.crusader_strike.in_range",
								["action"] = "consecration",
							}, -- [13]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "judgment",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "holy_shock",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.holy_shock.remains > gcd.max",
								["action"] = "crusader_strike",
							}, -- [17]
						},
					},
					["version"] = 20231117,
					["warnings"] = "The import for 'spenders' required some automated changes.\nLine 1: Converted 'talent.awakening' to 'talent.awakening.enabled' (1x).\nLine 2: Converted 'talent.awakening' to 'talent.awakening.enabled' (1x).\nLine 3: Converted 'talent.awakening' to 'talent.awakening.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 9: Converted 'talent.avenging_crusader' to 'talent.avenging_crusader.enabled' (1x).\n\nImported 3 action lists.\n",
					["profile"] = "actions+=/rebuke\nactions+=/avenging_wrath\nactions+=/avenging_crusader\nactions+=/blessing_of_summer\nactions+=/blessing_of_autumn\nactions+=/blessing_of_winter\nactions+=/blessing_of_spring\nactions+=/use_items\nactions+=/call_action_list,name=spenders,strict=1,if=!talent.avenging_crusader||cooldown.avenging_crusader.remains>gcd.max||holy_power.deficit=0\nactions+=/divine_toll\nactions+=/lights_hammer\nactions+=/holy_prism\nactions+=/consecration,if=!consecration.up&action.crusader_strike.in_range\nactions+=/hammer_of_wrath\nactions+=/judgment\nactions+=/holy_shock\nactions+=/crusader_strike,if=cooldown.holy_shock.remains>gcd.max\n\nactions.spenders+=/shield_of_the_righteous,if=!talent.awakening||active_enemies>1\nactions.spenders+=/light_of_dawn,if=talent.awakening&group\nactions.spenders+=/word_of_glory,if=talent.awakening",
					["author"] = "Kaleokalani",
				},
				["Guardian"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20231111,
					["author"] = "SimC",
					["desc"] = "2023-11-11:  Incremental update.\n\n2023-11-10:  Incremental update from SimulationCraft.\n\n2023-11-07:  Further 10.2 updates.\n\n2023-11-05:  Patch 10.2.\n\n2023-07-14:  Fix a Thrash condition.\n\n2023-07-11:  Patch 10.1.5 update.\n\n2023-06-24:  Adjust Mangle/Raze in priority.\n\n2023-05-08:  Add Tier 30 weapon.\n\n2023-03-06:  Revisited if_build and catweave_bear; restored missing mitigation priority for bigger defensive CDs.  Fix vicious_cycle talent check.\n\n2023-02-25:  Updated for 'if_build' changes with tweaks to support the \"Use Maul and Raze in Ironfur Build\" option.\n\n2023-02-21:   Routine update including changes to \"Catweave\" options.",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["criteria"] = "! buff.prowl.up",
								["action"] = "skull_bash",
							}, -- [1]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "dot.moonfire.ticking",
								["name"] = "djaruun_pillar_of_the_elder_flame",
								["action"] = "djaruun_pillar_of_the_elder_flame",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ( talent.heart_of_the_wild.enabled & buff.heart_of_the_wild.up ) || ( ( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up ) & ( ! druid.catweave_bear & ! druid.owlweave_bear ) ) )",
								["action"] = "potion",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up & ! druid.catweave_bear || ! tanking & druid.catweave_bear & ( ! talent.tooth_and_claw.enabled || buff.tooth_and_claw.remains > 1.5 ) & ( buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & cooldown.thrash_bear.remains > 0 & cooldown.mangle.remains > 0 & dot.moonfire.remains >= 2 || buff.cat_form.up & energy > 25 || buff.heart_of_the_wild.up & energy > 90 )",
								["action"] = "run_action_list",
								["list_name"] = "catweave",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bear_form.up",
								["action"] = "bear_form",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "bear",
							}, -- [10]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.thorns_of_iron.enabled & talent.reinforced_fur.enabled",
								["var_name"] = "if_build",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! ( talent.thorns_of_iron.enabled & talent.reinforced_fur.enabled ) || settings.maul_anyway",
								["var_name"] = "maul_build",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up",
								["action"] = "mark_of_the_wild",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ( druid.catweave_bear & buff.cat_form.up || druid.owlweave_bear & buff.moonkin_form.up )",
								["action"] = "heart_of_the_wild",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up",
								["action"] = "prowl",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.any_form.up",
								["action"] = "bear_form",
							}, -- [6]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "tanking & ! variable.if_build & incoming_damage_5s > ironfur_damage_threshold & buff.ironfur.remains < 3 * haste",
								["action"] = "ironfur",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 65",
								["action"] = "regrowth",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 65",
								["action"] = "renewal",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 65",
								["action"] = "frenzied_regeneration",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 75 & incoming_damage_5s > 0.1 * health.max",
								["action"] = "barkskin",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.survival_instincts.down & buff.barkskin.down & health.pct < 60 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "survival_instincts",
							}, -- [6]
						},
						["bear"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.bear_form.up",
								["action"] = "bear_form",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "( ( ( ! ticking & target.time_to_die > 12 ) || ( refreshable & target.time_to_die > 12 ) ) & active_enemies < 7 & talent.fury_of_nature.enabled ) || ( ( ( ! ticking & target.time_to_die > 12 ) || ( refreshable & target.time_to_die > 12 ) ) & active_enemies < 4 & ! talent.fury_of_nature.enabled )",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "refreshable || ( dot.thrash_bear.stack < 5 & talent.flashing_claws.rank = 2 || dot.thrash_bear.stack < 4 & talent.flashing_claws.rank = 1 || dot.thrash_bear.stack < 3 & ! talent.flashing_claws.enabled )",
								["action"] = "thrash_bear",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.rage_of_the_sleeper.remains > 8",
								["action"] = "bristling_fur",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "barkskin",
							}, -- [5]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "incarnation",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "lunar_beam",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.incarnation_guardian_of_ursoc.down & cooldown.incarnation_guardian_of_ursoc.remains > 60 ) || buff.berserk_bear.down ) & rage > 75 & ( ! talent.convoke_the_spirits.enabled ) || ( buff.incarnation_guardian_of_ursoc.up || buff.berserk_bear.up ) & rage > 75 & ( ! talent.convoke_the_spirits.enabled ) || ( talent.convoke_the_spirits.enabled ) & rage > 75",
								["action"] = "rage_of_the_sleeper",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up )",
								["action"] = "berserking",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( buff.rage_of_the_sleeper.up & buff.tooth_and_claw.stack > 0 & ( active_enemies = 1 & talent.raze.enabled || active_enemies <= 6 & ! talent.raze.enabled ) & variable.if_build = 0 )",
								["action"] = "maul",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.rage_of_the_sleeper.up & buff.tooth_and_claw.stack > 0 & variable.if_build = 0 & active_enemies > 1",
								["action"] = "raze",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( ( ( buff.incarnation.up || buff.berserk_bear.up ) & ( active_enemies <= 5 & ! talent.raze.enabled || active_enemies = 1 & talent.raze.enabled ) & ( buff.tooth_and_claw.stack >= 1 ) ) & variable.if_build = 0 ) & ( buff.rage_of_the_sleeper.up || cooldown.rage_of_the_sleeper.remains > 3 )",
								["action"] = "maul",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( buff.incarnation.up || buff.berserk_bear.up ) & ( variable.if_build = 0 ) & active_enemies > 1 & ( buff.rage_of_the_sleeper.up || cooldown.rage_of_the_sleeper.remains > 3 )",
								["action"] = "raze",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "ironfur",
								["criteria"] = "! buff.ironfur.up & rage > 50 & ! cooldown.pause_action.remains & variable.if_build = 0 & buff.rage_of_the_sleeper.up & ! buff.blazing_thorns.up || rage > 90 & variable.if_build = 0 & buff.rage_of_the_sleeper.up & ! buff.blazing_thorns.up",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "rage > 90 & variable.if_build = 1 & cooldown.rage_of_the_sleeper.remains > 3 || ( buff.incarnation.up || buff.berserk_bear.up ) & rage > 20 & variable.if_build = 1 & cooldown.rage_of_the_sleeper.remains > 3 || rage > 90 & variable.if_build = 1 & buff.rage_of_the_sleeper.up || ( buff.incarnation.up || buff.berserk_bear.up ) & rage > 20 & variable.if_build = 1 & buff.rage_of_the_sleeper.up",
								["action"] = "ironfur",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.tooth_and_claw.enabled || rage.deficit < 20 || buff.tooth_and_claw.up ) & active_enemies > 1 & ( ! talent.rage_of_the_sleeper.enabled || buff.rage_of_the_sleeper.up || cooldown.rage_of_the_sleeper.remains > 3 )",
								["action"] = "raze",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "variable.if_build = 0 & active_enemies > 1 & ( ! talent.rage_of_the_sleeper.enabled || buff.rage_of_the_sleeper.up || cooldown.rage_of_the_sleeper.remains > 3 )",
								["action"] = "raze",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.gore.up & active_enemies < 11 || buff.vicious_cycle_mangle.stack = 3",
								["action"] = "mangle",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.tooth_and_claw.enabled || rage.deficit < 20 || buff.tooth_and_claw.up ) & ( active_enemies = 1 & talent.raze.enabled || active_enemies <= 5 & ! talent.raze.enabled ) & ( ! talent.rage_of_the_sleeper.enabled || buff.rage_of_the_sleeper.up || cooldown.rage_of_the_sleeper.remains > 3 )",
								["action"] = "maul",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies = 1 & talent.raze.enabled || active_enemies <= 5 & ! talent.raze.enabled ) & variable.if_build = 0 & ( ! talent.rage_of_the_sleeper.enabled || buff.rage_of_the_sleeper.up || cooldown.rage_of_the_sleeper.remains > 3 )",
								["action"] = "maul",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 5",
								["action"] = "thrash_bear",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit > 10 & settings.mangle_more",
								["action"] = "mangle",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & active_enemies >= 11",
								["action"] = "swipe_bear",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "( buff.incarnation.up & active_enemies <= 4 ) || ( buff.incarnation.up & talent.soul_of_the_forest.enabled & active_enemies <= 5 ) || ( ( rage < 90 ) & active_enemies < 11 ) || ( ( rage < 85 ) & active_enemies < 11 & talent.soul_of_the_forest.enabled )",
								["action"] = "mangle",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "thrash_bear",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.stack > 2",
								["action"] = "pulverize",
							}, -- [28]
							{
								["action"] = "thrash_bear",
								["enabled"] = true,
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.galactic_guardian.up",
								["action"] = "moonfire",
							}, -- [30]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [31]
						},
						["catweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up",
								["action"] = "rake",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! dot.rake.ticking & combo_points < 5",
								["action"] = "rake",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! dot.rip.ticking & combo_points >= 3",
								["action"] = "rip",
							}, -- [6]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_points >= 4 & energy > 50",
								["action"] = "ferocious_bite",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5 & spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5",
								["action"] = "shred",
							}, -- [10]
						},
					},
					["version"] = 20231111,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 7: Converted 'talent.tooth_and_claw' to 'talent.tooth_and_claw.enabled' (1x).\n\nThe import for 'bear' required some automated changes.\nLine 14: Converted 'talent.raze' to 'talent.raze.enabled' (1x).\nLine 14: Converted 'talent.raze' to 'talent.raze.enabled' (1x).\nLine 18: Converted 'talent.tooth_and_claw' to 'talent.tooth_and_claw.enabled' (1x).\nLine 18: Converted 'talent.rage_of_the_sleeper' to 'talent.rage_of_the_sleeper.enabled' (1x).\nLine 19: Converted 'talent.rage_of_the_sleeper' to 'talent.rage_of_the_sleeper.enabled' (1x).\nLine 21: Converted 'talent.tooth_and_claw' to 'talent.tooth_and_claw.enabled' (1x).\nLine 21: Converted 'talent.rage_of_the_sleeper' to 'talent.rage_of_the_sleeper.enabled' (1x).\nLine 22: Converted 'talent.rage_of_the_sleeper' to 'talent.rage_of_the_sleeper.enabled' (1x).\n\nImported 5 action lists.\n",
					["profile"] = "actions.precombat+=/variable,name=if_build,value=talent.thorns_of_iron.enabled&talent.reinforced_fur.enabled\nactions.precombat+=/variable,name=maul_build,value=!(talent.thorns_of_iron.enabled&talent.reinforced_fur.enabled)||settings.maul_anyway\nactions.precombat+=/mark_of_the_wild,if=!buff.prowl.up\nactions.precombat+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&(druid.catweave_bear&buff.cat_form.up||druid.owlweave_bear&buff.moonkin_form.up)\nactions.precombat+=/prowl,if=buff.cat_form.up\nactions.precombat+=/bear_form,if=!buff.any_form.up\n\n# Executed every time the actor is available.\nactions=skull_bash,if=!buff.prowl.up\nactions+=/soothe\nactions+=/use_item,slot=trinket1\nactions+=/use_item,slot=trinket2\nactions+=/use_item,name=djaruun_pillar_of_the_elder_flame,if=dot.moonfire.ticking\nactions+=/potion,if=((talent.heart_of_the_wild.enabled&buff.heart_of_the_wild.up)||((buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)&(!druid.catweave_bear&!druid.owlweave_bear)))\nactions+=/run_action_list,name=catweave,if=buff.cat_form.up&!druid.catweave_bear||!tanking&druid.catweave_bear&(!talent.tooth_and_claw||buff.tooth_and_claw.remains>1.5)&(buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0&dot.moonfire.remains>=2||buff.cat_form.up&energy>25||buff.heart_of_the_wild.up&energy>90)\nactions+=/bear_form,if=!buff.bear_form.up\nactions+=/call_action_list,name=mitigation\nactions+=/run_action_list,name=bear\n\nactions.bear+=/bear_form,if=!buff.bear_form.up\nactions.bear+=/moonfire,cycle_targets=1,if=(((!ticking&target.time_to_die>12)||(refreshable&target.time_to_die>12))&active_enemies<7&talent.fury_of_nature.enabled)||(((!ticking&target.time_to_die>12)||(refreshable&target.time_to_die>12))&active_enemies<4&!talent.fury_of_nature.enabled)\nactions.bear+=/thrash_bear,if=refreshable||(dot.thrash_bear.stack<5&talent.flashing_claws.rank=2||dot.thrash_bear.stack<4&talent.flashing_claws.rank=1||dot.thrash_bear.stack<3&!talent.flashing_claws.enabled)\nactions.bear+=/bristling_fur,if=cooldown.rage_of_the_sleeper.remains>8\nactions.bear+=/barkskin,if=buff.bear_form.up\nactions.bear+=/convoke_the_spirits\nactions.bear+=/berserk_bear\nactions.bear+=/incarnation\nactions.bear+=/lunar_beam\nactions.bear+=/rage_of_the_sleeper,if=((buff.incarnation_guardian_of_ursoc.down&cooldown.incarnation_guardian_of_ursoc.remains>60)||buff.berserk_bear.down)&rage>75&(!talent.convoke_the_spirits.enabled)||(buff.incarnation_guardian_of_ursoc.up||buff.berserk_bear.up)&rage>75&(!talent.convoke_the_spirits.enabled)||(talent.convoke_the_spirits.enabled)&rage>75\nactions.bear+=/berserking,if=(buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)\nactions.bear+=/maul,if=(buff.rage_of_the_sleeper.up&buff.tooth_and_claw.stack>0&(active_enemies=1&talent.raze.enabled||active_enemies<=6&!talent.raze.enabled)&variable.if_build=0)\nactions.bear+=/raze,if=buff.rage_of_the_sleeper.up&buff.tooth_and_claw.stack>0&variable.if_build=0&active_enemies>1\nactions.bear+=/maul,if=(((buff.incarnation.up||buff.berserk_bear.up)&(active_enemies<=5&!talent.raze||active_enemies=1&talent.raze)&(buff.tooth_and_claw.stack>=1))&variable.if_build=0)&(buff.rage_of_the_sleeper.up||cooldown.rage_of_the_sleeper.remains>3)\nactions.bear+=/raze,if=(buff.incarnation.up||buff.berserk_bear.up)&(variable.if_build=0)&active_enemies>1&(buff.rage_of_the_sleeper.up||cooldown.rage_of_the_sleeper.remains>3)\nactions.bear+=/ironfur,cycle_targets=1,if=!debuff.tooth_and_claw_debuff.up&!buff.ironfur.up&rage>50&!cooldown.pause_action.remains&variable.if_build=0&!buff.rage_of_the_sleeper.up&cooldown.rage_of_the_sleeper.remains>3&!buff.blazing_thorns.up||rage>90&variable.if_build=0&!buff.rage_of_the_sleeper.up&cooldown.rage_of_the_sleeper.remains>3&!buff.blazing_thorns.up||!debuff.tooth_and_claw_debuff.up,if=!buff.ironfur.up&rage>50&!cooldown.pause_action.remains&variable.if_build=0&buff.rage_of_the_sleeper.up&!buff.blazing_thorns.up||rage>90&variable.if_build=0&buff.rage_of_the_sleeper.up&!buff.blazing_thorns.up\nactions.bear+=/ironfur,if=rage>90&variable.if_build=1&cooldown.rage_of_the_sleeper.remains>3||(buff.incarnation.up||buff.berserk_bear.up)&rage>20&variable.if_build=1&cooldown.rage_of_the_sleeper.remains>3||rage>90&variable.if_build=1&buff.rage_of_the_sleeper.up||(buff.incarnation.up||buff.berserk_bear.up)&rage>20&variable.if_build=1&buff.rage_of_the_sleeper.up\nactions.bear+=/raze,if=(!talent.tooth_and_claw||rage.deficit<20||buff.tooth_and_claw.up)&active_enemies>1&(!talent.rage_of_the_sleeper||buff.rage_of_the_sleeper.up||cooldown.rage_of_the_sleeper.remains>3)\nactions.bear+=/raze,if=variable.if_build=0&active_enemies>1&(!talent.rage_of_the_sleeper||buff.rage_of_the_sleeper.up||cooldown.rage_of_the_sleeper.remains>3)\nactions.bear+=/mangle,if=buff.gore.up&active_enemies<11||buff.vicious_cycle_mangle.stack=3\nactions.bear+=/maul,if=(!talent.tooth_and_claw||rage.deficit<20||buff.tooth_and_claw.up)&(active_enemies=1&talent.raze.enabled||active_enemies<=5&!talent.raze.enabled)&(!talent.rage_of_the_sleeper||buff.rage_of_the_sleeper.up||cooldown.rage_of_the_sleeper.remains>3)\nactions.bear+=/maul,if=(active_enemies=1&talent.raze.enabled||active_enemies<=5&!talent.raze.enabled)&variable.if_build=0&(!talent.rage_of_the_sleeper||buff.rage_of_the_sleeper.up||cooldown.rage_of_the_sleeper.remains>3)\nactions.bear+=/thrash_bear,if=active_enemies>=5\nactions.bear+=/mangle,if=rage.deficit>10&settings.mangle_more\nactions.bear+=/swipe,if=buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&active_enemies>=11\nactions.bear+=/mangle,if=(buff.incarnation.up&active_enemies<=4)||(buff.incarnation.up&talent.soul_of_the_forest.enabled&active_enemies<=5)||((rage<90)&active_enemies<11)||((rage<85)&active_enemies<11&talent.soul_of_the_forest.enabled)\nactions.bear+=/thrash_bear,if=active_enemies>1\nactions.bear+=/pulverize,if=dot.thrash_bear.stack>2\nactions.bear+=/thrash_bear\nactions.bear+=/moonfire,if=buff.galactic_guardian.up\nactions.bear+=/swipe_bear\n\nactions.catweave=heart_of_the_wild,if=!buff.heart_of_the_wild.up\nactions.catweave+=/cat_form,if=!buff.cat_form.up\nactions.catweave+=/rake,if=buff.prowl.up\nactions.catweave+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.catweave+=/rake,if=!dot.rake.ticking&combo_points<5\nactions.catweave+=/rip,if=!dot.rip.ticking&combo_points>=3\nactions.catweave+=/convoke_the_spirits\nactions.catweave+=/ferocious_bite,if=combo_points>=4&energy>50\nactions.catweave+=/swipe_cat,if=combo_points<5&spell_targets.swipe_cat>1\nactions.catweave+=/shred,if=combo_points<5\n\nactions.mitigation=ironfur,if=tanking&!variable.if_build&incoming_damage_5s>ironfur_damage_threshold&buff.ironfur.remains<3*haste\nactions.mitigation+=/regrowth,if=health.pct<65\nactions.mitigation+=/renewal,if=health.pct<65\nactions.mitigation+=/frenzied_regeneration,if=tanking&health.pct<65\nactions.mitigation+=/barkskin,if=tanking&health.pct<75&incoming_damage_5s>0.1*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&buff.barkskin.down&health.pct<60&incoming_damage_5s>0.25*health.max",
					["spec"] = 104,
				},
				["Protection Paladin"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20231122,
					["author"] = "SimC",
					["desc"] = "2023-11-13 & 22: Sim update.\n\n2023-11-05:  Patch 10.2.\n\n2023-06-25:  Eye of Tyr adjusted based on Inmost Light.\n\n2023-06-24:  Judgment usage with Bulwark of Righteous Fury; trinket logic update.\n\n2023-05-24:  Update Light's Judgment, Divine Toll, Eye of Tyr usage.\n\n2023-02-27:  Use SotR with Bastion of Light, Divine Purpose, or 3+ Holy Power if Righteous Protector is not talented or is outside its ICD.\n\n2023-03-06:  Check for Of Dusk and Dawn buffs before spending using SotR at 3 CP.\n\n2023-03-19:  Updated for 10.0.7.\n\n2023-03-21:  Oops, Blessed Hammer still exists.\n\n2023-03-26:  Updates from SimulationCraft (Avenger's Shield usage for 2pc Tier 29, SotR if ICD is bypassed).",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "rebuke",
							}, -- [1]
							{
								["action"] = "cleanse_toxins",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "standard",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.paladin_aura.down",
								["action"] = "devotion_aura",
							}, -- [1]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [4]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "tanking & buff.shield_of_the_righteous.down & ( holy_power.deficit = 0 || buff.divine_purpose.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < wog_health & ( holy_power.deficit = 0 || buff.divine_purpose.up || buff.shining_light_free.up )",
								["action"] = "word_of_glory",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "tanking & incoming_damage_5s > goak_damage & ! ( buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "guardian_of_ancient_kings",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.final_stand.enabled & tanking & incoming_damage_5s > ds_damage & ! ( buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "divine_shield",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "tanking & incoming_damage_5s > goak_damage & ! ( buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "ardent_defender",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 15",
								["action"] = "lay_on_hands",
							}, -- [6]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "trinket.t1.has_stat.any_dps & ( ! trinket.t2.has_stat.any_dps || trinket.t1.cooldown.duration >= trinket.t2.cooldown.duration )",
								["var_name"] = "trinket_sync_slot",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "2",
								["criteria"] = "trinket.t2.has_stat.any_dps & ( ! trinket.t1.has_stat.any_dps || trinket.t2.cooldown.duration > trinket.t1.cooldown.duration )",
								["var_name"] = "trinket_sync_slot",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["criteria"] = "( variable.trinket_sync_slot = 1 & ( buff.avenging_wrath.up || boss & fight_remains <= 40 ) || ( variable.trinket_sync_slot = 2 & ( ! trinket.t2.cooldown.ready || ! buff.avenging_wrath.up ) ) || ! variable.trinket_sync_slot )",
								["slots"] = "trinket1",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["criteria"] = "( variable.trinket_sync_slot = 2 & ( buff.avenging_wrath.up || boss & fight_remains <= 40 ) || ( variable.trinket_sync_slot = 1 & ( ! trinket.t1.cooldown.ready || ! buff.avenging_wrath.up ) ) || ! variable.trinket_sync_slot )",
								["slots"] = "trinket2",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
						},
						["standard"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.sanctification.stack = buff.sanctification.max_stack",
								["action"] = "consecration",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "shield_of_the_righteous",
								["description"] = "Use Shield of the Righteous according to Righteous Protector's ICD, but use it asap if it's a free proc (Bugged interaction, this ignores ICD). Don't use it when on max Sanctification Stacks (Very next GCD will trigger Consecration, so we want the bonus damage)",
								["criteria"] = "( ( ( ! talent.righteous_protector.enabled || cooldown.righteous_protector_icd.remains = 0 ) & holy_power > 2 ) || buff.bastion_of_light.up || buff.divine_purpose.up ) & ( ! buff.sanctification.up || buff.sanctification.stack < buff.sanctification.max_stack )",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "judgment",
								["criteria"] = "spell_targets.shield_of_the_righteous > 3 & buff.bulwark_of_righteous_fury.stack >= 3 & holy_power < 3",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "judgment",
								["cycle_targets"] = 1,
								["criteria"] = "! buff.sanctification_empower.up & set_bonus.tier31_2pc",
								["description"] = "Use Judgment with higher priority if we need to build Sanctification Stacks",
							}, -- [4]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "judgment",
								["criteria"] = "charges >= 2 || full_recharge_time <= gcd.max",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.avengers_shield > 2 || buff.moment_of_glory.up",
								["action"] = "avengers_shield",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 10 )",
								["action"] = "divine_toll",
							}, -- [8]
							{
								["action"] = "avengers_shield",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "judgment",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up & ( ! buff.sanctification.stack = buff.sanctification.max_stack || ! set_bonus.tier31_2pc )",
								["action"] = "consecration",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.inmost_light.enabled & raid_event.adds.in >= 45 || spell_targets.shield_of_the_righteous >= 3",
								["action"] = "eye_of_tyr",
							}, -- [13]
							{
								["action"] = "blessed_hammer",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "hammer_of_the_righteous",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! talent.inmost_light.enabled & raid_event.adds.in >= 60 || spell_targets.shield_of_the_righteous >= 3",
								["action"] = "eye_of_tyr",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.shining_light_free.up",
								["action"] = "word_of_glory",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "holy_power < 5",
								["action"] = "arcane_torrent",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! buff.sanctification_empower.up",
								["action"] = "consecration",
							}, -- [20]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["action"] = "avengers_shield",
								["description"] = "Use Avenger's Shield as first priority before anything else, if t29 2pc is equipped.",
								["criteria"] = "time = 0 & set_bonus.tier29_2pc",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.lights_judgment >= 2 || ! raid_event.adds.exists || raid_event.adds.in > 75 || raid_event.adds.up",
								["action"] = "lights_judgment",
							}, -- [2]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.aw_sentinel.up",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.aw_sentinel.remains < 15 || ( time > 10 || cooldown.sentinel.remains > 15 || cooldown.avenging_wrath.remains > 15 ) & ( cooldown.avengers_shield.remains & cooldown.judgment.remains & cooldown.hammer_of_wrath.remains ) )",
								["action"] = "moment_of_glory",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.shield_of_the_righteous >= 3",
								["action"] = "divine_toll",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || cooldown.avenging_wrath.remains <= 30",
								["action"] = "bastion_of_light",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.remains > 8",
								["action"] = "fireblood",
							}, -- [9]
						},
					},
					["version"] = 20231122,
					["warnings"] = "The import for 'trinkets' required some automated changes.\nLine 1: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 1: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 1: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 1: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 2: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\nLine 2: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 2: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 2: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 3: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready' (1x).\nLine 3: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready'.\nLine 4: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready' (1x).\nLine 4: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready'.\n\nImported 6 action lists.\n",
					["spec"] = 66,
					["profile"] = "actions.precombat+=/devotion_aura,if=buff.paladin_aura.down\nactions.precombat+=/lights_judgment\nactions.precombat+=/arcane_torrent\nactions.precombat+=/consecration\n\n# Executed every time the actor is available.\nactions=rebuke\nactions+=/cleanse_toxins\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=trinkets\nactions+=/call_action_list,name=standard\n\n# Use Avenger's Shield as first priority before anything else, if t29 2pc is equipped.\nactions.cooldowns+=/avengers_shield,if=time=0&set_bonus.tier29_2pc\nactions.cooldowns+=/lights_judgment,if=spell_targets.lights_judgment>=2||!raid_event.adds.exists||raid_event.adds.in>75||raid_event.adds.up\nactions.cooldowns+=/avenging_wrath\nactions.cooldowns+=/sentinel\nactions.cooldowns+=/potion,if=buff.aw_sentinel.up\nactions.cooldowns+=/moment_of_glory,if=(buff.aw_sentinel.remains<15||(time>10||cooldown.sentinel.remains>15||cooldown.avenging_wrath.remains>15)&(cooldown.avengers_shield.remains&cooldown.judgment.remains&cooldown.hammer_of_wrath.remains))\nactions.cooldowns+=/divine_toll,if=spell_targets.shield_of_the_righteous>=3\nactions.cooldowns+=/bastion_of_light,if=buff.avenging_wrath.up||cooldown.avenging_wrath.remains<=30\n## actions.cooldowns+=/invoke_external_buff,name=power_infusion,if=buff.avenging_wrath.up\nactions.cooldowns+=/fireblood,if=buff.avenging_wrath.remains>8\n\nactions.mitigation=shield_of_the_righteous,if=tanking&buff.shield_of_the_righteous.down&(holy_power.deficit=0||buff.divine_purpose.up)\nactions.mitigation+=/word_of_glory,if=health.pct<wog_health&(holy_power.deficit=0||buff.divine_purpose.up||buff.shining_light_free.up)\nactions.mitigation+=/guardian_of_ancient_kings,if=tanking&incoming_damage_5s>goak_damage&!(buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/divine_shield,if=talent.final_stand.enabled&tanking&incoming_damage_5s>ds_damage&!(buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/ardent_defender,if=tanking&incoming_damage_5s>goak_damage&!(buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/lay_on_hands,if=health.pct<15\n\nactions.standard+=/consecration,if=buff.sanctification.stack=buff.sanctification.max_stack\n# Use Shield of the Righteous according to Righteous Protector's ICD, but use it asap if it's a free proc (Bugged interaction, this ignores ICD). Don't use it when on max Sanctification Stacks (Very next GCD will trigger Consecration, so we want the bonus damage)\nactions.standard+=/shield_of_the_righteous,if=(((!talent.righteous_protector.enabled||cooldown.righteous_protector_icd.remains=0)&holy_power>2)||buff.bastion_of_light.up||buff.divine_purpose.up)&(!buff.sanctification.up||buff.sanctification.stack<buff.sanctification.max_stack)\nactions.standard+=/judgment,cycle_targets=1,if=spell_targets.shield_of_the_righteous>3&buff.bulwark_of_righteous_fury.stack>=3&holy_power<3\n# Use Judgment with higher priority if we need to build Sanctification Stacks\nactions.standard+=/judgment,cycle_targets=1,if=!buff.sanctification_empower.up&set_bonus.tier31_2pc\nactions.standard+=/hammer_of_wrath\nactions.standard+=/judgment,cycle_targets=1,if=charges>=2||full_recharge_time<=gcd.max\nactions.standard+=/avengers_shield,if=spell_targets.avengers_shield>2||buff.moment_of_glory.up\nactions.standard+=/divine_toll,if=(!raid_event.adds.exists||raid_event.adds.in>10)\nactions.standard+=/avengers_shield\nactions.standard+=/hammer_of_wrath\nactions.standard+=/judgment,cycle_targets=1\nactions.standard+=/consecration,if=!consecration.up&(!buff.sanctification.stack=buff.sanctification.max_stack||!set_bonus.tier31_2pc)\nactions.standard+=/eye_of_tyr,if=talent.inmost_light.enabled&raid_event.adds.in>=45||spell_targets.shield_of_the_righteous>=3\nactions.standard+=/blessed_hammer\nactions.standard+=/hammer_of_the_righteous\nactions.standard+=/crusader_strike\nactions.standard+=/eye_of_tyr,if=!talent.inmost_light.enabled&raid_event.adds.in>=60||spell_targets.shield_of_the_righteous>=3\nactions.standard+=/word_of_glory,if=buff.shining_light_free.up\nactions.standard+=/arcane_torrent,if=holy_power<5\nactions.standard+=/consecration,if=!buff.sanctification_empower.up\n\nactions.trinkets+=/variable,name=trinket_sync_slot,value=1,if=trinket.1.has_stat.any_dps&(!trinket.2.has_stat.any_dps||trinket.1.cooldown.duration>=trinket.2.cooldown.duration)\nactions.trinkets+=/variable,name=trinket_sync_slot,value=2,if=trinket.2.has_stat.any_dps&(!trinket.1.has_stat.any_dps||trinket.2.cooldown.duration>trinket.1.cooldown.duration)\nactions.trinkets+=/use_items,slots=trinket1,if=(variable.trinket_sync_slot=1&(buff.avenging_wrath.up||boss&fight_remains<=40)||(variable.trinket_sync_slot=2&(!trinket.2.cooldown.ready||!buff.avenging_wrath.up))||!variable.trinket_sync_slot)\nactions.trinkets+=/use_items,slots=trinket2,if=(variable.trinket_sync_slot=2&(buff.avenging_wrath.up||boss&fight_remains<=40)||(variable.trinket_sync_slot=1&(!trinket.1.cooldown.ready||!buff.avenging_wrath.up))||!variable.trinket_sync_slot)\nactions.trinkets+=/use_items",
				},
				["Feral"] = {
					["builtIn"] = true,
					["date"] = 20231126,
					["author"] = "SimC",
					["desc"] = "2023-11-26: Fix warning messages.\n\n2023-11-15:  SimC minor updates.\n\n2023-11-11: Incremental updates.\n\n2023-11-05:  Patch 10.2.\n\n2023-08-26: Minor priority updates.\n\n2023-07-19:  Convert SimC variables into spec options (Lazy Swipe, Regrowth, etc.).\n\n2023-07-15:  Tweak Incarnation Prowl usage.\n\n2023-05-25:  Update priority to use Rip Duration and Ferocious Bite funnel settings.\n\n2023-05-20:  Tweak 'wait' entry for passive Combo Point generation.\n\n2023-05-15:  Combo Points can increase over time during Berserk.\n\n2023-05-14:  Make Heart of the Wild annoy me less.\n\n2023-05-11:  Minor updates to finisher and cooldown usage.\n\n2023-05-08:  Incremental updates from SimC.\n\n2023-05-06:  Minor updates.\n\n2023-05-03:  Restore missing aoe_builder action list.\n\n2023-05-03:  Update again from SimC.\n\n2023-03-27:  Test updates from SimC.\n\n2023-02-27:  Adjust funneling to use PW if there are multiple un-Ripped targets.\n\n2023-02-25:  Testing a funnel option (spend CP on Ferocious Bite instead of Primal Wrath if Rip won't fall off).\n\n2023-02-21:  Adjusted Berserk logic to prevent freezing/errors.\n\n2023-02-15:  Priority will use finishers at 4+ Combo Points when Lion's Strength is talented, consistent with latest SimulationCraft updates.",
					["lists"] = {
						["aoe_builder"] = {
							{
								["enabled"] = true,
								["action"] = "brutal_slash",
								["cycle_targets"] = 1,
								["criteria"] = "( cooldown.brutal_slash.full_recharge_time < 4 || target.time_to_die < 5 ) & ! ( ( variable.need_bt || buff.bs_inc.up ) & buff.bt_brutal_slash.up )",
								["description"] = "if you need to proc bloodtalons, skip actions that you've already casted towards bloodtalons",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_cat.remains < 3 & ( ! buff.sudden_ambush.up || ! talent.doubleclawed_rake.enabled ) & ! talent.thrashing_claws.enabled",
								["action"] = "thrash_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "prowl",
								["criteria"] = "( dot.rake.pmultiplier < 1.6 || dot.rake.refreshable ) & ! ( variable.need_bt & buff.bt_rake.up )",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "shadowmeld",
								["criteria"] = "( dot.rake.pmultiplier < 1.6 || dot.rake.refreshable ) & ! ( variable.need_bt & buff.bt_rake.up )",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "( buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier || dot.rake.refreshable ) & ! ( variable.need_bt & buff.bt_rake.up )",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ! talent.thrashing_claws.enabled",
								["action"] = "thrash_cat",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! ( variable.need_bt & buff.bt_brutal_slash.up )",
								["action"] = "brutal_slash",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 4 & ! ( variable.need_bt & buff.bt_swipe.up )",
								["action"] = "swipe_cat",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["cycle_targets"] = 1,
								["criteria"] = "dot.moonfire.refreshable & ! ( variable.need_bt & buff.bt_moonfire.up )",
								["description"] = "prio targets with swarm debuff for moonfire",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! ( variable.need_bt & buff.bt_swipe.up )",
								["action"] = "swipe_cat",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "shred",
								["cycle_targets"] = 1,
								["criteria"] = "( spell_targets.swipe_cat < 4 || talent.dire_fixation.enabled ) & ! buff.sudden_ambush.up & ! ( variable.lazy_swipe & talent.wild_slashes.enabled )",
								["description"] = "if we have brs and nothing better to cast, refresh thrash early at 4+ targets unless dire fixation is talented",
							}, -- [11]
							{
								["action"] = "thrash_cat",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "shred",
								["criteria"] = "( spell_targets.swipe_cat < 4 || talent.dire_fixation.enabled ) & ! buff.sudden_ambush.up & ! ( settings.lazy_swipe & talent.wild_slashes.enabled ) & ! ( variable.need_bt & buff.bt_shred.up )",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! ( variable.need_bt & buff.bt_thrash.up )",
								["action"] = "thrash_cat",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "shred",
								["cycle_targets"] = 1,
								["criteria"] = "! settings.lazy_swipe & variable.need_bt & buff.bt_shred.down",
								["description"] = "fallback bloodtalons actions below this point",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["criteria"] = "variable.need_bt & buff.bt_moonfire.down",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "variable.need_bt & buff.bt_rake.down",
								["cycle_targets"] = 1,
							}, -- [17]
						},
						["finisher"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.bs_inc.up",
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( dot.primal_wrath.refreshable || ( talent.tear_open_wounds.enabled || ( spell_targets.swipe_cat > 4 & ! talent.rampant_ferocity.enabled ) ) ) & spell_targets.primal_wrath > 1 & talent.primal_wrath.enabled",
								["action"] = "primal_wrath",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "rip",
								["cycle_targets"] = 1,
								["criteria"] = "( ( set_bonus.tier31_2pc & cooldown.feral_frenzy.remains < 2 & dot.rip.remains < 10 ) || ( time < 8 || buff.bloodtalons.up || ! talent.bloodtalons.enabled || ( buff.bs_inc.up & dot.rip.remains < 2 ) ) & refreshable ) & ( ! talent.primal_wrath.enabled || spell_targets.swipe_cat = 1 ) & ! ( buff.smoldering_frenzy.up & dot.rip.remains > 2 )",
								["description"] = "with t31 you can rip a few seconds early as to use bite inside of feral frenzy instead. During smoldering you can delay refreshing rip.",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! action.tigers_fury.ready & buff.apex_predators_craving.down",
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["cycle_targets"] = 1,
								["criteria"] = "buff.apex_predators_craving.down & ( ! buff.bs_inc.up || buff.bs_inc.up & ! talent.soul_of_the_forest.enabled )",
								["max_energy"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "( buff.bs_inc.up & talent.soul_of_the_forest.enabled ) || buff.apex_predators_craving.up",
								["cycle_targets"] = 1,
							}, -- [6]
						},
						["builder"] = {
							{
								["enabled"] = true,
								["description"] = "if you need to proc bloodtalons, skip actions that you've already casted towards bloodtalons",
								["criteria"] = "refreshable & ( ! talent.dire_fixation.enabled || talent.dire_fixation.enabled & debuff.dire_fixation.up ) & buff.clearcasting.react & ! talent.thrashing_claws.enabled",
								["action"] = "thrash_cat",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( buff.clearcasting.react || ( talent.dire_fixation.enabled & ! debuff.dire_fixation.up ) ) & ! ( variable.need_bt & buff.bt_shred.up )",
								["action"] = "shred",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brutal_slash.full_recharge_time < 4 & ! ( variable.need_bt & buff.bt_brutal_slash.up )",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "stop pooling if clearcasting procs",
								["criteria"] = "! action.rake.ready & ( dot.rake.refreshable || ( buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier & dot.rake.remains > 6 ) ) & ! buff.clearcasting.react & ! ( variable.need_bt & buff.bt_rake.up )",
								["action"] = "pool_resource",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "action.rake.ready & ! buff.sudden_ambush.up & ( dot.rake.refreshable || dot.rake.pmultiplier < 1.4 ) & ! ( variable.need_bt & buff.bt_rake.up ) & ! buff.prowl.up",
								["action"] = "shadowmeld",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier ) & ! ( variable.need_bt & buff.bt_rake.up )",
								["action"] = "rake",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & ! talent.thrashing_claws.enabled",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! ( variable.need_bt & buff.bt_brutal_slash.up )",
								["action"] = "brutal_slash",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1 || ( talent.wild_slashes.enabled & ( debuff.dire_fixation.up || ! talent.dire_fixation.enabled ) )",
								["action"] = "swipe_cat",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! ( variable.need_bt & buff.bt_shred.up )",
								["action"] = "shred",
							}, -- [11]
							{
								["enabled"] = true,
								["description"] = "fallback bloodtalons actions below this point",
								["criteria"] = "variable.need_bt & buff.bt_moonfire.down",
								["action"] = "lunar_inspiration",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.need_bt & buff.bt_swipe.down",
								["action"] = "swipe_cat",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "variable.need_bt & buff.bt_rake.down & persistent_multiplier >= dot.rake.pmultiplier",
								["action"] = "rake",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "variable.need_bt & buff.bt_thrash.down",
								["action"] = "thrash_cat",
							}, -- [15]
						},
						["berserk"] = {
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "combo_points = 5 & dot.rip.remains > 8 & variable.zerk_biteweave & spell_targets.swipe_cat > 1",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "proc bt if 0/1 stack if 5/6 combo points with t30 only (~0.25% dps loss at 5/6 and less than 0.1% dps loss to build at 5cp with t31)",
								["criteria"] = "combo_points = 5 & ! ( buff.overflowing_power.stack <= 1 & active_bt_triggers = 2 & buff.bloodtalons.stack <= 1 & set_bonus.tier30_4pc )",
								["list_name"] = "finisher",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "run_action_list",
								["list_name"] = "aoe_builder",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! ( buff.bt_rake.up & active_bt_triggers = 2 ) & ( action.rake.ready & gcd.remains = 0 & ! buff.sudden_ambush.up & ( dot.rake.refreshable || dot.rake.pmultiplier < 1.4 ) & ! buff.shadowmeld.up )",
								["action"] = "prowl",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! ( buff.bt_rake.up & active_bt_triggers = 2 ) & action.rake.ready & ! buff.sudden_ambush.up & ( dot.rake.refreshable || dot.rake.pmultiplier < 1.4 ) & ! buff.prowl.up",
								["action"] = "shadowmeld",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! ( buff.bt_rake.up & active_bt_triggers = 2 ) & ( dot.rake.remains < 3 || buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier )",
								["action"] = "rake",
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "in single target, you just proc bt when an opportunity arises",
								["criteria"] = "active_bt_triggers = 2 & buff.bt_shred.down",
								["action"] = "shred",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_bt_triggers = 2 & buff.bt_brutal_slash.down",
								["action"] = "brutal_slash",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_bt_triggers = 2 & buff.bt_moonfire.down",
								["action"] = "lunar_inspiration",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_bt_triggers = 2 & buff.bt_thrash.down & ! talent.thrashing_claws.enabled & variable.need_bt",
								["action"] = "thrash_cat",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "lunar_inspiration",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brutal_slash.charges > 1 & ( ! talent.dire_fixation.enabled || debuff.dire_fixation.up )",
								["action"] = "brutal_slash",
							}, -- [12]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [13]
						},
						["owlweaving"] = {
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["line_cd"] = "4*gcd",
							}, -- [1]
						},
						["default"] = {
							{
								["action"] = "skull_bash",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["criteria"] = "( buff.bs_inc.down || time = 0 ) & ! buff.prowl.up",
								["action"] = "prowl",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.bloodtalons.enabled & buff.bloodtalons.stack <= 1",
								["var_name"] = "need_bt",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.swipe_cat = 1 & boss",
								["description"] = "this variable holds 3 minute cds to use with 3rd zerk in single target situations",
								["var_name"] = "align_3minutes",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "fight_remains > cooldown.convoke_the_spirits.remains + 3 & ( ( talent.ashamanes_guidance.enabled & fight_remains < ( cooldown.convoke_the_spirits.remains + 60 ) ) || ( ! talent.ashamanes_guidance.enabled & fight_remains < ( cooldown.convoke_the_spirits.remains + 120 ) ) )",
								["description"] = "this variable checks if there is exactly 1 convoke cast remaining in the sim",
								["var_name"] = "lastconvoke",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "fight_remains > ( 30 + ( cooldown.bs_inc.remains / 1.6 ) ) & ( ( talent.berserk_heart_of_the_lion.enabled & fight_remains < ( 90 + ( cooldown.bs_inc.remains / 1.6 ) ) ) || ( ! talent.berserk_heart_of_the_lion.enabled & fight_remains < ( 180 + cooldown.bs_inc.remains ) ) )",
								["description"] = "this variable checks if there is exactly 1 berserk cast remaining in the sim",
								["var_name"] = "lastzerk",
							}, -- [8]
							{
								["var_name"] = "force_align_2min",
								["op"] = "reset",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( variable.force_align_2min || equipped.witherbarks_branch || equipped.ashes_of_the_embersoul || ( time + fight_remains > 150 & time + fight_remains < 200 || time + fight_remains > 270 & time + fight_remains < 295 || time + fight_remains > 395 & time + fight_remains < 400 || time + fight_remains > 490 & time + fight_remains < 495 ) ) & talent.convoke_the_spirits.enabled & boss & spell_targets.swipe_cat = 1 & set_bonus.tier31_2pc",
								["description"] = "this variable checks the fight timer and trinkets to decide if itll be more dps to align berserk with 2 minute convoke",
								["var_name"] = "align_cds",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "tigers_fury",
								["criteria"] = "! set_bonus.tier31_4pc & talent.convoke_the_spirits.enabled || ! buff.tigers_fury.up || energy.deficit > 65 || set_bonus.tier31_2pc & action.feral_frenzy.ready || target.time_to_die < 15 & talent.predator.enabled",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "( down || persistent_multiplier > dot.rake.pmultiplier ) & ( buff.prowl.up || buff.shadowmeld.up )",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "time > 0",
								["action"] = "natures_vigil",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "filler_regrowth & health.pct < 60",
								["action"] = "renewal",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "! talent.unbridled_swarm.enabled || spell_targets.swipe_cat = 1",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack < 3 & talent.unbridled_swarm.enabled & spell_targets.swipe_cat > 1",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "cooldown and feral frenzy have 2 lines, as a delayed opener to get bt rip is worth it for 2m convoke the spirits in ST",
								["criteria"] = "( time > 3 || ! talent.dire_fixation.enabled || debuff.dire_fixation.up & combo_points < 4 || spell_targets.swipe_cat > 1 ) & ! ( spell_targets = 1 & talent.convoke_the_spirits.enabled ) || dot.rip.ticking",
								["list_name"] = "cooldown",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "feral_frenzy",
								["criteria"] = "( ( combo_points < 3 || time < 10 & combo_points < 4 ) & ( ! talent.dire_fixation.enabled || debuff.dire_fixation.up || spell_targets.swipe_cat > 1 ) & ( target.time_to_die < fight_remains & target.time_to_die > 6 || target.time_to_die = fight_remains ) ) & ! ( spell_targets = 1 & talent.convoke_the_spirits.enabled )",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 3 & debuff.dire_fixation.up & dot.rip.ticking & ( spell_targets = 1 & talent.convoke_the_spirits.enabled )",
								["action"] = "feral_frenzy",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "buff.apex_predators_craving.up & ( spell_targets.swipe_cat = 1 || ! talent.primal_wrath.enabled || ! buff.sabertooth.up ) & ! ( variable.need_bt & active_bt_triggers = 2 )",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "buff.bs_inc.up",
								["list_name"] = "berserk",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "combo_points >= 4",
								["action"] = "call_action_list",
								["list_name"] = "finisher",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1 & combo_points < 4",
								["action"] = "call_action_list",
								["list_name"] = "aoe_builder",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bs_inc.up & spell_targets.swipe_cat = 1 & combo_points < 4",
								["action"] = "call_action_list",
								["list_name"] = "builder",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "energy < 25 & buff.predatory_swiftness.up & ! buff.clearcasting.up & filler_regrowth",
								["action"] = "regrowth",
							}, -- [25]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.down",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.any_form.up & buff.cat_form.down",
								["action"] = "heart_of_the_wild",
							}, -- [3]
							{
								["action"] = "prowl",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "cat_form",
								["enabled"] = true,
							}, -- [5]
						},
						["bloodtalons"] = {
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.brutal_slash.full_recharge_time < 4 || target.time_to_die < 5 ) & ( buff.bt_brutal_slash.down & ( buff.bs_inc.up || variable.need_bt ) )",
								["action"] = "brutal_slash",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "action.rake.ready & ! buff.sudden_ambush.up & ( dot.rake.refreshable || dot.rake.pmultiplier < 1.4 ) & ! buff.shadowmeld.up & buff.bt_rake.down & ! buff.prowl.up & ! buff.apex_predators_craving.up",
								["action"] = "prowl",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "action.rake.ready & ! buff.sudden_ambush.up & ( dot.rake.refreshable || dot.rake.pmultiplier < 1.4 ) & ! buff.prowl.up & buff.bt_rake.down & cooldown.feral_frenzy.remains < 44 & ! buff.apex_predators_craving.up",
								["action"] = "shadowmeld",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "( refreshable || buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier ) & buff.bt_rake.down",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier & buff.bt_rake.down",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_shred.down & buff.clearcasting.react & spell_targets.swipe_cat = 1",
								["action"] = "shred",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & buff.bt_thrash.down & buff.clearcasting.react & spell_targets.swipe_cat = 1 & ! talent.thrashing_claws.enabled",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_brutal_slash.down",
								["action"] = "brutal_slash",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & buff.bt_moonfire.down & spell_targets.swipe_cat = 1",
								["action"] = "lunar_inspiration",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & buff.bt_thrash.down & ! talent.thrashing_claws.enabled",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_shred.down & spell_targets.swipe_cat = 1 & ( ! talent.wild_slashes.enabled || ( ! debuff.dire_fixation.up & talent.dire_fixation.enabled ) )",
								["action"] = "shred",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_swipe.down & talent.wild_slashes.enabled",
								["action"] = "swipe_cat",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "3",
								["criteria"] = "buff.bt_moonfire.down & spell_targets.swipe_cat < 5",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_swipe.down",
								["action"] = "swipe_cat",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["criteria"] = "buff.bt_moonfire.down",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "shred",
								["cycle_targets"] = 1,
								["criteria"] = "( spell_targets > 5 || talent.dire_fixation.enabled ) & buff.bt_shred.down & ! buff.sudden_ambush.up & ! ( variable.lazy_swipe & talent.wild_slashes.enabled )",
								["description"] = "If we have BrS and nothing better to cast, thrash at 5+ targets unless dire fixation is talented.",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_thrash.down",
								["action"] = "thrash_cat",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "rake",
								["cycle_targets"] = 1,
								["criteria"] = "buff.bt_rake.down & ( spell_targets.swipe_cat > 4 & ! talent.dire_fixation.enabled || talent.wild_slashes.enabled & variable.lazy_swipe )",
								["description"] = "This just finds the best reapplication if you really need 3rd builder for bt",
							}, -- [18]
						},
						["cooldown"] = {
							{
								["enabled"] = true,
								["criteria"] = "fight_remains < 35 || ( ! variable.align_3minutes )",
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.align_3minutes & ( cooldown.bs_inc.remains < 3 & ( ! variable.lastzerk || ! variable.lastconvoke || ( variable.lastconvoke & cooldown.convoke_the_spirits.remains < 13 ) ) )",
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "incarnation",
								["criteria"] = "( target.time_to_die < fight_remains & target.time_to_die > 25 ) || target.time_to_die = fight_remains",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "With Convoke on certain fight timers it can be correct to hold berserk for convoke",
								["criteria"] = "fight_remains < 25 || talent.convoke_the_spirits.enabled & ( fight_remains < cooldown.convoke_the_spirits.remains || ( variable.align_cds & ( action.feral_frenzy.ready & ( combo_points < 3 || ( time < 10 & combo_points < 4 ) ) || time < 10 & combo_points < 4 ) & cooldown.convoke_the_spirits.remains < 10 ) )",
								["action"] = "berserk",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "berserk",
								["cycle_targets"] = 1,
								["criteria"] = "! variable.align_cds & ! ( ! talent.frantic_momentum.enabled & equipped.witherbarks_branch & spell_targets.swipe_cat = 1 ) & ( ( ! variable.lastzerk ) || ( variable.lastzerk & ! variable.lastconvoke ) || ( variable.lastconvoke & ( cooldown.convoke_the_spirits.remains < 10 & ( ! set_bonus.tier31_2pc || set_bonus.tier31_2pc & buff.smoldering_frenzy.up ) ) ) ) & ( ( target.time_to_die < fight_remains & target.time_to_die > 18 ) || target.time_to_die = fight_remains )",
								["description"] = "Hold your last berserk cast to line it up with convoke",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "with left/right build and witherbarks/ashes equipped, we treat berserk as a 2 minute cooldown (single target)",
								["criteria"] = "boss & fight_remains < 23 || ( ( time + 118 )  % 120 ) < 30 & ! talent.frantic_momentum.enabled & ( equipped.witherbarks_branch || equipped.ashes_of_the_embersoul ) & spell_targets.swipe_cat = 1",
								["action"] = "berserk",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! variable.align_3minutes || buff.bs_inc.up",
								["action"] = "berserking",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bs_inc.up || fight_remains < 32 || ( ! variable.lastzerk & variable.lastconvoke & cooldown.convoke_the_spirits.remains < 10 )",
								["action"] = "potion",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.smoldering_frenzy.up & ( ! talent.convoke_the_spirits.enabled || cooldown.convoke_the_spirits.remains < 10 ) ) || ! set_bonus.tier31_4pc & ( cooldown.convoke_the_spirits.remains = 0 || ! talent.convoke_the_spirits.enabled & buff.bs_inc.up ) )",
								["name"] = "ashes_of_the_embersoul",
								["action"] = "ashes_of_the_embersoul",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.convoke_the_spirits.enabled || action.feral_frenzy.ready || ! set_bonus.tier31_4pc ) & ! ( trinket.t1.is.ashes_of_the_embersoul & trinket.t1.cooldown.remains < 20 || trinket.t2.is.ashes_of_the_embersoul & trinket.t2.cooldown.remains < 20 )",
								["name"] = "witherbarks_branch",
								["action"] = "witherbarks_branch",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( ! variable.align_3minutes || buff.bs_inc.up & buff.bs_inc.remains > 15 || variable.lastconvoke & ! variable.lastzerk & cooldown.convoke_the_spirits.remains < 1 ) & ( target.time_to_die < fight_remains & target.time_to_die > 16 || target.time_to_die = fight_remains )",
								["name"] = "mirror_of_fractured_tomorrows",
								["action"] = "mirror_of_fractured_tomorrows",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "convoke_the_spirits",
								["criteria"] = "fight_remains < 5 || ( buff.smoldering_frenzy.up || ! set_bonus.tier31_4pc ) & ( dot.rip.remains > 4 - talent.ashamanes_guidance.enabled & buff.tigers_fury.up & combo_points < 2 ) & ( debuff.dire_fixation.up || ! talent.dire_fixation.enabled || spell_targets.swipe_cat > 1 ) & ( ( target.time_to_die < fight_remains & target.time_to_die > 5 - talent.ashamanes_guidance.enabled ) || target.time_to_die = fight_remains )",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["description"] = "convoke early if you can't fit another gcd and have the entirety of convoke in smoldering window",
								["criteria"] = "buff.smoldering_frenzy.up & buff.smoldering_frenzy.remains < 5.1 - talent.ashamanes_guidance.enabled",
								["action"] = "convoke_the_spirits",
							}, -- [13]
							{
								["enabled"] = true,
								["name"] = "manic_grieftorch",
								["cycle_targets"] = 1,
								["action"] = "manic_grieftorch",
								["criteria"] = "energy.deficit > 40",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! equipped.ashes_of_the_embersoul & ! equipped.witherbarks_branch || ( ( trinket.t2.is.witherbarks_branch || trinket.t2.is.ashes_of_the_embersoul ) & trinket.t2.cooldown.remains > 20 ) || ( ( trinket.t1.is.witherbarks_branch || trinket.t1.is.ashes_of_the_embersoul ) & trinket.t1.cooldown.remains > 20 )",
								["name"] = "mydas_talisman",
								["action"] = "mydas_talisman",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! equipped.ashes_of_the_embersoul & ! equipped.witherbarks_branch || ( ( trinket.t2.is.witherbarks_branch || trinket.t2.is.ashes_of_the_embersoul ) & trinket.t2.cooldown.remains > 20 ) || ( ( trinket.t1.is.witherbarks_branch || trinket.t1.is.ashes_of_the_embersoul ) & trinket.t1.cooldown.remains > 20 )",
								["name"] = "bandolier_of_twisted_blades",
								["action"] = "bandolier_of_twisted_blades",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! equipped.ashes_of_the_embersoul & ! equipped.witherbarks_branch || ( ( trinket.t2.is.witherbarks_branch || trinket.t2.is.ashes_of_the_embersoul ) & trinket.t2.cooldown.remains > 20 ) || ( ( trinket.t1.is.witherbarks_branch || trinket.t1.is.ashes_of_the_embersoul ) & trinket.t1.cooldown.remains > 20 )",
								["name"] = "fyrakks_tainted_rageheart",
								["action"] = "fyrakks_tainted_rageheart",
							}, -- [17]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [18]
						},
						["berserk_builders"] = {
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_bt_triggers = 2 & buff.bt_brutal_slash.down",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["version"] = 20231126,
					["warnings"] = "The import for 'bloodtalons' required some automated changes.\nLine 16: Converted 'talent.wild_slashes' to 'talent.wild_slashes.enabled' (1x).\nLine 18: Converted 'talent.dire_fixation' to 'talent.dire_fixation.enabled' (1x).\nLine 18: Converted 'talent.wild_slashes' to 'talent.wild_slashes.enabled' (1x).\n\nThe import for 'berserk' required some automated changes.\nLine 10: Converted 'talent.thrashing_claws' to 'talent.thrashing_claws.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 8: Converted operations in 'fight_remains>(30+(cooldown.bs_inc.remains%1.6))&((talent.berserk_heart_of_the_lion.enabled&fight_remains<(90+(cooldown.bs_inc.remains%1.6)))||(!talent.berserk_heart_of_the_lion.enabled&fight_remains<(180+cooldown.bs_inc.remains)))' to 'fight_remains>(30+(cooldown.bs_inc.remains/1.6))&((talent.berserk_heart_of_the_lion.enabled&fight_remains<(90+(cooldown.bs_inc.remains/1.6)))||(!talent.berserk_heart_of_the_lion.enabled&fight_remains<(180+cooldown.bs_inc.remains)))'.\n\nThe import for 'aoe_builder' required some automated changes.\nLine 2: Converted 'talent.thrashing_claws' to 'talent.thrashing_claws.enabled' (1x).\nLine 6: Converted 'talent.thrashing_claws' to 'talent.thrashing_claws.enabled' (1x).\nLine 11: Converted 'talent.wild_slashes' to 'talent.wild_slashes.enabled' (1x).\nLine 13: Converted 'talent.wild_slashes' to 'talent.wild_slashes.enabled' (1x).\n\nThe import for 'cooldown' required some automated changes.\nLine 6: Converted operations in 'boss&fight_remains<23||((time+118)%%120)<30&!talent.frantic_momentum.enabled&(equipped.witherbarks_branch||equipped.ashes_of_the_embersoul)&spell_targets.swipe_cat=1' to 'boss&fight_remains<23||((time+118)%120)<30&!talent.frantic_momentum.enabled&(equipped.witherbarks_branch||equipped.ashes_of_the_embersoul)&spell_targets.swipe_cat=1'.\nLine 10: Converted 'trinket.1.is.ashes_of_the_embersoul' to 'trinket.t1.is.ashes_of_the_embersoul' (1x).\nLine 10: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 10: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 10: Converted 'trinket.2.is.ashes_of_the_embersoul' to 'trinket.t2.is.ashes_of_the_embersoul' (1x).\nLine 10: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 10: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 12: Converted 'talent.ashamanes_guidance' to 'talent.ashamanes_guidance.enabled' (1x).\nLine 13: Converted 'talent.ashamanes_guidance' to 'talent.ashamanes_guidance.enabled' (1x).\nLine 15: Converted 'trinket.2.is.witherbarks_branch' to 'trinket.t2.is.witherbarks_branch' (1x).\nLine 15: Converted 'trinket.2.is.ashes_of_the_embersoul' to 'trinket.t2.is.ashes_of_the_embersoul' (1x).\nLine 15: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 15: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 15: Converted 'trinket.1.is.witherbarks_branch' to 'trinket.t1.is.witherbarks_branch' (1x).\nLine 15: Converted 'trinket.1.is.ashes_of_the_embersoul' to 'trinket.t1.is.ashes_of_the_embersoul' (1x).\nLine 15: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 15: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 16: Converted 'trinket.2.is.witherbarks_branch' to 'trinket.t2.is.witherbarks_branch' (1x).\nLine 16: Converted 'trinket.2.is.ashes_of_the_embersoul' to 'trinket.t2.is.ashes_of_the_embersoul' (1x).\nLine 16: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 16: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 16: Converted 'trinket.1.is.witherbarks_branch' to 'trinket.t1.is.witherbarks_branch' (1x).\nLine 16: Converted 'trinket.1.is.ashes_of_the_embersoul' to 'trinket.t1.is.ashes_of_the_embersoul' (1x).\nLine 16: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 16: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 17: Converted 'trinket.2.is.witherbarks_branch' to 'trinket.t2.is.witherbarks_branch' (1x).\nLine 17: Converted 'trinket.2.is.ashes_of_the_embersoul' to 'trinket.t2.is.ashes_of_the_embersoul' (1x).\nLine 17: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 17: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 17: Converted 'trinket.1.is.witherbarks_branch' to 'trinket.t1.is.witherbarks_branch' (1x).\nLine 17: Converted 'trinket.1.is.ashes_of_the_embersoul' to 'trinket.t1.is.ashes_of_the_embersoul' (1x).\nLine 17: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 17: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\n\nImported 10 action lists.\n",
					["spec"] = 103,
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=buff.prowl.down\nactions.precombat+=/use_item,name=algethar_puzzle_box\nactions.precombat+=/heart_of_the_wild,if=buff.any_form.up&buff.cat_form.down\nactions.precombat+=/prowl\nactions.precombat+=/cat_form\n\nactions+=/skull_bash\nactions+=/soothe\n# Executed every time the actor is available.\nactions+=/prowl,if=(buff.bs_inc.down||time=0)&!buff.prowl.up\nactions+=/cat_form,if=!buff.cat_form.up\n### Sending <a href='https://www.wowhead.com/spell=10060/power-infusion'>Power Infusion</a> on cooldown is optimal as it often lines up with berserk especially since Feral Druids will often treat Berserk as a 2 minute cooldown now.\n## actions+=/invoke_external_buff,name=power_infusion,if=!variable.align_cds||variable.align_cds&buff.bs_inc.up||fight_remains<25\nactions+=/variable,name=need_bt,value=talent.bloodtalons.enabled&buff.bloodtalons.stack<=1\n# this variable holds 3 minute cds to use with 3rd zerk in single target situations\nactions+=/variable,name=align_3minutes,value=spell_targets.swipe_cat=1&boss\n# this variable checks if there is exactly 1 convoke cast remaining in the sim\nactions+=/variable,name=lastconvoke,value=fight_remains>cooldown.convoke_the_spirits.remains+3&((talent.ashamanes_guidance.enabled&fight_remains<(cooldown.convoke_the_spirits.remains+60))||(!talent.ashamanes_guidance.enabled&fight_remains<(cooldown.convoke_the_spirits.remains+120)))\n# this variable checks if there is exactly 1 berserk cast remaining in the sim\nactions+=/variable,name=lastzerk,value=fight_remains>(30+(cooldown.bs_inc.remains%1.6))&((talent.berserk_heart_of_the_lion.enabled&fight_remains<(90+(cooldown.bs_inc.remains%1.6)))||(!talent.berserk_heart_of_the_lion.enabled&fight_remains<(180+cooldown.bs_inc.remains)))\n### this optional variable sends bites and maintains pw during berserk regardless of talents. Turned off by default\n## actions+=/variable,name=zerk_biteweave,op=reset\n### this optional variable sends regrowth and renewal casts. Turned off by default. THIS IS A DPS LOSS EVEN WITHOUT TOXIC THORN\n## actions+=/variable,name=regrowth,op=reset\n### this optional variable avoids using shred in AoE situations. Turned off by default. THIS IS A DPS LOSS\n## actions+=/variable,name=easy_swipe,op=reset\n### this variable make the sim always align berserk with convoke\nactions+=/variable,name=force_align_2min,op=reset\n# this variable checks the fight timer and trinkets to decide if itll be more dps to align berserk with 2 minute convoke\nactions+=/variable,name=align_cds,value=(variable.force_align_2min||equipped.witherbarks_branch||equipped.ashes_of_the_embersoul||(time+fight_remains>150&time+fight_remains<200||time+fight_remains>270&time+fight_remains<295||time+fight_remains>395&time+fight_remains<400||time+fight_remains>490&time+fight_remains<495))&talent.convoke_the_spirits.enabled&boss&spell_targets.swipe_cat=1&set_bonus.tier31_2pc\nactions+=/tigers_fury,cycle_targets=1,if=!set_bonus.tier31_4pc&talent.convoke_the_spirits.enabled||!buff.tigers_fury.up||energy.deficit>65||set_bonus.tier31_2pc&action.feral_frenzy.ready||target.time_to_die<15&talent.predator.enabled\nactions+=/rake,cycle_targets=1,if=(down||persistent_multiplier>dot.rake.pmultiplier)&(buff.prowl.up||buff.shadowmeld.up)\nactions+=/natures_vigil,if=time>0\nactions+=/renewal,if=filler_regrowth&health.pct<60\nactions+=/adaptive_swarm,cycle_targets=1,if=(!dot.adaptive_swarm_damage.ticking||dot.adaptive_swarm_damage.remains<2)&dot.adaptive_swarm_damage.stack<3&!action.adaptive_swarm_damage.in_flight&!action.adaptive_swarm.in_flight&target.time_to_die>5,if=!talent.unbridled_swarm.enabled||spell_targets.swipe_cat=1\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack<3&talent.unbridled_swarm.enabled&spell_targets.swipe_cat>1\n# cooldown and feral frenzy have 2 lines, as a delayed opener to get bt rip is worth it for 2m convoke the spirits in ST\nactions+=/call_action_list,name=cooldown,if=(time>3||!talent.dire_fixation.enabled||debuff.dire_fixation.up&combo_points<4||spell_targets.swipe_cat>1)&!(spell_targets=1&talent.convoke_the_spirits.enabled)||dot.rip.ticking\nactions+=/feral_frenzy,cycle_targets=1,if=((combo_points<3||time<10&combo_points<4)&(!talent.dire_fixation.enabled||debuff.dire_fixation.up||spell_targets.swipe_cat>1)&(target.time_to_die<fight_remains&target.time_to_die>6||target.time_to_die=fight_remains))&!(spell_targets=1&talent.convoke_the_spirits.enabled)\nactions+=/feral_frenzy,if=combo_points<3&debuff.dire_fixation.up&dot.rip.ticking&(spell_targets=1&talent.convoke_the_spirits.enabled)\nactions+=/ferocious_bite,cycle_targets=1,if=buff.apex_predators_craving.up&(spell_targets.swipe_cat=1||!talent.primal_wrath.enabled||!buff.sabertooth.up)&!(variable.need_bt&active_bt_triggers=2)\nactions+=/run_action_list,name=berserk,strict=1,if=buff.bs_inc.up\n## actions+=/wait,sec=combo_points.time_to_max,if=combo_points=4&buff.predator_revealed.react&energy.deficit>40&spell_targets.swipe_cat=1&combo_points.time_to_max<gcd.max\nactions+=/call_action_list,name=finisher,if=combo_points>=4\nactions+=/call_action_list,name=aoe_builder,if=spell_targets.swipe_cat>1&combo_points<4\nactions+=/call_action_list,name=builder,if=!buff.bs_inc.up&spell_targets.swipe_cat=1&combo_points<4\nactions+=/regrowth,if=energy<25&buff.predatory_swiftness.up&!buff.clearcasting.up&filler_regrowth\n\n# if you need to proc bloodtalons, skip actions that you've already casted towards bloodtalons\nactions.aoe_builder+=/brutal_slash,cycle_targets=1,if=(cooldown.brutal_slash.full_recharge_time<4||target.time_to_die<5)&!((variable.need_bt||buff.bs_inc.up)&buff.bt_brutal_slash.up)\nactions.aoe_builder+=/thrash_cat,if=dot.thrash_cat.remains<3&(!buff.sudden_ambush.up||!talent.doubleclawed_rake.enabled)&!talent.thrashing_claws\nactions.aoe_builder+=/prowl,cycle_targets=1,if=(dot.rake.pmultiplier<1.6||dot.rake.refreshable)&!(variable.need_bt&buff.bt_rake.up)\nactions.aoe_builder+=/shadowmeld,cycle_targets=1,if=(dot.rake.pmultiplier<1.6||dot.rake.refreshable)&!(variable.need_bt&buff.bt_rake.up)\nactions.aoe_builder+=/rake,cycle_targets=1,if=(buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier||dot.rake.refreshable)&!(variable.need_bt&buff.bt_rake.up)\nactions.aoe_builder+=/thrash_cat,if=refreshable&!talent.thrashing_claws\nactions.aoe_builder+=/brutal_slash,if=!(variable.need_bt&buff.bt_brutal_slash.up)\nactions.aoe_builder+=/swipe_cat,if=spell_targets.swipe_cat>4&!(variable.need_bt&buff.bt_swipe.up)\n# prio targets with swarm debuff for moonfire\nactions.aoe_builder+=/moonfire_cat,cycle_targets=1,if=dot.moonfire.refreshable&!(variable.need_bt&buff.bt_moonfire.up)\nactions.aoe_builder+=/swipe_cat,if=!(variable.need_bt&buff.bt_swipe.up)\n# if we have brs and nothing better to cast, refresh thrash early at 4+ targets unless dire fixation is talented\nactions.aoe_builder+=/shred,cycle_targets=1,if=(spell_targets.swipe_cat<4||talent.dire_fixation.enabled)&!buff.sudden_ambush.up&!(variable.lazy_swipe&talent.wild_slashes)\nactions.aoe_builder+=/thrash_cat\nactions.aoe_builder+=/shred,cycle_targets=1,if=(spell_targets.swipe_cat<4||talent.dire_fixation.enabled)&!buff.sudden_ambush.up&!(settings.lazy_swipe&talent.wild_slashes)&!(variable.need_bt&buff.bt_shred.up)\nactions.aoe_builder+=/thrash_cat,if=!(variable.need_bt&buff.bt_thrash.up)\n# fallback bloodtalons actions below this point\nactions.aoe_builder+=/shred,cycle_targets=1,if=!settings.lazy_swipe&variable.need_bt&buff.bt_shred.down\nactions.aoe_builder+=/moonfire_cat,cycle_targets=1,if=variable.need_bt&buff.bt_moonfire.down\nactions.aoe_builder+=/rake,cycle_targets=1,if=variable.need_bt&buff.bt_rake.down\n\nactions.berserk+=/ferocious_bite,cycle_targets=1,if=combo_points=5&dot.rip.remains>8&variable.zerk_biteweave&spell_targets.swipe_cat>1\n# proc bt if 0/1 stack if 5/6 combo points with t30 only (~0.25% dps loss at 5/6 and less than 0.1% dps loss to build at 5cp with t31)\nactions.berserk+=/call_action_list,name=finisher,if=combo_points=5&!(buff.overflowing_power.stack<=1&active_bt_triggers=2&buff.bloodtalons.stack<=1&set_bonus.tier30_4pc)\nactions.berserk+=/run_action_list,name=aoe_builder,if=spell_targets.swipe_cat>1\nactions.berserk+=/prowl,if=!(buff.bt_rake.up&active_bt_triggers=2)&(action.rake.ready&gcd.remains=0&!buff.sudden_ambush.up&(dot.rake.refreshable||dot.rake.pmultiplier<1.4)&!buff.shadowmeld.up)\nactions.berserk+=/shadowmeld,if=!(buff.bt_rake.up&active_bt_triggers=2)&action.rake.ready&!buff.sudden_ambush.up&(dot.rake.refreshable||dot.rake.pmultiplier<1.4)&!buff.prowl.up\nactions.berserk+=/rake,if=!(buff.bt_rake.up&active_bt_triggers=2)&(dot.rake.remains<3||buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier)\n# in single target, you just proc bt when an opportunity arises\nactions.berserk+=/shred,if=active_bt_triggers=2&buff.bt_shred.down\nactions.berserk+=/brutal_slash,if=active_bt_triggers=2&buff.bt_brutal_slash.down\nactions.berserk+=/moonfire_cat,if=active_bt_triggers=2&buff.bt_moonfire.down\nactions.berserk+=/thrash_cat,if=active_bt_triggers=2&buff.bt_thrash.down&!talent.thrashing_claws&variable.need_bt\nactions.berserk+=/moonfire_cat,if=refreshable\nactions.berserk+=/brutal_slash,if=cooldown.brutal_slash.charges>1&(!talent.dire_fixation.enabled||debuff.dire_fixation.up)\nactions.berserk+=/shred\n\nactions.berserk_builders+=/rake,cycle_targets=1,if=refreshable\nactions.berserk_builders+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.berserk_builders+=/brutal_slash,if=active_bt_triggers=2&buff.bt_brutal_slash.down\nactions.berserk_builders+=/shred\n\nactions.bloodtalons+=/brutal_slash,if=(cooldown.brutal_slash.full_recharge_time<4||target.time_to_die<5)&(buff.bt_brutal_slash.down&(buff.bs_inc.up||variable.need_bt))\nactions.bloodtalons+=/prowl,if=action.rake.ready&!buff.sudden_ambush.up&(dot.rake.refreshable||dot.rake.pmultiplier<1.4)&!buff.shadowmeld.up&buff.bt_rake.down&!buff.prowl.up&!buff.apex_predators_craving.up\nactions.bloodtalons+=/shadowmeld,if=action.rake.ready&!buff.sudden_ambush.up&(dot.rake.refreshable||dot.rake.pmultiplier<1.4)&!buff.prowl.up&buff.bt_rake.down&cooldown.feral_frenzy.remains<44&!buff.apex_predators_craving.up\nactions.bloodtalons+=/rake,cycle_targets=1,if=(refreshable||buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier)&buff.bt_rake.down\nactions.bloodtalons+=/rake,cycle_targets=1,if=buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier&buff.bt_rake.down\nactions.bloodtalons+=/shred,if=buff.bt_shred.down&buff.clearcasting.react&spell_targets.swipe_cat=1\nactions.bloodtalons+=/thrash_cat,cycle_targets=1,if=refreshable&buff.bt_thrash.down&buff.clearcasting.react&spell_targets.swipe_cat=1&!talent.thrashing_claws.enabled\nactions.bloodtalons+=/brutal_slash,if=buff.bt_brutal_slash.down\nactions.bloodtalons+=/moonfire_cat,if=refreshable&buff.bt_moonfire.down&spell_targets.swipe_cat=1\nactions.bloodtalons+=/thrash_cat,cycle_targets=1,if=refreshable&buff.bt_thrash.down&!talent.thrashing_claws.enabled\nactions.bloodtalons+=/shred,if=buff.bt_shred.down&spell_targets.swipe_cat=1&(!talent.wild_slashes.enabled||(!debuff.dire_fixation.up&talent.dire_fixation.enabled))\nactions.bloodtalons+=/swipe_cat,if=buff.bt_swipe.down&talent.wild_slashes.enabled\nactions.bloodtalons+=/moonfire_cat,cycle_targets=1,max_cycle_targets=3,if=buff.bt_moonfire.down&spell_targets.swipe_cat<5\nactions.bloodtalons+=/swipe_cat,if=buff.bt_swipe.down\nactions.bloodtalons+=/moonfire_cat,cycle_targets=1,if=buff.bt_moonfire.down\n# If we have BrS and nothing better to cast, thrash at 5+ targets unless dire fixation is talented.\nactions.bloodtalons+=/shred,cycle_targets=1,if=(spell_targets>5||talent.dire_fixation.enabled)&buff.bt_shred.down&!buff.sudden_ambush.up&!(variable.lazy_swipe&talent.wild_slashes)\nactions.bloodtalons+=/thrash_cat,if=buff.bt_thrash.down\n# This just finds the best reapplication if you really need 3rd builder for bt\nactions.bloodtalons+=/rake,cycle_targets=1,if=buff.bt_rake.down&(spell_targets.swipe_cat>4&!talent.dire_fixation||talent.wild_slashes&variable.lazy_swipe)\n\n# if you need to proc bloodtalons, skip actions that you've already casted towards bloodtalons\nactions.builder+=/thrash_cat,if=refreshable&(!talent.dire_fixation.enabled||talent.dire_fixation.enabled&debuff.dire_fixation.up)&buff.clearcasting.react&!talent.thrashing_claws.enabled\nactions.builder+=/shred,if=(buff.clearcasting.react||(talent.dire_fixation.enabled&!debuff.dire_fixation.up))&!(variable.need_bt&buff.bt_shred.up)\nactions.builder+=/brutal_slash,if=cooldown.brutal_slash.full_recharge_time<4&!(variable.need_bt&buff.bt_brutal_slash.up)\n# stop pooling if clearcasting procs\nactions.builder+=/pool_resource,if=!action.rake.ready&(dot.rake.refreshable||(buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier&dot.rake.remains>6))&!buff.clearcasting.react&!(variable.need_bt&buff.bt_rake.up)\nactions.builder+=/shadowmeld,if=action.rake.ready&!buff.sudden_ambush.up&(dot.rake.refreshable||dot.rake.pmultiplier<1.4)&!(variable.need_bt&buff.bt_rake.up)&!buff.prowl.up\nactions.builder+=/rake,if=(refreshable||buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier)&!(variable.need_bt&buff.bt_rake.up)\nactions.builder+=/moonfire_cat,cycle_targets=1,if=refreshable\nactions.builder+=/thrash_cat,cycle_targets=1,if=refreshable&!talent.thrashing_claws.enabled\nactions.builder+=/brutal_slash,if=!(variable.need_bt&buff.bt_brutal_slash.up)\nactions.builder+=/swipe_cat,if=spell_targets.swipe_cat>1||(talent.wild_slashes.enabled&(debuff.dire_fixation.up||!talent.dire_fixation.enabled))\nactions.builder+=/shred,if=!(variable.need_bt&buff.bt_shred.up)\n# fallback bloodtalons actions below this point\nactions.builder+=/moonfire_cat,if=variable.need_bt&buff.bt_moonfire.down\nactions.builder+=/swipe_cat,if=variable.need_bt&buff.bt_swipe.down\nactions.builder+=/rake,if=variable.need_bt&buff.bt_rake.down&persistent_multiplier>=dot.rake.pmultiplier\nactions.builder+=/thrash_cat,if=variable.need_bt&buff.bt_thrash.down\n\nactions.cooldown+=/use_item,name=algethar_puzzle_box,if=fight_remains<35||(!variable.align_3minutes)\nactions.cooldown+=/use_item,name=algethar_puzzle_box,if=variable.align_3minutes&(cooldown.bs_inc.remains<3&(!variable.lastzerk||!variable.lastconvoke||(variable.lastconvoke&cooldown.convoke_the_spirits.remains<13)))\nactions.cooldown+=/incarnation,cycle_targets=1,if=(target.time_to_die<fight_remains&target.time_to_die>25)||target.time_to_die=fight_remains\n# With Convoke on certain fight timers it can be correct to hold berserk for convoke\nactions.cooldown+=/berserk,if=fight_remains<25||talent.convoke_the_spirits.enabled&(fight_remains<cooldown.convoke_the_spirits.remains||(variable.align_cds&(action.feral_frenzy.ready&(combo_points<3||(time<10&combo_points<4))||time<10&combo_points<4)&cooldown.convoke_the_spirits.remains<10))\n# Hold your last berserk cast to line it up with convoke\nactions.cooldown+=/berserk,cycle_targets=1,if=!variable.align_cds&!(!talent.frantic_momentum.enabled&equipped.witherbarks_branch&spell_targets.swipe_cat=1)&((!variable.lastzerk)||(variable.lastzerk&!variable.lastconvoke)||(variable.lastconvoke&(cooldown.convoke_the_spirits.remains<10&(!set_bonus.tier31_2pc||set_bonus.tier31_2pc&buff.smoldering_frenzy.up))))&((target.time_to_die<fight_remains&target.time_to_die>18)||target.time_to_die=fight_remains)\n# with left/right build and witherbarks/ashes equipped, we treat berserk as a 2 minute cooldown (single target)\nactions.cooldown+=/berserk,if=boss&fight_remains<23||((time+118)%%120)<30&!talent.frantic_momentum.enabled&(equipped.witherbarks_branch||equipped.ashes_of_the_embersoul)&spell_targets.swipe_cat=1\nactions.cooldown+=/berserking,if=!variable.align_3minutes||buff.bs_inc.up\nactions.cooldown+=/potion,if=buff.bs_inc.up||fight_remains<32||(!variable.lastzerk&variable.lastconvoke&cooldown.convoke_the_spirits.remains<10)\nactions.cooldown+=/use_item,name=ashes_of_the_embersoul,if=((buff.smoldering_frenzy.up&(!talent.convoke_the_spirits.enabled||cooldown.convoke_the_spirits.remains<10))||!set_bonus.tier31_4pc&(cooldown.convoke_the_spirits.remains=0||!talent.convoke_the_spirits.enabled&buff.bs_inc.up))\nactions.cooldown+=/use_item,name=witherbarks_branch,if=(!talent.convoke_the_spirits.enabled||action.feral_frenzy.ready||!set_bonus.tier31_4pc)&!(trinket.1.is.ashes_of_the_embersoul&trinket.1.cooldown.remains<20||trinket.2.is.ashes_of_the_embersoul&trinket.2.cooldown.remains<20)\nactions.cooldown+=/use_item,name=mirror_of_fractured_tomorrows,if=(!variable.align_3minutes||buff.bs_inc.up&buff.bs_inc.remains>15||variable.lastconvoke&!variable.lastzerk&cooldown.convoke_the_spirits.remains<1)&(target.time_to_die<fight_remains&target.time_to_die>16||target.time_to_die=fight_remains)\nactions.cooldown+=/convoke_the_spirits,cycle_targets=1,if=fight_remains<5||(buff.smoldering_frenzy.up||!set_bonus.tier31_4pc)&(dot.rip.remains>4-talent.ashamanes_guidance&buff.tigers_fury.up&combo_points<2)&(debuff.dire_fixation.up||!talent.dire_fixation.enabled||spell_targets.swipe_cat>1)&((target.time_to_die<fight_remains&target.time_to_die>5-talent.ashamanes_guidance.enabled)||target.time_to_die=fight_remains)\n# convoke early if you can't fit another gcd and have the entirety of convoke in smoldering window\nactions.cooldown+=/convoke_the_spirits,if=buff.smoldering_frenzy.up&buff.smoldering_frenzy.remains<5.1-talent.ashamanes_guidance\nactions.cooldown+=/use_item,name=manic_grieftorch,cycle_targets=1,if=energy.deficit>40\nactions.cooldown+=/use_item,name=mydas_talisman,if=!equipped.ashes_of_the_embersoul&!equipped.witherbarks_branch||((trinket.2.is.witherbarks_branch||trinket.2.is.ashes_of_the_embersoul)&trinket.2.cooldown.remains>20)||((trinket.1.is.witherbarks_branch||trinket.1.is.ashes_of_the_embersoul)&trinket.1.cooldown.remains>20)\nactions.cooldown+=/use_item,name=bandolier_of_twisted_blades,if=!equipped.ashes_of_the_embersoul&!equipped.witherbarks_branch||((trinket.2.is.witherbarks_branch||trinket.2.is.ashes_of_the_embersoul)&trinket.2.cooldown.remains>20)||((trinket.1.is.witherbarks_branch||trinket.1.is.ashes_of_the_embersoul)&trinket.1.cooldown.remains>20)\nactions.cooldown+=/use_item,name=fyrakks_tainted_rageheart,if=!equipped.ashes_of_the_embersoul&!equipped.witherbarks_branch||((trinket.2.is.witherbarks_branch||trinket.2.is.ashes_of_the_embersoul)&trinket.2.cooldown.remains>20)||((trinket.1.is.witherbarks_branch||trinket.1.is.ashes_of_the_embersoul)&trinket.1.cooldown.remains>20)\nactions.cooldown+=/use_items\n\nactions.finisher+=/pool_resource,for_next=1,if=buff.bs_inc.up\nactions.finisher+=/primal_wrath,if=(dot.primal_wrath.refreshable||(talent.tear_open_wounds.enabled||(spell_targets.swipe_cat>4&!talent.rampant_ferocity.enabled)))&spell_targets.primal_wrath>1&talent.primal_wrath.enabled\n# with t31 you can rip a few seconds early as to use bite inside of feral frenzy instead. During smoldering you can delay refreshing rip.\nactions.finisher+=/rip,cycle_targets=1,if=((set_bonus.tier31_2pc&cooldown.feral_frenzy.remains<2&dot.rip.remains<10)||(time<8||buff.bloodtalons.up||!talent.bloodtalons.enabled||(buff.bs_inc.up&dot.rip.remains<2))&refreshable)&(!talent.primal_wrath.enabled||spell_targets.swipe_cat=1)&!(buff.smoldering_frenzy.up&dot.rip.remains>2)\nactions.finisher+=/pool_resource,for_next=1,if=!action.tigers_fury.ready&buff.apex_predators_craving.down\nactions.finisher+=/ferocious_bite,max_energy=1,cycle_targets=1,if=buff.apex_predators_craving.down&(!buff.bs_inc.up||buff.bs_inc.up&!talent.soul_of_the_forest.enabled)\nactions.finisher+=/ferocious_bite,cycle_targets=1,if=(buff.bs_inc.up&talent.soul_of_the_forest.enabled)||buff.apex_predators_craving.up\n\nactions.owlweaving+=/sunfire,line_cd=4*gcd",
				},
				["Restoration Druid"] = {
					["builtIn"] = true,
					["date"] = 20231201,
					["spec"] = 105,
					["desc"] = "Healer priorities are DPS-focused only.\n\n2023-11-11:  Minor update from SimC.\n\n2023-11-05:  Patch 10.2.\n\n2023-07-24:  Ferocious Bite on targets with Rip when target cycling is enabled.\n\n2023-03-23:  Minor tweaks to Cat Form priority from SimulationCraft.",
					["profile"] = "actions.precombat+=/heart_of_the_wild\nactions.precombat+=/prowl,if=talent.rake.enabled\nactions.precombat+=/cat_form,if=time=0&buff.moonkin_form.down&talent.rake.enabled\nactions.precombat+=/moonkin_form,if=time=0&buff.cat_form.down&talent.moonkin_form.enabled\n\n# Executed every time the actor is available.\nactions+=/skull_bash\nactions+=/solar_beam\nactions+=/berserking\n## actions+=/natures_vigil,if=!buff.prowl.up&!buff.shadowmeld.up\n## actions+=/regrowth,if=!buff.prowl.up&!buff.shadowmeld.up&settings.heal_in_groups,line_cd=7\nactions+=/use_items,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/potion,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/run_action_list,name=cat,if=talent.rake.enabled||buff.cat_form.up\nactions+=/run_action_list,name=owl,if=active_enemies>2&talent.moonkin_form.enabled&talent.convoke_the_spirits.enabled&cooldown.convoke_the_spirits.remains<=gcd.max&(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions+=/moonkin_form,if=talent.moonkin_form.enabled&buff.cat_form.down\nactions+=/convoke_the_spirits,if=(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=2&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=1&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=3&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=4&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=!dot.adaptive_swarm_damage.ticking\nactions+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>5&talent.improved_sunfire.enabled\nactions+=/moonfire,cycle_targets=1,if=refreshable&time_to_die>12\nactions+=/starsurge,if=active_enemies<8\nactions+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>7&active_enemies<7\nactions+=/starfire,if=spell_targets.starfire>1||buff.heart_of_the_wild.up\nactions+=/wrath\n\nactions.cat+=/rake,if=buff.shadowmeld.up||buff.prowl.up||buff.sudden_ambush.up\nactions.cat+=/heart_of_the_wild,if=(cooldown.convoke_the_spirits.remains<40||!talent.convoke_the_spirits.enabled)||boss&fight_remains<46\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=2&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=1&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=3&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=4&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=!dot.adaptive_swarm_damage.ticking\nactions.cat+=/run_action_list,name=owl,if=active_enemies>2&talent.moonkin_form.enabled&talent.convoke_the_spirits.enabled&cooldown.convoke_the_spirits.remains<=gcd.max&(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions.cat+=/cat_form,if=(active_enemies<2||!talent.moonkin_form.enabled)&(!buff.cat_form.up&talent.convoke_the_spirits.enabled&cooldown.convoke_the_spirits.remains<=gcd.max&(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled))\nactions.cat+=/convoke_the_spirits,if=(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions.cat+=/rip,target_if=((refreshable||energy>90&remains<=10)&(combo_points=5&time_to_die>remains+24||(remains+combo_points*4<time_to_die&remains+4+combo_points*4>time_to_die))||!ticking&combo_points>2+spell_targets.swipe_cat*2)\nactions.cat+=/thrash_cat,cycle_targets=1,if=refreshable&target.time_to_die>5&spell_targets.thrash_cat>4\nactions.cat+=/sunfire,cycle_targets=1,if=(refreshable&target.time_to_die>5)&!prev_gcd.1.cat_form&(active_enemies=1||talent.improved_sunfire.enabled)\nactions.cat+=/cat_form,if=!buff.cat_form.up&energy>50&(dot.thrash_cat.refreshable&spell_targets.swipe_cat>=9&talent.thrash.enabled)&cooldown.healing.remains>(gcd.max*2)\nactions.cat+=/moonfire,cycle_targets=1,if=(refreshable&time_to_die>12&!ticking||(prev_gcd.1.sunfire&remains<duration*0.8&spell_targets.sunfire=1))&!prev_gcd.1.cat_form&spell_targets.swipe_cat<7\nactions.cat+=/sunfire,if=prev_gcd.1.moonfire&remains<duration*0.8\nactions.cat+=/moonkin_form,if=talent.master_shapeshifter.enabled&((buff.heart_of_the_wild.up&spell_targets.starfire>6)||spell_targets.starfire>6)\nactions.cat+=/starfire,if=buff.moonkin_form.up&(talent.master_shapeshifter.enabled&((buff.heart_of_the_wild.up&spell_targets.starfire>6)||spell_targets.starfire>6))\nactions.cat+=/starsurge,if=active_enemies=1||(active_enemies<8&!buff.cat_form.up)\nactions.cat+=/cat_form,if=!buff.cat_form.up&energy>50\nactions.cat+=/ferocious_bite,cycle_targets=1,if=(combo_points>3&target.time_to_die<3)||(combo_points=5&energy>=50&dot.rip.remains>10)&spell_targets.swipe_cat<4\nactions.cat+=/thrash_cat,cycle_targets=1,if=refreshable&target.time_to_die>5&spell_targets.thrash_cat>2\nactions.cat+=/rake,target_if=refreshable&time_to_die>10&spell_targets.swipe_cat<10\nactions.cat+=/swipe_cat,if=active_enemies>3&combo_points<5&talent.improved_swipe.enabled\nactions.cat+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>5&active_enemies<7&!talent.improved_sunfire.enabled\nactions.cat+=/thrash_cat,cycle_targets=1,if=refreshable&target.time_to_die>5\nactions.cat+=/shred,if=energy>60&combo_points<5\nactions.cat+=/wrath,if=energy<15\n\nactions.owl+=/moonkin_form,if=!buff.moonkin_form.up\nactions.owl+=/convoke_the_spirits",
					["version"] = 20231201,
					["warnings"] = "Imported 4 action lists.\n",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "skull_bash",
							}, -- [1]
							{
								["action"] = "solar_beam",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ! buff.shadowmeld.up",
								["action"] = "use_items",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ! buff.shadowmeld.up",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.rake.enabled || buff.cat_form.up",
								["action"] = "run_action_list",
								["list_name"] = "cat",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & talent.moonkin_form.enabled & talent.convoke_the_spirits.enabled & cooldown.convoke_the_spirits.remains <= gcd.max & ( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["action"] = "run_action_list",
								["list_name"] = "owl",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.moonkin_form.enabled & buff.cat_form.down",
								["action"] = "moonkin_form",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["action"] = "convoke_the_spirits",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 2 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 1 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 3 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 4 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "! dot.adaptive_swarm_damage.ticking",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & target.time_to_die > 5 & talent.improved_sunfire.enabled",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & time_to_die > 12",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 8",
								["action"] = "starsurge",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & target.time_to_die > 7 & active_enemies < 7",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.starfire > 1 || buff.heart_of_the_wild.up",
								["action"] = "starfire",
							}, -- [19]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [20]
						},
						["owl"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.moonkin_form.up",
								["action"] = "moonkin_form",
							}, -- [1]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [2]
						},
						["cat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.shadowmeld.up || buff.prowl.up || buff.sudden_ambush.up",
								["action"] = "rake",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.convoke_the_spirits.remains < 40 || ! talent.convoke_the_spirits.enabled ) || boss & fight_remains < 46",
								["action"] = "heart_of_the_wild",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 2 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 1 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 3 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 4 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "! dot.adaptive_swarm_damage.ticking",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & talent.moonkin_form.enabled & talent.convoke_the_spirits.enabled & cooldown.convoke_the_spirits.remains <= gcd.max & ( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["action"] = "run_action_list",
								["list_name"] = "owl",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies < 2 || ! talent.moonkin_form.enabled ) & ( ! buff.cat_form.up & talent.convoke_the_spirits.enabled & cooldown.convoke_the_spirits.remains <= gcd.max & ( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled ) )",
								["action"] = "cat_form",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["action"] = "convoke_the_spirits",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( ( refreshable || energy > 90 & remains <= 10 ) & ( combo_points = 5 & time_to_die > remains + 24 || ( remains + combo_points * 4 < time_to_die & remains + 4 + combo_points * 4 > time_to_die ) ) || ! ticking & combo_points > 2 + spell_targets.swipe_cat * 2 )",
								["action"] = "rip",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & target.time_to_die > 5 & spell_targets.thrash_cat > 4",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "( refreshable & target.time_to_die > 5 ) & ! prev_gcd.1.cat_form & ( active_enemies = 1 || talent.improved_sunfire.enabled )",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up & energy > 50 & ( dot.thrash_cat.refreshable & spell_targets.swipe_cat >= 9 & talent.thrash.enabled ) & cooldown.healing.remains > ( gcd.max * 2 )",
								["action"] = "cat_form",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "( refreshable & time_to_die > 12 & ! ticking || ( prev_gcd.1.sunfire & remains < duration * 0.8 & spell_targets.sunfire = 1 ) ) & ! prev_gcd.1.cat_form & spell_targets.swipe_cat < 7",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.moonfire & remains < duration * 0.8",
								["action"] = "sunfire",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_shapeshifter.enabled & ( ( buff.heart_of_the_wild.up & spell_targets.starfire > 6 ) || spell_targets.starfire > 6 )",
								["action"] = "moonkin_form",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.up & ( talent.master_shapeshifter.enabled & ( ( buff.heart_of_the_wild.up & spell_targets.starfire > 6 ) || spell_targets.starfire > 6 ) )",
								["action"] = "starfire",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 || ( active_enemies < 8 & ! buff.cat_form.up )",
								["action"] = "starsurge",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up & energy > 50",
								["action"] = "cat_form",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "( combo_points > 3 & target.time_to_die < 3 ) || ( combo_points = 5 & energy >= 50 & dot.rip.remains > 10 ) & spell_targets.swipe_cat < 4",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & target.time_to_die > 5 & spell_targets.thrash_cat > 2",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & time_to_die > 10 & spell_targets.swipe_cat < 10",
								["action"] = "rake",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3 & combo_points < 5 & talent.improved_swipe.enabled",
								["action"] = "swipe_cat",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & target.time_to_die > 5 & active_enemies < 7 & ! talent.improved_sunfire.enabled",
								["cycle_targets"] = 1,
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & target.time_to_die > 5",
								["cycle_targets"] = 1,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "energy > 60 & combo_points < 5",
								["action"] = "shred",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "energy < 15",
								["action"] = "wrath",
							}, -- [28]
						},
						["precombat"] = {
							{
								["action"] = "heart_of_the_wild",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.rake.enabled",
								["action"] = "prowl",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time = 0 & buff.moonkin_form.down & talent.rake.enabled",
								["action"] = "cat_form",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "time = 0 & buff.cat_form.down & talent.moonkin_form.enabled",
								["action"] = "moonkin_form",
							}, -- [4]
						},
					},
					["author"] = "Makahiki",
				},
				["Retribution"] = {
					["builtIn"] = true,
					["date"] = 20231128,
					["spec"] = 70,
					["desc"] = "2023-11-27:  Usable mainhands for Ret.\n\n2023-11-08: Minor SimC update.\n\n2023-07-14: Update for 10.1.5.\n\n2023-06-24: Execution Sentence usage adjusted for Executioner's Will.\n\n2023-05-18: More work to let abilities synced abilities desync if the other ability is disabled/toggled/etc.\n\n2023-05-17: Iterate on FR/AW sync to allow spenders to be used while waiting for FR/AW.\n\n2023-05-14:  Improve FR/AW sync.\n\n2023-05-08:  More 10.1 updates.\n\n2023-05-02:  10.1 update.\n\n2023-03-28:  Update potion end-of-fight usage to check for boss.\n\n2023-03-21:  10.0.7 priority update.\n\n2023-03-13:  Edits to support finishers during Crusade procs from Retribution Aura.\n\n2023-02-21:  Iterate on trinket timing (end of bossfight logic).",
					["profile"] = "actions.precombat+=/arcane_torrent,if=talent.final_reckoning\nactions.precombat+=/shield_of_vengeance\nactions.precombat+=/variable,name=trinket_1_buffs,value=trinket.1.has_buff.strength||trinket.1.has_buff.mastery||trinket.1.has_buff.versatility||trinket.1.has_buff.haste||trinket.1.has_buff.crit\nactions.precombat+=/variable,name=trinket_2_buffs,value=trinket.2.has_buff.strength||trinket.2.has_buff.mastery||trinket.2.has_buff.versatility||trinket.2.has_buff.haste||trinket.2.has_buff.crit\nactions.precombat+=/variable,name=trinket_1_sync,op=setif,value=1,value_else=0.5,condition=variable.trinket_1_buffs&(trinket.1.cooldown.duration%%cooldown.crusade.duration=0||cooldown.crusade.duration%%trinket.1.cooldown.duration=0||trinket.1.cooldown.duration%%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%%trinket.1.cooldown.duration=0)\nactions.precombat+=/variable,name=trinket_2_sync,op=setif,value=1,value_else=0.5,condition=variable.trinket_2_buffs&(trinket.2.cooldown.duration%%cooldown.crusade.duration=0||cooldown.crusade.duration%%trinket.2.cooldown.duration=0||trinket.2.cooldown.duration%%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%%trinket.2.cooldown.duration=0)\nactions.precombat+=/variable,name=trinket_priority,op=setif,value=2,value_else=1,condition=!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.2.cooldown.duration%trinket.2.proc.any_dps.duration)*(1.5+trinket.2.has_buff.strength)*(variable.trinket_2_sync))>((trinket.1.cooldown.duration%trinket.1.proc.any_dps.duration)*(1.5+trinket.1.has_buff.strength)*(variable.trinket_1_sync))\n\n# Executed every time the actor is available.\nactions+=/rebuke\nactions+=/variable,name=time_to_crusade,op=setif,value=cooldown.crusade.remains<?buff.crusade.remains,value_else=0,condition=talent.crusade\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=generators\n\nactions.cooldowns=potion,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10||boss&fight_remains<25\n## actions.cooldowns+=/invoke_external_buff,name=power_infusion,if=buff.avenging_wrath.up||buff.crusade.up\nactions.cooldowns+=/lights_judgment,if=spell_targets.lights_judgment>=2||!raid_event.adds.exists||raid_event.adds.in>75||raid_event.adds.up\nactions.cooldowns+=/fireblood,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.cooldowns+=/use_item,name=algethar_puzzle_box,if=(cooldown.avenging_wrath.remains<5&!talent.crusade||cooldown.crusade.remains<5&talent.crusade)&(holy_power>=4&time<5||holy_power>=3&time>5)\nactions.cooldowns+=/use_item,slot=trinket1,if=(buff.avenging_wrath.up&cooldown.avenging_wrath.remains>40||buff.crusade.up&buff.crusade.stack=10)&(!trinket.2.has_cooldown||trinket.2.cooldown.remains||variable.trinket_priority=1)||trinket.1.proc.any_dps.duration>=fight_remains\nactions.cooldowns+=/use_item,slot=trinket2,if=(buff.avenging_wrath.up&cooldown.avenging_wrath.remains>40||buff.crusade.up&buff.crusade.stack=10)&(!trinket.1.has_cooldown||trinket.1.cooldown.remains||variable.trinket_priority=2)||trinket.2.proc.any_dps.duration>=fight_remains\nactions.cooldowns+=/use_item,slot=trinket1,if=!variable.trinket_1_buffs&(trinket.2.cooldown.remains||!variable.trinket_2_buffs||!buff.crusade.up&cooldown.crusade.remains>20||!buff.avenging_wrath.up&cooldown.avenging_wrath.remains>20)\nactions.cooldowns+=/use_item,slot=trinket2,if=!variable.trinket_2_buffs&(trinket.1.cooldown.remains||!variable.trinket_1_buffs||!buff.crusade.up&cooldown.crusade.remains>20||!buff.avenging_wrath.up&cooldown.avenging_wrath.remains>20)\nactions.cooldowns+=/use_item,name=main_hand,if=(trinket.2.cooldown.remains||!variable.trinket_2_buffs)&(trinket.2.cooldown.remains||!variable.trinket_2_buffs)\nactions.cooldowns+=/use_item,name=shadowed_razing_annihilator,if=(trinket.2.cooldown.remains||!variable.trinket_2_buffs)&(trinket.2.cooldown.remains||!variable.trinket_2_buffs)\nactions.cooldowns+=/use_item,name=fyralath_the_dreamrender,if=dot.mark_of_fyralath.ticking&!buff.avenging_wrath.up&!buff.crusade.up\nactions.cooldowns+=/shield_of_vengeance,if=fight_remains>15&(!talent.execution_sentence||!debuff.execution_sentence.up)\nactions.cooldowns+=/execution_sentence,if=(!buff.crusade.up&cooldown.crusade.remains>15||buff.crusade.stack=10||cooldown.avenging_wrath.remains<0.75||cooldown.avenging_wrath.remains>15)&(holy_power>=4&time<5||holy_power>=3&time>5||holy_power>=2&talent.divine_auxiliary)&(target.time_to_die>8&!talent.executioners_will||target.time_to_die>12)\nactions.cooldowns+=/avenging_wrath,if=holy_power>=4&time<5||holy_power>=3&time>5||holy_power>=2&talent.divine_auxiliary&(talent.execution_sentence&(cooldown.execution_sentence.remains=0||cooldown.execution_sentence.remains>15||action.execution_sentence.disabled)||talent.final_reckoning&(cooldown.final_reckoning.remains=0||cooldown.final_reckoning.remains>30||action.final_reckoning.disabled))\nactions.cooldowns+=/crusade,if=buff.crusade.remains<gcd.max&(holy_power>=5&time<5||holy_power>=3&time>5)\nactions.cooldowns+=/final_reckoning,if=(holy_power>=4&time<8||holy_power>=3&time>=8||holy_power>=2&talent.divine_auxiliary)&(!talent.crusade&(buff.avenging_wrath.up||cooldown.avenging_wrath.remains>30||action.avenging_wrath.disabled)||talent.crusade&(cooldown.crusade.remains>30&(!buff.crusade.up||buff.crusade.stack>=10)||action.crusade.disabled))&(time_to_hpg>0||holy_power=5||holy_power>=2&talent.divine_auxiliary)\n\nactions.finishers+=/variable,name=ds_castable,value=(spell_targets.divine_storm>=3||spell_targets.divine_storm>=2&!talent.divine_arbiter||buff.empyrean_power.up)&!buff.empyrean_legacy.up&!(buff.divine_arbiter.up&buff.divine_arbiter.stack>24)\nactions.finishers+=/divine_storm,if=variable.ds_castable&(!talent.crusade||cooldown.crusade.remains>gcd*3||buff.crusade.up&buff.crusade.stack<10)\nactions.finishers+=/justicars_vengeance,if=!talent.crusade||cooldown.crusade.remains>gcd*3||buff.crusade.up&buff.crusade.stack<10\nactions.finishers+=/templars_verdict,if=!talent.crusade||cooldown.crusade.remains>gcd*3||buff.crusade.up&buff.crusade.stack<10\n\nactions.generators+=/call_action_list,name=finishers,if=holy_power=5||buff.echoes_of_wrath.up&set_bonus.tier31_4pc&talent.crusading_strikes||(debuff.judgment.up||holy_power=4)&buff.divine_resonance.up&!set_bonus.tier31_2pc\nactions.generators+=/blade_of_justice,if=!dot.expurgation.ticking&holy_power<=3&set_bonus.tier31_2pc\nactions.generators+=/wake_of_ashes,if=holy_power<=2&(cooldown.avenging_wrath.remains||cooldown.crusade.remains||!talent.crusade&action.avenging_wrath.disabled||talent.crusade&action.crusade.disabled)&(!talent.execution_sentence||cooldown.execution_sentence.remains>4||target.time_to_die<8||action.execution_sentence.disabled)\nactions.generators+=/blade_of_justice,if=!dot.expurgation.ticking&set_bonus.tier31_2pc\nactions.generators+=/divine_toll,if=holy_power<=2&(!raid_event.adds.exists||raid_event.adds.in>30||raid_event.adds.up)&(cooldown.avenging_wrath.remains>15||cooldown.crusade.remains>15||fight_remains<8)\nactions.generators+=/judgment,if=dot.expurgation.ticking&!buff.echoes_of_wrath.up&set_bonus.tier31_2pc\nactions.generators+=/call_action_list,name=finishers,strict=1,if=holy_power>=3&buff.crusade.up&buff.crusade.stack<10\nactions.generators+=/templar_slash,if=buff.templar_strikes.remains<gcd&spell_targets.divine_storm>=2\nactions.generators+=/blade_of_justice,if=(holy_power<=3||!talent.holy_blade)&(spell_targets.divine_storm>=2&!talent.crusading_strikes||spell_targets.divine_storm>=4)\nactions.generators+=/hammer_of_wrath,if=(spell_targets.divine_storm<2||!talent.blessed_champion||set_bonus.tier30_4pc)&(holy_power<=3||target.health.pct>20||!talent.vanguards_momentum)\nactions.generators+=/templar_slash,if=buff.templar_strikes.remains<gcd\nactions.generators+=/judgment,if=!debuff.judgment.up&(holy_power<=3||!talent.boundless_judgment)\nactions.generators+=/blade_of_justice,if=holy_power<=3||!talent.holy_blade\nactions.generators+=/call_action_list,name=finishers,strict=1,if=(target.health.pct<=20||buff.avenging_wrath.up||buff.crusade.up||buff.empyrean_power.up)\nactions.generators+=/consecration,if=!consecration.up&spell_targets.divine_storm>=2\nactions.generators+=/divine_hammer,if=spell_targets.divine_storm>=2\nactions.generators+=/crusader_strike,if=cooldown.crusader_strike.charges_fractional>=1.75&(holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2)\nactions.generators+=/call_action_list,name=finishers\nactions.generators+=/templar_slash\nactions.generators+=/templar_strike\nactions.generators+=/judgment,if=holy_power<=3||!talent.boundless_judgment\nactions.generators+=/hammer_of_wrath,if=holy_power<=3||target.health.pct>20||!talent.vanguards_momentum\nactions.generators+=/crusader_strike\nactions.generators+=/arcane_torrent\nactions.generators+=/consecration\nactions.generators+=/divine_hammer",
					["version"] = 20231128,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 2: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 1: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 3: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 3: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_buff.mastery' (1x).\nLine 3: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_buff.versatility' (1x).\nLine 3: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_buff.haste' (1x).\nLine 3: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_buff.crit' (1x).\nLine 3: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 4: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_buff.mastery' (1x).\nLine 4: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_buff.versatility' (1x).\nLine 4: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_buff.haste' (1x).\nLine 4: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_buff.crit' (1x).\nLine 4: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted operations in 'variable.trinket_1_buffs&(trinket.t1.cooldown.duration%%cooldown.crusade.duration=0||cooldown.crusade.duration%%trinket.t1.cooldown.duration=0||trinket.t1.cooldown.duration%%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%%trinket.t1.cooldown.duration=0)' to 'variable.trinket_1_buffs&(trinket.t1.cooldown.duration%cooldown.crusade.duration=0||cooldown.crusade.duration%trinket.t1.cooldown.duration=0||trinket.t1.cooldown.duration%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%trinket.t1.cooldown.duration=0)'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted operations in 'variable.trinket_2_buffs&(trinket.t2.cooldown.duration%%cooldown.crusade.duration=0||cooldown.crusade.duration%%trinket.t2.cooldown.duration=0||trinket.t2.cooldown.duration%%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%%trinket.t2.cooldown.duration=0)' to 'variable.trinket_2_buffs&(trinket.t2.cooldown.duration%cooldown.crusade.duration=0||cooldown.crusade.duration%trinket.t2.cooldown.duration=0||trinket.t2.cooldown.duration%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%trinket.t2.cooldown.duration=0)'.\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 7: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 7: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 7: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 7: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 7: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 7: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 7: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 7: Converted operations in '!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.t2.cooldown.duration%trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration%trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))' to '!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.t2.cooldown.duration/trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration/trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))'.\nThe following auras were used in the action list but were not found in the addon database:\n - crit\n\nThe import for 'cooldowns' required some automated changes.\nLine 4: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 4: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 5: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 5: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 5: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 6: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 6: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 7: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 8: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 8: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 9: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 9: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 9: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 9: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 10: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 10: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 10: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 10: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 12: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 13: Converted 'talent.divine_auxiliary' to 'talent.divine_auxiliary.enabled' (1x).\nLine 13: Converted 'talent.executioners_will' to 'talent.executioners_will.enabled' (1x).\nLine 14: Converted 'talent.divine_auxiliary' to 'talent.divine_auxiliary.enabled' (1x).\nLine 14: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 14: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 16: Converted 'talent.divine_auxiliary' to 'talent.divine_auxiliary.enabled' (1x).\nLine 16: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 16: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 16: Converted 'talent.divine_auxiliary' to 'talent.divine_auxiliary.enabled' (1x).\n\nThe import for 'finishers' required some automated changes.\nLine 1: Converted 'talent.divine_arbiter' to 'talent.divine_arbiter.enabled' (1x).\nLine 2: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 3: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 4: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\n\nThe import for 'generators' required some automated changes.\nLine 1: Converted 'talent.crusading_strikes' to 'talent.crusading_strikes.enabled' (1x).\nLine 3: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 3: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 3: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 9: Converted 'talent.holy_blade' to 'talent.holy_blade.enabled' (1x).\nLine 9: Converted 'talent.crusading_strikes' to 'talent.crusading_strikes.enabled' (1x).\nLine 10: Converted 'talent.blessed_champion' to 'talent.blessed_champion.enabled' (1x).\nLine 10: Converted 'talent.vanguards_momentum' to 'talent.vanguards_momentum.enabled' (1x).\nLine 12: Converted 'talent.boundless_judgment' to 'talent.boundless_judgment.enabled' (1x).\nLine 13: Converted 'talent.holy_blade' to 'talent.holy_blade.enabled' (1x).\nLine 21: Converted 'talent.boundless_judgment' to 'talent.boundless_judgment.enabled' (1x).\nLine 22: Converted 'talent.vanguards_momentum' to 'talent.vanguards_momentum.enabled' (1x).\n\nImported 5 action lists.\n",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "rebuke",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "time_to_crusade",
								["criteria"] = "talent.crusade.enabled",
								["value_else"] = "0",
								["value"] = "cooldown.crusade.remains <? buff.crusade.remains",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generators",
							}, -- [4]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.final_reckoning.enabled",
								["action"] = "arcane_torrent",
							}, -- [1]
							{
								["action"] = "shield_of_vengeance",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff",
								["var_name"] = "trinket_1_buffs",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff",
								["var_name"] = "trinket_2_buffs",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_1_sync",
								["criteria"] = "variable.trinket_1_buffs & ( trinket.t1.cooldown.duration % cooldown.crusade.duration = 0 || cooldown.crusade.duration % trinket.t1.cooldown.duration = 0 || trinket.t1.cooldown.duration % cooldown.avenging_wrath.duration = 0 || cooldown.avenging_wrath.duration % trinket.t1.cooldown.duration = 0 )",
								["value_else"] = "0.5",
								["value"] = "1",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_2_sync",
								["criteria"] = "variable.trinket_2_buffs & ( trinket.t2.cooldown.duration % cooldown.crusade.duration = 0 || cooldown.crusade.duration % trinket.t2.cooldown.duration = 0 || trinket.t2.cooldown.duration % cooldown.avenging_wrath.duration = 0 || cooldown.avenging_wrath.duration % trinket.t2.cooldown.duration = 0 )",
								["value_else"] = "0.5",
								["value"] = "1",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_priority",
								["criteria"] = "! variable.trinket_1_buffs & variable.trinket_2_buffs || variable.trinket_2_buffs & ( ( trinket.t2.cooldown.duration / trinket.t2.buff_duration ) * ( 1.5 + trinket.t2.has_use_buff ) * ( variable.trinket_2_sync ) ) > ( ( trinket.t1.cooldown.duration / trinket.t1.buff_duration ) * ( 1.5 + trinket.t1.has_use_buff ) * ( variable.trinket_1_sync ) )",
								["value_else"] = "1",
								["value"] = "2",
							}, -- [7]
						},
						["generators"] = {
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 5 || buff.echoes_of_wrath.up & set_bonus.tier31_4pc & talent.crusading_strikes.enabled || ( debuff.judgment.up || holy_power = 4 ) & buff.divine_resonance.up & ! set_bonus.tier31_2pc",
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.expurgation.ticking & holy_power <= 3 & set_bonus.tier31_2pc",
								["action"] = "blade_of_justice",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 & ( cooldown.avenging_wrath.remains || cooldown.crusade.remains || ! talent.crusade.enabled & action.avenging_wrath.disabled || talent.crusade.enabled & action.crusade.disabled ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > 4 || target.time_to_die < 8 || action.execution_sentence.disabled )",
								["action"] = "wake_of_ashes",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! dot.expurgation.ticking & set_bonus.tier31_2pc",
								["action"] = "blade_of_justice",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 & ( ! raid_event.adds.exists || raid_event.adds.in > 30 || raid_event.adds.up ) & ( cooldown.avenging_wrath.remains > 15 || cooldown.crusade.remains > 15 || fight_remains < 8 )",
								["action"] = "divine_toll",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.expurgation.ticking & ! buff.echoes_of_wrath.up & set_bonus.tier31_2pc",
								["action"] = "judgment",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "holy_power >= 3 & buff.crusade.up & buff.crusade.stack < 10",
								["list_name"] = "finishers",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.templar_strikes.remains < gcd.max & spell_targets.divine_storm >= 2",
								["action"] = "templar_slash",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( holy_power <= 3 || ! talent.holy_blade.enabled ) & ( spell_targets.divine_storm >= 2 & ! talent.crusading_strikes.enabled || spell_targets.divine_storm >= 4 )",
								["action"] = "blade_of_justice",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.divine_storm < 2 || ! talent.blessed_champion.enabled || set_bonus.tier30_4pc ) & ( holy_power <= 3 || target.health.pct > 20 || ! talent.vanguards_momentum.enabled )",
								["action"] = "hammer_of_wrath",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.templar_strikes.remains < gcd.max",
								["action"] = "templar_slash",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up & ( holy_power <= 3 || ! talent.boundless_judgment.enabled )",
								["action"] = "judgment",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 3 || ! talent.holy_blade.enabled",
								["action"] = "blade_of_justice",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "( target.health.pct <= 20 || buff.avenging_wrath.up || buff.crusade.up || buff.empyrean_power.up )",
								["list_name"] = "finishers",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up & spell_targets.divine_storm >= 2",
								["action"] = "consecration",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.divine_storm >= 2",
								["action"] = "divine_hammer",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.crusader_strike.charges_fractional >= 1.75 & ( holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd.max * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd.max * 2 & cooldown.judgment.remains > gcd.max * 2 )",
								["action"] = "crusader_strike",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [18]
							{
								["action"] = "templar_slash",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "templar_strike",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 3 || ! talent.boundless_judgment.enabled",
								["action"] = "judgment",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 3 || target.health.pct > 20 || ! talent.vanguards_momentum.enabled",
								["action"] = "hammer_of_wrath",
							}, -- [22]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [24]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [25]
							{
								["action"] = "divine_hammer",
								["enabled"] = true,
							}, -- [26]
						},
						["finishers"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( spell_targets.divine_storm >= 3 || spell_targets.divine_storm >= 2 & ! talent.divine_arbiter.enabled || buff.empyrean_power.up ) & ! buff.empyrean_legacy.up & ! ( buff.divine_arbiter.up & buff.divine_arbiter.stack > 24 )",
								["var_name"] = "ds_castable",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.ds_castable & ( ! talent.crusade.enabled || cooldown.crusade.remains > gcd.max * 3 || buff.crusade.up & buff.crusade.stack < 10 )",
								["action"] = "divine_storm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.crusade.enabled || cooldown.crusade.remains > gcd.max * 3 || buff.crusade.up & buff.crusade.stack < 10",
								["action"] = "justicars_vengeance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! talent.crusade.enabled || cooldown.crusade.remains > gcd.max * 3 || buff.crusade.up & buff.crusade.stack < 10",
								["action"] = "templars_verdict",
							}, -- [4]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 || boss & fight_remains < 25",
								["action"] = "potion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.lights_judgment >= 2 || ! raid_event.adds.exists || raid_event.adds.in > 75 || raid_event.adds.up",
								["action"] = "lights_judgment",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["action"] = "fireblood",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "algethar_puzzle_box",
								["criteria"] = "( cooldown.avenging_wrath.remains < 5 & ! talent.crusade.enabled || cooldown.crusade.remains < 5 & talent.crusade.enabled ) & ( holy_power >= 4 & time < 5 || holy_power >= 3 & time > 5 )",
								["name"] = "algethar_puzzle_box",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["criteria"] = "( buff.avenging_wrath.up & cooldown.avenging_wrath.remains > 40 || buff.crusade.up & buff.crusade.stack = 10 ) & ( ! trinket.t2.has_cooldown || trinket.t2.cooldown.remains || variable.trinket_priority = 1 ) || trinket.t1.buff_duration >= fight_remains",
								["slot"] = "trinket1",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["criteria"] = "( buff.avenging_wrath.up & cooldown.avenging_wrath.remains > 40 || buff.crusade.up & buff.crusade.stack = 10 ) & ( ! trinket.t1.has_cooldown || trinket.t1.cooldown.remains || variable.trinket_priority = 2 ) || trinket.t2.buff_duration >= fight_remains",
								["slot"] = "trinket2",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["criteria"] = "! variable.trinket_1_buffs & ( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs || ! buff.crusade.up & cooldown.crusade.remains > 20 || ! buff.avenging_wrath.up & cooldown.avenging_wrath.remains > 20 )",
								["slot"] = "trinket1",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["criteria"] = "! variable.trinket_2_buffs & ( trinket.t1.cooldown.remains || ! variable.trinket_1_buffs || ! buff.crusade.up & cooldown.crusade.remains > 20 || ! buff.avenging_wrath.up & cooldown.avenging_wrath.remains > 20 )",
								["slot"] = "trinket2",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "main_hand",
								["criteria"] = "( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs ) & ( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs )",
								["name"] = "main_hand",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "shadowed_razing_annihilator",
								["criteria"] = "( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs ) & ( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs )",
								["name"] = "shadowed_razing_annihilator",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "fyralath_the_dreamrender",
								["criteria"] = "dot.mark_of_fyralath.ticking & ! buff.avenging_wrath.up & ! buff.crusade.up",
								["name"] = "fyralath_the_dreamrender",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 15 & ( ! talent.execution_sentence.enabled || ! debuff.execution_sentence.up )",
								["action"] = "shield_of_vengeance",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( ! buff.crusade.up & cooldown.crusade.remains > 15 || buff.crusade.stack = 10 || cooldown.avenging_wrath.remains < 0.75 || cooldown.avenging_wrath.remains > 15 ) & ( holy_power >= 4 & time < 5 || holy_power >= 3 & time > 5 || holy_power >= 2 & talent.divine_auxiliary.enabled ) & ( target.time_to_die > 8 & ! talent.executioners_will.enabled || target.time_to_die > 12 )",
								["action"] = "execution_sentence",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 4 & time < 5 || holy_power >= 3 & time > 5 || holy_power >= 2 & talent.divine_auxiliary.enabled & ( talent.execution_sentence.enabled & ( cooldown.execution_sentence.remains = 0 || cooldown.execution_sentence.remains > 15 || action.execution_sentence.disabled ) || talent.final_reckoning.enabled & ( cooldown.final_reckoning.remains = 0 || cooldown.final_reckoning.remains > 30 || action.final_reckoning.disabled ) )",
								["action"] = "avenging_wrath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.crusade.remains < gcd.max & ( holy_power >= 5 & time < 5 || holy_power >= 3 & time > 5 )",
								["action"] = "crusade",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( holy_power >= 4 & time < 8 || holy_power >= 3 & time >= 8 || holy_power >= 2 & talent.divine_auxiliary.enabled ) & ( ! talent.crusade.enabled & ( buff.avenging_wrath.up || cooldown.avenging_wrath.remains > 30 || action.avenging_wrath.disabled ) || talent.crusade.enabled & ( cooldown.crusade.remains > 30 & ( ! buff.crusade.up || buff.crusade.stack >= 10 ) || action.crusade.disabled ) ) & ( time_to_hpg > 0 || holy_power = 5 || holy_power >= 2 & talent.divine_auxiliary.enabled )",
								["action"] = "final_reckoning",
							}, -- [16]
						},
					},
					["author"] = "SimC",
				},
				["Balance"] = {
					["source"] = "https://balance-simc.github.io/Balance-SimC/md.html?file=balance.txt",
					["builtIn"] = true,
					["date"] = 20231207,
					["author"] = "SimC",
					["desc"] = "2023-12-06 & 07: Resync variables; restore fallthru priority.\n\n2023-11-13: Sim updates.\n\n2023-11-05: Patch 10.2.\n\n2023-09-10: Minor update to trinket and flow.\n\n2023-08-08: Minor SimC update.\n\n2023-07-11: Patch 10.1.5 update.\n\n2023-06-24:  Adjust AOE variable, Solar Eclipse ST variable, AOE Starfire/Wrath usage in Eclipses.\n\n2023-05-28:  Minor update for Spoils trinket.\n\n2023-05-22:  Tweak Fury of Elune.\n\n2023-05-20:  Starlord canceling is a thing again.\n\n2023-05-13:  Use new action.X.energize_amount syntax from SimC.\n\n2023-05-08:  Updates from SimC impacting Starsurge usage.\n\n2023-05-06:  Minor updates.\n\n2023-05-02:  Updates for 10.1 from SimC.\n\n2023-04-17:  Adjust on_use_trinket variable.\n\n2023-02-25:  Added single-target use of Starfall with Touch the Cosmos.",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "solar_beam",
							}, -- [1]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time < gcd.max & ( eclipse.any_next || eclipse.lunar_next )",
								["action"] = "wrath",
								["line_cd"] = "5",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & time < 2 * gcd.max & buff.eclipse_lunar.up",
								["action"] = "stellar_flare",
								["line_cd"] = "5",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.stellar_flare.enabled & time < 2 * gcd.max & buff.eclipse_lunar.up",
								["action"] = "starfire",
								["line_cd"] = "5",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfall > ( 1 + ( ! talent.aetherial_kindling.enabled & ! talent.starweaver.enabled ) ) & talent.starfall.enabled",
								["var_name"] = "is_aoe",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "6 / spell_haste + talent.natures_balance.enabled + talent.orbit_breaker.enabled * dot.moonfire.ticking * ( buff.orbit_breaker.stack > ( 27 - 2 * buff.solstice.up ) ) * 40",
								["var_name"] = "passive_asp",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.remains >= 20 || variable.no_cd_talent || boss & fight_remains < 15",
								["action"] = "berserking",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! druid.no_cds & ( buff.ca_inc.remains >= 20 || variable.no_cd_talent || boss & fight_remains < 30 )",
								["action"] = "potion",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.on_use_trinket != 1 & ! trinket.t2.ready_cooldown || ( variable.on_use_trinket = 1 || variable.on_use_trinket = 3 ) & buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 20 || variable.on_use_trinket = 0",
								["slots"] = "trinket1",
								["action"] = "trinket1",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.on_use_trinket != 2 & ! trinket.t1.ready_cooldown || variable.on_use_trinket = 2 & buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 20 || variable.on_use_trinket = 0",
								["slots"] = "trinket2",
								["action"] = "trinket2",
							}, -- [11]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "natures_vigil",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "variable.is_aoe",
								["list_name"] = "aoe",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "! variable.is_aoe",
								["list_name"] = "st",
							}, -- [15]
						},
						["precombat"] = {
							{
								["action"] = "moonkin_form",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "mark_of_the_wild",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.celestial_alignment.enabled & ! talent.incarnation_chosen_of_elune.enabled || druid.no_cds",
								["var_name"] = "no_cd_talent",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["var_name"] = "on_use_trinket",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "trinket.t1.has_use_buff & trinket.t1.cooldown.duration > 0 || trinket.t1.is.spoils_of_neltharus || trinket.t1.is.mirror_of_fractured_tomorrows",
								["var_name"] = "on_use_trinket",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "2",
								["criteria"] = "trinket.t2.has_use_buff & trinket.t2.cooldown.duration > 0 || trinket.t2.is.spoils_of_neltharus || trinket.t2.is.mirror_of_fractured_tomorrows",
								["var_name"] = "on_use_trinket",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( eclipse.any_next || eclipse.lunar_next )",
								["action"] = "wrath",
							}, -- [7]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "! boss & refreshable & ( target.time_to_die - remains ) > 6 & astral_power.deficit > variable.passive_asp + energize_amount",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! druid.no_cds & ( cooldown.ca_inc.remains < 5 & ! buff.ca_inc.up & ( target.time_to_die > 10 & buff.primordial_arcanic_pulsar.value < 500 || fight_remains < 25 + 10 * talent.incarnation_chosen_of_elune.enabled ) )",
								["var_name"] = "cd_condition_aoe",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & ( target.time_to_die - remains ) > 6 - ( spell_targets / 2 ) & astral_power.deficit > variable.passive_asp + energize_amount",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "boss & refreshable & ( target.time_to_die - remains ) > 6 & astral_power.deficit > variable.passive_asp + energize_amount",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & ( target.time_to_die - remains - spell_targets.starfire ) > 8 + spell_targets.starfire & astral_power.deficit > variable.passive_asp + energize_amount & spell_targets.starfire < ( 11 - talent.umbral_intensity.rank - talent.astral_smolder.rank ) & variable.cd_condition_aoe",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.cd_condition_aoe & ( talent.orbital_strike.enabled & astral_power.deficit < variable.passive_asp + 8 * spell_targets || buff.touch_the_cosmos.up ) || astral_power.deficit < ( variable.passive_asp + 8 + 12 * ( buff.eclipse_lunar.remains < 4 || buff.eclipse_solar.remains < 4 ) )",
								["var_name"] = "starfall_condition1",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.starlord.remains < 2 & variable.starfall_condition1",
								["action"] = "cancel_buff",
								["buff_name"] = "starlord",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.starfall_condition1",
								["action"] = "starfall",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe",
								["action"] = "celestial_alignment",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe",
								["action"] = "incarnation",
							}, -- [10]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfire < 3",
								["var_name"] = "enter_solar",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.enter_solar & ( eclipse.any_next || buff.eclipse_solar.remains < action.starfire.cast_time )",
								["action"] = "starfire",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! variable.enter_solar & ( eclipse.any_next || buff.eclipse_lunar.remains < action.wrath.cast_time )",
								["action"] = "wrath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( ! talent.waning_twilight.enabled || dot.fungal_growth.remains < 2 & target.time_to_die > 7 & ! prev_gcd.1.wild_mushroom )",
								["action"] = "wild_mushroom",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 2 & ( buff.ca_inc.remains > 3 || cooldown.ca_inc.remains > 30 & buff.primordial_arcanic_pulsar.value <= 280 || buff.primordial_arcanic_pulsar.value >= 560 & astral_power > 50 ) || boss & fight_remains < 10",
								["action"] = "fury_of_elune",
							}, -- [16]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "target.time_to_die > 4 & ( buff.starweavers_warp.up || talent.starlord.enabled & buff.starlord.stack < 3 )",
								["var_name"] = "starfall_condition2",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.starlord.remains < 2 & variable.starfall_condition2",
								["action"] = "cancel_buff",
								["buff_name"] = "starlord",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "variable.starfall_condition2",
								["action"] = "starfall",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + energize_amount & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time ) & ( buff.ca_inc.up || charges_fractional > 2.5 & buff.primordial_arcanic_pulsar.value <= 520 & cooldown.ca_inc.remains > 10 || fight_remains < 10 )",
								["action"] = "full_moon",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_weft.up & spell_targets.starfire < 3",
								["action"] = "starsurge",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & ( target.time_to_die - remains - spell_targets.starfire ) > 8 + spell_targets.starfire & astral_power.deficit > variable.passive_asp + energize_amount & spell_targets.starfire < ( 11 - talent.umbral_intensity.rank - talent.astral_smolder.rank )",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + energize_amount",
								["action"] = "astral_communion",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "astral_power < 50 & spell_targets.starfall < 3 + talent.elunes_guidance.enabled & ( buff.eclipse_lunar.remains > 4 || buff.eclipse_solar.remains > 4 )",
								["action"] = "convoke_the_spirits",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + energize_amount",
								["action"] = "new_moon",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + energize_amount & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "half_moon",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + energize_amount",
								["action"] = "force_of_nature",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 10",
								["action"] = "new_moon",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "half_moon",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20",
								["action"] = "force_of_nature",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_weft.up & spell_targets.starfire < 17",
								["action"] = "starsurge",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets > ( 3 - ( buff.dreamstate.up || buff.balance_t31_4pc_buff_lunar.stack > buff.balance_t31_4pc_buff_solar.stack ) ) & buff.eclipse_lunar.up || eclipse.in_lunar",
								["action"] = "starfire",
							}, -- [32]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [33]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [34]
						},
						["fallthru"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.is_aoe",
								["action"] = "starfall",
							}, -- [1]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.is_aoe",
								["action"] = "wild_mushroom",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "dot.moonfire.remains > remains * 22 / 18",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["action"] = "moonfire",
								["enabled"] = true,
							}, -- [5]
						},
						["st"] = {
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & remains < 2 & ( target.time_to_die - remains ) > 6",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! druid.no_cds & ( cooldown.ca_inc.remains < 5 & ! buff.ca_inc.up & ( target.time_to_die > 15 & buff.primordial_arcanic_pulsar.value < 480 || boss & fight_remains < 25 + 10 * talent.incarnation_chosen_of_elune.enabled ) )",
								["var_name"] = "cd_condition_st",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & remains < 2 & ( target.time_to_die - remains ) > 6",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + energize_amount & remains < 2 & ( target.time_to_die - remains ) > 8",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.starlord.remains < 2 & ( buff.primordial_arcanic_pulsar.value >= 550 & ! buff.ca_inc.up & buff.starweavers_warp.up || buff.primordial_arcanic_pulsar.value >= 560 & buff.starweavers_weft.up )",
								["action"] = "cancel_buff",
								["buff_name"] = "starlord",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.primordial_arcanic_pulsar.value >= 550 & ! buff.ca_inc.up & buff.starweavers_warp.up",
								["action"] = "starfall",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.primordial_arcanic_pulsar.value >= 560 & buff.starweavers_weft.up",
								["action"] = "starsurge",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.dreamstate.up & variable.cd_condition_st & eclipse.in_lunar",
								["action"] = "starfire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.dreamstate.up & variable.cd_condition_st & buff.eclipse_solar.up",
								["action"] = "wrath",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st",
								["action"] = "celestial_alignment",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st",
								["action"] = "incarnation",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.primordial_arcanic_pulsar.value < 520 & cooldown.ca_inc.remains > 5 & spell_targets.starfire < 3 || set_bonus.tier31_2pc",
								["var_name"] = "solar_eclipse_st",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "eclipse.any_next || variable.solar_eclipse_st & buff.eclipse_solar.up & ( buff.eclipse_solar.remains < action.starfire.cast_time ) || ! variable.solar_eclipse_st & buff.eclipse_lunar.up & ( buff.eclipse_lunar.remains < action.wrath.cast_time )",
								["var_name"] = "enter_eclipse",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "variable.solar_eclipse_st & ( variable.enter_eclipse || buff.eclipse_solar.remains < 7 )",
								["action"] = "warrior_of_elune",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "variable.enter_eclipse & ( variable.solar_eclipse_st || buff.warrior_of_elune.up )",
								["action"] = "starfire",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "variable.enter_eclipse",
								["action"] = "wrath",
							}, -- [16]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.ca_inc.remains > 4 || ( cooldown.ca_inc.remains > 30 || variable.no_cd_talent ) & ( buff.eclipse_lunar.remains > 4 || buff.eclipse_solar.remains > 4 )",
								["var_name"] = "convoke_condition",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "action.convoke_the_spirits.known & cooldown.convoke_the_spirits.ready & variable.convoke_condition",
								["action"] = "starsurge",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "variable.convoke_condition",
								["action"] = "convoke_the_spirits",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + energize_amount",
								["action"] = "astral_communion",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + energize_amount",
								["action"] = "force_of_nature",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 2 & ( buff.ca_inc.remains > 3 || cooldown.ca_inc.remains > 30 & buff.primordial_arcanic_pulsar.value <= 280 || buff.primordial_arcanic_pulsar.value >= 560 & astral_power > 50 ) || boss & fight_remains < 10",
								["action"] = "fury_of_elune",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_warp.up",
								["action"] = "starfall",
							}, -- [23]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.starlord.enabled & buff.starlord.stack < 3 || ( buff.balance_of_all_things_arcane.stack + buff.balance_of_all_things_nature.stack ) > 2 & buff.starlord.remains > 4",
								["var_name"] = "starsurge_condition1",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.starlord.remains < 2 & variable.starsurge_condition1",
								["action"] = "cancel_buff",
								["buff_name"] = "starlord",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "variable.starsurge_condition1",
								["action"] = "starsurge",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + energize_amount",
								["action"] = "sunfire",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + energize_amount",
								["action"] = "moonfire",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + energize_amount",
								["action"] = "stellar_flare",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + energize_amount & ( buff.ca_inc.up || charges_fractional > 2.5 & buff.primordial_arcanic_pulsar.value <= 520 & cooldown.ca_inc.remains > 10 || fight_remains < 10 )",
								["action"] = "new_moon",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + energize_amount & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time ) & ( buff.ca_inc.up || charges_fractional > 2.5 & buff.primordial_arcanic_pulsar.value <= 520 & cooldown.ca_inc.remains > 10 || fight_remains < 10 )",
								["action"] = "half_moon",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + energize_amount & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time ) & ( buff.ca_inc.up || charges_fractional > 2.5 & buff.primordial_arcanic_pulsar.value <= 520 & cooldown.ca_inc.remains > 10 || fight_remains < 10 )",
								["action"] = "full_moon",
							}, -- [32]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.starweavers_weft.up || astral_power.deficit < variable.passive_asp + action.wrath.energize_amount + ( action.starfire.energize_amount + variable.passive_asp ) * ( buff.eclipse_solar.remains < ( gcd.max * 3 ) ) || talent.astral_communion.enabled & cooldown.astral_communion.remains < 3 || fight_remains < 5",
								["var_name"] = "starsurge_condition2",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "buff.starlord.remains < 2 & variable.starsurge_condition2",
								["action"] = "cancel_buff",
								["buff_name"] = "starlord",
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "variable.starsurge_condition2",
								["action"] = "starsurge",
							}, -- [35]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [36]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [37]
						},
					},
					["version"] = 20231207,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 5: Converted 'talent.stellar_flare' to 'talent.stellar_flare.enabled' (1x).\nLine 6: Converted 'talent.aetherial_kindling' to 'talent.aetherial_kindling.enabled' (1x).\nLine 6: Converted 'talent.starweaver' to 'talent.starweaver.enabled' (1x).\nLine 6: Converted 'talent.starfall' to 'talent.starfall.enabled' (1x).\nLine 7: Converted 'talent.natures_balance' to 'talent.natures_balance.enabled' (1x).\nLine 7: Converted 'talent.orbit_breaker' to 'talent.orbit_breaker.enabled' (1x).\nLine 7: Converted operations in '6%spell_haste+talent.natures_balance.enabled+talent.orbit_breaker.enabled*dot.moonfire.ticking*(buff.orbit_breaker.stack>(27-2*buff.solstice.up))*40' to '6/spell_haste+talent.natures_balance.enabled+talent.orbit_breaker.enabled*dot.moonfire.ticking*(buff.orbit_breaker.stack>(27-2*buff.solstice.up))*40'.\nLine 10: Converted 'trinket.2.ready_cooldown' to 'trinket.t2.ready_cooldown' (1x).\nLine 11: Converted 'trinket.1.ready_cooldown' to 'trinket.t1.ready_cooldown' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 3: Converted 'talent.celestial_alignment' to 'talent.celestial_alignment.enabled' (1x).\nLine 3: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 5: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.1.is.spoils_of_neltharus' to 'trinket.t1.is.spoils_of_neltharus' (1x).\nLine 5: Converted 'trinket.1.is.mirror_of_fractured_tomorrows' to 'trinket.t1.is.mirror_of_fractured_tomorrows' (1x).\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.2.is.spoils_of_neltharus' to 'trinket.t2.is.spoils_of_neltharus' (1x).\nLine 6: Converted 'trinket.2.is.mirror_of_fractured_tomorrows' to 'trinket.t2.is.mirror_of_fractured_tomorrows' (1x).\n\nThe import for 'aoe' required some automated changes.\nLine 2: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 3: Converted operations in 'refreshable&(target.time_to_die-remains)>6-(spell_targets%2)&astral_power.deficit>variable.passive_asp+energize_amount' to 'refreshable&(target.time_to_die-remains)>6-(spell_targets/2)&astral_power.deficit>variable.passive_asp+energize_amount'.\nLine 6: Converted 'talent.orbital_strike' to 'talent.orbital_strike.enabled' (1x).\nLine 15: Converted 'talent.waning_twilight' to 'talent.waning_twilight.enabled' (1x).\nLine 17: Converted 'talent.starlord' to 'talent.starlord.enabled' (1x).\nLine 24: Converted 'talent.elunes_guidance' to 'talent.elunes_guidance.enabled' (1x).\n\nThe import for 'fallthru' required some automated changes.\nLine 4: Converted operations in 'dot.moonfire.remains>remains*22%18' to 'dot.moonfire.remains>remains*22/18'.\n\nThe import for 'st' required some automated changes.\nLine 2: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 24: Converted 'talent.starlord' to 'talent.starlord.enabled' (1x).\nLine 33: Converted 'talent.astral_communion' to 'talent.astral_communion.enabled' (1x).\n\nImported 5 action lists.\n",
					["spec"] = 102,
					["profile"] = "actions.precombat+=/moonkin_form\nactions.precombat+=/mark_of_the_wild\nactions.precombat+=/variable,name=no_cd_talent,value=!talent.celestial_alignment&!talent.incarnation_chosen_of_elune||druid.no_cds\nactions.precombat+=/variable,name=on_use_trinket,value=0\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=1,if=trinket.1.has_use_buff&trinket.1.cooldown.duration>0||trinket.1.is.spoils_of_neltharus||trinket.1.is.mirror_of_fractured_tomorrows\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=2,if=trinket.2.has_use_buff&trinket.2.cooldown.duration>0||trinket.2.is.spoils_of_neltharus||trinket.2.is.mirror_of_fractured_tomorrows\nactions.precombat+=/wrath,if=(eclipse.any_next||eclipse.lunar_next)\n\n# Executed every time the actor is available.\nactions+=/solar_beam\nactions+=/soothe\nactions+=/wrath,if=time<gcd.max&(eclipse.any_next||eclipse.lunar_next),line_cd=5\nactions+=/stellar_flare,if=refreshable&time<2*gcd.max&buff.eclipse_lunar.up,line_cd=5\nactions+=/starfire,if=!talent.stellar_flare&time<2*gcd.max&buff.eclipse_lunar.up,line_cd=5\nactions+=/variable,name=is_aoe,value=spell_targets.starfall>(1+(!talent.aetherial_kindling&!talent.starweaver))&talent.starfall\nactions+=/variable,name=passive_asp,value=6%spell_haste+talent.natures_balance+talent.orbit_breaker*dot.moonfire.ticking*(buff.orbit_breaker.stack>(27-2*buff.solstice.up))*40\nactions+=/berserking,if=buff.ca_inc.remains>=20||variable.no_cd_talent||boss&fight_remains<15\nactions+=/potion,if=!druid.no_cds&(buff.ca_inc.remains>=20||variable.no_cd_talent||boss&fight_remains<30)\nactions+=/use_items,slots=trinket1,if=variable.on_use_trinket!=1&!trinket.2.ready_cooldown||(variable.on_use_trinket=1||variable.on_use_trinket=3)&buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/use_items,slots=trinket2,if=variable.on_use_trinket!=2&!trinket.1.ready_cooldown||variable.on_use_trinket=2&buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/use_items\nactions+=/natures_vigil\n## actions+=/invoke_external_buff,name=power_infusion\nactions+=/run_action_list,name=aoe,strict=1,if=variable.is_aoe\nactions+=/run_action_list,name=st,strict=1,if=!variable.is_aoe\n\nactions.aoe+=/moonfire,cycle_targets=1,if=!boss&refreshable&(target.time_to_die-remains)>6&astral_power.deficit>variable.passive_asp+energize_amount\nactions.aoe+=/variable,name=cd_condition_aoe,value=!druid.no_cds&(cooldown.ca_inc.remains<5&!buff.ca_inc.up&(target.time_to_die>10&buff.primordial_arcanic_pulsar.value<500||fight_remains<25+10*talent.incarnation_chosen_of_elune))\nactions.aoe+=/sunfire,cycle_targets=1,if=refreshable&(target.time_to_die-remains)>6-(spell_targets%2)&astral_power.deficit>variable.passive_asp+energize_amount\nactions.aoe+=/moonfire,cycle_targets=1,if=boss&refreshable&(target.time_to_die-remains)>6&astral_power.deficit>variable.passive_asp+energize_amount\nactions.aoe+=/stellar_flare,cycle_targets=1,if=refreshable&(target.time_to_die-remains-spell_targets.starfire)>8+spell_targets.starfire&astral_power.deficit>variable.passive_asp+energize_amount&spell_targets.starfire<(11-talent.umbral_intensity.rank-talent.astral_smolder.rank)&variable.cd_condition_aoe\nactions.aoe+=/variable,name=starfall_condition1,value=variable.cd_condition_aoe&(talent.orbital_strike&astral_power.deficit<variable.passive_asp+8*spell_targets||buff.touch_the_cosmos.up)||astral_power.deficit<(variable.passive_asp+8+12*(buff.eclipse_lunar.remains<4||buff.eclipse_solar.remains<4))\nactions.aoe+=/cancel_buff,name=starlord,if=buff.starlord.remains<2&variable.starfall_condition1\nactions.aoe+=/starfall,if=variable.starfall_condition1\nactions.aoe+=/celestial_alignment,if=variable.cd_condition_aoe\nactions.aoe+=/incarnation,if=variable.cd_condition_aoe\nactions.aoe+=/warrior_of_elune\nactions.aoe+=/variable,name=enter_solar,value=spell_targets.starfire<3\nactions.aoe+=/starfire,if=variable.enter_solar&(eclipse.any_next||buff.eclipse_solar.remains<action.starfire.cast_time)\nactions.aoe+=/wrath,if=!variable.enter_solar&(eclipse.any_next||buff.eclipse_lunar.remains<action.wrath.cast_time)\nactions.aoe+=/wild_mushroom,if=astral_power.deficit>variable.passive_asp+20&(!talent.waning_twilight||dot.fungal_growth.remains<2&target.time_to_die>7&!prev_gcd.1.wild_mushroom)\nactions.aoe+=/fury_of_elune,if=target.time_to_die>2&(buff.ca_inc.remains>3||cooldown.ca_inc.remains>30&buff.primordial_arcanic_pulsar.value<=280||buff.primordial_arcanic_pulsar.value>=560&astral_power>50)||boss&fight_remains<10\nactions.aoe+=/variable,name=starfall_condition2,value=target.time_to_die>4&(buff.starweavers_warp.up||talent.starlord&buff.starlord.stack<3)\nactions.aoe+=/cancel_buff,name=starlord,if=buff.starlord.remains<2&variable.starfall_condition2\nactions.aoe+=/starfall,if=variable.starfall_condition2\nactions.aoe+=/full_moon,if=astral_power.deficit>variable.passive_asp+energize_amount&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)&(buff.ca_inc.up||charges_fractional>2.5&buff.primordial_arcanic_pulsar.value<=520&cooldown.ca_inc.remains>10||fight_remains<10)\nactions.aoe+=/starsurge,if=buff.starweavers_weft.up&spell_targets.starfire<3\nactions.aoe+=/stellar_flare,cycle_targets=1,if=refreshable&(target.time_to_die-remains-spell_targets.starfire)>8+spell_targets.starfire&astral_power.deficit>variable.passive_asp+energize_amount&spell_targets.starfire<(11-talent.umbral_intensity.rank-talent.astral_smolder.rank)\nactions.aoe+=/astral_communion,if=astral_power.deficit>variable.passive_asp+energize_amount\nactions.aoe+=/convoke_the_spirits,if=astral_power<50&spell_targets.starfall<3+talent.elunes_guidance&(buff.eclipse_lunar.remains>4||buff.eclipse_solar.remains>4)\nactions.aoe+=/new_moon,if=astral_power.deficit>variable.passive_asp+energize_amount\nactions.aoe+=/half_moon,if=astral_power.deficit>variable.passive_asp+energize_amount&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.aoe+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+energize_amount\nactions.aoe+=/new_moon,if=astral_power.deficit>variable.passive_asp+10\nactions.aoe+=/half_moon,if=astral_power.deficit>variable.passive_asp+20&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.aoe+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+20\nactions.aoe+=/starsurge,if=buff.starweavers_weft.up&spell_targets.starfire<17\nactions.aoe+=/starfire,if=spell_targets>(3-(buff.dreamstate.up||buff.balance_t31_4pc_buff_lunar.stack>buff.balance_t31_4pc_buff_solar.stack))&buff.eclipse_lunar.up||eclipse.in_lunar\nactions.aoe+=/wrath\nactions.aoe+=/run_action_list,name=fallthru\n\nactions.fallthru+=/starfall,if=variable.is_aoe\nactions.fallthru+=/starsurge\nactions.fallthru+=/wild_mushroom,if=!variable.is_aoe\nactions.fallthru+=/sunfire,cycle_targets=1,if=dot.moonfire.remains>remains*22%18\nactions.fallthru+=/moonfire\n\nactions.st+=/sunfire,cycle_targets=1,if=refreshable&remains<2&(target.time_to_die-remains)>6\nactions.st+=/variable,name=cd_condition_st,value=!druid.no_cds&(cooldown.ca_inc.remains<5&!buff.ca_inc.up&(target.time_to_die>15&buff.primordial_arcanic_pulsar.value<480||boss&fight_remains<25+10*talent.incarnation_chosen_of_elune))\nactions.st+=/moonfire,cycle_targets=1,if=refreshable&remains<2&(target.time_to_die-remains)>6\nactions.st+=/stellar_flare,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+energize_amount&remains<2&(target.time_to_die-remains)>8\nactions.st+=/cancel_buff,name=starlord,if=buff.starlord.remains<2&(buff.primordial_arcanic_pulsar.value>=550&!buff.ca_inc.up&buff.starweavers_warp.up||buff.primordial_arcanic_pulsar.value>=560&buff.starweavers_weft.up)\nactions.st+=/starfall,if=buff.primordial_arcanic_pulsar.value>=550&!buff.ca_inc.up&buff.starweavers_warp.up\nactions.st+=/starsurge,if=buff.primordial_arcanic_pulsar.value>=560&buff.starweavers_weft.up\nactions.st+=/starfire,if=buff.dreamstate.up&variable.cd_condition_st&eclipse.in_lunar\nactions.st+=/wrath,if=buff.dreamstate.up&variable.cd_condition_st&buff.eclipse_solar.up\nactions.st+=/celestial_alignment,if=variable.cd_condition_st\nactions.st+=/incarnation,if=variable.cd_condition_st\nactions.st+=/variable,name=solar_eclipse_st,value=buff.primordial_arcanic_pulsar.value<520&cooldown.ca_inc.remains>5&spell_targets.starfire<3||set_bonus.tier31_2pc\nactions.st+=/variable,name=enter_eclipse,value=eclipse.any_next||variable.solar_eclipse_st&buff.eclipse_solar.up&(buff.eclipse_solar.remains<action.starfire.cast_time)||!variable.solar_eclipse_st&buff.eclipse_lunar.up&(buff.eclipse_lunar.remains<action.wrath.cast_time)\nactions.st+=/warrior_of_elune,if=variable.solar_eclipse_st&(variable.enter_eclipse||buff.eclipse_solar.remains<7)\nactions.st+=/starfire,if=variable.enter_eclipse&(variable.solar_eclipse_st||buff.warrior_of_elune.up)\nactions.st+=/wrath,if=variable.enter_eclipse\nactions.st+=/variable,name=convoke_condition,value=buff.ca_inc.remains>4||(cooldown.ca_inc.remains>30||variable.no_cd_talent)&(buff.eclipse_lunar.remains>4||buff.eclipse_solar.remains>4)\nactions.st+=/starsurge,if=action.convoke_the_spirits.known&cooldown.convoke_the_spirits.ready&variable.convoke_condition\nactions.st+=/convoke_the_spirits,if=variable.convoke_condition\nactions.st+=/astral_communion,if=astral_power.deficit>variable.passive_asp+energize_amount\nactions.st+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+energize_amount\nactions.st+=/fury_of_elune,if=target.time_to_die>2&(buff.ca_inc.remains>3||cooldown.ca_inc.remains>30&buff.primordial_arcanic_pulsar.value<=280||buff.primordial_arcanic_pulsar.value>=560&astral_power>50)||boss&fight_remains<10\nactions.st+=/starfall,if=buff.starweavers_warp.up\nactions.st+=/variable,name=starsurge_condition1,value=talent.starlord&buff.starlord.stack<3||(buff.balance_of_all_things_arcane.stack+buff.balance_of_all_things_nature.stack)>2&buff.starlord.remains>4\nactions.st+=/cancel_buff,name=starlord,if=buff.starlord.remains<2&variable.starsurge_condition1\nactions.st+=/starsurge,if=variable.starsurge_condition1\nactions.st+=/sunfire,target_if=refreshable&astral_power.deficit>variable.passive_asp+energize_amount\nactions.st+=/moonfire,target_if=refreshable&astral_power.deficit>variable.passive_asp+energize_amount\nactions.st+=/stellar_flare,target_if=refreshable&astral_power.deficit>variable.passive_asp+energize_amount\nactions.st+=/new_moon,if=astral_power.deficit>variable.passive_asp+energize_amount&(buff.ca_inc.up||charges_fractional>2.5&buff.primordial_arcanic_pulsar.value<=520&cooldown.ca_inc.remains>10||fight_remains<10)\nactions.st+=/half_moon,if=astral_power.deficit>variable.passive_asp+energize_amount&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)&(buff.ca_inc.up||charges_fractional>2.5&buff.primordial_arcanic_pulsar.value<=520&cooldown.ca_inc.remains>10||fight_remains<10)\nactions.st+=/full_moon,if=astral_power.deficit>variable.passive_asp+energize_amount&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)&(buff.ca_inc.up||charges_fractional>2.5&buff.primordial_arcanic_pulsar.value<=520&cooldown.ca_inc.remains>10||fight_remains<10)\nactions.st+=/variable,name=starsurge_condition2,value=buff.starweavers_weft.up||astral_power.deficit<variable.passive_asp+action.wrath.energize_amount+(action.starfire.energize_amount+variable.passive_asp)*(buff.eclipse_solar.remains<(gcd.max*3))||talent.astral_communion&cooldown.astral_communion.remains<3||fight_remains<5\nactions.st+=/cancel_buff,name=starlord,if=buff.starlord.remains<2&variable.starsurge_condition2\nactions.st+=/starsurge,if=variable.starsurge_condition2\nactions.st+=/wrath\nactions.st+=/run_action_list,name=fallthru",
				},
			},
			["toggles"] = {
				["potions"] = {
					["override"] = true,
				},
				["interrupts"] = {
					["value"] = true,
				},
				["cooldowns"] = {
					["infusion"] = true,
					["override"] = true,
					["value"] = true,
				},
				["mode"] = {
					["single"] = false,
					["aoe"] = false,
				},
				["defensives"] = {
					["value"] = true,
				},
			},
			["notifications"] = {
				["y"] = 245.9998321533203,
				["x"] = 2.0001220703125,
			},
			["specs"] = {
				[66] = {
					["settings"] = {
						["wog_health"] = 40,
						["ds_damage"] = 60,
						["goak_damage"] = 40,
					},
				},
				[103] = {
					["settings"] = {
						["rip_duration"] = 9,
						["solo_prowl"] = false,
						["use_funnel"] = false,
						["regrowth"] = true,
						["lazy_swipe"] = false,
						["zerk_biteweave"] = false,
						["vigil_damage"] = 50,
					},
				},
				[102] = {
					["settings"] = {
						["vigil_damage"] = 50,
						["starlord_cancel"] = false,
					},
				},
				[104] = {
					["settings"] = {
						["vigil_damage"] = 50,
						["catweave_bear"] = false,
						["maul_anyway"] = true,
						["ironfur_damage_threshold"] = 5,
						["maul_rage"] = 20,
					},
				},
			},
		},
	},
}
