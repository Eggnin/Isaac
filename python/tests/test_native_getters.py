import json
from pathlib import Path
import struct
import unittest

from native_getters import evaluate_max_charge

DATA = json.loads((Path(__file__).resolve().parents[1]/'src'/'native_getters.json').read_text(encoding="utf-8"))
VTABLES = DATA["vtables"]
CONSTANTS = DATA["constants"]


def function(name_part):
    matches = [entry for entry in VTABLES.values() if name_part in entry["name"]]
    if len(matches) != 1:
        raise AssertionError(f"expected one static getter for {name_part}, got {len(matches)}")
    return matches[0]["max_charge"]


def weapon(charge=10.0, modifiers=0):
    raw = bytearray(0x40)
    struct.pack_into("<f", raw, 0x10, charge)
    struct.pack_into("<I", raw, 0x34, modifiers)
    return bytes(raw)


def expect(test, actual, expected):
    test.assertIsNotNone(actual)
    test.assertAlmostEqual(actual, expected, places=5)


class NativeGetterTests(unittest.TestCase):
    def test_static_zero_charge_getters(self):
        for class_name in ("Weapon_Ludovico", "Weapon@", "Weapon_UmbilicalWhip",
                           "Weapon_Rockets", "Weapon_UrnOfSouls", "Weapon_Bombs"):
            with self.subTest(class_name=class_name):
                expect(self, evaluate_max_charge(function(class_name), CONSTANTS, weapon()), 0.0)

    def test_tears_formula_modifiers_0_1_2_16_256(self):
        code = function("Weapon_Tears")
        for modifiers, expected in ((0, 0.0), (1, 26.5), (2, 21.0), (16, 0.0), (256, 131.0)):
            with self.subTest(modifiers=modifiers):
                expect(self, evaluate_max_charge(code, CONSTANTS, weapon(10, modifiers)), expected)

    def test_brimstone_modifier_and_charge_gates(self):
        code = function("Weapon_Brimstone")
        for modifiers, expected in ((0, 10.0), (1, 25.0), (2, 10.0), (16, 0.0), (256, 10.0)):
            with self.subTest(modifiers=modifiers):
                expect(self, evaluate_max_charge(code, CONSTANTS, weapon(10, modifiers)), expected)
        expect(self, evaluate_max_charge(code, CONSTANTS, weapon(0, 0)), 0.001)

    def test_techx_knife_lung_and_fetus_static_formulas(self):
        expect(self, evaluate_max_charge(function("Weapon_TechX"), CONSTANTS, weapon(10)), 30.0)
        expect(self, evaluate_max_charge(function("Weapon_Knife"), CONSTANTS, weapon(10, 0)), 40.0)
        expect(self, evaluate_max_charge(function("Weapon_Knife"), CONSTANTS, weapon(10, 16)), 0.0)
        expect(self, evaluate_max_charge(function("Weapon_MonstrosLung"), CONSTANTS,
                                         weapon(10, 0)), 10.0)
        expect(self, evaluate_max_charge(function("Weapon_MonstrosLung"), CONSTANTS,
                                         weapon(10, 1)), 25.0)
        expect(self, evaluate_max_charge(function("Weapon_Fetus"), CONSTANTS, weapon(10)), 30.0)
        expect(self, evaluate_max_charge(function("Weapon_SpiritSword"), CONSTANTS, weapon(10)), 40.0)
        expect(self, evaluate_max_charge(function("Weapon_Bone"), CONSTANTS, weapon(10, 0)), 30.0)
        expect(self, evaluate_max_charge(function("Weapon_Bone"), CONSTANTS, weapon(10, 2)), 20.0)

    def test_all_sixteen_real_functions_have_a_decodable_zero_modifier_result(self):
        self.assertEqual(len(VTABLES), 16)
        for vtable in VTABLES.values():
            with self.subTest(name=vtable["name"]):
                result = evaluate_max_charge(vtable["max_charge"], CONSTANTS, weapon(10, 0))
                self.assertIsNotNone(result)
                self.assertGreaterEqual(result, 0.0)

    def test_unknown_instruction_and_out_of_bounds_reference_fail_closed(self):
        code = function("Weapon_TechX")
        unknown = [{"address": 1, "mnemonic": "call", "operands": "0x1234"}, *code]
        self.assertIsNone(evaluate_max_charge(unknown, CONSTANTS, weapon()))
        out_of_bounds = [
            {"address": 1, "mnemonic": "fld", "operands": "dword ptr [ecx + 0x40]"},
            {"address": 2, "mnemonic": "ret", "operands": ""},
        ]
        self.assertIsNone(evaluate_max_charge(out_of_bounds, CONSTANTS, weapon()))

    def test_external_branch_target_and_missing_constant_fail_closed(self):
        branch = [
            {"address": 0x100, "mnemonic": "jmp", "operands": "0x999"},
            {"address": 0x102, "mnemonic": "fldz", "operands": ""},
            {"address": 0x104, "mnemonic": "ret", "operands": ""},
        ]
        self.assertIsNone(evaluate_max_charge(branch, CONSTANTS, weapon()))
        missing = [
            {"address": 0x200, "mnemonic": "fld", "operands": "dword ptr [0x12345678]"},
            {"address": 0x202, "mnemonic": "ret", "operands": ""},
        ]
        self.assertIsNone(evaluate_max_charge(missing, CONSTANTS, weapon()))

    def test_bad_weapon_size_and_invalid_return_fail_closed(self):
        self.assertIsNone(evaluate_max_charge(function("Weapon_TechX"), CONSTANTS, bytes(0x3F)))
        negative = [
            {"address": 0x300, "mnemonic": "fld", "operands": "dword ptr [ecx + 0x10]"},
            {"address": 0x302, "mnemonic": "fsub", "operands": "dword ptr [0xbaa020]"},
            {"address": 0x304, "mnemonic": "ret", "operands": ""},
        ]
        self.assertIsNone(evaluate_max_charge(negative, CONSTANTS, weapon(0)))


if __name__ == "__main__":
    unittest.main()
