local addonName, addon = ...
addon = LibStub("AceAddon-3.0"):NewAddon(addon, addonName, "AceEvent-3.0", "AceConsole-3.0", "AceHook-3.0", "AceSerializer-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)

local Globals = {}

addon.Globals = Globals

Globals.ARMOR_MASK = {
  CLOTH = 400,
  LEATHER = 3592,
  MAIL = 68,
  PLATE = 35,
}
--/dump GetSpellDescription(298886)
Globals.CLASS_INFO = {
  DEATHKNIGHT = {6,32,"PLATE"},
  DEMONHUNTER = {12, 2048, "LEATHER"},
  DRUID = {11, 1024,"LEATHER"},
  HUNTER = {3, 4, "MAIL"},
  MAGE = {8, 128, "CLOTH"},
  MONK = {10, 512, "LEATHER"},
  PALADIN = {2, 2,"PLATE"},
  PRIEST = {5, 16, "CLOTH"},
  ROGUE = {4, 8, "LEATHER"},
  SHAMAN = {7, 64, "MAIL"},
  WARLOCK = {9, 256, "CLOTH"},
  WARRIOR = {1, 1, "PLATE"},
  EVOKER =  {13, 4096, "MAIL"},
}


Globals.CLASS_MASK_TO_ID = {}


for i, data in pairs(Globals.CLASS_INFO) do
  Globals.CLASS_MASK_TO_ID[data[2]] = data[1]
end



--[[

bit.band( 3592,1024)
bit.bor( 3592,1024)
bit.band(1,35)

DEATHKNIGHT
a137006
a137007

a212612 -DEMONHUNTER
a212613

HUNTER
]?a137015[Aspect of the Wild]?a137016[Trueshot]?a137017[Aspect of the Eagle]


]]--
Globals.ARMOR_TYPE = {"CLOTH", "LEATHER", "MAIL", "PLATE"}
Globals.ARMOR_TYPE_ID = {["CLOTH"] = 1, ["LEATHER"]=2, ["MAIL"]=3, ["PLATE"]=4}


Globals.ARMOR_CLASSES = {}
for type in pairs(Globals.ARMOR_MASK ) do
  Globals.ARMOR_CLASSES[type] = {}
end
for class, data in pairs(Globals.CLASS_INFO) do
  local id = data[2]
  local type = data[3]
  Globals.ARMOR_CLASSES[type][id] = true
end

Globals.locationDrowpDown = {
  [2] = INVTYPE_HEAD,
  --[2] = 134112, neck
  [4] = INVTYPE_SHOULDER,
  --[4] = 168659, shirt
  [16] = INVTYPE_CLOAK,
  [6] = INVTYPE_CHEST,
  [7] = INVTYPE_WAIST,
  [8] = INVTYPE_LEGS,-- pants
  [9] = INVTYPE_FEET,
  [10] = INVTYPE_WRIST,  --wrist
  [11] = INVTYPE_HAND,
  [21] = INVTYPE_ROBE,--handr
}


Globals.INVENTORY_SLOT_NAMES = {
  [1]  = "HEADSLOT",
  [3]  = "SHOULDERSLOT",
  [4]  = "SHIRTSLOT",
  [5]  = "CHESTSLOT",
  [6]  = "WAISTSLOT",
  [7]  = "LEGSSLOT",
  [8]  = "FEETSLOT",
  [9]  = "WRISTSLOT",
  [10] = "HANDSSLOT",
  [15] = "BACKSLOT",
  [16] = "MAINHANDSLOT",
  [17] = "SECONDARYHANDSLOT",
  [18] = "MAINHANDSLOT",
  [19] = "TABARDSLOT",

       
  
  ["HEADSLOT"]          = 1,
  ["SHOULDERSLOT"]      = 3,
  ["SHIRTSLOT"]         = 4,
  ["CHESTSLOT"]         = 5,
  ["WAISTSLOT"]         = 6,
  ["LEGSSLOT"]          = 7,
  ["FEETSLOT"]          = 8,
  ["WRISTSLOT"]         = 9,
  ["HANDSSLOT"]         = 10,
  ["BACKSLOT"]          = 15,
  ["MAINHANDSLOT"]      = 16,
  ["SECONDARYHANDSLOT"] = 17,
  ["TABARDSLOT"]        = 19,

  ["INVTYPE_HEAD"] =            1,
  ["INVTYPE_NECK"] =            2,
  ["INVTYPE_SHOULDER"] =        3,
  ["INVTYPE_BODY"] =            4,
  ["INVTYPE_CHEST"] =           5,
  ["INVTYPE_ROBE"] =            5,
  ["INVTYPE_WAIST"] =          6,
  ["INVTYPE_LEGS"] =           7,
  ["INVTYPE_FEET"] =            8,
  ["INVTYPE_WRIST"] =           9,
  ["INVTYPE_HAND"] =            10,
  ["INVTYPE_CLOAK"] =           15,
  ["INVTYPE_WEAPON"] =          16,
  ["INVTYPE_SHIELD"] =          17,
  ["INVTYPE_2HWEAPON"] =        16,
  ["INVTYPE_WEAPONMAINHAND"] =  16,
  ["INVTYPE_WEAPONOFFHAND"] =   17,
  ["INVTYPE_HOLDABLE"] =        17,
  ["INVTYPE_RANGED"] =          16,
  ["INVTYPE_THROWN"] =          16,
  ["INVTYPE_RANGEDRIGHT"] =     16,
  ["INVTYPE_RELIC"] =           17,
  ["INVTYPE_TABARD"] =          19,
}



