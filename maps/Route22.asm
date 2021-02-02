	object_const_def ; object_event constants
	const ROUTE22_RED
	const ROUTE22_MANKEY

Route22_MapScripts:
	db 3 ; scene scripts
	scene_script .DummyScene1 		; SCENE_ROUTE22_NOTHING
	scene_script .DummyScene2 		; SCENE_ROUTE22_RED_BATTLE_1
	scene_script .DummyScene3 		; SCENE_ROUTE22_RED_BATTLE_2

	db 0 ; callbacks

.DummyScene1:
.DummyScene2:
.DummyScene3:
	end

Route22_OptionalRivalBattleScriptTop:
	moveobject ROUTE22_RED, 26, 4
	appear ROUTE22_RED
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, Route22_PlayerWalksToRed
	opentext
	writetext Route22_PlayerText1
	waitbutton
	pause 15
	writetext Route22_RedText
	waitbutton 
	winlosstext RedRoute22OptWinText, RedRoute22OptLossText
	setlasttalked OAKSLAB_RED
	loadtrainer RIVAL1, RIVAL1_ROUTE22_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_RIVAL_AFTER
	writetext Route22_AfterBattleText1
	waitbutton
	pause 15
	writetext Route22_RedText
	waitbutton 
	applymovement PLAYER, Route22_PlayerLeavesTop
	writetext Route22_PlayerText2
	waitbutton
	closetext
	setscene SCENE_ROUTE22_NOTHING
	end

Route22_OptionalRivalBattleScriptBot:
	moveobject ROUTE22_RED, 26, 5
	appear ROUTE22_RED
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, Route22_PlayerWalksToRed
	opentext
	writetext Route22_PlayerText1
	waitbutton
	pause 15
	writetext Route22_RedText
	waitbutton 
	winlosstext RedRoute22OptWinText, RedRoute22OptLossText
	setlasttalked OAKSLAB_RED
	loadtrainer RIVAL1, RIVAL1_ROUTE22_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_RIVAL_AFTER
	writetext Route22_AfterBattleText1
	waitbutton
	pause 15
	writetext Route22_RedText
	waitbutton 
	applymovement PLAYER, Route22_PlayerLeavesBot
	writetext Route22_PlayerText2
	waitbutton
	closetext
	setscene SCENE_ROUTE22_NOTHING
	end

Route22_RivalBattle6ScriptTop:
	moveobject ROUTE22_RED, 26, 4
	appear ROUTE22_RED
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, Route22_PlayerWalksToRed
	opentext
	writetext Route22_PlayerText1
	waitbutton
	pause 15
	writetext Route22_RedText
	waitbutton 
	end

Route22_RivalBattle6ScriptBot:
	moveobject ROUTE22_RED, 26, 5
	appear ROUTE22_RED
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, Route22_PlayerWalksToRed
	opentext
	writetext Route22_PlayerText1
	waitbutton
	pause 15
	writetext Route22_RedText
	waitbutton 
	end

VictoryRoadEntranceSign:
	jumptext VictoryRoadEntranceSignText

VictoryRoadEntranceSignText:
	text "#MON LEAGUE"

	para "VICTORY ROAD"
	line "ENTRANCE"
	done

Route22_PlayerText1:
	text "<PLAYER>: Hey!"
	line "<RIVAL>!"

	para "You're going to"
	line "#MON LEAGUE?"

	para "Forget it! You"
	line "probably don't"
	line "have any BADGES!"

	para "The guard won't"
	line "let you through!"

	para "By the way, did"
	line "your #MON get"
	cont "any stronger?"
	done

Route22_PlayerText2:
	text "Next stop,"
	line "PEWTER CITY!"

	para "I'll get that"
	line "BADGE in no time!"
	done 

Route22_RedText:
	text "<RIVAL>: <……>"
	line "<……>"
	done

RedRoute22OptWinText:
	text "<RIVAL>: <……>"

	para "<PLAYER>: Yeah!"
	line "Am I great or"
	cont "what?"
	done

RedRoute22OptLossText:
	text "<RIVAL>: <……>"

	para "<PLAYER>: Awwww!"
	line "You just lucked"
	cont "out!"
	done

Route22_AfterBattleText1:
	text "<PLAYER>: I heard"
	line "#MON LEAGUE"
	cont "has many tough"
	cont "trainers!"

	para "I have to figure"
	line "out how to get"
	cont "past them!"

	para "You should quit"
	line "dawdling and get"
	cont "a move on!"
	done

Route22_PlayerWalksToRed:
	step RIGHT
	step RIGHT 
	step RIGHT 
	step RIGHT 
	step_end 

Route22_PlayerLeavesTop:
	step DOWN 
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step_end

Route22_PlayerLeavesBot:
	step UP 
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step_end

Route22_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 13,  5, VICTORY_ROAD_GATE, 1

	db 4 ; coord events
	coord_event 22,  4, SCENE_ROUTE22_RED_BATTLE_1, Route22_OptionalRivalBattleScriptTop	; optional Rival battle, early game 
	coord_event 22,  5, SCENE_ROUTE22_RED_BATTLE_1, Route22_OptionalRivalBattleScriptBot	; optional Rival battle, early game 
	coord_event 22,  4, SCENE_ROUTE22_RED_BATTLE_2, Route22_RivalBattle6ScriptTop			; Rival battle after getting the 8 badges
	coord_event 22,  5, SCENE_ROUTE22_RED_BATTLE_2, Route22_RivalBattle6ScriptBot			; Rival battle after getting the 8 badges 

	db 1 ; bg events
	bg_event 15,  7, BGEVENT_READ, VictoryRoadEntranceSign

	db 1 ; object events
	object_event  0,  0, SPRITE_SILVER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1; Red
;	object_event 31,  8, SPRITE_MONSTER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1; Mankey
