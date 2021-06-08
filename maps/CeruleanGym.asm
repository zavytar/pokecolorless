	object_const_def ; object_event constants
	const CERULEANGYM_MISTY
	const CERULEANGYM_SWIMMER_GIRL1
	const CERULEANGYM_SWIMMER_GIRL2
	const CERULEANGYM_GYM_GUY

CeruleanGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanGymMistyScript:
	faceplayer
	opentext
	checkflag ENGINE_HIVEBADGE ; CASCADEBADGE
	iftrue .FightDone
	writetext MistyIntroText
	waitbutton
	closetext
	winlosstext MistyWinLossText, 0
	loadtrainer MISTY, MISTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_SWIMMERF_LOUISE
	setevent EVENT_BEAT_SWIMMERF_DIANA
	opentext
	writetext ReceivedCascadeBadgeText
	playsound SFX_GET_BADGE
	waitsfx
;	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_HIVEBADGE
	waitbutton
	writetext MistyAfterBattleText
	waitbutton
	verbosegiveitem TM_ICY_WIND
	iffalse .done
.FightDone:
	writetext MistyFightDoneText
	waitbutton
	closetext
	end

	
.done
	end 

TrainerSwimmerfLouise:
	trainer SWIMMERF, SWIMMER_LOUISE, EVENT_BEAT_SWIMMERF_LOUISE, SwimmerFLouiseSeenText, SwimmerFLouiseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFLouiseAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerFDiana:
	trainer SWIMMERF, SWIMMER_DIANA, EVENT_BEAT_SWIMMERF_DIANA, SwimmerFDianaSeenText, SwimmerFDianaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFDianaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermParker:
	trainer SWIMMERM, PARKER, EVENT_BEAT_SWIMMERM_PARKER, SwimmermParkerSeenText, SwimmermParkerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermParkerAfterBattleText
	waitbutton
	closetext
	end

CeruleanGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MISTY
	iftrue .CeruleanGymGuyWinScript
	writetext CeruleanGymGuyText
	waitbutton
	closetext
	end

.CeruleanGymGuyWinScript:
	writetext CeruleanGymGuyWinText
	waitbutton
	closetext
	end

CeruleanGymStatue1:
CeruleanGymStatue2:
	checkflag ENGINE_CASCADEBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	gettrainername STRING_BUFFER_4, MISTY, MISTY1
	jumpstd gymstatue2

MistyIntroText:
	text "Hi, you're a new"
	line "face!"

	para "What's your policy"
	line "on #MON? What"
	cont "is your approach?"

	para "My policy is an"
	line "all-out offensive"
	cont "with water-type"
	cont "#MON!"

	para "MISTY, the world-"
	line "famous beauty, is"
	cont "your host!"

	para "Are you ready,"
	line "sweetie?"
	done

MistyWinLossText:	
	text "I can't"
	line "believe I lost!"

	para "All right!"

	para "You can have the"
	line "CASCADEBADGE to"
	cont "show you beat me!"
	prompt


MistyAfterBattleText:
	text "The CASCADEBADGE"
	line "makes all #MON"
	cont "up to L30 obey!"

	para "That includes"
	line "even outsiders!"

	para "There's more, you"
	line "can now use CUT"
	cont "anytime!"

	para "You can CUT down"
	line "small bushes to"
	cont "open new paths!"

	para "You can also have"
	line "my favorite TM!"
	done

ReceivedCascadeBadgeText:
	text "<PLAYER> received"
	line "CASCADEBADGE."
	done

MistyFightDoneText:
	text "MISTY: TM11"
	line "teaches SCALD!"

	para "Use it on an"
	line "aquatic #MON!"
	done

SwimmerFLouiseSeenText:
	text "Splash!"

	para "I'm first up!"
	line "Let's do it!"
	done

SwimmerFLouiseBeatenText:
	text "That"
	line "can't be!"
	done

SwimmerFLouiseAfterBattleText:
	text "MISTY is going to"
	line "keep improving!"

	para "She won't lose to"
	line "someone like you!"
	done

SwimmerFDianaSeenText:
	text "I'm more than good"
	line "enough to dispose"
	cont "of you."

	para "MISTY won't have to"
	line "be bothered."
	done

SwimmerFDianaBeatenText:
	text "Ooh, you calmly"
	line "disposed of me…"
	done

SwimmerFDianaAfterBattleText:
	text "Don't be too smug"
	line "about beating me."

	para "MISTY will destroy"
	line "you if you get"
	cont "complacent."
	done

SwimmermParkerSeenText:
	text "Glub…"

	para "I'm first! Come"
	line "and get me!"
	done

SwimmermParkerBeatenText:
	text "This can't be…"
	done

SwimmermParkerAfterBattleText:
	text "MISTY has gotten"
	line "much better in the"
	cont "past few years."

	para "Don't let your"
	line "guard down, or"
	cont "you'll be crushed!"
	done

CeruleanGymGuyText:
	text "Yo! CHAMP in"
	line "making!"

	para "GYM LEADER MISTY"
	line "is a pro who uses"
	cont "water #MON!"

	para "You can drain all"
	line "their water with"
	cont "plant #MON!"

	para "Or, zap them with"
	line "electricity!"
	done

CeruleanGymGuyWinText:
	text "You beat MISTY!"
	line "What'd I tell ya?"

	para "You and me, kid,"
	line "we make a pretty"
	cont "darn good team!"
	done

CeruleanGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 15, CERULEAN_CITY, 2
	warp_event  5, 15, CERULEAN_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2, 13, BGEVENT_READ, CeruleanGymStatue1
	bg_event  6, 13, BGEVENT_READ, CeruleanGymStatue2

	db 4 ; object events
	object_event  5,  3, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanGymMistyScript, -1
	object_event  6,  5, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerFLouise, -1
	object_event  6,  9, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSwimmerFDiana, -1
	object_event  7, 13, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanGymGuyScript, -1
