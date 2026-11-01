/* Local J460 decompiler output.
 * VA: 0x006a9c10
 * Entry: 006a9c10
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: Projectile timed sawtooth and flag switching gate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; Projectile timed sawtooth and flag
   switching gate */

int __fastcall HELPER_Entity_AgeModulo(int param_1)

{
  return *(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328);
}

