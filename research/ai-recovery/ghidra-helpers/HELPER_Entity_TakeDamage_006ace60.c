/* Local J460 decompiler output.
 * VA: 0x006ace60
 * Entry: 006ace60
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: common_damage_path
 * Evidence: Public damage entry
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=common_damage_path; Public damage entry */

undefined4 __thiscall
HELPER_Entity_TakeDamage
          (int *param_1_00,float param_1,uint param_2,uint param_3,int param_4,int param_5)

{
  int **ppiVar1;
  float fVar2;
  char cVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  float *pfVar7;
  int iVar8;
  int iVar9;
  uint uVar10;
  float fVar11;
  undefined4 local_44;
  float afStack_40 [2];
  uint uStack_38;
  uint uStack_34;
  
  if (param_1_00[10] == 1) {
    FUN_00a112c0(0x10,"Entity TakeDamage should not be called for Entity Player!");
  }
  if (((param_2 & 0x2000) == 0) && (cVar3 = FUN_006acd10(param_4), cVar3 != '\0')) {
    return 0;
  }
  if (param_1 <= 0.0) goto LAB_006ad14f;
  cVar3 = HELPER_Entity_DamageFilter(0);
  if (cVar3 == '\0') {
    if (param_1_00[10] != 0x3b6) goto LAB_006ad14f;
LAB_006acf1f:
    if (param_1_00[0xb] == 0) {
      iVar4 = param_1_00[0xef];
      iVar9 = iVar4;
joined_r0x006acf5a:
      if (iVar9 != 0) goto LAB_006acf96;
    }
  }
  else {
    iVar4 = param_1_00[10];
    if (iVar4 == 0x325) goto LAB_006ad14f;
    if (iVar4 == 0x340) {
      if (((param_1_00[0xb] == 1) && (iVar4 = param_1_00[0xf2], iVar4 != 0)) &&
         ((*(int *)(iVar4 + 0x28) == 0x389 &&
          ((param_1_00[0x2d9] == 0x10 || (param_1_00[0x2d9] == 5)))))) goto LAB_006acf96;
    }
    else {
      if (iVar4 == 0x3b6) goto LAB_006acf1f;
      if (((iVar4 == 0x379) && (iVar4 = param_1_00[0xef], iVar4 != 0)) &&
         (*(int *)(iVar4 + 0x28) == 0x399)) {
        if (*(int **)(iVar4 + 0x3c0) != param_1_00) goto LAB_006acf96;
        iVar9 = *(int *)(iVar4 + 0x188);
        goto joined_r0x006acf5a;
      }
    }
  }
  local_44 = (int **)CONCAT31(local_44._1_3_,1);
  if ((param_1_00[0x5a] & 0x20000000U) == 0) {
    local_44 = (int **)((uint)local_44._1_3_ << 8);
  }
  iVar4 = FUN_004e7d10(local_44);
  if (iVar4 == 0) {
LAB_006ad14f:
    if (((param_2 & 2) != 0) && (0.0 < param_1)) {
      if (0 < param_1_00[0x84]) {
        return 0;
      }
      param_1_00[0x84] = 10;
    }
    if ((param_2 & 0x40) != 0) {
      if (0 < param_1_00[0x85]) {
        return 0;
      }
      param_1_00[0x85] = param_5;
    }
    if ((((param_2 & 0x2000) == 0) && (cVar3 = (**(code **)(*param_1_00 + 0x4c))(), cVar3 != '\0'))
       && (1 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2))) {
      iVar4 = 0;
      uVar10 = 0;
      do {
        iVar8 = FUN_00417870(uVar10);
        iVar9 = *(int *)(iVar8 + 0x1e68);
        if ((((iVar9 == 0) || (*(int *)(iVar9 + 0x161c) == -1)) ||
            ((*(int *)(iVar8 + 0x161c) <= *(int *)(iVar9 + 0x161c) || (iVar8 == iVar9)))) &&
           (*(int *)(iVar8 + 0x3bc) == 0)) {
          iVar4 = iVar4 + 1;
        }
        uVar10 = uVar10 + 1;
      } while (uVar10 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8)
                              >> 2));
      if (1 < iVar4) {
        param_1 = param_1 * DAT_00baa3a4;
      }
    }
    if ((param_1_00[0x5b] & 0x400000U) != 0) {
      param_1 = param_1 + param_1;
    }
    if ((0.0 < (float)param_1_00[0xe1]) &&
       (cVar3 = FUN_00864560(param_1_00,param_2,param_3,param_4,param_5), cVar3 != '\0')) {
      FUN_006a8190();
      afStack_40[0] = param_1;
      uStack_34 = param_3;
      uStack_38 = param_2;
      FUN_00499960(param_4);
      FUN_006b7db0(afStack_40);
      param_1_00[6] = param_1_00[6] | param_2;
      param_1_00[7] = param_1_00[7] | param_3;
      param_1_00[5] = (int)(param_1 + (float)param_1_00[5]);
      if (*(int *)(param_4 + 0x24) == 0) {
        iVar4 = 0;
      }
      else {
        iVar4 = FUN_006a9140();
      }
      if ((((1 < *(int *)(DAT_00c71678 + 0x26614)) && (param_1_00[10] == 1)) ||
          (param_1_00[10] - 10U < 0x3de)) && (iVar4 != 0)) {
        FUN_00425ac0(0xf,iVar4);
        iVar9 = FUN_00aefca0();
        *(int *)(iVar4 + 0x16b8) = *(int *)(iVar4 + 0x16b8) + iVar9;
        *(int *)(iVar4 + 0x16bc) = *(int *)(iVar4 + 0x16bc) + iVar9;
      }
      return 1;
    }
    return 0;
  }
