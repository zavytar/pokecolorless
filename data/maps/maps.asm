map: MACRO
;\1: map name: for the MapAttributes pointer (see data/maps/attributes.asm)
;\2: tileset: a TILESET_* constant
;\3: environment: TOWN, ROUTE, INDOOR, CAVE, ENVIRONMENT_5, GATE, or DUNGEON
;\4: location: from constants/landmark_constants.asm
;\5: music: a MUSIC_* constant
;\6: phone service flag: TRUE to prevent phone calls
;\7: time of day: a PALETTE_* constant
;\8: fishing group: a FISHGROUP_* constant
	db BANK(\1_MapAttributes), \2, \3
	dw \1_MapAttributes
	db \4, \5
	dn \6, \7
	db \8
ENDM

MapGroupPointers::
; pointers to the first map of each map group
	dw MapGroup_Pallet      ;  1
	dw MapGroup_Viridian    ;  2
	dw MapGroup_Pewter	    ;  3
	dw MapGroup_Dungeons    ;  4
	dw MapGroup_Cerulean    ;  5
;	dw MapGroup_Vermilion   ;  6
;	dw MapGroup_Lavender    ;  7
;	dw MapGroup_Celadon     ;  8
;	dw MapGroup_Fuchsia		  ;  9
;	dw MapGroup_Cinnabar    ; 10
	dw MapGroup_Indigo	    ; 11
;	dw MapGroup_Saffron   	; 12
	dw MapGroup_BattleTower ; 13
	dw MapGroup_CableClub   ; 14

MapGroup_Pallet:
	map Route1, TILESET_KANTO, ROUTE, ROUTE_1, MUSIC_ROUTE_1, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map PalletTown, TILESET_KANTO, TOWN, PALLET_TOWN, MUSIC_PALLET_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map RedsHouse1F, TILESET_PLAYERS_HOUSE, INDOOR, PALLET_TOWN, MUSIC_PALLET_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map RedsHouse2F, TILESET_PLAYERS_HOUSE, INDOOR, PALLET_TOWN, MUSIC_PALLET_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BluesHouse, TILESET_HOUSE, INDOOR, PALLET_TOWN, MUSIC_PALLET_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OaksLab, TILESET_LAB, INDOOR, PALLET_TOWN, MUSIC_POKEMON_TALK, FALSE, PALETTE_DAY, FISHGROUP_SHORE

MapGroup_Viridian:
	map Route2, TILESET_KANTO, ROUTE, ROUTE_2, MUSIC_ROUTE_2, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route22, TILESET_KANTO, ROUTE, ROUTE_22, MUSIC_ROUTE_3, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ViridianCity, TILESET_KANTO, TOWN, VIRIDIAN_CITY, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ViridianGym, TILESET_TRAIN_STATION, INDOOR, VIRIDIAN_CITY, MUSIC_GYM, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map ViridianNicknameSpeechHouse, TILESET_HOUSE, INDOOR, VIRIDIAN_CITY, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TrainerHouse1F, TILESET_HOUSE, INDOOR, VIRIDIAN_CITY, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map ViridianMart, TILESET_MART, INDOOR, VIRIDIAN_CITY, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map ViridianPokecenter1F, TILESET_POKECENTER, INDOOR, VIRIDIAN_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route2NuggetHouse, TILESET_HOUSE, INDOOR, ROUTE_2, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route2Gate, TILESET_GATE, GATE, ROUTE_2, MUSIC_ROUTE_2, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map VictoryRoadGate, TILESET_GATE, GATE, ROUTE_22, MUSIC_INDIGO_PLATEAU, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map ViridianForestViridianGate, TILESET_GATE, GATE, ROUTE_2, MUSIC_ROUTE_2, FALSE, PALETTE_DAY, FISHGROUP_SHORE

