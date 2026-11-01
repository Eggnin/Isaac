#!/usr/bin/env python3
"""Prepare read-only runtime inputs from the installed Isaac executable.

The adapter imports the host-side PE/boot helpers from
``research/the-browsing-of-isaac`` but redirects every generated artifact to
``research/runtime-inputs``.  It never writes to the game installation or to
the upstream checkout.

The installed executable is SHA-256 bound.  Its PE entry point is a Steam
``.bind`` wrapper, while the pristine engine entry and CRT startup spine remain
in ``.text``.  The shim/census phase reads only the engine ``.text``; the boot
phase records both entry points and derives the native startup spine from the
local image.
"""

from __future__ import annotations

import argparse
import contextlib
import hashlib
import importlib.util
import json
import re
import sqlite3
import struct
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path
from types import ModuleType
from typing import Any, Iterator


RESEARCH_ROOT = Path(__file__).resolve().parent
DEFAULT_UPSTREAM = RESEARCH_ROOT / "the-browsing-of-isaac"
DEFAULT_OUTPUT = RESEARCH_ROOT / "runtime-inputs"
DEFAULT_EXE = Path(
    r"D:\Steam\steamapps\common\The Binding of Isaac Rebirth\isaac-ng.exe"
)
DEFAULT_PE_INDEX = (
    DEFAULT_UPSTREAM
    / "output"
    / "decomp"
    / "7122ac287799"
    / "index"
    / "pe-index.sqlite"
)

EXPECTED_EXE_SHA256 = (
    "7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F"
)
CANONICAL_UNPACKED_SHA256 = (
    "5129DF723E645DAAEA59514394195F3EA1DCE1671BB0433D724648A845017200"
)
NATIVE_ENTRY_VA = 0x00AEFC46
PE_ENTRY_VA = 0x00CFE310
EXPECTED_IMAGE_BASE = 0x00400000
EXPECTED_IMAGE_SIZE = 0x0092C000
EXPECTED_IMPORT_SYMBOLS = 622
EXPECTED_IAT_SLOTS = 650
EXPECTED_DLLS = 28


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest().upper()


def sha256_file(path: Path) -> str:
    return sha256_bytes(path.read_bytes())


def hex32(value: int) -> str:
    return "0x%08x" % (value & 0xFFFFFFFF)


def write_json(path: Path, value: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, indent=1) + "\n", encoding="utf-8")


def read_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def load_module(name: str, path: Path) -> ModuleType:
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError("cannot load module %s from %s" % (name, path))
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    return module


@contextlib.contextmanager
def patched(target: Any, **values: Any) -> Iterator[None]:
    old = {name: getattr(target, name) for name in values}
    try:
        for name, value in values.items():
            setattr(target, name, value)
        yield
    finally:
        for name, value in old.items():
            setattr(target, name, value)


@dataclass
class Context:
    exe: Path
    output: Path
    upstream: Path
    pe_index: Path
    host_module: ModuleType
    pe: Any
    census_imports: ModuleType
    gen_shims: ModuleType
    boot_tables: ModuleType
    memimage: ModuleType

    @property
    def census_dir(self) -> Path:
        return self.output / "census"

    @property
    def host_dir(self) -> Path:
        return self.output / "host"

    @property
    def generated_dir(self) -> Path:
        return self.output / "generated"


def load_context(args: argparse.Namespace) -> Context:
    exe = args.exe.resolve()
    upstream = args.upstream.resolve()
    output = args.output.resolve()
    pe_index = args.pe_index.resolve()

    if not exe.is_file():
        raise SystemExit("executable not found: %s" % exe)
    actual_sha = sha256_file(exe)
    if actual_sha != EXPECTED_EXE_SHA256:
        raise SystemExit(
            "executable hash mismatch: expected %s, got %s"
            % (EXPECTED_EXE_SHA256, actual_sha)
        )

    host_dir = upstream / "scripts" / "recomp" / "host"
    host_pe_path = host_dir / "pe.py"
    gen_shims_path = host_dir / "gen_shims.py"
    boot_tables_path = host_dir / "boot_tables.py"
    memimage_path = host_dir / "memimage.py"
    census_imports_path = upstream / "scripts" / "recomp" / "census" / "imports.py"
    for required in (
        host_pe_path,
        gen_shims_path,
        boot_tables_path,
        memimage_path,
        census_imports_path,
    ):
        if not required.is_file():
            raise SystemExit("required upstream source not found: %s" % required)

    # The host modules import one another by their local module names.
    sys.path.insert(0, str(host_dir))
    host_module = load_module("isaac_host_pe_adapter", host_pe_path)
    gen_shims = load_module("isaac_gen_shims_adapter", gen_shims_path)
    boot_tables = load_module("isaac_boot_tables_adapter", boot_tables_path)
    memimage = load_module("isaac_memimage_adapter", memimage_path)
    census_imports = load_module(
        "isaac_census_imports_adapter", census_imports_path
    )
    pe = host_module.PE(exe)

    return Context(
        exe=exe,
        output=output,
        upstream=upstream,
        pe_index=pe_index,
        host_module=host_module,
        pe=pe,
        census_imports=census_imports,
        gen_shims=gen_shims,
        boot_tables=boot_tables,
        memimage=memimage,
    )


