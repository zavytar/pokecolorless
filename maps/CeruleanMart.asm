	object_const_def ; object_event constants
	const CERULEANMART_CLERK
	const CERULEANMART_COOLTRAINER_M
	const CERULEANMART_COOLTRAINER_F

CeruleanMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanMart_Clerk:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CERULEAN
	closetext
	end

CeruleanMart_CooltrainerM:
	jumptextfaceplayer CeruleanMart_CooltrainerMText

CeruleanMart_CooltrainerF:
	jumptextfaceplayer CeruleanMart_CooltrainerFText

CeruleanMart_CooltrainerMText:
	text "You'll run into"
	line "many trainers on"

	para "the way to CERU-"
	line "LEAN's CAPE."

	para "They want to see"
	line "how they stack"

	para "up against other"
	line "trainers."
	done

CeruleanMart_CooltrainerFText:
	text "MISTY is about the"
	line "only person in"

	para "town who can beat"
	line "the trainers at"
	cont "CERULEAN's CAPE."
	done

CeruleanMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, CERULEAN_CITY, 3
	warp_event  3,  7, CERULEAN_CITY, 3

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanMart_Clerk, -1
	object_event  1,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanMart_CooltrainerM, -1
	object_event  7,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanMart_CooltrainerF, -1
