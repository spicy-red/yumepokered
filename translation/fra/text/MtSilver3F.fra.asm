_MtSilver3FYellowBattleText::
	text_asm
	ld a, [wStatusFlags4]
	bit BIT_IS_GIRL, a
	ld hl, .BoyText
	ret z
	ld hl, .GirlText
	ret

.BoyText
	text "Oh, <PLAYER>!"
	line "J'espérais te"
	cont "rencontrer."

	para "Mon aventure a"
	line "commencé à"
	cont "BOURG PALETTE,"
	cont "peu après la"
	cont "tienne et celle"
	cont "de <RIVAL>."

	para "Depuis, j'ai suivi"
	line "ton parcours:"
	cont "TEAM ROCKET,"
	cont "puis CHAMPION."

	para "Tu as placé la"
	line "barre très haut."
	cont "Mais quelle est"
	cont "ta vraie force?"

	para "J'ai entraîné mon"
	line "équipe au maximum."
	cont "Pas de quartier."
	cont "Montre-moi ta"
	cont "vraie puissance!"

	para "Allez, <PLAYER>!"
	line "Voyons si tu es"
	cont "à la hauteur"
	cont "d'un vrai défi!"
	done

.GirlText
	text "Oh, <PLAYER>!"
	line "J'espérais te"
	cont "rencontrer."

	para "Mon aventure a"
	line "commencé à"
	cont "BOURG PALETTE,"
	cont "peu après la"
	cont "tienne et celle"
	cont "de <RIVAL>."

	para "Depuis, j'ai suivi"
	line "ton parcours:"
	cont "TEAM ROCKET,"
	cont "puis CHAMPIONNE."

	para "Tu as placé la"
	line "barre très haut."
	cont "Mais quelle est"
	cont "ta vraie force?"

	para "J'ai entraîné mon"
	line "équipe au maximum."
	cont "Pas de quartier."
	cont "Montre-moi ta"
	cont "vraie puissance!"

	para "Allez, <PLAYER>!"
	line "Voyons si tu es"
	cont "à la hauteur"
	cont "d'un vrai défi!"
	done

_MtSilver3FYellowDefeatedText::
	text "Tes"
	line "#MON et toi..."

	para "Ensemble, rien"
	line "ne vous arrêtera."

	para "Votre amitié"
	line "triomphera"
	cont "toujours."
	prompt

_MtSilver3FYellowPostBattleText:: ; TODO
	text_asm
	ld a, [wStatusFlags4]
	bit BIT_IS_GIRL, a
	ld hl, .BoyText
	ret z
	ld hl, .GirlText
	ret

.BoyText
	text "Un tel voyage"
	line "d'apprentissage,"
	cont "ça demande du"
	cont "courage."

	para "Mais je vois que"
	line "pour accomplir"
	cont "ton destin, tu es"
	cont "déterminé."

	para "Du haut de cette"
	line "montagne, tu peux"
	cont "contempler le"
	cont "chemin déjà"
	cont "parcouru... Et"
	cont "les aventures"
	cont "qui t'attendent"
	cont "encore."

	para "Alors, <PLAYER>..."

	para "Parcours la terre"
	line "entière."

	para "Cherche les"
	line "#MON et"
	cont "leurs mystères."

	para "Et quand viendra"
	line "le dernier des"
	cont "combats, tous"
	cont "ensemble, tes"
	cont "amis seront là."
	done

.GirlText
	text "Un tel voyage"
	line "d'apprentissage,"
	cont "ça demande du"
	cont "courage."

	para "Mais je vois que"
	line "pour accomplir"
	cont "ton destin, tu es"
	cont "déterminée."

	para "Du haut de cette"
	line "montagne, tu peux"
	cont "contempler le"
	cont "chemin déjà"
	cont "parcouru... Et"
	cont "les aventures"
	cont "qui t'attendent"
	cont "encore."

	para "Alors, <PLAYER>..."

	para "Parcours la terre"
	line "entière."

	para "Cherche les"
	line "#MON et"
	cont "leurs mystères."

	para "Et quand viendra"
	line "le dernier des"
	cont "combats, tous"
	cont "ensemble, tes"
	cont "amis seront là."
	done



;Un jour je serai le meilleur Dresseur
;Je me battrai sans répit
;Je ferai tout pour être vainqueur
;Et gagner les défis
;Je parcourrai la terre entière
;Traquant avec espoir
;Les Pokémon et leurs mystères
;Le secret de leurs pouvoirs

;REFRAIN :

;Pokémon ! Attrapez-les tous
;[C'est notre histoire]
;Ensemble pour la victoire !
;Pokémon !
;Rien ne nous arrêtera
;Notre amitié triomphera !
;Pokémon ! Attrapez-les tous
;[Même à notre âge]
;Un voyage d'apprentissage
;Ça demande du courage
;Pokémon !
;Attrapez-les tous, attrapez-les tous !
;Pokémon !
;[Yeah !]

;Rien ni personne sur mon chemin
;Ne pourra me briser
;Car pour accomplir mon destin
;Je suis déterminé
;Quand il faudra passer à l'action
;Mes amis seront là
;Et tous ensemble nous gagnerons
;Le dernier des combats !

;REFRAIN

;Attrapez-les tous...

;Attrapez-les tous !

;Attrapez-les tous !
;[Yeah !]

;REFRAIN