/* Local J460 decompiler output.
 * VA: 0x004172b0
 * Entry: 004172b0
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: STASIS stored reference accessor
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; STASIS stored reference accessor */

void __thiscall HELPER_Entity_PreviousPosition(int param_1_00,undefined4 *param_1)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(param_1_00 + 0x390);
  *param_1 = *(undefined4 *)(param_1_00 + 0x38c);
  param_1[1] = uVar1;
  return;
}

