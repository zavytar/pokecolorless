AnthonyPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, HIKER, ANTHONY2
	checkflag ENGINE_ANTHONY
	iftrue .WantsBattle
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_ANTHONY_FRIDAY_NIGHT
	iftrue .NotFriday
	readvar VAR_WEEKDAY
	ifnotequal FRIDAY, .NotFriday
	checktime NITE
	iftrue AnthonyFridayNight

.NotFriday:
	checkflag ENGINE_DUNSPARCE_SWARM
	iftrue .AlreadySwarming
	farsjump UnknownScript_0xa0950

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, ROUTE_33
	farsjump UnknownScript_0xa0a5f

.AlreadySwarming:
	getlandmarkname STRING_BUFFER_5, ROUTE_33
	farsjump UnknownScript_0xa0afa

AnthonyPhoneCallerScript:
	gettrainername STRING_BUFFER_3, HIKER, ANTHONY2
	farscall PhoneScript_GreetPhone_Male
; TODO: Change this flypoint to a midgame one like Goldenrod.
	checkflag ENGINE_FLYPOINT_NEW_BARK
	iffalse .TriesSwarm
	checkflag ENGINE_ANTHONY
	iftrue .TriesSwarm
	checkflag ENGINE_ANTHONY_FRIDAY_NIGHT
	iftrue .TriesSwarm
	farscall PhoneScript_Random2
	ifequal 0, AnthonyWantsBattle

.TriesSwarm:
	farscall PhoneScript_Random5
	ifequal 0, AnthonyTriesDunsparceSwarm
	farsjump Phone_GenericCall_Male

AnthonyFridayNight:
	setflag ENGINE_ANTHONY_FRIDAY_NIGHT

AnthonyWantsBattle:
	getlandmarkname STRING_BUFFER_5, ROUTE_33
	setflag ENGINE_ANTHONY
	farsjump PhoneScript_WantsToBattle_Male

AnthonyTriesDunsparceSwarm:
	checkflag ENGINE_DUNSPARCE_SWARM
	iftrue .Generic
	setflag ENGINE_DUNSPARCE_SWARM
	getmonname STRING_BUFFER_4, DUNSPARCE
; TODO: Pick a map for the Dunsparce swarm, and add its wild data to the appropriate data/wild/ file.
;	swarm SWARM_DUNSPARCE, NONE
	getlandmarkname STRING_BUFFER_5, DARK_CAVE
	farsjump UnknownScript_0xa05de

.Generic:
	farsjump Phone_GenericCall_Male
