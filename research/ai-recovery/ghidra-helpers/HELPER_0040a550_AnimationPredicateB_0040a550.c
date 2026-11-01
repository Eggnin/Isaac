/* Local J460 decompiler output.
 * VA: 0x0040a550
 * Entry: 0040a550
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: animation
 * Evidence: Common float-guided animation predicate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=animation; Common float-guided animation
   predicate */

undefined4 __thiscall HELPER_0040a550_AnimationPredicateB(int param_1_00,byte *param_1)

{
  byte bVar1;
  byte **ppbVar2;
  uint uVar3;
  bool bVar4;
  
  ppbVar2 = *(byte ***)(param_1_00 + 0x34);
  if (ppbVar2 == (byte **)0x0) {
    bVar4 = *param_1 == 0;
  }
  else {
    if (*(char *)(param_1_00 + 0x44) != '\0') {
      return 0;
    }
    if (*param_1 == 0) {
      return 1;
    }
    if (&DAT_0000000f < ppbVar2[5]) {
      ppbVar2 = (byte **)*ppbVar2;
    }
    do {
      bVar1 = *(byte *)ppbVar2;
      bVar4 = bVar1 < *param_1;
      if (bVar1 != *param_1) {
LAB_0040a598:
        uVar3 = -(uint)bVar4 | 1;
        goto LAB_0040a59d;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar2 + 1);
      bVar4 = bVar1 < param_1[1];
      if (bVar1 != param_1[1]) goto LAB_0040a598;
      ppbVar2 = (byte **)((int)ppbVar2 + 2);
      param_1 = param_1 + 2;
    } while (bVar1 != 0);
    uVar3 = 0;
LAB_0040a59d:
    bVar4 = uVar3 == 0;
  }
  if (!bVar4) {
    return 0;
  }
  return 1;
}

