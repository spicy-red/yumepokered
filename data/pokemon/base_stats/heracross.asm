	db DEX_HERACROSS ; pokedex id

	db  80, 125,  75,  85,  75
	;   hp  atk  def  spd  spc

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw HeracrossPicFront
	dw HeracrossPicBack ; native 48x48 back sprite

	db TACKLE, LEER, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, RAGE, \
	     EARTHQUAKE, FISSURE, DIG, MIMIC, DOUBLE_TEAM, REST, \
	     SUBSTITUTE, STRENGTH, CUT

	db BANK(HeracrossPicFront)
	assert BANK(HeracrossPicFront) == BANK(HeracrossPicBack)
