/* Local J460 decompiler output.
 * VA: 0x004fd540
 * Entry: 004fd540
 * Dispatcher: 0x006c2990
 * Types: 823
 * Identities: 823.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004fdf80; instructions=610
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=823; identities=823.0.0; dispatcher=0x006c2990;
   end=0x004fdf80; instructions=610 */

void __fastcall AI_004fd540(int param_1)

{
  float *pfVar1;
  byte bVar2;
  code *pcVar3;
  byte **ppbVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  char cVar8;
  uint uVar9;
  int *piVar10;
  int iVar11;
  int iVar12;
  undefined4 uVar13;
  float *pfVar14;
  byte **ppbVar15;
  char *pcVar16;
  uint uVar17;
  bool bVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  undefined4 uVar22;
  undefined4 uVar23;
  undefined4 uVar24;
  undefined4 local_160 [8];
  undefined4 local_140;
  undefined4 uStack_13c;
  undefined4 local_138;
  undefined4 local_134;
  undefined4 local_130;
  int local_12c;
  float local_128;
  float local_124;
  int *local_120;
  float local_11c;
  float local_118;
  float local_114;
  undefined local_110 [148];
  undefined4 local_7c;
  undefined local_64 [16];
  undefined4 local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined local_34;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af2a65;
  local_1c = ExceptionList;
  uVar9 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar9;
  FUN_006d8e40(1);
  iVar11 = *(int *)(param_1 + 0xb64);
  if (iVar11 != 0) {
    if (iVar11 == 4) {
      local_40 = 0xf;
      local_44 = 8;
      local_54._0_1_ = s_WalkVert_00b1dd18[0];
      local_54._1_1_ = s_WalkVert_00b1dd18[1];
      local_54._2_1_ = s_WalkVert_00b1dd18[2];
      local_54._3_1_ = s_WalkVert_00b1dd18[3];
      local_50._0_1_ = s_WalkVert_00b1dd18[4];
      local_50._1_1_ = s_WalkVert_00b1dd18[5];
      local_50._2_1_ = s_WalkVert_00b1dd18[6];
      local_50._3_1_ = s_WalkVert_00b1dd18[7];
      local_4c = 0;
      local_28 = 0xf;
      local_2c = 8;
      local_3c._0_1_ = s_WalkHori_00b1dd30[0];
      local_3c._1_1_ = s_WalkHori_00b1dd30[1];
      local_3c._2_1_ = s_WalkHori_00b1dd30[2];
      local_3c._3_1_ = s_WalkHori_00b1dd30[3];
      local_38._0_1_ = s_WalkHori_00b1dd30[4];
      local_38._1_1_ = s_WalkHori_00b1dd30[5];
      local_38._2_1_ = s_WalkHori_00b1dd30[6];
      local_38._3_1_ = s_WalkHori_00b1dd30[7];
      local_34 = 0;
      local_14._0_1_ = 1;
      local_14._1_3_ = 0;
      FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
      local_14 = (uint)local_14._1_3_ << 8;
      if (0xf < local_28) {
        uVar17 = local_28 + 1;
        uVar9 = local_3c;
        if (0xfff < uVar17) {
          uVar9 = *(uint *)(local_3c - 4);
          uVar17 = local_28 + 0x24;
          if (0x1f < (local_3c - uVar9) - 4) goto LAB_004fdb6a;
        }
        FUN_00aef15c(uVar9,uVar17);
      }
      local_14 = -1;
      local_2c = 0;
      local_28 = 0xf;
      local_3c = local_3c & 0xffffff00;
      if (0xf < local_40) {
        uVar9 = local_40 + 1;
        iVar11 = local_54;
        if (0xfff < uVar9) {
          iVar11 = *(int *)(local_54 + -4);
          uVar9 = local_40 + 0x24;
          if (0x1f < (local_54 - iVar11) - 4U) {
LAB_004fdb6a:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar11,uVar9);
      }
      if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
        uVar24 = 1;
        uVar23 = 900;
        uVar22 = 0x3e99999a;
        uVar13 = FUN_006bec40(&local_128,0);
        FUN_007e33c0(uVar13,uVar22,uVar23,uVar24);
        if (*(int *)(param_1 + 0x34) != 0x38a) {
          if (0 < *(int *)(param_1 + 0xba0)) {
            *(int *)(param_1 + 0xba0) =
                 ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
                 *(int *)(param_1 + 0xba0);
          }
          iVar11 = FUN_006be840();
          local_120 = *(int **)(iVar11 + 0x33c);
          local_114 = *(float *)(iVar11 + 0x340);
          if (*(int *)(param_1 + 0xba0) < 1) {
            if (*(int *)(param_1 + 0xf1c) == -1) {
              fVar21 = *(float *)(param_1 + 0x33c) - (float)local_120;
              fVar19 = *(float *)(param_1 + 0x340) - local_114;
              fVar19 = fVar19 * fVar19 + fVar21 * fVar21;
              FUN_00435a50();
              if (((fVar19 < DAT_00baaa00) && (uVar9 = FUN_006eef60(), uVar9 % 0xf == 0)) ||
                 (uVar9 = FUN_006eef60(), uVar9 % 0x78 == 0)) goto LAB_004fdd28;
            }
            else {
              cVar8 = FUN_006cae60(0,7);
              if ((cVar8 != '\0') || (cVar8 = FUN_006d8260(9), cVar8 != '\0')) {
LAB_004fdd28:
                FUN_0040a380(&DAT_00b1d560,0);
                *(undefined4 *)(param_1 + 0xb64) = 8;
                local_128 = (float)local_120 - *(float *)(param_1 + 0x33c);
                local_124 = local_114 - *(float *)(param_1 + 0x340);
                pfVar14 = (float *)FUN_00a10030(&local_134);
                pfVar1 = (float *)(param_1 + 0x334);
                fVar19 = pfVar14[1] * DAT_00baa834;
                *pfVar1 = *pfVar14 * DAT_00baa834;
                *(float *)(param_1 + 0x338) = fVar19;
                if (*(int *)(param_1 + 0xf1c) != -1) {
                  pfVar14 = (float *)FUN_006d85a0(&local_128);
                  fVar19 = *pfVar14 * DAT_00baa834;
                  *(float *)(param_1 + 0x338) = pfVar14[1] * DAT_00baa834;
                  *pfVar1 = fVar19;
                  cVar8 = FUN_00a10600(&DAT_00c7b640);
                  if (cVar8 != '\0') {
                    pfVar14 = (float *)FUN_006d82d0(&local_128);
                    fVar19 = pfVar14[1] * DAT_00baa834;
                    *pfVar1 = *pfVar14 * DAT_00baa834;
                    *(float *)(param_1 + 0x338) = fVar19;
                  }
                }
                *(undefined4 *)(param_1 + 0xba0) = 0x78;
              }
            }
          }
        }
      }
      else {
        iVar11 = FUN_006be840();
        local_128 = *(float *)(iVar11 + 0x33c);
        local_124 = *(float *)(iVar11 + 0x340);
        FUN_007e4940(&local_128,0);
        fVar19 = DAT_00baa3a4;
        fVar21 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
        *(float *)(param_1 + 0x36c) = fVar21;
        if (0 < *(int *)(param_1 + 0xb50)) {
          *(float *)(param_1 + 0x36c) = fVar21 * fVar19;
        }
      }
      if ((*(char *)(param_1 + 0xb40) != '\0') && (uVar9 = FUN_006eef60(), uVar9 % 3 == 0)) {
        FUN_006d6ba0(0x74,0x3f800000,0x3c,0,0x3f800000);
      }
      goto LAB_004fdf4d;
    }
    if (iVar11 != 8) goto LAB_004fdf4d;
    iVar11 = param_1 + 0x78;
    local_12c = iVar11;
    if (*(int *)(param_1 + 0x7c) == 0) {
LAB_004fda21:
      fVar19 = DAT_00baa304;
      if (((NAN(*(float *)(param_1 + 0x334)) || NAN(DAT_00c7b640)) !=
           (*(float *)(param_1 + 0x334) == DAT_00c7b640)) &&
         ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) !=
          (*(float *)(param_1 + 0x338) == DAT_00c7b644))) {
        fVar19 = DAT_00baa3e0;
      }
      fVar19 = fVar19 * *(float *)(param_1 + 0x36c);
    }
    else {
      cVar8 = FUN_0040add0(&DAT_00b1d560);
      if (cVar8 != '\0') {
        FUN_006d6ba0(0xf9,0x3f800000,10,0,0x3f800000);
        *(float *)(param_1 + 0x360) =
             *(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0x334) + *(float *)(param_1 + 0x360)
        ;
        *(float *)(param_1 + 0x364) =
             *(float *)(param_1 + 0x338) * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364)
        ;
        *(float *)(param_1 + 0x334) = DAT_00c7b640;
        *(float *)(param_1 + 0x338) = DAT_00c7b644;
        local_12c = iVar11;
      }
      if (*(int *)(param_1 + 0x7c) == 0) goto LAB_004fda21;
      cVar8 = FUN_0040add0("Shoot");
      if (cVar8 != '\0') {
        local_118 = 7.286752e-44;
        FUN_00956780();
        FUN_0092dc30(local_118,0x3f800000,0x14,0,0x3f800000,0);
        FUN_00703670(0xe);
        FUN_00703770(param_1 + 0x33c,0x3d0f5c29,0x3cf5c28f,10);
        AI_0043ef30();
        local_7c = 9;
        local_134 = 0x41200000;
        local_130 = 0;
        FUN_006cb2e0(param_1 + 0x33c,&local_134,8,local_110);
        if (((*(uint *)(param_1 + 0x168) & 0x20000000) == 0) &&
           (local_114 = 0.0,
           *(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0)) {
          do {
            piVar10 = (int *)FUN_00417870(local_114);
            local_11c = (float)piVar10[0xd0] - *(float *)(param_1 + 0x340);
            local_118 = (float)piVar10[0xcf] - *(float *)(param_1 + 0x33c);
            fVar19 = local_11c * local_11c + local_118 * local_118;
            local_120 = piVar10;
            FUN_00435a50();
            if (fVar19 < DAT_00baaa44) {
              local_128 = local_118;
              local_124 = local_11c;
              if (0.0 < fVar19) {
                local_128 = local_118 * (DAT_00baa454 / fVar19);
                local_124 = local_11c * (DAT_00baa454 / fVar19);
              }
              local_128 = local_128 * DAT_00baa6fc;
              local_124 = local_124 * DAT_00baa6fc;
              pcVar3 = *(code **)(*piVar10 + 0x54);
              FUN_00431310(param_1);
              (*pcVar3)(local_64,&local_128,0x41100000);
            }
            local_114 = (float)((int)local_114 + 1);
          } while ((uint)local_114 <
                   (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2))
          ;
        }
        if (*(int *)(param_1 + 0x34) != 0x38b) {
          FUN_006be840();
          iVar11 = FUN_0060af00(0xc,0);
          *(undefined4 *)(iVar11 + 0x33c) = *(undefined4 *)(param_1 + 0x33c);
          *(undefined4 *)(iVar11 + 0x340) = *(undefined4 *)(param_1 + 0x340);
          iVar12 = FUN_006be840();
          local_114 = *(float *)(iVar12 + 0x33c) - *(float *)(param_1 + 0x33c);
          local_11c = *(float *)(iVar12 + 0x340) - *(float *)(param_1 + 0x340);
          fVar20 = local_114 * local_114 + local_11c * local_11c;
          FUN_00435a50();
          fVar21 = local_114;
          fVar19 = local_11c;
          if (0.0 < fVar20) {
            fVar21 = local_114 * (DAT_00baa454 / fVar20);
            fVar19 = local_11c * (DAT_00baa454 / fVar20);
          }
          *(float *)(iVar11 + 0x334) = fVar21;
          *(float *)(iVar11 + 0x338) = fVar19;
          if (*(int *)(iVar11 + 0x3bc) != 0) {
            local_120 = (int *)(iVar11 + 0x3bc);
            FUN_004cf210(&local_120);
          }
          *(int *)(iVar11 + 0x3bc) = param_1;
          FUN_004cdcf0((int *)(iVar11 + 0x3bc));
          if (*(char *)(param_1 + 0xc63) == '\0') {
            uVar13 = 0xffffffff;
          }
          else {
            uVar13 = *(undefined4 *)(param_1 + 0xc64);
          }
          *(undefined4 *)(iVar11 + 0x450) = uVar13;
          uVar9 = *(uint *)(param_1 + 0x16c);
          *(uint *)(iVar11 + 0x168) =
               *(uint *)(iVar11 + 0x168) | *(uint *)(param_1 + 0x168) & 0x20000100;
          *(uint *)(iVar11 + 0x16c) = *(uint *)(iVar11 + 0x16c) | uVar9 & 0x100000;
          *(undefined4 *)(iVar11 + 0x478) = *(undefined4 *)(param_1 + 0xc38);
        }
      }
      if ((*(int *)(param_1 + 0x7c) == 0) || (cVar8 = FUN_0040ae70("Shoot"), cVar8 == '\0'))
      goto LAB_004fda21;
      fVar19 = *(float *)(param_1 + 0x36c) * DAT_00baa304;
    }
    *(float *)(param_1 + 0x36c) = fVar19;
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
    goto LAB_004fdf4d;
  }
  *(undefined4 *)(param_1 + 0xb64) = 4;
  ppbVar4 = *(byte ***)(param_1 + 0x7c);
  if (ppbVar4 == (byte **)0x0) {
LAB_004fded6:
    cVar8 = FUN_0040a5d0("WalkVert",1);
    if (cVar8 != '\0') {
      FUN_0040a1b0(uVar9);
      *(undefined *)(param_1 + 0x8c) = 1;
    }
  }
  else {
    ppbVar15 = ppbVar4;
    if (&DAT_0000000f < ppbVar4[5]) {
      ppbVar15 = (byte **)*ppbVar4;
    }
    pcVar16 = "WalkVert";
    do {
      bVar2 = *(byte *)ppbVar15;
      bVar18 = bVar2 < (byte)*pcVar16;
      if (bVar2 != *pcVar16) {
LAB_004fdeb8:
        uVar17 = -(uint)bVar18 | 1;
        goto LAB_004fdebd;
      }
      if (bVar2 == 0) break;
      bVar2 = *(byte *)((int)ppbVar15 + 1);
      bVar18 = bVar2 < ((byte *)pcVar16)[1];
      if (bVar2 != ((byte *)pcVar16)[1]) goto LAB_004fdeb8;
      ppbVar15 = (byte **)((int)ppbVar15 + 2);
      pcVar16 = (char *)((byte *)pcVar16 + 2);
    } while (bVar2 != 0);
    uVar17 = 0;
LAB_004fdebd:
    if ((uVar17 != 0) || ((*(byte *)(ppbVar4 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
    goto LAB_004fded6;
  }
  uVar7 = _UNK_00bac7bc;
  uVar6 = _UNK_00bac7b8;
  uVar5 = _UNK_00bac7b4;
  uVar24 = _UNK_00bac5fc;
  uVar23 = _UNK_00bac5f8;
  uVar22 = _UNK_00bac5f4;
  uVar13 = _DAT_00bac5f0;
  local_140 = 0;
  uStack_13c = 0;
  local_138 = 0;
  if ((undefined4 *)(param_1 + 0x1e4) != local_160) {
    *(undefined4 *)(param_1 + 0x1e4) = _DAT_00bac7b0;
    *(undefined4 *)(param_1 + 0x1e8) = uVar5;
    *(undefined4 *)(param_1 + 0x1ec) = uVar6;
    *(undefined4 *)(param_1 + 0x1f0) = uVar7;
    *(undefined8 *)(param_1 + 0x204) = 0;
    *(undefined4 *)(param_1 + 500) = uVar13;
    *(undefined4 *)(param_1 + 0x1f8) = uVar22;
    *(undefined4 *)(param_1 + 0x1fc) = uVar23;
    *(undefined4 *)(param_1 + 0x200) = uVar24;
    *(undefined4 *)(param_1 + 0x20c) = 0;
  }
LAB_004fdf4d:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

