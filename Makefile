roms := \
	pokebaofamred.gb \
	pokebaofamblue.gb \
	pokebaofamgreen.gb \
	pokebaofamblue_debug.gb \
	pokebaofamrouge.gb \
	pokebaofamverte.gb \
	pokebaofambleue.gb \
	pokebaofambleue_debug.gb \
	pokebaofamrojo.gb \
	pokebaofamverde.gb \
	pokebaofamazul.gb \
	pokebaofamazul_debug.gb
patches := \
	pokebaofamred.patch \
	pokebaofamblue.patch

rom_obj := \
	audio.o \
	home.o \
	main.o \
	maps.o \
	ram.o \
	text.o \
	gfx/pics.o \
	gfx/sprites.o \
	gfx/tilesets.o
#	gfx/pikachus_beach.o \

pokebaofamred_obj         := $(rom_obj:.o=_red.o)
pokebaofamblue_obj        := $(rom_obj:.o=_blue.o)
pokebaofamgreen_obj       := $(rom_obj:.o=_green.o)
pokebaofamblue_debug_obj  := $(rom_obj:.o=_blue_debug.o)
pokebaofamred_vc_obj      := $(rom_obj:.o=_red_vc.o)
pokebaofamblue_vc_obj     := $(rom_obj:.o=_blue_vc.o)
pokebaofamrouge_obj       := $(rom_obj:.o=_rouge.o)
pokebaofamverte_obj       := $(rom_obj:.o=_verte.o)
pokebaofambleue_obj       := $(rom_obj:.o=_bleue.o)
pokebaofambleue_debug_obj := $(rom_obj:.o=_bleue_debug.o)
pokebaofamrojo_obj        := $(rom_obj:.o=_rojo.o)
pokebaofamverde_obj       := $(rom_obj:.o=_verde.o)
pokebaofamazul_obj        := $(rom_obj:.o=_azul.o)
pokebaofamazul_debug_obj  := $(rom_obj:.o=_azul_debug.o)


### Build tools

ifeq (,$(shell command -v sha1sum 2>/dev/null))
SHA1 := shasum
else
SHA1 := sha1sum
endif

RGBDS ?=
RGBASM  ?= $(RGBDS)rgbasm
RGBFIX  ?= $(RGBDS)rgbfix
RGBGFX  ?= $(RGBDS)rgbgfx
RGBLINK ?= $(RGBDS)rgblink

VERSION ?= v0.4

RGBASMFLAGS  ?= -Weverything -Wtruncation=1
RGBLINKFLAGS ?= -Weverything -Wtruncation=1
RGBFIXFLAGS  ?= -Weverything
RGBGFXFLAGS  ?= -Weverything
RGBASMFLAGS += -D GAME_VERSION=\"$(VERSION)\"


### Build targets

.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:
.PHONY: \
	all \
	red \
	blue \
	green \
	blue_debug \
	red_vc \
	blue_vc \
	rouge \
	verte \
	bleue \
	bleue_debug \
	rojo \
	verde \
	azul \
	azul_debug \
	clean \
	tidy \
	compare \
	check-pngs \
	normalize-pngs \
	FORCE_VERSION \
	tools

all: $(roms)
red:         pokebaofamred.gb
blue:        pokebaofamblue.gb
green:       pokebaofamgreen.gb
blue_debug:  pokebaofamblue_debug.gb
red_vc:      pokebaofamred.patch
blue_vc:     pokebaofamblue.patch
rouge:       pokebaofamrouge.gb
verte:       pokebaofamverte.gb
bleue:       pokebaofambleue.gb
bleue_debug: pokebaofambleue_debug.gb
rojo:        pokebaofamrojo.gb
verde:       pokebaofamverde.gb
azul:        pokebaofamazul.gb
azul_debug:  pokebaofamazul_debug.gb

clean: tidy
	find gfx \
	     \( -iname '*.1bpp' \
	        -o -iname '*.2bpp' \
	        -o -iname '*.4bpp' \
	        -o -iname '*.pic' \) \
	     -delete

