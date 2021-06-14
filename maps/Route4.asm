	object_const_def ; object_event constants
	const ROUTE4_LASS1
	const ROUTE4_TM
	const ROUTE4_POKE_BALL;	
	const ROUTE4_ROCKET1
	const ROUTE4_ROCKET2
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

TrainerLassCrissy:
	trainer LASS, LASS_CRISSY, EVENT_BEAT_LASS_CRISSY, LassCrissySeenText, LassCrissyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassCrissyAfterBattleText
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
	moveobject ROUTE4_ROCKET2, 14, 10
	moveobject ROUTE4_BUTCH, 14, 10
	moveobject ROUTE4_CASSIDY, 14, 10
	appear ROUTE4_ROCKET2
	appear ROUTE4_BUTCH
	appear ROUTE4_CASSIDY
	applymovement ROUTE4_ROCKET2, Route4_RocketsEnterMovement1
	turnobject ROUTE4_ROCKET2, RIGHT
	turnobject PLAYER, DOWN
	opentext 
	writetext Route4_RocketsText1
	waitbutton 
	closetext
	applymovement ROUTE4_BUTCH, Route4_ButchEntersMovement
	applymovement ROUTE4_CASSIDY, Route4_CassidyEntersMovement
	turnobject ROUTE4_ROCKET2, UP
	showemote EMOTE_SHOCK, ROUTE4_ROCKET2, 15
	opentext 
	writetext Route4_RocketsText2
	waitbutton
	closetext
	turnobject ROUTE4_ROCKET2, RIGHT
	opentext
	writetext Route4_RocketsText3
	waitbutton 
	closetext 
	applymovement ROUTE4_ROCKET2, Route4_RocketsEnterMovement2
	disappear ROUTE4_ROCKET2
	turnobject ROUTE4_BUTCH, RIGHT 
	showemote EMOTE_SAD, ROUTE4_BUTCH, 15
	opentext 
	writetext Route4_ButchText1
	waitbutton
	writetext Route4_CassidyText1
	waitbutton
	closetext
	showemote EMOTE_HAPPY, ROUTE4_BUTCH, 15
	opentext
	writetext Route4_ButchText2
	waitbutton
	closetext
	applymovement ROUTE4_BUTCH, Route4_ButchApproachesPlayerMovement
	turnobject PLAYER, LEFT 
	applymovement ROUTE4_CASSIDY, Route4_CassidyApproachesPlayerMovement 
	turnobject PLAYER, DOWN 
	pause 15
	winlosstext Route4_RocketsWinLossText, 0
	loadtrainer ROCKETAGENTS, BUTCH_AND_CASSIDY1
	startbattle
	reloadmapafterbattle
	showemote EMOTE_SHOCK, ROUTE4_CASSIDY, 15
	showemote EMOTE_SHOCK, ROUTE4_BUTCH, 15
	opentext 
	writetext Route4_CassidyText2
	waitbutton 
	closetext
	showemote EMOTE_SHADOW, ROUTE4_BUTCH, 15
	turnobject PLAYER, LEFT 
	opentext
	writetext Route4_ButchText3
	waitbutton
	closetext
	applymovement ROUTE4_BUTCH, Route4_ButchLeavesMovement
	applymovement ROUTE4_CASSIDY, Route4_CassidyLeavesMovement
	moveobject ROUTE4_BUTCH, 1, 1
	moveobject ROUTE4_CASSIDY, 1, 1
	disappear ROUTE4_BUTCH
	disappear ROUTE4_CASSIDY
	clearevent EVENT_ROUTE_4_GUARD
	opentext
	writetext Route4_PlayerText2
	waitbutton
	closetext 
	applymovement PLAYER, Route4_PlayerMovement2
	appear ROUTE4_ROCKET1
	setevent EVENT_ROUTE_4_ROCKETS
	setevent EVENT_OAKS_AIDE_IN_CERULEAN_POKEMON_CENTER
	clearevent EVENT_ROUTE_4_GUARD
	setscene SCENE_ROUTE4_NOTHING 
	end

Route4_Rocket1Script:
	jumptextfaceplayer Route4_Rocket1Text


Route4_Sign:
	jumptext Route4_SignText

Route4HPUp:
	itemball HP_UP

