	object_const_def ; object_event constants
	const ROUTE4_LASS1
	const ROUTE4_TM
	const ROUTE4_POKE_BALL;	
	const ROUTE4_ROCKET1
	const ROUTE4_ROCKET2
	const ROUTE4_ROCKET3
	const ROUTE4_BUTCH
	const ROUTE4_CASSIDY


Route4_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene1 		; SCENE_ROUTE4_ROCKETS
	scene_script .DummyScene2 		; SCENE_ROUTE4_NOTHING

	db 0 ; callbacks


.DummyScene1:
	end 

.DummyScene2:
	end 

TrainerLassX:
	trainer PICNICKER, HOPE, EVENT_BEAT_PICNICKER_HOPE, PicnickerHopeSeenText, PicnickerHopeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerHopeAfterBattleText
	waitbutton
	closetext
	end

Route4_RocketSceneTop:
	opentext 
	writetext Route4_PlayerText1
	waitbutton
	closetext
	applymovement PLAYER, Route4_PlayerMovement1Top
	sjump Route4_RocketsScene

Route4_RocketSceneBot:
	opentext 
	writetext Route4_PlayerText1
	waitbutton
	closetext
	applymovement PLAYER, Route4_PlayerMovement1Bot
Route4_RocketsScene:
	showemote EMOTE_SHOCK, PLAYER, 15
	moveobject ROUTE4_ROCKET3, 10, 10
	appear ROUTE4_ROCKET1
	appear ROUTE4_ROCKET2
	applymovement ROUTE4_ROCKET1, Route4_RocketsEnterMovement1
	applymovement ROUTE4_ROCKET2, Route4_RocketsEnterMovement1
	applymovement ROUTE4_ROCKET3, Route4_RocketsEnterMovement1
	turnobject ROUTE4_ROCKET1, RIGHT
	opentext 
	writetext Route4_RocketsText1
	waitbutton 
	closetext
	applymovement ROUTE4_ROCKET1, Route4_RocketsEnterMovement2
	disappear ROUTE4_ROCKET1
	applymovement ROUTE4_ROCKET2, Route4_RocketsEnterMovement3
	disappear ROUTE4_ROCKET2
	applymovement ROUTE4_ROCKET3, Route4_RocketsEnterMovement4
	opentext 
	writetext Route4_PlayerText2
	waitbutton
	closetext 
	applymovement PLAYER, Route4_PlayerMovement2
	setevent EVENT_ROUTE_4_ROCKETS
	clearevent EVENT_ROUTE_4_GUARD

	end

Route4_Rocket3Script:
	jumptextfaceplayer Route4_Rocket3Text


Route4_Sign:
	jumptext Route4_SignText

Route4HPUp:
	itemball HP_UP

Route4_TM:
	verbosegiveitem TM_ROAR 
	iffalse .done
	disappear ROUTE4_TM
	setevent EVENT_GOT_TM05_ROAR_AT_ROUTE_4
	end

.done
	end 

Route4HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_ROUTE_4_HIDDEN_ULTRA_BALL

Route4_PlayerText1:
	text "<PLAYER>: Ahhh,"
	line "finally made it"
	cont "out of that cave."

	para "CERULEAN CITY"
	line "should be a short"
	cont "distance away."

	para "There, I can get"
	line "my next BADGE!"
	done 

Route4_PlayerText2:
	text "<PLAYER>: What's"
	line "with those thugs?"

	para "Whatever. Can't"
	line "waste my time on"
	cont "them! Got a lot"
	cont "to accomplish!"
	done 

Route4_RocketsText1:
	text "This is it, guys."
	line "MOUNT MOON."

	para "Lots of fossils"
	line "for us to take!"
	cont "We'll be rich!"

	para "Now, CLYDE, stand"
	line "guard here while"
	cont "the others arrive!"
	done 

Route4_Rocket3Text:
	text "We're pulling a"
	line "big job here!"

	para "Stay out, kid!"
	done 

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

Route4_PlayerMovement1Top:
	step_end

Route4_PlayerMovement1Bot:
	step_end

Route4_PlayerMovement2:
	step_end

Route4_RocketsEnterMovement1:
	step_end

Route4_RocketsEnterMovement2:
	step_end

Route4_RocketsEnterMovement3:
	step_end

Route4_RocketsEnterMovement4:
	step_end

Route4_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  2,  5, MOUNT_MOON_1F, 2

	db 2 ; coord events
	coord_event  3,  6, SCENE_ROUTE4_ROCKETS, Route4_RocketSceneTop	
	coord_event  2,  7, SCENE_ROUTE4_ROCKETS, Route4_RocketSceneBot


	db 2 ; bg events
	bg_event  3,  7, BGEVENT_READ, Route4_Sign
	bg_event 10,  3, BGEVENT_ITEM, Route4HiddenUltraBall

	db 6 ; object events
	object_event 30,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerLassX, -1
	object_event 22,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, Route4_TM, EVENT_GOT_TM05_ROAR_AT_ROUTE_4
	object_event 26,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4HPUp, EVENT_ROUTE_4_HP_UP
	object_event 11,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, ObjectEvent, EVENT_ROUTE_4_ROCKETS
	object_event 12,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, ObjectEvent, EVENT_ROUTE_4_ROCKETS
	object_event  2,  6, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, Route4_Rocket3Script, EVENT_ROUTE_4_GUARD
	object_event  1,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, ObjectEvent, EVENT_ROUTE_4_ROCKETS ;Butch
	object_event  1,  1, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, ObjectEvent, EVENT_ROUTE_4_ROCKETS ;Cassidy
