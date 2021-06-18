	object_const_def ; object_event constants
	const ROUTE24_BRIDGETRAINER1
	const ROUTE24_BRIDGETRAINER2
	const ROUTE24_BRIDGETRAINER3
	const ROUTE24_BRIDGETRAINER4	
	const ROUTE24_BRIDGETRAINER5
	const ROUTE24_ROCKET
	const ROUTE24_CAMPER1
	const ROUTE24_COOLTRAINERM1

Route24_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route24RocketScript:
	end

Route24_CooltrainerMScript:
	faceplayer
;	checkevent EVENT_BEAT_RED_AT_S_S_ANNE
;	iftrue .RedGotCharmander
;	checkevent EVENT_BEAT_COOLTRAINER_DAMIEN
;	iftrue .AlreadyBeaten 
	opentext
	writetext Route24_CooltrainerDamienText1
	waitbutton
	yesorno
	iftrue .BattleCooltrainerDamien
	writetext Route24_CooltrainerDamienText3
	waitbutton 
	closetext
	end 

.RedGotCharmander:
	opentext
	writetext Route24_CooltrainerDamienText4
	waitbutton
	closetext
	end 

.AlreadyBeaten:
	opentext 
	writetext Route24_CooltrainerDamienText3
	waitbutton
	closetext
	end 

.BattleCooltrainerDamien:	
	closetext
	winlosstext Route24_CooltrainerDamienBeatenText, -1
	loadtrainer COOLTRAINERM, COOLTRAINER_M_DAMIEN
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext Route24_CooltrainerDamienText2
	buttonsound
	end

Route24_CooltrainerDamienText1:
	text "Hey! I need to"
	line "test something!"

	para "Let me battle"
	line "with you!"
	done 

Route24_CooltrainerDamienText2:
	text "I guess that"
	line "settles it…"
	
	para "I'm not good at"
	line "raising #MON."

	para "Maybe I should"
	line "give them away…"

	para "Anyway, thanks for"
	line "your trouble. Here,"
	cont "have this!"
	done

Route24_CooltrainerDamienText3:
	text "Oh… Well, okay."

	para "Talk to me if you"
	line "change your mind."
	done 

Route24_CooltrainerDamienText4:
	text "I gave away my"
	line "CHARMANDER to"
	cont "some trainer who"
	cont "passed by."

	para "He got past the"
	line "NUGGET BRIDGE"
	cont "trainers, so he"
	cont "should be able to"
	cont "take better care"
	cont "of it than I."
	done 




Route24_CooltrainerDamienBeatenText:
	text "Sigh…"
	line "Again…"

Route24RocketSeenText:
	text "Hey, kid! Me am a"
	line "TEAM ROCKET member"
	cont "kind of guy!"

	para "Come from another"
	line "country, a trainer"
	cont "number one, me!"

	para "Think I did, if"
	line "stop the energy,"

	para "be big panic for"
	line "here people!"

	para "Secret it is my"
	line "mission, so tell"
	cont "you I not!"

	para "But! If win you do"
	line "versus me, a man I"

	para "be and mine secret"
	line "to you I tell."

	para "Hey, kid! Battle"
	line "begin we do!"
	done

Route24RocketBeatenText:
	text "Ayieeeh! No, no,"
	line "no, believe it I"
	cont "can't!"

	para "Strong very much"
	line "be you! Match I am"
	cont "not to you!"
	done

Route24RocketAfterBattleText:
	text "OK. Tell you mine"
	line "secret will I."

	para "MACHINE PART steal"
	line "by me, hide it I"

	para "did in GYM of the"
	line "CERULEAN."

	para "Inside water put"
	line "it I did. Look for"

	para "in water center of"
	line "GYM at."

	para "But you forget me"
	line "not!"

	para "Beat you for sure"
	line "will TEAM ROCKET."

	para "Come from JOHTO"
	line "will they, mine"

	para "friends, yes. Will"
	line "revenge they are."
	done

Route24RocketDisappearsText:
	text "…"

	para "You say what? TEAM"
	line "ROCKET bye-bye a"

	para "go-go? Broken it"
	line "is says you?"

	para "Oh, no! Should I"
	line "do what now on"
	cont "from, me?"
	done

Route24_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 8 ; object events
	object_event 11, 30, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, -1
	object_event 10, 27, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, -1
	object_event 11, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, -1
	object_event 10, 21, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, -1
	object_event 11, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, -1
	object_event 11, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, EVENT_ROUTE_24_ROCKET
	object_event  5, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, -1
	object_event  6,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24_CooltrainerMScript, -1
