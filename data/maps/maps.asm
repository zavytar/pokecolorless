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
;	dw MapGroup_Cerulean	  ;  5
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
;map_const ROUTE_2,                                     10, 27 ;  1
;map_const ROUTE_22,                                    20,  9 ;  2
;map_const VIRIDIAN_CITY,                               20, 18 ;  3
;map_const VIRIDIAN_GYM,                                 5,  9 ;  4
;map_const VIRIDIAN_NICKNAME_SPEECH_HOUSE,               4,  4 ;  5
;map_const TRAINER_HOUSE_1F,                             5,  5 ;  6
;map_const VIRIDIAN_MART,                                6,  4 ;  8
;map_const VIRIDIAN_POKECENTER_1F,                       5,  4 ;  9
;map_const VIRIDIAN_POKECENTER_2F_BETA,                  8,  4 ; 10
;map_const ROUTE_2_NUGGET_HOUSE,                         4,  4 ; 11
;map_const ROUTE_2_GATE,                                 5,  4 ; 12
;map_const VICTORY_ROAD_GATE,                           10,  9 ; 13
;viridian gate viridian

MapGroup_Pewter:
;map_const ROUTE_3,                                     30,  9 ;  1
;map_const PEWTER_CITY,                                 20, 18 ;  2
;map_const PEWTER_NIDORAN_SPEECH_HOUSE,                  4,  4 ;  3
;map_const PEWTER_GYM,                                   5,  7 ;  4
;map_const PEWTER_MART,                                  6,  4 ;  5
;map_const PEWTER_POKECENTER_1F,                         5,  4 ;  6
;map_const PEWTER_POKECENTER_2F_BETA,                    8,  4 ;  7
;map_const PEWTER_SNOOZE_SPEECH_HOUSE,                   4,  4 ;  8
;museum 1F
;museum 2F
;viridian gate pewter

MapGroup_Dungeons:
;viridian forest

MapGroup_Indigo:
	map IndigoPlateauPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map WillsRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map KogasRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BrunosRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map KarensRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map LancesRoom, TILESET_CHAMPIONS_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map HallOfFame, TILESET_ICE_PATH, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_NEW_BARK_TOWN, TRUE, PALETTE_DAY, FISHGROUP_SHORE

MapGroup_BattleTower:
	map BattleTowerOutside, TILESET_BATTLE_TOWER_OUTSIDE, ROUTE, LANDMARK_BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map BattleTower1F, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_BATTLE_TOWER, MUSIC_BATTLE_TOWER_LOBBY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerElevator, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_BATTLE_TOWER, MUSIC_NONE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerHallway, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerBattleRoom, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_DAY, FISHGROUP_SHORE

MapGroup_CableClub:
	map Pokecenter2F, TILESET_POKECENTER, INDOOR, SPECIAL_MAP, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TradeCenter, TILESET_GATE, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Colosseum, TILESET_GATE, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TimeCapsule, TILESET_GATE, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map MobileTradeRoom, TILESET_MANSION, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map MobileBattleRoom, TILESET_MANSION, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
