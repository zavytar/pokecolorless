	object_const_def ; object_event constants
	const CERULEANPOKECENTER1F_NURSE
	const CERULEANPOKECENTER1F_SUPER_NERD
	const CERULEANPOKECENTER1F_GYM_GUY
	const CERULEANPOKECENTER1F_OAKS_AIDE

CeruleanPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanPokecenter1FNurseScript:
	jumpstd pokecenternurse

CeruleanPokecenter1FSuperNerdScript:
	special Mobile_DummyReturnFalse
	iftrue .mobile
	jumptextfaceplayer CeruleanPokecenter1FSuperNerdText

.mobile
	jumptextfaceplayer CeruleanPokecenter1FSuperNerdText_Mobile

CeruleanPokecenter1FGymGuyScript:
	jumptextfaceplayer CeruleanPokecenter1FGymGuyText

CeruleanPokecenter1F_OaksAideScript:
	opentext
	writetext CeruleanPokecenter1F_OaksAideText1
	waitbutton
	giveitem S_S_TICKET
	writetext CeruleanPokecenter1F_PlayerGotSSTicketText
	playsound SFX_KEY_ITEM
	waitsfx
	waitbutton
	writetext CeruleanPokecenter1F_OaksAideText2
	waitbutton 
	giveitem BIKE_VOUCHER
	writetext CeruleanPokecenter1F_PlayerGotBikeVoucherText
	playsound SFX_KEY_ITEM
	waitsfx
	waitbutton
	writetext CeruleanPokecenter1F_OaksAideText3
	waitbutton 
	closetext
	disappear CERULEANPOKECENTER1F_OAKS_AIDE
	clearevent EVENT_OAKS_AIDE_IN_CERULEAN_POKEMON_CENTER 
	end 

CeruleanPokecenter1FSuperNerdText:
	text "For battles, I'd"
	line "much rather use"

	para "#MON I've been"
	line "raising, even if"

	para "they're weaker"
	line "than some newly"
	cont "caught #MON."
	done

CeruleanPokecenter1FSuperNerdText_Mobile:
	text "Do you battle by"
	line "mobile phone?"

	para "If time runs out"
	line "during a battle,"

	para "waiting to see who"
	line "won is really"
	cont "nerve wracking."
	done

CeruleanPokecenter1FGymGuyText:
	text "The MAGNET TRAIN"
	line "travels at over"

	para "340 mph. It goes"
	line "between KANTO and"

	para "JOHTO in almost no"
	line "time at all."

	para "It really makes"
	line "JOHTO accessible."
	done

CeruleanPokecenter1F_OaksAideText1:
	text "Hi, <PLAYER>,"
	line "remember me?"

	para "I'm one of your"
	line "Grandpa's AIDES."

	para "He sent me here"
	line "to give you some-"
	cont "thing! Here!"
	done 

CeruleanPokecenter1F_OaksAideText2: 
	text "That's a ticket"
	line "for the party at"
	cont "the S.S. ANNE!"

	para "It's a real fancy"
	line "party with many"
	cont "trainers from all"
	cont "over the world."

	para "You'll love it!"
	
	para "Oh, and before I"
	line "go, DAISY said to"
	cont "give you this too!"
	done 	

CeruleanPokecenter1F_OaksAideText3:
	text "Exchange that for"
	line "a new bike in the"
	cont "BIKE SHOP!"

	para "By the way, if"
	line "you want, head"
	cont "north to reach"
	cont "BILL's place."

	para "He's a #MON"
	line "collector, who"
	cont "invented the #MON"
	cont "STORAGE SYSTEM."

	para "Meeting would be"
	line "useful for you"
	cont "and your Gramps'"
	cont "research!"

	para "And with that,"
	line "I'm off! See you!"
	done 

CeruleanPokecenter1F_PlayerGotSSTicketText:
	text "<PLAYER> got the"
	line "S.S. TICKET!"
	done 

CeruleanPokecenter1F_PlayerGotBikeVoucherText:
	text "<PLAYER> got the"
	line "BIKE VOUCHER!"
	done 

CeruleanPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, CERULEAN_CITY, 1
	warp_event  4,  7, CERULEAN_CITY, 1
;	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FSuperNerdScript, -1
	object_event  1,  5, SPRITE_GYM_GUY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FGymGuyScript, -1
	object_event  4,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1F_OaksAideScript, EVENT_OAKS_AIDE_IN_CERULEAN_POKEMON_CENTER 
