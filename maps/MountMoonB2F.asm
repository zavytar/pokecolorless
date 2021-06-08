	object_const_def ; object_event constants
	const MOUNTMOONB2F_SUPERNERD
	const MOUNTMOONB2F_TM
	const MOUNTMOONB2F_ITEMBALL1

MountMoonB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MountMoonB2F_Script:
	end 

MountMoonB2F_TM: 
	opentext
	verbosegiveitem TM_THIEF
	iffalse .done
	disappear MOUNTMOONB2F_TM
	closetext
	setevent EVENT_GOT_TM46_THIEF_AT_MOUNT_MOON_B2F
	end

.done
	end 

MountMoonB2FNugget:
	itemball NUGGET

MountMoonB2F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 21, 25, MOUNT_MOON_B1F, 5 ; to NUGGET
	warp_event 25,  9, MOUNT_MOON_B1F, 6 ; to TM
	warp_event  7,  7, MOUNT_MOON_B1F, 8 ; to EXIT
	warp_event 21, 17, MOUNT_MOON_B1F, 7 ; back to B2F, EXIT

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 14, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoonB2F_Script, -1 ; Super Nerd
	object_event 29,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 4, MountMoonB2F_TM, EVENT_GOT_TM46_THIEF_AT_MOUNT_MOON_B2F ;TM46 - Thief
	object_event 25, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonB2FNugget, EVENT_MOUNT_MOON_B2F_NUGGET
