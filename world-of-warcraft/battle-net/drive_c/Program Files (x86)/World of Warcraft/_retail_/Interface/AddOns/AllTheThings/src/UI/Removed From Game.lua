-- App locals
local appName, app = ...;
local tinsert = tinsert;

-- Implementation
app:GetWindow("Removed From Game", {
	parent = UIParent,
	Silent = true,
	Commands = { "attrfg" },
	OnRebuild = function(self)
		if self.data then return true; end
		self.data = {
			text = "Removed From Game",
			icon = app.asset("WindowIcon_RWP"), 
			description = "This window shows you all of the things that have been removed from the game.",
			visible = true, 
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					local results = app:BuildSearchResponse(app:GetDataCache().g, "u", 2);
					if #results > 0 then
						for i,result in ipairs(results) do
							tinsert(g, result);
						end
					end
				end
			end,
		};
		return true;
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without the Removed From Game filter turned on.
		local oldFilter = ATTClassicSettings.Unobtainables[2];
		ATTClassicSettings.Unobtainables[2] = true;
		self:DefaultUpdate(...);
		ATTClassicSettings.Unobtainables[2] = oldFilter;
		return false;
	end
});