def prepare_function_bounds(ctx: Context) -> dict[str, Any]:
    """Export the function anchors used by gen_shims from the hash-bound PE index."""
    if not ctx.pe_index.is_file():
        raise SystemExit(
            "PE index not found: %s; pass --pe-index with the index for %s"
            % (ctx.pe_index, EXPECTED_EXE_SHA256)
        )

    uri = "file:%s?mode=ro" % ctx.pe_index.as_posix()
    con = sqlite3.connect(uri, uri=True)
    try:
        meta = dict(con.execute("SELECT key, value FROM meta"))
        indexed_sha = meta.get("sha256", "").upper()
        if indexed_sha != EXPECTED_EXE_SHA256:
            raise SystemExit(
                "PE index hash mismatch: expected %s, got %s"
                % (EXPECTED_EXE_SHA256, indexed_sha or "<missing>")
            )

        rows = list(con.execute("SELECT start, end FROM func ORDER BY start"))
        if not rows:
            raise SystemExit("PE index contains no function rows")
        functions = [
            {"va": hex32(start), "size": int(end) - int(start)}
            for start, end in rows
            if int(end) > int(start)
        ]
    finally:
        con.close()

    result = {
        "schema": "isaac-runtime-function-bounds/1",
        "target": str(ctx.exe),
        "sha256": EXPECTED_EXE_SHA256,
        "source": str(ctx.pe_index),
        "sourceSha256": sha256_file(ctx.pe_index),
        "decodeConfig": meta.get("decode_config"),
        "instructions": int(meta["insn_total"]) if "insn_total" in meta else None,
        "resyncBytes": int(meta["resync_bytes"]) if "resync_bytes" in meta else None,
        "functionCount": len(functions),
        "functions": functions,
    }
    write_json(ctx.census_dir / "functions.json", result)
    return result


def prepare_import_census(ctx: Context) -> dict[str, Any]:
    """Run the upstream import census against the actual executable."""
    ctx.census_dir.mkdir(parents=True, exist_ok=True)
    with patched(
        ctx.census_imports,
        PE=lambda *args, **kwargs: ctx.pe,
        OUT=ctx.census_dir,
    ):
        rc = ctx.census_imports.main()
    if rc not in (None, 0):
        raise SystemExit("upstream import census failed with exit code %s" % rc)

    path = ctx.census_dir / "imports.json"
    result = read_json(path)
    result["sha256"] = EXPECTED_EXE_SHA256
    result["sizeOfImage"] = hex32(ctx.pe.size_of_image)
    result["sectionAlignment"] = hex32(ctx.pe.section_align)
    result["fileAlignment"] = hex32(ctx.pe.file_align)
    result["sections"] = [
        {
            "name": section.name,
            "rva": hex32(section.rva),
            "virtualSize": section.virtual_size,
            "rawSize": section.raw_size,
            "rawOffset": section.raw_offset,
        }
        for section in ctx.pe.sections
    ]
    result["provenance"] = {
        "generator": "research/the-browsing-of-isaac/scripts/recomp/census/imports.py",
        "generatorSha256": sha256_file(
            ctx.upstream / "scripts" / "recomp" / "census" / "imports.py"
        ),
        "sourceExecutable": str(ctx.exe),
        "sourceExecutableSha256": EXPECTED_EXE_SHA256,
        "readOnly": True,
    }
    write_json(path, result)

    symbols = result.get("symbols", [])
    if len(symbols) != EXPECTED_IMPORT_SYMBOLS:
        raise SystemExit("import census is incomplete: %d symbols" % len(symbols))
    if int(result.get("dllCount", -1)) != EXPECTED_DLLS:
        raise SystemExit("unexpected DLL count: %s" % result.get("dllCount"))
    if result.get("delayDllCount") or result.get("ordinalOnlyCount"):
        raise SystemExit(
            "local import surface has delay-load or ordinal imports; "
            "adapter expectations need review"
        )
    return path, result


