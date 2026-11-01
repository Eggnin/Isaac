/* Local J460 decompiler output.
 * VA: 0x004173b0
 * Entry: 004173b0
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.141.*
 * Evidence: Smoke target classification
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.141.*; Smoke target
   classification */

bool __fastcall HELPER_IsPlayer(int param_1)

{
  return *(int *)(param_1 + 0x28) == 1;
}

