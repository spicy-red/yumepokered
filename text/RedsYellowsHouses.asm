; marcelnote - merged RedsHouse floors and added YellowsHouse
_RedsHouse1FMomWakeUpText::
	text "MOM: Right."
	line "All kids leave" ; marcelnote - replaced 'boys' by 'kids'
	cont "home some day."
	cont "It said so on TV."

	para "PROF.OAK, next"
	line "door, is looking"
	cont "for you."
	done

_RedsHouse1FMomYouShouldRestText::
	text "MOM: <PLAYER>!"
	line "You should take a"
	cont "quick rest."
	prompt

_RedsHouse1FMomLookingGreatText::
	text "MOM: Oh good!"
	line "You and your"
	cont "#MON are"
	cont "looking great!"
	cont "Take care now!"
	done

_RedsHouse1FMomShortOnMoneyText:: ; marcelnote - Mom gives money to prevent softlocks
	text "MOM: Oh, <PLAYER>!"
	line "Aren't you short"
	cont "on money?"

	para "Here, take this."
	line "Don't spend it"
	cont "all at once,"
	cont "okay?"
	prompt

_RedsHouse1FMomGotMoneyText:: ; marcelnote - Mom gives money to prevent softlocks
	text "<PLAYER> received"
	line "¥500 from MOM!"
	done

_RedsHouse1FTVStandByMeMovieText::
	text "There's a movie"
	line "on TV. Four boys"
	cont "are walking on"
	cont "railroad tracks."

	para "I better go too."
	done

_RedsHouse1FTVWizardOfOzMovieText:: ; marcelnote - FRLG text option for girl
	text "There's a movie"
	line "on TV. A girl"
	cont "is walking up"
	cont "a brick road."

	para "I better go too."
	done

_RedsHouse1FTVWrongSideText::
	text "Oops, wrong side."
	done

_RedsHouse1FPhoneText:: ; marcelnote - new for pay phones
	text "It's the phone."

	para "I should call MOM"
	line "when I can."
	done

_RedsHouse2FSNESText:: ; marcelnote - moved from hidden_objects
	text "<PLAYER> is"
	line "playing the SNES!"

	para "...Okay!" ; marcelnote - added paragraph break
	line "It's time to go!"
	done

_YellowsHouse1FDadUnpackingText:: ; marcelnote - new for Yellow's house
	text "Sorry about the"
	line "mess, we're"
	cont "still unpacking."

	para "Please stop by"
	line "again later,"
	cont "I'll make tea!"
	done

_YellowsHouse1FDadJustMissedHerText:: ; marcelnote - new for Yellow's house
	text "Oh, you just"
	line "missed ODO!"

	para "My kid ran off"
	line "to get their"
	cont "first #MON"
	cont "from PROF.OAK."

	para "The excitement"
	line "kept ODO up all"
	cont "night, so they"
	cont "overslept!"
	done

_YellowsHouse1FDadJustRunIntoHerText:: ; marcelnote - new for Yellow's house
	text "My kid is always"
	line "looking"
	cont "for adventure!"

	para "I'm sure you'll"
	line "run into ODO"
	cont "before long."
	done

_YellowsHouse1FDadYellowIsBackText:: ; marcelnote - new for Yellow's house
	text "It's wonderful to"
	line "have ODO home"
	cont "again!"

	para "Seeing the kind-"
	line "ness that guides"
	cont "you both, it"
	cont "warms my heart."

	para "I've made some tea!"
	line "Please, stay here"
	cont "a little while."
	done

_YellowsHouse1FDadPostgameBeforeOakText:: ; marcelnote - postgame Mt. Silver hint
	text "I heard ODO went"
	line "to train at"
	cont "MT.SILVER."

	para "First, find PROF."
	line "OAK on ROUTE 1"
	cont "and defeat him."
	cont "He'll let you pass"
	cont "through the gate."

	para "The legendary"
	line "birds are another"
	cont "challenge."
	cont "After beating all"
	cont "three, go to OAK's"
	cont "LAB and talk to"
	cont "<RIVAL>."
	cont "Then he'll head to"
	cont "INDIGO PLATEAU for"
	cont "a rematch."
	done

_YellowsHouse1FDadPostgameAfterOakText:: ; marcelnote - postgame Mt. Silver hint
	text "I heard ODO went"
	line "to train at"
	cont "MT.SILVER."

	para "Now that PROF.OAK"
	line "has given you"
	cont "permission, pass"
	cont "the ROUTE 22 guard"
	cont "and head for"
	cont "MT.SILVER."

	para "The legendary"
	line "birds are another"
	cont "challenge."
	cont "After beating all"
	cont "three, go to OAK's"
	cont "LAB and talk to"
	cont "<RIVAL>."
	cont "Then he'll head to"
	cont "INDIGO PLATEAU for"
	cont "a rematch."
	done

_YellowsHouse1FTVText:: ; marcelnote - new for Yellow's house
	text "It's not even"
	line "plugged in yet."
	done

_YellowsHouse2FAsleepText:: ; marcelnote - new for Yellow's house
	text "This kid is"
	line "fast asleep."

	para "Better not"
	line "wake them up."
	done

_YellowsHouse2FYellowText:: ; marcelnote - new for Yellow's house
	text "Oh, <PLAYER>!"
	line "I came back home"
	cont "to visit my dad."

	para "I thought he'd"
	line "like company,"
	cont "and honestly..."
	cont "I missed him too!"
	done

_YellowsHouse2FGameboyText:: ; marcelnote - new for Yellow's house
	text "It's a GAME BOY!"
	line "...But the"
	cont "battery's dead."
	done

_YellowsHouse2FTVText:: ; marcelnote - new for Yellow's house
	text "It looks like"
	line "the TV has been"
	cont "on all night."
	done

_UnpackedBoxText:: ; marcelnote - new for Yellow's house
	text "A moving box"
	line "full of stuff."
	done
