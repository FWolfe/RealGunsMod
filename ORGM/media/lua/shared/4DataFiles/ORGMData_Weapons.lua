--[[- This file contains all default firearm data.


@script ORGMData_Weapons.lua
@author Fenris_Wolf
@release 4.0
@copyright 2018 **File:** shared/4DataFiles/ORGMData_Weapons.lua

]]


--[[
    general resources;
http://www.imfdb.org/
https://en.wikipedia.org/wiki/List_of_firearms
https://www.genitron.com
https://www.impactguns.com/
https://modernfirearms.net/en
]]
local FirearmGroup =require(ENV_RFF_PATH .. 'firearm/group')
local FirearmType = require(ENV_RFF_PATH .. 'firearm/type')
local Flags = require(ENV_RFF_PATH .. 'firearm/flags')
local Logger = require(ENV_RFF_PATH .. 'interface/logger')
local Const = require(ENV_RFF_PATH .. 'constants')
--[[
    FirearmGroups are used to organize weapons. They are a branching tree structure
    (groups can contain groups), where branches and leaves can belong to multiple trees
    (groups may have multiple parents).

    The advantage of this new group structure is each group has 'random' and 'spawn' methods
    that recursively work through its members, and we can select mid level branches just as
    easy as top or bottom level.

]]
-- Top level groups
FirearmGroup:new("Group_Main")
FirearmGroup:new("Group_RareCollectables")


FirearmGroup:new("Group_Classifications",   { Groups = { Group_Main = 1, } })
FirearmGroup:new("Group_Pistols",           { Groups = { Group_Classifications = 20, } })
FirearmGroup:new("Group_Revolvers",         { Groups = { Group_Classifications = 20, } })
FirearmGroup:new("Group_Rifles",            { Groups = { Group_Classifications = 20, } })
FirearmGroup:new("Group_Shotguns",          { Groups = { Group_Classifications = 20, } })
FirearmGroup:new("Group_MachinePistols",    { Groups = { Group_Classifications = 5, } })
FirearmGroup:new("Group_SubMachineGuns",    { Groups = { Group_Classifications = 14, } })
FirearmGroup:new("Group_LightMachineGuns",  { Groups = { Group_Classifications = 1, } })

