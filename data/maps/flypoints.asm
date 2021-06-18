flypoint: MACRO
	const FLY_\1
	db \2, SPAWN_\1
ENDM

Flypoints:
; landmark, spawn point
	const_def
; Johto
	flypoint NEW_BARK,     NEW_BARK_TOWN
	flypoint BATTLE_TOWER, BATTLE_TOWER


; Kanto
KANTO_FLYPOINT EQU const_value
	flypoint PALLET,       PALLET_TOWN
	flypoint VIRIDIAN,     VIRIDIAN_CITY
	flypoint PEWTER,       PEWTER_CITY
	flypoint CERULEAN,     CERULEAN_CITY
;	flypoint VERMILION,    VERMILION_CITY
;	flypoint ROCK_TUNNEL,  ROCK_TUNNEL
;	flypoint LAVENDER,     LAVENDER_TOWN
;	flypoint CELADON,      CELADON_CITY
;	flypoint SAFFRON,      SAFFRON_CITY
;	flypoint FUCHSIA,      FUCHSIA_CITY
;	flypoint CINNABAR,     CINNABAR_ISLAND
	flypoint INDIGO,       INDIGO_PLATEAU
	db -1