def prepare_shims(
    ctx: Context, import_result: dict[str, Any]
) -> tuple[Path, dict[str, Any]]:
    """Generate the complete shim metadata and C files into runtime-inputs."""
    ctx.host_dir.mkdir(parents=True, exist_ok=True)
    ctx.generated_dir.mkdir(parents=True, exist_ok=True)

    with patched(
        ctx.gen_shims,
        PE=lambda *args, **kwargs: ctx.pe,
        OUT_DIR=ctx.host_dir,
        CENSUS_DIR=ctx.census_dir,
        GEN_DIR=ctx.generated_dir,
    ):
        rc = ctx.gen_shims.main()
    if rc not in (None, 0):
        raise SystemExit("upstream shim generator failed with exit code %s" % rc)

    path = ctx.host_dir / "shim-table.json"
    result = read_json(path)
    census_symbols = import_result["symbols"]
    rows = result.get("imports", [])
    dynamic_rows = result.get("dynamicImports", [])
    if len(rows) != EXPECTED_IMPORT_SYMBOLS:
        raise SystemExit("shim table is incomplete: %d IAT rows" % len(rows))
    if len({row["cident"] for row in rows + dynamic_rows}) != len(rows) + len(
        dynamic_rows
    ):
        raise SystemExit("shim table contains duplicate C identifiers")

    by_key = {
        (
            hex32(int(row["iatSlotVa"])),
            row["dll"].lower(),
            row["symbol"],
        ): row
        for row in rows
    }
    missing = []
    for symbol in census_symbols:
        key = (symbol["iatVa"].lower(), symbol["dll"].lower(), symbol["symbol"])
        if key not in by_key:
            missing.append({"iatVa": symbol["iatVa"], "dll": symbol["dll"],
                            "symbol": symbol["symbol"]})
    if missing:
        raise SystemExit("shim table misses %d census symbols" % len(missing))

    total_call_sites = sum(int(row["callSites"]) for row in rows)
    if total_call_sites != int(import_result["totalIatCallSites"]):
        raise SystemExit(
            "shim call-site total %d does not match census %d"
            % (total_call_sites, import_result["totalIatCallSites"])
        )

    result["sha256"] = EXPECTED_EXE_SHA256
    result["sizeOfImage"] = hex32(ctx.pe.size_of_image)
    result["censusSha256"] = sha256_file(ctx.census_dir / "imports.json")
    result["provenance"] = {
        "generator": "research/the-browsing-of-isaac/scripts/recomp/host/gen_shims.py",
        "generatorSha256": sha256_file(
            ctx.upstream / "scripts" / "recomp" / "host" / "gen_shims.py"
        ),
        "sourceExecutable": str(ctx.exe),
        "sourceExecutableSha256": EXPECTED_EXE_SHA256,
        "census": str(ctx.census_dir / "imports.json"),
        "readOnlySource": True,
    }
    write_json(path, result)

    generated = {
        "shim_decls.h": ctx.generated_dir / "shim_decls.h",
        "shim_table.c": ctx.generated_dir / "shim_table.c",
        "shim_weak.c": ctx.generated_dir / "shim_weak.c",
    }
    table_text = generated["shim_table.c"].read_text(encoding="utf-8")
    declarations = generated["shim_decls.h"].read_text(encoding="utf-8")
    weak_text = generated["shim_weak.c"].read_text(encoding="utf-8")
    table_rows = len(re.findall(r'^  \{ "', table_text, flags=re.MULTILINE))
    decls = len(re.findall(r"^void imp_.+\(CpuState \*restrict cpu\);$",
                           declarations, flags=re.MULTILINE))
    weak_defs = len(re.findall(r"^__attribute__\(\(weak\)\) void imp_",
                               weak_text, flags=re.MULTILINE))
    expected_emit = len(rows) + len(dynamic_rows)
    if (table_rows, decls, weak_defs) != (expected_emit, expected_emit, expected_emit):
        raise SystemExit(
            "generated shim row mismatch: table=%d decls=%d weak=%d expected=%d"
            % (table_rows, decls, weak_defs, expected_emit)
        )

    readiness = {
        "schema": "isaac-shim-readiness/1",
        "readyToLift": True,
        "sourceExecutableSha256": EXPECTED_EXE_SHA256,
        "importSymbols": len(rows),
        "dynamicRows": len(dynamic_rows),
        "emittedRows": expected_emit,
        "dlls": int(import_result["dllCount"]),
        "iatCallSites": total_call_sites,
        "iatSlotsIncludingTerminators": EXPECTED_IAT_SLOTS,
        "unknownPurgeRows": len(result.get("unknownPurgeStdcall", [])),
        "outputs": {
            "imports": str(ctx.census_dir / "imports.json"),
            "functionBounds": str(ctx.census_dir / "functions.json"),
            "shimTable": str(path),
            "shimDecls": str(generated["shim_decls.h"]),
            "shimTableC": str(generated["shim_table.c"]),
            "shimWeakC": str(generated["shim_weak.c"]),
        },
        "hashes": {
            name: sha256_file(output)
            for name, output in {
                "imports": ctx.census_dir / "imports.json",
                "functionBounds": ctx.census_dir / "functions.json",
                "shimTable": path,
                **generated,
            }.items()
        },
    }
    write_json(ctx.output / "shim-readiness.json", readiness)
    return path, result


def verify_frozen_shims(ctx: Context) -> dict[str, Any]:
    readiness_path = ctx.output / "shim-readiness.json"
    if not readiness_path.is_file():
        raise SystemExit(
            "shim outputs are not initialized; run once with --refresh-shims"
        )
    readiness = read_json(readiness_path)
    if not readiness.get("readyToLift"):
        raise SystemExit("shim readiness marker does not say readyToLift")
    if readiness.get("sourceExecutableSha256") != EXPECTED_EXE_SHA256:
        raise SystemExit("shim readiness belongs to a different executable")

    actual = {
        "imports": sha256_file(ctx.census_dir / "imports.json"),
        "functionBounds": sha256_file(ctx.census_dir / "functions.json"),
        "shimTable": sha256_file(ctx.host_dir / "shim-table.json"),
        "shim_decls.h": sha256_file(ctx.generated_dir / "shim_decls.h"),
        "shim_table.c": sha256_file(ctx.generated_dir / "shim_table.c"),
        "shim_weak.c": sha256_file(ctx.generated_dir / "shim_weak.c"),
    }
    if actual != readiness.get("hashes"):
        raise SystemExit(
            "frozen shim hash mismatch; refusing to mix import metadata: %s"
            % json.dumps(actual, sort_keys=True)
        )
    return {
        "functions": read_json(ctx.census_dir / "functions.json"),
        "imports": read_json(ctx.census_dir / "imports.json"),
        "shims": read_json(ctx.host_dir / "shim-table.json"),
    }


def prepare_shim_phase(ctx: Context, refresh: bool = False) -> dict[str, Any]:
    if not refresh:
        return verify_frozen_shims(ctx)
    functions = prepare_function_bounds(ctx)
    _, imports = prepare_import_census(ctx)
    _, shims = prepare_shims(ctx, imports)
    return {
        "functions": functions,
        "imports": imports,
        "shims": shims,
    }


