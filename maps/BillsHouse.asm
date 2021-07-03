	object_const_def ; object_event constants
	const BILLSHOUSE_BILL

BillsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

BillsHouse_BillScript:
	checkitem POKE_PC 
	iftrue .BillNPCScript
	showemote EMOTE_SAD, BILLSHOUSE_BILL, 15
	opentext
	writetext BillsHouse_BillText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, BILLSHOUSE_BILL, 15
	waitbutton
	faceplayer
	opentext
	writetext BillsHouse_BillText2
	waitbutton
	closetext 
	pause 15
	opentext
	writetext BillsHouse_BillText3
	waitbutton
	closetext
	showemote EMOTE_HAPPY, PLAYER, 15
	writetext BillsHouse_PlayerText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, BILLSHOUSE_BILL, 15
	opentext
	writetext BillsHouse_BillText4
	waitbutton
	verbosegiveitem POKE_PC
	iffalse .done	
	writetext BillsHouse_BillText5
	waitbutton 
	addcellnum PHONE_BILL
	writetext BillsHouse_BillText6
	verbosegiveitem TM_SWIFT
	iffalse .done	
	end

.BillNPCScript:
	jumptextfaceplayer BillsHouse_BillText7
	end

.done:
	end

BillsHouse_PlayerText1:
	text "<PLAYER>: Yeah!"
	line "That's right!"

	para "He sent me on"
	line "my own #MON"
	cont "journey!"

	para "He even gave me"
	line "this to record"
	cont "#MON data!"

	para "It's called"
	line "#DEX!"

BillsHouse_BillText1:
	text "Hmmm."

	para "This project is"
	line "taking much more"
	cont "than I'd planned."
	done

BillsHouse_BillText2:
	text "Oh, hello there."

	para "My name is BILL."

	para "I'm a #MON"
	line "collector. I"
	cont "also developed the"
	cont "#MON STORAGE"
	cont "SYSTEM."

	para "Are you here to"
	line "see my #MON"
	cont "collection?"
	
	para "Sorry, but I'm"
	line "a bit busy with"
	cont "something"
	cont "right now."
	done

BillsHouse_BillText3
	text "… …"

	para "Wait, I've seen"
	line "you before."

	para "Is your name"
	line "<PLAYER>,"
	cont "by any chance?"

	para "…"

	para "Oh, wow!"
	line "It is!"

	para "You're PROF."
	line "OAK's grandson,"
	cont "right?"
	done

BillsHouse_BillText4
	text "… …"
	line "What's that?"
	done

	para "A #DEX?"

	para "That looks neat!"
	line "I take it you"
	cont "will be catching"
	cont "plenty of #-"
	cont "MON, then!"

	para "… …"

	para "Wait! I know!"
	line "This could be it!"

	para "<PLAYER>! Please"
	line "take this with you!"
	done 

BillsHouse_BillText5:
	text "That's something"
	line "that I've been"
	cont "working on."

	para "That device gives"
	line "you access to the"
	cont "PC everywhere."

	para "It's a working"
	line "prototype, but"
	para "I've been too busy"
	line "with my TELEPORTER"
	cont "experiment to"
	cont "test it out."

	para "By the way, do"
	line "you have a #-"
	cont "GEAR?"
	cont "You do?"

	para "Splendid! Then"
	line "here's my number!"
	done 

BillsHouse_BillText6:
	text "Give me a call if"
	line "you need to."

	para "You're a great"
	line "help, <PLAYER>."

	para "Here's something"
	line "for your trouble."
	done

BillsHouse_BillText7:
	text "Feel free to"
	line "check out my"
	cont "#MON collection"
	cont "on my PC."

	para "EEVEE is my"
	line "favourite, and"
	cont "it has many"
	cont "evolutions!"
	done




BillsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ROUTE_25, 1
	warp_event  3,  7, ROUTE_25, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_BILL, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BillsHouse_BillScript, -1
