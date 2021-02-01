	object_const_def ; object_event constants
	const ROUTE22_RED
	const ROUTE22_MANKEY

Route22_MapScripts:
	db 0 ; scene scripts
	scene_script .DummyScene1 		; SCENE_ROUTE22_NOTHING
	scene_script .DummyScene2 		; SCENE_ROUTE22_RED_BATTLE_1
	scene_script .DummyScene3 		; SCENE_ROUTE22_RED_BATTLE_2

	db 0 ; callbacks

.DummyScene1:
.DummyScene2:
.DummyScene3:
	end

Route22_OptionalRivalBattleScript:
Route22_RivalBattle6Script:
	end

VictoryRoadEntranceSign:
	jumptext VictoryRoadEntranceSignText

VictoryRoadEntranceSignText:
	text "#MON LEAGUE"

	para "VICTORY ROAD"
	line "ENTRANCE"
	done

Route22_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 13,  5, VICTORY_ROAD_GATE, 1

	db 4 ; coord events
	coord_event  4,  6, SCENE_ROUTE22_RED_BATTLE_1, Route22_OptionalRivalBattleScript	; optional Rival battle, early game 
	coord_event  5,  6, SCENE_ROUTE22_RED_BATTLE_1, Route22_OptionalRivalBattleScript	; optional Rival battle, early game 
	coord_event  4,  7, SCENE_ROUTE22_RED_BATTLE_2, Route22_RivalBattle6Script			; Rival battle after getting the 8 badges
	coord_event  5,  7, SCENE_ROUTE22_RED_BATTLE_2, Route22_RivalBattle6Script			; Rival battle after getting the 8 badges 

	db 1 ; bg events
	bg_event 15,  7, BGEVENT_READ, VictoryRoadEntranceSign

	db 2 ; object events
	object_event  0,  0, SPRITE_SILVER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1; Red
	object_event 31,  8, SPRITE_MONSTER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1; Mankey
