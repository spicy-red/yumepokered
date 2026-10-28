MACRO move
	db \1 ; animation (interchangeable with move id)
	db \2 ; effect
	db \3 ; power
	db \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
	ASSERT \6 <= 40, "PP must be 40 or less"
ENDM

Moves:
; Characteristics of each move.
	table_width MOVE_LENGTH
	move POUND,        NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move KARATE_CHOP,  NO_ADDITIONAL_EFFECT,        50, FIGHTING,     100, 25 ; changed from NORMAL, acc 100
	move DOUBLESLAP,   TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        85, 35
	move COMET_PUNCH,  TWO_TO_FIVE_ATTACKS_EFFECT,  25, NORMAL,        85, 25
	move MEGA_PUNCH,   NO_ADDITIONAL_EFFECT,        80, NORMAL,        85, 25
	move PAY_DAY,      PAY_DAY_EFFECT,              40, NORMAL,       100, 40 ; changed to 40 PP - effect modified
	move FIRE_PUNCH,   BURN_SIDE_EFFECT1,           75, FIRE,         100, 40
	move ICE_PUNCH,    FREEZE_SIDE_EFFECT1,         75, ICE,          100, 40
	move THUNDERPUNCH, PARALYZE_SIDE_EFFECT1,       75, ELECTRIC,     100, 40
	move SCRATCH,      NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move VICEGRIP,     NO_ADDITIONAL_EFFECT,        55, NORMAL,       100, 30
	move GUILLOTINE,   NO_ADDITIONAL_EFFECT,       190, NORMAL,        65, 15
	move RAZOR_WIND,   HYPER_BEAM_EFFECT,          120,    BUG,       100, 15 ; marcelnote - changed from NORMAL, CHARGE_EFFECT, acc 75
	move SWORDS_DANCE, ATTACK_UP2_EFFECT,            0, NORMAL,       100, 30
	move CUT,          NO_ADDITIONAL_EFFECT,        60,    BUG,        95, 35 ; marcelnote - changed from NORMAL, pp 30
	move GUST,         NO_ADDITIONAL_EFFECT,        40, FLYING,       100, 35 ; marcelnote - changed from NORMAL
	move WING_ATTACK,  NO_ADDITIONAL_EFFECT,        60, FLYING,       100, 25 ; marcelnote - changed from pwr 35, pp 35
	move WHIRLWIND,    NO_ADDITIONAL_EFFECT,        55, FLYING,       100, 20
	move FLY,          CHARGE_EFFECT,              100, FLYING,        95, 25 ; marcelnote - changed from FLY_EFFECT
	move BIND,         TRAPPING_EFFECT,             15, NORMAL,        75, 20
	move SLAM,         NO_ADDITIONAL_EFFECT,        80, DRAGON,        90, 25 ; marcelnote - changed from NORMAL, acc 75
	move VINE_WHIP,    NO_ADDITIONAL_EFFECT,        40, GRASS,        100, 30 ; marcelnote - changed from pp 10
	move STOMP,        FLINCH_SIDE_EFFECT2,         65, NORMAL,       100, 20
	move DOUBLE_KICK,  ATTACK_TWICE_EFFECT,         30, FIGHTING,     100, 30
	move MEGA_KICK,    NO_ADDITIONAL_EFFECT,       130, NORMAL,        85, 15 ; marcelnote - changed from acc 75
	move JUMP_KICK,    JUMP_KICK_EFFECT,            70, FIGHTING,      95, 25
	move ROLLING_KICK, FLINCH_SIDE_EFFECT2,         60, FIGHTING,      85, 15
	move SAND_ATTACK,  ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 15
	move HEADBUTT,     FLINCH_SIDE_EFFECT2,         70, NORMAL,       100, 25
	move HORN_ATTACK,  NO_ADDITIONAL_EFFECT,        65, NORMAL,       100, 25
	move FURY_ATTACK,  TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        95, 20 ; marcelnote - changed from acc 85
	move HORN_DRILL,   NO_ADDITIONAL_EFFECT,       180, NORMAL,        65, 15
	move TACKLE,       NO_ADDITIONAL_EFFECT,        35, NORMAL,        95, 35
	move BODY_SLAM,    PARALYZE_SIDE_EFFECT2,       85, NORMAL,       100, 25
	move WRAP,         TRAPPING_EFFECT,             15, NORMAL,        85, 20
	move TAKE_DOWN,    RECOIL_EFFECT,              100, NORMAL,       100, 20
	move THRASH,       THRASH_PETAL_DANCE_EFFECT,  110, NORMAL,       100, 20
	move DOUBLE_EDGE,  RECOIL_EFFECT,              120, NORMAL,       100, 25 ; marcelnote - changed from pwr 100, pp 15
	move TAIL_WHIP,    DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30
	move POISON_STING, POISON_SIDE_EFFECT1,         30, POISON,       100, 35 ; marcelnote - changed from pwr 15
	move TWINEEDLE,    TWINEEDLE_EFFECT,            50, BUG,          100, 20 ; marcelnote - changed from pwr 25
	move PIN_MISSILE,  TWO_TO_FIVE_ATTACKS_EFFECT,  30, BUG,           95, 15 ; marcelnote - changed from pwr 14, acc 85, pp 20
	move LEER,         DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30
	move BITE,         FLINCH_SIDE_EFFECT1,         40, NORMAL,       100, 35
	move GROWL,        ATTACK_DOWN1_EFFECT,          0, NORMAL,       100, 40
	move ROAR,         SWITCH_AND_TELEPORT_EFFECT,   0, NORMAL,        85, 20 ; marcelnote - changed from acc 100
	move SING,         SLEEP_EFFECT,                 0, NORMAL,        55, 15
	move SUPERSONIC,   CONFUSION_EFFECT,             0, NORMAL,        55, 20
	move SONICBOOM,    SPECIAL_DAMAGE_EFFECT,        1, NORMAL,        90, 20
	move DISABLE,      DISABLE_EFFECT,               0, NORMAL,        55, 20
	move ACID,         DEFENSE_DOWN_SIDE_EFFECT,    65, POISON,       100, 20 ; marcelnote - changed from pwr 40, pp 30
	move EMBER,        BURN_SIDE_EFFECT1,           40, FIRE,         100, 35
	move FLAMETHROWER, BURN_SIDE_EFFECT1,           95, FIRE,         100, 25
	move MIST,         MIST_EFFECT,                  0, ICE,          100, 30
	move WATER_GUN,    NO_ADDITIONAL_EFFECT,        40, WATER,        100, 35
	move HYDRO_PUMP,   NO_ADDITIONAL_EFFECT,       120, WATER,         85, 15
	move SURF,         NO_ADDITIONAL_EFFECT,        95, WATER,        100, 15
	move ICE_BEAM,     FREEZE_SIDE_EFFECT1,         95, ICE,          100, 25
	move BLIZZARD,     FREEZE_SIDE_EFFECT1,        120, ICE,           90, 15
	move PSYBEAM,      CONFUSION_SIDE_EFFECT,       65, PSYCHIC_TYPE, 100, 20
	move BUBBLEBEAM,   SPEED_DOWN_SIDE_EFFECT,      65, WATER,        100, 35
	move AURORA_BEAM,  ATTACK_DOWN_SIDE_EFFECT,     65, ICE,          100, 35
	move HYPER_BEAM,   HYPER_BEAM_EFFECT,          150, NORMAL,        90, 15
	move PECK,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35
	move DRILL_PECK,   NO_ADDITIONAL_EFFECT,        80, FLYING,       100, 25
	move SUBMISSION,   RECOIL_EFFECT,               80, FIGHTING,     100, 35
	move LOW_KICK,     FLINCH_SIDE_EFFECT2,         50, FIGHTING,     100, 30
	move COUNTER,      NO_ADDITIONAL_EFFECT,         1, FIGHTING,     100, 30
	move SEISMIC_TOSS, SPECIAL_DAMAGE_EFFECT,        1, FIGHTING,     100, 30
	move STRENGTH,     NO_ADDITIONAL_EFFECT,        80, NORMAL,       100, 40
	move ABSORB,       DRAIN_HP_EFFECT,             60, GRASS,        100, 40 ; marcelnote - changed from pwr 20
	move MEGA_DRAIN,   DRAIN_HP_EFFECT,             80, GRASS,        100, 20 ; marcelnote - changed from pwr 40
	move LEECH_SEED,   LEECH_SEED_EFFECT,            0, GRASS,         90, 10
	move GROWTH,       SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 40
	move RAZOR_LEAF,   NO_ADDITIONAL_EFFECT,        55, GRASS,         95, 25
	move SOLARBEAM,    CHARGE_EFFECT,              220, GRASS,        100, 10 ; marcelnote - changed from pwr 120
	move POISONPOWDER, POISON_EFFECT,                0, POISON,        75, 35
	move STUN_SPORE,   PARALYZE_EFFECT,              0, GRASS,         75, 30
	move SLEEP_POWDER, SLEEP_EFFECT,                 0, GRASS,         75, 15
	move PETAL_DANCE,  THRASH_PETAL_DANCE_EFFECT,   70, GRASS,        100, 20
	move STRING_SHOT,  SPEED_DOWN1_EFFECT,           0, BUG,           95, 40
	move DRAGON_RAGE,  NO_ADDITIONAL_EFFECT,        60, DRAGON,       100, 25
	move FIRE_SPIN,    TRAPPING_EFFECT,             15, FIRE,          75, 15 ; marcelnote - changed from acc 70
	move THUNDERSHOCK, PARALYZE_SIDE_EFFECT1,       40, ELECTRIC,     100, 40
	move THUNDERBOLT,  PARALYZE_SIDE_EFFECT1,       95, ELECTRIC,     100, 25
	move THUNDER_WAVE, PARALYZE_EFFECT,              0, ELECTRIC,     100, 20
	move THUNDER,      PARALYZE_SIDE_EFFECT1,      140, ELECTRIC,      70, 20
	move ROCK_THROW,   NO_ADDITIONAL_EFFECT,        60, ROCK,          90, 40 ; marcelnote - changed from acc 65
	move EARTHQUAKE,   NO_ADDITIONAL_EFFECT,       100, GROUND,       100, 15
	move FISSURE,      NO_ADDITIONAL_EFFECT,       170, GROUND,        65, 15
	move DIG,          CHARGE_EFFECT,              100, GROUND,       100, 15 ; marcelnote - changed from pwr 100, pp 10
	move TOXIC,        POISON_EFFECT,                0, POISON,        85, 10
	move CONFUSION,    CONFUSION_SIDE_EFFECT,       50, PSYCHIC_TYPE, 100, 40
	move PSYCHIC_M,    SPECIAL_DOWN_SIDE_EFFECT,    90, PSYCHIC_TYPE, 100, 25
	move HYPNOSIS,     SLEEP_EFFECT,                 0, PSYCHIC_TYPE,  60, 25
	move MEDITATE,     ATTACK_UP1_EFFECT,            0, PSYCHIC_TYPE, 100, 40
	move AGILITY,      SPEED_UP2_EFFECT,             0, PSYCHIC_TYPE, 100, 30
	move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 30
	move RAGE,         RAGE_EFFECT,                120, NORMAL,       100, 25
	move TELEPORT,     SWITCH_AND_TELEPORT_EFFECT,   0, PSYCHIC_TYPE, 100, 20
	move NIGHT_SHADE,  NO_ADDITIONAL_EFFECT,        50, GHOST,        100, 25 ; 
	move MIMIC,        MIMIC_EFFECT,                 0, NORMAL,       100, 10
	move SCREECH,      DEFENSE_DOWN2_EFFECT,         0, NORMAL,        85, 40
	move DOUBLE_TEAM,  EVASION_UP1_EFFECT,           0, NORMAL,       100, 15
	move RECOVER,      HEAL_EFFECT,                  0, NORMAL,       100, 20
	move HARDEN,       DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30
	move MINIMIZE,     EVASION_UP1_EFFECT,           0, NORMAL,       100, 20
	move SMOKESCREEN,  ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 20
	move CONFUSE_RAY,  CONFUSION_EFFECT,             0, GHOST,        100, 10
	move WITHDRAW,     DEFENSE_UP1_EFFECT,           0, WATER,        100, 40
	move DEFENSE_CURL, DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 40
	move BARRIER,      DEFENSE_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 30
	move LIGHT_SCREEN, LIGHT_SCREEN_EFFECT,          0, PSYCHIC_TYPE, 100, 30
	move HAZE,         HAZE_EFFECT,                  0, ICE,          100, 30
	move REFLECT,      REFLECT_EFFECT,               0, PSYCHIC_TYPE, 100, 20
	move FOCUS_ENERGY, FOCUS_ENERGY_EFFECT,          0, NORMAL,       100, 30
	move BIDE,         BIDE_EFFECT,                  0, NORMAL,       100, 10
	move METRONOME,    METRONOME_EFFECT,             0, NORMAL,       100, 10
	move MIRROR_MOVE,  MIRROR_MOVE_EFFECT,           0, FLYING,       100, 20
	move SELFDESTRUCT, EXPLODE_EFFECT,             200, NORMAL,       100,  5
	move EGG_BOMB,     NO_ADDITIONAL_EFFECT,       140, NORMAL,        75, 15
	move LICK,         PARALYZE_SIDE_EFFECT2,       35, GHOST,        100, 25 ; marcelnote - changed from pwr 20, pp 30
	move SMOG,         POISON_SIDE_EFFECT2,         70, POISON,        85, 20 ; marcelnote - changed from pwr 20, acc 70
	move SLUDGE,       POISON_SIDE_EFFECT2,         95, POISON,       100, 25 ; marcelnote - changed from pwr 65, pp 20
	move BONE_CLUB,    FLINCH_SIDE_EFFECT1,         85, GROUND,       100, 20
	move FIRE_BLAST,   BURN_SIDE_EFFECT2,          120, FIRE,          85, 15
	move WATERFALL,    FLINCH_SIDE_EFFECT1,         80, WATER,        100, 15 ; marcelnote - changed from NO_ADDITIONAL_EFFECT
	move CLAMP,        TRAPPING_EFFECT,             35, WATER,         75, 10
	move SWIFT,        SWIFT_EFFECT,                60, NORMAL,       100, 20
	move SKULL_BASH,   CHARGE_EFFECT,              220, NORMAL,       100, 15 ; marcelnote - changed from pwr 100
	move SPIKE_CANNON, TWO_TO_FIVE_ATTACKS_EFFECT,  20, NORMAL,       100, 15
	move CONSTRICT,    SPEED_DOWN_SIDE_EFFECT,      30, NORMAL,       100, 25 ; marcelnote - changed from pwr 10, pp 35
	move AMNESIA,      SPECIAL_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 20
	move KINESIS,      SPECIAL_UP1_EFFECT,           0, PSYCHIC_TYPE,  80, 15 ; marcelnote - changed from ACCURACY_DOWN1_EFFECT
	move SOFTBOILED,   HEAL_EFFECT,                  0, NORMAL,       100, 10
	move HI_JUMP_KICK, JUMP_KICK_EFFECT,           105, FIGHTING,      90, 20
	move GLARE,        PARALYZE_EFFECT,              0, NORMAL,        75, 30
	move DREAM_EATER,  DREAM_EATER_EFFECT,         120, PSYCHIC_TYPE, 100, 15
	move POISON_GAS,   POISON_EFFECT,                0, POISON,        55, 40
	move BARRAGE,      TWO_TO_FIVE_ATTACKS_EFFECT,  20, NORMAL,        85, 20
	move LEECH_LIFE,   DRAIN_HP_EFFECT,             60, BUG,          100, 15 ; marcelnote - changed from pwr 20
	move LOVELY_KISS,  SLEEP_EFFECT,                 0, NORMAL,        85, 25
	move SKY_ATTACK,   CHARGE_EFFECT,              200, FLYING,       100, 20 ; marcelnote - changed from acc 90, pp 5
	move TRANSFORM,    TRANSFORM_EFFECT,             0, NORMAL,       100, 10
	move BUBBLE,       SPEED_DOWN_SIDE_EFFECT,      20, WATER,        100, 30
	move DIZZY_PUNCH,  CONFUSION_SIDE_EFFECT,       80, NORMAL,       100, 10 ; marcelnote - changed from NO_ADDITIONAL_EFFECT, pwr 70
	move SPORE,        SLEEP_EFFECT,                 0, GRASS,        100, 15
	move FLASH,        ACCURACY_DOWN1_EFFECT,        0, NORMAL,        70, 20
	move PSYWAVE,      SPECIAL_DAMAGE_EFFECT,        1, PSYCHIC_TYPE, 100, 15 ; marcelnote - changed from acc 80
	move SPLASH,       SPLASH_EFFECT,                0, NORMAL,       100, 40
	move ACID_ARMOR,   DEFENSE_UP2_EFFECT,           0, POISON,       100, 40
	move CRABHAMMER,   NO_ADDITIONAL_EFFECT,       130, WATER,         85, 10
	move EXPLOSION,    EXPLODE_EFFECT,             250, NORMAL,       100,  5
	move FURY_SWIPES,  TWO_TO_FIVE_ATTACKS_EFFECT,  20, NORMAL,        90, 15 ; marcelnote - changed from acc 80
	move BONEMERANG,   ATTACK_TWICE_EFFECT,         80, GROUND,        90, 10 ; marcelnote - changed from pwr 50
	move REST,         HEAL_EFFECT,                  0, PSYCHIC_TYPE, 100, 10
	move ROCK_SLIDE,   FLINCH_SIDE_EFFECT1,         90, ROCK,          90, 25
	move HYPER_FANG,   FLINCH_SIDE_EFFECT1,         80, NORMAL,        90, 15
	move SHARPEN,      ATTACK_UP1_EFFECT,            0, NORMAL,       100, 30
	move CONVERSION,   CONVERSION_EFFECT,            0, NORMAL,       100, 30
	move TRI_ATTACK,   TRI_ATTACK_EFFECT,           80, NORMAL,       100, 30 ; marcelnote - changed from NO_ADDITIONAL_EFFECT
	move SUPER_FANG,   SUPER_FANG_EFFECT,            1, NORMAL,        90, 10
	move SLASH,        NO_ADDITIONAL_EFFECT,        70, NORMAL,       100, 20
	move SUBSTITUTE,   SUBSTITUTE_EFFECT,            0, NORMAL,       100, 10
	move ELECTRO_BALL, NO_ADDITIONAL_EFFECT,        55, ELECTRIC,      95, 20 ; marcelnote - new move
	move WILL_O_WISP,  BURN_EFFECT,                  0, FIRE,          75, 15 ; marcelnote - new move
	move HEX,          HEX_EFFECT,                  70, GHOST,        100, 15 ; marcelnote - new move
	move STRUGGLE,     RECOIL_EFFECT,               50, BIRD,         100, 10 ; marcelnote - changed from NORMAL
	assert_table_length NUM_ATTACKS
