local _, MoveAny = ...
local config = {
	["title"] = format("MoveAny |T135994:16:16:0:0|t v|cff3FC7EB%s", "1.6.78")
}

local MAMMBTN = nil
function MoveAny:GetMinimapButton()
	return MAMMBTN
end

local PREFIX = "MOAN"
local MASendProfiles = {}
local MAWantProfiles = {}
local WebStatus = 0
local WebProfile = ""
local WebOwner = ""
local WebProfileData = {}
local searchStr = ""
local br = 8
local sw = 550
local sh = 520
local posy = -4
local cas = {}
local cbs = {}
local sls = {}
local EMMapForced = {}
function MoveAny:AddToEMMapForced(key)
	EMMapForced[key] = true
	EMMapForced[strupper(key)] = true
end

MoveAny:AddToEMMapForced("Minimap")
MoveAny:AddToEMMapForced("MinimapCluster")
MoveAny:AddToEMMapForced("PlayerFrame")
MoveAny:AddToEMMapForced("ObjectiveTrackerFrame")
MoveAny:AddToEMMapForced("QuestTracker")
MoveAny:AddToEMMapForced("ChatFrame1")
MoveAny:AddToEMMapForced("Chat")
MoveAny:AddToEMMapForced("GameTooltip")
MoveAny:AddToEMMapForced("Castingbar")
MoveAny:AddToEMMapForced("MainMenuBar")
MoveAny:AddToEMMapForced("MultiBarBottomLeft")
MoveAny:AddToEMMapForced("MultiBarBottomRight")
MoveAny:AddToEMMapForced("MultiBarRight")
MoveAny:AddToEMMapForced("MultiBarLeft")
MoveAny:AddToEMMapForced("MultiBar5")
MoveAny:AddToEMMapForced("MultiBar6")
MoveAny:AddToEMMapForced("MultiBar7")
MoveAny:AddToEMMapForced("MainStatusTrackingBarContainer")
for i = 1, 8 do
	MoveAny:AddToEMMapForced("ACTIONBAR" .. i)
end

local EMMap = {}
function MoveAny:AddToEMMap(key, value)
	EMMap[key] = value
	EMMap[strupper(key)] = value
end

MoveAny:AddToEMMap("MAPetBar", "ShowPetActionBar")
MoveAny:AddToEMMap("PetBar", "ShowPetActionBar")
MoveAny:AddToEMMap("StanceBar", "ShowStanceBar")
MoveAny:AddToEMMap("MAGameTooltip", "ShowHudTooltip")
MoveAny:AddToEMMap("TalkingHeadFrame", "ShowTalkingHeadFrame")
MoveAny:AddToEMMap("TalkingHead", "ShowTalkingHeadFrame")
MoveAny:AddToEMMap("Buffs", "ShowBuffsAndDebuffs")
MoveAny:AddToEMMap("BuffFrame", "ShowBuffsAndDebuffs")
MoveAny:AddToEMMap("MABuffBar", "ShowBuffsAndDebuffs")
MoveAny:AddToEMMap("Debuffs", "ShowBuffsAndDebuffs")
MoveAny:AddToEMMap("DebuffFrame", "ShowBuffsAndDebuffs")
MoveAny:AddToEMMap("MADebuffBar", "ShowBuffsAndDebuffs")
MoveAny:AddToEMMap("TargetFrame", "ShowTargetAndFocus")
MoveAny:AddToEMMap("FocusFrame", "ShowTargetAndFocus")
MoveAny:AddToEMMap("ExtraAbilityFrame", "ShowExtraAbilities")
MoveAny:AddToEMMap("ExtraAbilityContainer", "ShowExtraAbilities")
MoveAny:AddToEMMap("PossessActionBar", "ShowPossessActionBar")
MoveAny:AddToEMMap("PossessBarFrame", "ShowPossessActionBar")
MoveAny:AddToEMMap("PossessBar", "ShowPossessActionBar")
MoveAny:AddToEMMap("MainMenuBarVehicleLeaveButton", "ShowVehicleLeaveButton")
MoveAny:AddToEMMap("LeaveVehicle", "ShowVehicleLeaveButton")
MoveAny:AddToEMMap("PlayerCastingBarFrame", "ShowCastBar")
MoveAny:AddToEMMap("PetFrame", "ShowPetFrame")
MoveAny:AddToEMMap("MAPetFrame", "ShowPetFrame")
MoveAny:AddToEMMap("BossTargetFrameContainer", "ShowBossFrames")
MoveAny:AddToEMMap("SecondaryStatusTrackingBarContainer", "ShowStatusTrackingBar2")
MoveAny:AddToEMMap("VehicleSeatIndicator", "ShowVehicleSeatIndicator")
MoveAny:AddToEMMap("MAVehicleSeatIndicator", "ShowVehicleSeatIndicator")
MoveAny:AddToEMMap("PartyFrame", "ShowPartyFrames")
MoveAny:AddToEMMap("CompactRaidFrameContainer", "ShowRaidFrames")
MoveAny:AddToEMMap("CompactArenaFrame", "ShowArenaFrames")
function MoveAny:IsBlizEditModeEnabled()
	if MoveAny:GetWoWBuild() == "RETAIL" or (EditModeManagerFrame and EditModeManagerFrame.numLayouts) then return true end

	return false
end

local onceDebug = true
function MoveAny:IsInEditModeEnabled(val)
	local editModeEnum = nil
	if not MoveAny:IsBlizEditModeEnabled() then return false, false end
	if EMMapForced[val] then return true, true end
	if Enum and Enum.EditModeAccountSetting then
		if EMMap[val] then
			editModeEnum = Enum.EditModeAccountSetting[EMMap[val]]
		else
			editModeEnum = Enum.EditModeAccountSetting[val]
		end

		if EMMap[val] and editModeEnum == nil then
			MoveAny:MSG("MISSING ENUM FOR val: " .. tostring(val))
		end
	end

	if EditModeManagerFrame.accountSettings == nil then
		EditModeManagerFrame:InitializeAccountSettings()
	end

	if GameMenuButtonEditMode and not GameMenuButtonEditMode:IsEnabled() then
		GameMenuButtonEditMode:SetEnabled(true)
	end

	if editModeEnum and EditModeManagerFrame and tContains(Enum.EditModeAccountSetting, editModeEnum) and EditModeManagerFrame:GetAccountSettingValueBool(editModeEnum) then return true, false end
	-- DEBUG EDITMODE
	if false and onceDebug then
		onceDebug = false
		for i, v in pairs(Enum.EditModeAccountSetting) do
			if string.find(strlower(i), "arena") then
				MoveAny:MSG("ENUM i: " .. tostring(i) .. " v: " .. tostring(v))
			end
		end
	end

	return false, false
end

local lastSelected = nil
function MoveAny:GetLastSelected()
	return lastSelected
end

local function AddCategory(key)
	if cas[key] == nil then
		cas[key] = CreateFrame("Frame", key .. "_Category", MALock.SC)
		local ca = cas[key]
		ca:SetSize(24, 24)
		ca.f = ca:CreateFontString(nil, nil, "GameFontNormal")
		ca.f:SetPoint("LEFT", ca, "LEFT", 0, 0)
		ca.f:SetText(MoveAny:GT("LID_" .. key))
	end

	cas[key]:ClearAllPoints()
	if key == "EDITMODE" or strfind(strlower(key), strlower(searchStr)) or strfind(strlower(MoveAny:GT("LID_" .. key)), strlower(searchStr)) then
		cas[key]:Show()
		if posy < -4 then
			posy = posy - 10
		end

		cas[key]:SetPoint("TOPLEFT", MALock.SC, "TOPLEFT", 6, posy)
		posy = posy - 24
	else
		cas[key]:Hide()
	end
end

local function AddCheckBox(x, key, val, func, id, editModeEnum, showReload)
	local bShowReload = showReload
	local bGreyed = false
	local lkey = key
	if bShowReload == nil then
		bShowReload = true
	end

	if val == nil then
		MoveAny:MSG("Missing Value For: " .. tostring(key))
		val = true
	end

	if id then
		key = key .. id
	end

	if cbs[key] == nil then
		cbs[key] = CreateFrame("CheckButton", key .. "_CB", MALock.SC, "UICheckButtonTemplate")
		local cb = cbs[key]
		cb:SetSize(24, 24)
		cb:SetChecked(MoveAny:IsEnabled(key, val, true))
		cb.func = func or nil
		cb.f = cb:CreateFontString(nil, nil, "GameFontNormal")
		cb.f:SetPoint("LEFT", cb, "RIGHT", 0, 0)
		function cb:UpdateText(checked)
			checked = checked or false
			local lstr = MoveAny:GT("LID_" .. lkey)
			if id then
				lstr = format(lstr, id)
			end

			local ele = MoveAny:GetSelectEleName("LID_" .. key)
			if ele and _G[ele .. "_DRAG"] and MoveAny:GetCurrentEle() == _G[ele .. "_DRAG"] then
				lstr = "|cFFFFFF00" .. lstr .. "|r"
				MoveAny:ResetSelectedText()
				lastSelected = cb
			end

			local enabled1, forced1 = MoveAny:IsInEditModeEnabled(key)
			local enabled2, forced2 = MoveAny:IsInEditModeEnabled(editModeEnum)
			if enabled1 or enabled2 then
				if forced1 or forced2 then
					lstr = lstr .. " |cFFFF0000" .. MoveAny:GT("LID_CANBREAKBECAUSEOFEDITMODE")
				else
					lstr = lstr .. " |cFFFFFF00" .. MoveAny:GT("LID_ISENABLEDINEDITMODE")
				end
			end

			if (EMMap[key] or EMMapForced[key]) and MoveAny:IsBlizEditModeEnabled() and not MoveAny:IsEnabled("EDITMODE", MoveAny:GetWoWBuildNr() < 100000) then
				bGreyed = true
				lstr = "(" .. MoveAny:GT("LID_EDITMODE") .. ") |c88888888" .. lstr
			else
				lstr = "|cFFFFFFFF" .. lstr
			end

			if checked then
				cb.f:SetText(format("[%s] %s", MoveAny:GT("LID_NEEDSARELOAD"), lstr))
			else
				cb.f:SetText(lstr)
			end
		end

		cb:SetScript(
			"OnClick",
			function(sel)
				MoveAny:SetEnabled(key, sel:GetChecked())
				if bShowReload and sel:GetChecked() and sel.f then
					cb:UpdateText(true)
				end

				if cb.func then
					cb:func(sel:GetChecked())
				end

				if key == "EDITMODE" then
					MoveAny:UpdateElementList()
				end
			end
		)

		cb.btn = CreateFrame("BUTTON", "cb.btn", cb)
		cb.btn:SetSize(MALock.SC:GetWidth() - 24, 24)
		cb.btn:SetPoint("LEFT", cb, "RIGHT", 0, 0)
		cb.btn:SetScript(
			"OnClick",
			function(sel)
				local ele = MoveAny:GetSelectEleName("LID_" .. key)
				if ele then
					MoveAny:SelectEle(_G[ele .. "_DRAG"])
					cb:UpdateText()
				end
			end
		)
	end

	cbs[key]:UpdateText()
	cbs[key]:ClearAllPoints()
	if bGreyed then
		cbs[key]:SetEnabled(false)
	else
		cbs[key]:SetEnabled(true)
	end

	if key == "EDITMODE" or strfind(strlower(key), strlower(searchStr)) or strfind(strlower(MoveAny:GT("LID_" .. lkey)), strlower(searchStr)) then
		cbs[key]:Show()
		cbs[key]:SetPoint("TOPLEFT", MALock.SC, "TOPLEFT", x, posy)
		posy = posy - 24
	else
		cbs[key]:Hide()
	end
end

local function AddSlider(x, key, val, func, vmin, vmax, steps, tab)
	if sls[key] == nil then
		sls[key] = CreateFrame("Slider", "sls[" .. key .. "]", MALock.SC, "OptionsSliderTemplate")
		sls[key]:SetWidth(MALock.SC:GetWidth() - 30 - x)
		sls[key]:SetPoint("TOPLEFT", MALock.SC, "TOPLEFT", x + 5, posy)
		sls[key].Low:SetText(vmin)
		sls[key].High:SetText(vmax)
		if tab and tab[MoveAny:GV(key, val)] then
			sls[key].Text:SetText(MoveAny:GT("LID_" .. key) .. ": " .. tab[MoveAny:GV(key, val)])
		else
			sls[key].Text:SetText(MoveAny:GT("LID_" .. key) .. ": " .. MoveAny:GV(key, val))
		end

		sls[key]:SetMinMaxValues(vmin, vmax)
		sls[key]:SetObeyStepOnDrag(true)
		sls[key]:SetValueStep(steps)
		sls[key]:SetValue(MoveAny:GV(key, val))
		sls[key]:SetScript(
			"OnValueChanged",
			function(sel, valu)
				valu = tonumber(string.format("%" .. steps .. "f", valu))
				if valu and valu ~= MoveAny:GV(key) then
					MoveAny:SV(key, valu)
					if tab and tab[valu] then
						sls[key].Text:SetText(MoveAny:GT("LID_" .. key) .. ": " .. tab[valu])
					else
						sls[key].Text:SetText(MoveAny:GT("LID_" .. key) .. ": " .. valu)
					end

					if func then
						func()
					end
				end
			end
		)

		posy = posy - 10
	end

	sls[key]:ClearAllPoints()
	if key == "EDITMODE" or strfind(strlower(key), strlower(searchStr)) or strfind(strlower(MoveAny:GT("LID_" .. key)), strlower(searchStr)) then
		sls[key]:Show()
		sls[key]:SetPoint("TOPLEFT", MALock.SC, "TOPLEFT", x, posy)
		posy = posy - 30
	else
		sls[key]:Hide()
	end
end

local saved = false
function MoveAny:EnableSave(from, key)
	if MALock == nil then return end
	if not MALock:IsVisible() then return end
	saved = true
	if MALock.save then
		MALock.save:Enable()
	end

	if MALock.CloseButton then
		MALock.CloseButton:Disable()
	end
end

function MoveAny:IsFrameKeyDown()
	local keybind = MoveAny:GV("KEYBINDWINDOWKEY", "SHIFT")
	if keybind == "SHIFT" then
		return IsShiftKeyDown()
	elseif keybind == "CTRL" then
		return IsCtrlKeyDown()
	elseif keybind == "ALT" then
		return IsAltKeyDown()
	end

	return false
end

