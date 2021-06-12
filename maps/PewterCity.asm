	object_const_def ; object_event constants
	const PEWTERCITY_COOLTRAINER_F
	const PEWTERCITY_BUG_CATCHER
	const PEWTERCITY_GRAMPS
	const PEWTERCITY_FRUIT_TREE1
	const PEWTERCITY_FRUIT_TREE2
	const PEWTERCITY_REPELGUY
	const PEWTERCITY_COOLTRAINER_M

PewterCity_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene1 		; SCENE_PEWTERCITY_NO_BADGE
	scene_script .DummyScene2 		; SCENE_PEWTERCITY_NOTHING

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_PEWTER
	return

.DummyScene1:
	end 
	
.DummyScene2:
	end

PewterCityCooltrainerFScript:
	jumptextfaceplayer PewterCityCooltrainerFText

PewterCityBugCatcherScript:
	jumptextfaceplayer PewterCityBugCatcherText

PewterCityRepelScript:
	jumptextfaceplayer PewterCityRepelText


PewterCityGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SILVER_WING
	iftrue .GotSilverWing
	writetext PewterCityGrampsText
	buttonsound
	verbosegiveitem SILVER_WING
	setevent EVENT_GOT_SILVER_WING
	closetext
	end

.GotSilverWing:
	writetext PewterCityGrampsText_GotSilverWing
	waitbutton
	closetext
	end

PewterCity_CheckBadge1:
	turnobject PEWTERCITY_COOLTRAINER_M, DOWN
	opentext
	writetext PewterCityCooltrainerMText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 15
	turnobject PLAYER, UP
	opentext ; delete from here
	checkevent EVENT_PEWTER_CITY_BADGE_CHECK
	iftrue .NPCText
	writetext PewterCityCooltrainerMText2
	waitbutton 
	closetext
	checkevent EVENT_BEAT_BROCK
	iftrue .GotBoulderBadge
	pause 15
	opentext
	writetext PewterCityCooltrainerMText3
	waitbutton
	closetext
	opentext
	writetext PewterCityCooltrainerMText4
	waitbutton
	closetext
	end
	 
.NPCText:
	writetext PewterCityCooltrainerMText6
	waitbutton
	closetext
	end

.GotBoulderBadge:
	showemote EMOTE_SHOCK, PEWTERCITY_COOLTRAINER_M, 15
	pause 15
	opentext 
	writetext PewterCityCooltrainerMText5
	waitbutton
	closetext 
	setscene SCENE_PEWTERCITY_NOTHING
	setevent EVENT_PEWTER_CITY_BADGE_CHECK
	end 
;	jumpstd PewterCityCooltrainerMScript

PewterCity_CheckBadge2:
	turnobject PEWTERCITY_COOLTRAINER_M, DOWN 
	opentext
	writetext PewterCityCooltrainerMText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 15
	applymovement PLAYER, PewterCity_PlayerMovement2
PewterCityCooltrainerMScript:
	opentext 
	checkevent EVENT_PEWTER_CITY_BADGE_CHECK
	iftrue .NPCText
	writetext PewterCityCooltrainerMText2
	waitbutton 
	closetext
	checkevent EVENT_BEAT_BROCK
	iftrue .GotBoulderBadge
	pause 15
	opentext
	writetext PewterCityCooltrainerMText3
	waitbutton
	closetext
	applymovement PLAYER, PewterCity_PlayerMovement1
	opentext
	writetext PewterCityCooltrainerMText4
	waitbutton
	closetext
	end 

.NPCText:
	writetext PewterCityCooltrainerMText6
	waitbutton
	closetext
	end

.GotBoulderBadge:
	showemote EMOTE_SHOCK, PEWTERCITY_COOLTRAINER_M, 15
	pause 15
	opentext 
	writetext PewterCityCooltrainerMText5
	waitbutton
	closetext 
	setscene SCENE_PEWTERCITY_NOTHING
	setevent EVENT_PEWTER_CITY_BADGE_CHECK
	setevent EVENT_ROUTE_4_ROCKETS
	setevent EVENT_ROUTE_4_GUARD
	end 

PewterCitySign:
	jumptext PewterCitySignText

PewterGymSign:
	jumptext PewterGymSignText

PewterMuseumSign:
	jumptext PewterMuseumSignText

PewterCityMtMoonGiftShopSign:
	jumptext PewterCityMtMoonGiftShopSignText

PewterCityWelcomeSign:
	jumptext PewterCityWelcomeSignText

PewterCityPokecenterSign:
	jumpstd pokecentersign

PewterCityMartSign:
	jumpstd martsign

PewterCityFruitTree1:
	fruittree FRUITTREE_PEWTER_CITY_1

PewterCityFruitTree2:
	fruittree FRUITTREE_PEWTER_CITY_2

