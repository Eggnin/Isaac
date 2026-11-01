/* Local J460 decompiler output.
 * VA: 0x0099e360
 * Entry: 0099e360
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Node-to-sample generation
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Node-to-sample generation */

void __fastcall HELPER_HomingLaser_BezierSamples(int param_1)

{
  int *piVar1;
  float fVar2;
  code *pcVar3;
  undefined4 *puVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  float *pfVar8;
  int iVar9;
  undefined4 *puVar10;
  float *pfVar11;
  undefined auVar12 [16];
  float in_XMM1_Da;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  int local_68;
  float *local_64;
  float *local_60;
  float *local_5c;
  undefined4 *local_58;
  undefined4 *local_54;
  undefined4 *local_50;
  float local_4c;
  float local_48;
  float local_44;
  undefined4 *local_40;
  float local_3c;
  float local_38;
  float local_34;
  float local_30;
  float local_2c;
  int local_28;
  int local_24;
  float *local_20;
  float local_1c;
  float *local_18;
  undefined4 *local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00b0d9b5;
  local_10 = ExceptionList;
  ExceptionList = &local_10;
  local_28 = param_1;
  local_1c = in_XMM1_Da;
  if ((uint)((*(int *)(param_1 + 0x4c) - *(int *)(param_1 + 0x48)) / 0x18) < 2) {
    FUN_00a112c0(0x10,"Bezier Path Size is less than 2!\n",DAT_00bf93b4 ^ (uint)&stack0xfffffffc);
  }
  local_68 = 0;
  local_64 = (float *)0x0;
  local_20 = (float *)0x0;
  local_60 = (float *)0x0;
  local_8 = 0;
  uVar7 = *(uint *)(param_1 + 0x18);
  if (uVar7 != 0) {
    if (0x1fffffff < uVar7) {
      FUN_00415bc0();
      goto LAB_0099ebf6;
    }
    FUN_00752900(uVar7);
    local_20 = local_60;
  }
  *(undefined4 *)(param_1 + 0x44) = 0;
  local_18 = (float *)0x0;
  local_5c = (float *)0x0;
  local_58 = (undefined4 *)0x0;
  local_14 = (undefined4 *)0x0;
  local_54 = (undefined4 *)0x0;
  local_8 = CONCAT31(local_8._1_3_,1);
  uVar7 = (*(int *)(param_1 + 0x4c) - *(int *)(param_1 + 0x48)) / 0x18;
  local_60 = local_20;
  if (uVar7 != 0) {
    if (0x3fffffff < uVar7) {
LAB_0099ebf6:
      FUN_00415bc0();
      pcVar3 = (code *)swi(3);
      (*pcVar3)();
      return;
    }
    FUN_0042c880(uVar7);
    local_14 = local_54;
    local_18 = local_5c;
  }
  local_40 = (undefined4 *)0x0;
  if (local_58 == local_14) {
    local_5c = local_18;
    local_54 = local_14;
    FUN_0042c920(local_58,&local_40);
    local_14 = local_54;
    local_18 = local_5c;
  }
  else {
    *local_58 = 0;
    local_58 = local_58 + 1;
  }
  local_38 = 0.0;
  puVar10 = local_58;
  local_5c = local_18;
  local_54 = local_14;
  pfVar11 = local_18;
  if ((*(int *)(param_1 + 0x4c) - *(int *)(param_1 + 0x48)) / 0x18 != 1) {
    local_24 = 0;
    fVar19 = DAT_00baa454;
    do {
      local_40 = (undefined4 *)0x0;
      if (puVar10 == local_14) {
        FUN_0042c920(puVar10,&local_40);
        local_14 = local_54;
        pfVar11 = local_5c;
        fVar19 = DAT_00baa454;
      }
      else {
        *puVar10 = 0;
        local_58 = puVar10 + 1;
      }
      iVar6 = local_24;
      uVar7 = (uint)local_38;
      local_48 = 0.0;
      local_50 = *(undefined4 **)(param_1 + 0x48);
      local_3c = 1.401298e-45;
      local_40 = local_58;
      do {
        fVar14 = fVar19 - local_48;
        fVar18 = (float)((double)(int)local_3c + (double)(&DAT_00bacb00)[-((int)local_3c >> 0x1f)])
                 / DAT_00baa81c;
        local_30 = fVar14 * fVar14 * fVar14;
        fVar19 = fVar19 - fVar18;
        local_34 = fVar14 * DAT_00baa6fc * local_48 * local_48;
        local_38 = local_48 * local_48 * local_48;
        local_2c = fVar14 * fVar14 * DAT_00baa6fc * local_48;
        fVar14 = *(float *)((int)local_50 + 0x20 + iVar6);
        local_44 = fVar19 * fVar19 * fVar19;
        fVar15 = fVar19 * fVar19 * DAT_00baa6fc * fVar18;
        fVar20 = fVar19 * DAT_00baa6fc * fVar18 * fVar18;
        fVar17 = fVar18 * fVar18 * fVar18;
        fVar19 = *(float *)((int)local_50 + 0x18 + iVar6);
        local_18 = (float *)(*(float *)((int)local_50 + 0x10 + iVar6) * local_2c +
                            *(float *)((int)local_50 + iVar6) * local_30);
        fVar13 = *(float *)((int)local_50 + 0x1c + iVar6);
        fVar16 = *(float *)((int)local_50 + 4 + iVar6);
        fVar2 = *(float *)((int)local_50 + 0x24 + iVar6);
        fVar14 = (*(float *)((int)local_50 + 0x10 + iVar6) * fVar15 +
                  *(float *)((int)local_50 + iVar6) * local_44 + fVar14 * fVar20 + fVar19 * fVar17)
                 - ((float)local_18 + fVar14 * local_34 + fVar19 * local_38);
        fVar19 = (*(float *)((int)local_50 + 0x14 + iVar6) * fVar15 + fVar16 * local_44 +
                  fVar2 * fVar20 + fVar13 * fVar17) -
                 (*(float *)((int)local_50 + 0x14 + iVar6) * local_2c + fVar16 * local_30 +
                  fVar2 * local_34 + fVar13 * local_38);
        fVar13 = fVar19 * fVar19 + fVar14 * fVar14;
        local_48 = fVar18;
        FUN_00435a50();
        fVar19 = DAT_00baa454;
        fVar14 = pfVar11[uVar7 + 1];
        local_3c = (float)((int)local_3c + 1);
        pfVar11[uVar7 + 1] = fVar13 + fVar14;
      } while ((uint)local_3c < 0xb);
      local_24 = local_24 + 0x18;
      local_38 = (float)(uVar7 + 1);
      *(float *)(local_28 + 0x44) = fVar13 + fVar14 + *(float *)(local_28 + 0x44);
      puVar10 = local_40;
      param_1 = local_28;
    } while ((uint)local_38 < (*(int *)(local_28 + 0x4c) - *(int *)(local_28 + 0x48)) / 0x18 - 1U);
  }
  local_18 = pfVar11;
  pfVar11 = local_18;
  fVar19 = *(float *)(param_1 + 0x44);
  if ((NAN(fVar19) == (fVar19 == 0.0)) && (uVar7 = (int)puVar10 - (int)local_18 >> 2, uVar7 != 0)) {
    uVar5 = 1;
    *local_18 = *local_18 / fVar19;
    if (1 < uVar7) {
      do {
        fVar19 = local_18[uVar5] / *(float *)(param_1 + 0x44);
        local_18[uVar5] = fVar19;
        local_18[uVar5] = fVar19 + local_18[uVar5 - 1];
        uVar5 = uVar5 + 1;
      } while (uVar5 < uVar7);
    }
  }
  local_40 = (undefined4 *)0x0;
  local_38 = 0.0;
  local_50 = (undefined4 *)(((int)puVar10 - (int)local_18 >> 2) - 1);
  uVar7 = *(uint *)(param_1 + 0x18);
  do {
    fVar19 = (float)((double)(int)local_38 + (double)(&DAT_00bacb00)[-((int)local_38 >> 0x1f)]) /
             (float)((double)uVar7 + (double)(&DAT_00bacb00)[-((int)uVar7 >> 0x1f)]);
    local_3c = fVar19;
    puVar10 = local_40;
    while ((puVar4 = puVar10, puVar4 < local_50 && (fVar14 = pfVar11[(int)puVar4], fVar14 < fVar19))
          ) {
      local_3c = ((fVar19 - fVar14) / (pfVar11[(int)puVar4 + 1] - fVar14)) /
                 (float)((double)(int)local_50 + (double)(&DAT_00bacb00)[-((int)local_50 >> 0x1f)])
                 + (float)((double)(int)puVar4 + (double)(&DAT_00bacb00)[-((int)puVar4 >> 0x1f)]) /
                   (float)((double)(int)local_50 + (double)(&DAT_00bacb00)[-((int)local_50 >> 0x1f)]
                          );
      local_40 = puVar4;
      puVar10 = (undefined4 *)((int)puVar4 + 1);
    }
    if ((uint)((*(int *)(param_1 + 0x4c) - *(int *)(param_1 + 0x48)) / 0x18) < 2) {
      FUN_00a112c0(0x10,"Bezier Path Size less than 2!\n");
    }
    pfVar8 = *(float **)(param_1 + 0x48);
    iVar6 = (*(int *)(param_1 + 0x4c) - (int)pfVar8) / 0x18;
    fVar19 = (float)((double)(iVar6 + -1) + (double)(&DAT_00bacb00)[-(iVar6 + -1 >> 0x1f)]) *
             local_3c;
    iVar9 = (int)fVar19;
    fVar19 = fVar19 - (float)iVar9;
    if (iVar9 < 0) {
      local_4c = *pfVar8;
      local_48 = pfVar8[1];
    }
    else if (iVar9 < iVar6 + -1) {
      fVar13 = DAT_00baa454 - fVar19;
      fVar14 = fVar13 * fVar13 * fVar13;
      fVar16 = fVar13 * fVar13 * DAT_00baa6fc * fVar19;
      fVar13 = fVar13 * DAT_00baa6fc * fVar19 * fVar19;
      fVar19 = fVar19 * fVar19 * fVar19;
      local_4c = fVar14 * pfVar8[iVar9 * 6] + fVar16 * pfVar8[iVar9 * 6 + 4] +
                 fVar13 * pfVar8[iVar9 * 6 + 8] + fVar19 * pfVar8[iVar9 * 6 + 6];
      local_48 = fVar16 * pfVar8[iVar9 * 6 + 5] + fVar14 * pfVar8[iVar9 * 6 + 1] +
                 fVar13 * pfVar8[iVar9 * 6 + 9] + fVar19 * pfVar8[iVar9 * 6 + 7];
    }
    else {
      local_4c = pfVar8[iVar6 * 6 + -6];
      local_48 = pfVar8[iVar6 * 6 + -5];
    }
    if (local_64 == local_20) {
      FUN_0042f430(local_64,&local_4c);
      local_20 = local_60;
    }
    else {
      *local_64 = local_4c;
      local_64[1] = local_48;
      local_64 = local_64 + 2;
    }
    uVar7 = *(uint *)(param_1 + 0x18);
    local_38 = (float)((int)local_38 + 1);
  } while ((uint)local_38 <= uVar7);
  local_40 = *(undefined4 **)(param_1 + 0x34);
  piVar1 = (int *)(param_1 + 0x34);
  local_24 = *(int *)(param_1 + 0x38) - (int)local_40 >> 3;
  iVar6 = param_1;
  if (local_24 == (int)local_64 - local_68 >> 3) {
    if (*(int *)(param_1 + 0x40) == 1) {
      if (local_24 != 0) {
        local_50 = (undefined4 *)(local_68 - (int)local_40);
        uVar7 = 0;
        pfVar8 = (float *)(local_40 + 1);
        do {
          iVar6 = uVar7 * 8;
          uVar7 = uVar7 + 1;
          fVar19 = *(float *)((int)local_50 + (int)pfVar8);
          pfVar8[-1] = (*(float *)(local_68 + iVar6) - pfVar8[-1]) * local_1c + pfVar8[-1];
          *pfVar8 = (fVar19 - *pfVar8) * local_1c + *pfVar8;
          pfVar8 = pfVar8 + 2;
          pfVar11 = local_18;
          iVar6 = local_28;
        } while (uVar7 < (uint)(*(int *)(param_1 + 0x38) - *piVar1 >> 3));
      }
    }
    else {
      fVar19 = *(float *)(param_1 + 0x44) / DAT_00baaa94;
      auVar12 = ZEXT416((uint)fVar19);
      uVar7 = 0;
      if (fVar19 <= 0.0) {
        auVar12 = ZEXT816(0) << 0x20;
      }
      if (DAT_00baa454 <= auVar12._0_4_) {
        auVar12._0_4_ = DAT_00baa454;
      }
      local_1c = (local_1c - 0.0) * auVar12._0_4_ + 0.0;
      fVar19 = DAT_00baa454;
      if (local_24 != 0) {
        do {
          fVar2 = DAT_00baa454;
          uVar5 = -(uint)(uVar7 != 0) & uVar7;
          iVar6 = (*(int *)(param_1 + 0x38) - *piVar1 >> 3) + -1;
          fVar14 = *(float *)(local_68 + 4 + uVar7 * 8);
          fVar13 = (float)local_40[uVar7 * 2 + 1];
          fVar19 = fVar19 - ((float)((double)uVar5 + (double)(&DAT_00bacb00)[-((int)uVar5 >> 0x1f)])
                            / (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)])) *
                            local_1c;
          fVar16 = (float)local_40[uVar7 * 2 + 1];
          local_40[uVar7 * 2] =
               (*(float *)(local_68 + uVar7 * 8) - (float)local_40[uVar7 * 2]) * fVar19 +
               (float)local_40[uVar7 * 2];
          local_40[uVar7 * 2 + 1] = (fVar14 - fVar13) * fVar19 + fVar16;
          uVar7 = uVar7 + 1;
          iVar6 = local_28;
          fVar19 = fVar2;
        } while (uVar7 < (uint)(*(int *)(param_1 + 0x38) - *piVar1 >> 3));
      }
    }
  }
  else if (piVar1 != &local_68) {
    FUN_008c2a70(local_68,local_64,local_50);
  }
  if ((int *)(iVar6 + 0x1c) != piVar1) {
    FUN_008c2a70(*piVar1,*(undefined4 *)(param_1 + 0x38),local_50);
  }
  if (pfVar11 != (float *)0x0) {
    uVar7 = (int)local_14 - (int)pfVar11 & 0xfffffffc;
    pfVar8 = pfVar11;
    if (0xfff < uVar7) {
      pfVar8 = (float *)pfVar11[-1];
      uVar7 = uVar7 + 0x23;
      if (0x1f < (uint)((int)pfVar11 + (-4 - (int)pfVar8))) goto LAB_0099ebcf;
    }
    FUN_00aef15c(pfVar8,uVar7);
  }
  if (local_68 != 0) {
    uVar7 = (int)local_20 - local_68 & 0xfffffff8;
    iVar6 = local_68;
    if (0xfff < uVar7) {
      iVar6 = *(int *)(local_68 + -4);
      uVar7 = uVar7 + 0x23;
      if (0x1f < (local_68 - iVar6) - 4U) {
LAB_0099ebcf:
                    /* WARNING: Subroutine does not return */
        _invalid_parameter_noinfo_noreturn();
      }
    }
    FUN_00aef15c(iVar6,uVar7);
  }
  ExceptionList = local_10;
  return;
}

