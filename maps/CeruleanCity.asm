	object_const_def ; object_event constants
	const CERULEANCITY_COOLTRAINER_M1
	const CERULEANCITY_ROCKET
	const CERULEANCITY_GUARD
	const CERULEANCITY_COOLTRAINER_F
	const CERULEANCITY_SLOWBRO
	const CERULEANCITY_LASS
	const CERULEANCITY_COOLTRAINER_M2
	const CERULEAN_CITY_POKEFAN

CeruleanCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CERULEAN
	return

CeruleanCity_CooltrainerM1Script:
	jumptextfaceplayer CeruleanCity_CooltrainerM1Text1

CeruleanCity_CooltrainerM2Script:
	jumptextfaceplayer CeruleanCity_CooltrainerM2Text1

CeruleanCity_PokefanScript:
	jumptextfaceplayer CeruleanCity_PokefanText1

CeruleanCity_SchemeScript:
	jumptext CeruleanCity_SchemeText

CeruleanCity_Slowbro:
	opentext
	writetext CeruleanCity_SlowbroText
	cry SLOWBRO
	waitbutton
	closetext
	end

CeruleanCity_CooltrainerFScript:
	faceplayer
	opentext
	writetext CeruleanCity_CooltrainerFText1
	waitbutton
	closetext
	turnobject CERULEANCITY_COOLTRAINER_F, LEFT
	opentext
	writetext CeruleanCity_CooltrainerFText2
	waitbutton
	closetext
	opentext
	writetext CeruleanCity_SlowbroText
	cry SLOWBRO
	waitbutton
	closetext
	opentext
	writetext CeruleanCity_CooltrainerFText3
	waitbutton
	closetext
	end

CeruleanCity_LassScript:
	faceplayer
	opentext
	writetext CeruleanCity_LassText
	waitbutton
	closetext
	end

CeruleanCitySign:
	jumptext CeruleanCitySignText

CeruleanGymSign:
	jumptext CeruleanGymSignText

CeruleanBikeShopSign:
	jumptext CeruleanBikeShopSignText

CeruleanPoliceSign:
	jumptext CeruleanPoliceSignText

CeruleanCapeSign:
	jumptext CeruleanCapeSignText

CeruleanLockedDoor:
	jumptext CeruleanLockedDoorText

CeruleanCityPokecenterSign:
	jumpstd pokecentersign

CeruleanCityMartSign:
	jumpstd martsign

;CeruleanCityHiddenBerserkGene:
;	hiddenitem BERSERK_GENE, EVENT_FOUND_BERSERK_GENE_IN_CERULEAN_CITY

CeruleanCity_CooltrainerM1Text1:
	text "This is CERULEAN"
	line "CAVE! Horribly"
	cont "strong #MON"
	cont "live in there!"

	para "The #MON LEAGUE"
	line "champion is the"
	cont "only person who"
	cont "is allowed in!"
	done

CeruleanCity_SchemeText:
	text "GRUNT: …"
	
	para "Okay, remember to"
	line "stick to the plan."

	para "I'll hit the place"
	line "and you monitor"
	cont "the situation"
	cont "from your spot."

	para "???: Yes."

	para "And if anyone gets"
	line "past the five"
	cont "trainers,"
	para "I'll talk them"
	line "into joining us!"

	para "GRUNT: Perfect."

	para "Now, on to getting"
	line "that rare TM!"
	done

CeruleanCity_SlowbroText:
	text "SLOWBRO: Yarah?"
	done

CeruleanCity_PokefanText1:
	text "You're making an"
	line "encyclopedia on"
	cont "#MON? That"
	cont "sounds amusing."
	done

CeruleanCity_CooltrainerFText1:
	text "My SLOWBRO and I"
	line "make an awesome"
	cont "combination!"
	done

CeruleanCity_CooltrainerFText2:
	text "SLOWBRO, show me"
	line "your CONFUSION!"
	done

CeruleanCity_CooltrainerFText3:
	text "…"
	done

CeruleanCity_LassText:
	text "I want a bright"
	line "red BICYCLE!"

	para "I'll keep it at"
	line "home, so it won't"
	cont "get dirty!"
	done

CeruleanCity_CooltrainerM2Text1:
	text "You're a trainer"
	line "too? Collecting,"
	cont "fighting, it's a"
	cont "tough life."
	done

CeruleanCitySignText:
	text "CERULEAN CITY"

	para "A Mysterious Blue"
	line "Aura Surrounds It"
	done

CeruleanGymSignText:
	text "CERULEAN CITY"
	line "#MON GYM"
	cont "LEADER: MISTY"

	para "The Tomboyish"
	line "Mermaid"
	done

CeruleanBikeShopSignText:
	text "BIKE SHOP"
	done

CeruleanPoliceSignText:
	text "There's a notice"
	line "here…"

	para "Look out for"
	line "TEAM ROCKET!"

	para "If you encounter"
	line "one of them, please"
	para "report the incident"
	line "to an OFFICER!"

	para "CERULEAN POLICE"
	done

CeruleanCapeSignText:
	text "CERULEAN CAPE"
	line "AHEAD"
	done

CeruleanLockedDoorText:
	text "It's locked…"

	para "The people who live"
	line "here must be out."
	done

CeruleanCity_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event 19, 17, CERULEAN_POKECENTER_1F, 1
	warp_event 30, 19, CERULEAN_GYM, 1
	warp_event 25, 25, CERULEAN_MART, 2
	warp_event 13, 25, BIKE_SHOP, 1
	warp_event  9, 11, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 1
	warp_event 15, 11, CERULEAN_MELANIES_HOUSE, 1
	warp_event 13, 15, CERULEAN_TRADE_SPEECH_HOUSE, 1

	db 0 ; coord events

	db 8 ; bg events
	bg_event 17, 29, BGEVENT_READ, CeruleanCitySign
	bg_event 23, 19, BGEVENT_READ, CeruleanGymSign
	bg_event 11, 25, BGEVENT_READ, CeruleanBikeShopSign
	bg_event 27, 21, BGEVENT_READ, CeruleanPoliceSign
	bg_event 23, 11, BGEVENT_READ, CeruleanCapeSign
	bg_event 27, 11, BGEVENT_READ, CeruleanLockedDoor
	bg_event 20, 17, BGEVENT_READ, CeruleanCityPokecenterSign
	bg_event 26, 25, BGEVENT_READ, CeruleanCityMartSign
;	bg_event  2, 12, BGEVENT_ITEM, CeruleanCityHiddenBerserkGene

	db 7 ; object events
	object_event 20,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCity_SchemeScript, -1
	object_event 21,  5, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCity_SchemeScript, -1
	object_event  4, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCity_CooltrainerM1Script, -1 ;guard
	object_event 30, 26, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanCity_CooltrainerFScript, -1
	object_event 29, 26, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCity_Slowbro, -1
	object_event  8, 24, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCity_LassScript, -1
	object_event 31, 22, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCity_CooltrainerM2Script, -1
	object_event 10, 19, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCity_PokefanScript, -1
