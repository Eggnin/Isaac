/* Local J460 decompiler output.
 * VA: 0x0040a5d0
 * Entry: 0040a5d0
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: animation
 * Evidence: Common string-guided animation predicate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=animation; Common string-guided animation
   predicate */

undefined4 __thiscall HELPER_0040a5d0_AnimationPredicateC(int param_1_00,byte *param_1,char param_2)

{
  byte bVar1;
  byte **ppbVar2;
  uint uVar3;
  byte *pbVar4;
  byte **ppbVar5;
  uint uVar6;
  bool bVar7;
  
  uVar6 = 0;
  if (*(uint *)(param_1_00 + 0x78) != 0) {
    ppbVar5 = *(byte ***)(param_1_00 + 0x74);
    do {
      ppbVar2 = ppbVar5;
      pbVar4 = param_1;
      if (&DAT_0000000f < ppbVar5[5]) {
        ppbVar2 = (byte **)*ppbVar5;
      }
      do {
        bVar1 = *(byte *)ppbVar2;
        bVar7 = bVar1 < *pbVar4;
        if (bVar1 != *pbVar4) {
LAB_0040a620:
          uVar3 = -(uint)bVar7 | 1;
          goto LAB_0040a625;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar2 + 1);
        bVar7 = bVar1 < pbVar4[1];
        if (bVar1 != pbVar4[1]) goto LAB_0040a620;
        ppbVar2 = (byte **)((int)ppbVar2 + 2);
        pbVar4 = pbVar4 + 2;
      } while (bVar1 != 0);
      uVar3 = 0;
LAB_0040a625:
      if (uVar3 == 0) {
        ppbVar5 = *(byte ***)(param_1_00 + 0x74) + uVar6 * 0x4f;
        if (param_2 != '\0') {
          FUN_00408830(ppbVar5);
          return 1;
        }
        FUN_00408970(ppbVar5);
        return 1;
      }
      uVar6 = uVar6 + 1;
      ppbVar5 = ppbVar5 + 0x4f;
    } while (uVar6 < *(uint *)(param_1_00 + 0x78));
  }
  FUN_00a112c0(1,"[warn] no animation named %s\n",param_1);
  return 0;
}

