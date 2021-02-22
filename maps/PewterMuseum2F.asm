	object_const_def ; object_event constants
	const PEWTERMUSEUM2F_GRAMPS
	const PEWTERMUSEUM2F_SCIENTIST
	const PEWTERMUSEUM2F_COOLTRAINERM
	const PEWTERMUSEUM2F_POKEFAN
	const PEWTERMUSEUM2F_TWIN


PewterMuseum2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PewterMuseum2F_GrampsScript:
	jumptextfaceplayer PewterMuseum2F_GrampsText

PewterMuseum2F_ScientistScript:
	jumptextfaceplayer PewterMuseum2F_ScientistText

PewterMuseum2F_CooltrainerMScript:
	jumptextfaceplayer PewterMuseum2F_CooltrainerMText

PewterMuseum2F_PokefanScript:
	turnobject PEWTERMUSEUM2F_POKEFAN, RIGHT
	opentext 
	writetext PewterMuseum2F_PokefanText
	waitbutton
	closetext
;PokefanMike:
	faceplayer
	opentext
	trade NPC_TRADE_MIKE
	waitbutton
	closetext
	end


PewterMuseum2F_TwinScript:
	jumptextfaceplayer PewterMuseum2F_TwinText

PewterMuseum2F_SpaceShuttle:
	jumptext PewterMuseum2F_SpaceShuttleText

PewterMuseum2F_MoonStone:
	jumptext PewterMuseum2F_MoonStoneText

PewterMuseum2F_GrampsText:
	text "July 20, 1969!"

	para "The 1st lunar"
	line "landing!"

	para "I bought a color"
	line "TV to watch it!"
	done

PewterMuseum2F_ScientistText:
	text "We have a space"
	line "exhibit now."
	done

PewterMuseum2F_CooltrainerMText:
	text "MOON STONE?"

	para "What's so special"
	line "about it?"
	done

PewterMuseum2F_PokefanText:
	text "Yeah, a PIKACHU"
	line "soon, I promise!"
	done

PewterMuseum2F_TwinText:
	text "I want a PIKACHU!"
	line "It's so cute!"

	para "I asked my Daddy"
	line "to catch me one!"
	done

PewterMuseum2F_SpaceShuttleText:
	text "SPACE SHUTTLE"
	done

PewterMuseum2F_MoonStoneText:
	text "Meteorite that"
	line "fell on MT.MOON."

	para "Could it be a"
	line "MOON STONE?"
	done


PewterMuseum2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  6,  6, PEWTER_MUSEUM_1F, 3
    
	db 0 ; coord events

	db 2 ; bg events
	bg_event 11,  2, BGEVENT_READ, PewterMuseum2F_SpaceShuttle
	bg_event  2,  5, BGEVENT_READ, PewterMuseum2F_MoonStone

	db 5 ; object events
	object_event  4,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseum2F_GrampsScript, -1
	object_event 12,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterMuseum2F_ScientistScript, -1
	object_event  3,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterMuseum2F_CooltrainerMScript, -1
	object_event 11,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterMuseum2F_PokefanScript, -1
	object_event 12,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterMuseum2F_TwinScript, -1
