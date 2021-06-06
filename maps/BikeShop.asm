	object_const_def ; object_event constants
	const BIKESHOP_CLERK

BikeShop_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

.UnreferencedDummyScene:
	end

BikeShopClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE
	iftrue .GotBicycle
	writetext BikeShopClerkIntroText
	yesorno
	iffalse .Refused
	writetext BikeShopClerkAgreedText
	buttonsound
	waitsfx
	giveitem BICYCLE
	writetext BorrowedABicycleText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setflag ENGINE_BIKE_SHOP_CALL_ENABLED
	setevent EVENT_GOT_BICYCLE
.GotBicycle:
	writetext BikeShopClerkFirstRateBikesText
	waitbutton
	closetext
	end

.Refused:
	writetext BikeShopClerkRefusedText
	waitbutton
	closetext
	end

BikeShopJustReleasedCompactBike:
; unused
	jumptext BikeShopJustReleasedCompactBikeText

BikeShopBicycle:
	jumptext BikeShopBicycleText

BikeShopClerkIntroText:
	text "…sigh… I moved"
	line "here, but I can't"

	para "sell my BICYCLES."
	line "Why is that?"

	para "Could you ride a"
	line "BICYCLE and adver-"
	cont "tise for me?"
	done

BikeShopClerkAgreedText:
	text "Really? Great!"

	para "Give me your name"
	line "and phone number,"

	para "and I'll loan you"
	line "a BICYCLE."
	done

BorrowedABicycleText:
	text "<PLAYER> borrowed a"
	line "BICYCLE."
	done

BikeShopClerkFirstRateBikesText:
	text "My BICYCLES are"
	line "first-rate! You"

	para "can ride them"
	line "anywhere."
	done

BikeShopClerkRefusedText:
	text "…sigh… Oh, for"
	line "the kindness of"
	cont "people…"
	done

BikeShopJustReleasedCompactBikeText:
	text "Just released!"

	para "First-rate compact"
	line "BICYCLES!"
	done

BikeShopBicycleText:
	text "It's a shiny new"
	line "BICYCLE!"
	done

BikeShop_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, CERULEAN_CITY, 4
	warp_event  3,  7, CERULEAN_CITY, 4

	db 0 ; coord events

	db 9 ; bg events
	bg_event  1,  2, BGEVENT_READ, BikeShopBicycle
	bg_event  0,  3, BGEVENT_READ, BikeShopBicycle
	bg_event  1,  3, BGEVENT_READ, BikeShopBicycle
	bg_event  0,  5, BGEVENT_READ, BikeShopBicycle
	bg_event  1,  5, BGEVENT_READ, BikeShopBicycle
	bg_event  0,  6, BGEVENT_READ, BikeShopBicycle
	bg_event  1,  6, BGEVENT_READ, BikeShopBicycle
	bg_event  6,  6, BGEVENT_READ, BikeShopBicycle
	bg_event  7,  6, BGEVENT_READ, BikeShopBicycle

	db 1 ; object events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BikeShopClerkScript, -1