FirearmGroup:new("Group_Manufacturers",     { Groups = { Group_Main = 1, } })
FirearmGroup:new("Group_Colt",              { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Ruger",             { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_SmithWesson",       { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Taurus",            { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_AMT",               { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Beretta",           { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_DIO",           	{ Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_DornausDixon",      { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_FNHerstal",         { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_CZUB",              { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_IMI",               { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Glock",             { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_HecklerKoch",       { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Kahr",              { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_KalTec",            { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_PolAr",    	        { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_SigSauer",          { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Springfield",       { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Walther",           { Groups = { Group_Manufacturers = 1, } })
--FirearmGroup:new("Group_HSProdukt",               { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_AmericanArms",      { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Kriss",             { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_AutoOrdnance",      { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_MAC",               { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_MIC",           	{ Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_AccuracyIntl",      { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Norinco",           { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Izhmash",     	    { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Kalashnikov",       { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Armalite",          { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Browning",          { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_FMAP",              { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Henry",             { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_LongBranch",        { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_RockIsland",        { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Marlin",            { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Remington",         { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_RoyalSAF",          { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_KnightsAC",         { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Winchester",        { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Benelli",           { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Ithaca",            { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_SRMArms",           { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Mossberg",          { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_LuigiFranchi",      { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_SavageArms",        { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Armsel",            { Groups = { Group_Manufacturers = 1, } })
FirearmGroup:new("Group_Molot",             { Groups = { Group_Manufacturers = 1, } })

-- Mid level Groups - groups that are grandchildren of both Group_Classifications and Group_Manufacturers
-- revolvers
FirearmGroup:new("Group_Colt_Revolvers",        { Groups = { Group_Revolvers = 3, Group_Colt = 1 } })
FirearmGroup:new("Group_Ruger_Revolvers",       { Groups = { Group_Revolvers = 2, Group_Ruger = 1 } })
FirearmGroup:new("Group_SmithWesson_Revolvers", { Groups = { Group_Revolvers = 3, Group_SmithWesson = 1 } })
FirearmGroup:new("Group_Taurus_Revolvers",      { Groups = { Group_Revolvers = 1, Group_Taurus = 1 } })

-- pistols
FirearmGroup:new("Group_AMT_Pistols",           { Groups = { Group_Pistols = 1, Group_AMT = 1 } }) -- only 1 pistol, rare
FirearmGroup:new("Group_Beretta_Pistols",       { Groups = { Group_Pistols = 4, Group_Beretta = 1 } })
FirearmGroup:new("Group_Browning_Pistols",      { Groups = { Group_Pistols = 4, Group_Browning = 1 } })
FirearmGroup:new("Group_DornausDixon_Pistols",  { Groups = { Group_Pistols = 1, Group_DornausDixon = 1 } }) -- only 1 pistol, rare
FirearmGroup:new("Group_FNHerstal_Pistols",     { Groups = { Group_Pistols = 2, Group_FNHerstal = 1 } })
FirearmGroup:new("Group_CZUB_Pistols",          { Groups = { Group_Pistols = 3, Group_CZUB = 1 } })
FirearmGroup:new("Group_Colt_Pistols",          { Groups = { Group_Pistols = 8, Group_Colt = 1 } }) -- only many common pistols
FirearmGroup:new("Group_IMI_Pistols",           { Groups = { Group_Pistols = 2, Group_IMI = 1 } })
FirearmGroup:new("Group_Glock_Pistols",         { Groups = { Group_Pistols = 6, Group_Glock = 1 } }) -- only many common pistols
FirearmGroup:new("Group_HecklerKoch_Pistols",   { Groups = { Group_Pistols = 2, Group_HecklerKoch = 1 } })
FirearmGroup:new("Group_Kahr_Pistols",          { Groups = { Group_Pistols = 4, Group_Kahr = 1 } })
FirearmGroup:new("Group_KalTec_Pistols",        { Groups = { Group_Pistols = 4, Group_KalTec = 1 } })
FirearmGroup:new("Group_Ruger_Pistols",         { Groups = { Group_Pistols = 5, Group_Ruger = 1 } })
FirearmGroup:new("Group_SigSauer_Pistols",      { Groups = { Group_Pistols = 6, Group_SigSauer = 1 } })
FirearmGroup:new("Group_Springfield_Pistols",   { Groups = { Group_Pistols = 5, Group_Springfield = 1 } })
FirearmGroup:new("Group_Taurus_Pistols",        { Groups = { Group_Pistols = 4, Group_Taurus = 1 } })
FirearmGroup:new("Group_Walther_Pistols",       { Groups = { Group_Pistols = 5, Group_Walther = 1 } })
--FirearmGroup:new("Group_HSProdukt_Pistols",     { Groups = { Group_Pistols = 1, Group_HSProdukt = 1 } })

-- Machine Pistols
FirearmGroup:new("Group_Beretta_MachinePistols",{ Groups = { Group_MachinePistols = 1, Group_Beretta = 1 } })
FirearmGroup:new("Group_Glock_MachinePistols",  { Groups = { Group_MachinePistols = 1, Group_Glock = 1 } })
FirearmGroup:new("Group_CZUB_MachinePistols",   { Groups = { Group_MachinePistols = 1.5, Group_CZUB = 1 } })

-- SubMachineguns
FirearmGroup:new("Group_AmericanArms_SubMachineGuns",   { Groups = { Group_SubMachineGuns = 0.5, Group_AmericanArms = 1 } })
FirearmGroup:new("Group_FNHerstal_SubMachineGuns",      { Groups = { Group_SubMachineGuns = 1, Group_FNHerstal = 1 } })
FirearmGroup:new("Group_HecklerKoch_SubMachineGuns",    { Groups = { Group_SubMachineGuns = 5, Group_HecklerKoch = 1 } })
FirearmGroup:new("Group_Kriss_SubMachineGuns",          { Groups = { Group_SubMachineGuns = 3, Group_Kriss = 1 } })
FirearmGroup:new("Group_AutoOrdnance_SubMachineGuns",   { Groups = { Group_SubMachineGuns = 3, Group_AutoOrdnance = 1 } })
FirearmGroup:new("Group_MAC_SubMachineGuns",            { Groups = { Group_SubMachineGuns = 7, Group_MAC = 1 } })
FirearmGroup:new("Group_IMI_SubMachineGuns",            { Groups = { Group_SubMachineGuns = 5, Group_IMI = 1 } })

-- Rifles
FirearmGroup:new("Group_AccuracyIntl_Rifles",   { Groups = { Group_Rifles = 1, Group_AccuracyIntl   = 1 } })
FirearmGroup:new("Group_DIO_Rifles",    	    { Groups = { Group_Rifles = 1, Group_DIO	        = 1 } })
FirearmGroup:new("Group_MIC_Rifles",    	    { Groups = { Group_Rifles = 1, Group_MIC	        = 1 } })
FirearmGroup:new("Group_Norinco_Rifles",        { Groups = { Group_Rifles = 1, Group_Norinco        = 1 } })
FirearmGroup:new("Group_PolAr_Rifles", 	    	{ Groups = { Group_Rifles = 1, Group_PolAr	        = 1 } })
FirearmGroup:new("Group_Kalashnikov_Rifles",    { Groups = { Group_Rifles = 1, Group_Kalashnikov    = 1 } })

FirearmGroup:new("Group_Armalite_Rifles",       { Groups = { Group_Rifles = 1, Group_Armalite       = 1 } })
FirearmGroup:new("Group_Colt_Rifles",           { Groups = { Group_Rifles = 1, Group_Colt           = 1 } })
FirearmGroup:new("Group_Browning_Rifles",       { Groups = { Group_Rifles = 1, Group_Browning       = 1 } })
FirearmGroup:new("Group_FMAP_Rifles",           { Groups = { Group_Rifles = 1, Group_FMAP           = 1 } })
FirearmGroup:new("Group_FNHerstal_Rifles",      { Groups = { Group_Rifles = 1, Group_FNHerstal      = 1 } })
FirearmGroup:new("Group_Springfield_Rifles",    { Groups = { Group_Rifles = 1, Group_Springfield    = 1 } })
FirearmGroup:new("Group_Henry_Rifles",          { Groups = { Group_Rifles = 1, Group_Henry          = 1 } })
FirearmGroup:new("Group_HecklerKoch_Rifles",    { Groups = { Group_Rifles = 1, Group_HecklerKoch    = 1 } })
FirearmGroup:new("Group_Izhmash_Rifles",    	{ Groups = { Group_Rifles = 1, Group_Izhmash	    = 1 } })
FirearmGroup:new("Group_LongBranch_Rifles",     { Groups = { Group_Rifles = 1, Group_LongBranch     = 1 } })
FirearmGroup:new("Group_RockIsland_Rifles",     { Groups = { Group_Rifles = 1, Group_RockIsland     = 1 } })
FirearmGroup:new("Group_Marlin_Rifles",         { Groups = { Group_Rifles = 1, Group_Marlin         = 1 } })
FirearmGroup:new("Group_Ruger_Rifles",          { Groups = { Group_Rifles = 1, Group_Ruger          = 1 } })
-- TODO: mosin missing.
FirearmGroup:new("Group_Remington_Rifles",      { Groups = { Group_Rifles = 1, Group_Remington      = 1 } })
FirearmGroup:new("Group_RoyalSAF_Rifles",       { Groups = { Group_Rifles = 1, Group_RoyalSAF       = 1 } })
FirearmGroup:new("Group_SigSauer_Rifles",       { Groups = { Group_Rifles = 1, Group_SigSauer       = 1 } })
-- TODO: sks missing
FirearmGroup:new("Group_KnightsAC_Rifles",      { Groups = { Group_Rifles = 1, Group_KnightsAC      = 1 } })
-- TODO: svd missing
FirearmGroup:new("Group_Winchester_Rifles",     { Groups = { Group_Rifles = 1, Group_Winchester     = 1 } })

-- Light MachineGuns
FirearmGroup:new("Group_FNHerstal_LMGs",        { Groups = { Group_LightMachineGuns = 1, Group_FNHerstal = 1 } })

-- Shotguns
FirearmGroup:new("Group_Benelli_Shotguns",      { Groups = { Group_Shotguns = 1, Group_Benelli          = 1 } })
FirearmGroup:new("Group_Norinco_Shotguns",      { Groups = { Group_Shotguns = 1, Group_Norinco          = 1 } })
FirearmGroup:new("Group_Ithaca_Shotguns",       { Groups = { Group_Shotguns = 1, Group_Ithaca           = 1 } })
FirearmGroup:new("Group_SRMArms_Shotguns",      { Groups = { Group_Shotguns = 1, Group_SRMArms          = 1 } })
FirearmGroup:new("Group_Mossberg_Shotguns",     { Groups = { Group_Shotguns = 1, Group_Mossberg         = 1 } })
FirearmGroup:new("Group_Remington_Shotguns",    { Groups = { Group_Shotguns = 1, Group_Remington        = 1 } })
FirearmGroup:new("Group_Beretta_Shotguns",      { Groups = { Group_Shotguns = 1, Group_Beretta          = 1 } })
FirearmGroup:new("Group_LuigiFranchi_Shotguns", { Groups = { Group_Shotguns = 1, Group_LuigiFranchi     = 1 } })
FirearmGroup:new("Group_SavageArms_Shotguns",   { Groups = { Group_Shotguns = 1, Group_SavageArms       = 1 } })
FirearmGroup:new("Group_Armsel_Shotguns",       { Groups = { Group_Shotguns = 1, Group_Armsel           = 1 } })
FirearmGroup:new("Group_Molot_Shotguns",        { Groups = { Group_Shotguns = 1, Group_Molot            = 1 } })
FirearmGroup:new("Group_Winchester_Shotguns",   { Groups = { Group_Shotguns = 1, Group_Winchester       = 1 } })


-- Bottom level groups, Firearm Model Types
-- Revolvers
FirearmGroup:new("Group_Colt_Anaconda",             { Groups = { Group_Colt_Revolvers       = 2, } })
FirearmGroup:new("Group_Colt_Python",               { Groups = { Group_Colt_Revolvers       = 4, } })
FirearmGroup:new("Group_Colt_SAA",                  { Groups = { Group_Colt_Revolvers       = 1, } })
FirearmGroup:new("Group_Ruger_Blackhawk",           { Groups = { Group_Ruger_Revolvers      = 2, } })
FirearmGroup:new("Group_Ruger_GP100",               { Groups = { Group_Ruger_Revolvers      = 2, } })
FirearmGroup:new("Group_Ruger_Redhawk",             { Groups = { Group_Ruger_Revolvers      = 4, } })
FirearmGroup:new("Group_Ruger_SuperRedhawk",        { Groups = { Group_Ruger_Revolvers      = 1, } })
FirearmGroup:new("Group_SmithWesson_Model_10",      { Groups = { Group_SmithWesson_Revolvers = 1, } })
FirearmGroup:new("Group_SmithWesson_Model_19",      { Groups = { Group_SmithWesson_Revolvers = 1, } })
FirearmGroup:new("Group_SmithWesson_Model_22",      { Groups = { Group_SmithWesson_Revolvers = 1, } })
FirearmGroup:new("Group_SmithWesson_Model_29",      { Groups = { Group_SmithWesson_Revolvers = 1, } })
FirearmGroup:new("Group_SmithWesson_Model_36",      { Groups = { Group_SmithWesson_Revolvers = 1, } })
FirearmGroup:new("Group_SmithWesson_Model_610",     { Groups = { Group_SmithWesson_Revolvers = 1, } })
FirearmGroup:new("Group_Taurus_RagingBull",         { Groups = { Group_Taurus_Revolvers      = 1, } })

-- Pistols
FirearmGroup:new("Group_AMT_Automag",               { Groups = { Group_AMT_Pistols          = 1, } })
FirearmGroup:new("Group_Beretta_92",                { Groups = { Group_Beretta_Pistols      = 1, } })
FirearmGroup:new("Group_DornausDixon_BrenTen",      { Groups = { Group_DornausDixon_Pistols = 1, } })
FirearmGroup:new("Group_Colt_1911",                 { Groups = { Group_Colt_Pistols         = 1, } })
FirearmGroup:new("Group_Browning_HiPower",          { Groups = { Group_Browning_Pistols     = 1, } })
FirearmGroup:new("Group_CZUB_CZ75",                 { Groups = { Group_CZUB_Pistols         = 1, } })
FirearmGroup:new("Group_IMI_DesertEagle",           { Groups = { Group_IMI_Pistols          = 1, } })
FirearmGroup:new("Group_FNHerstal_FN57",            { Groups = { Group_FNHerstal_Pistols    = 1, } })
FirearmGroup:new("Group_Glock_17",                  { Groups = { Group_Glock_Pistols        = 1, } })
FirearmGroup:new("Group_Glock_20",                  { Groups = { Group_Glock_Pistols        = 1, } })
FirearmGroup:new("Group_Glock_21",                  { Groups = { Group_Glock_Pistols        = 1, } })
FirearmGroup:new("Group_Glock_22",                  { Groups = { Group_Glock_Pistols        = 1, } })
FirearmGroup:new("Group_HecklerKoch_Mark23",        { Groups = { Group_HecklerKoch_Pistols  = 1, } })
FirearmGroup:new("Group_Kahr_CT_Series",            { Groups = { Group_Kahr_Pistols         = 1, } })
FirearmGroup:new("Group_Kahr_P_Series",             { Groups = { Group_Kahr_Pistols         = 1, } })
FirearmGroup:new("Group_KalTec_P32",                { Groups = { Group_KalTec_Pistols       = 1, } })
FirearmGroup:new("Group_KalTec_PLR16",              { Groups = { Group_KalTec_Pistols       = 1, } })
FirearmGroup:new("Group_Ruger_MarkII",              { Groups = { Group_Ruger_Pistols        = 1, } })
FirearmGroup:new("Group_Ruger_SR_Series",           { Groups = { Group_Ruger_Pistols        = 1, } })
FirearmGroup:new("Group_SigSauer_P226",             { Groups = { Group_SigSauer_Pistols     = 1, } })
FirearmGroup:new("Group_Springfield_XD",            { Groups = { Group_Springfield_Pistols  = 1, } })
FirearmGroup:new("Group_Springfield_1911",          { Groups = { Group_Springfield_Pistols  = 1, } })
FirearmGroup:new("Group_Taurus_PT38S",              { Groups = { Group_Taurus_Pistols       = 1, } })
FirearmGroup:new("Group_Taurus_Millennium",         { Groups = { Group_Taurus_Pistols       = 1, } })
FirearmGroup:new("Group_Walther_P22",               { Groups = { Group_Walther_Pistols      = 1, } })
FirearmGroup:new("Group_Walther_PP_Series",         { Groups = { Group_Walther_Pistols      = 1, } })

-- Machine Pistols
FirearmGroup:new("Group_Beretta_93R",               { Groups = { Group_Beretta_MachinePistols           = 1, } })
FirearmGroup:new("Group_Glock_18",                  { Groups = { Group_Glock_MachinePistols             = 1, } })
FirearmGroup:new("Group_CZUB_Skorpion",             { Groups = { Group_CZUB_MachinePistols              = 1, } })

-- SubMachine Guns
FirearmGroup:new("Group_AmericanArms_AM180",        { Groups = { Group_AmericanArms_SubMachineGuns      = 1, } })
FirearmGroup:new("Group_FNHerstal_P90",             { Groups = { Group_FNHerstal_SubMachineGuns         = 1, } })
FirearmGroup:new("Group_HecklerKoch_MP5",           { Groups = { Group_HecklerKoch_SubMachineGuns       = 1, } })
FirearmGroup:new("Group_HecklerKoch_UMP",           { Groups = { Group_HecklerKoch_SubMachineGuns       = 1, } })
FirearmGroup:new("Group_Kriss_Vector",              { Groups = { Group_Kriss_SubMachineGuns             = 1, } })
FirearmGroup:new("Group_AutoOrdnance_Thompson",     { Groups = { Group_AutoOrdnance_SubMachineGuns      = 1, } })
FirearmGroup:new("Group_MAC_Mac10",                 { Groups = { Group_MAC_SubMachineGuns               = 1, } })
FirearmGroup:new("Group_MAC_Mac11",                 { Groups = { Group_MAC_SubMachineGuns               = 1, } })
FirearmGroup:new("Group_IMI_Uzi",                   { Groups = { Group_MAC_SubMachineGuns               = 1, } })

-- Rifles
FirearmGroup:new("Group_AccuracyIntl_ArcticWarfare",    { Groups = { Group_AccuracyIntl_Rifles 			= 1, } })
FirearmGroup:new("Group_Armalite_AR10",                 { Groups = { Group_Armalite_Rifles 				= 1, } })
FirearmGroup:new("Group_Colt_CAR15",                    { Groups = { Group_Colt_Rifles 					= 1, } })
FirearmGroup:new("Group_Colt_AR15",                     { Groups = { Group_Colt_Rifles 					= 3, } })
FirearmGroup:new("Group_DIO_KL762",   	                { Groups = { Group_DIO_Rifles 					= 1, } })
FirearmGroup:new("Group_FNHerstal_FAL",	                { Groups = { Group_FNHerstal_Rifles 			= 1, } })
FirearmGroup:new("Group_Izhmash_AK_47",   	        	{ Groups = { Group_Izhmash_Rifles 				= 1, } })
FirearmGroup:new("Group_MAZ",   		                { Groups = { Group_MIC_Rifles 					= 1, } })
FirearmGroup:new("Group_PolAr_ASh78",                	{ Groups = { Group_PolAr_Rifles 				= 1, } })
FirearmGroup:new("Group_Norinco_Type56",                { Groups = { Group_Norinco_Rifles 				= 1, } })
FirearmGroup:new("Group_Browning_BLR",                  { Groups = { Group_Browning_Rifles				= 1, } })

--************************************************************************--
-- Revolvers
--************************************************************************--

FirearmType:newCollection("Colt_Anaconda", {
        -- sources:
        -- http://www.coltfever.com/Anaconda.html
        -- https://en.wikipedia.org/wiki/Colt_Anaconda
        -- https://www.coltforum.com/forums/colt-revolvers/73849-anaconda-bsts-3-print.html
        -- https://www.coltforum.com/forums/colt-revolvers/46474-fyi-colt-model-numbers.html
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_44Magnum",
        --speedLoader = 'SpeedLoader446',
        weight = 1.5,
        barrel_length = 6,
        model = "coltanaconda",
        image = "Colt_Anaconda",
        max_capacity = 6,

        classification = "IGUI_Firearm_Revolver",
        year = 1990,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Colt",
        description = "IGUI_Firearm_Desc_ColtAnac",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
    },{
        MM3040 = { --  Anaconda Revolver 44 Magnum 4" SS
            Groups = { Group_Colt_Anaconda = 10, },
            barrel_length = 4,       weight = 1.3,
        },
        MM3040DT = {  --  Anaconda Revolver 44 Magnum 4" SS (Drilled & Tapped)
            Groups = { Group_Colt_Anaconda = 10, },
            barrel_length = 4,       weight = 1.3,
        },
        MM3040MP = {  --  Anaconda Revolver 44 Magnum 4" SS Mag-Na-Ported
            Groups = { Group_Colt_Anaconda = 10, },
            barrel_length = 4,       weight = 1.3,
            extra_features = Flags.PORTED,
        },
        MM3040KD = { -- Kodiak Revolver 44 Magnum 4" SS Mag-Na-Ported
            Groups = {Group_Colt_Anaconda = 0.1, Group_RareCollectables = 1000,}, -- 1000 manufactured
            barrel_length = 4,       weight = 1.3,
            year = 1993,
            extra_features = Flags.PORTED,
        },
        MM3050 = { -- Anaconda Revolver 44 Magnum 5" ONLY 150 MANUFACTURERED
            Groups = {Group_Colt_Anaconda = 0.015, Group_RareCollectables = 150,}, -- 150 manufactured
            barrel_length = 5,       weight = 1.4,
        },
        MM3060 = { -- Anaconda Revolver 44 Magnum 6" SS
            Groups = { Group_Colt_Anaconda = 15, },
        },
        MM3060DT = { -- Anaconda Revolver 44 Magnum 6" SS (Drilled & Tapped)
            Groups = { Group_Colt_Anaconda = 15, },
        },
        MM3060MP = { -- Anaconda Revolver 44 Magnum 6" SS Mag-Na-Ported
            Groups = { Group_Colt_Anaconda = 15, },
            extra_features = Flags.PORTED,
        },
        MM3060KD = { -- Kodiak Revolver 44 Magnum 6" SS Mag-Na-Ported
            Groups = {Group_Colt_Anaconda = 0.1, Group_RareCollectables = 1000,}, -- 1000 manufactured
            year = 1993,
            extra_features = Flags.PORTED,
        },
        MM3061FE = { -- Anaconda First Edition Revolver 44 magnum 6" Bright SS
            Groups = {Group_Colt_Anaconda = 0.1, Group_RareCollectables = 1000,}, -- 1000 manufactured
            year = 1990,
        },
        MM3080 = { -- Anaconda Revolver 44 Magnum 8" SS
            Groups = { Group_Colt_Anaconda = 8, },
            barrel_length = 8,       weight = 1.7,
        },
        MM3080L = { -- Colt Limited Edition Anaconda Legacy Model MM3080
            -- 24K Gold embellishments and Black Pearl Titanium finish.
            -- This model number is probably wrong, but i need some sort of model prefix.
            -- The model number on the factory box simply reads MM3080
            Groups = {Group_Colt_Anaconda = 0.1, Group_RareCollectables = 1000,}, -- 1000 manufactured
            year = 1993,
            barrel_length = 8,       weight = 1.7,
        },
        MM3080DT = { -- Anaconda Revolver 44 Magnum 8" SS (Drilled & Tapped)
            Groups = { Group_Colt_Anaconda = 8, },
            barrel_length = 8,       weight = 1.7,
        },
        MM3080MP = { -- Anaconda Revolver 44 Magnum 8" SS Mag-Na-Ported
            Groups = { Group_Colt_Anaconda = 8, },
            barrel_length = 8,       weight = 1.7,
            extra_features = Flags.PORTED,
        },
        MM3080HT = { -- Anaconda Revolver 44 Magnum 8" SS (Hunter)
            Groups = { Group_Colt_Anaconda = 4, },
            year = 1991,
            barrel_length = 8,       weight = 1.7,
        },
        MM3080PDT = { -- Anaconda Revolver 44 Magnum 8" Ported SS ProPorting
            Groups = { Group_Colt_Anaconda = 3, },
            year = 1991,
            barrel_length = 8,       weight = 1.7,
            extra_features = Flags.PORTED,
        },
        MM3080RT = { -- Anaconda Realtree Revolver 44 Magnum 8" Camo
            Groups = { Group_Colt_Anaconda = 4, },
            year = 1996,
            extra_features = Flags.NOSIGHTS,
            barrel_length = 8,       weight = 1.7,
        },
        MM4540 = { -- Anaconda Revolver 45 Colt 4" SS VERY RARE
            Groups = { Group_Colt_Anaconda = 0.01, Group_RareCollectables = 100,},
            year = 1993,
            barrel_length = 4,       weight = 1.3,
            ammo_group = "AmmoGroup_45Colt",
            speedLoader = nil,
        },
        MM4560 = { -- Anaconda Revolver 45 Colt 6" SS
            Groups = { Group_Colt_Anaconda = 10, },
            year = 1993,
            ammo_group = "AmmoGroup_45Colt",
            speedLoader = nil,
        },
        MM4580 = { -- Anaconda Revolver 45 Colt 8" SS
            Groups = { Group_Colt_Anaconda = 6, },
            year = 1993,
            ammo_group = "AmmoGroup_45Colt",
            barrel_length = 8,       weight = 1.7,
            speedLoader = nil,
        },
    }
)
FirearmType:newCollection("Colt_Python", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Colt_Python
        -- http://www.coltfever.com/Python.html
        -- https://www.handgunsmag.com/editorial/colt_python_complete_history/138916
        -- https://www.coltforum.com/forums/python/71904-3-python-question-5.html
        -- https://www.coltforum.com/forums/colt-revolvers/46474-fyi-colt-model-numbers.html
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_357Magnum",
        -- speedLoader = 'SpeedLoader3576',
        weight = 1.1,
        barrel_length = 6,
        model = "coltpython",
        image = "Colt_Python",
        max_capacity = 6,
        --38 ounces (1.1 kg) to 48 ounces (1.4 kg)

        classification = "IGUI_Firearm_Revolver",
        year = 1955,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Colt",
        description = "IGUI_Firearm_Desc_ColtPyth",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
    },{

        I1986 = { -- Double Diamond Python Model I1986
            Groups = { Group_Colt_Python = 0.1, Group_RareCollectables = 1000 },
            -- 6" Bright SS
            --A stainless steel Ultimate polish six inch Python and an Officer's Model ACP .45, smooth rosewood grips, presentation cased.
            year = 1986,
            barrel_length = 6,
        },
        -- I3020 Python Revolver 357 Magnum 2-1/2" SS
        I3020 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 2.5,
        },
        -- I3021 Python Revolver 357 Magnum 2-1/2" Bright SS
        I3021 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 2.5,
        },

        I3030 = { -- Colt Combat Python Model I3030
            Groups = { Group_Colt_Python = 0.03, Group_RareCollectables = 300 },
            -- 3" SS
            --2003 a handful? of 3" Stainless guns were produced by Colt for Carol Wilkerson.
            -- given colt reporting a total of 1100 3" inchers, 500 of which are "combat pythons"
            -- (I3630 and I3631) and 300 for the I3630CP, maybe 300 produced for this one as well?
            barrel_length = 3,
            year = 2003,
        },
        -- I3040 Python Revolver 357 Magnum 4" SS
        I3040 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 4,
        },

        I3040CS = { -- Colt Python Elite Model I3040CS
            -- 4" SS
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 4,
            year = 1997,
        },
        -- I3041 Python Revolver 357 Magnum 4" Bright SS
        I3041 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 4,
        },
        -- I3060 Python Revolver 357 Magnum 6" SS
        I3060 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 6,
        },
        I3060CS = { -- Colt Python Elite Model I3060CS
            Groups = { Group_Colt_Python = 1 },
            -- 6" SS
            barrel_length = 6,
            year = 1997,
        },
        I3060ESS = { -- Colt Python Silver Snake Model I3060ESS
            Groups = { Group_Colt_Python = 1, Group_RareCollectables = 250 },
            barrel_length = 6,
            --   6" SS -- 250 produced
            year = 1983,
        },
        -- I3061 Python Revolver 357 Magnum 6" Bright SS
        I3061 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 6,
        },
        -- I3080 Python Revolver 357 Magnum 8" SS (1980?)
        I3080 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 8,
        },
        -- I3081 Python Revolver 357 Magnum 8" Bright SS (1980?)
        I3081 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 8,
        },
        -- I3620 Python Revolver 357 Magnum 2-1/2" Blue
        I3620 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 2.5,
        },
        I3620SE = { -- Colt Python Snake Eyes Model I3620SE
            -- 2-1/2" Blue
            Groups = { Group_Colt_Python = 1, Group_RareCollectables = 500 },
            barrel_length = 2.5,
            year = 1989, -- 500 produced
        },
        I3621SE = { -- Colt Python Snake Eyes Model I3621SE
            Groups = { Group_Colt_Python = 1, Group_RareCollectables = 500 },
            barrel_length = 2.5,
            -- 2-1/2" Bright SS
            year = 1989, -- 500 produced
        },
        I3630 = { -- Colt Combat Python Model I3630
            Groups = { Group_Colt_Python = 1, Group_RareCollectables = 700 },
            barrel_length = 3,
            -- 3" Blue
            -- 200 produced by Pacific International. 8" Target model cut and rechambered
            -- 1983 colt used this model number themselves, 500 produced by colt (K serial number)
            year = 1980,
        },
        I3630CP = { -- Colt Combat Python Model I3630CP
            Groups = { Group_Colt_Python = 1, Group_RareCollectables = 300 },
            barrel_length = 3,
            -- 3" Blue
            -- 1987-88 Colt produces 300 3" Combat Pythons for Lew Horton
            year = 1987,
        },
        I3631 = { -- Colt Combat Python Model I3631
            Groups = { Group_Colt_Python = 1, Group_RareCollectables = 73 },
            barrel_length = 3,
            -- 3" Nickel
            -- 50 produced by Pacific International. 8" Target model cut and rechambered
            -- 1983 colt used this model number themselves, 23 produced by colt (K serial number)
            year = 1980,
        },
        -- I3640 Python Revolver 357 Magnum 4" Blue
        I3640 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 4,
        },
        I3640CS = { -- Colt Python Elite Model I3640CS
            Groups = { Group_Colt_Python = 1 },
            -- 4" Blued
            barrel_length = 4,
            year = 1997,
        },

        -- I3660 Python Revolver 357 Magnum 6" Blue (1979?)
        I3660 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 6,
        },
        I3660CS = { -- Colt Python Elite Model I3660CS
            Groups = { Group_Colt_Python = 1 },
            -- 6" Blue
            barrel_length = 6,
            year = 1997,
        },
        I3660H = { -- Colt Custom Python Model I3660H
            Groups = { Group_Colt_Python = 1 },
            -- 6" Blue - Custom Tuned with Elliason Sights
            barrel_length = 6,
            year = 1980,
        },
        -- I3661 Python Revolver 357 Magnum 6" Nickel
        I3661 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 6,
        },

        I3680 = { -- Colt Python Hunter Model I3680
            Groups = { Group_Colt_Python = 1 },
            --  8" Blue (note: this might not be the  hunter, info is sketchy)
            year = 1981,
            barrel_length = 8,
        },
        I3681 = { -- Colt Python Silhouette Model I3681
            Groups = { Group_Colt_Python = 1 },
            --  8" Blue (note: pure assumption here, i'm guesing the model number)
            year = 1983,
            barrel_length = 8,
        },
        I3682 = { -- Colt Python Target Model I3682
            Groups = { Group_Colt_Python = 1, Group_RareCollectables = 3489 },
            -- 38 Special 8" Blue -- 3,489 produced
            year = 1980,
            barrel_length = 8,
        },
        I3683 = { -- Colt Python Target Model I3683
            Groups = { Group_Colt_Python = 1, Group_RareCollectables = 251 },
            -- 38 Special 8" Nickel -- 251 produced
            year = 1980,
            barrel_length = 8,
        },
        -- I3840 Python Revolver 357 Magnum 4" Electroless Nickel
        I3840 = {
            Groups = { Group_Colt_Python = 1 },
            barrel_length = 4,
        },
    }
)
FirearmType:newCollection("Colt_SAA", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Colt_SAA
        -- http://www.coltfever.com/Colt_Single_Action_Army.html
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_45Colt",
        -- speedLoader = 'SpeedLoader3576',
        weight = 1.1,
        barrel_length = 5.5,
        --barrelLengthOpt = {5.5, 7.5 }
        model = "coltsaa",
        image = "Colt_SAA",
        max_capacity = 6,

        classification = "IGUI_Firearm_Revolver",
        year = 1873,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Colt",
        description = "IGUI_Firearm_Desc_ColtSAA",

        features = Flags.SINGLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
    },{
        -- Colt SAA 3rd Gen .44 Special Model P-1770.... 997 Model P-1770’s produced in 1981 with a total production of 3917

        -- P1540 Model P (SAA) Revolver 32-20 4-3/4" Colored Case / Blue
        -- P1541 Model P (SAA) Revolver 32-20 4-3/4" Nickel
        -- P1550 Model P (SAA) Revolver 32-20 5-1/2" Colored Case / Blue
        -- P1551 Model P (SAA) Revolver 32-20 5-1/2" Nickel
        -- P1570 Model P (SAA) Revolver 32-20 7-1/2" Colored Case / Blue
        -- P1571 Model P (SAA) Revolver 32-20 7-1/2" Nickel

        -- P1640 Model P (SAA) Revolver .357 4-3/4" Colored Case / Blue

        P1840 = { -- Colt PeackMaker SAA Model P1840 --  45 Colt 4-3/4" Blue / Color Case
            Groups = { Group_Colt_SAA = 1, },
            barrel_length = 4.75,
        },
        P1841 = { -- Colt PeackMaker SAA Model P1841 --  45 Colt 4-3/4" Nickel
            Groups = { Group_Colt_SAA = 1, },
            barrel_length = 4.75,
        },
        P1850 = { -- Colt PeackMaker SAA Model P1850 --  45 Colt 5-1/2" Blue / Color Case
            Groups = { Group_Colt_SAA = 1, },
        },
        P1856 = { -- Colt PeackMaker SAA Model P1856 --  45 Colt 5-1/2" Nickel
            Groups = { Group_Colt_SAA = 1, },
        },
        P1870 = { -- Colt PeackMaker SAA Model P1870 --  45 Colt 7-1/2" Blue / Color Case
            Groups = { Group_Colt_SAA = 1, },
            barrel_length = 7.5,
        },

        -- P1841 Model P (SAA) Revolver
        -- P1850 Model P (SAA) Revolver
        -- P1856 Model P (SAA) Revolver
        -- P1870 Model P (SAA) Revolver
        -- P1940 Model P (SAA) Revolver 44-40 4-3/4" Blue / Color Case
        -- P1941 Model P (SAA) Revolver 44-40 4-3/4" Nickel
        -- P1950 Model P (SAA) Revolver 44-40 5-1/2" Blue / Color Case
        -- P1956 Model P (SAA) Revolver 44-40 5-1/2" Nickel
})
FirearmType:newCollection("Ruger_Blackhawk", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Ruger_Blackhawk
        -- https://www.ruger.com/products/newModelBlackhawk/overview.html
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_357Magnum",
        -- speedLoader = 'SpeedLoader3576',
        weight = 1.0,
        barrel_length = 4.62,
        model = "rugblackhawk",
        image = "Ruger_Blackhawk",
        max_capacity = 6,

        classification = "IGUI_Firearm_Revolver",
        year = 1955,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Ruger",
        description = "IGUI_Firearm_Desc_RugBH",

        features = Flags.SINGLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
    },{
        -- New blackhawk models are 1973+
        -- Ruger Blackhawk Model M0306 .357 mag 4.62" blue
        M0306 = {
            Groups = { Group_Ruger_Blackhawk = 1, },
        },
        -- Ruger Blackhawk Model M0309 .357 mag 4.62" SS
        M0306 = {
            Groups = { Group_Ruger_Blackhawk = 1, },
        },
        -- Ruger Blackhawk Model M0316 .357 mag 6.5" blue
        M0306 = {
            Groups = { Group_Ruger_Blackhawk = 1, },
            barrel_length = 6.5,
        },
        -- Ruger Blackhawk Model M0319 .357 mag 6.5" SS
        M0306 = {
            Groups = { Group_Ruger_Blackhawk = 1, },
            barrel_length = 6.5,
        },
        -- Ruger Blackhawk Model M0405 .41 mag 4.62" blue
        M0306 = {
            Groups = { Group_Ruger_Blackhawk = 1, },
            ammo_group = "AmmoGroup_41Magnum",
        },
        -- Ruger Blackhawk Model M0406 .41 mag 6.5" blue
        M0306 = {
            Groups = { Group_Ruger_Blackhawk = 1, },
            ammo_group = "AmmoGroup_41Magnum", barrel_length = 6.5,
        },
        -- Ruger Blackhawk Model M0445 .45 colt 4.62" blue
        M0306 = {
            Groups = { Group_Ruger_Blackhawk = 1, },
            ammo_group = "AmmoGroup_45Colt",
        },
        -- Ruger Blackhawk Model M0455 .45 colt 7.5" blue
        M0306 = {
            Groups = { Group_Ruger_Blackhawk = 1, },
            ammo_group = "AmmoGroup_45Colt", barrel_length = 7.5,
        },
        -- Ruger Blackhawk Model M0460 .45 colt 7.5" SS WILLIAMS
        M0306 = {
            Groups = { Group_Ruger_Blackhawk = 1, },
            ammo_group = "AmmoGroup_45Colt", barrel_length = 7.5,
        },
        -- Ruger Blackhawk Model M0465 .45 colt 5.5" blue
        M0306 = {
            Groups = { Group_Ruger_Blackhawk = 1, },
            ammo_group = "AmmoGroup_45Colt", barrel_length = 5.5,
        },
        -- Ruger Blackhawk Model M0505 .30 carbine 7.5" blue
        M0505 = {
            Groups = { Group_Ruger_Blackhawk = 1, },
            ammo_group = "AmmoGroup_30Carbine", barrel_length = 7.5,
        },
})
FirearmType:newCollection("Ruger_GP100", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Ruger_GP100
        -- https://www.ruger.com/products/gp100/overview.html
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_357Magnum",
        -- speedLoader = 'SpeedLoader3576',
        weight = 1.1,
        barrel_length = 4.2,
        model = "ruggp100",
        image = "Ruger_GP100",
        max_capacity = 6,

        classification = "IGUI_Firearm_Revolver",
        year = 1985,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Ruger",
        description = "IGUI_Firearm_Desc_RugGP100",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
    },{
        -- Ruger GP100 Model 1702 .357 4.2" blue rubber
        M1702 = {
            Groups = { Group_Ruger_GP100 = 1, },
        },
        -- Ruger GP100 Model 1704 .357 6" blue rubber
        M1704 = {
            Groups = { Group_Ruger_GP100 = 1, },
            barrel_length = 6,
        },
        -- Ruger GP100 Model 1705 .357 4.2" SS rubber
        M1705 = {
            Groups = { Group_Ruger_GP100 = 1, },
        },
        -- Ruger GP100 Model 1707 .357 6" SS rubber
        M1707 = {
            Groups = { Group_Ruger_GP100 = 1, },
            barrel_length = 6,
        },
        -- Ruger GP100 Model 1715 .357 3" SS rubber
        M1715 = {
            Groups = { Group_Ruger_GP100 = 1, },
            barrel_length = 3,
        },
        -- Ruger GP100 Model 1740 .357 5" SS rubber DAVIDSONS
        -- Ruger GP100 Model 1748 .327 Fed Mag 4.2" SS rubber 7 rounds
        -- Ruger GP100 Model 1752 .357 3" SS rubber TALO
        -- Ruger GP100 Model 1753 .357 3" blue rubber TALO
        -- Ruger GP100 Model 1754 .357 4.2" SS Matchgrade
        -- Ruger GP100 Model 1755 .357 4.2" SS Matchgrade
        -- Ruger GP100 Model 1757 .22LR Fed Mag 5.5" SS rubber 10 rounds
        -- Ruger GP100 Model 1759 .357 6" SS TALO
        -- Ruger GP100 Model 1761 .44 special 3" SS rubber
        -- Ruger GP100 Model 1762 .357 4.2" SS rubber LISPEY'S
        -- Ruger GP100 Model 1763 .357 2.5" SS rubber TALO
        -- Ruger GP100 Model 1764 .327 Fed Mag 6" SS rubber 7 rounds

        -- Ruger GP100 Model 1767 .44 special 3" SS TALO
        -- Ruger GP100 Model 1768 .357 5" blue LISPEY'S
        -- Ruger GP100 Model 1769 .327 fed mag 5" blue LISPEY'S
        -- Ruger GP100 Model 1770 .44 special 5" blue LISPEY'S
        -- Ruger GP100 Model 1771 .357 4.2" SS rubber 7 rounds
        -- Ruger GP100 Model 1772 .357 4.2" blue rubber 7 rounds TALO
        -- Ruger GP100 Model 1773 .357 4.2" SS rubber 7 rounds
        -- Ruger GP100 Model 1774 .357 2.5" SS rubber 7 rounds
        -- Ruger GP100 Model 1775 10mm 4.2" SS Matchgrade
        -- Ruger GP100 Model 1776 .357 4.2" blue rubber 7 rounds TALO
        -- Ruger GP100 Model 1777 .357 4.2" SS 7 rounds TALO
        -- Ruger GP100 Model 1780 10mm 3" SS TALO
})
FirearmType:newCollection("Ruger_Redhawk", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Ruger_Redhawk
        -- https://ruger.com/products/redhawk/models.html
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_44Magnum",  -- speedLoader = 'SpeedLoader3576',
        weight = 1.4,
        barrel_length = 5.5,
        model = "rugredhawk",
        image = "Ruger_Redhawk",
        max_capacity = 6,

        classification = "IGUI_Firearm_Revolver",
        year = 1979,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Ruger",
        description = "IGUI_Firearm_Desc_RugRH",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
    },{
        -- Ruger Redhawk model 5041 .44 Mag SS 7.5"
        M5041 = {
            Groups = { Group_Ruger_Redhawk = 1, },
            barrel_length = 7.5,
        },
        -- Ruger Redhawk model 5043 .44 Mag SS 5.5"
        M5043 = {
            Groups = { Group_Ruger_Redhawk = 1, },
            barrel_length = 5.5,
        },
        -- Ruger Redhawk model 5044 .44 Mag SS 4.2" Rubber grips
        M5044 = {
            Groups = { Group_Ruger_Redhawk = 1, },
            barrel_length = 4.2,
        },
        -- Ruger Redhawk model 5050 .45ACP SS 4.2"
        M5050 = {
            Groups = { Group_Ruger_Redhawk = 1, },
            barrel_length = 4.2,
            ammo_group = "AmmoGroup_45ACP",
        },
        -- Ruger Redhawk model 5051 .357 Mag SS 2.75" 8 rounds
        M5051 = {
            Groups = { Group_Ruger_Redhawk = 1, },
            barrel_length = 2.75,
            ammo_group = "AmmoGroup_357Magnum", max_capacity = 8,
        },
        -- Ruger Redhawk model 5059 .357 Mag SS 4.2" 8 rounds
        M5059 = {
            Groups = { Group_Ruger_Redhawk = 1, },
            barrel_length = 4.2,
            ammo_group = "AmmoGroup_357Magnum", max_capacity = 8,
        },
        -- Ruger Redhawk model 5060 .357 Mag SS 5.5" 8 rounds
        M5060 = {
            Groups = { Group_Ruger_Redhawk = 1, },
            barrel_length = 5.5,
            ammo_group = "AmmoGroup_357Magnum", max_capacity = 8,
        },
        -- Ruger Redhawk model 5014 .44 Mag SS 5.5" LEW HORTON
        M5014 = {
            Groups = { Group_Ruger_Redhawk = 1, },
            barrel_length = 5.5,
        },
        -- Ruger Redhawk model 5028 .44 Mag SS 2.75" TALO
        M5028 = {
            Groups = { Group_Ruger_Redhawk = 1, },
            barrel_length = 2.5,
        },
        -- Ruger Redhawk model 5030 .44 Mag SS 5.5" TALO
        M5030 = {
            Groups = { Group_Ruger_Redhawk = 1, },
            barrel_length = 5.5,
        },
        -- Ruger Redhawk model 5031 .41 Mag SS 4.2" DAVIDSONS
        M5031 = {
            Groups = { Group_Ruger_Redhawk = 1, },
            barrel_length = 7.5,
            ammo_group = "AmmoGroup_41Magnum",
        },
        -- Ruger Redhawk model 5058 .44 Mag SS 4.2" TALO
        M5058 = {
            Groups = { Group_Ruger_Redhawk = 1, },
            barrel_length = 7.5,
        },
})
FirearmType:newCollection("Ruger_SuperRedhawk", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Ruger_Super_Redhawk
        -- https://www.ruger.com/products/superRedhawkStandard/models.html
        -- https://www.taloinc.com/ruger-firearms
        --
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_454Casull",
        -- speedLoader = 'SpeedLoader3576',
        weight = 1.2,
        barrel_length = 7.5,
        model = "rugalaskan",
        image = "Ruger_SuperRedhawk",
        max_capacity = 6,

        classification = "IGUI_Firearm_Revolver",
        year = 1987,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Ruger",
        description = "IGUI_Firearm_Desc_RugAlas",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
    },{

        M5501 = { -- Ruger Super Redhawk Model 5501 -- .44 mag. 7.5" SS
            Groups = { Group_Ruger_SuperRedhawk = 1, },
            ammo_group = "AmmoGroup_44Magnum",
        },

        M5502 = { -- Ruger Super Redhawk Model 5502 .44 mag. 9.5" SS
        Groups = { Group_Ruger_SuperRedhawk = 1, },
            ammo_group = "AmmoGroup_44Magnum",
            barrel_length = 9.5,
        },
        -- Ruger Super Redhawk Model 5505 .454 7.5" SS
        M5505 = {
            Groups = { Group_Ruger_SuperRedhawk = 1, },
            ammo_group = "AmmoGroup_454Casull",
        },
        -- Ruger Super Redhawk Model 5507 .480 ruger 7.5" SS
        M5507 = {
            Groups = { Group_Ruger_SuperRedhawk = 1, },
            ammo_group = "AmmoGroup_480Ruger",
        },
        -- Ruger Super Redhawk Model 5525 10mm auto 6.5" SS
        M5525 = {
            Groups = { Group_Ruger_SuperRedhawk = 1, },
            ammo_group = "AmmoGroup_10x25mm",
            barrel_length = 6.5,
        },
        -- Ruger Super Redhawk Model 5517 .454 5" SS TALO
        M5517 = {
            Groups = { Group_Ruger_SuperRedhawk = 1, },
            ammo_group = "AmmoGroup_454Casull",
            barrel_length = 5,
        },
        -- Ruger Super Redhawk Hunter Model 5520 .44 Mag 7.5" SS TALO
        M5520 = {
            Groups = { Group_Ruger_SuperRedhawk = 1, },
            ammo_group = "AmmoGroup_44Magnum",
        },
        -- Ruger Super Redhawk Model 5521 .41 Mag 7.5" SS DAVIDSONS
        M5521 = {
            Groups = { Group_Ruger_SuperRedhawk = 1, },
            ammo_group = "AmmoGroup_41Magnum",
        },
        -- Ruger Super Redhawk Model 5522 10mm auto 7.5" SS TALO
        M5522 = {
            Groups = { Group_Ruger_SuperRedhawk = 1, },
            ammo_group = "AmmoGroup_10x25mm",
        },

        -- Alaskans are 2005
        -- 5301 Alaskan .454 2.5" SS
        M5301 = {
            Groups = { Group_Ruger_SuperRedhawk = 1, },
            ammo_group = "AmmoGroup_454Casull",
            barrel_length = 2.5,
        },
        -- 5302 Alaskan .480 Ruger 2.5" SS
        M5302 = {
            Groups = { Group_Ruger_SuperRedhawk = 1, },
            ammo_group = "AmmoGroup_480Ruger",
            barrel_length = 2.5,
        },
        -- 5303 Alaskan .44 Mag 2.5" SS
        M5303 = {
            Groups = { Group_Ruger_SuperRedhawk = 1, },
            ammo_group = "AmmoGroup_44Magnum",
            barrel_length = 2.5,
        },
})
FirearmType:newCollection("Ruger_SecuritySix", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Ruger_Security_Six
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_357Magnum",
        -- speedLoader = 'SpeedLoader3576',
        weight = 0.9,
        barrel_length = 4,
        --barrelLengthOpt = {2.74, 3, 4, 6}
        model = "rugsecsix",
        image = "Ruger_SecuritySix",
        max_capacity = 6,

        classification = "IGUI_Firearm_Revolver",
        year = 1972,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Ruger",
        description = "IGUI_Firearm_Desc_RugSec6",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
        Groups = { Group_Ruger_SecuritySix = 1, }, -- TODO: Move to variants
    },{
})


-- S&W revolvers are a pain in the ass. Variants were not given specific product
-- numbers until after 1984, and codes are sometimes reused. Prior to 1957, models used a different name.
-- ie: pre-1957 its the '.38 M&P Military and Police', post-1957 its the 'Model 10'

FirearmType:newCollection("SmithWesson_Model_10", {
        -- sources:
        -- https://en.wikipedia.org/wiki/S%26W_Model_10
        -- https://en.wikipedia.org/wiki/Smith_%26_Wesson_Model_1905
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_38Special",
        -- speedLoader = 'SpeedLoader3576',
        weight = 0.9,
        barrel_length = 4,
        model = "swm10",
        image = "SmithWesson_Model_10",
        max_capacity = 6,

        classification = "IGUI_Firearm_Revolver",
        year = 1899,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_SW",
        description = "IGUI_Firearm_Desc_SWM10",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
    },{
        M101A = {
            Groups = { Group_SmithWesson_Model_10 = 1, },
            barrel_length = 4,
            year = 1959,
        },
        OHPC = {
            Groups = { Group_SmithWesson_Model_10 = 1, Group_RareCollectables = 2025, },
            barrel_length = 4,
            year = 1973,
        },
        NYSP = {
            Groups = { Group_SmithWesson_Model_10 = 1, Group_RareCollectables = 1200, },
            ammo_group = "AmmoGroup_357Magnum",
            barrel_length = 4,
            year = 1972,
        },
        MPDC = {
            Groups = { Group_SmithWesson_Model_10 = 1, Group_RareCollectables = 2000, },
            ammo_group = "AmmoGroup_357Magnum",
            barrel_length = 4,
            year = 1986,
        },
        M100104 = {
            Groups = { Group_SmithWesson_Model_10 = 1, },
            barrel_length = 2,
            year = 1984,
        },
        M100108 = {
            Groups = { Group_SmithWesson_Model_10 = 1, },
            barrel_length = 4,
            year = 1984,
        },
        M100121 = {
            Groups = { Group_SmithWesson_Model_10 = 1, },
            barrel_length = 3,
            year = 1984,
        },
        M100123 = {
            Groups = { Group_SmithWesson_Model_10 = 1, },
            barrel_length = 4,
            year = 1984,
        },
        M100124 = {
            Groups = { Group_SmithWesson_Model_10 = 1, Group_RareCollectables = 282, },
            barrel_length = 4,
            year = 1990,
        },
        M100139 = {
            Groups = { Group_SmithWesson_Model_10 = 1, Group_RareCollectables = 34, },
            barrel_length = 4,
            year = 2003,
    }
})
FirearmType:newCollection("SmithWesson_Model_19", {
        -- sources:
        -- https://en.wikipedia.org/wiki/S%26W_Model_19
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_357Magnum",
        -- speedLoader = 'SpeedLoader3576',
        weight = 1.0,
        barrel_length = 4,
        model = "swm19",
        image = "SmithWesson_Model_19",
        max_capacity = 6,

        classification = "IGUI_Firearm_Revolver",
        year = 1957,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_SW",
        description = "IGUI_Firearm_Desc_SWM19",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
        Groups = { Group_SmithWesson_Model_19 = 1, }, -- TODO: Move to variants
    },{
        KYSP = {
            Groups = { Group_SmithWesson_Model_19 = 1, Group_RareCollectables = 917 },
            barrel_length = 4,
            year = 1978,
        },
        M100730 = {
            Groups = { Group_SmithWesson_Model_19 = 1, Group_RareCollectables = 500 },
            barrel_length = 6,
            year = 1990,
        },
})
FirearmType:newCollection("SmithWesson_Model_25", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Smith_%26_Wesson_Model_22
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_45ACP",  -- speedLoader = 'SpeedLoader3576',
        weight = 1.0,
        barrel_length = 5.5,
        model = "swm252",
        image = "SmithWesson_Model_22",
        max_capacity = 6,

        classification = "IGUI_Firearm_Revolver",
        year = 1955,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_SW",
        description = "IGUI_Firearm_Desc_SWM252",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
        Groups = { Group_SmithWesson_Model_22 = 1, }, -- TODO: Move to variants
    },{
        M100905 = {
            -- The twelve Revolvers November Edition: “The Horse Thief”
            Groups = { Group_SmithWesson_Model_22 = 1, Group_RareCollectables = 500, },
            barrel_length = 8.375,
            ammo_group = "AmmoGroup_45Colt",
        },
})
FirearmType:newCollection("SmithWesson_Model_29", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Smith_%26_Wesson_Model_29
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_44Magnum",
        -- speedLoader = 'SpeedLoader3576',
        weight = 1.2,
        barrel_length = 6,
        model = "swm29",
        image = "SmithWesson_Model_29",
        max_capacity = 6,

        classification = "IGUI_Firearm_Revolver",
        year = 1955,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_SW",
        description = "IGUI_Firearm_Desc_SWM29",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
        Groups = { Group_SmithWesson_Model_29 = 1, }, -- TODO: Move to variants
    },{
        M101264 = {
            --The .44 Magna Classic
            Groups = { Group_SmithWesson_Model_29 = 1, Group_RareCollectables = 1800 },
            barrel_length = 7.5,
        },
        M101207 = {
            -- The Twelve Revolvers, January Edition: “The Hostiles”
            Groups = { Group_SmithWesson_Model_29 = 1, Group_RareCollectables = 500 },
            barrel_length = 8.375,
        },
        M101207B = {
            Groups = { Group_SmithWesson_Model_29 = 1, Group_RareCollectables = 500 },
            barrel_length = 7.5,
            -- The Twelve Revolvers, October Edition: “The Attack”
        },
})
FirearmType:newCollection("SmithWesson_Model_36", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Smith_%26_Wesson_Model_36
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_38Special",
        -- speedLoader = 'SpeedLoader3576',
        weight = 0.55,
        barrel_length = 2,
        model = "swm36",
        image = "SmithWesson_Model_36",
        max_capacity = 5,

        classification = "IGUI_Firearm_Revolver",
        year = 1950,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_SW",
        description = "IGUI_Firearm_Desc_SWM36",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
    },{
        M361A = {
            Groups = { Group_SmithWesson_Model_36 = 10, },
            barrel_length = 3,
            year = 1967,
        },
        US361 = {
            Groups = { Group_SmithWesson_Model_36 = 0.2, Group_RareCollectables = 2000 },
            barrel_length = 2,
            year = 1977,

        },
        M101549 = { -- 36-6 Target, 3" blue finish, 615 manufactured
            Groups = { Group_SmithWesson_Model_36 = 0.06, Group_RareCollectables = 615 },
            barrel_length = 3,
            year = 1989,
        },
        M161491 = { -- Model 36 Gold
            Groups = { Group_SmithWesson_Model_36 = 0.2, Group_RareCollectables = 2000 }, -- unknown numbers
            year = 2002,

        },
        M161492 = {
            Groups = { Group_SmithWesson_Model_36 = 0.51, Group_RareCollectables = 5100 },
            year = 2005,
            barrel_length = 2,
        }
})
FirearmType:newCollection("SmithWesson_Model_610", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Smith_%26_Wesson_Model_610
        -- https://www.thetruthaboutguns.com/2017/04/daniel-zimmerman/gun-review-smith-wesson-model-610-10mm-content-contest/
        -- https://www.smith-wesson.com/dealer-resources/sw-product-spec-sheets
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_10x25mm",
        -- speedLoader = 'SpeedLoader3576',
        weight = 1.4,
        barrel_length = 6.5,
        model = "swm610",
        image = "SmithWesson_Model_610",
        max_capacity = 6,

        classification = "IGUI_Firearm_Revolver",
        year = 1990,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_SW",
        description = "IGUI_Firearm_Desc_SWM610",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
    },{
        M103571 = { --610-2, drilled and tapped
            Groups = { Group_SmithWesson_Model_610 = 1, },
            barrel_length = 4, weight = 1.2,
            year = 1998,
        },
        M148120 = { -- 610-2(-1?) Lew Horton Edition Model 148120 3" 300 produced
            Groups = { Group_SmithWesson_Model_610 = 1, Group_RareCollectables = 300 },
            barrel_length = 3,
            year = 1998,
        },
        M12462  = { -- rubber
            Groups = { Group_SmithWesson_Model_610 = 1, },
        },
        M12463 = { -- rubber
            Groups = { Group_SmithWesson_Model_610 = 1, },
            barrel_length = 4, weight = 1.2,
        },
        M163426 = { -- 310 nightguard, 50oz rubber
            Groups = { Group_SmithWesson_Model_610 = 1, },
            barrel_length = 2.75, weight = 1.2,
        }
})
FirearmType:newCollection("Taurus_RagingBull", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Taurus_Raging_Bull
        -- https://web.archive.org/web/20041228132350/http://www.taurususa.com/products/gunselector-results.cfm?series=RB2
        category = Const.REVOLVER,
        soundProfile = "Revolver",

        ammo_group = "AmmoGroup_454Casull",
        -- speedLoader = 'SpeedLoader3576',
        weight = 1.5,
        barrel_length = 6.5,
        model = "taurusraging",
        image = "Taurus_RagingBull",
        max_capacity = 5,

        classification = "IGUI_Firearm_Revolver",
        year = 1997,
        country = "IGUI_Firearm_Country_BR",
        manufacturer = "IGUI_Firearm_Manuf_Taurus",
        description = "IGUI_Firearm_Desc_Taurus454",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY,
        feed_system = Flags.ROTARY,
        Groups = { Group_Taurus_RagingBull = 1, }, -- TODO: Move to variants
    },{
        M22H = { -- Taurus Raging Hornet Model 22H
            ammo_group = "AmmoGroup_22Hornet", barrel_length = 10, weight = 1.42,
            max_capacity = 8,
        },
        M30CSS10 = { -- Taurus Raging Thirty Model 30CSS10
            ammo_group = "AmmoGroup_30Carbine", barrel_length = 10, weight = 2.2,
            max_capacity = 8,
        },
        M416SS6 = { -- Taurus Raging Bull Model 416SS6
            ammo_group = "AmmoGroup_41Magnum",
            max_capacity = 6,
            extra_features = Flags.PORTED,
        },
        M444B6 = { -- Taurus Raging Bull Model 444B6
            ammo_group = "AmmoGroup_44Magnum",
            max_capacity = 6,
            extra_features = Flags.PORTED,
        },
        M444B8 = { -- Taurus Raging Bull Model 444B8
            ammo_group = "AmmoGroup_44Magnum",
            max_capacity = 6, barrel_length = 8.425, weight = 1.786,
            extra_features = Flags.PORTED,
        },
        M444Mulit = { -- Taurus Raging Bull Ultralight Model 444 Multi
            ammo_group = "AmmoGroup_44Magnum",
            max_capacity = 6, barrel_length = 4, weight = 0.8
        },
        M444SS6 = { -- Taurus Raging Bull Model 444SS6
            ammo_group = "AmmoGroup_44Magnum",
            max_capacity = 6,
            extra_features = Flags.PORTED,
        },
        M444SS8 = { -- Taurus Raging Bull Model 444SS8
            ammo_group = "AmmoGroup_44Magnum",
            max_capacity = 6, barrel_length = 8.425, weight = 1.786,
            extra_features = Flags.PORTED,
        },
        M454B6 = { -- Taurus Raging Bull Model 454B6
            max_capacity = 5,
            extra_features = Flags.PORTED,
        },
        M454B8 = { -- Taurus Raging Bull Model 454B8
            max_capacity = 5, barrel_length = 8.425, weight = 1.786,
            extra_features = Flags.PORTED,
        },
        M454SS5M = { -- Taurus Raging Bull Model 454SS5M
            max_capacity = 5, barrel_length = 5, weight = 1.445,
            extra_features = Flags.PORTED,
        },
        M454SS6M = { -- Taurus Raging Bull Model 454SS6M
            max_capacity = 5,
            extra_features = Flags.PORTED,
        },
        M454SS8M = { -- Taurus Raging Bull Model 454SS8M
            max_capacity = 5, barrel_length = 8.425, weight = 1.786,
            extra_features = Flags.PORTED,
        },
        M480SS5M = { -- Taurus Raging Bull Model 480SS5M
            ammo_group = "AmmoGroup_480Ruger",
            max_capacity = 5, barrel_length = 5, weight = 1.445,
            extra_features = Flags.PORTED,
        },
        M480SS6M = { -- Taurus Raging Bull Model 480SS6M
            ammo_group = "AmmoGroup_480Ruger",
            max_capacity = 5,
            extra_features = Flags.PORTED,
        },
        M480SS8M = { -- Taurus Raging Bull Model 480SS8M
            ammo_group = "AmmoGroup_480Ruger",
            max_capacity = 5, barrel_length = 8.425, weight = 1.786,
            extra_features = Flags.PORTED,
        },
})

