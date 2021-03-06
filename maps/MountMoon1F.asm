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

MountMoon1F_Script:
	end 

MountMoon1F_Hiker2Script:
	jumptextfaceplayer MountMoon1F_Hiker2Text

MountMoon1F_Hiker2Text:
	text "We use ROCK SMASH"
	line "to smash rocks and"
	cont "find fossils."

	para "Sometimes, BROCK"
	line "from PEWTER CITY"
	cont "comes by to help."
	done 

MountMoon1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 17, 34, MOUNT_MOON_OUTSIDE, 2
;	warp_event  4,  7, ROUTE_4, 1
	warp_event 27, 11, MOUNT_MOON_B1F, 1 ; to NUGGET
	warp_event 19, 11, MOUNT_MOON_B1F, 2 ; to TM
	warp_event  7,  5, MOUNT_MOON_B1F, 3 ; to EXIT
	warp_event 43, 29, MOUNT_MOON_B1F, 4 ; back to B2F, EXIT

	db 0 ; coord events

	db 0 ; bg events

	db 8 ; object events
	object_event  7, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoon1F_Script, -1 ; Bug Catcher 1
	object_event 34, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoon1F_Script, -1 ; Bug Catcher 2
	object_event 18, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoon1F_Script, -1 ; Lass 1
	object_event 29,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoon1F_Script, -1 ; Lass 2
	object_event 24, 30, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoon1F_Script, -1 ; Super Nerd
	object_event 14, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoon1F_Script, -1 ; Younngster
	object_event  8,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoon1F_Script, -1 ; Hiker 1
	object_event 40,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoon1F_Hiker2Script, -1 ; Hiker 2