class EntryView:
    """Delegate a PE object while replacing only its advertised entry point."""

    def __init__(self, pe: Any, entry_va: int):
        self._pe = pe
        self.entry_va = entry_va

    def __getattr__(self, name: str) -> Any:
        return getattr(self._pe, name)


def find_native_startup(
    ctx: Context, functions: dict[str, Any]
) -> tuple[int, dict[str, Any]]:
    """Find the pristine PE/CRT entry inside .text by structure, not address."""
    function_starts = {
        int(row["va"], 16)
        for row in functions["functions"]
        if int(row["size"]) > 0
    }
    candidates = []
    for va in sorted(function_starts):
        if not ctx.pe.is_text_va(va):
            continue
        raw = ctx.pe.read_at_va(va, 10)
        if not raw or len(raw) < 10 or raw[0] != 0xE8 or raw[5] != 0xE9:
            continue
        call_target = (
            va + 5 + struct.unpack_from("<i", raw, 1)[0]
        ) & 0xFFFFFFFF
        jump_target = (
            va + 10 + struct.unpack_from("<i", raw, 6)[0]
        ) & 0xFFFFFFFF
        if not ctx.pe.is_text_va(call_target) or not ctx.pe.is_text_va(jump_target):
            continue

        view = EntryView(ctx.pe, va)
        try:
            startup = ctx.boot_tables.trace_startup(view)
        except (RuntimeError, ValueError, struct.error):
            continue
        tables = startup.get("initTermTables", [])
        if (
            startup.get("scrtCommonMainSehVa") == jump_target
            and startup.get("mainVa") is not None
            and len(tables) == 2
            and all(table["allTargetsInText"] for table in tables)
        ):
            startup["entryVa"] = va
            startup["entryCallTargetVa"] = call_target
            candidates.append(startup)

    if len(candidates) != 1:
        raise SystemExit(
            "native startup scan found %d validated candidates, expected 1"
            % len(candidates)
        )
    startup = candidates[0]
    if startup["entryVa"] != NATIVE_ENTRY_VA:
        raise SystemExit(
            "native startup scan found %s, expected hash-bound entry %s"
            % (hex32(startup["entryVa"]), hex32(NATIVE_ENTRY_VA))
        )
    return startup["entryVa"], {
        "method": (
            "scan function anchors from the hash-bound PE index for the MSVC "
            "[call rel32][jmp rel32] entry spine; validate the jump target's "
            "two _initterm bounds and main call"
        ),
        "functionStartsScanned": len(function_starts),
        "validatedCandidates": len(candidates),
        "entryVa": hex32(startup["entryVa"]),
        "entryCallTargetVa": hex32(startup["entryCallTargetVa"]),
        "scrtCommonMainSehVa": hex32(startup["scrtCommonMainSehVa"]),
        "mainVa": hex32(startup["mainVa"]),
    }


def prepare_boot_tables(
    ctx: Context, functions: dict[str, Any]
) -> tuple[dict[str, Any], dict[str, Any]]:
    """Generate boot tables through the upstream extractor with redirected paths."""
    ctx.host_dir.mkdir(parents=True, exist_ok=True)
    native_entry, selection = find_native_startup(ctx, functions)
    view = EntryView(ctx.pe, native_entry)

    direct_entry_error = None
    try:
        ctx.boot_tables.trace_startup(ctx.pe)
    except (RuntimeError, ValueError, struct.error) as exc:
        direct_entry_error = "%s: %s" % (type(exc).__name__, exc)

    with patched(
        ctx.boot_tables,
        PE=lambda *args, **kwargs: view,
        OUT_DIR=ctx.host_dir,
    ):
        rc = ctx.boot_tables.main()
    if rc not in (None, 0):
        raise SystemExit("upstream boot-table extractor failed with %s" % rc)

    path = ctx.host_dir / "boot-tables.json"
    result = read_json(path)
    entry_section = ctx.pe.section_for_va(ctx.pe.entry_va)
    startup_tables = result["startup"]["initTermTables"]
    if len(startup_tables) != 2:
        raise SystemExit("boot table extraction did not recover two initterm tables")
    if sum(table["nonNull"] for table in startup_tables) != 121:
        raise SystemExit("boot table extraction did not recover 121 initializers")
    if result["tls"].get("callbacks") != [0x00AEFEC1]:
        raise SystemExit("unexpected TLS callback list from local PE")
    if result["iat"]["slotsWalked"] != EXPECTED_IAT_SLOTS:
        raise SystemExit("unexpected IAT slot count from local PE")

    result["sha256"] = EXPECTED_EXE_SHA256
    result["peHeaderEntryVa"] = hex32(ctx.pe.entry_va)
    result["nativeStartupEntryVa"] = hex32(native_entry)
    result["entryWrapper"] = {
        "present": entry_section is not None and entry_section.name == ".bind",
        "section": entry_section.name if entry_section else None,
        "firstBytes": ctx.pe.read_at_va(ctx.pe.entry_va, 16).hex(),
        "directEntryTraceError": direct_entry_error,
    }
    result["nativeStartupSelection"] = selection
    result["sections"] = [
        {
            "name": section.name,
            "rva": hex32(section.rva),
            "virtualSize": section.virtual_size,
            "rawSize": section.raw_size,
            "rawOffset": section.raw_offset,
            "executable": section.is_exec,
        }
        for section in ctx.pe.sections
    ]
    result["provenance"] = {
        "generator": "research/the-browsing-of-isaac/scripts/recomp/host/boot_tables.py",
        "generatorSha256": sha256_file(
            ctx.upstream / "scripts" / "recomp" / "host" / "boot_tables.py"
        ),
        "sourceExecutable": str(ctx.exe),
        "sourceExecutableSha256": EXPECTED_EXE_SHA256,
        "entryOverride": (
            "upstream trace_startup received a read-only EntryView whose "
            "entry_va is the structurally detected pristine engine entry; "
            "no bytes or constants were changed"
        ),
    }
    write_json(path, result)
    return result, selection


