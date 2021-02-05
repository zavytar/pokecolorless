Route23_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route23Sign:
	jumptext Route23SignText

Route23SignText:
	text "ROUTE 23"

	para "The road to the"
	line "#MON LEAGUE"
	done

Route23VictoryRoadSign:
	jumptext Route23VictoryRoadSignText

Route23VictoryRoadSignText:
	text "VICTORY ROAD"
	line "AHEAD"
	done

Route23_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	warp_event  9, 115, VICTORY_ROAD_GATE, 3
	warp_event 10, 115, VICTORY_ROAD_GATE, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3,  7, BGEVENT_READ, Route23Sign
	bg_event  3,  8, BGEVENT_READ, Route23VictoryRoadSign

	db 0 ; object events
