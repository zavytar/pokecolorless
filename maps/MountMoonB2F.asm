	object_const_def ; object_event constants
	const MOUNTMOONB2F_SUPERNERD
	const MOUNTMOONB2F_TM
	const MOUNTMOONB2F_ITEMBALL1

MountMoonB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSuperNerdMiguel:
	trainer SUPER_NERD, SUPER_NERD_MIGUEL, EVENT_BEAT_SUPER_NERD_MIGUEL, SuperNerdMiguelSeenText, SuperNerdMiguelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdMiguelAfterBattleText
	waitbutton
	closetext
	end

MountMoonB2F_TM: 
	opentext
	verbosegiveitem TM_THIEF
	iffalse .done
	disappear MOUNTMOONB2F_TM
	closetext
	setevent EVENT_GOT_TM46_THIEF_AT_MOUNT_MOON_B2F
	end

.done
	end 

MountMoonB2FNugget:
	itemball NUGGET

SuperNerdMiguelSeenText:
	text "I'm looking for"
	line "#MON fossils!"
	done

SuperNerdMiguelBeatenText:
	text "Agh! Couldn't"
	line "make it!"
	done

SuperNerdMiguelAfterBattleText:
	text "Far away, on"
	line "CINNABAR ISLAND,"
	cont "there's a #MON"
	cont "LAB."

	para "They do research"
	line "on regenerating"
	cont "fossils."
	done

MountMoonB2F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 21, 25, MOUNT_MOON_B1F, 5 ; to NUGGET
	warp_event 25,  9, MOUNT_MOON_B1F, 6 ; to TM
	warp_event  7,  7, MOUNT_MOON_B1F, 8 ; to EXIT
	warp_event 21, 17, MOUNT_MOON_B1F, 7 ; back to B2F, EXIT

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 14, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerSuperNerdMiguel, -1 ; Super Nerd
	object_event 29,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 4, MountMoonB2F_TM, EVENT_GOT_TM46_THIEF_AT_MOUNT_MOON_B2F ;TM46 - Thief
	object_event 25, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonB2FNugget, EVENT_MOUNT_MOON_B2F_NUGGET
