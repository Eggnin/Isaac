"""Small, bounded interpreter for the supplied Weapon::GetMaxCharge disassemblies.

It only interprets the provided instruction records and constants. It never
executes native bytes or accesses a process.
"""
from __future__ import annotations

import math
import re
import struct
from typing import Any


_REG32 = {"eax", "ebx", "ecx", "edx", "esi", "edi", "ebp", "esp"}
_XMM = {f"xmm{i}" for i in range(8)}
_BYTE_REGS = {"al": ("eax", 0), "ah": ("eax", 8), "bl": ("ebx", 0), "bh": ("ebx", 8),
              "cl": ("ecx", 0), "ch": ("ecx", 8), "dl": ("edx", 0), "dh": ("edx", 8)}
_MEM = re.compile(r"^(?:(byte|word|dword) ptr )?\[(.+)\]$", re.I)


def _f32(value: float) -> float:
    return struct.unpack("<f", struct.pack("<f", float(value)))[0]


def _imm(text: str) -> int:
    text = text.strip().lower()
    if re.fullmatch(r"-?0x[0-9a-f]+", text):
        return int(text, 16)
    if re.fullmatch(r"-?[0-9]+", text):
        return int(text, 10)
    raise ValueError("not an immediate")


class _Unsupported(Exception):
    pass


