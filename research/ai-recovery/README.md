# J460 enemy AI recovery

Start with:

- [`AI-RECOVERY-REPORT-20261029.md`](AI-RECOVERY-REPORT-20261029.md)
- [`AI-FUNCTION-CATALOG.md`](AI-FUNCTION-CATALOG.md)

Core artifacts:

- `ghidra-export/`: 239 exact dispatcher call targets, each with Ghidra C and
  address-bearing assembly.
- `ghidra-helpers/`: dispatcher, damage filter, shield absorption, projectile
  creation, boss-event, animation, and five-case helper exports.
- `dispatcher-cases.json`: the corrected 242-case map. It distinguishes 226
  delegate functions, 14 inline dispatcher case bodies, and 2 no-handler cases.
- `case-assemblies/`: one address-bearing assembly file per dispatcher case.
- `ai-semantics-index.json`: full function index with field references, direct
  calls, call-site argument windows, state writes, invincibility writes, and the
  corrected dispatcher role.
- `case-evidence.json`: exact pseudo-C and assembly excerpts for Matriarch,
  Vis Fatty State 16, Ultra Greed, Big Horn State 13, and Delirium.
- `RUNTIME-FIELD-COVERAGE-20261029.md`: runtime external-memory audit. It
  separates recovered fields, Reader implementation, live external validation,
  semantic mapping, and Planner use.
- `RUNTIME-FIELD-COVERAGE-20261029.tsv`: complete field and unclassified-offset
  matrix.
- `RUNTIME-IDENTITY-COVERAGE-20261029.tsv`: one row for every recovered
  Type/Variant/Subtype identity route, plus live variants absent from that
  route table.

Rebuild:

```powershell
python research/ai-recovery/build_seeds.py
powershell -NoProfile -ExecutionPolicy Bypass -File research/ai-recovery/run-ghidra.ps1
python research/ai-recovery/build_dispatcher_cases.py
python research/ai-recovery/build_semantics_index.py
python research/ai-recovery/render_catalog.py
powershell -NoProfile -ExecutionPolicy Bypass -File research/ai-recovery/run-ghidra.ps1 -SeedFile extra-seeds.tsv -OutputName ghidra-helpers
python research/ai-recovery/build_case_evidence.py
python research/ai-recovery/verify_recovery.py
python research/ai-recovery/build_runtime_field_coverage.py
```

The installed local Ghidra release is `11.1.2_PUBLIC`. The project file is in
`ghidra-project/`; generated binary-derived evidence remains local.
