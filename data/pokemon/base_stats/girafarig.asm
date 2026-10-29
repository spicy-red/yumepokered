	db DEX_GIRAFARIG ; pokedex id

	db  70,  80,  65,  85,  90
	;   hp  atk  def  spd  spc

	db NORMAL, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw GirafarigPicFront
	dw GirafarigPicBack ; native 48x48 back sprite

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, THUNDERBOLT, THUNDER, \
	     PSYCHIC_M, RAGE, MIMIC, DOUBLE_TEAM, REFLECT, REST, \
	     THUNDER_WAVE, SUBSTITUTE, STRENGTH

	db BANK(GirafarigPicFront)
	assert BANK(GirafarigPicFront) == BANK(GirafarigPicBack)
