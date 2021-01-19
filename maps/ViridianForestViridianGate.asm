ViridianForestViridianGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBugCatcherRob:

TrainerBugCatcherEd:

TrainerBugCatcherDoug:

ViridianForestViridianGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9,  5, ROUTE_2, 6
	warp_event 10,  5, ROUTE_2, 6
	warp_event  0,  3, VIRIDIAN_FOREST, 1
	warp_event  0,  4, VIRIDIAN_FOREST, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
