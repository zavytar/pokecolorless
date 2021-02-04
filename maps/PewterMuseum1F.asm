	object_const_def ; object_event constants
	const PEWTERMUSEUM1F_SCIENTIST1
	const PEWTERMUSEUM1F_SCIENTIST2
	const PEWTERMUSEUM1F_SCIENTIST3
	const PEWTERMUSEUM1F_GRAMPS

PewterMuseum1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PewterMuseum1F_Scientist1Script:
	jumptextfaceplayer PewterMuseum1F_Scientist1Text

PewterMuseum1F_Scientist2Script:
	jumptextfaceplayer PewterMuseum1F_Scientist2Text

PewterMuseum1F_Scientist3Script:
	jumptextfaceplayer PewterMuseum1F_Scientist3Text

PewterMuseum1F_GrampsScript:
	jumptextfaceplayer PewterMuseum1F_GrampsText

PewterMuseum1F_AerodactylFossil:
	jumptextfaceplayer PewterMuseum1F_AerodactylFossilText

PewterMuseum1F_KabutopsFossil:
	jumptextfaceplayer PewterMuseum1F_KabutopsFossilText

PewterMuseum1F_Scientist1Text:
	text "Welcome to PEWTER"
	line "MUSEUM!"

	para "It's ¥50 for a"
	line "child's ticket."

	para "Would you like t-"

	para "…"

	para "Oh? Why, aren't"
	line "you… OAK's grandson?"

	para "Please, feel free"
	line "to look around,"
	cont "free of charge!"
	done

PewterMuseum1F_Scientist2Text:
	text "I think that"
	line "this chunk of"
	cont "AMBER contains"
	cont "#MON DNA."

	para "It would be great"
	line "if #MON could"
	cont "be resurrected"
	cont "from it…"

	para "But, my colleagues"
	line "just ignore me!"
	done

PewterMuseum1F_Scientist3Text:
	text "There's a lab"
	line "somewhere trying"
	cont "to resurrect"
	cont "ancient #MON"
	cont "from AMBER."
	done

PewterMuseum1F_GrampsText:
	text "That is one"
	line "magnificent"
	cont "fossil!"
	done


PewterMuseum1F_KabutopsFossilText:
	text "It's a fossil of"
	line "KABUTOPS."
	done

PewterMuseum1F_AerodactylFossilText:
	text "It's a fossil of"
	line "AERODACTYL."
	done


PewterMuseum1F_MapEvents:
	db 0, 0 ; filler


	db 3 ; warp events
	warp_event 10,  7, PEWTER_CITY, 3
	warp_event 11,  7, PEWTER_CITY, 3
	warp_event  7,  7, PEWTER_MUSEUM_2F, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2,  6, BGEVENT_READ, PewterMuseum1F_KabutopsFossil
	bg_event  2,  3, BGEVENT_READ, PewterMuseum1F_AerodactylFossil

	db 4 ; object events
	object_event 12,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1F_Scientist1Script, -1
	object_event 17,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterMuseum1F_Scientist2Script, -1
	object_event 12,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1F_Scientist3Script, -1
	object_event  1,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterMuseum1F_GrampsScript, -1
