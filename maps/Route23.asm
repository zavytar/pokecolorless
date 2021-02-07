	object_const_def ; object_event constants
	const ROUTE23_OFFICER1 ; CascadeBadge
	const ROUTE23_OFFICER2 ; ThunderBadge
	const ROUTE23_OFFICER3 ; RainbowBadge
	const ROUTE23_OFFICER4 ; SoulBadge
	const ROUTE23_OFFICER5 ; MarshBadge
	const ROUTE23_OFFICER6 ; VolcanoBadge
	const ROUTE23_OFFICER7 ; EarthBadge

Route23_MapScripts:
	db 7 ; scene scripts
	scene_script .DummyScene0 ; SCENE_VIRIDIANCITY_GRAMPS_BLOCK
	scene_script .DummyScene1 ; SCENE_VIRIDIANCITY_GYM_LOCKED
	scene_script .DummyScene2 ; SCENE_VIRIDIANCITY_NOTHING
	scene_script .DummyScene3 ; SCENE_VIRIDIANCITY_GRAMPS_BLOCK
	scene_script .DummyScene4 ; SCENE_VIRIDIANCITY_GYM_LOCKED
	scene_script .DummyScene5 ; SCENE_VIRIDIANCITY_NOTHING
	scene_script .DummyScene6 ; SCENE_VIRIDIANCITY_GRAMPS_BLOCK

	db 0 ; callbacks

.DummyScene0:
.DummyScene1:
.DummyScene2:
.DummyScene3:
.DummyScene4:
.DummyScene5:
.DummyScene6:
	end

Route23_CascadeBadgeCheck:
Route23_Officer1Script:
	faceplayer
	opentext
	writetext Route23_Officer1Text1
	waitbutton
	checkevent ENGINE_CASCADEBADGE
	iftrue .GotCascadeBadge
	writetext Route23_Officer1Text3
	waitbutton
	closetext
	applymovement PLAYER, Route23_PlayerMovement1
	end

.GotCascadeBadge:
	writetext Route23_Officer1Text2
	waitbutton
	closetext
;	setevent EVENT_CASCADEBADGE_CHECK_PASSED
	end


Route23_ThunderBadgeCheck:
Route23_Officer2Script:
	faceplayer
	opentext
	writetext Route23_Officer2Text1
	waitbutton
	checkevent ENGINE_THUNDERBADGE
	iftrue .GotThunderBadge
	writetext Route23_Officer2Text3
	waitbutton
	closetext
	applymovement PLAYER, Route23_PlayerMovement1
	end

.GotThunderBadge:
	writetext Route23_Officer2Text2
	waitbutton
	closetext
;	setevent EVENT_THUNDERBADGE_CHECK_PASSED
	end

Route23_RainbowBadgeCheck:
Route23_Officer3Script:
	faceplayer
	opentext
	writetext Route23_Officer3Text1
	waitbutton
	checkevent ENGINE_RAINBOWBADGE
	iftrue .GotRainbowBadge
	writetext Route23_Officer3Text3
	waitbutton
	closetext
	applymovement PLAYER, Route23_PlayerMovement1
	end

.GotRainbowBadge:
	writetext Route23_Officer3Text2
	waitbutton
	closetext
;	setevent EVENT_RAINBOWBADGE_CHECK_PASSED
	end

Route23_SoulBadgeCheck:
Route23_Officer4Script:
	faceplayer
	opentext
	writetext Route23_Officer4Text1
	waitbutton
	checkevent ENGINE_SOULBADGE
	iftrue .GotSoulBadge
	writetext Route23_Officer4Text3
	waitbutton
	closetext
	applymovement PLAYER, Route23_PlayerMovement1
	end

.GotSoulBadge:
	writetext Route23_Officer4Text2
	waitbutton
	closetext
;	setevent EVENT_SOULBADGE_CHECK_PASSED
	end

Route23_MarshBadgeCheck:
Route23_Officer5Script:
	faceplayer
	opentext
	writetext Route23_Officer5Text1
	waitbutton
	checkevent ENGINE_MARSHBADGE
	iftrue .GotMarshBadge
	writetext Route23_Officer5Text3
	waitbutton
	closetext
	applymovement PLAYER, Route23_PlayerMovement1
	end

.GotMarshBadge:
	writetext Route23_Officer5Text2
	waitbutton
	closetext
;	setevent EVENT_MARSHBADGE_CHECK_PASSED
	end

Route23_VolcanoBadgeCheck:
Route23_Officer6Script:
	faceplayer
	opentext
	writetext Route23_Officer6Text1
	waitbutton
	checkevent ENGINE_VOLCANOBADGE
	iftrue .GotVolcanoBadge
	writetext Route23_Officer6Text3
	waitbutton
	closetext
	applymovement PLAYER, Route23_PlayerMovement1
	end

.GotVolcanoBadge:
	writetext Route23_Officer6Text2
	waitbutton
	closetext
;	setevent EVENT_VOLCANOBADGE_CHECK_PASSED
	end

Route23_EarthBadgeCheck:
Route23_Officer7Script:
	faceplayer
	opentext
	writetext Route23_Officer7Text1
	waitbutton
	checkevent ENGINE_EARTHBADGE
	iftrue .GotEarthBadge
	writetext Route23_Officer7Text3
	waitbutton
	closetext
	applymovement PLAYER, Route23_PlayerMovement1
	end

.GotEarthBadge:
	writetext Route23_Officer7Text2
	waitbutton
	closetext
;	setevent EVENT_EARTHBADGE_CHECK_PASSED
	end


Route23Sign:
	jumptext Route23SignText

Route23VictoryRoadSign:
	jumptext Route23VictoryRoadSignText



