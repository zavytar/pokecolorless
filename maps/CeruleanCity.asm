	object_const_def ; object_event constants
	const CERULEANCITY_COOLTRAINER_M
	const CERULEANCITY_SUPER_NERD
	const CERULEANCITY_SLOWPOKE
	const CERULEANCITY_COOLTRAINER_F
	const CERULEANCITY_FISHER
	const CERULEANCITY_YOUNGSTER

CeruleanCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CERULEAN
	return

CeruleanCity_CooltrainerMScript:
	faceplayer
	opentext
;	writetext CeruleanCityCooltrainerMText1
	waitbutton
	closetext
	end

CeruleanCity_SuperNerdScript:
	jumptextfaceplayer CeruleanCity_SuperNerdText

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

CeruleanCity_FisherScript:
	faceplayer
	opentext
	writetext CeruleanCity_FisherText
	waitbutton
	closetext
	end

CeruleanCity_YoungsterScript:
	faceplayer
	opentext
	writetext CeruleanCity_YoungsterText1
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

CeruleanCity_CooltrainerMText1:
	text "KANTO's POWER"
	line "PLANT?"

	para "It's near the end"
	line "of ROUTE 9, the"

	para "road that heads"
	line "east from here."

	para "I think there was"
	line "an accident of"
	cont "some sort there."
	done

CeruleanCity_SuperNerdText:
	text "The CAPE in the"
	line "north is a good"

	para "place for dates."
	line "Girls like it!"
	done

CeruleanCity_SlowbroText:
	text "SLOWBRO: Yarah?"
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

CeruleanCity_FisherText:
	text "I'm a huge fan of"
	line "CERULEAN GYM's"
	cont "MISTY."
	done

CeruleanCity_YoungsterText1:
	text "There used to be a"
	line "cave here that had"

	para "horribly powerful"
	line "#MON in it."
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
	text "There's a notice"
	line "here…"

	para "The BIKE SHOP has"
	line "moved to GOLDENROD"
	cont "CITY in JOHTO…"
	done

CeruleanPoliceSignText:
	text "There's a notice"
	line "here…"

	para "Stamp out thievery"
	line "and make the city"

	para "a friendlier, more"
	line "cheerful place!"

	para "CERULEAN POLICE"
	done

CeruleanCapeSignText:
	text "CERULEAN CAPE"
	line "AHEAD"
	done

CeruleanLockedDoorText:
	text "It's locked…"
	done

CeruleanCity_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 19, 17, CERULEAN_POKECENTER_1F, 1
	warp_event 30, 19, CERULEAN_GYM, 1
	warp_event 25, 25, CERULEAN_MART, 2
	warp_event 13, 25, BIKE_SHOP, 1
;	warp_event  9, 15, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 1
;	warp_event 25, 15, CERULEAN_POLICE_STATION, 1
;	warp_event 13, 19, CERULEAN_TRADE_SPEECH_HOUSE, 1

	db 0 ; coord events

	db 6 ; bg events
	bg_event 17, 29, BGEVENT_READ, CeruleanCitySign
	bg_event 23, 19, BGEVENT_READ, CeruleanGymSign
	bg_event 11, 25, BGEVENT_READ, CeruleanBikeShopSign
;	bg_event 25, 17, BGEVENT_READ, CeruleanPoliceSign
	bg_event 23, 11, BGEVENT_READ, CeruleanCapeSign
;	bg_event 14, 29, BGEVENT_READ, CeruleanLockedDoor
	bg_event 20, 17, BGEVENT_READ, CeruleanCityPokecenterSign
	bg_event 26, 25, BGEVENT_READ, CeruleanCityMartSign
;	bg_event  2, 12, BGEVENT_ITEM, CeruleanCityHiddenBerserkGene

	db 0 ; object events
;	object_event 29, 24, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCityCooltrainerMScript, -1
;	object_event 23, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCitySuperNerdScript, -1
;	object_event 20, 32, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCitySlowbro, -1
;	object_event 21, 32, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanCityCooltrainerFScript, -1
;	object_event 13, 22, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCityFisherScript, -1
;	object_event  8, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCityYoungsterScript, -1
