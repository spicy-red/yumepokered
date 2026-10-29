	db DEX_TEDDIURSA ; pokedex id

	db  60,  80,  50,  40,  50
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw TeddiursaPicFront
	dw TeddiursaPicBack ; native 48x48 back sprite

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, RAGE, DIG, \
	     MIMIC, DOUBLE_TEAM, REST, SUBSTITUTE

	db BANK(TeddiursaPicFront)
	assert BANK(TeddiursaPicFront) == BANK(TeddiursaPicBack)