--************************************************************************--
-- semi pistols
--************************************************************************--
FirearmType:new("AMT_AutomagV", {
    -- sources:
    -- https://en.wikipedia.org/wiki/AMT_AutoMag_V
    category = Const.PISTOL,
    soundProfile = "Pistol-Large",

    ammo_group = "AmmoGroup_50AE",
    magazine_group = "MagGroup_AutomagV",
    weight = 1.3,
    barrel_length = 6.5,
    model = "automagv",
    image = "AMT_AutomagV",
    max_capacity = 5,

    classification = "IGUI_Firearm_SemiPistol",
    year = 1993,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_SW",
    description = "IGUI_Firearm_Desc_AutomagV",

    features = Flags.SINGLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
    feed_system = Flags.AUTO + Flags.DELAYEDBLOWBACK,
    Groups = { Group_AMT_Automag = 1, Group_RareCollectables = 2000 },
})
FirearmType:newCollection("Beretta_92", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Beretta_92
        -- https://en.wikipedia.org/wiki/Beretta_M9
        -- https://en.wikipedia.org/wiki/List_of_Beretta_92_Models
        -- https://modernfirearms.net/en/handguns/handguns-en/italy-semi-automatic-pistols/beretta-92-eng/
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_9x19mm",
        magazine_group = "MagGroup_Beretta_92",
        weight = 0.8,
        barrel_length = 4.9,
        model = "Ber92Mag",
        image = "Beretta_92",
        max_capacity = 15,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1976,
        country = "IGUI_Firearm_Country_IT",
        manufacturer = "IGUI_Firearm_Manuf_Beretta",
        description = "IGUI_Firearm_Desc_Ber92",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Beretta_92 = 1, }, -- TODO: Move to variants
    },{
        M92 = { -- original. different mag group
            magazine_group = "MagGroup_Beretta_92_early",
        },
        M92S = { -- different mag group
            year = 1978,
            magazine_group = "MagGroup_Beretta_92_early",
        },
        M92SB = {
        },
        M92SBCompact = {
            year = 1981,
        },
        M92F = {
        },
        M92FS = {
        },
        M9 = {
            year = 1985,
        },
        M9A1 = {
            year = 2006,
        },
        M9A3 = {
            year = 2015,
        },
        M9_22 = { -- .22LR, year unknown
            year = 2006,
        },
})
FirearmType:new("DornausDixon_BrenTen", {
    -- sources:
    category = Const.PISTOL,
    soundProfile = "Pistol",

    ammo_group = "AmmoGroup_10x25mm",
    magazine_group = "MagGroup_BrenTen",
    weight = 1.1,
    barrel_length = 5,
    model = "brenten",
    image = "DornausDixon_BrenTen",
    max_capacity = 12,

    classification = "IGUI_Firearm_SemiPistol",
    year = 1983,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Dixon",
    description = "IGUI_Firearm_Desc_BrenTen",

    features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
    feed_system = Flags.AUTO + Flags.SHORTRECOIL,
    Groups = { Group_DornausDixon_BrenTen = 1, Group_RareCollectables = 1000 },
})
FirearmType:newCollection("Browning_HiPower", {
        -- sources:
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_9x19mm",
        magazine_group = "MagGroup_Browning_HiPower",
        weight = 1,
        barrel_length = 4.7,
        model = "browninghp",
        image = "Browning_HiPower",
        max_capacity = 13,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1935,
        country = "IGUI_Firearm_Country_BE",
        manufacturer = "IGUI_Firearm_Manuf_FN",
        description = "IGUI_Firearm_Desc_BrownHP",

        features = Flags.SINGLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Browning_HiPower = 1, }, -- TODO: Move to variants
    },{
        P35 = { },
        Mark1 = { },
})
FirearmType:newCollection("Colt_1911", {
        -- sources:
        -- https://en.wikipedia.org/wiki/M1911
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_45ACP",
        magazine_group = "MagGroup_1911",
        weight = 1.1,
        barrel_length = 5.03,
        model = "m1911",
        image = "Colt_1911",
        max_capacity = 7,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1911,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Colt",
        description = "IGUI_Firearm_Desc_M1911",

        features = Flags.SINGLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Colt_1911 = 1, }, -- TODO: Move to variants
    },{
        M1911 = {

        },
        M1911A1 = {
            year = 1929,
        },
})
FirearmType:newCollection("Colt_1911_Officers", {
        -- sources:
        -- https://en.wikipedia.org/wiki/M1911
        -- https://en.wikipedia.org/wiki/Colt_Officer%27s_ACP
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_45ACP",
        magazine_group = "MagGroup_1911",
        weight = 0.96,
        barrel_length = 3.5,
        model = "m1911",
        image = "Colt_1911",
        max_capacity = 7, -- or 6

        classification = "IGUI_Firearm_SemiPistol",
        year = 1985,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Colt",
        description = "IGUI_Firearm_Desc_M1911",

        features = Flags.SINGLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Colt_1911 = 1, }, -- TODO: Move to variants
    },{
        M01986 = { -- Double diamond!

    },
})
FirearmType:newCollection("Colt_1911_Commander", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Colt_Commander
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_38Super",
        magazine_group = "MagGroup_1911_38Super",
        weight = 1,
        barrel_length = 4.25,
        model = "colt38s",
        image = "Colt_1911_Commander",
        max_capacity = 9, -- 7-8 for .45

        classification = "IGUI_Firearm_SemiPistol",
        year = 1950,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Colt",
        description = "IGUI_Firearm_Desc_Colt38S",

        features = Flags.SINGLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Colt_1911 = 1, }, -- TODO: Move to variants
    },{
})
FirearmType:newCollection("Colt_1911_DeltaElite", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Colt_Delta_Elite
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_10x25mm",
        magazine_group = "MagGroup_1911_10x25mm",
        weight = 1.1,
        barrel_length = 5.03,
        model = "coltdelta",
        image = "Colt_1911_DeltaElite",
        max_capacity = 9,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1987,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Colt",
        description = "IGUI_Firearm_Desc_ColtDelta",

        features = Flags.SINGLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Colt_1911 = 1, }, -- TODO: Move to variants
    },{
})
FirearmType:newCollection("CZUB_CZ75", {
        -- sources:
        -- https://en.wikipedia.org/wiki/CZ75
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_9x19mm",
        magazine_group = "Mag_CZ75_9x19mm",
        weight = 1.1,
        barrel_length = 4.7,
        model = "cz75",
        image = "CZUB_CZ75",
        max_capacity = 15,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1975,
        country = "IGUI_Firearm_Country_CZ",
        manufacturer = "IGUI_Firearm_Manuf_CZUB",
        description = "IGUI_Firearm_Desc_CZ75",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_CZUB_CZ75 = 1, }, -- TODO: Move to variants
    },{
})
FirearmType:newCollection("IMI_DesertEagle", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Desert_eagle
        category = Const.PISTOL,
        soundProfile = "Pistol-Large",

        ammo_group = "AmmoGroup_44Magnum",
        magazine_group = "MagGroup_DesertEagle_44Magnum",
        weight = 1.89,
        barrel_length = 10,
        model = "deagle",
        image = "IMI_DesertEagle",
        max_capacity = 8,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1982,
        country = "IGUI_Firearm_Country_USIL",
        manufacturer = "IGUI_Firearm_Manuf_IMI",
        description = "IGUI_Firearm_Desc_DEagle",

        features = Flags.SINGLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTGAS,
        Groups = { Group_IMI_DesertEagle = 1, }, -- TODO: Move to variants
    },{
        VII = { -- 44 mag
            ammo_group = "AmmoGroup_44Magnum",
            magazine_group = "MagGroup_DesertEagle_44Magnum",
            weight = 1.89,
            barrel_length = 10,
            model = "deagle",
            image = "IMI_DesertEagle",
            max_capacity = 8,
        },
        XIX = {
            ammo_group = "AmmoGroup_50AE",
            magazine_group = "MagGroup_DesertEagle_50AE",
            weight = 2.0,
            barrel_length = 10,
            model = "deaglexix",
            image = "IMI_DesertEagle_XIX",
            max_capacity = 7,

            classification = "IGUI_Firearm_SemiPistol",
            year = 1982,
            country = "IGUI_Firearm_Country_USIL",
            manufacturer = "IGUI_Firearm_Manuf_IMI",
            description = "IGUI_Firearm_Desc_DEagleXIX",
        }
})
FirearmType:newCollection("FNHerstal_FN57", {
        -- sources:
        --
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_57x28mm",
        magazine_group = "MagGroup_FN57",
        weight = 0.6,
        barrel_length = 4.8,
        model = "fn57",
        image = "FNHerstal_FN57",
        max_capacity = 20,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1998,
        country = "IGUI_Firearm_Country_BE",
        manufacturer = "IGUI_Firearm_Manuf_FN",
        description = "IGUI_Firearm_Desc_FN57",

        -- depending on model, this can be SA (FN57 Tactical)
        features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.DELAYEDBLOWBACK,
        Groups = { Group_FNHerstal_FN57 = 1, }, -- TODO: Move to variants
    },{
})
FirearmType:newCollection("Glock_17", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Glock
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_9x19mm",
        magazine_group = "MagGroup_Glock_9x19mm",
        weight = 0.7,
        barrel_length = 4.48,
        model = "glock17",
        image = "Glock_17",
        max_capacity = 17,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1982,
        country = "IGUI_Firearm_Country_AT",
        manufacturer = "IGUI_Firearm_Manuf_Glock",
        description = "IGUI_Firearm_Desc_Glock17",

        -- technically not quite DAO, but as close as its going to get
        features = Flags.DOUBLEACTION + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Glock_17 = 1, }, -- TODO: Move to variants
    },{
        Gen1 = {

        },
})
FirearmType:newCollection("Glock_20", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Glock
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_10x25mm",
        magazine_group = "MagGroup_Glock_10x25mm",
        weight = 0.9,
        barrel_length = 4.48,
        model = "glock20",
        image = "Glock_20",
        max_capacity = 15,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1991,
        country = "IGUI_Firearm_Country_AT",
        manufacturer = "IGUI_Firearm_Manuf_Glock",
        description = "IGUI_Firearm_Desc_Glock20",

        -- technically not quite DAO, but as close as its going to get
        features = Flags.DOUBLEACTION + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Glock_20 = 1, }, -- TODO: Move to variants
    },{
        Gen1 = {

        },
})
FirearmType:newCollection("Glock_21", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Glock
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_45ACP",
        magazine_group = "MagGroup_Glock_45ACP",
        weight = 0.8,
        barrel_length = 4.48,
        model = "glock21",
        image = "Glock_21",
        max_capacity = 13,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1991,
        country = "IGUI_Firearm_Country_AT",
        manufacturer = "IGUI_Firearm_Manuf_Glock",
        description = "IGUI_Firearm_Desc_Glock21",

        -- technically not quite DAO, but as close as its going to get
        features = Flags.DOUBLEACTION + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Glock_21 = 1, }, -- TODO: Move to variants
    },{
        Gen1 = {

        },
})
FirearmType:newCollection("Glock_22", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Glock
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_40SW",
        magazine_group = "MagGroup_Glock_40SW",
        weight = 0.7,
        barrel_length = 4.48,
        model = "glock22",
        image = "Glock_22",
        max_capacity = 15,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1990,
        country = "IGUI_Firearm_Country_AT",
        manufacturer = "IGUI_Firearm_Manuf_Glock",
        description = "IGUI_Firearm_Desc_Glock22",

        -- technically not quite DAO, but as close as its going to get
        features = Flags.DOUBLEACTION + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Glock_22 = 1, }, -- TODO: Move to variants
    },{
        Gen1 = {

        },
})
FirearmType:newCollection("HecklerKoch_Mark23", {
        -- sources:
        -- https://en.wikipedia.org/wiki/HK_MK23
        category = Const.PISTOL,
        soundProfile = "Pistol",

        ammo_group = "AmmoGroup_45ACP",
        magazine_group = "MagGroup_Mark23",
        weight = 1.2,
        barrel_length = 5.87,
        model = "hkmk23",
        image = "HecklerKoch_Mark23",
        max_capacity = 12,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1996,
        country = "IGUI_Firearm_Country_DE",
        manufacturer = "IGUI_Firearm_Manuf_HK",
        description = "IGUI_Firearm_Desc_HKMK23",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_HecklerKoch_Mark23 = 1, }, -- TODO: Move to variants
    },{
        KG = {

        },
})
FirearmType:newCollection("Kahr_CT_Series", {
        -- sources:
        -- https://shopkahrfirearmsgroup.com/kahr-arms/pistols/ct-series/
        category = Const.PISTOL,
        soundProfile = "Pistol",

        --magazine_group = "MagGroup_Kahr_CT_Series",
        weight = 0.6,
        barrel_length = 4,
        model = "kahrct40",
        image = "Kahr_CT_Series",
        max_capacity = 7,

        classification = "IGUI_Firearm_SemiPistol",
        year = 2014,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Kahr",
        description = "IGUI_Firearm_Desc_KahrCT40",

        features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Kahr_CT_Series = 1, }, -- TODO: Move to variants
    },{
        CT3833 = { -- CT380 (CT3833) 3.0" Barrel 7 round, 11.44oz
            ammo_group = 'AmmoGroup_380ACP',
            magazine_group = "MagGroup_CT380",
            weight = 0.32,
            barrel_length = 3,
        },
        CT9093BCF = {
            --  CT9, Black Carbon Fiber, 8 shot, 3.965", 18.5oz (2.1oz mag)
            ammo_group = 'AmmoGroup_9x19mm',
            magazine_group = "MagGroup_CT9",
            max_capacity = 8,
            weight = 0.52,
            barrel_length = 3.965,
        },
        CT4043 = { -- CT40 () 4.0", 7 round 21.8oz
            ammo_group = 'AmmoGroup_40SW',
            magazine_group = "MagGroup_CT40",
            weight = 0.618,
            barrel_length = 4,
        },
        CT4543 = { --CT4543 4.04" Barrel, 7 round, 24.7 oz,
            ammo_group = 'AmmoGroup_45ACP',
            magazine_group = "MagGroup_CT45",
            weight = 0.7,
            barrel_length = 4.04,
        },
})
FirearmType:newCollection("Kahr_P_Series", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Kahr_P_series
        -- https://shopkahrfirearmsgroup.com/kahr-arms/pistols/p-series/
        category = Const.PISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_Kahr_P_Series",
        weight = 0.32,
        barrel_length = 2.53,
        model = "kahrp380",
        image = "Kahr_P_Series",
        max_capacity = 6,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1999,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Kahr",
        description = "IGUI_Firearm_Desc_KahrP380",

        features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Kahr_P_Series = 1, }, -- TODO: Move to variants
    },{
        P380 = {

        },
})
FirearmType:newCollection("KalTec_P32", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Kel-Tec_P-32
        category = Const.PISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_KalTec_P32",
        weight = 0.186,
        barrel_length = 2.68,
        model = "ktp32",
        image = "KalTec_P32",
        max_capacity = 7, -- or 10

        classification = "IGUI_Firearm_SemiPistol",
        year = 1999,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_KelTec",
        description = "IGUI_Firearm_Desc_KTP32",

        features = Flags.DOUBLEACTION + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_KalTec_P32 = 1, }, -- TODO: Move to variants
    },{
        Gen1 = {

        },
})
FirearmType:newCollection("KalTec_PLR16", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Kel-Tec_PLR-16
        category = Const.PISTOL,
        soundProfile = "Rifle-AR",

        magazine_group = "MagGroup_STANAG",
        weight = 1.55,
        barrel_length = 9.2,
        model = "ktplr",
        image = "KalTec_PLR16",
        max_capacity = 30,

        classification = "IGUI_Firearm_SemiPistol",
        year = 2006,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_KelTec",
        description = "IGUI_Firearm_Desc_KTPLR",

        features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
        feed_system = Flags.AUTO + Flags.SHORTGAS,
        Groups = { Group_KalTec_PLR16 = 1, }, -- TODO: Move to variants
    },{
        Gen1 = {

        },
})
FirearmType:newCollection("Ruger_MarkII", {
        -- sources:
        --
        category = Const.PISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_Ruger_MarkII",
        weight = 1.3,
        barrel_length = 6.875,
        model = "rugermkii",
        image = "Ruger_MarkII",
        max_capacity = 10,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1982,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Ruger",
        description = "IGUI_Firearm_Desc_RugerMKII",

        features = Flags.SINGLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.BLOWBACK,
        Groups = { Group_Ruger_MarkII = 1, }, -- TODO: Move to variants
    },{
})
FirearmType:newCollection("Ruger_SR_Series", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Ruger_SR-Series
        category = Const.PISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_Ruger_SR_Series",
        weight = 0.75,
        barrel_length = 4.14,
        model = "rugersr9",
        image = "Ruger_SR_Series",
        max_capacity = 17,

        classification = "IGUI_Firearm_SemiPistol",
        year = 2007,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Ruger",
        description = "IGUI_Firearm_Desc_RugerSR9",

        features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Ruger_SR_Series = 1, }, -- TODO: Move to variants
    },{
        SR9 = {

        },
})
FirearmType:newCollection("SigSauer_P226", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Sig_226
        category = Const.PISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_SigSauer_P226",
        weight = 1,
        barrel_length = 4.4,
        model = "sigp226",
        image = "SigSauer_P226",
        max_capacity = 12,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1983,
        country = "IGUI_Firearm_Country_DE",
        manufacturer = "IGUI_Firearm_Manuf_SIG",
        description = "IGUI_Firearm_Desc_SIGP226",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_SigSauer_P226 = 1, }, -- TODO: Move to variants
    },{
})
FirearmType:newCollection("Springfield_XD", {
        -- sources:
        -- https://en.wikipedia.org/wiki/HS2000
        -- https://en.wikipedia.org/wiki/Springfield_Armory_XDM
        category = Const.PISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_Springfield_XD",
        weight = 0.7,
        barrel_length = 4, -- 3 (compact), 4 (service), or 5 (tactical)
        model = "xd40",
        image = "Springfield_XD",
        max_capacity = 12,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1999,
        country = "IGUI_Firearm_Country_HR",
        manufacturer = "IGUI_Firearm_Manuf_HS",
        description = "IGUI_Firearm_Desc_XD40",

        -- striker trigger mechanism, DAO is close enough
        features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Springfield_XD = 1, }, -- TODO: Move to variants
    },{
        XD40 = { },
})
FirearmType:newCollection("Springfield_1911", {
        -- sources:
        -- https://www.springfield-armory.com/1911-series/
        -- http://www.imfdb.org/wiki/Springfield_Armory_1911_Series
        category = Const.PISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_1911",
        weight = 1.1,
        barrel_length = 5,
        model = "spr19119",
        image = "Springfield_1911",
        max_capacity = 7,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1985,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Springfield",
        description = "IGUI_Firearm_Desc_Spr19119",

        features = Flags.SINGLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Springfield_1911 = 1, }, -- TODO: Move to variants
    },{
        PI9122L = {  -- 9mm SS match barrel
            magazine_group = "MagGroup_1911_9x19mm", max_capacity = 9,
        },
})
FirearmType:newCollection("Taurus_PT38S", {
        -- sources:
        -- https://www.genitron.com/Handgun/Taurus/Pistol/PT-38S/38-Super/Variant-1
        category = Const.PISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_Taurus_PT38S",
        weight = 0.9,
        barrel_length = 4.25,
        model = "taurus38",
        image = "Taurus_PT38S",
        max_capacity = 10,

        classification = "IGUI_Firearm_SemiPistol",
        year = 2005,
        country = "IGUI_Firearm_Country_BR",
        manufacturer = "IGUI_Firearm_Manuf_Taurus",
        description = "IGUI_Firearm_Desc_Taurus38",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Taurus_PT38S = 1, }, -- TODO: Move to variants
    },{
        PT38S = {}
})
FirearmType:newCollection("Taurus_Millennium", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Taurus_Millennium_series
        -- http://www.imfdb.org/wiki/Taurus_Millennium_Pro
        category = Const.PISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_Taurus_Millennium_38Super",
        weight = 0.56,
        barrel_length = 3.25,
        model = "taurusp132",
        image = "Taurus_Millennium",
        max_capacity = 10,

        classification = "IGUI_Firearm_SemiPistol",
        year = 2005,
        country = "IGUI_Firearm_Country_BR",
        manufacturer = "IGUI_Firearm_Manuf_Taurus",
        description = "IGUI_Firearm_Desc_TaurusP132",

        features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Taurus_Millennium = 1, }, -- TODO: Move to variants
    },{
        P132 = {

        },
})
FirearmType:newCollection("Walther_P22", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Walther_P22
        category = Const.PISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_P22",
        weight = 0.4,
        barrel_length = 3.42,
        model = "waltherp22",
        image = "Walther_P22",
        max_capacity = 10,

        classification = "IGUI_Firearm_SemiPistol",
        year = 2002,
        country = "IGUI_Firearm_Country_DE",
        manufacturer = "IGUI_Firearm_Manuf_Walther",
        description = "IGUI_Firearm_Desc_WaltherP22",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.BLOWBACK,
        Groups = { Group_Walther_P22 = 1, }, -- TODO: Move to variants
    },{
        P22 = {

        }
})
FirearmType:newCollection("Walther_PP_Series", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Walther_PP
        category = Const.PISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_P22",
        weight = 0.65,
        barrel_length = 3.3,
        model = "waltherppk",
        image = "Walther_PPK",
        max_capacity = 6,

        classification = "IGUI_Firearm_SemiPistol",
        year = 1935,
        country = "IGUI_Firearm_Country_DE",
        manufacturer = "IGUI_Firearm_Manuf_Walther",
        description = "IGUI_Firearm_Desc_WaltherPPK",

        features = Flags.SINGLEACTION + Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK,
        feed_system = Flags.AUTO + Flags.BLOWBACK,
        Groups = { Group_Walther_PP_Series = 1, }, -- TODO: Move to variants
    },{
        PPK = { },
})


