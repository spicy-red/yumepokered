	db DEX_URSARING ; pokedex id

	db 110, 130,  75,  55,  75
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw UrsaringPicFront
	dw UrsaringPicBack ; native 48x48 back sprite

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm MEGA_PUNCH, MEGA_KICK, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, \
	     HYPER_BEAM, RAGE, EARTHQUAKE, FISSURE, DIG, MIMIC, \
	     DOUBLE_TEAM, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH, CUT

	db BANK(UrsaringPicFront)
	assert BANK(UrsaringPicFront) == BANK(UrsaringPicBack)
