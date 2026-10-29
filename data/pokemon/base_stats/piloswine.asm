	db DEX_PILOSWINE ; pokedex id

	db 100, 100, 100,  50,  80
	;   hp  atk  def  spd  spc

	db ICE, GROUND ; type
	db 75 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw PiloswinePicFront
	dw PiloswinePicBack ; native 48x48 back sprite

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, \
	     HYPER_BEAM, RAGE, EARTHQUAKE, FISSURE, DIG, MIMIC, \
	     DOUBLE_TEAM, REST, SUBSTITUTE, STRENGTH

	db BANK(PiloswinePicFront)
	assert BANK(PiloswinePicFront) == BANK(PiloswinePicBack)
