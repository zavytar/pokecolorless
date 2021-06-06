scene_var: MACRO
; map, variable
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var POKECENTER_2F,                               wPokecenter2FSceneID
	scene_var TRADE_CENTER,                                wTradeCenterSceneID
	scene_var COLOSSEUM,                                   wColosseumSceneID
	scene_var TIME_CAPSULE,                                wTimeCapsuleSceneID

	scene_var OAKS_LAB,                             	   wOaksLabSceneID ; previously wPowerPlantSceneID
	scene_var VIRIDIAN_CITY,                               wViridianCitySceneID ; previously wCeruleanGymSceneID
	scene_var ROUTE_22,									   wRoute22SceneID
	scene_var VICTORY_ROAD_GATE,						   wVictoryRoadGateSceneID
	scene_var ROUTE_23,									   wRoute23SceneID 

	scene_var INDIGO_PLATEAU_POKECENTER_1F,                wIndigoPlateauPokecenter1FSceneID
	scene_var WILLS_ROOM,                                  wWillsRoomSceneID
	scene_var KOGAS_ROOM,                                  wKogasRoomSceneID
	scene_var BRUNOS_ROOM,                                 wBrunosRoomSceneID
	scene_var KARENS_ROOM,                                 wKarensRoomSceneID
	scene_var LANCES_ROOM,                                 wLancesRoomSceneID
	scene_var HALL_OF_FAME,                                wHallOfFameSceneID

	scene_var PEWTER_CITY,								   wPewterCitySceneID

	scene_var BLUES_HOUSE,         			               wBluesHouseSceneID
	scene_var ROUTE_4,									   wRoute4SceneID
;	scene_var CIANWOOD_CITY,                               wCianwoodCitySceneID
	scene_var BATTLE_TOWER_1F,                             wBattleTower1FSceneID
	scene_var BATTLE_TOWER_BATTLE_ROOM,                    wBattleTowerBattleRoomSceneID
	scene_var BATTLE_TOWER_ELEVATOR,                       wBattleTowerElevatorSceneID
	scene_var BATTLE_TOWER_HALLWAY,                        wBattleTowerHallwaySceneID
	scene_var BATTLE_TOWER_OUTSIDE,                        wBattleTowerOutsideSceneID ; unused

;	scene_var FAST_SHIP_1F,                                wFastShip1FSceneID
;	scene_var FAST_SHIP_B1F,                               wFastShipB1FSceneID

;	scene_var MOUNT_MOON_SQUARE,                           wMountMoonSquareSceneID
	scene_var MOBILE_TRADE_ROOM,                           wMobileTradeRoomSceneID
	scene_var MOBILE_BATTLE_ROOM,                          wMobileBattleRoomSceneID
	db -1 ; end
