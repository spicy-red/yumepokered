	db DEX_FLAAFFY ; pokedex id

	db  70,  55,  55,  45,  80
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw FlaaffyPicFront
	dw FlaaffyPicBack ; native 48x48 back sprite

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, THUNDERBOLT, THUNDER, \
	     RAGE, MIMIC, DOUBLE_TEAM, REFLECT, REST, THUNDER_WAVE, \
	     SUBSTITUTE

	db BANK(FlaaffyPicFront)
	assert BANK(FlaaffyPicFront) == BANK(FlaaffyPicBack)
