spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants

	spawn OAKS_LAB,				             4,  3
	spawn VIRIDIAN_POKECENTER_1F,      5,  3

	spawn PALLET_TOWN,                 5,  6
	spawn VIRIDIAN_CITY,              23, 26
	spawn PEWTER_CITY,                13, 26


	spawn NEW_BARK_TOWN,              13,  6
	spawn BATTLE_TOWER_OUTSIDE,				 8, 10
	spawn NONE,												 6,  2
	spawn N_A,                        -1, -1
