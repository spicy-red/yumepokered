	db DEX_HOUNDOOM ; pokedex id

	db  75,  90,  50,  95, 120
	;   hp  atk  def  spd  spc

	db FIRE, GHOST ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw HoundoomPicFront
	dw HoundoomPicBack ; native 48x48 back sprite

	db LEER, EMBER, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, THUNDERBOLT, \
	     RAGE, DIG, MIMIC, DOUBLE_TEAM, REFLECT, FIRE_BLAST, \
	     REST, SUBSTITUTE, STRENGTH

	db BANK(HoundoomPicFront)
	assert BANK(HoundoomPicFront) == BANK(HoundoomPicBack)
