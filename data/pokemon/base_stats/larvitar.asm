	db DEX_LARVITAR ; pokedex id

	db  50,  64,  50,  41,  50
	;   hp  atk  def  spd  spc

	db ROCK, DRAGON ; type
	db 45 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw LarvitarPicFront
	dw LarvitarPicBack ; native 48x48 back sprite

	db BITE, LEER, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, RAGE, EARTHQUAKE, \
	     DIG, MIMIC, DOUBLE_TEAM, REST, ROCK_SLIDE, SUBSTITUTE

	db BANK(LarvitarPicFront)
	assert BANK(LarvitarPicFront) == BANK(LarvitarPicBack)
