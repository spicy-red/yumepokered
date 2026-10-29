	db DEX_MAGCARGO ; pokedex id

	db 170,  50, 130,  30, 100
	;   hp  atk  def  spd  spc

	db FIRE, ROCK ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw MagcargoPicFront
	dw MagcargoPicBack ; native 48x48 back sprite

	db SMOG, HARDEN, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, RAGE, \
	     EARTHQUAKE, FISSURE, DIG, MIMIC, DOUBLE_TEAM, REFLECT, \
	     FIRE_BLAST, REST, ROCK_SLIDE, SUBSTITUTE, STRENGTH

	db BANK(MagcargoPicFront)
	assert BANK(MagcargoPicFront) == BANK(MagcargoPicBack)
