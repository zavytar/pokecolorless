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
	waitbutton
	closetext 
	end 

;	waitsfx
;	giveitem BICYCLE
;	writetext BorrowedABicycleText
;	playsound SFX_KEY_ITEM
;	waitsfx
;	itemnotify
;	setflag ENGINE_BIKE_SHOP_CALL_ENABLED
;	setevent EVENT_GOT_BICYCLE
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

BikeShop_Customer1Script:
	jumptextfaceplayer BikeShop_Customer1Text

BikeShop_Customer2Script:
	jumptextfaceplayer BikeShop_Customer2Text

BikeShopBicycle:
	jumptext BikeShopBicycleText

BikeShopClerkIntroText:
	text "Hi! Welcome to"
	line "our BIKE SHOP."

	para "Have we got just"
	line "the BIKE for you!"

	text "It's a cool BIKE!"
	line "Do you want it?"
	done

BikeShopClerkAgreedText:
	text "Sorry! You can't"
	line "afford it!"
	done

BorrowedABicycleText:
	text "<PLAYER> exchanged"
	line "the BIKE VOUCHER"
	cont "for a BICYCLE.@"
	done

BikeShopClerkFirstRateBikesText:
	text "My BICYCLES are"
	line "first-rate! You"

	para "can ride them"
	line "anywhere."
	done

BikeShopClerkRefusedText:
	text "Come back again"
	line "sometime!"
	done

BikeShop_Customer1Text:
	text "A plain city BIKE"
	line "is good enough"
	cont "for me!"

	para "You can't put a"
	line "shopping basket"
	cont "on an MTB!"
	done

BikeShop_Customer2Text:
	text "These BIKEs are"
	line "cool, but they're"
	cont "way expensive!"

	para "If only I had a"
	line "BIKE VOUCHER…"
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
	object_event  2,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BikeShop_Customer1Script, -1
	object_event  4,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BikeShop_Customer2Script, -1
