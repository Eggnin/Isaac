/* Local J460 decompiler output.
 * VA: 0x004173e0
 * Entry: 004173e0
 * Dispatcher: 0x006c2990
 * Types: 1,1000
 * Identities: 1.*,1000.*
 * Evidence: Creep slippery status
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1,1000; identities=1.*,1000.*; Creep slippery status */

void __thiscall HELPER_Entity_AddFlags(int param_1_00,uint param_1,uint param_2)

{
  *(uint *)(param_1_00 + 0x168) = *(uint *)(param_1_00 + 0x168) | param_1;
  *(uint *)(param_1_00 + 0x16c) = *(uint *)(param_1_00 + 0x16c) | param_2;
  return;
}

