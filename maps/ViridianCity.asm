	object_const_def ; object_event constants
	const VIRIDIANCITY_GRAMPS1_GRUMPY
	const VIRIDIANCITY_GRAMPS1_OKAY
	const VIRIDIANCITY_GRAMPS2
	const VIRIDIANCITY_FISHER
	const VIRIDIANCITY_YOUNGSTER
	const VIRIDIANCITY_COOLTRAINERF

ViridianCity_MapScripts:
	db 3 ; scene scripts
	scene_script .DummyScene0 ; SCENE_VIRIDIANCITY_GRAMPS_BLOCK
	scene_script .DummyScene1 ; SCENE_VIRIDIANCITY_GYM_LOCKED
	scene_script .DummyScene2 ; SCENE_VIRIDIANCITY_NOTHING

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	return

.DummyScene0:
.DummyScene1:
.DummyScene2:
	end

ViridianCityCoffeeGramps:
	faceplayer
	opentext
	writetext ViridianCity_CoffeeGrampsText1
	waitbutton
	closetext
	end

ViridianCity_GrampsBlockScript:
	opentext
	writetext ViridianCity_CoffeeGrampsText1
	waitbutton
	closetext
	applymovement PLAYER, ViridianCity_PlayerMovement1
	end

ViridianCity_GrampsOkayScript:
	opentext
	writetext ViridianCity_GrampsOkayText1
	waitbutton
	closetext
	end

ViridianCity_CooltrainerFScript:
	checkevent EVENT_VIRIDIAN_GRAMPS_OKAY
	iffalse .GrampsOkay
	opentext
	writetext ViridianCity_CooltrainerFText1
	waitbutton
	faceplayer
	writetext ViridianCity_CooltrainerFText2
	waitbutton
	closetext
	turnobject VIRIDIANCITY_COOLTRAINERF, RIGHT
	end

.GrampsOkay:
	faceplayer
	opentext
	writetext ViridianCity_CooltrainerFText3
	waitbutton
	closetext
	end

ViridianCityGrampsNearGym:
	faceplayer
	opentext
	checkevent EVENT_BLUE_IN_CINNABAR
	iftrue .LeaderReturned
	writetext ViridianCity_GrampsNearGymText1
	waitbutton
	closetext
	end

.LeaderReturned:
	writetext ViridianCity_GrampsNearGymText2
	waitbutton
	closetext
	end

ViridianCityDreamEaterFisher:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM42_DREAM_EATER
	iftrue .GotDreamEater
	writetext ViridianCityDreamEaterFisherText
	buttonsound
	verbosegiveitem TM_DREAM_EATER
	iffalse .NoRoomForDreamEater
	setevent EVENT_GOT_TM42_DREAM_EATER
.GotDreamEater:
	writetext ViridianCityDreamEaterFisherGotDreamEaterText
	waitbutton
.NoRoomForDreamEater:
	closetext
	end

ViridianCity_GymLockedScript:
	turnobject PLAYER, UP
	opentext
	writetext ViridianCity_GymLockedText
	waitbutton
	closetext
	applymovement PLAYER, ViridianCity_PlayerMovement2
	end

ViridianCityYoungsterScript:
	jumptextfaceplayer ViridianCityYoungsterText

ViridianCitySign:
	jumptext ViridianCitySignText

ViridianGymSign:
	jumptext ViridianGymSignText

ViridianCityWelcomeSign:
	jumptext ViridianCityWelcomeSignText

TrainerHouseSign:
	jumptext TrainerHouseSignText

ViridianCityPokecenterSign:
	jumpstd pokecentersign

ViridianCityMartSign:
	jumpstd martsign

ViridianCity_CoffeeGrampsText1:
	text "Y-You can't go"
	line "through here!"

	para "This is private"
	line "property!"
	done

ViridianCity_GrampsOkayText1:
	text "Ahh, I've had my"
	line "coffee now and I"
	cont "feel great!"

	para "Sure, you can go"
	line "through!"

	para "I'm sorry I was"
	line "so rude to you!"
	done

