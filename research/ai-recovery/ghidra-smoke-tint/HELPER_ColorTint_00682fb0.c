/* Local J460 decompiler output.
 * VA: 0x00682fb0
 * Entry: 00682fb0
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.141.*
 * Evidence: Explosive smoke tint before alpha gate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.141.*; Explosive smoke tint
   before alpha gate */

void __thiscall
HELPER_ColorTint(int param_1_00,undefined4 param_1,undefined4 param_2,undefined4 param_3,
                undefined4 param_4)

{
  *(undefined4 *)(param_1_00 + 0x10) = param_1;
  *(undefined4 *)(param_1_00 + 0x14) = param_2;
  *(undefined4 *)(param_1_00 + 0x18) = param_3;
  *(undefined4 *)(param_1_00 + 0x1c) = param_4;
  return;
}

