/* Local J460 decompiler output.
 * VA: 0x00452eb0
 * Entry: 00452eb0
 * Dispatcher: 0x006c2990
 * Types: 411
 * Identities: big_horn.attack_helper
 * Evidence: Called on Big Horn State 13 Shoot event
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=411; identities=big_horn.attack_helper; Called on Big
   Horn State 13 Shoot event */

void __fastcall HELPER_00452eb0_BigHornAttackHelperC(int param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  uint *puVar4;
  int *piVar5;
  float fVar6;
  undefined4 uVar7;
  float fVar8;
  float fVar9;
  char local_28 [4];
  int local_24;
  uint local_1c;
  int *local_18;
  undefined4 local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af245d;
  local_10 = ExceptionList;
  uVar2 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  AI_0041af60(local_28,4,0xffffffff,0xffffffff,0,0);
  local_8 = 0;
  uVar3 = 0;
  if (local_1c != 0) {
    piVar5 = (int *)(param_1 + 0x3c0);
    fVar9 = *(float *)(param_1 + 0x370) * DAT_00baa2d0;
    do {
      iVar1 = *(int *)(local_24 + uVar3 * 4);
      fVar6 = *(float *)(iVar1 + 0x33c) - (*(float *)(param_1 + 0x33c) + 0.0);
      fVar8 = *(float *)(iVar1 + 0x340) - (*(float *)(param_1 + 0x340) + DAT_00baa8d0);
      if ((((fVar8 * fVar8 + fVar6 * fVar6 < fVar9 * fVar9) && (*(int *)(iVar1 + 0x3fc) == 0)) &&
          (*(float *)(iVar1 + 0x364) <= DAT_00baacf8 && DAT_00baacf8 != *(float *)(iVar1 + 0x364)))
         && (*piVar5 == 0)) {
        *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
        FUN_006a6940(uVar2);
        if (*piVar5 != 0) {
          local_18 = piVar5;
          FUN_004cf210(&local_18);
        }
        *piVar5 = iVar1;
        FUN_004cdcf0(piVar5);
        piVar5 = (int *)(iVar1 + 0x3bc);
        if (*(int *)(iVar1 + 0x3bc) != 0) {
          local_18 = piVar5;
          FUN_004cf210(&local_18);
        }
        *piVar5 = param_1;
        FUN_004cdcf0(piVar5);
        HELPER_0040a380_AnimationActionA("BombDizzy",0);
        local_14 = DAT_00baa3a4;
        uVar7 = DAT_00baa4cc;
        if ((*(int *)(param_1 + 0xc64) == 0x12) ||
           (uVar7 = DAT_00baa280, *(int *)(param_1 + 0xc64) == 0x13)) {
          local_14 = uVar7;
        }
        local_18 = (int *)0x9d;
        FUN_00956780();
        FUN_0092dc30(local_18,0x3f800000,0,0,local_14,0);
        break;
      }
      uVar3 = uVar3 + 1;
    } while (uVar3 < local_1c);
  }
  if (local_28[0] == '\0') {
    if (DAT_00c7de78 == 0) {
      puVar4 = &DAT_00c7f618;
    }
    else {
      puVar4 = (uint *)(DAT_00c7de78 + 0x30);
    }
    if (local_24 != 0) {
      uVar3 = *(uint *)(local_24 + -4);
      uVar2 = *puVar4;
      *puVar4 = *puVar4 - uVar3;
      puVar4[1] = puVar4[1] - (uint)(uVar2 < uVar3);
      free((uint *)(local_24 + -4));
    }
  }
  ExceptionList = local_10;
  return;
}

