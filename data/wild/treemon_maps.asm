treemon_map: MACRO
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:

	db -1

RockMonMaps:
	treemon_map VIRIDIAN_CITY,         TREEMON_SET_ROCK
	db -1
