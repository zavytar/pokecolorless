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
	special RestartMapMusic
	opentext
	writetext OaksLab_PlayerText1
	waitbutton
	pause 15
	writetext OaksLab_OakText2
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext OaksLab_PlayerText2
	waitbutton
	writetext OaksLab_OakText3
	waitbutton
	writetext OaksLab_RedText1
	waitbutton
	closetext
; Red goes to get the EEVEE
	applymovement OAKSLAB_RED, OaksLab_RedMovement1
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 15
	applymovement PLAYER, OaksLab_PlayerMovement2
	showemote EMOTE_SHOCK, OAKSLAB_RED, 15
	playsound SFX_TACKLE
	applymovement OAKSLAB_RED, OaksLab_RedMovement2
	applymovement PLAYER, OaksLab_PlayerMovement3
	opentext
	writetext OaksLab_PlayerText3
	waitbutton
	disappear OAKSLAB_POKEBALL
	setevent EVENT_GOT_EEVEE_FROM_OAK
	waitsfx
	writetext OaksLab_ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke EEVEE, 5
	closetext
	showemote EMOTE_SHOCK, OAKSLAB_OAK, 15
	opentext
	writetext OaksLab_OakText4
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	opentext
	writetext OaksLab_PlayerText4
	waitbutton
	writetext OaksLab_OakText5
	waitbutton
	closetext
	applymovement OAKSLAB_RED, OaksLab_RedMovement3
	opentext
	writetext OaksLab_OakText6
	waitbutton
	writetext OaksLab_RivalReceivedPokemonText
	playsound SFX_CAUGHT_MON
	waitbutton
	closetext
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
	faceplayer
	opentext
	writetext OaksLab_RedText1
	waitbutton
	closetext
	end

OaksLab_TryToLeaveScript:
	checkevent EVENT_OAK_OUT
	iffalse OaksLab_DoNothing
;	checkevent EVENT_BATTLED_RED_OAKSLAB
;	iftrue OaksLab_DoNothing
	opentext
	writetext OaksLab_CantLeaveText
	waitbutton
	closetext
	applymovement PLAYER, OaksLab_CantLeaveMovement
	end

.CheckPokedex:
	writetext OakLabDexCheckText
	waitbutton
	special ProfOaksPCBoot
	writetext OakLabGoodbyeText
	waitbutton
	closetext
	end

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
	text "<PLAYER>…"

	para "You should really"
	line "be more patient."

	para "Please take good"
	line "care of EEVEE."
	done

OaksLab_OakText2:
	text "OAK: Hmm? <PLAYER>?"
	line "Why are you here"
	cont "already?"

	para "I said for you to"
	line "come by later…"

	para "Ah, whatever!"
	line "Just wait there."

	para "Look, <RIVAL>! Do"
	line "you see that ball"
	cont "on the table?"

	para "It's called a #"
	line "BALL. It holds a"
	cont "#MON inside."

	para "You may have it!"
	line "Go on, take it!"
	done

OaksLab_OakText3:
	text "OAK: Be patient,"
	line "<PLAYER>, I'll give"
	cont "you one later."
	done

OaksLab_OakText4:
	text "OAK: <PLAYER>! What"
	line "are you doing?"
	done

OaksLab_OakText5:
	text "OAK: But, I… Oh,"
	line "all right then."
	cont "That #MON is"
	cont "yours."

	para "I was going to"
	line "give you one"
	cont "anyway…"

	para "<RIVAL>, come over"
	line "here."
	done

OaksLab_OakText6:
	text "OAK: <RIVAL>, this"
	line "is the #MON I"
	cont "caught earlier."

	para "You can have it."
	line "I caught it in"
	cont "the wild and it's"
	cont "not tame yet."
	done

OaksLab_RivalReceivedPokemonText:
	text "<RIVAL> received a"
	line "PIKACHU!"
	done

OaksLab_PlayerText1:
	text "<PLAYER>: Gramps!"
	line "I'm fed up with"
	cont "waiting!"
	done

OaksLab_PlayerText2:
	text "<PLAYER>: Hey!"
	line "Gramps! What"
	cont "about me?"
	done

OaksLab_PlayerText3:
	text "<PLAYER>: No way!"
	line "<RIVAL>, I want"
	cont "this #MON!"
	done

OaksLab_PlayerText4:
	text "<PLAYER>: Gramps, I"
	line "want this one!"
	done

OaksLab_PlayerText5:
	text "<PLAYER>: Wait"
	line "<RIVAL>!"
	cont "Let's check out"
	cont "our #MON!"

	para "Come on, I'll take"
	line "you on!"
	done

OaksLab_ReceivedStarterText:
	text "<PLAYER> snatched"
	line "the #MON!"
	done

OaksLab_RedText1:
	text "<RIVAL>: <……>"
	line "<……>"
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

OaksLab_PlayerMovement2:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

OaksLab_PlayerMovement3:
	step RIGHT
	turn_head UP
	step_end

OaksLab_RedMovement1:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

OaksLab_RedMovement2:
	step RIGHT
	step_end

OaksLab_RedMovement3:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
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
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OaksLab_EeveeBallScript, EVENT_GOT_EEVEE_FROM_OAK ;Ball w/ Eevee
	object_event  2,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OaksLab_PokedexScript, -1 ;Dex1
	object_event  3,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OaksLab_PokedexScript, -1 ;Dex2
	object_event  4,  3, SPRITE_SILVER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OaksLab_RedScript, -1 ; Red
