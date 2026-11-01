/* Local J460 decompiler output.
 * VA: 0x006a9c10
 * Entry: 006a9c10
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.147.*
 * Evidence: Fire jet global clock minus birth
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.147.*; Fire jet global clock
   minus birth */

int __fastcall HELPER_Effect_RealAge(int param_1)

{
  return *(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328);
}

