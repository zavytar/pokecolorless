	object_const_def ; object_event constants
	const OAKSLAB_OAK
	const OAKSLAB_SCIENTIST1
	const OAKSLAB_SCIENTIST2
	const OAKSLAB_SCIENTIST3
	const OAKSLAB_POKEBALL
	const OAKSLAB_POKEDEX1
	const OAKSLAB_POKEDEX2
	const OAKSLAB_RED

OaksLab_MapScripts:
	db 3 ; scene scripts
	scene_script .MeetOak ; SCENE_OAKSLAB_INTRO
	scene_script .DummyScene1 ; SCENE_OAKSLAB_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_OAKSLAB_NOTHING

	db 0 ; callbacks

.MeetOak:
	disappear OAKSLAB_OAK
	disappear OAKSLAB_RED
	setevent EVENT_OAK_OUT
	setevent EVENT_RED_OAKS_LAB
	turnobject PLAYER, UP
	opentext
	writetext OaksLab_IntroText1
	waitbutton
	special NameRival
	writetext OaksLab_IntroText2
	waitbutton
	closetext
	setscene SCENE_OAKSLAB_CANT_LEAVE
	end

.DummyScene1:
	end

.DummyScene2:
	end

OakScript:
	faceplayer
	opentext
	writetext OaksLab_OakText1
	waitbutton
	closetext
	end

OaksLab_EeveeBallScript:
;	pokepic EEVEE
;	cry EEVEE
;	waitbutton
;	closepokepic
	opentext
	writetext OaksLab_EeveeBallText
	waitbutton
	closetext
	checkevent EVENT_OAK_OUT
	iffalse OaksLab_DoNothing
; Oak comes back
	moveobject OAKSLAB_OAK, 4, 7
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	applymovement PLAYER, OaksLab_PlayerMovement1
	appear OAKSLAB_OAK
	applymovement OAKSLAB_OAK, OaksLab_OakWalksUp
	moveobject OAKSLAB_RED, 4, 8
	turnobject OAKSLAB_OAK, DOWN
	appear OAKSLAB_RED
	applymovement OAKSLAB_RED, OaksLab_OakWalksUp
	clearevent EVENT_OAK_OUT
	end

OaksLab_DoNothing:
	end

OaksLab_PokedexScript:
	opentext
	writetext OaksLab_PokedexText
	waitbutton
	closetext
	end

OaksLab_RedScript:
	end

OaksLab_TryToLeaveScript:
	checkevent EVENT_OAK_OUT
	iffalse OaksLab_DoNothing
	opentext
	writetext OaksLab_CantLeaveText
	waitbutton
	closetext
	applymovement PLAYER, OaksLab_CantLeaveMovement
	end

Oak:
	faceplayer
	opentext
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .CheckPokedex
	checkevent EVENT_TALKED_TO_OAK_IN_KANTO
	iftrue .CheckBadges
	writetext OakWelcomeKantoText
	buttonsound
	setevent EVENT_TALKED_TO_OAK_IN_KANTO
.CheckBadges:
	readvar VAR_BADGES
	ifequal NUM_BADGES, .OpenMtSilver
	ifequal NUM_JOHTO_BADGES, .Complain
	sjump .AhGood

.CheckPokedex:
	writetext OakLabDexCheckText
	waitbutton
	special ProfOaksPCBoot
	writetext OakLabGoodbyeText
	waitbutton
	closetext
	end

.OpenMtSilver:
	writetext OakOpenMtSilverText
	buttonsound
	setevent EVENT_OPENED_MT_SILVER
	sjump .CheckPokedex

.Complain:
	writetext OakNoKantoBadgesText
	buttonsound
	sjump .CheckPokedex

.AhGood:
	writetext OakYesKantoBadgesText
	buttonsound
	sjump .CheckPokedex

OaksAssistant1Script:
	jumptextfaceplayer OaksAssistant1Text

OaksAssistant2Script:
	jumptextfaceplayer OaksAssistant2Text

OaksAssistant3Script:
	jumptextfaceplayer OaksAssistant3Text

OaksLabBookshelf:
	jumpstd difficultbookshelf

OaksLabPoster1:
	jumptext OaksLabPoster1Text

OaksLabPoster2:
	jumptext OaksLabPoster2Text

OaksLabTrashcan:
	jumptext OaksLabTrashcanText

OaksLabPC:
	jumptext OaksLabPCText

OaksLab_IntroText1:
	text "Heh! This is it!"

	para "Gramps said he"
	line "was giving me a"
	cont "#MON today!"

	para "…"

	para "Though he isn't"
	line "here yet."

	para "And it seems"
	line "that loser isn't"
	cont "here either…"
	done

OaksLab_IntroText2:
	text "Sigh… Guess it's"
	line "waiting for me,"
	cont "then! I hope he"
	cont "gets back soon!"
	done


OaksLab_CantLeaveText:
	text "I should wait"
	line "for Gramps to"
	cont "come back."
	done

OaksLab_OakText1:
	text "Hello, <PLAYER>!"
	done

OaksLab_EeveeBallText:
	text "It's an EEVEE."

	para "I really hope"
	line "Gramps gives it"
	cont "to me today."
	done

