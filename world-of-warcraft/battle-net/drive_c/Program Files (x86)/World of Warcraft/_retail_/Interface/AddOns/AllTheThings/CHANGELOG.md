# AllTheThings

## [DF-3.8.8](https://github.com/DFortun81/AllTheThings/tree/DF-3.8.8) (2023-12-17)
[Full Changelog](https://github.com/DFortun81/AllTheThings/compare/DF-3.8.7...DF-3.8.8) [Previous Releases](https://github.com/DFortun81/AllTheThings/releases)

- parsing for release  
- Classic: Reparsed all classic dbs.  
- Some holiday noautomation and a small adjustment to an achievement being flagged in parser  
- Classic: Added some missing objectives to teldrassil.  
- PVP Item/Achievement Fixes  
- Added some missing objects to Stonetalon Mountains.  
- Feast of Winter Veil Updates  
    re-parsed  
- Fixed small displayID bug caused earlier  
- Added some missing objects to the Wetlands.  
- Added some checks to prevent trying to show Icon/Model for some useless default displayID's (white bunny, blue empty circle)  
- 9.2 QI adding  
- Emerald Dream Objects  
- Fyr'alath the Dreamrender bad luck protection qids  
- Classic: Illusions are now a proper dynamic category, once they become available.  
- Classic: Windows now declare themselves to be shown in the main list's Dynamic Category section rather than be explicitly added manually.  
- Removed the "not found yet" text from the new manuscript  
- Winter Veil 2023 additions (check please)  
- Added a default empty string for TableConcat separator  
    Added MissingRecipe dialog logic when in Debugging  
- Added back timelines for the Ginormous Gorloc and Gleaming Moonbeast.  
- Dream Warden Renown 20 Dragon Isles Supplies quest  
- Fyr'alath the Dreamrender first itemID added (that start leggo quest chain)  
    I'm also currently unsure if it can drop from lower difficulty.  
- Parsed to verify and apply criteria that are hidden  
- Northern Stranglethorn Zone Drop clarifications  
- Few more symlinks fixed  
- SOD: Added the recipes for the crafted items from the rep vendor.  
- Parser now ignores a few more situations of multiple Criteria which are marked hidden  
    Parser now cleans any symlink for Achievements whose Criteria is incorporated  
    Added one more fallback for Criteria name  
- More symlink cleanup and fixes  
    ResolveSymbolicLink now uses a separate function based on Debugging value when loading the addon, to allow for checking bad symlinks when debugging without adding overhead to non-Debugging situations  
- Fixed an issue where some groups would infinitely recursively keep killing duplicate content  
- First craft questID and ICC HQT.  
- More symlinks cleaned by removing tierID selection and adding 'find'  
- Since 'headerID' is cached now, we can skip tierID selection and directly go to PvP season headers. This makes general ensemble symlinks FAR more efficient.  
    Improved Oribos PvP symlinks  
- timeline fix  
    cinder mythic only  
    greaer ember of fyrak  
- Even more Dragon Isles Supplies.  
- Added more Dragon Isles Supplies quests.  
- Classic: Changed Dust Devil Debris to an objective since you can't collect it before being on the quest.  
- Bones for Fyr'alath the Dreamrender questline  
    Nothing was removed from unsroted, missing coords and providers  
- Sorting DF stuff  
- Preprocessor statement fix, and some _noautoamtion because criteria duplication runs rampant in pvp  
- Rest of the AB criteria shenanigans dealt with  
- More symlink fixes (Fierce Gladiator season is scuffed but at least the symlinks aren't empty)  
- Wrong ItemID (think this is the correct one?)  
- Fixed and cleaned a few more symlinks  
- Added a PvP weapon arsenal helper  
- Comment out some not-yet-used header constants  
- SOD: min not max  
- Cleaned a couple wacky MoP ensemble symlinks  
- Some improvements for 'find' symlink hopefully  
    Now using 'find' instead of 'where'/'pop' for pvp ensemble symlinks (fixes many old symlinks which broke because of extra headers)  
- SOD: Added Warsong Vendors.  
- SOD: The weekly quest provides rep up to honored. (assumed)  
- Localized math.floor since it's heavily used  
- Pre-emptively adding some additional allowed NPC fill headers for future PvP use  
- SOD: Implemented the Battle for Ashenvale stuff in Ashenvale.  
- Silverwing Sentinels and Warsong Outriders now appear in the Ashenvale mini list like the AB reputations do. (this is doubly useful for SOD where you get reputation from the world pvp event in the zone)  
- Quick fix for some criteria shenanigans in some Arathi Basin achievements. More to follow after getting some sleep.  
- Deepmoss Eggs are objects, not items.  
- Classic: Fixed the mini list for Wailing Caverns pre-Wrath.  
- SOD: Added the Speak to Grizzby HQT.  
- SOD: Updated reputation costs for the runes after the 2023-12-12 Hotfix.  
- Missed an objective description.  
- Factions are now all fully dynamic and are sourced in their primary location  
- MoP factions moved to their primary locations  
- Removed a useless symlink  
- Reparsed  
- Weekly Quest Tokens  
- Raid Quest updates  
- Classic: Added most of the UI windows to the Features tab in the settings menu.  
- Classic: Reparsed DB.  
- Classic: Missing Quests now also checks against ATTAccountWideData.Quests.  
- Classic: The Missing Quests window now shows quests that have been completed by the player but are missing in Questie or ATT.  
- Classic: Renamed "Compare Questie DB" to "Missing Quests" since the window now uses more than just Questie now.  
- Classic: BFD no longer appears as a raid in Classic Era.  
- Classic: Sync now attempts to link first to establish a bnet connection instead of sending everything over addon messages, which are significantly smaller and slower.  
- Fixed removed PVP titles showing up in Wrath Classic  
- WoD factions moved to their primary locations  
- BFA and Legion factions brought up to current standards  
- Classic: Popouts made from data with relative groups no longer generate a source lookup. (Such as right clicking Azuregos and having his loot table posted twice)  
- Unsorted item  
- Herbalism WQ in BFA  
- miss out Nappa's Famous Tea  
- Classic: Windows can now specify a root command index in order to make more unique command roots, but allow the window to show the "best" one to the user in the settings menu.  
- added 9.2.5 quest items  
- Add Guardsman Belt to Dark Iron Entrepreneur  
- Update Zone Drop description in ru locale  
- Moved Legion factions out of Factions file too  
- Moved BFA factions out of Factions file  
- Classic: Reparsed DB.  
- 12 month sub promo isnt removed yet  
- updated Zone Rewards header to include Emissary quests  
- updated 2 boa insignia's  
- Classic: Converted all SlashCmdList entries into Window Commands. (This is to make them visible to the settings menu shortly.)  
- Classic: Windows can now provide a Commands list and specify a window-specific OnCommand handler.  
- Added the missing Exorcising Terrordale quest chain for the epic paladin mount quest.  
- Added the missing Paladin Epic Mount quest chain to Stormwind City.  
- Retail: Added option to inject a ATT window update function for when a new ATT window is generated  
- Added "A Lack of Fear" and "The Tome of Divinity" to for Dwarves.  
- Added an Analyzers Modules which can optionally be included in the TOC  
- Merge branch 'master' of https://github.com/DFortun81/AllTheThings  
- Improved the 'pvp\_gear\_base' sub using 'find'  
    Quicker escape when attempting to resolve groups with no 'sym'  
    Fixed some broken Legion PvP symlinks for some removed tokens which bloated Dalaran to like 25K items in debug  
- Classic: More simply, more better  
- Classic: Simplified /attquestie  
- Classic: Added the Compare Questie DB window. (/attquestie)  
