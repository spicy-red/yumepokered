# Build guidance

For routine validation, build `pokebaofamred.gb` and `pokebaofamblue_debug.gb`:

```sh
make -j2 pokebaofamred.gb pokebaofamblue_debug.gb
```

Build other ROM variants only when a change specifically affects them or they
are explicitly requested. Keep the other Makefile targets available.
