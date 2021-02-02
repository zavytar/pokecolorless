	object_const_def ; object_event constants
	const VICTORYROADGATE_OFFICER
	const VICTORYROADGATE_OFFICER2
	const VICTORYROADGATE_COOLTRAINERF

VictoryRoadGate_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_VICTORYROADGATE_NOTHING
	scene_script .DummyScene1 ; SCENE_VICTORYROADGATE_CHECKBADGE

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

VictoryRoadGateBadgeCheckScene:
	turnobject PLAYER, LEFT
	sjump VictoryRoadGateBadgeCheckScript

VictoryRoadGateOfficerScript:
	faceplayer
VictoryRoadGateBadgeCheckScript:
	opentext
	writetext VictoryRoadGateOfficerText
	buttonsound
	checkevent ENGINE_BOULDERBADGE
	iftrue .CanGoThrough
	writetext VictoryRoadGateNotEnoughBadgesText
	waitbutton
	closetext
	applymovement PLAYER, VictoryRoadGateStepDownMovement
	setmapscene VIRIDIAN_CITY, SCENE_VIRIDIANCITY_GYM_LOCKED
	clearevent EVENT_VIRIDIAN_GRAMPS_OKAY
	setevent EVENT_VIRIDIAN_GRAMPS_GRUMPY
	checkevent ENGINE_POKEGEAR
	iffalse .SetRedBattle
	end 

.SetRedBattle:
;	checkevent EVENT_BATTLED_RED_ROUTE_22
;	iftrue .DoNothing
	setmapscene ROUTE_22, SCENE_ROUTE22_RED_BATTLE_1
	end 

.DoNothing:
	end

.CanGoThrough:
	writetext VictoryRoadGateEightBadgesText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	end

VictoryRoadGateOfficer2Script:
	jumptextfaceplayer VictoryRoadGateOfficer2Text

VictoryRoadGateCooltrainerFScript:
	jumptextfaceplayer VictoryRoadGateCooltrainerFText

VictoryRoadGateStepDownMovement:
	step DOWN
	step_end

VictoryRoadGateOfficerText:
	text "Only trainers who"
	line "have proven them-"
	cont "selves by earning"
	cont "the BOULDERBADGE"
	cont "may pass."
	done

VictoryRoadGateNotEnoughBadgesText:
	text "You don't have the"
	line "BOULDERBADGE."

	para "I'm sorry, but I"
	line "can't let you go"
	cont "through."
	done

VictoryRoadGateEightBadgesText:
	text "Oh! That's the"
	line "BOULDERBADGE!"

	para "Please, go right"
	line "on through!"
	done

VictoryRoadGateOfficer2Text:
	text "Off to the #MON"
	line "LEAGUE, are you?"

	para "The ELITE FOUR are"
	line "so strong it's"

	para "scary, and they're"
	line "ready for you!"
	done

VictoryRoadGateCooltrainerFText:
	text "If you want to pass"
	line "through this gate,"
	cont "you'll need the"
	cont "BOULDERBADGE."

	para "That's the BADGE"
	line "from PEWTER's GYM."

	para "I think there are"
	line "more officers like"
	cont "this one all over"
	cont "ROUTE 23, too."
	done

VictoryRoadGate_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  7, ROUTE_22, 1
	warp_event  5,  7, ROUTE_22, 1

	db 1 ; coord events
	coord_event  4,  2, SCENE_VICTORYROADGATE_CHECKBADGE, VictoryRoadGateBadgeCheckScene

	db 0 ; bg events

	db 3 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateOfficerScript, -1
	object_event  2,  2, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateOfficer2Script, -1
	object_event  7,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateCooltrainerFScript, -1