Globals.CATEGORYID_TO_NAME = {
    [Enum.TransmogCollectionType.Head] = "HEADSLOT",
    [Enum.TransmogCollectionType.Shoulder] = "SHOULDERSLOT",
    [Enum.TransmogCollectionType.Back] = "BACKSLOT",
    [Enum.TransmogCollectionType.Chest] = "CHESTSLOT",
    [Enum.TransmogCollectionType.Shirt] = "SHIRTSLOT",
    [Enum.TransmogCollectionType.Tabard] = "TABARDSLOT",
    [Enum.TransmogCollectionType.Wrist] = "WRISTSLOT",
    [Enum.TransmogCollectionType.Hands] = "HANDSSLOT",
    [Enum.TransmogCollectionType.Waist] = "WAISTSLOT",
    [Enum.TransmogCollectionType.Legs] = "LEGSSLOT",
    [Enum.TransmogCollectionType.Feet] = "FEETSLOT",
    [Enum.TransmogCollectionType.Wand] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.OneHAxe] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.OneHSword] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.OneHMace] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.Dagger] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.Fist] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.TwoHAxe] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.TwoHSword] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.TwoHMace] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.Staff] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.Polearm] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.Bow] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.Gun] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.Crossbow] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.Warglaives] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.Paired] = "MAINHANDSLOT",
    [Enum.TransmogCollectionType.Shield] = "SECONDARYHANDSLOT",
    [Enum.TransmogCollectionType.Holdable] = "SECONDARYHANDSLOT",
}

Globals.slots = {
  "HeadSlot",
  "ShoulderSlot",
  "BackSlot",
  "ChestSlot",
  "ShirtSlot",
  "TabardSlot",
  "WristSlot",
  "HandsSlot",
  "WaistSlot",
  "LegsSlot",
  "FeetSlot",
  "MainHandSlot",
  "SecondaryHandSlot",
};



Globals.tooltip_slots = {
  INVTYPE_HEAD = 0,
  INVTYPE_SHOULDER = 0,
  INVTYPE_CLOAK = 3.4,
  INVTYPE_CHEST = 0,
  INVTYPE_BODY = 0,
  INVTYPE_ROBE = 0,
  INVTYPE_SHIRT = 0,
  INVTYPE_TABARD = 0,
  INVTYPE_WRIST = 0,
  INVTYPE_2HWEAPON = 1.6,
  INVTYPE_WEAPON = 1.6,
  INVTYPE_WEAPONMAINHAND = 1.6,
  INVTYPE_WEAPONOFFHAND = -0.7,
  INVTYPE_SHIELD = -0.7,
  INVTYPE_HOLDABLE = -0.7,
  INVTYPE_RANGED = 1.6,
  INVTYPE_RANGEDRIGHT = 1.6,
  INVTYPE_THROWN = 1.6,
  INVTYPE_HAND = 0,
  INVTYPE_WAIST = 0,
  INVTYPE_LEGS = 0,
  INVTYPE_FEET = 0,
};

Globals.mods = {
  Shift = IsShiftKeyDown,
  Ctrl = IsControlKeyDown,
  Alt = IsAltKeyDown,
};



Globals.BASE_SET_BUTTON_HEIGHT = 46
Globals.VARIANT_SET_BUTTON_HEIGHT = 20
Globals.SET_PROGRESS_BAR_MAX_WIDTH = 204
Globals.IN_PROGRESS_FONT_COLOR = CreateColor(0.251, 0.753, 0.251)
Globals.IN_PROGRESS_FONT_COLOR_CODE = "|cff40c040"
Globals.COLLECTION_LIST_WIDTH = 260

Globals.EmptyArmor = {
  [1] = 134110,
  --[2] = 134112, neck
  [3] = 134112,
  [4] = 142503, --shirt
  [5] = 168659,
  [6] = 143539,
  --[7] = 158329, pants
  [8] = 168664,
  [9] = 168665, --wrist
  [10] = 158329, --handr
  [15] = 134111, --cloak
  [19] = 142504, --tabgaard
}

Globals.DEFAULT = 1
Globals.APPEARANCE = 2
Globals.ALPHABETIC = 3
Globals.ITEM_SOURCE = 6
Globals.EXPANSION = 5
Globals.COLOR = 4

Globals.TAB_ITEMS = 1
Globals.TAB_SETS = 2
Globals.TAB_EXTRASETS = 3
Globals.TAB_SAVED_SETS = 4

Globals.colors = {
  ["red"] = {255, 0, 0},
  ["crimson"] = {255, 0, 63},
  ["maroon"] = {128, 0, 0},
  ["pink"] = {255, 192, 203},
  ["lavender"] = {230, 230, 250},
  ["purple"] = {128, 0, 128},
  ["indigo"] = {75, 0, 130},
  
  ["blue"] = {0, 0, 255},
  ["teal"] = {0, 128, 128},
  ["cyan"] = {0, 255, 255},
  
  ["green"] = {0, 255, 0},
  ["yellow"] = {255, 255, 0},
  ["gold"] = {255, 215, 0},
  ["orange"] = {255, 128, 0},
  ["brown"] = {128, 64, 0},
  
  ["black"] = {0, 0, 0},
  ["gray"] = {128, 128, 128},
  ["grey"] = {128, 128, 128},
  ["silver"] = {192, 192, 192},
  ["white"] = {255, 255, 255},
}