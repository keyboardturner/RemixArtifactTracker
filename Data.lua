local _, rat = ...
local L = rat.L

rat.AppSwatchData = {
	-- Paladin
	[242555] = { -- Retribution
		itemID = 120978,
		appearances = {
			[1] = { -- Classic
				-- camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, }, -- default settings
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 10,	color = 12207429,	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 9,	color = 13946667,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 2777830,	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 7194424,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 14,	color = 14170168,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = 13753664,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 4341749,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 2400311,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 17,	color = 15636775,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 26,	color = -16753230,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 27,	color = -7941557,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 28,	color = -203,		tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 18,	color = 9769406,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 19,	color = 5384685,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 20,	color = 46171,		tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 21,	color = 2918886,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 24,	color = 4385004,	tooltip = L["TraitRow5Tint1Req_GQC"],	req = { quests = {45526}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 23,	color = 16250871,	tooltip = L["TraitRow5Tint2Req_GQC"],	req = { quests = {45526}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 22,	color = 15526961,	tooltip = L["TraitRow5Tint3Req_GQC"],	req = { quests = {45526}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 25,	color = 5054922,	tooltip = L["TraitRow5Tint4Req_GQC"],	req = { quests = {45526}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 29,	color = -14423239,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43666} } },
					{ modifiedID = 30,	color = -7197721,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = -1367775,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = -1577950,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	[242571] = { -- Holy
		itemID = 128823,
		secondary = 128824, -- dummy offhand item
		appearances = {
			[1] = { -- Classic
				secondaryCamera = { posX = 2, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 5*math.pi / 6, pitch = 0, },
				tints = {
					{ modifiedID = 9,	color = 16120349,	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 1959674,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 9584105,	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 16257561,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				secondaryCamera = { posX = 2, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 5*math.pi / 6, pitch = 0, },
				tints = {
					{ modifiedID = 16,	color = -656866,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = 46079,		tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 9253870,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = -2352602,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				secondaryCamera = { posX = 2, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 5*math.pi / 6, pitch = 0, },
				tints = {
					{ modifiedID = 21,	color = 3324917,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 24,	color = -8124,	 	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 22,	color = -6081340,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 23,	color = -4443328,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				secondaryCamera = { posX = 2, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 5*math.pi / 6, pitch = 0, },
				tints = {
					{ modifiedID = 25,	color = 46079,		tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 26,	color = 3404714,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 27,	color = 8207285,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 28,	color = 13312069,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				secondaryCamera = { posX = 2, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 5*math.pi / 6, pitch = 0, },
				tints = {
					{ modifiedID = 19,	color = -2734822,	tooltip = L["TraitRow5Tint1Req_TBRT"],	req = { quests = {46035}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 18,	color = 8923843,	tooltip = L["TraitRow5Tint2Req_TBRT"],	req = { quests = {46035}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 17,	color = 46079,		tooltip = L["TraitRow5Tint3Req_TBRT"],	req = { quests = {46035}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 20,	color = -12652954,	tooltip = L["TraitRow5Tint4Req_TBRT"],	req = { quests = {46035}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				secondaryCamera = { posX = 2, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 5*math.pi / 6, pitch = 0, },
				tints = {
					{ modifiedID = 29,	color = 15582755,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43664} } },
					{ modifiedID = 30,	color = 15857826,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = 8724213,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = 15990784,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Paladin
	[242583] = { -- Protection
		itemID = 128866,
		secondary = 128867,
		appearances = {
			[1] = { -- Classic
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 9,	color = -12849686,	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = -2722739,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = -7721028,	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = -160,		tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 13,	color = -7078146,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = -1684683,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = -1776583,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = -197404,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = 3*math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 32,	color = -2102506,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 30,	color = -14840534,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 31,	color = -2608076,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 29,	color = -13023499,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 18,	color = -13307997,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 17,	color = -14079515,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 19,	color = -3200705,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 20,	color = -1249462,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 24,	color = -927427,	tooltip = L["TraitRow5Tint1Req_THR"],	req = { quests = {45416}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 22,	color = -6473020,	tooltip = L["TraitRow5Tint2Req_THR"],	req = { quests = {45416}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 23,	color = -2014423,	tooltip = L["TraitRow5Tint3Req_THR"],	req = { quests = {45416}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 21,	color = -12944144,	tooltip = L["TraitRow5Tint4Req_THR"],	req = { quests = {45416}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 26,	color = -6146097,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43665} } },
					{ modifiedID = 25,	color = -9641147,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 27,	color = -3729643,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 28,	color = -8892,		tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},


	-- Demon Hunter
	[242556] = { -- Havoc
		itemID = 127829,
		secondary = 127830,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 10,	color = 6870528,	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 9,	color = 3666175,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 9845974,	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 15477542,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 14,	color = 9627184,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = 4433378,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 9980106,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 14958913,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 20,	color = 16064287,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = 9231422,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = 10767320,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 17,	color = 8200995,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.03, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 27,	color = 7223739,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 26,	color = 3657332,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 25,	color = 4626395,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 28,	color = 15857465,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 23,	color = 15311409,	tooltip = L["TraitRow5Tint1Req_XC"],	req = { quests = {44925}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 22,	color = 11200571,	tooltip = L["TraitRow5Tint2Req_XC"],	req = { quests = {44925}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 21,	color = 13127224,	tooltip = L["TraitRow5Tint3Req_XC"],	req = { quests = {44925}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 24,	color = 12598501,	tooltip = L["TraitRow5Tint4Req_XC"],	req = { quests = {44925}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 30,	color = 12313145,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43649} } },
					{ modifiedID = 29,	color = 3595433,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = 10438369,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = 15485771,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Demon Hunter
	[242577] = { -- Vengeance
		itemID = 128832,
		secondary = 128831,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 16765254, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 4619282,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 7801775, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 11776947,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 14,	color = -2396893,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = -11213384,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = -13835203,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = -4512805,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 18,	color = -7998908,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 17,	color = -12913687,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = -2606084,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 20,	color = -2475488,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 22,	color = -1652091,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 21,	color = -7432515,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 23,	color = -10123675,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 24,	color = -9808299,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 29,	color = -3030212,	tooltip = L["TraitRow5Tint1Req_THR"],	req = { quests = {45416}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = -7612101,	tooltip = L["TraitRow5Tint2Req_THR"],	req = { quests = {45416}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 31,	color = -5982477,	tooltip = L["TraitRow5Tint3Req_THR"],	req = { quests = {45416}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 32,	color = -6252392,	tooltip = L["TraitRow5Tint4Req_THR"],	req = { quests = {45416}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 26,	color = -7812810,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43650} } },
					{ modifiedID = 25,	color = -13123135,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 27,	color = -8641594,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 28,	color = -1692130,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},

	-- Druid
	[242561] = { -- Restoration
		itemID = 128306,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = -12527023, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 14759167,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = -14496857, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = -131226,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 13,	color = -12858266,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = -8716125,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = -9044232,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = -1443782,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 18,	color = -2621457,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 17,	color = -5955107,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = 42719,		tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 20,	color = 2621373,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 22,	color = 7995557,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 21,	color = 1834826,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 23,	color = 12910592,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 24,	color = -12486401,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 31,	color = -6920642,	tooltip = L["TraitRow5Tint1Req_TBRT"],	req = { quests = {46035}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = 3687024,	tooltip = L["TraitRow5Tint2Req_TBRT"],	req = { quests = {46035}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 29,	color = -9077053,	tooltip = L["TraitRow5Tint3Req_TBRT"],	req = { quests = {46035}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 32,	color = -1583684,	tooltip = L["TraitRow5Tint4Req_TBRT"],	req = { quests = {46035}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 26,	color = -10008885,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43654} } },
					{ modifiedID = 25,	color = 3800902,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 27,	color = 13369344,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 28,	color = -13534254,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Druid
	[242580] = { -- Feral (these appearances are based on shapeshift, so something else will have to be devised later)
		itemID = 128860, -- gets overwritten by displayID
		secondary = 128860,
		appearances = {
			[1] = { -- Classic
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .4, facing = 7*math.pi / 4, pitch = 0, },
				secondaryCamera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = .75, },
				animation = 0,
				tints = {
					{ displayID = 66779,	modifiedID = 9,		color = 4112989, 	tooltip = L["TraitRow1Tint1Req"].."[PH] Troll, Zandalari Troll",		req = { quests = {}, achievements = {} } },
					{ displayID = 66777,	modifiedID = 9,		color = 10319436,	tooltip = L["TraitRow1Tint1Req"].."[PH] Highmountain Tauren, Tauren",	req = { quests = {}, achievements = {} } },
					{ displayID = 66778,	modifiedID = 9,		color = 14274424, 	tooltip = L["TraitRow1Tint1Req"].."[PH] Kul Tiran, Worgen",				req = { quests = {}, achievements = {} } },
					{ displayID = 66780,	modifiedID = 9,		color = 9321405,	tooltip = L["TraitRow1Tint1Req"].."[PH] Night Elf",						req = { quests = {}, achievements = {} } },
					{ displayID = 66775,	modifiedID = 10,	color = 5052011,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ displayID = 66776,	modifiedID = 11,	color = 2983883,	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ displayID = 66781,	modifiedID = 12,	color = 13822955,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .4, facing = 7*math.pi / 4, pitch = 0, },
				secondaryCamera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = .75, },
				animation = 0,
				tints = {
					{ displayID = 66787,	modifiedID = 13,	color = 13465931,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ displayID = 66786,	modifiedID = 14,	color = 2876068,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ displayID = 66788,	modifiedID = 15,	color = 15580434,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ displayID = 66789,	modifiedID = 16,	color = 14161390,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .4, facing = 7*math.pi / 4, pitch = 0, },
				secondaryCamera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = .75, },
				animation = 0,
				tints = {
					{ displayID = 66790,	modifiedID = 17,	color = 2352725,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ displayID = 66791,	modifiedID = 18,	color = 15581735,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ displayID = 66792,	modifiedID = 19,	color = 9779671,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ displayID = 66793,	modifiedID = 20,	color = 8517880,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .4, facing = 7*math.pi / 4, pitch = 0, },
				secondaryCamera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = .75, },
				animation = 0,
				tints = {
					{ displayID = 66794,	modifiedID = 21,	color = 9057236,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ displayID = 66795,	modifiedID = 22,	color = 3332826,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ displayID = 66796,	modifiedID = 23,	color = 14362155,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ displayID = 66797,	modifiedID = 24,	color = 13184910,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .4, facing = 7*math.pi / 4, pitch = 0, },
				secondaryCamera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = .75, },
				animation = 0,
				tints = {
					{ displayID = 66782,	modifiedID = 25,	color = 3653887,	tooltip = L["TraitRow5Tint1Req_IMC"],	req = { quests = {46065}, achievements = {}, charspecific = true, any = true } },
					{ displayID = 66783,	modifiedID = 26,	color = 10354500,	tooltip = L["TraitRow5Tint2Req_IMC"],	req = { quests = {46065}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ displayID = 66784,	modifiedID = 27,	color = 14953215,	tooltip = L["TraitRow5Tint3Req_IMC"],	req = { quests = {46065}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ displayID = 66785,	modifiedID = 28,	color = 16587541,	tooltip = L["TraitRow5Tint4Req_IMC"],	req = { quests = {46065}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .4, facing = 7*math.pi / 4, pitch = 0, },
				secondaryCamera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = .75, },
				animation = 0,
				tints = {
					{ displayID = 69834,	modifiedID = 29,	color = 9460011,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43652} } },
					{ displayID = 69835,	modifiedID = 30,	color = 0,			tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ displayID = 69833,	modifiedID = 31,	color = 14804457,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ displayID = 69832,	modifiedID = 32,	color = 5590868,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Druid
	[242569] = { -- Guardian (these appearances are based on shapeshift, so something else will have to be devised later)
		itemID = 128821,
		secondary = 128821,
		appearances = {
			[1] = { -- Classic
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .7, facing = 7*math.pi / 4, pitch = 0, },
				secondaryCamera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi/2, pitch = .75, },
				tints = {
					{ displayID = 66686,	modifiedID = 9,		color = 7878111, 	tooltip = L["TraitRow1Tint1Req"].."[PH] Night Elf", req = { quests = {}, achievements = {} } },
					{ displayID = 66693,	modifiedID = 9,		color = 6233864, 	tooltip = L["TraitRow1Tint1Req"].."[PH] Highmountain Tauren, Tauren", req = { quests = {}, achievements = {} } },
					{ displayID = 66683,	modifiedID = 9,		color = 4840150, 	tooltip = L["TraitRow1Tint1Req"].."[PH] Troll, Zandalari Troll", req = { quests = {}, achievements = {} } },
					{ displayID = 66685,	modifiedID = 9,		color = 12137809, 	tooltip = L["TraitRow1Tint1Req"].."[PH] Kul Tiran, Worgen", req = { quests = {}, achievements = {} } },
					{ displayID = 66687,	modifiedID = 10,	color = 13541153,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ displayID = 66688,	modifiedID = 11,	color = 14079702, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ displayID = 66682,	modifiedID = 12,	color = 1525299,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .7, facing = 7*math.pi / 4, pitch = 0, },
				secondaryCamera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi/2, pitch = .75, },
				tints = {
					{ displayID = 66697,	modifiedID = 13,	color = 5992620,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ displayID = 66696,	modifiedID = 14,	color = 5675392,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ displayID = 66698,	modifiedID = 15,	color = 5029219,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ displayID = 66699,	modifiedID = 16,	color = 14042838,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .7, facing = 7*math.pi / 4, pitch = 0, },
				secondaryCamera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi/2, pitch = .75, },
				tints = {
					{ displayID = 66705,	modifiedID = 17,	color = 7926557,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ displayID = 66704,	modifiedID = 18,	color = 3064568,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ displayID = 66706,	modifiedID = 19,	color = 12071158,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ displayID = 66707,	modifiedID = 20,	color = 16189962,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .7, facing = 7*math.pi / 4, pitch = 0, },
				secondaryCamera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi/2, pitch = .75, },
				tints = {
					{ displayID = 66719,	modifiedID = 21,	color = 4646628,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ displayID = 66718,	modifiedID = 22,	color = 16094250,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ displayID = 66717,	modifiedID = 23,	color = 4511604,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ displayID = 66716,	modifiedID = 24,	color = 15737376,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 7, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 1.2, facing = 7*math.pi / 4, pitch = 0, },
				secondaryCamera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi/2, pitch = .75, },
				tints = {
					{ displayID = 74269,	modifiedID = 25,	color = 16645629,	tooltip = L["TraitRow5Tint1Req_THR"],	req = { quests = {45416}, achievements = {}, charspecific = true, any = true } },
					{ displayID = 74270,	modifiedID = 26,	color = 11701531,	tooltip = L["TraitRow5Tint2Req_THR"],	req = { quests = {45416}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ displayID = 74271,	modifiedID = 27,	color = 4602940,	tooltip = L["TraitRow5Tint3Req_THR"],	req = { quests = {45416}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ displayID = 74272,	modifiedID = 28,	color = 8874265,	tooltip = L["TraitRow5Tint4Req_THR"],	req = { quests = {45416}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .7, facing = 7*math.pi / 4, pitch = 0, },
				secondaryCamera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi/2, pitch = .75, },
				tints = {
					{ displayID = 66721,	modifiedID = 29,	color = 8346917,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43653} } },
					{ displayID = 66720,	modifiedID = 30,	color = 4948674,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ displayID = 66722,	modifiedID = 31,	color = 14826299,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ displayID = 66723,	modifiedID = 32,	color = 16777215,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Druid
	[242578] = { -- Balance
		itemID = 128858,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = -12526923, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = -8459948,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = -5941542, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = -1721312,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 13,	color = -12526909,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = -12527023,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = -6666286,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = -282090,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 20,	color = -1,			tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = -12527023,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = -6603316,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 17,	color = -13326639,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 23,	color = -32382,		tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 22,	color = -524416,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 21,	color = -12526894,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 24,	color = -2909614,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 29,	color = -2549276,	tooltip = L["TraitRow5Tint1Req_TC"],	req = { quests = {46127}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = -970190,	tooltip = L["TraitRow5Tint2Req_TC"],	req = { quests = {46127}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 31,	color = -6225921,	tooltip = L["TraitRow5Tint3Req_TC"],	req = { quests = {46127}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 32,	color = -1456592,	tooltip = L["TraitRow5Tint4Req_TC"],	req = { quests = {46127}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 28,	color = -664011,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43651} } },
					{ modifiedID = 26,	color = -4037147,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 27,	color = -1621953,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 25,	color = -11569184,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},

	-- Warrior
	[237749] = { -- Protection
		itemID = 128289,
		secondary = 128288,
		appearances = {
			[1] = { -- Classic
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 12,	color = 13256731, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 6542710,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 9,	color = 3635402, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 11,	color = 9056925,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 16,	color = 10822946,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 13153068,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = 2588395,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 12330987,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 28,	color = 16314894,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 26,	color = 2616127,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 25,	color = 2588395,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 27,	color = 8265410,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 18,	color = 4577901,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 17,	color = 5011930,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 19,	color = 10629571,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 20,	color = 15410986,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 29,	color = 15568151,	tooltip = L["TraitRow5Tint1Req_THR"],	req = { quests = {45416}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = 3507690,	tooltip = L["TraitRow5Tint2Req_THR"],	req = { quests = {45416}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 31,	color = 4778037,	tooltip = L["TraitRow5Tint3Req_THR"],	req = { quests = {45416}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 32,	color = 14884382,	tooltip = L["TraitRow5Tint4Req_THR"],	req = { quests = {45416}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 23,	color = 15378707,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43681} } },
					{ modifiedID = 21,	color = 4626147,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 22,	color = 8975941,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 24,	color = 11216875,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Warrior
	[236772] = { -- Arms
		itemID = 128910,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = -15823458, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = -7150773,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = -9162650, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = -4967641,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 13,	color = -14434121,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = -15532254,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = -8838011,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = -4910587,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 24,	color = -3510016,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 22,	color = -933326,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 23,	color = -3137509,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 21,	color = -7871957,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 18,	color = -11887068,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 17,	color = -16399122,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 19,	color = -3191821,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 20,	color = -1067224,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 25,	color = -11604033,	tooltip = L["TraitRow5Tint1Req_XC"],	req = { quests = {44925}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 26,	color = -9573303,	tooltip = L["TraitRow5Tint2Req_XC"],	req = { quests = {44925}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 27,	color = -8703020,	tooltip = L["TraitRow5Tint3Req_XC"],	req = { quests = {44925}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 28,	color = -1327329,	tooltip = L["TraitRow5Tint4Req_XC"],	req = { quests = {44925}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 32,	color = -912107,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43679} } },
					{ modifiedID = 30,	color = -801193,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = -8393915,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 29,	color = -8446177,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Warrior
	[237746] = { -- Fury
		itemID = 128908,
		secondary = 134553,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = -16354, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = -2280887,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = -7854972, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = -12471975,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 13,	color = -16354,		tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = -1302013,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = -7857532,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = -15484360,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 25,	color = -2238150,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 26,	color = -14367683,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 27,	color = -5692496,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 28,	color = -7134908,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 17,	color = -13054222,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 18,	color = -13969592,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 19,	color = -285430,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 20,	color = -5367786,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 21,	color = -10961472,	tooltip = L["TraitRow5Tint1Req_IMC"],	req = { quests = {46065}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 22,	color = -12996050,	tooltip = L["TraitRow5Tint2Req_IMC"],	req = { quests = {46065}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 23,	color = -6209335,	tooltip = L["TraitRow5Tint3Req_IMC"],	req = { quests = {46065}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 24,	color = -7261642,	tooltip = L["TraitRow5Tint4Req_IMC"],	req = { quests = {46065}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 32,	color = -593911,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43680} } },
					{ modifiedID = 30,	color = -947406,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 29,	color = -13455920,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 31,	color = -908952,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},

	-- Rogue
	[242564] = { -- Subtlety
		itemID = 128476,
		secondary = 128479,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 8187704, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 4099302,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 7359174, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 3857118,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 19,	color = 7749083,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 18,	color = 4287200,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 17,	color = 7266609,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 20,	color = 3989733,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 13,	color = 8708667,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 14,	color = 4647141,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 15,	color = 8009433,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 16,	color = 15199526,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 23,	color = 15277084,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 22,	color = 5577646,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 21,	color = 2152008,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 24,	color = 3117446,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 26,	color = 8037362,	tooltip = L["TraitRow5Tint1Req_XC"],	req = { quests = {44925}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 25,	color = 4780008,	tooltip = L["TraitRow5Tint2Req_XC"],	req = { quests = {44925}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 27,	color = 8207315,	tooltip = L["TraitRow5Tint3Req_XC"],	req = { quests = {44925}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 28,	color = 15332339,	tooltip = L["TraitRow5Tint4Req_XC"],	req = { quests = {44925}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 31,	color = 15237920,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43672} } },
					{ modifiedID = 30,	color = 7068985,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 29,	color = 3399656,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = 15470865,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Rogue
	[242587] = { -- Assassination
		itemID = 128870,
		secondary = 128869,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 10,	color = 16711680, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 9,	color = 7280536,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 5368054, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 16776960,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 15,	color = 16711680,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 10433269,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = 16107805,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 4320243,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 18,	color = 65280,		tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 17,	color = 255,		tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = 16711680,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 20,	color = 4127224,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 22,	color = 16036875,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 21,	color = 255,		tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 23,	color = 4913390,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 24,	color = 16776960,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 29,	color = 11070454,	tooltip = L["TraitRow5Tint1Req_GQC"],	req = { quests = {45526}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = 9890629,	tooltip = L["TraitRow5Tint2Req_GQC"],	req = { quests = {45526}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 31,	color = 10375915,	tooltip = L["TraitRow5Tint3Req_GQC"],	req = { quests = {45526}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 32,	color = 15080733,	tooltip = L["TraitRow5Tint4Req_GQC"],	req = { quests = {45526}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 27,	color = 4252894,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43670} } },
					{ modifiedID = 26,	color = 15671585,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 25,	color = 4153830,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 28,	color = 15724561,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Rogue
	[242588] = { -- Outlaw
		itemID = 128872,
		secondary = 134552,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = -5371382, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = -11782950,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = -8186187, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = -4289730,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 15,	color = -14279134,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = -9815124,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = -1465295,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = -7237265,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 22,	color = -1794761,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 21,	color = -11766293,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 23,	color = -11670549,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 24,	color = -722965,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 26,	color = -6365130,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 25,	color = -12557083,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 27,	color = -647927,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 28,	color = -13964577,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 19,	color = -949116,	tooltip = L["TraitRow5Tint1Req_IMC"],	req = { quests = {46065}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 18,	color = -7579710,	tooltip = L["TraitRow5Tint2Req_IMC"],	req = { quests = {46065}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 17,	color = -12889880,	tooltip = L["TraitRow5Tint3Req_IMC"],	req = { quests = {46065}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 20,	color = -1247714,	tooltip = L["TraitRow5Tint4Req_IMC"],	req = { quests = {46065}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 29,	color = -12876564,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43671} } },
					{ modifiedID = 30,	color = -12197728,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = -1726161,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = -7522082,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},


	-- Death Knight
	[242562] = { -- Blood
		itemID = 128402,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 16723502, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 12390339,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 9370663, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 3793407,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 13,	color = 16717848,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 13763805,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 9502534,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 3070207,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 23,	color = 16730549,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 22,	color = 3866564,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 21,	color = 4313599,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 24,	color = 14482943,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 25,	color = -10290945,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 26,	color = -7602357,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 27,	color = -2014465,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 28,	color = -61,		tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 18,	color = 16715535,	tooltip = L["TraitRow5Tint1Req_THR"],	req = { quests = {45416}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 17,	color = 10223425,	tooltip = L["TraitRow5Tint2Req_THR"],	req = { quests = {45416}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 19,	color = 3669950,	tooltip = L["TraitRow5Tint3Req_THR"],	req = { quests = {45416}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 20,	color = 14876159,	tooltip = L["TraitRow5Tint4Req_THR"],	req = { quests = {45416}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 29,	color = -12721948,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43646} } },
					{ modifiedID = 30,	color = -8591536,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = -9487678,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = -2274742,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Death Knight
	[242563] = { -- Unholy
		itemID = 128403,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 3138349, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 2941171,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 11678188, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 15554105,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 14,	color = 5565489,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = 3254508,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 16730401,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 16777215,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 24,	color = 15723566,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 22,	color = 16736568,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 23,	color = 3538903,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 21,	color = 3199231,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 19,	color = 16752945,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 18,	color = 7859249,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 20,	color = 15220778,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 17,	color = 5165052,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 31,	color = 15346986,	tooltip = L["TraitRow5Tint1Req_IMC"],	req = { quests = {46065}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = 9955666,	tooltip = L["TraitRow5Tint2Req_IMC"],	req = { quests = {46065}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 29,	color = 4233163,	tooltip = L["TraitRow5Tint3Req_IMC"],	req = { quests = {46065}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 32,	color = 15592754,	tooltip = L["TraitRow5Tint4Req_IMC"],	req = { quests = {46065}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 26,	color = 9318892,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43648} } },
					{ modifiedID = 25,	color = 3256556,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 27,	color = 16342826,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 28,	color = 2359283,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Death Knight
	[242559] = { -- Frost
		itemID = 128292,
		secondary = 128293,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 3256556, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 189775,		tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 15516721, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 3271908,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 13,	color = 5884671,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 3271788,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 16425258,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 3269100,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 17,	color = 3256556,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = 3140633,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = 16756275,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 20,	color = 16182072,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 25,	color = 3256556,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 26,	color = 3271758,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 27,	color = 12923372,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 28,	color = 16758311,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 22,	color = 3997653,	tooltip = L["TraitRow5Tint1Req_XC"],	req = { quests = {44925}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 21,	color = 3256556,	tooltip = L["TraitRow5Tint2Req_XC"],	req = { quests = {44925}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 23,	color = 12726271,	tooltip = L["TraitRow5Tint3Req_XC"],	req = { quests = {44925}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 24,	color = 15482929,	tooltip = L["TraitRow5Tint4Req_XC"],	req = { quests = {44925}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 30,	color = 11005024,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43647} } },
					{ modifiedID = 29,	color = 5632492,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = 10506186,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = 14303810,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},

	-- Shaman
	[242593] = { -- Elemental
		itemID = 128935,
		secondary = 128936,
		appearances = {
			[1] = { -- Classic
				camera = { posX = 2.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 2, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 9,	color = 5682687, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = -44545,		tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = -1, 		tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = -128,		tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 2.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 2, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 13,	color = -16515073,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = -14155830,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = -6126520,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = -217,		tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 2.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 2, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 19,	color = -628222,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = -11288576,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 17,	color = -16089158,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 20,	color = -8687122,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 2, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 27,	color = -8628494,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 26,	color = -8323250,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 25,	color = -13648403,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 28,	color = -573127,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 2, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 21,	color = -10892545,	tooltip = L["TraitRow5Tint1Req_IMC"],	req = { quests = {46065}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 22,	color = -14876673,	tooltip = L["TraitRow5Tint2Req_IMC"],	req = { quests = {46065}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 23,	color = -40356,		tooltip = L["TraitRow5Tint3Req_IMC"],	req = { quests = {46065}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 24,	color = -160,		tooltip = L["TraitRow5Tint4Req_IMC"],	req = { quests = {46065}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 32,	color = -14095125,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43673} } },
					{ modifiedID = 30,	color = -6687949,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = -616140,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 29,	color = -13155356,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Shaman
	[242591] = { -- Restoration
		itemID = 128911,
		secondary = 128934,
		appearances = {
			[1] = { -- Classic
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 9,	color = -14700624, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = -8395722,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = -2448068, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = -11788838,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 13,	color = -12862549,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = -10438095,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = -11197228,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = -2111655,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 19,	color = -1052887,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = -12259786,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 17,	color = -9572366,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 20,	color = -3072213,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 23,	color = -12287533,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 22,	color = -1141728,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 21,	color = -8920007,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 24,	color = -2634730,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 25,	color = -13583893,	tooltip = L["TraitRow5Tint1Req_TBRT"],	req = { quests = {46035}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 26,	color = -9633860,	tooltip = L["TraitRow5Tint2Req_TBRT"],	req = { quests = {46035}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 27,	color = -1684917,	tooltip = L["TraitRow5Tint3Req_TBRT"],	req = { quests = {46035}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 28,	color = -1727978,	tooltip = L["TraitRow5Tint4Req_TBRT"],	req = { quests = {46035}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 30,	color = -11741379,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43675} } },
					{ modifiedID = 29,	color = -13091353,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = -6999868,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = -3002834,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Shaman
	[242567] = { -- Enhancement
		itemID = 128819,
		secondary = 128873,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 11190488, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 9511943,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 16769633, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 14844592,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 13,	color = 8052479,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 16768861,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 5963633,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 16738109,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 22,	color = 9895754,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 21,	color = 4456425,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 23,	color = 16762196,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 24,	color = 13648383,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 17,	color = 16745493,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 18,	color = 4259817,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 19,	color = 3075386,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 20,	color = 16726646,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 25,	color = 5042943,	tooltip = L["TraitRow5Tint1Req_GQC"],	req = { quests = {45526}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 26,	color = -9069901,	tooltip = L["TraitRow5Tint2Req_GQC"],	req = { quests = {45526}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 27,	color = 2621326,	tooltip = L["TraitRow5Tint3Req_GQC"],	req = { quests = {45526}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 28,	color = 13168634,	tooltip = L["TraitRow5Tint4Req_GQC"],	req = { quests = {45526}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 32,	color = 3271909,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43674} } },
					{ modifiedID = 30,	color = 15433770,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = 8533229,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 29,	color = 4488680,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},

	-- Hunter
	[246013] = { -- Marksmanship --246013 or 242574
		itemID = 128826,
		appearances = {
			[1] = { -- Classic
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 9,	color = 4186327, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 7140935,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 4496584, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 13916219,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 24,	color = -7579995,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 22,	color = 4957916,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 23,	color = 13382965,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 21,	color = 11641009,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 3*math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 20,	color = 14726704,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = 9103712,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = 9189825,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 17,	color = 4251876,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 16,	color = 7868432,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 13,	color = 4964577,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 15,	color = 14631490,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 14,	color = 14282300,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 3.7, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = 3*math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 29,	color = 3260727,	tooltip = L["TraitRow5Tint1Req_TC"],	req = { quests = {46127}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = 14830773,	tooltip = L["TraitRow5Tint2Req_TC"],	req = { quests = {46127}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 31,	color = 5148636,	tooltip = L["TraitRow5Tint3Req_TC"],	req = { quests = {46127}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 32,	color = 14377273,	tooltip = L["TraitRow5Tint4Req_TC"],	req = { quests = {46127}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = 5*math.pi/4, pitch = -0.75, },
				tints = {
					{ modifiedID = 25,	color = 2459070,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43656} } },
					{ modifiedID = 26,	color = 10483279,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 27,	color = 15539999,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 28,	color = 3204308,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Hunter
	[242566] = { -- Survival
		itemID = 128808,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 15876397, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 12470239,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 3335367, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 14018379,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 15,	color = 14699836,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = 7488970,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = -16711681,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 9040429,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 19,	color = 15876397,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = 3063335,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 17,	color = 3094245,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 20,	color = 3007454,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 21,	color = 3468770,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 22,	color = 8183624,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 23,	color = 4149992,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 24,	color = 15876397,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 29,	color = 2412074,	tooltip = L["TraitRow5Tint1Req_XC"],	req = { quests = {44925}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = 13849839,	tooltip = L["TraitRow5Tint2Req_XC"],	req = { quests = {44925}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 31,	color = 6563771,	tooltip = L["TraitRow5Tint3Req_XC"],	req = { quests = {44925}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 32,	color = 15507519,	tooltip = L["TraitRow5Tint4Req_XC"],	req = { quests = {44925}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 25,	color = 14512207,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43657} } },
					{ modifiedID = 26,	color = 12749187,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 27,	color = 10895581,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 28,	color = 15614997,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Hunter
	[242581] = { -- Beast Mastery
		itemID = 128861,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 3176653, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 9981390,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 13972532, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 14542138,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 13,	color = 5998826,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 13251538,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 15287107,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 10939987,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 23,	color = 10304702,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 22,	color = 7138880,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 21,	color = 4907719,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 24,	color = 15397434,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 20,	color = 14410551,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 18,	color = 3272816,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 19,	color = 14959941,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 17,	color = 3986919,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 28,	color = 14235190,	tooltip = L["TraitRow5Tint1Req_TFWM"],	req = { quests = {45627}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 27,	color = 9257932,	tooltip = L["TraitRow5Tint2Req_TFWM"],	req = { quests = {45627}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 25,	color = 4039121,	tooltip = L["TraitRow5Tint3Req_TFWM"],	req = { quests = {45627}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 26,	color = 8967744,	tooltip = L["TraitRow5Tint4Req_TFWM"],	req = { quests = {45627}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 30,	color = 15906095,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43655} } },
					{ modifiedID = 29,	color = 3647438,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = 13772326,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = 7293000,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},

	-- Priest
	[242573] = { -- Holy
		itemID = 128825,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 2267886, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = -10581453,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = -8181081, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = -2150877,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 13,	color = -14642254,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = -6795078,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = -8513998,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = -2031828,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 18,	color = -1059740,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 17,	color = -6762780,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = -8957506,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 20,	color = -41117,		tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 28,	color = -7063326,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 26,	color = -2324181,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 27,	color = -14919093,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 25,	color = -4256744,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 23,	color = -16735511,	tooltip = L["TraitRow5Tint1Req_TBRT"],	req = { quests = {46035}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 22,	color = -9959933,	tooltip = L["TraitRow5Tint2Req_TBRT"],	req = { quests = {46035}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 21,	color = -8225281,	tooltip = L["TraitRow5Tint3Req_TBRT"],	req = { quests = {46035}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 24,	color = -9392,		tooltip = L["TraitRow5Tint4Req_TBRT"],	req = { quests = {46035}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 30,	color = -1268449,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43668} } },
					{ modifiedID = 29,	color = -9214362,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = -6363950,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = -9654287,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Priest
	[242575] = { -- Shadow
		itemID = 128827,
		secondary = 133958,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 6004187, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 9778147,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 4775111, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 15463408,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 15,	color = 7023546,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 7463221,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = -6183280,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 3531476,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 20,	color = 15144984,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = 2986533,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = 6960054,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 17,	color = 9518140,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 22,	color = 8929508,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 21,	color = 7262259,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 23,	color = 4382149,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 24,	color = 16777215,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 26,	color = -12714089,	tooltip = L["TraitRow5Tint1Req_TC"],	req = { quests = {46127}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 25,	color = -5505025,	tooltip = L["TraitRow5Tint2Req_TC"],	req = { quests = {46127}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 27,	color = 9450975,	tooltip = L["TraitRow5Tint3Req_TC"],	req = { quests = {46127}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 28,	color = 14804548,	tooltip = L["TraitRow5Tint4Req_TC"],	req = { quests = {46127}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 30,	color = 16160515,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43669} } },
					{ modifiedID = 29,	color = 11855925,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = 7736308,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = 16711680,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Priest
	[242585] = { -- Discipline
		itemID = 128868,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = -8467201, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = -4835073,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = -59102, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = -1647284,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 16,	color = -1643226,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = -13640357,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = -2723555,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = -5513756,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 27,	color = -7259484,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 26,	color = -14584816,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 25,	color = -11759397,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 28,	color = -2054101,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 19,	color = -5752895,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 18,	color = -13078481,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 17,	color = -7620370,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 20,	color = -6315899,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 32,	color = -207,		tooltip = L["TraitRow5Tint1Req_TFWM"],	req = { quests = {45627}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = -9439249,	tooltip = L["TraitRow5Tint2Req_TFWM"],	req = { quests = {45627}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 31,	color = -2594874,	tooltip = L["TraitRow5Tint3Req_TFWM"],	req = { quests = {45627}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 29,	color = -25,		tooltip = L["TraitRow5Tint4Req_TFWM"],	req = { quests = {45627}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 22,	color = -6195025,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43667} } },
					{ modifiedID = 21,	color = -14523614,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 23,	color = -9167598,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 24,	color = -2916814,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},

	-- Warlock
	[242598] = { -- Destruction
		itemID = 128941,
		appearances = {
			[1] = { -- Classic
				camera = { posX = 5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 9,	color = 7614128, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 4870381,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 2745662, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 16711680,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 15,	color = 2745662,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 4870381,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = 7614128,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 16711680,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 19,	color = 15725596,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = 1172800,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 17,	color = 7614128,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 20,	color = 16711680,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 21,	color = 7614128,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 22,	color = 4870381,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 23,	color = 2745662,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 24,	color = 16711680,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = .1, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 31,	color = 15730953,	tooltip = L["TraitRow5Tint1Req_TFWM"],	req = { quests = {45627}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = 8338136,	tooltip = L["TraitRow5Tint2Req_TFWM"],	req = { quests = {45627}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 29,	color = 6417702,	tooltip = L["TraitRow5Tint3Req_TFWM"],	req = { quests = {45627}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 32,	color = 14935330,	tooltip = L["TraitRow5Tint4Req_TFWM"],	req = { quests = {45627}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 5.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 28,	color = 16711680,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43678} } },
					{ modifiedID = 26,	color = 4907757,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 27,	color = 2745662,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 25,	color = 7614128,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Warlock
	[242599] = { -- Affliction
		itemID = 128942,
		appearances = {
			[1] = { -- Classic
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 9,	color = 16439925, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 4439624,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 10829783, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 13118749,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 16,	color = 14161945,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 3532867,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 10234844,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = -1585294,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 18,	color = 6089290,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 17,	color = 16769676,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = 10106346,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 20,	color = 13835035,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 25,	color = 2024822,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 26,	color = 15568426,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 27,	color = 6433946,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } }, -- BLIZZ SWAPPED THIS THIS 28
					{ modifiedID = 28,	color = 16124176,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } }, -- BLIZZ SWAPPED THIS THIS 27
				},
			},
			[5] = { -- Challenging
				camera = { posX = 4.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 32,	color = 12457494,	tooltip = L["TraitRow5Tint1Req_TC"],	req = { quests = {46127}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = 15839020,	tooltip = L["TraitRow5Tint2Req_TC"],	req = { quests = {46127}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 31,	color = 8401638,	tooltip = L["TraitRow5Tint3Req_TC"],	req = { quests = {46127}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 29,	color = 1828374,	tooltip = L["TraitRow5Tint4Req_TC"],	req = { quests = {46127}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				tints = {
					{ modifiedID = 24,	color = 12074983,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43676} } },
					{ modifiedID = 22,	color = 4519215,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 21,	color = 2238949,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 23,	color = 15740205,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Warlock
	[242600] = { -- Demonology
		itemID = 128943,
		secondary = 137246,
		appearances = {
			[1] = { -- Classic
				camera = { posX = 8, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.05, facing = 0, pitch = 0, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				animation = 213,
				tints = {
					{ modifiedID = 10,	color = -12506481, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 9,	color = -13834423,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = -837594, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = -3801296,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 8, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.05, facing = 0, pitch = 0, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				animation = 213,
				tints = {
					{ modifiedID = 14,	color = -3334417,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = -10762693,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = -53451,		tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = -1183588,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 8, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.05, facing = 0, pitch = 0, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = math.pi / 2, pitch = -0.75, },
				animation = 213,
				tints = {
					{ modifiedID = 17,	color = -5181882,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = -1821185,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = -31947,		tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 20,	color = -399040,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 8, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.05, facing = 0, pitch = 0, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				animation = 213,
				tints = {
					{ modifiedID = 23,	color = -1087187,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 22,	color = -6951661,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 21,	color = -8589065,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 24,	color = -4975894,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 8, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.05, facing = 0, pitch = 0, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				animation = 213,
				tints = {
					{ modifiedID = 27,	color = -3211264,	tooltip = L["TraitRow5Tint1Req_GQC"],	req = { quests = {45526}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 26,	color = -8639745,	tooltip = L["TraitRow5Tint2Req_GQC"],	req = { quests = {45526}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 25,	color = -13589341,	tooltip = L["TraitRow5Tint3Req_GQC"],	req = { quests = {45526}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 28,	color = -262370,	tooltip = L["TraitRow5Tint4Req_GQC"],	req = { quests = {45526}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 8, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.05, facing = 0, pitch = 0, },
				secondaryCamera = { posX = 3.5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi / 2, pitch = -0.75, },
				animation = 213,
				tints = {
					{ modifiedID = 29,	color = -10433586,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43677} } },
					{ modifiedID = 30,	color = -5196074,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = -10385949,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = -1934476,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},

	-- Monk
	[242595] = { -- Mistweaver
		itemID = 128937,
		appearances = {
			[1] = { -- Classic
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 9,	color = 1493233, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 5038232,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 15801366, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 15593750,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 14,	color = 1503655,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = 1493233,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 15806742,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 15397142,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 20,	color = 15807510,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = 8319254,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = 11885769,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 17,	color = 1493233,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ =0, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 25,	color = 1493233,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 26,	color = 1503543,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 27,	color = 8984305,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 28,	color = 4675056,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 29,	color = 3729879,	tooltip = L["TraitRow5Tint1Req_TBRT"],	req = { quests = {46035}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = 2552102,	tooltip = L["TraitRow5Tint2Req_TBRT"],	req = { quests = {46035}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 31,	color = 15511324,	tooltip = L["TraitRow5Tint3Req_TBRT"],	req = { quests = {46035}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 32,	color = 16447479,	tooltip = L["TraitRow5Tint4Req_TBRT"],	req = { quests = {46035}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 4, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 23,	color = 2075252,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43662} } },
					{ modifiedID = 22,	color = 15828300,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 21,	color = 1455345,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 24,	color = 16716288,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Monk
	[242596] = { -- Brewmaster
		itemID = 128938,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 1370755, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 5424127,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 15082532, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 15651405,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 13,	color = 4707946,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 6789609,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 13970990,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 13820224,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 20,	color = 14343983,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = 4492232,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = 14559529,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 17,	color = 3855469,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 5, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 23,	color = 15283252,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 22,	color = 7249636,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 21,	color = 4381060,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 24,	color = 14673484,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 3.7, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = 0, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 26,	color = 5809634,	tooltip = L["TraitRow5Tint1Req_THR"],	req = { quests = {45416}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 25,	color = 6677627,	tooltip = L["TraitRow5Tint2Req_THR"],	req = { quests = {45416}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 27,	color = 14628149,	tooltip = L["TraitRow5Tint3Req_THR"],	req = { quests = {45416}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 28,	color = 15001147,	tooltip = L["TraitRow5Tint4Req_THR"],	req = { quests = {45416}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 3.6, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.3, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 31,	color = -1678775,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43661} } },
					{ modifiedID = 30,	color = 5102690,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 29,	color = 4544235,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = 6174372,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Monk
	[242597] = { -- Windwalker
		itemID = 128940,
		secondary = 133948,
		appearances = {
			[1] = { -- Classic
				camera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 9,	color = 3977706, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 4710975,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 16728353, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 16771663,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				camera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 16,	color = 16449363,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 7143264,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 16734003,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = 4176098,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				camera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 17,	color = 3466495,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 18,	color = 16398113,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 19,	color = 15066623,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 20,	color = 4186724,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				camera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 23,	color = 14828607,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 22,	color = 6487878,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 21,	color = 5128162,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 24,	color = 16773195,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				camera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 29,	color = 2552749,	tooltip = L["TraitRow5Tint1Req_TFWM"],	req = { quests = {45627}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = 16711680,	tooltip = L["TraitRow5Tint2Req_TFWM"],	req = { quests = {45627}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 31,	color = 12648447,	tooltip = L["TraitRow5Tint3Req_TFWM"],	req = { quests = {45627}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 32,	color = 16765184,	tooltip = L["TraitRow5Tint4Req_TFWM"],	req = { quests = {45627}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				camera = { posX = 3, posY = 0, posZ = 0, targetX = 0, targetY = 0, targetZ = -.1, facing = math.pi/2, pitch = -0.75, },
				tints = {
					{ modifiedID = 25,	color = 4170722,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43673} } },
					{ modifiedID = 26,	color = 5634632,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 27,	color = 16728898,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 28,	color = 13954047,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},

	-- Mage
	[242568] = { -- Fire
		itemID = 128820,
		secondary = 133959,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 15950399, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 8470515,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 5419819, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 9802991,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 16,	color = 15950399,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 6147118,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 9642695,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = 4284145,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 22,	color = 4780859,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 21,	color = 4575473,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 23,	color = 13524967,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 24,	color = 16728085,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 20,	color = 15950399,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 18,	color = 2417512,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 19,	color = 10303436,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 17,	color = 3751385,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 25,	color = 4191186,	tooltip = L["TraitRow5Tint1Req_IMC"],	req = { quests = {46065}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 26,	color = 9240352,	tooltip = L["TraitRow5Tint2Req_IMC"],	req = { quests = {46065}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 27,	color = 12407793,	tooltip = L["TraitRow5Tint3Req_IMC"],	req = { quests = {46065}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 28,	color = 15950399,	tooltip = L["TraitRow5Tint4Req_IMC"],	req = { quests = {46065}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 29,	color = 7327470,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43659} } },
					{ modifiedID = 30,	color = 7874729,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = 15090499,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = 15724491,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Mage
	[242558] = { -- Arcane
		itemID = 127857,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 10432187, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 12,	color = 4439023,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 10,	color = 16645629, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 11,	color = 4711769,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 15,	color = 10564273,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 13,	color = 4439023,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 16777215,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 3207005,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 17,	color = 2320618,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 19,	color = 10692572,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 20,	color = 16777215,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 18,	color = 3666734,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 24,	color = 11680943,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 21,	color = 5143016,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 23,	color = 15767278,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 22,	color = 5630030,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 27,	color = 15267596,	tooltip = L["TraitRow5Tint1Req_GQC"],	req = { quests = {45526}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 26,	color = 11948839,	tooltip = L["TraitRow5Tint2Req_GQC"],	req = { quests = {45526}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 28,	color = 6382171,	tooltip = L["TraitRow5Tint3Req_GQC"],	req = { quests = {45526}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 25,	color = 5143016,	tooltip = L["TraitRow5Tint4Req_GQC"],	req = { quests = {45526}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 29,	color = 9523675,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43658} } },
					{ modifiedID = 30,	color = 15217459,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 31,	color = 4624867,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 32,	color = 14935620,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},
	-- Mage
	[242582] = { -- Frost
		itemID = 128862,
		appearances = {
			[1] = { -- Classic
				tints = {
					{ modifiedID = 9,	color = 2697697, 	tooltip = L["TraitRow1Tint1Req"],	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 5099863,	tooltip = L["TraitRow1Tint2Req"],	req = { quests = {43349, 42213, 40890, 42454}, achievements = {}, any = true } },
					{ modifiedID = 11,	color = 10174674, 	tooltip = L["TraitRow1Tint3Req"],	req = { quests = {44153}, achievements = {} } },
					{ modifiedID = 12,	color = 16711685,	tooltip = L["TraitRow1Tint4Req"],	req = { quests = {42116}, achievements = {} } },
				},
			},
			[2] = { -- Upgraded
				tints = {
					{ modifiedID = 13,	color = 3881451,	tooltip = L["TraitRow2Tint1Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 14,	color = 5099863,	tooltip = L["TraitRow2Tint2Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 15,	color = 10174674,	tooltip = L["TraitRow2Tint3Req"],	req = { quests = {}, achievements = {10746}, charspecific = true } },
					{ modifiedID = 16,	color = 16711685,	tooltip = L["TraitRow2Tint4Req"],	req = { quests = {}, achievements = {10602}, unobtainable = true } },
				},
			},
			[3] = { -- Valorous
				tints = {
					{ modifiedID = 25,	color = 2744738,	tooltip = L["TraitRow3Tint1Req"],	req = { quests = {}, achievements = {10459} } },
					{ modifiedID = 26,	color = 3187001,	tooltip = L["TraitRow3Tint2Req"],	req = { quests = {}, achievements = {10459, 40018} } },
					{ modifiedID = 27,	color = 10174674,	tooltip = L["TraitRow3Tint3Req"],	req = { quests = {}, achievements = {10459, 11162} } },
					{ modifiedID = 28,	color = 15584394,	tooltip = L["TraitRow3Tint4Req"],	req = { quests = {}, achievements = {10459, 11163} } },
				},
			},
			[4] = { -- War-torn
				tints = {
					{ modifiedID = 18,	color = 2487336,	tooltip = L["TraitRow4Tint1Req"],	req = { quests = {}, achievements = {12894} } },
					{ modifiedID = 17,	color = 2697697,	tooltip = L["TraitRow4Tint2Req"],	req = { quests = {}, achievements = {12902} } },
					{ modifiedID = 19,	color = 10174674,	tooltip = L["TraitRow4Tint3Req"],	req = { quests = {}, achievements = {12904} } },
					{ modifiedID = 20,	color = 16711685,	tooltip = L["TraitRow4Tint4Req"],	req = { quests = {}, achievements = {12907} } },
				},
			},
			[5] = { -- Challenging
				tints = {
					{ modifiedID = 29,	color = 6478062,	tooltip = L["TraitRow5Tint1Req_TC"],	req = { quests = {46127}, achievements = {}, charspecific = true, any = true } },
					{ modifiedID = 30,	color = 3066535,	tooltip = L["TraitRow5Tint2Req_TC"],	req = { quests = {46127}, achievements = {11657, 11658, 11659, 11660}, charspecific = true, any = true } },
					{ modifiedID = 31,	color = 2446066,	tooltip = L["TraitRow5Tint3Req_TC"],	req = { quests = {46127}, achievements = {11661, 11662, 11663, 11664}, charspecific = true, any = true } },
					{ modifiedID = 32,	color = 16052207,	tooltip = L["TraitRow5Tint4Req_TC"],	req = { quests = {46127}, achievements = {11665, 11666, 11667, 11668}, charspecific = true, any = true } },
				},
			},
			[6] = { -- Hidden
				tints = {
					{ modifiedID = 21,	color = 14517529,	tooltip = L["TraitRow6Tint1Req"],	req = { quests = {43660} } },
					{ modifiedID = 22,	color = 11999467,	tooltip = L["TraitRow6Tint2Req"],	req = { quests = {}, achievements = {11152}, charspecific = true } },
					{ modifiedID = 23,	color = 11006016,	tooltip = L["TraitRow6Tint3Req"],	req = { quests = {}, achievements = {11153}, charspecific = true } },
					{ modifiedID = 24,	color = 2663653,	tooltip = L["TraitRow6Tint4Req"],	req = { quests = {}, achievements = {11154}, charspecific = true } },
				},
			},
		},
	},

	-- Fishing
	[133755] = {
		itemID = 133755,
		appearances = {
			[1] = {
				tints = {
					{ modifiedID = 9,	color = 16714752, 	tooltip = "[PH] Fishes",	req = { quests = {}, achievements = {} } },
					{ modifiedID = 10,	color = 2088470,	tooltip = "[PH] Complete the achievement, \"Fisherfriend of the Isles.\"",	req = { quests = {48546}, achievements = {} } },
					{ modifiedID = 11,	color = 3361410, 	tooltip = "[PH] Complete the achievement, \"Fisherfriend of the Isles.\"",	req = { quests = {48546}, achievements = {} } },
				},
			},
		},
	},
};

-- artifact appearance row names
rat.ArtifactAppearanceNames = {
	[242556] = {
		class = "DEMONHUNTER",
		spec = "Havoc",
		appearances = {
			[1] = L["TraitRow1_DemonHunter_Havoc_Classic"],
			[2] = L["TraitRow2_DemonHunter_Havoc_Upgraded"],
			[3] = L["TraitRow3_DemonHunter_Havoc_Valorous"],
			[4] = L["TraitRow4_DemonHunter_Havoc_War-torn"],
			[5] = L["TraitRow5_DemonHunter_Havoc_Challenging"],
			[6] = L["TraitRow6_DemonHunter_Havoc_Hidden"],
		},
		icon = "Artifacts-DemonHunter-BG-rune",
		background = "Artifacts-DemonHunter-BG",
	},
	[242577] = {
		class = "DEMONHUNTER",
		spec = "Vengeance",
		appearances = {
			[1] = L["TraitRow1_DemonHunter_Vengeance_Classic"],
			[2] = L["TraitRow2_DemonHunter_Vengeance_Upgraded"],
			[3] = L["TraitRow3_DemonHunter_Vengeance_Valorous"],
			[4] = L["TraitRow4_DemonHunter_Vengeance_War-torn"],
			[5] = L["TraitRow5_DemonHunter_Vengeance_Challenging"],
			[6] = L["TraitRow6_DemonHunter_Vengeance_Hidden"],
		},
		icon = "Artifacts-DemonHunter-BG-rune",
		background = "Artifacts-DemonHunter-BG",
	},

	[242555] = {
		class = "PALADIN",
		spec = "Retribution",
		appearances = {
			[1] = L["TraitRow1_Paladin_Retribution_Classic"],
			[2] = L["TraitRow2_Paladin_Retribution_Upgraded"],
			[3] = L["TraitRow3_Paladin_Retribution_Valorous"],
			[4] = L["TraitRow4_Paladin_Retribution_War-torn"],
			[5] = L["TraitRow5_Paladin_Retribution_Challenging"],
			[6] = L["TraitRow6_Paladin_Retribution_Hidden"],
		},
		icon = "Artifacts-Paladin-BG-rune",
		background = "Artifacts-Paladin-BG",
	},
	[242571] = {
		class = "PALADIN",
		spec = "Holy",
		appearances = {
			[1] = L["TraitRow1_Paladin_Holy_Classic"],
			[2] = L["TraitRow2_Paladin_Holy_Upgraded"],
			[3] = L["TraitRow3_Paladin_Holy_Valorous"],
			[4] = L["TraitRow4_Paladin_Holy_War-torn"],
			[5] = L["TraitRow5_Paladin_Holy_Challenging"],
			[6] = L["TraitRow6_Paladin_Holy_Hidden"],
		},
		icon = "Artifacts-Paladin-BG-rune",
		background = "Artifacts-Paladin-BG",
	},
	[242583] = {
		class = "PALADIN",
		spec = "Protection",
		appearances = {
			[1] = L["TraitRow1_Paladin_Protection_Classic"],
			[2] = L["TraitRow2_Paladin_Protection_Upgraded"],
			[3] = L["TraitRow3_Paladin_Protection_Valorous"],
			[4] = L["TraitRow4_Paladin_Protection_War-torn"],
			[5] = L["TraitRow5_Paladin_Protection_Challenging"],
			[6] = L["TraitRow6_Paladin_Protection_Hidden"],
		},
		icon = "Artifacts-Paladin-BG-rune",
		background = "Artifacts-Paladin-BG",
	},

	--Death Knight
	[242562] = {
		class = "DEATHKNIGHT",
		spec = "Blood",
		appearances = {
			[1] = L["TraitRow1_DeathKnight_Blood_Classic"],
			[2] = L["TraitRow2_DeathKnight_Blood_Upgraded"],
			[3] = L["TraitRow3_DeathKnight_Blood_Valorous"],
			[4] = L["TraitRow4_DeathKnight_Blood_War-torn"],
			[5] = L["TraitRow5_DeathKnight_Blood_Challenging"],
			[6] = L["TraitRow6_DeathKnight_Blood_Hidden"],
		},
		icon = "Artifacts-DeathKnightFrost-BG-rune",
		background = "Artifacts-DeathKnightFrost-BG",
	},
	[242559] = {
		class = "DEATHKNIGHT",
		spec = "Frost",
		appearances = {
			[1] = L["TraitRow1_DeathKnight_Frost_Classic"],
			[2] = L["TraitRow2_DeathKnight_Frost_Upgraded"],
			[3] = L["TraitRow3_DeathKnight_Frost_Valorous"],
			[4] = L["TraitRow4_DeathKnight_Frost_War-torn"],
			[5] = L["TraitRow5_DeathKnight_Frost_Challenging"],
			[6] = L["TraitRow6_DeathKnight_Frost_Hidden"],
		},
		icon = "Artifacts-DeathKnightFrost-BG-rune",
		background = "Artifacts-DeathKnightFrost-BG",
	},
	[242563] = {
		class = "DEATHKNIGHT",
		spec = "Unholy",
		appearances = {
			[1] = L["TraitRow1_DeathKnight_Unholy_Classic"],
			[2] = L["TraitRow2_DeathKnight_Unholy_Upgraded"],
			[3] = L["TraitRow3_DeathKnight_Unholy_Valorous"],
			[4] = L["TraitRow4_DeathKnight_Unholy_War-torn"],
			[5] = L["TraitRow5_DeathKnight_Unholy_Challenging"],
			[6] = L["TraitRow6_DeathKnight_Unholy_Hidden"],
		},
		icon = "Artifacts-DeathKnightFrost-BG-rune",
		background = "Artifacts-DeathKnightFrost-BG",
	},

	--Warrior
	[236772] = {
		class = "WARRIOR",
		spec = "Arms",
		appearances = {
			[1] = L["TraitRow1_Warrior_Arms_Classic"],
			[2] = L["TraitRow2_Warrior_Arms_Upgraded"],
			[3] = L["TraitRow3_Warrior_Arms_Valorous"],
			[4] = L["TraitRow4_Warrior_Arms_War-torn"],
			[5] = L["TraitRow5_Warrior_Arms_Challenging"],
			[6] = L["TraitRow6_Warrior_Arms_Hidden"],
		},
		icon = "Artifacts-Warrior-BG-rune",
		background = "Artifacts-Warrior-BG",
	},
	[237746] = {
		class = "WARRIOR",
		spec = "Fury",
		appearances = {
			[1] = L["TraitRow1_Warrior_Fury_Classic"],
			[2] = L["TraitRow2_Warrior_Fury_Upgraded"],
			[3] = L["TraitRow3_Warrior_Fury_Valorous"],
			[4] = L["TraitRow4_Warrior_Fury_War-torn"],
			[5] = L["TraitRow5_Warrior_Fury_Challenging"],
			[6] = L["TraitRow6_Warrior_Fury_Hidden"],
		},
		icon = "Artifacts-Warrior-BG-rune",
		background = "Artifacts-Warrior-BG",
	},
	[237749] = {
		class = "WARRIOR",
		spec = "Protection",
		appearances = {
			[1] = L["TraitRow1_Warrior_Protection_Classic"],
			[2] = L["TraitRow2_Warrior_Protection_Upgraded"],
			[3] = L["TraitRow3_Warrior_Protection_Valorous"],
			[4] = L["TraitRow4_Warrior_Protection_War-torn"],
			[5] = L["TraitRow5_Warrior_Protection_Challenging"],
			[6] = L["TraitRow6_Warrior_Protection_Hidden"],
		},
		icon = "Artifacts-Warrior-BG-rune",
		background = "Artifacts-Warrior-BG",
	},

	--Hunter
	[242581] = {
		class = "HUNTER",
		spec = "BeastMastery",
		appearances = {
			[1] = L["TraitRow1_Hunter_BeastMastery_Classic"],
			[2] = L["TraitRow2_Hunter_BeastMastery_Upgraded"],
			[3] = L["TraitRow3_Hunter_BeastMastery_Valorous"],
			[4] = L["TraitRow4_Hunter_BeastMastery_War-torn"],
			[5] = L["TraitRow5_Hunter_BeastMastery_Challenging"],
			[6] = L["TraitRow6_Hunter_BeastMastery_Hidden"],
		},
		icon = "Artifacts-Hunter-BG-rune",
		background = "Artifacts-Hunter-BG",
	},
	[246013] = {
		class = "HUNTER",
		spec = "Marksmanship",
		appearances = {
			[1] =L["TraitRow1_Hunter_Marksmanship_Classic"],
			[2] =L["TraitRow2_Hunter_Marksmanship_Upgraded"],
			[3] =L["TraitRow3_Hunter_Marksmanship_Valorous"],
			[4] =L["TraitRow4_Hunter_Marksmanship_War-torn"],
			[5] =L["TraitRow5_Hunter_Marksmanship_Challenging"],
			[6] =L["TraitRow6_Hunter_Marksmanship_Hidden"],
		},
		icon = "Artifacts-Hunter-BG-rune",
		background = "Artifacts-Hunter-BG",
	},
	[242566] = {
		class = "HUNTER",
		spec = "Survival",
		appearances = {
			[1] = L["TraitRow1_Hunter_Survival_Classic"],
			[2] = L["TraitRow2_Hunter_Survival_Upgraded"],
			[3] = L["TraitRow3_Hunter_Survival_Valorous"],
			[4] = L["TraitRow4_Hunter_Survival_War-torn"],
			[5] = L["TraitRow5_Hunter_Survival_Challenging"],
			[6] = L["TraitRow6_Hunter_Survival_Hidden"],
		},
		icon = "Artifacts-Hunter-BG-rune",
		background = "Artifacts-Hunter-BG",
	},

	--Shaman
	[242593] = {
		class = "SHAMAN",
		spec = "Elemental",
		appearances = {
			[1] = L["TraitRow1_Shaman_Elemental_Classic"],
			[2] = L["TraitRow2_Shaman_Elemental_Upgraded"],
			[3] = L["TraitRow3_Shaman_Elemental_Valorous"],
			[4] = L["TraitRow4_Shaman_Elemental_War-torn"],
			[5] = L["TraitRow5_Shaman_Elemental_Challenging"],
			[6] = L["TraitRow6_Shaman_Elemental_Hidden"],
		},
		icon = "Artifacts-Shaman-BG-rune",
		background = "Artifacts-Shaman-BG",
	},
	[242567] = {
		class = "SHAMAN",
		spec = "Enhancement",
		appearances = {
			[1] = L["TraitRow1_Shaman_Enhancement_Classic"],
			[2] = L["TraitRow2_Shaman_Enhancement_Upgraded"],
			[3] = L["TraitRow3_Shaman_Enhancement_Valorous"],
			[4] = L["TraitRow4_Shaman_Enhancement_War-torn"],
			[5] = L["TraitRow5_Shaman_Enhancement_Challenging"],
			[6] = L["TraitRow6_Shaman_Enhancement_Hidden"],
		},
		icon = "Artifacts-Shaman-BG-rune",
		background = "Artifacts-Shaman-BG",
	},
	[242591] = {
		class = "SHAMAN",
		spec = "Restoration",
		appearances = {
			[1] =L["TraitRow1_Shaman_Restoration_Classic"],
			[2] =L["TraitRow2_Shaman_Restoration_Upgraded"],
			[3] =L["TraitRow3_Shaman_Restoration_Valorous"],
			[4] =L["TraitRow4_Shaman_Restoration_War-torn"],
			[5] =L["TraitRow5_Shaman_Restoration_Challenging"],
			[6] =L["TraitRow6_Shaman_Restoration_Hidden"],
		},
		icon = "Artifacts-Shaman-BG-rune",
		background = "Artifacts-Shaman-BG",
	},

	--Druid
	[242578] = {
		class = "DRUID",
		spec = "Balance",
		appearances = {
			[1] = L["TraitRow1_Druid_Balance_Classic"],
			[2] = L["TraitRow2_Druid_Balance_Upgraded"],
			[3] = L["TraitRow3_Druid_Balance_Valorous"],
			[4] = L["TraitRow4_Druid_Balance_War-torn"],
			[5] = L["TraitRow5_Druid_Balance_Challenging"],
			[6] = L["TraitRow6_Druid_Balance_Hidden"],
		},
		icon = "Artifacts-Druid-BG-rune",
		background = "Artifacts-Druid-BG",
	},
	[242580] = {
		class = "DRUID",
		spec = "Feral",
		appearances = {
			[1] = L["TraitRow1_Druid_Feral_Classic"],
			[2] = L["TraitRow2_Druid_Feral_Upgraded"],
			[3] = L["TraitRow3_Druid_Feral_Valorous"],
			[4] = L["TraitRow4_Druid_Feral_War-torn"],
			[5] = L["TraitRow5_Druid_Feral_Challenging"],
			[6] = L["TraitRow6_Druid_Feral_Hidden"],
		},
		icon = "Artifacts-Druid-BG-rune",
		background = "Artifacts-Druid-BG",
	},
	[242569] = {
		class = "DRUID",
		spec = "Guardian",
		appearances = {
			[1] = L["TraitRow1_Druid_Guardian_Classic"],
			[2] = L["TraitRow2_Druid_Guardian_Upgraded"],
			[3] = L["TraitRow3_Druid_Guardian_Valorous"],
			[4] = L["TraitRow4_Druid_Guardian_War-torn"],
			[5] = L["TraitRow5_Druid_Guardian_Challenging"],
			[6] = L["TraitRow6_Druid_Guardian_Hidden"],
		},
		icon = "Artifacts-Druid-BG-rune",
		background = "Artifacts-Druid-BG",
	},
	[242561] = {
		class = "DRUID",
		spec = "Restoration",
		appearances = {
			[1] = L["TraitRow1_Druid_Restoration_Classic"],
			[2] = L["TraitRow2_Druid_Restoration_Upgraded"],
			[3] = L["TraitRow3_Druid_Restoration_Valorous"],
			[4] = L["TraitRow4_Druid_Restoration_War-torn"],
			[5] = L["TraitRow5_Druid_Restoration_Challenging"],
			[6] = L["TraitRow6_Druid_Restoration_Hidden"],
		},
		icon = "Artifacts-Druid-BG-rune",
		background = "Artifacts-Druid-BG",
	},

	--Monk
	[242596] = {
		class = "MONK",
		spec = "Brewmaster",
		appearances = {
			[1] = L["TraitRow1_Monk_Brewmaster_Classic"],
			[2] = L["TraitRow2_Monk_Brewmaster_Upgraded"],
			[3] = L["TraitRow3_Monk_Brewmaster_Valorous"],
			[4] = L["TraitRow4_Monk_Brewmaster_War-torn"],
			[5] = L["TraitRow5_Monk_Brewmaster_Challenging"],
			[6] = L["TraitRow6_Monk_Brewmaster_Hidden"],
		},
		icon = "Artifacts-Monk-BG-rune",
		background = "Artifacts-Monk-BG",
	},
	[242595] = {
		class = "MONK",
		spec = "Mistweaver",
		appearances = {
			[1] = L["TraitRow1_Monk_Mistweaver_Classic"],
			[2] = L["TraitRow2_Monk_Mistweaver_Upgraded"],
			[3] = L["TraitRow3_Monk_Mistweaver_Valorous"],
			[4] = L["TraitRow4_Monk_Mistweaver_War-torn"],
			[5] = L["TraitRow5_Monk_Mistweaver_Challenging"],
			[6] = L["TraitRow6_Monk_Mistweaver_Hidden"],
		},
		icon = "Artifacts-Monk-BG-rune",
		background = "Artifacts-Monk-BG",
	},
	[242597] = {
		class = "MONK",
		spec = "Windwalker",
		appearances = {
			[1] = L["TraitRow1_Monk_Windwalker_Classic"],
			[2] = L["TraitRow2_Monk_Windwalker_Upgraded"],
			[3] = L["TraitRow3_Monk_Windwalker_Valorous"],
			[4] = L["TraitRow4_Monk_Windwalker_War-torn"],
			[5] = L["TraitRow5_Monk_Windwalker_Challenging"],
			[6] = L["TraitRow6_Monk_Windwalker_Hidden"],
		},
		icon = "Artifacts-Monk-BG-rune",
		background = "Artifacts-Monk-BG",
	},

	--Rogue
	[242587] = {
		class = "ROGUE",
		spec = "Assassination",
		appearances = {
			[1] = L["TraitRow1_Rogue_Assassination_Classic"],
			[2] = L["TraitRow2_Rogue_Assassination_Upgraded"],
			[3] = L["TraitRow3_Rogue_Assassination_Valorous"],
			[4] = L["TraitRow4_Rogue_Assassination_War-torn"],
			[5] = L["TraitRow5_Rogue_Assassination_Challenging"],
			[6] = L["TraitRow6_Rogue_Assassination_Hidden"],
		},
		icon = "Artifacts-Rogue-BG-rune",
		background = "Artifacts-Rogue-BG",
	},
	[242588] = {
		class = "ROGUE",
		spec = "Outlaw",
		appearances = {
			[1] = L["TraitRow1_Rogue_Outlaw_Classic"],
			[2] = L["TraitRow2_Rogue_Outlaw_Upgraded"],
			[3] = L["TraitRow3_Rogue_Outlaw_Valorous"],
			[4] = L["TraitRow4_Rogue_Outlaw_War-torn"],
			[5] = L["TraitRow5_Rogue_Outlaw_Challenging"],
			[6] = L["TraitRow6_Rogue_Outlaw_Hidden"],
		},
		icon = "Artifacts-Rogue-BG-rune",
		background = "Artifacts-Rogue-BG",
	},
	[242564] = {
		class = "ROGUE",
		spec = "Subtlety",
		appearances = {
			[1] = L["TraitRow1_Rogue_Subtlety_Classic"],
			[2] = L["TraitRow2_Rogue_Subtlety_Upgraded"],
			[3] = L["TraitRow3_Rogue_Subtlety_Valorous"],
			[4] = L["TraitRow4_Rogue_Subtlety_War-torn"],
			[5] = L["TraitRow5_Rogue_Subtlety_Challenging"],
			[6] = L["TraitRow6_Rogue_Subtlety_Hidden"],
		},
		icon = "Artifacts-Rogue-BG-rune",
		background = "Artifacts-Rogue-BG",
	},

	--Warlock
	[242599] = {
		class = "WARLOCK",
		spec = "Affliction",
		appearances = {
			[1] = L["TraitRow1_Warlock_Affliction_Classic"],
			[2] = L["TraitRow2_Warlock_Affliction_Upgraded"],
			[3] = L["TraitRow3_Warlock_Affliction_Valorous"],
			[4] = L["TraitRow4_Warlock_Affliction_War-torn"],
			[5] = L["TraitRow5_Warlock_Affliction_Challenging"],
			[6] = L["TraitRow6_Warlock_Affliction_Hidden"],
		},
		icon = "Artifacts-Warlock-BG-rune",
		background = "Artifacts-Warlock-BG",
	},
	[242600] = {
		class = "WARLOCK",
		spec = "Demonology",
		appearances = {
			[1] = L["TraitRow1_Warlock_Demonology_Classic"],
			[2] = L["TraitRow2_Warlock_Demonology_Upgraded"],
			[3] = L["TraitRow3_Warlock_Demonology_Valorous"],
			[4] = L["TraitRow4_Warlock_Demonology_War-torn"],
			[5] = L["TraitRow5_Warlock_Demonology_Challenging"],
			[6] = L["TraitRow6_Warlock_Demonology_Hidden"],
		},
		icon = "Artifacts-Warlock-BG-rune",
		background = "Artifacts-Warlock-BG",
	},
	[242598] = {
		class = "WARLOCK",
		spec = "Destruction",
		appearances = {
			[1] = L["TraitRow1_Warlock_Destruction_Classic"],
			[2] = L["TraitRow2_Warlock_Destruction_Upgraded"],
			[3] = L["TraitRow3_Warlock_Destruction_Valorous"],
			[4] = L["TraitRow4_Warlock_Destruction_War-torn"],
			[5] = L["TraitRow5_Warlock_Destruction_Challenging"],
			[6] = L["TraitRow6_Warlock_Destruction_Hidden"],
		},
		icon = "Artifacts-Warlock-BG-rune",
		background = "Artifacts-Warlock-BG",
	},

	--Priest
	[242585] = {
		class = "PRIEST",
		spec = "Discipline",
		appearances = {
			[1] = L["TraitRow1_Priest_Discipline_Classic"],
			[2] = L["TraitRow2_Priest_Discipline_Upgraded"],
			[3] = L["TraitRow3_Priest_Discipline_Valorous"],
			[4] = L["TraitRow4_Priest_Discipline_War-torn"],
			[5] = L["TraitRow5_Priest_Discipline_Challenging"],
			[6] = L["TraitRow6_Priest_Discipline_Hidden"],
		},
		icon = "Artifacts-Priest-BG-rune",
		background = "Artifacts-Priest-BG",
	},
	[242573] = {
		class = "PRIEST",
		spec = "Holy",
		appearances = {
			[1] = L["TraitRow1_Priest_Holy_Classic"],
			[2] = L["TraitRow2_Priest_Holy_Upgraded"],
			[3] = L["TraitRow3_Priest_Holy_Valorous"],
			[4] = L["TraitRow4_Priest_Holy_War-torn"],
			[5] = L["TraitRow5_Priest_Holy_Challenging"],
			[6] = L["TraitRow6_Priest_Holy_Hidden"],
		},
		icon = "Artifacts-Priest-BG-rune",
		background = "Artifacts-Priest-BG",
	},
	[242575] = {
		class = "PRIEST",
		spec = "Shadow",
		appearances = {
			[1] = L["TraitRow1_Priest_Shadow_Classic"],
			[2] = L["TraitRow2_Priest_Shadow_Upgraded"],
			[3] = L["TraitRow3_Priest_Shadow_Valorous"],
			[4] = L["TraitRow4_Priest_Shadow_War-torn"],
			[5] = L["TraitRow5_Priest_Shadow_Challenging"],
			[6] = L["TraitRow6_Priest_Shadow_Hidden"],
		},
		icon = "Artifacts-PriestShadow-BG-rune",
		background = "Artifacts-PriestShadow-BG",
	},

	--Mage
	[242558] = {
		class = "MAGE",
		spec = "Arcane",
		appearances = {
			[1] = L["TraitRow1_Mage_Arcane_Classic"],
			[2] = L["TraitRow2_Mage_Arcane_Upgraded"],
			[3] = L["TraitRow3_Mage_Arcane_Valorous"],
			[4] = L["TraitRow4_Mage_Arcane_War-torn"],
			[5] = L["TraitRow5_Mage_Arcane_Challenging"],
			[6] = L["TraitRow6_Mage_Arcane_Hidden"],
		},
		icon = "Artifacts-MageArcane-BG-rune",
		background = "Artifacts-MageArcane-BG",
	},
	[242568] = {
		class = "MAGE",
		spec = "Fire",
		appearances = {
			[1] = L["TraitRow1_Mage_Fire_Classic"],
			[2] = L["TraitRow2_Mage_Fire_Upgraded"],
			[3] = L["TraitRow3_Mage_Fire_Valorous"],
			[4] = L["TraitRow4_Mage_Fire_War-torn"],
			[5] = L["TraitRow5_Mage_Fire_Challenging"],
			[6] = L["TraitRow6_Mage_Fire_Hidden"],
		},
		icon = "Artifacts-MageArcane-BG-rune",
		background = "Artifacts-MageArcane-BG",
	},
	[242582] = {
		class = "MAGE",
		spec = "Frost",
		appearances = {
			[1] = L["TraitRow1_Mage_Frost_Classic"],
			[2] = L["TraitRow2_Mage_Frost_Upgraded"],
			[3] = L["TraitRow3_Mage_Frost_Valorous"],
			[4] = L["TraitRow4_Mage_Frost_War-torn"],
			[5] = L["TraitRow5_Mage_Frost_Challenging"],
			[6] = L["TraitRow6_Mage_Frost_Hidden"],
		},
		icon = "Artifacts-MageArcane-BG-rune",
		background = "Artifacts-MageArcane-BG",
	},
	[133755] = {
		class = "Adventurer",
		spec = "Fishing",
		appearances = {
			[1] = "[PH] Underlight Angler",
		},
		icon = "Mobile-Fishing",
		background = "Professions-Specializations-Background-Fishing",
	},
};

rat.ClassArtifacts = {
	["WARRIOR"]		 = { 236772, 237746, 237749 },
	["PALADIN"]		 = { 242555, 242571, 242583 },
	["HUNTER"]		 = { 242581, 246013, 242566 },
	["ROGUE"]		 = { 242587, 242588, 242564 },
	["PRIEST"]		 = { 242585, 242573, 242575 },
	["DEATHKNIGHT"]	 = { 242562, 242559, 242563 },
	["SHAMAN"]		 = { 242593, 242567, 242591 },
	["MAGE"]		 = { 242558, 242568, 242582 },
	["WARLOCK"]		 = { 242599, 242600, 242598 },
	["MONK"]		 = { 242596, 242595, 242597 },
	["DRUID"]		 = { 242578, 242580, 242569, 242561 },
	["DEMONHUNTER"]	 = { 242556, 242577 },
	["Adventurer"]	 = { 133755 }, -- Fishing

	["DEBUG"]		 = { -- debug, includes all above IDs
		236772, 237746, 237749,
		242555, 242571, 242583,
		242581, 246013, 242566,
		242587, 242588, 242564,
		242585, 242573, 242575,
		242562, 242559, 242563,
		242593, 242567, 242591,
		242558, 242568, 242582,
		242599, 242600, 242598,
		242596, 242595, 242597,
		242578, 242580, 242569, 242561,
		242556, 242577,
		133755,
	}
};

rat.ClassArtifacts.DEMONHUNTER = rat.ClassArtifacts.DEBUG -- (for testing, do not add to final version)