function MoveAny:InitMALock()
	MALock = CreateFrame("Frame", "MALock", MoveAny:GetMainPanel(), "BasicFrameTemplate")
	MALock:SetSize(sw, sh)
	MALock:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
	MALock:SetFrameStrata("HIGH")
	MALock:SetFrameLevel(999)
	MALock:SetClampedToScreen(true)
	MALock:SetMovable(true)
	MALock:EnableMouse(true)
	MALock:RegisterForDrag("LeftButton")
	MALock:SetScript("OnDragStart", MALock.StartMoving)
	MALock:SetScript(
		"OnDragStop",
		function()
			MALock:StopMovingOrSizing()
			local p1, _, p3, p4, p5 = MALock:GetPoint()
			p4 = MoveAny:Snap(p4)
			p5 = MoveAny:Snap(p5)
			MoveAny:SetElePoint("MALock", p1, _, p3, p4, p5)
		end
	)

	MALock.TitleText:SetText(config.title)
	MALock.CloseButton:SetScript(
		"OnClick",
		function()
			MoveAny:ToggleMALock()
			if saved then
				C_UI.Reload()
			end
		end
	)

	local keybinds = {}
	keybinds[1] = "SHIFT"
	keybinds[2] = "CTRL"
	keybinds[3] = "ALT"
	function MoveAny:UpdateFrameKeybindText()
		local keybind = keybinds[MoveAny:GV("KEYBINDWINDOW", 1)]
		local cb1 = cbs["FRAMESKEYDRAG"]
		local cb2 = cbs["FRAMESKEYSCALE"]
		local cb3 = cbs["FRAMESKEYRESET"]
		cb1.f:SetText("|cFFFFFF00" .. format(MoveAny:GT("LID_FRAMESKEYDRAG"), MoveAny:GT("LID_" .. keybind)))
		cb2.f:SetText("|cFFFFFF00" .. format(MoveAny:GT("LID_FRAMESKEYSCALE"), MoveAny:GT("LID_" .. keybind)))
		cb3.f:SetText("|cFFFFFF00" .. format(MoveAny:GT("LID_FRAMESKEYRESET"), MoveAny:GT("LID_" .. keybind)))
	end

	function MoveAny:UpdateFrameKeybind()
		local keybind = keybinds[MoveAny:GV("KEYBINDWINDOW", 1)]
		MoveAny:SV("KEYBINDWINDOWKEY", keybind)
		MoveAny:UpdateFrameKeybindText()
	end

	function MoveAny:UpdateElementList()
		local _, class = UnitClass("player")
		posy = -4
		-- AddCheckBox(x, key, val, func, id, editModeEnum, showReload)
		AddCategory("GENERAL")
		AddCheckBox(4, "SHOWTIPS", true)
		AddCheckBox(4, "SHOWMINIMAPBUTTON", true, MoveAny.MinimapButtonCB, nil, nil, false)
		AddSlider(8, "SNAPSIZE", 5, nil, 1, 50, 1)
		AddSlider(8, "GRIDSIZE", 10, MoveAny.UpdateGrid, 1, 100, 1)
		AddSlider(8, "SNAPWINDOWSIZE", 1, nil, 1, 50, 1)
		AddCheckBox(4, "MOVEFRAMES", true)
		AddCheckBox(24, "MOVESMALLBAGS", false)
		AddCheckBox(24, "MOVELOOTFRAME", false)
		AddCheckBox(24, "SAVEFRAMEPOSITION", true)
		AddCheckBox(24, "SAVEFRAMESCALE", true)
		AddSlider(24, "KEYBINDWINDOW", 1, MoveAny.UpdateFrameKeybind, 1, 3, 1, keybinds)
		AddCheckBox(24, "FRAMESKEYDRAG", false)
		AddCheckBox(24, "FRAMESKEYSCALE", false)
		AddCheckBox(24, "FRAMESKEYRESET", false)
		MoveAny:UpdateFrameKeybindText()
		AddCategory("BUILTIN")
		local posx = 4
		if MoveAny:IsBlizEditModeEnabled() then
			AddCheckBox(4, "EDITMODE", MoveAny:GetWoWBuildNr() < 100000)
			posx = 24
		end

		AddCheckBox(posx, "PLAYERFRAME", false)
		AddCheckBox(posx, "TARGETFRAME", false, nil, nil, "ShowTargetAndFocus")
		if ComboFrame then
			AddCheckBox(posx, "COMBOFRAME", false)
		end

		if MoveAny:GetWoWBuild() ~= "RETAIL" then
			AddCheckBox(posx, "TARGETFRAMEBUFF1", false, nil, nil, "ShowTargetAndFocus")
		end

		if FocusFrame then
			AddCheckBox(posx, "FOCUSFRAME", false, nil, nil, "ShowTargetAndFocus")
			if MoveAny:GetWoWBuild() ~= "RETAIL" then
				AddCheckBox(posx, "FOCUSFRAMEBUFF1", false, nil, nil, "ShowTargetAndFocus")
			end
		end

		AddCheckBox(posx, "BUFFS", false, nil, nil, "ShowBuffFrame")
		AddCheckBox(posx, "DEBUFFS", false, nil, nil, "ShowDebuffFrame")
		AddCheckBox(posx, "GAMETOOLTIP", false, nil, nil, "ShowHudTooltip")
		AddCheckBox(posx, "PETBAR", false, nil, nil, "ShowPetActionBar")
		AddCheckBox(posx, "STANCEBAR", false, nil, nil, "ShowStanceBar")
		if PossessActionBar or PossessBarFrame then
			AddCheckBox(posx, "POSSESSBAR", false, nil, nil, "ShowPossessActionBar")
		end

		AddCheckBox(posx, "LEAVEVEHICLE", false, nil, nil, "ShowVehicleLeaveButton")
		if ExtraAbilityContainer then
			AddCheckBox(posx, "EXTRAABILITYCONTAINER", false, nil, nil, "ShowExtraAbilities")
		end

		AddCheckBox(posx, "CASTINGBAR", false, nil, nil, "ShowCastBar")
		if PlayerCastingBarFrame then
			AddCheckBox(posx, "CASTINGBARTIMER", false, nil, nil, "ShowCastBar")
		end

		if TalkingHeadFrame then
			AddCheckBox(posx, "TALKINGHEAD", false, nil, nil, "ShowTalkingHeadFrame")
		end

		AddCheckBox(posx, "OVERRIDEACTIONBAR", false)
		if MoveAny:GetWoWBuild() ~= "RETAIL" then
			AddCheckBox(posx, "ACTIONBARS", false)
			AddCheckBox(4, "ACTIONBAR3", false)
			AddCheckBox(4, "ACTIONBAR4", false)
			AddCheckBox(4, "ACTIONBAR7", false)
			AddCheckBox(4, "ACTIONBAR8", false)
			AddCheckBox(4, "ACTIONBAR9", false)
			AddCheckBox(4, "ACTIONBAR10", false)
		else
			for i = 1, 8 do
				AddCheckBox(posx, "ACTIONBAR" .. i, false)
			end
		end

		for i = 1, 10 do
			if _G["ChatFrame" .. i] and _G["ChatFrame" .. i .. "Tab"] and _G["ChatFrame" .. i .. "Tab"]:GetParent() ~= GeneralDockManager or i == 1 then
				AddCheckBox(posx, "CHAT", false, nil, i)
			end
		end

		AddCheckBox(posx, "MINIMAP", false)
		AddCheckBox(posx, "QUESTTRACKER", false)
		AddCheckBox(posx, "MAPETFRAME", false)
		if PartyFrame or PartyMemberFrame1 then
			AddCheckBox(posx, "PARTYFRAME", false, nil, nil, "ShowPartyFrames")
		end

		if CompactRaidFrameContainer then
			AddCheckBox(posx, "COMPACTRAIDFRAMECONTAINER", false, nil, nil, "ShowRaidFrames")
		end

		if BossTargetFrameContainer or Boss1TargetFrame then
			AddCheckBox(posx, "BOSSTARGETFRAMECONTAINER", false, nil, nil, "ShowBossFrames")
		end

		if MainStatusTrackingBarContainer then
			AddCheckBox(posx, "MainStatusTrackingBarContainer", false)
		end

		if SecondaryStatusTrackingBarContainer then
			AddCheckBox(posx, "SecondaryStatusTrackingBarContainer", false)
		end

		if MainStatusTrackingBarContainer == nil and SecondaryStatusTrackingBarContainer == nil and StatusTrackingBarManager then
			AddCheckBox(posx, "STATUSTRACKINGBARMANAGER", false)
		end

		if VehicleSeatIndicator then
			AddCheckBox(posx, "VEHICLESEATINDICATOR", false)
		end

		AddCategory("NORMAL")
		AddCheckBox(4, "TARGETOFTARGETFRAME", false)
		if FocusFrameToT then
			AddCheckBox(4, "TARGETOFFOCUSFRAME", false)
		end

		AddCheckBox(4, "ZONETEXTFRAME", false)
		if ObjectiveTrackerBonusBannerFrame then
			AddCheckBox(4, "OBJECTIVETRACKERBONUSBANNERFRAME", false)
		end

		if RaidBossEmoteFrame then
			AddCheckBox(4, "RAIDBOSSEMOTEFRAME", false)
		end

		AddCheckBox(4, "DURABILITY", false)
		AddCheckBox(4, "MICROMENU", false)
		AddCheckBox(4, "BAGS", false)
		if QueueStatusButton then
			AddCheckBox(4, "QUEUESTATUSBUTTON", false)
		end

		if QueueStatusFrame then
			AddCheckBox(4, "QUEUESTATUSFRAME", false)
		end

		if MainMenuExpBar then
			AddCheckBox(4, "MAINMENUEXPBAR", false)
			AddCheckBox(4, "REPUTATIONWATCHBAR", false)
		end

		AddCheckBox(4, "MAFPSFrame", false)
		if ZoneAbilityFrame then
			AddCheckBox(4, "ZONEABILITYFRAME", false)
		end

		if PlayerPowerBarAlt then
			AddCheckBox(4, "POWERBAR", false)
		end

		if UIWidgetPowerBarContainerFrame then
			AddCheckBox(4, "UIWIDGETPOWERBAR", false)
		end

		--AddCheckBox( 4, "BUFFTIMER1", true )
		if ArcheologyDigsiteProgressBar then
			AddCheckBox(4, "ARCHEOLOGYDIGSITEPROGRESSBAR", false)
		end

		AddCheckBox(4, "UIERRORSFRAME", false)
		if QuickJoinToastButton then
			AddCheckBox(4, "CHATQUICKJOIN", false)
		end

		if SpellActivationOverlayFrame then
			AddCheckBox(4, "SPELLACTIVATIONOVERLAYFRAME", false)
		end

		if LossOfControlFrame then
			AddCheckBox(4, "LOSSOFCONTROLFRAME", false)
		end

		if GhostFrame then
			AddCheckBox(4, "GHOSTFRAME", false)
		end

		AddCategory("CLASSSPECIFIC")
		if RuneFrame and class == "DEATHKNIGHT" then
			AddCheckBox(4, "RUNEFRAME", false)
		end

		if MoveAny:GetWoWBuild() == "WRATH" and class == "SHAMAN" then
			AddCheckBox(4, "TOTEMBAR", false)
		end

		if WarlockPowerFrame and class == "WARLOCK" then
			AddCheckBox(4, "WARLOCKPOWERFRAME", false)
		end

		if MonkHarmonyBarFrame and class == "MONK" then
			AddCheckBox(4, "MONKHARMONYBARFRAME", false)
		end

		if MonkStaggerBar and class == "MONK" then
			AddCheckBox(4, "MONKSTAGGERBAR", false)
		end

		if MageArcaneChargesFrame and class == "MAGE" then
			AddCheckBox(4, "MAGEARCANECHARGESFRAME", false)
		end

		if (RogueComboPointBarFrame or DruidComboPointBarFrame) and (class == "ROGUE" or class == "DRUID") then
			AddCheckBox(4, "COMBOPOINTPLAYERFRAME", false)
		end

		if EssencePlayerFrame and class == "EVOKER" then
			AddCheckBox(4, "ESSENCEPLAYERFRAME", false)
		end

		if PaladinPowerBarFrame and class == "PALADIN" then
			AddCheckBox(4, "PALADINPOWERBARFRAME", false)
		end

		AddCategory("ADVANCED")
		if TotemFrame then
			AddCheckBox(4, "TOTEMFRAME", false)
		end

		if MinimapZoneTextButton then
			AddCheckBox(4, "MINIMAPZONETEXT", false)
		end

		if PlayerLevelText then
			AddCheckBox(4, "PLAYERLEVELTEXT", false)
		end

		AddCheckBox(4, "ENDCAPS", false)
		AddCheckBox(4, "TARGETFRAMESPELLBAR", false)
		if FocusFrame then
			AddCheckBox(4, "FOCUSFRAMESPELLBAR", false)
		end

		AddCheckBox(4, "UIWIDGETTOPCENTER", false)
		AddCheckBox(4, "UIWIDGETBELOWMINIMAP", false)
		AddCheckBox(4, "MIRRORTIMER1", false)
		if Arena_LoadUI then
			AddCheckBox(4, "ARENAENEMYFRAMES", false)
			AddCheckBox(4, "ARENAPREPFRAMES", false)
		end

		if CompactArenaFrame then
			AddCheckBox(4, "COMPACTARENAFRAME", false)
		end

		if RolePollPopup then
			AddCheckBox(4, "ROLEPOLLPOPUP", false)
		end

		if ReadyCheckListenerFrame then
			AddCheckBox(4, "READYCHECKLISTENERFRAME", false)
		end

		AddCheckBox(4, "GAMETOOLTIP_ONCURSOR", false)
		if BossBanner then
			AddCheckBox(4, "BOSSBANNER", false)
		end

		if GroupLootContainer then
			AddCheckBox(4, "GROUPLOOTCONTAINER", false)
		else
			AddCheckBox(4, "GROUPLOOTFRAME1", false)
		end

		if BonusRollFrame then
			AddCheckBox(4, "BONUSROLLFRAME", false)
		end

		AddCheckBox(4, "ALERTFRAME", false)
		AddCheckBox(4, "CHATBUTTONFRAME", false)
		AddCheckBox(4, "CHATEDITBOX", false)
		if BNToastFrame then
			AddCheckBox(4, "BNToastFrame", false)
		end

		AddCheckBox(4, "EventToastManagerFrame", false)
		AddCheckBox(4, "COMPACTRAIDFRAMEMANAGER", false)
		AddCheckBox(4, "TICKETSTATUSFRAME", false)
		if TargetFrame and TargetFrameNumericalThreat then
			AddCheckBox(4, "TargetFrameNumericalThreat", false)
		end

		if PlayerFrameBackground then
			AddCheckBox(4, "PLAYERFRAMEBACKGROUND", false)
		end

		if TargetFrameNameBackground then
			AddCheckBox(4, "TARGETFRAMENAMEBACKGROUND", false)
		end

		if IsAddOnLoaded("ImproveAny") then
			AddCategory("ImproveAny")
			if MoveAny:GetWoWBuild() ~= "RETAIL" then
				AddCheckBox(4, "IASKILLS", true)
			end

			AddCheckBox(4, "MONEYBAR", true)
			AddCheckBox(4, "TOKENBAR", true)
			AddCheckBox(4, "IAILVLBAR", true)
			AddCheckBox(4, "IAPingFrame", true)
			AddCheckBox(4, "IACoordsFrame", true)
		end

		if IsAddOnLoaded("!KalielsTracker") then
			AddCategory("!KalielsTracker")
			AddCheckBox(4, "!KalielsTrackerButtons", false)
		end

		AddCheckBox(4, "DISABLEMOVEMENT", false)
	end

	MALock.Search = CreateFrame("EditBox", "MALock_Search", MALock, "InputBoxTemplate")
	MALock.Search:SetAutoFocus(false)
	MALock.Search.f = MALock.Search:CreateFontString(nil, nil, "GameFontNormal")
	MALock.Search.f:SetText(MoveAny:GT("LID_SEARCH") .. ":")
	local searchLen = MALock.Search.f:GetStringWidth() + 10
	MALock.Search:SetPoint("TOPLEFT", MALock, "TOPLEFT", 12 + searchLen, -26)
	MALock.Search:SetSize(sw - 2 * br - br - 100 - searchLen, 24)
	MALock.Search.f:SetPoint("RIGHT", MALock.Search, "LEFT", -10, 0)
	MALock.Search:SetScript(
		"OnTextChanged",
		function(sel, ...)
			searchStr = MALock.Search:GetText()
			MoveAny:UpdateElementList()
		end
	)

	MALock.Profiles = CreateFrame("Button", "MALock_Profiles", MALock, "UIPanelButtonTemplate")
	MALock.Profiles:SetPoint("TOPLEFT", MALock, "TOPLEFT", sw - 100 - br, -26)
	MALock.Profiles:SetSize(100, 24)
	MALock.Profiles:SetText(MoveAny:GT("LID_PROFILES"))
	MALock.Profiles:SetScript(
		"OnClick",
		function()
			MoveAny:Lock()
			MoveAny:HideMALock()
			MoveAny:SetEnabled("MAPROFILES", true)
			MoveAny:ShowProfiles()
		end
	)

	MALock.SF = CreateFrame("ScrollFrame", "MALock_SF", MALock, "UIPanelScrollFrameTemplate")
	MALock.SF:SetPoint("TOPLEFT", MALock, br, -30 - 24)
	MALock.SF:SetPoint("BOTTOMRIGHT", MALock, -32, 24 + br)
	MALock.SC = CreateFrame("Frame", "MALock_SC", MALock.SF)
	MALock.SC:SetSize(400, 400)
	MALock.SC:SetPoint("TOPLEFT", MALock.SF, "TOPLEFT", 0, 0)
	MALock.SF:SetScrollChild(MALock.SC)
	MALock.SF.bg = MALock.SF:CreateTexture("MALock.SF.bg", "ARTWORK")
	MALock.SF.bg:SetAllPoints(MALock.SF)
	MALock.SF.bg:SetColorTexture(0.03, 0.03, 0.03, 0.5)
	MALock.save = CreateFrame("BUTTON", "MALock" .. ".save", MALock, "UIPanelButtonTemplate")
	MALock.save:SetSize(120, 24)
	MALock.save:SetPoint("TOPLEFT", MALock, "TOPLEFT", 4, -MALock:GetHeight() + 24 + 4)
	MALock.save:SetText(SAVE)
	MALock.save:SetScript(
		"OnClick",
		function()
			MoveAny:TrySaveEditMode()
			if MALock.save then
				MALock.save:Disable()
			end

			if MALock.CloseButton then
				MALock.CloseButton:Enable()
			end
		end
	)

	MALock.save:Disable()
	MALock.reload = CreateFrame("BUTTON", "MALock" .. ".reload", MALock, "UIPanelButtonTemplate")
	MALock.reload:SetSize(120, 24)
	MALock.reload:SetPoint("TOPLEFT", MALock, "TOPLEFT", 4 + 120 + 4, -MALock:GetHeight() + 24 + 4)
	MALock.reload:SetText(RELOADUI)
	MALock.reload:SetScript(
		"OnClick",
		function()
			C_UI.Reload()
		end
	)

	MALock.showerrors = CreateFrame("BUTTON", "MALock" .. ".showerrors", MALock, "UIPanelButtonTemplate")
	MALock.showerrors:SetSize(120, 24)
	MALock.showerrors:SetPoint("TOPLEFT", MALock, "TOPLEFT", 4 + 120 + 4 + 120 + 4, -MALock:GetHeight() + 24 + 4)
	MALock.showerrors:SetText("Show Errors")
	MALock.showerrors:SetScript(
		"OnClick",
		function()
			if GetCVar("ScriptErrors") == "0" then
				SetCVar("ScriptErrors", 1)
				C_UI.Reload()
			else
				SetCVar("ScriptErrors", 0)
				C_UI.Reload()
			end

			MALock:UpdateShowErrors()
		end
	)

	function MALock:UpdateShowErrors()
		if GetCVar("ScriptErrors") == "0" then
			MALock.showerrors:SetText("Show Errors")
		else
			MALock.showerrors:SetText("Hide Errors")
		end
	end

	MALock:UpdateShowErrors()
	MALock.DISCORD = CreateFrame("EditBox", "MALock" .. ".DISCORD", MALock, "InputBoxTemplate")
	MALock.DISCORD:SetText("discord.gg/qxpK6PKYAD")
	MALock.DISCORD:SetSize(160, 24)
	MALock.DISCORD:SetPoint("TOPLEFT", MALock, "TOPLEFT", MALock:GetWidth() - 160 - 8, -MALock:GetHeight() + 24 + 4)
	MALock.DISCORD:SetAutoFocus(false)
	MAGridFrame = CreateFrame("Frame", "MAGridFrame", MoveAny:GetMainPanel())
	MAGridFrame:SetScript(
		"OnUpdate",
		function(sel)
			if MACurrentEle then
				MAGridFrame:EnableMouse(true)
			else
				MAGridFrame:EnableMouse(false)
			end
		end
	)

	MAGridFrame:HookScript(
		"OnMouseDown",
		function(sel, btn)
			if MoveAny:IsEnabled("MOVEFRAMES", true) and btn == "LeftButton" then
				MoveAny:ClearSelectEle()
			end
		end
	)

	MAGridFrame:SetSize(GetScreenWidth(), GetScreenHeight())
	MAGridFrame:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
	MAGridFrame:SetFrameStrata("LOW")
	MAGridFrame:SetFrameLevel(1)
	MAGridFrame.hor = MAGridFrame:CreateTexture()
	MAGridFrame.hor:SetPoint("CENTER", 0, -0.5)
	MAGridFrame.hor:SetSize(GetScreenWidth(), 1)
	MAGridFrame.hor:SetColorTexture(1, 1, 1, 1)
	MAGridFrame.ver = MAGridFrame:CreateTexture()
	MAGridFrame.ver:SetPoint("CENTER", 0.5, 0)
	MAGridFrame.ver:SetSize(1, GetScreenHeight())
	MAGridFrame.ver:SetColorTexture(1, 1, 1, 1)
	MoveAny:UpdateGrid()
	local dbp1, _, dbp3, dbp4, dbp5 = MoveAny:GetElePoint("MALock")
	if dbp1 and dbp3 then
		MALock:ClearAllPoints()
		MALock:SetPoint(dbp1, MoveAny:GetMainPanel(), dbp3, dbp4, dbp5)
	end

	MoveAny:HideMALock(true)
end

