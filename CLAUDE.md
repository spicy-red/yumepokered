# Build guidance

For routine validation, build `yumepokered.gb` and `yumepokeblue_debug.gb`:

```sh
make -j2 yumepokered.gb yumepokeblue_debug.gb
```

Build other ROM variants only when a change specifically affects them or they
are explicitly requested. Keep the other Makefile targets available.
