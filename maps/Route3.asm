	object_const_def ; object_event constants
	const ROUTE3_YOUNGSTER1
	const ROUTE3_YOUNGSTER2
	const ROUTE3_LASS1
	const ROUTE3_LASS2
	const ROUTE3_LASS3
	const ROUTE3_BUGCATCHER1
	const ROUTE3_BUGCATCHER2
	const ROUTE3_BUGCATCHER3
	const ROUTE3_COOLTRAINERM1


Route3_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerYoungster1:
	trainer YOUNGSTER, YOUNGSTER_BEN, EVENT_BEAT_YOUNGSTER_BEN, FirebreatherOtisSeenText, FirebreatherOtisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungster2:
	trainer YOUNGSTER, YOUNGSTER_CALVIN, EVENT_BEAT_YOUNGSTER_CALVIN, FirebreatherOtisSeenText, FirebreatherOtisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterBattleText
	waitbutton
	closetext
	end

TrainerLassJanice:
	trainer LASS, JANICE, EVENT_BEAT_LASS_JANICE, FirebreatherOtisSeenText, FirebreatherOtisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterBattleText
	waitbutton
	closetext
	end

TrainerLassSally:
	trainer LASS, SALLY, EVENT_BEAT_LASS_SALLY, FirebreatherOtisSeenText, FirebreatherOtisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterBattleText
	waitbutton
	closetext
	end

TrainerLassRobin:
	trainer LASS, ROBIN, EVENT_BEAT_LASS_ROBIN, FirebreatherOtisSeenText, FirebreatherOtisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterBattleText
	waitbutton
	closetext
	end

TrainerBugcatcher11:
	trainer BUG_CATCHER, OTIS, EVENT_BEAT_BUG_CATCHER_BENNY, FirebreatherOtisSeenText, FirebreatherOtisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterBattleText
	waitbutton
	closetext
	end

TrainerBugcatcher12:
	trainer BUG_CATCHER, OTIS, EVENT_BEAT_FIREBREATHER_OTIS, FirebreatherOtisSeenText, FirebreatherOtisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterBattleText
	waitbutton
	closetext
	end

TrainerBugcatcher13:
	trainer BUG_CATCHER, OTIS, EVENT_BEAT_FIREBREATHER_OTIS, FirebreatherOtisSeenText, FirebreatherOtisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterBattleText
	waitbutton
	closetext
	end

Route3_CooltrainerMScript:
	jumptextfaceplayer Route3_CooltrainerMText

Route3Sign:
	jumptext Route3SignText


FirebreatherOtisSeenText:
	text "Ah! The weather's"
	line "as fine as ever."
	done

FirebreatherOtisBeatenText:
	text "It's sunny, but"
	line "I'm all wet…"
	done

FirebreatherOtisAfterBattleText:
	text "When it rains,"
	line "it's hard to get"
	cont "ignition…"
	done

Route3_CooltrainerMText:
	text "Whew…"

	para "That tunnel to"
	line "CERULEAN takes"
	cont "a lot outta you!"
	done 

Route3SignText:
	text "ROUTE 3"

	para "MOUNT MOON"
	line "AHEAD"
	done

Route3_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events
;	warp_event 58,  3, MOUNT_MOON, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 49, 13, BGEVENT_READ, Route3Sign

	db 9 ; object events
	object_event 10,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerYoungster1, -1 ; YOUNGSTER 1
	object_event 18,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungster2, -1 ; YOUNGSTER 2
	object_event 12,  7, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassJanice, -1 ; LASS 1
	object_event 26, 12, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerLassSally, -1 ; LASS 2
	object_event 26, 13, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerLassRobin, -1 ; LASS 3
	object_event  6,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBugcatcher11, -1 ; BUG CATCHER 1
	object_event 16,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugcatcher12, -1 ; BUG CATCHER 2
	object_event 20,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBugcatcher13, -1 ; BUG CATCHER 3
	object_event 47, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 3, Route3_CooltrainerMScript, -1 ; COOLTRAINER M
