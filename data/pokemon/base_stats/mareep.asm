	db DEX_MAREEP ; pokedex id

	db  55,  40,  40,  35,  65
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw MareepPicFront
	dw MareepPicBack ; native 48x48 back sprite

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, THUNDERBOLT, THUNDER, \
	     RAGE, MIMIC, DOUBLE_TEAM, REFLECT, REST, THUNDER_WAVE, \
	     SUBSTITUTE

	db BANK(MareepPicFront)
	assert BANK(MareepPicFront) == BANK(MareepPicBack)
