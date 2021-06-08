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

TrainerYoungsterBen:
	trainer YOUNGSTER, YOUNGSTER_BEN, EVENT_BEAT_YOUNGSTER_BEN, YoungsterBenSeenText, YoungsterBenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterBenAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterCalvin:
	trainer YOUNGSTER, YOUNGSTER_CALVIN, EVENT_BEAT_YOUNGSTER_CALVIN, YoungsterCalvinSeenText, YoungsterCalvinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterCalvinAfterBattleText
	waitbutton
	closetext
	end

TrainerLassJanice:
	trainer LASS, JANICE, EVENT_BEAT_LASS_JANICE, LassJaniceSeenText, LassJaniceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassJaniceAfterBattleText
	waitbutton
	closetext
	end

TrainerLassSally:
	trainer LASS, SALLY, EVENT_BEAT_LASS_SALLY, LassSallySeenText, LassSallyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassSallyAfterBattleText
	waitbutton
	closetext
	end

TrainerLassRobin:
	trainer LASS, ROBIN, EVENT_BEAT_LASS_ROBIN, LassRobinSeenText, LassRobinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassRobinAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherColton:
	trainer BUG_CATCHER, BUG_CATCHER_COLTON, EVENT_BEAT_BUG_CATCHER_COLTON, BugCatcherColtonSeenText, BugCatcherColtonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherColtonAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherGreg:
	trainer BUG_CATCHER, BUG_CATCHER_GREG, EVENT_BEAT_BUG_CATCHER_GREG, BugCatcherGregSeenText, BugCatcherGregBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherGregAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherJames:
	trainer BUG_CATCHER, BUG_CATCHER_JAMES, EVENT_BEAT_BUG_CATCHER_JAMES, BugCatcherJamesSeenText, BugCatcherJamesBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherJamesAfterBattleText
	waitbutton
	closetext
	end

Route3_CooltrainerMScript:
	jumptextfaceplayer Route3_CooltrainerMText

Route3Sign:
	jumptext Route3SignText

YoungsterBenSeenText:
	text "Hi! I like shorts!"
	line "They're comfy and"
	cont "easy to wear!"
	done

YoungsterBenBeatenText:
	text "I don't"
	line "believe it!"
	done

YoungsterBenAfterBattleText:
	text "Are you storing"
	line "your #MON on"
	cont "PC? Each BOX can"
	cont "hold 20 #MON!"
	done

YoungsterCalvinSeenText:
	text "Hey! You're not"
	line "wearing shorts!"
	done

YoungsterCalvinBeatenText:
	text "Lost!"
	line "Lost! Lost!"
	done

YoungsterCalvinAfterBattleText:
	text "I always wear"
	line "shorts, even in"
	cont "winter!"
	done

BugCatcherColtonSeenText:
	text "Hey! Didn't I meet"
	line "you back in"
	cont "VIRIDIAN FOREST!"
	done

BugCatcherColtonBeatenText:
	text "I was beaten"
	line "again!"
	done

BugCatcherColtonAfterBattleText:
	text "There are other"
	line "kinds of #MON"
	cont "that aren't bugs"
	cont "in the forest!"

	para "I once found a"
	line "PIKACHU and a"
	cont "BULBASAUR there,"
	cont "but they got away…"
	done

BugCatcherGregSeenText:
	text "You can fight my"
	line "new #MON!"
	done

BugCatcherGregBeatenText:
	text "Done"
	line "like dinner!"
	done

BugCatcherGregAfterBattleText:
	text "Trained #MON"
	line "are stronger than"
	cont "the wild ones!"
	done

BugCatcherJamesSeenText:
	text "Are you a trainer?"
	line "Let's fight!"
	done

BugCatcherJamesBeatenText:
	text "If I"
	line "had new #MON,"
	cont "I would've won!"
	prompt

BugCatcherJamesAfterBattleText:
	text "If a #MON BOX"
	line "on the PC gets"
	cont "full, just switch"
	cont "to another BOX!"
	done

LassJaniceSeenText:
	text "You looked at me,"
	line "didn't you?"
	done

LassJaniceBeatenText:
	text "You're"
	line "mean!"
	done

LassJaniceAfterBattleText:
	text "Quit staring if"
	line "you don't want to"
	cont "fight!"
	done

LassSallySeenText:
	text "That look you"
	line "gave me, it's so"
	cont "intriguing!"
	done

LassSallyBeatenText:
	text "Be nice!"
	prompt

LassSallyAfterBattleText:
	text "Avoid fights by"
	line "not letting"
	cont "people see you!"
	done

LassRobinSeenText:
	text "Eek! Did you"
	line "touch me?"
	done

LassRobinBeatenText:
	text "That's it?"
	done

LassRobinAfterBattleText:
	text "ROUTE 4 is at the"
	line "foot of MT.MOON."
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
	object_event 10,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerYoungsterBen, -1 ; YOUNGSTER 1
	object_event 18,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterCalvin, -1 ; YOUNGSTER 2
	object_event 12,  7, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassJanice, -1 ; LASS 1
	object_event 17,  2, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerLassSally, -1 ; LASS 2
	object_event 26, 13, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerLassRobin, -1 ; LASS 3
	object_event  6,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherColton, -1 ; BUG CATCHER 1
	object_event 16,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherGreg, -1 ; BUG CATCHER 2
	object_event 20,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherJames, -1 ; BUG CATCHER 3
	object_event 47, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 3, Route3_CooltrainerMScript, -1 ; COOLTRAINER M