LAB_006acf96:
  local_44 = (int **)0x1f5;
  FUN_00956780();
  FUN_0092dc30(local_44,0x3f800000,10,0,0x3f800000,0);
  if ((int *)param_1_00[0xf6] != (int *)0x0) {
    (**(code **)(*(int *)param_1_00[0xf6] + 0x28))();
  }
  uVar5 = FUN_006eef60();
  piVar6 = (int *)HELPER_Entity_CreateDispatcher
                            (1000,0xa0,param_1_00 + 0xcf,&DAT_00c7b640,iVar4,0,uVar5,0);
  if (piVar6[0xef] != 0) {
    local_44 = (int **)(piVar6 + 0xef);
    FUN_004cf210(&local_44);
  }
  piVar6[0xef] = iVar4;
  if (iVar4 != 0) {
    FUN_004cdcf0(piVar6 + 0xef);
  }
  ppiVar1 = (int **)(piVar6 + 0xf1);
  if (piVar6[0xf1] != 0) {
    local_44 = ppiVar1;
    FUN_004cf210(&local_44);
  }
  *ppiVar1 = param_1_00;
  FUN_004cdcf0(ppiVar1);
  piVar6[0x11a] = 0;
  piVar6[0x11b] = -0x3e400000;
  if ((param_1_00[0x1f] != 0) &&
     (pfVar7 = (float *)FUN_0040ace0("OverlayEffect"), pfVar7 != (float *)0x0)) {
    fVar11 = ((pfVar7[1] - DAT_00baa75c) * DAT_00baa2d0) / DAT_00baa324;
    fVar2 = (float)param_1_00[0xd4];
    piVar6[0xd3] = (int)(((*pfVar7 - 0.0) * DAT_00baa2d0) / DAT_00baa324 + (float)param_1_00[0xd3]);
    piVar6[0xd4] = (int)(fVar11 + fVar2);
  }
  (**(code **)(*piVar6 + 0xc))();
  ppiVar1 = (int **)(param_1_00 + 0xf6);
  if ((int *)param_1_00[0xf6] == piVar6) {
    return 0;
  }
  if ((int *)param_1_00[0xf6] != (int *)0x0) {
    local_44 = ppiVar1;
    FUN_004cf210(&local_44);
  }
  *ppiVar1 = piVar6;
  FUN_004cdcf0(ppiVar1);
  return 0;
}

