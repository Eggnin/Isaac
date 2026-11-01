/* Local J460 decompiler output.
 * VA: 0x006ac760
 * Entry: 006ac760
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: Projectile ChangeTimeout crossing gate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; Projectile ChangeTimeout crossing
   gate */

int __fastcall HELPER_Entity_TimeoutCrossed(int param_1)

{
  char cVar1;
  float in_XMM1_Da;
  float in_XMM2_Da;
  
  if ((*(uint *)(param_1 + 0x168) & 0x4000) == 0) {
    cVar1 = HELPER_Entity_TimeGate();
    if (cVar1 == '\0') {
      return (int)((in_XMM2_Da + *(float *)(param_1 + 0x3a4)) / in_XMM1_Da) -
             (int)((in_XMM2_Da + *(float *)(param_1 + 0x3a0)) / in_XMM1_Da);
    }
  }
  return 0;
}