def _restore_segments(packed: bytes, image_base: int, size_of_image: int) -> bytes:
    if len(packed) < 16:
        raise ValueError("truncated ISMG header")
    magic, version, count, segment_base = struct.unpack_from("<4sIII", packed)
    if magic != b"ISMG" or version != 1:
        raise ValueError("expected ISMG version 1")
    if segment_base != image_base:
        raise ValueError("ISMG image base differs from PE image base")
    cursor = 16 + count * 8
    restored = bytearray(size_of_image)
    for index in range(count):
        va, size = struct.unpack_from("<II", packed, 16 + index * 8)
        offset = va - image_base
        if offset < 0 or offset + size > size_of_image:
            raise ValueError("ISMG segment %d lies outside image" % index)
        if cursor + size > len(packed):
            raise ValueError("truncated ISMG segment %d payload" % index)
        restored[offset:offset + size] = packed[cursor:cursor + size]
        cursor += size
    if cursor != len(packed):
        raise ValueError("ISMG has bytes beyond declared payload")
    return bytes(restored)


def prepare_memory_image(ctx: Context) -> dict[str, Any]:
    """Generate all upstream image forms and verify their placement."""
    ctx.host_dir.mkdir(parents=True, exist_ok=True)
    with patched(
        ctx.memimage,
        PE=lambda *args, **kwargs: ctx.pe,
        OUT_DIR=ctx.host_dir,
    ):
        rc = ctx.memimage.main()
    if rc not in (None, 0):
        raise SystemExit("upstream memory-image generator failed with %s" % rc)

    meta_path = ctx.host_dir / "memimage.json"
    meta = read_json(meta_path)
    full_image, placed = ctx.memimage.build_image(
        ctx.pe, drop=ctx.memimage.DROP_SECTIONS
    )
    expected = bytes(full_image).rstrip(b"\x00")
    flat = (ctx.host_dir / "isaac.mem").read_bytes()
    packed = (ctx.host_dir / "isaac.segs.bin").read_bytes()
    restored = _restore_segments(
        packed, ctx.pe.image_base, ctx.pe.size_of_image
    )
    failures = []
    if flat != expected:
        failures.append("flat image differs from actual PE loader placement")
    if restored != bytes(full_image):
        failures.append("segmented image does not reconstruct actual PE placement")
    if not any(item["name"] == ".bind" and item["bytes"] for item in placed):
        failures.append("local .bind section was not materialized")
    if any(item["name"] == ".reloc" and not item.get("dropped") for item in placed):
        failures.append(".reloc was not dropped")

    dwasm_check: dict[str, Any]
    if failures:
        dwasm_check = {"ok": False, "skipped": "earlier image checks failed"}
    else:
        js = r"""
const fs = require("fs");
(async () => {
  const [dwasmPath, flatPath, baseText, sizeText] = process.argv.slice(1);
  const bytes = fs.readFileSync(dwasmPath);
  const flat = fs.readFileSync(flatPath);
  const base = Number(baseText);
  const size = Number(sizeText);
  const mod = await WebAssembly.compile(bytes);
  const memory = new WebAssembly.Memory({initial: Math.ceil((base + size) / 65536)});
  await WebAssembly.instantiate(mod, {env: {memory}});
  const got = Buffer.from(memory.buffer, base, size);
  const want = Buffer.alloc(size);
  flat.copy(want);
  if (!got.equals(want)) {
    throw new Error("data-wasm memory differs from flat image");
  }
  console.log(JSON.stringify({ok: true, bytes: got.length}));
})().catch((error) => {
  console.error(error.stack || String(error));
  process.exit(1);
});
"""
        proc = subprocess.run(
            [
                "node",
                "-e",
                js,
                str(ctx.host_dir / "isaac.data.wasm"),
                str(ctx.host_dir / "isaac.mem"),
                str(ctx.pe.image_base),
                str(ctx.pe.size_of_image),
            ],
            capture_output=True,
            text=True,
        )
        if proc.returncode == 0:
            dwasm_check = json.loads(proc.stdout.strip())
            dwasm_check["ok"] = True
        else:
            dwasm_check = {
                "ok": False,
                "error": (proc.stderr or proc.stdout).strip(),
            }
            failures.append("data-wasm placement failed")

    result = {
        "schema": "isaac-memimage-verify/1",
        "sha256": EXPECTED_EXE_SHA256,
        "pass": not failures,
        "failures": failures,
        "imageBase": hex32(ctx.pe.image_base),
        "sizeOfImage": ctx.pe.size_of_image,
        "flatBytes": len(flat),
        "fullMaterializedBytes": len(full_image),
        "trailingZeroBytesTrimmed": len(full_image) - len(flat),
        "segmentCount": meta["segmentCount"],
        "segmentedReconstruction": restored == bytes(full_image),
        "dataWasmPlacement": dwasm_check,
        "bindMaterialized": any(
            item["name"] == ".bind" and item["bytes"] for item in placed
        ),
        "relocDropped": any(
            item["name"] == ".reloc" and item.get("dropped") for item in placed
        ),
        "consumerContract": (
            "place isaac.mem at 0x00400000 in zero-filled linear memory; "
            "isaac.mem is a zero-trimmed prefix of the actual local SizeOfImage"
        ),
    }
    write_json(ctx.host_dir / "memimage-verify.json", result)
    if failures:
        raise SystemExit(
            "memory image verification failed: %s" % "; ".join(failures)
        )

    meta["sha256"] = EXPECTED_EXE_SHA256
    meta["sizeOfImage"] = ctx.pe.size_of_image
    meta["imageSpanVa"] = [
        hex32(ctx.pe.image_base),
        hex32(ctx.pe.image_base + ctx.pe.size_of_image),
    ]
    meta["containsBindSection"] = True
    meta["provenance"] = {
        "generator": "research/the-browsing-of-isaac/scripts/recomp/host/memimage.py",
        "generatorSha256": sha256_file(
            ctx.upstream / "scripts" / "recomp" / "host" / "memimage.py"
        ),
        "sourceExecutable": str(ctx.exe),
        "sourceExecutableSha256": EXPECTED_EXE_SHA256,
        "readOnly": True,
    }
    write_json(meta_path, meta)
    return meta