tidy:
	$(RM) $(roms) \
	      $(roms:.gb=.sym) \
	      $(roms:.gb=.map) \
	      $(patches) \
	      $(patches:.patch=_vc.gb) \
	      $(patches:.patch=_vc.sym) \
	      $(patches:.patch=_vc.map) \
	      $(patches:%.patch=vc/%.constants.sym) \
	      $(pokebaofamred_obj) \
	      $(pokebaofamblue_obj) \
	      $(pokebaofamgreen_obj) \
	      $(pokebaofamred_vc_obj) \
	      $(pokebaofamblue_vc_obj) \
	      $(pokebaofamblue_debug_obj) \
	      $(pokebaofamrouge_obj) \
		      $(pokebaofamverte_obj) \
		      $(pokebaofambleue_obj) \
		      $(pokebaofambleue_debug_obj) \
		      $(pokebaofamrojo_obj) \
		      $(pokebaofamverde_obj) \
		      $(pokebaofamazul_obj) \
		      $(pokebaofamazul_debug_obj) \
		      rgbdscheck.o
	$(MAKE) clean -C tools/

compare: $(roms) $(patches)
	@$(SHA1) -c roms.sha1

tools:
	$(MAKE) -C tools/

# Explicit maintenance commands; normal builds never invoke these.
normalize-pngs:
	$(MAKE) -C tools png_normalize
	tools/png_normalize .

check-pngs:
	$(MAKE) -C tools png_normalize
	tools/png_normalize --check .


RGBASMFLAGS += -Q8 -P includes.asm
# Create a sym/map for debug purposes if `make` run with `DEBUG=1`
ifeq ($(DEBUG),1)
RGBASMFLAGS += -E
endif

$(pokebaofamred_obj):         RGBASMFLAGS += -D _RED
$(pokebaofamgreen_obj):       RGBASMFLAGS += -D _GREEN
$(pokebaofamblue_obj):        RGBASMFLAGS += -D _BLUE
$(pokebaofamblue_debug_obj):  RGBASMFLAGS += -D _BLUE -D _DEBUG
$(pokebaofamred_vc_obj):      RGBASMFLAGS += -D _RED -D _RED_VC
$(pokebaofamblue_vc_obj):     RGBASMFLAGS += -D _BLUE -D _BLUE_VC
$(pokebaofamrouge_obj):       RGBASMFLAGS += -D _RED -D _FRA
$(pokebaofamverte_obj):       RGBASMFLAGS += -D _GREEN -D _FRA
$(pokebaofambleue_obj):       RGBASMFLAGS += -D _BLUE -D _FRA
$(pokebaofambleue_debug_obj): RGBASMFLAGS += -D _BLUE -D _FRA -D _DEBUG
$(pokebaofamrojo_obj):        RGBASMFLAGS += -D _RED -D _ESP
$(pokebaofamverde_obj):       RGBASMFLAGS += -D _GREEN -D _ESP
$(pokebaofamazul_obj):        RGBASMFLAGS += -D _BLUE -D _ESP
$(pokebaofamazul_debug_obj):  RGBASMFLAGS += -D _BLUE -D _ESP -D _DEBUG

%.patch: %_vc.gb %.gb vc/%.patch.template
	tools/make_patch $*_vc.sym $^ $@

rgbdscheck.o: rgbdscheck.asm
	$(RGBASM) -o $@ $<

# Build tools when building the rom.
# This has to happen before the rules are processed, since that's when scan_includes is run.
ifeq (,$(filter clean tidy tools,$(MAKECMDGOALS)))

tools_status := $(shell $(MAKE) -C tools 1>&2; echo $$?)
ifneq ($(tools_status),0)
$(error Failed to build required tools; check the errors above and INSTALL.md for dependencies)
endif

# The dep rules have to be explicit or else missing files won't be reported.
# As a side effect, they're evaluated immediately instead of when the rule is invoked.
# It doesn't look like $(shell) can be deferred so there might not be a better way.
preinclude_deps := includes.asm $(shell tools/scan_includes includes.asm)
define DEP
$1: $2 $$(shell tools/scan_includes $2) $(preinclude_deps) | rgbdscheck.o
	$$(RGBASM) $$(RGBASMFLAGS) -o $$@ $$<
