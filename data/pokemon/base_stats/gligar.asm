	db DEX_GLIGAR ; pokedex id

	db  65,  75, 105,  85,  65
	;   hp  atk  def  spd  spc

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw GligarPicFront
	dw GligarPicBack ; native 48x48 back sprite

	db POISON_STING, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, RAGE, EARTHQUAKE, \
	     DIG, MIMIC, DOUBLE_TEAM, REST, SUBSTITUTE, CUT, \
	     STRENGTH

	db BANK(GligarPicFront)
	assert BANK(GligarPicFront) == BANK(GligarPicBack)