MapGroup_Pewter:
	map Route3, TILESET_KANTO, ROUTE, ROUTE_3, MUSIC_ROUTE_3, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map PewterCity, TILESET_KANTO, TOWN, PEWTER_CITY, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map PewterNidoranSpeechHouse, TILESET_HOUSE, INDOOR, PEWTER_CITY, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PewterGym, TILESET_TOWER, INDOOR, PEWTER_CITY, MUSIC_GYM, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map PewterMart, TILESET_MART, INDOOR, PEWTER_CITY, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PewterPokecenter1F, TILESET_POKECENTER, INDOOR, PEWTER_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PewterSnoozeSpeechHouse, TILESET_HOUSE, INDOOR, PEWTER_CITY, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PewterMuseum1F, TILESET_MUSEUM, INDOOR, PEWTER_CITY, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PewterMuseum2F, TILESET_MUSEUM, INDOOR, PEWTER_CITY, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map ViridianForestPewterGate, TILESET_GATE, GATE, ROUTE_2, MUSIC_ROUTE_2, FALSE, PALETTE_DAY, FISHGROUP_SHORE

MapGroup_Cerulean:
	map Route4, TILESET_KANTO, ROUTE, ROUTE_4, MUSIC_ROUTE_3, FALSE, PALETTE_AUTO, FISHGROUP_SHORE

MapGroup_Dungeons:
	map ViridianForest, TILESET_FOREST, CAVE, VIRIDIAN_FOREST, MUSIC_UNION_CAVE, FALSE, PALETTE_NITE, FISHGROUP_SHORE
	map MountMoonOutside, TILESET_KANTO, TOWN, MT_MOON, MUSIC_VIRIDIAN_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map MountMoonPokecenter1F, TILESET_POKECENTER, INDOOR, PEWTER_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MountMoon1F, TILESET_CAVE, CAVE, MT_MOON, MUSIC_UNION_CAVE, FALSE, PALETTE_NITE, FISHGROUP_SHORE
	map MountMoonB1F, TILESET_CAVE, CAVE, MT_MOON, MUSIC_UNION_CAVE, FALSE, PALETTE_NITE, FISHGROUP_SHORE
	map MountMoonB2F, TILESET_CAVE, CAVE, MT_MOON, MUSIC_UNION_CAVE, FALSE, PALETTE_NITE, FISHGROUP_SHORE

MapGroup_Indigo:
	map IndigoPlateau, TILESET_KANTO, TOWN, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route23, TILESET_KANTO, ROUTE, ROUTE_23, MUSIC_ROUTE_2, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map IndigoPlateauPokecenter1F, TILESET_POKECENTER, INDOOR, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map WillsRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map KogasRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BrunosRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map KarensRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map LancesRoom, TILESET_CHAMPIONS_ROOM, INDOOR, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map HallOfFame, TILESET_ICE_PATH, INDOOR, INDIGO_PLATEAU, MUSIC_NEW_BARK_TOWN, TRUE, PALETTE_DAY, FISHGROUP_SHORE

MapGroup_BattleTower:
	map BattleTowerOutside, TILESET_BATTLE_TOWER_OUTSIDE, ROUTE, BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map BattleTower1F, TILESET_BATTLE_TOWER, INDOOR, BATTLE_TOWER, MUSIC_BATTLE_TOWER_LOBBY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerElevator, TILESET_BATTLE_TOWER, INDOOR, BATTLE_TOWER, MUSIC_NONE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerHallway, TILESET_BATTLE_TOWER, INDOOR, BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerBattleRoom, TILESET_BATTLE_TOWER, INDOOR, BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_DAY, FISHGROUP_SHORE

MapGroup_CableClub:
	map Pokecenter2F, TILESET_POKECENTER, INDOOR, SPECIAL_MAP, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TradeCenter, TILESET_GATE, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Colosseum, TILESET_GATE, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TimeCapsule, TILESET_GATE, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map MobileTradeRoom, TILESET_MANSION, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map MobileBattleRoom, TILESET_MANSION, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