endef

main_red.o main_blue.o main_green.o main_blue_debug.o \
main_red_vc.o main_blue_vc.o main_rouge.o main_verte.o \
main_bleue.o main_bleue_debug.o main_rojo.o main_verde.o \
main_azul.o main_azul_debug.o: FORCE_VERSION

FORCE_VERSION:

# Dependencies for objects (drop _red and _blue from asm file basenames)
$(foreach obj, $(pokebaofamred_obj), $(eval $(call DEP,$(obj),$(obj:_red.o=.asm))))
$(foreach obj, $(pokebaofamblue_obj), $(eval $(call DEP,$(obj),$(obj:_blue.o=.asm))))
$(foreach obj, $(pokebaofamgreen_obj), $(eval $(call DEP,$(obj),$(obj:_green.o=.asm))))
$(foreach obj, $(pokebaofamblue_debug_obj), $(eval $(call DEP,$(obj),$(obj:_blue_debug.o=.asm))))
$(foreach obj, $(pokebaofamred_vc_obj), $(eval $(call DEP,$(obj),$(obj:_red_vc.o=.asm))))
$(foreach obj, $(pokebaofamblue_vc_obj), $(eval $(call DEP,$(obj),$(obj:_blue_vc.o=.asm))))
$(foreach obj, $(pokebaofamrouge_obj), $(eval $(call DEP,$(obj),$(obj:_rouge.o=.asm))))
$(foreach obj, $(pokebaofamverte_obj), $(eval $(call DEP,$(obj),$(obj:_verte.o=.asm))))
$(foreach obj, $(pokebaofambleue_obj), $(eval $(call DEP,$(obj),$(obj:_bleue.o=.asm))))
$(foreach obj, $(pokebaofambleue_debug_obj), $(eval $(call DEP,$(obj),$(obj:_bleue_debug.o=.asm))))
$(foreach obj, $(pokebaofamrojo_obj), $(eval $(call DEP,$(obj),$(obj:_rojo.o=.asm))))
$(foreach obj, $(pokebaofamverde_obj), $(eval $(call DEP,$(obj),$(obj:_verde.o=.asm))))
$(foreach obj, $(pokebaofamazul_obj), $(eval $(call DEP,$(obj),$(obj:_azul.o=.asm))))
$(foreach obj, $(pokebaofamazul_debug_obj), $(eval $(call DEP,$(obj),$(obj:_azul_debug.o=.asm))))

endif


RGBLINKFLAGS += -d
pokebaofamred.gb:         RGBLINKFLAGS += -p 0x00
pokebaofamgreen.gb:       RGBLINKFLAGS += -p 0x00
pokebaofamblue.gb:        RGBLINKFLAGS += -p 0x00
pokebaofamblue_debug.gb:  RGBLINKFLAGS += -p 0xff
pokebaofamred_vc.gb:      RGBLINKFLAGS += -p 0x00
pokebaofamblue_vc.gb:     RGBLINKFLAGS += -p 0x00
pokebaofamrouge.gb:       RGBLINKFLAGS += -p 0x00
pokebaofamverte.gb:       RGBLINKFLAGS += -p 0x00
pokebaofambleue.gb:       RGBLINKFLAGS += -p 0x00
pokebaofambleue_debug.gb: RGBLINKFLAGS += -p 0xff
pokebaofamrojo.gb:        RGBLINKFLAGS += -p 0x00
pokebaofamverde.gb:       RGBLINKFLAGS += -p 0x00
pokebaofamazul.gb:        RGBLINKFLAGS += -p 0x00
pokebaofamazul_debug.gb:  RGBLINKFLAGS += -p 0xff

