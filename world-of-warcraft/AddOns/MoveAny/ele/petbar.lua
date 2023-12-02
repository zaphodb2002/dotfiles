local _, MoveAny = ...
local btnsize = 36
function MoveAny:IsInPetBattle()
	local inPetBattle = false
	if C_PetBattles then
		inPetBattle = C_PetBattles.IsInBattle()
	end

	return inPetBattle
end

function MoveAny:UpdatePetBar()
	local inPetBattle = MoveAny:IsInPetBattle()
	if PetHasActionBar() and UnitIsVisible("pet") and not inPetBattle then
		MAPetBar:SetAlpha(1)
		for i = 1, 10 do
			local bb = _G["PetActionButton" .. i]
			if bb then
				bb:SetAlpha(1)
			end
		end
	else
		MAPetBar:SetAlpha(0)
		for i = 1, 10 do
			local bb = _G["PetActionButton" .. i]
			if bb then
				bb:SetAlpha(0)
			end
		end
	end

	if MoveAny.UpdateActionBar then
		MoveAny:AddBarName(MAPetBar, "MAPetBar")
		MoveAny:UpdateActionBar(MAPetBar)
	end

	C_Timer.After(0.4, MoveAny.UpdatePetBar)
end

function MoveAny:InitPetBar()
	if not PetActionBar and MoveAny:IsEnabled("PETBAR", false) then
		MAPetBar = CreateFrame("Frame", nil, MoveAny:GetMainPanel())
		MAPetBar:SetPoint("BOTTOM", MoveAny:GetMainPanel(), "BOTTOM", 0, 110)
		MAPetBar.btns = {}
		if _G["PetActionButton" .. 1] then
			btnsize = _G["PetActionButton" .. 1]:GetSize()
		end

		for i = 1, 10 do
			local bb = _G["PetActionButton" .. i]
			if bb then
				bb:SetSize(btnsize, btnsize)
				hooksecurefunc(
					bb,
					"SetParent",
					function(sel, ...)
						if sel.ma_setparent then return end
						sel.ma_setparent = true
						bb:SetParent(MAPetBar)
						sel.ma_setparent = false
					end
				)

				hooksecurefunc(
					MAPetBar,
					"SetPoint",
					function(sel, ...)
						bb:SetParent(MAPetBar)
						bb:SetMovable(true)
						if bb.SetUserPlaced and bb:IsMovable() then
							bb:SetUserPlaced(false)
						end

						bb:ClearAllPoints()
						bb:SetPoint("TOPLEFT", MAPetBar, "TOPLEFT", (i - 1) * btnsize, 0)
					end
				)

				bb:ClearAllPoints()
				bb:SetPoint("TOPLEFT", MAPetBar, "TOPLEFT", (i - 1) * btnsize, 0)
				tinsert(MAPetBar.btns, bb)
			end
		end

		MAPetBar:SetSize(10 * btnsize, btnsize)
		MoveAny:UpdatePetBar()
	end
end