	object_const_def ; object_event constants
	const BLUESHOUSE_DAISY

BluesHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DaisyScript:
	faceplayer
	opentext
;	readvar VAR_HOUR
;	ifequal 15, .ThreePM
	checkitem TM_RETURN
	iftrue BluesHouse_AlreadyGotTM
	writetext BluesHouse_DaisyText1
	waitbutton
	verbosegiveitem TM_RETURN
	iffalse .Done
	writetext BluesHouse_DaisyText2
	waitbutton
	closetext
	end

.Done:
	end

BluesHouse_AlreadyGotTM:
	writetext BluesHouse_DaisyText3
	waitbutton
	closetext
	end

.ThreePM:
	checkflag ENGINE_DAISYS_GROOMING
	iftrue .AlreadyGroomedMon
	writetext DaisyOfferGroomingText
	yesorno
	iffalse .Refused
	writetext DaisyWhichMonText
	waitbutton
	special DaisysGrooming
	ifequal $0, .Refused
	ifequal $1, .CantGroomEgg
	setflag ENGINE_DAISYS_GROOMING
	writetext DaisyAlrightText
	waitbutton
	closetext
	special FadeOutPalettes
	playmusic MUSIC_HEAL
	pause 60
	special FadeInPalettes
	special RestartMapMusic
	opentext
	writetext GroomedMonLooksContentText
	special PlayCurMonCry
	buttonsound
	writetext DaisyAllDoneText
	waitbutton
	closetext
	end

.AlreadyGroomedMon:
	writetext DaisyAlreadyGroomedText
	waitbutton
	closetext
	end

.Refused:
	writetext DaisyRefusedText
	waitbutton
	closetext
	end

.CantGroomEgg:
	writetext DaisyCantGroomEggText
	waitbutton
	closetext
	end

BluesHouse_DaisyText1:
	text "DAISY: Hi, <PLAYER>!"

	para "Did Grampa give"
	line "you that #MON?"
	cont "It's really cute."

	para "Don't forget to"
	line "treat it with"
	cont "loving care."

	para "By the way, here's"
	line "a gift from me!"
	done

BluesHouse_DaisyText2:
	text "That TM will teach"
	line "RETURN to your"
	cont "#MON."

	para "The happier the"
	line "#MON, the more"
	cont "powerful it is."

	para "TMs are reusable,"
	line "so keep that in"
	cont "mind too!"
	done

BluesHouse_DaisyText3:
	text "#MON are living"
	line "beings."

	para "If you see they're"
	line "tired, please give"
	cont "them some rest."
	done

DaisyOfferGroomingText:
	text "DAISY: Hi, <PLAYER>!"
	line "Good timing."
	cont "I'm about to"
	cont "to have some tea."

	para "Would you like to"
	line "join me?"

	para "Oh, your #MON"
	line "are a bit dirty."

	para "Would you like me"
	line "to groom one?"
	done

DaisyWhichMonText:
	text "DAISY: Which one"
	line "should I groom?"
	done

DaisyAlrightText:
	text "DAISY: OK, I'll"
	line "get it looking"
	cont "nice in no time."
	done

GroomedMonLooksContentText:
	text_ram wStringBuffer3
	text " looks"
	line "content."
	done

DaisyAllDoneText:
	text "DAISY: There you"
	line "go! All done."

	para "See? Doesn't it"
	line "look nice?"

	para "It's such a cute"
	line "#MON."
	done

DaisyAlreadyGroomedText:
	text "DAISY: I always"
	line "have tea around"

	para "this time. Come"
	line "join me."
	done

DaisyRefusedText:
	text "DAISY: You don't"
	line "want to have one"

	para "groomed? OK, we'll"
	line "just have tea."
	done

DaisyCantGroomEggText:
	text "DAISY: Oh, sorry."
	line "I honestly can't"
	cont "groom an EGG."
	done

BluesHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DaisyScript, -1
