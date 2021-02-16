	object_const_def ; object_event constants
;	const ROUTE4_ROCKET1
;	const ROUTE4_ROCKET2
;	const ROUTE4_ROCKET3
;	const ROUTE4_ROCKET4
	const ROUTE4_LASS1
	const ROUTE4_TM
	const ROUTE4_POKE_BALL

Route4_MapScripts:
	db 0 ; scene scripts
; Rockets

	db 0 ; callbacks

;TrainerLass:
;	trainer LASS, HOPE, EVENT_BEAT_PICNICKER_HOPE, PicnickerHopeSeenText, PicnickerHopeBeatenText, 0, .Script

;.Script:
;	endifjustbattled
;	opentext
;	writetext PicnickerHopeAfterBattleText
;	waitbutton
;	closetext
;	end


Route4_Sign:
	jumptext Route4_SignText

Route4HPUp:
	itemball HP_UP

Route4HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_ROUTE_4_HIDDEN_ULTRA_BALL

PicnickerHopeSeenText:
	text "I have a feeling"
	line "that I can win."

	para "Let's see if I'm"
	line "right!"
	done

PicnickerHopeBeatenText:
	text "Aww, you are too"
	line "strong."
	done

PicnickerHopeAfterBattleText:
	text "I heard CLEFAIRY"
	line "appear at MT.MOON."

	para "But where could"
	line "they be?"
	done

Route4_SignText:
	text "ROUTE 4"

	para "EAST to"
	line "CERULEAN"
	done

Route4_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  2,  5, MOUNT_MOON_1F, 4

	db 0 ; coord events
; rockets 


	db 2 ; bg events
	bg_event  3,  7, BGEVENT_READ, MtMoonSquareSign
	bg_event 10,  3, BGEVENT_ITEM, Route4HiddenUltraBall

	db 3 ; object events
	object_event 30,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerHope, -1
	object_event 22,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, Route4_TM, -1
	object_event 26,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4HPUp, EVENT_ROUTE_4_HP_UP
