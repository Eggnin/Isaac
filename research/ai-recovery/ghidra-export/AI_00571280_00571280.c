/* Local J460 decompiler output.
 * VA: 0x00571280
 * Entry: 00571280
 * Dispatcher: 0x006c2990
 * Types: 245
 * Identities: 245.0.0
 * Evidence: dispatcher=0x006c2990; end=0x005729a0; instructions=1332
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=245; identities=245.0.0; dispatcher=0x006c2990;
   end=0x005729a0; instructions=1332 */

void __fastcall AI_00571280(int *param_1)

{
  undefined8 *puVar1;
  float fVar2;
  byte bVar3;
  code *pcVar4;
  byte **ppbVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined *puVar9;
  char cVar10;
  uint uVar11;
  undefined4 uVar12;
  int iVar13;
  int *piVar14;
  undefined8 **ppuVar15;
  byte **ppbVar16;
  float *pfVar17;
  int iVar18;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 *puVar19;
  uint uVar20;
  bool bVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  char *pcVar26;
  undefined4 local_138;
  undefined4 uStack_134;
  undefined4 uStack_130;
  undefined4 uStack_12c;
  undefined4 local_128;
  undefined4 uStack_124;
  undefined4 uStack_120;
  undefined4 uStack_11c;
  undefined8 local_118;
  char local_10d;
  int *local_10c;
  undefined local_108 [4];
  undefined8 *local_104;
  undefined8 local_100;
  char local_f5;
  float local_f4;
  float local_f0;
  undefined8 *local_ec;
  undefined4 local_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 *local_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  undefined8 local_c8;
  int local_c0 [2];
  undefined local_b8 [8];
  float local_b0;
  float local_ac;
  char local_a8 [132];
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af502b;
  local_1c = ExceptionList;
  uVar11 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_ec = (undefined8 *)param_1[0x2dd];
  local_f5 = '\0';
  local_10d = '\0';
  local_10c = param_1;
  local_24 = uVar11;
  if (local_ec == (undefined8 *)0x3) {
    puStack_20 = &stack0xfffffffc;
    if (((param_1[0x5b] & 0x4000000U) != 0) &&
       (puStack_20 = &stack0xfffffffc, cVar10 = FUN_006b5b90(0), cVar10 != '\0')) {
      uVar12 = FUN_00435c70();
      (**(code **)(*param_1 + 0x24))(uVar12);
      local_100 = 0;
      if (param_1[0xb] == 0xb) {
        local_f4 = 2.350989e-38;
      }
      else {
        local_f4 = 0.0;
      }
      local_ec = (undefined8 *)0x0;
      pcVar4 = *(code **)(*(int *)param_1[0x2df] + 0x20);
      piVar14 = local_10c;
      if ((int *)local_10c[0xf2] != (int *)0x0) {
        piVar14 = (int *)local_10c[0xf2];
      }
      FUN_00431310(piVar14);
      (*pcVar4)(0x41700000,local_f4,local_ec,&local_138,0x1e);
      iVar13 = local_10c[0x2df];
      local_10c[0x2e0] = 0;
      fVar25 = (float)local_10c[0xd9] * DAT_00baa2d0;
      *(float *)(iVar13 + 0x360) =
           (float)local_10c[0xd8] * DAT_00baa2d0 + *(float *)(iVar13 + 0x360);
      *(float *)(iVar13 + 0x364) = fVar25 + *(float *)(iVar13 + 0x364);
    }
    goto LAB_00572921;
  }
  if (local_ec == (undefined8 *)0x1) {
    puVar9 = &stack0xfffffffc;
    if ((DAT_00baa454 < (float)param_1[0xe0]) && (puVar9 = &stack0xfffffffc, param_1[0xb] == 0xe)) {
      FUN_00417430(0,0x4000000);
      iVar13 = FUN_006ac760();
      puVar9 = puStack_20;
      if (iVar13 != 0) {
        uVar12 = FUN_006eef60();
        local_100 = CONCAT44(uVar12,(float)local_100);
        uVar20 = FUN_006eef60();
        pfVar17 = (float *)FUN_0067f070(local_108);
        iVar13 = FUN_006eef60();
        param_1 = local_10c;
        fVar25 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) * DAT_00ba9ff4
        ;
        fVar23 = fVar25 * pfVar17[1];
        fVar25 = fVar25 * *pfVar17;
        local_ac = fVar23 + fVar23 + (float)local_10c[0xd9];
        local_b0 = fVar25 + fVar25 + (float)local_10c[0xd8];
        piVar14 = (int *)FUN_00428b20(1000,0x8d,local_10c + 0xcf,&local_b0,0,uVar20 & 1,
                                      local_100._4_4_);
        piVar14[0xd] = 1;
        piVar14[0x117] = 0x3c;
        piVar14[0x118] = 0x3c;
        (**(code **)(*piVar14 + 0xc))();
        puVar9 = puStack_20;
      }
    }
    puStack_20 = puVar9;
    if (param_1[0xb] == 0x10) {
      if ((float)param_1[0xe0] <= DAT_00baa454) {
        piVar14 = param_1 + 0x2fb;
        if (param_1[0x2fb] != 0) {
          *(undefined *)(param_1[0x2fb] + 0x171) = 1;
          local_104 = (undefined8 *)(*piVar14 + 0x3bc);
          if (*(int *)local_104 != 0) {
            local_100 = CONCAT44(local_104,(float)local_100);
            FUN_004cf210((int)&local_100 + 4);
          }
          *(int *)local_104 = 0;
          if (*piVar14 != 0) {
            local_100 = CONCAT44(piVar14,(float)local_100);
            FUN_004cf210((int)&local_100 + 4);
          }
          *piVar14 = 0;
        }
      }
      else {
        cVar10 = FUN_006ac710(3,0);
        if ((cVar10 != '\0') &&
           (local_104 = (undefined8 *)0x0,
           *(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0)) {
          do {
            iVar13 = FUN_00417870(local_104);
            fVar25 = (float)param_1[0xd0] - *(float *)(iVar13 + 0x340);
            fVar23 = (float)param_1[0xcf] - *(float *)(iVar13 + 0x33c);
            fVar25 = fVar25 * fVar25 + fVar23 * fVar23;
            FUN_00435a50();
            if (fVar25 < *(float *)(iVar13 + 0x370) + DAT_00baa97c) {
              iVar6 = *(int *)(iVar13 + 0x1d90);
              iVar18 = iVar6 + 4;
              if (4 < iVar18) {
                iVar18 = 4;
              }
              *(int *)(iVar13 + 0x1d90) = iVar18;
              if (0 < iVar6 != 0 < iVar18) {
                *(uint *)(iVar13 + 0x1574) = *(uint *)(iVar13 + 0x1574) | 99;
                FUN_00763570();
              }
            }
            local_104 = (undefined8 *)((int)local_104 + 1);
          } while (local_104 <
                   (undefined8 *)
                   (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2));
        }
        if (param_1[0x2fb] == 0) {
          uVar12 = FUN_006eef60();
          piVar14 = (int *)FUN_00428b20(1000,0x70,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar12);
          FUN_004564b0(param_1);
          piVar14[0x37] = 0;
          piVar14[0x38] = -0x3f800000;
          piVar14[0xd5] = 10000;
          (**(code **)(*piVar14 + 0xc))();
          if (param_1[0x2fb] != 0) {
            local_100 = CONCAT44(param_1 + 0x2fb,(float)local_100);
            FUN_004cf210((int)&local_100 + 4);
          }
          param_1[0x2fb] = (int)piVar14;
          FUN_004cdcf0(param_1 + 0x2fb);
        }
      }
    }
    if ((param_1[0xb] == 0xf) && (iVar13 = FUN_006ac760(uVar11), iVar13 != 0)) {
      uVar12 = FUN_006eef60();
      piVar14 = (int *)FUN_00428b20(1000,0x2d,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar12);
      piVar14[0xd] = 1;
      iVar13 = FUN_006eef60();
      fVar25 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa280 + DAT_00baa3a4;
      fVar23 = fVar25 * DAT_00c37940;
      fVar25 = fVar25 * DAT_00c3793c;
      piVar14[0x117] = 0x3c;
      piVar14[0x3a] = (int)fVar23;
      piVar14[0x118] = 0x3c;
      piVar14[0x39] = (int)fVar25;
      (**(code **)(*piVar14 + 0xc))();
      param_1 = local_10c;
    }
LAB_0057272c:
    if ((param_1[0x5b] & 0x4000000U) != 0) {
      if (local_ec == (undefined8 *)0x2) {
        param_1[0xd4] =
             (int)((float)param_1[0x2ed] * (float)param_1[0xe7] * DAT_00baa2d0 +
                  (float)param_1[0x2ec]);
      }
      else {
        param_1[0xcd] = (int)DAT_00c7b640;
        param_1[0xce] = (int)DAT_00c7b644;
        fVar25 = (float)param_1[0x2ed] + DAT_00baa630;
        fVar23 = (float)param_1[0x2ed] * (float)param_1[0xe7] + (float)param_1[0x2ec];
        param_1[0x2ec] = (int)fVar23;
        param_1[0x2ed] = (int)fVar25;
        if (param_1[0xb] == 0xb) {
          fVar25 = fVar25 + DAT_00baa3a4;
          param_1[0x2ed] = (int)fVar25;
        }
        if (DAT_00baae04 <= fVar23) {
          param_1[0x61] = (fVar25 < DAT_00baad84) + 5;
        }
        else {
          param_1[0x61] = 3;
        }
        if (0.0 <= fVar23) {
          param_1[0x5b] = param_1[0x5b] & 0xfbffffff;
          param_1[0x5a] = param_1[0x5a];
          uVar12 = 0x1e7;
          param_1[0xd8] = (int)((float)param_1[0xd8] * DAT_00baa304);
          param_1[0xd9] = (int)((float)param_1[0xd9] * DAT_00baa304);
          if (param_1[0xb] != 0xb) {
            uVar12 = 0x45;
          }
          FUN_006d6ba0(uVar12,0x3f800000,2,0,0x3f800000);
          fVar25 = DAT_00baa7a4 - (float)param_1[0xe0];
          if (DAT_00baa7a4 - (float)param_1[0xe0] <= DAT_00baa454) {
            fVar25 = DAT_00baa454;
          }
          if (DAT_00baa784 <= fVar25) {
            fVar25 = DAT_00baa784;
          }
          FUN_00420a80(local_b8,"State%d",(int)fVar25);
          cVar10 = FUN_0040a5d0(local_b8,1);
          if (cVar10 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
            param_1 = local_10c;
          }
          param_1[0x2ec] = 0;
          fVar23 = 0.0;
          param_1[0x2ed] = 0;
          param_1[0x61] = 5;
          param_1[0x62] = 4;
        }
        param_1[0xd4] = (int)fVar23;
      }
    }
    goto LAB_00572921;
  }
  puStack_20 = &stack0xfffffffc;
  if (local_ec == (undefined8 *)0x2) goto LAB_0057272c;
  puStack_20 = &stack0xfffffffc;
  if (((param_1[0x5a] & 0x400U) != 0) && (puStack_20 = &stack0xfffffffc, param_1[0xb] == 0)) {
    param_1[0xb] = 1;
    puStack_20 = &stack0xfffffffc;
    local_d8 = (undefined4 *)FUN_0040cf00();
    uVar8 = s_gfx_grid_grid_poop_gold_png_00b61ae8._12_4_;
    uVar7 = s_gfx_grid_grid_poop_gold_png_00b61ae8._8_4_;
    uVar12 = s_gfx_grid_grid_poop_gold_png_00b61ae8._4_4_;
    local_c8 = 0x1f0000001b;
    *local_d8 = s_gfx_grid_grid_poop_gold_png_00b61ae8._0_4_;
    local_d8[1] = uVar12;
    local_d8[2] = uVar7;
    local_d8[3] = uVar8;
    *(undefined8 *)(local_d8 + 4) = s_gfx_grid_grid_poop_gold_png_00b61ae8._16_8_;
    *(undefined2 *)(local_d8 + 6) = s_gfx_grid_grid_poop_gold_png_00b61ae8._24_2_;
    *(char *)((int)local_d8 + 0x1a) = s_gfx_grid_grid_poop_gold_png_00b61ae8[0x1a];
    *(undefined *)((int)local_d8 + 0x1b) = 0;
    local_14 = 0;
    FUN_0040bf30(0,&local_d8);
    local_14 = 0xffffffff;
    uVar12 = extraout_ECX;
    if (0xf < local_c8._4_4_) {
      uVar11 = local_c8._4_4_ + 1;
      puVar19 = local_d8;
      if (0xfff < uVar11) {
        puVar19 = (undefined4 *)local_d8[-1];
        uVar11 = local_c8._4_4_ + 0x24;
        if (0x1f < (uint)((int)local_d8 + (-4 - (int)puVar19))) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(puVar19,uVar11);
      uVar12 = extraout_ECX_00;
    }
    FUN_0040c000(uVar12);
    local_f5 = '\x01';
  }
  if (param_1[0x2d9] != 0) {
    cVar10 = FUN_00417430(0,0x4000000);
    if (cVar10 == '\0') {
      local_ec = (undefined8 *)param_1[0xf2];
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa2d0);
      if ((((local_ec != (undefined8 *)0x0) && (*(int *)(local_ec + 5) == 1)) &&
          (param_1[0xb] == 0xc)) &&
         ((cVar10 = FUN_006ac710(0x3c,0), cVar10 != '\0' && (DAT_00baa454 < (float)param_1[0xe0]))))
      {
        if ((uint)param_1[0x300] < 3) {
          local_104 = (undefined8 *)0x0;
          FUN_0044bcc0(3,&local_104);
        }
        uVar11 = 0;
        fVar25 = (float)param_1[0x2ff];
        do {
          local_ac = fVar25;
          if (*(int *)(*(int *)(param_1[0x2fd] +
                               ((int)local_ac + uVar11 >> 2 & param_1[0x2fe] - 1U) * 4) +
                      ((int)local_ac + uVar11 & 3) * 4) == 0) {
            local_f4 = (float)FUN_007599d0(1,param_1 + 0xcf,0);
            if (local_f4 != 0.0) {
              local_ac = (float)param_1[0x2ff];
              uVar20 = (int)local_ac + uVar11 & 3;
              iVar13 = *(int *)(param_1[0x2fd] +
                               ((int)local_ac + uVar11 >> 2 & param_1[0x2fe] - 1U) * 4);
              local_ec = (undefined8 *)(iVar13 + uVar20 * 4);
              if (*(int *)(iVar13 + uVar20 * 4) != 0) {
                local_104 = local_ec;
                FUN_004cf210(&local_104);
              }
              fVar25 = local_f4;
              *(float *)local_ec = local_f4;
              FUN_004cdcf0(local_ec);
              if (*(int *)((int)fVar25 + 0x3bc) != 0) {
                local_104 = (undefined8 *)((int)fVar25 + 0x3bc);
                FUN_004cf210(&local_104);
              }
              *(int **)((int)fVar25 + 0x3bc) = param_1;
              FUN_004cdcf0((int **)((int)fVar25 + 0x3bc));
              FUN_006127b0(1);
            }
            break;
          }
          uVar11 = uVar11 + 1;
          fVar25 = (float)param_1[0x2ff];
        } while (uVar11 < 3);
      }
    }
    if (((NAN((float)param_1[0xcd]) || NAN(DAT_00c7b640)) == ((float)param_1[0xcd] == DAT_00c7b640))
       || ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) ==
           ((float)param_1[0xce] == DAT_00c7b644))) {
      FUN_004cdd80(param_1 + 0xcd,900);
      param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
      param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
    }
    fVar25 = DAT_00baa454;
    if (((*(char *)((int)param_1 + 0x173) == '\0') && (DAT_00baa454 < (float)param_1[0xe0])) &&
       (param_1[0x3c7] != -1)) {
      FUN_006d82d0(&local_100);
      fVar25 = DAT_00baa454;
      if (((NAN((float)local_100) || NAN(DAT_00c7b640)) == ((float)local_100 == DAT_00c7b640)) ||
         ((NAN(local_100._4_4_) || NAN(DAT_00c7b644)) == (local_100._4_4_ == DAT_00c7b644))) {
        fVar23 = (float)param_1[0xdb];
        local_ec = (undefined8 *)0x0;
        local_104 = (undefined8 *)(DAT_00baa454 - (float)param_1[0x2ee]);
        ppuVar15 = &local_104;
        if ((float)(undefined8 *)(DAT_00baa454 - (float)param_1[0x2ee]) <= 0.0) {
          ppuVar15 = &local_ec;
        }
        puVar1 = *ppuVar15;
        if (NAN(fVar23) == (fVar23 == 0.0)) {
          param_1[0xd9] =
               (int)(((float)param_1[0xe7] * local_100._4_4_ * (float)*ppuVar15) / fVar23 +
                    (float)param_1[0xd9]);
          param_1[0xd8] =
               (int)(((float)param_1[0xe7] * (float)local_100 * (float)puVar1) / fVar23 +
                    (float)param_1[0xd8]);
        }
        fVar23 = (float)param_1[0xe7] * DAT_00baa198 + (float)param_1[0x2ec];
        if (fVar25 <= fVar23) {
          fVar23 = fVar25;
        }
        param_1[0x2ee] = (int)fVar23;
      }
      else {
        param_1[0x2ee] = 0;
      }
    }
    param_1[5] = 0;
    fVar23 = 0.0;
    iVar13 = param_1[2];
    iVar18 = param_1[3] - iVar13 >> 0x1f;
    if ((param_1[3] - iVar13) / 0x38 + iVar18 != iVar18) {
      local_ec = (undefined8 *)0x0;
      local_104 = (undefined8 *)0x0;
      do {
        if ((*(int *)(iVar13 + 0x10 + (int)local_ec) == 1000) &&
           (*(int *)(iVar13 + 0x14 + (int)local_ec) == 0x33)) {
          *(undefined4 *)(iVar13 + (int)local_ec) = 0;
        }
        local_104 = (undefined8 *)((int)local_104 + 1);
        fVar23 = *(float *)(iVar13 + (int)local_ec) + (float)param_1[5];
        local_ec = local_ec + 7;
        param_1[5] = (int)fVar23;
        iVar13 = param_1[2];
      } while (local_104 < (undefined8 *)((param_1[3] - iVar13) / 0x38));
    }
    fVar2 = DAT_00baa7a4 - (float)param_1[0xe0];
    if (DAT_00baa7a4 - (float)param_1[0xe0] <= fVar25) {
      fVar2 = fVar25;
    }
    if (DAT_00baa784 <= fVar2) {
      fVar2 = DAT_00baa784;
    }
    local_f4 = (float)(int)fVar2;
    if ((*(char *)((int)param_1 + 0x173) != '\0') || (0.0 < fVar23)) {
      if ((*(char *)((int)param_1 + 0x173) != '\0') || (local_f0 = fVar25, (param_1[6] & 4U) != 0))
      {
        local_f0 = DAT_00baa75c;
      }
      uVar11 = FUN_006eef60();
      if (uVar11 % 3 == 0) {
        local_f0 = local_f0 + DAT_00baa454;
      }
      if (((param_1[0xb] != 1) && (param_1[0xb] != 0xb)) &&
         (uVar11 = FUN_006eef60(), uVar11 % 3 == 0)) {
        local_f0 = local_f0 + DAT_00baa454;
      }
      if ((param_1[0xb] == 1) || (fVar25 = local_f0, param_1[0xb] == 0xb)) {
        iVar13 = FUN_006eef60();
        fVar25 = ((float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                  DAT_00ba9ff4 * DAT_00baa1f8 + DAT_00baa198) * local_f0;
      }
      iVar13 = param_1[2];
      iVar18 = (param_1[3] - iVar13) / 0x38;
      if (iVar18 == 0) {
        puVar19 = (undefined4 *)FUN_00431310(0);
      }
      else {
        puVar19 = (undefined4 *)(iVar13 + -0x28 + iVar18 * 0x38);
        local_e8 = *puVar19;
        uStack_e4 = puVar19[1];
        uStack_e0 = puVar19[2];
        uStack_dc = puVar19[3];
        puVar19 = (undefined4 *)(iVar13 + -0x18 + iVar18 * 0x38);
        local_d8 = (undefined4 *)*puVar19;
        uStack_d4 = puVar19[1];
        uStack_d0 = puVar19[2];
        uStack_cc = puVar19[3];
        puVar19 = &local_e8;
        local_c8 = *(undefined8 *)(iVar13 + -8 + iVar18 * 0x38);
      }
      fVar23 = DAT_00baa784;
      local_138 = *puVar19;
      uStack_134 = puVar19[1];
      uStack_130 = puVar19[2];
      uStack_12c = puVar19[3];
      local_128 = puVar19[4];
      uStack_124 = puVar19[5];
      uStack_120 = puVar19[6];
      uStack_11c = puVar19[7];
      local_118 = *(undefined8 *)(puVar19 + 8);
      if (0.0 < fVar25) {
        fVar2 = (float)param_1[0xe0];
        fVar24 = fVar2 - fVar25;
        local_f5 = '\x01';
        if (fVar24 <= DAT_00baa454) {
          fVar24 = DAT_00baa454;
        }
        fVar22 = DAT_00baa7a4 - fVar24;
        param_1[0xe0] = (int)fVar24;
        if (fVar22 <= DAT_00baa454) {
          fVar22 = DAT_00baa454;
        }
        if (fVar23 <= fVar22) {
          fVar22 = fVar23;
        }
        local_f0 = (float)(int)fVar22;
        switch(param_1[0xb]) {
        case 1:
          break;
        case 0xb:
          break;
        case 0xc:
          break;
        case 0xd:
          break;
        case 0xe:
          break;
        case 0xf:
          break;
        case 0x10:
        }
        local_ec = (undefined8 *)(param_1 + 0xcf);
        local_100 = *(undefined8 *)(param_1 + 0xcf);
        FUN_00716db0(param_1[0xfb],(int)((fVar23 - fVar2) * DAT_00baaae0),
                     (int)(fVar25 * DAT_00baaae0),0,param_1[0xd0],&local_138);
        if ((int)local_f4 < (int)local_f0) {
          if (local_f4 == 0.0) {
            uVar11 = 0;
          }
          else {
            uVar11 = FUN_006eef60();
            uVar11 = uVar11 % (uint)local_f4;
          }
          local_100 = *local_ec;
          FUN_00716760(uVar11 + 1);
          uVar12 = FUN_006eef60();
          iVar13 = FUN_009be140(0x240,uVar12,0);
          local_100 = CONCAT44(iVar13,(float)local_100);
          local_104 = (undefined8 *)((int)local_f0 - (int)local_f4);
          param_1 = local_10c;
          if ((iVar13 != 0) && (0 < (int)local_104)) {
            do {
              if ((local_f0 == 7.006492e-45) ||
                 ((cVar10 = FUN_0044bfb0(2), cVar10 != '\0' ||
                  (uVar11 = FUN_006eef60(), (uVar11 & 1) == 0)))) {
                FUN_006393a0(local_100._4_4_,&DAT_00c7b640);
              }
              local_104 = (undefined8 *)((int)local_104 + -1);
              param_1 = local_10c;
            } while (local_104 != (undefined8 *)0x0);
          }
        }
        if ((local_f0 == 7.006492e-45) && ((int)local_f4 < 5)) {
          local_100 = *(undefined8 *)(param_1 + 0xcf);
          FUN_00716b10();
          local_100 = *(undefined8 *)(param_1 + 0xcf);
          FUN_007178c0(param_1[0xfb],0,0,&local_138);
          if (param_1[0xb] == 0xd) {
            uVar12 = FUN_006eef60();
            piVar14 = (int *)FUN_00428b20(1000,0x33,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar12);
            piVar14[0x117] = 0x96;
            piVar14[0x118] = 0x96;
            (**(code **)(*piVar14 + 0xc))();
          }
          else if (param_1[0xb] == 0xe) {
            iVar13 = FUN_006eef60();
            local_f0 = 0.0;
            local_100 = CONCAT44((float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]
                                        ) * DAT_00ba9ff4 * DAT_00baab30,(float)local_100);
            do {
              fVar25 = local_f0;
              iVar13 = FUN_006eef60();
              local_f4 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa8d0 +
                         (((float)(int)fVar25 * DAT_00baa910 + local_100._4_4_) - DAT_00baa854);
              uVar12 = FUN_006eef60();
              uVar11 = FUN_006eef60();
              local_f4 = local_f4 * DAT_00baa088;
              iVar13 = FUN_006eef60();
              fVar25 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                       DAT_00ba9ff4;
              local_104 = (undefined8 *)(fVar25 + fVar25 + DAT_00baa7e8);
              fVar25 = local_f4;
              FUN_0041d540();
              local_b0 = fVar25 * (float)local_104;
              fVar25 = local_f4;
              FUN_0041d520();
              local_ac = fVar25 * (float)local_104;
              piVar14 = (int *)FUN_00428b20(1000,0x8d,local_ec,&local_b0,0,uVar11 & 1,uVar12);
              piVar14[0xd] = 1;
              piVar14[0x117] = 0x96;
              piVar14[0x118] = 0x96;
              (**(code **)(*piVar14 + 0xc))();
              local_f0 = (float)((int)local_f0 + 1);
              param_1 = local_10c;
            } while ((int)local_f0 < 8);
          }
          if ((param_1[0xf5] != 0) || ((param_1[0x5b] & 0x4000000U) != 0)) {
            (**(code **)(*param_1 + 0x28))();
            goto LAB_00572921;
          }
        }
      }
      *(undefined *)((int)param_1 + 0x173) = 0;
      param_1[3] = param_1[2];
      param_1[5] = 0;
      param_1[6] = 0;
      param_1[7] = 0;
    }
    cVar10 = local_10d;
    if (local_f5 == '\0') goto LAB_00572921;
    goto LAB_005721d7;
  }
  param_1[0x5b] = param_1[0x5b];
  param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x20d0011;
  param_1[0x3c6] = 7;
  switch(param_1[0xb]) {
  case 1:
    FUN_00420a80(local_a8,"gfx/grid/grid_poop_gold.png");
    break;
  default:
    iVar13 = FUN_007e9020(3);
    pcVar26 = "gfx/grid/grid_poop_%d.png";
    goto LAB_00571615;
  case 0xb:
    FUN_00420a80(local_a8,"gfx/grid/grid_poop_stone.png");
    break;
  case 0xc:
    FUN_00420a80(local_a8,"gfx/grid/grid_poop_corn.png");
    break;
  case 0xd:
    FUN_00420a80(local_a8,"gfx/grid/grid_poop_flaming.png");
    break;
  case 0xe:
    FUN_00420a80(local_a8,"gfx/grid/grid_poop_stinky.png");
    break;
  case 0xf:
    FUN_00420a80(local_a8,"gfx/grid/grid_poop_black.png");
    break;
  case 0x10:
    iVar13 = FUN_007e9020(3);
    pcVar26 = "gfx/grid/grid_poop_white_%d.png";
LAB_00571615:
    FUN_00420a80(local_a8,pcVar26,iVar13 + 1);
  }
  pcVar26 = local_a8;
  local_b0 = 0.0;
  local_ac = 2.101948e-44;
  local_c0[0] = 0;
  do {
    cVar10 = *pcVar26;
    pcVar26 = pcVar26 + 1;
  } while (cVar10 != '\0');
  FUN_0040ccd0(local_a8,(int)pcVar26 - (int)(local_a8 + 1));
  local_14 = 1;
  FUN_0040bf30(0,local_c0);
  local_14 = 0xffffffff;
  uVar12 = extraout_ECX_01;
  if (0xf < (uint)local_ac) {
    uVar11 = (int)local_ac + 1;
    iVar13 = local_c0[0];
    if (0xfff < uVar11) {
      iVar13 = *(int *)(local_c0[0] + -4);
      uVar11 = (int)local_ac + 0x24;
      if (0x1f < (local_c0[0] - iVar13) - 4U) {
                    /* WARNING: Subroutine does not return */
        _invalid_parameter_noinfo_noreturn();
      }
    }
    FUN_00aef15c(iVar13,uVar11);
    uVar12 = extraout_ECX_02;
  }
  FUN_0040c000(uVar12);
  iVar13 = FUN_007e9020(2);
  *(bool *)(param_1 + 0x52) = iVar13 != 0;
  if ((param_1[0xb] == 0xd) && (DAT_00baa454 < (float)param_1[0xe0])) {
    uVar12 = FUN_006eef60();
    piVar14 = (int *)FUN_00428b20(1000,0x33,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar12);
    FUN_004564b0(param_1);
    piVar14[0x117] = -1;
    piVar14[0x118] = -1;
    if (param_1[0x2fb] != 0) {
      local_104 = (undefined8 *)(param_1 + 0x2fb);
      FUN_004cf210(&local_104);
    }
    param_1[0x2fb] = (int)piVar14;
    FUN_004cdcf0(param_1 + 0x2fb);
    (**(code **)(*piVar14 + 0xc))();
    *(undefined *)((int)piVar14 + 0x171) = 0;
  }
  param_1[0x2d9] = 3;
  cVar10 = '\x01';
