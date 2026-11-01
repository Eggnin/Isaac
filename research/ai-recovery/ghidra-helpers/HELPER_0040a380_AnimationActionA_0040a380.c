/* Local J460 decompiler output.
 * VA: 0x0040a380
 * Entry: 0040a380
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: animation
 * Evidence: Common string-guided animation action
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=animation; Common string-guided animation
   action */

void __thiscall HELPER_0040a380_AnimationActionA(int param_1_00,byte *param_1,char param_2)

{
  byte bVar1;
  byte **ppbVar2;
  char cVar3;
  byte **ppbVar4;
  uint uVar5;
  byte *pbVar6;
  bool bVar7;
  
  if ((param_2 == '\0') && (ppbVar2 = *(byte ***)(param_1_00 + 0x34), ppbVar2 != (byte **)0x0)) {
    ppbVar4 = ppbVar2;
    pbVar6 = param_1;
    if (&DAT_0000000f < ppbVar2[5]) {
      ppbVar4 = (byte **)*ppbVar2;
    }
    do {
      bVar1 = *(byte *)ppbVar4;
      bVar7 = bVar1 < *pbVar6;
      if (bVar1 != *pbVar6) {
LAB_0040a3c1:
        uVar5 = -(uint)bVar7 | 1;
        goto LAB_0040a3c6;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar4 + 1);
      bVar7 = bVar1 < pbVar6[1];
      if (bVar1 != pbVar6[1]) goto LAB_0040a3c1;
      ppbVar4 = (byte **)((int)ppbVar4 + 2);
      pbVar6 = pbVar6 + 2;
    } while (bVar1 != 0);
    uVar5 = 0;
LAB_0040a3c6:
    if (uVar5 == 0) {
      if (*(byte *)(ppbVar2 + 0xd) == 0) {
        return;
      }
      if (*(char *)(param_1_00 + 0x44) != '\0') {
        return;
      }
    }
  }
  cVar3 = HELPER_0040a5d0_AnimationPredicateC(param_1,1);
  if (cVar3 != '\0') {
    FUN_0040a1b0();
    *(undefined *)(param_1_00 + 0x44) = 1;
  }
  return;
}

