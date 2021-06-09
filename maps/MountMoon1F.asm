	object_const_def ; object_event constants
	const MOUNTMOON1F_BUG_CATCHER1
    const MOUNTMOON1F_BUG_CATCHER2
    const MOUNTMOON1F_LASS1
    const MOUNTMOON1F_LASS2
	const MOUNTMOON1F_SUPER_NERD
	const MOUNTMOON1F_YOUNGSTER
	const MOUNTMOON1F_HIKER1
	const MOUNTMOON1F_HIKER2

MountMoon1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBugCatcherKent:
	trainer BUG_CATCHER, BUG_CATCHER_KENT, EVENT_BEAT_BUG_CATCHER_KENT, BugCatcherKentSeenText, BugCatcherKentBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherKentAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherRobby:
	trainer BUG_CATCHER, BUG_CATCHER_ROBBY, EVENT_BEAT_BUG_CATCHER_ROBBY, BugCatcherRobbySeenText, BugCatcherRobbyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherGregAfterBattleText
	waitbutton
	closetext
	end

TrainerLassIris:
	trainer LASS, LASS_IRIS, EVENT_BEAT_LASS_IRIS, LassIrisSeenText, LassIrisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassIrisAfterBattleText
	waitbutton
	closetext
	end

TrainerLassMiriam:
	trainer LASS, LASS_MIRIAM, EVENT_BEAT_LASS_MIRIAM, LassMiriamSeenText, LassMiriamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassMiriamAfterBattleText
	waitbutton
	closetext
	end

TrainerSuperNerdJovan:
	trainer SUPER_NERD, SUPER_NERD_JOVAN, EVENT_BEAT_SUPER_NERD_JOVAN, SuperNerdJovanSeenText, SuperNerdJovanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdJovanAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterJosh:
	trainer YOUNGSTER, YOUNGSTER_JOSH, EVENT_BEAT_YOUNGSTER_JOSH, YoungsterJoshSeenText, YoungsterJoshBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterJoshAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerMarcus:
	trainer HIKER, HIKER_MARCUS, EVENT_BEAT_HIKER_MARCUS, HikerMarcusSeenText, HikerMarcusBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerMarcusAfterBattleText
	waitbutton
	closetext
	end

MountMoon1F_Hiker2Script:
	checkitem TM_ROCK_SMASH
	iftrue .AlreadyGotTM
	opentext
	writetext MountMoon1F_Hiker2Text1
	waitbutton
	verbosegiveitem TM_HEADBUTT
	iffalse .done 
	writetext MountMoon1F_Hiker2Text2
	waitbutton
	closetext
	end

.done
	end

.AlreadyGotTM:
	jumptextfaceplayer MountMoon1F_Hiker2Text2

BugCatcherKentSeenText:
	text "Hey, you! What"
	line "are you up to?"
	done

BugCatcherKentBeatenText:
	text "You"
	line "got me!"
	done

BugCatcherKentAfterBattleText:
	text "I've seen some"
	line "odd people go deep"
	cont "in this cave"
	cont "sometimes…"

	para "They look up"
	line "to no good,"
	cont "so be careful!"
	done

BugCatcherRobbySeenText:
	text "Go through this"
	line "cave to get to"
	cont "CERULEAN CITY!"
	done

BugCatcherRobbyBeatenText:
	text "I"
	line "lost."
	done

BugCatcherRobbyAfterBattleText:
	text "ZUBAT is tough!"
	line "But, it can be"
	cont "useful if you"
	cont "catch one."
	done

LassIrisSeenText:
	text "What? I'm waiting"
	line "for my friends to"
	cont "find me here."
	done

LassIrisBeatenText:
	text "I lost?"
	done

LassIrisAfterBattleText:
	text "I heard there are"
	line "some very rare"
	cont "fossils here."

	para "We'll go looking"
	line "for some!"
	done

LassMiriamSeenText:
	text "Wow! It's way"
	line "bigger in here"
	cont "than I thought!"
	done

LassMiriamBeatenText:
	text "Oh!"
	line "I lost it!"
	done

LassMiriamAfterBattleText:
	text "How do you get"
	line "out of here?"
	done

SuperNerdJovanSeenText:
	text "What! Don't sneak"
	line "up on me!"
	done

SuperNerdJovanBeatenText:
	text "My #MON"
	line "won't do!"
	done

SuperNerdJovanAfterBattleText:
	text "I have to find"
	line "stronger #MON."
	done

YoungsterJoshSeenText:
	text "Did you come to"
	line "explore too?"
	done

YoungsterJoshBeatenText:
	text "Losing stinks!"
	done

YoungsterJoshAfterBattleText:
	text "I came down here"
	line "to show off to"
	cont "girls."
	done

HikerMarcusSeenText:
	text "WHOA! You shocked"
	line "me! Oh, you're"
	cont "just a kid!"
	done

HikerMarcusBeatenText:
	text "Wow!"
	line "Shocked again!"
	done

HikerMarcusAfterBattleText:
	text "Kids like you"
	line "shouldn't be"
	cont "here!"

	para "ZUBAT could suck"
	line "your blood!"
	done

MountMoon1F_Hiker2Text1:
	text "We use ROCK SMASH"
	line "to smash rocks and"
	cont "find fossils."

	para "Sometimes, BROCK"
	line "from PEWTER CITY"
	cont "comes by to help."
	done 

MountMoon1F_Hiker2Text2:
	text "Use ROCK SMASH"
	line "on rugged rocks"
	cont "to smash 'em up!"

	para "You can find items"
	line "and even #MON!"
	done

ReceivedTM08Text:
	text "<PLAYER> received"
	line "TM08 - ROCK SMASH."
	done

MountMoon1F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 17, 33, MOUNT_MOON_OUTSIDE, 2	; Route 3 Exit
	warp_event 43, 33, ROUTE_4, 1 	 			; Route 4 Exit
	warp_event 27, 11, MOUNT_MOON_B1F, 1 ; to NUGGET
	warp_event 19, 11, MOUNT_MOON_B1F, 2 ; to TM
	warp_event  7,  5, MOUNT_MOON_B1F, 3 ; to EXIT
	warp_event 43, 29, MOUNT_MOON_B1F, 4 ; back to B2F, EXIT

	db 0 ; coord events

	db 0 ; bg events

	db 8 ; object events
	object_event  7, 24, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerBugCatcherKent, -1 ; Bug Catcher 1
	object_event 34, 25, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerBugCatcherRobby, -1 ; Bug Catcher 2
	object_event 18, 25, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerLassIris, -1 ; Lass 1
	object_event 29,  4, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerLassMiriam, -1 ; Lass 2
	object_event 24, 30, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerSuperNerdJovan, -1 ; Super Nerd
	object_event 14, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerYoungsterJosh, -1 ; Youngster
	object_event  8,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerHikerMarcus, -1 ; Hiker 1
	object_event 40,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoon1F_Hiker2Script, -1 ; Hiker 2
