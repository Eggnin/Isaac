/* Local J460 decompiler output.
 * VA: 0x0040ae70
 * Entry: 0040ae70
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: AI Slide and Shoot event history checks
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; AI Slide and Shoot event history
   checks */

uint __thiscall HELPER_AnimationState_WasEventTriggered(int *param_1_00,byte *param_1)

{
  byte bVar1;
  uint in_EAX;
  byte **ppbVar2;
  uint uVar3;
  byte *pbVar4;
  byte **ppbVar5;
  uint uVar6;
  bool bVar7;
  
  if (param_1_00[1] == 0) {
    in_EAX = FUN_00a112c0(0x10,"AnimationData is NULL\n");
  }
  uVar6 = 0;
  uVar3 = *(uint *)(*param_1_00 + 0x90);
  if (uVar3 != 0) {
    ppbVar5 = *(byte ***)(*param_1_00 + 0x8c);
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
LAB_0040aed2:
          in_EAX = -(uint)bVar7 | 1;
          goto LAB_0040aed7;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar2 + 1);
        bVar7 = bVar1 < pbVar4[1];
        if (bVar1 != pbVar4[1]) goto LAB_0040aed2;
        ppbVar2 = (byte **)((int)ppbVar2 + 2);
        pbVar4 = pbVar4 + 2;
      } while (bVar1 != 0);
      in_EAX = 0;
LAB_0040aed7:
      if (in_EAX == 0) {
        if (-1 < (int)uVar6) {
          uVar3 = 1 << ((byte)uVar6 & 0x1f);
          return CONCAT31((int3)(uVar3 >> 8),(param_1_00[7] & uVar3) != 0);
        }
        break;
      }
      uVar6 = uVar6 + 1;
      ppbVar5 = ppbVar5 + 6;
    } while (uVar6 < uVar3);
  }
  return in_EAX & 0xffffff00;
}

