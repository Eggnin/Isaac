# Runtime input preparation for the installed Isaac executable

`prepare_runtime_inputs.py` prepares boot, import, shim, and linear-memory
inputs from the installed executable without writing to the game installation
or the upstream checkout. All generated files live under `runtime-inputs/`.

## Source identity

- Executable: `D:\Steam\steamapps\common\The Binding of Isaac Rebirth\isaac-ng.exe`
- SHA-256: `7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F`
- Bytes: `9,362,440`
- PE image base: `0x00400000`
- PE `SizeOfImage`: `0x0092c000`
- PE entry: `0x00cfe310`, in `.bind`
- Pristine engine entry in `.text`: `0x00aefc46`
- PE index: `the-browsing-of-isaac/output/decomp/7122ac287799/index/pe-index.sqlite`

The adapter rejects a different executable or PE index hash. It does not run
the game, modify saves/options/mods/resources, or alter the upstream tree.

## Lift-ready shim set

These files are frozen. A normal adapter run verifies their recorded hashes and
does not rewrite them.

The observed shim-table size change from 509,113 to 509,804 bytes added
top-level provenance only. Import rows, their order, `argBytes`, `isStdcall`,
`shimVa`, `iatSlotVa`, and `cident` stayed unchanged. The hashes below identify
the finalized inputs.

| Output | SHA-256 |
| --- | --- |
| `census/imports.json` | `A5A0D59A544C8123301E665C3655E2C3584204D62DEFCFF4447E318C1B7B0E49` |
| `census/functions.json` | `4015144144D5B80C0494D8412A3EF348DA2BC26338435505F7C4D966BCD187F1` |
| `host/shim-table.json` | `F7F5CF08DD0E8133C07E748F0208443A200DE96DD88BBA0492E9EEF55330ED0D` |
| `generated/shim_decls.h` | `6B320C33CE25E6C4CB0B977CB650D66D9673D06E37AF61591D5E24FDB26AE005` |
| `generated/shim_table.c` | `5B6E0F5BED58ECD9655B8693BBC8AE135915C22E8CD9B2F17C4CD211E0FF076F` |
| `generated/shim_weak.c` | `D5BA2088329400D550940DA731314F32BD12DB4AEED728EDB1226847E6606A49` |

The census has:

| Measure | Value |
| --- | ---: |
| DLLs | 28 |
| IAT symbol imports | 622 |
| IAT slots including terminators | 650 |
| ILT thunks | 133 |
| Effective call sites | 22,513 |
| Shim rows | 622 |
| Dynamic shim rows | 109 |
| Emitted JSON/C rows | 731 |
| Unknown stdcall purges | 0 |

For the parent tree, the corresponding build locations are:

- `output/recomp/host/census/imports.json`
- `output/recomp/host/shim-table.json`
- `scripts/recomp/host/generated/shim_decls.h`
- `scripts/recomp/host/generated/shim_table.c`
- `scripts/recomp/host/generated/shim_weak.c`

`census/functions.json` is the function-anchor input used by
`gen_shims.py`. The lifter should receive the explicit actual paths:

```text
--imports D:\Isaac\research\runtime-inputs\census\imports.json
--shim-table D:\Isaac\research\runtime-inputs\host\shim-table.json
```

The generated shim set was produced with upstream `gen_shims.py`. The local
`.text` produced the same 22,513 effective call sites as the documented
canonical image. The 124 inconsistent push-count diagnostics are retained in
the shim table; cdecl rows use caller cleanup, and stdcall/thiscall rows carry
decorated, curated, or measured purge values. No purge remains unknown.

## Boot and memory inputs

`host/boot-tables.json` records the IAT, TLS record, startup spine, relocation
summary, and section geometry read from the actual executable.

| Item | Value |
| --- | --- |
| Native engine entry | `0x00aefc46` |
| CRT common main | `0x00aefac4` |
| Entry `call` target | `0x00af04c2` |
| `main` | `0x00931050` |
| C initializers | `0x00b18c10..0x00b18c24`, 4 non-null |
| C++ initializers | `0x00b18a2c..0x00b18c04`, 117 non-null |
| TLS callback array | `0x00b18c2c`, callback `0x00aefec1` |
| IAT | `0x00b18000`, 650 slots |
| Relocations | 1,936 blocks, 181,854 entries, 0 suspect HIGHLOW targets |

The adapter locates the native startup spine by scanning hash-bound function
anchors for `[call rel32][jmp rel32]`, then validates the jump target's two
`_initterm` bounds and `main` call. This finds exactly one candidate,
`0x00aefc46`. The PE header entry stays `0x00cfe310`; the adapter does not
execute or emulate `.bind`.

The memory image mirrors the Windows loader's placement for the local PE:

