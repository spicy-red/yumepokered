	db DEX_PUPITAR ; pokedex id

	db  70,  84,  70,  51,  70
	;   hp  atk  def  spd  spc

	db ROCK, DRAGON ; type
	db 45 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw PupitarPicFront
	dw PupitarPicBack ; native 48x48 back sprite

	db BITE, LEER, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, RAGE, EARTHQUAKE, \
	     FISSURE, DIG, MIMIC, DOUBLE_TEAM, REST, ROCK_SLIDE, \
	     SUBSTITUTE

	db BANK(PupitarPicFront)
	assert BANK(PupitarPicFront) == BANK(PupitarPicBack)
