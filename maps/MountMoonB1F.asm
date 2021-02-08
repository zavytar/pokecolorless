

MountMoonB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks



MountMoonB1F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 25, 17, MOUNT_MOON_1F, 1 ; to NUGGET
	warp_event 15,  9, MOUNT_MOON_1F, 2 ; to TM
	warp_event  5,  5, MOUNT_MOON_1F, 3 ; to EXIT
	warp_event 25,  3, MOUNT_MOON_1F, 4 ; back to B2F, EXIT
	warp_event 17, 23, MOUNT_MOON_B2F, 1 ; to NUGGET
	warp_event 25,  9, MOUNT_MOON_B2F, 2 ; to TM
	warp_event 13, 17, MOUNT_MOON_B2F, 3 ; to EXIT
	warp_event 21,  3, MOUNT_MOON_B2F, 4 ; back to B2F, EXIT

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