RGBFIXFLAGS += -jsv -n 0 -k 01 -l 0x33 -m MBC3+RAM+BATTERY -r 03
pokebaofamred.gb:         RGBFIXFLAGS += -p 0x00 -t "$(VERSION)"
pokebaofamgreen.gb:       RGBFIXFLAGS += -p 0x00 -t "$(VERSION)"
pokebaofamblue.gb:        RGBFIXFLAGS += -p 0x00 -t "$(VERSION)"
pokebaofamblue_debug.gb:  RGBFIXFLAGS += -p 0xff -t "$(VERSION)"
pokebaofamred_vc.gb:      RGBFIXFLAGS += -p 0x00 -t "$(VERSION)"
pokebaofamblue_vc.gb:     RGBFIXFLAGS += -p 0x00 -t "$(VERSION)"
pokebaofamrouge.gb:       RGBFIXFLAGS += -p 0x00 -t "$(VERSION)"
pokebaofamverte.gb:       RGBFIXFLAGS += -p 0x00 -t "$(VERSION)"
pokebaofambleue.gb:       RGBFIXFLAGS += -p 0x00 -t "$(VERSION)"
pokebaofambleue_debug.gb: RGBFIXFLAGS += -p 0xff -t "$(VERSION)"
pokebaofamrojo.gb:        RGBFIXFLAGS += -p 0x00 -t "$(VERSION)"
pokebaofamverde.gb:       RGBFIXFLAGS += -p 0x00 -t "$(VERSION)"
pokebaofamazul.gb:        RGBFIXFLAGS += -p 0x00 -t "$(VERSION)"
pokebaofamazul_debug.gb:  RGBFIXFLAGS += -p 0xff -t "$(VERSION)"

%.gb: $$(%_obj) layout.link
	$(RGBLINK) $(RGBLINKFLAGS) -l layout.link -m $*.map -n $*.sym -o $@ $(filter %.o,$^)
	$(RGBFIX) $(RGBFIXFLAGS) $@


### Misc file-specific graphics rules

gfx/battle/move_anim_0.2bpp: tools/gfx += --trim-whitespace
gfx/battle/move_anim_1.2bpp: tools/gfx += --trim-whitespace

gfx/intro/blue_jigglypuff_1.2bpp: RGBGFXFLAGS += --columns
gfx/intro/blue_jigglypuff_2.2bpp: RGBGFXFLAGS += --columns
gfx/intro/blue_jigglypuff_3.2bpp: RGBGFXFLAGS += --columns
gfx/intro/red_nidorino_1.2bpp: RGBGFXFLAGS += --columns
gfx/intro/red_nidorino_2.2bpp: RGBGFXFLAGS += --columns
gfx/intro/red_nidorino_3.2bpp: RGBGFXFLAGS += --columns
gfx/intro/gengar.2bpp: RGBGFXFLAGS += --columns
gfx/intro/gengar.2bpp: tools/gfx += --remove-duplicates --preserve=0x19,0x76

gfx/credits/the_end.2bpp: tools/gfx += --interleave --png=$<

gfx/slots/red_slots_1.2bpp: tools/gfx += --trim-whitespace
gfx/slots/blue_slots_1.2bpp: tools/gfx += --trim-whitespace
gfx/slots/green_slots_1.2bpp: tools/gfx += --trim-whitespace

gfx/tilesets/%.2bpp: tools/gfx += --trim-whitespace
gfx/tilesets/reds_house.2bpp: tools/gfx += --preserve=0x48

gfx/trade/game_boy.2bpp: tools/gfx += --remove-duplicates
#gfx/pikachus_beach/surfing_pikachu_1c.2bpp: tools/gfx += --trim-whitespace


### Catch-all graphics rules

gfx/sgb/%_border.4bpp: gfx/sgb/%_border.png
	tools/sgb_border_gfx -o $@ $<

gfx/sgb/starter_stickers.4bpp: gfx/sgb/starter_stickers.png
	tools/sgb_border_gfx -o $@ $<

%.2bpp: %.png
	$(RGBGFX) --colors dmg $(RGBGFXFLAGS) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -o $@ $@ || $$($(RM) $@ && false))

%.1bpp: %.png
	$(RGBGFX) --colors dmg $(RGBGFXFLAGS) --depth 1 -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) --depth 1 -o $@ $@ || $$($(RM) $@ && false))

%.pic: %.2bpp
	tools/pkmncompress $< $@


### File extensions that are never generated and should be manually created

%.asm: ;
%.inc: ;
%.png: ;
%.pal: ;
%.bin: ;
%.blk: ;
%.bst: ;
%.rle: ;
