# Pokémon Baofam

Pokémon Baofam is a fan-made enhancement project for the original Pokémon Red
and Blue, built on the [pret pokered disassembly](https://github.com/pret/pokered).
It focuses on balance, accessibility, quality-of-life improvements, and new
content while preserving the feel of the original games.

## Features

- All original 151 Pokémon are obtainable through normal gameplay.
- Play as Red or Green, with expanded maps, quests, and postgame content.
- Updated moves, learnsets, trainer teams, encounters, and battle mechanics.
- Quality-of-life features including running shoes, expanded bag space,
  reusable Repels, move reminders, and improved battle information.
- English, French, and Spanish versions.

See [INSTALL.md](INSTALL.md) for build prerequisites and setup instructions.

## Building

Build the standard Red ROM and Blue debug ROM with:

```sh
make -j2 pokebaofamred.gb pokebaofamblue_debug.gb
```

The Makefile also provides targets for the other color and language variants.

## Credits

This project builds on the pret [pokered](https://github.com/pret/pokered)
disassembly and draws on work and ideas from:

- [Shinpokered](https://github.com/jojobear13/shinpokered)
- [PureRGB](https://github.com/Vortyne/pureRGB)
- [Extreme Yellow](https://github.com/RainbowMetalPigeon/ExtremeYellow)
- [Yellow Legacy](https://github.com/cRz-Shadows/Pokemon_Yellow_Legacy)
- [pokered-crysaudio](https://github.com/dannye/pokered-crysaudio)
- [Polished Crystal](https://github.com/Rangi42/polishedcrystal)
- [pokered-fr](https://github.com/einstein95/pokered-fr) and MohnDoe

Additional graphics credits are listed in
[docs/gfx_credits.md](docs/gfx_credits.md).

## Contact

For bugs, suggestions, or contributions, use the
[GitHub issue tracker](https://github.com/spicy-red/pokebaofam/issues).
