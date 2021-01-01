	object_const_def ; object_event constants
	const POWERPLANT_OFFICER1
	const POWERPLANT_GYM_GUY1
	const POWERPLANT_GYM_GUY2
	const POWERPLANT_OFFICER2
	const POWERPLANT_GYM_GUY3
	const POWERPLANT_MANAGER
	const POWERPLANT_FOREST

PowerPlant_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks


PowerPlant_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2, 17, ROUTE_10_NORTH, 2
	warp_event  3, 17, ROUTE_10_NORTH, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