--************************************************************************--
-- Machine Pistols
--************************************************************************--
FirearmType:new("Beretta_93R", {
    -- sources:
    -- https://en.wikipedia.org/wiki/Beretta_93R
    -- https://modernfirearms.net/en/handguns/handguns-en/italy-semi-automatic-pistols/beretta-92-eng/
    category = Const.MACHINEPISTOL,
    soundProfile = "Pistol",

    magazine_group = "MagGroup_Beretta_92",
    weight = 1.17,
    barrel_length = 4.9,
    model = "beretta93r",
    image = "Beretta_93R",
    max_capacity = 20,

    classification = "IGUI_Firearm_MachinePistol",
    year = 1977,
    country = "IGUI_Firearm_Country_IT",
    manufacturer = "IGUI_Firearm_Manuf_Beretta",
    description = "IGUI_Firearm_Desc_Ber93R",

    features = Flags.SINGLEACTION + Flags.SAFETY + Flags.SLIDELOCK + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.BURST3 + Flags.PORTED,
    feed_system = Flags.AUTO + Flags.SHORTRECOIL,
    Groups = { Group_Beretta_93R = 1, },
})
FirearmType:newCollection("Glock_18", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Glock
        -- https://www.all4shooters.com/en/shooting/pistols/glock-18-full-auto-test-and-video/
        -- http://www.thefullwiki.org/Glock_18
        category = Const.MACHINEPISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_Glock_9x19mm",
        weight = 0.62,
        barrel_length = 4.48,
        model = "glock18c",
        image = "Glock_18",
        max_capacity = 17,

        classification = "IGUI_Firearm_MachinePistol",
        year = 1986,
        country = "IGUI_Firearm_Country_AT",
        manufacturer = "IGUI_Firearm_Manuf_Glock",
        description = "IGUI_Firearm_Desc_Glock18",

        -- technically not quite DAO, but as close as its going to get
        features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_Glock_17 = 1, }, -- TODO: Move to variants
    },{
        Gen1 = {

        },
        Gen2C = { -- comp

        },
        Gen3C = { -- rail and comp

        },
})
FirearmType:newCollection("CZUB_Skorpion", {
		--sources
		--https://en.wikipedia.org/wiki/%C5%A0korpion
		--https://cdn.cz-usa.com/hammer/wp-content/uploads/2014/04/A_Legend_Named_Skorpion.pdf
        --https://www.forgottenweapons.com/submachine-guns/vz61-skorpion/
		category = Const.MACHINEPISTOL,
        soundProfile = "Pistol",

        magazine_group = "MagGroup_Skorpion_vz61_32ACP",
        weight = 1.3,
        barrel_length = 4.5,
        model = 'skorpion',
        image = 'Item_CZUB_Skorpion',
        max_capacity = 20,
		display_name = {
			EN = "Škorpion vz. 61",
		},
        
        classification = "IGUI_Firearm_MachinePistol",
        year = 1961,
        country = "IGUI_Firearm_Country_CZ",
        --manufacturer = "Česká zbrojovka Uherský Brod",
        manufacturer = "IGUI_Firearm_Manuf_CZUB",
        description = {
			EN = "The Škorpion vz. 61 is a Czechoslovak machine pistol developed in 1959 by Miroslav Rybář (1924–1970) and produced under the official designation Samopal vzor 61 ('submachine gun model 1961') by the Česká zbrojovka arms factory in Uherský Brod from 1961 to 1979. "
		},
        
        features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO,
        feed_system = Flags.AUTO + Flags.BLOWBACK,
        Groups = { Group_CZUB_Skorpion = 1, },
    }, {
        vz_61_E = {
			display_name = {
				EN = "Škorpion vz. 61 E",
			},
			--plastic grip
			weight = 1.28,
			year = 1990,
        },
        vz_68 = {
			display_name = {
				EN = "Škorpion vz. 68",
			},
			weight = 1.44,
			magazine_group = "MagGroup_Skorpion_vz61_9x19mm",
			year = 1968,
        },
        vz_65 = {
			display_name = {
				EN = "Škorpion vz. 65",
			},
			weight = 1.44,
			magazine_group = "MagGroup_Skorpion_vz61_9x18mm",
			year = 1968,
        },
        vz_64 = {
			display_name = {
				EN = "Škorpion vz. 64",
			},
			weight = 1.44,
			magazine_group = "MagGroup_Skorpion_vz61_380ACP",
			year = 1968,
        },
        vz_82 = {
			display_name = {
				EN = "Škorpion vz. 82",
			},
			weight = 1.44,
			magazine_group = "MagGroup_Skorpion_vz61_9x18mm",
			barrel_length = 4.4,
			year = 1989,
			--plastic grip
        },
        vz_83 = {
			display_name = {
				EN = "Škorpion vz. 83",
			},
			weight = 1.44,
			magazine_group = "MagGroup_Skorpion_vz61_380ACP",
			barrel_length = 4.4,
			year = 1989,
			--plastic grip
        },
        CZ_91_S_32ACP = {
			display_name = {
				EN = "CZ-91S .32 ACP",
			},
			weight = 1.14,
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SEMIAUTO,
			year = 1989,
			--plastic grip
        },
        CZ_91_S_380ACP = {
			display_name = {
				EN = "CZ-91S .380 ACP",
			},
			weight = 1.28,
			magazine_group = "MagGroup_Skorpion_vz61_380ACP",
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SEMIAUTO,
			year = 1989,
			--plastic grip
        },
        CZ_91_S_9x18 = {
			display_name = {
				EN = "CZ-91S 9x18mm",
			},
			weight = 1.28,
			magazine_group = "MagGroup_Skorpion_vz61_9x18mm",
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SEMIAUTO,
			year = 1989,
			--plastic grip
        },
        CZ_SKORPION_9x19 = {
			display_name = {
				EN = "CZ SKORPION 9x19",
			},
			weight = 1.28,
			magazine_group = "MagGroup_Skorpion_vz61_9x19mm",
			year = 2003,
			--under barrel attachment rail
			--plastic grip
        },
})


