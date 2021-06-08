	object_const_def ; object_event constants
	const VIRIDIANFOREST_BUG_CATCHER1
	const VIRIDIANFOREST_BUG_CATCHER2
	const VIRIDIANFOREST_BUG_CATCHER3
	const VIRIDIANFOREST_BUG_CATCHER4
	const VIRIDIANFOREST_BUG_CATCHER5
	const VIRIDIANFOREST_BUG_CATCHER6
	const VIRIDIANFOREST_YOUNGSTER
	const VIRIDIANFOREST_LASS
	const VIRIDIANFOREST_POKE_BALL1
	const VIRIDIANFOREST_POKE_BALL2
	const VIRIDIANFOREST_POKE_BALL3


ViridianForest_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBugCatcherRick:
	trainer BUG_CATCHER, BUG_CATCHER_RICK, EVENT_BEAT_BUG_CATCHER_RICK, BugCatcherRickSeenText, BugCatcherRickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherRickAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherDoug:
	trainer BUG_CATCHER, BUG_CATCHER_DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDougAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherCharlie:
	trainer BUG_CATCHER, BUG_CATCHER_CHARLIE, EVENT_BEAT_BUG_CATCHER_CHARLIE, BugCatcherCharlieSeenText, BugCatcherCharlieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherCharlieAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherAnthony:
	trainer BUG_CATCHER, BUG_CATCHER_ANTHONY, EVENT_BEAT_BUG_CATCHER_ANTHONY, BugCatcherAnthonySeenText, BugCatcherAnthonyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherAnthonyAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherSammy:
	trainer BUG_CATCHER, BUG_CATCHER_SAMMY, EVENT_BEAT_BUG_CATCHER_SAMMY, BugCatcherSammySeenText, BugCatcherSammyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherSammyAfterBattleText
	waitbutton
	closetext
	end

TrainerLassCarrie:
	trainer LASS, LASS_CARRIE, EVENT_BEAT_LASS_CARRIE, LassCarrieSeenText, LassCarrieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassCarrieAfterBattleText
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

ViridianForestPotion:
ViridianForestPotion2:
	itemball POTION

ViridianForestPokeball:
	itemball POKE_BALL 

ViridianForest_Sign1:
	jumptext ViridianForest_Sign1Text

BugCatcherRickSeenText:
	text "Hey! You have"
	line "#MON! Come on!"
	cont "Let's battle 'em!"
	done

BugCatcherDougSeenText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#MON trainer!"
	done

BugCatcherCharlieSeenText:
	text "I'm gonna be the"
	line "best. You just"
	cont "can't beat me!"
	done

BugCatcherAnthonySeenText:
	text "Hello. Allow me"
	line "to battle your"
	cont "#MON!"
	done

BugCatcherSammySeenText:
	text "Hey, wait up!"
	line "What's the hurry?"
	done

LassCarrieSeenText:
	text "Hi, do you have a"
	line "PIKACHU?"
	done

BugCatcherRickBeatenText:
	text "No! CATERPIE"
	line "can't cut it!"
	done

BugCatcherDougBeatenText:
	text "Huh?"
	line "I ran out of"
	cont "#MON!"
	done

BugCatcherCharlieBeatenText:
	text "After"
	line "all I did..."
	done

BugCatcherAnthonyBeatenText:
	text "M-my bugs!"
	done

BugCatcherSammyBeatenText:
	text "I give! You're"
	line "good at this!"
	done

LassCarrieBeatenText:
	text "Oh no,"
	line "really?"
	done

BugCatcherRickAfterBattleText:
	text "Ssh! You'll scare"
	line "the bugs away!"
	done

BugCatcherDougAfterBattleText:
	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

BugCatcherCharlieAfterBattleText:
	text "A METAPOD is cool"
	line "because its"
	cont "attack is its"
	cont "defense!"
	done

BugCatcherAnthonyAfterBattleText:
	text "I got my PINSIR"
	line "from a catching"
	cont "contest in JOHTO."
	done

BugCatcherSammyAfterBattleText:
	text "Sometimes, you"
	line "can find stuff on"
	cont "the ground!"

	para "I'm looking for"
	line "the stuff I"
	cont "dropped!"
	done

LassCarrieAfterBattleText:
	text "I looked forever,"
	line "but I never found"
	cont "a PIKACHU here!"

	para "I heard it's very"
	line "rare to find,"
	cont "but it's so cute!"
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

	db 1 ; bg events
	bg_event  3,  3, BGEVENT_READ, ViridianForest_Sign1
;	bg_event 16, 41, BGEVENT_ITEM, ViridianForestHiddenAntidote

	db 11 ; object events
	object_event 27, 27, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherRick, -1 ;bug catcher 1
	object_event 28, 18, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDoug, -1  ;bug catcher 2
	object_event 23,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherCharlie, -1  ;bug catcher 3
	object_event 10,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherAnthony, -1  ;bug catcher 4
	object_event  2, 13, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherSammy, -1  ;bug catcher 5
	object_event 27, 36, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 3, ViridianForest_BugCatcherScript, -1  ;bug catcher 5
	object_event 14, 42, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 3, ViridianForest_YoungsterScript, -1  ;youngster
	object_event  2, 42, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerLassCarrie, -1		;lass
	object_event 31, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPotion, -1
	object_event  2, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPokeball, -1
	object_event 11, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPotion2, -1