PewterCityCooltrainerFText:
	text "Have you visited"
	line "PEWTER GYM?"

	para "The LEADER uses"
	line "rock-type #MON."
	done

PewterCityBugCatcherText:
	text "At night, CLEFAIRY"
	line "come out to play"
	cont "at MT.MOON."

	para "But not every"
	line "night."
	done

PewterCityRepelText:
	text "I'm using REPEL"
	line "to keep wild"
	cont "#MON away."

	para "You can buy it"
	line "at any MART."
	done 

PewterCityGrampsText:
	text "Ah, you came all"
	line "the way out here"
	cont "from JOHTO?"

	para "That brings back"
	line "memories. When I"

	para "was young, I went"
	line "to JOHTO to train."

	para "You remind me so"
	line "much of what I was"

	para "like as a young"
	line "man."

	para "Here. I want you"
	line "to have this item"
	cont "I found in JOHTO."
	done

PewterCityGrampsText_GotSilverWing:
	text "Going to new, un-"
	line "known places and"
	cont "seeing new people…"

	para "Those are the joys"
	line "of travel."
	done

PewterCityCooltrainerMText1:
	text "Hey, wait up!"
	done

PewterCityCooltrainerMText2:
	text "Have you been to"
	line "the #MON GYM?"
	done

PewterCityCooltrainerMText3:
	text "BROCK's looking for"
	line "new challengers!"

	para "Go west of town"
	line "to find his GYM!"
	done
	
PewterCityCooltrainerMText4:
	text "If you think you"
	line "got the right stuff,"
	cont "go take on BROCK!"
	done

PewterCityCooltrainerMText5:
	text "…"

	para "Wow! That's the"
	line "BOULDERBADGE,"
	cont "alright!"

	para "You're definitely"
	line "a strong trainer."
	
	para "You can go through"
	line "to go east to"
	cont "CERULEAN CITY."
	done

PewterCityCooltrainerMText6:
	text "Good luck on your"
	line "GYM challenge!"
	done 
	
PewterCitySignText:
	text "PEWTER CITY"
	line "A Stone Gray City"
	done

PewterGymSignText:
	text "PEWTER CITY"
	line "#MON GYM"
	cont "LEADER: BROCK"

	para "The Rock Solid"
	line "#MON Trainer"
	done

PewterMuseumSignText:
	text "There's a notice"
	line "here…"

	para "PEWTER MUSEUM OF"
	line "SCIENCE is closed"
	cont "for renovations…"
	done

PewterCityMtMoonGiftShopSignText:
	text "There's a notice"
	line "here…"

	para "MT.MOON GIFT SHOP"
	line "NOW OPEN!"
	done

PewterCityWelcomeSignText:
	text "WELCOME TO"
	line "PEWTER CITY!"
	done

PewterCity_PlayerMovement1:
	step LEFT
	turn_head RIGHT
	step_end

PewterCity_PlayerMovement2:
	step UP
;	turn_head RIGHT
	step_end
	
PewterCity_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 29, 13, PEWTER_NIDORAN_SPEECH_HOUSE, 1
	warp_event 16, 17, PEWTER_GYM, 1
	warp_event 23, 17, PEWTER_MART, 2
	warp_event 13, 25, PEWTER_POKECENTER_1F, 1
	warp_event  7, 29, PEWTER_SNOOZE_SPEECH_HOUSE, 1
	warp_event 15,  7, PEWTER_MUSEUM_1F, 2

	db 2 ; coord events
	coord_event 36, 17, SCENE_PEWTERCITY_NO_BADGE, PewterCity_CheckBadge1
	coord_event 36, 18, SCENE_PEWTERCITY_NO_BADGE, PewterCity_CheckBadge2

	db 7 ; bg events
	bg_event 25, 23, BGEVENT_READ, PewterCitySign
	bg_event 11, 17, BGEVENT_READ, PewterGymSign
	bg_event 15,  9, BGEVENT_READ, PewterMuseumSign
	bg_event 33, 19, BGEVENT_READ, PewterCityMtMoonGiftShopSign
	bg_event 19, 29, BGEVENT_READ, PewterCityWelcomeSign
	bg_event 14, 25, BGEVENT_READ, PewterCityPokecenterSign
	bg_event 24, 17, BGEVENT_READ, PewterCityMartSign

	db 7 ; object events
	object_event  6, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterCityCooltrainerFScript, -1
	object_event 16, 28, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterCityBugCatcherScript, -1
	object_event 28, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCityGrampsScript, -1
	object_event 32,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCityFruitTree1, -1
	object_event 30,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCityFruitTree2, -1
	object_event 26, 26, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterCityRepelScript, -1
	object_event 36, 16, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterCityCooltrainerMScript, -1
