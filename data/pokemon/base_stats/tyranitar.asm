	db DEX_TYRANITAR ; pokedex id

	db 100, 134, 110,  61,  90
	;   hp  atk  def  spd  spc

	db ROCK, DRAGON ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw TyranitarPicFront
	dw TyranitarPicBack ; native 48x48 back sprite

	db BITE, LEER, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_SLOW ; growth rate from learnsets.csv

	tmhm MEGA_PUNCH, MEGA_KICK, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, \
	     HYPER_BEAM, RAGE, EARTHQUAKE, FISSURE, DIG, MIMIC, \
	     DOUBLE_TEAM, REFLECT, FIRE_BLAST, REST, ROCK_SLIDE, SUBSTITUTE, \
	     SURF, STRENGTH

	db BANK(TyranitarPicFront)
	assert BANK(TyranitarPicFront) == BANK(TyranitarPicBack)
