-- App locals
local appName, app = ...;
local SearchForField, SearchForFieldContainer
	= app.SearchForField, app.SearchForFieldContainer;
local GetRelativeValue = app.GetRelativeValue;
local UpdateParentProgress = app.UpdateParentProgress;

-- Temporary
local function BuildGroups(parent)
	local g = parent.g;
	if g then
		-- Iterate through the groups
		for i=1,#g,1 do
			-- Set the group's parent
			local group = g[i];
			group.parent = parent;

			-- Build the groups
			BuildGroups(group);
		end
	end
end

-- Implementation
app:GetWindow("Missing Quests", {
	parent = UIParent,
	Silent = true,
	Commands = {
		"attmissing",
		"attquestie",
		"attmq",
	},
	IsQuestieLoaded = false,
	OnRebuild = function(self, ...)
		if self.data then return; end
		self.data = {
			text = "Missing Quests",
			icon = app.asset("Interface_Quest"),
			description = "This window shows you all of the quests that are missing from ATT that exist in Questie or in your Saved Variables.",
			visible = true, 
			expanded = true,
			back = 1,
			options = {
				{	-- Missing Quests From ATT Header
					text = "From ATT",
					icon = app.asset("logo_32x32"),
					preview = app.asset("Discord_2_128"),
					description = "The following quests are missing from ATT, but were found in the Questie DB or your Saved Variables!",
				},
				{	-- Missing Quests From Questie Header
					text = "From Questie",
					icon = app.asset("Interface_Quest"),
					description = "The following quests are missing from Questie, but were found in the ATT DB!",
				},
				{	-- Missing Quests From Questie (With ATT Sources) Header
					text = "From Questie (With ATT Sources)",
					icon = app.asset("Interface_Quest"),
					description = "The following quests are missing from Questie, but were found in the ATT DB!",
				},
			},
			OnUpdate = function(data)
				if not self.IsQuestieLoaded then return; end
				if not data.g then
					data.g = {};
					for i,header in ipairs(data.options) do
						header.parent = data;
						tinsert(data.g, header);
					end
				end
				
				local MissingQuestsFromATT, MissingQuestsFromQuestie = {}, {};
				local QuestieDB = QuestieLoader:ImportModule("QuestieDB");
				if not QuestieDB.QuestPointers then return; end
				
				local MissingQuestsFromATTDict, MissingQuestsFromQuestieDict = {}, {};
				for id,_ in pairs(ATTAccountWideData.Quests) do
					if not MissingQuestsFromATTDict[id] and #SearchForField("questID", id) == 0 then
						MissingQuestsFromATTDict[id] = true;
						tinsert(MissingQuestsFromATT, id);
					end
					if not MissingQuestsFromQuestieDict[id] and not QuestieDB.QuestPointers[id] then
						MissingQuestsFromQuestieDict[id] = true;
						tinsert(MissingQuestsFromQuestie, id);
					end
				end
				for id,_ in pairs(app.CurrentCharacter.Quests) do
					if not MissingQuestsFromATTDict[id] and #SearchForField("questID", id) == 0 then
						MissingQuestsFromATTDict[id] = true;
						tinsert(MissingQuestsFromATT, id);
					end
					if not MissingQuestsFromQuestieDict[id] and not QuestieDB.QuestPointers[id] then
						MissingQuestsFromQuestieDict[id] = true;
						tinsert(MissingQuestsFromQuestie, id);
					end
				end
				for id,_ in pairs(QuestieDB.QuestPointers) do
					if not MissingQuestsFromATTDict[id] and #SearchForField("questID", id) == 0 then
						MissingQuestsFromATTDict[id] = true;
						tinsert(MissingQuestsFromATT, id);
					end
				end
				
				for id,questData in pairs(SearchForFieldContainer("questID")) do
					if not MissingQuestsFromQuestieDict[id] and not QuestieDB.QuestPointers[id] and #questData > 1 and questData[1].u ~= 1 then
						local shouldAdd = true;
						for i,quest in ipairs(questData) do
							if not quest.parent or GetRelativeValue(quest, "u") == 1 or GetRelativeValue(quest, "_hqt") then
								shouldAdd = false;
							end
						end
						if shouldAdd then
							MissingQuestsFromQuestieDict[id] = true;
							tinsert(MissingQuestsFromQuestie, id);
						end
					end
				end
				
				-- Build a summary for ATT
				local parent, g = data.options[1], {};
				app.Sort(MissingQuestsFromATT, app.SortDefaults.Number);
				for _,id in ipairs(MissingQuestsFromATT) do
					local quest = app.CreateQuest(id);
					quest.description = "@Crieve: This has not been sourced in ATT yet!";
					quest.parent = parent;
					tinsert(g, quest);
				end
				if #g > 0 then parent.g = g; end
				
				-- Build a summary for Questie
				local parent, g = data.options[2], {};
				app.Sort(MissingQuestsFromQuestie, app.SortDefaults.Number);
				for _,id in ipairs(MissingQuestsFromQuestie) do
					local quest, questData = app.CreateQuest(id), {};
					for i,o in pairs(SearchForField("questID", id)) do
						for key,value in pairs(o) do
							questData[key] = value;
						end
					end
					local description = "ATT Data:";
					for key,value in pairs(questData) do
						description = description .. "\n  " .. key .. ": " .. tostring(value);
					end
					quest.description = description;
					quest.parent = parent;
					tinsert(g, quest);
				end
				if #g > 0 then parent.g = g; end
				
				-- Build a Sourced ATT structure for Questie
				local parent, g = data.options[3], {};
				local MissingQuestsFromQuestieDict = {};
				for i,questID in ipairs(MissingQuestsFromQuestie) do
					MissingQuestsFromQuestieDict[questID] = true;
				end
				local filteredData = app:BuildSearchFilteredResponse(app:GetDataCache().g, function(group)
					if group.questID and MissingQuestsFromQuestieDict[group.questID] then
						return true;
					end
				end);
				if filteredData and #filteredData > 0 then
					for i,o in ipairs(filteredData) do
						o.parent = parent;
					end
					parent.g = filteredData;
				end
				BuildGroups(data);
				data.OnUpdate = nil;
			end,
		};
		app:StartATTCoroutine("Waiting For Questie...", function()
			coroutine.yield();
			while not (Questie and Questie.started) do
				coroutine.yield();
			end
			self.IsQuestieLoaded = true;
			self:Update(true);
		end);
	end,
	OnUpdate = function(self, ...)
		-- Force Debug Mode
		local debugMode = app.Settings:Get("DebugMode");
		if not debugMode then
			ATTClassicSettings.General.DebugMode = true;
			app.Settings:UpdateMode();
		end
		self:DefaultUpdate(...);
		if not debugMode then
			ATTClassicSettings.General.DebugMode = debugMode;
			app.Settings:UpdateMode();
		end
		return false;
	end
});