Route4_TM:
	opentext
	verbosegiveitem TM_ROAR 
	iffalse .done
	disappear ROUTE4_TM
	closetext
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

	para "Whatever. It's"
	line "not like I was"
	cont "going back in"
	cont "anyway!"

	para "CERULEAN GYM"
	line "is further ahead!"
	
	para "That GYM BADGE"
	line "will be mine!"
	done 

Route4_RocketsText1:
	text "This is it."
	line "MOUNT MOON."

	para "Time to set up"
	line "operations."
	done 

Route4_RocketsText2:
	text "What are you"
	line "looking at, kid?"
	done 

Route4_RocketsText3:
	text "I'll go on ahead."
	line "BIFF, you wrap"
	cont "this up here!"
	done 

Route4_RocketsWinLossText:
	text "BUTCH: N-No way…"

	para "CASSIDY: This"
	line "can't be!"
	done 

Route4_ButchText1:
	text "BUTCH: Grr… It's"
	line "BUTCH! Every"
	cont "time…"
	done 

Route4_ButchText2:
	text "BUTCH: Heheh…"
	line "you're not wrong!"

	para "You! Twerp!"
	line "You're toast!"
	done 

Route4_ButchText3:
	text "BUTCH: That's"
	line "right! Consider"
	cont "yourself lucky!"

	para "But, for your own"
	line "good, I'd stay"
	cont "away from that"
	cont "cave from now on."

	para "CASSIDY! Time to"
	line "blast off!"
	done 

Route4_CassidyText1:
	text "CASSIDY: Forget"
	line "it, BUTCH, just"
	cont "take care of"
	cont "the twerp!"

	para "You can take your"
	line "frustration on"
	cont "him, too!"
	done

Route4_CassidyText2:
	text "CASSIDY: …"
	line "…"

	para "Whatever! This"
	line "was just a fluke,"
	cont "you get it?"

	para "Don't you dare"
	line "get cocky, twerp!"
	done 

Route4_Rocket1Text:
	text "We're pulling a"
	line "big job here!"

	para "Stay out, kid!"
	done 

LassCrissySeenText:
	text "I came to get my"
	line "mushroom #MON!"
	done

LassCrissyBeatenText:
	text "Oh! My cute"
	line "mushroom #MON!"
	done

LassCrissyAfterBattleText:
	text "There might not"
	line "be any more"
	cont "mushrooms here."

	para "I think I got"
	line "them all."
	done

Route4_SignText:
	text "ROUTE 4"

	para "EAST to"
	line "CERULEAN"
	done

Route4_PlayerMovement1Top:
	step RIGHT 
	step RIGHT
	step RIGHT
	step DOWN 
	step RIGHT
	step RIGHT
	step_end

Route4_PlayerMovement1Bot:
	step DOWN
	step RIGHT 
	step RIGHT
	step RIGHT
	step UP 
	step RIGHT
	step RIGHT 
	step RIGHT
	step_end

Route4_PlayerMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

Route4_RocketsEnterMovement1:
Route4_ButchLeavesMovement:
Route4_CassidyLeavesMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Route4_ButchEntersMovement:
	step LEFT
	step LEFT
	step LEFT
	step_end 

Route4_CassidyEntersMovement:
	step LEFT
	step LEFT
	step_end 

Route4_RocketsEnterMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP 
	step UP 
	step LEFT
	step LEFT
	step_end

Route4_ButchApproachesPlayerMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP 
	step UP 
	step UP
	step RIGHT
	step RIGHT
	step_end

Route4_CassidyApproachesPlayerMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT 
	step LEFT
	step UP 
	step UP 
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

Route4_RocketsEnterMovement3:
	step LEFT
	step_end

Route4_RocketsEnterMovement4:
	step LEFT
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

	db 7 ; object events
	object_event 30,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerLassCrissy, -1
	object_event 22,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 4, Route4_TM, EVENT_GOT_TM05_ROAR_AT_ROUTE_4
	object_event 26,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4HPUp, EVENT_ROUTE_4_HP_UP
	object_event  2,  6, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, Route4_Rocket1Script, EVENT_ROUTE_4_GUARD ;guard
	object_event  1,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, ObjectEvent, EVENT_ROUTE_4_ROCKETS
	object_event  1,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, ObjectEvent, EVENT_ROUTE_4_ROCKETS ;Butch
	object_event  1,  1, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, ObjectEvent, EVENT_ROUTE_4_ROCKETS ;Cassidy