function MoveAny:UpdateGrid()
	local id = 0
	MAGridFrame.lines = MAGridFrame.lines or {}
	for i, v in pairs(MAGridFrame.lines) do
		v:Hide()
	end

	for x = 0, GetScreenWidth() / 2, MoveAny:GetGridSize() do
		MAGridFrame.lines[id] = MAGridFrame.lines[id] or MAGridFrame:CreateTexture()
		MAGridFrame.lines[id]:SetPoint("CENTER", 0.5 + x, 0)
		MAGridFrame.lines[id]:SetSize(1.09, GetScreenHeight())
		if x % 50 == 0 then
			MAGridFrame.lines[id]:SetColorTexture(1, 1, 0.5, 0.25)
		else
			MAGridFrame.lines[id]:SetColorTexture(0.5, 0.5, 0.5, 0.25)
		end

		MAGridFrame.lines[id]:Show()
		id = id + 1
	end

	for x = 0, -GetScreenWidth() / 2, -MoveAny:GetGridSize() do
		MAGridFrame.lines[id] = MAGridFrame.lines[id] or MAGridFrame:CreateTexture()
		MAGridFrame.lines[id]:SetPoint("CENTER", 0.5 + x, 0)
		MAGridFrame.lines[id]:SetSize(1.09, GetScreenHeight())
		if x % 50 == 0 then
			MAGridFrame.lines[id]:SetColorTexture(1, 1, 0.5, 0.25)
		else
			MAGridFrame.lines[id]:SetColorTexture(0.5, 0.5, 0.5, 0.25)
		end

		MAGridFrame.lines[id]:Show()
		id = id + 1
	end

	for y = 0, GetScreenHeight() / 2, MoveAny:GetGridSize() do
		MAGridFrame.lines[id] = MAGridFrame.lines[id] or MAGridFrame:CreateTexture()
		MAGridFrame.lines[id]:SetPoint("CENTER", 0, 0.5 + y)
		MAGridFrame.lines[id]:SetSize(GetScreenWidth(), 1.09, GetScreenHeight())
		if y % 50 == 0 then
			MAGridFrame.lines[id]:SetColorTexture(1, 1, 0.5, 0.25)
		else
			MAGridFrame.lines[id]:SetColorTexture(0.5, 0.5, 0.5, 0.25)
		end

		MAGridFrame.lines[id]:Show()
		id = id + 1
	end

	for y = 0, -GetScreenHeight() / 2, -MoveAny:GetGridSize() do
		MAGridFrame.lines[id] = MAGridFrame.lines[id] or MAGridFrame:CreateTexture()
		MAGridFrame.lines[id]:SetPoint("CENTER", 0, 0.5 + y)
		MAGridFrame.lines[id]:SetSize(GetScreenWidth(), 1.09)
		if y % 50 == 0 then
			MAGridFrame.lines[id]:SetColorTexture(1, 1, 0.5, 0.25)
		else
			MAGridFrame.lines[id]:SetColorTexture(0.5, 0.5, 0.5, 0.25)
		end

		MAGridFrame.lines[id]:Show()
		id = id + 1
	end
end

