/* Local J460 decompiler output.
 * VA: 0x007c3320
 * Entry: 007c3320
 * Dispatcher: 0x006c2990
 * Types: 1
 * Identities: 1.*
 * Evidence: Smoke player zero-damage branch immunity
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1; identities=1.*; Smoke player zero-damage branch
   immunity */

undefined __fastcall HELPER_PlayerZeroDamageImmunity(int param_1)

{
  char cVar1;
  
  cVar1 = HELPER_Player_HasCollectible(0x252,0);
  if (cVar1 == '\0') {
    cVar1 = HELPER_Player_HasCollectible(0x8c,0);
    if ((cVar1 == '\0') &&
       (((*(char *)(param_1 + 0x202c) != '\0' || (*(char *)(param_1 + 0x20a9) != '\0')) ||
        (*(int *)(param_1 + 0x17ec) < 3)))) {
      return 0;
    }
  }
  return 1;
}