--************************************************************************--
-- SubMachine Guns
--************************************************************************--


FirearmType:newCollection("AmericanArms_AM180", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Am180
        -- https://modernfirearms.net/en/submachine-guns/u-s-a-submachine-guns/american-180-eng/
        -- less then 10,000 manufactured
        category = Const.SUBMACHINEGUN,
        soundProfile = "SMG",
        --ejectSound = 'ORGMSMG2Out',
        --insertSound = 'ORGMSMG2In',

        magazine_group = "MagGroup_AM180",
        -- weight is 4.7 full
        weight = 2.6,                           barrel_length = 18.5, -- or 9
        model = "am180",             image = "AmericanArms_AM180",
        max_capacity = 177, -- 177, 165, 220 or 275

        classification = "IGUI_Firearm_SMG",
        year = 1972,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_AAI",
        description = "IGUI_Firearm_Desc_AM180",

        -- NOTE: problem: magazine blocks the default sights. we dont have a flag for this!
        features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.FULLAUTO + Flags.OPENBOLT,
        feed_system = Flags.AUTO + Flags.BLOWBACK,
        Groups = { Group_AmericanArms_AM180 = 1, }, -- TODO: Move to variants
    },{
        M1 = { },
        M2 = { },
})
FirearmType:newCollection("FNHerstal_P90", {
        -- sources:
        -- https://en.wikipedia.org/wiki/FN_P90
        category = Const.SUBMACHINEGUN,
        soundProfile = "SMG",

        magazine_group = "MagGroup_FNP90",
        weight = 2.6,                           barrel_length = 10.4,
        model = "fnp90",                 image = "FNHerstal_P90",
        max_capacity = 50,

        classification = "IGUI_Firearm_SMG",
        year = 1990,
        country = "IGUI_Firearm_Country_BE",
        manufacturer = "IGUI_Firearm_Manuf_FN",
        description = "IGUI_Firearm_Desc_FNP90",

        features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO + Flags.BULLPUP,
        feed_system = Flags.AUTO + Flags.BLOWBACK,
    },{
        Ori = {
            Groups = { Group_FNHerstal_P90 = 1, },
        },
        TR = {
            -- "triple rail, aka flat top model"
            Groups = { Group_FNHerstal_P90 = 1, },
            year = 1999,
        },
})
FirearmType:newCollection("HecklerKoch_MP5", {
        -- sources:
        --
        category = Const.SUBMACHINEGUN,
        soundProfile = "SMG",

        magazine_group = "MagGroup_MP5",
        weight = 2.9,
        barrel_length = 8.6,
        model = "hkmp5",
        image = "HecklerKoch_MP5",
        max_capacity = 30,

        classification = "IGUI_Firearm_SMG",
        year = 1966,
        country = "IGUI_Firearm_Country_DE",
        manufacturer = "IGUI_Firearm_Manuf_HK",
        description = "IGUI_Firearm_Desc_HKMP5",

        features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO + Flags.FREEFLOAT,
        feed_system = Flags.AUTO + Flags.DELAYEDBLOWBACK,
        Groups = { Group_HecklerKoch_MP5 = 1, },
    },{
})
FirearmType:newCollection("HecklerKoch_UMP", {
        -- sources:
        --
        category = Const.SUBMACHINEGUN,
        soundProfile = "SMG",

        magazine_group = "MagGroup_UMP",
        weight = 2.5,
        barrel_length = 8,
        model = "hkump",
        image = "HecklerKoch_UMP",
        max_capacity = 25,

        classification = "IGUI_Firearm_SMG",
        year = 1999,
        country = "IGUI_Firearm_Country_DE",
        manufacturer = "IGUI_Firearm_Manuf_HK",
        description = "IGUI_Firearm_Desc_HKUMP",

        features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO + Flags.BURST2 + Flags.FREEFLOAT,
        feed_system = Flags.AUTO + Flags.SHORTRECOIL,
        Groups = { Group_HecklerKoch_UMP = 1, },
    },{
})
FirearmType:newCollection("Kriss_Vector", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Kriss_Vector
        category = Const.SUBMACHINEGUN,
        soundProfile = "SMG",

        magazine_group = "MagGroup_Glock_45ACP",
        weight = 2.5,
        barrel_length = 5.5,
        model = "kriss",
        image = "Kriss_Vector",
        max_capacity = 13,

        classification = "IGUI_Firearm_SMG",
        year = 2009, -- gen2, 2015
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Kriss",
        description = "IGUI_Firearm_Desc_KrissA",

        features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO + Flags.BURST2,
        feed_system = Flags.AUTO + Flags.DELAYEDBLOWBACK,
        Groups = { Group_Kriss_Vector = 1, },
    },{
        SMG1 = { --gen 1 smg
            weight = 3,
        },
        CRB1 = { -- gen 1
            barrel_length = 16,
            model = "krissciv",
            image = "Kriss_Vector_CRB",
            weight = 3.2,
            features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
            description = "IGUI_Firearm_Desc_Kriss",
        }
})
FirearmType:newCollection("AutoOrdnance_Thompson", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Thompson_submachine_gun
        category = Const.SUBMACHINEGUN,
        soundProfile = "SMG",

        magazine_group = "MagGroup_Thompson",
        weight = 4.5,
        barrel_length = 10.52,
        model = "m1a1",
        image = "AutoOrdnance_Thompson",
        max_capacity = 20,

        classification = "IGUI_Firearm_SMG",
        year = 1921,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_AOC",
        description = "IGUI_Firearm_Desc_M1A1",

        features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO + Flags.OPENBOLT,
        feed_system = Flags.AUTO + Flags.BLOWBACK,
        Groups = { Group_AutoOrdnance_Thompson = 1, },
    },{
        M1928A1 = {
            weight = 4.9,
            barrel_length = 12,
            year = 1928,
            feed_system = Flags.AUTO + Flags.DELAYEDBLOWBACK,
            extra_features = Flags.PORTED,
        },
        M1 = {
            weight = 4.5,
            barrel_length = 10.52,
            year = 1942,
        },
        M1A1 = {
            weight = 4.5,
            barrel_length = 10.52,
            year = 1944,
        }
})
FirearmType:newCollection("MAC_Mac10", {
        -- sources:
        -- https://en.wikipedia.org/wiki/MAC-10
        category = Const.SUBMACHINEGUN,
        soundProfile = "SMG",

        magazine_group = "MagGroup_Mac10_45ACP",
        weight = 2.8,
        barrel_length = 4.9,
        model = "mac10",
        image = "MAC_Mac10",
        max_capacity = 30,

        classification = "IGUI_Firearm_SMG",
        year = 1970,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_MAC",
        description = "IGUI_Firearm_Desc_Mac10",

        features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO + Flags.OPENBOLT,
        feed_system = Flags.AUTO + Flags.BLOWBACK,
        Groups = { Group_MAC_Mac10 = 1, },
    },{
        M1045 = {
        },
        M109 = {
            magazine_group = "MagGroup_Mac10_9x19mm",
            max_capacity = 32,
        },
})
FirearmType:newCollection("MAC_Mac11", {
        -- sources:
        -- https://en.wikipedia.org/wiki/MAC-11
        category = Const.SUBMACHINEGUN,
        soundProfile = "SMG",

        magazine_group = "MagGroup_Mac11_380ACP",
        weight = 1.59,
        barrel_length = 5.08,
        model = "mac11",
        image = "MAC_Mac11",
        max_capacity = 32,

        classification = "IGUI_Firearm_MachinePistol",
        year = 1972,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_MAC",
        description = "IGUI_Firearm_Desc_Mac11",

        features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO + Flags.OPENBOLT,
        feed_system = Flags.AUTO + Flags.BLOWBACK,
        Groups = { Group_MAC_Mac11 = 1, },
    },{
        M11380 = {
        },
})
FirearmType:newCollection("IMI_Uzi", {
        -- sources:
        -- https://en.wikipedia.org/wiki/Uzi
        -- https://www.americanrifleman.org/articles/2019/4/29/an-essential-uzi-guide/
        category = Const.SUBMACHINEGUN,
        soundProfile = "SMG",

        magazine_group = "MagGroup_Uzi_9x19mm",
        weight = 3.5,
        barrel_length = 10.2,
        model = "uzi",
        image = "IMI_Uzi",
        max_capacity = 32,
        --•12-, 16-, or 22-round box (.45 ACP)
        --•20-, 25-, 32-, 40-, or 50-round box
        classification = "IGUI_Firearm_SMG",
        year = 1950,
        country = "IGUI_Firearm_Country_IL",
        manufacturer = "IGUI_Firearm_Manuf_IMI",
        description = "IGUI_Firearm_Desc_Uzi",

        features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO + Flags.OPENBOLT,
        feed_system = Flags.AUTO + Flags.BLOWBACK,
        Groups = { Group_IMI_Uzi = 1, },
    },{
        SMG45 = {
            magazine_group = "MagGroup_Uzi_45ACP",
        },
        SMG9 = {
            magazine_group = "MagGroup_Uzi_9x19mm",
        },
        MODELA9 = {
            barrel_length = 16,
            magazine_group = "MagGroup_Uzi_45ACP",
            features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.OPENBOLT,
        },
})


--************************************************************************--
-- rifles
--************************************************************************--

FirearmType:newCollection("AccuracyIntl_ArcticWarfare", {

        category = Const.RIFLE,
        soundProfile = "Rifle-Bolt",

        magazine_group = "MagGroup_ArcticWarfare",
        weight = 6.5,
        barrel_length = 26,
        model = "aiaw308",
        image = "Item_AccuracyIntl_AW",
        max_capacity = 5,

        classification = "IGUI_Firearm_BoltRifle",
        year = 1983,
        country = "IGUI_Firearm_Country_GB",
        manufacturer = "IGUI_Firearm_Manuf_AI",
        description = "IGUI_Firearm_Desc_AIAW308",

        features = Flags.SINGLEACTION + Flags.SAFETY + Flags.FREEFLOAT,
        feed_system = Flags.BOLT,
        Groups = { Group_AccuracyIntl_ArcticWarfare = 1, },
    },{ -- variants should include both AIAW308 and L96
})
--[[

register("L96", {
    features = Flags.SINGLEACTION + Flags.SAFETY + Flags.FREEFLOAT,
    feed_system = Flags.BOLT,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 26,
    isCivilian = Const.COMMON,
    soundProfile = "Rifle-Bolt",

    classification = "IGUI_Firearm_BoltRifle",
    year = 1982,
    country = "IGUI_Firearm_Country_GB",
    manufacturer = "IGUI_Firearm_Manuf_AI",
    description = "IGUI_Firearm_Desc_L96",
})
]]

FirearmType:newCollection("Armalite_AR10", {
        -- sources:
        -- https://en.wikipedia.org/wiki/AR-10
        -- https://www.ammoland.com/2011/10/historical-review-of-armalite/
        category = Const.RIFLE,
        soundProfile = "Rifle-AR",

        magazine_group = "MagGroup_AR10",
        weight = 3.3,
        barrel_length = 20.8,
        model = "ar10",
        image = "Armalite_AR10",
        max_capacity = 20,

        classification = "IGUI_Firearm_BattleRifle",
        year = 1956,
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_ALCOLT",
        description = "IGUI_Firearm_Desc_AR10",

        features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO,
        feed_system = Flags.AUTO + Flags.DIRECTGAS + Flags.GASVALVE,
    }, {
        Hollywood = {
            year = 1957,
            extra_features = Flags.PORTED,
            Groups = { Group_Armalite_AR10 = 1, Group_RareCollectables = 50 },
        },
        Sudanese = {
            weight = 3.3,
            year = 1958,
            extra_features = Flags.PORTED,
            Groups = { Group_Armalite_AR10 = 1, Group_RareCollectables = 2500 }, -- Most went to Sudan
        },
        Sudanese_762x39mm = {
            weight = 3.3,
            year = 1958,
            ammoGroup = "MagGroup_AR10_762x39mm",
            -- TODO: special mag group
            extra_features = Flags.PORTED,
            Groups = { Group_Armalite_AR10 = 1, Group_RareCollectables = 10 }, -- unknown numbers, very small
        },
        Sudanese_Carbine = {
            weight = 3.3,
            year = 1958,
            barrel_length = 16,
            extra_features = Flags.PORTED,
            Groups = { Group_Armalite_AR10 = 1, Group_RareCollectables = 30 }, -- 30 produced
        },
        Portuguese = {
            weight = 3.3,
            year = 1958,
            barrel_length = 16,
            extra_features = Flags.PORTED,
            Groups = { Group_Armalite_AR10 = 1, Group_RareCollectables = 4500 }, -- 4000-5000 produced
        },
        ModelA = {
            year = 1958,
            Groups = { Group_Armalite_AR10 = 1, Group_RareCollectables = 3 }, -- "prototype numbers", some references say 3
        },
})

