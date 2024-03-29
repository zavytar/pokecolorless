map_attributes: MACRO
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
CURRENT_MAP_WIDTH = \2_WIDTH
CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
connection: MACRO
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

; LEGACY: Support for old connection macro
if _NARG == 6
	connection \1, \2, \3, (\4) - (\5)
else

; Calculate tile offsets for source (current) and target maps
_src = 0
_tgt = (\4) + 3
if _tgt < 0
_src = -_tgt
_tgt = 0
endc

if "\1" == "north"
_blk = \3_WIDTH * (\3_HEIGHT + -3) + _src
_map = _tgt
_win = (\3_WIDTH + 6) * \3_HEIGHT + 1
_y = \3_HEIGHT * 2 - 1
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif "\1" == "south"
_blk = _src
_map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
_win = \3_WIDTH + 7
_y = 0
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif "\1" == "west"
_blk = (\3_WIDTH * _src) + \3_WIDTH + -3
_map = (CURRENT_MAP_WIDTH + 6) * _tgt
_win = (\3_WIDTH + 6) * 2 + -6
_y = (\4) * -2
_x = \3_WIDTH * 2 - 1
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

elif "\1" == "east"
_blk = (\3_WIDTH * _src)
_map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
_win = \3_WIDTH + 7
_y = (\4) * -2
_x = 0
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

else
fail "Invalid direction for 'connection'."
endc

	map_id \3
	dw \2_Blocks + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win
endc
ENDM


	map_attributes PewterCity, PEWTER_CITY, $0f, SOUTH | EAST
	connection south, Route2, ROUTE_2, 5
	connection east, Route3, ROUTE_3, 5

	map_attributes Route2, ROUTE_2, $0f, NORTH | SOUTH
	connection north, PewterCity, PEWTER_CITY, -5
	connection south, ViridianCity, VIRIDIAN_CITY, -5

	map_attributes ViridianCity, VIRIDIAN_CITY, $0f, NORTH | SOUTH | WEST
	connection north, Route2, ROUTE_2, 5
	connection south, Route1, ROUTE_1, 10
	connection west, Route22, ROUTE_22, 4

	map_attributes IndigoPlateau, INDIGO_PLATEAU, $0f, 0 ; SOUTH
;	connection south, Route1, ROUTE_1, 10

	map_attributes Route22, ROUTE_22, $2c, EAST
	connection east, ViridianCity, VIRIDIAN_CITY, -4

	map_attributes Route1, ROUTE_1, $0f, NORTH | SOUTH
	connection north, ViridianCity, VIRIDIAN_CITY, -10
	connection south, PalletTown, PALLET_TOWN, 0

	map_attributes PalletTown, PALLET_TOWN, $0f, NORTH | SOUTH
	connection north, Route1, ROUTE_1, 0
;	connection south, Route21, ROUTE_21, 0

	map_attributes Route3, ROUTE_3, $2c, NORTH | WEST ;| NORTH
	connection north, MountMoonOutside, MOUNT_MOON_OUTSIDE, 21
	connection west, PewterCity, PEWTER_CITY, -5

	map_attributes MountMoonOutside, MOUNT_MOON_OUTSIDE, $2c, SOUTH
	connection south, Route3, ROUTE_3, -21

	map_attributes Route4, ROUTE_4, $2c, EAST
	connection east, CeruleanCity, CERULEAN_CITY, -4

	map_attributes CeruleanCity, CERULEAN_CITY, $2c, WEST
	connection west, Route4, ROUTE_4, 4

	map_attributes Route5, ROUTE_5, $2c, NORTH
	connection north, CeruleanCity, CERULEAN_CITY, 4

	map_attributes CeruleanCity, CERULEAN_CITY, $2c, WEST | NORTH | SOUTH
	connection west, Route4, ROUTE_4, 4
	connection north, Route24, ROUTE_24, 4
