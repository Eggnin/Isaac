/* Local J460 decompiler output.
 * VA: 0x0040af10
 * Entry: 0040af10
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: SDK signature resolved against original J460
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; SDK signature resolved against
   original J460 */

int __thiscall HELPER_AnimationState_NextEventTrigger(int *param_1_00,byte *param_1)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  byte **ppbVar4;
  uint uVar5;
  byte *pbVar6;
  uint uVar7;
  int iVar8;
  uint uVar9;
  byte **ppbVar10;
  int iVar11;
  int iVar12;
  bool bVar13;
  int local_c;
  
  if (param_1_00[1] == 0) {
    FUN_00a112c0(0x10,"AnimationData is NULL\n");
  }
  uVar9 = 0;
  uVar7 = *(uint *)(*param_1_00 + 0x90);
  if (uVar7 != 0) {
    ppbVar10 = *(byte ***)(*param_1_00 + 0x8c);
    do {
      ppbVar4 = ppbVar10;
      pbVar6 = param_1;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar4 = (byte **)*ppbVar10;
      }
      do {
        bVar1 = *(byte *)ppbVar4;
        bVar13 = bVar1 < *pbVar6;
        if (bVar1 != *pbVar6) {
LAB_0040af74:
          uVar5 = -(uint)bVar13 | 1;
          goto LAB_0040af79;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar4 + 1);
        bVar13 = bVar1 < pbVar6[1];
        if (bVar1 != pbVar6[1]) goto LAB_0040af74;
        ppbVar4 = (byte **)((int)ppbVar4 + 2);
        pbVar6 = pbVar6 + 2;
      } while (bVar1 != 0);
      uVar5 = 0;
LAB_0040af79:
      if (uVar5 == 0) {
        if ((int)uVar9 < 0) {
          return -1;
        }
        iVar12 = -1;
        uVar7 = 0;
        local_c = -1;
        iVar11 = -1;
        iVar2 = param_1_00[1];
        if (*(int *)(iVar2 + 0x2c) != 0) {
          do {
            if (*(uint *)(*(int *)(iVar2 + 0x28) + uVar7 * 8) == uVar9) {
              iVar3 = *(int *)(*(int *)(iVar2 + 0x28) + 4 + uVar7 * 8);
              iVar8 = iVar3 - (int)(float)param_1_00[4];
              iVar12 = local_c;
              if ((0 < iVar8) && ((iVar11 < 0 || (iVar8 < iVar11)))) {
                iVar11 = iVar8;
                iVar12 = iVar3;
                local_c = iVar3;
              }
            }
            uVar7 = uVar7 + 1;
          } while (uVar7 < *(uint *)(iVar2 + 0x2c));
        }
        return iVar12;
      }
      uVar9 = uVar9 + 1;
      ppbVar10 = ppbVar10 + 6;
    } while (uVar9 < uVar7);
  }
  return -1;
}