Route23_Officer1Text1:
	text "You can only pass"
	line "through here if"
	cont "you've earned the"
	cont "CASCADEBADGE."
	done

Route23_Officer2Text1:
	text "You can only pass"
	line "through here if"
	cont "you've earned the"
	cont "THUNDERBADGE."
	done

Route23_Officer3Text1:
	text "You can only pass"
	line "through here if"
	cont "you've earned the"
	cont "RAINBOWBADGE."
	done

Route23_Officer4Text1:
	text "You can only pass"
	line "through here if"
	cont "you've earned the"
	cont "SOULBADGE."
	done

Route23_Officer5Text1:
	text "You can only pass"
	line "through here if"
	cont "you've earned the"
	cont "MARSHBADGE."
	done

Route23_Officer6Text1:
	text "You can only pass"
	line "through here if"
	cont "you've earned the"
	cont "VOLCANOBADGE."
	done

Route23_Officer7Text1:
	text "You can only pass"
	line "through here if"
	cont "you've earned the"
	cont "EARTHBADGE."
	done

Route23_Officer1Text2:
	text "Oh! That's the"
	line "CASCADEBADGE!"
	cont "Please, go right"
	cont "through!"
	done

Route23_Officer2Text2:
	text "Oh! That's the"
	line "THUNDERBADGE!"
	cont "Please, go right"
	cont "through!"
	done

Route23_Officer3Text2:
	text "Oh! That's the"
	line "RAINBOWBADGE!"
	cont "Please, go right"
	cont "through!"
	done

Route23_Officer4Text2:
	text "Oh! That's the"
	line "SOULBADGE!"
	cont "Please, go right"
	cont "through!"
	done

Route23_Officer5Text2:
	text "Oh! That's the"
	line "MARSHBADGE!"
	cont "Please, go right"
	cont "through!"
	done

Route23_Officer6Text2:
	text "Oh! That's the"
	line "VOLCANOBADGE!"
	cont "Please, go right"
	cont "through!"
	done

Route23_Officer7Text2:
	text "Oh! That's the"
	line "EARTHBADGE!"
	cont "Please, go right"
	cont "through!"
	done

Route23_Officer1Text3:
	text "You don't have the"
	line "CASCADEBADGE."

	para "I can't let you"
	line "through. Come back"
	cont "when you've earned"
	cont "the CASCADEBADGE."
	done

Route23_Officer2Text3:
	text "You don't have the"
	line "THUNDERBADGE."

	para "I can't let you"
	line "through. Come back"
	cont "when you've earned"
	cont "the THUNDERBADGE."
	done

Route23_Officer3Text3:
	text "You don't have the"
	line "RAINBOWBADGE."

	para "I can't let you"
	line "through. Come back"
	cont "when you've earned"
	cont "the RAINBOWBADGE."
	done

Route23_Officer4Text3:
	text "You don't have the"
	line "SOULBADGE."

	para "I can't let you"
	line "through. Come back"
	cont "when you've earned"
	cont "the SOULBADGE."
	done

Route23_Officer5Text3:
	text "You don't have the"
	line "MARSHBADGE."

	para "I can't let you"
	line "through. Come back"
	cont "when you've earned"
	cont "the MARSHBADGE."
	done

Route23_Officer6Text3:
	text "You don't have the"
	line "VOLCANOBADGE."

	para "I can't let you"
	line "through. Come back"
	cont "when you've earned"
	cont "the VOLCANOBADGE."
	done

Route23_Officer7Text3:
	text "You don't have the"
	line "EARTHBADGE."

	para "I can't let you"
	line "through. Come back"
	cont "when you've earned"
	cont "the EARTHBADGE."
	done

Route23SignText:
	text "ROUTE 23"

	para "The road to the"
	line "#MON LEAGUE"
	done

Route23VictoryRoadSignText:
	text "VICTORY ROAD"
	line "AHEAD"
	done

Route23_PlayerMovement1:
	step DOWN
	step_end 

Route23_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	warp_event  9, 115, VICTORY_ROAD_GATE, 3
	warp_event 10, 115, VICTORY_ROAD_GATE, 4

	db 7 ; coord events
	coord_event  7,  8, SCENE_ROUTE23_CASCADEBADGE_CHECK, Route23_CascadeBadgeCheck
	coord_event  7,  9, SCENE_ROUTE23_THUNDERBADGE_CHECK, Route23_ThunderBadgeCheck
	coord_event  7, 10, SCENE_ROUTE23_RAINBOWBADGE_CHECK, Route23_RainbowBadgeCheck
	coord_event  7, 11, SCENE_ROUTE23_SOULBADGE_CHECK, Route23_SoulBadgeCheck
	coord_event  7, 12, SCENE_ROUTE23_MARSHBADGE_CHECK, Route23_MarshBadgeCheck
	coord_event  7, 13, SCENE_ROUTE23_VOLCANOBADGE_CHECK, Route23_VolcanoBadgeCheck
	coord_event  7, 14, SCENE_ROUTE23_EARTHBADGE_CHECK, Route23_EarthBadgeCheck

	db 2 ; bg events
	bg_event  3,  7, BGEVENT_READ, Route23Sign
	bg_event 11, 79, BGEVENT_READ, Route23VictoryRoadSign

	db 7 ; object events
	object_event 15, 101, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Officer1Script, -1 ;CascadeBadge
	object_event  8, 92, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Officer2Script, -1 ; ThunderBadge
	object_event 11, 76, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Officer3Script, -1 ; RainbowBadge
	object_event 11, 57, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Officer4Script, -1 ; SoulBadge
	object_event  6, 50, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Officer5Script, -1 ; MarshBadge
	object_event 13, 22, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Officer6Script, -1 ; VolcanoBadge
	object_event  5, 13, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route23_Officer7Script, -1 ; EarthBadge
