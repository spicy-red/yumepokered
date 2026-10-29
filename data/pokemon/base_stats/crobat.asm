	db DEX_CROBAT ; pokedex id

	db  85,  90,  80, 130,  80
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw CrobatPicFront
	dw CrobatPicBack ; native 48x48 back sprite

	db LEECH_LIFE, SCREECH, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, RAGE, MIMIC, \
	     DOUBLE_TEAM, REST, SUBSTITUTE, FLY

	db BANK(CrobatPicFront)
	assert BANK(CrobatPicFront) == BANK(CrobatPicBack)
