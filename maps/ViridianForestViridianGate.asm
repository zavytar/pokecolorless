ViridianForestViridianGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ViridianForestViridianGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  7, ROUTE_2, 6
	warp_event  5,  7, ROUTE_2, 6
	warp_event  4,  0, VIRIDIAN_FOREST, 1
	warp_event  5,  0, VIRIDIAN_FOREST, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
