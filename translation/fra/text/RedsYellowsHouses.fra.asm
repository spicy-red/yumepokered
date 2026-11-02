_RedsHouse1FMomWakeUpText::
	text "MAMAN: Bon." ; marcelnote - "MERE" to "MAMAN"
	line "Il arrive qu'un"
	cont "jour l'enfant aimé" ; marcelnote - "le fils" to "l'enfant"
	cont "quitte la maison."
	cont "C'est la vie!"

	para "Le PROF. CHEN te"
	line "cherche. Il est"
	cont "dans la maison"
	cont "voisine."
	done

_RedsHouse1FMomYouShouldRestText::
	text "MAMAN: <PLAYER>!" ; marcelnote - "MERE" to "MAMAN"
	line "Tu devrais faire"
	cont "une sieste."
	prompt

_RedsHouse1FMomLookingGreatText::
	text "MAMAN: Ah, bien!" ; marcelnote - "MERE" to "MAMAN"
	line "Toi et tes"
	cont "#MON êtes"
	cont "en pleine forme!"
	done

_RedsHouse1FMomShortOnMoneyText:: ; marcelnote - Mom gives money to prevent softlocks
	text "MAMAN: <PLAYER>!"
	line "Tu manques un peu"
	cont "d'argent, non?"

	para "Tiens, prends ça."
	line "Ne dépense pas"
	cont "tout d'un coup,"
	cont "d'accord?"
	prompt

_RedsHouse1FMomGotMoneyText:: ; marcelnote - Mom gives money to prevent softlocks
	text "<PLAYER> reçoit"
	line "500¥ de MAMAN!"
	done

_RedsHouse1FTVWizardOfOzMovieText:: ; marcelnote - FRLG text option for girl
_RedsHouse1FTVStandByMeMovieText::
	text "Un dessin animé!"
	line "Un petit garçon"
	cont "avec une queue de"
	cont "singe."

	para "Bon, j'y vais!"
	done

_RedsHouse1FTVWrongSideText::
	text "Oups, mauvais"
	line "côté."
	done

_RedsHouse1FPhoneText:: ; marcelnote - new for pay phones
	text "C'est le téléphone."

	para "Je devrais appeler"
	line "MAMAN de temps"
	cont "en temps."
	done

_RedsHouse2FSNESText:: ; marcelnote - moved from hidden_objects
	text "<PLAYER> joue à la"
	line "Super Nintendo!"

	para "...Bon!" ; marcelnote - added paragraph break
	line "On y va, non?"
	done

_YellowsHouse1FDadUnpackingText:: ; marcelnote - new for Yellow's house
	text "Pardon pour le"
	line "désordre, on est"
	cont "en plein"
	cont "déballage."

	para "Repasse un peu"
	line "plus tard,"
	cont "je ferai du thé!"
	done

_YellowsHouse1FDadJustMissedHerText:: ; marcelnote - new for Yellow's house
	text "Ah, tu as raté"
	line "ODO de peu!"

	para "Mon enfant a filé"
	line "chercher son"
	cont "premier #MON"
	cont "au laboratoire du"
	cont "PROF. CHEN."

	para "L'excitation a"
	line "empêché ODO de"
	cont "dormir de la nuit!"
	done

_YellowsHouse1FDadJustRunIntoHerText:: ; marcelnote - new for Yellow's house
	text "Mon enfant aime"
	line "l'aventure!"

	para "Tu croiseras ODO"
	line "bientôt,"
	cont "j'en suis sûr."
	done

_YellowsHouse1FDadPostgameBeforeOakText:: ; marcelnote - postgame Mt. Silver hint
	text "Je crois qu'ODO"
	line "est partie"
	cont "s'entraîner à"
	cont "MT.SILVER."

	para "Va d'abord voir"
	line "le PROF. CHEN sur"
	cont "la ROUTE 1 et"
	cont "bats-le."
	cont "Le garde de la"
	cont "ROUTE 22 te"
	cont "laissera passer."

	para "Les oiseaux"
	line "légendaires sont"
	cont "un autre défi."
	cont "Après les avoir"
	cont "tous battus,"
	cont "parle à <RIVAL>"
	cont "au LABO de CHEN."
	cont "Il ira alors au"
	cont "PLATEAU INDIGO"
	cont "pour un nouveau"
	cont "combat."
	done

_YellowsHouse1FDadPostgameAfterOakText:: ; marcelnote - postgame Mt. Silver hint
	text "Je crois qu'ODO"
	line "est partie"
	cont "s'entraîner à"
	cont "MT.SILVER."

	para "Le PROF. CHEN t'a"
	line "donné son accord!"
	cont "Passe le garde de"
	cont "la ROUTE 22 pour"
	cont "aller à MT.SILVER."

	para "Les oiseaux"
	line "légendaires sont"
	cont "un autre défi."
	cont "Après les avoir"
	cont "tous battus,"
	cont "parle à <RIVAL>"
	cont "au LABO de CHEN."
	cont "Il ira alors au"
	cont "PLATEAU INDIGO"
	cont "pour un nouveau"
	cont "combat."
	done

_YellowsHouse1FDadYellowIsBackText:: ; marcelnote - new for Yellow's house
	text "ODO est de retour"
	line "à la maison!"
	cont "Quel bonheur!"

	para "Voir la bonté"
	line "qui vous guide"
	cont "tous les deux,"
	cont "ça me fait chaud"
	cont "au coeur."

	para "Le thé est prêt!"
	line "Je t'en prie,"
	cont "reste un moment"
	cont "avec nous."
	done

_YellowsHouse1FTVText:: ; marcelnote - new for Yellow's house
	text "La télé n'est pas"
	line "encore branchée."
	done

_YellowsHouse2FAsleepText:: ; marcelnote - new for Yellow's house
	text "ODO dort à"
	line "poings fermés."
	cont "Laisse ODO dormir!"
	done

_YellowsHouse2FYellowText:: ; marcelnote - new for Yellow's house
	text "Oh, <PLAYER>!"
	line "Je suis de retour"
	cont "pour voir papa."

	para "Je me suis dit"
	line "que ça lui ferait"
	cont "plaisir..."
	cont "Et puis, il m'a"
	cont "manqué aussi!"
	done

_YellowsHouse2FGameboyText:: ; marcelnote - new for Yellow's house
	text "Une GAME BOY!"
	line "...mais il n'y"
	cont "a plus de piles."
	done

_YellowsHouse2FTVText:: ; marcelnote - new for Yellow's house
	text "La télé est restée"
	line "allumée toute la"
	cont "nuit, on dirait."
	done

_UnpackedBoxText:: ; marcelnote - new for Yellow's house
	text "Un carton"
	line "plein à craquer."
	done
