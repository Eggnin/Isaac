/* Local J460 decompiler output.
 * VA: 0x00435db0
 * Entry: 00435db0
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: Projectile periodic age gate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; Projectile periodic age gate */

int __fastcall HELPER_Entity_FrameCount(int param_1)

{
  return (int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0);
}

