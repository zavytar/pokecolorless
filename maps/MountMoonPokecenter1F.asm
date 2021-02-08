	object_const_def ; object_event constants
	const MOUNTMOONPOKECENTER1F_NURSE
    const MOUNTMOONPOKECENTER1F_MAGIKARPSALESMAN
    const MOUNTMOONPOKECENTER1F_GENTLEMAN
    const MOUNTMOONPOKECENTER1F_NEWSPAPER

MountMoonPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MountMoonPokecenter1F_NurseScript:
	jumpstd pokecenternurse

MountMoonPokecenter1F_MagikarpSalesmanScript:
	faceplayer
    opentext
    writetext MountMoonPokecenter1F_MagikarpSalesmanText1
    waitbutton
    closetext
    end 

MountMoonPokecenter1F_GentlemanScript:
    jumptextfaceplayer MountMoonPokecenter1F_GentlemanText

MountMoonPokecenter1F_NewspaperScript:
    jumptext MountMoonPokecenter1F_NewspaperText

MountMoonPokecenter1F_MagikarpSalesmanText1:
    text "Hello, I got just"
    line "the greatest deal"
    cont "for you, kid!"

    para "You can have this"
    line "feisty MAGIKARP"
    cont "for only $500!"

    para "What do you say?"
    done 

MountMoonPokecenter1F_MagikarpSalesmanText2:
    text "Heh! Pleasure"
    line "doing business!"
    done 

MountMoonPokecenter1F_MagikarpSalesmanText3:
    text "Think it over."

    para "This is a once-"
    line "in-a-lifetime"
    cont "opportunity, kid!"
    done 

MountMoonPokecenter1F_MagikarpSalesmanText4:
    text "Well, I don't"
    line "give refunds!"

MountMoonPokecenter1F_GentlemanText:
    text "TEAM ROCKET is"
    line "always on the news!"
    done

MountMoonPokecenter1F_NewspaperText:
    text "It's a newspaper."

    para "The headlines say"
    line "there's trouble"
    cont "with a gang called"
    cont "TEAM ROCKET."

    para "Better be careful."
    done 

MountMoonPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, MOUNT_MOON_OUTSIDE, 1
	warp_event  4,  7, MOUNT_MOON_OUTSIDE, 1
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoonPokecenter1F_NurseScript, -1
	object_event  7,  1, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoonPokecenter1F_MagikarpSalesmanScript, -1
	object_event  7,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoonPokecenter1F_GentlemanScript, -1
	object_event  8,  7, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoonPokecenter1F_NewspaperScript, -1

