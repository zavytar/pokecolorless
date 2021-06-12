	object_const_def ; object_event constants
	const CERULEANMELANIESHOUSE_MELANIE
	const CERULEANMELANIESHOUSE_BULBASAUR

CeruleanMelaniesHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanMelaniesHouse_MelanieScript:
	jumptextfaceplayer CeruleanMelaniesHouse_MelanieText1

CeruleanMelaniesHouse_BulbasaurScript:
	opentext
	writetext CeruleanBulbasaurText
	cry BULBASAUR
	waitbutton
	closetext
	end

CeruleanMelaniesHouse_MelanieText1:
	text "I found this hurt"
	line "BULBASAUR outside"
	cont "the other day."

	para "I'm almost done"
	line "nursing it back"
	cont "to health."

    para "It will need a"
    line "strong and loving"
    cont "trainer to take"
    cont "good care of it!"
	done

CeruleanBulbasaurText:
	text "BULBASAUR: Bul baa."
	done

CeruleanMelaniesHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, CERULEAN_CITY, 6
	warp_event  3,  7, CERULEAN_CITY, 6

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  1, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanMelaniesHouse_MelanieScript, -1
	object_event  6,  1, SPRITE_BULBASAUR, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanMelaniesHouse_BulbasaurScript, -1