class _Interpreter:
    def __init__(self, instructions: list[dict], constants: dict[str, str], weapon_bytes: bytes):
        if len(weapon_bytes) != 0x40 or not instructions or len(instructions) > 256:
            raise _Unsupported
        self.instructions = instructions
        self.address_index: dict[int, int] = {}
        for index, item in enumerate(instructions):
            address = item.get("address")
            if not isinstance(address, int) or address in self.address_index:
                raise _Unsupported
            self.address_index[address] = index
        self.constants: dict[int, bytes] = {}
        for address, value in constants.items():
            try:
                self.constants[int(address, 0)] = bytes.fromhex(value)
            except (TypeError, ValueError):
                raise _Unsupported
        self.weapon = bytes(weapon_bytes)
        self.regs = {reg: 0 for reg in _REG32}
        self.xmm = {reg: 0.0 for reg in _XMM}
        self.stack: dict[int, bytes] = {}
        self.x87: list[float] = []
        self.cf = self.zf = self.pf = False

    @staticmethod
    def _split(operands: str) -> list[str]:
        # Supported instructions use at most two operands and never nest commas.
        if not operands.strip():
            return []
        return [part.strip().lower() for part in operands.split(",")]

    def _memory(self, operand: str) -> tuple[str, int, int]:
        match = _MEM.fullmatch(operand.strip().lower())
        if not match:
            raise _Unsupported
        size_name, expr = match.groups()
        size = {None: 4, "byte": 1, "word": 2, "dword": 4}[size_name.lower() if size_name else None]
        expr = expr.replace(" ", "")
        absolute = re.fullmatch(r"0x[0-9a-f]+", expr)
        if absolute:
            return "constant", int(expr, 16), size
        base_match = re.fullmatch(r"(ecx|ebp)(?:([+-])(0x[0-9a-f]+|[0-9]+))?", expr)
        if not base_match:
            raise _Unsupported
        base, sign, offset_text = base_match.groups()
        offset = int(offset_text, 0) if offset_text else 0
        if sign == "-":
            offset = -offset
        return ("weapon" if base == "ecx" else "stack"), offset, size

    def _read(self, operand: str) -> bytes:
        kind, offset, size = self._memory(operand)
        if kind == "weapon":
            if offset < 0 or offset + size > len(self.weapon):
                raise _Unsupported
            return self.weapon[offset:offset + size]
        if kind == "stack":
            if size != 4 or offset not in self.stack or len(self.stack[offset]) != size:
                raise _Unsupported
            return self.stack[offset]
        data = self.constants.get(offset)
        if data is None or len(data) != size:
            raise _Unsupported
        return data

    def _write(self, operand: str, data: bytes) -> None:
        kind, offset, size = self._memory(operand)
        if len(data) != size:
            raise _Unsupported
        if kind == "stack":
            if size != 4 or offset > 0 or offset < -0x100:
                raise _Unsupported
            self.stack[offset] = bytes(data)
            return
        # GetMaxCharge only writes compiler locals; writing weapon/constants is
        # not part of the supported evaluator contract.
        raise _Unsupported

    def _read_int(self, operand: str) -> int:
        operand = operand.strip().lower()
        if operand in self.regs:
            return self.regs[operand]
        if operand in _BYTE_REGS:
            base, shift = _BYTE_REGS[operand]
            return (self.regs[base] >> shift) & 0xFF
        return int.from_bytes(self._read(operand), "little", signed=False)

    def _write_int(self, operand: str, value: int) -> None:
        operand = operand.strip().lower()
        value &= 0xFFFFFFFF
        if operand in self.regs:
            self.regs[operand] = value
            return
        if operand in _BYTE_REGS:
            base, shift = _BYTE_REGS[operand]
            mask = 0xFF << shift
            self.regs[base] = (self.regs[base] & ~mask) | ((value & 0xFF) << shift)
            return
        _, _, size = self._memory(operand)
        self._write(operand, value.to_bytes(size, "little"))

    def _read_float(self, operand: str) -> float:
        operand = operand.strip().lower()
        if operand in self.xmm:
            return self.xmm[operand]
        return struct.unpack("<f", self._read(operand))[0]

    def _write_float(self, operand: str, value: float) -> None:
        operand = operand.strip().lower()
        rounded = _f32(value)
        if not math.isfinite(rounded):
            raise _Unsupported
        if operand in self.xmm:
            self.xmm[operand] = rounded
        else:
            self._write(operand, struct.pack("<f", rounded))

    def _condition(self, mnemonic: str) -> bool:
        return {
            "je": self.zf, "jne": not self.zf,
            "ja": not self.cf and not self.zf, "jae": not self.cf,
            "jb": self.cf, "jbe": self.cf or self.zf,
        }[mnemonic]

    def _execute(self, mnemonic: str, operands: str) -> int | None:
        args = self._split(operands)
        if mnemonic in {"push", "pop", "nop"}:
            return None
        if mnemonic == "mov" and args in (["ebp", "esp"], ["esp", "ebp"]):
            return None
        if mnemonic == "sub" and len(args) == 2 and args[0] == "esp":
            _imm(args[1])  # Only stack-frame allocation is ignored.
            return None
        if mnemonic == "mov":
            if len(args) != 2:
                raise _Unsupported
            if args[0] in self.regs or args[0] in _BYTE_REGS:
                try:
                    value = self._read_int(args[1])
                except _Unsupported:
                    value = _imm(args[1])
                self._write_int(args[0], value)
            else:
                try:
                    value = self._read_int(args[1])
                    self._write_int(args[0], value)
                except _Unsupported:
                    value = _imm(args[1])
                    self._write_int(args[0], value)
            return None
        if mnemonic in {"movss", "movaps"}:
            if len(args) != 2:
                raise _Unsupported
            if mnemonic == "movaps" and (args[0] not in self.xmm or args[1] not in self.xmm):
                raise _Unsupported
            self._write_float(args[0], self._read_float(args[1]))
            return None
        if mnemonic in {"addss", "mulss", "subss", "maxss"}:
            if len(args) != 2 or args[0] not in self.xmm:
                raise _Unsupported
            left, right = self.xmm[args[0]], self._read_float(args[1])
            if mnemonic == "addss":
                value = left + right
            elif mnemonic == "mulss":
                value = left * right
            elif mnemonic == "subss":
                value = left - right
            else:
                value = right if math.isnan(left) or math.isnan(right) else max(left, right)
            self._write_float(args[0], value)
            return None
        if mnemonic == "test":
            if len(args) != 2:
                raise _Unsupported
            self.zf = (self._read_int(args[0]) & _imm(args[1])) == 0
            self.cf = self.pf = False
            return None
        if mnemonic == "shr":
            if len(args) != 2 or args[0] not in self.regs:
                raise _Unsupported
            count = _imm(args[1]) & 0x1F
            value = self.regs[args[0]]
            self.cf = bool((value >> (count - 1)) & 1) if count else self.cf
            result = value >> count
            self.regs[args[0]] = result & 0xFFFFFFFF
            self.zf = result == 0
            return None
        if mnemonic == "comiss":
            if len(args) != 2:
                raise _Unsupported
            left, right = self._read_float(args[0]), self._read_float(args[1])
            if math.isnan(left) or math.isnan(right):
                self.cf = self.zf = self.pf = True
            else:
                self.cf, self.zf, self.pf = left < right, left == right, False
            return None
        if mnemonic in {"je", "jne", "ja", "jae", "jb", "jbe"}:
            if len(args) != 1:
                raise _Unsupported
            if not self._condition(mnemonic):
                return None
            target = _imm(args[0])
            if target not in self.address_index:
                raise _Unsupported
            return self.address_index[target]
        if mnemonic == "jmp":
            if len(args) != 1:
                raise _Unsupported
            target = _imm(args[0])
            if target not in self.address_index:
                raise _Unsupported
            return self.address_index[target]
        if mnemonic == "fldz":
            if args:
                raise _Unsupported
            self.x87.append(0.0)
            return None
        if mnemonic in {"fld", "fild"}:
            if len(args) != 1:
                raise _Unsupported
            data = self._read(args[0])
            if mnemonic == "fld":
                value = struct.unpack("<f", data)[0]
            else:
                value = int.from_bytes(data, "little", signed=True)
            self.x87.append(float(value))
            return None
        if mnemonic in {"fmul", "fadd", "fsub", "fdiv"}:
            if not self.x87:
                raise _Unsupported
            if len(args) == 1:
                right = self._read_float(args[0])
                operation = mnemonic
            elif len(args) == 2 and args[0] == "st(0)":
                right = self.x87[int(args[1][3:-1])] if args[1].startswith("st(") else self._read_float(args[1])
                operation = mnemonic
            else:
                raise _Unsupported
            left = self.x87[-1]
            if operation == "fmul":
                value = left * right
            elif operation == "fadd":
                value = left + right
            elif operation == "fsub":
                value = left - right
            else:
                if right == 0:
                    raise _Unsupported
                value = left / right
            self.x87[-1] = value
            return None
        if mnemonic == "fstp":
            if len(args) != 1 or not self.x87:
                raise _Unsupported
            self._write(args[0], struct.pack("<f", _f32(self.x87[-1])))
            self.x87.pop()
            return None
        if mnemonic == "ret":
            if not self.x87:
                raise _Unsupported
            result = self.x87[-1]
            if not math.isfinite(result) or result < 0:
                raise _Unsupported
            return -1
        raise _Unsupported

    def evaluate(self) -> float | None:
        ip = 0
        for _ in range(256):
            if not 0 <= ip < len(self.instructions):
                return None
            item = self.instructions[ip]
            mnemonic = str(item.get("mnemonic", "")).strip().lower()
            next_ip = self._execute(mnemonic, str(item.get("operands", "")))
            if next_ip == -1:
                result = self.x87[-1]
                return float(result) if math.isfinite(result) and result >= 0 else None
            ip = next_ip if next_ip is not None else ip + 1
        return None


def evaluate_max_charge(instructions: list[dict], constants: dict[str, str],
                        weapon_bytes: bytes) -> float | None:
    """Interpret one supplied GetMaxCharge body against exactly one 0x40-byte weapon."""
    try:
        return _Interpreter(instructions, constants, weapon_bytes).evaluate()
    except (KeyError, TypeError, ValueError, OverflowError, struct.error, _Unsupported):
        return None
