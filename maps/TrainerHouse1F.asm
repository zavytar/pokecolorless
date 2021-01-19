	object_const_def ; object_event constants
	const TRAINERHOUSE1F_TEACHER
	const TRAINERHOUSE1F_STUDENT1
	const TRAINERHOUSE1F_STUDENT2
	const TRAINERHOUSE1F_GENTLEMAN

TrainerHouse1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerHouse1F_TeacherScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_TEACHER_COLETTE
	iftrue TrainerHouse1F_AlreadyBattled
	writetext TrainerHouse1F_TeacherText1
	yesorno
	iffalse .RefusedBattle
	writetext TrainerHouse1F_TeacherText2
	closetext
	winlosstext TrainerHouse1F_TeacherWinText, 0
	setlasttalked TRAINERHOUSE1F_TEACHER
	loadtrainer TEACHER, COLETTE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TEACHER_COLETTE
	opentext
	writetext TrainerHouse1F_TeacherText3
	waitbutton
	closetext
	setevent EVENT_RED_OAKS_LAB
	end

.RefusedBattle:
	writetext TrainerHouse1F_TeacherText4
	waitbutton
	closetext
	end

TrainerHouse1F_AlreadyBattled:
	writetext TrainerHouse1F_TeacherText5
	waitbutton
	closetext
	end

TrainerHouse1F_Student1Script:
	jumptextfaceplayer TrainerHouse1F_Student1Text

TrainerHouse1F_Student2Script:
	jumptextfaceplayer TrainerHouse1F_Student2Text

TrainerHouse1FGentlemanScript:
	jumptextfaceplayer TrainerHouse1F_GentlemanText

TrainerHouse1F_Blackboard:
	opentext
	writetext TrainerHouse1F_Placeholder
	waitbutton
	closetext
	end

TrainerHouse1F_Placeholder:
	text "It's a blackboard"
	line "listing status"
	cont "conditions."
	done

TrainerHouse1F_Blackboard2:
	opentext
	writetext TrainerHouse1F_BlackboardText
.Loop:
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Poison
	ifequal 2, .Paralysis
	ifequal 3, .Sleep
	ifequal 4, .Burn
	ifequal 5, .Freeze
	closetext
	end

.Poison:
	writetext TrainerHouse1F_PoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext TrainerHouse1F_ParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext TrainerHouse1F_SleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext TrainerHouse1F_BurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext TrainerHouse1F_FreezeText
	waitbutton
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
;	dbw BANK(AcademyBlackboard), 0

.Text:
	db "PSN@"
	db "PAR@"
	db "SLP@"
	db "BRN@"
	db "FRZ@"
	db "QUIT@"

TrainerHouseNotes:
	opentext
	writetext TrainerHouse1F_NotebookText
	yesorno
	iffalse .Done
	writetext TrainerHouse1F_NotebookText1
	yesorno
	iffalse .Done
	writetext TrainerHouse1F_NotebookText2
	yesorno
	iffalse .Done
	writetext TrainerHouse1F_NotebookText3
	waitbutton
.Done:
	closetext
	end

TrainerHouseIllegibleBook:
	jumptext TrainerHouseIllegibleText

TrainerHouse1F_TeacherText1:
	text "Welcome to the"
	line "TRAINER SCHOOL!"

	para "…Oh?"

	para "You're PROF. OAK's"
	line "grandson!"
	cont "<PLAYER>,"
	cont "is that correct?"
	cont "What brings you"
	cont "here?"

	para "…"

	para "You're on a"
	line "#MON journey?"
	cont "That's great!"

	para "Please, allow me"
	line "to test your"
	cont "battle skills."
	done

TrainerHouse1F_TeacherText2:
	text "Let's see how"
	line "well you know"
	cont "type matchups."
	done

TrainerHouse1F_TeacherText3:
	text "Wow, you're very"
	line "talented, <PLAYER>."

	para "You have a bright"
	line "future ahead."

	para "Your #MON looks"
	line "stronger, too."
	cont "Why don't you"
	cont "show your Grandpa"
	cont "how it's grown?"
	done

TrainerHouse1F_TeacherText4:
	text "If you change your"
	line "mind, I'll be right"
	cont "here."

	para "Feel free to train"
	line "your #MON and"
	cont "come back if you"
	cont "feel like it."
	done

TrainerHouse1F_TeacherText5:
	text "Hello, <PLAYER>!"

	para "Have you been"
	line "training your"
	cont "#MON?"
	done