FirearmType:newCollection("Colt_CAR15", {
        -- sources:
        -- https://en.wikipedia.org/wiki/M16_rifle
        -- https://en.wikipedia.org/wiki/List_of_Colt_AR-15_%26_M16_rifle_variants
        -- https://en.wikipedia.org/wiki/CAR-15
        -- https://en.wikipedia.org/wiki/M4_carbine
        -- https://en.wikipedia.org/wiki/ArmaLite_AR-15
        -- https://en.wikipedia.org/wiki/Colt_AR-15
        -- https://www.ammoland.com/2016/04/ar-15-rifle-historical-time-line/
        category = Const.RIFLE,
        soundProfile = "Rifle-AR",

        magazine_group = "MagGroup_STANAG",
        weight = 3.3,
        barrel_length = 20,
        model = "m16",
        image = "Colt_CAR15",
        max_capacity = 30,

        classification = "IGUI_Firearm_AssaultRifle",
        country = "IGUI_Firearm_Country_US",
        manufacturer = "IGUI_Firearm_Manuf_Colt",
        description = "IGUI_Firearm_Desc_M16",
        feed_system = Flags.AUTO + Flags.DIRECTGAS,
        features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO,

    }, {
        M601 = { -- Colt AR-15 Model 601
            year = 1959,
            Groups = { Group_Colt_CAR15 = 1 },
            extra_features = Flags.FULLAUTO,
        },

        M604 = { -- Colt M16 Model 604
            year = 1964,
            Groups = { Group_Colt_CAR15 = 1 },
            extra_features = Flags.FULLAUTO,
        },
        M603 = { -- Colt M16A1 Model 603
            year = 1967,
            Groups = { Group_Colt_CAR15 = 1 },
            extra_features = Flags.FULLAUTO,
        },
        M605A = { -- Colt CAR-15 Carbine Model 605A
            year = 1962,
            Groups = { Group_Colt_CAR15 = 1 },
            barrel_length = 15,
            extra_features = Flags.FULLAUTO,
        },
        M605B = { -- Colt CAR-15 Carbine Model 605B
            year = 1966,
            Groups = { Group_Colt_CAR15 = 1 },
            barrel_length = 15,
            extra_features = Flags.FULLAUTO + Flags.BURST3,
        },
        M607 = { -- Colt CAR-15 SMG Model 607
            year = 1966,
            barrel_length = 10,
            extra_features = Flags.FULLAUTO,
            Groups = { Group_Colt_CAR15 = 1, Group_RareCollectables = 50, }, -- 50 manufactured
        },
        M645 = { -- M16A2 Colt Model 645
            year = 1982,
            Groups = { Group_Colt_CAR15 = 1 },
            extra_features = Flags.BURST3,
        },
        M646 = { -- M16A3 Colt Model 646
            year = 1982,
            Groups = { Group_Colt_CAR15 = 1 },
            extra_features = Flags.FULLAUTO,
        },
        M945 = { -- M16A4 Colt Model 945
            year = 1998,
            Groups = { Group_Colt_CAR15 = 1 },
            extra_features = Flags.BURST3,
        },
        M920 = { -- M4 Model 920
            barrel_length = 14.5,
            image = "Colt_CAR15_M4",
            Groups = { Group_Colt_CAR15 = 1 },
            extra_features = Flags.BURST3,
            --classification = "IGUI_Firearm_AssaultCarbine",
            year = 1984,
            --country = "IGUI_Firearm_Country_US",
            --manufacturer = "IGUI_Firearm_Manuf_Colt",
            --description = "IGUI_Firearm_Desc_M4C",
        },
        M921 = { -- M4A1 Model 921
            barrel_length = 14.5,
            image = "Colt_CAR15_M4",
            Groups = { Group_Colt_CAR15 = 1 },
            extra_features = Flags.FULLAUTO,
        },
        M933 = { -- M4 Commando Model 933
            barrel_length = 11.5,
            image = "Colt_CAR15_M4",
            Groups = { Group_Colt_CAR15 = 1 },
            extra_features = Flags.FULLAUTO,
        },
        M935 = { -- M4 Commando Model 935
            barrel_length = 11.5,
            image = "Colt_CAR15_M4",
            Groups = { Group_Colt_CAR15 = 1 },
            extra_features = Flags.BURST3,
        },
})

FirearmType:newCollection("Colt_AR15", { -- civilian variants
    category = Const.RIFLE,
    soundProfile = "Rifle-AR",

    magazine_group = "MagGroup_STANAG",
    weight = 3.3,
    barrel_length = 20,  -- 16 (carbine), 20 (standard), 24 (target)
    model = "m16",
    image = "Colt_CAR15",
    max_capacity = 30,

    classification = "IGUI_Firearm_SemiRifle",
    year = 1963,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Colt",
    description = "IGUI_Firearm_Desc_AR15",

    feed_system = Flags.AUTO + Flags.DIRECTGAS,
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    Groups = { Group_Colt_AR15 = 1 },
    }, {

})

FirearmType:newCollection("Browning_BLR", {
    category = Const.RIFLE,
    soundProfile = "Rifle-Lever",

    magazine_group = "MagGroup_BLR",
    barrel_length = 22, -- 16, 18, 18.5, 20, 22, 24
    model = "blr",
    image = "Browning_BLR",
    max_capacity = 4,

    classification = "IGUI_Firearm_LeverRifle",
    year = 1969,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Browning",
    description = "IGUI_Firearm_Desc_BLR",

    features = Flags.SINGLEACTION + Flags.SAFETY,
    feed_system = Flags.LEVER,
    Groups = { Group_Browning_BLR = 1 }, 
    },{
})

FirearmType:newCollection("Norinco_Type56", {
	--sources:
	--https://en.wikipedia.org/wiki/Type_56_assault_rifle
	category = Const.RIFLE,
	soundProfile = "Rifle-AR",
	
	magazine_group = "MagGroup_AK",
	weight = 3.8,
	barrel_length = 16.3,
	model = "akm",
	image = "Norinco_AKM",
	max_capacity = 30,
	
	classification = "IGUI_Firearm_AssaultRifle",
	year = 1956,
	country = "IGUI_Firearm_Country_CN",
    manufacturer = "IGUI_Firearm_Manuf_NORINCO",
    description = "IGUI_Firearm_Desc_Type56",
	
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO,
    feed_system = Flags.AUTO + Flags.LONGGAS,
    Groups = { Group_Norinco_Type56 = 1 },
	
	--other stats
	--RoF 650 rpm
	--Milled receiver, in 1960 switched to stamped
	--differentiated from the AKm with the fully enclosed front sight
	--No threaded barrel, can't use AK compensator (commercial variants might)
	--Doesn't have a rate reducer so higher Rof than RU AKs
	--Blued
	--Most variants lack the side mount plate for the russian style sights
	--Wooden furniture
	--has a spike bayonet
	
	}, {
        Type56_I = { -- Type 56-I
			weight = 3.7,
			--image = "Norinco_AKMS"
			--no bayonet, underfolding metal stock for easy carrying
        },
        Type56S_I = { -- Type 56 Sporter I
			weight = 3.7,
			year = 1990,
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
			--Icon = "Norinco_AKMS"
			--no bayonet, underfolding metal stock for easy carrying, semi-auto, civilian
        },
        Type56_II = { -- Type 56-II
			weight = 3.9,
			year = 1980,
			--Icon = "Norinco_AKMS2" (need new icon for this)
			--Bakelite Furniture, sidefolding stock, cleaning kit inside of the stock
        },
        Type56_3 = { -- Type 56-3
			weight = 3.7,
			year = 1980,
			--Bakelite Furniture, cleaning kit inside of the stock, copy of type 56
        },
        Type56_4 = { -- Type 56-4
			weight = 3.9,
			year = 1980,
			--Icon = "Norinco_AKMS"
			--Bakelite Furniture, cleaning kit inside of the stock, copy of type 56-I
        },
        Type56C = { -- Type 56C
			weight = 2.9,
			barrelLength = 11,
			year = 1991,
			--AKA QBZ-56C
			--need new icon for very short version, looks like an AKS-74U (Maybe we have one)
			--no bayonet lug
        },
        Type56S = { -- Type 56 Sporter
			weight = 4.0,
			year = 1990,
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
			--semi-auto, civilian
			--Also known as the AK47S, AKS-762, MAK-90
			--need new icon for thumbhole stock version
        },	
        Type56SGalil = { -- Type 56 Sporter Galil Sidefolder
			weight = 3.7,
			year = 1990, -- can't verify this date definitively
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
			--semi-auto, civilian
			--Also known as the AK47S, AKS-762, MAK-90, has Galil sidefolding stock
			--need new icon
        },		
        Type56TheLegend = { -- Type 56 The Legend
			weight = 4.0,
			year = 1990, -- can't verify this date definitively
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
			--semi-auto, civilian
			--A Type 56 Sporter made to look like the Type-3 AK-47
        },		
        Type56M = { -- Type 56M
			weight = 4.8, --weight taken from the RPK it is patterned after
			year = 1980, -- can't verify this date definitively
			--comes with a RPD style bipod
        },		
        Type87S = { -- Type 87 Sporter
			weight = 4.8, --weight taken from the RPK it is patterned after
			year = 1987,
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
			--comes with a RPD style bipod
			--a civilian semi-auto version of the type 56m
			--AKA Type 86S-7 or NHM91
        },	
        Type87SNM = { -- Type 87 Sporter National Match
			weight = 4.8, --weight taken from the RPK it is patterned after
			year = 1991,
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
			--comes with a RPD style bipod
			--a civilian semi-auto version of the type 56m
			--Special Edition that comes with a milled receiver, scope and scope mount
        },		
        Type84 = { -- Type 84
			weight = 4.0,
			year = 1984,
			magazine_group = "MagGroup_AK556",
			--5.56 copy of the T56
        },			
        Type84_1 = { -- Type 84-1
			weight = 3.7,
			year = 1984,
			magazine_group = "MagGroup_AK556",
			--Icon = "Norinco_AKMS"
			--5.56 copy of the T56-I
        },		
        Type84_2 = { -- Type 84-2
			weight = 3.7,
			year = 1984,
			magazine_group = "MagGroup_AK556",
			--Icon = "Norinco_AKMS"
			--5.56 copy of the T56-II
        },	
        Type84_3 = { -- Type 84-3
			weight = 3.7,
			year = 1984,
			magazine_group = "MagGroup_AK556",
			--5.56 copy of the T56
			--Synthetic Furniture
        },
        Type84_4 = { -- Type 84-4
			weight = 3.7,
			year = 1984,
			magazine_group = "MagGroup_AK556",
			--5.56 copy of the T56-I
			--Icon = "Norinco_AKMS"
			--Synthetic Furniture, copy of the Type 56-I
        },
        Type84_5 = { -- Type 84-5
			weight = 3.9,
			year = 1984,
			magazine_group = "MagGroup_AK556",
			--5.56 copy of the T56-II
			--Icon = "Norinco_AKMS"
			--Synthetic Furniture, copy of the Type 56-II
        },
        Type84S = { -- Type 84 Sporter
			weight = 4.0,
			year = 1984,
			magazine_group = "MagGroup_AK556",
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
			--5.56 copy of the T56 Sporter
			--AKA AKS-223
			--Prefers .223 over 5.56
        },
})

FirearmType:newCollection("DIO_KL762", {
	--sources:
	--https://en.wikipedia.org/wiki/Defense_Industries_Organization
	--http://tonnel-ufo.ru/eanglish/weapon/automatic-assault-rifle-kl-7-62.php
	category = Const.RIFLE,
	soundProfile = "Rifle-AR",
	
	magazine_group = "MagGroup_AK",
	weight = 4.0, --per military.wikia.org
	barrel_length = 16.3,
	model = "akm",
	image = "Norinco_AKM",
	max_capacity = 30,
	
	classification = "IGUI_Firearm_AssaultRifle",
	year = 1990, -- Difficult to pin down but by my research it is after 1988.
	country = "IGUI_Firearm_Country_IR",
    manufacturer = "IGUI_Firearm_Manuf_DIO",
    description = "IGUI_Firearm_Desc_KL762",
	
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO,
    feed_system = Flags.AUTO + Flags.LONGGAS,
    Groups = { Group_DIO_KL762 = 1 },
	
	--other stats
	--RoF 650 rpm
	--Milled receiver, in 1960 switched to stamped
	--comes with a folding spike bayonet
	--differentiated from the AKm with the fully enclosed front sight
	--No threaded barrel, can't use AK compensator (commercial variants might)
	--Doesn't have a rate reducer so higher Rof than RU AKs
	--Blued finish, not oxide or parkerized
	--Most variants lack the side mount plate for the russian style sights
	--Plastic furniture
	--Pictanny Rails
	--ported gas tube
	--has a spike bayonet
	
	}, {
        KLF = { -- KLF-7.62
			weight = 3.7,
			--Icon = "Norinco_AKMS"
			--underfolding metal stock for easy carrying
        },
        KLT = { -- KLT-7.62
			weight = 3.9,
			year = 1980,
			--Icon = "Norinco_AKMS2" (need new icon for this)
			--sidefolding stock
        },
})

FirearmType:newCollection("Albanian_ASh78", {
	--sources:
	--https://en.wikipedia.org/wiki/Type_56_assault_rifle
	--https://guns.fandom.com/wiki/ASH_78
	--https://en.wikipedia.org/wiki/AK-47#Production
	--https://en.wikipedia.org/wiki/List_of_equipment_of_the_Albanian_Armed_Forces
	--http://aftermathgunclub.com/2015/04/20/albanian-small-arms/
	category = Const.RIFLE,
	soundProfile = "Rifle-AR",
	
	magazine_group = "MagGroup_AK",
	weight = 4.0, --per military.wikia.org
	barrel_length = 16.2,
	model = "akm",
	image = "Norinco_AKM",
	max_capacity = 30,
	
	classification = "IGUI_Firearm_AssaultRifle",
	year = 1978, 
	country = "IGUI_Firearm_Country_AL",
    manufacturer = "IGUI_Firearm_Manuf_PolAr",
    description = "IGUI_Firearm_Desc_ASh78",
	
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO,
    feed_system = Flags.AUTO + Flags.LONGGAS,
    Groups = { Group_ASh78 = 1 },
	
	--other stats
	--RoF 650 rpm
	--Milled receiver, in 1960 switched to stamped
	--comes with a folding spike bayonet
	--differentiated from the AKm with the fully enclosed front sight
	--No threaded barrel, can't use AK compensator (commercial variants might)
	--Doesn't have a rate reducer so higher Rof than RU AKs
	--Blued finish, not oxide or parkerized
	--Most variants lack the side mount plate for the russian style sights
	--Wood furniture
	--ported gas tube
	--has a spike bayonet
	--newer versions have handguard rails
    }, {
        ASh78_2 = { -- Albanian Automatiku Shqiptar 78-2
			weight = 4.1,
			barrel_length = 22.2,
			--no bayonet, has mount for grenade launcher underbarrel
        },
        ASh78_3 = { -- Albanian Automatiku Shqiptar 78-3
			weight = 4.3,
			barrel_length = 26.3,
			--no bayonet, has mount for grenade launcher underbarrel or a bipod
			--stock with bipod
        },
        ASh82 = { -- Albanian Automatiku Shqiptar 82
			weight = 3.7,
			year = 1982,
			--Icon = "Norinco_AKMS"
			--underfolding stock
			--has an optic rail (Ultimak scout rail)
        },
})

FirearmType:newCollection("MIC_MAZ", {
	--sources:
	--https://en.wikipedia.org/wiki/Type_56_assault_rifle
	--https://en.wikipedia.org/wiki/Military_Industry_Corporation
	--http://tonnel-ufo.ru/eanglish/weapon/automatic-assault-rifle-kl-7-62.php
	category = Const.RIFLE,
	soundProfile = "Rifle-AR",
	
	magazine_group = "MagGroup_AK",
	weight = 4.0, --per military.wikia.org
	barrel_length = 16.3,
	model = "akm",
	image = "Norinco_AKM",
	max_capacity = 30,
	
	classification = "IGUI_Firearm_AssaultRifle",
	year = 1993, -- Difficult to pin down but MIC was not established until 1993.
	country = "IGUI_Firearm_Country_SUD",
    manufacturer = "IGUI_Firearm_Manuf_MIC",
    description = "IGUI_Firearm_Desc_MAZ",
	
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO,
    feed_system = Flags.AUTO + Flags.LONGGAS,
    Groups = { Group_Kalashinkov = 1 },
	
	--other stats
	--RoF 650 rpm
	--Milled receiver, in 1960 switched to stamped
	--comes with a folding spike bayonet
	--differentiated from the AKm with the fully enclosed front sight
	--No threaded barrel, can't use AK compensator (commercial variants might)
	--Doesn't have a rate reducer so higher Rof than RU AKs
	--Blued finish, not oxide or parkerized
	--Most variants lack the side mount plate for the russian style sights
	--Wood furniture
	--ported gas tube
	--has a spike bayonet
    }, {
})

