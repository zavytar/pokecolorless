	object_const_def ; object_event constants
	const MOUNTMOONOUTSIDE_COOLTRAINERF
	const MOUNTMOONOUTSIDE_YOUNGSTER

MountMoonOutside_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
;	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
;	setflag ENGINE_FLYPOINT_MOUNT_MOON
	return

MountMoonOutside_CooltrainerFScript:
    jumptextfaceplayer MountMoonOutside_CooltrainerFText

MountMoonOutside_YoungsterScript:
    jumptextfaceplayer MountMoonOutside_YoungsterText

MountMoonSign:
    jumptext MountMoonSignText

MountMoonOutside_CooltrainerFText:
    text "Ouch! I tripped"
    line "over a rocky"
    cont "#MON, GEODUDE!"
    done

MountMoonOutside_YoungsterText:
    text "Many TRAINERS"
    line "come here to"
    cont "train and look"
    cont "for fossils."
    done


MountMoonSignText:
    text "MOUNT MOON"

    para "PEWTER CITY"
    line "ENTRANCE"

MountMoonOutside_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9,  5, MOUNT_MOON_POKECENTER_1F, 1 ; PokéCenter
	warp_event 16,  3, MOUNT_MOON_1F, 1 ; Mount Moon 1F
	warp_event 11, 19, ROUTE_3, 1 ; Mount Moon 1F
	warp_event 12, 19, ROUTE_3, 2 ; Mount Moon 1F

	db 0 ; coord events

	db 1 ; bg events
	bg_event 13,  5, BGEVENT_READ, MountMoonSign

	db 2 ; object events
	object_event  6,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript, -1 ; Tripped over rocky Pokémon
	object_event 12, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript, -1 ; Younngster
