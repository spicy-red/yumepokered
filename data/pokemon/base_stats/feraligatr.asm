	db DEX_FERALIGATR ; pokedex id

	db  85, 105, 100,  78,  83
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw FeraligatrPicFront
	dw FeraligatrPicBack ; native 48x48 back sprite

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_SLOW ; growth rate from learnsets.csv

	tmhm MEGA_PUNCH, MEGA_KICK, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, \
	     BUBBLEBEAM, ICE_BEAM, BLIZZARD, HYPER_BEAM, RAGE, EARTHQUAKE, \
	     FISSURE, DIG, MIMIC, DOUBLE_TEAM, REST, SUBSTITUTE, \
	     SURF, STRENGTH, CUT

	db BANK(FeraligatrPicFront)
	assert BANK(FeraligatrPicFront) == BANK(FeraligatrPicBack)