LAB_005721d7:
  fVar25 = DAT_00baa7a4 - (float)param_1[0xe0];
  if (DAT_00baa7a4 - (float)param_1[0xe0] <= DAT_00baa454) {
    fVar25 = DAT_00baa454;
  }
  if (DAT_00baa784 <= fVar25) {
    fVar25 = DAT_00baa784;
  }
  iVar13 = (int)fVar25;
  local_100 = CONCAT44(iVar13,(float)local_100);
  if ((iVar13 == 1) && (cVar10 != '\0')) {
    cVar10 = FUN_0040a5d0("Appear",1);
    if (cVar10 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
    goto LAB_00572921;
  }
  FUN_00420a80(&uStack_d0,"State%d",iVar13);
  ppbVar5 = (byte **)param_1[0x1f];
  if (ppbVar5 == (byte **)0x0) {
LAB_0057229e:
    cVar10 = FUN_0040a5d0(&uStack_d0,1);
    if (cVar10 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
      param_1 = local_10c;
    }
  }
  else {
    ppbVar16 = ppbVar5;
    if (&DAT_0000000f < ppbVar5[5]) {
      ppbVar16 = (byte **)*ppbVar5;
    }
    puVar19 = &uStack_d0;
    do {
      bVar3 = *(byte *)ppbVar16;
      bVar21 = bVar3 < *(byte *)puVar19;
      if (bVar3 != *(byte *)puVar19) {
LAB_00572280:
        uVar11 = -(uint)bVar21 | 1;
        goto LAB_00572285;
      }
      if (bVar3 == 0) break;
      bVar3 = *(byte *)((int)ppbVar16 + 1);
      bVar21 = bVar3 < *(byte *)((int)puVar19 + 1);
      if (bVar3 != *(byte *)((int)puVar19 + 1)) goto LAB_00572280;
      ppbVar16 = (byte **)((int)ppbVar16 + 2);
      puVar19 = (undefined4 *)((int)puVar19 + 2);
    } while (bVar3 != 0);
    uVar11 = 0;
LAB_00572285:
    if ((uVar11 != 0) || ((*(byte *)(ppbVar5 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
    goto LAB_0057229e;
  }
  if (local_100._4_4_ == 7.006492e-45) {
    param_1[0x62] = 0;
    param_1[0xd7] = 0;
    param_1[0xd5] = 0xc1c;
  }
LAB_00572921:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

