BEGIN ~CBBDSL01~

IF ~True()~ THEN BEGIN 0
SAY @1
IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
SAY @2
IF ~Class(LastTalkedToBy(Myself),MAGE)~ THEN GOTO 2
IF ~Class(LastTalkedToBy(Myself),FIGHTER)~ THEN GOTO 3
IF ~Class(LastTalkedToBy(Myself),CLERIC)~ THEN GOTO 4
IF ~Class(LastTalkedToBy(Myself),THIEF)~ THEN GOTO 5
IF ~Class(LastTalkedToBy(Myself),BARD)~ THEN GOTO 6
IF ~Class(LastTalkedToBy(Myself),PALADIN)~ THEN GOTO 10
IF ~Class(LastTalkedToBy(Myself),FIGHTER_MAGE)~ THEN GOTO 11
IF ~Class(LastTalkedToBy(Myself),FIGHTER_CLERIC)~ THEN GOTO 11
IF ~Class(LastTalkedToBy(Myself),FIGHTER_THIEF)~ THEN GOTO 11
IF ~Class(LastTalkedToBy(Myself),FIGHTER_MAGE_THIEF)~ THEN GOTO 11
IF ~Class(LastTalkedToBy(Myself),DRUID)~ THEN GOTO 12
IF ~Class(LastTalkedToBy(Myself),RANGER)~ THEN GOTO 14
IF ~Class(LastTalkedToBy(Myself),MAGE_THIEF)~ THEN GOTO 17
IF ~Class(LastTalkedToBy(Myself),CLERIC_MAGE)~ THEN GOTO 17
IF ~Class(LastTalkedToBy(Myself),CLERIC_THIEF)~ THEN GOTO 17
IF ~Class(LastTalkedToBy(Myself),FIGHTER_DRUID)~ THEN GOTO 17
IF ~Class(LastTalkedToBy(Myself),FIGHTER_MAGE_CLERIC)~ THEN GOTO 17
IF ~Class(LastTalkedToBy(Myself),CLERIC_RANGER)~ THEN GOTO 17
IF ~Class(LastTalkedToBy(Myself),SORCERER)~ THEN GOTO 15
IF ~Class(LastTalkedToBy(Myself),MONK)~ THEN GOTO 16
END

IF ~~ THEN BEGIN 2
SAY @3
IF ~~ THEN REPLY @4 GOTO 18
IF ~~ THEN REPLY @5 GOTO 19
END

IF ~~ THEN BEGIN 3
SAY @6
IF ~~ THEN REPLY @4 GOTO 18
IF ~~ THEN REPLY @5 GOTO 19
END

IF ~~ THEN BEGIN 4
SAY @7
IF ~~ THEN REPLY @4 GOTO 18
IF ~~ THEN REPLY @5 GOTO 19
END

IF ~~ THEN BEGIN 5
SAY @8
IF ~~ THEN REPLY @4 GOTO 18
IF ~~ THEN REPLY @5 GOTO 19
END

IF ~~ THEN BEGIN 6
SAY @9
IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
SAY @10
IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
SAY @11
IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
SAY @12
IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 10
SAY @13
IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 11
SAY @14
IF ~~ THEN REPLY @4 GOTO 18
IF ~~ THEN REPLY @5 GOTO 19
END

IF ~~ THEN BEGIN 12
SAY @15
IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
SAY @16
IF ~~ THEN REPLY @4 GOTO 18
IF ~~ THEN REPLY @5 GOTO 19
END

IF ~~ THEN BEGIN 14
SAY @17
IF ~~ THEN REPLY @4 GOTO 18
IF ~~ THEN REPLY @5 GOTO 19
END

IF ~~ THEN BEGIN 15
SAY @18
IF ~~ THEN REPLY @4 GOTO 18
IF ~~ THEN REPLY @5 GOTO 19
END

IF ~~ THEN BEGIN 16
SAY @19
IF ~~ THEN REPLY @4 GOTO 18
IF ~~ THEN REPLY @5 GOTO 19
END

IF ~~ THEN BEGIN 17
SAY @20
IF ~~ THEN REPLY @4 GOTO 18
IF ~~ THEN REPLY @5 GOTO 19
END

IF ~~ THEN BEGIN 18
SAY @21
IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUAPanic("AR3520","",[493.370],10))
ActionOverride(Player1,LeaveAreaLUA("AR3520","",[493.370],10))
ActionOverride(Player2,LeaveAreaLUA("AR3520","",[442.352],10))
ActionOverride(Player3,LeaveAreaLUA("AR3520","",[515.344],10))
ActionOverride(Player4,LeaveAreaLUA("AR3520","",[469.320],10))
ActionOverride(Player5,LeaveAreaLUA("AR3520","",[545.307],10))
ActionOverride(Player6,LeaveAreaLUA("AR3520","",[499.283],10))~ EXIT
END

IF ~~ THEN BEGIN 19
SAY @22
IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
SAY @23
IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
SAY @24
IF ~~ THEN DO ~SetGlobal("CbBlueDragonSpoke","AR3521",1)
SetGlobal("CbBlueDragonAlerted","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 22
SAY @25
IF ~~ THEN GOTO 20
END
