ViridianForest_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks


ViridianForest_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 16, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 3
	warp_event 17, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 4
	warp_event  1,  0, VIRIDIAN_FOREST_PEWTER_GATE, 1
	warp_event  2,  0, VIRIDIAN_FOREST_PEWTER_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
