/* Local J460 decompiler output.
 * VA: 0x00417290
 * Entry: 00417290
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: Entity parent position accessor
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; Entity parent position accessor */

void __thiscall HELPER_Entity_Position(int param_1_00,undefined4 *param_1)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(param_1_00 + 0x340);
  *param_1 = *(undefined4 *)(param_1_00 + 0x33c);
  param_1[1] = uVar1;
  return;
}

