/* Local J460 decompiler output.
 * VA: 0x00417220
 * Entry: 00417220
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.141.*
 * Evidence: Smoke ignition target identity
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.141.*; Smoke ignition target
   identity */

undefined4 __thiscall HELPER_EntityMatches(int param_1_00,int param_1,int param_2,int param_3)

{
  if (((*(int *)(param_1_00 + 0x28) == param_1) &&
      ((param_2 == -1 || (*(int *)(param_1_00 + 0x2c) == param_2)))) &&
     ((param_3 == -1 || (*(int *)(param_1_00 + 0x30) == param_3)))) {
    return 1;
  }
  return 0;
}

