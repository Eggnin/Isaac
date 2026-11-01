/* Local J460 decompiler output.
 * VA: 0x006a5f00
 * Entry: 006a5f00
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Bomb vtable collision
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Bomb vtable collision */

undefined4 __thiscall HELPER_Bomb_HandleCollision(int param_1_00,int *param_1,undefined4 param_2)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  float *pfVar5;
  float *pfVar6;
  uint uVar7;
  uint extraout_EDX;
  bool bVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  undefined8 uVar13;
  longlong lVar14;
  float fStack_68;
  uint uStack_64;
  float fStack_60;
  float afStack_5c [2];
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  uint uStack_44;
  uint uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  uint uStack_1c;
  int iStack_18;
  
  iVar2 = FUN_00862250(param_1_00,param_1,param_2);
  if (iVar2 == 1) {
    return 1;
  }
  if (iVar2 == -1) {
    return 0;
  }
  if (*(int *)(param_1_00 + 0x3fc) != 0) {
    return 1;
  }
  iVar2 = param_1[10];
  if ((iVar2 == 2) || (iVar2 == 4)) {
    if (*(float *)(param_1_00 + 0x350) <= DAT_00baad84) {
      return 1;
    }
    if (*(float *)(param_1_00 + 0x41c) <= 0.0 && *(float *)(param_1_00 + 0x41c) != 0.0) {
      return 1;
    }
    uVar13 = FUN_006a2030();
    iVar2 = (int)((ulonglong)uVar13 >> 0x20);
    if ((char)uVar13 != '\0') {
      return 1;
    }
  }
  if ((*(char *)(param_1_00 + 0x448) != '\0') && (iVar2 == 2)) {
    fStack_4c = (float)(param_1[0x10a] & DAT_00c34780);
    fStack_48 = (float)(param_1[0x10b] & DAT_00c34784);
    uStack_44 = param_1[0x10c] & DAT_00c34788;
    uStack_40 = param_1[0x10d] & DAT_00c3478c;
    cVar1 = FUN_004171b0();
    if (cVar1 != '\0') {
      return 1;
    }
  }
  uVar13 = FUN_006a2030();
  uVar7 = (uint)((ulonglong)uVar13 >> 0x20);
  if (((char)uVar13 != '\0') &&
     (*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1_00 + 0x328) < 2)) {
    return 1;
  }
  lVar14 = (ulonglong)uVar7 << 0x20;
  if ((uVar7 == 5) || (uVar7 == 6)) {
    lVar14 = FUN_006a2030();
    iVar2 = (int)((ulonglong)lVar14 >> 0x20);
    if ((char)lVar14 == '\0') {
      return 1;
    }
    if (iVar2 == 5) {
      if (param_1[0xb] != 0x33) {
        return 1;
      }
      if (param_1[0xc] != 1) {
        return 1;
      }
    }
    else {
      if (iVar2 != 6) goto LAB_006a6050;
      if (*(char *)((int)param_1 + 0x173) != '\0') {
        return 1;
      }
    }
LAB_006a6094:
    cVar1 = FUN_00417430(0x20000000,0);
    if (cVar1 != '\0') goto LAB_006a60a6;
  }
  else {
LAB_006a6050:
    iVar2 = (int)((ulonglong)lVar14 >> 0x20);
    if (iVar2 == 0x38a) {
      return 1;
    }
    if (iVar2 == 0x387) {
      bVar8 = param_1[0xb] == 10;
LAB_006a6064:
      if (bVar8) {
        return 1;
      }
      goto LAB_006a6094;
    }
    if (iVar2 == 0x395) {
      bVar8 = *(int *)(param_1_00 + 0x34) == 0x395;
      goto LAB_006a6064;
    }
    if (iVar2 == 0x362) {
      return 1;
    }
    if (((iVar2 != 1) && (iVar2 != 3)) && (iVar2 != 8)) goto LAB_006a6094;
LAB_006a60a6:
    cVar1 = FUN_006a2030();
    if (cVar1 != '\0') {
      return 1;
    }
  }
  if ((param_1[10] == 1) &&
     ((*(int *)(DAT_00c71678 + 0x26614) < 2 || (cVar1 = FUN_006a8fa0(param_1), cVar1 != '\0')))) {
    if ((*(int *)(param_1_00 + 0x3bc) != 0) && (*(int *)(*(int *)(param_1_00 + 0x3bc) + 0x28) == 3))
    {
      return 1;
    }
    if (0 < *(short *)(param_1_00 + 0x430)) {
      *(undefined2 *)(param_1_00 + 0x430) = 4;
      return 1;
    }
    fVar12 = (float)param_1[0xd9] * DAT_00baa280;
    *(float *)(param_1_00 + 0x360) =
         (float)param_1[0xd8] * DAT_00baa280 + *(float *)(param_1_00 + 0x360);
    *(float *)(param_1_00 + 0x364) = fVar12 + *(float *)(param_1_00 + 0x364);
  }
  iVar2 = param_1[10];
  if ((iVar2 == 1) || (bVar8 = true, iVar2 == 9)) {
    bVar8 = false;
  }
  if ((((1 < *(int *)(DAT_00c71678 + 0x26614)) && (iVar2 == 1)) &&
      (cVar1 = FUN_006a8fa0(param_1), cVar1 == '\0')) || (bVar8)) {
    cVar1 = FUN_006a2030();
    if (cVar1 == '\0') {
      fStack_4c = (float)(DAT_00c34b50 & *(uint *)(param_1_00 + 0x438));
      fStack_48 = (float)(DAT_00c34b54 & *(uint *)(param_1_00 + 0x43c));
      uStack_44 = *(uint *)(param_1_00 + 0x440) & DAT_00c34b58;
      uStack_40 = *(uint *)(param_1_00 + 0x444) & DAT_00c34b5c;
      cVar1 = FUN_004171b0();
      if (cVar1 != '\0') goto LAB_006a61dd;
    }
    else {
LAB_006a61dd:
      cVar1 = FUN_00431640(param_1);
      if (cVar1 != '\0') {
        return 1;
      }
      uVar3 = FUN_006b62b0();
      FUN_00431570(uVar3);
    }
    if ((param_1 == *(int **)(param_1_00 + 0x3bc)) && (0 < *(short *)(param_1_00 + 0x432))) {
      *(undefined2 *)(param_1_00 + 0x432) = 4;
      return 1;
    }
    cVar1 = FUN_006a2030();
    if (cVar1 == '\0') {
      cVar1 = HELPER_Entity_DamageFilter(0);
      if (((cVar1 != '\0') || (param_1[10] == 6)) ||
         ((param_1[10] == 4 &&
          ((*(char *)(param_1 + 0x112) == '\0' && (*(char *)(param_1_00 + 0x448) != '\0')))))) {
        fStack_4c = (float)(*(uint *)(param_1_00 + 0x438) & DAT_00c34bc0);
        fStack_48 = (float)(*(uint *)(param_1_00 + 0x43c) & DAT_00c34bc4);
        uStack_44 = *(uint *)(param_1_00 + 0x440) & DAT_00c34bc8;
        uStack_40 = *(uint *)(param_1_00 + 0x444) & DAT_00c34bcc;
        cVar1 = FUN_004171b0();
        if ((cVar1 != '\0') ||
           ((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 8) == 0x10 &&
            (*(int *)(param_1_00 + 0x45c) < 1)))) goto LAB_006a62d2;
      }
    }
    else {
LAB_006a62d2:
      *(undefined4 *)(param_1_00 + 0x410) = 0;
    }
    fStack_4c = (float)(DAT_00c34930 & *(uint *)(param_1_00 + 0x438));
    fStack_48 = (float)(DAT_00c34934 & *(uint *)(param_1_00 + 0x43c));
    uStack_44 = *(uint *)(param_1_00 + 0x440) & DAT_00c34938;
    uStack_40 = *(uint *)(param_1_00 + 0x444) & DAT_00c3493c;
    uVar4 = *(uint *)(param_1_00 + 0x444);
    cVar1 = FUN_004171b0();
    uVar7 = extraout_EDX;
    if (cVar1 != '\0') {
      uVar4 = *(uint *)(param_1_00 + 0x444);
      cVar1 = FUN_006ac530();
      if (cVar1 != '\0') {
        uVar7 = *(uint *)(param_1_00 + 0x440);
        uVar4 = *(uint *)(param_1_00 + 0x444);
        if ((((*(char *)((int)param_1 + 0x173) == '\0') && (param_1[10] != 0x21)) &&
            (param_1[10] != 0x11)) && (*(int *)(param_1_00 + 0x450) == 0)) {
          *(int **)(param_1_00 + 0x450) = param_1;
          FUN_004cdcf0((int **)(param_1_00 + 0x450));
          fVar12 = (float)param_1[0xd0];
          *(float *)(param_1_00 + 0x334) = *(float *)(param_1_00 + 0x33c) - (float)param_1[0xcf];
          *(float *)(param_1_00 + 0x338) = *(float *)(param_1_00 + 0x340) - fVar12;
          uVar7 = *(uint *)(param_1_00 + 0x440);
          uVar4 = *(uint *)(param_1_00 + 0x444);
        }
      }
    }
    fStack_4c = (float)((DAT_00c34930 | DAT_00c34bc0) & *(uint *)(param_1_00 + 0x438));
    fStack_48 = (float)((DAT_00c34934 | DAT_00c34bc4) & *(uint *)(param_1_00 + 0x43c));
    uStack_40 = (DAT_00c3493c | DAT_00c34bcc) & uVar4;
    uStack_44 = (DAT_00c34938 | DAT_00c34bc8) & uVar7;
    cVar1 = FUN_00592230();
    if (((cVar1 != '\0') && (cVar1 = HELPER_Entity_DamageFilter(0), cVar1 != '\0')) &&
       ((*(char *)((int)param_1 + 0x173) == '\0' && (DAT_00ba9fe4 < *(float *)(param_1_00 + 0x388)))
       )) {
      uStack_2c = *(undefined4 *)(param_1_00 + 0x33c);
      uStack_28 = *(undefined4 *)(param_1_00 + 0x340);
      uStack_3c = *(undefined4 *)(param_1_00 + 0x28);
      uStack_38 = *(undefined4 *)(param_1_00 + 0x2c);
      uStack_34 = *(undefined4 *)(param_1_00 + 0x34);
      uStack_30 = *(undefined4 *)(param_1_00 + 0x38);
      uStack_24 = *(undefined4 *)(param_1_00 + 0x360);
      uStack_20 = *(undefined4 *)(param_1_00 + 0x364);
      uStack_64 = (uint)((*(uint *)(param_1_00 + 0x168) & 0x100) != 0);
      if ((*(uint *)(param_1_00 + 0x168) & 0x20000000) == 0) {
        uVar7 = 0;
      }
      else {
        uVar7 = 2;
      }
      if ((*(uint *)(param_1_00 + 0x16c) & 0x400000) == 0) {
        uStack_1c = 0;
      }
      else {
        uStack_1c = 4;
      }
      uStack_1c = uVar7 | uStack_64 | uStack_1c;
      iStack_18 = param_1_00;
      (**(code **)(*param_1 + 0x20))(*(float *)(param_1_00 + 0x388),0,0,&uStack_3c,0x1e);
      if ((float)param_1[0xe0] <= (float)param_1[5]) {
LAB_006a660f:
        cVar1 = FUN_00417430(0x40000000,0);
        if (cVar1 != '\0') {
          return 1;
        }
        fStack_68 = (float)param_1[0xd0] - *(float *)(param_1_00 + 0x340);
        fVar12 = (float)param_1[0xcf] - *(float *)(param_1_00 + 0x33c);
        fStack_60 = fStack_68 * fStack_68 + fVar12 * fVar12;
        fStack_4c = fVar12;
        fStack_48 = fStack_68;
        FUN_00435a50();
        if (fStack_60 < DAT_00baa010) {
          return 1;
        }
        fVar10 = *(float *)(param_1_00 + 0x364) - (float)param_1[0xd9];
        afStack_5c[0] = *(float *)(param_1_00 + 0x360) - (float)param_1[0xd8];
        fVar9 = fVar10 * fVar10 + afStack_5c[0] * afStack_5c[0];
        fStack_54 = afStack_5c[0];
        fStack_50 = fVar10;
        FUN_00435a50();
        if ((((float)param_1[0xdc] + *(float *)(param_1_00 + 0x370)) * DAT_00baa2d0 < fVar9) &&
           (fVar9 = fVar10 * fStack_68 + afStack_5c[0] * fVar12, fVar9 < 0.0)) {
          pfVar5 = (float *)FUN_00a10030(afStack_5c);
          pfVar6 = (float *)FUN_00a10030(&fStack_54);
          fVar9 = pfVar5[1] * pfVar6[1] + *pfVar5 * *pfVar6;
          fVar10 = fVar9 * fStack_68;
          fVar9 = fVar9 * fVar12;
          fStack_68 = fVar10 + fVar10 + fStack_68;
          fVar12 = fVar12 + fVar9 + fVar9;
          fStack_60 = fStack_68 * fStack_68 + fVar12 * fVar12;
          FUN_00435a50();
          fVar9 = fStack_60;
        }
        FUN_006b2210(param_1);
        fVar10 = fVar9;
        FUN_006b2210(param_1_00);
        fVar9 = fVar9 / (fVar10 + fVar9);
        fVar10 = (float)param_1[0xd9] - *(float *)(param_1_00 + 0x364);
        fVar11 = (float)param_1[0xd8] - *(float *)(param_1_00 + 0x360);
        fVar10 = fVar10 * fVar10 + fVar11 * fVar11;
        FUN_00435a50();
        param_1[0xd8] = (int)((fVar12 / fStack_60) * fVar10 * fVar9 + (float)param_1[0xd8]);
        param_1[0xd9] = (int)((fStack_68 / fStack_60) * fVar10 * fVar9 + (float)param_1[0xd9]);
        return 1;
      }
      fStack_4c = (float)(*(uint *)(param_1_00 + 0x438) & DAT_00c34b50);
      fStack_48 = (float)(*(uint *)(param_1_00 + 0x43c) & DAT_00c34b54);
      uStack_44 = *(uint *)(param_1_00 + 0x440) & DAT_00c34b58;
      uStack_40 = *(uint *)(param_1_00 + 0x444) & DAT_00c34b5c;
      cVar1 = FUN_004171b0();
      if (cVar1 != '\0') goto LAB_006a660f;
      *(undefined4 *)(param_1_00 + 0x388) = 0;
    }
  }
  if ((param_1[10] == 0x194) && (param_1[0xd] == 0x19b)) {
    return 1;
  }
  cVar1 = FUN_00417430(0x20000000,0);
  if (cVar1 != '\0') {
    return 1;
  }
  iVar2 = param_1[10];
  if (iVar2 == 0x123) {
    return 1;
  }
  if ((char)param_2 == '\0') {
LAB_006a6861:
    if (iVar2 == 2) {
      if ((param_1[0xd] != 1) && (*(char *)(param_1_00 + 0x448) != '\0')) {
        return 1;
      }
    }
    else if (iVar2 == 8) {
      return 1;
    }
    if ((char)param_2 == '\0') {
      return 0;
    }
    if (iVar2 != 4) {
      if (iVar2 == 0x3e) {
        return 0;
      }
      goto LAB_006a68a3;
    }
  }
  else {
    if (iVar2 != 4) {
      if (iVar2 == 9) {
        return 1;
      }
      goto LAB_006a6861;
    }
    if (*(char *)(param_1_00 + 0x448) != '\0') {
      return 1;
    }
  }
  cVar1 = FUN_006a2030();
  if (cVar1 != '\0') {
    return 0;
  }
LAB_006a68a3:
  fVar12 = (float)param_1[0xd9] * DAT_00baa198;
  param_1[0xd8] = (int)((float)param_1[0xd8] * DAT_00baa198);
  param_1[0xd9] = (int)fVar12;
  *(float *)(param_1_00 + 0x360) = *(float *)(param_1_00 + 0x360) * DAT_00baa2d0;
  *(float *)(param_1_00 + 0x364) = *(float *)(param_1_00 + 0x364) * DAT_00baa2d0;
  return 0;
}

