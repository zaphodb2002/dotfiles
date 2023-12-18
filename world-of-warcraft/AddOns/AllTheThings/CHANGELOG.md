# AllTheThings

## [DF-3.8.7](https://github.com/DFortun81/AllTheThings/tree/DF-3.8.7) (2023-12-10)
[Full Changelog](https://github.com/DFortun81/AllTheThings/compare/DF-3.8.6...DF-3.8.7) [Previous Releases](https://github.com/DFortun81/AllTheThings/releases)

- Unsorted NYI items are back in the unsorted file.  
    satchel is symlinked for release  
- Doti update.  
- Every Day I'm Truffling shouldn't show its criteria. Also took out a no longer relevant TODO comment.  
- Dreamsurge breadcrumb seems removed in 10.2.0  
- a little bit more DF items  
- Added BMAH vendor in Valdrakken.  
- Backlogging with sorting some DF NYI items  
- NYI items and parsed  
- Update Grizzly Hills.lua  
    Added some quest data  
- Objects with models  
- SOD: Gnomeregan quests are not currently available.  
- SOD: Fixed a handful of BFD quests.  
- SOD: Added all of the loot to Blackfathom Deeps.  
- Merged the dynamic object db files into ObjectDB.  
- Excluding the Conditional ObjectDB when in DEBUG mode. (this helps build the ObjectDB without putting in the stuff that breaks the filtering.)  
- SOD: Fixed a typo on the Wandering Swordsman.  
- NYI Items  
    From Retail-Errors  
- NYI and Retail-Errors  
- Couple further tweaks on upgrade handling within search context due to some items showing upgrades when they in fact are in a state which does not allow upgrades  
- NYI and Errors  
- When running parser in DEBUG Mode, you can now use the DEBUG preprocessor.  
- Classic: Fixed a bug with the Removed From Game window logic.  
- Fixed an issue with /attsync when blizzard services are unavailable.  
- SOD: Added Carrodin to Wetlands.  
- Corrected a coordinate in Duskwood that was preventing retail from parsing.  
    Added some more objects.  
- SOD: Added the Wandering Swordsman and the Rune of Blood Frenzy.  
- Classic: Elmore's Task now shows up in SW. Also made AUTHOR a bit easier.  
- SOD: Added Phoenix Bindings.  
    Added more missing quest objects.  
- weekly reputation quest from emerald dream has no longer symlinked rewards.  
    almost all items are unique transmog and are limited by 2 weekly quests, so we should show all sources  
- another tistle tea source  
- Adding corrections and details to 10.1.7 Duskwood drops.  
- *slaps _noautomation on misbehaving achievements* I fix :D  
- Master Draenor Crafter seems to exist out of 90 criteria, one for every item you can craft. Don't really think we need to see all that, right?  
- Raiding with Leashes series item providers  
- NYI  
- BuildSearchResponse modified on how it can keep certain fields when cloning in groups  
- Couple ResolveSymlink adjustments  
- More fixes to SearchForObject  
- Fixed a SearchForObject issue where any modItemID search would be empty  
- Top level Achievements category now properly shows progress  
- Added the Underspore object.  
- Classic: Fixed a tooltip bug with items that share the same name as their containing object.  
- Conquest points were Cata onwards + parsed everything for retail  
- Achievement cleanup (#1529)  
    * Pandaria quests already exist elsewhere  
    * BFA quest achievements moved to their new homes  
    * General quest achievements also moved to their new home  
    * Some fixes to moved data  
    * Pandaria reputation achievements moved  
    * Draenor reputation achievements moved  
    * Legion reputation achievements moved  
    * BFA reputation achievements moved  
    * General reputation achievements also moved  
    * Parser was getting a tad too enthusiastic with the criteria under the exalted reputation achievements  
    * Formatting and some small adjustments so everything displays properly ingame  
    * Pet battle achievements moved to new homes  
    * FoS achievements moved to new homes  
    * Legacy achievements moved to new homes  
    * Header fix  
    * First pass of PR review comments  
    * A bunch of timelines (PR feedback)  
    * These two seem to have survived the purge  
    * Don't need both sourcequests and _quests  
    * Timelines  
    * Deleted some sourceQuests we no longer need  
    * Timelines, moved some stuff around  
    * Reworked and fixed Bizmos Brawlpub and Brawlgar Arena achievement sections + some style stuff  
    * Valor points  
    * Moved achievements that take place everywhere in KT/DA up to continent wide achievements rather than in their main hub  
    * All PVP achievements timelines, ordered, and deepwind gorge stuff taken to its own file  
    * All Character achievements properly timelined, decoupled, some stuff moved to the raids where they belong  
    * Pet battle achievements reviewed, cleaned up, moved to better homes  
- Added object for Sanguine Hibiscus.  
- Added a proper timeline for That's Just Cruel.  
- veteran leggings are likely removed, but prolly can drop from dented raiders leggings. requires confirmation however  
- Commented out a symlink because it's searching for something not sourced and idk where to source it  
- Fixed some Legion symlinks  
- SOD: Added Phoenix Bindings.  
- Classic: Added a fallback difficulty string if one doesn't return a proper name by Blizzard.  
- SOD: Added Sturdy Courier Bag and Mantle of the Second War  
- Retail Errors  
- NYI  
- Update Superbloom.lua  
- NYI and Superbloom Description update  
- Classic: Added locations for Boar Intestines.  
- Classic: Added locations for Bear Meat.  
- Classic: Some source quest clarification for Rejold's New Brew.  
- Small doti update.  
- Classic: Walking into the Aldrassil subzone now shows the correct map data.  
- Classic: Walking into the Shadowthread Cave in Shadowglen now shows the correct map.  
- SOD: Added the Adventurer's Spirit.  
- Coldridge Valley now uses zone-text-areas.  
- Parser no longer sorts zone-text-areaIDs (the order is very specific)  
- Quick fix for some M+ vault items showing that they upgrade into themselves  
- Another one Dream Wardens Insignia from Superbloom  
- Fix #1528: Use InGame for character filters instead of Unobtainable  
- Dream Wardens Insignia  
- SOD: Updated the tooltip on the Factions to properly calculate how many supplies you need.  
- SOD: Greatly improved the design of the Waylaid Supplies section and combined it with the quest header that was there previously.  
- Couple NYI  
- Minor fix for Upgrade logic where the wrong upgrade was being considered due to bonusID on the base item  
- SOD: Added another npcID for the Kor Gem.  
- Classic: Disabled spell tooltips on action bars.  
- SOD: Separated the Sunken Reliquary from the libram for visibility.  
- SOD: Added a note to the drone version of the drop.  
- SOD: Added Libram of Justice for Paladins.  
- SOD: Added the ACA / DSL Reputation Vendor Items.  
- Classic: Added ResolveQuestData as a function you can call.  
- Some ED treasures are daily  
    Fixed Dream Infusion providers again  
- SOD: Added Shredder Autosalvage Unit for Engineers.  
- SOD: Added Libram of Banishment for Paladins.  
- 'The Great Vault' is likely not a breadcrumb. It remains available even after looting the vault without the quest  
- SOD: Added the Rune Vendor Grizzby in The Barrens.  
- Fixed a Parser issue which was allowing Achievement-merge data into every Criteria of a given Achievement (we basically never want to put anything under a Criteria)  
- Classic: Added spell descriptions.  
- SOD: Added Elixir of Coelesced Regret for Alchemists.  
- Fixed some classic object tooltips.  
    SOD: Added some rare spawn runes.  
- Moved That's Just Cruel (doesn't require Leatherworking, will probably do this with all achievements that meet this criteria)  
    Some ED linkage  
- Classic: Right clicking a thing in the addon now summarizes where it is.  
- SOD: Added all of the Rune Engravings.  
- SOD: Added Rune of Furious Thunder and Rune of Explosive Shot.  
- SOD: Added a parser preprocessor for SEASON\_OF\_DISCOVERY. (rather than using BEFORE TBC)  
- SOD: Added Monster Hunting for the Rune of Devastate for Warriors.  
- Moved Tier Set data for Tiers 11, 12, and 13 into the structures lib.  
- The Legend of Stalvan (4/13) turn in is in Elwynn Forest.  
- Bumped retail build  
    So that promos are correctly marked as removed  
- Marked Twitch promos as removed  
- Classic: Stormpike's Order turn in is in Stormwind City.  
- Some items find their home (and Dream Wardens alt quest)  
- Fyrakk bad luck protection qid  
- Fixed Dream Infusion pet providers  
- Fixed/simplified some symlinks based on testing which were failing to return results (WIP there are more...)  
- Symlink 'select' command now uses a SearchForObject with multiple results to accurately perform selections of data based on 'field' match requirements of the select (i.e. the selected data field has to match the value, whereas previously it would grab anything cached for the field/value. This would lead to weirdness and excessive results that required additional filtering to reduce to the proper result)  
- Added symlink command 'find' which works essentially like 'extract' but with a value to match on the field. (This should help make some situations cleaner where the symlink basically is just where-pop repeatedly to find a single unique header. Now you can just 'find' from the point where it would give you the group(s) needed)  
- Moved 'SearchForObject' into Cache and simplified some logic branches. Additionally it can now handle multiple results if specified by the caller, as well as proper handling of itemID searches depending on the search id being either a base itemID or modItemID  
- Couple NYI cleaned  
    Added RNG protection Fyr'alath items  