FirearmType:newCollection("Izhmash_AK_47", {
	--sources:
	--https://en.wikipedia.org/wiki/Kalashnikov_rifle
	--https://en.wikipedia.org/wiki/AK-47#Production
	--https://en.wikipedia.org/wiki/Kalashnikov_Concern#Izhmash
	--https://en.wikipedia.org/wiki/RPK
	--https://en.wikipedia.org/wiki/AK-74
	category = Const.RIFLE,
	soundProfile = "Rifle-AR",
	
	magazine_group = "MagGroup_AK",
	weight = 3.6,
	barrel_length = 16.3,
	model = "akm",
	image = "Norinco_AKM",
	max_capacity = 30,
	
	classification = "IGUI_Firearm_AssaultRifle",
	year = 1947,
	country = "IGUI_Firearm_Country_SU",
    manufacturer = "IGUI_Firearm_Manuf_Izhmash",
    description = "IGUI_Firearm_Desc_AK47",
	
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO,
    feed_system = Flags.AUTO + Flags.LONGGAS,
    Groups = { Group_Izhmash_AK_47 = 1 },
	
	--other stats
	--RoF 600 rpm
	--Rotary Bolt
	--chrome lined barrel
	--stamped receiver
	--comes with a folding spike bayonet
	--Most variants lack the side mount plate for the russian style sights
	--Wood furniture
	--has a spike bayonet
    }, {
        AKS = { -- Izhmash AKS-47 Type 1
			weight = 3.5,
			--underfolding steel stock
        },
        Type_2 = { -- Izhmash AK-47 Type 2
			year = 1951,
			--milled receiver
        },
        AKS_Type_2 = { -- Izhmash AKS-47 Type 2
			weight = 3.5,
			year = 1951,
			--milled receiver
			--underfolding steel stock
        },
        Type_3 = { -- Izhmash AK-47 Type 3
			weight = 3.47,
			year = 1954,
			--milled receiver, lightened
        },
        AKS_Type_3 = { -- Izhmash AKS-47 Type 3
			weight = 3.37,
			year = 1954,
			--milled receiver, lightened
			--underfolding steel stock
        },
        AKM = { -- Izhmash AKM
			weight = 3.1,
			year = 1959,
			--stamped receiver, lightened, slanted muzzle
        },
        AKMS = { -- Izhmash AKMS
			weight = 3.0,
			year = 1959,
			--stamped receiver, lightened, slanted muzzle
        },
        AKMN = { -- Izhmash AKMN
			weight = 3.1,
			year = 1959,
			--stamped receiver, lightened, slanted muzzle
			--Nightscope Rail
        },
        AKMSN = { -- Izhmash AKMSN
			weight = 3.0,
			year = 1959,
			--stamped receiver, lightened, slanted muzzle
			--Nightscope Rail
        },
        AKML = { -- Izhmash AKML
			weight = 3.1,
			year = 1959,
			--stamped receiver, lightened, slanted muzzle
			--Slotted flash suppressor and night scope rail
        },
        AKMSL = { -- Izhmash AKMSN
			weight = 3.0,
			year = 1959,
			--stamped receiver, lightened, slanted muzzle
			--Slotted flash suppressor and night scope rail
        },
        RPK = { -- Izhmash RPK
			weight = 4.8,
			year = 1961,
			barrel_length = 23.2,
			model = "rpk",
			image = "RPK",
			--LMG
        },
        RPKS = { -- Izhmash RPKS
			weight = 5.1,
			year = 1961,
			barrel_length = 23.2,
			model = "rpk",
			image = "RPK",
			--LMG
			--Side folding wood stock
        },
        RPKN = { -- Izhmash RPKN
			weight = 4.8,
			year = 1961,
			barrel_length = 23.2,
			model = "rpk",
			image = "RPK",
			--LMG
			--Night scope
        },
        RPKSN = { -- Izhmash RPKSN
			weight = 5.1,
			year = 1961,
			barrel_length = 23.2,
			model = "rpk",
			image = "RPK",
			--LMG
			--Side folding wood stock
			--Night scope
        },
        RPKL = { -- Izhmash RPKL
			weight = 4.8,
			year = 1961,
			barrel_length = 23.2,
			model = "rpk",
			image = "RPK",
			--LMG
			--Slotted flash suppressor and night scope rail
        },
        RPKSL = { -- Izhmash RPKSL
			weight = 5.1,
			year = 1961,
			barrel_length = 23.2,
			model = "rpk",
			image = "RPK",
			--LMG
			--Side folding wood stock
			--Slotted flash suppressor and night scope rail
        },
        AK_74 = { -- Izhmash AK-74
			weight = 3.07,
			year = 1974,
			magazine_group = "MagGroup_AK545",
			--chromelined barrel
			--AKM gas cylinder and receiver
        },
        AKS_74 = { -- Izhmash AKS-74
			weight = 2.97,
			year = 1974,
			magazine_group = "MagGroup_AK545",
			--chromelined barrel
			--Folding skeletonized stock
			--AKM gas cylinder and receiver
        },
        AK_74N = { -- Izhmash AK-74N
			weight = 3.07,
			year = 1974,
			magazine_group = "MagGroup_AK545",
			--chromelined barrel
			--AKM gas cylinder and receiver
			--night scope version
        },
        AKS_74N = { -- Izhmash AKS-74N
			weight = 2.97,
			year = 1974,
			magazine_group = "MagGroup_AK545",
			--chromelined barrel
			--Folding skeletonized stock
			--AKM gas cylinder and receiver
			--night scope version
        },
        AK_74M = { -- Izhmash AK-74M
			weight = 3.4,
			year = 1991,
			magazine_group = "MagGroup_AK545",
			--chromelined barrel
			--AKM gas cylinder and receiver
			--modernized and synthetic furniture
        },
        AKS_74M = { -- Izhmash AKS-74MN
			weight = 3.3,
			year = 1991,
			magazine_group = "MagGroup_AK545",
			--chromelined barrel
			--Folding skeletonized stock
			--AKM gas cylinder and receiver
        },
        AK_74MN = { -- Izhmash AK-74MN
			weight = 3.4,
			year = 1991,
			magazine_group = "MagGroup_AK545",
			--chromelined barrel
			--AKM gas cylinder and receiver
			--modernized and synthetic furniture
			--night scope version
        },
        AKS_74MN = { -- Izhmash AKS-74MN
			weight = 3.3,
			year = 1991,
			magazine_group = "MagGroup_AK545",
			--chromelined barrel
			--Folding skeletonized stock
			--AKM gas cylinder and receiver
			--night scope version
        },
        RPK_74 = { -- Izhmash RPK-74
			weight = 4.7,
			year = 1974,
			barrel_length = 23.2,
			magazine_group = "MagGroup_AK545",
			model = "rpk",
			image = "RPK",
			--LMG
        },
        RPKS_74 = { -- Izhmash RPKS-74
			weight = 4.85,
			year = 1974,
			barrel_length = 23.2,
			magazine_group = "MagGroup_AK545",
			model = "rpk",
			image = "RPK",
			--LMG
			--Side folding wood stock
        },
        RPK_74N = { -- Izhmash RPK-74N
			weight = 4.7,
			year = 1974,
			barrel_length = 23.2,
			magazine_group = "MagGroup_AK545",
			model = "rpk",
			image = "RPK",
			--LMG
			--night scope version
        },
        RPKS_74N = { -- Izhmash RPKS-74N
			weight = 4.85,
			year = 1974,
			barrel_length = 23.2,
			magazine_group = "MagGroup_AK545",
			model = "rpk",
			image = "RPK",
			--LMG
			--Side folding wood stock
			--night scope version
        },
        AKS_74U = { -- Izhmash AKS-74U
			weight = 2.7,
			year = 1979,
			barrel_length = 8.1,
			magazine_group = "MagGroup_AK545",
			model = "aks74u",
			image = "AK74u",
			--Short Carbine
			--Skeletonized metal folding stock
        },
        AKS_74UN = { -- Izhmash AKS-74UN
			weight = 2.7,
			year = 1979,
			barrel_length = 8.1,
			magazine_group = "MagGroup_AK545",
			model = "aks74u",
			image = "AK74u",
			--Short Carbine
			--Skeletonized metal folding stock
			--night scope version
        },
})

FirearmType:newCollection("Kalashnikov_AK_102", {
	--sources:
	--https://en.wikipedia.org/wiki/Kalashnikov_rifle
	--https://en.wikipedia.org/wiki/Kalashnikov_Concern#Izhmash
	--https://en.wikipedia.org/wiki/AK-101
	--https://en.wikipedia.org/wiki/AK-102
	--https://en.wikipedia.org/wiki/AK-103
	--https://en.wikipedia.org/wiki/AK-104
	--https://en.wikipedia.org/wiki/AK-105
	--http://www.military-today.com/firearms/rpk_200_series.htm
	--https://en.wikipedia.org/wiki/AK-12
	--https://en.wikipedia.org/wiki/AK-107
	--https://firearmcentral.fandom.com/wiki/AK-201
	--https://modernfirearms.net/en/assault-rifles/russia-assault-rifles/ak-308-2/
	category = Const.RIFLE,
	soundProfile = "Rifle-AR",
	
	magazine_group = "MagGroup_AK556",
	weight = 3.6,
	barrel_length = 16.3,
	model = "akm",
	image = "Norinco_AKM",
	max_capacity = 30,
	
	classification = "IGUI_Firearm_AssaultRifle",
	year = 1995,
	country = "IGUI_Firearm_Country_RU",
    manufacturer = "IGUI_Firearm_Manuf_Kal",
    description = "IGUI_Firearm_Desc_AK100",
	
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO,
    feed_system = Flags.AUTO + Flags.LONGGAS,
    Groups = { Group_Izhmash_AK_47 = 1 },
	
	--other stats
	--RoF 600 rpm
	--Rotary Bolt
	--chrome lined barrel
	--attachment rail
	--stamped receiver
	--Poly furniture, side-folding stock
	
    }, {
        AK_101_1 = { -- Kalashnikov AK-101-1
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SEMIAUTO,
			--civilian semi-auto version
        },
        AK_101_2 = { -- Kalashnikov AK-101-2
		    extra_features = Flags.BURST3,
        	--Adds the three round burst option to the selector
        },
        AK_102 = { -- Kalashnikov AK-102
			weight = 3.0,
			barrel_length = 12.4,
			--carbine version
        },
        AK_102_1 = { -- Kalashnikov AK-102-1
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SEMIAUTO,
			weight = 3.0,
			barrel_length = 12.4,
			--carbine version
        	--civilian semi-auto version
        },
        AK_102_2 = { -- Kalashnikov AK-102-2
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SEMIAUTO,
			weight = 3.0,
			barrel_length = 12.4,
		    extra_features = Flags.BURST3,
        	--carbine version
        	--Adds the three round burst option to the selector
        },
        RPK_201 = { -- Kalashnikov RPK_201
			weight = 5.2,
			barrel_length = 23.2,
			--LMG
        },
        AK_103 = { -- Kalashnikov AK-103
			weight = 3.4,
			magazine_group = "MagGroup_AK",
			year = 2001,
			--7.62 version
        },
        AK_103_1 = { -- Kalashnikov AK-103-1
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SEMIAUTO,
			weight = 3.4,
			magazine_group = "MagGroup_AK",
			year = 2001,
			--7.62 version
			--civilian semi-auto version
        },
        AK_103_2 = { -- Kalashnikov AK-103-2
		    extra_features = Flags.BURST3,
			weight = 3.4,
			magazine_group = "MagGroup_AK",
			year = 2001,
			--7.62 version
        	--Adds the three round burst option to the selector
        },
        AK_104 = { -- Kalashnikov AK-104
			weight = 3.0,
			magazine_group = "MagGroup_AK",
			barrel_length = 12.4,
			year = 2001,
			--carbine version
			--7.62 version
        },
        AK_104_1 = { -- Kalashnikov AK-104-1
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SEMIAUTO,
			weight = 3.0,
			magazine_group = "MagGroup_AK",
			barrel_length = 12.4,
			year = 2001,
			--carbine version
			--7.62 version
			--civilian semi-auto version
        },
        AK_104_2 = { -- Kalashnikov AK-104-2
		    extra_features = Flags.BURST3,
			weight = 3.0,
			magazine_group = "MagGroup_AK",
			barrel_length = 12.4,
			year = 2001,
			--carbine version
			--7.62 version
        	--Adds the three round burst option to the selector
        },
        RPK_203 = { -- Kalashnikov RPK_203
			weight = 5.2,
			barrel_length = 23.2,
			year = 2001,
			--LMG
        },
        AK_100 = { -- Kalashnikov AK-100
			weight = 3.4,
			magazine_group = "MagGroup_AK545",
			--5.45 version
        },
        AK_100_1 = { -- Kalashnikov AK-100-1
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SEMIAUTO,
			weight = 3.4,
			magazine_group = "MagGroup_AK545",
			--5.45 version
			--civilian semi-auto version
        },
        AK_100_2 = { -- Kalashnikov AK-100-2
		    extra_features = Flags.BURST3,
			weight = 3.4,
			magazine_group = "MagGroup_AK545",
			--5.45 version
        	--Adds the three round burst option to the selector
        },
        AK_105 = { -- Kalashnikov AK-105
			weight = 3.2,
			magazine_group = "MagGroup_AK545",
			barrel_length = 12.4,
			year = 2001,
			--carbine version
			--5.45 version
        },
        AK_105_1 = { -- Kalashnikov AK-105-1
			weight = 3.2,
			features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SEMIAUTO,
			magazine_group = "MagGroup_AK545",
			barrel_length = 12.4,
			year = 2001,
			--carbine version
			--5.45 version
			--civilian semi-auto version
        },
        AK_105_2 = { -- Kalashnikov AK-105-2
			weight = 3.2,
			extra_features = Flags.BURST3,
			magazine_group = "MagGroup_AK545",
			barrel_length = 12.4,
			year = 2001,
			--carbine version
			--5.45 version
			--Adds the three round burst option to the selector
        },
        AK_200 = { -- Kalashnikov AK-200
			weight = 3.4,
			magazine_group = "MagGroup_AK545",
			year = 2016,
			--Telescoping and folding stock
			--has stanag rails
			--Prototype
			--5.45 version
        },
        AK_205 = { -- Kalashnikov AK-205
			weight = 3.2,
			magazine_group = "MagGroup_AK545",
			barrel_length = 12.4,
			year = 2016,
			--Telescoping and folding stock
			--has stanag rails
			--Prototype
			--5.45 version
        },
        AK_201 = { -- Kalashnikov AK-201
			weight = 3.4,
			year = 2016,
			--Telescoping and folding stock
			--has stanag rails
			--Prototype
			--5.56 version
        },
        AK_202 = { -- Kalashnikov AK-202
			weight = 3.2,
			barrel_length = 12.4,
			year = 2016,
			--Telescoping and folding stock
			--has stanag rails
			--Prototype
			--5.56 version
        },
        AK_203 = { -- Kalashnikov AK-203
			weight = 3.4,
			year = 2016,
			magazine_group = "MagGroup_AK",
			--Telescoping and folding stock
			--has stanag rails
			--Prototype
			--5.56 version
        },
        AK_204 = { -- Kalashnikov AK-204
			weight = 3.2,
			barrel_length = 12.4,
			year = 2016,
			magazine_group = "MagGroup_AK",
			--Telescoping and folding stock
			--has stanag rails
			--Prototype
			--5.56 version
        },
        AK_107 = { -- Kalashnikov AK-107
			weight = 3.8,
			extra_features = Flags.BURST3,
			magazine_group = "MagGroup_AK545",
			year = 2001,
			--balanced gas system similar to the AEK-971
			--850 ROF 3rb
			--comes with 3RB selection
			--Auto reverts to 3rb whenever the trigger is released even if only 1 or 2 shots fired?
			--5.45 version
        },
        AK_108 = { -- Kalashnikov AK-108
			weight = 3.8,
			extra_features = Flags.BURST3,
			year = 2001,
			--balanced gas system similar to the AEK-971
			--900 ROF 5rb
			--comes with 3RB selection
			--Auto reverts to 3rb whenever the trigger is released even if only 1 or 2 shots fired?
			--5.56 version
        },
        AK_107 = { -- Kalashnikov AK-107
			weight = 3.8,
			extra_features = Flags.BURST3,
			magazine_group = "MagGroup_AK",
			year = 2001,
			--balanced gas system similar to the AEK-971
			--850 ROF 3rb
			--comes with 3RB selection
			--Auto reverts to 3rb whenever the trigger is released even if only 1 or 2 shots fired?
			--7.62 version
        },
        AK_12 = { -- Kalashnikov AK-12
			weight = 3.3,
			extra_features = Flags.BURST3,
			magazine_group = "MagGroup_AK545",
			year = 2018,
			--Rotating Bolt
			--Pictanny rail system on top and handguard
			--700 ROF cyclic, 1000 3rb
			--comes with 3RB selection
			--5.45 version
        },
        AK_12K = { -- Kalashnikov AK-12K
			weight = 3.1,
			extra_features = Flags.BURST3,
			barrel_length = 12.4,
			magazine_group = "MagGroup_AK545",
			year = 2018,
			--Rotating Bolt
			--Pictanny rail system on top and handguard
			--700 ROF cyclic, 1000 3rb
			--comes with 3RB selection
			--carbine version, using barrel length from other carbines and weight differential
			--5.45 version
        },
        AK_15 = { -- Kalashnikov AK-15
			weight = 3.3,
			extra_features = Flags.BURST3,
			magazine_group = "MagGroup_AK",
			year = 2018,
			--Rotating Bolt
			--Pictanny rail system on top and handguard
			--700 ROF cyclic, 1000 3rb
			--comes with 3RB selection
			--7.62 version
        },
        AK_15K = { -- Kalashnikov AK-15K
			weight = 3.1,
			extra_features = Flags.BURST3,
			barrel_length = 12.4,
			magazine_group = "MagGroup_AK",
			year = 2018,
			--Rotating Bolt
			--Pictanny rail system on top and handguard
			--700 ROF cyclic, 1000 3rb
			--comes with 3RB selection
			--carbine version, using barrel length from other carbines and weight differential
			--7.62 version
        },
        RPK_16 = { -- Kalashnikov RPK-16
			weight = 5.2,
			extra_features = Flags.BURST3,
			magazine_group = "MagGroup_AK545",
			barrel_length = 21.7,
			year = 2018,
			--Rotating Bolt
			--Pictanny rail system on top and handguard
			--modernized RPK-74
			--700 ROF cyclic, 1000 3rb
			--comes with 3RB selection
			--5.45 version
        },
        RPK_16K = { -- Kalashnikov RPK-16K
			weight = 5.0,
			extra_features = Flags.BURST3,
			magazine_group = "MagGroup_AK545",
			barrel_length = 14.6,
			year = 2018,
			--Rotating Bolt
			--Assault barrel length
			--Pictanny rail system on top and handguard
			--modernized RPK-74
			--700 ROF cyclic, 1000 3rb
			--comes with 3RB selection
			--5.45 version
        },
        AK_308 = { -- Kalashnikov AK-308
			weight = 4.1,
			extra_features = Flags.BURST3,
			magazine_group = "MagGroup_AK308",
			year = 2019,
			--Rotating Bolt
			--Pictanny rail system on top and handguard
			--700 ROF cyclic, 1000 3rb
			--comes with 3RB selection
			--7.62 version
        },
		--NEED TO ADD AK-9 when 9x39 is in there
})

FirearmType:newCollection("FNHerstal_FAL", {
	--sources:
	--https://en.wikipedia.org/wiki/FN_FAL
	category = Const.RIFLE,
	soundProfile = "Rifle-AR",
	
	magazine_group = "MagGroup_FAL_762x51mm",
	weight = 4.25,
	barrel_length = 21,
	model = "fnfal",
	image = "FNHerstal_FAL",
	max_capacity = 20,
	
	classification = "IGUI_Firearm_AssaultRifle",
	year = 1953,
	country = "IGUI_Firearm_Country_BE",
    manufacturer = "IGUI_Firearm_Manuf_FN",
    description = "IGUI_Firearm_Desc_FNFALA",
	display_name = "FN FAL 50.00"
	
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO,
    feed_system = Flags.AUTO + Flags.SHORTGAS,
    Groups = { Group_FNHertal_FAL = 1 },
		
	--other stats
	--tilting breechblock
	--RoF 700 rpm
	--Most come with bipods
	--wood furniture
	
    }, {
        FAL_5041 = { 
			display_name = "FN FAL 50.41"
			--AKA: FALO in France, C2A1 in Canada, L2A1 in Austria
			weight = 5.1,
			--synthetic furniture
			--heavy barrel
			--is a SAW
			--typiclly has a 30 round mag
        },
        FAL_5042 = { 
			display_name = "FN FAL 50.42"
			--AKA: FALO in France, C2A1 in Canada, L2A1 in Austria
			weight = 6,
			--wood furniture
			--heavy barrel
			--is a SAW
			--typiclly has a 30 round mag
        },
        FAL_5061 = { 
			display_name = "FN FAL 50.61"
			weight = 4.45,
			--folding steel stock
        },
        FAL_5062 = { 
			display_name = "FN FAL 50.62"
			weight = 4.3,
			barrel_length = 18,
			--folding steel stock
			--paratrooper
        },
        FAL_5063 = { 
			display_name = "FN FAL 50.63"
			weight = 3.75,
			barrel_length = 17.2,
			--folding steel stock
			--paratrooper
        },
        FAL_5064 = { 
			display_name = "FN FAL 50.64"
			weight = 3.9,
			--folding stock
			--aluminum alloy lower
        },
        Sturmgewehr_58 = { 
			display_name = "Sturmewehr 58"
			year = 1956,
			weight = 4.45,
			--plastic stock
			--folding bipod
        },
		-- NEED TO ADD 7.92x33mm Kurz version and .280 British variants
		
})

