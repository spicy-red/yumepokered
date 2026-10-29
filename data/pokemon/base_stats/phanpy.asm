	db DEX_PHANPY ; pokedex id

	db  90,  60,  60,  40,  40
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 120 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw PhanpyPicFront
	dw PhanpyPicBack ; native 48x48 back sprite

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, RAGE, EARTHQUAKE, \
	     FISSURE, DIG, MIMIC, DOUBLE_TEAM, REST, SUBSTITUTE

	db BANK(PhanpyPicFront)
	assert BANK(PhanpyPicFront) == BANK(PhanpyPicBack)
