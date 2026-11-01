/* Local J460 decompiler output.
 * VA: 0x004172d0
 * Entry: 004172d0
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: STASIS reference accessor
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; STASIS reference accessor */

void __thiscall HELPER_Entity_Velocity(int param_1_00,undefined4 *param_1)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(param_1_00 + 0x364);
  *param_1 = *(undefined4 *)(param_1_00 + 0x360);
  param_1[1] = uVar1;
  return;
}