--[[
    --************************************************************************--
    -- rifles
    --************************************************************************--

register("FNFAL", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.AUTO + Flags.SHORTGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 21,
    isCivilian = Const.RARE,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_SemiRifle",
    year = 1982,
    country = "IGUI_Firearm_Country_AR",
    manufacturer = "IGUI_Firearm_Manuf_FMAP",
    description = "IGUI_Firearm_Desc_FNFAL",
})
register("FNFALA", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO,
    feed_system = Flags.AUTO + Flags.SHORTGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 21, -- 17.2, 18, 21
    barrelLengthOpt = { 17.2, 18, 21 },
    isCivilian = Const.VERYRARE,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_BattleRifle",
    year = 1953,
    country = "IGUI_Firearm_Country_BE",
    manufacturer = "IGUI_Firearm_Manuf_FN",
    description = "IGUI_Firearm_Desc_FNFALA",
})
register("Garand", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.AUTO + Flags.LONGGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 24,
    isCivilian = Const.COMMON,
    soundProfile = "Rifle-Auto",

    classification = "IGUI_Firearm_SemiRifle",
    year = 1934,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Springfield",
    description = "IGUI_Firearm_Desc_Garand",
})
register("HenryBB", {
    features = Flags.SINGLEACTION + Flags.SAFETY,
    feed_system = Flags.LEVER,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 20,
    isCivilian = Const.RARE,
    soundProfile = "Rifle-Lever",

    classification = "IGUI_Firearm_LeverRifle",
    year = 2001,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Henry",
    description = "IGUI_Firearm_Desc_HenryBB",
})
register("HK91", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.AUTO + Flags.DELAYEDBLOWBACK,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 19.7,
    isCivilian = Const.RARE,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_SemiRifle",
    year = 1974,
    country = "IGUI_Firearm_Country_DE",
    manufacturer = "IGUI_Firearm_Manuf_HK",
    description = "IGUI_Firearm_Desc_HK91",
})
register("HKG3", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO,
    feed_system = Flags.AUTO + Flags.DELAYEDBLOWBACK,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 17.7,
    isCivilian = Const.VERYRARE,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_BattleRifle",
    year = 1958,
    country = "IGUI_Firearm_Country_DE",
    manufacturer = "IGUI_Firearm_Manuf_HK",
    description = "IGUI_Firearm_Desc_HKG3",
})
register("HKSL8", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.FREEFLOAT,
    feed_system = Flags.AUTO + Flags.SHORTGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 20.08,
    isCivilian = Const.RARE,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_SemiRifle",
    year = 1998,
    country = "IGUI_Firearm_Country_DE",
    manufacturer = "IGUI_Firearm_Manuf_HK",
    description = "IGUI_Firearm_Desc_HKSL8",
})
register("LENo4", {
    features = Flags.SINGLEACTION + Flags.SAFETY,
    feed_system = Flags.BOLT,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 25.2,
    isCivilian = Const.COMMON,
    speedLoader = "LENo4StripperClip",
    soundProfile = "Rifle-Bolt",

    classification = "IGUI_Firearm_BoltRifle",
    year = 1941,
    country = "IGUI_Firearm_Country_GB",
    manufacturer = "IGUI_Firearm_Manuf_LBASS",
    description = "IGUI_Firearm_Desc_LENo4",
})
register("M16", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.BURST3,
    feed_system = Flags.AUTO + Flags.DIRECTGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 20,
    isPolice = Const.VERYRARE,
    isMilitary = Const.COMMON,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_AssaultRifle",
    year = 1964,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Colt",
    description = "IGUI_Firearm_Desc_M16",
})
register("M1903", {
    features = Flags.SINGLEACTION + Flags.SAFETY,
    feed_system = Flags.BOLT,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 24,
    isCivilian = Const.RARE,
    speedLoader = 'M1903StripperClip',
    soundProfile = "Rifle-Auto-IM",

    classification = "IGUI_Firearm_BoltRifle",
    year = 1903,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Springfield",
    description = "IGUI_Firearm_Desc_M1903",
})
register("M21", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.AUTO + Flags.SHORTGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 22,
    isPolice = Const.RARE,
    isMilitary = Const.RARE,
    soundProfile = "Rifle-Auto",

    classification = "IGUI_Firearm_SemiRifle",
    year = 1969,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_RIA",
    description = "IGUI_Firearm_Desc_M21",
})
register("M249", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.FULLAUTO + Flags.OPENBOLT,
    feed_system = Flags.AUTO + Flags.LONGGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 21, -- 18 or 21
    barrelLengthOpt = { 18, 21 },
    isMilitary = Const.RARE,
    soundProfile = "Rifle-Auto",
    clickSound = 'ORGMRifleEmpty',
    ejectSound = 'ORGMLMGOut',
    insertSound = 'ORGMLMGIn',
    rackSound = 'ORGMLMGRack',

    classification = "IGUI_Firearm_LMG",
    year = 1979,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_FN2",
    description = "IGUI_Firearm_Desc_M249",
})
register("M4C", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.BURST3,
    feed_system = Flags.AUTO + Flags.DIRECTGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 14.5,
    isPolice = Const.VERYRARE,
    isMilitary = Const.COMMON,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_AssaultCarbine",
    year = 1984,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Colt",
    description = "IGUI_Firearm_Desc_M4C",
})
register("Marlin60", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.AUTO + Flags.BLOWBACK,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 19, -- 19 or 22 (pre-1985)
    barrelLengthOpt = { 19, 22 },
    isCivilian = Const.COMMON,
    soundProfile = "Rifle-Auto-IM",
    rackSound = 'ORGMRifleRack',
    clickSound = 'ORGMSmallPistolEmpty',
    insertSound = 'ORGMMagLoad',

    classification = "IGUI_Firearm_SemiRifle",
    year = 1960,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Marlin",
    description = "IGUI_Firearm_Desc_Marlin60",
})
register("Mini14", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.AUTO + Flags.LONGGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 18.5, -- 16.12 (tactical), 18.5, 22 (target)
    barrelLengthOpt = { 16.12, 18.5, 22 },
    isCivilian = Const.COMMON,
    isPolice = Const.RARE,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_SemiRifle",
    year = 1973,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Ruger",
    description = "IGUI_Firearm_Desc_Mini14",
})
register("Mosin", {
    features = Flags.SINGLEACTION + Flags.SAFETY,
    feed_system = Flags.BOLT,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 29, -- 22.2 carbine, 26.2, 29
    barrelLengthOpt = { 22.2, 26.2, 29 },
    isCivilian = Const.COMMON,
    speedLoader = 'MosinStripperClip',
    soundProfile = "Rifle-Bolt-IM",

    classification = "IGUI_Firearm_BoltRifle",
    year = 1891,
    country = "IGUI_Firearm_Country_RUSEMP",
    manufacturer = "IGUI_Firearm_Manuf_Tula",
    description = "IGUI_Firearm_Desc_Mosin",
})
register("R25", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.FREEFLOAT + Flags.NOSIGHTS,
    feed_system = Flags.AUTO + Flags.DIRECTGAS,

    lastChanged = 27,
    category = Const.RIFLE,
    barrel_length = 20,
    isCivilian = Const.RARE,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_SemiRifle",
    year = 2008,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_RA",
    description = "IGUI_Firearm_Desc_R25",
})
register("Rem700", {
    features = Flags.SINGLEACTION + Flags.SAFETY,
    feed_system = Flags.BOLT,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 24, -- varies widely from 16.5 to 26 depending on model and caliber. the .30-06's seem mostly in 24"
    barrelLengthOpt = {16.5, 18, 20, 22, 24, 26 },
    isCivilian = Const.COMMON,
    isPolice = Const.RARE,
    soundProfile = "Rifle-Bolt-IM",

    classification = "IGUI_Firearm_BoltRifle",
    year = 1962,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_RA",
    description = "IGUI_Firearm_Desc_Rem700",
})
register("Rem788", {
    features = Flags.SINGLEACTION + Flags.SAFETY,
    feed_system = Flags.BOLT,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 24, -- 18.5, 22, 24
    barrelLengthOpt = { 18.5, 22, 24 },
    isCivilian = Const.COMMON,
    soundProfile = "Rifle-Bolt",

    classification = "IGUI_Firearm_BoltRifle",
    year = 1967,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_RA",
    description = "IGUI_Firearm_Desc_Rem788",
})
register("Rug1022", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.AUTO + Flags.BLOWBACK,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 18.5,
    isCivilian = Const.COMMON,
    soundProfile = "Pistol",

    classification = "IGUI_Firearm_SemiRifle",
    year = 1964,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Ruger",
    description = "IGUI_Firearm_Desc_Rug1022",
})
register("SA80", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO + Flags.BULLPUP,
    feed_system = Flags.AUTO + Flags.SHORTGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 20.4, -- 11.2, 20.4, 25.4
    barrelLengthOpt = { 11.2, 20.4, 25.4 },
    isMilitary = Const.RARE,
    soundProfile = "Rifle-AR",
    isBulpup = true,

    classification = "IGUI_Firearm_AssaultRifle",
    year = 1985,
    country = "IGUI_Firearm_Country_GB",
    manufacturer = "IGUI_Firearm_Manuf_RSAF",
    description = "IGUI_Firearm_Desc_SA80",
})
register("SIG550", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO + Flags.BURST3,
    feed_system = Flags.AUTO + Flags.LONGGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 20.8,
    isCivilian = Const.VERYRARE,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_AssaultRifle",
    year = 1986,
    country = "IGUI_Firearm_Country_CH",
    manufacturer = "IGUI_Firearm_Manuf_SIG2",
    description = "IGUI_Firearm_Desc_SIG550",
})
register("SIG551", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.SELECTFIRE + Flags.SEMIAUTO + Flags.FULLAUTO + Flags.BURST3,
    feed_system = Flags.AUTO + Flags.LONGGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 20.8,
    isCivilian = Const.VERYRARE,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_AssaultCarbine",
    year = 1986,
    country = "IGUI_Firearm_Country_CH",
    manufacturer = "IGUI_Firearm_Manuf_SIG2",
    description = "IGUI_Firearm_Desc_SIG551",
})
register("SKS", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.AUTO + Flags.SHORTGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 20, -- 20 or 22
    barrelLengthOpt = { 20, 22 },
    isCivilian = Const.COMMON,
    speedLoader = 'SKSStripperClip',
    soundProfile = "Rifle-Auto-IM",

    classification = "IGUI_Firearm_SemiCarbine",
    year = 1945,
    country = "IGUI_Firearm_Country_SU",
    manufacturer = "IGUI_Firearm_Manuf_Tula",
    description = "IGUI_Firearm_Desc_SKS",
})
register("SR25", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY + Flags.FREEFLOAT + Flags.NOSIGHTS,
    feed_system = Flags.AUTO + Flags.DIRECTGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 24,
    isPolice = Const.RARE,
    isMilitary = Const.COMMON,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_SemiRifle",
    year = 1990,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_KAC",
    description = "IGUI_Firearm_Desc_SR25",
})
register("SVD", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.AUTO + Flags.SHORTGAS,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 24.4,
    isCivilian = Const.RARE,
    soundProfile = "Rifle-Auto",

    classification = "IGUI_Firearm_SemiRifle",
    year = 1963,
    country = "IGUI_Firearm_Country_SU",
    manufacturer = "IGUI_Firearm_Manuf_Kal2",
    description = "IGUI_Firearm_Desc_SVD",
})
register("WinM70", {
    features = Flags.SINGLEACTION + Flags.SAFETY,
    feed_system = Flags.BOLT,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 24, -- 22, 24, 26
    barrelLengthOpt = { 22, 24, 26 },
    isCivilian = Const.COMMON,
    isMilitary = Const.RARE,
    soundProfile = "Rifle-Bolt-IM",

    classification = "IGUI_Firearm_BoltRifle",
    year = 1936,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_WRA",
    description = "IGUI_Firearm_Desc_WinM70",
})
register("WinM94", {
    features = Flags.DOUBLEACTION + Flags.SAFETY,
    feed_system = Flags.LEVER,

    lastChanged = 24,
    category = Const.RIFLE,
    barrel_length = 20,
    isCivilian = Const.COMMON,
    soundProfile = "Rifle-Lever",

    classification = "IGUI_Firearm_LeverRifle",
    year = 1894,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_WRA",
    description = "IGUI_Firearm_Desc_WinM94",
})
    --************************************************************************--
    -- shotguns
    --************************************************************************--

register("BenelliM3", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.PUMP + Flags.AUTO + Flags.LONGRECOIL,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 22, -- 20 22, 24
    barrelLengthOpt = { 20, 22, 24 },
    isPolice = Const.COMMON,
    soundProfile = "Shotgun",

    classification = "IGUI_Firearm_DualShotgun",
    year = 1989,
    country = "IGUI_Firearm_Country_IT",
    manufacturer = "IGUI_Firearm_Manuf_Benelli",
    description = "IGUI_Firearm_Desc_BenelliM3",
})
register("BenelliM3SO", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.PUMP + Flags.AUTO + Flags.LONGRECOIL,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 18, -- cant saw off much with that magazine tube, the connecting brace is very forward
    soundProfile = "Shotgun",

    classification = Firearm.getDesign("BenelliM3").classification,
    year = Firearm.getDesign("BenelliM3").year,
    country = Firearm.getDesign("BenelliM3").country,
    manufacturer = Firearm.getDesign("BenelliM3").manufacturer,
    description = Firearm.getDesign("BenelliM3").description,
})
register("BenelliXM1014", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.AUTO + Flags.LONGRECOIL,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 18.5,
    isMilitary = Const.COMMON,
    soundProfile = "Shotgun",
    rackSound = 'ORGMARRack',

    classification = "IGUI_Firearm_SemiShotgun",
    year = 1999,
    country = "IGUI_Firearm_Country_IT",
    manufacturer = "IGUI_Firearm_Manuf_Benelli",
    description = "IGUI_Firearm_Desc_BenelliXM1014"
})
register("Hawk982", {
    features = Flags.DOUBLEACTION + Flags.SAFETY,
    feed_system = Flags.PUMP,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 18.5,
    isCivilian = Const.COMMON,
    soundProfile = "Shotgun",

    classification = "IGUI_Firearm_PumpShotgun",
    year = 2008,
    country = "IGUI_Firearm_Country_CN",
    manufacturer = "IGUI_Firearm_Manuf_NORINCO",
    description = "IGUI_Firearm_Desc_Hawk982",
})
register("Ithaca37", {
    features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLAMFIRE,
    feed_system = Flags.PUMP,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 20, -- 18.5, 20, -- all the way up to 30
    barrelLengthOpt = { 18.5, 20, 22, 24, 26, 28, 30 },
    isCivilian = Const.COMMON,
    soundProfile = "Shotgun",

    classification = "IGUI_Firearm_PumpShotgun",
    year = 1937,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Ithaca",
    description = "IGUI_Firearm_Desc_Ithaca37",
})
register("Ithaca37SO", {
    features = Flags.DOUBLEACTION + Flags.SAFETY + Flags.SLAMFIRE,
    feed_system = Flags.PUMP,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 14, -- sawn off
    isCivilian = Const.COMMON,
    soundProfile = "Shotgun",

    classification = Firearm.getDesign("Ithaca37").classification,
    year = Firearm.getDesign("Ithaca37").year,
    country = Firearm.getDesign("Ithaca37").country,
    manufacturer = Firearm.getDesign("Ithaca37").manufacturer,
    description = Firearm.getDesign("Ithaca37").description,
})
register("M1216", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.AUTO + Flags.DELAYEDBLOWBACK,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 18,
    isCivilian = Const.RARE,
    soundProfile = "Rifle-AR",

    classification = "IGUI_Firearm_SemiShotgun",
    year = 2012,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_SRM",
    description = "IGUI_Firearm_Desc_M1216",
})
register("Moss590", {
    features = Flags.DOUBLEACTION + Flags.SAFETY,
    feed_system = Flags.PUMP,

    lastChanged = 27,
    category = Const.SHOTGUN,
    barrel_length = 20,
    isCivilian = Const.COMMON,
    soundProfile = "Shotgun",

    classification = "IGUI_Firearm_PumpShotgun",
    year = 1960,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_Moss",
    description = "IGUI_Firearm_Desc_Moss590",
})
register("Moss590SO", {
    features = Flags.DOUBLEACTION + Flags.SAFETY,
    feed_system = Flags.PUMP,

    lastChanged = 27,
    category = Const.SHOTGUN,
    barrel_length = 18.5,
    isCivilian = Const.COMMON,
    soundProfile = "Shotgun",

    classification = Firearm.getDesign("Moss590").classification,
    year = Firearm.getDesign("Moss590").year,
    country = Firearm.getDesign("Moss590").country,
    manufacturer = Firearm.getDesign("Moss590").manufacturer,
    description = Firearm.getDesign("Moss590").description,
})
register("Rem870", {
    features = Flags.DOUBLEACTION + Flags.SAFETY,
    feed_system = Flags.PUMP,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 26,
    barrelLengthOpt = {20, 22, 24, 26 },
    isCivilian = Const.COMMON,
    isPolice = Const.COMMON,
    soundProfile = "Shotgun",

    classification = "IGUI_Firearm_PumpShotgun",
    year = 1951,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_RA",
    description = "IGUI_Firearm_Desc_Rem870"
})
register("Rem870SO", {
    features = Flags.DOUBLEACTION + Flags.SAFETY,
    feed_system = Flags.PUMP,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 14,
    isCivilian = Const.COMMON,
    soundProfile = "Shotgun",

    classification = Firearm.getDesign("Rem870").classification,
    year = Firearm.getDesign("Rem870").year,
    country = Firearm.getDesign("Rem870").country,
    manufacturer = Firearm.getDesign("Rem870").manufacturer,
    description = Firearm.getDesign("Rem870").description,
})
register("Silverhawk", {
    features = Flags.SINGLEACTION + Flags.SAFETY,
    feed_system = Flags.BREAK,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 28,
    isCivilian = Const.COMMON,
    soundProfile = "Shotgun-Break",

    classification = "IGUI_Firearm_DoubleShotgun",
    year = 1996,
    country = "IGUI_Firearm_Country_IT",
    manufacturer = "IGUI_Firearm_Manuf_Beretta",
    description = "IGUI_Firearm_Desc_Silverhawk",
})
register("SilverHawkSO", {
    features = Flags.SINGLEACTION + Flags.SAFETY,
    feed_system = Flags.BREAK,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 10,
    isCivilian = Const.COMMON,
    soundProfile = "Shotgun-Break",

    classification = Firearm.getDesign("Silverhawk").classification,
    year = Firearm.getDesign("Silverhawk").year,
    country = Firearm.getDesign("Silverhawk").country,
    manufacturer = Firearm.getDesign("Silverhawk").manufacturer,
    description = Firearm.getDesign("Silverhawk").description
})
register("Spas12", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.PUMP + Flags.AUTO + Flags.SHORTGAS,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 21.5, -- 18, 19-7/8,21.5, 24 -- 21.5 is the shortest we can go with our mag tube
    barrelLengthOpt = { 21.5, 24 },
    isCivilian = Const.RARE,
    isPolice = Const.RARE,
    isMilitary = Const.RARE,
    soundProfile = "Shotgun",

    classification = "IGUI_Firearm_DualShotgun",
    year = 1979,
    country = "IGUI_Firearm_Country_IT",
    manufacturer = "IGUI_Firearm_Manuf_Luigi",
    description = "IGUI_Firearm_Desc_Spas12",
})
register("Stevens320", {
    features = Flags.DOUBLEACTION + Flags.SAFETY,
    feed_system = Flags.PUMP,

    lastChanged = 28,
    category = Const.SHOTGUN,
    barrel_length = 18.5,
    isCivilian = Const.COMMON,
    soundProfile = "Shotgun",

    classification = "IGUI_Firearm_PumpShotgun",
    year = 2012,
    country = "IGUI_Firearm_Country_CN",
    manufacturer = "IGUI_Firearm_Manuf_SA",
    description = "IGUI_Firearm_Desc_Stevens320"
})
register("Striker", {
    features = Flags.DOUBLEACTION + Flags.SAFETY,
    feed_system = Flags.ROTARY,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 18.5, -- 7.5, 12, 14, 18.5
    barrelLengthOpt = { 7.5, 12, 14, 18.5 },
    isCivilian = Const.VERYRARE,
    soundProfile = "Shotgun",
    rackSound = 'ORGMARRack',

    classification = "IGUI_Firearm_SemiShotgun",
    year = 1983,
    country = "IGUI_Firearm_Country_ZA",
    manufacturer = "IGUI_Firearm_Manuf_ASARDI",
    description = "IGUI_Firearm_Desc_Striker",
})
register("VEPR12", {
    features = Flags.DOUBLEACTION + Flags.SLIDELOCK + Flags.SAFETY,
    feed_system = Flags.AUTO + Flags.SHORTGAS,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 22.44, -- 19, 22.44, 26.5
    barrelLengthOpt = { 19, 22.44, 26.5 },
    isCivilian = Const.RARE,
    soundProfile = "Rifle-AR",
    clickSound = 'ORGMShotgunEmpty',

    classification = "IGUI_Firearm_SemiShotgun",
    year = 2003,
    country = "IGUI_Firearm_Country_RU",
    manufacturer = "IGUI_Firearm_Manuf_Molot",
    description = "IGUI_Firearm_Desc_VEPR12",
})
register("Win1887", {
    features = Flags.DOUBLEACTION + Flags.SAFETY,
    feed_system = Flags.LEVER,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 30, -- 18, 20, 30
    barrelLengthOpt = { 18, 20, 30 },
    isCivilian = Const.VERYRARE,
    soundProfile = "Shotgun-Lever",

    classification = "IGUI_Firearm_LeverShotgun",
    year = 1887,
    country = "IGUI_Firearm_Country_US",
    manufacturer = "IGUI_Firearm_Manuf_WRA",
    description = "IGUI_Firearm_Desc_Win1887"
})
register("Win1887SO", {
    features = Flags.DOUBLEACTION + Flags.SAFETY,
    feed_system = Flags.LEVER,

    lastChanged = 24,
    category = Const.SHOTGUN,
    barrel_length = 14,
    soundProfile = "Shotgun-Lever",

    classification = Firearm.getDesign("Win1887").classification,
    year = Firearm.getDesign("Win1887").year,
    country = Firearm.getDesign("Win1887").country,
    manufacturer = Firearm.getDesign("Win1887").manufacturer,
    description = Firearm.getDesign("Win1887").description,
})
]]
-- ORGM[15] = "138363034"
Logger.info("All default firearms registered.")