function MoveAny:ShowProfiles()
	if MAProfiles == nil then
		MAProfiles = CreateFrame("Frame", "MAProfiles", MoveAny:GetMainPanel(), "BasicFrameTemplate")
		MAProfiles:SetSize(sw, sh)
		MAProfiles:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
		MAProfiles:SetFrameStrata("HIGH")
		MAProfiles:SetFrameLevel(999)
		MAProfiles:SetClampedToScreen(true)
		MAProfiles:SetMovable(true)
		MAProfiles:EnableMouse(true)
		MAProfiles:RegisterForDrag("LeftButton")
		MAProfiles:SetScript("OnDragStart", MAProfiles.StartMoving)
		MAProfiles:SetScript(
			"OnDragStop",
			function()
				MAProfiles:StopMovingOrSizing()
				local p1, _, p3, p4, p5 = MAProfiles:GetPoint()
				p4 = MoveAny:Snap(p4)
				p5 = MoveAny:Snap(p5)
				MoveAny:SetElePoint("MALock", p1, _, p3, p4, p5)
			end
		)

		MAProfiles.TitleText:SetText(config.title)
		MAProfiles.CloseButton:SetScript(
			"OnClick",
			function()
				MoveAny:SetEnabled("MAPROFILES", false)
				MAProfiles:Hide()
				MoveAny:Unlock()
				MoveAny:ShowMALock()
			end
		)

		MAProfiles.SF = CreateFrame("ScrollFrame", "MAProfiles_SF", MAProfiles, "UIPanelScrollFrameTemplate")
		MAProfiles.SF:SetPoint("TOPLEFT", MAProfiles, br, -30 - 24)
		MAProfiles.SF:SetPoint("BOTTOMRIGHT", MAProfiles, -32, 24 + br)
		MAProfiles.SC = CreateFrame("Frame", "MAProfiles_SC", MAProfiles.SF)
		MAProfiles.SC:SetSize(400, 400)
		MAProfiles.SC:SetPoint("TOPLEFT", MAProfiles.SF, "TOPLEFT", 0, 0)
		MAProfiles.SF:SetScrollChild(MAProfiles.SC)
		MAProfiles.SF.bg = MAProfiles.SF:CreateTexture()
		MAProfiles.SF.bg:SetAllPoints(MAProfiles.SF)
		MAProfiles.SF.bg:SetColorTexture(0.03, 0.03, 0.03, 0.5)
		MAProfiles.AddProfile = CreateFrame("Button", "MAProfiles_AddProfile", MAProfiles, "UIPanelButtonTemplate")
		MAProfiles.AddProfile:SetPoint("TOPLEFT", MAProfiles, "TOPLEFT", br, -26)
		MAProfiles.AddProfile:SetSize(160, 24)
		MAProfiles.AddProfile:SetText(MoveAny:GT("LID_ADDPROFILE"))
		MAProfiles.AddProfile:SetScript(
			"OnClick",
			function()
				if MAAddProfile == nil then
					MAAddProfile = CreateFrame("Frame", "MAAddProfile", MoveAny:GetMainPanel(), "BasicFrameTemplate")
					MAAddProfile:SetSize(300, 130)
					MAAddProfile:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
					MAAddProfile:SetFrameStrata("HIGH")
					MAAddProfile:SetFrameLevel(1010)
					MAAddProfile:SetClampedToScreen(true)
					MAAddProfile:SetMovable(true)
					MAAddProfile:EnableMouse(true)
					MAAddProfile:RegisterForDrag("LeftButton")
					MAAddProfile:SetScript("OnDragStart", MAAddProfile.StartMoving)
					MAAddProfile:SetScript("OnDragStop", MAAddProfile.StopMovingOrSizing)
					MAAddProfile.name = "NEW"
					MAAddProfile.inheritFrom = ""
					MAAddProfile.TitleText:SetText(MoveAny:GT("LID_ADDPROFILE"))
					MAAddProfile.CloseButton:SetScript(
						"OnClick",
						function()
							MAAddProfile:Hide()
						end
					)

					MAAddProfile.Name = CreateFrame("EditBox", "MAAddProfile_Search", MAAddProfile, "InputBoxTemplate")
					MAAddProfile.Name:SetPoint("TOPLEFT", MAAddProfile, "TOPLEFT", 12, -26)
					MAAddProfile.Name:SetSize(300 - 24, 24)
					MAAddProfile.Name:SetAutoFocus(false)
					MAAddProfile.Name:SetText(MAAddProfile.name)
					MAAddProfile.Name:SetScript(
						"OnTextChanged",
						function(sel, text)
							MAAddProfile.name = MAAddProfile.Name:GetText()
						end
					)

					local profileNames = {}
					tinsert(profileNames, "")
					for name, tab in pairs(MoveAny:GetProfiles()) do
						tinsert(profileNames, name)
					end

					local sliderProfiles = CreateFrame("Slider", nil, MAAddProfile, "OptionsSliderTemplate")
					sliderProfiles:SetWidth(MAAddProfile:GetWidth() - 20)
					sliderProfiles:SetPoint("TOPLEFT", MAAddProfile, "TOPLEFT", 10, -26 - 30 - br)
					sliderProfiles.Low:SetText("")
					sliderProfiles.High:SetText("")
					sliderProfiles.Text:SetText(MoveAny:GT("LID_INHERITFROM") .. ": " .. MAAddProfile.inheritFrom)
					sliderProfiles:SetMinMaxValues(1, #profileNames)
					sliderProfiles:SetObeyStepOnDrag(true)
					sliderProfiles:SetValueStep(1)
					sliderProfiles:SetValue(1)
					sliderProfiles:SetScript(
						"OnValueChanged",
						function(sel, val)
							val = tonumber(string.format("%" .. 0 .. "f", val))
							local value = profileNames[val]
							if value and value ~= MAAddProfile.inheritFrom then
								MAAddProfile.inheritFrom = value
								sel.Text:SetText(MoveAny:GT("LID_INHERITFROM") .. ": " .. value)
							end
						end
					)

					MAAddProfile.AddProfile = CreateFrame("Button", "MAAddProfile_Profiles", MAAddProfile, "UIPanelButtonTemplate")
					MAAddProfile.AddProfile:SetPoint("TOPLEFT", MAAddProfile, "TOPLEFT", br, -26 - 24 - br - 30 - br)
					MAAddProfile.AddProfile:SetSize(160, 24)
					MAAddProfile.AddProfile:SetText(MoveAny:GT("LID_ADD"))
					MAAddProfile.AddProfile:SetScript(
						"OnClick",
						function()
							MoveAny:AddProfile(MAAddProfile.name, MAAddProfile.inheritFrom)
							C_UI.Reload()
						end
					)
				else
					MAAddProfile:Show()
				end
			end
		)

		MAProfiles.GetProfile = CreateFrame("Button", "MAProfiles_GetProfile", MAProfiles, "UIPanelButtonTemplate")
		MAProfiles.GetProfile:SetPoint("TOPLEFT", MAProfiles, "TOPLEFT", br + 160 + br, -26)
		MAProfiles.GetProfile:SetSize(160, 24)
		MAProfiles.GetProfile:SetText(MoveAny:GT("LID_GETPROFILE"))
		MAProfiles.GetProfile:SetScript(
			"OnClick",
			function()
				if MAGetProfile == nil then
					MAGetProfile = CreateFrame("Frame", "MAGetProfile", MoveAny:GetMainPanel(), "BasicFrameTemplate")
					MAGetProfile:SetSize(600, 200)
					MAGetProfile:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
					MAGetProfile:SetFrameStrata("HIGH")
					MAGetProfile:SetFrameLevel(1010)
					MAGetProfile:SetClampedToScreen(true)
					MAGetProfile:SetMovable(true)
					MAGetProfile:EnableMouse(true)
					MAGetProfile:RegisterForDrag("LeftButton")
					MAGetProfile:SetScript("OnDragStart", MAGetProfile.StartMoving)
					MAGetProfile:SetScript("OnDragStop", MAGetProfile.StopMovingOrSizing)
					MAGetProfile.TitleText:SetText(MoveAny:GT("LID_GETPROFILE"))
					MAGetProfile.CloseButton:SetScript(
						"OnClick",
						function()
							MAGetProfile:Hide()
						end
					)

					MAGetProfile.f = MAGetProfile:CreateFontString(nil, nil, "GameFontNormal")
					MAGetProfile.f:SetPoint("TOPLEFT", MAGetProfile, "TOPLEFT", 6, -26)
					MAGetProfile.f:SetText(MoveAny:GT("LID_GETPROFILE"))
					MAGetProfile.f2 = MAGetProfile:CreateFontString(nil, nil, "GameFontNormal")
					MAGetProfile.f2:SetPoint("BOTTOMLEFT", MAGetProfile, "BOTTOMLEFT", 6, 6)
					MAGetProfile.f2:SetText(MoveAny:GT("LID_WAITFORPLAYERPROFILE2"))
					MAGetProfile.SF = CreateFrame("ScrollFrame", "MAGetProfile_SF", MAGetProfile, "UIPanelScrollFrameTemplate")
					MAGetProfile.SF:SetPoint("TOPLEFT", MAGetProfile, br, -30 - 24)
					MAGetProfile.SF:SetPoint("BOTTOMRIGHT", MAGetProfile, -32, 24 + br)
					MAGetProfile.SC = CreateFrame("Frame", "MAGetProfile_SC", MAGetProfile.SF)
					MAGetProfile.SC:SetSize(600, 200)
					MAGetProfile.SC:SetPoint("TOPLEFT", MAGetProfile.SF, "TOPLEFT", 0, 0)
					MAGetProfile.SF:SetScrollChild(MAGetProfile.SC)
					MAGetProfile.SF.bg = MAGetProfile.SF:CreateTexture()
					MAGetProfile.SF.bg:SetAllPoints(MAGetProfile.SF)
					MAGetProfile.SF.bg:SetColorTexture(0.03, 0.03, 0.03, 0.5)
				else
					MAGetProfile:Show()
				end

				MAGetProfile.f:SetText(MoveAny:GT("LID_PROFILES") .. ":")
				MASendProfiles = {} -- Reset
				local function AddLine(id, source, profile)
					MAGetProfile.lines = MAGetProfile.lines or {}
					if MAGetProfile.lines[id] == nil then
						MAGetProfile.lines[id] = CreateFrame("Frame", "lines[" .. id .. "]", MAGetProfile.SC)
						MAGetProfile.lines[id]:SetSize(600, 25)
						MAGetProfile.lines[id]:SetPoint("TOPLEFT", MAGetProfile.SC, "TOPLEFT", 0, 0)
						MAGetProfile.lines[id].name = MAGetProfile.lines[id]:CreateFontString(nil, nil, "GameFontNormal")
						MAGetProfile.lines[id].name:SetPoint("LEFT", MAGetProfile.lines[id], "LEFT", 0, 0)
						MAGetProfile.lines[id].profile = MAGetProfile.lines[id]:CreateFontString(nil, nil, "GameFontNormal")
						MAGetProfile.lines[id].profile:SetPoint("LEFT", MAGetProfile.lines[id], "LEFT", 250, 0)
						MAGetProfile.lines[id].btn = CreateFrame("Button", source .. "btn", MAGetProfile.lines[id], "UIPanelButtonTemplate")
						MAGetProfile.lines[id].btn:SetPoint("LEFT", MAGetProfile.lines[id], "LEFT", 450, 0)
						MAGetProfile.lines[id].btn:SetSize(100, 24)
						MAGetProfile.lines[id].btn:SetText(MoveAny:GT("LID_DOWNLOAD"))
						MAGetProfile.lines[id].btn:SetScript(
							"OnClick",
							function()
								MAGetProfile:Hide()
								WebOwner = source
								WebProfile = profile
								WebProfileData = {}
								C_ChatInfo.SendAddonMessage(PREFIX, "WP;" .. profile, "WHISPER", source)
								if MADownloadProfile == nil then
									MADownloadProfile = CreateFrame("Frame", "MADownloadProfile", MoveAny:GetMainPanel(), "BasicFrameTemplate")
									MADownloadProfile:SetSize(300, 120)
									MADownloadProfile:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
									MADownloadProfile:SetFrameStrata("HIGH")
									MADownloadProfile:SetFrameLevel(1010)
									MADownloadProfile:SetClampedToScreen(true)
									MADownloadProfile:SetMovable(true)
									MADownloadProfile:EnableMouse(true)
									MADownloadProfile:RegisterForDrag("LeftButton")
									MADownloadProfile:SetScript("OnDragStart", MADownloadProfile.StartMoving)
									MADownloadProfile:SetScript("OnDragStop", MADownloadProfile.StopMovingOrSizing)
									MADownloadProfile.TitleText:SetText(MoveAny:GT("LID_DOWNLOAD"))
									MADownloadProfile.name = MADownloadProfile:CreateFontString(nil, nil, "GameFontNormal")
									MADownloadProfile.name:SetPoint("TOPLEFT", MADownloadProfile, "TOPLEFT", 12, -26)
									MADownloadProfile.ProfileName = CreateFrame("EditBox", "MADownloadProfile", MADownloadProfile, "InputBoxTemplate")
									MADownloadProfile.ProfileName:SetPoint("TOPLEFT", MADownloadProfile, "TOPLEFT", 12, -52)
									MADownloadProfile.ProfileName:SetSize(300 - 24, 24)
									MADownloadProfile.ProfileName:SetAutoFocus(false)
									MADownloadProfile.ProfileName:SetScript(
										"OnTextChanged",
										function(sel, text)
											MADownloadProfile.profileName = MADownloadProfile.ProfileName:GetText()
										end
									)

									MADownloadProfile.btn = CreateFrame("Button", source .. "btn", MADownloadProfile, "UIPanelButtonTemplate")
									MADownloadProfile.btn:SetPoint("TOPLEFT", MADownloadProfile, "TOPLEFT", 12, -78)
									MADownloadProfile.btn:SetSize(100, 24)
									MADownloadProfile.btn:SetText(MoveAny:GT("LID_ADD"))
									MADownloadProfile.btn:SetScript(
										"OnClick",
										function()
											local profileName = MADownloadProfile.ProfileName:GetText()
											MoveAny:CheckDB()
											if MATAB["PROFILES"][profileName] == nil then
												MoveAny:ImportProfile(profileName, WebProfileData)
												C_UI.Reload()
											else
												MoveAny:MSG("[AddProfile] can't add, Name already exists.")
											end
										end
									)

									function MADownloadProfile:UpdateStatus()
										if WebStatus == 0 then
											MADownloadProfile.name:SetText(MoveAny:GT("LID_WAITINGFOROWNER"))
											MADownloadProfile.btn:SetEnabled(false)
										elseif WebStatus == 100 then
											MADownloadProfile.name:SetText(MoveAny:GT("LID_DONE"))
											MADownloadProfile.btn:SetEnabled(true)
										else
											MADownloadProfile.name:SetText(MoveAny:GT("LID_STATUS") .. ": " .. WebStatus .. "%")
											MADownloadProfile.btn:SetEnabled(false)
										end

										C_Timer.After(0.1, MADownloadProfile.UpdateStatus)
									end

									MADownloadProfile:UpdateStatus()
									MADownloadProfile.CloseButton:SetScript(
										"OnClick",
										function()
											MADownloadProfile:Hide()
										end
									)
								end

								MADownloadProfile.profileName = WebProfile
								MADownloadProfile.ProfileName:SetText(MADownloadProfile.profileName)
								MADownloadProfile:Show()
							end
						)
					end

					MAGetProfile.lines[id].name:SetText(MoveAny:GT("LID_PLAYER") .. ": " .. source)
					MAGetProfile.lines[id].profile:SetText(MoveAny:GT("LID_PROFILE") .. ": " .. profile)
				end

				local function GetProfiles()
					if MAGetProfile:IsVisible() then
						MAGetProfile.lines = MAGetProfile.lines or {}
						local id = 0
						for name1, tab1 in pairs(MASendProfiles) do
							AddLine(id, name1, tab1.profile)
							id = id + 1
						end

						C_Timer.After(1, GetProfiles)
					end
				end

				GetProfiles()
			end
		)

		local index = 0
		for name, tab in pairs(MoveAny:GetProfiles()) do
			btn = CreateFrame("Button", name, MAProfiles.SC, "UIPanelButtonTemplate")
			btn:SetPoint("TOPLEFT", MAProfiles.SC, "TOPLEFT", br, -index * 40 - br)
			btn:SetSize(160, 24)
			if name == MoveAny:GetCP() then
				btn:SetText("(" .. MoveAny:GT("LID_CURRENT") .. ") " .. name)
			else
				btn:SetText(name)
			end

			btn:SetScript(
				"OnClick",
				function()
					MoveAny:SetCP(name)
					C_UI.Reload()
				end
			)

			btnShare = CreateFrame("Button", name, MAProfiles.SC, "UIPanelButtonTemplate")
			btnShare:SetPoint("TOPLEFT", MAProfiles.SC, "TOPLEFT", br + 160 + br, -index * 40 - br)
			btnShare:SetSize(80, 24)
			btnShare:SetText(MoveAny:GT("LID_SHARE"))
			btnShare:SetScript(
				"OnClick",
				function()
					if MAShareProfile == nil then
						MAShareProfile = CreateFrame("Frame", "MAShareProfile", MoveAny:GetMainPanel(), "BasicFrameTemplate")
						MAShareProfile:SetSize(600, 200)
						MAShareProfile:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
						MAShareProfile:SetFrameStrata("HIGH")
						MAShareProfile:SetFrameLevel(1010)
						MAShareProfile:SetClampedToScreen(true)
						MAShareProfile:SetMovable(true)
						MAShareProfile:EnableMouse(true)
						MAShareProfile:RegisterForDrag("LeftButton")
						MAShareProfile:SetScript("OnDragStart", MAShareProfile.StartMoving)
						MAShareProfile:SetScript("OnDragStop", MAShareProfile.StopMovingOrSizing)
						MAShareProfile.TitleText:SetText(MoveAny:GT("LID_SHAREPROFILE"))
						MAShareProfile.CloseButton:SetScript(
							"OnClick",
							function()
								MAShareProfile:Hide()
							end
						)

						MAShareProfile.f = MAShareProfile:CreateFontString(nil, nil, "GameFontNormal")
						MAShareProfile.f:SetPoint("TOPLEFT", MAShareProfile, "TOPLEFT", 6, -26)
						MAShareProfile.f:SetText(MoveAny:GT("LID_PROFILE") .. ": " .. name)
						MAShareProfile.f2 = MAShareProfile:CreateFontString(nil, nil, "GameFontNormal")
						MAShareProfile.f2:SetPoint("BOTTOMLEFT", MAShareProfile, "BOTTOMLEFT", 6, 6)
						MAShareProfile.f2:SetText(MoveAny:GT("LID_WAITFORPLAYERPROFILE"))
						MAShareProfile.SF = CreateFrame("ScrollFrame", "MAShareProfile_SF", MAShareProfile, "UIPanelScrollFrameTemplate")
						MAShareProfile.SF:SetPoint("TOPLEFT", MAShareProfile, br, -30 - 24)
						MAShareProfile.SF:SetPoint("BOTTOMRIGHT", MAShareProfile, -32, 24 + br)
						MAShareProfile.SC = CreateFrame("Frame", "MAShareProfile_SC", MAShareProfile.SF)
						MAShareProfile.SC:SetSize(600, 200)
						MAShareProfile.SC:SetPoint("TOPLEFT", MAShareProfile.SF, "TOPLEFT", 0, 0)
						MAShareProfile.SF:SetScrollChild(MAShareProfile.SC)
						MAShareProfile.SF.bg = MAShareProfile.SF:CreateTexture()
						MAShareProfile.SF.bg:SetAllPoints(MAShareProfile.SF)
						MAShareProfile.SF.bg:SetColorTexture(0.03, 0.03, 0.03, 0.5)
					else
						MAShareProfile:Show()
					end

					MAShareProfile.f:SetText(MoveAny:GT("LID_PROFILE") .. ": " .. name)
					MAWantProfiles = {} -- Reset
					local function AddLine(id, source, profile)
						MAShareProfile.lines = MAShareProfile.lines or {}
						if MAShareProfile.lines[id] == nil then
							MAShareProfile.lines[id] = CreateFrame("Frame", "lines[" .. id .. "]", MAShareProfile.SC)
							MAShareProfile.lines[id]:SetSize(600, 25)
							MAShareProfile.lines[id]:SetPoint("TOPLEFT", MAShareProfile.SC, "TOPLEFT", 0, id * 25)
							MAShareProfile.lines[id].name = MAShareProfile.lines[id]:CreateFontString(nil, nil, "GameFontNormal")
							MAShareProfile.lines[id].name:SetPoint("LEFT", MAShareProfile.lines[id], "LEFT", 0, id * 25)
							MAShareProfile.lines[id].btn = CreateFrame("Button", profile, MAShareProfile.lines[id], "UIPanelButtonTemplate")
							MAShareProfile.lines[id].btn:SetPoint("LEFT", MAShareProfile.lines[id], "LEFT", 450, 0)
							MAShareProfile.lines[id].btn:SetSize(100, 24)
							MAShareProfile.lines[id].btn:SetText(MoveAny:GT("LID_UPLOAD"))
							MAShareProfile.lines[id].btn:SetScript(
								"OnClick",
								function()
									local delay = 0.01
									C_ChatInfo.SendAddonMessage(PREFIX, "UP;" .. profile .. ";0", "WHISPER", source)
									MoveAny:CheckDB()
									if MATAB["PROFILES"][profile] then
										local max = 0
										local count = 0
										local cur = 0
										for i, v in pairs(MATAB["PROFILES"][profile]["ELES"]["POINTS"]) do
											for j, w in pairs(v) do
												max = max + 1
											end
										end

										for i, v in pairs(MATAB["PROFILES"][profile]["ELES"]["SIZES"]) do
											for j, w in pairs(v) do
												max = max + 1
											end
										end

										for i, v in pairs(MATAB["PROFILES"][profile]["ELES"]["OPTIONS"]) do
											for j, w in pairs(v) do
												max = max + 1
											end
										end

										for i, v in pairs(MATAB["PROFILES"][profile]["ELES"]["POINTS"]) do
											for j, w in pairs(v) do
												count = count + 1
												C_Timer.After(
													count * delay,
													function()
														cur = cur + 1
														local per = string.format("%0.1f", cur / max * 100)
														WebStatus = tonumber(per)
														C_ChatInfo.SendAddonMessage(PREFIX, "UP;" .. profile .. ";" .. per, "WHISPER", source)
														if w ~= nil then
															local typ = type(w)
															local val = w
															if typ == "boolean" then
																if w then
																	val = 1
																else
																	val = 0
																end
															elseif typ == "table" then
																val = ""
															end

															if typ ~= "table" then
																C_ChatInfo.SendAddonMessage(PREFIX, "DL;" .. profile .. ";" .. "POINTS" .. ";" .. i .. ";" .. j .. ";" .. typ .. ";" .. val, "WHISPER", source)
															end
														end
													end
												)
											end
										end

										C_Timer.After(
											count * delay,
											function()
												count = 0
												for i, v in pairs(MATAB["PROFILES"][profile]["ELES"]["SIZES"]) do
													for j, w in pairs(v) do
														count = count + 1
														C_Timer.After(
															count * delay,
															function()
																cur = cur + 1
																local per = string.format("%0.1f", cur / max * 100)
																WebStatus = tonumber(per)
																C_ChatInfo.SendAddonMessage(PREFIX, "UP;" .. profile .. ";" .. per, "WHISPER", source)
																if w ~= nil then
																	local typ = type(w)
																	local val = w
																	if typ == "boolean" then
																		if w then
																			val = 1
																		else
																			val = 0
																		end
																	elseif typ == "table" then
																		val = ""
																	end

																	if typ ~= "table" then
																		C_ChatInfo.SendAddonMessage(PREFIX, "DL;" .. profile .. ";" .. "SIZES" .. ";" .. i .. ";" .. j .. ";" .. typ .. ";" .. val, "WHISPER", source)
																	end
																end
															end
														)
													end
												end

												C_Timer.After(
													count * delay,
													function()
														count = 0
														for i, v in pairs(MATAB["PROFILES"][profile]["ELES"]["OPTIONS"]) do
															for j, w in pairs(v) do
																count = count + 1
																C_Timer.After(
																	count * delay,
																	function()
																		cur = cur + 1
																		local per = string.format("%0.1f", cur / max * 100)
																		WebStatus = tonumber(per)
																		C_ChatInfo.SendAddonMessage(PREFIX, "UP;" .. profile .. ";" .. per, "WHISPER", source)
																		if w ~= nil then
																			local typ = type(w)
																			local val = w
																			if typ == "boolean" then
																				if w then
																					val = 1
																				else
																					val = 0
																				end
																			elseif typ == "table" then
																				val = ""
																			end

																			if typ ~= "table" then
																				C_ChatInfo.SendAddonMessage(PREFIX, "DL;" .. profile .. ";" .. "OPTIONS" .. ";" .. i .. ";" .. j .. ";" .. typ .. ";" .. val, "WHISPER", source)
																			end
																		end
																	end
																)
															end
														end
													end
												)
											end
										)
									end

									MAShareProfile:Hide()
									if MAUploadProfile == nil then
										MAUploadProfile = CreateFrame("Frame", "MAUploadProfile", MoveAny:GetMainPanel(), "BasicFrameTemplate")
										MAUploadProfile:SetSize(120, 120)
										MAUploadProfile:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
										MAUploadProfile:SetFrameStrata("HIGH")
										MAUploadProfile:SetFrameLevel(1010)
										MAUploadProfile:SetClampedToScreen(true)
										MAUploadProfile:SetMovable(true)
										MAUploadProfile:EnableMouse(true)
										MAUploadProfile:RegisterForDrag("LeftButton")
										MAUploadProfile:SetScript("OnDragStart", MAUploadProfile.StartMoving)
										MAUploadProfile:SetScript("OnDragStop", MAUploadProfile.StopMovingOrSizing)
										MAUploadProfile.TitleText:SetText(MoveAny:GT("LID_DOWNLOAD"))
										MAUploadProfile.CloseButton:SetScript(
											"OnClick",
											function()
												MAUploadProfile:Hide()
											end
										)

										MAUploadProfile.name = MAUploadProfile:CreateFontString(nil, nil, "GameFontNormal")
										MAUploadProfile.name:SetPoint("TOPLEFT", MAUploadProfile, "TOPLEFT", 12, -26)
										MAUploadProfile.btn = CreateFrame("Button", name, MAUploadProfile, "UIPanelButtonTemplate")
										MAUploadProfile.btn:SetPoint("TOPLEFT", MAUploadProfile, "TOPLEFT", 12, -78)
										MAUploadProfile.btn:SetSize(100, 24)
										MAUploadProfile.btn:SetText("X")
										MAUploadProfile.btn:SetScript(
											"OnClick",
											function()
												MAUploadProfile:Hide()
											end
										)

										function MAUploadProfile:UpdateStatus()
											if WebStatus == 0 or WebStatus == 0.0 then
												MAUploadProfile.name:SetText(MoveAny:GT("LID_WAITINGFOROWNER"))
												MAUploadProfile.btn:SetEnabled(false)
											elseif WebStatus == 100 or WebStatus == 100.0 then
												MAUploadProfile.name:SetText(MoveAny:GT("LID_DONE"))
												MAUploadProfile.btn:SetEnabled(true)
											else
												MAUploadProfile.name:SetText(MoveAny:GT("LID_STATUS") .. ": " .. WebStatus .. "%")
												MAUploadProfile.btn:SetEnabled(false)
											end

											C_Timer.After(0.1, MAUploadProfile.UpdateStatus)
										end

										MAUploadProfile:UpdateStatus()
										MAUploadProfile.CloseButton:SetScript(
											"OnClick",
											function()
												MAUploadProfile:Hide()
											end
										)
									else
										MAUploadProfile:Show()
									end
								end
							)
						end

						MAShareProfile.lines[id].name:SetText(MoveAny:GT("LID_PLAYER") .. ": " .. source)
					end

					-- Receive Buyers
					local function GetProfiles()
						if MAShareProfile:IsVisible() then
							MAShareProfile.lines = MAShareProfile.lines or {}
							local id = 0
							for name2, tab2 in pairs(MAWantProfiles) do
								AddLine(id, name2, tab2.profile)
								id = id + 1
							end

							C_Timer.After(1, GetProfiles)
						end
					end

					GetProfiles()
					-- Send out Profile Shop
					local function ShareProfile()
						if MAShareProfile:IsVisible() then
							C_ChatInfo.SendAddonMessage(PREFIX, "SP;" .. name, "PARTY")
							C_Timer.After(4, ShareProfile)
						end
					end

					ShareProfile()
				end
			)

			if name ~= "DEFAULT" then
				btnRen = CreateFrame("Button", name, MAProfiles.SC, "UIPanelButtonTemplate")
				btnRen:SetPoint("TOPLEFT", MAProfiles.SC, "TOPLEFT", br + 160 + br + 80 + br, -index * 40 - br)
				btnRen:SetSize(100, 24)
				btnRen:SetText(MoveAny:GT("LID_RENAME"))
				btnRen:SetScript(
					"OnClick",
					function()
						if MARenameProfile == nil then
							MARenameProfile = CreateFrame("Frame", "MARenameProfile", MoveAny:GetMainPanel(), "BasicFrameTemplate")
							MARenameProfile:SetSize(300, 130)
							MARenameProfile:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
							MARenameProfile:SetFrameStrata("HIGH")
							MARenameProfile:SetFrameLevel(1010)
							MARenameProfile:SetClampedToScreen(true)
							MARenameProfile:SetMovable(true)
							MARenameProfile:EnableMouse(true)
							MARenameProfile:RegisterForDrag("LeftButton")
							MARenameProfile:SetScript("OnDragStart", MARenameProfile.StartMoving)
							MARenameProfile:SetScript("OnDragStop", MARenameProfile.StopMovingOrSizing)
							MARenameProfile.TitleText:SetText(MoveAny:GT("LID_RENAME"))
							MARenameProfile.CloseButton:SetScript(
								"OnClick",
								function()
									MARenameProfile:Hide()
								end
							)

							MARenameProfile.Name = CreateFrame("EditBox", "MARenameProfile_Search", MARenameProfile, "InputBoxTemplate")
							MARenameProfile.Name:SetPoint("TOPLEFT", MARenameProfile, "TOPLEFT", 12, -26)
							MARenameProfile.Name:SetSize(300 - 24, 24)
							MARenameProfile.Name:SetAutoFocus(false)
							MARenameProfile.Name:SetScript(
								"OnTextChanged",
								function(sel, text)
									MARenameProfile.name = MARenameProfile.Name:GetText()
								end
							)

							MARenameProfile.RenameProfile = CreateFrame("Button", "MARenameProfile_Profiles", MARenameProfile, "UIPanelButtonTemplate")
							MARenameProfile.RenameProfile:SetPoint("TOPLEFT", MARenameProfile, "TOPLEFT", br, -26 - 24 - br - 30 - br)
							MARenameProfile.RenameProfile:SetSize(160, 24)
							MARenameProfile.RenameProfile:SetText(MoveAny:GT("LID_RENAME"))
							MARenameProfile.RenameProfile:SetScript(
								"OnClick",
								function()
									if MARenameProfile.oldname ~= MARenameProfile.name then
										MoveAny:RenameProfile(MARenameProfile.oldname, MARenameProfile.name)
									else
										MoveAny:MSG("[RENAME PROFILE] New name is same as old name.")
									end
								end
							)
						else
							MARenameProfile:Show()
						end

						MARenameProfile.oldname = name
						MARenameProfile.name = name
						MARenameProfile.Name:SetText(name)
					end
				)
			end

			btnRem = CreateFrame("Button", name, MAProfiles.SC, "UIPanelButtonTemplate")
			btnRem:SetPoint("TOPLEFT", MAProfiles.SC, "TOPLEFT", br + 160 + br + 80 + br + 100 + br, -index * 40 - br)
			btnRem:SetSize(100, 24)
			btnRem:SetText(MoveAny:GT("LID_REMOVE"))
			btnRem:SetScript(
				"OnClick",
				function()
					MoveAny:RemoveProfile(name)
					C_UI.Reload()
				end
			)

			index = index + 1
		end

		local dbp1, _, dbp3, dbp4, dbp5 = MoveAny:GetElePoint("MALock")
		if dbp1 and dbp3 then
			MAProfiles:ClearAllPoints()
			MAProfiles:SetPoint(dbp1, MoveAny:GetMainPanel(), dbp3, dbp4, dbp5)
		end
	else
		MAProfiles:Show()
	end
end

local function OnEvent(sel, event, ...)
	if event == "CHAT_MSG_ADDON" then
		local prefix, data, _, source, _ = ...
		if prefix == PREFIX then
			tab = {strsplit(";", data)}
			local name, realm = UnitName("player")
			if realm == nil then
				realm = GetRealmName()
			end

			local cmd = tab[1]
			-- SendProfile
			if cmd == "SP" then
				if source ~= name .. "-" .. realm and not MASendProfiles[source] then
					local ptab = {}
					ptab.name = source
					ptab.profile = tab[2]
					MASendProfiles[source] = ptab
				end
			elseif cmd == "WP" then
				-- WantProfile
				if source ~= name .. "-" .. realm and not MAWantProfiles[source] then
					local ptab = {}
					ptab.name = source
					ptab.profile = tab[2]
					MAWantProfiles[source] = ptab
				end
			elseif cmd == "UP" then
				local target = tab[2]
				local percent = tab[3]
				if source and target and source == WebOwner and target == WebProfile then
					WebStatus = tonumber(percent)
				end
			elseif cmd == "DL" then
				local target = tab[2]
				local mainIndex = tab[3]
				local subIndex = tab[4]
				local index = tab[5]
				local typ = tab[6]
				local val = tab[7]
				if source and target and source == WebOwner and target == WebProfile then
					WebProfileData = WebProfileData or {}
					WebProfileData[mainIndex] = WebProfileData[mainIndex] or {}
					WebProfileData[mainIndex][subIndex] = WebProfileData[mainIndex][subIndex] or {}
					if typ == "boolean" then
						if val == "1" then
							val = true
						else
							val = false
						end
					elseif typ == "number" then
						val = tonumber(val)
					end

					WebProfileData[mainIndex][subIndex][index] = val
				end
			end
		end
	elseif event == "PLAYER_ENTERING_WORLD" then
		local isInitialLogin, isReloadingUi = ...
		if isInitialLogin or isReloadingUi then
			C_ChatInfo.RegisterAddonMessagePrefix(PREFIX)
		end
	end
end

local f = CreateFrame("Frame")
f:RegisterEvent("CHAT_MSG_ADDON")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", OnEvent)
function MoveAny:LoadAddon()
	MoveAny.init = MoveAny.init or false
	if MoveAny.init then return end
	MoveAny.init = true
	local _, class = UnitClass("player")
	if MoveAny:IsEnabled("SHOWTIPS", true) then
		if IsAddOnLoaded("Dominos") then
			MoveAny:MSG("Dominos Detected, please make sure Dominos Elements are disabled in MoveAny!")
		end

		if IsAddOnLoaded("Bartender4") then
			MoveAny:MSG("Bartender4 Detected, please make sure that an element is only controlled by one addon at a time!")
		end
	end

	if IsAddOnLoaded("D4KiR MoveAndImprove") then
		MoveAny:MSG("DON'T use MoveAndImprove, when you use MoveAny")
	end

	if MoveAny.InitSlash then
		MoveAny:InitSlash()
	end

	if MoveAny.InitDB then
		MoveAny:InitDB()
	end

	if MoveAny:IsEnabled("SHOWTIPS", true) then
		MoveAny:MSG(MoveAny:GT("LID_STARTHELP"))
		MoveAny:MSG(MoveAny:GT("LID_STARTHELP2"))
	end

	if MoveAny:GetWoWBuild() ~= "RETAIL" and MoveAny:IsEnabled("ACTIONBARS", false) then
		if MainMenuBarPerformanceBarFrame then
			MainMenuBarPerformanceBarFrame:SetParent(MAHIDDEN)
		end

		if UIPARENT_MANAGED_FRAME_POSITIONS then
			UIPARENT_MANAGED_FRAME_POSITIONS["MainMenuBar"] = nil
		end

		if MainMenuBarArtFrame then
			if UIPARENT_MANAGED_FRAME_POSITIONS then
				UIPARENT_MANAGED_FRAME_POSITIONS["MainMenuBarArtFrame"] = nil
			end

			MainMenuBarArtFrame:SetParent(MAHIDDEN)
		end

		if MainMenuBar then
			MainMenuBar:SetParent(MAHIDDEN)
		end

		if MainMenuBarOverlayFrame then
			MainMenuBarOverlayFrame:SetParent(MAHIDDEN)
		end

		if MainMenuBarExpText then
			MainMenuBarExpText:SetParent(MainMenuExpBar)
		end
	end

	MoveAny:InitActionBarLayouts()
	if MoveAny:AnyActionbarEnabled() then
		MoveAny:CustomBars()
	end

	if MoveAny.InitStanceBar then
		MoveAny:InitStanceBar()
	end

	if MoveAny.InitPetBar then
		MoveAny:InitPetBar()
	end

	if Arena_LoadUI then
		if MoveAny.InitArenaEnemyFrames then
			MoveAny:InitArenaEnemyFrames()
		end

		if MoveAny.InitArenaPrepFrames then
			MoveAny:InitArenaPrepFrames()
		end
	end

	if MoveAny:IsEnabled("COMPACTARENAFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "CompactArenaFrame",
				["lstr"] = "LID_COMPACTARENAFRAME"
			}
		)
	end

	if MoveAny:IsEnabled("ROLEPOLLPOPUP", false) then
		RolePollPopup:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
		MoveAny:RegisterWidget(
			{
				["name"] = "RolePollPopup",
				["lstr"] = "LID_ROLEPOLLPOPUP"
			}
		)
	end

	if MoveAny:IsEnabled("READYCHECKLISTENERFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "ReadyCheckListenerFrame",
				["lstr"] = "LID_READYCHECKLISTENERFRAME"
			}
		)
	end

	if PlayerCastingBarFrame then
		if MoveAny:IsEnabled("CASTINGBAR", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "PlayerCastingBarFrame",
					["lstr"] = "LID_CASTINGBAR",
				}
			)
		end

		if MoveAny:IsEnabled("CASTINGBARTIMER", false) then
			PlayerCastingBarFrameT = CreateFrame("FRAME", MoveAny:GetMainPanel())
			PlayerCastingBarFrameT:SetSize(20, 20)
			PlayerCastingBarFrameT:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
			if PlayerCastingBarFrame.timer ~= nil then
				PlayerCastingBarFrame.timer:SetParent(PlayerCastingBarFrameT)
				PlayerCastingBarFrame.timer:ClearAllPoints()
				PlayerCastingBarFrame.timer:SetPoint("CENTER", PlayerCastingBarFrameT, "CENTER", 0, 0)
			end

			MoveAny:RegisterWidget(
				{
					["name"] = "PlayerCastingBarFrameT",
					["lstr"] = "LID_CASTINGBARTIMER",
				}
			)
		end
	else
		if MoveAny:IsEnabled("CASTINGBAR", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "CastingBarFrame",
					["lstr"] = "LID_CASTINGBAR"
				}
			)
		end
	end

	if TotemFrame and MoveAny:IsEnabled("TOTEMFRAME", false) then
		TotemFrame.unit = "player"
		TotemFrame:SetParent(MoveAny:GetMainPanel())
		MoveAny:RegisterWidget(
			{
				["name"] = "TotemFrame",
				["lstr"] = "LID_TOTEMFRAME",
				["sw"] = 32 * 4,
				["sh"] = 32,
				["userplaced"] = true,
				["secure"] = true,
			}
		)
	end

	if RuneFrame and MoveAny:IsEnabled("RUNEFRAME", false) and class == "DEATHKNIGHT" then
		RuneFrame.unit = "player"
		RuneFrame:SetParent(MoveAny:GetMainPanel())
		MoveAny:RegisterWidget(
			{
				["name"] = "RuneFrame",
				["lstr"] = "LID_RUNEFRAME"
			}
		)
	end

	if WarlockPowerFrame and MoveAny:IsEnabled("WARLOCKPOWERFRAME", false) and class == "WARLOCK" then
		WarlockPowerFrame.unit = "player"
		WarlockPowerFrame:SetParent(MoveAny:GetMainPanel())
		MoveAny:RegisterWidget(
			{
				["name"] = "WarlockPowerFrame",
				["lstr"] = "LID_WARLOCKPOWERFRAME"
			}
		)
	end

	if MonkHarmonyBarFrame and MoveAny:IsEnabled("MONKHARMONYBARFRAME", false) and class == "MONK" then
		MonkHarmonyBarFrame.unit = "player"
		MonkHarmonyBarFrame:SetParent(MoveAny:GetMainPanel())
		MoveAny:RegisterWidget(
			{
				["name"] = "MonkHarmonyBarFrame",
				["lstr"] = "LID_MONKHARMONYBARFRAME"
			}
		)
	end

	if MonkStaggerBar and MoveAny:IsEnabled("MONKSTAGGERBAR", false) and class == "MONK" then
		MonkStaggerBar.unit = "player"
		MonkStaggerBar:SetParent(MoveAny:GetMainPanel())
		MoveAny:RegisterWidget(
			{
				["name"] = "MonkStaggerBar",
				["lstr"] = "LID_MONKSTAGGERBAR"
			}
		)
	end

	if MageArcaneChargesFrame and MoveAny:IsEnabled("MAGEARCANECHARGESFRAME", false) and class == "MAGE" then
		MageArcaneChargesFrame.unit = "player"
		MageArcaneChargesFrame:SetParent(MoveAny:GetMainPanel())
		MoveAny:RegisterWidget(
			{
				["name"] = "MageArcaneChargesFrame",
				["lstr"] = "LID_MAGEARCANECHARGESFRAME"
			}
		)
	end

	if (RogueComboPointBarFrame or DruidComboPointBarFrame) and MoveAny:IsEnabled("COMBOPOINTPLAYERFRAME", false) then
		if class == "ROGUE" then
			RogueComboPointBarFrame.unit = "player"
			RogueComboPointBarFrame:SetParent(MoveAny:GetMainPanel())
			MoveAny:RegisterWidget(
				{
					["name"] = "RogueComboPointBarFrame",
					["lstr"] = "LID_COMBOPOINTPLAYERFRAME"
				}
			)
		elseif class == "DRUID" then
			DruidComboPointBarFrame.unit = "player"
			DruidComboPointBarFrame:SetParent(MoveAny:GetMainPanel())
			MoveAny:RegisterWidget(
				{
					["name"] = "DruidComboPointBarFrame",
					["lstr"] = "LID_COMBOPOINTPLAYERFRAME"
				}
			)
		end
	end

	if EssencePlayerFrame and MoveAny:IsEnabled("ESSENCEPLAYERFRAME", false) and class == "EVOKER" then
		EssencePlayerFrame.unit = "player"
		EssencePlayerFrame:SetParent(MoveAny:GetMainPanel())
		MoveAny:RegisterWidget(
			{
				["name"] = "EssencePlayerFrame",
				["lstr"] = "LID_ESSENCEPLAYERFRAME"
			}
		)
	end

	if PaladinPowerBarFrame and MoveAny:IsEnabled("PALADINPOWERBARFRAME", false) and class == "PALADIN" then
		PaladinPowerBarFrame.unit = "player"
		PaladinPowerBarFrame:SetParent(MoveAny:GetMainPanel())
		MoveAny:RegisterWidget(
			{
				["name"] = "PaladinPowerBarFrame",
				["lstr"] = "LID_PALADINPOWERBARFRAME"
			}
		)
	end

	if MoveAny:IsEnabled("EDITMODE", MoveAny:GetWoWBuildNr() < 100000) then
		if PlayerFrameBackground and MoveAny:IsEnabled("PLAYERFRAMEBACKGROUND", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "PlayerFrameBackground",
					["lstr"] = "LID_PLAYERFRAMEBACKGROUND",
					["userplaced"] = true
				}
			)
		end

		if PlayerLevelText and MoveAny:IsEnabled("PLAYERLEVELTEXT", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "PlayerLevelText",
					["lstr"] = "LID_PLAYERLEVELTEXT",
					["userplaced"] = true
				}
			)
		end

		if MoveAny:IsEnabled("PLAYERFRAME", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "PlayerFrame",
					["lstr"] = "LID_PLAYERFRAME",
					["userplaced"] = true
				}
			)
		end

		if MoveAny:IsEnabled("TARGETFRAMENAMEBACKGROUND", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "TargetFrameNameBackground",
					["lstr"] = "LID_TARGETFRAMENAMEBACKGROUND",
					["userplaced"] = true
				}
			)
		end

		if MoveAny:IsEnabled("TargetFrameNumericalThreat", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "TargetFrameNumericalThreat",
					["lstr"] = "LID_TargetFrameNumericalThreat",
					["userplaced"] = true
				}
			)
		end

		if MoveAny:GetWoWBuild() ~= "RETAIL" and MoveAny:IsEnabled("TARGETFRAMEBUFF1", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "TargetFrameBuff1",
					["lstr"] = "LID_TARGETFRAMEBUFF1",
					["userplaced"] = true,
					["setup"] = function()
						local frame = TargetFrameBuff1
						function frame:UpdateBuffScaleAlpha()
							if _G["TargetFrameBuff" .. 1] == nil then return end
							local scale = _G["TargetFrameBuff" .. 1]:GetScale()
							local alpha = _G["TargetFrameBuff" .. 1]:GetAlpha()
							for i = 1, 32 do
								local bb = _G["TargetFrameBuff" .. i]
								if bb and i > 1 then
									bb:SetScale(scale)
									bb:SetAlpha(alpha)
								end

								local db = _G["TargetFrameDebuff" .. i]
								if db then
									db:SetScale(scale)
									db:SetAlpha(alpha)
								end
							end
						end

						local bbf = CreateFrame("FRAME")
						bbf:RegisterEvent("UNIT_AURA")
						bbf:SetScript(
							"OnEvent",
							function()
								frame:UpdateBuffScaleAlpha()
							end
						)

						hooksecurefunc(
							frame,
							"SetPoint",
							function()
								frame:UpdateBuffScaleAlpha()
							end
						)

						hooksecurefunc(
							frame,
							"SetScale",
							function()
								frame:UpdateBuffScaleAlpha()
							end
						)

						frame:UpdateBuffScaleAlpha()
					end,
				}
			)
		end

		if MoveAny:IsEnabled("TARGETFRAME", false) then
			if ComboFrame then
				hooksecurefunc(
					TargetFrame,
					"SetScale",
					function(sel, scale)
						ComboFrame:SetScale(scale)
					end
				)

				ComboFrame:SetScale(TargetFrame:GetScale())
				hooksecurefunc(
					TargetFrame,
					"SetAlpha",
					function(sel, alpha)
						ComboFrame:SetAlpha(alpha)
					end
				)

				ComboFrame:SetAlpha(TargetFrame:GetAlpha())
			end

			MoveAny:RegisterWidget(
				{
					["name"] = "TargetFrame",
					["lstr"] = "LID_TARGETFRAME",
					["userplaced"] = true
				}
			)
		end

		if MoveAny:IsEnabled("COMBOFRAME", false) then
			local cpsw, cpsh = 12, 12
			for i = 1, 5 do
				local cp = _G["ComboPoint" .. i]
				if cp then
					cpsw, cpsh = cp:GetSize()
					cp:ClearAllPoints()
					if i == 1 then
						cp:SetPoint("LEFT", ComboFrame, "LEFT", 0, 0)
					else
						cp:SetPoint("LEFT", _G["ComboPoint" .. (i - 1)], "RIGHT", 0, 0)
					end
				end
			end

			ComboFrame:SetSize(cpsw * 5, cpsh)
			MoveAny:RegisterWidget(
				{
					["name"] = "ComboFrame",
					["lstr"] = "LID_COMBOFRAME",
					["userplaced"] = true
				}
			)
		end

		if MoveAny:GetWoWBuild() ~= "RETAIL" and MoveAny:IsEnabled("FOCUSFRAMEBUFF1", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "FocusFrameBuff1",
					["lstr"] = "LID_FOCUSFRAMEBUFF1",
					["userplaced"] = true,
					["setup"] = function()
						local frame = FocusFrameBuff1
						function frame:UpdateBuffScaleAlpha()
							if _G["FocusFrameBuff" .. 1] == nil then return end
							local scale = _G["FocusFrameBuff" .. 1]:GetScale()
							local alpha = _G["FocusFrameBuff" .. 1]:GetAlpha()
							for i = 1, 32 do
								local bb = _G["FocusFrameBuff" .. i]
								if bb and i > 1 then
									bb:SetScale(scale)
									bb:SetAlpha(alpha)
								end

								local db = _G["FocusFrameDebuff" .. i]
								if db then
									db:SetScale(scale)
									db:SetAlpha(alpha)
								end
							end
						end

						local bbf = CreateFrame("FRAME")
						bbf:RegisterEvent("UNIT_AURA")
						bbf:SetScript(
							"OnEvent",
							function()
								frame:UpdateBuffScaleAlpha()
							end
						)

						hooksecurefunc(
							frame,
							"SetPoint",
							function()
								frame:UpdateBuffScaleAlpha()
							end
						)

						hooksecurefunc(
							frame,
							"SetScale",
							function()
								frame:UpdateBuffScaleAlpha()
							end
						)

						frame:UpdateBuffScaleAlpha()
					end,
				}
			)
		end

		if MoveAny:IsEnabled("FOCUSFRAME", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "FocusFrame",
					["lstr"] = "LID_FOCUSFRAME",
					["userplaced"] = true
				}
			)
		end

		if MoveAny:IsEnabled("PETBAR", false) then
			if PetActionBar then
				MoveAny:RegisterWidget(
					{
						["name"] = "PetActionBar",
						["lstr"] = "LID_PETBAR"
					}
				)
			else
				MoveAny:RegisterWidget(
					{
						["name"] = "MAPetBar",
						["lstr"] = "LID_PETBAR"
					}
				)
			end
		end

		if MoveAny:IsEnabled("STANCEBAR", false) and StanceBar then
			MoveAny:RegisterWidget(
				{
					["name"] = "StanceBar",
					["lstr"] = "LID_STANCEBAR",
					["secure"] = true
				}
			)
		end

		if PossessActionBar then
			if MoveAny:IsEnabled("POSSESSBAR", false) then
				MoveAny:RegisterWidget(
					{
						["name"] = "PossessActionBar",
						["lstr"] = "LID_POSSESSBAR"
					}
				)
			end
		elseif PossessBarFrame then
			if MoveAny:IsEnabled("POSSESSBAR", false) then
				if PossessBarFrame then
					PossessBarFrame:SetParent(MoveAny:GetMainPanel())
				end

				MoveAny:RegisterWidget(
					{
						["name"] = "PossessBarFrame",
						["lstr"] = "LID_POSSESSBAR"
					}
				)
			end
		end

		if MoveAny:IsEnabled("LEAVEVEHICLE", false) then
			if MainMenuBar then
				if MainMenuBarVehicleLeaveButton then
					MainMenuBarVehicleLeaveButton:SetParent(MoveAny:GetMainPanel())
				end

				if UnitInVehicle and UnitOnTaxi then
					function MoveAny:UpdateVehicleLeaveButton()
						if UnitInVehicle("player") or UnitOnTaxi("player") then
							MainMenuBarVehicleLeaveButton:SetAlpha(1)
						else
							MainMenuBarVehicleLeaveButton:SetAlpha(0)
						end

						C_Timer.After(0.3, MoveAny.UpdateVehicleLeaveButton)
					end

					MoveAny:UpdateVehicleLeaveButton()
				end
			end

			MoveAny:RegisterWidget(
				{
					["name"] = "MainMenuBarVehicleLeaveButton",
					["lstr"] = "LID_LEAVEVEHICLE"
				}
			)
		end

		if ExtraAbilityContainer and MoveAny:IsEnabled("EXTRAABILITYCONTAINER", false) then
			ExtraAbilityContainer:SetSize(180, 100)
			MoveAny:RegisterWidget(
				{
					["name"] = "ExtraAbilityContainer",
					["lstr"] = "LID_EXTRAABILITYCONTAINER",
					["userplaced"] = true
				}
			)
		end

		if MoveAny:IsEnabled("TALKINGHEAD", false) and TalkingHeadFrame then
			MoveAny:RegisterWidget(
				{
					["name"] = "TalkingHeadFrame",
					["lstr"] = "LID_TALKINGHEAD",
					["secure"] = true
				}
			)
		end

		if MoveAny:IsEnabled("OVERRIDEACTIONBAR", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "OverrideActionBar",
					["lstr"] = "LID_OVERRIDEACTIONBAR"
				}
			)
		end

		if MoveAny:GetWoWBuild() == "RETAIL" then
			local ABNames = {}
			ABNames[1] = "MainMenuBar"
			ABNames[2] = "MultiBarBottomLeft"
			ABNames[3] = "MultiBarBottomRight"
			ABNames[4] = "MultiBarRight"
			ABNames[5] = "MultiBarLeft"
			ABNames[6] = "MultiBar" .. 5
			ABNames[7] = "MultiBar" .. 6
			ABNames[8] = "MultiBar" .. 7
			for i = 1, 8 do
				if ABNames[i] and MoveAny:IsEnabled("ACTIONBAR" .. i, false) then
					local name = ABNames[i]
					local lstr = "LID_ACTIONBAR" .. i
					MoveAny:RegisterWidget(
						{
							["name"] = name,
							["lstr"] = lstr,
							["secure"] = true,
							["userplaced"] = true,
						}
					)

					local ab = _G[name]
					if ab then
						for x = 1, 12 do
							ab.btns = ab.btns or {}
							local abtn = _G[name .. "Button" .. x]
							if i == 1 then
								abtn = _G["ActionButton" .. x]
							end

							if abtn then
								function abtn:GetMAEle()
									return ab
								end

								table.insert(ab.btns, abtn)
							else
								print("[MoveAny] ACTION BUTTON NOT FOUND", name)
							end
						end
					end

					local bar = _G[name]
					if bar then
						hooksecurefunc(
							bar,
							"SetPoint",
							function(sel, ...)
								MoveAny:UpdateActionBar(bar)
							end
						)

						hooksecurefunc(
							bar,
							"SetSize",
							function(sel, ...)
								if sel.ma_uab_setsize then return end
								sel.ma_uab_setsize = true
								MoveAny:UpdateActionBar(bar)
								sel.ma_uab_setsize = false
							end
						)

						MoveAny:UpdateActionBar(bar)
					end
				end
			end
		end

		if MoveAny:GetWoWBuild() ~= "RETAIL" and (MoveAny:IsEnabled("ACTIONBAR" .. 3, false) or MoveAny:IsEnabled("ACTIONBAR" .. 3, false) or MoveAny:IsEnabled("MINIMAP", false)) and MultiBarRight and MultiBarLeft then end
		if MoveAny:GetWoWBuild() ~= "RETAIL" and MoveAny:AnyActionbarEnabled() then
			for i = 1, 10 do
				if i ~= 2 and ((i == 1 or i == 5 or i == 6) and MoveAny:IsEnabled("ACTIONBARS", false)) or MoveAny:IsEnabled("ACTIONBAR" .. i, false) then
					MoveAny:RegisterWidget(
						{
							["name"] = "MAActionBar" .. i,
							["lstr"] = "LID_ACTIONBAR" .. i
						}
					)
				end
			end

			C_Timer.After(
				1,
				function()
					local maxWidth = VERTICAL_MULTI_BAR_WIDTH * 2 + VERTICAL_MULTI_BAR_HORIZONTAL_SPACING
					local topLimit = MinimapCluster:GetBottom() + 20
					local bottomLimit = UIParent:GetBottom() + 8
					if MultiBarBottomRight:IsShown() and MultiBarBottomRight:GetRight() >= UIParent:GetRight() - maxWidth - 16 then
						bottomLimit = MultiBarBottomRight:GetTop() + 8
					else
						bottomLimit = MainMenuBarArtFrame:GetTop() + 24
					end

					local availableSpace = topLimit - bottomLimit
					local contentHeight = VERTICAL_MULTI_BAR_HEIGHT
					if showLeft then
						contentHeight = contentHeight + VERTICAL_MULTI_BAR_HEIGHT + VERTICAL_MULTI_BAR_VERTICAL_SPACING
						if contentHeight * VERTICAL_MULTI_BAR_MIN_SCALE > availableSpace or not GetCVarBool("multiBarRightVerticalLayout") then
							contentHeight = VERTICAL_MULTI_BAR_HEIGHT
							contentWidth = VERTICAL_MULTI_BAR_WIDTH * 2 + VERTICAL_MULTI_BAR_HORIZONTAL_SPACING
						end
					end

					local scale = 1
					if contentHeight > availableSpace then
						scale = availableSpace / contentHeight
					end

					if scale < 0 and SHOW_MULTI_ACTIONBAR_3 == "1" and MoveAny:IsEnabled("ACTIONBAR" .. 4, false) then
						print("Please disable Actionbar4 in ESC -> Options -> Actionbar4, to get rid of the error.")
						print("Actionbar4 will still be shown.")
					end
				end
			)
		end

		if MoveAny:IsEnabled("ENDCAPS", false) then
			local MA_LeftEndCap = CreateFrame("FRAME", "MA_LeftEndCap", MoveAny:GetMainPanel())
			MA_LeftEndCap.tex = MA_LeftEndCap:CreateTexture("MA_LeftEndCap.tex", "OVERLAY")
			MA_LeftEndCap.tex:SetAllPoints(MA_LeftEndCap)
			local MA_RightEndCap = CreateFrame("FRAME", "MA_RightEndCap", MoveAny:GetMainPanel())
			MA_RightEndCap.tex = MA_RightEndCap:CreateTexture("MA_RightEndCap.tex", "OVERLAY")
			MA_RightEndCap.tex:SetAllPoints(MA_RightEndCap)
			local factionGroup = UnitFactionGroup("player")
			if MainMenuBar.EndCaps then
				MA_LeftEndCap:SetSize(MainMenuBar.EndCaps.LeftEndCap:GetSize())
				MA_LeftEndCap.tex:SetTexCoord(MainMenuBar.EndCaps.LeftEndCap:GetTexCoord())
				MA_RightEndCap:SetSize(MainMenuBar.EndCaps.RightEndCap:GetSize())
				MA_RightEndCap.tex:SetTexCoord(MainMenuBar.EndCaps.RightEndCap:GetTexCoord())
				if factionGroup and factionGroup ~= "Neutral" then
					if factionGroup == "Alliance" then
						MA_LeftEndCap.tex:SetAtlas("ui-hud-actionbar-gryphon-left")
						MA_RightEndCap.tex:SetAtlas("ui-hud-actionbar-gryphon-right")
					elseif factionGroup == "Horde" then
						MA_LeftEndCap.tex:SetAtlas("ui-hud-actionbar-wyvern-left")
						MA_RightEndCap.tex:SetAtlas("ui-hud-actionbar-wyvern-right")
					end
				end

				MainMenuBar.EndCaps:SetParent(MAHIDDEN)
				MainMenuBar.BorderArt:SetParent(MAHIDDEN)
			elseif MainMenuBarLeftEndCap then
				MA_LeftEndCap:SetSize(MainMenuBarLeftEndCap:GetSize())
				MA_LeftEndCap.tex:SetTexture(MainMenuBarLeftEndCap:GetTexture())
				MA_LeftEndCap.tex:SetTexCoord(MainMenuBarLeftEndCap:GetTexCoord())
				MA_RightEndCap:SetSize(MainMenuBarRightEndCap:GetSize())
				MA_RightEndCap.tex:SetTexture(MainMenuBarRightEndCap:GetTexture())
				MA_RightEndCap.tex:SetTexCoord(MainMenuBarRightEndCap:GetTexCoord())
				MainMenuBarLeftEndCap:SetParent(MAHIDDEN)
				MainMenuBarRightEndCap:SetParent(MAHIDDEN)
			end

			MA_LeftEndCap:SetFrameLevel(3)
			MA_RightEndCap:SetFrameLevel(3)
			MA_LeftEndCap.tex:SetDrawLayer("OVERLAY", 2)
			MA_RightEndCap.tex:SetDrawLayer("OVERLAY", 2)
			MA_LeftEndCap:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
			MA_RightEndCap:SetPoint("CENTER", MoveAny:GetMainPanel(), "CENTER", 0, 0)
			MoveAny:RegisterWidget(
				{
					["name"] = "MA_LeftEndCap",
					["lstr"] = "LID_ENDCAPLEFT",
				}
			)

			MoveAny:RegisterWidget(
				{
					["name"] = "MA_RightEndCap",
					["lstr"] = "LID_ENDCAPRIGHT",
				}
			)
		end

		for x = 1, 10 do
			local cf = _G["ChatFrame" .. x]
			if cf then
				local cleft = -34
				local cright = 2
				local ctop = 22
				local cbottom = -34
				if MoveAny:GetWoWBuild() == "RETAIL" then
					cright = 16
				end

				if MoveAny:IsEnabled("CHATBUTTONFRAME", false) then
					cleft = -2
				end

				if MoveAny:IsEnabled("CHATEDITBOX", false) then
					cbottom = -4
				end

				if MoveAny:IsEnabled("CHAT" .. x, false) then
					MoveAny:RegisterWidget(
						{
							["name"] = "ChatFrame" .. x,
							["lstr"] = "LID_CHAT",
							["lstri"] = x,
							["cleft"] = cleft,
							["cright"] = cright,
							["ctop"] = ctop,
							["cbottom"] = cbottom,
						}
					)
				elseif cf.SetClampRectInsets and MoveAny:IsEnabled("CHAT" .. 1, false) then
					hooksecurefunc(
						cf,
						"SetClampRectInsets",
						function(sel, ...)
							if sel.scri then return end
							sel.scri = true
							sel:SetClampRectInsets(cleft, cright, ctop, cbottom)
							sel.scri = false
						end
					)

					cf:SetClampRectInsets(cleft, cright, ctop, cbottom)
				end
			end
		end

		if MoveAny:IsEnabled("QUESTTRACKER", false) then
			C_Timer.After(
				0,
				function()
					if ObjectiveTrackerFrame == nil then
						ObjectiveTrackerFrame = CreateFrame("Frame", "ObjectiveTrackerFrame", MoveAny:GetMainPanel())
						ObjectiveTrackerFrame:SetSize(224, 600)
						ObjectiveTrackerFrame:SetPoint("TOPRIGHT", MoveAny:GetMainPanel(), "TOPRIGHT", -85, -180)
						if QuestWatchFrame then
							hooksecurefunc(
								QuestWatchFrame,
								"SetPoint",
								function(sel, ...)
									if sel.qwfsetpoint then return end
									sel.qwfsetpoint = true
									sel:SetMovable(true)
									if sel.SetUserPlaced and sel:IsMovable() then
										sel:SetUserPlaced(false)
									end

									sel:SetParent(ObjectiveTrackerFrame)
									sel:ClearAllPoints()
									sel:SetPoint("TOPLEFT", ObjectiveTrackerFrame, "TOPLEFT", 0, 0)
									sel.qwfsetpoint = false
								end
							)

							QuestWatchFrame:SetMovable(true)
							if QuestWatchFrame.SetUserPlaced and QuestWatchFrame:IsMovable() then
								QuestWatchFrame:SetUserPlaced(false)
							end

							QuestWatchFrame:SetParent(ObjectiveTrackerFrame)
							QuestWatchFrame:ClearAllPoints()
							QuestWatchFrame:SetPoint("TOPLEFT", ObjectiveTrackerFrame, "TOPLEFT", 0, 0)
							QuestWatchFrame:SetSize(ObjectiveTrackerFrame:GetSize())
						end

						if WatchFrame then
							hooksecurefunc(
								WatchFrame,
								"SetPoint",
								function(sel, ...)
									if sel.wfsetpoint then return end
									sel.wfsetpoint = true
									sel:SetMovable(true)
									if sel.SetUserPlaced and sel:IsMovable() then
										sel:SetUserPlaced(false)
									end

									sel:SetParent(ObjectiveTrackerFrame)
									sel:ClearAllPoints()
									sel:SetPoint("TOPLEFT", ObjectiveTrackerFrame, "TOPLEFT", 0, 0)
									sel.wfsetpoint = false
								end
							)

							WatchFrame:SetMovable(true)
							if WatchFrame.SetUserPlaced and WatchFrame:IsMovable() then
								WatchFrame:SetUserPlaced(false)
							end

							WatchFrame:SetParent(ObjectiveTrackerFrame)
							WatchFrame:ClearAllPoints()
							WatchFrame:SetPoint("TOPLEFT", ObjectiveTrackerFrame, "TOPLEFT", 0, 0)
							WatchFrame:SetSize(ObjectiveTrackerFrame:GetSize())
						end
					end

					if ObjectiveTrackerFrame then
						ObjectiveTrackerFrame:SetHeight(600)
					end
				end
			)

			MoveAny:RegisterWidget(
				{
					["name"] = "ObjectiveTrackerFrame",
					["lstr"] = "LID_QUESTTRACKER",
					["sh"] = 600,
					["userplaced"] = true,
					["secure"] = true,
				}
			)
		end

		if MoveAny:IsEnabled("PARTYFRAME", false) then
			if PartyFrame then
				MoveAny:RegisterWidget(
					{
						["name"] = "PartyFrame",
						["lstr"] = "LID_PARTYFRAME",
						["sw"] = 120,
						["sh"] = 244
					}
				)
			else
				for x = 1, 4 do
					MoveAny:RegisterWidget(
						{
							["name"] = "PartyMemberFrame" .. x,
							["lstr"] = "LID_PARTYMEMBERFRAME",
							["lstri"] = x
						}
					)
				end
			end
		end

		if MoveAny:IsEnabled("COMPACTRAIDFRAMECONTAINER", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "CompactRaidFrameContainer",
					["lstr"] = "LID_COMPACTRAIDFRAMECONTAINER",
					["sw"] = 360,
					["sh"] = 288
				}
			)
		end
	end

	if MoveAny:IsEnabled("MAPETFRAME", false) then
		MAPetFrame = CreateFrame("FRAME", "MAPetFrame", MoveAny:GetMainPanel())
		if PetFrame:GetSize() then
			MAPetFrame:SetSize(PetFrame:GetSize())
		end

		if PetFrame:GetPoint() then
			MAPetFrame:SetPoint(PetFrame:GetPoint())
		else
			MAPetFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
		end

		hooksecurefunc(
			PetFrame,
			"SetPoint",
			function(sel, ...)
				if sel.ma_setpoint then return end
				sel.ma_setpoint = true
				PetFrame:SetParent(MAPetFrame)
				PetFrame:ClearAllPoints()
				PetFrame:SetPoint("CENTER", MAPetFrame, "CENTER", 0, 0)
				sel.ma_setpoint = false
			end
		)

		PetFrame:SetParent(MAPetFrame)
		PetFrame:ClearAllPoints()
		PetFrame:SetPoint("CENTER", MAPetFrame, "CENTER", 0, 0)
		MoveAny:RegisterWidget(
			{
				["name"] = "MAPetFrame",
				["lstr"] = "LID_PETFRAME",
				["userplaced"] = true
			}
		)
	end

	if MoveAny:IsEnabled("TARGETFRAMESPELLBAR", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "TargetFrameSpellBar",
				["lstr"] = "LID_TARGETFRAMESPELLBAR",
				["userplaced"] = true
			}
		)
	end

	if FocusFrame and FocusFrameSpellBar and MoveAny:IsEnabled("FOCUSFRAMESPELLBAR", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "FocusFrameSpellBar",
				["lstr"] = "LID_FOCUSFRAMESPELLBAR",
				["userplaced"] = true
			}
		)
	end

	if MoveAny:IsEnabled("TARGETOFTARGETFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "TargetFrameToT",
				["lstr"] = "LID_TARGETOFTARGETFRAME",
				["userplaced"] = true
			}
		)
	end

	if MoveAny:IsEnabled("TARGETOFFOCUSFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "FocusFrameToT",
				["lstr"] = "LID_TARGETOFFOCUSFRAME",
				["userplaced"] = true
			}
		)
	end

	if CompactRaidFrameManager and MoveAny:IsEnabled("COMPACTRAIDFRAMEMANAGER", false) then
		local MACompactRaidFrameManager = CreateFrame("Frame", "MACompactRaidFrameManager", MoveAny:GetMainPanel())
		MACompactRaidFrameManager:SetSize(20, 135)
		MACompactRaidFrameManager:SetPoint("TOPLEFT", MoveAny:GetMainPanel(), "TOPLEFT", 0, -250)
		hooksecurefunc(
			CompactRaidFrameManager,
			"SetPoint",
			function(sel, ...)
				if sel.crfmsetpoint then return end
				sel.crfmsetpoint = true
				sel:SetMovable(true)
				if sel.SetUserPlaced and sel:IsMovable() then
					sel:SetUserPlaced(false)
				end

				if not InCombatLockdown() then
					sel:ClearAllPoints()
					sel:SetPoint("RIGHT", MACompactRaidFrameManager, "RIGHT", 0, 0)
				end

				sel.crfmsetpoint = false
			end
		)

		CompactRaidFrameManager:SetPoint("RIGHT", MACompactRaidFrameManager, "RIGHT", 0, 0)
		hooksecurefunc(
			CompactRaidFrameManager,
			"SetParent",
			function(sel, ...)
				sel:SetFrameStrata("LOW")
			end
		)

		CompactRaidFrameManagerToggleButton:HookScript(
			"OnClick",
			function(sel, ...)
				if not InCombatLockdown() then
					if CompactRaidFrameManager.collapsed then
						MACompactRaidFrameManager:SetSize(20, 135)
					else
						MACompactRaidFrameManager:SetSize(200, 135)
					end
				end
			end
		)

		MoveAny:RegisterWidget(
			{
				["name"] = "MACompactRaidFrameManager",
				["lstr"] = "LID_COMPACTRAIDFRAMEMANAGER"
			}
		)
	end

	if IsAddOnLoaded("!KalielsTracker") and MoveAny:IsEnabled("!KalielsTrackerButtons", false) then
		C_Timer.After(
			1,
			function()
				local ktb = _G["!KalielsTrackerButtons"]
				if ktb then
					local MAKTB = CreateFrame("FRAME", "MAKTB", MoveAny:GetMainPanel())
					local size = 28
					local kbr = 6
					MAKTB:SetSize(size, size * 3 + kbr * 2)
					hooksecurefunc(
						ktb,
						"SetPoint",
						function(sel, ...)
							if sel.ma_ktb_setpoint then return end
							sel.ma_ktb_setpoint = true
							sel:ClearAllPoints()
							sel:SetPoint("TOP", MAKTB, "TOP", 0, kbr)
							sel.ma_ktb_setpoint = false
						end
					)

					ktb:SetPoint("TOP", MAKTB, "TOP", 0, kbr)
					MoveAny:RegisterWidget(
						{
							["name"] = "MAKTB",
							["lstr"] = "LID_!KalielsTrackerButtons",
						}
					)
				else
					MoveAny:MSG("FAILED TO ADD !KalielsTrackerButtons")
				end
			end
		)
	end

	-- TOP
	if MoveAny:IsEnabled("ZONETEXTFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "ZoneTextFrame",
				["lstr"] = "LID_ZONETEXTFRAME",
				["userplaced"] = true
			}
		)
	end

	if MoveAny:IsEnabled("OBJECTIVETRACKERBONUSBANNERFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "ObjectiveTrackerBonusBannerFrame",
				["lstr"] = "LID_OBJECTIVETRACKERBONUSBANNERFRAME",
				["userplaced"] = true
			}
		)
	end

	if MoveAny:IsEnabled("RAIDBOSSEMOTEFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "RaidBossEmoteFrame",
				["lstr"] = "LID_RAIDBOSSEMOTEFRAME",
				["userplaced"] = true
			}
		)
	end

	if MoveAny:IsEnabled("MIRRORTIMER1", false) then
		if MirrorTimerContainer then
			MirrorTimerContainer:SetSize(206, 32)
			MoveAny:RegisterWidget(
				{
					["name"] = "MirrorTimerContainer",
					["lstr"] = "LID_MIRRORTIMER1",
				}
			)
		else
			MoveAny:RegisterWidget(
				{
					["name"] = "MirrorTimer1",
					["lstr"] = "LID_MIRRORTIMER1",
				}
			)
		end
	end

	if MoveAny:IsEnabled("UIWIDGETPOWERBAR", false) and UIWidgetPowerBarContainerFrame then
		MoveAny:RegisterWidget(
			{
				["name"] = "UIWidgetPowerBarContainerFrame",
				["lstr"] = "LID_UIWIDGETPOWERBAR",
				["sw"] = 36 * 6,
				["sh"] = 36 * 1
			}
		)
	end

	if MoveAny:IsEnabled("POWERBAR", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "PlayerPowerBarAlt",
				["lstr"] = "LID_POWERBAR",
				["sw"] = 36 * 6,
				["sh"] = 36 * 1
			}
		)
	end

	if not IsAddOnLoaded("Dominos") then
		if MoveAny:IsEnabled("MICROMENU", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "MAMenuBar",
					["lstr"] = "LID_MICROMENU"
				}
			)
		end

		if MoveAny:IsEnabled("BAGS", false) then
			C_Timer.After(
				0,
				function()
					MoveAny:RegisterWidget(
						{
							["name"] = "BagsBar",
							["lstr"] = "LID_BAGS"
						}
					)
				end
			)
		end
	end

	if MoveAny:IsEnabled("BUFFS", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "MABuffBar",
				["lstr"] = "LID_BUFFS"
			}
		)
	end

	if MoveAny:IsEnabled("DEBUFFS", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "MADebuffBar",
				["lstr"] = "LID_DEBUFFS"
			}
		)
	end

	if MoveAny:IsEnabled("GAMETOOLTIP", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "MAGameTooltip",
				["lstr"] = "LID_GAMETOOLTIP"
			}
		)
	end

	if MoveAny:IsEnabled("MAFPSFrame", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "MAFPSFrame",
				["lstr"] = "LID_MAFPSFrame"
			}
		)
	end

	if IsAddOnLoaded("ImproveAny") then
		if MoveAny:IsEnabled("MONEYBAR", true) then
			MoveAny:RegisterWidget(
				{
					["name"] = "IAMoneyBar",
					["lstr"] = "LID_MONEYBAR"
				}
			)
		end

		if MoveAny:IsEnabled("TOKENBAR", true) then
			MoveAny:RegisterWidget(
				{
					["name"] = "IATokenBar",
					["lstr"] = "LID_TOKENBAR"
				}
			)
		end

		if MoveAny:IsEnabled("IAILVLBAR", true) then
			MoveAny:RegisterWidget(
				{
					["name"] = "IAILVLBar",
					["lstr"] = "LID_IAILVLBAR"
				}
			)
		end

		if MoveAny:IsEnabled("IAPingFrame", true) then
			MoveAny:RegisterWidget(
				{
					["name"] = "IAPingFrame",
					["lstr"] = "LID_IAPingFrame"
				}
			)
		end

		if MoveAny:IsEnabled("IACoordsFrame", true) then
			MoveAny:RegisterWidget(
				{
					["name"] = "IACoordsFrame",
					["lstr"] = "LID_IACoordsFrame"
				}
			)
		end

		if MoveAny:IsEnabled("IASKILLS", true) and MoveAny:GetWoWBuild() ~= "RETAIL" then
			MoveAny:RegisterWidget(
				{
					["name"] = "IASkills",
					["lstr"] = "LID_IASKILLS"
				}
			)
		end
	end

	if MoveAny:IsEnabled("UIWIDGETTOPCENTER", false) and UIWidgetTopCenterContainerFrame then
		MoveAny:RegisterWidget(
			{
				["name"] = "UIWidgetTopCenterContainerFrame",
				["lstr"] = "LID_UIWIDGETTOPCENTER",
				["sw"] = 36 * 5,
				["sh"] = 36 * 2,
				["userplaced"] = true
			}
		)
	end

	if MoveAny:IsEnabled("UIWIDGETBELOWMINIMAP", false) and UIWidgetBelowMinimapContainerFrame then
		MoveAny:RegisterWidget(
			{
				["name"] = "UIWidgetBelowMinimapContainerFrame",
				["lstr"] = "LID_UIWIDGETBELOWMINIMAP",
				["sw"] = 36 * 5,
				["sh"] = 36 * 2,
				["userplaced"] = true
			}
		)
	end

	if MoveAny:IsEnabled("QUEUESTATUSBUTTON", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "QueueStatusButton",
				["lstr"] = "LID_QUEUESTATUSBUTTON"
			}
		)
	end

	if MoveAny:IsEnabled("QUEUESTATUSFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "QueueStatusFrame",
				["lstr"] = "LID_QUEUESTATUSFRAME"
			}
		)
	end

	if MoveAny:IsEnabled("BNToastFrame", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "BNToastFrame",
				["lstr"] = "LID_BNToastFrame"
			}
		)
	end

	if MoveAny:IsEnabled("VEHICLESEATINDICATOR", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "MAVehicleSeatIndicator",
				["lstr"] = "LID_VEHICLESEATINDICATOR"
			}
		)
	end

	if MoveAny:IsEnabled("DURABILITY", false) then
		if DurabilityFrame:GetPoint() == nil then
			DurabilityFrame:SetPoint("TOPRIGHT", MinimapCluster, "BOTTOMRIGHT", -0, 0)
		end

		if DurabilityFrame.SetAlerts ~= nil then
			DurabilityFrame:SetAlerts()
		elseif DurabilityFrame_SetAlerts ~= nil then
			DurabilityFrame_SetAlerts()
		end

		MoveAny:RegisterWidget(
			{
				["name"] = "DurabilityFrame",
				["lstr"] = "LID_DURABILITY",
				["userplaced"] = true
			}
		)
	end

	if Arena_LoadUI then
		if MoveAny:IsEnabled("ARENAENEMYFRAMES", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "MAArenaEnemyFrames",
					["lstr"] = "LID_ARENAENEMYFRAMES",
					["userplaced"] = true,
					["secure"] = true
				}
			)
		end

		if MoveAny:IsEnabled("ARENAPREPFRAMES", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "MAArenaPrepFrames",
					["lstr"] = "LID_ARENAPREPFRAMES",
					["userplaced"] = true,
					["secure"] = true
				}
			)
		end
	end

	if MoveAny:IsEnabled("BOSSTARGETFRAMECONTAINER", false) then
		if BossTargetFrameContainer then
			MoveAny:RegisterWidget(
				{
					["name"] = "BossTargetFrameContainer",
					["lstr"] = "LID_BOSSTARGETFRAMECONTAINER",
					["userplaced"] = true,
					["secure"] = true,
					["sw"] = 214,
					["sh"] = 305
				}
			)
		else
			for i = 1, 6 do
				if _G["Boss" .. i .. "TargetFrame"] then
					_G["Boss" .. i .. "TargetFrame"]:SetScale(1)
					MoveAny:RegisterWidget(
						{
							["name"] = "Boss" .. i .. "TargetFrame",
							["lstr"] = "LID_BOSS" .. i,
							["userplaced"] = true,
							["secure"] = true,
						}
					)
				end
			end
		end
	end

	if MoveAny:IsEnabled("TICKETSTATUSFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "TicketStatusFrame",
				["lstr"] = "LID_TICKETSTATUSFRAME",
				["userplaced"] = true,
				["secure"] = true
			}
		)
	end

	if MinimapZoneTextButton and MoveAny:IsEnabled("MINIMAPZONETEXT", false) then
		MinimapZoneTextButton:SetParent(MoveAny:GetMainPanel())
		MoveAny:RegisterWidget(
			{
				["name"] = "MinimapZoneTextButton",
				["lstr"] = "LID_MINIMAPZONETEXT"
			}
		)
	end

	if MoveAny:IsEnabled("MINIMAP", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "MinimapCluster",
				["lstr"] = "LID_MINIMAP"
			}
		)
	end

	local gtp4 = nil
	local gtp5 = nil
	function MoveAny:NearNumber(num1, num2, near)
		if num1 + near >= num2 and num1 - near <= num2 then return true end

		return false
	end

	function MoveAny:GameTooltipOnDefaultPosition()
		local p1, p2, p3, p4, p5 = GameTooltip:GetPoint()
		if p1 and p2 and p3 and p4 and p5 then
			if p2 == _G["MAGameTooltip"] then
				return true
			elseif p2 == UIParent or p2 == UIParent then
				if gtp4 == nil and gtp5 == nil then
					_, _, _, gtp4, gtp5 = GameTooltip:GetPoint()
					gtp4 = floor(gtp4)
					gtp5 = floor(gtp5)
				end

				if p1 == "BOTTOMRIGHT" and p3 == "BOTTOMRIGHT" then
					p4 = floor(p4)
					p5 = floor(p5)
					if MoveAny:NearNumber(p4, gtp4, 5) and MoveAny:NearNumber(p5, gtp5, 5) then return true end
				end
			elseif p2 == GameTooltipDefaultContainer then
				if p1 == "BOTTOMRIGHT" and p3 == "BOTTOMRIGHT" then
					p4 = floor(p4)
					p5 = floor(p5)
					if MoveAny:NearNumber(p4, 0, 5) and MoveAny:NearNumber(p5, 0, 5) then return true end
				end
			end
		end

		return false
	end

	GameTooltip:SetMovable(true)
	GameTooltip:SetUserPlaced(false)
	if MoveAny:IsEnabled("GAMETOOLTIP", false) or MoveAny:IsEnabled("GAMETOOLTIP_ONCURSOR", false) then
		local MAGameTooltip = CreateFrame("Frame", "MAGameTooltip", MoveAny:GetMainPanel())
		MAGameTooltip:SetSize(100, 100)
		MAGameTooltip:SetPoint("BOTTOMRIGHT", MoveAny:GetMainPanel(), "BOTTOMRIGHT", -100, 100)
		hooksecurefunc(
			GameTooltip,
			"SetScale",
			function(sel, ...)
				if sel.gtsetscale then return end
				sel.gtsetscale = true
				sel:SetScale(MAGameTooltip:GetScale())
				sel.gtsetscale = false
			end
		)

		hooksecurefunc(
			MAGameTooltip,
			"SetScale",
			function(sel, ...)
				if sel.gtsetscale2 then return end
				sel.gtsetscale2 = true
				GameTooltip:SetScale(sel:GetScale())
				sel.gtsetscale2 = false
			end
		)

		GameTooltip:SetScale(MAGameTooltip:GetScale())
		hooksecurefunc(
			GameTooltip,
			"SetAlpha",
			function(sel, ...)
				if sel.gtsetalpha then return end
				sel.gtsetalpha = true
				sel:SetAlpha(MAGameTooltip:GetAlpha())
				sel.gtsetalpha = false
			end
		)

		hooksecurefunc(
			MAGameTooltip,
			"SetAlpha",
			function(sel, ...)
				if sel.gtsetalpha2 then return end
				sel.gtsetalpha2 = true
				GameTooltip:SetAlpha(sel:GetAlpha())
				sel.gtsetalpha2 = false
			end
		)

		function MAGameTooltip:GetMAEle()
			return GameTooltip
		end

		function GameTooltip:GetMAEle()
			return MAGameTooltip
		end

		GameTooltip:SetAlpha(MAGameTooltip:GetAlpha())
		if not MoveAny:IsEnabled("GAMETOOLTIP_ONCURSOR", false) then
			hooksecurefunc(
				GameTooltip,
				"SetPoint",
				function(sel, ...)
					if sel.gtsetpoint then return end
					sel.gtsetpoint = true
					sel:SetMovable(true)
					sel:SetUserPlaced(false)
					if MoveAny:GameTooltipOnDefaultPosition() then
						local p1, _, p3, _, _ = MAGameTooltip:GetPoint()
						sel:ClearAllPoints()
						sel:SetPoint(p1, MAGameTooltip, p3, 0, 0)
					end

					sel.gtsetpoint = false
				end
			)
		else
			hooksecurefunc(
				GameTooltip,
				"SetPoint",
				function(sel, ...)
					if sel.gtsetpoint then return end
					sel.gtsetpoint = true
					sel:SetMovable(true)
					sel:SetUserPlaced(false)
					local owner = GameTooltip:GetOwner()
					if owner and owner == UIParent or owner == UIParent then
						local scale = GameTooltip:GetEffectiveScale()
						local mX, mY = GetCursorPosition()
						mX = mX / scale
						mY = mY / scale
						GameTooltip.gtsetpoint = true
						GameTooltip:ClearAllPoints()
						GameTooltip:SetPoint("BOTTOMLEFT", MoveAny:GetMainPanel(), "BOTTOMLEFT", mX + 22, mY + 22)
						GameTooltip.gtsetpoint = false
						GameTooltip.default = 1
					end

					sel.gtsetpoint = false
				end
			)

			function MoveAny:ThinkGameTooltip()
				if EditModeManagerFrame ~= nil and EditModeManagerFrame.IsShown and EditModeManagerFrame:IsShown() then
					C_Timer.After(0.1, MoveAny.ThinkGameTooltip)

					return
				end

				if MoveAny:IsEnabled("GAMETOOLTIP_ONCURSOR", false) then
					local owner = GameTooltip:GetOwner()
					if owner and owner == UIParent or owner == UIParent then
						local scale = GameTooltip:GetEffectiveScale()
						local mX, mY = GetCursorPosition()
						mX = mX / scale
						mY = mY / scale
						GameTooltip.gtsetpoint = true
						GameTooltip:ClearAllPoints()
						GameTooltip:SetPoint("BOTTOMLEFT", MoveAny:GetMainPanel(), "BOTTOMLEFT", mX + 22, mY + 22)
						GameTooltip.gtsetpoint = false
						GameTooltip.default = 1
					end

					C_Timer.After(0.01, MoveAny.ThinkGameTooltip)
				else
					C_Timer.After(0.01, MoveAny.ThinkGameTooltip)
				end
			end

			MoveAny:ThinkGameTooltip()
		end
	end

	-- BOTTOM
	if ZoneAbilityFrame and MoveAny:IsEnabled("ZONEABILITYFRAME", false) then
		ZoneAbilityFrame:SetParent(MoveAny:GetMainPanel())
		ZoneAbilityFrame:ClearAllPoints()
		ZoneAbilityFrame:SetPoint("BOTTOM", MoveAny:GetMainPanel(), "BOTTOM", 0, 200)
		MoveAny:RegisterWidget(
			{
				["name"] = "ZoneAbilityFrame",
				["lstr"] = "LID_ZONEABILITYFRAME",
				["userplaced"] = true
			}
		)
	end

	if MoveAny:IsEnabled("EventToastManagerFrame", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "EventToastManagerFrame",
				["lstr"] = "LID_EventToastManagerFrame",
				["sw"] = 36 * 2,
				["sh"] = 36 * 2
			}
		)
	end

	if MoveAny:GetWoWBuild() == "RETAIL" then
		LoadAddOn("Blizzard_ArchaeologyUI")
	end

	if MoveAny:IsEnabled("ARCHEOLOGYDIGSITEPROGRESSBAR", false) and ARCHEOLOGYDIGSITEPROGRESSBAR then
		MoveAny:RegisterWidget(
			{
				["name"] = "ArcheologyDigsiteProgressBar",
				["lstr"] = "LID_ARCHEOLOGYDIGSITEPROGRESSBAR",
			}
		)
	end

	if MoveAny:IsEnabled("UIERRORSFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "UIErrorsFrame",
				["lstr"] = "LID_UIERRORSFRAME",
			}
		)
	end

	if MoveAny:IsEnabled("BOSSBANNER", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "BossBanner",
				["lstr"] = "LID_BOSSBANNER",
			}
		)
	end

	if MoveAny:IsEnabled("GROUPLOOTCONTAINER", false) then
		local glfsw, glfsh = 256, 67
		if GroupLootFrame1 then
			glfsw, glfsh = GroupLootFrame1:GetSize()
		end

		GroupLootContainer:SetSize(glfsw, glfsh)
		if GroupLootContainer:GetPoint() == nil then
			GroupLootContainer:SetPoint("CENTER", 0, 0)
		end

		MoveAny:RegisterWidget(
			{
				["name"] = "GroupLootContainer",
				["lstr"] = "LID_GROUPLOOTCONTAINER",
				["sw"] = glfsw,
				["sh"] = glfsh,
			}
		)
	elseif MoveAny:IsEnabled("GROUPLOOTFRAME1", false) then
		local glfsw, glfsh = 244, 84
		if GroupLootFrame1 then
			glfsw, glfsh = GroupLootFrame1:GetSize()
			for x = 2, 10 do
				local glf = _G["GroupLootFrame" .. x]
				if glf then
					hooksecurefunc(
						glf,
						"SetPoint",
						function(sel, ...)
							if sel.glfsetpoint then return end
							sel.glfsetpoint = true
							sel:SetMovable(true)
							if sel.SetUserPlaced and sel:IsMovable() then
								sel:SetUserPlaced(false)
							end

							sel:ClearAllPoints()
							sel:SetPoint("BOTTOM", _G["GroupLootFrame" .. (x - 1)], "TOP", 0, 4)
							sel.glfsetpoint = false
						end
					)

					hooksecurefunc(
						GroupLootFrame1,
						"SetScale",
						function(sel, scale)
							glf:SetScale(scale)
						end
					)

					hooksecurefunc(
						GroupLootFrame1,
						"SetAlpha",
						function(sel, alpha)
							glf:SetAlpha(alpha)
						end
					)
				end
			end
		end

		MoveAny:RegisterWidget(
			{
				["name"] = "GroupLootFrame1",
				["lstr"] = "LID_GROUPLOOTFRAME1",
				["sw"] = glfsw,
				["sh"] = glfsh,
				["px"] = 0,
				["py"] = 200,
				["an"] = "BOTTOM",
				["re"] = "BOTTOM"
			}
		)
	end

	if MoveAny:IsEnabled("BONUSROLLFRAME", false) and BonusRollFrame then
		if BonusRollFrame:GetPoint() == nil then
			BonusRollFrame:SetPoint("CENTER", 0, 0)
		end

		MoveAny:RegisterWidget(
			{
				["name"] = "BonusRollFrame",
				["lstr"] = "LID_BONUSROLLFRAME",
			}
		)
	end

	if SpellActivationOverlayFrame and MoveAny:IsEnabled("SPELLACTIVATIONOVERLAYFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "SpellActivationOverlayFrame",
				["lstr"] = "LID_SPELLACTIVATIONOVERLAYFRAME"
			}
		)
	end

	if MainStatusTrackingBarContainer and MoveAny:IsEnabled("MainStatusTrackingBarContainer", false) then
		C_Timer.After(
			1,
			function()
				MoveAny:RegisterWidget(
					{
						["name"] = "MainStatusTrackingBarContainer",
						["lstr"] = "LID_MainStatusTrackingBarContainer",
					}
				)
			end
		)
	end

	if SecondaryStatusTrackingBarContainer and MoveAny:IsEnabled("SecondaryStatusTrackingBarContainer", false) then
		C_Timer.After(
			1,
			function()
				MoveAny:RegisterWidget(
					{
						["name"] = "SecondaryStatusTrackingBarContainer",
						["lstr"] = "LID_SecondaryStatusTrackingBarContainer",
					}
				)
			end
		)
	end

	if MainStatusTrackingBarContainer == nil and SecondaryStatusTrackingBarContainer == nil and StatusTrackingBarManager and MoveAny:IsEnabled("STATUSTRACKINGBARMANAGER", false) then
		-- StatusTrackingBarManager:EnableMouse( true ) -- destroys tooltip
		C_Timer.After(
			1,
			function()
				local ssw, ssh = StatusTrackingBarManager:GetSize()
				MoveAny:RegisterWidget(
					{
						["name"] = "StatusTrackingBarManager",
						["lstr"] = "LID_STATUSTRACKINGBARMANAGER",
						["sw"] = ssw - 6,
						["sh"] = ssh - 8,
						["cleft"] = 0,
						["cright"] = 2,
						["ctop"] = 4,
						["cbottom"] = 4,
						["posx"] = 1,
						["posy"] = 4,
					}
				)
			end
		)
	end

	if MainMenuExpBar and ReputationWatchBar then
		if MoveAny:IsEnabled("MAINMENUEXPBAR", false) then
			MainMenuExpBar:SetParent(MoveAny:GetMainPanel())
			local opts = MoveAny:GetEleOptions("MainMenuExpBar", "RegisterWidget: MainMenuExpBar")
			opts = opts or {}
			opts["WIDTH"] = opts["WIDTH"] or 1024
			opts["HEIGHT"] = opts["HEIGHT"] or 15
			if opts["WIDTH"] and opts["HEIGHT"] then
				MainMenuExpBar:SetSize(opts["WIDTH"], opts["HEIGHT"])
				local last = nil
				for i, v in pairs({MainMenuExpBar:GetRegions()}) do
					if i == 1 then
						v:SetSize(opts["WIDTH"], opts["HEIGHT"])
					end

					if i == 2 or i == 3 or i == 4 or i == 5 then
						v:ClearAllPoints()
						if i == 2 then
							v:SetPoint("LEFT", MainMenuExpBar, "LEFT", 0, 0)
						else
							v:SetPoint("LEFT", last, "RIGHT", 0, 0)
						end

						v:SetSize(opts["WIDTH"] / 4, opts["HEIGHT"])
						last = v
					end
				end
			end

			MainMenuExpBar:ClearAllPoints()
			MainMenuExpBar:SetPoint("BOTTOM", MoveAny:GetMainPanel(), "BOTTOM", 0, 140)
			MoveAny:RegisterWidget(
				{
					["name"] = "MainMenuExpBar",
					["lstr"] = "LID_MAINMENUEXPBAR",
					["sw"] = opts["WIDTH"],
					["sh"] = opts["HEIGHT"]
				}
			)
		end

		if MoveAny:IsEnabled("REPUTATIONWATCHBAR", false) then
			ReputationWatchBar:SetParent(MoveAny:GetMainPanel())
			local opts = MoveAny:GetEleOptions("ReputationWatchBar", "RegisterWidget: ReputationWatchBar")
			opts = opts or {}
			opts["WIDTH"] = opts["WIDTH"] or 1024
			opts["HEIGHT"] = opts["HEIGHT"] or 15
			if opts["WIDTH"] and opts["HEIGHT"] then
				hooksecurefunc(
					ReputationWatchBar,
					"SetHeight",
					function(sel, nh)
						if sel.ma_setheight then return end
						sel.ma_setheight = true
						sel:SetSize(opts["WIDTH"], opts["HEIGHT"])
						sel.ma_setheight = false
					end
				)

				ReputationWatchBar:SetSize(opts["WIDTH"], opts["HEIGHT"])
				if ReputationWatchBar.StatusBar then
					hooksecurefunc(
						ReputationWatchBar.StatusBar,
						"SetHeight",
						function(sel, nh)
							if sel.ma_setheight then return end
							sel.ma_setheight = true
							sel:SetSize(opts["WIDTH"], opts["HEIGHT"])
							sel.ma_setheight = false
						end
					)

					ReputationWatchBar.StatusBar:SetSize(opts["WIDTH"], opts["HEIGHT"])
					local last = nil
					local id = 0
					for i, v in pairs({ReputationWatchBar.StatusBar:GetRegions()}) do
						if i == 5 or i == 6 or i == 7 or i == 8 or i == 9 or i == 10 or i == 11 or i == 12 then
							if i < 9 then
								v:SetTexCoord(0.01, 1.01, 0.03, 0.17)
							end

							v:ClearAllPoints()
							if i == 5 or i == 9 then
								v:SetPoint("LEFT", ReputationWatchBar.StatusBar, "LEFT", 0, 0)
							else
								v:SetPoint("LEFT", last, "RIGHT", 0, 0)
							end

							v:SetSize(opts["WIDTH"] / 4, opts["HEIGHT"])
							last = v
							id = id + 1
						end
					end
				end
			end

			ReputationWatchBar:ClearAllPoints()
			ReputationWatchBar:SetPoint("BOTTOM", MoveAny:GetMainPanel(), "BOTTOM", 0, 130)
			MoveAny:RegisterWidget(
				{
					["name"] = "ReputationWatchBar",
					["lstr"] = "LID_REPUTATIONWATCHBAR",
					["sw"] = opts["WIDTH"],
					["sh"] = opts["HEIGHT"]
				}
			)
		end
	end

	if MoveAny:GetWoWBuild() == "WRATH" and class == "SHAMAN" then
		if MultiCastActionBarFrame then
			MultiCastActionBarFrame:SetParent(MoveAny:GetMainPanel())
		end

		if MoveAny:IsEnabled("TOTEMBAR", false) then
			MoveAny:RegisterWidget(
				{
					["name"] = "MultiCastActionBarFrame",
					["lstr"] = "LID_TOTEMBAR",
					["userplaced"] = true,
					["secure"] = true
				}
			)
		end
	end

	if MoveAny:IsEnabled("ALERTFRAME", false) then
		local afsw, afsh = 276, 68
		MoveAny:RegisterWidget(
			{
				["name"] = "AlertFrame",
				["lstr"] = "LID_ALERTFRAME",
				["sw"] = afsw,
				["sh"] = afsh
			}
		)

		if AlertFrame and AlertFrame.AddAlertFrame then
			hooksecurefunc(
				AlertFrame,
				"AddAlertFrame",
				function(se, frame)
					if frame.ma_setup == nil then
						frame.ma_setup = true
						hooksecurefunc(
							AlertFrame,
							"SetScale",
							function(sel, scale)
								frame:SetScale(scale)
							end
						)

						frame:SetScale(AlertFrame:GetScale())
						hooksecurefunc(
							AlertFrame,
							"SetAlpha",
							function(sel, alpha)
								frame:SetAlpha(alpha)
							end
						)

						frame:SetAlpha(AlertFrame:GetAlpha())
					end
				end
			)
		end
	end

	-- BOTTOMLEFT
	for i = 1, 10 do
		local cf = _G["ChatFrame" .. i]
		if cf and i > 1 then
			if MoveAny:IsEnabled("CHATBUTTONFRAME", false) then
				local cbf = _G["ChatFrame" .. i .. "ButtonFrame"]
				if cbf then
					hooksecurefunc(
						cbf,
						"SetPoint",
						function(sel, ...)
							if sel.cbfsetpoint then return end
							sel:SetMovable(true)
							if sel.SetUserPlaced and sel:IsMovable() then
								sel:SetUserPlaced(true)
							end

							sel.cbfsetpoint = true
							C_Timer.After(
								0.0,
								function()
									local ssw, _ = _G["ChatFrame" .. 1 .. "ButtonFrame"]:GetSize()
									sel:SetSize(ssw, ssw * 6)
									sel:ClearAllPoints()
									sel:SetPoint("BOTTOM", _G["ChatFrame" .. 1 .. "ButtonFrame"], "BOTTOM", 0, 0)
									sel.cbfsetpoint = false
								end
							)
						end
					)

					cbf:SetMovable(true)
					if cbf.SetUserPlaced and cbf:IsMovable() then
						cbf:SetUserPlaced(true)
					end

					cbf:ClearAllPoints()
					cbf:SetPoint("BOTTOM", _G["ChatFrame" .. 1 .. "ButtonFrame"], "BOTTOM", 0, 0)
				end

				function MoveAny:UpdateActiveTab()
					local selectedId = 1
					if SELECTED_CHAT_FRAME then
						selectedId = SELECTED_CHAT_FRAME:GetID()
					end

					for x = 1, 10 do
						local cbff = _G["ChatFrame" .. x .. "ButtonFrame"]
						if cbff then
							if x == selectedId then
								cbff:Show()
							else
								cbff:Hide()
							end
						end
					end

					C_Timer.After(0.1, MoveAny.UpdateActiveTab)
				end

				MoveAny:UpdateActiveTab()
			end

			if MoveAny:IsEnabled("CHATEDITBOX", false) then
				local ceb = _G["ChatFrame" .. i .. "EditBox"]
				if ceb then
					hooksecurefunc(
						ceb,
						"SetPoint",
						function(sel, ...)
							if sel.cebsetpoint then return end
							sel:SetMovable(true)
							if sel.SetUserPlaced and sel:IsMovable() then
								sel:SetUserPlaced(true)
							end

							sel.cebsetpoint = true
							if _G["ChatFrame" .. 1 .. "EditBox"] then
								sel:SetSize(_G["ChatFrame" .. 1 .. "EditBox"]:GetSize())
								sel:ClearAllPoints()
								sel:SetPoint("CENTER", _G["ChatFrame" .. 1 .. "EditBox"], "CENTER", 0, 0)
							end

							sel.cebsetpoint = false
						end
					)

					ceb:SetMovable(true)
					if ceb.SetUserPlaced and ceb:IsMovable() then
						ceb:SetUserPlaced(true)
					end

					ceb:ClearAllPoints()
					ceb:SetPoint("CENTER", _G["ChatFrame" .. 1 .. "EditBox"], "CENTER", 0, 0)
				end
			end
		end
	end

	if MoveAny:IsEnabled("CHATBUTTONFRAME", false) then
		local cbf = _G["ChatFrame" .. 1 .. "ButtonFrame"]
		cbf:EnableMouse(true)
		MoveAny:RegisterWidget(
			{
				["name"] = "ChatFrame" .. 1 .. "ButtonFrame",
				["lstr"] = "LID_CHATBUTTONFRAME",
			}
		)

		if ChatFrameMenuButton then
			ChatFrameMenuButton:SetParent(cbf)
			function ChatFrameMenuButton:GetMAEle()
				return cbf
			end
		end

		if ChatFrameChannelButton then
			ChatFrameChannelButton:SetParent(cbf)
			function ChatFrameChannelButton:GetMAEle()
				return cbf
			end
		end
	end

	if MoveAny:IsEnabled("CHATEDITBOX", false) then
		local ceb = _G["ChatFrame" .. 1 .. "EditBox"]
		if ceb then
			hooksecurefunc(
				ceb,
				"SetClampRectInsets",
				function(sel)
					if sel.setclamprectinsets_ma then return end
					sel.setclamprectinsets_ma = true
					sel:SetClampRectInsets(2, 2, 2, 2)
					sel.setclamprectinsets_ma = false
				end
			)

			ceb:SetClampRectInsets(2, 2, 2, 2)
		end

		MoveAny:RegisterWidget(
			{
				["name"] = "ChatFrame" .. 1 .. "EditBox",
				["lstr"] = "LID_CHATEDITBOX",
			}
		)
	end

	if MoveAny:IsEnabled("CHATQUICKJOIN", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "QuickJoinToastButton",
				["lstr"] = "LID_CHATQUICKJOIN"
			}
		)
	end

	if MoveAny:IsEnabled("LOSSOFCONTROLFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "LossOfControlFrame",
				["lstr"] = "LID_LOSSOFCONTROLFRAME"
			}
		)
	end

	if MoveAny:IsEnabled("GHOSTFRAME", false) then
		MoveAny:RegisterWidget(
			{
				["name"] = "GhostFrame",
				["lstr"] = "LID_GHOSTFRAME",
				["sw"] = 130,
				["sh"] = 45,
			}
		)
	end

	if UIPARENT_MANAGED_FRAME_POSITIONS and UIPARENT_MANAGED_FRAME_POSITIONS["ArenaEnemyFrames"] then
		ArenaEnemyFrames:SetMovable(true)
		ArenaEnemyFrames:SetUserPlaced(true)
		UIPARENT_MANAGED_FRAME_POSITIONS["ArenaEnemyFrames"] = nil
	end

	MoveAny:InitMALock()
	if MoveAny:IsEnabled("EDITMODE", MoveAny:GetWoWBuildNr() < 100000) then
		if MoveAny.InitMinimap then
			MoveAny:InitMinimap()
		end

		if MoveAny.InitBuffBar then
			MoveAny:InitBuffBar()
		end

		if MoveAny.InitDebuffBar then
			MoveAny:InitDebuffBar()
		end
	end

	if not IsAddOnLoaded("Dominos") then
		if MoveAny.InitMicroMenu then
			MoveAny:InitMicroMenu()
		end

		if MoveAny.InitBags then
			MoveAny:InitBags()
		end
	end

	if MoveAny.InitMAFPSFrame then
		MoveAny:InitMAFPSFrame()
	end

	if MoveAny.InitMultiCastActionBar then
		MoveAny:InitMultiCastActionBar()
	end

	if MoveAny.InitPartyFrame then
		MoveAny:InitPartyFrame()
	end

	if MoveAny.MoveFrames then
		MoveAny:MoveFrames()
	end

	if MoveAny.InitMAVehicleSeatIndicator then
		MoveAny:InitMAVehicleSeatIndicator()
	end

	if WorldMapFrame then
		if WorldMapFrame.Minimize then
			hooksecurefunc(
				WorldMapFrame,
				"Minimize",
				function(sel)
					sel:SetScale(1)
				end
			)

			hooksecurefunc(
				WorldMapFrame,
				"Maximize",
				function(sel)
					sel:SetScale(1)
				end
			)
		end

		if MoveAny:GetWoWBuild() ~= "RETAIL" then
			WorldMapFrame.ScrollContainer.GetCursorPosition = function(fr)
				local x, y = MapCanvasScrollControllerMixin.GetCursorPosition(fr)
				local scale = WorldMapFrame:GetScale()
				if not IsAddOnLoaded("Mapster") then
					return x / scale, y / scale
				else
					local reverseEffectiveScale = 1 / UIParent:GetEffectiveScale()

					return x / scale * reverseEffectiveScale, y / scale * reverseEffectiveScale
				end
			end
		end
	end

	local MoveAnyMinimapIcon = LibStub("LibDataBroker-1.1"):NewDataObject(
		"MoveAnyMinimapIcon",
		{
			type = "data source",
			text = "MoveAnyMinimapIcon",
			icon = 135994,
			OnClick = function(sel, btnName)
				if btnName == "LeftButton" then
					MoveAny:ToggleMALock()
				elseif IsShiftKeyDown() and btnName == "RightButton" then
					MoveAny:HideMinimapButton()
				end
			end,
			OnTooltipShow = function(tooltip)
				if not tooltip or not tooltip.AddLine then return end
				tooltip:AddLine("MoveAny")
				tooltip:AddLine(MoveAny:GT("LID_MMBTNLEFT"))
				tooltip:AddLine(MoveAny:GT("LID_MMBTNRIGHT"))
			end,
		}
	)

	if MoveAnyMinimapIcon then
		MAMMBTN = LibStub("LibDBIcon-1.0", true)
		if MoveAny:GetMinimapButton() then
			MoveAny:GetMinimapButton():Register("MoveAnyMinimapIcon", MoveAnyMinimapIcon, MoveAny:GetMinimapTable())
		end
	end

	function MoveAny:MinimapButtonCB(checked)
		if checked then
			MoveAny:ShowMinimapButton()
		else
			MoveAny:HideMinimapButton()
		end
	end

	function MoveAny:HideMinimapButton()
		if MoveAny:IsEnabled("SHOWMINIMAPBUTTON", true) then
			MoveAny:SetEnabled("SHOWMINIMAPBUTTON", false)
		end

		if MoveAny:GetMinimapButton() then
			MoveAny:GetMinimapButton():Hide("MoveAnyMinimapIcon")
		end
	end

	function MoveAny:ShowMinimapButton()
		if not MoveAny:IsEnabled("SHOWMINIMAPBUTTON", true) then
			MoveAny:SetEnabled("SHOWMINIMAPBUTTON", true)
		end

		if MoveAny:GetMinimapButton() then
			MoveAny:GetMinimapButton():Show("MoveAnyMinimapIcon")
		end
	end

	function MoveAny:UpdateMinimapButton()
		if MoveAny:GetMinimapButton() then
			if MoveAny:IsEnabled("SHOWMINIMAPBUTTON", true) then
				MoveAny:ShowMinimapButton()
			else
				MoveAny:HideMinimapButton()
			end
		end
	end

	function MoveAny:ToggleMinimapButton()
		MoveAny:SetEnabled("SHOWMINIMAPBUTTON", not MoveAny:IsEnabled("SHOWMINIMAPBUTTON", true))
		MoveAny:UpdateMinimapButton()
	end

	if MoveAny:IsEnabled("MALOCK", false) then
		MoveAny:ShowMALock()
	end

	if MoveAny:IsEnabled("MAPROFILES", false) then
		MoveAny:ShowProfiles()
	end

	C_Timer.After(
		0,
		function()
			if MoveAny:GetMinimapButton() then
				MoveAny:UpdateMinimapButton()
			end
		end
	)

	C_Timer.After(
		1,
		function()
			MoveAny:CheckAlphas()
		end
	)

	MoveAny:UpdateMALock()
end