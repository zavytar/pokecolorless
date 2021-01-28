ViridianForestPewterGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks



ViridianForestPewterGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9,  5, VIRIDIAN_FOREST, 3
	warp_event 10,  5, VIRIDIAN_FOREST, 4
	warp_event  9, 13, ROUTE_2, 7
	warp_event 10, 13, ROUTE_2, 8

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
