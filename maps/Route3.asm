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
	trainer YOUNGSTER, YOUNGSTER_BEN, EVENT_BEAT_YOUNGSTER_BEN, Youngster1SeenText, Youngster1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Youngster1AfterBattleText
	waitbutton
	closetext
	end

TrainerYoungster2:
	trainer YOUNGSTER, YOUNGSTER_CALVIN, EVENT_BEAT_YOUNGSTER_CALVIN, Youngster2SeenText, Youngster2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Youngster2AfterBattleText
	waitbutton
	closetext
	end

TrainerLassJanice:
	trainer LASS, JANICE, EVENT_BEAT_LASS_JANICE, Lass1SeenText, Lass1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Lass1AfterBattleText
	waitbutton
	closetext
	end

TrainerLassSally:
	trainer LASS, SALLY, EVENT_BEAT_LASS_SALLY, Lass2SeenText, Lass2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterBattleText
	waitbutton
	closetext
	end

TrainerLassRobin:
	trainer LASS, ROBIN, EVENT_BEAT_LASS_ROBIN, Lass3SeenText, Lass3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Lass3AfterBattleText
	waitbutton
	closetext
	end

TrainerBugcatcher11:
	trainer BUG_CATCHER, OTIS, EVENT_BEAT_BUG_CATCHER_BENNY, BugCatcher11SeenText, BugCatcher11BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcher11AfterBattleText
	waitbutton
	closetext
	end

TrainerBugcatcher12:
	trainer BUG_CATCHER, OTIS, EVENT_BEAT_FIREBREATHER_OTIS, BugCatcher12SeenText, BugCatcher12BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcher12AfterBattleText
	waitbutton
	closetext
	end

TrainerBugcatcher13:
	trainer BUG_CATCHER, OTIS, EVENT_BEAT_FIREBREATHER_OTIS, BugCatcher13SeenText, BugCatcher13BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcher13AfterBattleText
	waitbutton
	closetext
	end

Route3_CooltrainerMScript:
	jumptextfaceplayer Route3_CooltrainerMText

Route3Sign:
	jumptext Route3SignText

Youngster1SeenText:
	text "Hi! I like shorts!"
	line "They're comfy and"
	cont "easy to wear!"
	done

Youngster1BeatenText:
	text "I don't"
	line "believe it!"
	done

Youngster1AfterBattleText:
	text "Are you storing"
	line "your #MON on"
	cont "PC? Each BOX can"
	cont "hold 20 #MON!"
	done

Youngster2SeenText:
	text "Hey! You're not"
	line "wearing shorts!"
	done

Youngster2BeatenText:
	text "Lost!"
	line "Lost! Lost!"
	done

Youngster2AfterBattleText:
	text "I always wear"
	line "shorts, even in"
	cont "winter!"
	done

BugCatcher11SeenText:
	text "Hey! Didn't I meet"
	line "you back in"
	cont "VIRIDIAN FOREST!"
	done

BugCatcher11BeatenText:
	text "I was beaten"
	line "again!"
	done

BugCatcher11AfterBattleText:
	text "There are other"
	line "kinds of #MON"
	cont "that aren't bugs"
	cont "in the forest!"

	para "I once found a"
	line "PIKACHU and a"
	cont "BULBASAUR there,"
	cont "but they got away…"
	done

BugCatcher12SeenText:
	text "You can fight my"
	line "new #MON!"
	done

BugCatcher12BeatenText:
	text "Done"
	line "like dinner!"
	done

BugCatcher12AfterBattleText:
	text "Trained #MON"
	line "are stronger than"
	cont "the wild ones!"
	done

BugCatcher13SeenText:
	text "Are you a trainer?"
	line "Let's fight!"
	done

BugCatcher13BeatenText:
	text "If I"
	line "had new #MON,"
	cont "I would've won!"
	prompt

BugCatcher13AfterBattleText:
	text "If a #MON BOX"
	line "on the PC gets"
	cont "full, just switch"
	cont "to another BOX!"
	done

Lass1SeenText:
	text "You looked at me,"
	line "didn't you?"
	done

Lass1BeatenText:
	text "You're"
	line "mean!"
	done

Lass1AfterBattleText:
	text "Quit staring if"
	line "you don't want to"
	cont "fight!"
	done

Lass2SeenText:
	text "That look you"
	line "gave me, it's so"
	cont "intriguing!"
	done

Lass2BeatenText:
	text "Be nice!"
	prompt

Lass2AfterBattleText:
	text "Avoid fights by"
	line "not letting"
	cont "people see you!"
	done

Lass3SeenText:
	text "Eek! Did you"
	line "touch me?"
	done

Lass3BeatenText:
	text "That's it?"
	done

Lass3AfterBattleText:
	text "ROUTE 4 is at the"
	line "foot of MT.MOON."
	done

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

	db 0 ; coord events

	db 1 ; bg events
	bg_event 49, 13, BGEVENT_READ, Route3Sign

	db 9 ; object events
	object_event 10,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerYoungster1, -1 ; YOUNGSTER 1
	object_event 18,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungster2, -1 ; YOUNGSTER 2
	object_event 12,  7, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassJanice, -1 ; LASS 1
	object_event 17,  2, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerLassSally, -1 ; LASS 2
	object_event 26, 13, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerLassRobin, -1 ; LASS 3
	object_event  6,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBugcatcher11, -1 ; BUG CATCHER 1
	object_event 16,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugcatcher12, -1 ; BUG CATCHER 2
	object_event 20,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBugcatcher13, -1 ; BUG CATCHER 3
	object_event 47, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 3, Route3_CooltrainerMScript, -1 ; COOLTRAINER M