def parse_header_int(text: str, name: str) -> int | None:
    match = re.search(
        r"^\s*#define\s+%s\s+(0x[0-9a-fA-F]+)u?" % re.escape(name),
        text,
        flags=re.MULTILINE,
    )
    return int(match.group(1), 16) if match else None


def build_compatibility_report(
    ctx: Context,
    imports: dict[str, Any],
    shims: dict[str, Any],
    boot: dict[str, Any],
    startup_selection: dict[str, Any],
    memmeta: dict[str, Any],
) -> dict[str, Any]:
    header_path = ctx.upstream / "scripts" / "recomp" / "host" / "include" / "isaac_host.h"
    header_text = header_path.read_text(encoding="utf-8")
    header_actual = {
        name: parse_header_int(header_text, name)
        for name in (
            "ISAAC_IMAGE_BASE",
            "ISAAC_IMAGE_SIZE",
            "ISAAC_ENTRY_VA",
            "ISAAC_SCRT_MAIN_VA",
            "ISAAC_MAIN_VA",
            "ISAAC_HEAP_VA",
            "ISAAC_HEAP_SIZE",
            "ISAAC_STACK_TOP_VA",
            "ISAAC_STACK_SIZE",
            "ISAAC_SHIM_BASE",
            "ISAAC_GUEST_LIMIT_VA",
            "ISAAC_HOST_BASE_VA",
        )
    }
    header_expected = {
        "ISAAC_IMAGE_BASE": ctx.pe.image_base,
        "ISAAC_IMAGE_SIZE": ctx.pe.size_of_image,
        "ISAAC_ENTRY_VA": ctx.pe.entry_va,
        "ISAAC_SCRT_MAIN_VA": boot["startup"]["scrtCommonMainSehVa"],
        "ISAAC_MAIN_VA": boot["startup"]["mainVa"],
        "ISAAC_HEAP_VA": 0x00E00000,
        "ISAAC_HEAP_SIZE": 0x18000000,
        "ISAAC_STACK_TOP_VA": 0x19FF0000,
        "ISAAC_STACK_SIZE": ctx.pe.stack_reserve,
        "ISAAC_SHIM_BASE": ctx.gen_shims.SHIM_BASE,
        "ISAAC_GUEST_LIMIT_VA": 0x1BF00000,
        "ISAAC_HOST_BASE_VA": 0x1C000000,
    }
    header_mismatches = [
        {
            "name": name,
            "actual": hex32(header_actual[name]) if header_actual[name] is not None else None,
            "expected": hex32(value),
        }
        for name, value in header_expected.items()
        if header_actual[name] != value
    ]

    verifier_path = ctx.upstream / "scripts" / "recomp" / "host" / "verify_memimage.py"
    verifier_expect = {
        "ISAAC_IMAGE_SIZE": 0x008FE000,
        "ISAAC_ENTRY_VA": NATIVE_ENTRY_VA,
    }
    verifier_required = {
        "ISAAC_IMAGE_SIZE": ctx.pe.size_of_image,
        # The verifier checks placement/boot constants.  The actual PE entry is
        # the .bind wrapper; the boot implementation still starts from main.
        "ISAAC_ENTRY_VA": ctx.pe.entry_va,
    }

    syms = imports["symbols"]
    rows = shims["imports"]
    exact_differences = [
        {
            "id": "executable-hash-and-size",
            "upstreamCanonicalSha256": CANONICAL_UNPACKED_SHA256,
            "actualSha256": EXPECTED_EXE_SHA256,
            "canonicalFileBytes": 9176064,
            "actualFileBytes": len(ctx.pe.data),
            "sizeDelta": len(ctx.pe.data) - 9176064,
        },
        {
            "id": "pe-entry-is-steam-bind-wrapper",
            "nativeEngineEntryVa": hex32(NATIVE_ENTRY_VA),
            "actualPeEntryVa": hex32(ctx.pe.entry_va),
            "wrapperSection": boot["entryWrapper"]["section"],
            "directTraceStartupError": boot["entryWrapper"]["directEntryTraceError"],
            "effect": (
                "the PE header entry is wrapper code in .bind; the pristine "
                "engine entry is recovered separately from .text"
            ),
        },
        {
            "id": "image-size-includes-bind",
            "canonicalSizeOfImage": hex32(0x008FE000),
            "actualSizeOfImage": hex32(ctx.pe.size_of_image),
            "bindRva": hex32(ctx.pe.section(".bind").rva),
            "bindVirtualSize": hex32(ctx.pe.section(".bind").virtual_size),
            "bindRawSize": hex32(ctx.pe.section(".bind").raw_size),
            "bindEndVa": hex32(
                ctx.pe.image_base
                + ctx.pe.section(".bind").rva
                + ctx.pe.section(".bind").virtual_span
            ),
            "oldHeapVa": hex32(0x00D00000),
            "effect": (
                "the old 0x00d00000 guest heap overlapped 0x0002c000 bytes of "
                "the actual .bind virtual span"
            ),
        },
        {
            "id": "canonical-body-patches-absent",
            "requiredBuildMode": "--no-lift-patches",
            "upstreamCanonicalInputWasPatched": True,
            "actualInputIsPristine": True,
            "effect": (
                "canonical restoration patches must not replace the pristine "
                "engine bodies in the actual executable"
            ),
        },
        {
            "id": "upstream-verifier-constants",
            "source": str(verifier_path),
            "sourceSha256": sha256_file(verifier_path),
            "currentExpect": {
                key: hex32(value) for key, value in verifier_expect.items()
            },
            "requiredForActualImage": {
                key: hex32(value) for key, value in verifier_required.items()
            },
            "effect": (
                "running the unmodified verifier against the actual local image "
                "will report image-size and entry mismatches"
            ),
        },
    ]

    report = {
        "schema": "isaac-runtime-input-compatibility/1",
        "generatedInputsAreUsable": True,
        "requiresExplicitParentHandling": True,
        "sourceExecutable": {
            "path": str(ctx.exe),
            "sha256": EXPECTED_EXE_SHA256,
            "bytes": len(ctx.pe.data),
            "upstreamCanonicalSha256": CANONICAL_UNPACKED_SHA256,
        },
        "pe": {
            "imageBase": hex32(ctx.pe.image_base),
            "sizeOfImage": hex32(ctx.pe.size_of_image),
            "entryVa": hex32(ctx.pe.entry_va),
            "nativeEngineEntryVa": hex32(NATIVE_ENTRY_VA),
            "sections": [
                {
                    "name": section.name,
                    "rva": hex32(section.rva),
                    "virtualSize": hex32(section.virtual_size),
                    "rawSize": hex32(section.raw_size),
                    "rawOffset": hex32(section.raw_offset),
                }
                for section in ctx.pe.sections
            ],
        },
        "nativeStartup": startup_selection,
        "bootTables": {
            "entryVa": hex32(boot["startup"]["entryVa"]),
            "scrtCommonMainSehVa": hex32(boot["startup"]["scrtCommonMainSehVa"]),
            "mainVa": hex32(boot["startup"]["mainVa"]),
            "initTermTables": [
                {
                    "startVa": hex32(table["startVa"]),
                    "endVa": hex32(table["endVa"]),
                    "nonNull": table["nonNull"],
                    "allTargetsInText": table["allTargetsInText"],
                }
                for table in boot["startup"]["initTermTables"]
            ],
            "tlsCallbacks": [hex32(value) for value in boot["tls"]["callbacks"]],
            "iatSlots": boot["iat"]["slotsWalked"],
            "iatSymbolSlots": boot["iat"]["symbolSlots"],
            "suspectedRelocations": boot["relocations"][
                "suspectHighlowTargetRvas"
            ],
        },
        "imports": {
            "dlls": imports["dllCount"],
            "symbols": len(syms),
            "iatSlotsIncludingTerminators": EXPECTED_IAT_SLOTS,
            "effectiveCallSites": imports["totalIatCallSites"],
            "thunks": imports["totalThunks"],
            "shimRows": len(rows),
            "dynamicRows": len(shims["dynamicImports"]),
            "emittedShimRows": len(rows) + len(shims["dynamicImports"]),
            "unknownPurgeRows": len(shims.get("unknownPurgeStdcall", [])),
        },
        "memoryImage": {
            "minimumWasmMemoryPages": memmeta["minimumWasmMemoryPages"],
            "minimumWasmMemoryBytes": memmeta["minimumWasmMemoryBytes"],
            "flatTrimmedLength": memmeta["flatTrimmedLength"],
            "segmentCount": memmeta["segmentCount"],
            "containsBindSection": True,
            "dropsRelocSection": True,
        },
        "hostHeaderExpectedState": {
            "path": str(header_path),
            "actual": {
                name: hex32(value) if value is not None else None
                for name, value in header_actual.items()
            },
            "expected": {
                name: hex32(value) for name, value in header_expected.items()
            },
            "mismatches": header_mismatches,
            "currentHeaderMatchesExpected": not header_mismatches,
        },
        "upstreamFilesThatNeedVersionSpecificHandling": [
            {
                "path": str(ctx.upstream / "scripts" / "recomp" / "host" / "pe.py"),
                "issue": "default TARGET remains the canonical unpacked executable",
            },
            {
                "path": str(
                    ctx.upstream
                    / "scripts"
                    / "recomp"
                    / "host"
                    / "boot_tables.py"
                ),
                "issue": "trace_startup assumes the PE header entry jumps to __scrt_common_main_seh",
            },
            {
                "path": str(verifier_path),
                "issue": "EXPECT contains canonical SizeOfImage and native entry constants",
            },
            {
                "path": str(
                    ctx.upstream / "scripts" / "recomp" / "lift" / "build_boot.py"
                ),
                "issue": "canonical restoration patches are incompatible with pristine bodies",
            },
        ],
        "exactDifferences": exact_differences,
        "provenance": {
            "adapter": str(Path(__file__).resolve()),
            "adapterSha256": sha256_file(Path(__file__).resolve()),
            "upstreamRoot": str(ctx.upstream),
            "upstreamSources": {
                str(path.relative_to(ctx.upstream)): sha256_file(path)
                for path in (
                    ctx.upstream / "scripts" / "recomp" / "host" / "pe.py",
                    ctx.upstream / "scripts" / "recomp" / "host" / "boot_tables.py",
                    ctx.upstream / "scripts" / "recomp" / "host" / "memimage.py",
                    ctx.upstream / "scripts" / "recomp" / "host" / "gen_shims.py",
                    ctx.upstream / "scripts" / "recomp" / "census" / "imports.py",
                )
            },
        },
    }
    write_json(ctx.output / "compatibility-report.json", report)
    return report


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Generate hash-bound read-only runtime inputs from isaac-ng.exe"
    )
    parser.add_argument("--exe", type=Path, default=DEFAULT_EXE)
    parser.add_argument("--upstream", type=Path, default=DEFAULT_UPSTREAM)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--pe-index", type=Path, default=DEFAULT_PE_INDEX)
    parser.add_argument(
        "--phase",
        choices=("shim", "all"),
        default="all",
        help="shim emits census/shims first; all also emits boot and memory inputs",
    )
    parser.add_argument(
        "--refresh-shims",
        action="store_true",
        help="explicitly regenerate the frozen census/shim set",
    )
    args = parser.parse_args()

    ctx = load_context(args)
    shim_data = prepare_shim_phase(ctx, refresh=args.refresh_shims)
    readiness = read_json(ctx.output / "shim-readiness.json")
    print(
        "shim inputs ready: %d imports, %d dynamic rows, %d call sites"
        % (
            readiness["importSymbols"],
            readiness["dynamicRows"],
            readiness["iatCallSites"],
        )
    )
    print("imports      : %s" % readiness["outputs"]["imports"])
    print("shim table   : %s" % readiness["outputs"]["shimTable"])
    print("generated C  : %s" % ctx.generated_dir)

    if args.phase == "shim":
        return 0

    boot, startup_selection = prepare_boot_tables(
        ctx, shim_data["functions"]
    )
    memmeta = prepare_memory_image(ctx)
    compatibility = build_compatibility_report(
        ctx,
        shim_data["imports"],
        shim_data["shims"],
        boot,
        startup_selection,
        memmeta,
    )

    output_paths = [
        ctx.output / "shim-readiness.json",
        ctx.output / "compatibility-report.json",
        ctx.census_dir / "imports.json",
        ctx.census_dir / "functions.json",
        ctx.host_dir / "shim-table.json",
        ctx.generated_dir / "shim_decls.h",
        ctx.generated_dir / "shim_table.c",
        ctx.generated_dir / "shim_weak.c",
        ctx.host_dir / "boot-tables.json",
        ctx.host_dir / "iat-slots.csv",
        ctx.host_dir / "initializers.csv",
        ctx.host_dir / "memimage.json",
        ctx.host_dir / "memimage-verify.json",
        ctx.host_dir / "isaac.mem",
        ctx.host_dir / "isaac.segs.bin",
        ctx.host_dir / "isaac.data.wasm",
    ]
    output_paths.extend(
        path
        for path in (
            ctx.host_dir / "isaac.mem.br",
            ctx.host_dir / "isaac.segs.bin.br",
            ctx.host_dir / "isaac.data.wasm.br",
        )
        if path.is_file()
    )
    manifest = {
        "schema": "isaac-runtime-input-manifest/1",
        "sourceExecutable": str(ctx.exe),
        "sourceExecutableSha256": EXPECTED_EXE_SHA256,
        "frozenShimInputs": True,
        "readyForParentBuild": True,
        "requiresNoLiftPatches": True,
        "compatibilityReport": {
            "requiresExplicitParentHandling": compatibility[
                "requiresExplicitParentHandling"
            ],
            "hostHeaderMismatches": compatibility["hostHeaderExpectedState"][
                "mismatches"
            ],
        },
        "outputs": {
            str(path.relative_to(ctx.output)): {
                "bytes": path.stat().st_size,
                "sha256": sha256_file(path),
            }
            for path in output_paths
        },
    }
    write_json(ctx.output / "manifest.json", manifest)
    print("boot tables  : %s" % (ctx.host_dir / "boot-tables.json"))
    print("memory image : %s" % (ctx.host_dir / "isaac.mem"))
    print("compatibility: %s" % (ctx.output / "compatibility-report.json"))
    print("manifest     : %s" % (ctx.output / "manifest.json"))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
