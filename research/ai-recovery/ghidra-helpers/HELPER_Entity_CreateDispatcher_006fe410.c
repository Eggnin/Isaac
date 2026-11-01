/* Local J460 decompiler output.
 * VA: 0x006fe410
 * Entry: 006fe410
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: common_spawn
 * Evidence: Entity create dispatcher
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=common_spawn; Entity create dispatcher */

int * HELPER_Entity_CreateDispatcher
                (uint param_1,undefined4 param_2,int *param_3,int *param_4,int param_5,
                undefined4 param_6,undefined4 param_7,byte param_8)

{
  int **ppiVar1;
  code *pcVar2;
  undefined4 *puVar3;
  longlong lVar4;
  longlong lVar5;
  int *piVar6;
  int *piVar7;
  char cVar8;
  int *piVar9;
  int iVar10;
  undefined4 uVar11;
  int iVar12;
  int *piVar13;
  int **ppiVar14;
  uint uVar15;
  undefined4 extraout_ECX;
  uint uVar16;
  int *unaff_EBX;
  uint uVar17;
  int unaff_EDI;
  bool bVar18;
  float fVar19;
  float fVar20;
  ulonglong uVar21;
  undefined4 uVar22;
  undefined4 uVar23;
  undefined4 uVar24;
  uint uStack_7c;
  undefined4 *puStack_74;
  int iStack_64;
  undefined4 uStack_5c;
  int *piStack_58;
  uint local_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  uint uStack_3c;
  int iStack_38;
  
  iVar12 = param_5;
  piVar7 = param_4;
  piVar6 = param_3;
  local_54 = param_1;
  puStack_74 = &param_7;
  FUN_008646e0(&local_54);
  if (1 < *(int *)(DAT_00c71678 + 0x26614)) {
    FUN_0042b560(&param_1,&param_2,&param_6);
  }
  if (((iVar12 == 0) || ((*(uint *)(iVar12 + 0x168) & 0x20000000) == 0)) || (unaff_EDI != 1000)) {
    uStack_7c = param_2;
  }
  else {
    uStack_7c = param_2;
    switch(param_2) {
    case 0x16:
      uStack_7c = 0x2e;
      break;
    case 0x17:
      uStack_7c = 0x35;
      break;
    case 0x18:
      uStack_7c = 0xcc;
      break;
    case 0x19:
      uStack_7c = 0x2c;
      break;
    case 0x1a:
      uStack_7c = 0x2d;
    }
  }
  uVar11 = uStack_7c;
  piVar9 = (int *)FUN_006f0090(unaff_EDI,param_8 & 1);
  if (piVar9 == (int *)0x0) {
    return (int *)0x0;
  }
  uVar21 = FUN_00a68490();
  iVar12 = param_5;
  uVar16 = (uint)(uVar21 >> 0x20);
  lVar4 = (uVar21 & 0xffffffff) * 0x431bde82;
  piStack_58 = (int *)((ulonglong)lVar4 >> 0x20);
  lVar5 = (ulonglong)uVar16 * 0xd7b634db + ((uVar21 & 0xffffffff) * 0xd7b634db >> 0x20);
  uVar17 = (uint)((ulonglong)lVar5 >> 0x20);
  uVar15 = (int)piStack_58 + (uint)CARRY4((uint)lVar4,(uint)lVar5);
  lVar4 = (ulonglong)uVar16 * 0x431bde82 +
          (ulonglong)CONCAT14(CARRY4(uVar17,uVar15),uVar17 + uVar15);
  local_54 = (uint)((ulonglong)lVar4 >> 0x20);
  puStack_74 = (undefined4 *)((uint)lVar4 >> 0x12 | local_54 * 0x4000);
  local_54 = local_54 >> 0x12;
  if (param_5 == 0) {
    piVar9[0xd] = 0;
    iVar10 = 0;
  }
  else {
    piVar9[0xd] = *(int *)(param_5 + 0x28);
    iVar10 = *(int *)(param_5 + 0x2c);
  }
  piVar13 = piVar9 + 0xf2;
  piVar9[0xe] = iVar10;
  if (*piVar13 != 0) {
    piStack_58 = piVar13;
    FUN_004cf210(&piStack_58);
  }
  *piVar13 = iVar12;
  if (iVar12 != 0) {
    FUN_004cdcf0(piVar13);
  }
  piVar9[0xcf] = *param_3;
  piVar9[0xd0] = param_3[1];
  piVar9[0xd8] = *param_4;
  piVar9[0xd9] = param_4[1];
  (**(code **)(*piVar9 + 4))(unaff_EDI,uStack_7c,param_6,param_7);
  iVar10 = *(int *)(puStack_74[0x60c0] + 0x1214);
  *(int *)(puStack_74[0x60c0] + 0x1214) = iVar10 + 1;
  piVar9[8] = iVar10;
  FUN_00418500(piVar9);
  if ((iVar12 == 0) || (cVar8 = FUN_006b5b90(1), cVar8 == '\0')) goto LAB_006fea8c;
  if ((*(uint *)(iVar12 + 0x16c) & 0x10000000) == 0) {
    cVar8 = FUN_00417430(0x20000000,0);
    if (cVar8 != '\0') {
      uVar24 = 0;
      uVar23 = 0;
      uVar22 = 0xffffffff;
      uVar11 = FUN_00435c70(0xffffffff,0,0);
      FUN_006ad870(uVar11,uVar22,uVar23,uVar24);
    }
  }
  else {
    uVar15 = piVar9[0x5b];
    iVar10 = piVar9[0x5a];
    piVar9[0x5a] = iVar10;
    piVar9[0x5b] = uVar15 | 0x10000000;
    if ((&stack0x00000000 != (undefined *)0x1) && (&stack0x00000000 != (undefined *)0xffffffff)) {
      piVar9[0x5a] = iVar10;
      piVar9[0x5b] = uVar15 | 0x10000020;
    }
    iStack_38 = *(int *)(iVar12 + 0x264);
    if (iStack_38 == 0) {
      uStack_5c = 0;
      piStack_58 = (int *)0x0;
      local_54 = 0;
      uStack_50 = 0;
      uStack_4c = DAT_00c7b640;
      local_48 = DAT_00c7b644;
      uStack_44 = DAT_00c7b640;
      uStack_40 = DAT_00c7b644;
LAB_006fe765:
      uStack_3c = 0;
      if (iStack_38 != 0) goto LAB_006fe771;
      uStack_3c = 0;
LAB_006fe793:
      uStack_7c = 0;
      if (iStack_38 != 0) goto LAB_006fe79f;
LAB_006fe7b8:
      uVar15 = 0;
    }
    else {
      uStack_5c = *(undefined4 *)(iStack_38 + 0x28);
      uStack_4c = *(undefined4 *)(iStack_38 + 0x33c);
      local_48 = *(undefined4 *)(iStack_38 + 0x340);
      piStack_58 = *(int **)(iStack_38 + 0x2c);
      local_54 = *(uint *)(iStack_38 + 0x34);
      uStack_50 = *(undefined4 *)(iStack_38 + 0x38);
      uStack_44 = *(undefined4 *)(iStack_38 + 0x360);
      uStack_40 = *(undefined4 *)(iStack_38 + 0x364);
      if ((*(uint *)(iStack_38 + 0x168) & 0x100) == 0) goto LAB_006fe765;
      uStack_3c = 1;
LAB_006fe771:
      if ((*(uint *)(iStack_38 + 0x168) & 0x20000000) == 0) goto LAB_006fe793;
      uStack_7c = 2;
LAB_006fe79f:
      if ((*(uint *)(iStack_38 + 0x16c) & 0x400000) == 0) goto LAB_006fe7b8;
      uVar15 = 4;
    }
    uStack_3c = uVar15 | uStack_7c | uStack_3c;
    FUN_006ad870(&uStack_5c,0xffffffff,0,0);
    if (&stack0xfffffffe < (undefined *)0x3de) {
      HELPER_Delirium_ApplyFormAndState(uVar11,1);
    }
  }
  iVar12 = __RTDynamicCast(iVar12,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                           &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
  piVar13 = (int *)__RTDynamicCast(piVar9,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                   &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
  if ((iVar12 != 0) && (piVar13 != (int *)0x0)) {
    cVar8 = FUN_00417430(1,0);
    if (cVar8 == '\0') {
      cVar8 = FUN_00417430(0,0x1000000);
      if (cVar8 != '\0') {
        uStack_5c = 0;
        piStack_58 = (int *)0x0;
        local_54 = 0;
        uStack_50 = 0;
        uStack_4c = DAT_00c7b640;
        local_48 = DAT_00c7b644;
        uStack_44 = DAT_00c7b640;
        uStack_40 = DAT_00c7b644;
        uStack_3c = 0;
        iStack_38 = 0;
        FUN_006b78d0(&uStack_5c,0x5a);
      }
      cVar8 = FUN_00417430(0x1000000,0);
      if (cVar8 != '\0') {
        uStack_5c = 0;
        piStack_58 = (int *)0x0;
        local_54 = 0;
        uStack_50 = 0;
        uStack_4c = DAT_00c7b640;
        local_48 = DAT_00c7b644;
        uStack_44 = DAT_00c7b640;
        uStack_40 = DAT_00c7b644;
        uStack_3c = 0;
        iStack_38 = 0;
        FUN_006b5c10(&uStack_5c,0x5a,0,0);
        if (0 < piVar13[0x8f]) {
          piVar13[0x5a] = piVar13[0x5a] | 0x1000000;
          piVar13[0x5b] = piVar13[0x5b];
          piVar13[0xed] = piVar13[0xee];
        }
      }
    }
    fVar20 = *(float *)(iVar12 + 0xf48) * (float)piVar13[0x30e];
    pcVar2 = *(code **)(*piVar13 + 0x4c);
    piVar13[0x30e] = (int)fVar20;
    fVar20 = fVar20 * (float)piVar13[0xed];
    fVar19 = fVar20 * DAT_00c3793c;
    piVar13[0x3a] = (int)(fVar20 * DAT_00c37940);
    piVar13[0x39] = (int)fVar19;
    piVar13[0x3d2] = (int)((float)piVar13[0x3d2] * *(float *)(iVar12 + 0xf48));
    piVar13[0x3d1] = (int)((float)piVar13[0x3d1] * *(float *)(iVar12 + 0xf44));
    piVar13[0xe1] = (int)((float)piVar13[0xe1] * *(float *)(iVar12 + 0xf44));
    piVar13[0xe0] = (int)((float)piVar13[0xe0] * *(float *)(iVar12 + 0xf44));
    cVar8 = (*pcVar2)();
    if (cVar8 != '\0') {
      iVar12 = *(int *)(iVar12 + 0xf54);
      piVar13 = piVar13 + 0x3d5;
      if (*piVar13 != iVar12) {
        if (*piVar13 != 0) {
          FUN_004cf210(&stack0xffffff98);
          unaff_EBX = piVar13;
        }
        *piVar13 = iVar12;
        if (iVar12 != 0) {
          FUN_004cdcf0(piVar13);
        }
      }
    }
  }
LAB_006fea8c:
  cVar8 = FUN_007078f0(piVar9);
  if (cVar8 != '\0') {
    FUN_007079c0(piVar9,extraout_ECX);
  }
  if ((*(char *)((int)piVar9 + 0x172) != '\0') && (puStack_74[0x19dd6] != puStack_74[0x19dd7])) {
    ppiVar1 = (int **)(puStack_74 + 0x19de0);
    puVar3 = (undefined4 *)piVar9[10];
    puStack_74 = puVar3;
    FUN_009e24a0(&stack0xffffff98,&puStack_74);
    if ((unaff_EBX != *ppiVar1) ||
       (puStack_74 = puVar3, ppiVar14 = (int **)FUN_009e24a0(&stack0xffffff98,&puStack_74),
       *ppiVar14 != *ppiVar1)) {
      uVar15 = 0;
      piVar13 = (int *)(DAT_00c71678 + 0x1baa8);
      if (*(int *)(DAT_00c71678 + 0x1baac) - *piVar13 >> 2 != 0) {
        do {
          if (piVar13[1] - *piVar13 >> 2 == 0) {
            FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
          }
          FUN_009e0680(6,piVar9,param_3,param_4);
          uVar15 = uVar15 + 1;
          piVar13 = (int *)(DAT_00c71678 + 0x1baa8);
        } while (uVar15 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *piVar13 >> 2));
      }
    }
  }
  uVar21 = FUN_00a68490();
  uVar16 = (uint)(uVar21 >> 0x20);
  lVar4 = (uVar21 & 0xffffffff) * 0x431bde82;
  lVar5 = (ulonglong)uVar16 * 0xd7b634db + ((uVar21 & 0xffffffff) * 0xd7b634db >> 0x20);
  uVar17 = (uint)((ulonglong)lVar5 >> 0x20);
  uVar15 = (int)((ulonglong)lVar4 >> 0x20) + (uint)CARRY4((uint)lVar4,(uint)lVar5);
  lVar4 = (ulonglong)uVar16 * 0x431bde82 +
          (ulonglong)CONCAT14(CARRY4(uVar17,uVar15),uVar17 + uVar15);
  uVar16 = (uint)((ulonglong)lVar4 >> 0x20);
  piVar9 = (int *)((uint)lVar4 >> 0x12 | uVar16 * 0x4000);
  uVar15 = (int)piVar9 - (int)piVar6;
  bVar18 = CARRY4(DAT_00c7b630,uVar15);
  DAT_00c7b630 = DAT_00c7b630 + uVar15;
  DAT_00c7b634 = DAT_00c7b634 + (((uVar16 >> 0x12) - iStack_64) - (uint)(piVar9 < piVar6)) +
                 (uint)bVar18;
  return piVar7;
}

