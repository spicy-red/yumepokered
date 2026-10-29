	db DEX_MISDREAVUS ; pokedex id

	db  90,  60,  75,  85,  85
	;   hp  atk  def  spd  spc

	db GHOST, GHOST ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw MisdreavusPicFront
	dw MisdreavusPicBack ; native 48x48 back sprite

	db GROWL, PSYWAVE, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, THUNDERBOLT, THUNDER, PSYCHIC_M, RAGE, MIMIC, \
	     DOUBLE_TEAM, REFLECT, REST, SUBSTITUTE, FLASH

	db BANK(MisdreavusPicFront)
	assert BANK(MisdreavusPicFront) == BANK(MisdreavusPicBack)
