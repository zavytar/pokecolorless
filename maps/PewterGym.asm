	object_const_def ; object_event constants
	const PEWTERGYM_BROCK
	const PEWTERGYM_YOUNGSTER
	const PEWTERGYM_GYM_GUY

PewterGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PewterGymBrockScript:
	faceplayer
	opentext
	checkflag ENGINE_BOULDERBADGE
	iftrue .FightDone
	writetext BrockIntroText
	waitbutton
	closetext
	winlosstext BrockWinLossText, 0
	loadtrainer BROCK, BROCK1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_CAMPER_JERRY
	opentext
	writetext BrockBoulderBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
	waitbutton
	writetext TM02PreReceiveText
	waitbutton
	verbosegiveitem TM_HEADBUTT
	iffalse .done 
	writetext BrockExplainTMText
	waitbutton 
	closetext
	end

.done:
	end 

.FightDone:
	writetext BrockFightDoneText
	waitbutton
	closetext
	end

TrainerCamperJerry:
	trainer CAMPER, JERRY, EVENT_BEAT_CAMPER_JERRY, CamperJerrySeenText, CamperJerryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperJerryAfterBattleText
	waitbutton
	closetext
	end

PewterGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BROCK
	iftrue .PewterGymGuyWinScript
	writetext PewterGymGuyText
	waitbutton
	closetext
	end

.PewterGymGuyWinScript:
	writetext PewterGymGuyWinText
	waitbutton
	closetext
	end

PewterGymStatue:
	checkflag ENGINE_BOULDERBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	gettrainername STRING_BUFFER_4, BROCK, BROCK1
	jumpstd gymstatue2

BrockIntroText:
	text "I'm BROCK!"
	line "I'm PEWTER's GYM"
	cont "LEADER!"

	para "I believe in rock"
	line "hard defense and"
	cont "determination!"

	para "That's why my"
	line "#MON are all"
	cont "the ROCK-type!"

	para "Do you still want"
	line "to challenge me?"
	cont "Fine then! Show"
	cont "me your best!"
	done

BrockWinLossText:
	text "I took"
	line "you for granted."

	para "As proof of your"
	line "victory, here's"
	cont "the BOULDERBADGE!"

	para "<PLAYER> received"
	line "the BOULDERBADGE!@"
	done

TM02PreReceiveText:
	text "Wait! Take this"
	line "with you!"
	done

ReceivedTM02Text:
	text "<PLAYER> received"
	line "TM02 - HEADBUTT."
	done

BrockBoulderBadgeText:
	para "That's an official"
	line "#MON LEAGUE"
	cont "BADGE!"

	para "Its bearer's"
	line "#MON become"
	cont "more powerful!"

	para "The technique"
	line "FLASH can now be"
	cont "used anytime!"
	done

BrockExplainTMText:
	text "A TM contains a"
	line "technique that"
	cont "can be taught to"
	cont "#MON!"

	para "A TM won't break"
	line "after using it, so"
	cont "use it as much"
	cont "as you need!"

	para "Anyway, TM02"
	line "contains HEADBUTT!"

	para "The foe can flinch"
	line "sometimes after the"
	cont "attack hits!"

	para "You can also use"
	line "it outside on trees!"
	cont "Give it a try!"
	done

BrockFightDoneText:
	text "BROCK: There are"
	line "all kinds of trai-"
	cont "ners in the world!"

	para "Some raise #MON"
	line "for fights. Some"
	cont "see them as pets."

	para "I'm in training to"
	line "become a #MON"
	cont "breeder."

	para "If you take your"
	line "#MON training"
	cont "seriously, go"
	cont "visit the GYM in"
	cont "CERULEAN and test"
	cont "your abilities!"
	done

CamperJerrySeenText:
	text "Hey, wait!"

	para "You're still light"
	line "years from facing"
	cont "BROCK!"
	done

CamperJerryBeatenText:
	text "Light years don't"
	line "measure time…"
	cont "They're distance!"
	done

CamperJerryAfterBattleText:
	text "You're hot, but"
	line "not as hot as"
	cont "BROCK!"
	done

PewterGymGuyText:
	text "Yo! CHAMP in"
	line "making! You're"

	para "really rocking."
	line "Are you battling"

	para "the GYM LEADERS of"
	line "KANTO?"

	para "They're strong and"
	line "dedicated people,"

	para "just like JOHTO's"
	line "GYM LEADERS."
	done

PewterGymGuyWinText:
	text "Yo! CHAMP in"
	line "making! That GYM"

	para "didn't give you"
	line "much trouble."

	para "The way you took"
	line "charge was really"

	para "inspiring. I mean"
	line "that seriously."
	done

PewterGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 13, PEWTER_CITY, 2
	warp_event  5, 13, PEWTER_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2, 11, BGEVENT_READ, PewterGymStatue
	bg_event  7, 11, BGEVENT_READ, PewterGymStatue

	db 3 ; object events
	object_event  5,  1, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterGymBrockScript, -1
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperJerry, -1
	object_event  6, 11, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, PewterGymGuyScript, -1
