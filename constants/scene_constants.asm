; See data/maps/scenes.asm for which maps have scene variables.
; Each scene_script and coord_event is associated with a current scene ID.

; Scene variables default to 0.
SCENE_DEFAULT  EQU 0
; Often a map will have a one-time default event for scene 0, and switch to a
; do-nothing scene 1 when the event finishes.
SCENE_FINISHED EQU 1

; wPokecenter2FSceneID
	const_def 1
	const SCENE_POKECENTER2F_LEAVE_TRADE_CENTER       ; 1
	const SCENE_POKECENTER2F_LEAVE_COLOSSEUM          ; 2
	const SCENE_POKECENTER2F_LEAVE_TIME_CAPSULE       ; 3
	const SCENE_POKECENTER2F_LEAVE_MOBILE_TRADE_ROOM  ; 4
	const SCENE_POKECENTER2F_LEAVE_MOBILE_BATTLE_ROOM ; 5

; wOaksLabSceneID, previously wPowerPlantSceneID
	const_def 1
	const SCENE_OAKSLAB_INTRO							; 0
	const SCENE_OAKSLAB_CANT_LEAVE				; 1
	const SCENE_OAKSLAB_NOTHING						; 2
	const SCENE_OAKSLAB_POKEDEX

; wViridianCitySceneID, previously wCeruleanGymSceneID 
	const_def
	const SCENE_VIRIDIANCITY_GRAMPS_BLOCK	; 0
	const SCENE_VIRIDIANCITY_GYM_LOCKED		; 1
	const SCENE_VIRIDIANCITY_NOTHING			; 2

; wRoute25SceneID
	const_def
	const SCENE_ROUTE25_NOTHING     ; 0
	const SCENE_ROUTE25_MISTYS_DATE ; 1

;wRoute22SceneID
	const_def
	const SCENE_ROUTE22_NOTHING
	const SCENE_ROUTE22_RED_BATTLE_1
	const SCENE_ROUTE22_RED_BATTLE_2
	
;wBluesHouseSceneID
	const_def 
	const SCENE_BLUESHOUSE_DAISY_TM27		; 0
	const SCENE_BLUESHOUSE_DAISY_POKEGEAR	; 1	
	const SCENE_BLUESHOUSE_NOTHING			; 2

; wVictoryRoadSceneID
	const_def 
	const SCENE_VICTORYROADGATE_NOTHING       ; 1
	const SCENE_VICTORYROADGATE_CHECKBADGE    ; 2

; wRoute23SceneID
	const_def
	const SCENE_ROUTE23_CASCADEBADGE_CHECK
	const SCENE_ROUTE23_THUNDERBADGE_CHECK
	const SCENE_ROUTE23_RAINBOWBADGE_CHECK
	const SCENE_ROUTE23_SOULBADGE_CHECK
	const SCENE_ROUTE23_MARSHBADGE_CHECK
	const SCENE_ROUTE23_VOLCANOBADGE_CHECK
	const SCENE_ROUTE23_EARTHBADGE_CHECK

; wLancesRoomSceneID
	const_def 1
	const SCENE_LANCESROOM_APPROACH_LANCE ; 1

; wPewterCitySceneID
	const_def
	const SCENE_PEWTERCITY_NO_BADGE      	; 0
	const SCENE_PEWTERCITY_NOTHING		 	; 1

; wCherrygroveCitySceneID
	const_def
	const SCENE_CHERRYGROVECITY_NOTHING    ; 0
	const SCENE_CHERRYGROVECITY_MEET_RIVAL ; 1

; wRoute4SceneID
	const_def 
	const SCENE_ROUTE4_ROCKETS 			; 1
	const SCENE_ROUTE4_NOTHING          ; 2

; wRoute35NationalParkGateSceneID
	const_def
	const SCENE_ROUTE35NATIONALPARKGATE_NOTHING             ; 0
	const SCENE_ROUTE35NATIONALPARKGATE_UNUSED              ; 1
	const SCENE_ROUTE35NATIONALPARKGATE_LEAVE_CONTEST_EARLY ; 2

