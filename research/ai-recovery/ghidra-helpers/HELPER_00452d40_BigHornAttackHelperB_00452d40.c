/* Local J460 decompiler output.
 * VA: 0x00452d40
 * Entry: 00452d40
 * Dispatcher: 0x006c2990
 * Types: 411
 * Identities: big_horn.attack_helper
 * Evidence: Called during Big Horn State 13 discharge
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=411; identities=big_horn.attack_helper; Called during
   Big Horn State 13 discharge */

int HELPER_00452d40_BigHornAttackHelperB(void)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  uint *puVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  float fVar9;
  float fVar10;
  char local_28 [4];
  int local_24;
  uint local_1c;
  undefined4 *local_18;
  int local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af245d;
  local_10 = ExceptionList;
  uVar2 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  iVar7 = 0;
  AI_0041af60(local_28,4,0xffffffff,0xffffffff,0,0);
  local_8 = 0;
  uVar8 = 0;
  uVar3 = local_1c;
  iVar5 = local_24;
  iVar6 = local_14;
  if (local_1c != 0) {
    do {
      iVar1 = *(int *)(iVar5 + uVar8 * 4);
      fVar9 = *(float *)(iVar1 + 0x33c) / *(float *)(iVar6 + 0x374) -
              *(float *)(iVar6 + 0x33c) / *(float *)(iVar6 + 0x374);
      fVar10 = *(float *)(iVar1 + 0x340) / *(float *)(iVar6 + 0x378) -
               *(float *)(iVar6 + 0x340) / *(float *)(iVar6 + 0x378);
      if ((fVar10 * fVar10 + fVar9 * fVar9 < *(float *)(iVar6 + 0x370) * *(float *)(iVar6 + 0x370))
         && (*(int *)(iVar1 + 0x3fc) == 0)) {
        FUN_006a6940(uVar2);
        if (*(int *)(iVar1 + 0x3bc) != 0) {
          local_18 = (undefined4 *)(iVar1 + 0x3bc);
          FUN_004cf210(&local_18);
        }
        iVar7 = iVar7 + 1;
        *(undefined4 *)(iVar1 + 0x3bc) = 0;
        uVar3 = local_1c;
        iVar5 = local_24;
        iVar6 = local_14;
      }
      uVar8 = uVar8 + 1;
    } while (uVar8 < uVar3);
  }
  if (local_28[0] == '\0') {
    if (DAT_00c7de78 == 0) {
      puVar4 = &DAT_00c7f618;
    }
    else {
      puVar4 = (uint *)(DAT_00c7de78 + 0x30);
    }
    if (local_24 != 0) {
      uVar2 = *(uint *)(local_24 + -4);
      uVar3 = *puVar4;
      *puVar4 = *puVar4 - uVar2;
      puVar4[1] = puVar4[1] - (uint)(uVar3 < uVar2);
      free((uint *)(local_24 + -4));
    }
  }
  ExceptionList = local_10;
  return iVar7;
}

