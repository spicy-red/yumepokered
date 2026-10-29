	db DEX_SLUGMA ; pokedex id

	db 100,  40,  70,  20,  70
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw SlugmaPicFront
	dw SlugmaPicBack ; native 48x48 back sprite

	db SMOG, HARDEN, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, RAGE, MIMIC, \
	     DOUBLE_TEAM, REFLECT, FIRE_BLAST, REST, ROCK_SLIDE, SUBSTITUTE

	db BANK(SlugmaPicFront)
	assert BANK(SlugmaPicFront) == BANK(SlugmaPicBack)
