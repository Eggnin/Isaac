/* Local J460 decompiler output.
 * VA: 0x00417430
 * Entry: 00417430
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.147.*
 * Evidence: FireJet friendly ownership flag
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.147.*; FireJet friendly ownership
   flag */

int __thiscall HELPER_Entity_HasFlag(int param_1_00,uint param_1,uint param_2)

{
  uint3 uVar1;
  
  param_2 = *(uint *)(param_1_00 + 0x16c) & param_2;
  uVar1 = (uint3)(param_2 >> 8);
  if ((param_1 & *(uint *)(param_1_00 + 0x168) | param_2) != 0) {
    return CONCAT31(uVar1,1);
  }
  return (uint)uVar1 << 8;
}