TrainerHouse1F_TeacherWinText:
	text "You know them"
	line "well! Ha!"
	done

TrainerHouse1F_Student1Text:
	text "VIRIDIAN is the"
	line "town closest to"
	cont "INDIGO PLATEAU."

	para "You should go"
	line "there if you have"
	cont "eight BADGES."

	para "The GYM here has"
	line "been closed for a"
	cont "long time, though…"
	done

TrainerHouse1F_Student2Text:
	text "Whew…"

	para "Taking notes can"
	line "be tiring…"
	done

TrainerHouse1F_GentlemanText:
	text "#MON will"
	line "become tame if you"
	cont "treat them nicely."

	para "Some are said to"
	line "evolve if they"
	cont "grow friendly"
	cont "enough."
	done

TrainerHouse1F_BlackboardText:
	text "The blackboard"
	line "describes #MON"

	para "status changes in"
	line "battle."
	done

TrainerHouse1F_PoisonText:
	text "If poisoned, a"
	line "#MON steadily"
	cont "loses HP."

	para "Poison lingers"
	line "after the battle,"

	para "and HP is lost as"
	line "you walk."

	para "To cure it, use an"
	line "ANTIDOTE."
	done

TrainerHouse1F_ParalysisText:
	text "Paralysis reduces"
	line "speed and may"
	cont "prevent movement."

	para "It remains after"
	line "battle, so use"
	cont "a PARLYZ HEAL."
	done

TrainerHouse1F_SleepText:
	text "If asleep, your"
	line "#MON can't make"
	cont "a move."

	para "A sleeping #MON"
	line "doesn't wake up"
	cont "after battle."

	para "Wake it up with"
	line "an AWAKENING."
	done

TrainerHouse1F_BurnText:
	text "A burn steadily"
	line "consumes HP."

	para "It also reduces"
	line "attack power."

	para "A burn lingers"
	line "after battle."

	para "Use a BURN HEAL as"
	line "the cure."
	done

TrainerHouse1F_FreezeText:
	text "If your #MON is"
	line "frozen, it can't"
	cont "do a thing."

	para "It remains frozen"
	line "after battle."

	para "Thaw it out with"
	line "an ICE HEAL."
	done

TrainerHouse1F_NotebookText:
	text "It's this kid's"
	line "notebook…"

	para "Catch #MON"
	line "using # BALLS."

	para "Up to six can be"
	line "in your party."

	para "Keep reading?"
	done

TrainerHouse1F_NotebookText1:
	text "Before throwing a"
	line "# BALL, weaken"
	cont "the target first."

	para "A poisoned or"
	line "burned #MON is"
	cont "easier to catch."

	para "Keep reading?"
	done

TrainerHouse1F_NotebookText2:
	text "Some moves may"
	line "cause confusion."

	para "Confusion may make"
	line "a #MON attack"
	cont "itself."

	para "Leaving battle"
	line "clears up any"
	cont "confusion."

	para "Keep reading?"
	done

TrainerHouse1F_NotebookText3:
	text "People who catch"
	line "and use #MON"

	para "in battle are"
	line "#MON trainers."

	para "They are expected"
	line "to visit #MON"

	para "GYMS and defeat"
	line "other trainers."

	para "The next page"
	line "is… Blank!"

	para "Girl: H-hey! Don't"
	line "look at my notes!"
	done

TrainerHouseIllegibleText:
	text "…What's this?"
	line "A strategy memo?"

	para "This writing looks"
	line "like ONIX tracks…"

	para "It's completely"
	line "illegible…"
	done

TrainerHouse1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, VIRIDIAN_CITY, 3
	warp_event  5,  9, VIRIDIAN_CITY, 3

	db 0 ; coord events

	db 4 ; bg events
	bg_event  3,  0, BGEVENT_READ, TrainerHouse1F_Blackboard
	bg_event  4,  0, BGEVENT_READ, TrainerHouse1F_Blackboard
	bg_event  3,  4, BGEVENT_READ, TrainerHouseNotes
	bg_event  7,  4, BGEVENT_READ, TrainerHouseIllegibleBook

	db 4 ; object events
	object_event  5,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TrainerHouse1F_TeacherScript, -1
	object_event  7,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouse1F_Student1Script, -1
	object_event  3,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerHouse1F_Student2Script, -1
	object_event  1,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FGentlemanScript, -1
