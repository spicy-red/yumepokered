# PokéBaoFam ROM Bank & Memory Layout Guidelines

> **Generated from build map analysis** — pokebaofamblue_debug.map (85 ROMX banks used / 255 available)

---

## Table of Contents
1. [ROM Bank Allocation](#rom-bank-allocation)
2. [WRAM (Work RAM) Layout](#wram-work-ram-layout)
3. [HRAM (High RAM) Layout](#hram-high-ram-layout)
4. [SRAM (Save RAM) Layout](#sram-save-ram-layout)
5. [Sprite/Pics Bank Usage](#spritepics-bank-usage)
6. [Adding New Content](#adding-new-content)
7. [Trainer Pokémon Expansion Notes](#trainer-pokémon-expansion-notes)

---

## ROM Bank Allocation

### Summary
| Region | Banks Used | Free Banks | Notes |
|--------|------------|------------|-------|
| ROMX (switchable) | **85 / 255** | **~170** | Plenty of room |
| ROM0 (fixed) | 1 | 0 | Kernel/home code |
| **Total ROM used** | **~1.3 MB** | **~2.7 MB** | 47 KB free in existing banks |

### Bank-by-Bank Breakdown

| Bank | Hex | Primary Contents | Free Space |
|------|-----|------------------|------------|
| 1 | $01 | `bank1` (misc), RBY Songs 4 | ~2 KB |
| 2 | $02 | Audio: SFX headers, Sound Effects, Audio Engine, RBY Songs 3, Pokémon Data 1 | ~0.5 KB |
| 3 | $03 | `bank3` (large), Crystal Sound Effects | ~0.4 KB |
| 4 | $04 | NPC Sprites 1, Font Graphics, Battle Engine 1, GFX Engine, Extra Songs 2 | ~0.3 KB |
| 5 | $05 | NPC Sprites 2, Battle Engine 2, Pokédex Rating, Alt Music Routines | ~0.3 KB |
| 6 | $06 | Maps 1–2, Silph Co Maps, Play Time, Doors/Ledges, Pay Phones, Music Routines | ~1 KB |
| 7 | $07 | Maps 3–4, Pokémon Names, Hidden Events 1, **Mewtwo Sprites** | ~2 KB |
| 8 | $08 | SFX Headers 2, Sound Effects 2, TCG2 Songs 2 | ~1 KB |
| 9 | $09 | Battle Engine 3, TCG2 Songs 1 | ~1 KB |
| 10 | $0A | Battle Engine 4, Songs 2 | ~0 KB |
| 11 | $0B | Songs 4 | ~0 KB |
| 12 | $0C | Tilesets 4 | ~0 KB |
| 13 | $0D | Slot Machines, Text 12 | ~0 KB |
| 14 | $0E | Battle Engine 7, Pinball Songs 5 | ~0 KB |
| 15 | $0F | **Battle Core** (full bank) | 0 KB |
| 16 | $10 | `bank10`, Pay Phone Text | ~3 KB |
| 17 | $11 | Maps 5–6, Hidden Events Core | ~1 KB |
| 18 | $12 | Maps 7–8, Screen Effects, Cries | ~1 KB |
| 19 | $13 | Maps 9, Predefs, TCG Songs 1 | ~1 KB |
| 20 | $14 | Maps 10, Battle Engine 8, Hidden Events 2, TCG2 Songs 3 | ~0 KB |
| 21 | $15 | Maps 11–12, Battle Engine 9, Diploma, Trainer Sight, Cinnabar Text | ~1 KB |
| 22 | $16 | Maps 13–14, Battle Engine 10, Saffron Guards, Text Pallet | ~1 KB |
| 23 | $17 | Maps 15–16, Starter Dex, Hidden Events 3, Pinball Songs 2 | ~1 KB |
| 24 | $18 | Maps 17–18, Cinnabar Lab Fossils, Hidden Events 4, Songs 5 | ~1 KB |
| 25 | $19 | **Tilesets 1** (large) | ~1 KB |
| 26 | $1A | Battle Engine 11, Tilesets 2, **Ursaring Sprites** | ~2 KB |
| 27 | $1B | **Tilesets 3** (large) | ~0 KB |
| 28 | $1C | `bank1C`, Pinball Songs 1 | ~2 KB |
| 29 | $1D | Maps 19–21, Itemfinder, Vending Machine, **Fossils Pics** | ~1 KB |
| 30 | $1E | `bank1E` (large) | ~0 KB |
| 31 | $1F | SFX Headers 3, Sound Effects 3, **Trainer Pics 3** | ~0 KB |
| 32–33 | $20–$21 | Text 1–2 | ~0 KB |
| 34–35 | $22–$23 | Text 3–4 | ~0 KB |
| 36–37 | $24–$25 | Text 5–6 | ~0 KB |
| 38–39 | $26–$27 | Text 7–8 | ~0 KB |
| 40–41 | $28–$29 | Text 9–10 | ~0 KB |
| 42 | $2A | Text 11 | ~0 KB |
| 43 | $2B | **Pokédex Text** | ~0 KB |
| 44 | $2C | **Move Names** | ~0 KB |
| 45 | $2D | (was Trainer Pics) | — |
| 46–71 | $2E–$47 | **Pokémon Sprite Banks** (see [Sprite/Pics Bank Usage](#spritepics-bank-usage)) | ~1–2 KB each |
| 72 | $48 | `bank1F` | ~2 KB |
| 73–85 | $49–$55 | **Early-gen Pokémon Sprites** (packed 5–6 per bank, $08F0–$0B70 each) | ~1 KB each |

### Key Observations
- **Banks 46–71 ($2E–$47)**: Almost entirely Pokémon front/back sprites (normal, Crystal, Green variants)
- **Banks 73–85 ($49–$55)**: Early Kanto mons packed tightly (7 per bank at $08F0 = 2,288 bytes each)
- **Banks 15, 25, 27, 30**: Nearly full (tilesets, battle core)
- **~170 banks completely empty** — linker auto-allocates new `ROMX` sections as needed

---

## WRAM (Work RAM) Layout

> **Total: 8,143 bytes used / 49 bytes free** (WRAM0: $C000–$DFFF = 8 KB)

### Section Map (from `ram/wram.asm`)

| Section | Address Range | Size | Key Variables |
|---------|---------------|------|---------------|
| **Audio RAM** | $C000–$C067 | 104 | Music channels, SFX, cry data |
| **Sprite State Data** | $C068–$C1FF | ~400 | OAM sprite structs (player + NPCs) |
| **OAM Buffer** | $C200–$C29F | 160 | DMA source for sprite DMA |
| **Tilemap** | $C2A0–$C5E7 | 840 | BG tilemap buffer (20×18) |
| **Overworld Map** | $C5E8–$CAFB | 1,300 | Current map blocks, connections |
| **WRAM (General)** | $CAFC–$D04D | 1,362 | Game state, flags, player data |
| **Party Data** | $D04E–$D1E1 | 372 | Player party (6 × party_struct) |
| **Main Data** | $D1E2–$D8A7 | 1,734 | Items, PC, flags, map scripts, etc. |
| **Current Box Data** | $D8A8–$DF09 | 1,114 | Active PC box (20 × box_struct) |
| **Stack** | $DF0A–$DFFF | 246 | 2-byte overflow check + stack |

### Critical Custom Fork Changes (vs. pret/pokered)

| Area | Change | Impact |
|------|--------|--------|
| `wEnemyMonNick` / `wEnemyMonOT` | `NAME_LENGTH` → `PLAYER_NAME_LENGTH` (+3 bytes each) | **+36 bytes** in Union |
| `wDayCareMonOT` | `NAME_LENGTH` → `PLAYER_NAME_LENGTH` | **+3 bytes** |
| `wBoxMonOT` | `NAME_LENGTH` → `PLAYER_NAME_LENGTH` | **+60 bytes** (20 mons) |
| `wPartyMonOT` | `NAME_LENGTH` → `PLAYER_NAME_LENGTH` | **+18 bytes** (6 mons) |
| `wSerialEnemyDataBlock` | Expanded for link features | In Union with wild data |
| `wLinkMenuSelectionSendBuffer` | Reduced from 3→1 byte | **-2 bytes** |
| `wSerialSyncAndExchangeNybbleReceiveData` | Added | **+1 byte** |
| `wHallOfFame` | `HOF_TEAM` → `HOF_TEAM + 1` | **+1 byte** (terminator) |
| `wLinkTimeoutFrames` | Added (dw) | **+2 bytes** |

### ⚠️ "Unused" WRAM Bytes — **Already Occupied**
The comment in pret wiki *"unused WRAM bytes might already be occupied by your fork's custom features"* **applies here**. The 49 bytes "free" reported by the linker are **not contiguous** — they're scattered alignment padding. **Do not assume you can safely add 49 bytes anywhere.**

**Safe approach for new WRAM variables:**
1. Add to an existing `UNION` in `ram/wram.asm` (overlays unused space)
2. Or append to `wMainDataEnd` / `wBoxDataEnd` before Stack (check alignment)
3. **Never** assume gaps between sections are usable

---

## HRAM (High RAM) Layout

> **Total: 127 bytes used / 0 bytes free** (HRAM: $FF80–$FFFE = 127 bytes)

### Section Map (from `ram/hram.asm`)

HRAM is **100% utilized** via heavy `UNION` overlapping. Key unions:

| Union | Purpose | Size |
|-------|---------|------|
| Base tile/warp/ROM bank | Map loading, tileset switching | 1 byte |
| Text ID / Party mon index | Menu/text system | 1 byte |
| Item price / Slide params | Mart, sprite sliding | 3 bytes |
| NPC pathfinding | `hFindPath*` variables | 8 bytes |
| Math (mul/div/experience) | Battle, exp gain, money | 10 bytes |
| NPC movement v2 | Relative position, flags | 8 bytes |
| Money / Coins | BCD currency | 3+2 bytes |
| BCD division | Shop, stats | 6 bytes |
| Serial link | Cable club, trade | 4 bytes |
| LCD registers (SCX/SCY/WY) | V-blank shadow | 3 bytes |
| Joypad state | Input handling | 7 bytes |
| ROM bank tracking | Bankswitch shadow | 2 bytes |
| Auto BG transfer | V-blank BG DMA | 4 bytes |
| V-blank copy params | Tilemap DMA | 10 bytes |
| Redraw row/column | Scrolling | 3 bytes |
| RNG state | XORSHIFT (shinpokered) | 2 bytes |
| Battle turn / UI flags | `hWhoseTurn`, `hUILayoutFlags` | 2 bytes |

### ⚠️ HRAM is FULL
**No free bytes.** To add new HRAM variables:
- Must **share a UNION** with existing vars that have non-overlapping lifetimes
- Audit `ram/hram.asm` for unions where your variable's lifetime doesn't conflict
- Example: `hBaseTileID` / `hWarpDestinationMap` / `hROMBankTemp` share 1 byte because they're never live simultaneously

---

## SRAM (Save RAM) Layout

> **Total: 24,927 bytes used / 7,841 bytes free** (4 banks × 8 KB = 32 KB)

| Bank | Content | Size |
|------|---------|------|
| SRAM 0 | Sprite Buffers | ~6 KB |
| SRAM 1 | **Save Data** (main save file) | ~5 KB |
| SRAM 2 | Saved Boxes 1 (boxes 1–7) | ~6.7 KB |
| SRAM 3 | Saved Boxes 2 (boxes 8–14) | ~6.7 KB |

### Save File Structure (SRAM 1)
| Offset | Data | Size |
|--------|------|------|
| $A000 | Player info (name, ID, money, coins, badges) | ~300 |
| $A12C | Party Pokémon | 372 |
| $A29E | Main game state (map, position, flags, items, PC) | ~1.7 KB |
| $A800 | Pokédex owned/seen flags (190 bits each) | 48 |
| $A830 | Box Pokémon (14 boxes × 20 mons) | ~4.7 KB |

### Adding Save Data
- **7.8 KB free** across SRAM banks
- New persistent data → add to SRAM 1 save structure (before boxes) or new SRAM bank
- Remember: SRAM banks must be unlocked via `MBC3`/`MBC5` register writes

---

## Sprite/Pics Bank Usage

### Pokémon Sprite Layout (from `gfx/pics.asm`)
Each Pokémon gets a `SECTION "Name Sprites", ROMX` with **6 variants**:
```
Front (normal)      → gfx/pokemon/front/name.2bpp
Front (Crystal)     → gfx/pokemon/front_gsc/name.2bpp
Front (Green)       → gfx/pokemon/front_rg/name.2bpp
Back  (normal)      → gfx/pokemon/back/nameb.2bpp
Back  (Crystal)     → gfx/pokemon/back_gsc/nameb.2bpp
Back  (Green)       → gfx/pokemon/back_rg/nameb.2bpp
```

### Bank Packing (from map file)

| Bank Range | Packing Style | Mons/Bank | Bytes/Mon |
|------------|---------------|-----------|-----------|
| 46–71 ($2E–$47) | Large mons (49 tiles = 7×7) | 4–5 | ~$0D70 (3,440) |
| 73–85 ($49–$55) | Small mons (36 tiles = 6×6) | 7 | ~$0B00–$0B70 (2,816–2,928) |
| 85 ($55) | Starter/early mons (25 tiles = 5×5) | 7 | ~$08F0 (2,288) |

### Current Pokémon Count
| Category | Count |
|----------|-------|
| In `constants/pokemon_constants.asm` | **190** (ends at `$BE` = ODOS_PSYDUCK) |
| In `gfx/pics.asm` | **189** sections (1 missing? — check `NO_MON`) |
| **Max possible (1-byte species)** | **255** |
| **Collision-safe limit** | **199 ($C7)** — see below ⚠️ |
| **Available SAFE slots** | **9** (`$BF`–`$C7` = 191–199) |

### ⚠️ CRITICAL: Trainer/Species ID Collision

**The game uses `OPP_ID_OFFSET = 200 ($C8)` to distinguish wild Pokémon from trainer battles:**

```asm
; engine/battle/core.asm:6735-6737
ld a, [wEnemyMonSpecies2]
sub OPP_ID_OFFSET      ; 200 = $C8
jr c, InitWildBattle   ; if species < 200 → wild Pokémon
; else → TRAINER BATTLE (trainer class = species - 200)
```

| Species Index | Treatment |
|---------------|-----------|
| `$01`–`$C7` (1–199) | **Wild Pokémon** ✅ |
| `$C8`–`$FF` (200–255) | **Trainer Battle** ❌ |

**Trainer opponent IDs** = `OPP_ID_OFFSET + trainer_class` = `$C8`–`$F8` (200–248)
- 49 trainer classes (`NUM_TRAINERS = $30` = 48, plus NOBODY = 0)
- Indices `$C8`–`$F8` reserved for trainers

### Actual Safe Capacity
```
Current:  190 ($BE)
Max safe: 199 ($C7)
Remaining: 9 slots ($BF-$C7 = 191-199)
```

**To add >199 Pokémon, you MUST implement the [trainer/species separation](https://github.com/pret/pokered/wiki/Trainers-are-not-Pokemon)** — replace the `sub OPP_ID_OFFSET` check with an explicit battle-type flag.

---

## Adding New Content

### New Pokémon (Safe Checklist)
1. **Add constant** to `constants/pokemon_constants.asm` (append after `ODOS_PSYDUCK`)
   - ⚠️ **Only 9 safe slots** (`$BF`–`$C7` = 191–199)
   - **Do NOT use `$C8`–`$FF`** — collides with trainer IDs!
2. **Base stats** → `data/pokemon/base_stats.asm`
3. **Evos/Attacks** → `data/pokemon/evos_attacks.asm`
4. **Dex entry** → `data/pokemon/dex_entries.asm`
5. **Dex order** → `data/pokemon/dex_order.asm` (or omit to hide)
6. **Sprites** (6 files) → `gfx/pokemon/front{,_gsc,_rg}/`, `gfx/pokemon/back{,_gsc,_rg}/`
7. **Pics entry** → append to `gfx/pics.asm` (linker handles bank)
8. **Cry** → `data/cries.asm` + `audio/cries/`
9. **Icon** → `gfx/pokemon/menu_icons/`
10. **Palette** → `gfx/pokemon/palettes.asm` (if custom)

### To Exceed 199 Pokémon
**You must implement [trainer/species separation](https://github.com/pret/pokered/wiki/Trainers-are-not-Pokemon):**
1. Add explicit `wBattleType` flag (WILD/TRAINER) in WRAM
2. Replace `sub OPP_ID_OFFSET / jr c, InitWildBattle` with `ld a, [wBattleType] / cp TRAINER_BATTLE`
3. Set flag in all battle entry points (wild grass, fishing, old rod, trainer scripts, etc.)
4. Update link battle, Safari Zone, Battle Tower logic
5. **Breaks save compatibility** — requires migration tool

### New Trainer Class
1. **Add to** `constants/trainer_constants.asm` (auto-assigned `OPP_ID_OFFSET + index`)
2. **Name** → `data/trainers/names.asm`
3. **Pic** → `gfx/trainers/` + entry in `gfx/pics.asm` (Trainer Pics section)
4. **Parties** → `data/trainers/parties.asm`
5. **AI** → `data/trainers/ai_pointers.asm`
6. **Money/Pic ptr** → `data/trainers/pic_pointers_money.asm`

### New Map / Scripts
- Maps → `maps/*.asm` + `constants/map_constants.asm`
- Scripts → `maps/scripts/*.asm`
- Auto-banked by linker (Maps sections in banks 6–24)

---

## Trainer Pokémon Expansion Notes

### The pret Wiki Proposal
> [Trainers are not Pokémon](https://github.com/pret/pokered/wiki/Trainers-are-not-Pokemon)
> - Separate trainer Pokémon data from wild/party Pokémon
- Allows >255 trainer-owned species
- Requires restructuring `wEnemyMon` / `wEnemyParty` storage

### Current pokebaofam State
| Aspect | Status |
|--------|--------|
| Pokémon species limit | **255** (1-byte species in party/box) |
| Trainer class limit | **48** (`NUM_TRAINERS` = $30, offset 200 → max 247) |
| Trainer Pokémon data | Reuses `party_struct` in Union with wild data (`wSerialEnemyDataBlock`) |
| Enemy party in RAM | `wEnemyMons` (6 × `party_struct`) in WRAM |

### Why NOT to Use This Proposal (for now)
1. **Massive rewrite** — touches battle engine, link trade, PC, daycare, Safari, Hall of Fame
2. **Save format breaks** — `wEnemyMons` structure changes size/location
3. **No immediate need** — 65 free species slots, 48 trainer classes
4. **Link compatibility** — other Gen 1 hacks expect standard party_struct

### If You Eventually Need It
- Reserve a new WRAM section (e.g., `SECTION "Trainer Pokemon Data", WRAMX` in bank 1)
- Use `wEnemyMonSpecies2` (already exists at $D03B) as pointer to extended data
- Keep standard `party_struct` for compatibility; extend via pointer

### ⚠️ Will the Wiki Patch Apply Cleanly to pokebaofam?
**Almost certainly NOT.** The pret wiki patch was written for vanilla pokered. Your fork has:

| Your Change | Conflicts With Patch? |
|-------------|----------------------|
| Custom `InitBattleCommon` (engine/battle/core.asm) | **YES** — patch modifies this exact function |
| Modified trainer constants (ODO, WILL, RED, GREEN at $30) | **YES** — patch assumes vanilla trainer count |
| Link battle changes (serial, cable club) | **YES** — patch touches link battle init |
| Safari Zone modifications | **YES** — patch touches Safari battle logic |
| `wEnemyMonSpecies2` used in Union with serial data | **YES** — patch may restructure this area |
| Custom battle engine changes (from yumepokered merges) | **YES** — patch touches battle core |

**To use the patch, you'd need to:**
1. Manually port the logic (not apply the diff)
2. Audit every battle entry point in your codebase
3. Test all battle types: wild, trainer, link, Safari, Battle Tower, Old Rod, etc.
4. Write a save migration tool

**Estimated effort: 2–4 weeks of careful porting + testing.**

---

## Quick Reference: Free Space Summary

| Resource | Used | Free | Can Expand? |
|----------|------|------|-------------|
| **ROMX Banks** | 85 / 255 | 170 | ✅ Auto |
| **ROM0** | 1 / 1 | 0 | ❌ |
| **WRAM0** | 8,143 / 8,192 | 49 (fragmented) | ⚠️ Via UNION only |
| **HRAM** | 127 / 127 | 0 | ⚠️ Via UNION only |
| **SRAM** | 24,927 / 32,768 | 7,841 | ✅ New banks |
| **Species Slots (safe)** | 190 / 199 | **9** | ✅ Append |
| **Species Slots (theoretical)** | 190 / 255 | 65 | ❌ Collides with trainers |
| **Trainer Classes** | 48 / ~48 | ~0 | ⚠️ Reorder |
| **Map Slots** | ~200+ / 255 | ~55 | ✅ Append |

---

## Version History
| Date | Version | Notes |
|------|---------|-------|
| 2026-11-13 | 1.0 | Initial analysis from pokebaofamblue_debug.map |

---

*Keep this document updated when adding major features. Run `make pokebaofamblue_debug.gb` then check `pokebaofamblue_debug.map` for new bank usage.*