| Section | RVA | Raw bytes | Disposition |
| --- | --- | ---: | --- |
| headers | `0x000000` | 1,024 | copied |
| `.text` | `0x001000` | 7,430,656 | copied |
| `.rdata` | `0x718000` | 915,968 | copied |
| `.data` | `0x7f8000` | 433,664 | copied, 240,804-byte zero tail |
| `.rsrc` | `0x89d000` | 15,360 | copied |
| `.reloc` | `0x8a1000` | 379,392 | dropped because the image is mapped at its preferred base |
| `.bind` | `0x8fe000` | 186,376 | copied as local layout evidence |

The actual image span is `0x00400000..0x00d2c000`. Memory forms:

| Output | Bytes | SHA-256 |
| --- | ---: | --- |
| `host/isaac.mem` | 9,615,368 | `FB955576EE44DAF769D53186B42B569811CA15675D237F95395EFB0113BE7370` |
| `host/isaac.mem.br` | 3,153,990 | `A92CB39DDE30C0D0A6942E71C8CFE09FC44CDB188D886F99B6A91451C27363A2` |
| `host/isaac.segs.bin` | 8,832,889 | `A15C0DEADD692850E9AE39F0B09432682C3478F307BE752570DF7DBC3F813C37` |
| `host/isaac.segs.bin.br` | 3,152,956 | `7AC7800F513F8107C1EF9B7F0B2BAA3066B61EC2FEBAF70FAB503C370B6B60FA` |
| `host/isaac.data.wasm` | 8,832,937 | `994FD956E3649AE342BE65959DAA155FFDA10FF9F80B35A4C0F8AB59B5561094` |
| `host/isaac.data.wasm.br` | 3,152,749 | `482723C5C70B8CE09E947EB83CA3ED582BC09DCB8E49C0FCD8582EF557B5A2A1` |

`isaac.mem` trims 2,040 trailing zero bytes. A consumer places it at
`0x00400000` in zero-filled memory whose size is at least 211 Wasm pages
(`13,828,096` bytes).

## Local incompatibilities

The local PE differs from the canonical unpacked analysis input in four
load-bearing ways:

1. The file SHA-256 is `7122...`, not canonical `5129...`.
2. `SizeOfImage` is `0x0092c000`, not `0x008fe000`.
3. Header entry `0x00cfe310` is a `.bind` wrapper; the pristine engine entry
   remains `0x00aefc46` in `.text`.
4. The extra `.bind` section spans `0x00cfe000..0x00d2b808`. The canonical
   `ISAAC_HEAP_VA=0x00d00000` overlaps it by `0x2c000` bytes.

The parent-applied header state is correct and the adapter currently reads:

| Constant | Required value |
| --- | --- |
| `ISAAC_IMAGE_SIZE` | `0x0092c000` |
| `ISAAC_ENTRY_VA` | `0x00cfe310` |
| `ISAAC_HEAP_VA` | `0x00e00000` |
| `ISAAC_HEAP_SIZE` | unchanged, `0x18000000` |
| `ISAAC_SCRT_MAIN_VA` | unchanged, `0x00aefac4` |
| `ISAAC_MAIN_VA` | unchanged, `0x00931050` |

`ISAAC_ENTRY_VA` is the actual PE-header entry. `host_boot.c` uses it for the
image-membership check; boot execution begins with TLS callbacks,
`_initterm` tables, and `ISAAC_MAIN_VA`.

The installed executable is the pristine body source. Its relocation scan has
zero suspect HIGHLOW targets, while the canonical unpacked file carries three
bad targets caused by earlier body patches. Build it with:

```text
python scripts/recomp/lift/build_boot.py --no-lift-patches
```

The canonical restoration passes must not be applied to this input. The
unmodified upstream `boot_tables.py` cannot start from the `.bind` PE entry,
and `verify_memimage.py` still expects canonical `SizeOfImage` and native-entry
constants. The adapter handles those two cases in `runtime-inputs` without
editing upstream. If the upstream verifier is run manually, its `EXPECT`
constants need the actual image size and `0x00cfe310` entry.

## Reproduction and verification

Generate or verify the complete set:

```powershell
python D:\Isaac\research\prepare_runtime_inputs.py --phase all
```

Regenerate the frozen shim set only after an intentional source change:

```powershell
python D:\Isaac\research\prepare_runtime_inputs.py --phase shim --refresh-shims
```

The default run verifies the frozen shim hashes and exits on any mismatch.
The completed verification pass checked:

- 622 census symbols against 622 shim rows and 731 emitted rows;
- 22,513 census call sites against the generated shim table;
- 121 non-null initializers, all inside `.text`;
- one TLS callback at `0x00aefec1`;
- 650 IAT slots, with all 622 symbol slots still holding import-name RVAs;
- zero unresolved stdcall purges;
- flat image bytes against loader placement from the actual PE;
- segmented reconstruction against the same flat image;
- `isaac.data.wasm` placement in Wasm memory against the flat image;
- `.bind` materialized, `.reloc` dropped, and all three local layout constants loaded.

`host/memimage-verify.json` records `pass: true`. This work does not compile or
run the lifted C/Wasm module; that remains the parent build task.