; wRoute36SceneID
	const_def
	const SCENE_ROUTE36_NOTHING ; 0
	const SCENE_ROUTE36_SUICUNE ; 1

; wRoute36NationalParkGateSceneID
	const_def
	const SCENE_ROUTE36NATIONALPARKGATE_NOTHING             ; 0
	const SCENE_ROUTE36NATIONALPARKGATE_UNUSED              ; 1
	const SCENE_ROUTE36NATIONALPARKGATE_LEAVE_CONTEST_EARLY ; 2

; wAzaleaTownSceneID
	const_def
	const SCENE_AZALEATOWN_NOTHING              ; 0
	const SCENE_AZALEATOWN_RIVAL_BATTLE         ; 1
	const SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL ; 2

; wGoldenrodGymSceneID
	const_def
	const SCENE_GOLDENRODGYM_NOTHING              ; 0
	const SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING ; 1

; wRoute42SceneID
	const_def
	const SCENE_ROUTE42_NOTHING ; 0
	const SCENE_ROUTE42_SUICUNE ; 1

; wCianwoodCitySceneID
	const_def
	const SCENE_CIANWOODCITY_NOTHING            ; 0
	const SCENE_CIANWOODCITY_SUICUNE_AND_EUSINE ; 1

; wBurnedTower1FSceneID
	const_def 1
	const SCENE_BURNEDTOWER1F_RIVAL_BATTLE ; 1
	const SCENE_BURNEDTOWER1F_NOTHING      ; 2

; wRadioTower5FSceneID
	const_def 1
	const SCENE_RADIOTOWER5F_ROCKET_BOSS ; 1
	const SCENE_RADIOTOWER5F_NOTHING     ; 2

; wRuinsOfAlphOutsideSceneID
	const_def
	const SCENE_RUINSOFALPHOUTSIDE_NOTHING       ; 0
	const SCENE_RUINSOFALPHOUTSIDE_GET_UNOWN_DEX ; 1

; wRuinsOfAlphResearchCenterSceneID
	const_def
	const SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING       ; 0
	const SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX ; 1

; wRuinsOfAlphInnerChamberSceneID
	const_def
	const SCENE_RUINSOFALPHINNERCHAMBER_NOTHING          ; 0
	const SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE ; 1

; wMahoganyMart1FSceneID
	const_def
	const SCENE_MAHOGANYMART1F_NOTHING               ; 0
	const SCENE_MAHOGANYMART1F_LANCE_UNCOVERS_STAIRS ; 1

; wTeamRocketBaseB2FSceneID
	const_def 1
	const SCENE_TEAMROCKETBASEB2F_ROCKET_BOSS ; 1
	const SCENE_TEAMROCKETBASEB2F_ELECTRODES  ; 2
	const SCENE_TEAMROCKETBASEB2F_NOTHING     ; 3

; wTeamRocketBaseB3FSceneID
	const_def 1
	const SCENE_TEAMROCKETBASEB3F_RIVAL_ENCOUNTER ; 1
	const SCENE_TEAMROCKETBASEB3F_ROCKET_BOSS     ; 2
	const SCENE_TEAMROCKETBASEB3F_NOTHING         ; 3

; wDragonsDenB1FSceneID
	const_def
	const SCENE_DRAGONSDENB1F_NOTHING        ; 0
	const SCENE_DRAGONSDENB1F_CLAIR_GIVES_TM ; 1

; wOlivinePortSceneID
	const_def 1
	const SCENE_OLIVINEPORT_LEAVE_SHIP ; 1

; wVermilionPortSceneID
	const_def 1
	const SCENE_VERMILIONPORT_LEAVE_SHIP ; 1

; wFastShip1FSceneID
	const_def 1
	const SCENE_FASTSHIP1F_ENTER_SHIP   ; 1
	const SCENE_FASTSHIP1F_MEET_GRANDPA ; 2
