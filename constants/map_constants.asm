newgroup: MACRO
const_value = const_value + 1
	enum_start 1
ENDM

map_const: MACRO
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
GROUP_\1 EQU const_value
	enum MAP_\1
\1_WIDTH EQU \2
\1_HEIGHT EQU \3
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup                                                      ;  1 (MapGroup_Pallet)

	map_const ROUTE_1,                                     10, 18 ;  1
	map_const PALLET_TOWN,                                 10,  9 ;  2
	map_const REDS_HOUSE_1F,                                4,  4 ;  3
	map_const REDS_HOUSE_2F,                                4,  4 ;  4
	map_const BLUES_HOUSE,                                  4,  4 ;  5
	map_const OAKS_LAB,                                     5,  6 ;  6
	map_const NEW_BARK_TOWN,																5,	5 ;	 7

	newgroup                                                      ;  2 (MapGroup_Viridian)

	map_const ROUTE_2,                                     10, 27 ;  1
	map_const ROUTE_22,                                    20,  9 ;  2
	map_const VIRIDIAN_CITY,                               20, 18 ;  3
	map_const VIRIDIAN_GYM,                                 5,  9 ;  4
	map_const VIRIDIAN_NICKNAME_SPEECH_HOUSE,               4,  4 ;  5
	map_const TRAINER_HOUSE_1F,                             5,  5 ;  6
	map_const VIRIDIAN_MART,                                6,  4 ;  7
	map_const VIRIDIAN_POKECENTER_1F,                       5,  4 ;  8
	map_const VIRIDIAN_POKECENTER_2F_BETA,                  8,  4 ;  9
	map_const ROUTE_2_NUGGET_HOUSE,                         4,  4 ; 10
	map_const ROUTE_2_GATE,                                 5,  4 ; 11
	map_const VICTORY_ROAD_GATE,                           	5, 	4 ; 12
	map_const VIRIDIAN_FOREST_VIRIDIAN_GATE,				5,	4 ; 13

	newgroup                                                      ;  3 (MapGroup_Pewter)

	map_const ROUTE_3,                                     30,  9 ;  1
	map_const PEWTER_CITY,                                 20, 18 ;  2
	map_const PEWTER_NIDORAN_SPEECH_HOUSE,                  4,  4 ;  3
	map_const PEWTER_GYM,                                   5,  7 ;  4
	map_const PEWTER_MART,                                  6,  4 ;  5
	map_const PEWTER_POKECENTER_1F,                         5,  4 ;  6
	map_const PEWTER_POKECENTER_2F_BETA,                    8,  4 ;  7
	map_const PEWTER_SNOOZE_SPEECH_HOUSE,                   4,  4 ;  8
	map_const PEWTER_MUSEUM_1F,															5,  5 ;  9
	map_const PEWTER_MUSEUM_2F,															5,  5 ; 10
	map_const VIRIDIAN_FOREST_PEWTER_GATE,									5,	4	;	11

	newgroup                                                      ;  4 (MapGroup_Dungeons)

	map_const VIRIDIAN_FOREST,													 	 17,	24 ; 1

	newgroup                                                      ; 11 (MapGroup_Indigo)

	map_const INDIGO_PLATEAU,															 10,  9 ;  1
	map_const ROUTE_23,                                    10,  9 ;  2
	map_const INDIGO_PLATEAU_POKECENTER_1F,                 9,  7 ;  3
	map_const WILLS_ROOM,                                   5,  9 ;  4
	map_const KOGAS_ROOM,                                   5,  9 ;  5
	map_const BRUNOS_ROOM,                                  5,  9 ;  6
	map_const KARENS_ROOM,                                  5,  9 ;  7
	map_const LANCES_ROOM,                                  5, 12 ;  8
	map_const HALL_OF_FAME,                                 5,  7 ;  9


	newgroup                                                      ; 13 (MapGroup_BattleTower)

	map_const BATTLE_TOWER_1F,                              8,  5 ; 11
	map_const BATTLE_TOWER_BATTLE_ROOM,                     4,  4 ; 12
	map_const BATTLE_TOWER_ELEVATOR,                        2,  2 ; 13
	map_const BATTLE_TOWER_HALLWAY,                        11,  2 ; 14
	map_const ROUTE_40_BATTLE_TOWER_GATE,                   5,  4 ; 15
	map_const BATTLE_TOWER_OUTSIDE,                        10, 14 ; 16

	newgroup                                                      ; 14 (MapGroup_CableClub)

	map_const POKECENTER_2F,                                8,  4 ;  1
	map_const TRADE_CENTER,                                 5,  4 ;  2
	map_const COLOSSEUM,                                    5,  4 ;  3
	map_const TIME_CAPSULE,                                 5,  4 ;  4
	map_const MOBILE_TRADE_ROOM,                            5,  4 ;  5
	map_const MOBILE_BATTLE_ROOM,                           5,  4 ;  6