ViridianCity_CooltrainerFText1:
	text "Grampa! Don't"
	line "be so mean!"
	done

ViridianCity_CooltrainerFText2:
	text "I'm sorry. He"
	line "hasn't had his"
	cont "coffee yet."
	done

ViridianCity_CooltrainerFText3:
	text "When I go shop in"
	line "PEWTER CITY, I"
	cont "have to take the"
	cont "winding trail in"
	cont "VIRIDIAN FOREST."
	done

ViridianCity_GrampsNearGymText1:
	text "This #MON GYM"
	line "is always closed."

	para "I wonder who the"
	line "LEADER is?"
	done

ViridianCity_GrampsNearGymText2:
	text "The VIRIDIAN GYM"
	line "LEADER has returned!"
	done

ViridianCityDreamEaterFisherText:
	text "Yawn!"

	para "I must have dozed"
	line "off in the sun."

	para "…I had this dream"
	line "about a DROWZEE"

	para "eating my dream."
	line "Weird, huh?"

	para "Huh?"
	line "What's this?"

	para "Where did this TM"
	line "come from?"

	para "This is spooky!"
	line "Here, you can have"
	cont "this TM."
	done

ViridianCityDreamEaterFisherGotDreamEaterText:
	text "TM42 contains"
	line "DREAM EATER…"

	para "…Zzzzz…"
	done

ViridianCityYoungsterText:
	text "CATERPIE has no"
	line "poison, but"
	cont "WEEDLE does."

	para "Watch out for its"
	line "POISON STING!"
	done

ViridianCitySignText:
	text "VIRIDIAN CITY"

	para "The Eternally"
	line "Green Paradise"
	done

ViridianGymSignText:
	text "VIRIDIAN CITY"
	line "#MON GYM"
	cont "LEADER: …"

	para "The rest of the"
	line "text is illegible…"
	done

ViridianCityWelcomeSignText:
	text "WELCOME TO"
	line "VIRIDIAN CITY,"

	para "THE GATEWAY TO"
	line "INDIGO PLATEAU"
	done

TrainerHouseSignText:
	text "#MON SCHOOL"
	done

ViridianCity_GymLockedText:
	text "The GYM doors"
	line "are locked…"
	done

ViridianCity_PlayerMovement1:
	step DOWN
	step_end

ViridianCity_PlayerMovement2:
	jump_step DOWN
	step_end 

ViridianCity_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 32,  7, VIRIDIAN_GYM, 1
	warp_event 21,  9, VIRIDIAN_NICKNAME_SPEECH_HOUSE, 1
	warp_event 21, 13, TRAINER_HOUSE_1F, 1
	warp_event 29, 19, VIRIDIAN_MART, 2
	warp_event 23, 25, VIRIDIAN_POKECENTER_1F, 1

	db 2 ; coord events
	coord_event 19, 13, SCENE_VIRIDIANCITY_GRAMPS_BLOCK, ViridianCity_GrampsBlockScript ; Gramps won't let you through
	coord_event 32,  8, SCENE_VIRIDIANCITY_GYM_LOCKED, ViridianCity_GymLockedScript


	db 6 ; bg events
	bg_event 17, 17, BGEVENT_READ, ViridianCitySign
	bg_event 27,  7, BGEVENT_READ, ViridianGymSign
	bg_event 19,  1, BGEVENT_READ, ViridianCityWelcomeSign
	bg_event 25, 13, BGEVENT_READ, TrainerHouseSign
	bg_event 24, 25, BGEVENT_READ, ViridianCityPokecenterSign
	bg_event 30, 19, BGEVENT_READ, ViridianCityMartSign

	db 6 ; object events
	object_event 18,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_VIRIDIAN_GRAMPS_OKAY
	object_event 18, 13, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityCoffeeGramps, EVENT_VIRIDIAN_GRAMPS_GRUMPY
	object_event 30,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianCityGrampsNearGym, -1
	object_event  6, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianCityDreamEaterFisher, -1
	object_event 14, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianCityYoungsterScript, -1
	object_event 17, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianCity_CooltrainerFScript, -1
