object_const_def ; object_event constants
	const VIRIDIANFOREST_BUG_CATCHER1
	const VIRIDIANFOREST_BUG_CATCHER2
	const VIRIDIANFOREST_BUG_CATCHER3
	const VIRIDIANFOREST_BUG_CATCHER4
	const VIRIDIANFOREST_BUG_CATCHER5
	const VIRIDIANFOREST_YOUNGSTER
	const VIRIDIANFOREST_LASS
	const VIRIDIANFOREST_POKE_BALL1
	const VIRIDIANFOREST_POKE_BALL2
	const VIRIDIANFOREST_POKE_BALL3
	const

ViridianForest_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBugCatcher1:
	trainer BUG_CATCHER, DON, EVENT_BEAT_BUG_CATCHER_DON, BugCatcher1SeenText, BugCatcher1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcher1AfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcher2:
	trainer BUG_CATCHER, ROB, EVENT_BEAT_BUG_CATCHER_ROB, BugCatcher2SeenText, BugCatcher2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcher2AfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcher3:
	trainer BUG_CATCHER, ED, EVENT_BEAT_BUG_CATCHER_ED, BugCatcher3SeenText, BugCatcher3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcher3AfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcher4:
	trainer BUG_CATCHER, WADE1, EVENT_BEAT_BUG_CATCHER_WADE, BugCatcher4SeenText, BugCatcher4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcher4AfterBattleText
	waitbutton
	closetext
	end

TrainerLass1:
	trainer LASS, CARRIE, EVENT_BEAT_LASS_CARRIE, Lass1SeenText, Lass1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Lass1AfterBattleText
	waitbutton
	closetext
	end

ViridianForest_BugCatcherScript:
	faceplayer
	opentext
	writetext ViridianForest_BugCatcherText
	waitbutton
	closetext
	end

ViridianForest_YoungsterScript:
	faceplayer
	opentext
	writetext ViridianForest_YoungsterText
	waitbutton
	closetext
	end

ViridianForest_Sign1:
	jumptext ViridianForest_Sign1Text

BugCatcher1SeenText:
BugCatcher2SeenText:
BugCatcher3SeenText:
BugCatcher4SeenText:
Lass1SeenText:
BugCatcher1BeatenText:
BugCatcher2BeatenText:
BugCatcher3BeatenText:
BugCatcher4BeatenText:
Lass1BeatenText:
BugCatcher1AfterBattleText:
BugCatcher2AfterBattleText:
BugCatcher3AfterBattleText:
BugCatcher4AfterBattleText:
Lass1AfterBattleText:
	text "asd"
	done

ViridianForest_BugCatcherText:
	text "I ran out of"
	line "#BALLS while"
	cont "trying to catch"
	cont "#MON…"

	para "You should always"
	line "carry extra!"
	done

ViridianForest_YoungsterText:
	text "I came here with"
	line "some friends."

	para "They're all itching"
	line "to have #MON"
	cont "battles, so look"
	cont "out for them!"
	done

ViridianForest_Sign1Text:
	text "VIRIDIAN FOREST"
	line "NORTH EXIT"
	done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 16, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 3
	warp_event 17, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 4
	warp_event  1,  0, VIRIDIAN_FOREST_PEWTER_GATE, 1
	warp_event  2,  0, VIRIDIAN_FOREST_PEWTER_GATE, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3,  3, BGEVENT_READ, ViridianForest_Sign1
	bg_event 16, 41, BGEVENT_ITEM, ViridianForestHiddenAntidote

	db 10 ; object events
	object_event 29, 18, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherRob, -1 ;bug catcher 1
	object_event  2, 12, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherEd, -1  ;bug catcher 2
	object_event 27, 27, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDoug, -1  ;bug catcher 3
	object_event 11,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcher, -1  ;bug catcher 4
	object_event 27, 36, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 3, ViridianForest_BugCatcherScript, -1  ;bug catcher 5
	object_event 14, 42, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 3, ViridianForest_YoungsterScript, -1  ;youngster
	object_event  2, 42, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerLass, -1		;lass
	object_event 31, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPotion, -1
	object_event  2, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPokeball, -1
	object_event 11, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPotion2, -1
