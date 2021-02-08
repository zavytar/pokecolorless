

MountMoonB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks



MountMoonB2F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 21, 25, MOUNT_MOON_B1F, 5 ; to NUGGET
	warp_event 25,  9, MOUNT_MOON_B1F, 6 ; to TM
	warp_event  7,  7, MOUNT_MOON_B1F, 7 ; to EXIT
	warp_event 21, 17, MOUNT_MOON_B1F, 8 ; back to B2F, EXIT

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