OaksLab_PokedexText:
	text "This must be"
	line "what Gramps has"
	cont "been working on."

	para "It's encyclopedia-"
	line "like, but the"
	cont "pages are blank."
	done

OakWelcomeKantoText:
	text "OAK: Ah, <PLAY_G>!"
	line "It's good of you"

	para "to come all this"
	line "way to KANTO."

	para "What do you think"
	line "of the trainers"

	para "out here?"
	line "Pretty tough, huh?"
	done

OakLabDexCheckText:
	text "How is your #-"
	line "DEX coming?"

	para "Let's see…"
	done

OakLabGoodbyeText:
	text "If you're in the"
	line "area, I hope you"
	cont "come visit again."
	done

OakOpenMtSilverText:
	text "OAK: Wow! That's"
	line "excellent!"

	para "You collected the"
	line "BADGES of GYMS in"
	cont "KANTO. Well done!"

	para "I was right in my"
	line "assessment of you."

	para "Tell you what,"
	line "<PLAY_G>. I'll make"

	para "arrangements so"
	line "that you can go to"
	cont "MT.SILVER."

	para "MT.SILVER is a big"
	line "mountain that is"

	para "home to many wild"
	line "#MON."

	para "It's too dangerous"
	line "for your average"

	para "trainer, so it's"
	line "off limits. But"

	para "we can make an"
	line "exception in your"
	cont "case, <PLAY_G>."

	para "Go up to INDIGO"
	line "PLATEAU. You can"

	para "reach MT.SILVER"
	line "from there."
	done

OakNoKantoBadgesText:
	text "OAK: Hmm? You're"
	line "not collecting"
	cont "KANTO GYM BADGES?"

	para "The GYM LEADERS in"
	line "KANTO are as tough"

	para "as any you battled"
	line "in JOHTO."

	para "I recommend that"
	line "you challenge"
	cont "them."
	done

OakYesKantoBadgesText:
	text "OAK: Ah, you're"
	line "collecting KANTO"
	cont "GYM BADGES."

	para "I imagine that"
	line "it's hard, but the"

	para "experience is sure"
	line "to help you."

	para "Come see me when"
	line "you get them all."

	para "I'll have a gift"
	line "for you."

	para "Keep trying hard,"
	line "<PLAY_G>!"
	done

OaksAssistant1Text:
	text "The PROF's #MON"
	line "TALK radio program"

	para "isn't aired here"
	line "in KANTO."

	para "It's a shame--I'd"
	line "like to hear it."
	done

OaksAssistant2Text:
	text "Thanks to your"
	line "work on the #-"
	cont "DEX, the PROF's"

	para "research is coming"
	line "along great."
	done

OaksAssistant3Text:
	text "Don't tell anyone,"
	line "but PROF.OAK'S"

	para "#MON TALK isn't"
	line "a live broadcast."
	done

OaksLabPoster1Text:
	text "Press START to"
	line "open the MENU."
	done

OaksLabPoster2Text:
	text "The SAVE option is"
	line "on the MENU."

	para "Use it in a timely"
	line "manner."
	done

OaksLabTrashcanText:
	text "There's nothing in"
	line "here…"
	done

OaksLabPCText:
	text "There's an e-mail"
	line "message on the PC."

	para "…"

	para "Calling all"
	line "#MON trainers!"

	para "The elite trainers"
	line "of #MON LEAGUE"
	cont "are ready to take"
	cont "on all comers!"

	para "Bring your best"
	line "#MON and see"
	cont "how you rate as a"
	cont "trainer!"

	para "#MON LEAGUE HQ"
	line "INDIGO PLATEAU"

	para "PS: PROF. OAK,"
	line "please visit us!"
	cont "…"
	done

OaksLab_CantLeaveMovement:
	step UP
	step_end

OaksLab_PlayerMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step_end

OaksLab_OakWalksUp:
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

OaksLab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, PALLET_TOWN, 3
	warp_event  5, 11, PALLET_TOWN, 3

	db 2 ; coord events
	coord_event  4,  6, SCENE_OAKSLAB_CANT_LEAVE, OaksLab_TryToLeaveScript
	coord_event  5,  6, SCENE_OAKSLAB_CANT_LEAVE, OaksLab_TryToLeaveScript

	db 16 ; bg events
	bg_event  6,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  0,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  1,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  2,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  3,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  6,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  4,  0, BGEVENT_READ, OaksLabPoster1
	bg_event  5,  0, BGEVENT_READ, OaksLabPoster2
	bg_event  9,  3, BGEVENT_READ, OaksLabTrashcan
	bg_event  0,  1, BGEVENT_READ, OaksLabPC

	db 8 ; object events
	object_event  4,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OakScript, EVENT_OAK_OUT ;
	object_event  1,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant1Script, -1
	object_event  8,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant2Script, -1
	object_event  2, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant3Script, -1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OaksLab_EeveeBallScript, -1 ;Ball w/ Eevee
	object_event  2,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OaksLab_PokedexScript, -1 ;Dex1
	object_event  3,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OaksLab_PokedexScript, -1 ;Dex2
	object_event  4,  3, SPRITE_SILVER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OaksLab_RedScript, -1 ; Red
