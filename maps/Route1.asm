	object_const_def ; object_event constants
	const ROUTE1_CLERK
	const ROUTE1_COOLTRAINER_M
	const ROUTE1_FRUIT_TREE

Route1_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route1_ClerkScript:
	faceplayer
	opentext
	checkevent EVENT_ROUTE_1_GOT_POTION
	iftrue Route1_AlreadyGotPotion
	writetext Route1_ClerkText1
	waitbutton
	verbosegiveitem POTION
	iffalse .BagFull
	setevent EVENT_ROUTE_1_GOT_POTION
	closetext
	end

.BagFull:
	closetext
	end

Route1_AlreadyGotPotion:
	writetext Route1_ClerkText2
	waitbutton
	closetext
	end

Route1_CoolTrainerMScript:
	faceplayer
	opentext
	writetext Route1_CoolTrainerMText
	waitbutton
	closetext
	end

Route1Sign:
	jumptext Route1SignText

Route1FruitTree:
	fruittree FRUITTREE_ROUTE_1

Route1_ClerkText1:
	text "Hi! I work at a"
	line "#MON MART."

	para "We sell all kinds"
	line "of products."
	cont "Here, have this"
	cont "free sample!"

Route1_GotPotionText:
	para "<PLAYER> got"
	line "POTION!"
	done

Route1_ClerkText2:
	text "We also have #"
	line "BALLS for catching"
	cont "#MON!"
	end

Route1_CoolTrainerMText:
	text "See those ledges"
	line "on the side of"
	cont "the road?"

	para "It's scary, but"
	line "you can jump off"
	cont "them."

	para "You can use that"
	line "to avoid the grass"
	cont "if you're going"
	cont "to PALLET TOWN."
	end

Route1SignText:
	text "ROUTE 1"

	para "PALLET TOWN -"
	line "VIRIDIAN CITY"
	done

Route1_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 1 ; bg events
	bg_event  7, 27, BGEVENT_READ, Route1Sign

	db 3 ; object events
	object_event  4, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, ObjectEvent, -1
	object_event 12, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, ObjectEvent, -1
	object_event  3,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1FruitTree, -1
