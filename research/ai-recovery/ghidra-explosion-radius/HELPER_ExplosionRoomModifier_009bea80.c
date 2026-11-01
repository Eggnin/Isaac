/* Local J460 decompiler output.
 * VA: 0x009bea80
 * Entry: 009bea80
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Native explosion radius multiplier lookup for id 63
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Native explosion radius multiplier
   lookup for id 63 */

int __thiscall HELPER_ExplosionRoomModifier(int **param_1_00,uint param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  
  if (((*(int *)(DAT_00c7169c + 0x2a414) - *(int *)(DAT_00c7169c + 0x2a410) >> 2 <=
        (int)(param_1 & 0x7fff)) ||
      (iVar5 = *(int *)(*(int *)(DAT_00c7169c + 0x2a410) + (param_1 & 0x7fff) * 4), iVar5 == 0)) ||
     (bVar1 = true, (*(uint *)(iVar5 + 0xb8) & 0x80000000) == 0)) {
    bVar1 = false;
  }
  piVar4 = *param_1_00;
  iVar5 = 0;
  if (piVar4 != param_1_00[1]) {
    do {
      iVar3 = *piVar4;
      if (*(int *)(iVar3 + 0x2c) == 0) {
        iVar2 = HELPER_Player_TrinketMultiplier(param_1);
        iVar5 = iVar5 + iVar2;
        if ((bVar1) && (*(int *)(iVar3 + 0x1e6c) != 0)) {
          iVar3 = HELPER_Player_TrinketMultiplier(param_1);
          iVar5 = iVar5 + iVar3;
        }
      }
      piVar4 = piVar4 + 1;
    } while (piVar4 != param_1_00[1]);
  }
  return iVar5;
}

