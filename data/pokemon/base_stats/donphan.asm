	db DEX_DONPHAN ; pokedex id

	db  90, 120, 120,  50,  60
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw DonphanPicFront
	dw DonphanPicBack ; native 48x48 back sprite

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, RAGE, \
	     EARTHQUAKE, FISSURE, DIG, MIMIC, DOUBLE_TEAM, REST, \
	     SUBSTITUTE, STRENGTH

	db BANK(DonphanPicFront)
	assert BANK(DonphanPicFront) == BANK(DonphanPicBack)
