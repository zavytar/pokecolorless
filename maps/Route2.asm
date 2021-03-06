	object_const_def ; object_event constants
	const ROUTE2_POKE_BALL1
	const ROUTE2_POKE_BALL2
	const ROUTE2_POKE_BALL3
	const ROUTE2_POKE_BALL4
	const ROUTE2_FRUIT_TREE

Route2_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route2Sign:
	jumptext Route2SignText

Route2DiglettsCaveSign:
	jumptext Route2DiglettsCaveSignText

Route2ViridianForestSign:
	jumptext Route2ViridianForestSignText

Route2DireHit:
	itemball DIRE_HIT

Route2MaxPotion:
	itemball MAX_POTION

Route2Carbos:
	itemball CARBOS

Route2Elixer:
	itemball ELIXER

Route2FruitTree:
	fruittree FRUITTREE_ROUTE_2

Route2HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_2_HIDDEN_MAX_ETHER

Route2HiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ROUTE_2_HIDDEN_FULL_HEAL

Route2HiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_ROUTE_2_HIDDEN_FULL_RESTORE

Route2HiddenRevive:
	hiddenitem REVIVE, EVENT_ROUTE_2_HIDDEN_REVIVE

Route2SignText:
	text "ROUTE 2"

	para "VIRIDIAN CITY -"
	line "PEWTER CITY"
	done

Route2DiglettsCaveSignText:
	text "DIGLETT'S CAVE"
	done

Route2ViridianForestSignText:
	text "VIRIDIAN FOREST"
	done

Route2_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event 15, 15, ROUTE_2_NUGGET_HOUSE, 1
	warp_event 15, 31, ROUTE_2_GATE, 3
	warp_event 16, 27, ROUTE_2_GATE, 1
	warp_event 17, 27, ROUTE_2_GATE, 2
;	warp_event 12,  7, DIGLETTS_CAVE, 3
	warp_event  3, 33, VIRIDIAN_FOREST_VIRIDIAN_GATE, 1
	warp_event  1,  7, VIRIDIAN_FOREST_PEWTER_GATE, 3
	warp_event  2,  7, VIRIDIAN_FOREST_PEWTER_GATE, 4

	db 0 ; coord events

	db 7 ; bg events
	bg_event  9, 49, BGEVENT_READ, Route2Sign
	bg_event 11,  9, BGEVENT_READ, Route2DiglettsCaveSign
	bg_event  9, 37, BGEVENT_READ, Route2ViridianForestSign
	bg_event  7, 23, BGEVENT_ITEM, Route2HiddenMaxEther
	bg_event  3, 19, BGEVENT_ITEM, Route2HiddenFullHeal
	bg_event  4, 27, BGEVENT_ITEM, Route2HiddenFullRestore
	bg_event 11, 30, BGEVENT_ITEM, Route2HiddenRevive

	db 5 ; object events
	object_event 13, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2DireHit, EVENT_ROUTE_2_DIRE_HIT
	object_event 18, 44, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2MaxPotion, EVENT_ROUTE_2_MAX_POTION
	object_event 13,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Carbos, EVENT_ROUTE_2_CARBOS
	object_event 18, 50, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Elixer, EVENT_ROUTE_2_ELIXER
	object_event 14, 42, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2FruitTree, -1