;	connection east, Route9, ROUTE_9, 0	
	connection south, Route5, ROUTE_5, 4

	map_attributes CeruleanCity, CERULEAN_CITY, $2c, WEST
	connection west, Route4, ROUTE_4, -4

	map_attributes Route23, ROUTE_23, $0f, $2c

	map_attributes Route24, ROUTE_24, $2c, EAST | SOUTH
	connection east, Route25, ROUTE_25, 4
	connection south, CeruleanCity, CERULEAN_CITY, 4

	map_attributes OaksLab, OAKS_LAB, $00, 0
	map_attributes BluesHouse, BLUES_HOUSE, $00, 0
	map_attributes RedsHouse1F, REDS_HOUSE_1F, $00, 0
	map_attributes RedsHouse2F, REDS_HOUSE_2F, $00, 0

	map_attributes ViridianGym, VIRIDIAN_GYM, $00, 0
	map_attributes ViridianNicknameSpeechHouse, VIRIDIAN_NICKNAME_SPEECH_HOUSE, $00, 0
	map_attributes TrainerHouse1F, TRAINER_HOUSE_1F, $00, 0
	map_attributes ViridianMart, VIRIDIAN_MART, $00, 0
	map_attributes ViridianPokecenter1F, VIRIDIAN_POKECENTER_1F, $00, 0
	map_attributes Route2NuggetHouse, ROUTE_2_NUGGET_HOUSE, $00, 0
	map_attributes Route2Gate, ROUTE_2_GATE, $00, 0
	map_attributes VictoryRoadGate, VICTORY_ROAD_GATE, $00, 0
	map_attributes ViridianForestViridianGate, VIRIDIAN_FOREST_VIRIDIAN_GATE, $00, 0

	map_attributes PewterNidoranSpeechHouse, PEWTER_NIDORAN_SPEECH_HOUSE, $00, 0
	map_attributes PewterGym, PEWTER_GYM, $00, 0
	map_attributes PewterMart, PEWTER_MART, $00, 0
	map_attributes PewterPokecenter1F, PEWTER_POKECENTER_1F, $00, 0
	map_attributes PewterSnoozeSpeechHouse, PEWTER_SNOOZE_SPEECH_HOUSE, $00, 0
	map_attributes PewterMuseum1F, PEWTER_MUSEUM_1F, $00, 0
	map_attributes PewterMuseum2F, PEWTER_MUSEUM_2F, $00, 0
	map_attributes ViridianForestPewterGate, VIRIDIAN_FOREST_PEWTER_GATE, $00, 0

	map_attributes ViridianForest, VIRIDIAN_FOREST, $00, 0
	map_attributes MountMoonPokecenter1F, MOUNT_MOON_POKECENTER_1F, $00, 0
	map_attributes MountMoon1F, MOUNT_MOON_1F, $00, 0
	map_attributes MountMoonB1F, MOUNT_MOON_B1F, $00, 0
	map_attributes MountMoonB2F, MOUNT_MOON_B2F, $00, 0

	map_attributes BikeShop, BIKE_SHOP, $00, 0
	map_attributes CeruleanGym, CERULEAN_GYM, $00, 0
	map_attributes CeruleanMart, CERULEAN_MART, $00, 0
	map_attributes CeruleanPokecenter1F, CERULEAN_POKECENTER_1F, $00, 0	
	map_attributes CeruleanGymBadgeSpeechHouse, CERULEAN_GYM_BADGE_SPEECH_HOUSE, $00, 0
	map_attributes CeruleanMelaniesHouse, CERULEAN_MELANIES_HOUSE, $00, 0
	map_attributes CeruleanTradeSpeechHouse, CERULEAN_TRADE_SPEECH_HOUSE, $00, 0
	map_attributes BillsHouse, BILLS_HOUSE, $00, 0

	map_attributes IndigoPlateauPokecenter1F, INDIGO_PLATEAU_POKECENTER_1F, $00, 0
	map_attributes WillsRoom, WILLS_ROOM, $00, 0
	map_attributes KogasRoom, KOGAS_ROOM, $00, 0
	map_attributes BrunosRoom, BRUNOS_ROOM, $00, 0
	map_attributes KarensRoom, KARENS_ROOM, $00, 0
	map_attributes LancesRoom, LANCES_ROOM, $00, 0
	map_attributes HallOfFame, HALL_OF_FAME, $00, 0

	map_attributes Pokecenter2F, POKECENTER_2F, $00, 0
	map_attributes TradeCenter, TRADE_CENTER, $00, 0
	map_attributes Colosseum, COLOSSEUM, $00, 0
	map_attributes TimeCapsule, TIME_CAPSULE, $00, 0

	map_attributes MobileTradeRoom, MOBILE_TRADE_ROOM, $00, 0
	map_attributes MobileBattleRoom, MOBILE_BATTLE_ROOM, $00, 0

	map_attributes BattleTowerOutside, BATTLE_TOWER_OUTSIDE, $05, 0
	map_attributes BattleTower1F, BATTLE_TOWER_1F, $00, 0
	map_attributes BattleTowerElevator, BATTLE_TOWER_ELEVATOR, $00, 0
	map_attributes BattleTowerHallway, BATTLE_TOWER_HALLWAY, $00, 0
	map_attributes BattleTowerBattleRoom, BATTLE_TOWER_BATTLE_ROOM, $00, 0
