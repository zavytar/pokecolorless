	object_const_def ; object_event constants
	const MOUNTMOONB2F_SUPERNERD
;	const MOUNTMOONB2F_ITEMBALL1
;	const MOUNTMOONB2F_ITEMBALL2

MountMoonB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MountMoonB2F_Script:
	end 

MountMoonB2F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 21, 25, MOUNT_MOON_B1F, 5 ; to NUGGET
	warp_event 25,  9, MOUNT_MOON_B1F, 6 ; to TM
	warp_event  7,  7, MOUNT_MOON_B1F, 8 ; to EXIT
	warp_event 21, 17, MOUNT_MOON_B1F, 7 ; back to B2F, EXIT

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event 24, 30, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoonB2F_Script, -1 ; Super Nerd
