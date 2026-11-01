/* Local J460 decompiler output.
 * VA: 0x004a12f0
 * Entry: 004a12f0
 * Dispatcher: 0x006c2990
 * Types: 914
 * Identities: 914.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004a2920; instructions=1179
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=914; identities=914.0.0; dispatcher=0x006c2990;
   end=0x004a2920; instructions=1179 */

void __fastcall AI_004a12f0(float param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  char cVar3;
  uint uVar4;
  undefined4 *puVar5;
  float *pfVar6;
  int *piVar7;
  int iVar8;
  int iVar9;
  undefined4 uVar10;
  int *piVar11;
  uint uVar12;
  uint uVar13;
  undefined4 *puVar14;
  float fVar15;
  float fVar16;
  char *pcVar17;
  undefined4 local_16c;
  undefined4 uStack_168;
  undefined4 uStack_164;
  undefined4 uStack_160;
  undefined local_15c [16];
  undefined4 local_14c;
  undefined4 local_148;
  undefined4 local_144;
  uint local_140;
  undefined8 uStack_13c;
  float fStack_134;
  float *local_130;
  float local_12c;
  float local_128;
  int local_124;
  float *local_120;
  float local_11c;
  int local_118;
  float *local_114;
  float local_110;
  int *local_10c;
  float local_108;
  undefined4 *local_104;
  char local_fd;
  int *local_fc;
  char local_f8 [4];
  undefined4 *local_f4;
  undefined4 *local_f0;
  undefined4 *local_ec;
  float local_e8;
  float local_e4;
  float local_e0;
  float local_dc;
  float local_d8;
  undefined4 *local_d4;
  undefined local_d0 [12];
  undefined4 local_c4;
  float local_b8;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_68;
  undefined4 local_64;
  undefined8 local_50;
  undefined4 local_44;
  undefined4 local_3c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2f8b;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_dc = param_1;
  local_24 = uVar4;
  puVar2 = &stack0xfffffffc;
  switch(*(undefined4 *)((int)param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
    *(undefined4 *)((int)param_1 + 0x334) = DAT_00c7b640;
    *(undefined4 *)((int)param_1 + 0x338) = DAT_00c7b644;
    local_15c = ZEXT416(0);
    local_16c = _DAT_00babf20;
    uStack_168 = _UNK_00babf24;
    uStack_164 = _UNK_00babf28;
    uStack_160 = _UNK_00babf2c;
    local_14c = 0x3e828283;
    local_148 = 0x3e24a4a5;
    local_144 = 0x3e0c8c8d;
    puStack_20 = &stack0xfffffffc;
    FUN_004071f0(&local_16c);
    *(undefined4 *)((int)param_1 + 0x410) = 0;
    *(undefined4 *)((int)param_1 + 0xba4) = 0;
    *(undefined4 *)((int)param_1 + 0x334) = *(undefined4 *)((int)param_1 + 0x33c);
    *(undefined4 *)((int)param_1 + 0x338) = *(undefined4 *)((int)param_1 + 0x340);
    *(undefined4 *)((int)param_1 + 0xbc4) = 0;
    *(undefined4 *)((int)param_1 + 0x184) = 3;
    puVar2 = puStack_20;
    break;
  case 3:
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380(&DAT_00b1bc54,0);
    uVar13 = FUN_006eef60();
    puVar14 = (undefined4 *)(uVar13 % 10);
    puVar2 = puStack_20;
    if (puVar14 == (undefined4 *)0x0) {
      local_f0 = (undefined4 *)0x0;
      local_14 = 0;
      puVar5 = (undefined4 *)
               (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
               *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4));
      local_d4 = (undefined4 *)0x0;
      if (0 < (int)puVar5) {
        local_d4 = puVar5;
      }
      fVar15 = (float)((5 - (int)local_d4) * 0x28);
      local_f4 = puVar14;
      local_ec = puVar14;
      if (0 < (int)fVar15) {
        local_e4 = 1.121039e-44;
        local_e0 = fVar15;
        FUN_004a11c0(0,&local_e4);
      }
      local_dc = (float)((int)local_d4 * 0x14);
      if (((int)local_dc < 0x3c) || (*(char *)((int)param_1 + 0xbc5) != '\0')) {
        local_dc = 1.401298e-45;
      }
      uVar13 = 0;
      uVar12 = (int)local_f0 - (int)local_f4 >> 3;
      if (uVar12 != 0) {
        do {
          if (local_f4[uVar13 * 2] == 9) {
            piVar11 = local_f4 + uVar13 * 2 + 1;
            *piVar11 = *piVar11 + (int)local_dc;
            if (*piVar11 < 0) {
              local_f4[uVar13 * 2 + 1] = 0;
            }
            goto LAB_004a1556;
          }
          uVar13 = uVar13 + 1;
        } while (uVar13 < uVar12);
      }
      if (0 < (int)local_dc) {
        local_e4 = 1.261169e-44;
        local_e0 = local_dc;
        if (local_f0 == local_ec) {
          FUN_004a11c0(local_f0,&local_e4);
        }
        else {
          *local_f0 = 9;
          local_f0[1] = local_dc;
          local_f0 = local_f0 + 2;
        }
      }
LAB_004a1556:
      uVar12 = (int)local_f0 - (int)local_f4 >> 3;
      local_dc = (float)((-(uint)(*(char *)((int)param_1 + 0xbc6) != '\0') & 0xffffffe3) + 0x1e);
      uVar13 = 0;
      if (uVar12 != 0) {
        do {
          if (local_f4[uVar13 * 2] == 10) {
            piVar11 = local_f4 + uVar13 * 2 + 1;
            *piVar11 = *piVar11 + (int)local_dc;
            if (*piVar11 < 0) {
              local_f4[uVar13 * 2 + 1] = 0;
            }
            goto LAB_004a15f2;
          }
          uVar13 = uVar13 + 1;
        } while (uVar13 < uVar12);
      }
      local_e4 = 1.401298e-44;
      local_e0 = local_dc;
      if (local_f0 == local_ec) {
        FUN_004a11c0(local_f0,&local_e4);
      }
      else {
        *local_f0 = 10;
        local_f0[1] = local_dc;
        local_f0 = local_f0 + 2;
      }
LAB_004a15f2:
      uVar12 = (int)local_f0 - (int)local_f4 >> 3;
      local_dc = (float)((-(uint)(*(char *)((int)param_1 + 0xbc7) != '\0') & 0xffffffe3) + 0x1e);
      uVar13 = 0;
      if (uVar12 != 0) {
        do {
          if (local_f4[uVar13 * 2] == 0xb) {
            piVar11 = local_f4 + uVar13 * 2 + 1;
            *piVar11 = *piVar11 + (int)local_dc;
            if (*piVar11 < 0) {
              local_f4[uVar13 * 2 + 1] = 0;
            }
            goto LAB_004a167b;
          }
          uVar13 = uVar13 + 1;
        } while (uVar13 < uVar12);
      }
      local_e4 = 1.541428e-44;
      local_e0 = local_dc;
      if (local_f0 == local_ec) {
        FUN_004a11c0(local_f0,&local_e4);
      }
      else {
        *local_f0 = 0xb;
        local_f0[1] = local_dc;
        local_f0 = local_f0 + 2;
      }
LAB_004a167b:
      local_140 = FUN_006eef60();
      local_140 = local_140 | 1;
      fStack_134 = DAT_00b1f674;
      uStack_13c._0_4_ = (undefined4)DAT_00b1f66c;
      uVar10 = (undefined4)uStack_13c;
      uStack_13c._4_4_ = (undefined4)((ulonglong)DAT_00b1f66c >> 0x20);
      uVar1 = uStack_13c._4_4_;
      uStack_13c = DAT_00b1f66c;
      iVar9 = FUN_0049cbf0(local_140,uVar10,uVar1,DAT_00b1f674);
      *(int *)((int)param_1 + 0xb64) = iVar9;
      if (iVar9 == 9) {
        uVar13 = FUN_006eef60();
        *(uint *)((int)param_1 + 0xbc0) = uVar13 & 1;
      }
      else if (iVar9 == 10) {
        iVar9 = FUN_006eef60();
        *(float *)((int)param_1 + 0xbb0) =
             (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baab30;
        uVar13 = FUN_006eef60();
        if ((uVar13 & 1) == 0) {
          uVar13 = FUN_006eef60();
          fVar15 = DAT_00baadc0;
          if ((uVar13 & 1) != 0) {
            fVar15 = DAT_00baa81c;
          }
        }
        else {
          uVar13 = FUN_006eef60();
          fVar15 = DAT_00baae00;
          if ((uVar13 & 1) != 0) {
            fVar15 = DAT_00baa8a0;
          }
        }
        *(float *)((int)param_1 + 0xbb4) = fVar15;
      }
      local_14 = 0xffffffff;
      *(undefined4 *)((int)param_1 + 0x410) = 0;
      puVar2 = puStack_20;
      if (local_f4 != (undefined4 *)0x0) {
        uVar13 = ((int)local_ec - (int)local_f4 >> 3) * 8;
        puVar14 = local_f4;
        if (0xfff < uVar13) {
          puVar14 = (undefined4 *)local_f4[-1];
          uVar13 = uVar13 + 0x23;
          if (0x1f < (uint)((int)local_f4 + (-4 - (int)puVar14))) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(puVar14,uVar13);
        puVar2 = puStack_20;
      }
    }
    break;
  case 8:
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380(&DAT_00b1d47c,0);
    if (*(int *)((int)param_1 + 0x7c) != 0) {
      cVar3 = FUN_0040add0("Shoot");
      if (cVar3 != '\0') {
        iVar9 = FUN_006eef60();
        local_d4 = (undefined4 *)
                   (((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4 * (float)DAT_00baa9b4 - DAT_00baa910) * DAT_00baa088);
        local_104 = local_d4;
        FUN_0041d540();
        puVar14 = local_d4;
        FUN_0041d520();
        local_d8 = (float)local_104 * 0.0 - (float)puVar14;
        local_e8 = (float)puVar14 * 0.0 + (float)local_104;
        uVar10 = FUN_006eef60();
        local_e4 = local_d8 * DAT_00baa81c + *(float *)((int)param_1 + 0x33c);
        local_e0 = local_e8 * DAT_00baa81c + *(float *)((int)param_1 + 0x340);
        piVar11 = (int *)FUN_00428b20(0x366,0,&local_e4,&DAT_00c7b640,param_1,0,uVar10);
        iVar9 = FUN_006eef60();
        fVar15 = (float)piVar11[0xdb];
        fVar16 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa784 + DAT_00baa784;
        if (NAN(fVar15) == (fVar15 == 0.0)) {
          piVar11[0xd9] =
               (int)(((float)piVar11[0xe7] * fVar16 * local_e8) / fVar15 + (float)piVar11[0xd9]);
          piVar11[0xd8] =
               (int)(((float)piVar11[0xe7] * fVar16 * local_d8) / fVar15 + (float)piVar11[0xd8]);
        }
        piVar11[0x5a] = piVar11[0x5a] & 0xfffffffb;
        piVar11[0x5b] = piVar11[0x5b];
        piVar11[0x2d9] = 4;
        (**(code **)(*piVar11 + 0xc))();
        uVar10 = FUN_006eef60();
        local_118 = piVar11[0xd8];
        local_114 = (float *)piVar11[0xd9];
        local_124 = piVar11[0xcf];
        local_120 = (float *)piVar11[0xd0];
        iVar9 = FUN_00428b20(1000,2,&local_124,&local_118,0,1,uVar10);
        iVar8 = FUN_006eef60();
        *(float *)(iVar9 + 0xec) =
             (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baab30;
        FUN_0040a380(&DAT_00b1d534,0);
        *(undefined4 *)(iVar9 + 0x34c) = 0;
        *(undefined4 *)(iVar9 + 0x350) = 0xc2200000;
        *(undefined4 *)(iVar9 + 0x354) = 500;
        FUN_004073d0(&DAT_00c33c44);
        param_1 = local_dc;
        FUN_006d6ba0(0x12f,0x3f800000,2,0,0x3f800000);
      }
      if ((*(int *)((int)param_1 + 0x7c) != 0) &&
         (puVar2 = puStack_20, *(char *)((int)param_1 + 0x8c) != '\0')) break;
    }
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
    puVar2 = puStack_20;
    break;
  case 9:
    if (*(int *)((int)param_1 + 0x410) != 0) {
      if (*(int *)((int)param_1 + 0x410) < 1) {
        if ((*(int *)((int)param_1 + 0x7c) == 0) ||
           (puVar2 = &stack0xfffffffc, *(char *)((int)param_1 + 0x8c) == '\0')) {
          *(undefined4 *)((int)param_1 + 0xb64) = 3;
          *(undefined *)((int)param_1 + 0xbc5) = 0x5a;
          puVar2 = &stack0xfffffffc;
        }
        break;
      }
      pcVar17 = "SpinLoop2";
      if (*(int *)((int)param_1 + 0xbc0) == 0) {
        pcVar17 = "SpinLoop";
      }
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380(pcVar17,0);
      *(int *)((int)param_1 + 0x410) = *(int *)((int)param_1 + 0x410) + 1;
      if (*(int *)((int)param_1 + 0x410) == 5) {
        local_d8 = 6.838337e-43;
        FUN_00956780();
        FUN_0092dc30(local_d8,0x3f800000,0x1e,0,0x3f800000,0);
      }
      local_130 = (float *)((int)param_1 + 0x33c);
      pfVar6 = (float *)FUN_00812d00(&local_f0);
      local_e4 = *(float *)((int)param_1 + 0x33c) - *pfVar6;
      local_e0 = *(float *)((int)param_1 + 0x340) - pfVar6[1];
      fVar15 = local_e4 * local_e4 + local_e0 * local_e0;
      FUN_00435a50();
      if (DAT_00baa9a0 < fVar15) {
        pfVar6 = (float *)FUN_00a10030(&local_f0);
        fVar15 = *(float *)((int)param_1 + 0x36c);
        fVar16 = pfVar6[1];
        if (NAN(fVar15) == (fVar15 == 0.0)) {
          *(float *)((int)param_1 + 0x360) =
               ((*pfVar6 + *pfVar6) * *(float *)((int)param_1 + 0x39c)) / fVar15 +
               *(float *)((int)param_1 + 0x360);
          *(float *)((int)param_1 + 0x364) =
               ((fVar16 + fVar16) * *(float *)((int)param_1 + 0x39c)) / fVar15 +
               *(float *)((int)param_1 + 0x364);
        }
      }
      local_12c = 1.5;
      local_128 = (float)*(int *)((int)param_1 + 0x410) / DAT_00baa854;
      pfVar6 = &local_128;
      if (DAT_00baa528 <= local_128) {
        pfVar6 = &local_12c;
      }
      if (*(int *)((int)param_1 + 0xbc0) == 0) {
        local_104 = DAT_00baa9b4;
      }
      else {
        local_104 = DAT_00baae50;
      }
      local_114 = pfVar6;
      if ((4 < *(int *)((int)param_1 + 0x410)) && (cVar3 = FUN_006ac710(8,0), cVar3 != '\0')) {
        uVar10 = FUN_006eef60();
        piVar11 = (int *)FUN_00428b20(1000,0x8e,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,1,uVar10)
        ;
        iVar9 = FUN_006eef60();
        piVar11[0x11d] =
             (int)((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baab30);
        *(bool *)(piVar11 + 0x52) = *(int *)((int)local_dc + 0xbc0) == 0;
        iVar9 = FUN_006eef60();
        fVar16 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa2d0 + DAT_00baa454;
        fVar15 = fVar16 * DAT_00c3793c;
        piVar11[0x3a] = (int)(fVar16 * DAT_00c37940);
        piVar11[0x39] = (int)fVar15;
        (**(code **)(*piVar11 + 0xc))();
        param_1 = local_dc;
      }
      local_d4 = (undefined4 *)0x0;
      local_e0 = *(float *)(DAT_00c71678 + 0x18300);
      if (*(int *)((int)local_e0 + 0x1264) != 0) {
        do {
          piVar11 = *(int **)(*(int *)((int)local_e0 + 0x125c) + (int)local_d4 * 4);
          iVar9 = piVar11[10];
          local_fc = piVar11;
          if (((((iVar9 == 1) || (iVar9 - 10U < 0x3de)) || (iVar9 == 5)) || (iVar9 == 4)) &&
             ((cVar3 = (**(code **)(*piVar11 + 0x4c))(), cVar3 == '\0' &&
              ((piVar11[0x61] == 5 || (piVar11[0x61] == 6)))))) {
            local_e8 = *local_130 - (float)piVar11[0xcf];
            local_d8 = local_130[1] - (float)piVar11[0xd0];
            fVar15 = local_e8 * local_e8 + local_d8 * local_d8;
            FUN_00435a50();
            if (0.0 < fVar15) {
              local_d8 = local_d8 * (DAT_00baa454 / fVar15);
              local_e8 = local_e8 * (DAT_00baa454 / fVar15);
            }
            local_10c = (int *)(local_e8 * DAT_00baa280);
            local_110 = local_d8 * DAT_00baa280;
            local_11c = (float)local_104 * DAT_00baa088;
            fVar15 = local_11c;
            FUN_0041d540();
            local_108 = fVar15;
            FUN_0041d520();
            fVar15 = local_e8 * local_11c;
            local_11c = *pfVar6 * ((local_e8 * local_108 - local_d8 * local_11c) * DAT_00baa3a4 +
                                  (float)local_10c);
            local_120 = (float *)(*pfVar6 *
                                 ((fVar15 + local_d8 * local_108) * DAT_00baa3a4 + local_110));
            piVar11[0xd8] = (int)((float)piVar11[0xd8] + local_11c);
            piVar11[0xd9] = (int)((float)local_120 + (float)piVar11[0xd9]);
            cVar3 = FUN_006ac710(3,0);
            if ((cVar3 != '\0') && ((piVar11[10] == 1 || (piVar11[10] - 10U < 0x3de)))) {
              uVar13 = FUN_006eef60();
              piVar11 = local_fc;
              local_e8 = (float)(uVar13 % 3 + 2);
              if (local_e8 != 0.0) {
                do {
                  local_10c = (int *)piVar11[0xcf];
                  local_108 = (float)piVar11[0xd0];
                  iVar9 = FUN_006eef60();
                  fVar15 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa704;
                  local_fc = (int *)(fVar15 + fVar15);
                  fVar15 = (float)local_fc;
                  FUN_0041d520();
                  local_110 = fVar15;
                  local_d8 = (float)piVar11[0xdc];
                  FUN_0041d540();
                  local_fc = (int *)((float)local_fc * local_d8);
                  local_d8 = local_d8 * local_110;
                  iVar9 = FUN_006eef60();
                  fVar15 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                           DAT_00ba9ff4;
                  local_ec = (undefined4 *)(fVar15 * local_d8 + local_108);
                  local_f0 = (undefined4 *)(fVar15 * (float)local_fc + (float)local_10c);
                  uVar10 = FUN_006eef60();
                  iVar9 = FUN_006eef60();
                  local_110 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                              DAT_00ba9ff4 * (float)DAT_00baa7a4 + (float)DAT_00baa75c;
                  local_108 = local_110 * (float)local_120;
                  local_110 = local_110 * local_11c;
                  iVar9 = FUN_006eef60();
                  fVar15 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa704;
                  local_fc = (int *)(fVar15 + fVar15);
                  piVar7 = local_fc;
                  FUN_0041d520();
                  local_10c = piVar7;
                  piVar7 = local_fc;
                  FUN_0041d540();
                  fStack_134 = (float)local_10c + local_108;
                  uStack_13c = CONCAT44((float)piVar7 + local_110,(undefined4)uStack_13c);
                  piVar7 = (int *)FUN_00428b20(1000,99,&local_f0,(int)&uStack_13c + 4,piVar11,1,
                                               uVar10);
                  (**(code **)(*piVar7 + 0xc))();
                  local_e8 = (float)((int)local_e8 + -1);
                } while (local_e8 != 0.0);
                local_e8 = 0.0;
                pfVar6 = local_114;
              }
            }
          }
          local_d4 = (undefined4 *)((int)local_d4 + 1);
          param_1 = local_dc;
        } while (local_d4 < *(undefined4 **)((int)local_e0 + 0x1264));
      }
      puVar2 = puStack_20;
      if (*(int *)((int)param_1 + 0x410) < 0x5b) break;
      if (*(int *)((int)param_1 + 0x7c) == 0) {
        iVar9 = 0;
      }
      else {
        iVar9 = *(int *)(*(int *)((int)param_1 + 0x7c) + 0x30);
      }
      iVar8 = FUN_0040a780();
      puVar2 = puStack_20;
      if (iVar8 != iVar9 + -1) break;
      pcVar17 = "SpinEnd2";
      if (*(int *)((int)param_1 + 0xbc0) == 0) {
        pcVar17 = "SpinEnd";
      }
LAB_004a2281:
      FUN_0040a380(pcVar17,0);
      *(undefined4 *)((int)param_1 + 0x410) = 0xffffffff;
      puVar2 = puStack_20;
      break;
    }
    pcVar17 = "SpinBegin2";
    if (*(int *)((int)param_1 + 0xbc0) == 0) {
      pcVar17 = "SpinBegin";
    }
    goto LAB_004a1adf;
  case 10:
    if (*(int *)((int)param_1 + 0x410) != 0) {
      if (*(int *)((int)param_1 + 0x410) < 1) {
        if ((*(int *)((int)param_1 + 0x7c) == 0) ||
           (puVar2 = &stack0xfffffffc, *(char *)((int)param_1 + 0x8c) == '\0')) {
          *(undefined4 *)((int)param_1 + 0xb64) = 3;
          *(undefined *)((int)param_1 + 0xbc6) = 0x5a;
          puVar2 = &stack0xfffffffc;
        }
        break;
      }
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380("BulletHellLoop",0);
      FUN_006d6ba0(0x12d,0x3f800000,0x2d,0,0x3f4ccccd);
      local_d4 = DAT_00baa75c;
      local_fd = (float)(*(uint *)((int)param_1 + 0xbb4) & DAT_00bacb40) < DAT_00baa87c;
      if (!(bool)local_fd) {
        local_d4 = DAT_00baa7a4;
      }
      iVar9 = *(int *)((int)param_1 + 0x410);
      local_e0 = 8.407791e-45;
      if (iVar9 % 6 == 0) {
        AI_0043ef30();
        local_68 = *(undefined4 *)((int)param_1 + 0x33c);
        local_64 = *(undefined4 *)((int)param_1 + 0x340);
        local_c4 = 0xbdcccccd;
        if (local_fd == '\0') {
          local_c4 = 0xbd4ccccd;
        }
        local_3c = 3;
        local_b8 = (*(float *)((int)param_1 + 0xbb0) * DAT_00baa708) / DAT_00baaa78;
        local_78 = 0x2000;
        local_74 = 1;
        local_44 = 0x1e;
        local_ec = (undefined4 *)0x40800000;
        local_50 = 0;
        local_f0 = local_d4;
        FUN_006cb2e0((undefined4 *)((int)param_1 + 0x33c),&local_f0,9,local_d0);
        fVar15 = *(float *)((int)param_1 + 0xbb0) + *(float *)((int)param_1 + 0xbb4);
        FUN_00682740();
        iVar9 = *(int *)((int)param_1 + 0x410);
        *(float *)((int)param_1 + 0xbb0) = fVar15;
      }
      *(int *)((int)param_1 + 0x410) = iVar9 + 1;
      puVar2 = puStack_20;
      if (iVar9 + 1 < 0x5b) break;
      pcVar17 = "BulletHellEnd";
      goto LAB_004a2281;
    }
    pcVar17 = "BulletHellBegin";
LAB_004a1adf:
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380(pcVar17,0);
    puVar2 = puStack_20;
    if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
      *(undefined4 *)((int)param_1 + 0x410) = 1;
    }
    break;
  case 0xb:
    FUN_0040a380(&DAT_00b1deb4,0);
    if (*(int *)((int)param_1 + 0x7c) != 0) {
      cVar3 = FUN_0040add0("Shoot");
      if (cVar3 != '\0') {
        local_d4 = (undefined4 *)0x3fa;
        FUN_00956780();
        FUN_0092dc30(local_d4,0x3f800000,2,0,0x3f800000,0);
        iVar9 = FUN_006eef60();
        local_e0 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baab30;
        iVar9 = FUN_006d0c60(local_f8,0x60,0xffffffff);
        local_d4 = *(undefined4 **)(iVar9 + 0xc);
        FUN_004175b0();
        uVar13 = 0;
        do {
          local_fc = (int *)((float)((double)uVar13 +
                                    (double)(&DAT_00bacb00)[-((int)uVar13 >> 0x1f)]) * DAT_00baaa00
                            + local_e0);
          local_114 = (float *)((float)local_fc * DAT_00baa088);
          pfVar6 = local_114;
          FUN_0041d520();
          local_120 = pfVar6;
          FUN_0041d540();
          local_104 = (undefined4 *)0x0;
          if ((uVar13 < 2) && ((int)local_d4 < 3)) {
            local_d4 = (undefined4 *)((int)local_d4 + 1);
            local_104 = (undefined4 *)0x1;
          }
          uVar10 = FUN_006eef60();
          local_f0 = (undefined4 *)
                     ((float)local_114 * DAT_00baa8d0 + *(float *)((int)param_1 + 0x33c));
          local_ec = (undefined4 *)
                     ((float)local_120 * DAT_00baa8d0 + *(float *)((int)param_1 + 0x340));
          piVar11 = (int *)FUN_00428b20(1000,0x8f,&local_f0,&DAT_00c7b640,param_1,local_104,uVar10);
          piVar11[0x11d] = (int)local_fc;
          (**(code **)(*piVar11 + 0xc))();
          uVar13 = uVar13 + 1;
        } while (uVar13 < 3);
      }
      if (*(int *)((int)param_1 + 0x7c) != 0) {
        cVar3 = FUN_0040add0("Sound");
        if (cVar3 != '\0') {
          FUN_006d6ba0(0x1a4,0x3f800000,0x14,0,0x3f666666);
        }
        if ((*(int *)((int)param_1 + 0x7c) != 0) &&
           (puVar2 = puStack_20, *(char *)((int)param_1 + 0x8c) != '\0')) break;
      }
    }
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
    *(undefined *)((int)param_1 + 0xbc7) = 0x5a;
    puVar2 = puStack_20;
  }
  puStack_20 = puVar2;
  cVar3 = FUN_006ac710(2,0);
  if (cVar3 != '\0') {
    if (*(char *)((int)param_1 + 0xbc4) != '\0') {
      *(char *)((int)param_1 + 0xbc4) = *(char *)((int)param_1 + 0xbc4) + -1;
    }
    if (*(char *)((int)param_1 + 0xbc5) != '\0') {
      *(char *)((int)param_1 + 0xbc5) = *(char *)((int)param_1 + 0xbc5) + -1;
    }
    if (*(char *)((int)param_1 + 0xbc6) != '\0') {
      *(char *)((int)param_1 + 0xbc6) = *(char *)((int)param_1 + 0xbc6) + -1;
    }
    if (*(char *)((int)param_1 + 0xbc7) != '\0') {
      *(char *)((int)param_1 + 0xbc7) = *(char *)((int)param_1 + 0xbc7) + -1;
    }
  }
  *(float *)((int)param_1 + 0x364) =
       *(float *)((int)param_1 + 0x338) - *(float *)((int)param_1 + 0x340);
  fVar15 = *(float *)((int)param_1 + 0x36c) * DAT_00baa354;
  *(float *)((int)param_1 + 0x360) =
       *(float *)((int)param_1 + 0x334) - *(float *)((int)param_1 + 0x33c);
  *(float *)((int)param_1 + 0x36c) = fVar15;
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    uVar10 = FUN_006eef60(uVar4);
    piVar11 = (int *)FUN_00428b20(1000,0x8e,(float *)((int)param_1 + 0x33c),&DAT_00c7b640,0,0,uVar10
                                 );
    (**(code **)(*piVar11 + 0xc))();
    local_d4 = (undefined4 *)0x18c;
    FUN_00956780();
    FUN_0092dc30(local_d4,0x3f800000,2,0,0x3f800000,0);
    FUN_0092e230(0x1e8);
    AI_0041af60(local_f8,0x366,0xffffffff,0xffffffff,0,0);
    puVar14 = (undefined4 *)0x0;
    local_14 = 1;
    if (local_ec != (undefined4 *)0x0) {
      do {
        iVar9 = local_f4[(int)puVar14];
        cVar3 = FUN_006ac560(0);
        if ((cVar3 != '\0') && ((*(uint *)(iVar9 + 0x168) & 0x20000000) == 0)) {
          FUN_006be760();
        }
        puVar14 = (undefined4 *)((int)puVar14 + 1);
      } while (puVar14 < local_ec);
    }
    local_14 = 0xffffffff;
    if (local_f8[0] == '\0') {
      local_14 = 2;
      FUN_00a648b0(0,0);
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

