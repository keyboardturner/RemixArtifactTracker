local _, rat = ...
rat.L = {}
local L = rat.L

local ClassName = UnitClass("player")
local function GetRaceName(raceID)
	local raceData = C_CreatureInfo.GetRaceInfo(raceID)
	local raceName
	if raceData and raceData.raceName then
		raceName = raceData.raceName
	end
	return raceName
end

local LOCALE = GetLocale()

if LOCALE == "enUS" then
	L["Addon_Title"] = "Remix Artifact Tracker"
	L["Addon_Notes"] = "Adds an artifact appearance tab to the artifact weapons for Legion Remix"
	L["SlashCmd1"] = "/rat"
	L["SlashCmd2"] = "/rat"
	L["SlashCmd3"] = "/remixartifact"

	L["Traits"] = ARTIFACTS_PERK_TAB
	L["Appearances"] = ARTIFACTS_APPEARANCE_TAB
	L["ShowSecondary"] = "Show Secondary"
	L["ShowSecondaryTT"] = "Display the secondary model tied to this set."
	L["RaceNightElf"] = GetRaceName(4)
	L["RaceHaranir"] = GetRaceName(86)
	L["RaceTauren"] = GetRaceName(6)
	L["RaceHMTauren"] = GetRaceName(28)
	L["RaceTroll"] = GetRaceName(8)
	L["RaceZandalari"] = GetRaceName(31)
	L["RaceWorgen"] = GetRaceName(22)
	L["RaceKulTiran"] = GetRaceName(32)
	L["RaceGroup1"] = L["RaceNightElf"] -- .. ", " .. L["RaceHaranir"] -- (maybe for future?)
	L["RaceGroup2"] = L["RaceTauren"] .. ", " .. L["RaceHMTauren"]
	L["RaceGroup3"] = L["RaceTroll"] .. ", " .. L["RaceZandalari"]
	L["RaceGroup4"] = L["RaceWorgen"] .. ", " .. L["RaceKulTiran"]
	L["Artifact"] = ITEM_QUALITY6_DESC
	L["Unavailable"] = UNAVAILABLE
	L["NoLongerAvailable"] = NO_LONGER_AVAILABLE

	L["TraitRow1Temp_Classic"]		 = "Classic"
	L["TraitRow2Temp_Upgraded"]		 = "Upgraded"
	L["TraitRow3Temp_Valorous"]		 = "Valorous"
	L["TraitRow4Temp_War-torn"]		 = "War-torn"
	L["TraitRow5Temp_Challenging"]	 = "Challenging"
	L["TraitRow6Temp_Hidden"]		 = "Hidden"

	--classic
	L["TraitRow1Tint1Req"] = ""
	L["TraitRow1Tint2Req"] = "Recover one of the Pillars of Creation."
	L["TraitRow1Tint3Req"] = "Recover Light's Heart and bring it to the safety of your Order Hall."
	L["TraitRow1Tint4Req"] = "Complete the first major campaign effort with your order."

	--upgraded
	L["TraitRow2Tint1Req"] = string.format("Complete the %s class hall campaign.", ClassName)
	L["TraitRow2Tint2Req"] = string.format("Complete the %s class hall campaign.", ClassName)
	L["TraitRow2Tint3Req"] = string.format("Complete the %s class hall campaign.", ClassName)
	L["TraitRow2Tint4Req"] = "Complete the achievement, \"This Side Up.\""

	--valorous
	L["TraitRow3Tint1Req"] = "Complete the quest line, \"Balance of Power.\""
	L["TraitRow3Tint2Req"] = "Complete the achievement, \"Unleashed Monstrosities.\"\n\nComplete the quest line, \"Balance of Power.\""
	L["TraitRow3Tint3Req"] = "Complete a Mythic Mode Dungeon using a level 5 keystone.\n\nComplete the quest line, \"Balance of Power.\""
	L["TraitRow3Tint4Req"] = "Complete the achievement, \"Glory of the Legion Hero.\"\n\nComplete the quest line, \"Balance of Power.\""

	--war-torn
	L["TraitRow4Tint1Req"] = "Participate in Player vs. Player combat and reach Honor Level 10."
	L["TraitRow4Tint2Req"] = "Reach Honor Level 30."
	L["TraitRow4Tint3Req"] = "Reach Honor Level 50."
	L["TraitRow4Tint4Req"] = "Reach Honor Level 80."

	--challenging (swapped with Hidden)
	L["TraitRow5Tint1Req_THR"] = "Complete the quest line, \"The Highlord's Return.\""
	L["TraitRow5Tint2Req_THR"] = "Defeat Heroic Kil'jaeden after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"The Highlord's Return.\""
	L["TraitRow5Tint3Req_THR"] = "Win 10 rated battlegrounds after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"The Highlord's Return.\""
	L["TraitRow5Tint4Req_THR"] = "Complete 10 different Legion dungeons after unlocking a challenge appearance.\n\nComplete the quest line, \"The Highlord's Return.\""

	L["TraitRow5Tint1Req_XC"] = "Complete the quest line, \"Xylem Challenge.\""
	L["TraitRow5Tint2Req_XC"] = "Defeat Heroic Kil'jaeden after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"Xylem Challenge.\""
	L["TraitRow5Tint3Req_XC"] = "Win 10 rated battlegrounds after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"Xylem Challenge.\""
	L["TraitRow5Tint4Req_XC"] = "Complete 10 different Legion dungeons after unlocking a challenge appearance.\n\nComplete the quest line, \"Xylem Challenge.\""

	L["TraitRow5Tint1Req_IMC"] = "Complete the quest line, \"Imp Mother Challenge.\""
	L["TraitRow5Tint2Req_IMC"] = "Defeat Heroic Kil'jaeden after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"Imp Mother Challenge.\""
	L["TraitRow5Tint3Req_IMC"] = "Win 10 rated battlegrounds after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"Imp Mother Challenge.\""
	L["TraitRow5Tint4Req_IMC"] = "Complete 10 different Legion dungeons after unlocking a challenge appearance.\n\nComplete the quest line, \"Imp Mother Challenge.\""

	L["TraitRow5Tint1Req_TC"] = "Complete the quest line, \"Twins Challenge.\""
	L["TraitRow5Tint2Req_TC"] = "Defeat Heroic Kil'jaeden after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"Twins Challenge.\""
	L["TraitRow5Tint3Req_TC"] = "Win 10 rated battlegrounds after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"Twins Challenge.\""
	L["TraitRow5Tint4Req_TC"] = "Complete 10 different Legion dungeons after unlocking a challenge appearance.\n\nComplete the quest line, \"Twins Challenge.\""

	L["TraitRow5Tint1Req_TBRT"] = "Complete the quest line, \"The Black Rook Threat.\""
	L["TraitRow5Tint2Req_TBRT"] = "Defeat Heroic Kil'jaeden after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"The Black Rook Threat.\""
	L["TraitRow5Tint3Req_TBRT"] = "Win 10 rated battlegrounds after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"The Black Rook Threat.\""
	L["TraitRow5Tint4Req_TBRT"] = "Complete 10 different Legion dungeons after unlocking a challenge appearance.\n\nComplete the quest line, \"The Black Rook Threat.\""

	L["TraitRow5Tint1Req_TFWM"] = "Complete the quest line, \"The Fel Worm Menace.\""
	L["TraitRow5Tint2Req_TFWM"] = "Defeat Heroic Kil'jaeden after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"The Fel Worm Menace.\""
	L["TraitRow5Tint3Req_TFWM"] = "Win 10 rated battlegrounds after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"The Fel Worm Menace.\""
	L["TraitRow5Tint4Req_TFWM"] = "Complete 10 different Legion dungeons after unlocking a challenge appearance.\n\nComplete the quest line, \"The Fel Worm Menace.\""

	L["TraitRow5Tint1Req_GQC"] = "Complete the quest line, \"God-Queen Challenge.\""
	L["TraitRow5Tint2Req_GQC"] = "Defeat Heroic Kil'jaeden after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"God-Queen Challenge.\""
	L["TraitRow5Tint3Req_GQC"] = "Win 10 rated battlegrounds after unlocking a challenge artifact appearance.\n\nComplete the quest line, \"God-Queen Challenge.\""
	L["TraitRow5Tint4Req_GQC"] = "Complete 10 different Legion dungeons after unlocking a challenge appearance.\n\nComplete the quest line, \"God-Queen Challenge.\""

	--hidden (swapped with Challenging)
	L["TraitRow6Tint1Req"] = ""
	L["TraitRow6Tint2Req"] = "Complete 30 Legion dungeons after unlocking a hidden artifact appearance."
	L["TraitRow6Tint3Req"] = "Complete 200 World Quests after unlocking a hidden artifact appearance."
	L["TraitRow6Tint4Req"] = "Kill 1,000 enemy players after unlocking a hidden artifact appearance."

	--Demon Hunter
	L["TraitRow1_DemonHunter_Havoc_Classic"]		 = "Twinblades of the Deceiver"
	L["TraitRow2_DemonHunter_Havoc_Upgraded"]		 = "Hand of the Illidari"
	L["TraitRow3_DemonHunter_Havoc_Valorous"]		 = "Darkenblade"
	L["TraitRow4_DemonHunter_Havoc_War-torn"]		 = "Demon's Touch"
	L["TraitRow5_DemonHunter_Havoc_Challenging"]	 = "Flamereaper"
	L["TraitRow6_DemonHunter_Havoc_Hidden"]			 = "Deathwalker"

	L["TraitRow1_DemonHunter_Vengeance_Classic"]	 = "Aldrachi Warblades"
	L["TraitRow2_DemonHunter_Vengeance_Upgraded"]	 = "Illidari Crest"
	L["TraitRow3_DemonHunter_Vengeance_Valorous"]	 = "Dreadlord's Bite"
	L["TraitRow4_DemonHunter_Vengeance_War-torn"]	 = "Boneterror"
	L["TraitRow5_DemonHunter_Vengeance_Challenging"] = "Umberwing"
	L["TraitRow6_DemonHunter_Vengeance_Hidden"]		 = "Iron Warden"

	--Paladin
	L["TraitRow1_Paladin_Retribution_Classic"]		 = "Ashbringer"
	L["TraitRow2_Paladin_Retribution_Upgraded"]		 = "Greatsword of the Righteous"
	L["TraitRow3_Paladin_Retribution_Valorous"]		 = "Burning Reprisal"
	L["TraitRow4_Paladin_Retribution_War-torn"]		 = "Fallen Hope"
	L["TraitRow5_Paladin_Retribution_Challenging"]	 = "Shattered Reckoning"
	L["TraitRow6_Paladin_Retribution_Hidden"]		 = "Corrupted Remembrance"

	L["TraitRow1_Paladin_Holy_Classic"]				 = "The Silver Hand"
	L["TraitRow2_Paladin_Holy_Upgraded"]			 = "Fist of the Fallen Watcher"
	L["TraitRow3_Paladin_Holy_Valorous"]			 = "Protector's Judgment"
	L["TraitRow4_Paladin_Holy_War-torn"]			 = "Gravewarder"
	L["TraitRow5_Paladin_Holy_Challenging"]			 = "Justice's Flame"
	L["TraitRow6_Paladin_Holy_Hidden"]				 = "Watcher's Armament"

	L["TraitRow1_Paladin_Protection_Classic"]		 = "Truthguard"
	L["TraitRow2_Paladin_Protection_Upgraded"]		 = "Light of the Titans"
	L["TraitRow3_Paladin_Protection_Valorous"]		 = "Divine Protector"
	L["TraitRow4_Paladin_Protection_War-torn"]		 = "Dark Keeper's Ward"
	L["TraitRow5_Paladin_Protection_Challenging"]	 = "Crest of Holy Fire"
	L["TraitRow6_Paladin_Protection_Hidden"]		 = "Vindicator's Bulwark"

	--Warrior
	L["TraitRow1_Warrior_Arms_Classic"]				 = "Stromkar, the Warbreaker"
	L["TraitRow2_Warrior_Arms_Upgraded"]			 = "Vengeance of the Fallen"
	L["TraitRow3_Warrior_Arms_Valorous"]			 = "Flamereaper"
	L["TraitRow4_Warrior_Arms_War-torn"]			 = "Wrath's Edge"
	L["TraitRow5_Warrior_Arms_Challenging"]			 = "Blade of the Sky Champion"
	L["TraitRow6_Warrior_Arms_Hidden"]				 = "Arcanite Bladebreaker"

	L["TraitRow1_Warrior_Fury_Classic"]				 = "Warswords of the Valarjar"
	L["TraitRow2_Warrior_Fury_Upgraded"]			 = "Arm of the Dragonrider"
	L["TraitRow3_Warrior_Fury_Valorous"]			 = "Valormaw"
	L["TraitRow4_Warrior_Fury_War-torn"]			 = "Stormbreath"
	L["TraitRow5_Warrior_Fury_Challenging"]			 = "Helya's Gaze"
	L["TraitRow6_Warrior_Fury_Hidden"]				 = "Dragonslayer's Edge"

	L["TraitRow1_Warrior_Protection_Classic"]		 = "Scale of the Earth-Warder"
	L["TraitRow2_Warrior_Protection_Upgraded"]		 = "Arm of the Fallen King"
	L["TraitRow3_Warrior_Protection_Valorous"]		 = "Unbroken Stand"
	L["TraitRow4_Warrior_Protection_War-torn"]		 = "Deathguard's Gaze"
	L["TraitRow5_Warrior_Protection_Challenging"]	 = "Legionbreaker"
	L["TraitRow6_Warrior_Protection_Hidden"]		 = "Last Breath of the Worldbreaker"

	--Death Knight
	L["TraitRow1_DeathKnight_Blood_Classic"]		 = "Maw of the Damned"
	L["TraitRow2_DeathKnight_Blood_Upgraded"]		 = "Bloodmaw"
	L["TraitRow3_DeathKnight_Blood_Valorous"]		 = "Soulreaper"
	L["TraitRow4_DeathKnight_Blood_War-torn"]		 = "Executioner"
	L["TraitRow5_DeathKnight_Blood_Challenging"]	 = "Bonejaw"
	L["TraitRow6_DeathKnight_Blood_Hidden"]			 = "Touch of Undeath"

	L["TraitRow1_DeathKnight_Frost_Classic"]		 = "Blades of the Fallen Prince"
	L["TraitRow2_DeathKnight_Frost_Upgraded"]		 = "Frostmourne's Legacy"
	L["TraitRow3_DeathKnight_Frost_Valorous"]		 = "Sindragosa's Fury"
	L["TraitRow4_DeathKnight_Frost_War-torn"]		 = "Gravekeeper"
	L["TraitRow5_DeathKnight_Frost_Challenging"]	 = "Soul Collector"
	L["TraitRow6_DeathKnight_Frost_Hidden"]			 = "Dark Runeblade"

	L["TraitRow1_DeathKnight_Unholy_Classic"]		 = "Apocalypse"
	L["TraitRow2_DeathKnight_Unholy_Upgraded"]		 = "Unholy War"
	L["TraitRow3_DeathKnight_Unholy_Valorous"]		 = "Herald of Pestilence"
	L["TraitRow4_DeathKnight_Unholy_War-torn"]		 = "Faminebearer"
	L["TraitRow5_DeathKnight_Unholy_Challenging"]	 = "Death's Deliverance"
	L["TraitRow6_DeathKnight_Unholy_Hidden"]		 = "Bone Reaper"

	--Hunter
	L["TraitRow1_Hunter_BeastMastery_Classic"]		 = "Titanstrike"
	L["TraitRow2_Hunter_BeastMastery_Upgraded"]		 = "Eaglewatch"
	L["TraitRow3_Hunter_BeastMastery_Valorous"]		 = "Elekk's Thunder"
	L["TraitRow4_Hunter_BeastMastery_War-torn"]		 = "Boarshot Cannon"
	L["TraitRow5_Hunter_BeastMastery_Challenging"]	 = "Serpentbite"
	L["TraitRow6_Hunter_BeastMastery_Hidden"]		 = "Titan's Reach"

	L["TraitRow1_Hunter_Marksmanship_Classic"]		 = "Thas'dorah, Legacy of the Windrunners"
	L["TraitRow2_Hunter_Marksmanship_Upgraded"]		 = "A Sister's Bond"
	L["TraitRow3_Hunter_Marksmanship_Valorous"]		 = "Phoenix's Rebirth"
	L["TraitRow4_Hunter_Marksmanship_War-torn"]		 = "Ranger-General's Guard"
	L["TraitRow5_Hunter_Marksmanship_Challenging"]	 = "Wildrunner"
	L["TraitRow6_Hunter_Marksmanship_Hidden"]		 = "Ravenguard"

	L["TraitRow1_Hunter_Survival_Classic"]			 = "Talonclaw"
	L["TraitRow2_Hunter_Survival_Upgraded"]			 = "Eagle's Rebirth"
	L["TraitRow3_Hunter_Survival_Valorous"]			 = "Spear of the Alpha"
	L["TraitRow4_Hunter_Survival_War-torn"]			 = "Serpentstrike"
	L["TraitRow5_Hunter_Survival_Challenging"]		 = "Forests' Guardian"
	L["TraitRow6_Hunter_Survival_Hidden"]			 = "Bear's Fortitude"

	--Shaman
	L["TraitRow1_Shaman_Elemental_Classic"]			 = "The Fist of Ra-den"
	L["TraitRow2_Shaman_Elemental_Upgraded"]		 = "Stormkeeper"
	L["TraitRow3_Shaman_Elemental_Valorous"]		 = "Earthspeaker"
	L["TraitRow4_Shaman_Elemental_War-torn"]		 = "Fist of the Fallen Shaman"
	L["TraitRow5_Shaman_Elemental_Challenging"]		 = "Rehgar's Legacy"
	L["TraitRow6_Shaman_Elemental_Hidden"]			 = "Prestige of the Amani"

	L["TraitRow1_Shaman_Enhancement_Classic"]		 = "Doomhammer"
	L["TraitRow2_Shaman_Enhancement_Upgraded"]		 = "Stormbringer"
	L["TraitRow3_Shaman_Enhancement_Valorous"]		 = "Legion's Doom"
	L["TraitRow4_Shaman_Enhancement_War-torn"]		 = "Blackhand's Fate"
	L["TraitRow5_Shaman_Enhancement_Challenging"]	 = "Typhoon"
	L["TraitRow6_Shaman_Enhancement_Hidden"]		 = "Zandalar Champion"

	L["TraitRow1_Shaman_Restoration_Classic"]		 = "Sharas'dal, Scepter of Tides"
	L["TraitRow2_Shaman_Restoration_Upgraded"]		 = "Scepter of the Deep"
	L["TraitRow3_Shaman_Restoration_Valorous"]		 = "Titanborn"
	L["TraitRow4_Shaman_Restoration_War-torn"]		 = "Totembearer"
	L["TraitRow5_Shaman_Restoration_Challenging"]	 = "Frozen Fate"
	L["TraitRow6_Shaman_Restoration_Hidden"]		 = "Serpent's Coil"

	--Druid
	L["TraitRow1_Druid_Balance_Classic"]			 = "Scythe of Elune"
	L["TraitRow2_Druid_Balance_Upgraded"]			 = "Envoy of Goldrinn"
	L["TraitRow3_Druid_Balance_Valorous"]			 = "Lunarcall"
	L["TraitRow4_Druid_Balance_War-torn"]			 = "Nightmare's Affliction"
	L["TraitRow5_Druid_Balance_Challenging"]		 = "Manascythe"
	L["TraitRow6_Druid_Balance_Hidden"]				 = "Sunkeeper's Reach"

	L["TraitRow1_Druid_Feral_Classic"]				 = "Fangs of Ashamane"
	L["TraitRow2_Druid_Feral_Upgraded"]				 = "Nature's Fury"
	L["TraitRow3_Druid_Feral_Valorous"]				 = "Primal Stalker"
	L["TraitRow4_Druid_Feral_War-torn"]				 = "Incarnation of Nightmare"
	L["TraitRow5_Druid_Feral_Challenging"]			 = "Ghost of the Pridemother"
	L["TraitRow6_Druid_Feral_Hidden"]				 = "Moonspirit"

	L["TraitRow1_Druid_Guardian_Classic"]			 = "Claws of Ursoc"
	L["TraitRow2_Druid_Guardian_Upgraded"]			 = "Stonepaw"
	L["TraitRow3_Druid_Guardian_Valorous"]			 = "Avatar of Ursol"
	L["TraitRow4_Druid_Guardian_War-torn"]			 = "Fallen to Nightmare"
	L["TraitRow5_Druid_Guardian_Challenging"]		 = "Might of the Grizzlemaw"
	L["TraitRow6_Druid_Guardian_Hidden"]			 = "Guardian of the Glade"

	L["TraitRow1_Druid_Restoration_Classic"]		 = "G'Hanir, the Mother Tree"
	L["TraitRow2_Druid_Restoration_Upgraded"]		 = "Eldertree"
	L["TraitRow3_Druid_Restoration_Valorous"]		 = "Crystalline Awakening"
	L["TraitRow4_Druid_Restoration_War-torn"]		 = "Deadwood Keeper"
	L["TraitRow5_Druid_Restoration_Challenging"]	 = "Night's Vigilance"
	L["TraitRow6_Druid_Restoration_Hidden"]			 = "Warden's Crown"

	--Rogue
	L["TraitRow1_Rogue_Assassination_Classic"]		 = "The Kingslayers"
	L["TraitRow2_Rogue_Assassination_Upgraded"]		 = "Cursed Hand"
	L["TraitRow3_Rogue_Assassination_Valorous"]		 = "Heartstopper"
	L["TraitRow4_Rogue_Assassination_War-torn"]		 = "Magekiller's Edge"
	L["TraitRow5_Rogue_Assassination_Challenging"]	 = "Ghostblade"
	L["TraitRow6_Rogue_Assassination_Hidden"]		 = "Bonebreaker"

	L["TraitRow1_Rogue_Outlaw_Classic"]				 = "The Dreadblades"
	L["TraitRow2_Rogue_Outlaw_Upgraded"]			 = "Promise of the Seascourge"
	L["TraitRow3_Rogue_Outlaw_Valorous"]			 = "Flame's Kiss"
	L["TraitRow4_Rogue_Outlaw_War-torn"]			 = "Scoundrel's Last Word"
	L["TraitRow5_Rogue_Outlaw_Challenging"]			 = "Fencer's Reach"
	L["TraitRow6_Rogue_Outlaw_Hidden"]				 = "Thunderfury, Hallowed Blade of the Windlord"
	
	L["TraitRow1_Rogue_Subtlety_Classic"]			 = "Fangs of the Devourer"
	L["TraitRow2_Rogue_Subtlety_Upgraded"]			 = "Shadowblade"
	L["TraitRow3_Rogue_Subtlety_Valorous"]			 = "Demon's Embrace"
	L["TraitRow4_Rogue_Subtlety_War-torn"]			 = "Bloodfeaster"
	L["TraitRow5_Rogue_Subtlety_Challenging"]		 = "Iceshear"
	L["TraitRow6_Rogue_Subtlety_Hidden"]			 = "Venombite"

	--Monk
	L["TraitRow1_Monk_Brewmaster_Classic"]			 = "Fu Zan, the Wanderer's Companion"
	L["TraitRow2_Monk_Brewmaster_Upgraded"]			 = "The Monkey King's Burden"
	L["TraitRow3_Monk_Brewmaster_Valorous"]			 = "Heart of the Ox"
	L["TraitRow4_Monk_Brewmaster_War-torn"]			 = "Dragonfire's Grasp"
	L["TraitRow5_Monk_Brewmaster_Challenging"]		 = "Bearer of the Mist"
	L["TraitRow6_Monk_Brewmaster_Hidden"]			 = "Ancient Brewkeeper"

	L["TraitRow1_Monk_Mistweaver_Classic"]			 = "Sheilun, Staff of the Mists"
	L["TraitRow2_Monk_Mistweaver_Upgraded"]			 = "Toll of the Deep Mist"
	L["TraitRow3_Monk_Mistweaver_Valorous"]			 = "Chi-Ji's Spirit"
	L["TraitRow4_Monk_Mistweaver_War-torn"]			 = "Sha's Torment"
	L["TraitRow5_Monk_Mistweaver_Challenging"]		 = "Essence of Calm"
	L["TraitRow6_Monk_Mistweaver_Hidden"]			 = "Breath of the Undying Serpent"

	L["TraitRow1_Monk_Windwalker_Classic"]			 = "Fists of the Heavens"
	L["TraitRow2_Monk_Windwalker_Upgraded"]			 = "Al'Akir's Touch"
	L["TraitRow3_Monk_Windwalker_Valorous"]			 = "Spirit's Reach"
	L["TraitRow4_Monk_Windwalker_War-torn"]			 = "Shado-Pan Legacy"
	L["TraitRow5_Monk_Windwalker_Challenging"]		 = "Xuen's Enforcer"
	L["TraitRow6_Monk_Windwalker_Hidden"]			 = "Stormfist"

	--Warlock
	L["TraitRow1_Warlock_Affliction_Classic"]		 = "Deadwind Harvester"
	L["TraitRow2_Warlock_Affliction_Upgraded"]		 = "Hand of the Afflicted"
	L["TraitRow3_Warlock_Affliction_Valorous"]		 = "Soul Siphon"
	L["TraitRow4_Warlock_Affliction_War-torn"]		 = "Death's Hand"
	L["TraitRow5_Warlock_Affliction_Challenging"]	 = "Spine of the Condemned"
	L["TraitRow6_Warlock_Affliction_Hidden"]		 = "Fate's End"

	L["TraitRow1_Warlock_Demonology_Classic"]		 = "Skull of the Man'ari"
	L["TraitRow2_Warlock_Demonology_Upgraded"]		 = "Gaze of the First Summoner"
	L["TraitRow3_Warlock_Demonology_Valorous"]		 = "Pride of the Pit Lord"
	L["TraitRow4_Warlock_Demonology_War-torn"]		 = "Burning Remnant"
	L["TraitRow5_Warlock_Demonology_Challenging"]	 = "Soul of the Forgotten"
	L["TraitRow6_Warlock_Demonology_Hidden"]		 = "Thal'kiel's Visage"

	L["TraitRow1_Warlock_Destruction_Classic"]		 = "Scepter of Sargeras"
	L["TraitRow2_Warlock_Destruction_Upgraded"]		 = "Hubris of the Dark Titan"
	L["TraitRow3_Warlock_Destruction_Valorous"]		 = "Echo of Gul'dan"
	L["TraitRow4_Warlock_Destruction_War-torn"]		 = "Shadow of the Destroyer"
	L["TraitRow5_Warlock_Destruction_Challenging"]	 = "Guise of the Darkener"
	L["TraitRow6_Warlock_Destruction_Hidden"]		 = "Legionterror"

	--Priest
	L["TraitRow1_Priest_Discipline_Classic"]		 = "Light's Wrath"
	L["TraitRow2_Priest_Discipline_Upgraded"]		 = "Crest of the Redeemed"
	L["TraitRow3_Priest_Discipline_Valorous"]		 = "Chalice of Light"
	L["TraitRow4_Priest_Discipline_War-torn"]		 = "Eternal Vigil"
	L["TraitRow5_Priest_Discipline_Challenging"]	 = "Ascended Watch"
	L["TraitRow6_Priest_Discipline_Hidden"]			 = "Tomekeeper's Spire"

	L["TraitRow1_Priest_Holy_Classic"]				 = "T'uure, Beacon of the Naaru"
	L["TraitRow2_Priest_Holy_Upgraded"]				 = "Banner of Purity"
	L["TraitRow3_Priest_Holy_Valorous"]				 = "Keeper of Light"
	L["TraitRow4_Priest_Holy_War-torn"]				 = "Embrace of the Void"
	L["TraitRow5_Priest_Holy_Challenging"]			 = "Memory of Argus"
	L["TraitRow6_Priest_Holy_Hidden"]				 = "Crest of the Lightborn"

	L["TraitRow1_Priest_Shadow_Classic"]			 = "Blade of the Black Empire"
	L["TraitRow2_Priest_Shadow_Upgraded"]			 = "Embrace of the Old Gods"
	L["TraitRow3_Priest_Shadow_Valorous"]			 = "The Fallen Blade"
	L["TraitRow4_Priest_Shadow_War-torn"]			 = "Vision of Madness"
	L["TraitRow5_Priest_Shadow_Challenging"]		 = "Twisted Reflection"
	L["TraitRow6_Priest_Shadow_Hidden"]				 = "Claw of N'Zoth"

	--Mage
	L["TraitRow1_Mage_Arcane_Classic"]				 = "Aluneth"
	L["TraitRow2_Mage_Arcane_Upgraded"]				 = "Guardian Spire"
	L["TraitRow3_Mage_Arcane_Valorous"]				 = "Magna Unleashed"
	L["TraitRow4_Mage_Arcane_War-torn"]				 = "Aegwynn's Fall"
	L["TraitRow5_Mage_Arcane_Challenging"]			 = "Eternal Magus"
	L["TraitRow6_Mage_Arcane_Hidden"]				 = "Woolomancer's Charge"

	L["TraitRow1_Mage_Fire_Classic"]				 = "Felo'melorn"
	L["TraitRow2_Mage_Fire_Upgraded"]				 = "Pride of the Sunstriders"
	L["TraitRow3_Mage_Fire_Valorous"]				 = "Phoenix's Rebirth"
	L["TraitRow4_Mage_Fire_War-torn"]				 = "Lavaborn Edge"
	L["TraitRow5_Mage_Fire_Challenging"]			 = "Timebender's Blade"
	L["TraitRow6_Mage_Fire_Hidden"]					 = "The Stars' Design"

	L["TraitRow1_Mage_Frost_Classic"]				 = "Ebonchill"
	L["TraitRow2_Mage_Frost_Upgraded"]				 = "Guardian's Focus"
	L["TraitRow3_Mage_Frost_Valorous"]				 = "Flow of the First"
	L["TraitRow4_Mage_Frost_War-torn"]				 = "Archmagi's Will"
	L["TraitRow5_Mage_Frost_Challenging"]			 = "Elite Magus"
	L["TraitRow6_Mage_Frost_Hidden"]				 = "Frostfire Remembrance"


return end

if LOCALE == "esMX" then
	-- MXSpanish translations go here
	L["Addon_Title"] = "Remix Artifact Tracker"
	L["Addon_Notes"] = "Agrega una pestaña de apariencias de artefacto a las armas de artefacto en Legión Remix."
	L["SlashCmd1"] = "/rat"
	L["SlashCmd2"] = "/rat"
	L["SlashCmd3"] = "/remixartifact"

	L["Traits"] = ARTIFACTS_PERK_TAB
	L["Appearances"] = ARTIFACTS_APPEARANCE_TAB
	L["ShowSecondary"] = "Mostrar secundario"
	L["ShowSecondaryTT"] = "Muestra el modelo secundario vinculado a este conjunto."
	L["RaceNightElf"] = GetRaceName(4)
	L["RaceHaranir"] = GetRaceName(86)
	L["RaceTauren"] = GetRaceName(6)
	L["RaceHMTauren"] = GetRaceName(28)
	L["RaceTroll"] = GetRaceName(8)
	L["RaceZandalari"] = GetRaceName(31)
	L["RaceWorgen"] = GetRaceName(22)
	L["RaceKulTiran"] = GetRaceName(32)
	L["RaceGroup1"] = L["RaceNightElf"] -- .. ", " .. L["RaceHaranir"] -- (maybe for future?)
	L["RaceGroup2"] = L["RaceTauren"] .. ", " .. L["RaceHMTauren"]
	L["RaceGroup3"] = L["RaceTroll"] .. ", " .. L["RaceZandalari"]
	L["RaceGroup4"] = L["RaceWorgen"] .. ", " .. L["RaceKulTiran"]
	L["Artifact"] = ITEM_QUALITY6_DESC
	L["Unavailable"] = UNAVAILABLE
	L["NoLongerAvailable"] = NO_LONGER_AVAILABLE

	L["TraitRow1Temp_Classic"]		 = "Clásico"
	L["TraitRow2Temp_Upgraded"]		 = "Mejorado"
	L["TraitRow3Temp_Valorous"]		 = "Valeroso"
	L["TraitRow4Temp_War-torn"]		 = "Destrozado por la guerra"
	L["TraitRow5Temp_Challenging"]	 = "Desafiante"
	L["TraitRow6Temp_Hidden"]		 = "Oculto"

	--classic
	L["TraitRow1Tint1Req"] = ""
	L["TraitRow1Tint2Req"] = "Recupera uno de los Pilares de la creación."
	L["TraitRow1Tint3Req"] = "Recupera el Corazón de la Luz y llévalo a la seguridad de la Sala de tu orden."
	L["TraitRow1Tint4Req"] = "Completa el primer mayor esfuerzo de campaña con tu orden."

	--upgraded
	L["TraitRow2Tint1Req"] = string.format("Completa la campaña de la sala de clase %s.", ClassName)
	L["TraitRow2Tint2Req"] = string.format("Completa la campaña de la sala de clase %s.", ClassName)
	L["TraitRow2Tint3Req"] = string.format("Completa la campaña de la sala de clase %s.", ClassName)
	L["TraitRow2Tint4Req"] = "Completa el logro \"Manipular con precaución\"."

	--valorous
	L["TraitRow3Tint1Req"] = "Completa la línea de misiones \"Equilibrio de poder\"."
	L["TraitRow3Tint2Req"] = "Completa el logro \"Monstruosidades desatadas\".\n\nCompleta la misión \"Equilibrio de poder\"."
	L["TraitRow3Tint3Req"] = "Completa un calabozo mítico usando una piedra angular de nivel 5.\n\nCompleta la misión \"Equilibrio de poder\"."
	L["TraitRow3Tint4Req"] = "Completa el logro \"Gloria del héroe de Legion\".\n\nCompleta la misión \"Equilibrio de poder\"."

	--war-torn
	L["TraitRow4Tint1Req"] = "Participa en combates jugador contra jugador y llega al nivel de honor 10."
	L["TraitRow4Tint2Req"] = "Llega al nivel de honor 30."
	L["TraitRow4Tint3Req"] = "Llega al nivel de honor 50."
	L["TraitRow4Tint4Req"] = "Llega al nivel de honor 80."

	--challenging (swapped with Hidden)
	L["TraitRow5Tint1Req_THR"] = "Completa la línea de misiones \"El regreso del Alto señor\"."
	L["TraitRow5Tint2Req_THR"] = "Desbloquea un aspecto de artefacto de desafío y derrota a Kil'jaeden en heroico. \n\nCompleta las misiones \"El regreso del Alto señor\"."
	L["TraitRow5Tint3Req_THR"] = "Desbloquea un aspecto de artefacto de desafío y gana 10 campos de batalla puntuados.\n\nCompleta las misiones \"El regreso del Alto señor\"."
	L["TraitRow5Tint4Req_THR"] = "Completa 10 calabozos de Legion diferentes después de desbloquear un aspecto de desafío.\n\nCompleta la misión \"El regreso del Alto señor\"."

	L["TraitRow5Tint1Req_XC"] = "Completa la línea de misiones \"Desafío de Xylem\"."
	L["TraitRow5Tint2Req_XC"] = "Desbloquea un aspecto de artefacto de desafío y derrota a Kil'jaeden en heroico. \n\nCompleta las misiones \"Desafío de Xylem\"."
	L["TraitRow5Tint3Req_XC"] = "Desbloquea un aspecto de artefacto de desafío y gana 10 campos de batalla puntuados.\n\nCompleta las misiones \"Desafío de Xylem\"."
	L["TraitRow5Tint4Req_XC"] = "Completa 10 calabozos de Legion diferentes después de desbloquear un aspecto de desafío.\n\nCompleta la misión \"Desafío de Xylem\"."

	L["TraitRow5Tint1Req_IMC"] = "Completa la línea de misiones \"Desafío de la Madre de los diablillos\"."
	L["TraitRow5Tint2Req_IMC"] = "Desbloquea un aspecto de artefacto de desafío y derrota a Kil'jaeden en heroico. \n\nCompleta las misiones \"Desafío de la Madre de los diablillos\"."
	L["TraitRow5Tint3Req_IMC"] = "Desbloquea un aspecto de artefacto de desafío y gana 10 campos de batalla puntuados.\n\nCompleta las misiones \"Desafío de la Madre de los diablillos\"."
	L["TraitRow5Tint4Req_IMC"] = "Completa 10 calabozos de Legion diferentes después de desbloquear un aspecto de desafío.\n\nCompleta la misión \"Desafío de la Madre de los diablillos\"."

	L["TraitRow5Tint1Req_TC"] = "Completa la línea de misiones \"Desafío gemelo\"."
	L["TraitRow5Tint2Req_TC"] = "Desbloquea un aspecto de artefacto de desafío y derrota a Kil'jaeden en heroico. \n\nCompleta las misiones \"Desafío gemelo\"."
	L["TraitRow5Tint3Req_TC"] = "Desbloquea un aspecto de artefacto de desafío y gana 10 campos de batalla puntuados.\n\nCompleta las misiones \"Desafío gemelo\"."
	L["TraitRow5Tint4Req_TC"] = "Completa 10 calabozos de Legion diferentes después de desbloquear un aspecto de desafío.\n\nCompleta la misión \"Desafío gemelo\"."

	L["TraitRow5Tint1Req_TBRT"] = "Completa la línea de misiones \"La amenaza de la Torre Oscura\"."
	L["TraitRow5Tint2Req_TBRT"] = "Desbloquea un aspecto de artefacto de desafío y derrota a Kil'jaeden en heroico. \n\nCompleta las misiones \"La amenaza de la Torre Oscura\"."
	L["TraitRow5Tint3Req_TBRT"] = "Desbloquea un aspecto de artefacto de desafío y gana 10 campos de batalla puntuados.\n\nCompleta las misiones \"La amenaza de la Torre Oscura\"."
	L["TraitRow5Tint4Req_TBRT"] = "Completa 10 calabozos de Legion diferentes después de desbloquear un aspecto de desafío.\n\nCompleta la misión \"La amenaza de la Torre Oscura\"."

	L["TraitRow5Tint1Req_TFWM"] = "Completa la línea de misiones \"La amenaza del gusano vil\"."
	L["TraitRow5Tint2Req_TFWM"] = "Desbloquea un aspecto de artefacto de desafío y derrota a Kil'jaeden en heroico. \n\nCompleta las misiones \"La amenaza del gusano vil\"."
	L["TraitRow5Tint3Req_TFWM"] = "Desbloquea un aspecto de artefacto de desafío y gana 10 campos de batalla puntuados.\n\nCompleta las misiones \"La amenaza del gusano vil\"."
	L["TraitRow5Tint4Req_TFWM"] = "Completa 10 calabozos de Legion diferentes después de desbloquear un aspecto de desafío.\n\nCompleta la misión \"La amenaza del gusano vil\"."

	L["TraitRow5Tint1Req_GQC"] = "Completa la línea de misiones \"Desafío de la Reina divina\"."
	L["TraitRow5Tint2Req_GQC"] = "Desbloquea un aspecto de artefacto de desafío y derrota a Kil'jaeden en heroico. \n\nCompleta las misiones \"Desafío de la Reina divina\"."
	L["TraitRow5Tint3Req_GQC"] = "Desbloquea un aspecto de artefacto de desafío y gana 10 campos de batalla puntuados.\n\nCompleta las misiones \"Desafío de la Reina divina\"."
	L["TraitRow5Tint4Req_GQC"] = "Completa 10 calabozos de Legion diferentes después de desbloquear un aspecto de desafío.\n\nCompleta la misión \"Desafío de la Reina divina\"."

	--hidden (swapped with Challenging)
	L["TraitRow6Tint1Req"] = ""
	L["TraitRow6Tint2Req"] = "Completa 30 calabozos de Legion después de desbloquear un aspecto de artefacto oculto."
	L["TraitRow6Tint3Req"] = "Completa 200 misiones de mundo después de desbloquear un aspecto de artefacto oculto."
	L["TraitRow6Tint4Req"] = "Mata a 1000 jugadores enemigos después de desbloquear un aspecto de artefacto oculto."

	--Demon Hunter
	L["TraitRow1_DemonHunter_Havoc_Classic"]		 = "Espadas Gemelas del Falsario"
	L["TraitRow2_DemonHunter_Havoc_Upgraded"]		 = "Mano de los Illidari"
	L["TraitRow3_DemonHunter_Havoc_Valorous"]		 = "Espada sombría"
	L["TraitRow4_DemonHunter_Havoc_War-torn"]		 = "Toque demoniaco"
	L["TraitRow5_DemonHunter_Havoc_Challenging"]	 = "Segadora de fuego"
	L["TraitRow6_DemonHunter_Havoc_Hidden"]			 = "Caminamuerte"

	L["TraitRow1_DemonHunter_Vengeance_Classic"]	 = "Hojas de guerra Aldrachi"
	L["TraitRow2_DemonHunter_Vengeance_Upgraded"]	 = "Emblema Illidari"
	L["TraitRow3_DemonHunter_Vengeance_Valorous"]	 = "Mordedura del señor del terror"
	L["TraitRow4_DemonHunter_Vengeance_War-torn"]	 = "Terror de huesos"
	L["TraitRow5_DemonHunter_Vengeance_Challenging"] = "Alaparda"
	L["TraitRow6_DemonHunter_Vengeance_Hidden"]		 = "Celadora de hierro"

	--Paladin
	L["TraitRow1_Paladin_Retribution_Classic"]		 = "Crematoria"
	L["TraitRow2_Paladin_Retribution_Upgraded"]		 = "Espada magna del honrado"
	L["TraitRow3_Paladin_Retribution_Valorous"]		 = "Represalia ardiente"
	L["TraitRow4_Paladin_Retribution_War-torn"]		 = "Esperanza caída"
	L["TraitRow5_Paladin_Retribution_Challenging"]	 = "Expiación destrozada"
	L["TraitRow6_Paladin_Retribution_Hidden"]		 = "Recuerdo Corrupto"

	L["TraitRow1_Paladin_Holy_Classic"]				 = "La Mano de plata"
	L["TraitRow2_Paladin_Holy_Upgraded"]			 = "Puño del vigía caído"
	L["TraitRow3_Paladin_Holy_Valorous"]			 = "Sentencia del Protector"
	L["TraitRow4_Paladin_Holy_War-torn"]			 = "Guardián de la tumba"
	L["TraitRow5_Paladin_Holy_Challenging"]			 = "Llama de la justicia"
	L["TraitRow6_Paladin_Holy_Hidden"]				 = "Armamento del Vigía"

	L["TraitRow1_Paladin_Protection_Classic"]		 = "Veraguardia"
	L["TraitRow2_Paladin_Protection_Upgraded"]		 = "Luz de los titanes"
	L["TraitRow3_Paladin_Protection_Valorous"]		 = "Protector Divino"
	L["TraitRow4_Paladin_Protection_War-torn"]		 = "Resguardo del guarda oscuro"
	L["TraitRow5_Paladin_Protection_Challenging"]	 = "Blasón de fuego sagrado"
	L["TraitRow6_Paladin_Protection_Hidden"]		 = "Baluarte del vindicador"

	--Warrior
	L["TraitRow1_Warrior_Arms_Classic"]				 = "Strom'kar, la Belicista"
	L["TraitRow2_Warrior_Arms_Upgraded"]			 = "Venganza del caído"
	L["TraitRow3_Warrior_Arms_Valorous"]			 = "Segadora de fuego"
	L["TraitRow4_Warrior_Arms_War-torn"]			 = "Orilla de la cólera"
	L["TraitRow5_Warrior_Arms_Challenging"]			 = "Espada del campeón del cielo"
	L["TraitRow6_Warrior_Arms_Hidden"]				 = "Rompehojas de arcanita"

	L["TraitRow1_Warrior_Fury_Classic"]				 = "Espadas de Guerra de los Valarjar"
	L["TraitRow2_Warrior_Fury_Upgraded"]			 = "Brazo del jinete de dragones"
	L["TraitRow3_Warrior_Fury_Valorous"]			 = "Fauce de valor"
	L["TraitRow4_Warrior_Fury_War-torn"]			 = "Aliento de tormenta"
	L["TraitRow5_Warrior_Fury_Challenging"]			 = "Mirada de Helya"
	L["TraitRow6_Warrior_Fury_Hidden"]				 = "Filo de Matadragones"

	L["TraitRow1_Warrior_Protection_Classic"]		 = "Escama del Guardián de la Tierra"
	L["TraitRow2_Warrior_Protection_Upgraded"]		 = "Brazo del rey caído"
	L["TraitRow3_Warrior_Protection_Valorous"]		 = "Puesto intacto"
	L["TraitRow4_Warrior_Protection_War-torn"]		 = "Mirada del Guardia de la Muerte"
	L["TraitRow5_Warrior_Protection_Challenging"]	 = "Rompelegión"
	L["TraitRow6_Warrior_Protection_Hidden"]		 = "Último aliento del Rompemundos"

	--Death Knight
	L["TraitRow1_DeathKnight_Blood_Classic"]		 = "Fauce de los Malditos"
	L["TraitRow2_DeathKnight_Blood_Upgraded"]		 = "Faucesangre"
	L["TraitRow3_DeathKnight_Blood_Valorous"]		 = "Segador de almas"
	L["TraitRow4_DeathKnight_Blood_War-torn"]		 = "Verdugo"
	L["TraitRow5_DeathKnight_Blood_Challenging"]	 = "Mandíbula de huesos"
	L["TraitRow6_DeathKnight_Blood_Hidden"]			 = "Toque de los No-muertos"

	L["TraitRow1_DeathKnight_Frost_Classic"]		 = "Espadas del Príncipe Caído"
	L["TraitRow2_DeathKnight_Frost_Upgraded"]		 = "Legado de Agonía de Escarcha"
	L["TraitRow3_DeathKnight_Frost_Valorous"]		 = "Furia de Sindragosa"
	L["TraitRow4_DeathKnight_Frost_War-torn"]		 = "Guardián de la cripta"
	L["TraitRow5_DeathKnight_Frost_Challenging"]	 = "Recolector de almas"
	L["TraitRow6_DeathKnight_Frost_Hidden"]			 = "Hojarruna Oscura"

	L["TraitRow1_DeathKnight_Unholy_Classic"]		 = "Apocalipsis"
	L["TraitRow2_DeathKnight_Unholy_Upgraded"]		 = "Guerra profana"
	L["TraitRow3_DeathKnight_Unholy_Valorous"]		 = "Heraldo de pestilencia"
	L["TraitRow4_DeathKnight_Unholy_War-torn"]		 = "Portador de la hambruna"
	L["TraitRow5_DeathKnight_Unholy_Challenging"]	 = "Liberación de la muerte"
	L["TraitRow6_DeathKnight_Unholy_Hidden"]		 = "Segador de Huesos"

	--Hunter
	L["TraitRow1_Hunter_BeastMastery_Classic"]		 = "Titánica"
	L["TraitRow2_Hunter_BeastMastery_Upgraded"]		 = "Águila vigía"
	L["TraitRow3_Hunter_BeastMastery_Valorous"]		 = "Trueno de elekk"
	L["TraitRow4_Hunter_BeastMastery_War-torn"]		 = "Cañón antijabalí"
	L["TraitRow5_Hunter_BeastMastery_Challenging"]	 = "Mordedura de serpiente"
	L["TraitRow6_Hunter_BeastMastery_Hidden"]		 = "Brecha del Titán"

	L["TraitRow1_Hunter_Marksmanship_Classic"]		 = "Thas'dorah, el Legado de los Brisaveloz"
	L["TraitRow2_Hunter_Marksmanship_Upgraded"]		 = "El vínculo de una hermana"
	L["TraitRow3_Hunter_Marksmanship_Valorous"]		 = "Renacer del fénix"
	L["TraitRow4_Hunter_Marksmanship_War-torn"]		 = "Guardia del general forestal"
	L["TraitRow5_Hunter_Marksmanship_Challenging"]	 = "Corredor salvaje"
	L["TraitRow6_Hunter_Marksmanship_Hidden"]		 = "Guardacuervos"

	L["TraitRow1_Hunter_Survival_Classic"]			 = "Garfa Corva"
	L["TraitRow2_Hunter_Survival_Upgraded"]			 = "Renacer del águila"
	L["TraitRow3_Hunter_Survival_Valorous"]			 = "Lanza del alfa"
	L["TraitRow4_Hunter_Survival_War-torn"]			 = "Golpe de serpiente"
	L["TraitRow5_Hunter_Survival_Challenging"]		 = "Guardián de los Bosques"
	L["TraitRow6_Hunter_Survival_Hidden"]			 = "Fortaleza del oso"

	--Shaman
	L["TraitRow1_Shaman_Elemental_Classic"]			 = "El Puño de Ra-Den"
	L["TraitRow2_Shaman_Elemental_Upgraded"]		 = "Guardatormentas"
	L["TraitRow3_Shaman_Elemental_Valorous"]		 = "Orador de la tierra"
	L["TraitRow4_Shaman_Elemental_War-torn"]		 = "Puño del chamán caído"
	L["TraitRow5_Shaman_Elemental_Challenging"]		 = "Legado de Rehgar"
	L["TraitRow6_Shaman_Elemental_Hidden"]			 = "Prestigio de los Amani"

	L["TraitRow1_Shaman_Enhancement_Classic"]		 = "Martillo maldito"
	L["TraitRow2_Shaman_Enhancement_Upgraded"]		 = "Creador de tormentas"
	L["TraitRow3_Shaman_Enhancement_Valorous"]		 = "Perdición de la Legión"
	L["TraitRow4_Shaman_Enhancement_War-torn"]		 = "Destino de Puño Negro"
	L["TraitRow5_Shaman_Enhancement_Challenging"]	 = "Tifón"
	L["TraitRow6_Shaman_Enhancement_Hidden"]		 = "Campeón Zandalar"

	L["TraitRow1_Shaman_Restoration_Classic"]		 = "Sharas'dal, Cetro de las Mareas"
	L["TraitRow2_Shaman_Restoration_Upgraded"]		 = "Cetro de lo profundo"
	L["TraitRow3_Shaman_Restoration_Valorous"]		 = "Nacido del titán"
	L["TraitRow4_Shaman_Restoration_War-torn"]		 = "Portador del tótem"
	L["TraitRow5_Shaman_Restoration_Challenging"]	 = "Destino congelado"
	L["TraitRow6_Shaman_Restoration_Hidden"]		 = "Serpiente Enroscada"

	--Druid
	L["TraitRow1_Druid_Balance_Classic"]			 = "Guadaña de Elune"
	L["TraitRow2_Druid_Balance_Upgraded"]			 = "Enviado de Goldrinn"
	L["TraitRow3_Druid_Balance_Valorous"]			 = "Llamado lunar"
	L["TraitRow4_Druid_Balance_War-torn"]			 = "Aflicción de la pesadilla"
	L["TraitRow5_Druid_Balance_Challenging"]		 = "Guadaña de Maná"
	L["TraitRow6_Druid_Balance_Hidden"]				 = "Alcance de Guardasol"

	L["TraitRow1_Druid_Feral_Classic"]				 = "Colmillos de Ashamane"
	L["TraitRow2_Druid_Feral_Upgraded"]				 = "Furia de la naturaleza"
	L["TraitRow3_Druid_Feral_Valorous"]				 = "Acechador primigenio"
	L["TraitRow4_Druid_Feral_War-torn"]				 = "Encarnación de la Pesadilla"
	L["TraitRow5_Druid_Feral_Challenging"]			 = "Fantasma de la madre de la manada"
	L["TraitRow6_Druid_Feral_Hidden"]				 = "Espíritu lunar"

	L["TraitRow1_Druid_Guardian_Classic"]			 = "Garras de Ursoc"
	L["TraitRow2_Druid_Guardian_Upgraded"]			 = "Garra pétrea"
	L["TraitRow3_Druid_Guardian_Valorous"]			 = "Avatar de Ursol"
	L["TraitRow4_Druid_Guardian_War-torn"]			 = "Caído a la Pesadilla"
	L["TraitRow5_Druid_Guardian_Challenging"]		 = "Poder de los Fauceparda"
	L["TraitRow6_Druid_Guardian_Hidden"]			 = "Guardián del Claro"

	L["TraitRow1_Druid_Restoration_Classic"]		 = "G'Hanir, el Árbol Madre"
	L["TraitRow2_Druid_Restoration_Upgraded"]		 = "Árbol anciano"
	L["TraitRow3_Druid_Restoration_Valorous"]		 = "Despertar cristalino"
	L["TraitRow4_Druid_Restoration_War-torn"]		 = "Vigilante Muertobosque"
	L["TraitRow5_Druid_Restoration_Challenging"]	 = "Vigilancia de la Noche"
	L["TraitRow6_Druid_Restoration_Hidden"]			 = "Corona de la Celadora"

	--Rogue
	L["TraitRow1_Rogue_Assassination_Classic"]		 = "Las Matarreyes"
	L["TraitRow2_Rogue_Assassination_Upgraded"]		 = "Mano maldita"
	L["TraitRow3_Rogue_Assassination_Valorous"]		 = "Paracorazones"
	L["TraitRow4_Rogue_Assassination_War-torn"]		 = "Filo del matamagos"
	L["TraitRow5_Rogue_Assassination_Challenging"]	 = "Filo Fantasmal"
	L["TraitRow6_Rogue_Assassination_Hidden"]		 = "Rompehuesos"

	L["TraitRow1_Rogue_Outlaw_Classic"]				 = "Los Filos del Terror"
	L["TraitRow2_Rogue_Outlaw_Upgraded"]			 = "Promesa de la plaga marina"
	L["TraitRow3_Rogue_Outlaw_Valorous"]			 = "Beso de fuego"
	L["TraitRow4_Rogue_Outlaw_War-torn"]			 = "Última palabra del canalla"
	L["TraitRow5_Rogue_Outlaw_Challenging"]			 = "Mando del esgrimista"
	L["TraitRow6_Rogue_Outlaw_Hidden"]				 = "Furiatrueno, la espada maldita del Señor del viento"
	
	L["TraitRow1_Rogue_Subtlety_Classic"]			 = "Colmillos del Devorador"
	L["TraitRow2_Rogue_Subtlety_Upgraded"]			 = "Hoja de las sombras"
	L["TraitRow3_Rogue_Subtlety_Valorous"]			 = "Abrazo del demonio"
	L["TraitRow4_Rogue_Subtlety_War-torn"]			 = "Tragasangre"
	L["TraitRow5_Rogue_Subtlety_Challenging"]		 = "Cortahielo"
	L["TraitRow6_Rogue_Subtlety_Hidden"]			 = "Mordedura de Venenonte"

	--Monk
	L["TraitRow1_Monk_Brewmaster_Classic"]			 = "Fu Zan, el Compañero del Vagabundo"
	L["TraitRow2_Monk_Brewmaster_Upgraded"]			 = "La Carga del Rey Mono"
	L["TraitRow3_Monk_Brewmaster_Valorous"]			 = "Corazón del buey"
	L["TraitRow4_Monk_Brewmaster_War-torn"]			 = "Agarre de fuego de dragón"
	L["TraitRow5_Monk_Brewmaster_Challenging"]		 = "Portador de la niebla"
	L["TraitRow6_Monk_Brewmaster_Hidden"]			 = "Guardián de Brebajes Anciano"

	L["TraitRow1_Monk_Mistweaver_Classic"]			 = "Sheliun, Bastón de la Niebla"
	L["TraitRow2_Monk_Mistweaver_Upgraded"]			 = "Peaje de la niebla profunda"
	L["TraitRow3_Monk_Mistweaver_Valorous"]			 = "Espíritu de Chi-ji"
	L["TraitRow4_Monk_Mistweaver_War-torn"]			 = "Tormento de sha"
	L["TraitRow5_Monk_Mistweaver_Challenging"]		 = "Esencia de la Calma"
	L["TraitRow6_Monk_Mistweaver_Hidden"]			 = "Aliento de la serpiente indestructible"

	L["TraitRow1_Monk_Windwalker_Classic"]			 = "Puños de los Cielos"
	L["TraitRow2_Monk_Windwalker_Upgraded"]			 = "Toque de Al'Akir"
	L["TraitRow3_Monk_Windwalker_Valorous"]			 = "Alcance del espíritu"
	L["TraitRow4_Monk_Windwalker_War-torn"]			 = "Legado del Shadopan"
	L["TraitRow5_Monk_Windwalker_Challenging"]		 = "Agente de Xuen"
	L["TraitRow6_Monk_Windwalker_Hidden"]			 = "Puño de tormenta"

	--Warlock
	L["TraitRow1_Warlock_Affliction_Classic"]		 = "Cosechadora Vientomuerto"
	L["TraitRow2_Warlock_Affliction_Upgraded"]		 = "Mano del afligido"
	L["TraitRow3_Warlock_Affliction_Valorous"]		 = "Succión de alma"
	L["TraitRow4_Warlock_Affliction_War-torn"]		 = "Mano de la muerte"
	L["TraitRow5_Warlock_Affliction_Challenging"]	 = "Lomo de los Condenados"
	L["TraitRow6_Warlock_Affliction_Hidden"]		 = "El final del destino"

	L["TraitRow1_Warlock_Demonology_Classic"]		 = "Cráneo de los Man'ari"
	L["TraitRow2_Warlock_Demonology_Upgraded"]		 = "Mirada del primer invocador"
	L["TraitRow3_Warlock_Demonology_Valorous"]		 = "Orgullo del señor del foso"
	L["TraitRow4_Warlock_Demonology_War-torn"]		 = "Restos ardientes"
	L["TraitRow5_Warlock_Demonology_Challenging"]	 = "Alma del olvidado"
	L["TraitRow6_Warlock_Demonology_Hidden"]		 = "Rostro de Thal'kiel"

	L["TraitRow1_Warlock_Destruction_Classic"]		 = "Cetro de Sargeras"
	L["TraitRow2_Warlock_Destruction_Upgraded"]		 = "Soberbia del titán oscuro"
	L["TraitRow3_Warlock_Destruction_Valorous"]		 = "Eco de Gul'dan"
	L["TraitRow4_Warlock_Destruction_War-torn"]		 = "Sombra del Destructor"
	L["TraitRow5_Warlock_Destruction_Challenging"]	 = "Disfraz del Oscurecedor"
	L["TraitRow6_Warlock_Destruction_Hidden"]		 = "Terror de la Legión"

	--Priest
	L["TraitRow1_Priest_Discipline_Classic"]		 = "Cólera de luz"
	L["TraitRow2_Priest_Discipline_Upgraded"]		 = "Blasón del redimido"
	L["TraitRow3_Priest_Discipline_Valorous"]		 = "Cáliz de luz"
	L["TraitRow4_Priest_Discipline_War-torn"]		 = "Vigilia eterna"
	L["TraitRow5_Priest_Discipline_Challenging"]	 = "Vigía Ascendido"
	L["TraitRow6_Priest_Discipline_Hidden"]			 = "Cumbre del guardalibros"

	L["TraitRow1_Priest_Holy_Classic"]				 = "T'uure, Guía de los Naaru"
	L["TraitRow2_Priest_Holy_Upgraded"]				 = "Estandarte de pureza"
	L["TraitRow3_Priest_Holy_Valorous"]				 = "Guardián de la luz"
	L["TraitRow4_Priest_Holy_War-torn"]				 = "Abrazo de El Vacío"
	L["TraitRow5_Priest_Holy_Challenging"]			 = "Memoria de Argus"
	L["TraitRow6_Priest_Holy_Hidden"]				 = "Blasón del natoluz"

	L["TraitRow1_Priest_Shadow_Classic"]			 = "Daga del Imperio Negro"
	L["TraitRow2_Priest_Shadow_Upgraded"]			 = "Abrazo de los dioses antiguos"
	L["TraitRow3_Priest_Shadow_Valorous"]			 = "La espada caída"
	L["TraitRow4_Priest_Shadow_War-torn"]			 = "Visión de locura"
	L["TraitRow5_Priest_Shadow_Challenging"]		 = "Reflejo retorcido"
	L["TraitRow6_Priest_Shadow_Hidden"]				 = "Zarpa de N'Zoth"

	--Mage
	L["TraitRow1_Mage_Arcane_Classic"]				 = "Aluneth"
	L["TraitRow2_Mage_Arcane_Upgraded"]				 = "Cumbre guardiana"
	L["TraitRow3_Mage_Arcane_Valorous"]				 = "Magna liberada"
	L["TraitRow4_Mage_Arcane_War-torn"]				 = "Caída de Aegwynn"
	L["TraitRow5_Mage_Arcane_Challenging"]			 = "Mago eterno"
	L["TraitRow6_Mage_Arcane_Hidden"]				 = "Carga del Lanomante"

	L["TraitRow1_Mage_Fire_Classic"]				 = "Felo'melorn"
	L["TraitRow2_Mage_Fire_Upgraded"]				 = "Orgullo de los Caminantes del Sol"
	L["TraitRow3_Mage_Fire_Valorous"]				 = "Renacer del fénix"
	L["TraitRow4_Mage_Fire_War-torn"]				 = "Filo del nacido de lava"
	L["TraitRow5_Mage_Fire_Challenging"]			 = "Hoja del manipulador de tiempo"
	L["TraitRow6_Mage_Fire_Hidden"]					 = "El diseño de las estrellas"

	L["TraitRow1_Mage_Frost_Classic"]				 = "Frío del ébano"
	L["TraitRow2_Mage_Frost_Upgraded"]				 = "Enfoque del guardián"
	L["TraitRow3_Mage_Frost_Valorous"]				 = "Flujo del primero"
	L["TraitRow4_Mage_Frost_War-torn"]				 = "Voluntad de los archimagos"
	L["TraitRow5_Mage_Frost_Challenging"]			 = "Magos de Élite"
	L["TraitRow6_Mage_Frost_Hidden"]				 = "Recuerdo de Pirofrío"

return end

if LOCALE == "esES" then
	-- EUSpanish translations go here
	L["Addon_Title"] = "Remix Artifact Tracker"
	L["Addon_Notes"] = "Agrega una pestaña de apariencias de artefacto a las armas de artefacto en Legión Remix."
	L["SlashCmd1"] = "/rat"
	L["SlashCmd2"] = "/rat"
	L["SlashCmd3"] = "/remixartifact"

	L["Traits"] = ARTIFACTS_PERK_TAB
	L["Appearances"] = ARTIFACTS_APPEARANCE_TAB
	L["ShowSecondary"] = "Mostrar secundario"
	L["ShowSecondaryTT"] = "Muestra el modelo secundario vinculado a este conjunto."
	L["RaceNightElf"] = GetRaceName(4)
	L["RaceHaranir"] = GetRaceName(86)
	L["RaceTauren"] = GetRaceName(6)
	L["RaceHMTauren"] = GetRaceName(28)
	L["RaceTroll"] = GetRaceName(8)
	L["RaceZandalari"] = GetRaceName(31)
	L["RaceWorgen"] = GetRaceName(22)
	L["RaceKulTiran"] = GetRaceName(32)
	L["RaceGroup1"] = L["RaceNightElf"] -- .. ", " .. L["RaceHaranir"] -- (maybe for future?)
	L["RaceGroup2"] = L["RaceTauren"] .. ", " .. L["RaceHMTauren"]
	L["RaceGroup3"] = L["RaceTroll"] .. ", " .. L["RaceZandalari"]
	L["RaceGroup4"] = L["RaceWorgen"] .. ", " .. L["RaceKulTiran"]
	L["Artifact"] = ITEM_QUALITY6_DESC
	L["Unavailable"] = UNAVAILABLE
	L["NoLongerAvailable"] = NO_LONGER_AVAILABLE

	L["TraitRow1Temp_Classic"]		 = "Clásico"
	L["TraitRow2Temp_Upgraded"]		 = "Mejorado"
	L["TraitRow3Temp_Valorous"]		 = "Valeroso"
	L["TraitRow4Temp_War-torn"]		 = "Destrozado por la guerra"
	L["TraitRow5Temp_Challenging"]	 = "Desafiante"
	L["TraitRow6Temp_Hidden"]		 = "Oculto"

	--classic
	L["TraitRow1Tint1Req"] = ""
	L["TraitRow1Tint2Req"] = "Recupera uno de los Pilares de la Creación."
	L["TraitRow1Tint3Req"] = "Recupera el Corazón de la Luz y llévalo a un lugar seguro, en la sede de tu clase."
	L["TraitRow1Tint4Req"] = "Completa tu primera gran campaña con la sede de tu clase."

	--upgraded
	L["TraitRow2Tint1Req"] = string.format("Completa la campaña de la sede de la clase %s.", ClassName)
	L["TraitRow2Tint2Req"] = string.format("Completa la campaña de la sede de la clase %s.", ClassName)
	L["TraitRow2Tint3Req"] = string.format("Completa la campaña de la sede de la clase %s.", ClassName)
	L["TraitRow2Tint4Req"] = "Completa el logro \"Abrir aquí\"."

	--valorous
	L["TraitRow3Tint1Req"] = "Completa la cadena de misiones \"Equilibrio de poderes\"."
	L["TraitRow3Tint2Req"] = "Completa el logro \"Monstruosidades desatadas\".\n\nCompleta la cadena de misiones \"Equilibrio de poderes\"."
	L["TraitRow3Tint3Req"] = "Completa una mazmorra mítica usando una piedra angular de nivel 5.\n\nCompleta la cadena de misiones \"Equilibrio de poderes\"."
	L["TraitRow3Tint4Req"] = "Completa el logro \"Gloria del héroe de Legion\".\n\nCompleta la cadena de misiones \"Equilibrio de poderes\"."

	--war-torn
	L["TraitRow4Tint1Req"] = "Participa en combate Jugador contra Jugador y llega al nivel 10 de honor."
	L["TraitRow4Tint2Req"] = "Llega al nivel 30 de honor."
	L["TraitRow4Tint3Req"] = "Llega al nivel 50 de honor."
	L["TraitRow4Tint4Req"] = "Llega al nivel 80 de honor."

	--challenging (swapped with Hidden)
	L["TraitRow5Tint1Req_THR"] = "Completa la cadena de misiones \"El retorno del Alto Señor\"."
	L["TraitRow5Tint2Req_THR"] = "Derrota a Kil'jaeden en dificultad heroica tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"El retorno del Alto Señor\"."
	L["TraitRow5Tint3Req_THR"] = "Gana 10 campos de batalla puntuados tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"El retorno del Alto Señor\"."
	L["TraitRow5Tint4Req_THR"] = "Completa 10 mazmorras diferentes de Legion tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"El retorno del Alto Señor\"."

	L["TraitRow5Tint1Req_XC"] =  "Completa la cadena de misiones \"Desafío de Xylem\"."
	L["TraitRow5Tint2Req_XC"] =  "Derrota a Kil'jaeden en dificultad heroica tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"Desafío de Xylem\"."
	L["TraitRow5Tint3Req_XC"] =  "Gana 10 campos de batalla puntuados tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"Desafío de Xylem\"."
	L["TraitRow5Tint4Req_XC"] =  "Completa 10 mazmorras diferentes de Legion tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"Desafío de Xylem\"."

	L["TraitRow5Tint1Req_IMC"] = "Completa la cadena de misiones \"Desafío de la madre de diablillos\"."
	L["TraitRow5Tint2Req_IMC"] = "Derrota a Kil'jaeden en dificultad heroica tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"Desafío de la madre de diablillos\"."
	L["TraitRow5Tint3Req_IMC"] = "Gana 10 campos de batalla puntuados tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"Desafío de la madre de diablillos\"."
	L["TraitRow5Tint4Req_IMC"] = "Completa 10 mazmorras diferentes de Legion tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"Desafío de la madre de diablillos\"."

	L["TraitRow5Tint1Req_TC"] = "Completa la cadena de misiones \"Desafío de las gemelas\"."
	L["TraitRow5Tint2Req_TC"] = "Derrota a Kil'jaeden en dificultad heroica tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"Desafío de las gemelas\"."
	L["TraitRow5Tint3Req_TC"] = "Gana 10 campos de batalla puntuados tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"Desafío de las gemelas\"."
	L["TraitRow5Tint4Req_TC"] = "Completa 10 mazmorras diferentes de Legion tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"Desafío de las gemelas\"."

	L["TraitRow5Tint1Req_TBRT"] = "Completa la cadena de misiones \"La amenaza del Grajo Negro\"."
	L["TraitRow5Tint2Req_TBRT"] = "Derrota a Kil'jaeden en dificultad heroica tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"La amenaza del Grajo Negro\"."
	L["TraitRow5Tint3Req_TBRT"] = "Gana 10 campos de batalla puntuados tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"La amenaza del Grajo Negro\"."
	L["TraitRow5Tint4Req_TBRT"] = "Completa 10 mazmorras diferentes de Legion tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"La amenaza del Grajo Negro\"."

	L["TraitRow5Tint1Req_TFWM"] = "Completa la cadena de misiones \"La amenaza del gusano vil\"."
	L["TraitRow5Tint2Req_TFWM"] = "Derrota a Kil'jaeden en dificultad heroica tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"La amenaza del gusano vil\"."
	L["TraitRow5Tint3Req_TFWM"] = "Gana 10 campos de batalla puntuados tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"La amenaza del gusano vil\"."
	L["TraitRow5Tint4Req_TFWM"] = "Completa 10 mazmorras diferentes de Legion tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"La amenaza del gusano vil\"."

	L["TraitRow5Tint1Req_GQC"] = "Completa la cadena de misiones \"Desafío de la Reina diosa\"."
	L["TraitRow5Tint2Req_GQC"] = "Derrota a Kil'jaeden en dificultad heroica tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"Desafío de la Reina diosa\"."
	L["TraitRow5Tint3Req_GQC"] = "Gana 10 campos de batalla puntuados tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"Desafío de la Reina diosa\"."
	L["TraitRow5Tint4Req_GQC"] = "Completa 10 mazmorras diferentes de Legion tras desbloquear una apariencia de artefacto de desafío.\n\nCompleta la cadena de misiones \"Desafío de la Reina diosa\"."

	--hidden (swapped with Challenging)
	L["TraitRow6Tint1Req"] = ""
	L["TraitRow6Tint2Req"] = "Completa 30 mazmorras de Legion tras desbloquear una apariencia de artefacto oculta."
	L["TraitRow6Tint3Req"] = "Completa 200 misiones del mundo tras desbloquear una apariencia de artefacto oculta."
	L["TraitRow6Tint4Req"] = "Mata a 1000 jugadores enemigos tras desbloquear una apariencia de artefacto oculta."

	--Demon Hunter
	L["TraitRow1_DemonHunter_Havoc_Classic"]		 = "Hojas Gemelas del Impostor"
	L["TraitRow2_DemonHunter_Havoc_Upgraded"]		 = "Mano de los Illidari"
	L["TraitRow3_DemonHunter_Havoc_Valorous"]		 = "Espada Oscura"
	L["TraitRow4_DemonHunter_Havoc_War-torn"]		 = "Toque de Demonio"
	L["TraitRow5_DemonHunter_Havoc_Challenging"]	 = "Segadora Flamígera"
	L["TraitRow6_DemonHunter_Havoc_Hidden"]			 = "Caminamuerte"

	L["TraitRow1_DemonHunter_Vengeance_Classic"]	 = "Hojas de Guerra Aldrachi"
	L["TraitRow2_DemonHunter_Vengeance_Upgraded"]	 = "Blasón Illidari"
	L["TraitRow3_DemonHunter_Vengeance_Valorous"]	 = "Mordedura del Señor del Terror"
	L["TraitRow4_DemonHunter_Vengeance_War-torn"]	 = "Terror Óseo"
	L["TraitRow5_DemonHunter_Vengeance_Challenging"] = "Ala Parda"
	L["TraitRow6_DemonHunter_Vengeance_Hidden"]		 = "Celador de la Horda de Hierro"

	--Paladin
	L["TraitRow1_Paladin_Retribution_Classic"]		 = "Crematoria"
	L["TraitRow2_Paladin_Retribution_Upgraded"]		 = "Espada Magna del Honrado"
	L["TraitRow3_Paladin_Retribution_Valorous"]		 = "Represalia ardiente"
	L["TraitRow4_Paladin_Retribution_War-torn"]		 = "Esperanza Caída"
	L["TraitRow5_Paladin_Retribution_Challenging"]	 = "Juicio Destructor"
	L["TraitRow6_Paladin_Retribution_Hidden"]		 = "Reminiscencia Corrupta"

	L["TraitRow1_Paladin_Holy_Classic"]				 = "Mano de Plata"
	L["TraitRow2_Paladin_Holy_Upgraded"]			 = "Puño del Vigilante Caído"
	L["TraitRow3_Paladin_Holy_Valorous"]			 = "Sentencia del Protector"
	L["TraitRow4_Paladin_Holy_War-torn"]			 = "Depositario de Tumbas"
	L["TraitRow5_Paladin_Holy_Challenging"]			 = "Llama de Justicia"
	L["TraitRow6_Paladin_Holy_Hidden"]				 = "Armamento del Vigía"

	L["TraitRow1_Paladin_Protection_Classic"]		 = "Veraguardia"
	L["TraitRow2_Paladin_Protection_Upgraded"]		 = "Luz de los Titanes"
	L["TraitRow3_Paladin_Protection_Valorous"]		 = "Protector Divino"
	L["TraitRow4_Paladin_Protection_War-torn"]		 = "Resguardo del Guarda Oscuro"
	L["TraitRow5_Paladin_Protection_Challenging"]	 = "Blasón de Fuego Sagrado"
	L["TraitRow6_Paladin_Protection_Hidden"]		 = "Baluarte del Vindicador"

	--Warrior
	L["TraitRow1_Warrior_Arms_Classic"]				 = "Strom'kar la Belígera"
	L["TraitRow2_Warrior_Arms_Upgraded"]			 = "Venganza de los Caídos"
	L["TraitRow3_Warrior_Arms_Valorous"]			 = "Segadora Flamígera"
	L["TraitRow4_Warrior_Arms_War-torn"]			 = "Filo de la Cólera"
	L["TraitRow5_Warrior_Arms_Challenging"]			 = "Hoja del Campeón Celeste"
	L["TraitRow6_Warrior_Arms_Hidden"]				 = "Rompehojas de Arcanita"

	L["TraitRow1_Warrior_Fury_Classic"]				 = "Espadas de Guerra de los Valarjar"
	L["TraitRow2_Warrior_Fury_Upgraded"]			 = "Brazo del Jinete de Dragón"
	L["TraitRow3_Warrior_Fury_Valorous"]			 = "Fauces del Valor"
	L["TraitRow4_Warrior_Fury_War-torn"]			 = "Aliento de Tormenta"
	L["TraitRow5_Warrior_Fury_Challenging"]			 = "Mirada de Helya"
	L["TraitRow6_Warrior_Fury_Hidden"]				 = "Filo del Matadragones"

	L["TraitRow1_Warrior_Protection_Classic"]		 = "Escama del Guardián de la Tierra"
	L["TraitRow2_Warrior_Protection_Upgraded"]		 = "Brazo del Rey Caído"
	L["TraitRow3_Warrior_Protection_Valorous"]		 = "Unión Intacta"
	L["TraitRow4_Warrior_Protection_War-torn"]		 = "Mirada del Guardia de la Muerte"
	L["TraitRow5_Warrior_Protection_Challenging"]	 = "Destructor de la Legión"
	L["TraitRow6_Warrior_Protection_Hidden"]		 = "Último Aliento del Rompemundos"

	--Death Knight
	L["TraitRow1_DeathKnight_Blood_Classic"]		 = "Fauce del Maldito"
	L["TraitRow2_DeathKnight_Blood_Upgraded"]		 = "Sangrefauce"
	L["TraitRow3_DeathKnight_Blood_Valorous"]		 = "Segadora de Almas"
	L["TraitRow4_DeathKnight_Blood_War-torn"]		 = "Verdugo"
	L["TraitRow5_DeathKnight_Blood_Challenging"]	 = "Mandíbula de Huesos"
	L["TraitRow6_DeathKnight_Blood_Hidden"]			 = "Toque de No-muerte"

	L["TraitRow1_DeathKnight_Frost_Classic"]		 = "Hojas del Príncipe Caído"
	L["TraitRow2_DeathKnight_Frost_Upgraded"]		 = "Legado de la Agonía de Escarcha"
	L["TraitRow3_DeathKnight_Frost_Valorous"]		 = "Furia de Sindragosa"
	L["TraitRow4_DeathKnight_Frost_War-torn"]		 = "Guardián de la Tumba"
	L["TraitRow5_DeathKnight_Frost_Challenging"]	 = "Recolectora de almas"
	L["TraitRow6_DeathKnight_Frost_Hidden"]			 = "Hojarruna Oscura"

	L["TraitRow1_DeathKnight_Unholy_Classic"]		 = "Apocalipsis"
	L["TraitRow2_DeathKnight_Unholy_Upgraded"]		 = "Guerra Profana"
	L["TraitRow3_DeathKnight_Unholy_Valorous"]		 = "Heraldo de Pestilencia"
	L["TraitRow4_DeathKnight_Unholy_War-torn"]		 = "Portadora Hambrienta"
	L["TraitRow5_DeathKnight_Unholy_Challenging"]	 = "Liberación de la Muerte"
	L["TraitRow6_DeathKnight_Unholy_Hidden"]		 = "Segadora de Huesos"

	--Hunter
	L["TraitRow1_Hunter_BeastMastery_Classic"]		 = "Furia Titánica"
	L["TraitRow2_Hunter_BeastMastery_Upgraded"]		 = "Visión de Águila"
	L["TraitRow3_Hunter_BeastMastery_Valorous"]		 = "Trueno de Elekk"
	L["TraitRow4_Hunter_BeastMastery_War-torn"]		 = "Cañón de Disparo de Jabalí"
	L["TraitRow5_Hunter_BeastMastery_Challenging"]	 = "Mordedura de Serpiente"
	L["TraitRow6_Hunter_BeastMastery_Hidden"]		 = "Alcance del Titán"

	L["TraitRow1_Hunter_Marksmanship_Classic"]		 = "Thas'dorah, Legado de los Brisaveloz"
	L["TraitRow2_Hunter_Marksmanship_Upgraded"]		 = "Vínculo de Hermanas"
	L["TraitRow3_Hunter_Marksmanship_Valorous"]		 = "Renacimiento del Fénix"
	L["TraitRow4_Hunter_Marksmanship_War-torn"]		 = "Resguardo de la General Forestal"
	L["TraitRow5_Hunter_Marksmanship_Challenging"]	 = "Caminante Salvaje"
	L["TraitRow6_Hunter_Marksmanship_Hidden"]		 = "Guardacuervos"

	L["TraitRow1_Hunter_Survival_Classic"]			 = "Garra Feroz"
	L["TraitRow2_Hunter_Survival_Upgraded"]			 = "Renacimiento del Águila"
	L["TraitRow3_Hunter_Survival_Valorous"]			 = "Lanza de Alfa"
	L["TraitRow4_Hunter_Survival_War-torn"]			 = "Golpe de Serpiente"
	L["TraitRow5_Hunter_Survival_Challenging"]		 = "Guardián de los Bosques"
	L["TraitRow6_Hunter_Survival_Hidden"]			 = "Entereza de Oso"

	--Shaman
	L["TraitRow1_Shaman_Elemental_Classic"]			 = "Puño de Ra Den"
	L["TraitRow2_Shaman_Elemental_Upgraded"]		 = "Guardia de la Tormenta"
	L["TraitRow3_Shaman_Elemental_Valorous"]		 = "Hablatierra"
	L["TraitRow4_Shaman_Elemental_War-torn"]		 = "Puño del Chamán Caído"
	L["TraitRow5_Shaman_Elemental_Challenging"]		 = "Legado de Rehgar"
	L["TraitRow6_Shaman_Elemental_Hidden"]			 = "Prestigio de los Amani"

	L["TraitRow1_Shaman_Enhancement_Classic"]		 = "Martillo Maldito"
	L["TraitRow2_Shaman_Enhancement_Upgraded"]		 = "Invocatormentas"
	L["TraitRow3_Shaman_Enhancement_Valorous"]		 = "Fatalidad de la Legión"
	L["TraitRow4_Shaman_Enhancement_War-torn"]		 = "Destino de Puño Negro"
	L["TraitRow5_Shaman_Enhancement_Challenging"]	 = "Tifón"
	L["TraitRow6_Shaman_Enhancement_Hidden"]		 = "Campeón de Zandalar"

	L["TraitRow1_Shaman_Restoration_Classic"]		 = "Sharas'dal, Cetro de las Mareas"
	L["TraitRow2_Shaman_Restoration_Upgraded"]		 = "Cetro de las Profundidades"
	L["TraitRow3_Shaman_Restoration_Valorous"]		 = "Nacido de Titán"
	L["TraitRow4_Shaman_Restoration_War-torn"]		 = "Portatótems"
	L["TraitRow5_Shaman_Restoration_Challenging"]	 = "Destino Gélido"
	L["TraitRow6_Shaman_Restoration_Hidden"]		 = "Serpiente Enroscada"

	--Druid
	L["TraitRow1_Druid_Balance_Classic"]			 = "Guadaña de Elune"
	L["TraitRow2_Druid_Balance_Upgraded"]			 = "Emisario de Goldrinn"
	L["TraitRow3_Druid_Balance_Valorous"]			 = "Llamada Lunar"
	L["TraitRow4_Druid_Balance_War-torn"]			 = "Aflicción de la Pesadilla"
	L["TraitRow5_Druid_Balance_Challenging"]		 = "Guadaña de Maná"
	L["TraitRow6_Druid_Balance_Hidden"]				 = "Alcance del Guardián del Sol"

	L["TraitRow1_Druid_Feral_Classic"]				 = "Colmillos de Crinceniza"
	L["TraitRow2_Druid_Feral_Upgraded"]				 = "Furia de la Naturaleza"
	L["TraitRow3_Druid_Feral_Valorous"]				 = "Acechador Primigenio"
	L["TraitRow4_Druid_Feral_War-torn"]				 = "Encarnación de la Pesadilla"
	L["TraitRow5_Druid_Feral_Challenging"]			 = "Espectro de la Madre de la Manada"
	L["TraitRow6_Druid_Feral_Hidden"]				 = "Espíritu de la Luna"

	L["TraitRow1_Druid_Guardian_Classic"]			 = "Garras de Ursoc"
	L["TraitRow2_Druid_Guardian_Upgraded"]			 = "Zarpapétrea"
	L["TraitRow3_Druid_Guardian_Valorous"]			 = "Avatar de Ursol"
	L["TraitRow4_Druid_Guardian_War-torn"]			 = "Caído de la Pesadilla"
	L["TraitRow5_Druid_Guardian_Challenging"]		 = "Poderío de los Fauceparda"
	L["TraitRow6_Druid_Guardian_Hidden"]			 = "Guardián del Claro"

	L["TraitRow1_Druid_Restoration_Classic"]		 = "G'Hanir, el Árbol Madre"
	L["TraitRow2_Druid_Restoration_Upgraded"]		 = "Árbol Ancestral"
	L["TraitRow3_Druid_Restoration_Valorous"]		 = "Despertar Cristalino"
	L["TraitRow4_Druid_Restoration_War-torn"]		 = "Guardián de Muertobosque"
	L["TraitRow5_Druid_Restoration_Challenging"]	 = "Vigilancia nocturna"
	L["TraitRow6_Druid_Restoration_Hidden"]			 = "Corona de la Celadora"

	--Rogue
	L["TraitRow1_Rogue_Assassination_Classic"]		 = "Matarreyes"
	L["TraitRow2_Rogue_Assassination_Upgraded"]		 = "Mano Maldita"
	L["TraitRow3_Rogue_Assassination_Valorous"]		 = "Muerte Diestra"
	L["TraitRow4_Rogue_Assassination_War-torn"]		 = "Filo del Asesino de Magos"
	L["TraitRow5_Rogue_Assassination_Challenging"]	 = "Filo Fantasmal"
	L["TraitRow6_Rogue_Assassination_Hidden"]		 = "Rompehuesos"

	L["TraitRow1_Rogue_Outlaw_Classic"]				 = "Hojas Pérfidas"
	L["TraitRow2_Rogue_Outlaw_Upgraded"]			 = "Promesa de la Plaga Marina"
	L["TraitRow3_Rogue_Outlaw_Valorous"]			 = "Beso Incandescente"
	L["TraitRow4_Rogue_Outlaw_War-torn"]			 = "Últimas Palabras del Bribón"
	L["TraitRow5_Rogue_Outlaw_Challenging"]			 = "Alcance del Esgrimista"
	L["TraitRow6_Rogue_Outlaw_Hidden"]				 = "Trueno Furioso, Espada Bendita del Señor del Viento"
	
	L["TraitRow1_Rogue_Subtlety_Classic"]			 = "Colmillos del Devorador"
	L["TraitRow2_Rogue_Subtlety_Upgraded"]			 = "Hoja de las Sombras"
	L["TraitRow3_Rogue_Subtlety_Valorous"]			 = "Abrazo de Demonio"
	L["TraitRow4_Rogue_Subtlety_War-torn"]			 = "Sanguinario"
	L["TraitRow5_Rogue_Subtlety_Challenging"]		 = "Cortahielo"
	L["TraitRow6_Rogue_Subtlety_Hidden"]			 = "Mordisco Venenoso"

	--Monk
	L["TraitRow1_Monk_Brewmaster_Classic"]			 = "Fu Zan, el Compañero del Errante"
	L["TraitRow2_Monk_Brewmaster_Upgraded"]			 = "Carga del Rey Mono"
	L["TraitRow3_Monk_Brewmaster_Valorous"]			 = "Corazón del Buey"
	L["TraitRow4_Monk_Brewmaster_War-torn"]			 = "Abrazo de Fuego de Dragón"
	L["TraitRow5_Monk_Brewmaster_Challenging"]		 = "Portadora de Niebla"
	L["TraitRow6_Monk_Brewmaster_Hidden"]			 = "Vigilante de Brebaje Ancestral"

	L["TraitRow1_Monk_Mistweaver_Classic"]			 = "Sheilun, Bastón de la Niebla"
	L["TraitRow2_Monk_Mistweaver_Upgraded"]			 = "Estrago de la Niebla Profunda"
	L["TraitRow3_Monk_Mistweaver_Valorous"]			 = "Espíritu de Chi-Ji"
	L["TraitRow4_Monk_Mistweaver_War-torn"]			 = "Tormento del Sha"
	L["TraitRow5_Monk_Mistweaver_Challenging"]		 = "Esencia de Tranquilidad"
	L["TraitRow6_Monk_Mistweaver_Hidden"]			 = "Aliento de la Serpiente Inmortal"

	L["TraitRow1_Monk_Windwalker_Classic"]			 = "Puños de los Cielos"
	L["TraitRow2_Monk_Windwalker_Upgraded"]			 = "Toque de Al'Akir"
	L["TraitRow3_Monk_Windwalker_Valorous"]			 = "Alcance del Espíritu"
	L["TraitRow4_Monk_Windwalker_War-torn"]			 = "Legado del Shadopan"
	L["TraitRow5_Monk_Windwalker_Challenging"]		 = "Déspota de Xuen"
	L["TraitRow6_Monk_Windwalker_Hidden"]			 = "Puño de Tormenta"

	--Warlock
	L["TraitRow1_Warlock_Affliction_Classic"]		 = "Falce del Paso de la Muerte"
	L["TraitRow2_Warlock_Affliction_Upgraded"]		 = "Mano del Afligido"
	L["TraitRow3_Warlock_Affliction_Valorous"]		 = "Succión de Alma"
	L["TraitRow4_Warlock_Affliction_War-torn"]		 = "Mano de la Muerte"
	L["TraitRow5_Warlock_Affliction_Challenging"]	 = "Espinazo del Condenado"
	L["TraitRow6_Warlock_Affliction_Hidden"]		 = "Fin del Destino"

	L["TraitRow1_Warlock_Demonology_Classic"]		 = "Cráneo del Man'ari"
	L["TraitRow2_Warlock_Demonology_Upgraded"]		 = "Mirada del Primer Invocador"
	L["TraitRow3_Warlock_Demonology_Valorous"]		 = "Orgullo del Señor del Foso"
	L["TraitRow4_Warlock_Demonology_War-torn"]		 = "Vestigio Ardiente"
	L["TraitRow5_Warlock_Demonology_Challenging"]	 = "Alma de los Olvidados"
	L["TraitRow6_Warlock_Demonology_Hidden"]		 = "Rostro de Thal'kiel"

	L["TraitRow1_Warlock_Destruction_Classic"]		 = "Cetro de Sargeras"
	L["TraitRow2_Warlock_Destruction_Upgraded"]		 = "Arrogancia del Titán Oscuro"
	L["TraitRow3_Warlock_Destruction_Valorous"]		 = "Eco de Gul'dan"
	L["TraitRow4_Warlock_Destruction_War-torn"]		 = "Sombra del Destructor"
	L["TraitRow5_Warlock_Destruction_Challenging"]	 = "Apariencia del Ensombrecedor"
	L["TraitRow6_Warlock_Destruction_Hidden"]		 = "Terror de la Legión"

	--Priest
	L["TraitRow1_Priest_Discipline_Classic"]		 = "Cólera de la Luz"
	L["TraitRow2_Priest_Discipline_Upgraded"]		 = "Blasón de los Redimidos"
	L["TraitRow3_Priest_Discipline_Valorous"]		 = "Cáliz de Luz"
	L["TraitRow4_Priest_Discipline_War-torn"]		 = "Vigilia Eterna"
	L["TraitRow5_Priest_Discipline_Challenging"]	 = "Vigilancia Ascendida"
	L["TraitRow6_Priest_Discipline_Hidden"]			 = "Aguja del Archivista"

	L["TraitRow1_Priest_Holy_Classic"]				 = "T'uure, Guía de los Naaru"
	L["TraitRow2_Priest_Holy_Upgraded"]				 = "Estandarte de Pureza"
	L["TraitRow3_Priest_Holy_Valorous"]				 = "Guardián de Luz"
	L["TraitRow4_Priest_Holy_War-torn"]				 = "Abrazo del Vacío"
	L["TraitRow5_Priest_Holy_Challenging"]			 = "Recuerdo de Argus"
	L["TraitRow6_Priest_Holy_Hidden"]				 = "Blasón de los Natoluz"

	L["TraitRow1_Priest_Shadow_Classic"]			 = "Daga del Imperio Negro"
	L["TraitRow2_Priest_Shadow_Upgraded"]			 = "Abrazo de los Dioses Antiguos"
	L["TraitRow3_Priest_Shadow_Valorous"]			 = "Hoja Caída"
	L["TraitRow4_Priest_Shadow_War-torn"]			 = "Visión de Locura"
	L["TraitRow5_Priest_Shadow_Challenging"]		 = "Reflejo Retorcido"
	L["TraitRow6_Priest_Shadow_Hidden"]				 = "Garra de N'Zoth"

	--Mage
	L["TraitRow1_Mage_Arcane_Classic"]				 = "Aluneth"
	L["TraitRow2_Mage_Arcane_Upgraded"]				 = "Aguja Guardiana"
	L["TraitRow3_Mage_Arcane_Valorous"]				 = "Magna Desatada"
	L["TraitRow4_Mage_Arcane_War-torn"]				 = "Caída de Aegwynn"
	L["TraitRow5_Mage_Arcane_Challenging"]			 = "Magus Eterno"
	L["TraitRow6_Mage_Arcane_Hidden"]				 = "Carga del Lanomántico"

	L["TraitRow1_Mage_Fire_Classic"]				 = "Felo'melorn"
	L["TraitRow2_Mage_Fire_Upgraded"]				 = "Orgullo de los Caminantes del Sol"
	L["TraitRow3_Mage_Fire_Valorous"]				 = "Renacimiento del Fénix"
	L["TraitRow4_Mage_Fire_War-torn"]				 = "Filo de Lávico"
	L["TraitRow5_Mage_Fire_Challenging"]			 = "Hoja del Manipulador del Tiempo"
	L["TraitRow6_Mage_Fire_Hidden"]					 = "Diseño de las Estrellas"

	L["TraitRow1_Mage_Frost_Classic"]				 = "Ébano Glacial"
	L["TraitRow2_Mage_Frost_Upgraded"]				 = "Foco del Guardián"
	L["TraitRow3_Mage_Frost_Valorous"]				 = "Sangre del Primero"
	L["TraitRow4_Mage_Frost_War-torn"]				 = "Voluntad de los Archimagos"
	L["TraitRow5_Mage_Frost_Challenging"]			 = "Magus de Élite"
	L["TraitRow6_Mage_Frost_Hidden"]				 = "Recuerdo de Pirofrío"

return end

if LOCALE == "deDE" then
	-- German translations go here
	L["Addon_Title"] = "Remix Artifact Tracker"
	L["Addon_Notes"] = "Fügt den Artefaktwaffen in Legion Remix einen Reiter für Artefaktvorlagen hinzu."
	L["SlashCmd1"] = "/rat"
	L["SlashCmd2"] = "/rat"
	L["SlashCmd3"] = "/remixartifact"

	L["Traits"] = ARTIFACTS_PERK_TAB
	L["Appearances"] = ARTIFACTS_APPEARANCE_TAB
	L["ShowSecondary"] = "Sekundär anzeigen"
	L["ShowSecondaryTT"] = "Zeigt das sekundäre Modell, das mit diesem Set verknüpft ist."
	L["RaceNightElf"] = GetRaceName(4)
	L["RaceHaranir"] = GetRaceName(86)
	L["RaceTauren"] = GetRaceName(6)
	L["RaceHMTauren"] = GetRaceName(28)
	L["RaceTroll"] = GetRaceName(8)
	L["RaceZandalari"] = GetRaceName(31)
	L["RaceWorgen"] = GetRaceName(22)
	L["RaceKulTiran"] = GetRaceName(32)
	L["RaceGroup1"] = L["RaceNightElf"] -- .. ", " .. L["RaceHaranir"] -- (maybe for future?)
	L["RaceGroup2"] = L["RaceTauren"] .. ", " .. L["RaceHMTauren"]
	L["RaceGroup3"] = L["RaceTroll"] .. ", " .. L["RaceZandalari"]
	L["RaceGroup4"] = L["RaceWorgen"] .. ", " .. L["RaceKulTiran"]
	L["Artifact"] = ITEM_QUALITY6_DESC
	L["Unavailable"] = UNAVAILABLE
	L["NoLongerAvailable"] = NO_LONGER_AVAILABLE

	L["TraitRow1Temp_Classic"]		 = "Klassisch"
	L["TraitRow2Temp_Upgraded"]		 = "Verbessert"
	L["TraitRow3Temp_Valorous"]		 = "Tapfer"
	L["TraitRow4Temp_War-torn"]		 = "Kampfzerschlissen"
	L["TraitRow5Temp_Challenging"]	 = "Herausforderung"
	L["TraitRow6Temp_Hidden"]		 = "Verborgen"

	--classic
	L["TraitRow1Tint1Req"] = ""
	L["TraitRow1Tint2Req"] = "Findet eine der Säulen der Schöpfung."
	L["TraitRow1Tint3Req"] = "Findet das Herz des Lichts und bringt es in Eurer Ordenshalle in Sicherheit."
	L["TraitRow1Tint4Req"] = "Schließt den ersten Meilenstein Eurer Ordenskampagne ab."

	--upgraded
	L["TraitRow2Tint1Req"] = string.format("Schließt die Ordenskampagne der Klasse %s ab.", ClassName)
	L["TraitRow2Tint2Req"] = string.format("Schließt die Ordenskampagne der Klasse %s ab.", ClassName)
	L["TraitRow2Tint3Req"] = string.format("Schließt die Ordenskampagne der Klasse %s ab.", ClassName)
	L["TraitRow2Tint4Req"] = "Schließt den Erfolg \"Hier ist oben\" ab."

	--valorous
	L["TraitRow3Tint1Req"] = "Schließt die Questreihe \"Gleichgewicht der Kräfte\" ab."
	L["TraitRow3Tint2Req"] = "Schließt den Erfolg \"Entfesselte Monster\" ab.\n\nSchließt die Questreihe \"Gleichgewicht der Kräfte\" ab."
	L["TraitRow3Tint3Req"] = "Absolviert einen mythischen Dungeon mit einem Stufe-5-Schlüsselstein.\n\nSchließt die Questreihe \"Gleichgewicht der Kräfte\" ab."
	L["TraitRow3Tint4Req"] = "Schließt den Erfolg \"Ruhm des Helden von Legion\" ab.\n\nSchließt die Questreihe \"Gleichgewicht der Kräfte\" ab."

	--war-torn
	L["TraitRow4Tint1Req"] = "Nehmt an PvP-Kämpfen teil und erreicht Ehrestufe 10."
	L["TraitRow4Tint2Req"] = "Erreicht Ehrestufe 30."
	L["TraitRow4Tint3Req"] = "Erreicht Ehrestufe 50."
	L["TraitRow4Tint4Req"] = "Erreicht Ehrestufe 80."

	--challenging (swapped with Hidden)
	L["TraitRow5Tint1Req_THR"] = "Schließt die Questreihe \"Rückkehr des Hochlords\" ab."
	L["TraitRow5Tint2Req_THR"] = "Bezwingt Kil'jaeden (Heroisch) mit einer Herausforderungsvorlage.\n\nSchließt \"Rückkehr des Hochlords\" ab."
	L["TraitRow5Tint3Req_THR"] = "Gewinnt 10 gewertete Schlachtfelder mit einer Herausforderungsvorlage.\n\nSchließt \"Rückkehr des Hochlords\" ab."
	L["TraitRow5Tint4Req_THR"] = "Schließt 10 verschiedene Dungeons von Legion mit einer Herausforderungsvorlage ab.\n\nSchließt \"Rückkehr des Hochlords\" ab."

	L["TraitRow5Tint1Req_XC"] = "Schließt die Questreihe \"Herausforderung: Xylem\" ab."
	L["TraitRow5Tint2Req_XC"] = "Bezwingt Kil'jaeden (Heroisch) mit einer Herausforderungsvorlage.\n\nSchließt \"Herausforderung: Xylem\" ab."
	L["TraitRow5Tint3Req_XC"] = "Gewinnt 10 gewertete Schlachtfelder mit einer Herausforderungsvorlage.\n\nSchließt \"Herausforderung: Xylem\" ab."
	L["TraitRow5Tint4Req_XC"] = "Schließt 10 verschiedene Dungeons von Legion mit einer Herausforderungsvorlage ab.\n\nSchließt \"Herausforderung: Xylem\" ab."

	L["TraitRow5Tint1Req_IMC"] = "Schließt die Questreihe \"Herausforderung: Wichtelmutter\" ab."
	L["TraitRow5Tint2Req_IMC"] = "Bezwingt Kil'jaeden (Heroisch) mit einer Herausforderungsvorlage.\n\nSchließt \"Herausforderung: Wichtelmutter\" ab."
	L["TraitRow5Tint3Req_IMC"] = "Gewinnt 10 gewertete Schlachtfelder mit einer Herausforderungsvorlage.\n\nSchließt \"Herausforderung: Wichtelmutter\" ab."
	L["TraitRow5Tint4Req_IMC"] = "Schließt 10 verschiedene Dungeons von Legion mit einer Herausforderungsvorlage ab.\n\nSchließt \"Herausforderung: Wichtelmutter\" ab."

	L["TraitRow5Tint1Req_TC"] = "Schließt die Questreihe \"Herausforderung: Zwillinge\" ab."
	L["TraitRow5Tint2Req_TC"] = "Bezwingt Kil'jaeden (Heroisch) mit einer Herausforderungsvorlage.\n\nSchließt \"Herausforderung: Zwillinge\" ab."
	L["TraitRow5Tint3Req_TC"] = "Gewinnt 10 gewertete Schlachtfelder mit einer Herausforderungsvorlage.\n\nSchließt \"Herausforderung: Zwillinge\" ab."
	L["TraitRow5Tint4Req_TC"] = "Schließt 10 verschiedene Dungeons von Legion mit einer Herausforderungsvorlage ab.\n\nSchließt \"Herausforderung: Zwillinge\" ab."

	L["TraitRow5Tint1Req_TBRT"] = "Schließt die Questreihe \"Gefahr aus der Rabenwehr\" ab."
	L["TraitRow5Tint2Req_TBRT"] = "Bezwingt Kil'jaeden (Heroisch) mit einer Herausforderungsvorlage.\n\nSchließt \"Gefahr aus der Rabenwehr\" ab."
	L["TraitRow5Tint3Req_TBRT"] = "Gewinnt 10 gewertete Schlachtfelder mit einer Herausforderungsvorlage.\n\nSchließt \"Gefahr aus der Rabenwehr\" ab."
	L["TraitRow5Tint4Req_TBRT"] = "Schließt 10 verschiedene Dungeons von Legion mit einer Herausforderungsvorlage ab.\n\nSchließt \"Gefahr aus der Rabenwehr\" ab."

	L["TraitRow5Tint1Req_TFWM"] = "Schließt die Questreihe \"Die Teufelswurmbedrohung\" ab."
	L["TraitRow5Tint2Req_TFWM"] = "Bezwingt Kil'jaeden (Heroisch) mit einer Herausforderungsvorlage.\n\nSchließt \"Die Teufelswurmbedrohung\" ab."
	L["TraitRow5Tint3Req_TFWM"] = "Gewinnt 10 gewertete Schlachtfelder mit einer Herausforderungsvorlage.\n\nSchließt \"Die Teufelswurmbedrohung\" ab."
	L["TraitRow5Tint4Req_TFWM"] = "Schließt 10 verschiedene Dungeons von Legion mit einer Herausforderungsvorlage ab.\n\nSchließt \"Die Teufelswurmbedrohung\" ab."

	L["TraitRow5Tint1Req_GQC"] = "Schließt die Questreihe \"Herausforderung: Gottkönigin\" ab."
	L["TraitRow5Tint2Req_GQC"] = "Bezwingt Kil'jaeden (Heroisch) mit einer Herausforderungsvorlage.\n\nSchließt \"Herausforderung: Gottkönigin\" ab."
	L["TraitRow5Tint3Req_GQC"] = "Gewinnt 10 gewertete Schlachtfelder mit einer Herausforderungsvorlage.\n\nSchließt \"Herausforderung: Gottkönigin\" ab."
	L["TraitRow5Tint4Req_GQC"] = "Schließt 10 verschiedene Dungeons von Legion mit einer Herausforderungsvorlage ab.\n\nSchließt \"Herausforderung: Gottkönigin\" ab."

	--hidden (swapped with Challenging)
	L["TraitRow6Tint1Req"] = ""
	L["TraitRow6Tint2Req"] = "Schließt 30 Dungeons von Legion ab, nachdem Ihr eine verborgene Artefaktvorlage freigeschaltet habt."
	L["TraitRow6Tint3Req"] = "Schließt 200 Weltquests ab, nachdem Ihr eine verborgene Artefaktvorlage freigeschaltet habt."
	L["TraitRow6Tint4Req"] = "Tötet 1.000 gegnerische Spielercharaktere, nachdem Ihr eine verborgene Artefaktvorlage freigeschaltet habt."

	--Demon Hunter
	L["TraitRow1_DemonHunter_Havoc_Classic"]		 = "Zwillingsklingen des Betrügers"
	L["TraitRow2_DemonHunter_Havoc_Upgraded"]		 = "Hand der Illidari"
	L["TraitRow3_DemonHunter_Havoc_Valorous"]		 = "Klinge der Dunkelung"
	L["TraitRow4_DemonHunter_Havoc_War-torn"]		 = "Stich des Dämons"
	L["TraitRow5_DemonHunter_Havoc_Challenging"]	 = "Flammenernter"
	L["TraitRow6_DemonHunter_Havoc_Hidden"]			 = "Todeswandler"

	L["TraitRow1_DemonHunter_Vengeance_Classic"]	 = "Kriegsklingen der Aldrachi"
	L["TraitRow2_DemonHunter_Vengeance_Upgraded"]	 = "Wappenschneide der Illidari"
	L["TraitRow3_DemonHunter_Vengeance_Valorous"]	 = "Biss des Schreckenslords"
	L["TraitRow4_DemonHunter_Vengeance_War-torn"]	 = "Knochenschrecken"
	L["TraitRow5_DemonHunter_Vengeance_Challenging"] = "Dunkelschwinge"
	L["TraitRow6_DemonHunter_Vengeance_Hidden"]		 = "Eiserner Wächter"

	--Paladin
	L["TraitRow1_Paladin_Retribution_Classic"]		 = "Aschenbringer"
	L["TraitRow2_Paladin_Retribution_Upgraded"]		 = "Großschwert der Rechtschaffenen"
	L["TraitRow3_Paladin_Retribution_Valorous"]		 = "Brennende Vergeltung"
	L["TraitRow4_Paladin_Retribution_War-torn"]		 = "Ende aller Hoffnung"
	L["TraitRow5_Paladin_Retribution_Challenging"]	 = "Schmetternde Abrechnung"
	L["TraitRow6_Paladin_Retribution_Hidden"]		 = "Verderbtes Andenken"

	L["TraitRow1_Paladin_Holy_Classic"]				 = "Die Silberne Hand"
	L["TraitRow2_Paladin_Holy_Upgraded"]			 = "Faust des gefallenen Wächters"
	L["TraitRow3_Paladin_Holy_Valorous"]			 = "Urteil des Beschützers"
	L["TraitRow4_Paladin_Holy_War-torn"]			 = "Der Grabwärter"
	L["TraitRow5_Paladin_Holy_Challenging"]			 = "Flamme der Gerechtigkeit"
	L["TraitRow6_Paladin_Holy_Hidden"]				 = "Waffen des Wächters"

	L["TraitRow1_Paladin_Protection_Classic"]		 = "Der Wahrheitshüter"
	L["TraitRow2_Paladin_Protection_Upgraded"]		 = "Licht der Titanen"
	L["TraitRow3_Paladin_Protection_Valorous"]		 = "Göttlicher Beschützer"
	L["TraitRow4_Paladin_Protection_War-torn"]		 = "Schutz des dunklen Wächters"
	L["TraitRow5_Paladin_Protection_Challenging"]	 = "Wappen des heiligen Feuers"
	L["TraitRow6_Paladin_Protection_Hidden"]		 = "Bollwerk des Verteidigers"

	--Warrior
	L["TraitRow1_Warrior_Arms_Classic"]				 = "Strom'kar der Kriegsbrecher"
	L["TraitRow2_Warrior_Arms_Upgraded"]			 = "Rache der Gefallenen"
	L["TraitRow3_Warrior_Arms_Valorous"]			 = "Flammenreißer"
	L["TraitRow4_Warrior_Arms_War-torn"]			 = "Schneide des Zorns"
	L["TraitRow5_Warrior_Arms_Challenging"]			 = "Klinge des Himmelschampions"
	L["TraitRow6_Warrior_Arms_Hidden"]				 = "Arkanitklingenbrecher"

	L["TraitRow1_Warrior_Fury_Classic"]				 = "Kriegsschwerter der Valarjar"
	L["TraitRow2_Warrior_Fury_Upgraded"]			 = "Arm des Drachenreiters"
	L["TraitRow3_Warrior_Fury_Valorous"]			 = "Schlund der Tapferkeit"
	L["TraitRow4_Warrior_Fury_War-torn"]			 = "Sturmodem"
	L["TraitRow5_Warrior_Fury_Challenging"]			 = "Helyas Blick"
	L["TraitRow6_Warrior_Fury_Hidden"]				 = "Schneide des Drachentöters"

	L["TraitRow1_Warrior_Protection_Classic"]		 = "Schuppe des Erdwächters"
	L["TraitRow2_Warrior_Protection_Upgraded"]		 = "Arm des gefallenen Königs"
	L["TraitRow3_Warrior_Protection_Valorous"]		 = "Ungebrochener Trotz"
	L["TraitRow4_Warrior_Protection_War-torn"]		 = "Blick der Todeswache"
	L["TraitRow5_Warrior_Protection_Challenging"]	 = "Legionsbrecher"
	L["TraitRow6_Warrior_Protection_Hidden"]		 = "Letzter Atem des Weltenbrechers"

	--Death Knight
	L["TraitRow1_DeathKnight_Blood_Classic"]		 = "Schlund der Verdammten"
	L["TraitRow2_DeathKnight_Blood_Upgraded"]		 = "Blutrachen"
	L["TraitRow3_DeathKnight_Blood_Valorous"]		 = "Seelenernter"
	L["TraitRow4_DeathKnight_Blood_War-torn"]		 = "Scharfrichter"
	L["TraitRow5_DeathKnight_Blood_Challenging"]	 = "Knochenschlund"
	L["TraitRow6_DeathKnight_Blood_Hidden"]			 = "Berührung des Untodes"

	L["TraitRow1_DeathKnight_Frost_Classic"]		 = "Klingen des gefallenen Prinzen"
	L["TraitRow2_DeathKnight_Frost_Upgraded"]		 = "Frostgrams Erbe"
	L["TraitRow3_DeathKnight_Frost_Valorous"]		 = "Sindragosas Furor"
	L["TraitRow4_DeathKnight_Frost_War-torn"]		 = "Grabhüter"
	L["TraitRow5_DeathKnight_Frost_Challenging"]	 = "Seelensammler"
	L["TraitRow6_DeathKnight_Frost_Hidden"]			 = "Dunkle Runenklinge"

	L["TraitRow1_DeathKnight_Unholy_Classic"]		 = "Klingen des gefallenen Prinzen"
	L["TraitRow2_DeathKnight_Unholy_Upgraded"]		 = "Frostgrams Erbe"
	L["TraitRow3_DeathKnight_Unholy_Valorous"]		 = "Sindragosas Furor"
	L["TraitRow4_DeathKnight_Unholy_War-torn"]		 = "Grabhüter"
	L["TraitRow5_DeathKnight_Unholy_Challenging"]	 = "Seelensammler"
	L["TraitRow6_DeathKnight_Unholy_Hidden"]		 = "Dunkle Runenklinge"

	--Hunter
	L["TraitRow1_Hunter_BeastMastery_Classic"]		 = "Titanenblitz"
	L["TraitRow2_Hunter_BeastMastery_Upgraded"]		 = "Adlerblick"
	L["TraitRow3_Hunter_BeastMastery_Valorous"]		 = "Donner des Elekks"
	L["TraitRow4_Hunter_BeastMastery_War-torn"]		 = "Eberschusskanone"
	L["TraitRow5_Hunter_BeastMastery_Challenging"]	 = "Schlangenzahn"
	L["TraitRow6_Hunter_BeastMastery_Hidden"]		 = "Arm der Titanen"

	L["TraitRow1_Hunter_Marksmanship_Classic"]		 = "Thas'dorah, Erbstück von Haus Windläufer"
	L["TraitRow2_Hunter_Marksmanship_Upgraded"]		 = "Schwesternband"
	L["TraitRow3_Hunter_Marksmanship_Valorous"]		 = "Der wiedergeborene Phönix"
	L["TraitRow4_Hunter_Marksmanship_War-torn"]		 = "Wache des Waldläufergenerals"
	L["TraitRow5_Hunter_Marksmanship_Challenging"]	 = "Wildläufer"
	L["TraitRow6_Hunter_Marksmanship_Hidden"]		 = "Rabenwächter"

	L["TraitRow1_Hunter_Survival_Classic"]			 = "Fangklaue"
	L["TraitRow2_Hunter_Survival_Upgraded"]			 = "Der wiedergeborene Adler"
	L["TraitRow3_Hunter_Survival_Valorous"]			 = "Speer des Alphas"
	L["TraitRow4_Hunter_Survival_War-torn"]			 = "Schlangenbiss"
	L["TraitRow5_Hunter_Survival_Challenging"]		 = "Wächter des Waldes"
	L["TraitRow6_Hunter_Survival_Hidden"]			 = "Kraft der Bärenseele"

	--Shaman
	L["TraitRow1_Shaman_Elemental_Classic"]			 = "Die Faust des Ra-den"
	L["TraitRow2_Shaman_Elemental_Upgraded"]		 = "Sturmhüter"
	L["TraitRow3_Shaman_Elemental_Valorous"]		 = "Erdsprecher"
	L["TraitRow4_Shaman_Elemental_War-torn"]		 = "Faust des gefallenen Schamanen"
	L["TraitRow5_Shaman_Elemental_Challenging"]		 = "Rehgars Erbe"
	L["TraitRow6_Shaman_Elemental_Hidden"]			 = "Stolz der Amani"

	L["TraitRow1_Shaman_Enhancement_Classic"]		 = "Schicksalshammer"
	L["TraitRow2_Shaman_Enhancement_Upgraded"]		 = "Sturmbringer"
	L["TraitRow3_Shaman_Enhancement_Valorous"]		 = "Legionsschicksal"
	L["TraitRow4_Shaman_Enhancement_War-torn"]		 = "Schwarzfausts Schicksal"
	L["TraitRow5_Shaman_Enhancement_Challenging"]	 = "Taifun"
	L["TraitRow6_Shaman_Enhancement_Hidden"]		 = "Champion der Zandalari"

	L["TraitRow1_Shaman_Restoration_Classic"]		 = "Sharas'dal, Szepter der Gezeiten"
	L["TraitRow2_Shaman_Restoration_Upgraded"]		 = "Szepter der Tiefe"
	L["TraitRow3_Shaman_Restoration_Valorous"]		 = "Schöpfung der Titanen"
	L["TraitRow4_Shaman_Restoration_War-torn"]		 = "Totembringer"
	L["TraitRow5_Shaman_Restoration_Challenging"]	 = "Das frostige Schicksal"
	L["TraitRow6_Shaman_Restoration_Hidden"]		 = "Schlangenschlinge"

	--Druid
	L["TraitRow1_Druid_Balance_Classic"]			 = "Sichel von Elune"
	L["TraitRow2_Druid_Balance_Upgraded"]			 = "Gesandter von Goldrinn"
	L["TraitRow3_Druid_Balance_Valorous"]			 = "Mondruf"
	L["TraitRow4_Druid_Balance_War-torn"]			 = "Leid des Alptraums"
	L["TraitRow5_Druid_Balance_Challenging"]		 = "Manasichel"
	L["TraitRow6_Druid_Balance_Hidden"]				 = "Hand des Sonnenhüters"

	L["TraitRow1_Druid_Feral_Classic"]				 = "Fänge von Ashamane"
	L["TraitRow2_Druid_Feral_Upgraded"]				 = "Furor der Natur"
	L["TraitRow3_Druid_Feral_Valorous"]				 = "Der Urpirscher"
	L["TraitRow4_Druid_Feral_War-torn"]				 = "Inkarnation des Alptraums"
	L["TraitRow5_Druid_Feral_Challenging"]			 = "Geist der Rudelmutter"
	L["TraitRow6_Druid_Feral_Hidden"]				 = "Mondgeist"

	L["TraitRow1_Druid_Guardian_Classic"]			 = "Ursocs Klauen"
	L["TraitRow2_Druid_Guardian_Upgraded"]			 = "Steinpfote"
	L["TraitRow3_Druid_Guardian_Valorous"]			 = "Ursols Avatar"
	L["TraitRow4_Druid_Guardian_War-torn"]			 = "Alptraumwirt"
	L["TraitRow5_Druid_Guardian_Challenging"]		 = "Macht des Klagemauls"
	L["TraitRow6_Druid_Guardian_Hidden"]			 = "Wächter der Lichtung"

	L["TraitRow1_Druid_Restoration_Classic"]		 = "G'Hanir, der Mutterbaum"
	L["TraitRow2_Druid_Restoration_Upgraded"]		 = "Baumkrone"
	L["TraitRow3_Druid_Restoration_Valorous"]		 = "Kristallines Erwachen"
	L["TraitRow4_Druid_Restoration_War-torn"]		 = "Totwaldhüter"
	L["TraitRow5_Druid_Restoration_Challenging"]	 = "Wachsamkeit der Nacht"
	L["TraitRow6_Druid_Restoration_Hidden"]			 = "Krone des Wächters"

	--Rogue
	L["TraitRow1_Rogue_Assassination_Classic"]		 = "Die Königsmörder"
	L["TraitRow2_Rogue_Assassination_Upgraded"]		 = "Fluchhand"
	L["TraitRow3_Rogue_Assassination_Valorous"]		 = "Herzstopper"
	L["TraitRow4_Rogue_Assassination_War-torn"]		 = "Schneide des Magiertöters"
	L["TraitRow5_Rogue_Assassination_Challenging"]	 = "Geistschneide"
	L["TraitRow6_Rogue_Assassination_Hidden"]		 = "Knochenbrecher"

	L["TraitRow1_Rogue_Outlaw_Classic"]				 = "Die Schreckensklingen"
	L["TraitRow2_Rogue_Outlaw_Upgraded"]			 = "Schwur des Freibeuters"
	L["TraitRow3_Rogue_Outlaw_Valorous"]			 = "Kuss der Flamme"
	L["TraitRow4_Rogue_Outlaw_War-torn"]			 = "Letztes Wort des Halunken"
	L["TraitRow5_Rogue_Outlaw_Challenging"]			 = "Arm des Fechters"
	L["TraitRow6_Rogue_Outlaw_Hidden"]				 = "Donnerzorn, Geweihte Klinge des Windfürsten"
	
	L["TraitRow1_Rogue_Subtlety_Classic"]			 = "Reißzähne des Verschlingers"
	L["TraitRow2_Rogue_Subtlety_Upgraded"]			 = "Schattenschneide"
	L["TraitRow3_Rogue_Subtlety_Valorous"]			 = "Umklammerung des Dämons"
	L["TraitRow4_Rogue_Subtlety_War-torn"]			 = "Blutzehrer"
	L["TraitRow5_Rogue_Subtlety_Challenging"]		 = "Eisschere"
	L["TraitRow6_Rogue_Subtlety_Hidden"]			 = "Giftbiss"

	--Monk
	L["TraitRow1_Monk_Brewmaster_Classic"]			 = "Fu Zan, Gefährte des Wanderers"
	L["TraitRow2_Monk_Brewmaster_Upgraded"]			 = "Bürde des Affenkönigs"
	L["TraitRow3_Monk_Brewmaster_Valorous"]			 = "Herz des Ochsen"
	L["TraitRow4_Monk_Brewmaster_War-torn"]			 = "Griff des Drachenfeuers"
	L["TraitRow5_Monk_Brewmaster_Challenging"]		 = "Der Nebelbringer"
	L["TraitRow6_Monk_Brewmaster_Hidden"]			 = "Uralter Bräuhüter"

	L["TraitRow1_Monk_Mistweaver_Classic"]			 = "Sheilun, Stab der Nebel"
	L["TraitRow2_Monk_Mistweaver_Upgraded"]			 = "Tribut des Tiefennebels"
	L["TraitRow3_Monk_Mistweaver_Valorous"]			 = "Chi-Jis Geist"
	L["TraitRow4_Monk_Mistweaver_War-torn"]			 = "Marter des Sha"
	L["TraitRow5_Monk_Mistweaver_Challenging"]		 = "Essenz der Ruhe"
	L["TraitRow6_Monk_Mistweaver_Hidden"]			 = "Atem der unsterblichen Schlange"

	L["TraitRow1_Monk_Windwalker_Classic"]			 = "Fäuste der Himmel"
	L["TraitRow2_Monk_Windwalker_Upgraded"]			 = "Al'Akirs Berührung"
	L["TraitRow3_Monk_Windwalker_Valorous"]			 = "Die Geisterhände"
	L["TraitRow4_Monk_Windwalker_War-torn"]			 = "Erbe der Shado-Pan"
	L["TraitRow5_Monk_Windwalker_Challenging"]		 = "Xuens Vollstrecker"
	L["TraitRow6_Monk_Windwalker_Hidden"]			 = "Fäuste des Sturms"

	--Warlock
	L["TraitRow1_Warlock_Affliction_Classic"]		 = "Sense der Totenwinde"
	L["TraitRow2_Warlock_Affliction_Upgraded"]		 = "Hand der Befallenen"
	L["TraitRow3_Warlock_Affliction_Valorous"]		 = "Seelensauger"
	L["TraitRow4_Warlock_Affliction_War-torn"]		 = "Hand des Todes"
	L["TraitRow5_Warlock_Affliction_Challenging"]	 = "Rückgrat des Verdammten"
	L["TraitRow6_Warlock_Affliction_Hidden"]		 = "Schicksalsend"

	L["TraitRow1_Warlock_Demonology_Classic"]		 = "Schädel der Man'ari"
	L["TraitRow2_Warlock_Demonology_Upgraded"]		 = "Blick des ersten Beschwörers"
	L["TraitRow3_Warlock_Demonology_Valorous"]		 = "Stolz des Grubenlords"
	L["TraitRow4_Warlock_Demonology_War-torn"]		 = "Brennender Überrest"
	L["TraitRow5_Warlock_Demonology_Challenging"]	 = "Seele der Vergessenen"
	L["TraitRow6_Warlock_Demonology_Hidden"]		 = "Thal'kiels Fratze"

	L["TraitRow1_Warlock_Destruction_Classic"]		 = "Szepter des Sargeras"
	L["TraitRow2_Warlock_Destruction_Upgraded"]		 = "Hybris des Dunklen Titanen"
	L["TraitRow3_Warlock_Destruction_Valorous"]		 = "Echo Gul'dans"
	L["TraitRow4_Warlock_Destruction_War-torn"]		 = "Schatten des Zerstörers"
	L["TraitRow5_Warlock_Destruction_Challenging"]	 = "Blendwerk des Verfinsterers"
	L["TraitRow6_Warlock_Destruction_Hidden"]		 = "Legionsschrecken"

	--Priest
	L["TraitRow1_Priest_Discipline_Classic"]		 = "Zorn des Lichts"
	L["TraitRow2_Priest_Discipline_Upgraded"]		 = "Wappen der Erlösten"
	L["TraitRow3_Priest_Discipline_Valorous"]		 = "Pokal des Lichts"
	L["TraitRow4_Priest_Discipline_War-torn"]		 = "Ewige Wacht"
	L["TraitRow5_Priest_Discipline_Challenging"]	 = "Erhabene Wacht"
	L["TraitRow6_Priest_Discipline_Hidden"]			 = "Spitze des Foliantwächters"

	L["TraitRow1_Priest_Holy_Classic"]				 = "T'uure, Fanal der Naaru"
	L["TraitRow2_Priest_Holy_Upgraded"]				 = "Banner der Reinheit"
	L["TraitRow3_Priest_Holy_Valorous"]				 = "Hüter des Lichts"
	L["TraitRow4_Priest_Holy_War-torn"]				 = "Umklammerung der Leere"
	L["TraitRow5_Priest_Holy_Challenging"]			 = "Argus' Gedenken"
	L["TraitRow6_Priest_Holy_Hidden"]				 = "Krone der Lichtgeborenen"

	L["TraitRow1_Priest_Shadow_Classic"]			 = "Klinge des Schwarzen Imperiums"
	L["TraitRow2_Priest_Shadow_Upgraded"]			 = "Umklammerung der Alten Götter"
	L["TraitRow3_Priest_Shadow_Valorous"]			 = "Die gefallene Klinge"
	L["TraitRow4_Priest_Shadow_War-torn"]			 = "Vision des Wahnsinns"
	L["TraitRow5_Priest_Shadow_Challenging"]		 = "Verzerrte Reflexion"
	L["TraitRow6_Priest_Shadow_Hidden"]				 = "Klaue von N'Zoth"

	--Mage
	L["TraitRow1_Mage_Arcane_Classic"]				 = "Aluneth"
	L["TraitRow2_Mage_Arcane_Upgraded"]				 = "Spitze des Wächters"
	L["TraitRow3_Mage_Arcane_Valorous"]				 = "Entfesselte Magna"
	L["TraitRow4_Mage_Arcane_War-torn"]				 = "Aegwynns Sturz"
	L["TraitRow5_Mage_Arcane_Challenging"]			 = "Ewiger Magus"
	L["TraitRow6_Mage_Arcane_Hidden"]				 = "Die Bürde des Wollomanten"

	L["TraitRow1_Mage_Fire_Classic"]				 = "Felo'melorn"
	L["TraitRow2_Mage_Fire_Upgraded"]				 = "Stolz der Sonnenwanderer"
	L["TraitRow3_Mage_Fire_Valorous"]				 = "Der wiedergeborene Phönix"
	L["TraitRow4_Mage_Fire_War-torn"]				 = "Lavageborene Schneide"
	L["TraitRow5_Mage_Fire_Challenging"]			 = "Klinge des Zeitkrümmers"
	L["TraitRow6_Mage_Fire_Hidden"]					 = "Entwurf der Sterne"

	L["TraitRow1_Mage_Frost_Classic"]				 = "Schwarzfrost"
	L["TraitRow2_Mage_Frost_Upgraded"]				 = "Fokus des Wächters"
	L["TraitRow3_Mage_Frost_Valorous"]				 = "Fluss des Ersten"
	L["TraitRow4_Mage_Frost_War-torn"]				 = "Wille der Erzmagi"
	L["TraitRow5_Mage_Frost_Challenging"]			 = "Elitemagus"
	L["TraitRow6_Mage_Frost_Hidden"]				 = "Frostfeuerangedenken"

return end

if LOCALE == "frFR" then
	-- French translations go here
	L["Addon_Title"] = "Remix Artifact Tracker"
	L["Addon_Notes"] = "Ajoute un onglet d’apparences d’artefact aux armes prodigieuses dans Legion Remix."
	L["SlashCmd1"] = "/rat"
	L["SlashCmd2"] = "/rat"
	L["SlashCmd3"] = "/remixartifact"

	L["Traits"] = ARTIFACTS_PERK_TAB
	L["Appearances"] = ARTIFACTS_APPEARANCE_TAB
	L["ShowSecondary"] = "Afficher le secondaire"
	L["ShowSecondaryTT"] = "Affiche le modèle secondaire lié à cet ensemble."
	L["RaceNightElf"] = GetRaceName(4)
	L["RaceHaranir"] = GetRaceName(86)
	L["RaceTauren"] = GetRaceName(6)
	L["RaceHMTauren"] = GetRaceName(28)
	L["RaceTroll"] = GetRaceName(8)
	L["RaceZandalari"] = GetRaceName(31)
	L["RaceWorgen"] = GetRaceName(22)
	L["RaceKulTiran"] = GetRaceName(32)
	L["RaceGroup1"] = L["RaceNightElf"] -- .. ", " .. L["RaceHaranir"] -- (maybe for future?)
	L["RaceGroup2"] = L["RaceTauren"] .. ", " .. L["RaceHMTauren"]
	L["RaceGroup3"] = L["RaceTroll"] .. ", " .. L["RaceZandalari"]
	L["RaceGroup4"] = L["RaceWorgen"] .. ", " .. L["RaceKulTiran"]
	L["Artifact"] = ITEM_QUALITY6_DESC
	L["Unavailable"] = UNAVAILABLE
	L["NoLongerAvailable"] = NO_LONGER_AVAILABLE

	L["TraitRow1Temp_Classic"]		 = "Classique"
	L["TraitRow2Temp_Upgraded"]		 = "Améliorée"
	L["TraitRow3Temp_Valorous"]		 = "Valeureuse"
	L["TraitRow4Temp_War-torn"]		 = "Déchirée par la guerre"
	L["TraitRow5Temp_Challenging"]	 = "Défi"
	L["TraitRow6Temp_Hidden"]		 = "Cachée"

	--classic
	L["TraitRow1Tint1Req"] = ""
	L["TraitRow1Tint2Req"] = "Mettez la main sur l’un des piliers de la Création."
	L["TraitRow1Tint3Req"] = "Récupérez le Cœur de la Lumière et mettez-le à l’abri dans votre domaine."
	L["TraitRow1Tint4Req"] = "Terminer le premier palier de la campagne de votre domaine de classe."

	--upgraded
	L["TraitRow2Tint1Req"] = string.format("Terminer la campagne de domaine de %s.", ClassName)
	L["TraitRow2Tint2Req"] = string.format("Terminer la campagne de domaine de %s.", ClassName)
	L["TraitRow2Tint3Req"] = string.format("Terminer la campagne de domaine de %s.", ClassName)
	L["TraitRow2Tint4Req"] = "Accomplir le haut fait « Fragile »."

	--valorous
	L["TraitRow3Tint1Req"] = "Terminer la suite de quêtes « L’équilibre de la puissance »."
	L["TraitRow3Tint2Req"] = "Accomplir le haut fait « Monstres déchaînés ».\n\nTerminer la suite de quêtes « L’équilibre de la puissance »."
	L["TraitRow3Tint3Req"] = "Terminer un donjon mythique en utilisant une clé de niveau 5.\n\nAccomplir la suite de quêtes « L’équilibre de la puissance »."
	L["TraitRow3Tint4Req"] = "Accomplir le haut fait « Gloire au héros de Legion ».\n\nTerminer la suite de quêtes « L’équilibre de la puissance »."

	--war-torn
	L["TraitRow4Tint1Req"] = "Prendre part aux combats Joueur contre Joueur et atteindre le niveau d’honneur 10."
	L["TraitRow4Tint2Req"] = "Atteindre le niveau d’honneur 30."
	L["TraitRow4Tint3Req"] = "Atteindre le niveau d’honneur 50."
	L["TraitRow4Tint4Req"] = "Atteindre le niveau d’honneur 80."

	--challenging (swapped with Hidden)
	L["TraitRow5Tint1Req_THR"] = "Terminer la suite de quêtes « Le retour du généralissime »."
	L["TraitRow5Tint2Req_THR"] = "Vaincre Kil’jaeden (héroïque) après avoir débloqué 1 apparence de défi. \n\nFinir « Le retour du généralissime »."
	L["TraitRow5Tint3Req_THR"] = "Gagner 10 champs de bataille cotés après avoir débloqué 1 apparence de défi.\n\nFinir « Le retour du généralissime »."
	L["TraitRow5Tint4Req_THR"] = "Terminer 10 donjons de Legion différents après avoir débloqué 1 apparence de défi.\n\nFinir « Le retour du généralissime »."

	L["TraitRow5Tint1Req_XC"] = "Terminer la suite de quêtes « Défi de Xylem »."
	L["TraitRow5Tint2Req_XC"] = "Vaincre Kil’jaeden (héroïque) après avoir débloqué 1 apparence de défi. \n\nFinir « Défi de Xylem »."
	L["TraitRow5Tint3Req_XC"] = "Gagner 10 champs de bataille cotés après avoir débloqué 1 apparence de défi.\n\nFinir « Défi de Xylem »."
	L["TraitRow5Tint4Req_XC"] = "Terminer 10 donjons de Legion différents après avoir débloqué 1 apparence de défi.\n\nFinir « Défi de Xylem »."

	L["TraitRow5Tint1Req_IMC"] = "Terminer la suite de quêtes « Défi de la mère des diablotins »."
	L["TraitRow5Tint2Req_IMC"] = "Vaincre Kil’jaeden (héroïque) après avoir débloqué 1 apparence de défi. \n\nFinir « Défi de la mère des diablotins »."
	L["TraitRow5Tint3Req_IMC"] = "Gagner 10 champs de bataille cotés après avoir débloqué 1 apparence de défi.\n\nFinir « Défi de la mère des diablotins »."
	L["TraitRow5Tint4Req_IMC"] = "Terminer 10 donjons de Legion différents après avoir débloqué 1 apparence de défi.\n\nFinir « Défi de la mère des diablotins »."

	L["TraitRow5Tint1Req_TC"] = "Terminer la suite de quêtes « Défi des jumeaux »."
	L["TraitRow5Tint2Req_TC"] = "Vaincre Kil’jaeden (héroïque) après avoir débloqué 1 apparence de défi. \n\nFinir « Défi des jumeaux »."
	L["TraitRow5Tint3Req_TC"] = "Gagner 10 champs de bataille cotés après avoir débloqué 1 apparence de défi.\n\nFinir « Défi des jumeaux »."
	L["TraitRow5Tint4Req_TC"] = "Terminer 10 donjons de Legion différents après avoir débloqué 1 apparence de défi.\n\nFinir « Défi des jumeaux »."

	L["TraitRow5Tint1Req_TBRT"] = "Terminer la suite de quêtes « La menace du Freux »."
	L["TraitRow5Tint2Req_TBRT"] = "Vaincre Kil’jaeden (héroïque) après avoir débloqué 1 apparence de défi. \n\nFinir « La menace du Freux »."
	L["TraitRow5Tint3Req_TBRT"] = "Gagner 10 champs de bataille cotés après avoir débloqué 1 apparence de défi.\n\nFinir « La menace du Freux »."
	L["TraitRow5Tint4Req_TBRT"] = "Terminer 10 donjons de Legion différents après avoir débloqué 1 apparence de défi.\n\nFinir « La menace du Freux »."

	L["TraitRow5Tint1Req_TFWM"] = "Terminer la suite de quêtes « La menace des vers gangrenés »."
	L["TraitRow5Tint2Req_TFWM"] = "Vaincre Kil’jaeden (héroïque) après avoir débloqué 1 apparence de défi. \n\nFinir « La menace des vers gangrenés »."
	L["TraitRow5Tint3Req_TFWM"] = "Gagner 10 champs de bataille cotés après avoir débloqué 1 apparence de défi.\n\nFinir « La menace des vers gangrenés »."
	L["TraitRow5Tint4Req_TFWM"] = "Terminer 10 donjons de Legion différents après avoir débloqué 1 apparence de défi.\n\nFinir « La menace des vers gangrenés »."

	L["TraitRow5Tint1Req_GQC"] = "Terminer la suite de quêtes « Défi de la Déesse-Reine »."
	L["TraitRow5Tint2Req_GQC"] = "Vaincre Kil’jaeden (héroïque) après avoir débloqué 1 apparence de défi. \n\nFinir « Défi de la Déesse-Reine »."
	L["TraitRow5Tint3Req_GQC"] = "Gagner 10 champs de bataille cotés après avoir débloqué 1 apparence de défi.\n\nFinir « Défi de la Déesse-Reine »."
	L["TraitRow5Tint4Req_GQC"] = "Terminer 10 donjons de Legion différents après avoir débloqué 1 apparence de défi.\n\nFinir « Défi de la Déesse-Reine »."

	--hidden (swapped with Challenging)
	L["TraitRow6Tint1Req"] = ""
	L["TraitRow6Tint2Req"] = "Terminer 30 donjons de Legion après avoir débloqué une apparence d’arme prodigieuse cachée."
	L["TraitRow6Tint3Req"] = "Accomplir 200 expéditions après avoir débloqué une apparence d’arme prodigieuse cachée."
	L["TraitRow6Tint4Req"] = "Tuer 1 000 personnages-joueurs ennemis après avoir débloqué une apparence d’arme prodigieuse cachée."

	--Demon Hunter
	L["TraitRow1_DemonHunter_Havoc_Classic"]		 = "Lames jumelles du Trompeur"
	L["TraitRow2_DemonHunter_Havoc_Upgraded"]		 = "Main des Illidari"
	L["TraitRow3_DemonHunter_Havoc_Valorous"]		 = "Noircelame"
	L["TraitRow4_DemonHunter_Havoc_War-torn"]		 = "Toucher du démon"
	L["TraitRow5_DemonHunter_Havoc_Challenging"]	 = "Faucheur de flamme"
	L["TraitRow6_DemonHunter_Havoc_Hidden"]			 = "Marche-mort"

	L["TraitRow1_DemonHunter_Vengeance_Classic"]	 = "Lames de guerre des Aldrachi"
	L["TraitRow2_DemonHunter_Vengeance_Upgraded"]	 = "Cimier illidari"
	L["TraitRow3_DemonHunter_Vengeance_Valorous"]	 = "Morsure de l’effroi"
	L["TraitRow4_DemonHunter_Vengeance_War-torn"]	 = "Ossecroc"
	L["TraitRow5_DemonHunter_Vengeance_Challenging"] = "Aile de l’ombre"
	L["TraitRow6_DemonHunter_Vengeance_Hidden"]		 = "Gardien de fer"

	--Paladin
	L["TraitRow1_Paladin_Retribution_Classic"]		 = "Porte-Cendres"
	L["TraitRow2_Paladin_Retribution_Upgraded"]		 = "Estramaçon du vertueux"
	L["TraitRow3_Paladin_Retribution_Valorous"]		 = "Représailles ardentes"
	L["TraitRow4_Paladin_Retribution_War-torn"]		 = "Espoir déchu"
	L["TraitRow5_Paladin_Retribution_Challenging"]	 = "Sentence irrévocable"
	L["TraitRow6_Paladin_Retribution_Hidden"]		 = "Réminiscence corrompue"

	L["TraitRow1_Paladin_Holy_Classic"]				 = "Main-d’Argent"
	L["TraitRow2_Paladin_Holy_Upgraded"]			 = "Poing du gardien déchu"
	L["TraitRow3_Paladin_Holy_Valorous"]			 = "Jugement du protecteur"
	L["TraitRow4_Paladin_Holy_War-torn"]			 = "Veilleur du tombeau"
	L["TraitRow5_Paladin_Holy_Challenging"]			 = "Flamme de la justice"
	L["TraitRow6_Paladin_Holy_Hidden"]				 = "Parure du gardien"

	L["TraitRow1_Paladin_Protection_Classic"]		 = "Garde-Vérité"
	L["TraitRow2_Paladin_Protection_Upgraded"]		 = "Lumière des Titans"
	L["TraitRow3_Paladin_Protection_Valorous"]		 = "Protecteur divin"
	L["TraitRow4_Paladin_Protection_War-torn"]		 = "Égide du gardien noir"
	L["TraitRow5_Paladin_Protection_Challenging"]	 = "Écu de feu sacré"
	L["TraitRow6_Paladin_Protection_Hidden"]		 = "Rempart du redresseur de torts"

	--Warrior
	L["TraitRow1_Warrior_Arms_Classic"]				 = "Strom’kar, le Brise-Guerre"
	L["TraitRow2_Warrior_Arms_Upgraded"]			 = "Vengeance des trépassés"
	L["TraitRow3_Warrior_Arms_Valorous"]			 = "Faucheur de flamme"
	L["TraitRow4_Warrior_Arms_War-torn"]			 = "Tranchant de la colère"
	L["TraitRow5_Warrior_Arms_Challenging"]			 = "Lame du champion céleste"
	L["TraitRow6_Warrior_Arms_Hidden"]				 = "Brise-lame en arcanite"

	L["TraitRow1_Warrior_Fury_Classic"]				 = "Épées de guerre des Valarjar"
	L["TraitRow2_Warrior_Fury_Upgraded"]			 = "Poigne du chevaucheur de dragon"
	L["TraitRow3_Warrior_Fury_Valorous"]			 = "Gueule de vaillance"
	L["TraitRow4_Warrior_Fury_War-torn"]			 = "Souffle de tempête"
	L["TraitRow5_Warrior_Fury_Challenging"]			 = "Regard de Helya"
	L["TraitRow6_Warrior_Fury_Hidden"]				 = "Tranchoir du tueur de dragon"

	L["TraitRow1_Warrior_Protection_Classic"]		 = "Écaille du Gardeterre"
	L["TraitRow2_Warrior_Protection_Upgraded"]		 = "Hardiesse du roi déchu"
	L["TraitRow3_Warrior_Protection_Valorous"]		 = "Volonté inflexible"
	L["TraitRow4_Warrior_Protection_War-torn"]		 = "Regard du nécrogarde"
	L["TraitRow5_Warrior_Protection_Challenging"]	 = "Brise-Légion"
	L["TraitRow6_Warrior_Protection_Hidden"]		 = "Souffle du Brise-Monde"

	--Death Knight
	L["TraitRow1_DeathKnight_Blood_Classic"]		 = "Gueule-du-Damné"
	L["TraitRow2_DeathKnight_Blood_Upgraded"]		 = "Saignegueule"
	L["TraitRow3_DeathKnight_Blood_Valorous"]		 = "Pâmoisson"
	L["TraitRow4_DeathKnight_Blood_War-torn"]		 = "L’Exécutrice"
	L["TraitRow5_DeathKnight_Blood_Challenging"]	 = "Mâchemort"
	L["TraitRow6_DeathKnight_Blood_Hidden"]			 = "Plaie de la non-mort"

	L["TraitRow1_DeathKnight_Frost_Classic"]		 = "Lames du prince déchu"
	L["TraitRow2_DeathKnight_Frost_Upgraded"]		 = "Héritage de Deuillegivre"
	L["TraitRow3_DeathKnight_Frost_Valorous"]		 = "Fureur de Sindragosa"
	L["TraitRow4_DeathKnight_Frost_War-torn"]		 = "Fossoyeuses"
	L["TraitRow5_DeathKnight_Frost_Challenging"]	 = "Collectionneuse d’âmes"
	L["TraitRow6_DeathKnight_Frost_Hidden"]			 = "Lame runique maléfique"

	L["TraitRow1_DeathKnight_Unholy_Classic"]		 = "Apocalypse"
	L["TraitRow2_DeathKnight_Unholy_Upgraded"]		 = "Guerre impie"
	L["TraitRow3_DeathKnight_Unholy_Valorous"]		 = "Messagère de pestilence"
	L["TraitRow4_DeathKnight_Unholy_War-torn"]		 = "Affameuse"
	L["TraitRow5_DeathKnight_Unholy_Challenging"]	 = "Délivrance de la mort"
	L["TraitRow6_DeathKnight_Unholy_Hidden"]		 = "Fauchemoelle"

	--Hunter
	L["TraitRow1_Hunter_BeastMastery_Classic"]		 = "Choc des Titans"
	L["TraitRow2_Hunter_BeastMastery_Upgraded"]		 = "Œil de l’aigle"
	L["TraitRow3_Hunter_BeastMastery_Valorous"]		 = "Tonnerre d’elekk"
	L["TraitRow4_Hunter_BeastMastery_War-torn"]		 = "Canon Hurefeu"
	L["TraitRow5_Hunter_BeastMastery_Challenging"]	 = "Morsure du serpent"
	L["TraitRow6_Hunter_BeastMastery_Hidden"]		 = "Portée du Titan"

	L["TraitRow1_Hunter_Marksmanship_Classic"]		 = "Thas’dorah, héritage des Coursevent"
	L["TraitRow2_Hunter_Marksmanship_Upgraded"]		 = "Liens du sang"
	L["TraitRow3_Hunter_Marksmanship_Valorous"]		 = "Renaissance du phénix"
	L["TraitRow4_Hunter_Marksmanship_War-torn"]		 = "Garde du général des forestiers"
	L["TraitRow5_Hunter_Marksmanship_Challenging"]	 = "Course-Sauvage"
	L["TraitRow6_Hunter_Marksmanship_Hidden"]		 = "Garde-corbeau"

	L["TraitRow1_Hunter_Survival_Classic"]			 = "Griffe-Serre"
	L["TraitRow2_Hunter_Survival_Upgraded"]			 = "Renaissance de l’aigle"
	L["TraitRow3_Hunter_Survival_Valorous"]			 = "Lance de l’alpha"
	L["TraitRow4_Hunter_Survival_War-torn"]			 = "Frappe du serpent"
	L["TraitRow5_Hunter_Survival_Challenging"]		 = "Gardien de la forêt"
	L["TraitRow6_Hunter_Survival_Hidden"]			 = "Robustesse de l’ours"

	--Shaman
	L["TraitRow1_Shaman_Elemental_Classic"]			 = "Poing de Ra Den"
	L["TraitRow2_Shaman_Elemental_Upgraded"]		 = "Gardien des tempêtes"
	L["TraitRow3_Shaman_Elemental_Valorous"]		 = "Parleterre"
	L["TraitRow4_Shaman_Elemental_War-torn"]		 = "Poing du chaman déchu"
	L["TraitRow5_Shaman_Elemental_Challenging"]		 = "Héritage de Rehgar"
	L["TraitRow6_Shaman_Elemental_Hidden"]			 = "Prestige des Amani"

	L["TraitRow1_Shaman_Enhancement_Classic"]		 = "Marteau-du-Destin"
	L["TraitRow2_Shaman_Enhancement_Upgraded"]		 = "Porte-tempête"
	L["TraitRow3_Shaman_Enhancement_Valorous"]		 = "Malheur de la Légion"
	L["TraitRow4_Shaman_Enhancement_War-torn"]		 = "Destin de Main-Noire"
	L["TraitRow5_Shaman_Enhancement_Challenging"]	 = "Typhon"
	L["TraitRow6_Shaman_Enhancement_Hidden"]		 = "Champion de Zandalar"

	L["TraitRow1_Shaman_Restoration_Classic"]		 = "Sharas’dal, sceptre des marées"
	L["TraitRow2_Shaman_Restoration_Upgraded"]		 = "Sceptre des profondeurs"
	L["TraitRow3_Shaman_Restoration_Valorous"]		 = "Titanide"
	L["TraitRow4_Shaman_Restoration_War-torn"]		 = "Porte-totem"
	L["TraitRow5_Shaman_Restoration_Challenging"]	 = "Fin glaciale"
	L["TraitRow6_Shaman_Restoration_Hidden"]		 = "Anneaux du serpent"

	--Druid
	L["TraitRow1_Druid_Balance_Classic"]			 = "Faux d’Élune"
	L["TraitRow2_Druid_Balance_Upgraded"]			 = "Émissaire de Goldrinn"
	L["TraitRow3_Druid_Balance_Valorous"]			 = "Équinoxe"
	L["TraitRow4_Druid_Balance_War-torn"]			 = "Affliction du Cauchemar"
	L["TraitRow5_Druid_Balance_Challenging"]		 = "Faux de mana"
	L["TraitRow6_Druid_Balance_Hidden"]				 = "Solstice"

	L["TraitRow1_Druid_Feral_Classic"]				 = "Crocs d’Ashamane"
	L["TraitRow2_Druid_Feral_Upgraded"]				 = "Fureur de la nature"
	L["TraitRow3_Druid_Feral_Valorous"]				 = "Traqueur primordial"
	L["TraitRow4_Druid_Feral_War-torn"]				 = "Incarnation du Cauchemar"
	L["TraitRow5_Druid_Feral_Challenging"]			 = "Fantôme de la Matriarche"
	L["TraitRow6_Druid_Feral_Hidden"]				 = "Esprit de la lune"

	L["TraitRow1_Druid_Guardian_Classic"]			 = "Griffes d’Ursoc"
	L["TraitRow2_Druid_Guardian_Upgraded"]			 = "Rochepatte"
	L["TraitRow3_Druid_Guardian_Valorous"]			 = "Avatar d’Ursol"
	L["TraitRow4_Druid_Guardian_War-torn"]			 = "Corruption du Cauchemar"
	L["TraitRow5_Druid_Guardian_Challenging"]		 = "Puissance de Grisegueule"
	L["TraitRow6_Druid_Guardian_Hidden"]			 = "Gardien de la clairière"

	L["TraitRow1_Druid_Restoration_Classic"]		 = "G’Hanir, l’Arbre-Mère"
	L["TraitRow2_Druid_Restoration_Upgraded"]		 = "Vénérarbre"
	L["TraitRow3_Druid_Restoration_Valorous"]		 = "Éveil cristallin"
	L["TraitRow4_Druid_Restoration_War-torn"]		 = "Gardien de Mort-Bois"
	L["TraitRow5_Druid_Restoration_Challenging"]	 = "Vigilance de la nuit"
	L["TraitRow6_Druid_Restoration_Hidden"]			 = "Couronne du gardien"

	--Rogue
	L["TraitRow1_Rogue_Assassination_Classic"]		 = "Les Régicides"
	L["TraitRow2_Rogue_Assassination_Upgraded"]		 = "Main maudite"
	L["TraitRow3_Rogue_Assassination_Valorous"]		 = "Bourreau des cœurs"
	L["TraitRow4_Rogue_Assassination_War-torn"]		 = "Lame de magicide"
	L["TraitRow5_Rogue_Assassination_Challenging"]	 = "Lame-fantôme"
	L["TraitRow6_Rogue_Assassination_Hidden"]		 = "Brise-Os"

	L["TraitRow1_Rogue_Outlaw_Classic"]				 = "Lames d’effroi"
	L["TraitRow2_Rogue_Outlaw_Upgraded"]			 = "Promesse de l’écumeur"
	L["TraitRow3_Rogue_Outlaw_Valorous"]			 = "Baiser de la flamme"
	L["TraitRow4_Rogue_Outlaw_War-torn"]			 = "Parole de vaurien"
	L["TraitRow5_Rogue_Outlaw_Challenging"]			 = "Allonge de l’escrimeur"
	L["TraitRow6_Rogue_Outlaw_Hidden"]				 = "Lame-tonnerre, épée sanctifiée du seigneur des Vents"
	
	L["TraitRow1_Rogue_Subtlety_Classic"]			 = "Crocs du Dévoreur"
	L["TraitRow2_Rogue_Subtlety_Upgraded"]			 = "Lame-de-l’ombre"
	L["TraitRow3_Rogue_Subtlety_Valorous"]			 = "Étreinte du démon"
	L["TraitRow4_Rogue_Subtlety_War-torn"]			 = "Sanguivore"
	L["TraitRow5_Rogue_Subtlety_Challenging"]		 = "Ciseglace"
	L["TraitRow6_Rogue_Subtlety_Hidden"]			 = "Venimord"

	--Monk
	L["TraitRow1_Monk_Brewmaster_Classic"]			 = "Fu Zan, compagnon de l’explorateur"
	L["TraitRow2_Monk_Brewmaster_Upgraded"]			 = "Fardeau du roi-singe"
	L["TraitRow3_Monk_Brewmaster_Valorous"]			 = "Cœur du buffle"
	L["TraitRow4_Monk_Brewmaster_War-torn"]			 = "Étreinte du feu draconique"
	L["TraitRow5_Monk_Brewmaster_Challenging"]		 = "Porte-brume"
	L["TraitRow6_Monk_Brewmaster_Hidden"]			 = "Garde-breuvage antique"

	L["TraitRow1_Monk_Mistweaver_Classic"]			 = "Sheilun, bâton des brumes"
	L["TraitRow2_Monk_Mistweaver_Upgraded"]			 = "Glas de la brume épaisse"
	L["TraitRow3_Monk_Mistweaver_Valorous"]			 = "Esprit de Chi Ji"
	L["TraitRow4_Monk_Mistweaver_War-torn"]			 = "Tourment des sha"
	L["TraitRow5_Monk_Mistweaver_Challenging"]		 = "Essence de sérénité"
	L["TraitRow6_Monk_Mistweaver_Hidden"]			 = "Souffle du serpent immortel"

	L["TraitRow1_Monk_Windwalker_Classic"]			 = "Poings des cieux"
	L["TraitRow2_Monk_Windwalker_Upgraded"]			 = "Toucher d’Al’Akir"
	L["TraitRow3_Monk_Windwalker_Valorous"]			 = "Résolution"
	L["TraitRow4_Monk_Windwalker_War-torn"]			 = "Héritage pandashan"
	L["TraitRow5_Monk_Windwalker_Challenging"]		 = "Griffes de Xuen"
	L["TraitRow6_Monk_Windwalker_Hidden"]			 = "Poing-de-Tempête"

	--Warlock
	L["TraitRow1_Warlock_Affliction_Classic"]		 = "Faux de Deuillevent"
	L["TraitRow2_Warlock_Affliction_Upgraded"]		 = "Main de l’affligé"
	L["TraitRow3_Warlock_Affliction_Valorous"]		 = "Siphon d’âme"
	L["TraitRow4_Warlock_Affliction_War-torn"]		 = "Main de mort"
	L["TraitRow5_Warlock_Affliction_Challenging"]	 = "Aplomb du condamné"
	L["TraitRow6_Warlock_Affliction_Hidden"]		 = "Couperet du destin"

	L["TraitRow1_Warlock_Demonology_Classic"]		 = "Crâne du Man’ari"
	L["TraitRow2_Warlock_Demonology_Upgraded"]		 = "Regard du premier invocateur"
	L["TraitRow3_Warlock_Demonology_Valorous"]		 = "Fierté du seigneur des abîmes"
	L["TraitRow4_Warlock_Demonology_War-torn"]		 = "Vestige incandescent"
	L["TraitRow5_Warlock_Demonology_Challenging"]	 = "Âme des oubliés"
	L["TraitRow6_Warlock_Demonology_Hidden"]		 = "Visage de Thal’kiel"

	L["TraitRow1_Warlock_Destruction_Classic"]		 = "Sceptre de Sargeras"
	L["TraitRow2_Warlock_Destruction_Upgraded"]		 = "Hubris du Titan noir"
	L["TraitRow3_Warlock_Destruction_Valorous"]		 = "Écho de Gul’dan"
	L["TraitRow4_Warlock_Destruction_War-torn"]		 = "Ombre du destructeur"
	L["TraitRow5_Warlock_Destruction_Challenging"]	 = "Simulacre de l’assombrisseur"
	L["TraitRow6_Warlock_Destruction_Hidden"]		 = "Terreur de la Légion"

	--Priest
	L["TraitRow1_Priest_Discipline_Classic"]		 = "Courroux-de-Lumière"
	L["TraitRow2_Priest_Discipline_Upgraded"]		 = "Emblème du repenti"
	L["TraitRow3_Priest_Discipline_Valorous"]		 = "Calice de lumière"
	L["TraitRow4_Priest_Discipline_War-torn"]		 = "Veille éternelle"
	L["TraitRow5_Priest_Discipline_Challenging"]	 = "Veille sublimée"
	L["TraitRow6_Priest_Discipline_Hidden"]			 = "Ostensoir du gardien des tomes"

	L["TraitRow1_Priest_Holy_Classic"]				 = "T’uure, guide des Naaru"
	L["TraitRow2_Priest_Holy_Upgraded"]				 = "Emblème de pureté"
	L["TraitRow3_Priest_Holy_Valorous"]				 = "Gardien de lumière"
	L["TraitRow4_Priest_Holy_War-torn"]				 = "Étreinte du Vide"
	L["TraitRow5_Priest_Holy_Challenging"]			 = "Souvenance d’Argus"
	L["TraitRow6_Priest_Holy_Hidden"]				 = "Cimier des Luminés"

	L["TraitRow1_Priest_Shadow_Classic"]			 = "Lame de l’Empire noir"
	L["TraitRow2_Priest_Shadow_Upgraded"]			 = "Étreinte des Dieux très anciens"
	L["TraitRow3_Priest_Shadow_Valorous"]			 = "La lame déchue"
	L["TraitRow4_Priest_Shadow_War-torn"]			 = "Vision de folie"
	L["TraitRow5_Priest_Shadow_Challenging"]		 = "Reflet déformé"
	L["TraitRow6_Priest_Shadow_Hidden"]				 = "Griffe de N’Zoth"

	--Mage
	L["TraitRow1_Mage_Arcane_Classic"]				 = "Aluneth"
	L["TraitRow2_Mage_Arcane_Upgraded"]				 = "Flèche du gardien"
	L["TraitRow3_Mage_Arcane_Valorous"]				 = "Fureur de la magna"
	L["TraitRow4_Mage_Arcane_War-torn"]				 = "Chute d’Aegwynn"
	L["TraitRow5_Mage_Arcane_Challenging"]			 = "Magus éternel"
	L["TraitRow6_Mage_Arcane_Hidden"]				 = "Charge du mérinomancien"

	L["TraitRow1_Mage_Fire_Classic"]				 = "Felo’melorn"
	L["TraitRow2_Mage_Fire_Upgraded"]				 = "Fierté des Hauts-Soleils"
	L["TraitRow3_Mage_Fire_Valorous"]				 = "Renaissance du phénix"
	L["TraitRow4_Mage_Fire_War-torn"]				 = "Tranchante magmatique"
	L["TraitRow5_Mage_Fire_Challenging"]			 = "Lame du courbe-temps"
	L["TraitRow6_Mage_Fire_Hidden"]					 = "Le dessein des astres"

	L["TraitRow1_Mage_Frost_Classic"]				 = "Frissébène"
	L["TraitRow2_Mage_Frost_Upgraded"]				 = "Focalisation du gardien"
	L["TraitRow3_Mage_Frost_Valorous"]				 = "Flux du primat"
	L["TraitRow4_Mage_Frost_War-torn"]				 = "Volonté de l’archimage"
	L["TraitRow5_Mage_Frost_Challenging"]			 = "Magus émérite"
	L["TraitRow6_Mage_Frost_Hidden"]				 = "Souvenir de Givrefeu"
	
return end

if LOCALE == "itIT" then
	-- French translations go here
	L["Addon_Title"] = "Remix Artifact Tracker"
	L["Addon_Notes"] = "Aggiunge una scheda delle apparenze degli artefatti alle armi degli artefatti in Legion Remix."
	L["SlashCmd1"] = "/rat"
	L["SlashCmd2"] = "/rat"
	L["SlashCmd3"] = "/remixartifact"

	L["Traits"] = ARTIFACTS_PERK_TAB
	L["Appearances"] = ARTIFACTS_APPEARANCE_TAB
	L["ShowSecondary"] = "Mostra secondario"
	L["ShowSecondaryTT"] = "Mostra il modello secondario collegato a questo set."
	L["RaceNightElf"] = GetRaceName(4)
	L["RaceHaranir"] = GetRaceName(86)
	L["RaceTauren"] = GetRaceName(6)
	L["RaceHMTauren"] = GetRaceName(28)
	L["RaceTroll"] = GetRaceName(8)
	L["RaceZandalari"] = GetRaceName(31)
	L["RaceWorgen"] = GetRaceName(22)
	L["RaceKulTiran"] = GetRaceName(32)
	L["RaceGroup1"] = L["RaceNightElf"] -- .. ", " .. L["RaceHaranir"] -- (maybe for future?)
	L["RaceGroup2"] = L["RaceTauren"] .. ", " .. L["RaceHMTauren"]
	L["RaceGroup3"] = L["RaceTroll"] .. ", " .. L["RaceZandalari"]
	L["RaceGroup4"] = L["RaceWorgen"] .. ", " .. L["RaceKulTiran"]
	L["Artifact"] = ITEM_QUALITY6_DESC
	L["Unavailable"] = UNAVAILABLE
	L["NoLongerAvailable"] = NO_LONGER_AVAILABLE

	L["TraitRow1Temp_Classic"]		 = "Classico"
	L["TraitRow2Temp_Upgraded"]		 = "Potenziato"
	L["TraitRow3Temp_Valorous"]		 = "Valoroso"
	L["TraitRow4Temp_War-torn"]		 = "Rovinato"
	L["TraitRow5Temp_Challenging"]	 = "Sfidante"
	L["TraitRow6Temp_Hidden"]		 = "Nascosto"

	--classic
	L["TraitRow1Tint1Req"] = ""
	L["TraitRow1Tint2Req"] = "Devi aver recuperato uno dei Pilastri della Creazione."
	L["TraitRow1Tint3Req"] = "Devi aver recuperato il Cuore della Luce e averlo riportato nella tua Enclave di Classe."
	L["TraitRow1Tint4Req"] = "Devi aver completato la prima parte della campagna dell'Enclave di Classe."

	--upgraded
	L["TraitRow2Tint1Req"] = string.format("Devi aver completato la campagna dell'Enclave di Classe.", ClassName)
	L["TraitRow2Tint2Req"] = string.format("Devi aver completato la campagna dell'Enclave di Classe.", ClassName)
	L["TraitRow2Tint3Req"] = string.format("Devi aver completato la campagna dell'Enclave di Classe.", ClassName)
	L["TraitRow2Tint4Req"] = "Devi aver compiuto l'impresa \"Scoperte rare\"."

	--valorous
	L["TraitRow3Tint1Req"] = "Devi aver completato la missione \"Equilibrio di potere\"."
	L["TraitRow3Tint2Req"] = "Devi aver compiuto l'impresa \"Mostruosità scatenate\". Devi aver completato la missione \"Equilibrio di potere\"."
	L["TraitRow3Tint3Req"] = "Devi aver completato una spedizione Mitica con una Chiave del Potere di livello 5.\n\nCompleta la serie di missioni \"Equilibrio di potere\"."
	L["TraitRow3Tint4Req"] = "Devi aver compiuto l'impresa \"Gloria dell'eroe di Legion\". Devi aver completato la missione \"Equilibrio di potere\"."

	--war-torn
	L["TraitRow4Tint1Req"] = "Partecipa ai combattimenti PvP e raggiungi il Livello Onore 10."
	L["TraitRow4Tint2Req"] = "Raggiungi il Livello Onore 30."
	L["TraitRow4Tint3Req"] = "Raggiungi il Livello Onore 50."
	L["TraitRow4Tint4Req"] = "Raggiungi il Livello Onore 80."

	--challenging (swapped with Hidden)
	L["TraitRow5Tint1Req_THR"] = "Devi aver completato la missione \"Il ritorno del Gran Signore\"."
	L["TraitRow5Tint2Req_THR"] = "Sconfiggi Kil'jaeden [E] dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"Il ritorno del Gran Signore\"."
	L["TraitRow5Tint3Req_THR"] = "Vinci 10 CdB classificati dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"Il ritorno del Gran Signore\"."
	L["TraitRow5Tint4Req_THR"] = "Completa 10 spedizioni diverse di Legion dopo aver sbloccato un aspetto Sfida.\n\nCompleta la serie di missioni \"Il ritorno del Gran Signore\"."

	L["TraitRow5Tint1Req_XC"] = "Devi aver completato la missione \"Sfida di Xylem\"."
	L["TraitRow5Tint2Req_XC"] = "Sconfiggi Kil'jaeden [E] dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"Sfida di Xylem\"."
	L["TraitRow5Tint3Req_XC"] = "Vinci 10 CdB classificati dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"Sfida di Xylem\"."
	L["TraitRow5Tint4Req_XC"] = "Completa 10 spedizioni diverse di Legion dopo aver sbloccato un aspetto Sfida.\n\nCompleta la serie di missioni \"Sfida di Xylem\"."

	L["TraitRow5Tint1Req_IMC"] = "Devi aver completato la missione \"Sfida della Madre degli Imp\"."
	L["TraitRow5Tint2Req_IMC"] = "Sconfiggi Kil'jaeden [E] dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"Sfida della Madre degli Imp\"."
	L["TraitRow5Tint3Req_IMC"] = "Vinci 10 CdB classificati dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"Sfida della Madre degli Imp\"."
	L["TraitRow5Tint4Req_IMC"] = "Completa 10 spedizioni diverse di Legion dopo aver sbloccato un aspetto Sfida.\n\nCompleta la serie di missioni \"Sfida della Madre degli Imp\"."

	L["TraitRow5Tint1Req_TC"] = "Devi aver completato la missione \"Sfida dei Gemelli\"."
	L["TraitRow5Tint2Req_TC"] = "Sconfiggi Kil'jaeden [E] dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"Sfida dei Gemelli\"."
	L["TraitRow5Tint3Req_TC"] = "Vinci 10 CdB classificati dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"Sfida dei Gemelli\"."
	L["TraitRow5Tint4Req_TC"] = "Completa 10 spedizioni diverse di Legion dopo aver sbloccato un aspetto Sfida.\n\nCompleta la serie di missioni \"Sfida dei Gemelli\"."

	L["TraitRow5Tint1Req_TBRT"] = "Devi aver completato la missione \"Il pericolo di Corvonero\"."
	L["TraitRow5Tint2Req_TBRT"] = "Sconfiggi Kil'jaeden [E] dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"Il pericolo di Corvonero\"."
	L["TraitRow5Tint3Req_TBRT"] = "Vinci 10 CdB classificati dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"Il pericolo di Corvonero\"."
	L["TraitRow5Tint4Req_TBRT"] = "Completa 10 spedizioni diverse di Legion dopo aver sbloccato un aspetto Sfida.\n\nCompleta la serie di missioni \"Il pericolo di Corvonero\"."

	L["TraitRow5Tint1Req_TFWM"] = "Devi aver completato la missione \"La minaccia dei Vilvermi\"."
	L["TraitRow5Tint2Req_TFWM"] = "Sconfiggi Kil'jaeden [E] dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"La minaccia dei Vilvermi\"."
	L["TraitRow5Tint3Req_TFWM"] = "Vinci 10 CdB classificati dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"La minaccia dei Vilvermi\"."
	L["TraitRow5Tint4Req_TFWM"] = "Completa 10 spedizioni diverse di Legion dopo aver sbloccato un aspetto Sfida.\n\nCompleta la serie di missioni \"La minaccia dei Vilvermi\"."

	L["TraitRow5Tint1Req_GQC"] = "Devi aver completato la missione \"Sfida della Dea-Sovrana\"."
	L["TraitRow5Tint2Req_GQC"] = "Sconfiggi Kil'jaeden [E] dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"Sfida della Dea-Sovrana\"."
	L["TraitRow5Tint3Req_GQC"] = "Vinci 10 CdB classificati dopo aver ottenuto l'aspetto Sfida dell'Artefatto.\n\nCompleta \"Sfida della Dea-Sovrana\"."
	L["TraitRow5Tint4Req_GQC"] = "Completa 10 spedizioni diverse di Legion dopo aver sbloccato un aspetto Sfida.\n\nCompleta la serie di missioni \"Sfida della Dea-Sovrana\"."

	--hidden (swapped with Challenging)
	L["TraitRow6Tint1Req"] = ""
	L["TraitRow6Tint2Req"] = "Devi aver completato 30 spedizioni di Legion dopo aver sbloccato un aspetto nascosto del tuo Artefatto."
	L["TraitRow6Tint3Req"] = "Devi aver completato 200 missioni mondiali dopo aver sbloccato un aspetto nascosto del tuo Artefatto."
	L["TraitRow6Tint4Req"] = "Devi aver ucciso 1.000 giocatori nemici dopo aver sbloccato un aspetto nascosto del tuo Artefatto."

	--Demon Hunter
	L["TraitRow1_DemonHunter_Havoc_Classic"]		 = "Lame Gemelle dell'Ingannatore"
	L["TraitRow2_DemonHunter_Havoc_Upgraded"]		 = "Mano degli Illidari"
	L["TraitRow3_DemonHunter_Havoc_Valorous"]		 = "Lamannerita"
	L["TraitRow4_DemonHunter_Havoc_War-torn"]		 = "Tocco del Demone"
	L["TraitRow5_DemonHunter_Havoc_Challenging"]	 = "Spezzafiamme"
	L["TraitRow6_DemonHunter_Havoc_Hidden"]			 = "Calcamorte"

	L["TraitRow1_DemonHunter_Vengeance_Classic"]	 = "Lame da Guerra degli Aldrachi"
	L["TraitRow2_DemonHunter_Vengeance_Upgraded"]	 = "Stemma degli Illidari"
	L["TraitRow3_DemonHunter_Vengeance_Valorous"]	 = "Morso del Signore del Terrore"
	L["TraitRow4_DemonHunter_Vengeance_War-torn"]	 = "Terrore d'Ossa"
	L["TraitRow5_DemonHunter_Vengeance_Challenging"] = "Ala d'Ombra"
	L["TraitRow6_DemonHunter_Vengeance_Hidden"]		 = "Custode di Ferro"

	--Paladin
	L["TraitRow1_Paladin_Retribution_Classic"]		 = "Brandicenere"
	L["TraitRow2_Paladin_Retribution_Upgraded"]		 = "Granspada del Virtuoso"
	L["TraitRow3_Paladin_Retribution_Valorous"]		 = "Rappresaglia Infuocata"
	L["TraitRow4_Paladin_Retribution_War-torn"]		 = "Speranza Persa"
	L["TraitRow5_Paladin_Retribution_Challenging"]	 = "Giudizio Infranto"
	L["TraitRow6_Paladin_Retribution_Hidden"]		 = "Ricordo Corrotto"

	L["TraitRow1_Paladin_Holy_Classic"]				 = "Mano d'Argento"
	L["TraitRow2_Paladin_Holy_Upgraded"]			 = "Pugno del Guardiano Caduto"
	L["TraitRow3_Paladin_Holy_Valorous"]			 = "Giudizio del Protettore"
	L["TraitRow4_Paladin_Holy_War-torn"]			 = "Custode delle Tombe"
	L["TraitRow5_Paladin_Holy_Challenging"]			 = "Fiamma della Giustizia"
	L["TraitRow6_Paladin_Holy_Hidden"]				 = "Armamento del Guardiano"

	L["TraitRow1_Paladin_Protection_Classic"]		 = "Scudo della Verità"
	L["TraitRow2_Paladin_Protection_Upgraded"]		 = "Luce dei Titani"
	L["TraitRow3_Paladin_Protection_Valorous"]		 = "Protezione Divina"
	L["TraitRow4_Paladin_Protection_War-torn"]		 = "Difesa del Guardiano Oscuro"
	L["TraitRow5_Paladin_Protection_Challenging"]	 = "Stemma di Fuoco Sacro"
	L["TraitRow6_Paladin_Protection_Hidden"]		 = "Baluardo del Vendicatore"

	--Warrior
	L["TraitRow1_Warrior_Arms_Classic"]				 = "Strom'kar, la Spezzaguerra"
	L["TraitRow2_Warrior_Arms_Upgraded"]			 = "Vendetta dei Caduti"
	L["TraitRow3_Warrior_Arms_Valorous"]			 = "Spezzafiamme"
	L["TraitRow4_Warrior_Arms_War-torn"]			 = "Lama dell'Ira"
	L["TraitRow5_Warrior_Arms_Challenging"]			 = "Lama del Campione del Cielo"
	L["TraitRow6_Warrior_Arms_Hidden"]				 = "Spezzalame d'Arcanite"

	L["TraitRow1_Warrior_Fury_Classic"]				 = "Spadoni dei Valarjar"
	L["TraitRow2_Warrior_Fury_Upgraded"]			 = "Braccio del Cavalcadraghi"
	L["TraitRow3_Warrior_Fury_Valorous"]			 = "Fauci Valorose"
	L["TraitRow4_Warrior_Fury_War-torn"]			 = "Soffio della Tempesta"
	L["TraitRow5_Warrior_Fury_Challenging"]			 = "Sguardo di Helya"
	L["TraitRow6_Warrior_Fury_Hidden"]				 = "Lama dell'Ammazzadraghi"

	L["TraitRow1_Warrior_Protection_Classic"]		 = "Scaglia del Custode della Terra"
	L["TraitRow2_Warrior_Protection_Upgraded"]		 = "Braccio del Re Caduto"
	L["TraitRow3_Warrior_Protection_Valorous"]		 = "Resistenza Indefessa"
	L["TraitRow4_Warrior_Protection_War-torn"]		 = "Sguardo del Guardiamorte"
	L["TraitRow5_Warrior_Protection_Challenging"]	 = "Spezzalegione"
	L["TraitRow6_Warrior_Protection_Hidden"]		 = "Ultimo Respiro del Devastamondi"

	--Death Knight
	L["TraitRow1_DeathKnight_Blood_Classic"]		 = "Morso del Dannato"
	L["TraitRow2_DeathKnight_Blood_Upgraded"]		 = "Fauci di Sangue"
	L["TraitRow3_DeathKnight_Blood_Valorous"]		 = "Falcianima"
	L["TraitRow4_DeathKnight_Blood_War-torn"]		 = "Carnefice"
	L["TraitRow5_DeathKnight_Blood_Challenging"]	 = "Morsa d'Ossa"
	L["TraitRow6_DeathKnight_Blood_Hidden"]			 = "Tocco della Non Morte"

	L["TraitRow1_DeathKnight_Frost_Classic"]		 = "Lame del Principe Caduto"
	L["TraitRow2_DeathKnight_Frost_Upgraded"]		 = "Eredità di Gelidanima"
	L["TraitRow3_DeathKnight_Frost_Valorous"]		 = "Furia di Sindragosa"
	L["TraitRow4_DeathKnight_Frost_War-torn"]		 = "Sepolcro"
	L["TraitRow5_DeathKnight_Frost_Challenging"]	 = "Falcianime"
	L["TraitRow6_DeathKnight_Frost_Hidden"]			 = "Lama Runica Oscura"

	L["TraitRow1_DeathKnight_Unholy_Classic"]		 = "Apocalisse"
	L["TraitRow2_DeathKnight_Unholy_Upgraded"]		 = "Guerra Empia"
	L["TraitRow3_DeathKnight_Unholy_Valorous"]		 = "Araldo della Pestilenza"
	L["TraitRow4_DeathKnight_Unholy_War-torn"]		 = "Portatore di Carestia"
	L["TraitRow5_DeathKnight_Unholy_Challenging"]	 = "Liberazione della Morte"
	L["TraitRow6_DeathKnight_Unholy_Hidden"]		 = "Spezzaossa"

	--Hunter
	L["TraitRow1_Hunter_BeastMastery_Classic"]		 = "Titanassalto"
	L["TraitRow2_Hunter_BeastMastery_Upgraded"]		 = "Veglia dell'Aquila"
	L["TraitRow3_Hunter_BeastMastery_Valorous"]		 = "Tuono dell'Elekk"
	L["TraitRow4_Hunter_BeastMastery_War-torn"]		 = "Cannone Anticinghiale"
	L["TraitRow5_Hunter_BeastMastery_Challenging"]	 = "Morso del Serpente"
	L["TraitRow6_Hunter_BeastMastery_Hidden"]		 = "Presa del Titano"

	L["TraitRow1_Hunter_Marksmanship_Classic"]		 = "Thas'dorah, Eredità dei Ventolesto"
	L["TraitRow2_Hunter_Marksmanship_Upgraded"]		 = "Vincolo tra Sorelle"
	L["TraitRow3_Hunter_Marksmanship_Valorous"]		 = "Rinascita della Fenice"
	L["TraitRow4_Hunter_Marksmanship_War-torn"]		 = "Guardia del Generale dei Guardaboschi"
	L["TraitRow5_Hunter_Marksmanship_Challenging"]	 = "Ventofosco"
	L["TraitRow6_Hunter_Marksmanship_Hidden"]		 = "Guardia del Corvo"

	L["TraitRow1_Hunter_Survival_Classic"]			 = "Grinfiartiglio"
	L["TraitRow2_Hunter_Survival_Upgraded"]			 = "Rinascita dell'Aquila"
	L["TraitRow3_Hunter_Survival_Valorous"]			 = "Lancia dell'Alfa"
	L["TraitRow4_Hunter_Survival_War-torn"]			 = "Assalto del Serpente"
	L["TraitRow5_Hunter_Survival_Challenging"]		 = "Guardia delle Foreste"
	L["TraitRow6_Hunter_Survival_Hidden"]			 = "Fermezza dell'Orso"

	--Shaman
	L["TraitRow1_Shaman_Elemental_Classic"]			 = "Pugno di Ra-Den"
	L["TraitRow2_Shaman_Elemental_Upgraded"]		 = "Custode della Tempesta"
	L["TraitRow3_Shaman_Elemental_Valorous"]		 = "Oratore della Terra"
	L["TraitRow4_Shaman_Elemental_War-torn"]		 = "Pugno dello Sciamano Caduto"
	L["TraitRow5_Shaman_Elemental_Challenging"]		 = "Retaggio di Rehgar"
	L["TraitRow6_Shaman_Elemental_Hidden"]			 = "Prestigio degli Amani"

	L["TraitRow1_Shaman_Enhancement_Classic"]		 = "Martelfato"
	L["TraitRow2_Shaman_Enhancement_Upgraded"]		 = "Araldo della Tempesta"
	L["TraitRow3_Shaman_Enhancement_Valorous"]		 = "Rovina della Legione"
	L["TraitRow4_Shaman_Enhancement_War-torn"]		 = "Destino di Manonera"
	L["TraitRow5_Shaman_Enhancement_Challenging"]	 = "Tifone"
	L["TraitRow6_Shaman_Enhancement_Hidden"]		 = "Campione Zandalari"

	L["TraitRow1_Shaman_Restoration_Classic"]		 = "Sharas'dal, Scettro delle Maree"
	L["TraitRow2_Shaman_Restoration_Upgraded"]		 = "Scettro delle Profondità"
	L["TraitRow3_Shaman_Restoration_Valorous"]		 = "Prole dei Titani"
	L["TraitRow4_Shaman_Restoration_War-torn"]		 = "Padrone dei Totem"
	L["TraitRow5_Shaman_Restoration_Challenging"]	 = "Destino Congelato"
	L["TraitRow6_Shaman_Restoration_Hidden"]		 = "Spira del Serpente"

	--Druid
	L["TraitRow1_Druid_Balance_Classic"]			 = "Falce di Elune"
	L["TraitRow2_Druid_Balance_Upgraded"]			 = "Inviato di Goldrinn"
	L["TraitRow3_Druid_Balance_Valorous"]			 = "Richiamo della Luna"
	L["TraitRow4_Druid_Balance_War-torn"]			 = "Afflizione dell'Incubo"
	L["TraitRow5_Druid_Balance_Challenging"]		 = "Falce del Mana"
	L["TraitRow6_Druid_Balance_Hidden"]				 = "Presa del Custode del Sole"

	L["TraitRow1_Druid_Feral_Classic"]				 = "Zanne di Grigiomanto"
	L["TraitRow2_Druid_Feral_Upgraded"]				 = "Furia della Natura"
	L["TraitRow3_Druid_Feral_Valorous"]				 = "Inseguitrice Primordiale"
	L["TraitRow4_Druid_Feral_War-torn"]				 = "Incarnazione dell'Incubo"
	L["TraitRow5_Druid_Feral_Challenging"]			 = "Fantasma della Fiera Progenitrice"
	L["TraitRow6_Druid_Feral_Hidden"]				 = "Spirito Lunare"

	L["TraitRow1_Druid_Guardian_Classic"]			 = "Artigli di Ursoc"
	L["TraitRow2_Druid_Guardian_Upgraded"]			 = "Zampa di Pietra"
	L["TraitRow3_Druid_Guardian_Valorous"]			 = "Avatar di Ursol"
	L["TraitRow4_Druid_Guardian_War-torn"]			 = "Caduta nell'Incubo"
	L["TraitRow5_Druid_Guardian_Challenging"]		 = "Vigore dei Faucebigia"
	L["TraitRow6_Druid_Guardian_Hidden"]			 = "Guardiano della Radura"

	L["TraitRow1_Druid_Restoration_Classic"]		 = "G'hanir, l'Albero Madre"
	L["TraitRow2_Druid_Restoration_Upgraded"]		 = "Albero Antico"
	L["TraitRow3_Druid_Restoration_Valorous"]		 = "Risveglio Cristallino"
	L["TraitRow4_Druid_Restoration_War-torn"]		 = "Custode dei Legnomorto"
	L["TraitRow5_Druid_Restoration_Challenging"]	 = "Sentinella della Notte"
	L["TraitRow6_Druid_Restoration_Hidden"]			 = "Corona del Custode"

	--Rogue
	L["TraitRow1_Rogue_Assassination_Classic"]		 = "Lame Sterminatrici di Re"
	L["TraitRow2_Rogue_Assassination_Upgraded"]		 = "Mano Corrotta"
	L["TraitRow3_Rogue_Assassination_Valorous"]		 = "Fermacuori"
	L["TraitRow4_Rogue_Assassination_War-torn"]		 = "Lama del Mago Assassino"
	L["TraitRow5_Rogue_Assassination_Challenging"]	 = "Lama Spettrale"
	L["TraitRow6_Rogue_Assassination_Hidden"]		 = "Spaccaossa"

	L["TraitRow1_Rogue_Outlaw_Classic"]				 = "Lame dell'Oscurità"
	L["TraitRow2_Rogue_Outlaw_Upgraded"]			 = "Promessa del Flagello del Mare"
	L["TraitRow3_Rogue_Outlaw_Valorous"]			 = "Bacio della Fiamma"
	L["TraitRow4_Rogue_Outlaw_War-torn"]			 = "Ultima Parola della Canaglia"
	L["TraitRow5_Rogue_Outlaw_Challenging"]			 = "Presa dello Schermidore"
	L["TraitRow6_Rogue_Outlaw_Hidden"]				 = "Furiatonante, Lama Santificata del Signore del Vento"
	
	L["TraitRow1_Rogue_Subtlety_Classic"]			 = "Zanne del Divoratore"
	L["TraitRow2_Rogue_Subtlety_Upgraded"]			 = "Lamaombrosa"
	L["TraitRow3_Rogue_Subtlety_Valorous"]			 = "Abbraccio del Demone"
	L["TraitRow4_Rogue_Subtlety_War-torn"]			 = "Banchetto di Sangue"
	L["TraitRow5_Rogue_Subtlety_Challenging"]		 = "Raffica di Ghiaccio"
	L["TraitRow6_Rogue_Subtlety_Hidden"]			 = "Morso Velenoso"

	--Monk
	L["TraitRow1_Monk_Brewmaster_Classic"]			 = "Fu Zan, Compagno del Viandante"
	L["TraitRow2_Monk_Brewmaster_Upgraded"]			 = "Fardello del Signore delle Scimmie"
	L["TraitRow3_Monk_Brewmaster_Valorous"]			 = "Cuore dello Yak"
	L["TraitRow4_Monk_Brewmaster_War-torn"]			 = "Presa di Dragonfuoco"
	L["TraitRow5_Monk_Brewmaster_Challenging"]		 = "Portatore della Nebbia"
	L["TraitRow6_Monk_Brewmaster_Hidden"]			 = "Custode della Birra"

	L["TraitRow1_Monk_Mistweaver_Classic"]			 = "Sheilun, Bastone delle Nebbie"
	L["TraitRow2_Monk_Mistweaver_Upgraded"]			 = "Rintocco della Nebbia Profonda"
	L["TraitRow3_Monk_Mistweaver_Valorous"]			 = "Spirito di Chi-Ji"
	L["TraitRow4_Monk_Mistweaver_War-torn"]			 = "Tormento dello Sha"
	L["TraitRow5_Monk_Mistweaver_Challenging"]		 = "Essenza della Calma"
	L["TraitRow6_Monk_Mistweaver_Hidden"]			 = "Soffio della Serpe Immortale"

	L["TraitRow1_Monk_Windwalker_Classic"]			 = "Pugni del Cielo"
	L["TraitRow2_Monk_Windwalker_Upgraded"]			 = "Tocco di Al'Akir"
	L["TraitRow3_Monk_Windwalker_Valorous"]			 = "Affondo dello Spirito"
	L["TraitRow4_Monk_Windwalker_War-torn"]			 = "Eredità degli Shandaren"
	L["TraitRow5_Monk_Windwalker_Challenging"]		 = "Tutore di Xuen"
	L["TraitRow6_Monk_Windwalker_Hidden"]			 = "Mano della Tempesta"

	--Warlock
	L["TraitRow1_Warlock_Affliction_Classic"]		 = "Mietitrice di Ventomorto"
	L["TraitRow2_Warlock_Affliction_Upgraded"]		 = "Mano dell'Afflitto"
	L["TraitRow3_Warlock_Affliction_Valorous"]		 = "Aspiranima"
	L["TraitRow4_Warlock_Affliction_War-torn"]		 = "Mano della Morte"
	L["TraitRow5_Warlock_Affliction_Challenging"]	 = "Spina Dorsale del Condannato"
	L["TraitRow6_Warlock_Affliction_Hidden"]		 = "Fine del Destino"

	L["TraitRow1_Warlock_Demonology_Classic"]		 = "Teschio dei Man'ari"
	L["TraitRow2_Warlock_Demonology_Upgraded"]		 = "Sguardo del Primo Evocatore"
	L["TraitRow3_Warlock_Demonology_Valorous"]		 = "Orgoglio del Signore delle Fosse"
	L["TraitRow4_Warlock_Demonology_War-torn"]		 = "Resti Infuocati"
	L["TraitRow5_Warlock_Demonology_Challenging"]	 = "Anima dei Dimenticati"
	L["TraitRow6_Warlock_Demonology_Hidden"]		 = "Visione di Thal'kiel"

	L["TraitRow1_Warlock_Destruction_Classic"]		 = "Scettro di Sargeras"
	L["TraitRow2_Warlock_Destruction_Upgraded"]		 = "Superbia del Titano Oscuro"
	L["TraitRow3_Warlock_Destruction_Valorous"]		 = "Eco di Gul'dan"
	L["TraitRow4_Warlock_Destruction_War-torn"]		 = "Ombra del Distruttore"
	L["TraitRow5_Warlock_Destruction_Challenging"]	 = "Maschera dell'Oscuratore"
	L["TraitRow6_Warlock_Destruction_Hidden"]		 = "Terrore della Legione"

	--Priest
	L["TraitRow1_Priest_Discipline_Classic"]		 = "Ira della Luce"
	L["TraitRow2_Priest_Discipline_Upgraded"]		 = "Stemma del Redento"
	L["TraitRow3_Priest_Discipline_Valorous"]		 = "Calice della Luce"
	L["TraitRow4_Priest_Discipline_War-torn"]		 = "Veglia Eterna"
	L["TraitRow5_Priest_Discipline_Challenging"]	 = "Guardia Ascesa"
	L["TraitRow6_Priest_Discipline_Hidden"]			 = "Spira del Custode dei Tomi"

	L["TraitRow1_Priest_Holy_Classic"]				 = "T'uure, Faro dei Naaru"
	L["TraitRow2_Priest_Holy_Upgraded"]				 = "Stendardo della Purezza"
	L["TraitRow3_Priest_Holy_Valorous"]				 = "Custode della Luce"
	L["TraitRow4_Priest_Holy_War-torn"]				 = "Abbraccio del Vuoto"
	L["TraitRow5_Priest_Holy_Challenging"]			 = "Memoria di Argus"
	L["TraitRow6_Priest_Holy_Hidden"]				 = "Scudo della Genia della Luce"

	L["TraitRow1_Priest_Shadow_Classic"]			 = "Lama dell'Impero Nero"
	L["TraitRow2_Priest_Shadow_Upgraded"]			 = "Abbraccio degli Dei Antichi"
	L["TraitRow3_Priest_Shadow_Valorous"]			 = "Lama Caduta"
	L["TraitRow4_Priest_Shadow_War-torn"]			 = "Visione di Follia"
	L["TraitRow5_Priest_Shadow_Challenging"]		 = "Riflesso Distorto"
	L["TraitRow6_Priest_Shadow_Hidden"]				 = "Artiglio di N'zoth"

	--Mage
	L["TraitRow1_Mage_Arcane_Classic"]				 = "Aluneth"
	L["TraitRow2_Mage_Arcane_Upgraded"]				 = "Spira Guardiana"
	L["TraitRow3_Mage_Arcane_Valorous"]				 = "Magnus Indomito"
	L["TraitRow4_Mage_Arcane_War-torn"]				 = "Caduta di Aegwynn"
	L["TraitRow5_Mage_Arcane_Challenging"]			 = "Mago Eterno"
	L["TraitRow6_Mage_Arcane_Hidden"]				 = "Carica del Tosapecore"

	L["TraitRow1_Mage_Fire_Classic"]				 = "Felo'melorn"
	L["TraitRow2_Mage_Fire_Upgraded"]				 = "Orgoglio dei Solealto"
	L["TraitRow3_Mage_Fire_Valorous"]				 = "Rinascita della Fenice"
	L["TraitRow4_Mage_Fire_War-torn"]				 = "Lama di Lava"
	L["TraitRow5_Mage_Fire_Challenging"]			 = "Lama del Piegatempo"
	L["TraitRow6_Mage_Fire_Hidden"]					 = "Progetto delle Stelle"

	L["TraitRow1_Mage_Frost_Classic"]				 = "Gelonero"
	L["TraitRow2_Mage_Frost_Upgraded"]				 = "Focus del Guardiano"
	L["TraitRow3_Mage_Frost_Valorous"]				 = "Flusso del Primo"
	L["TraitRow4_Mage_Frost_War-torn"]				 = "Volontà dell'Arcimaga"
	L["TraitRow5_Mage_Frost_Challenging"]			 = "Magus Élite"
	L["TraitRow6_Mage_Frost_Hidden"]				 = "Ricordo di Fuocogelo"
	
return end

if LOCALE == "ptBR" then
	-- Brazilian Portuguese translations go here
	L["Addon_Title"] = "Remix Artifact Tracker"
	L["Addon_Notes"] = "Adiciona uma aba de aparências de artefato às armas de artefato no Legion Remix."
	L["SlashCmd1"] = "/rat"
	L["SlashCmd2"] = "/rat"
	L["SlashCmd3"] = "/remixartifact"

	L["Traits"] = ARTIFACTS_PERK_TAB
	L["Appearances"] = ARTIFACTS_APPEARANCE_TAB
	L["ShowSecondary"] = "Mostrar secundário"
	L["ShowSecondaryTT"] = "Exibe o modelo secundário vinculado a este conjunto."
	L["RaceNightElf"] = GetRaceName(4)
	L["RaceHaranir"] = GetRaceName(86)
	L["RaceTauren"] = GetRaceName(6)
	L["RaceHMTauren"] = GetRaceName(28)
	L["RaceTroll"] = GetRaceName(8)
	L["RaceZandalari"] = GetRaceName(31)
	L["RaceWorgen"] = GetRaceName(22)
	L["RaceKulTiran"] = GetRaceName(32)
	L["RaceGroup1"] = L["RaceNightElf"] -- .. ", " .. L["RaceHaranir"] -- (maybe for future?)
	L["RaceGroup2"] = L["RaceTauren"] .. ", " .. L["RaceHMTauren"]
	L["RaceGroup3"] = L["RaceTroll"] .. ", " .. L["RaceZandalari"]
	L["RaceGroup4"] = L["RaceWorgen"] .. ", " .. L["RaceKulTiran"]
	L["Artifact"] = ITEM_QUALITY6_DESC
	L["Unavailable"] = UNAVAILABLE
	L["NoLongerAvailable"] = NO_LONGER_AVAILABLE

	L["TraitRow1Temp_Classic"]		 = "Clássico"
	L["TraitRow2Temp_Upgraded"]		 = "Aprimorado"
	L["TraitRow3Temp_Valorous"]		 = "Valoroso"
	L["TraitRow4Temp_War-torn"]		 = "Dilacerado pela guerra"
	L["TraitRow5Temp_Challenging"]	 = "Desafiante"
	L["TraitRow6Temp_Hidden"]		 = "Escondido"

	--classic
	L["TraitRow1Tint1Req"] = ""
	L["TraitRow1Tint2Req"] = "Recuperar um dos Pilares da Criação."
	L["TraitRow1Tint3Req"] = "Recuperar o Coração da Luz e trazer para o Salão da Ordem."
	L["TraitRow1Tint4Req"] = "Completar o primeiro esforço de campanha de vulto com a sua ordem."

	--upgraded
	L["TraitRow2Tint1Req"] = string.format("Completar a campanha do salão de classe de %s.", ClassName)
	L["TraitRow2Tint2Req"] = string.format("Completar a campanha do salão de classe de %s.", ClassName)
	L["TraitRow2Tint3Req"] = string.format("Completar a campanha do salão de classe de %s.", ClassName)
	L["TraitRow2Tint4Req"] = "Completar a conquista \"Este lado para cima\"."

	--valorous
	L["TraitRow3Tint1Req"] = "Completar a série de missões \"Equilíbrio de Poder\"."
	L["TraitRow3Tint2Req"] = "Completar a conquista \"Monstruosidades liberadas\".\n\nCompletar a série de missões \"Equilíbrio de Poder\"."
	L["TraitRow3Tint3Req"] = "Concluir uma Masmorra no modo Mítico usando uma Pedra-chave de nível 5.\n\nConcluir a série de missões \"Equilíbrio de poder\"."
	L["TraitRow3Tint4Req"] = "Completar a conquista \"Glória do herói de Legion\".\n\nCompletar a série de missões \"Equilíbrio de Poder\"."

	--war-torn
	L["TraitRow4Tint1Req"] = "Participar de combate Jogador x Jogador e chegar ao nível de Honra 10."
	L["TraitRow4Tint2Req"] = "Chegar ao nível de Honra 30."
	L["TraitRow4Tint3Req"] = "Chegar ao nível de Honra 50."
	L["TraitRow4Tint4Req"] = "Chegar ao nível de Honra 80."

	--challenging (swapped with Hidden)
	L["TraitRow5Tint1Req_THR"] = "Completar a série de missões \"O retorno do grão-lorde\"."
	L["TraitRow5Tint2Req_THR"] = "Derrotar Kil'jaeden Heroico após desbloquear uma aparência de artefato de desafio. \n\nCompletar a série de missões \"O retorno do grão-lorde\"."
	L["TraitRow5Tint3Req_THR"] = "Vencer em 10 CdB ranqueados após desbloquear uma aparência de artefato de desafio.\n\nCompletar a série de missões \"O retorno do grão-lorde\"."
	L["TraitRow5Tint4Req_THR"] = "Concluir 10 masmorras diferentes de Legion após desbloquear uma aparência de artefato de desafio. \n\nConcluir a missão \"O retorno do grão-lorde\"."

	L["TraitRow5Tint1Req_XC"] = "Completar a série de missões \"Desafio de Tauriel\"."
	L["TraitRow5Tint2Req_XC"] = "Derrotar Kil'jaeden Heroico após desbloquear uma aparência de artefato de desafio. \n\nCompletar a série de missões \"Desafio de Tauriel\"."
	L["TraitRow5Tint3Req_XC"] = "Vencer em 10 CdB ranqueados após desbloquear uma aparência de artefato de desafio.\n\nCompletar a série de missões \"Desafio de Tauriel\"."
	L["TraitRow5Tint4Req_XC"] = "Concluir 10 masmorras diferentes de Legion após desbloquear uma aparência de artefato de desafio. \n\nConcluir a missão \"Desafio de Tauriel\"."

	L["TraitRow5Tint1Req_IMC"] = "Completar a série de missões \"Desafio da Mãe dos Diabretes\"."
	L["TraitRow5Tint2Req_IMC"] = "Derrotar Kil'jaeden Heroico após desbloquear uma aparência de artefato de desafio. \n\nCompletar a série de missões \"Desafio da Mãe dos Diabretes\"."
	L["TraitRow5Tint3Req_IMC"] = "Vencer em 10 CdB ranqueados após desbloquear uma aparência de artefato de desafio.\n\nCompletar a série de missões \"Desafio da Mãe dos Diabretes\"."
	L["TraitRow5Tint4Req_IMC"] = "Concluir 10 masmorras diferentes de Legion após desbloquear uma aparência de artefato de desafio. \n\nConcluir a missão \"Desafio da Mãe dos Diabretes\"."

	L["TraitRow5Tint1Req_TC"] = "Completar a série de missões \"Desafio dos Gêmeos\"."
	L["TraitRow5Tint2Req_TC"] = "Derrotar Kil'jaeden Heroico após desbloquear uma aparência de artefato de desafio. \n\nCompletar a série de missões \"Desafio dos Gêmeos\"."
	L["TraitRow5Tint3Req_TC"] = "Vencer em 10 CdB ranqueados após desbloquear uma aparência de artefato de desafio.\n\nCompletar a série de missões \"Desafio dos Gêmeos\"."
	L["TraitRow5Tint4Req_TC"] = "Concluir 10 masmorras diferentes de Legion após desbloquear uma aparência de artefato de desafio. \n\nConcluir a missão \"Desafio dos Gêmeos\"."

	L["TraitRow5Tint1Req_TBRT"] = "Completar a série de missões \"A ameaça do Corvo Negro\"."
	L["TraitRow5Tint2Req_TBRT"] = "Derrotar Kil'jaeden Heroico após desbloquear uma aparência de artefato de desafio. \n\nCompletar a série de missões \"A ameaça do Corvo Negro\"."
	L["TraitRow5Tint3Req_TBRT"] = "Vencer em 10 CdB ranqueados após desbloquear uma aparência de artefato de desafio.\n\nCompletar a série de missões \"A ameaça do Corvo Negro\"."
	L["TraitRow5Tint4Req_TBRT"] = "Concluir 10 masmorras diferentes de Legion após desbloquear uma aparência de artefato de desafio. \n\nConcluir a missão \"A ameaça do Corvo Negro\"."

	L["TraitRow5Tint1Req_TFWM"] = "Completar a série de missões \"A ameaça dos vermes vis\"."
	L["TraitRow5Tint2Req_TFWM"] = "Derrotar Kil'jaeden Heroico após desbloquear uma aparência de artefato de desafio. \n\nCompletar a série de missões \"A ameaça dos vermes vis\"."
	L["TraitRow5Tint3Req_TFWM"] = "Vencer em 10 CdB ranqueados após desbloquear uma aparência de artefato de desafio.\n\nCompletar a série de missões \"A ameaça dos vermes vis\"."
	L["TraitRow5Tint4Req_TFWM"] = "Concluir 10 masmorras diferentes de Legion após desbloquear uma aparência de artefato de desafio. \n\nConcluir a missão \"A ameaça dos vermes vis\"."

	L["TraitRow5Tint1Req_GQC"] = "Completar a série de missões \"Desafio da Deusa-rainha\"."
	L["TraitRow5Tint2Req_GQC"] = "Derrotar Kil'jaeden Heroico após desbloquear uma aparência de artefato de desafio. \n\nCompletar a série de missões \"Desafio da Deusa-rainha\"."
	L["TraitRow5Tint3Req_GQC"] = "Vencer em 10 CdB ranqueados após desbloquear uma aparência de artefato de desafio.\n\nCompletar a série de missões \"Desafio da Deusa-rainha\"."
	L["TraitRow5Tint4Req_GQC"] = "Concluir 10 masmorras diferentes de Legion após desbloquear uma aparência de artefato de desafio. \n\nConcluir a missão \"Desafio da Deusa-rainha\"."

	--hidden (swapped with Challenging)
	L["TraitRow6Tint1Req"] = ""
	L["TraitRow6Tint2Req"] = "Completar 30 masmorras de Legion após desbloquear uma aparência de artefato escondida."
	L["TraitRow6Tint3Req"] = "Completar 200 Missões Mundiais após desbloquear uma aparência de artefato escondido."
	L["TraitRow6Tint4Req"] = "Matar 1.000 jogadores inimigos após desbloquear uma aparência de artefato escondido."

	--Demon Hunter
	L["TraitRow1_DemonHunter_Havoc_Classic"]		 = "Lâminas Gêmeas do Enganador"
	L["TraitRow2_DemonHunter_Havoc_Upgraded"]		 = "Mão dos Illidari"
	L["TraitRow3_DemonHunter_Havoc_Valorous"]		 = "Laminegra"
	L["TraitRow4_DemonHunter_Havoc_War-torn"]		 = "Toque do Demônio"
	L["TraitRow5_DemonHunter_Havoc_Challenging"]	 = "Ceifachama"
	L["TraitRow6_DemonHunter_Havoc_Hidden"]			 = "Mortívago"

	L["TraitRow1_DemonHunter_Vengeance_Classic"]	 = "Lâminas de Guerra Aldrachi"
	L["TraitRow2_DemonHunter_Vengeance_Upgraded"]	 = "Brasão Illidari"
	L["TraitRow3_DemonHunter_Vengeance_Valorous"]	 = "Mordida do Senhor do Medo"
	L["TraitRow4_DemonHunter_Vengeance_War-torn"]	 = "Terrorósseo"
	L["TraitRow5_DemonHunter_Vengeance_Challenging"] = "Asumbra"
	L["TraitRow6_DemonHunter_Vengeance_Hidden"]		 = "Guardiã de Ferro"

	--Paladin
	L["TraitRow1_Paladin_Retribution_Classic"]		 = "Crematória"
	L["TraitRow2_Paladin_Retribution_Upgraded"]		 = "Montante do Íntegro"
	L["TraitRow3_Paladin_Retribution_Valorous"]		 = "Represália Flamejante"
	L["TraitRow4_Paladin_Retribution_War-torn"]		 = "Esperança Caída"
	L["TraitRow5_Paladin_Retribution_Challenging"]	 = "Vingança Estilhaçada"
	L["TraitRow6_Paladin_Retribution_Hidden"]		 = "Memória Corrompida"

	L["TraitRow1_Paladin_Holy_Classic"]				 = "Punho de Prata"
	L["TraitRow2_Paladin_Holy_Upgraded"]			 = "Punho do Vigilante Caído"
	L["TraitRow3_Paladin_Holy_Valorous"]			 = "Julgamento do Protetor"
	L["TraitRow4_Paladin_Holy_War-torn"]			 = "Guardião do Túmulo"
	L["TraitRow5_Paladin_Holy_Challenging"]			 = "Chama da Justiça"
	L["TraitRow6_Paladin_Holy_Hidden"]				 = "Armamento do Vigia"

	L["TraitRow1_Paladin_Protection_Classic"]		 = "Guarda Fiel"
	L["TraitRow2_Paladin_Protection_Upgraded"]		 = "Luz dos Titãs"
	L["TraitRow3_Paladin_Protection_Valorous"]		 = "Protetor Divino"
	L["TraitRow4_Paladin_Protection_War-torn"]		 = "Proteção do Guardião Negro"
	L["TraitRow5_Paladin_Protection_Challenging"]	 = "Brasão do Fogo Sagrado"
	L["TraitRow6_Paladin_Protection_Hidden"]		 = "Baluarte do Vindicante"

	--Warrior
	L["TraitRow1_Warrior_Arms_Classic"]				 = "Stromkar, a Senhora da Guerra"
	L["TraitRow2_Warrior_Arms_Upgraded"]			 = "Vingança dos Caídos"
	L["TraitRow3_Warrior_Arms_Valorous"]			 = "Ceifachama"
	L["TraitRow4_Warrior_Arms_War-torn"]			 = "Gume da Ira"
	L["TraitRow5_Warrior_Arms_Challenging"]			 = "Lâmina do Campeão Celeste"
	L["TraitRow6_Warrior_Arms_Hidden"]				 = "Trinca-lâmina de Arcanita"

	L["TraitRow1_Warrior_Fury_Classic"]				 = "Armíferas dos Valarjares"
	L["TraitRow2_Warrior_Fury_Upgraded"]			 = "Braço do Ginete de Dragão"
	L["TraitRow3_Warrior_Fury_Valorous"]			 = "Gorjabrava"
	L["TraitRow4_Warrior_Fury_War-torn"]			 = "Sopro da Tempestade"
	L["TraitRow5_Warrior_Fury_Challenging"]			 = "Olhar de Helya"
	L["TraitRow6_Warrior_Fury_Hidden"]				 = "Gume do Mata-dragões"

	L["TraitRow1_Warrior_Protection_Classic"]		 = "Escama do Guardião da Terra"
	L["TraitRow2_Warrior_Protection_Upgraded"]		 = "Braço do Rei Caído"
	L["TraitRow3_Warrior_Protection_Valorous"]		 = "Postura Inquebrável"
	L["TraitRow4_Warrior_Protection_War-torn"]		 = "Olhar do Necroguarda"
	L["TraitRow5_Warrior_Protection_Challenging"]	 = "Quebra-legião"
	L["TraitRow6_Warrior_Protection_Hidden"]		 = "Último Suspiro do Quebramundo"

	--Death Knight
	L["TraitRow1_DeathKnight_Blood_Classic"]		 = "Gorja dos Condenados"
	L["TraitRow2_DeathKnight_Blood_Upgraded"]		 = "Gorjassangue"
	L["TraitRow3_DeathKnight_Blood_Valorous"]		 = "Ceifalmas"
	L["TraitRow4_DeathKnight_Blood_War-torn"]		 = "Carrasco"
	L["TraitRow5_DeathKnight_Blood_Challenging"]	 = "Bocaóssea"
	L["TraitRow6_DeathKnight_Blood_Hidden"]			 = "Toque da Morte-viva"

	L["TraitRow1_DeathKnight_Frost_Classic"]		 = "Lâminas do Príncipe Caído"
	L["TraitRow2_DeathKnight_Frost_Upgraded"]		 = "Legado da Gélido Lamento"
	L["TraitRow3_DeathKnight_Frost_Valorous"]		 = "Fúria de Sindragosa"
	L["TraitRow4_DeathKnight_Frost_War-torn"]		 = "Guarda-tumba"
	L["TraitRow5_DeathKnight_Frost_Challenging"]	 = "Colecionador de Almas"
	L["TraitRow6_DeathKnight_Frost_Hidden"]			 = "Lâmina da Runa Negra"

	L["TraitRow1_DeathKnight_Unholy_Classic"]		 = "Apocalipse"
	L["TraitRow2_DeathKnight_Unholy_Upgraded"]		 = "Guerra Profana"
	L["TraitRow3_DeathKnight_Unholy_Valorous"]		 = "Arauto da Pestilência"
	L["TraitRow4_DeathKnight_Unholy_War-torn"]		 = "Fomeante"
	L["TraitRow5_DeathKnight_Unholy_Challenging"]	 = "Libertação da Morte"
	L["TraitRow6_DeathKnight_Unholy_Hidden"]		 = "Ceifaosso"

	--Hunter
	L["TraitRow1_Hunter_BeastMastery_Classic"]		 = "Trovão Titânico"
	L["TraitRow2_Hunter_BeastMastery_Upgraded"]		 = "Vigília Aquilina"
	L["TraitRow3_Hunter_BeastMastery_Valorous"]		 = "Trovão do Elekk"
	L["TraitRow4_Hunter_BeastMastery_War-torn"]		 = "Canhão Tuscotiro"
	L["TraitRow5_Hunter_BeastMastery_Challenging"]	 = "Mordida da Serpente"
	L["TraitRow6_Hunter_BeastMastery_Hidden"]		 = "Vanguarda do Titã"

	L["TraitRow1_Hunter_Marksmanship_Classic"]		 = "Thas'dorah, Legado dos Correventos"
	L["TraitRow2_Hunter_Marksmanship_Upgraded"]		 = "Um Elo de Irmã"
	L["TraitRow3_Hunter_Marksmanship_Valorous"]		 = "Renascimento da Fênix"
	L["TraitRow4_Hunter_Marksmanship_War-torn"]		 = "Guarda da Patrulheira-general"
	L["TraitRow5_Hunter_Marksmanship_Challenging"]	 = "Trilhabrava"
	L["TraitRow6_Hunter_Marksmanship_Hidden"]		 = "Guardacórax"

	L["TraitRow1_Hunter_Survival_Classic"]			 = "Garranha"
	L["TraitRow2_Hunter_Survival_Upgraded"]			 = "Renascimento da Águia"
	L["TraitRow3_Hunter_Survival_Valorous"]			 = "Lança do Alfa"
	L["TraitRow4_Hunter_Survival_War-torn"]			 = "Golpe da Serpente"
	L["TraitRow5_Hunter_Survival_Challenging"]		 = "Guardião da Floresta"
	L["TraitRow6_Hunter_Survival_Hidden"]			 = "Fortitude do Urso"

	--Shaman
	L["TraitRow1_Shaman_Elemental_Classic"]			 = "Punho de Ra-den"
	L["TraitRow2_Shaman_Elemental_Upgraded"]		 = "Guardião da Tempestade"
	L["TraitRow3_Shaman_Elemental_Valorous"]		 = "Voz da Terra"
	L["TraitRow4_Shaman_Elemental_War-torn"]		 = "Punho do Xamã Caído"
	L["TraitRow5_Shaman_Elemental_Challenging"]		 = "Legado de Rehgar"
	L["TraitRow6_Shaman_Elemental_Hidden"]			 = "Prestígio dos Amani"

	L["TraitRow1_Shaman_Enhancement_Classic"]		 = "Martelo da Perdição"
	L["TraitRow2_Shaman_Enhancement_Upgraded"]		 = "Traztormenta"
	L["TraitRow3_Shaman_Enhancement_Valorous"]		 = "Ruína da Legião"
	L["TraitRow4_Shaman_Enhancement_War-torn"]		 = "Destino do Mão Negra"
	L["TraitRow5_Shaman_Enhancement_Challenging"]	 = "Tufão"
	L["TraitRow6_Shaman_Enhancement_Hidden"]		 = "Campeão Zandalari"

	L["TraitRow1_Shaman_Restoration_Classic"]		 = "Sharas'dal, o Cetro das Marés"
	L["TraitRow2_Shaman_Restoration_Upgraded"]		 = "Cetro das Profundezas"
	L["TraitRow3_Shaman_Restoration_Valorous"]		 = "Titanato"
	L["TraitRow4_Shaman_Restoration_War-torn"]		 = "Portador Totêmico"
	L["TraitRow5_Shaman_Restoration_Challenging"]	 = "Destino Congelado"
	L["TraitRow6_Shaman_Restoration_Hidden"]		 = "Cavernas Serpeantes"

	--Druid
	L["TraitRow1_Druid_Balance_Classic"]			 = "Foice de Eluna"
	L["TraitRow2_Druid_Balance_Upgraded"]			 = "Enviado de Goldrinn"
	L["TraitRow3_Druid_Balance_Valorous"]			 = "Clamaluna"
	L["TraitRow4_Druid_Balance_War-torn"]			 = "Suplício do Pesadelo"
	L["TraitRow5_Druid_Balance_Challenging"]		 = "Manafoice"
	L["TraitRow6_Druid_Balance_Hidden"]				 = "Alcance do Salvassol"

	L["TraitRow1_Druid_Feral_Classic"]				 = "Presas de Ashamane"
	L["TraitRow2_Druid_Feral_Upgraded"]				 = "Fúria da Natureza"
	L["TraitRow3_Druid_Feral_Valorous"]				 = "Espreitador Primevo"
	L["TraitRow4_Druid_Feral_War-torn"]				 = "Encarnação do Pesadelo"
	L["TraitRow5_Druid_Feral_Challenging"]			 = "Fantasma da Matriarca"
	L["TraitRow6_Druid_Feral_Hidden"]				 = "Lunespírito"

	L["TraitRow1_Druid_Guardian_Classic"]			 = "Garras de Ursoc"
	L["TraitRow2_Druid_Guardian_Upgraded"]			 = "Patapétrea"
	L["TraitRow3_Druid_Guardian_Valorous"]			 = "Avatar de Ursol"
	L["TraitRow4_Druid_Guardian_War-torn"]			 = "Caído para o Pesadelo"
	L["TraitRow5_Druid_Guardian_Challenging"]		 = "Poder da Bocaina Velha"
	L["TraitRow6_Druid_Guardian_Hidden"]			 = "Guardião da Clareira"

	L["TraitRow1_Druid_Restoration_Classic"]		 = "G'hanir, a Árvore Mãe"
	L["TraitRow2_Druid_Restoration_Upgraded"]		 = "Árvore Anciã"
	L["TraitRow3_Druid_Restoration_Valorous"]		 = "Despertar Cristalino"
	L["TraitRow4_Druid_Restoration_War-torn"]		 = "Guardião de Lenha Morta"
	L["TraitRow5_Druid_Restoration_Challenging"]	 = "Vigilância da Noite"
	L["TraitRow6_Druid_Restoration_Hidden"]			 = "Coroa do Guardião"

	--Rogue
	L["TraitRow1_Rogue_Assassination_Classic"]		 = "Regicidas"
	L["TraitRow2_Rogue_Assassination_Upgraded"]		 = "Mão Amaldiçoada"
	L["TraitRow3_Rogue_Assassination_Valorous"]		 = "Parador de Corações"
	L["TraitRow4_Rogue_Assassination_War-torn"]		 = "Gume do Matamagos"
	L["TraitRow5_Rogue_Assassination_Challenging"]	 = "Lâmina Espectral"
	L["TraitRow6_Rogue_Assassination_Hidden"]		 = "Quebraossos"

	L["TraitRow1_Rogue_Outlaw_Classic"]				 = "Alfanjes do Terror"
	L["TraitRow2_Rogue_Outlaw_Upgraded"]			 = "Promessa do Flagelo do Mar"
	L["TraitRow3_Rogue_Outlaw_Valorous"]			 = "Beijo da Chama"
	L["TraitRow4_Rogue_Outlaw_War-torn"]			 = "Última Palavra do Biltre"
	L["TraitRow5_Rogue_Outlaw_Challenging"]			 = "Alcance do Contrabandista"
	L["TraitRow6_Rogue_Outlaw_Hidden"]				 = "Tormentária, Lâmina Consagrada do Senhor do Vento"
	
	L["TraitRow1_Rogue_Subtlety_Classic"]			 = "Presas do Devorador"
	L["TraitRow2_Rogue_Subtlety_Upgraded"]			 = "Umbralâmina"
	L["TraitRow3_Rogue_Subtlety_Valorous"]			 = "Abraço do Demônio"
	L["TraitRow4_Rogue_Subtlety_War-torn"]			 = "Comessangue"
	L["TraitRow5_Rogue_Subtlety_Challenging"]		 = "Cortagelo"
	L["TraitRow6_Rogue_Subtlety_Hidden"]			 = "Mordida Peçonhenta"

	--Monk
	L["TraitRow1_Monk_Brewmaster_Classic"]			 = "Fu Zan, Companheiro do Andarilho"
	L["TraitRow2_Monk_Brewmaster_Upgraded"]			 = "Fardo do Rei Macaco"
	L["TraitRow3_Monk_Brewmaster_Valorous"]			 = "Coração do Boi"
	L["TraitRow4_Monk_Brewmaster_War-torn"]			 = "Pegada do Fogo do Dragão"
	L["TraitRow5_Monk_Brewmaster_Challenging"]		 = "Carregador da Névoa"
	L["TraitRow6_Monk_Brewmaster_Hidden"]			 = "Guardião da Cerveja Ancião"

	L["TraitRow1_Monk_Mistweaver_Classic"]			 = "Sheilun, Cajado das Brumas"
	L["TraitRow2_Monk_Mistweaver_Upgraded"]			 = "Toada da Névoa Profunda"
	L["TraitRow3_Monk_Mistweaver_Valorous"]			 = "Espírito de Chi-ji"
	L["TraitRow4_Monk_Mistweaver_War-torn"]			 = "Tormento do Sha"
	L["TraitRow5_Monk_Mistweaver_Challenging"]		 = "Essência da Calma"
	L["TraitRow6_Monk_Mistweaver_Hidden"]			 = "Sopro da Serpente Imorredoura"

	L["TraitRow1_Monk_Windwalker_Classic"]			 = "Punhos do Paraíso"
	L["TraitRow2_Monk_Windwalker_Upgraded"]			 = "Toque de Al'Akir"
	L["TraitRow3_Monk_Windwalker_Valorous"]			 = "Alcance do Espírito"
	L["TraitRow4_Monk_Windwalker_War-torn"]			 = "Legado Shado-Pan"
	L["TraitRow5_Monk_Windwalker_Challenging"]		 = "Impositor de Xuen"
	L["TraitRow6_Monk_Windwalker_Hidden"]			 = "Punho de Tempestade"

	--Warlock
	L["TraitRow1_Warlock_Affliction_Classic"]		 = "Ceifadora do Vento Morto"
	L["TraitRow2_Warlock_Affliction_Upgraded"]		 = "Mão do Aflito"
	L["TraitRow3_Warlock_Affliction_Valorous"]		 = "Sifão da Alma"
	L["TraitRow4_Warlock_Affliction_War-torn"]		 = "Mão da Morte"
	L["TraitRow5_Warlock_Affliction_Challenging"]	 = "Espinha dos Condenados"
	L["TraitRow6_Warlock_Affliction_Hidden"]		 = "Fim do Destino"

	L["TraitRow1_Warlock_Demonology_Classic"]		 = "Caveira dos Man'ari"
	L["TraitRow2_Warlock_Demonology_Upgraded"]		 = "Olhar do Primeiro Evocador"
	L["TraitRow3_Warlock_Demonology_Valorous"]		 = "Orgulho do Lorde Abissal"
	L["TraitRow4_Warlock_Demonology_War-torn"]		 = "Remanescente em Chamas"
	L["TraitRow5_Warlock_Demonology_Challenging"]	 = "Alma do Esquecido"
	L["TraitRow6_Warlock_Demonology_Hidden"]		 = "Face de Thal'kiel"

	L["TraitRow1_Warlock_Destruction_Classic"]		 = "Cetro de Sargeras"
	L["TraitRow2_Warlock_Destruction_Upgraded"]		 = "Orgulho do Titã Sombrio"
	L["TraitRow3_Warlock_Destruction_Valorous"]		 = "Eco de Gul'dan"
	L["TraitRow4_Warlock_Destruction_War-torn"]		 = "Sombra do Destruidor"
	L["TraitRow5_Warlock_Destruction_Challenging"]	 = "Máscara do Obscurecente"
	L["TraitRow6_Warlock_Destruction_Hidden"]		 = "Terror da Legião"

	--Priest
	L["TraitRow1_Priest_Discipline_Classic"]		 = "Ira da Luz"
	L["TraitRow2_Priest_Discipline_Upgraded"]		 = "Brasão do Redimido"
	L["TraitRow3_Priest_Discipline_Valorous"]		 = "Cálice de Luz"
	L["TraitRow4_Priest_Discipline_War-torn"]		 = "Vigília Eterna"
	L["TraitRow5_Priest_Discipline_Challenging"]	 = "Vigília Ascendida"
	L["TraitRow6_Priest_Discipline_Hidden"]			 = "Pináculo do Guardião dos Tomos"

	L["TraitRow1_Priest_Holy_Classic"]				 = "Tuure, a Luz dos Naarus"
	L["TraitRow2_Priest_Holy_Upgraded"]				 = "Estandarte da Pureza"
	L["TraitRow3_Priest_Holy_Valorous"]				 = "Guardião da Luz"
	L["TraitRow4_Priest_Holy_War-torn"]				 = "Abraço do Caos"
	L["TraitRow5_Priest_Holy_Challenging"]			 = "Memória de Argus"
	L["TraitRow6_Priest_Holy_Hidden"]				 = "Brasão dos Lumenatos"

	L["TraitRow1_Priest_Shadow_Classic"]			 = "Lâmina do Império Negro"
	L["TraitRow2_Priest_Shadow_Upgraded"]			 = "Abraço dos Deuses Antigos"
	L["TraitRow3_Priest_Shadow_Valorous"]			 = "Lâmina Caída"
	L["TraitRow4_Priest_Shadow_War-torn"]			 = "Visão da Loucura"
	L["TraitRow5_Priest_Shadow_Challenging"]		 = "Reflexão Retorcida"
	L["TraitRow6_Priest_Shadow_Hidden"]				 = "Garra de N'Zoth"

	--Mage
	L["TraitRow1_Mage_Arcane_Classic"]				 = "Aluneth"
	L["TraitRow2_Mage_Arcane_Upgraded"]				 = "Pináculo do Guardião"
	L["TraitRow3_Mage_Arcane_Valorous"]				 = "Magna Libertada"
	L["TraitRow4_Mage_Arcane_War-torn"]				 = "Queda de Aegwynn"
	L["TraitRow5_Mage_Arcane_Challenging"]			 = "Magus Eterno"
	L["TraitRow6_Mage_Arcane_Hidden"]				 = "Investida do Ovelhomante"

	L["TraitRow1_Mage_Fire_Classic"]				 = "Felo'melorn"
	L["TraitRow2_Mage_Fire_Upgraded"]				 = "Orgulho dos Andassóis"
	L["TraitRow3_Mage_Fire_Valorous"]				 = "Renascimento da Fênix"
	L["TraitRow4_Mage_Fire_War-torn"]				 = "Lâmina do Lavanato"
	L["TraitRow5_Mage_Fire_Challenging"]			 = "Lâmina do Dobratempo"
	L["TraitRow6_Mage_Fire_Hidden"]					 = "Desígnio das Estrelas"

	L["TraitRow1_Mage_Frost_Classic"]				 = "Ébano Gélido"
	L["TraitRow2_Mage_Frost_Upgraded"]				 = "Concentração do Guardião"
	L["TraitRow3_Mage_Frost_Valorous"]				 = "Fluxo do Primeiro"
	L["TraitRow4_Mage_Frost_War-torn"]				 = "Vontade do Arquimago"
	L["TraitRow5_Mage_Frost_Challenging"]			 = "Magus de Elite"
	L["TraitRow6_Mage_Frost_Hidden"]				 = "Memória de Fogofrio"
	
	-- Note that the EU Portuguese WoW client also
	-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
	-- Russian translations go here
	L["Addon_Title"] = "Remix Artifact Tracker"
	L["Addon_Notes"] = "Добавляет вкладку обликов артефактов к артефактному оружию в Legion Remix."
	L["SlashCmd1"] = "/rat"
	L["SlashCmd2"] = "/рсат"
	L["SlashCmd3"] = "/remixartifact"

	L["Traits"] = ARTIFACTS_PERK_TAB
	L["Appearances"] = ARTIFACTS_APPEARANCE_TAB
	L["ShowSecondary"] = "Показать дополнительный"
	L["ShowSecondaryTT"] = "Отображает дополнительную модель, связанную с этим комплектом."
	L["RaceNightElf"] = GetRaceName(4)
	L["RaceHaranir"] = GetRaceName(86)
	L["RaceTauren"] = GetRaceName(6)
	L["RaceHMTauren"] = GetRaceName(28)
	L["RaceTroll"] = GetRaceName(8)
	L["RaceZandalari"] = GetRaceName(31)
	L["RaceWorgen"] = GetRaceName(22)
	L["RaceKulTiran"] = GetRaceName(32)
	L["RaceGroup1"] = L["RaceNightElf"] -- .. ", " .. L["RaceHaranir"] -- (maybe for future?)
	L["RaceGroup2"] = L["RaceTauren"] .. ", " .. L["RaceHMTauren"]
	L["RaceGroup3"] = L["RaceTroll"] .. ", " .. L["RaceZandalari"]
	L["RaceGroup4"] = L["RaceWorgen"] .. ", " .. L["RaceKulTiran"]
	L["Artifact"] = ITEM_QUALITY6_DESC
	L["Unavailable"] = UNAVAILABLE
	L["NoLongerAvailable"] = NO_LONGER_AVAILABLE

	L["TraitRow1Temp_Classic"]		 = "классический вид"
	L["TraitRow2Temp_Upgraded"]		 = "улучшенный вид"
	L["TraitRow3Temp_Valorous"]		 = "доблестный вид"
	L["TraitRow4Temp_War-torn"]		 = "закаленный вид"
	L["TraitRow5Temp_Challenging"]	 = "испытание"
	L["TraitRow6Temp_Hidden"]		 = "тайный вид"

	--classic
	L["TraitRow1Tint1Req"] = ""
	L["TraitRow1Tint2Req"] = "Найдите один из Столпов Созидания."
	L["TraitRow1Tint3Req"] = "Найдите Сердце Света и принесите его в оплот класса."
	L["TraitRow1Tint4Req"] = "Завершите первый этап кампании оплота своего класса."

	--upgraded
	L["TraitRow2Tint1Req"] = string.format("Завершите кампанию оплота класса для %s.", ClassName)
	L["TraitRow2Tint2Req"] = string.format("Завершите кампанию оплота класса для %s.", ClassName)
	L["TraitRow2Tint3Req"] = string.format("Завершите кампанию оплота класса для %s.", ClassName)
	L["TraitRow2Tint4Req"] = "Заработайте достижение \"Этой стороной вверх\"."

	--valorous
	L["TraitRow3Tint1Req"] = "Заработайте достижение \"Баланс сил\"."
	L["TraitRow3Tint2Req"] = "Заработайте достижение \"Освобожденные чудовища\".\n\nЗавершите линейку заданий \"Баланс сил.\""
	L["TraitRow3Tint3Req"] = "Пройдите подземелье в эпохальном режиме, использовав ключ 5-го уровня.\n\nЗавершите цепочку заданий \"Баланс сил\"."
	L["TraitRow3Tint4Req"] = "Заработайте достижение \"Слава герою Legion\".\n\nЗавершите линейку заданий \"Баланс сил.\""

	--war-torn
	L["TraitRow4Tint1Req"] = "Примите участие в PvP-боях и достигните 10-го уровня чести."
	L["TraitRow4Tint2Req"] = "Достигните 30-го уровня чести."
	L["TraitRow4Tint3Req"] = "Достигните 50-го уровня чести."
	L["TraitRow4Tint4Req"] = "Достигните 80-го уровня чести."

	--challenging (swapped with Hidden)
	L["TraitRow5Tint1Req_THR"] = "Выполните цепочку заданий \"Возвращение верховного лорда\"."
	L["TraitRow5Tint2Req_THR"] = "Получите внешний вид артефакта и победите Кил'джедена (героич.) \n\nЦепочка заданий \"Возвращение верховного лорда\"."
	L["TraitRow5Tint3Req_THR"] = "Получите внешний вид артефакта и победите 10 раз на рейтинговых полях боя.\n\nЦепочка заданий \"Возвращение верховного лорда\"."
	L["TraitRow5Tint4Req_THR"] = "Получите внешний вид артефакта и пройдите 10 разных подземелий Legion.\n\nЗадание \"Возвращение верховного лорда\"."

	L["TraitRow5Tint1Req_XC"] = "Выполните цепочку заданий \"Испытание: Ксилем\"."
	L["TraitRow5Tint2Req_XC"] = "Получите внешний вид артефакта и победите Кил'джедена (героич.) \n\nЦепочка заданий \"Испытание: Ксилем\"."
	L["TraitRow5Tint3Req_XC"] = "Получите внешний вид артефакта и победите 10 раз на рейтинговых полях боя.\n\nЦепочка заданий \"Испытание: Ксилем\"."
	L["TraitRow5Tint4Req_XC"] = "Получите внешний вид артефакта и пройдите 10 разных подземелий Legion.\n\nЗадание \"Испытание: Ксилем\"."

	L["TraitRow5Tint1Req_IMC"] = "Выполните цепочку заданий \"Испытание: мать бесов\"."
	L["TraitRow5Tint2Req_IMC"] = "Получите внешний вид артефакта и победите Кил'джедена (героич.) \n\nЦепочка заданий \"Испытание: мать бесов\"."
	L["TraitRow5Tint3Req_IMC"] = "Получите внешний вид артефакта и победите 10 раз на рейтинговых полях боя.\n\nЦепочка заданий \"Испытание: мать бесов\"."
	L["TraitRow5Tint4Req_IMC"] = "Получите внешний вид артефакта и пройдите 10 разных подземелий Legion.\n\nЗадание \"Испытание: мать бесов\"."

	L["TraitRow5Tint1Req_TC"] = "Выполните цепочку заданий \"Испытание: близнецы\"."
	L["TraitRow5Tint2Req_TC"] = "Получите внешний вид артефакта и победите Кил'джедена (героич.) \n\nЦепочка заданий \"Испытание: близнецы\"."
	L["TraitRow5Tint3Req_TC"] = "Получите внешний вид артефакта и победите 10 раз на рейтинговых полях боя.\n\nЦепочка заданий \"Испытание: близнецы\"."
	L["TraitRow5Tint4Req_TC"] = "Получите внешний вид артефакта и пройдите 10 разных подземелий Legion.\n\nЗадание \"Испытание: близнецы\"."

	L["TraitRow5Tint1Req_TBRT"] = "Выполните цепочку заданий \"Угроза Черной Ладьи\"."
	L["TraitRow5Tint2Req_TBRT"] = "Получите внешний вид артефакта и победите Кил'джедена (героич.) \n\nЦепочка заданий \"Угроза Черной Ладьи\"."
	L["TraitRow5Tint3Req_TBRT"] = "Получите внешний вид артефакта и победите 10 раз на рейтинговых полях боя.\n\nЦепочка заданий \"Угроза Черной Ладьи\"."
	L["TraitRow5Tint4Req_TBRT"] = "Получите внешний вид артефакта и пройдите 10 разных подземелий Legion.\n\nЗадание \"Угроза Черной Ладьи\"."

	L["TraitRow5Tint1Req_TFWM"] = "Выполните цепочку заданий \"Угроза червей Скверны\"."
	L["TraitRow5Tint2Req_TFWM"] = "Получите внешний вид артефакта и победите Кил'джедена (героич.) \n\nЦепочка заданий \"Угроза червей Скверны\"."
	L["TraitRow5Tint3Req_TFWM"] = "Получите внешний вид артефакта и победите 10 раз на рейтинговых полях боя.\n\nЦепочка заданий \"Угроза червей Скверны\"."
	L["TraitRow5Tint4Req_TFWM"] = "Получите внешний вид артефакта и пройдите 10 разных подземелий Legion.\n\nЗадание \"Угроза червей Скверны\"."

	L["TraitRow5Tint1Req_GQC"] = "Выполните цепочку заданий \"Испытание: королева-богиня\"."
	L["TraitRow5Tint2Req_GQC"] = "Получите внешний вид артефакта и победите Кил'джедена (героич.) \n\nЦепочка заданий \"Испытание: королева-богиня\"."
	L["TraitRow5Tint3Req_GQC"] = "Получите внешний вид артефакта и победите 10 раз на рейтинговых полях боя.\n\nЦепочка заданий \"Испытание: королева-богиня\"."
	L["TraitRow5Tint4Req_GQC"] = "Получите внешний вид артефакта и пройдите 10 разных подземелий Legion.\n\nЗадание \"Испытание: королева-богиня\"."

	--hidden (swapped with Challenging)
	L["TraitRow6Tint1Req"] = ""
	L["TraitRow6Tint2Req"] = "Пройдите 30 подземелий дополнения Legion после разблокирования тайного внешнего вида артефакта."
	L["TraitRow6Tint3Req"] = "Выполните 200 локальных заданий после разблокирования тайного внешнего вида артефакта."
	L["TraitRow6Tint4Req"] = "Убейте 1000 игроков противоположной фракции после разблокирования тайного внешнего вида артефакта."

	--Demon Hunter
	L["TraitRow1_DemonHunter_Havoc_Classic"]		 = "Парные клинки Искусителя"
	L["TraitRow2_DemonHunter_Havoc_Upgraded"]		 = "Десница иллидари"
	L["TraitRow3_DemonHunter_Havoc_Valorous"]		 = "Клинки Тьмы"
	L["TraitRow4_DemonHunter_Havoc_War-torn"]		 = "Прикосновение демона"
	L["TraitRow5_DemonHunter_Havoc_Challenging"]	 = "Огненный жнец"
	L["TraitRow6_DemonHunter_Havoc_Hidden"]			 = "Вестник смерти"

	L["TraitRow1_DemonHunter_Vengeance_Classic"]	 = "Альдрахийские боевые клинки"
	L["TraitRow2_DemonHunter_Vengeance_Upgraded"]	 = "Символ иллидари"
	L["TraitRow3_DemonHunter_Vengeance_Valorous"]	 = "Укус повелителя ужаса"
	L["TraitRow4_DemonHunter_Vengeance_War-torn"]	 = "Костяной ужас"
	L["TraitRow5_DemonHunter_Vengeance_Challenging"] = "Крылья мрака"
	L["TraitRow6_DemonHunter_Vengeance_Hidden"]		 = "Железный страж"

	--Paladin
	L["TraitRow1_Paladin_Retribution_Classic"]		 = "Испепелитель"
	L["TraitRow2_Paladin_Retribution_Upgraded"]		 = "Меч праведников"
	L["TraitRow3_Paladin_Retribution_Valorous"]		 = "Пылающий каратель"
	L["TraitRow4_Paladin_Retribution_War-torn"]		 = "Крушение надежд"
	L["TraitRow5_Paladin_Retribution_Challenging"]	 = "Несвершенное возмездие"
	L["TraitRow6_Paladin_Retribution_Hidden"]		 = "Оскверненная память"

	L["TraitRow1_Paladin_Holy_Classic"]				 = "Серебряная длань"
	L["TraitRow2_Paladin_Holy_Upgraded"]			 = "Кулак павшего хранителя"
	L["TraitRow3_Paladin_Holy_Valorous"]			 = "Вердикт защитника"
	L["TraitRow4_Paladin_Holy_War-torn"]			 = "Страж вечного покоя"
	L["TraitRow5_Paladin_Holy_Challenging"]			 = "Пламя правосудия"
	L["TraitRow6_Paladin_Holy_Hidden"]				 = "Орудие хранителя"

	L["TraitRow1_Paladin_Protection_Classic"]		 = "Страж Истины"
	L["TraitRow2_Paladin_Protection_Upgraded"]		 = "Свет титанов"
	L["TraitRow3_Paladin_Protection_Valorous"]		 = "Божественный заступник"
	L["TraitRow4_Paladin_Protection_War-torn"]		 = "Оберег темного хранителя"
	L["TraitRow5_Paladin_Protection_Challenging"]	 = "Герб священного огня"
	L["TraitRow6_Paladin_Protection_Hidden"]		 = "Оплот воздаятелей"

	--Warrior
	L["TraitRow1_Warrior_Arms_Classic"]				 = "Стром'кар, Миротворец"
	L["TraitRow2_Warrior_Arms_Upgraded"]			 = "Месть павших"
	L["TraitRow3_Warrior_Arms_Valorous"]			 = "Огненный жнец"
	L["TraitRow4_Warrior_Arms_War-torn"]			 = "Клинок гнева"
	L["TraitRow5_Warrior_Arms_Challenging"]			 = "Клинок защитника небес"
	L["TraitRow6_Warrior_Arms_Hidden"]				 = "Арканитовый крушитель клинков"

	L["TraitRow1_Warrior_Fury_Classic"]				 = "Боевые мечи валарьяров"
	L["TraitRow2_Warrior_Fury_Upgraded"]			 = "Длань укротителя драконов"
	L["TraitRow3_Warrior_Fury_Valorous"]			 = "Лик доблести"
	L["TraitRow4_Warrior_Fury_War-torn"]			 = "Дыхание шторма"
	L["TraitRow5_Warrior_Fury_Challenging"]			 = "Взор Хелии"
	L["TraitRow6_Warrior_Fury_Hidden"]				 = "Клинки убийцы драконов"

	L["TraitRow1_Warrior_Protection_Classic"]		 = "Панцирь Хранителя Земли"
	L["TraitRow2_Warrior_Protection_Upgraded"]		 = "Длань падшего короля"
	L["TraitRow3_Warrior_Protection_Valorous"]		 = "Неприступный оплот"
	L["TraitRow4_Warrior_Protection_War-torn"]		 = "Взор стража смерти"
	L["TraitRow5_Warrior_Protection_Challenging"]	 = "Каратель Легиона"
	L["TraitRow6_Warrior_Protection_Hidden"]		 = "Последний вздох Разрушителя миров"

	--Death Knight
	L["TraitRow1_DeathKnight_Blood_Classic"]		 = "Проклятый Пожиратель"
	L["TraitRow2_DeathKnight_Blood_Upgraded"]		 = "Пожиратель крови"
	L["TraitRow3_DeathKnight_Blood_Valorous"]		 = "Жнец душ"
	L["TraitRow4_DeathKnight_Blood_War-torn"]		 = "Палач"
	L["TraitRow5_DeathKnight_Blood_Challenging"]	 = "Костяная пасть"
	L["TraitRow6_DeathKnight_Blood_Hidden"]			 = "Касание посмертия"

	L["TraitRow1_DeathKnight_Frost_Classic"]		 = "Клинки падшего принца"
	L["TraitRow2_DeathKnight_Frost_Upgraded"]		 = "Наследие Ледяной Скорби"
	L["TraitRow3_DeathKnight_Frost_Valorous"]		 = "Ярость Синдрагосы"
	L["TraitRow4_DeathKnight_Frost_War-torn"]		 = "Стражи могил"
	L["TraitRow5_DeathKnight_Frost_Challenging"]	 = "Собиратели душ"
	L["TraitRow6_DeathKnight_Frost_Hidden"]			 = "Рунные клинки Тьмы"

	L["TraitRow1_DeathKnight_Unholy_Classic"]		 = "Апокалипсис"
	L["TraitRow2_DeathKnight_Unholy_Upgraded"]		 = "Нечестивая война"
	L["TraitRow3_DeathKnight_Unholy_Valorous"]		 = "Глашатай чумы"
	L["TraitRow4_DeathKnight_Unholy_War-torn"]		 = "Вестник голода"
	L["TraitRow5_DeathKnight_Unholy_Challenging"]	 = "Избавление смертью"
	L["TraitRow6_DeathKnight_Unholy_Hidden"]		 = "Костяной жнец"

	--Hunter
	L["TraitRow1_Hunter_BeastMastery_Classic"]		 = "Мощь Титанов"
	L["TraitRow2_Hunter_BeastMastery_Upgraded"]		 = "Орлиный глаз"
	L["TraitRow3_Hunter_BeastMastery_Valorous"]		 = "Рев элекка"
	L["TraitRow4_Hunter_BeastMastery_War-torn"]		 = "Свинобойка"
	L["TraitRow5_Hunter_BeastMastery_Challenging"]	 = "Укус змеи"
	L["TraitRow6_Hunter_BeastMastery_Hidden"]		 = "Меткость титанов"

	L["TraitRow1_Hunter_Marksmanship_Classic"]		 = "Тас'дора, наследие Ветрокрылых"
	L["TraitRow2_Hunter_Marksmanship_Upgraded"]		 = "Родная кровь"
	L["TraitRow3_Hunter_Marksmanship_Valorous"]		 = "Возрождение феникса"
	L["TraitRow4_Hunter_Marksmanship_War-torn"]		 = "Лук предводительницы следопытов"
	L["TraitRow5_Hunter_Marksmanship_Challenging"]	 = "Крылья ветра"
	L["TraitRow6_Hunter_Marksmanship_Hidden"]		 = "Вороний страж"

	L["TraitRow1_Hunter_Survival_Classic"]			 = "Хищный Коготь"
	L["TraitRow2_Hunter_Survival_Upgraded"]			 = "Возрождение орла"
	L["TraitRow3_Hunter_Survival_Valorous"]			 = "Копье вожака"
	L["TraitRow4_Hunter_Survival_War-torn"]			 = "Бросок змеи"
	L["TraitRow5_Hunter_Survival_Challenging"]		 = "Страж лесов"
	L["TraitRow6_Hunter_Survival_Hidden"]			 = "Стойкость медведя"

	--Shaman
	L["TraitRow1_Shaman_Elemental_Classic"]			 = "Кулак Ра-дена"
	L["TraitRow2_Shaman_Elemental_Upgraded"]		 = "Хранитель бурь"
	L["TraitRow3_Shaman_Elemental_Valorous"]		 = "Глас земли"
	L["TraitRow4_Shaman_Elemental_War-torn"]		 = "Кулак падшего шамана"
	L["TraitRow5_Shaman_Elemental_Challenging"]		 = "Наследие Регара"
	L["TraitRow6_Shaman_Elemental_Hidden"]			 = "Гордость Амани"

	L["TraitRow1_Shaman_Enhancement_Classic"]		 = "Молот Рока"
	L["TraitRow2_Shaman_Enhancement_Upgraded"]		 = "Вестник шторма"
	L["TraitRow3_Shaman_Enhancement_Valorous"]		 = "Погибель Легиона"
	L["TraitRow4_Shaman_Enhancement_War-torn"]		 = "Судьба Чернорука"
	L["TraitRow5_Shaman_Enhancement_Challenging"]	 = "Тайфун"
	L["TraitRow6_Shaman_Enhancement_Hidden"]		 = "Надежда зандаларов"

	L["TraitRow1_Shaman_Restoration_Classic"]		 = "Шарас'дал, Скипетр Приливов"
	L["TraitRow2_Shaman_Restoration_Upgraded"]		 = "Скипетр глубин"
	L["TraitRow3_Shaman_Restoration_Valorous"]		 = "Творение титанов"
	L["TraitRow4_Shaman_Restoration_War-torn"]		 = "Хранитель тотемов"
	L["TraitRow5_Shaman_Restoration_Challenging"]	 = "Ледяное дыхание судьбы"
	L["TraitRow6_Shaman_Restoration_Hidden"]		 = "Змеиные кольца"

	--Druid
	L["TraitRow1_Druid_Balance_Classic"]			 = "Коса Элуны"
	L["TraitRow2_Druid_Balance_Upgraded"]			 = "Глашатай Голдринна"
	L["TraitRow3_Druid_Balance_Valorous"]			 = "Зов Луны"
	L["TraitRow4_Druid_Balance_War-torn"]			 = "Узы Кошмара"
	L["TraitRow5_Druid_Balance_Challenging"]		 = "Звездная коса"
	L["TraitRow6_Druid_Balance_Hidden"]				 = "Наследие хранителей Солнца"

	L["TraitRow1_Druid_Feral_Classic"]				 = "Клыки Пеплошкурой"
	L["TraitRow2_Druid_Feral_Upgraded"]				 = "Гнев природы"
	L["TraitRow3_Druid_Feral_Valorous"]				 = "Первобытный охотник"
	L["TraitRow4_Druid_Feral_War-torn"]				 = "Воплощение Кошмара"
	L["TraitRow5_Druid_Feral_Challenging"]			 = "Призрак Матери стаи"
	L["TraitRow6_Druid_Feral_Hidden"]				 = "Дух Луны"

	L["TraitRow1_Druid_Guardian_Classic"]			 = "Когти Урсока"
	L["TraitRow2_Druid_Guardian_Upgraded"]			 = "Каменные лапы"
	L["TraitRow3_Druid_Guardian_Valorous"]			 = "Аватара Урсола"
	L["TraitRow4_Druid_Guardian_War-torn"]			 = "Жертва Кошмара"
	L["TraitRow5_Druid_Guardian_Challenging"]		 = "Мощь Седой Пасти"
	L["TraitRow6_Druid_Guardian_Hidden"]			 = "Страж рощи"

	L["TraitRow1_Druid_Restoration_Classic"]		 = "Г'ханир, Изначальное Древо"
	L["TraitRow2_Druid_Restoration_Upgraded"]		 = "Бузинный посох"
	L["TraitRow3_Druid_Restoration_Valorous"]		 = "Оживший кристалл"
	L["TraitRow4_Druid_Restoration_War-torn"]		 = "Хранитель Мертвого Леса"
	L["TraitRow5_Druid_Restoration_Challenging"]	 = "Неусыпный дозор"
	L["TraitRow6_Druid_Restoration_Hidden"]			 = "Корона стража"

	--Rogue
	L["TraitRow1_Rogue_Assassination_Classic"]		 = "Убийцы Королей"
	L["TraitRow2_Rogue_Assassination_Upgraded"]		 = "Проклятая длань"
	L["TraitRow3_Rogue_Assassination_Valorous"]		 = "Пронзатели сердец"
	L["TraitRow4_Rogue_Assassination_War-torn"]		 = "Клинки убийцы магов"
	L["TraitRow5_Rogue_Assassination_Challenging"]	 = "Призрачные клинки"
	L["TraitRow6_Rogue_Assassination_Hidden"]		 = "Крушители костей"

	L["TraitRow1_Rogue_Outlaw_Classic"]				 = "Клинки Ужаса"
	L["TraitRow2_Rogue_Outlaw_Upgraded"]			 = "Завет грозы морей"
	L["TraitRow3_Rogue_Outlaw_Valorous"]			 = "Поцелуй пламени"
	L["TraitRow4_Rogue_Outlaw_War-torn"]			 = "Последнее слово негодяя"
	L["TraitRow5_Rogue_Outlaw_Challenging"]			 = "Сабли дуэлянта"
	L["TraitRow6_Rogue_Outlaw_Hidden"]				 = "Громовая Ярость, священный клинок Владыки Ветра"
	
	L["TraitRow1_Rogue_Subtlety_Classic"]			 = "Клыки Пожирателя"
	L["TraitRow2_Rogue_Subtlety_Upgraded"]			 = "Теневые клинки"
	L["TraitRow3_Rogue_Subtlety_Valorous"]			 = "Хватка демона"
	L["TraitRow4_Rogue_Subtlety_War-torn"]			 = "Кровопийцы"
	L["TraitRow5_Rogue_Subtlety_Challenging"]		 = "Ледяные бритвы"
	L["TraitRow6_Rogue_Subtlety_Hidden"]			 = "Ядовитые клыки"

	--Monk
	L["TraitRow1_Monk_Brewmaster_Classic"]			 = "Фу Цань, Спутник Странников"
	L["TraitRow2_Monk_Brewmaster_Upgraded"]			 = "Бремя Короля обезьян"
	L["TraitRow3_Monk_Brewmaster_Valorous"]			 = "Сердце Быка"
	L["TraitRow4_Monk_Brewmaster_War-torn"]			 = "Дыхание дракона"
	L["TraitRow5_Monk_Brewmaster_Challenging"]		 = "Чаша туманов"
	L["TraitRow6_Monk_Brewmaster_Hidden"]			 = "Наследие первых хмелеваров"

	L["TraitRow1_Monk_Mistweaver_Classic"]			 = "Шей-лун, Посох Туманов"
	L["TraitRow2_Monk_Mistweaver_Upgraded"]			 = "Песнь туманов"
	L["TraitRow3_Monk_Mistweaver_Valorous"]			 = "Дух Чи-Цзи"
	L["TraitRow4_Monk_Mistweaver_War-torn"]			 = "Истязание Ша"
	L["TraitRow5_Monk_Mistweaver_Challenging"]		 = "Сущность покоя"
	L["TraitRow6_Monk_Mistweaver_Hidden"]			 = "Дыхание бессмертной змеи"

	L["TraitRow1_Monk_Windwalker_Classic"]			 = "Кулаки Небес"
	L["TraitRow2_Monk_Windwalker_Upgraded"]			 = "Касание Ал'акира"
	L["TraitRow3_Monk_Windwalker_Valorous"]			 = "Острие духа"
	L["TraitRow4_Monk_Windwalker_War-torn"]			 = "Наследие Шадо-Пан"
	L["TraitRow5_Monk_Windwalker_Challenging"]		 = "Заступник Сюэня"
	L["TraitRow6_Monk_Windwalker_Hidden"]			 = "Кулаки бури"

	--Warlock
	L["TraitRow1_Warlock_Affliction_Classic"]		 = "Жнец Мертвого Ветра"
	L["TraitRow2_Warlock_Affliction_Upgraded"]		 = "Длань колдуна"
	L["TraitRow3_Warlock_Affliction_Valorous"]		 = "Поглотитель душ"
	L["TraitRow4_Warlock_Affliction_War-torn"]		 = "Десница смерти"
	L["TraitRow5_Warlock_Affliction_Challenging"]	 = "Хребет проклятых"
	L["TraitRow6_Warlock_Affliction_Hidden"]		 = "Конец времен"

	L["TraitRow1_Warlock_Demonology_Classic"]		 = "Череп Ман'ари"
	L["TraitRow2_Warlock_Demonology_Upgraded"]		 = "Взор первого призывателя"
	L["TraitRow3_Warlock_Demonology_Valorous"]		 = "Гордыня властителя преисподней"
	L["TraitRow4_Warlock_Demonology_War-torn"]		 = "Пылающие останки"
	L["TraitRow5_Warlock_Demonology_Challenging"]	 = "Забытая душа"
	L["TraitRow6_Warlock_Demonology_Hidden"]		 = "Лик Тал'киэля"

	L["TraitRow1_Warlock_Destruction_Classic"]		 = "Скипетр Саргераса"
	L["TraitRow2_Warlock_Destruction_Upgraded"]		 = "Гордыня Темного титана"
	L["TraitRow3_Warlock_Destruction_Valorous"]		 = "Сущность Гул'дана"
	L["TraitRow4_Warlock_Destruction_War-torn"]		 = "Тень Разрушителя"
	L["TraitRow5_Warlock_Destruction_Challenging"]	 = "Личина очернителя"
	L["TraitRow6_Warlock_Destruction_Hidden"]		 = "Ужас Легиона"

	--Priest
	L["TraitRow1_Priest_Discipline_Classic"]		 = "Ярость Света"
	L["TraitRow2_Priest_Discipline_Upgraded"]		 = "Венец искупления"
	L["TraitRow3_Priest_Discipline_Valorous"]		 = "Чаша Света"
	L["TraitRow4_Priest_Discipline_War-torn"]		 = "Вечное служение"
	L["TraitRow5_Priest_Discipline_Challenging"]	 = "Страж вознесения"
	L["TraitRow6_Priest_Discipline_Hidden"]			 = "Шпиль библиотекаря"

	L["TraitRow1_Priest_Holy_Classic"]				 = "Т'ууре, Светоч наару"
	L["TraitRow2_Priest_Holy_Upgraded"]				 = "Знамя чистоты"
	L["TraitRow3_Priest_Holy_Valorous"]				 = "Хранитель Света"
	L["TraitRow4_Priest_Holy_War-torn"]				 = "Объятия Бездны"
	L["TraitRow5_Priest_Holy_Challenging"]			 = "Память Аргуса"
	L["TraitRow6_Priest_Holy_Hidden"]				 = "Венец Светорожденных"

	L["TraitRow1_Priest_Shadow_Classic"]			 = "Клинок Темной Империи"
	L["TraitRow2_Priest_Shadow_Upgraded"]			 = "Узы Древних богов"
	L["TraitRow3_Priest_Shadow_Valorous"]			 = "Падший клинок"
	L["TraitRow4_Priest_Shadow_War-torn"]			 = "Видения безумцев"
	L["TraitRow5_Priest_Shadow_Challenging"]		 = "Кривое зеркало"
	L["TraitRow6_Priest_Shadow_Hidden"]				 = "Коготь Н'Зота"

	--Mage
	L["TraitRow1_Mage_Arcane_Classic"]				 = "Алунет"
	L["TraitRow2_Mage_Arcane_Upgraded"]				 = "Посох Хранительницы"
	L["TraitRow3_Mage_Arcane_Valorous"]				 = "Ярость Магны"
	L["TraitRow4_Mage_Arcane_War-torn"]				 = "Падение Эгвин"
	L["TraitRow5_Mage_Arcane_Challenging"]			 = "Бессмертная магия"
	L["TraitRow6_Mage_Arcane_Hidden"]				 = "Веретено судьбы"

	L["TraitRow1_Mage_Fire_Classic"]				 = "Фело'мелорн"
	L["TraitRow2_Mage_Fire_Upgraded"]				 = "Гордость Солнечных Скитальцев"
	L["TraitRow3_Mage_Fire_Valorous"]				 = "Перерождение феникса"
	L["TraitRow4_Mage_Fire_War-torn"]				 = "Магматический клинок"
	L["TraitRow5_Mage_Fire_Challenging"]			 = "Меч повелителя времени"
	L["TraitRow6_Mage_Fire_Hidden"]					 = "Творение звезд"

	L["TraitRow1_Mage_Frost_Classic"]				 = "Полярная Ночь"
	L["TraitRow2_Mage_Frost_Upgraded"]				 = "Средоточие Хранителя"
	L["TraitRow3_Mage_Frost_Valorous"]				 = "Первозданный поток"
	L["TraitRow4_Mage_Frost_War-torn"]				 = "Воля верховных магов"
	L["TraitRow5_Mage_Frost_Challenging"]			 = "Величие магии"
	L["TraitRow6_Mage_Frost_Hidden"]				 = "Память льда и пламени"
	
return end

if LOCALE == "koKR" then
	-- Korean translations go here
	L["Addon_Title"] = "Remix Artifact Tracker"
	L["Addon_Notes"] = "군단 리믹스의 유물 무기에 유물 형상 탭을 추가합니다."
	L["SlashCmd1"] = "/rat"
	L["SlashCmd2"] = "/레믹스유물"
	L["SlashCmd3"] = "/remixartifact"

	L["Traits"] = ARTIFACTS_PERK_TAB
	L["Appearances"] = ARTIFACTS_APPEARANCE_TAB
	L["ShowSecondary"] = "보조 표시"
	L["ShowSecondaryTT"] = "이 세트와 연결된 보조 모델을 표시합니다."
	L["RaceNightElf"] = GetRaceName(4)
	L["RaceHaranir"] = GetRaceName(86)
	L["RaceTauren"] = GetRaceName(6)
	L["RaceHMTauren"] = GetRaceName(28)
	L["RaceTroll"] = GetRaceName(8)
	L["RaceZandalari"] = GetRaceName(31)
	L["RaceWorgen"] = GetRaceName(22)
	L["RaceKulTiran"] = GetRaceName(32)
	L["RaceGroup1"] = L["RaceNightElf"] -- .. ", " .. L["RaceHaranir"] -- (maybe for future?)
	L["RaceGroup2"] = L["RaceTauren"] .. " " .. L["RaceHMTauren"]
	L["RaceGroup3"] = L["RaceTroll"] .. " " .. L["RaceZandalari"]
	L["RaceGroup4"] = L["RaceWorgen"] .. " " .. L["RaceKulTiran"]
	L["Artifact"] = ITEM_QUALITY6_DESC
	L["Unavailable"] = UNAVAILABLE
	L["NoLongerAvailable"] = NO_LONGER_AVAILABLE

	L["TraitRow1Temp_Classic"]		 = "기본"
	L["TraitRow2Temp_Upgraded"]		 = "강화된"
	L["TraitRow3Temp_Valorous"]		 = "용맹스러운"
	L["TraitRow4Temp_War-torn"]		 = "전흔의"
	L["TraitRow5Temp_Challenging"]	 = "도전적인"
	L["TraitRow6Temp_Hidden"]		 = "숨겨진"

	--classic
	L["TraitRow1Tint1Req"] = ""
	L["TraitRow1Tint2Req"] = "창조의 근원 하나를 획득해야 합니다."
	L["TraitRow1Tint3Req"] = "빛의 심장을 회수하고 안전한 연맹 전당으로 가져와야 합니다."
	L["TraitRow1Tint4Req"] = "직업 전당의 첫 번째 주요 대장정을 완료해야 합니다."

	--upgraded
	L["TraitRow2Tint1Req"] = string.format("%s 직업 전당 대장정을 완료해야 합니다.", ClassName)
	L["TraitRow2Tint2Req"] = string.format("%s 직업 전당 대장정을 완료해야 합니다.", ClassName)
	L["TraitRow2Tint3Req"] = string.format("%s 직업 전당 대장정을 완료해야 합니다.", ClassName)
	L["TraitRow2Tint4Req"] = "\"이쪽을 위로\" 업적을 달성해야 합니다."

	--valorous
	L["TraitRow3Tint1Req"] = "\"힘의 균형\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow3Tint2Req"] = "\"괴물 사냥꾼\" 업적을 달성해야 합니다.\n\n\"힘의 균형\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow3Tint3Req"] = "5 레벨 쐐기돌을 사용하여 신화 던전을 완료해야 합니다.\n\n\"힘의 균형\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow3Tint4Req"] = "\"영예의 군단 영웅\" 업적을 달성해야 합니다.\n\n\"힘의 균형\" 연계 퀘스트를 완료해야 합니다."

	--war-torn
	L["TraitRow4Tint1Req"] = "플레이어 간 전투에 참가하여 명예 10 레벨을 달성해야 합니다."
	L["TraitRow4Tint2Req"] = "명예 30 레벨을 달성해야 합니다."
	L["TraitRow4Tint3Req"] = "명예 50 레벨을 달성해야 합니다."
	L["TraitRow4Tint4Req"] = "명예 80 레벨을 달성해야 합니다."

	--challenging (swapped with Hidden)
	L["TraitRow5Tint1Req_THR"] = "\"돌아온 대군주\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint2Req_THR"] = "도전 유물 형상을 잠금 해제한 후에 영웅 난이도 킬제덴을 처치해야 합니다.\n\n\"돌아온 대군주\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint3Req_THR"] = "도전 유물 형상을 잠금 해제한 후에 평점제 전장에서 10승을 거두어야 합니다.\n\n\"돌아온 대군주\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint4Req_THR"] = "도전 유물 형상을 잠금 해제한 후에 서로 다른 군단 던전 10개를 완료해야 합니다.\n\n\"돌아온 대군주\" 연계 퀘스트를 완료해야 합니다."

	L["TraitRow5Tint1Req_XC"] = "\"실렘 도전\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint2Req_XC"] = "도전 유물 형상을 잠금 해제한 후에 영웅 난이도 킬제덴을 처치해야 합니다.\n\n\"실렘 도전\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint3Req_XC"] = "도전 유물 형상을 잠금 해제한 후에 평점제 전장에서 10승을 거두어야 합니다.\n\n\"실렘 도전\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint4Req_XC"] = "도전 유물 형상을 잠금 해제한 후에 서로 다른 군단 던전 10개를 완료해야 합니다.\n\n\"실렘 도전\" 연계 퀘스트를 완료해야 합니다."

	L["TraitRow5Tint1Req_IMC"] = "\"임프 어미 도전\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint2Req_IMC"] = "도전 유물 형상을 잠금 해제한 후에 영웅 난이도 킬제덴을 처치해야 합니다.\n\n\"임프 어미 도전\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint3Req_IMC"] = "도전 유물 형상을 잠금 해제한 후에 평점제 전장에서 10승을 거두어야 합니다.\n\n\"임프 어미 도전\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint4Req_IMC"] = "도전 유물 형상을 잠금 해제한 후에 서로 다른 군단 던전 10개를 완료해야 합니다.\n\n\"임프 어미 도전\" 연계 퀘스트를 완료해야 합니다."

	L["TraitRow5Tint1Req_TC"] = "\"쌍둥이 도전\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint2Req_TC"] = "도전 유물 형상을 잠금 해제한 후에 영웅 난이도 킬제덴을 처치해야 합니다.\n\n\"쌍둥이 도전\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint3Req_TC"] = "도전 유물 형상을 잠금 해제한 후에 평점제 전장에서 10승을 거두어야 합니다.\n\n\"쌍둥이 도전\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint4Req_TC"] = "도전 유물 형상을 잠금 해제한 후에 서로 다른 군단 던전 10개를 완료해야 합니다.\n\n\"쌍둥이 도전\" 연계 퀘스트를 완료해야 합니다."

	L["TraitRow5Tint1Req_TBRT"] = "\"검은 떼까마귀의 위협\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint2Req_TBRT"] = "도전 유물 형상을 잠금 해제한 후에 영웅 난이도 킬제덴을 처치해야 합니다.\n\n\"검은 떼까마귀의 위협\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint3Req_TBRT"] = "도전 유물 형상을 잠금 해제한 후에 평점제 전장에서 10승을 거두어야 합니다.\n\n\"검은 떼까마귀의 위협\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint4Req_TBRT"] = "도전 유물 형상을 잠금 해제한 후에 서로 다른 군단 던전 10개를 완료해야 합니다.\n\n\"검은 떼까마귀의 위협\" 연계 퀘스트를 완료해야 합니다."

	L["TraitRow5Tint1Req_TFWM"] = "\"지옥 벌레의 위협\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint2Req_TFWM"] = "도전 유물 형상을 잠금 해제한 후에 영웅 난이도 킬제덴을 처치해야 합니다.\n\n\"지옥 벌레의 위협\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint3Req_TFWM"] = "도전 유물 형상을 잠금 해제한 후에 평점제 전장에서 10승을 거두어야 합니다.\n\n\"지옥 벌레의 위협\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint4Req_TFWM"] = "도전 유물 형상을 잠금 해제한 후에 서로 다른 군단 던전 10개를 완료해야 합니다.\n\n\"지옥 벌레의 위협\" 연계 퀘스트를 완료해야 합니다."

	L["TraitRow5Tint1Req_GQC"] = "\"여신왕 도전\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint2Req_GQC"] = "도전 유물 형상을 잠금 해제한 후에 영웅 난이도 킬제덴을 처치해야 합니다.\n\n\"여신왕 도전\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint3Req_GQC"] = "도전 유물 형상을 잠금 해제한 후에 평점제 전장에서 10승을 거두어야 합니다.\n\n\"여신왕 도전\" 연계 퀘스트를 완료해야 합니다."
	L["TraitRow5Tint4Req_GQC"] = "도전 유물 형상을 잠금 해제한 후에 서로 다른 군단 던전 10개를 완료해야 합니다.\n\n\"여신왕 도전\" 연계 퀘스트를 완료해야 합니다."

	--hidden (swapped with Challenging)
	L["TraitRow6Tint1Req"] = ""
	L["TraitRow6Tint2Req"] = "숨겨진 유물 형상을 잠금 해제한 후 군단 던전을 30번 완료해야 합니다."
	L["TraitRow6Tint3Req"] = "숨겨진 유물 형상을 잠금 해제한 후 전역 퀘스트를 200번 완료해야 합니다."
	L["TraitRow6Tint4Req"] = "숨겨진 유물 형상을 잠금 해제한 후 1,000명의 적 플레이어를 처치해야 합니다."

	--Demon Hunter
	L["TraitRow1_DemonHunter_Havoc_Classic"]		 = "기만자의 쌍날검"
	L["TraitRow2_DemonHunter_Havoc_Upgraded"]		 = "일리다리의 손"
	L["TraitRow3_DemonHunter_Havoc_Valorous"]		 = "암흑칼날"
	L["TraitRow4_DemonHunter_Havoc_War-torn"]		 = "악마의 손길"
	L["TraitRow5_DemonHunter_Havoc_Challenging"]	 = "불꽃수확자"
	L["TraitRow6_DemonHunter_Havoc_Hidden"]			 = "죽음방랑자"

	L["TraitRow1_DemonHunter_Vengeance_Classic"]	 = "알드라치 전투검"
	L["TraitRow2_DemonHunter_Vengeance_Upgraded"]	 = "일리다리 문장"
	L["TraitRow3_DemonHunter_Vengeance_Valorous"]	 = "공포의 군주의 이빨"
	L["TraitRow4_DemonHunter_Vengeance_War-torn"]	 = "뼈공포"
	L["TraitRow5_DemonHunter_Vengeance_Challenging"] = "그늘날개"
	L["TraitRow6_DemonHunter_Vengeance_Hidden"]		 = "강철 감시자"

	--Paladin
	L["TraitRow1_Paladin_Retribution_Classic"]		 = "파멸의 인도자"
	L["TraitRow2_Paladin_Retribution_Upgraded"]		 = "정의의 대검"
	L["TraitRow3_Paladin_Retribution_Valorous"]		 = "불타는 앙갚음"
	L["TraitRow4_Paladin_Retribution_War-torn"]		 = "무너진 희망"
	L["TraitRow5_Paladin_Retribution_Challenging"]	 = "산산이 조각난 심판"
	L["TraitRow6_Paladin_Retribution_Hidden"]		 = "더럽혀진 기억"

	L["TraitRow1_Paladin_Holy_Classic"]				 = "은빛 손"
	L["TraitRow2_Paladin_Holy_Upgraded"]			 = "쓰러진 감시자의 주먹"
	L["TraitRow3_Paladin_Holy_Valorous"]			 = "수호자의 심판"
	L["TraitRow4_Paladin_Holy_War-torn"]			 = "묘지기"
	L["TraitRow5_Paladin_Holy_Challenging"]			 = "정의의 불꽃"
	L["TraitRow6_Paladin_Holy_Hidden"]				 = "감시자의 병기"

	L["TraitRow1_Paladin_Protection_Classic"]		 = "진실의 수호자"
	L["TraitRow2_Paladin_Protection_Upgraded"]		 = "티탄의 빛"
	L["TraitRow3_Paladin_Protection_Valorous"]		 = "신의 수호자"
	L["TraitRow4_Paladin_Protection_War-torn"]		 = "암흑 문지기의 수호"
	L["TraitRow5_Paladin_Protection_Challenging"]	 = "신성한 불꽃의 문장"
	L["TraitRow6_Paladin_Protection_Hidden"]		 = "구원자의 보루"

	--Warrior
	L["TraitRow1_Warrior_Arms_Classic"]				 = "스트롬카르 - 전쟁파괴자"
	L["TraitRow2_Warrior_Arms_Upgraded"]			 = "타락한 자의 복수"
	L["TraitRow3_Warrior_Arms_Valorous"]			 = "불꽃수확자"
	L["TraitRow4_Warrior_Arms_War-torn"]			 = "분노의 날"
	L["TraitRow5_Warrior_Arms_Challenging"]			 = "하늘 용사의 칼날"
	L["TraitRow6_Warrior_Arms_Hidden"]				 = "아케이나이트 칼날파괴자"

	L["TraitRow1_Warrior_Fury_Classic"]				 = "발라리아르의 전쟁검"
	L["TraitRow2_Warrior_Fury_Upgraded"]			 = "용기수의 무장"
	L["TraitRow3_Warrior_Fury_Valorous"]			 = "용맹아귀"
	L["TraitRow4_Warrior_Fury_War-torn"]			 = "폭풍숨결"
	L["TraitRow5_Warrior_Fury_Challenging"]			 = "헬리아의 시선"
	L["TraitRow6_Warrior_Fury_Hidden"]				 = "용 학살자의 칼날"

	L["TraitRow1_Warrior_Protection_Classic"]		 = "대지의 수호자의 비늘"
	L["TraitRow2_Warrior_Protection_Upgraded"]		 = "쓰러진 왕의 무장"
	L["TraitRow3_Warrior_Protection_Valorous"]		 = "깨지지 않는 저항"
	L["TraitRow4_Warrior_Protection_War-torn"]		 = "죽음경비병의 시선"
	L["TraitRow5_Warrior_Protection_Challenging"]	 = "군단파괴자"
	L["TraitRow6_Warrior_Protection_Hidden"]		 = "세계파괴자의 마지막 숨결"

	--Death Knight
	L["TraitRow1_DeathKnight_Blood_Classic"]		 = "저주받은 자의 아귀"
	L["TraitRow2_DeathKnight_Blood_Upgraded"]		 = "피아귀"
	L["TraitRow3_DeathKnight_Blood_Valorous"]		 = "영혼수확자"
	L["TraitRow4_DeathKnight_Blood_War-torn"]		 = "집행자"
	L["TraitRow5_DeathKnight_Blood_Challenging"]	 = "턱뼈"
	L["TraitRow6_DeathKnight_Blood_Hidden"]			 = "불사의 손길"

	L["TraitRow1_DeathKnight_Frost_Classic"]		 = "타락한 왕자의 칼날"
	L["TraitRow2_DeathKnight_Frost_Upgraded"]		 = "서리한의 유산"
	L["TraitRow3_DeathKnight_Frost_Valorous"]		 = "신드라고사의 격노"
	L["TraitRow4_DeathKnight_Frost_War-torn"]		 = "묘지기"
	L["TraitRow5_DeathKnight_Frost_Challenging"]	 = "영혼 수집가"
	L["TraitRow6_DeathKnight_Frost_Hidden"]			 = "암흑의 룬검"

	L["TraitRow1_DeathKnight_Unholy_Classic"]		 = "대재앙"
	L["TraitRow2_DeathKnight_Unholy_Upgraded"]		 = "부정한 전쟁"
	L["TraitRow3_DeathKnight_Unholy_Valorous"]		 = "전염병의 전령"
	L["TraitRow4_DeathKnight_Unholy_War-torn"]		 = "기근전도사"
	L["TraitRow5_DeathKnight_Unholy_Challenging"]	 = "죽음의 해방"
	L["TraitRow6_DeathKnight_Unholy_Hidden"]		 = "뼈 수확자"

	--Hunter
	L["TraitRow1_Hunter_BeastMastery_Classic"]		 = "티탄분쇄자"
	L["TraitRow2_Hunter_BeastMastery_Upgraded"]		 = "독수리의 눈"
	L["TraitRow3_Hunter_BeastMastery_Valorous"]		 = "엘레크의 천둥"
	L["TraitRow4_Hunter_BeastMastery_War-torn"]		 = "멧돼지 대포"
	L["TraitRow5_Hunter_BeastMastery_Challenging"]	 = "뱀의 이빨"
	L["TraitRow6_Hunter_BeastMastery_Hidden"]		 = "티탄의 손길"

	L["TraitRow1_Hunter_Marksmanship_Classic"]		 = "타스도라 - 윈드러너의 유산"
	L["TraitRow2_Hunter_Marksmanship_Upgraded"]		 = "자매의 결속"
	L["TraitRow3_Hunter_Marksmanship_Valorous"]		 = "불사조의 환생"
	L["TraitRow4_Hunter_Marksmanship_War-torn"]		 = "순찰대 사령관의 수호"
	L["TraitRow5_Hunter_Marksmanship_Challenging"]	 = "야생의 추적자"
	L["TraitRow6_Hunter_Marksmanship_Hidden"]		 = "까마귀수호"

	L["TraitRow1_Hunter_Survival_Classic"]			 = "칼날갈퀴"
	L["TraitRow2_Hunter_Survival_Upgraded"]			 = "독수리의 환생"
	L["TraitRow3_Hunter_Survival_Valorous"]			 = "우두머리의 창"
	L["TraitRow4_Hunter_Survival_War-torn"]			 = "뱀의 일격"
	L["TraitRow5_Hunter_Survival_Challenging"]		 = "숲의 수호자"
	L["TraitRow6_Hunter_Survival_Hidden"]			 = "곰의 인내"

	--Shaman
	L["TraitRow1_Shaman_Elemental_Classic"]			 = "라덴의 주먹"
	L["TraitRow2_Shaman_Elemental_Upgraded"]		 = "폭풍지기"
	L["TraitRow3_Shaman_Elemental_Valorous"]		 = "대지예언자"
	L["TraitRow4_Shaman_Elemental_War-torn"]		 = "타락한 주술사의 주먹"
	L["TraitRow5_Shaman_Elemental_Challenging"]		 = "레가르의 유산"
	L["TraitRow6_Shaman_Elemental_Hidden"]			 = "아마니의 특권"

	L["TraitRow1_Shaman_Enhancement_Classic"]		 = "둠해머"
	L["TraitRow2_Shaman_Enhancement_Upgraded"]		 = "폭풍인도자"
	L["TraitRow3_Shaman_Enhancement_Valorous"]		 = "군단의 파멸"
	L["TraitRow4_Shaman_Enhancement_War-torn"]		 = "블랙핸드의 운명"
	L["TraitRow5_Shaman_Enhancement_Challenging"]	 = "태풍"
	L["TraitRow6_Shaman_Enhancement_Hidden"]		 = "잔달라 용사"

	L["TraitRow1_Shaman_Restoration_Classic"]		 = "샤라스달 - 해일의 홀"
	L["TraitRow2_Shaman_Restoration_Upgraded"]		 = "심연의 홀"
	L["TraitRow3_Shaman_Restoration_Valorous"]		 = "티탄의 탄생"
	L["TraitRow4_Shaman_Restoration_War-torn"]		 = "토템잡이"
	L["TraitRow5_Shaman_Restoration_Challenging"]	 = "얼어붙은 운명"
	L["TraitRow6_Shaman_Restoration_Hidden"]		 = "뱀의 보금자리"

	--Druid
	L["TraitRow1_Druid_Balance_Classic"]			 = "엘룬의 낫"
	L["TraitRow2_Druid_Balance_Upgraded"]			 = "골드린의 사절"
	L["TraitRow3_Druid_Balance_Valorous"]			 = "달부름"
	L["TraitRow4_Druid_Balance_War-torn"]			 = "악몽의 고통"
	L["TraitRow5_Druid_Balance_Challenging"]		 = "마나의 낫"
	L["TraitRow6_Druid_Balance_Hidden"]				 = "태양지기의 손짓"

	L["TraitRow1_Druid_Feral_Classic"]				 = "아샤메인의 송곳니"
	L["TraitRow2_Druid_Feral_Upgraded"]				 = "자연의 격노"
	L["TraitRow3_Druid_Feral_Valorous"]				 = "원시 추적자"
	L["TraitRow4_Druid_Feral_War-torn"]				 = "악몽의 화신"
	L["TraitRow5_Druid_Feral_Challenging"]			 = "무리어미의 유령"
	L["TraitRow6_Druid_Feral_Hidden"]				 = "달정령"

	L["TraitRow1_Druid_Guardian_Classic"]			 = "우르속의 발톱"
	L["TraitRow2_Druid_Guardian_Upgraded"]			 = "돌주먹"
	L["TraitRow3_Druid_Guardian_Valorous"]			 = "우르솔의 화신"
	L["TraitRow4_Druid_Guardian_War-torn"]			 = "악몽에 떨어진 자"
	L["TraitRow5_Druid_Guardian_Challenging"]		 = "회색아귀의 힘"
	L["TraitRow6_Druid_Guardian_Hidden"]			 = "숲의 수호자"

	L["TraitRow1_Druid_Restoration_Classic"]		 = "그하니르 - 어머니 나무"
	L["TraitRow2_Druid_Restoration_Upgraded"]		 = "옛나무"
	L["TraitRow3_Druid_Restoration_Valorous"]		 = "깨어난 수정"
	L["TraitRow4_Druid_Restoration_War-torn"]		 = "마른가지 지킴이"
	L["TraitRow5_Druid_Restoration_Challenging"]	 = "불침번"
	L["TraitRow6_Druid_Restoration_Hidden"]			 = "감시관의 왕관"

	--Rogue
	L["TraitRow1_Rogue_Assassination_Classic"]		 = "국왕 시해자"
	L["TraitRow2_Rogue_Assassination_Upgraded"]		 = "저주받은 손"
	L["TraitRow3_Rogue_Assassination_Valorous"]		 = "심장을 멈추는 자"
	L["TraitRow4_Rogue_Assassination_War-torn"]		 = "마법사학살자의 칼날"
	L["TraitRow5_Rogue_Assassination_Challenging"]	 = "유령검"
	L["TraitRow6_Rogue_Assassination_Hidden"]		 = "뼈파괴자"

	L["TraitRow1_Rogue_Outlaw_Classic"]				 = "공포의 검"
	L["TraitRow2_Rogue_Outlaw_Upgraded"]			 = "바다스컬지의 약속"
	L["TraitRow3_Rogue_Outlaw_Valorous"]			 = "불꽃의 입맞춤"
	L["TraitRow4_Rogue_Outlaw_War-torn"]			 = "불한당의 유언"
	L["TraitRow5_Rogue_Outlaw_Challenging"]			 = "검술가의 손짓"
	L["TraitRow6_Rogue_Outlaw_Hidden"]				 = "우레폭풍 - 바람의 군주의 신검"
	
	L["TraitRow1_Rogue_Subtlety_Classic"]			 = "포식자의 송곳니"
	L["TraitRow2_Rogue_Subtlety_Upgraded"]			 = "그림자칼날"
	L["TraitRow3_Rogue_Subtlety_Valorous"]			 = "악마의 품"
	L["TraitRow4_Rogue_Subtlety_War-torn"]			 = "피탐식자"
	L["TraitRow5_Rogue_Subtlety_Challenging"]		 = "얼음바람"
	L["TraitRow6_Rogue_Subtlety_Hidden"]			 = "맹독니"

	--Monk
	L["TraitRow1_Monk_Brewmaster_Classic"]			 = "푸 잔 - 방랑자의 친구"
	L["TraitRow2_Monk_Brewmaster_Upgraded"]			 = "원숭이 왕의 짐"
	L["TraitRow3_Monk_Brewmaster_Valorous"]			 = "흑우의 심장"
	L["TraitRow4_Monk_Brewmaster_War-torn"]			 = "용숨결의 손아귀"
	L["TraitRow5_Monk_Brewmaster_Challenging"]		 = "안개를 품은 자"
	L["TraitRow6_Monk_Brewmaster_Hidden"]			 = "고대 술지기"

	L["TraitRow1_Monk_Mistweaver_Classic"]			 = "셰이룬 - 안개의 지팡이"
	L["TraitRow2_Monk_Mistweaver_Upgraded"]			 = "깊은 안개의 대가"
	L["TraitRow3_Monk_Mistweaver_Valorous"]			 = "츠지의 영혼"
	L["TraitRow4_Monk_Mistweaver_War-torn"]			 = "샤의 고통"
	L["TraitRow5_Monk_Mistweaver_Challenging"]		 = "고요의 정수"
	L["TraitRow6_Monk_Mistweaver_Hidden"]			 = "불멸의 용의 숨결"

	L["TraitRow1_Monk_Windwalker_Classic"]			 = "하늘의 주먹"
	L["TraitRow2_Monk_Windwalker_Upgraded"]			 = "알아키르의 손길"
	L["TraitRow3_Monk_Windwalker_Valorous"]			 = "정령의 손짓"
	L["TraitRow4_Monk_Windwalker_War-torn"]			 = "음영파의 유산"
	L["TraitRow5_Monk_Windwalker_Challenging"]		 = "쉬엔의 집행자"
	L["TraitRow6_Monk_Windwalker_Hidden"]			 = "폭풍주먹"

	--Warlock
	L["TraitRow1_Warlock_Affliction_Classic"]		 = "저승바람 수확기"
	L["TraitRow2_Warlock_Affliction_Upgraded"]		 = "고통받는 자의 손"
	L["TraitRow3_Warlock_Affliction_Valorous"]		 = "영혼 흡수기"
	L["TraitRow4_Warlock_Affliction_War-torn"]		 = "죽음의 손"
	L["TraitRow5_Warlock_Affliction_Challenging"]	 = "저주받은 자의 척추"
	L["TraitRow6_Warlock_Affliction_Hidden"]		 = "운명의 끝"

	L["TraitRow1_Warlock_Demonology_Classic"]		 = "만아리의 해골"
	L["TraitRow2_Warlock_Demonology_Upgraded"]		 = "첫 번째 소환사의 시선"
	L["TraitRow3_Warlock_Demonology_Valorous"]		 = "지옥의 군주의 자부심"
	L["TraitRow4_Warlock_Demonology_War-torn"]		 = "타오르는 유해"
	L["TraitRow5_Warlock_Demonology_Challenging"]	 = "잊힌 자의 영혼"
	L["TraitRow6_Warlock_Demonology_Hidden"]		 = "탈키엘의 얼굴"

	L["TraitRow1_Warlock_Destruction_Classic"]		 = "살게라스의 홀"
	L["TraitRow2_Warlock_Destruction_Upgraded"]		 = "암흑 티탄의 오만"
	L["TraitRow3_Warlock_Destruction_Valorous"]		 = "굴단의 메아리"
	L["TraitRow4_Warlock_Destruction_War-torn"]		 = "파괴자의 그림자"
	L["TraitRow5_Warlock_Destruction_Challenging"]	 = "암흑의 인도자의 허울"
	L["TraitRow6_Warlock_Destruction_Hidden"]		 = "군단공포"

	--Priest
	L["TraitRow1_Priest_Discipline_Classic"]		 = "빛의 분노"
	L["TraitRow2_Priest_Discipline_Upgraded"]		 = "구원받은 자의 문장"
	L["TraitRow3_Priest_Discipline_Valorous"]		 = "빛의 성배"
	L["TraitRow4_Priest_Discipline_War-torn"]		 = "영원한 경계"
	L["TraitRow5_Priest_Discipline_Challenging"]	 = "감시자의 승천"
	L["TraitRow6_Priest_Discipline_Hidden"]			 = "고서지기의 첨탑"

	L["TraitRow1_Priest_Holy_Classic"]				 = "투우레 - 나루의 봉화"
	L["TraitRow2_Priest_Holy_Upgraded"]				 = "정화의 깃발"
	L["TraitRow3_Priest_Holy_Valorous"]				 = "빛의 지킴이"
	L["TraitRow4_Priest_Holy_War-torn"]				 = "공허의 품"
	L["TraitRow5_Priest_Holy_Challenging"]			 = "아르거스의 기억"
	L["TraitRow6_Priest_Holy_Hidden"]				 = "빛살이의 문장"

	L["TraitRow1_Priest_Shadow_Classic"]			 = "검은 제국의 비수"
	L["TraitRow2_Priest_Shadow_Upgraded"]			 = "고대 신의 품"
	L["TraitRow3_Priest_Shadow_Valorous"]			 = "타락한 검"
	L["TraitRow4_Priest_Shadow_War-torn"]			 = "광기의 시야"
	L["TraitRow5_Priest_Shadow_Challenging"]		 = "뒤틀린 반영"
	L["TraitRow6_Priest_Shadow_Hidden"]				 = "느조스의 발톱"

	--Mage
	L["TraitRow1_Mage_Arcane_Classic"]				 = "알루네스"
	L["TraitRow2_Mage_Arcane_Upgraded"]				 = "수호자의 첨탑"
	L["TraitRow3_Mage_Arcane_Valorous"]				 = "해방된 마그나"
	L["TraitRow4_Mage_Arcane_War-torn"]				 = "에이그윈의 몰락"
	L["TraitRow5_Mage_Arcane_Challenging"]			 = "영원한 학자"
	L["TraitRow6_Mage_Arcane_Hidden"]				 = "양모술사의 책임"

	L["TraitRow1_Mage_Fire_Classic"]				 = "펠로멜로른"
	L["TraitRow2_Mage_Fire_Upgraded"]				 = "태양길잡이의 자부심"
	L["TraitRow3_Mage_Fire_Valorous"]				 = "불사조의 환생"
	L["TraitRow4_Mage_Fire_War-torn"]				 = "용암에서 태어난 날"
	L["TraitRow5_Mage_Fire_Challenging"]			 = "시간왜곡사의 칼날"
	L["TraitRow6_Mage_Fire_Hidden"]					 = "별자리"

	L["TraitRow1_Mage_Frost_Classic"]				 = "칠흑한기"
	L["TraitRow2_Mage_Frost_Upgraded"]				 = "수호자의 집중"
	L["TraitRow3_Mage_Frost_Valorous"]				 = "첫 번째의 흐름"
	L["TraitRow4_Mage_Frost_War-torn"]				 = "대마법사의 의지"
	L["TraitRow5_Mage_Frost_Challenging"]			 = "상급 학자"
	L["TraitRow6_Mage_Frost_Hidden"]				 = "서리불꽃의 기억"
	
return end

if LOCALE == "zhCN" then
	-- Simplified Chinese translations go here
	L["Addon_Title"] = "Remix Artifact Tracker"
	L["Addon_Notes"] = "为军团重混的神器武器添加一个神器外观标签页。"
	L["SlashCmd1"] = "/rat"
	L["SlashCmd2"] = "/混搭神器"
	L["SlashCmd3"] = "/remixartifact"

	L["Traits"] = ARTIFACTS_PERK_TAB
	L["Appearances"] = ARTIFACTS_APPEARANCE_TAB
	L["ShowSecondary"] = "显示次要"
	L["ShowSecondaryTT"] = "显示与此套装关联的次要模型。"
	L["RaceNightElf"] = GetRaceName(4)
	L["RaceHaranir"] = GetRaceName(86)
	L["RaceTauren"] = GetRaceName(6)
	L["RaceHMTauren"] = GetRaceName(28)
	L["RaceTroll"] = GetRaceName(8)
	L["RaceZandalari"] = GetRaceName(31)
	L["RaceWorgen"] = GetRaceName(22)
	L["RaceKulTiran"] = GetRaceName(32)
	L["RaceGroup1"] = L["RaceNightElf"] -- .. ", " .. L["RaceHaranir"] -- (maybe for future?)
	L["RaceGroup2"] = L["RaceTauren"] .. "， " .. L["RaceHMTauren"]
	L["RaceGroup3"] = L["RaceTroll"] .. "， " .. L["RaceZandalari"]
	L["RaceGroup4"] = L["RaceWorgen"] .. "， " .. L["RaceKulTiran"]
	L["Artifact"] = ITEM_QUALITY6_DESC
	L["Unavailable"] = UNAVAILABLE
	L["NoLongerAvailable"] = NO_LONGER_AVAILABLE

	L["TraitRow1Temp_Classic"]		 = "经典"
	L["TraitRow2Temp_Upgraded"]		 = "进阶"
	L["TraitRow3Temp_Valorous"]		 = "勇猛"
	L["TraitRow4Temp_War-torn"]		 = "战火"
	L["TraitRow5Temp_Challenging"]	 = "挑战"
	L["TraitRow6Temp_Hidden"]		 = "隐藏"

	--classic
	L["TraitRow1Tint1Req"] = ""
	L["TraitRow1Tint2Req"] = "找回一个创世之柱。"
	L["TraitRow1Tint3Req"] = "找回圣光之心，并且把它安全带回你的职业大厅。"
	L["TraitRow1Tint4Req"] = "与你的部下一起完成第一个大型战役的行动。"

	--upgraded
	L["TraitRow2Tint1Req"] = string.format("完成%s职业大厅战役。", ClassName)
	L["TraitRow2Tint2Req"] = string.format("完成%s职业大厅战役。", ClassName)
	L["TraitRow2Tint3Req"] = string.format("完成%s职业大厅战役。", ClassName)
	L["TraitRow2Tint4Req"] = "完成成就“此面向上”。"

	--valorous
	L["TraitRow3Tint1Req"] = "完成任务线“能量的平衡”。"
	L["TraitRow3Tint2Req"] = "完成成就“怪兽出笼”。\n\n完成任务线“能量的平衡”。"
	L["TraitRow3Tint3Req"] = "使用一个5级钥石，完成一个史诗地下城。\n\n完成任务线“能量的平衡”。"
	L["TraitRow3Tint4Req"] = "完成成就“军团英雄的荣耀”。\n\n完成任务线“能量的平衡”。"

	--war-torn
	L["TraitRow4Tint1Req"] = "参与PvP战斗，荣誉等级达到10级。"
	L["TraitRow4Tint2Req"] = "荣誉等级达到30级。"
	L["TraitRow4Tint3Req"] = "荣誉等级达到50级。"
	L["TraitRow4Tint4Req"] = "荣誉等级达到80级。"

	--challenging (swapped with Hidden)
	L["TraitRow5Tint1Req_THR"] = "完成任务线“魔王归来”。"
	L["TraitRow5Tint2Req_THR"] = "解锁挑战神器外观后击败英雄难度的基尔加丹。\n\n完成任务线“魔王归来”。"
	L["TraitRow5Tint3Req_THR"] = "解锁挑战神器外观后赢得10场评级战场的胜利。\n\n完成任务线“魔王归来”。"
	L["TraitRow5Tint4Req_THR"] = "解锁挑战神器外观后完成10个不同的“军团再临”地下城。\n\n完成任务线“魔王归来”。"

	L["TraitRow5Tint1Req_XC"] = "完成任务线“克希雷姆挑战”。"
	L["TraitRow5Tint2Req_XC"] = "解锁挑战神器外观后击败英雄难度的基尔加丹。\n\n完成任务线“克希雷姆挑战”。"
	L["TraitRow5Tint3Req_XC"] = "解锁挑战神器外观后赢得10场评级战场的胜利。\n\n完成任务线“克希雷姆挑战”。"
	L["TraitRow5Tint4Req_XC"] = "解锁挑战神器外观后完成10个不同的“军团再临”地下城。\n\n完成任务线“克希雷姆挑战”。"

	L["TraitRow5Tint1Req_IMC"] = "完成任务线“鬼母挑战”。"
	L["TraitRow5Tint2Req_IMC"] = "解锁挑战神器外观后击败英雄难度的基尔加丹。\n\n完成任务线“鬼母挑战”。"
	L["TraitRow5Tint3Req_IMC"] = "解锁挑战神器外观后赢得10场评级战场的胜利。\n\n完成任务线“鬼母挑战”。"
	L["TraitRow5Tint4Req_IMC"] = "解锁挑战神器外观后完成10个不同的“军团再临”地下城。\n\n完成任务线“鬼母挑战”。"

	L["TraitRow5Tint1Req_TC"] = "完成任务线“双子挑战”。"
	L["TraitRow5Tint2Req_TC"] = "解锁挑战神器外观后击败英雄难度的基尔加丹。\n\n完成任务线“双子挑战”。"
	L["TraitRow5Tint3Req_TC"] = "解锁挑战神器外观后赢得10场评级战场的胜利。\n\n完成任务线“双子挑战”。"
	L["TraitRow5Tint4Req_TC"] = "解锁挑战神器外观后完成10个不同的“军团再临”地下城。\n\n完成任务线“双子挑战”。"

	L["TraitRow5Tint1Req_TBRT"] = "完成任务线“黑鸦堡垒的威胁”。"
	L["TraitRow5Tint2Req_TBRT"] = "解锁挑战神器外观后击败英雄难度的基尔加丹。\n\n完成任务线“黑鸦堡垒的威胁”。"
	L["TraitRow5Tint3Req_TBRT"] = "解锁挑战神器外观后赢得10场评级战场的胜利。\n\n完成任务线“黑鸦堡垒的威胁”。"
	L["TraitRow5Tint4Req_TBRT"] = "解锁挑战神器外观后完成10个不同的“军团再临”地下城。\n\n完成任务线“黑鸦堡垒的威胁”。"

	L["TraitRow5Tint1Req_TFWM"] = "完成任务线“邪能蠕虫之灾”。"
	L["TraitRow5Tint2Req_TFWM"] = "解锁挑战神器外观后击败英雄难度的基尔加丹。\n\n完成任务线“邪能蠕虫之灾”。"
	L["TraitRow5Tint3Req_TFWM"] = "解锁挑战神器外观后赢得10场评级战场的胜利。\n\n完成任务线“邪能蠕虫之灾”。"
	L["TraitRow5Tint4Req_TFWM"] = "解锁挑战神器外观后完成10个不同的“军团再临”地下城。\n\n完成任务线“邪能蠕虫之灾”。"

	L["TraitRow5Tint1Req_GQC"] = "完成任务线“神后挑战”。"
	L["TraitRow5Tint2Req_GQC"] = "解锁挑战神器外观后击败英雄难度的基尔加丹。\n\n完成任务线“神后挑战”。"
	L["TraitRow5Tint3Req_GQC"] = "解锁挑战神器外观后赢得10场评级战场的胜利。\n\n完成任务线“神后挑战”。"
	L["TraitRow5Tint4Req_GQC"] = "解锁挑战神器外观后完成10个不同的“军团再临”地下城。\n\n完成任务线“神后挑战”。"

	--hidden (swapped with Challenging)
	L["TraitRow6Tint1Req"] = ""
	L["TraitRow6Tint2Req"] = "解锁隐藏的神器外观后完成30个“军团再临”地下城。"
	L["TraitRow6Tint3Req"] = "解锁隐藏的神器外观后完成200个世界任务。"
	L["TraitRow6Tint4Req"] = "解锁隐藏的神器外观后击杀1,000个敌对玩家。"

	--Demon Hunter
	L["TraitRow1_DemonHunter_Havoc_Classic"]		 = "欺诈者的双刃"
	L["TraitRow2_DemonHunter_Havoc_Upgraded"]		 = "伊利达雷之手"
	L["TraitRow3_DemonHunter_Havoc_Valorous"]		 = "黯刃"
	L["TraitRow4_DemonHunter_Havoc_War-torn"]		 = "魔蚀"
	L["TraitRow5_DemonHunter_Havoc_Challenging"]	 = "斩炎"
	L["TraitRow6_DemonHunter_Havoc_Hidden"]			 = "死亡行者"

	L["TraitRow1_DemonHunter_Vengeance_Classic"]	 = "奥达奇战刃"
	L["TraitRow2_DemonHunter_Vengeance_Upgraded"]	 = "伊利达雷徽记"
	L["TraitRow3_DemonHunter_Vengeance_Valorous"]	 = "恐惧魔王之咬"
	L["TraitRow4_DemonHunter_Vengeance_War-torn"]	 = "恐怖白骨"
	L["TraitRow5_DemonHunter_Vengeance_Challenging"] = "棕红之翼"
	L["TraitRow6_DemonHunter_Vengeance_Hidden"]		 = "钢铁守望者"

	--Paladin
	L["TraitRow1_Paladin_Retribution_Classic"]		 = "灰烬使者"
	L["TraitRow2_Paladin_Retribution_Upgraded"]		 = "正义重剑"
	L["TraitRow3_Paladin_Retribution_Valorous"]		 = "燃烧的复仇"
	L["TraitRow4_Paladin_Retribution_War-torn"]		 = "陨落的希望"
	L["TraitRow5_Paladin_Retribution_Challenging"]	 = "破碎清算"
	L["TraitRow6_Paladin_Retribution_Hidden"]		 = "腐化之忆"

	L["TraitRow1_Paladin_Holy_Classic"]				 = "白银之手"
	L["TraitRow2_Paladin_Holy_Upgraded"]			 = "堕落守护者之拳"
	L["TraitRow3_Paladin_Holy_Valorous"]			 = "守护者的审判"
	L["TraitRow4_Paladin_Holy_War-torn"]			 = "古墓守卫"
	L["TraitRow5_Paladin_Holy_Challenging"]			 = "正义之火"
	L["TraitRow6_Paladin_Holy_Hidden"]				 = "守望者的武装"

	L["TraitRow1_Paladin_Protection_Classic"]		 = "真理守护者"
	L["TraitRow2_Paladin_Protection_Upgraded"]		 = "泰坦之光"
	L["TraitRow3_Paladin_Protection_Valorous"]		 = "神圣守护者"
	L["TraitRow4_Paladin_Protection_War-torn"]		 = "黑暗守护者的守护"
	L["TraitRow5_Paladin_Protection_Challenging"]	 = "圣火之徽"
	L["TraitRow6_Paladin_Protection_Hidden"]		 = "守备官的壁垒"

	--Warrior
	L["TraitRow1_Warrior_Arms_Classic"]				 = "斯多姆卡，灭战者"
	L["TraitRow2_Warrior_Arms_Upgraded"]			 = "亡者的复仇"
	L["TraitRow3_Warrior_Arms_Valorous"]			 = "掠火"
	L["TraitRow4_Warrior_Arms_War-torn"]			 = "愤怒之刃"
	L["TraitRow5_Warrior_Arms_Challenging"]			 = "天空勇士之刃"
	L["TraitRow6_Warrior_Arms_Hidden"]				 = "奥金破刃斧"

	L["TraitRow1_Warrior_Fury_Classic"]				 = "瓦拉加尔战剑"
	L["TraitRow2_Warrior_Fury_Upgraded"]			 = "龙骑兵之臂"
	L["TraitRow3_Warrior_Fury_Valorous"]			 = "勇气之喉"
	L["TraitRow4_Warrior_Fury_War-torn"]			 = "风暴之息"
	L["TraitRow5_Warrior_Fury_Challenging"]			 = "海拉的凝视"
	L["TraitRow6_Warrior_Fury_Hidden"]				 = "斩龙者之锋"

	L["TraitRow1_Warrior_Protection_Classic"]		 = "大地守护者之鳞"
	L["TraitRow2_Warrior_Protection_Upgraded"]		 = "堕落君王之臂"
	L["TraitRow3_Warrior_Protection_Valorous"]		 = "背水之战"
	L["TraitRow4_Warrior_Protection_War-torn"]		 = "亡灵卫士的凝视"
	L["TraitRow5_Warrior_Protection_Challenging"]	 = "军团粉碎者"
	L["TraitRow6_Warrior_Protection_Hidden"]		 = "灭世者的临终之息"

	--Death Knight
	L["TraitRow1_DeathKnight_Blood_Classic"]		 = "诅咒之喉"
	L["TraitRow2_DeathKnight_Blood_Upgraded"]		 = "血喉"
	L["TraitRow3_DeathKnight_Blood_Valorous"]		 = "斩灵"
	L["TraitRow4_DeathKnight_Blood_War-torn"]		 = "斩杀者"
	L["TraitRow5_DeathKnight_Blood_Challenging"]	 = "骨颚"
	L["TraitRow6_DeathKnight_Blood_Hidden"]			 = "不死之触"

	L["TraitRow1_DeathKnight_Frost_Classic"]		 = "堕落王子之剑"
	L["TraitRow2_DeathKnight_Frost_Upgraded"]		 = "霜之哀伤的遗产"
	L["TraitRow3_DeathKnight_Frost_Valorous"]		 = "辛达苟萨之怒"
	L["TraitRow4_DeathKnight_Frost_War-torn"]		 = "守墓人"
	L["TraitRow5_DeathKnight_Frost_Challenging"]	 = "集魂者"
	L["TraitRow6_DeathKnight_Frost_Hidden"]			 = "黑暗符文剑"

	L["TraitRow1_DeathKnight_Unholy_Classic"]		 = "天启"
	L["TraitRow2_DeathKnight_Unholy_Upgraded"]		 = "邪恶之战"
	L["TraitRow3_DeathKnight_Unholy_Valorous"]		 = "瘟疫使者"
	L["TraitRow4_DeathKnight_Unholy_War-torn"]		 = "饥荒使者"
	L["TraitRow5_DeathKnight_Unholy_Challenging"]	 = "死亡裁决"
	L["TraitRow6_DeathKnight_Unholy_Hidden"]		 = "白骨收割者"

	--Hunter
	L["TraitRow1_Hunter_BeastMastery_Classic"]		 = "泰坦之击"
	L["TraitRow2_Hunter_BeastMastery_Upgraded"]		 = "雄鹰之眼"
	L["TraitRow3_Hunter_BeastMastery_Valorous"]		 = "雷象之怒"
	L["TraitRow4_Hunter_BeastMastery_War-torn"]		 = "野猪火炮"
	L["TraitRow5_Hunter_BeastMastery_Challenging"]	 = "毒蛇之噬"
	L["TraitRow6_Hunter_BeastMastery_Hidden"]		 = "泰坦之触"

	L["TraitRow1_Hunter_Marksmanship_Classic"]		 = "萨斯多拉，风行者的遗产"
	L["TraitRow2_Hunter_Marksmanship_Upgraded"]		 = "姐妹的羁绊"
	L["TraitRow3_Hunter_Marksmanship_Valorous"]		 = "凤凰涅磐"
	L["TraitRow4_Hunter_Marksmanship_War-torn"]		 = "游侠将军的守护"
	L["TraitRow5_Hunter_Marksmanship_Challenging"]	 = "风行者"
	L["TraitRow6_Hunter_Marksmanship_Hidden"]		 = "乌鸦卫士"

	L["TraitRow1_Hunter_Survival_Classic"]			 = "雄鹰之爪"
	L["TraitRow2_Hunter_Survival_Upgraded"]			 = "猎鹰重生"
	L["TraitRow3_Hunter_Survival_Valorous"]			 = "头狼之矛"
	L["TraitRow4_Hunter_Survival_War-torn"]			 = "毒蛇之击"
	L["TraitRow5_Hunter_Survival_Challenging"]		 = "森林守护者"
	L["TraitRow6_Hunter_Survival_Hidden"]			 = "巨熊之韧"

	--Shaman
	L["TraitRow1_Shaman_Elemental_Classic"]			 = "莱登之拳"
	L["TraitRow2_Shaman_Elemental_Upgraded"]		 = "风暴守护者"
	L["TraitRow3_Shaman_Elemental_Valorous"]		 = "大地语者"
	L["TraitRow4_Shaman_Elemental_War-torn"]		 = "堕落萨满之拳"
	L["TraitRow5_Shaman_Elemental_Challenging"]		 = "雷加尔的传承"
	L["TraitRow6_Shaman_Elemental_Hidden"]			 = "阿曼尼的威严"

	L["TraitRow1_Shaman_Enhancement_Classic"]		 = "毁灭之锤"
	L["TraitRow2_Shaman_Enhancement_Upgraded"]		 = "风暴使者"
	L["TraitRow3_Shaman_Enhancement_Valorous"]		 = "军团的末日"
	L["TraitRow4_Shaman_Enhancement_War-torn"]		 = "黑手的命运"
	L["TraitRow5_Shaman_Enhancement_Challenging"]	 = "台风"
	L["TraitRow6_Shaman_Enhancement_Hidden"]		 = "赞达拉的勇士"

	L["TraitRow1_Shaman_Restoration_Classic"]		 = "莎拉达尔，潮汐权杖"
	L["TraitRow2_Shaman_Restoration_Upgraded"]		 = "深海权杖"
	L["TraitRow3_Shaman_Restoration_Valorous"]		 = "泰坦之子"
	L["TraitRow4_Shaman_Restoration_War-torn"]		 = "图腾传人"
	L["TraitRow5_Shaman_Restoration_Challenging"]	 = "冰封命运"
	L["TraitRow6_Shaman_Restoration_Hidden"]		 = "盘蛇权杖"

	--Druid
	L["TraitRow1_Druid_Balance_Classic"]			 = "月神镰刀"
	L["TraitRow2_Druid_Balance_Upgraded"]			 = "戈德林的使者"
	L["TraitRow3_Druid_Balance_Valorous"]			 = "唤月"
	L["TraitRow4_Druid_Balance_War-torn"]			 = "梦魇苦痛"
	L["TraitRow5_Druid_Balance_Challenging"]		 = "魔力之镰"
	L["TraitRow6_Druid_Balance_Hidden"]				 = "太阳卫士之触"

	L["TraitRow1_Druid_Feral_Classic"]				 = "阿莎曼之牙"
	L["TraitRow2_Druid_Feral_Upgraded"]				 = "自然之怒"
	L["TraitRow3_Druid_Feral_Valorous"]				 = "原初猎手"
	L["TraitRow4_Druid_Feral_War-torn"]				 = "梦魇化身"
	L["TraitRow5_Druid_Feral_Challenging"]			 = "豹母之魂"
	L["TraitRow6_Druid_Feral_Hidden"]				 = "月魂"

	L["TraitRow1_Druid_Guardian_Classic"]			 = "乌索克之爪"
	L["TraitRow2_Druid_Guardian_Upgraded"]			 = "顽石之爪"
	L["TraitRow3_Druid_Guardian_Valorous"]			 = "乌索尔的化身"
	L["TraitRow4_Druid_Guardian_War-torn"]			 = "沉沦梦魇"
	L["TraitRow5_Druid_Guardian_Challenging"]		 = "灰喉之力"
	L["TraitRow6_Druid_Guardian_Hidden"]			 = "林地守护者"

	L["TraitRow1_Druid_Restoration_Classic"]		 = "加尼尔，母亲之树"
	L["TraitRow2_Druid_Restoration_Upgraded"]		 = "上古之树"
	L["TraitRow3_Druid_Restoration_Valorous"]		 = "晶化觉醒"
	L["TraitRow4_Druid_Restoration_War-torn"]		 = "死木守护者"
	L["TraitRow5_Druid_Restoration_Challenging"]	 = "暗夜的警示"
	L["TraitRow6_Druid_Restoration_Hidden"]			 = "守望者之冠"

	--Rogue
	L["TraitRow1_Rogue_Assassination_Classic"]		 = "弑君者"
	L["TraitRow2_Rogue_Assassination_Upgraded"]		 = "诅咒之手"
	L["TraitRow3_Rogue_Assassination_Valorous"]		 = "剖心者"
	L["TraitRow4_Rogue_Assassination_War-torn"]		 = "法师杀手之刃"
	L["TraitRow5_Rogue_Assassination_Challenging"]	 = "幽灵之刃"
	L["TraitRow6_Rogue_Assassination_Hidden"]		 = "碎骨者"

	L["TraitRow1_Rogue_Outlaw_Classic"]				 = "恐惧之刃"
	L["TraitRow2_Rogue_Outlaw_Upgraded"]			 = "海上魔王的许诺"
	L["TraitRow3_Rogue_Outlaw_Valorous"]			 = "烈焰之吻"
	L["TraitRow4_Rogue_Outlaw_War-torn"]			 = "恶棍的遗言"
	L["TraitRow5_Rogue_Outlaw_Challenging"]			 = "剑士之手"
	L["TraitRow6_Rogue_Outlaw_Hidden"]				 = "雷霆之怒，风领主的神圣之刃"
	
	L["TraitRow1_Rogue_Subtlety_Classic"]			 = "吞噬者之牙"
	L["TraitRow2_Rogue_Subtlety_Upgraded"]			 = "暗影之刃"
	L["TraitRow3_Rogue_Subtlety_Valorous"]			 = "恶魔之拥"
	L["TraitRow4_Rogue_Subtlety_War-torn"]			 = "饮血者"
	L["TraitRow5_Rogue_Subtlety_Challenging"]		 = "冰寒之刃"
	L["TraitRow6_Rogue_Subtlety_Hidden"]			 = "剧毒之咬"

	--Monk
	L["TraitRow1_Monk_Brewmaster_Classic"]			 = "福枬，云游者之友"
	L["TraitRow2_Monk_Brewmaster_Upgraded"]			 = "美猴王的重担"
	L["TraitRow3_Monk_Brewmaster_Valorous"]			 = "玄牛之心"
	L["TraitRow4_Monk_Brewmaster_War-torn"]			 = "龙火之握"
	L["TraitRow5_Monk_Brewmaster_Challenging"]		 = "迷雾使者"
	L["TraitRow6_Monk_Brewmaster_Hidden"]			 = "远古陈酿守护者"

	L["TraitRow1_Monk_Mistweaver_Classic"]			 = "神龙，迷雾之杖"
	L["TraitRow2_Monk_Mistweaver_Upgraded"]			 = "浓雾之钟"
	L["TraitRow3_Monk_Mistweaver_Valorous"]			 = "赤精之魂"
	L["TraitRow4_Monk_Mistweaver_War-torn"]			 = "煞魔之殇"
	L["TraitRow5_Monk_Mistweaver_Challenging"]		 = "宁静之符"
	L["TraitRow6_Monk_Mistweaver_Hidden"]			 = "不朽龙息"

	L["TraitRow1_Monk_Windwalker_Classic"]			 = "诸天之拳"
	L["TraitRow2_Monk_Windwalker_Upgraded"]			 = "奥拉基尔之触"
	L["TraitRow3_Monk_Windwalker_Valorous"]			 = "灵魂之触"
	L["TraitRow4_Monk_Windwalker_War-torn"]			 = "影踪传承"
	L["TraitRow5_Monk_Windwalker_Challenging"]		 = "雪怒执行者"
	L["TraitRow6_Monk_Windwalker_Hidden"]			 = "风暴之拳"

	--Warlock
	L["TraitRow1_Warlock_Affliction_Classic"]		 = "逆风收割者"
	L["TraitRow2_Warlock_Affliction_Upgraded"]		 = "苦难之手"
	L["TraitRow3_Warlock_Affliction_Valorous"]		 = "灵魂虹吸"
	L["TraitRow4_Warlock_Affliction_War-torn"]		 = "死亡之手"
	L["TraitRow5_Warlock_Affliction_Challenging"]	 = "罪人之脊"
	L["TraitRow6_Warlock_Affliction_Hidden"]		 = "命途之末"

	L["TraitRow1_Warlock_Demonology_Classic"]		 = "堕落者之颅"
	L["TraitRow2_Warlock_Demonology_Upgraded"]		 = "首席召唤师的凝视"
	L["TraitRow3_Warlock_Demonology_Valorous"]		 = "深渊领主之傲"
	L["TraitRow4_Warlock_Demonology_War-torn"]		 = "炽燃残骸"
	L["TraitRow5_Warlock_Demonology_Challenging"]	 = "失落之魂"
	L["TraitRow6_Warlock_Demonology_Hidden"]		 = "萨奇尔之面"

	L["TraitRow1_Warlock_Destruction_Classic"]		 = "萨格拉斯权杖"
	L["TraitRow2_Warlock_Destruction_Upgraded"]		 = "黑暗泰坦的狂妄"
	L["TraitRow3_Warlock_Destruction_Valorous"]		 = "古尔丹的回响"
	L["TraitRow4_Warlock_Destruction_War-torn"]		 = "毁灭者之影"
	L["TraitRow5_Warlock_Destruction_Challenging"]	 = "亵渎者的伪装"
	L["TraitRow6_Warlock_Destruction_Hidden"]		 = "军团之灾"

	--Priest
	L["TraitRow1_Priest_Discipline_Classic"]		 = "圣光之怒"
	L["TraitRow2_Priest_Discipline_Upgraded"]		 = "救赎者纹章"
	L["TraitRow3_Priest_Discipline_Valorous"]		 = "圣光之杯"
	L["TraitRow4_Priest_Discipline_War-torn"]		 = "不懈警戒"
	L["TraitRow5_Priest_Discipline_Challenging"]	 = "英灵之眼"
	L["TraitRow6_Priest_Discipline_Hidden"]			 = "护卷者塔杖"

	L["TraitRow1_Priest_Holy_Classic"]				 = "图雷，纳鲁道标"
	L["TraitRow2_Priest_Holy_Upgraded"]				 = "纯洁旌旗"
	L["TraitRow3_Priest_Holy_Valorous"]				 = "圣光守护者"
	L["TraitRow4_Priest_Holy_War-torn"]				 = "虚空之拥"
	L["TraitRow5_Priest_Holy_Challenging"]			 = "阿古斯的回忆"
	L["TraitRow6_Priest_Holy_Hidden"]				 = "光之子纹章"

	L["TraitRow1_Priest_Shadow_Classic"]			 = "黑暗帝国之刃"
	L["TraitRow2_Priest_Shadow_Upgraded"]			 = "古神之拥"
	L["TraitRow3_Priest_Shadow_Valorous"]			 = "堕落之刃"
	L["TraitRow4_Priest_Shadow_War-torn"]			 = "疯狂幻象"
	L["TraitRow5_Priest_Shadow_Challenging"]		 = "扭曲镜像"
	L["TraitRow6_Priest_Shadow_Hidden"]				 = "恩佐斯之爪"

	--Mage
	L["TraitRow1_Mage_Arcane_Classic"]				 = "艾露尼斯"
	L["TraitRow2_Mage_Arcane_Upgraded"]				 = "守护者塔杖"
	L["TraitRow3_Mage_Arcane_Valorous"]				 = "自由护法者"
	L["TraitRow4_Mage_Arcane_War-torn"]				 = "艾格文之陨"
	L["TraitRow5_Mage_Arcane_Challenging"]			 = "不朽的魔导师"
	L["TraitRow6_Mage_Arcane_Hidden"]				 = "牧羊人的警示"

	L["TraitRow1_Mage_Fire_Classic"]				 = "烈焰之击"
	L["TraitRow2_Mage_Fire_Upgraded"]				 = "逐日者之傲"
	L["TraitRow3_Mage_Fire_Valorous"]				 = "凤凰涅槃"
	L["TraitRow4_Mage_Fire_War-torn"]				 = "火裔之刃"
	L["TraitRow5_Mage_Fire_Challenging"]			 = "缚时者之刃"
	L["TraitRow6_Mage_Fire_Hidden"]					 = "群星之图"

	L["TraitRow1_Mage_Frost_Classic"]				 = "黑檀之寒"
	L["TraitRow2_Mage_Frost_Upgraded"]				 = "守护者的焦镜"
	L["TraitRow3_Mage_Frost_Valorous"]				 = "原初之流"
	L["TraitRow4_Mage_Frost_War-torn"]				 = "大法师的意志"
	L["TraitRow5_Mage_Frost_Challenging"]			 = "精锐魔导师"
	L["TraitRow6_Mage_Frost_Hidden"]				 = "霜火之忆"
	
return end

if LOCALE == "zhTW" then
	-- Traditional Chinese translations go here
	L["Addon_Title"] = "Remix Artifact Tracker"
	L["Addon_Notes"] = "為軍團重混的神器武器新增一個神器外觀分頁。"
	L["SlashCmd1"] = "/rat"
	L["SlashCmd2"] = "/混搭神器"
	L["SlashCmd3"] = "/remixartifact"

	L["Traits"] = ARTIFACTS_PERK_TAB
	L["Appearances"] = ARTIFACTS_APPEARANCE_TAB
	L["ShowSecondary"] = "顯示次要"
	L["ShowSecondaryTT"] = "顯示與此套裝關聯的次要模型。"
	L["RaceNightElf"] = GetRaceName(4)
	L["RaceHaranir"] = GetRaceName(86)
	L["RaceTauren"] = GetRaceName(6)
	L["RaceHMTauren"] = GetRaceName(28)
	L["RaceTroll"] = GetRaceName(8)
	L["RaceZandalari"] = GetRaceName(31)
	L["RaceWorgen"] = GetRaceName(22)
	L["RaceKulTiran"] = GetRaceName(32)
	L["RaceGroup1"] = L["RaceNightElf"] -- .. ", " .. L["RaceHaranir"] -- (maybe for future?)
	L["RaceGroup2"] = L["RaceTauren"] .. "， " .. L["RaceHMTauren"]
	L["RaceGroup3"] = L["RaceTroll"] .. "， " .. L["RaceZandalari"]
	L["RaceGroup4"] = L["RaceWorgen"] .. "， " .. L["RaceKulTiran"]
	L["Artifact"] = ITEM_QUALITY6_DESC
	L["Unavailable"] = UNAVAILABLE
	L["NoLongerAvailable"] = NO_LONGER_AVAILABLE

	L["TraitRow1Temp_Classic"]		 = "經典"
	L["TraitRow2Temp_Upgraded"]		 = "進階"
	L["TraitRow3Temp_Valorous"]		 = "英勇"
	L["TraitRow4Temp_War-torn"]		 = "兵禍"
	L["TraitRow5Temp_Challenging"]	 = "挑戰"
	L["TraitRow6Temp_Hidden"]		 = "隱藏版"

	--classic
	L["TraitRow1Tint1Req"] = ""
	L["TraitRow1Tint2Req"] = "取得其中一個創世之柱。"
	L["TraitRow1Tint3Req"] = "取得聖光之心並安全將其送回你的職業大廳。"
	L["TraitRow1Tint4Req"] = "完成你職業的第一個主要劇情戰役。"

	--upgraded
	L["TraitRow2Tint1Req"] = string.format("完成%s的職業大廳劇情戰役。", ClassName)
	L["TraitRow2Tint2Req"] = string.format("完成%s的職業大廳劇情戰役。", ClassName)
	L["TraitRow2Tint3Req"] = string.format("完成%s的職業大廳劇情戰役。", ClassName)
	L["TraitRow2Tint4Req"] = "完成「此面向上」成就。"

	--valorous
	L["TraitRow3Tint1Req"] = "完成「足以抗衡的力量」任務線。"
	L["TraitRow3Tint2Req"] = "完成「怪獸大學」成就。\n\n完成「足以抗衡的力量」任務線。"
	L["TraitRow3Tint3Req"] = "使用等級5的鑰石完成一個傳奇地城。\n\n完成「足以抗衡的力量」任務線。"
	L["TraitRow3Tint4Req"] = "完成「軍團英雄的榮耀」成就。完成「足以抗衡的力量」任務線。"

	--war-torn
	L["TraitRow4Tint1Req"] = "參與玩家對玩家戰鬥並達到榮譽等級10。"
	L["TraitRow4Tint2Req"] = "達到榮譽等級30。"
	L["TraitRow4Tint3Req"] = "達到榮譽等級50。"
	L["TraitRow4Tint4Req"] = "達到榮譽等級80。"

	--challenging (swapped with Hidden)
	L["TraitRow5Tint1Req_THR"] = "完成「卡魯歐歸來」任務線。"
	L["TraitRow5Tint2Req_THR"] = "在解鎖挑戰任務神兵武器外觀後在英雄難度擊敗基爾加丹。\n\n完成「卡魯歐歸來」任務線。"
	L["TraitRow5Tint3Req_THR"] = "在解鎖挑戰任務神兵武器外觀後，贏得10場積分戰場。\n\n完成「卡魯歐歸來」任務線。"
	L["TraitRow5Tint4Req_THR"] = "在解鎖挑戰任務神兵武器外觀後，完成10個不同的軍團地城。\n\n完成「卡魯歐歸來」任務。"

	L["TraitRow5Tint1Req_XC"] = "完成「賽倫挑戰」任務線。"
	L["TraitRow5Tint2Req_XC"] = "在解鎖挑戰任務神兵武器外觀後在英雄難度擊敗基爾加丹。\n\n完成「賽倫挑戰」任務線。"
	L["TraitRow5Tint3Req_XC"] = "在解鎖挑戰任務神兵武器外觀後，贏得10場積分戰場。\n\n完成「賽倫挑戰」任務線。"
	L["TraitRow5Tint4Req_XC"] = "在解鎖挑戰任務神兵武器外觀後，完成10個不同的軍團地城。\n\n完成「賽倫挑戰」任務。"

	L["TraitRow5Tint1Req_IMC"] = "完成「鬼母挑戰」任務線。"
	L["TraitRow5Tint2Req_IMC"] = "在解鎖挑戰任務神兵武器外觀後在英雄難度擊敗基爾加丹。\n\n完成「鬼母挑戰」任務線。"
	L["TraitRow5Tint3Req_IMC"] = "在解鎖挑戰任務神兵武器外觀後，贏得10場積分戰場。\n\n完成「鬼母挑戰」任務線。"
	L["TraitRow5Tint4Req_IMC"] = "在解鎖挑戰任務神兵武器外觀後，完成10個不同的軍團地城。\n\n完成「鬼母挑戰」任務。"

	L["TraitRow5Tint1Req_TC"] = "完成「雙子挑戰」任務線。"
	L["TraitRow5Tint2Req_TC"] = "在解鎖挑戰任務神兵武器外觀後在英雄難度擊敗基爾加丹。\n\n完成「雙子挑戰」任務線。"
	L["TraitRow5Tint3Req_TC"] = "在解鎖挑戰任務神兵武器外觀後，贏得10場積分戰場。\n\n完成「雙子挑戰」任務線。"
	L["TraitRow5Tint4Req_TC"] = "在解鎖挑戰任務神兵武器外觀後，完成10個不同的軍團地城。\n\n完成「雙子挑戰」任務。"

	L["TraitRow5Tint1Req_TBRT"] = "完成「玄鴉危機」任務線。"
	L["TraitRow5Tint2Req_TBRT"] = "在解鎖挑戰任務神兵武器外觀後在英雄難度擊敗基爾加丹。\n\n完成「玄鴉危機」任務線。"
	L["TraitRow5Tint3Req_TBRT"] = "在解鎖挑戰任務神兵武器外觀後，贏得10場積分戰場。\n\n完成「玄鴉危機」任務線。"
	L["TraitRow5Tint4Req_TBRT"] = "在解鎖挑戰任務神兵武器外觀後，完成10個不同的軍團地城。\n\n完成「玄鴉危機」任務。"

	L["TraitRow5Tint1Req_TFWM"] = "完成「魔化蟲威脅」任務線。"
	L["TraitRow5Tint2Req_TFWM"] = "在解鎖挑戰任務神兵武器外觀後在英雄難度擊敗基爾加丹。\n\n完成「魔化蟲威脅」任務線。"
	L["TraitRow5Tint3Req_TFWM"] = "在解鎖挑戰任務神兵武器外觀後，贏得10場積分戰場。\n\n完成「魔化蟲威脅」任務線。"
	L["TraitRow5Tint4Req_TFWM"] = "在解鎖挑戰任務神兵武器外觀後，完成10個不同的軍團地城。\n\n完成「魔化蟲威脅」任務。"

	L["TraitRow5Tint1Req_GQC"] = "完成「神御女王挑戰」任務線。"
	L["TraitRow5Tint2Req_GQC"] = "在解鎖挑戰任務神兵武器外觀後在英雄難度擊敗基爾加丹。\n\n完成「神御女王挑戰」任務線。"
	L["TraitRow5Tint3Req_GQC"] = "在解鎖挑戰任務神兵武器外觀後，贏得10場積分戰場。\n\n完成「神御女王挑戰」任務線。"
	L["TraitRow5Tint4Req_GQC"] = "在解鎖挑戰任務神兵武器外觀後，完成10個不同的軍團地城。\n\n完成「神御女王挑戰」任務。"

	--hidden (swapped with Challenging)
	L["TraitRow6Tint1Req"] = ""
	L["TraitRow6Tint2Req"] = "在解鎖隱藏版神兵武器外觀後完成30座軍臨天下地城。"
	L["TraitRow6Tint3Req"] = "在解鎖隱藏版神兵武器外觀後完成200個世界任務。"
	L["TraitRow6Tint4Req"] = "在解鎖隱藏版神兵武器外觀後殺死1,000名敵方玩家。"

	--Demon Hunter
	L["TraitRow1_DemonHunter_Havoc_Classic"]		 = "欺詐者雙刃"
	L["TraitRow2_DemonHunter_Havoc_Upgraded"]		 = "伊利達瑞之手"
	L["TraitRow3_DemonHunter_Havoc_Valorous"]		 = "晦暗之刃"
	L["TraitRow4_DemonHunter_Havoc_War-torn"]		 = "惡魔之觸"
	L["TraitRow5_DemonHunter_Havoc_Challenging"]	 = "奪焰者"
	L["TraitRow6_DemonHunter_Havoc_Hidden"]			 = "死亡行者"

	L["TraitRow1_DemonHunter_Vengeance_Classic"]	 = "奧達奇戰刃"
	L["TraitRow2_DemonHunter_Vengeance_Upgraded"]	 = "伊利達瑞紋章"
	L["TraitRow3_DemonHunter_Vengeance_Valorous"]	 = "驚懼領主之噬"
	L["TraitRow4_DemonHunter_Vengeance_War-torn"]	 = "恐懼之骨"
	L["TraitRow5_DemonHunter_Vengeance_Challenging"] = "幽暗之翼"
	L["TraitRow6_DemonHunter_Vengeance_Hidden"]		 = "鋼鐵看守者"

	--Paladin
	L["TraitRow1_Paladin_Retribution_Classic"]		 = "灰燼使者"
	L["TraitRow2_Paladin_Retribution_Upgraded"]		 = "正義巨劍"
	L["TraitRow3_Paladin_Retribution_Valorous"]		 = "燃燒報復"
	L["TraitRow4_Paladin_Retribution_War-torn"]		 = "殞落希望"
	L["TraitRow5_Paladin_Retribution_Challenging"]	 = "碎破清算"
	L["TraitRow6_Paladin_Retribution_Hidden"]		 = "腐化的回憶"

	L["TraitRow1_Paladin_Holy_Classic"]				 = "白銀之手"
	L["TraitRow2_Paladin_Holy_Upgraded"]			 = "墮落看守者之拳"
	L["TraitRow3_Paladin_Holy_Valorous"]			 = "守護者的審判"
	L["TraitRow4_Paladin_Holy_War-torn"]			 = "守墓者"
	L["TraitRow5_Paladin_Holy_Challenging"]			 = "正義之火"
	L["TraitRow6_Paladin_Holy_Hidden"]				 = "看守者的武裝"

	L["TraitRow1_Paladin_Protection_Classic"]		 = "真理之盾"
	L["TraitRow2_Paladin_Protection_Upgraded"]		 = "泰坦之光"
	L["TraitRow3_Paladin_Protection_Valorous"]		 = "神性保衛者"
	L["TraitRow4_Paladin_Protection_War-torn"]		 = "黑暗守衛者"
	L["TraitRow5_Paladin_Protection_Challenging"]	 = "聖火紋章"
	L["TraitRow6_Paladin_Protection_Hidden"]		 = "復仇者的壁壘"

	--Warrior
	L["TraitRow1_Warrior_Arms_Classic"]				 = "斯托姆卡，破戰巨劍"
	L["TraitRow2_Warrior_Arms_Upgraded"]			 = "亡者的復仇"
	L["TraitRow3_Warrior_Arms_Valorous"]			 = "奪焰者"
	L["TraitRow4_Warrior_Arms_War-torn"]			 = "憤怒之刃"
	L["TraitRow5_Warrior_Arms_Challenging"]			 = "天空勇者之劍"
	L["TraitRow6_Warrior_Arms_Hidden"]				 = "奧金破刃斧"

	L["TraitRow1_Warrior_Fury_Classic"]				 = "華爾拉亞戰劍"
	L["TraitRow2_Warrior_Fury_Upgraded"]			 = "龍騎兵武裝"
	L["TraitRow3_Warrior_Fury_Valorous"]			 = "勇氣之喉"
	L["TraitRow4_Warrior_Fury_War-torn"]			 = "風暴吐息"
	L["TraitRow5_Warrior_Fury_Challenging"]			 = "黑爾雅之視"
	L["TraitRow6_Warrior_Fury_Hidden"]				 = "屠龍者的斬斧"

	L["TraitRow1_Warrior_Protection_Classic"]		 = "大地守護者之鱗"
	L["TraitRow2_Warrior_Protection_Upgraded"]		 = "墮王武裝"
	L["TraitRow3_Warrior_Protection_Valorous"]		 = "無畏不屈"
	L["TraitRow4_Warrior_Protection_War-torn"]		 = "亡靈守衛的凝視"
	L["TraitRow5_Warrior_Protection_Challenging"]	 = "軍團破壞者"
	L["TraitRow6_Warrior_Protection_Hidden"]		 = "碎界者的臨終之息"

	--Death Knight
	L["TraitRow1_DeathKnight_Blood_Classic"]		 = "遭譴者之顎"
	L["TraitRow2_DeathKnight_Blood_Upgraded"]		 = "血喉"
	L["TraitRow3_DeathKnight_Blood_Valorous"]		 = "噬靈者"
	L["TraitRow4_DeathKnight_Blood_War-torn"]		 = "處決者"
	L["TraitRow5_DeathKnight_Blood_Challenging"]	 = "骨顎"
	L["TraitRow6_DeathKnight_Blood_Hidden"]			 = "不死之觸"

	L["TraitRow1_DeathKnight_Frost_Classic"]		 = "墮落王子之刃"
	L["TraitRow2_DeathKnight_Frost_Upgraded"]		 = "霜之哀傷的遺物"
	L["TraitRow3_DeathKnight_Frost_Valorous"]		 = "辛德拉苟莎之怒"
	L["TraitRow4_DeathKnight_Frost_War-torn"]		 = "守墓者"
	L["TraitRow5_DeathKnight_Frost_Challenging"]	 = "收魂者"
	L["TraitRow6_DeathKnight_Frost_Hidden"]			 = "黑暗符文刃"

	L["TraitRow1_DeathKnight_Unholy_Classic"]		 = "天啟"
	L["TraitRow2_DeathKnight_Unholy_Upgraded"]		 = "穢邪之戰"
	L["TraitRow3_DeathKnight_Unholy_Valorous"]		 = "疫病信使"
	L["TraitRow4_DeathKnight_Unholy_War-torn"]		 = "饑荒使者"
	L["TraitRow5_DeathKnight_Unholy_Challenging"]	 = "死亡判決"
	L["TraitRow6_DeathKnight_Unholy_Hidden"]		 = "亡骨鉤鐮"

	--Hunter
	L["TraitRow1_Hunter_BeastMastery_Classic"]		 = "泰坦之擊"
	L["TraitRow2_Hunter_BeastMastery_Upgraded"]		 = "鷹眼絕射"
	L["TraitRow3_Hunter_BeastMastery_Valorous"]		 = "伊萊克之雷"
	L["TraitRow4_Hunter_BeastMastery_War-torn"]		 = "野豬火砲"
	L["TraitRow5_Hunter_BeastMastery_Challenging"]	 = "毒蛇之噬"
	L["TraitRow6_Hunter_BeastMastery_Hidden"]		 = "泰坦機弓"

	L["TraitRow1_Hunter_Marksmanship_Classic"]		 = "薩斯朵拉 風行者之遺"
	L["TraitRow2_Hunter_Marksmanship_Upgraded"]		 = "姊妹情深"
	L["TraitRow3_Hunter_Marksmanship_Valorous"]		 = "鳳凰重生"
	L["TraitRow4_Hunter_Marksmanship_War-torn"]		 = "遊俠將軍的護衛"
	L["TraitRow5_Hunter_Marksmanship_Challenging"]	 = "野地行者"
	L["TraitRow6_Hunter_Marksmanship_Hidden"]		 = "烏鴉守衛"

	L["TraitRow1_Hunter_Survival_Classic"]			 = "猛禽之爪"
	L["TraitRow2_Hunter_Survival_Upgraded"]			 = "神鷹重生"
	L["TraitRow3_Hunter_Survival_Valorous"]			 = "狼王之矛"
	L["TraitRow4_Hunter_Survival_War-torn"]			 = "毒蛇之擊"
	L["TraitRow5_Hunter_Survival_Challenging"]		 = "森林守護者"
	L["TraitRow6_Hunter_Survival_Hidden"]			 = "巨熊之韌"

	--Shaman
	L["TraitRow1_Shaman_Elemental_Classic"]			 = "萊公之拳"
	L["TraitRow2_Shaman_Elemental_Upgraded"]		 = "風暴守護者"
	L["TraitRow3_Shaman_Elemental_Valorous"]		 = "語地者"
	L["TraitRow4_Shaman_Elemental_War-torn"]		 = "墮落薩滿之拳"
	L["TraitRow5_Shaman_Elemental_Challenging"]		 = "雷加的傳承"
	L["TraitRow6_Shaman_Elemental_Hidden"]			 = "阿曼尼的尊榮"

	L["TraitRow1_Shaman_Enhancement_Classic"]		 = "末日錘"
	L["TraitRow2_Shaman_Enhancement_Upgraded"]		 = "風暴使者"
	L["TraitRow3_Shaman_Enhancement_Valorous"]		 = "燃燒軍團的末日"
	L["TraitRow4_Shaman_Enhancement_War-torn"]		 = "黑手的命運"
	L["TraitRow5_Shaman_Enhancement_Challenging"]	 = "颱風"
	L["TraitRow6_Shaman_Enhancement_Hidden"]		 = "贊達拉勇士"

	L["TraitRow1_Shaman_Restoration_Classic"]		 = "薩拉達爾，海潮權杖"
	L["TraitRow2_Shaman_Restoration_Upgraded"]		 = "深淵權杖"
	L["TraitRow3_Shaman_Restoration_Valorous"]		 = "泰坦後裔"
	L["TraitRow4_Shaman_Restoration_War-torn"]		 = "圖騰使者"
	L["TraitRow5_Shaman_Restoration_Challenging"]	 = "冰封運命"
	L["TraitRow6_Shaman_Restoration_Hidden"]		 = "盤蛇"

	--Druid
	L["TraitRow1_Druid_Balance_Classic"]			 = "伊露恩之鐮"
	L["TraitRow2_Druid_Balance_Upgraded"]			 = "戈德林使者"
	L["TraitRow3_Druid_Balance_Valorous"]			 = "月喚"
	L["TraitRow4_Druid_Balance_War-torn"]			 = "夢魘腐化"
	L["TraitRow5_Druid_Balance_Challenging"]		 = "法力鐮刀"
	L["TraitRow6_Druid_Balance_Hidden"]				 = "守日者之擊"

	L["TraitRow1_Druid_Feral_Classic"]				 = "亞夏曼之牙"
	L["TraitRow2_Druid_Feral_Upgraded"]				 = "自然之怒"
	L["TraitRow3_Druid_Feral_Valorous"]				 = "原始潛獵者"
	L["TraitRow4_Druid_Feral_War-torn"]				 = "夢魘化身"
	L["TraitRow5_Druid_Feral_Challenging"]			 = "獸母之魂"
	L["TraitRow6_Druid_Feral_Hidden"]				 = "月梟之靈"

	L["TraitRow1_Druid_Guardian_Classic"]			 = "厄索克之爪"
	L["TraitRow2_Druid_Guardian_Upgraded"]			 = "石爪"
	L["TraitRow3_Druid_Guardian_Valorous"]			 = "厄索爾的化身"
	L["TraitRow4_Druid_Guardian_War-torn"]			 = "臣服夢魘"
	L["TraitRow5_Druid_Guardian_Challenging"]		 = "灰喉之力"
	L["TraitRow6_Druid_Guardian_Hidden"]			 = "林地守護者"

	L["TraitRow1_Druid_Restoration_Classic"]		 = "格哈尼爾，始祖之樹"
	L["TraitRow2_Druid_Restoration_Upgraded"]		 = "長者之樹"
	L["TraitRow3_Druid_Restoration_Valorous"]		 = "水晶覺醒"
	L["TraitRow4_Druid_Restoration_War-torn"]		 = "死木守衛者"
	L["TraitRow5_Druid_Restoration_Challenging"]	 = "長夜警醒"
	L["TraitRow6_Druid_Restoration_Hidden"]			 = "看守者之冠"

	--Rogue
	L["TraitRow1_Rogue_Assassination_Classic"]		 = "弒君之刃"
	L["TraitRow2_Rogue_Assassination_Upgraded"]		 = "詛咒之手"
	L["TraitRow3_Rogue_Assassination_Valorous"]		 = "絕心者"
	L["TraitRow4_Rogue_Assassination_War-torn"]		 = "屠法者之刃"
	L["TraitRow5_Rogue_Assassination_Challenging"]	 = "幽魂刃"
	L["TraitRow6_Rogue_Assassination_Hidden"]		 = "斷骨者"

	L["TraitRow1_Rogue_Outlaw_Classic"]				 = "驚懼雙刀"
	L["TraitRow2_Rogue_Outlaw_Upgraded"]			 = "海上煞星的承諾"
	L["TraitRow3_Rogue_Outlaw_Valorous"]			 = "火吻"
	L["TraitRow4_Rogue_Outlaw_War-torn"]			 = "惡棍遺言"
	L["TraitRow5_Rogue_Outlaw_Challenging"]			 = "劍士之擊"
	L["TraitRow6_Rogue_Outlaw_Hidden"]				 = "雷霆之怒 馭風者的神聖之刃"
	
	L["TraitRow1_Rogue_Subtlety_Classic"]			 = "吞噬者之牙"
	L["TraitRow2_Rogue_Subtlety_Upgraded"]			 = "影刃"
	L["TraitRow3_Rogue_Subtlety_Valorous"]			 = "魔擁"
	L["TraitRow4_Rogue_Subtlety_War-torn"]			 = "血飲"
	L["TraitRow5_Rogue_Subtlety_Challenging"]		 = "冰剪"
	L["TraitRow6_Rogue_Subtlety_Hidden"]			 = "毒噬"

	--Monk
	L["TraitRow1_Monk_Brewmaster_Classic"]			 = "福山之杖 漫行者之伴"
	L["TraitRow2_Monk_Brewmaster_Upgraded"]			 = "美猴王的重擔"
	L["TraitRow3_Monk_Brewmaster_Valorous"]			 = "玄牛之心"
	L["TraitRow4_Monk_Brewmaster_War-torn"]			 = "龍焰之握"
	L["TraitRow5_Monk_Brewmaster_Challenging"]		 = "迷霧使者"
	L["TraitRow6_Monk_Brewmaster_Hidden"]			 = "遠古釀酒大師"

	L["TraitRow1_Monk_Mistweaver_Classic"]			 = "雪崙，迷霧之杖"
	L["TraitRow2_Monk_Mistweaver_Upgraded"]			 = "濛霧響鐘"
	L["TraitRow3_Monk_Mistweaver_Valorous"]			 = "赤吉之靈"
	L["TraitRow4_Monk_Mistweaver_War-torn"]			 = "煞化絕刑"
	L["TraitRow5_Monk_Mistweaver_Challenging"]		 = "寧神之華"
	L["TraitRow6_Monk_Mistweaver_Hidden"]			 = "不朽龍息"

	L["TraitRow1_Monk_Windwalker_Classic"]			 = "蒼天之拳"
	L["TraitRow2_Monk_Windwalker_Upgraded"]			 = "奧拉基爾之觸"
	L["TraitRow3_Monk_Windwalker_Valorous"]			 = "魂靈之擊"
	L["TraitRow4_Monk_Windwalker_War-torn"]			 = "影潘傳承"
	L["TraitRow5_Monk_Windwalker_Challenging"]		 = "雪怒執法者"
	L["TraitRow6_Monk_Windwalker_Hidden"]			 = "風暴之拳"

	--Warlock
	L["TraitRow1_Warlock_Affliction_Classic"]		 = "逆風收割者"
	L["TraitRow2_Warlock_Affliction_Upgraded"]		 = "苦難之手"
	L["TraitRow3_Warlock_Affliction_Valorous"]		 = "靈魂虹吸"
	L["TraitRow4_Warlock_Affliction_War-torn"]		 = "死神之手"
	L["TraitRow5_Warlock_Affliction_Challenging"]	 = "罪人脊骨"
	L["TraitRow6_Warlock_Affliction_Hidden"]		 = "命運終結"

	L["TraitRow1_Warlock_Demonology_Classic"]		 = "曼那瑞之顱"
	L["TraitRow2_Warlock_Demonology_Upgraded"]		 = "初代召喚師的凝視"
	L["TraitRow3_Warlock_Demonology_Valorous"]		 = "深淵領主之傲"
	L["TraitRow4_Warlock_Demonology_War-torn"]		 = "燃燒殘怨"
	L["TraitRow5_Warlock_Demonology_Challenging"]	 = "遺忘之魂"
	L["TraitRow6_Warlock_Demonology_Hidden"]		 = "薩奇爾的面容"

	L["TraitRow1_Warlock_Destruction_Classic"]		 = "薩格拉斯權杖"
	L["TraitRow2_Warlock_Destruction_Upgraded"]		 = "黑暗泰坦的傲慢"
	L["TraitRow3_Warlock_Destruction_Valorous"]		 = "古爾丹的回聲"
	L["TraitRow4_Warlock_Destruction_War-torn"]		 = "毀滅者之影"
	L["TraitRow5_Warlock_Destruction_Challenging"]	 = "晦暗者的偽裝"
	L["TraitRow6_Warlock_Destruction_Hidden"]		 = "軍團之懼"

	--Priest
	L["TraitRow1_Priest_Discipline_Classic"]		 = "聖光之怒"
	L["TraitRow2_Priest_Discipline_Upgraded"]		 = "救贖紋章"
	L["TraitRow3_Priest_Discipline_Valorous"]		 = "聖光之杯"
	L["TraitRow4_Priest_Discipline_War-torn"]		 = "永恆之惕"
	L["TraitRow5_Priest_Discipline_Challenging"]	 = "昇靈守望"
	L["TraitRow6_Priest_Discipline_Hidden"]			 = "聖典守衛者之杖"

	L["TraitRow1_Priest_Holy_Classic"]				 = "杜爾，那魯光杖"
	L["TraitRow2_Priest_Holy_Upgraded"]				 = "純淨旌旗"
	L["TraitRow3_Priest_Holy_Valorous"]				 = "光之守衛者"
	L["TraitRow4_Priest_Holy_War-torn"]				 = "虛無之擁"
	L["TraitRow5_Priest_Holy_Challenging"]			 = "阿古斯的記憶"
	L["TraitRow6_Priest_Holy_Hidden"]				 = "光育紋章"

	L["TraitRow1_Priest_Shadow_Classic"]			 = "黑暗帝國之刃"
	L["TraitRow2_Priest_Shadow_Upgraded"]			 = "上古之神的擁抱"
	L["TraitRow3_Priest_Shadow_Valorous"]			 = "墮落之刃"
	L["TraitRow4_Priest_Shadow_War-torn"]			 = "瘋狂異象"
	L["TraitRow5_Priest_Shadow_Challenging"]		 = "曲折鏡像"
	L["TraitRow6_Priest_Shadow_Hidden"]				 = "恩若司之爪"

	--Mage
	L["TraitRow1_Mage_Arcane_Classic"]				 = "亞魯涅斯"
	L["TraitRow2_Mage_Arcane_Upgraded"]				 = "守護者之塔"
	L["TraitRow3_Mage_Arcane_Valorous"]				 = "尊者降世"
	L["TraitRow4_Mage_Arcane_War-torn"]				 = "艾格文之殞"
	L["TraitRow5_Mage_Arcane_Challenging"]			 = "不朽魔導師"
	L["TraitRow6_Mage_Arcane_Hidden"]				 = "毛卜師之杖"

	L["TraitRow1_Mage_Fire_Classic"]				 = "費羅米隆"
	L["TraitRow2_Mage_Fire_Upgraded"]				 = "逐日者之傲"
	L["TraitRow3_Mage_Fire_Valorous"]				 = "鳳凰重生"
	L["TraitRow4_Mage_Fire_War-torn"]				 = "熔岩火刃"
	L["TraitRow5_Mage_Fire_Challenging"]			 = "曲時之劍"
	L["TraitRow6_Mage_Fire_Hidden"]					 = "星辰圖譜"

	L["TraitRow1_Mage_Frost_Classic"]				 = "黯凜"
	L["TraitRow2_Mage_Frost_Upgraded"]				 = "守護者的聚能"
	L["TraitRow3_Mage_Frost_Valorous"]				 = "原初之流"
	L["TraitRow4_Mage_Frost_War-torn"]				 = "大法師的意志"
	L["TraitRow5_Mage_Frost_Challenging"]			 = "精英魔導師"
	L["TraitRow6_Mage_Frost_Hidden"]				 = "霜火回憶"
	
return end