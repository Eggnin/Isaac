/* Local J460 decompiler output.
 * VA: 0x00569170
 * Entry: 00569170
 * Dispatcher: 0x006c2990
 * Types: 912
 * Identities: 912.0.0,912.10.0,912.100.0,912.100.1,912.100.2,912.20.0,912.30.0
 * Evidence: dispatcher=0x006c2990; end=0x0056c7c0; instructions=2994
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=912;
   identities=912.0.0,912.10.0,912.100.0,912.100.1,912.100.2,912.20.0,912.30.0;
   dispatcher=0x006c2990; end=0x0056c7c0; instructions=2994 */

void __fastcall AI_00569170(int *param_1)

{
  int *piVar1;
  bool bVar2;
  int iVar3;
  undefined *puVar4;
  char cVar5;
  uint uVar6;
  undefined4 uVar7;
  int *piVar8;
  undefined4 *puVar9;
  int iVar10;
  char *pcVar11;
  int **ppiVar12;
  float *pfVar13;
  int iVar14;
  int iVar15;
  undefined4 extraout_ECX;
  uint uVar16;
  int *piVar17;
  int extraout_EDX;
  code *pcVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  undefined8 uVar23;
  undefined4 uVar24;
  undefined4 uVar25;
  undefined4 local_204 [10];
  undefined local_1dc [40];
  float local_1b4;
  int *local_1b0;
  float local_1ac;
  float local_1a8;
  undefined local_1a4 [4];
  int local_1a0;
  float local_19c;
  int *local_198;
  float local_194;
  int *local_190;
  float local_18c;
  float local_188;
  int local_184;
  float local_180;
  float local_17c;
  int *local_178;
  undefined local_174 [4];
  int local_170;
  float local_16c;
  int *local_168;
  int *local_164;
  int *local_160;
  int *local_15c;
  float local_158;
  int *local_154;
  float local_150;
  float local_14c;
  int *local_148;
  int *local_144;
  int *local_140;
  float local_13c;
  int *local_138;
  int *local_134;
  char local_12d;
  int local_12c;
  char *local_128;
  int *local_124;
  undefined local_120 [4];
  float local_11c;
  float local_118;
  undefined4 local_114;
  undefined4 local_10c;
  undefined4 local_8c;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined local_68 [16];
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  undefined4 *local_3c;
  float local_38;
  undefined local_34 [4];
  int local_30;
  float local_2c;
  int *local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  iVar3 = iRam00c34e8c;
  iVar15 = iRam00c34e88;
  iVar14 = iRam00c34e84;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4f53;
  local_1c = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar10 = *(int *)(DAT_00c71678 + 0x18300);
  local_124 = *(int **)(iVar10 + 0x18);
  local_17c = *(float *)(iVar10 + 0x14);
  local_194 = (float)local_124 + DAT_00baa904;
  local_180 = *(float *)(iVar10 + 0x1c);
  local_1b0 = *(int **)(iVar10 + 0x20);
  local_12c = (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8];
  local_140 = (int *)((float)local_124 - DAT_00baa904);
  local_1b4 = local_17c - DAT_00baa9a0;
  local_184 = iVar10;
  local_15c = param_1;
  local_134 = local_1b0;
  local_24 = uVar6;
  if (param_1[0x2dd] == 1) {
    if (param_1[0xc] == 0) {
      puStack_20 = &stack0xfffffffc;
      if (*(char *)((int)param_1 + 0x173) != '\0') {
        puStack_20 = &stack0xfffffffc;
        FUN_00568a90();
      }
    }
    else {
      puStack_20 = &stack0xfffffffc;
      if (param_1[0xc] != 1) {
        iVar14 = param_1[0xef];
        if (iVar14 == 0) {
          puStack_20 = &stack0xfffffffc;
          uVar7 = FUN_00435c70();
          (**(code **)(*param_1 + 0x24))(uVar7);
        }
        else {
          if (*(float *)(iVar14 + 0x380) <= (float)param_1[0xe0]) {
            param_1[0xe0] = (int)*(float *)(iVar14 + 0x380);
          }
          else {
            *(int *)(iVar14 + 0x380) = param_1[0xe0];
          }
          puStack_20 = &stack0xfffffffc;
          if (*(char *)((int)param_1 + 0x173) != '\0') {
            puStack_20 = &stack0xfffffffc;
            uVar23 = FUN_00435c70();
            (*(code *)((ulonglong)uVar23 >> 0x20))((int)uVar23);
            FUN_00568a90();
            iVar10 = local_184;
          }
        }
      }
    }
    if (param_1[0xc] == 0) {
      iVar10 = *(int *)(iVar10 + 0x11f8);
      local_150 = (local_180 + local_17c) * DAT_00baa2d0;
      local_14c = ((float)local_134 - (float)local_124) * _DAT_00baa2a0 + (float)local_124;
      if (*(char *)(iVar10 + 0x8c) == '\0') {
        FUN_00945130(&local_150);
        *(undefined *)(iVar10 + 0x8c) = 1;
      }
    }
    if (0.0 < (float)param_1[5]) {
      param_1[5] = 0;
      iVar10 = param_1[2];
      local_124 = (int *)0x0;
      iVar14 = param_1[3] - iVar10 >> 0x1f;
      if ((param_1[3] - iVar10) / 0x38 + iVar14 != iVar14) {
        local_128 = (char *)0x0;
        do {
          if (((*(int *)((int)local_128 + iVar10 + 0x10) == param_1[10]) ||
              (*(int *)((int)local_128 + iVar10 + 0x18) == param_1[10])) &&
             ((bool)((byte)(*(uint *)((int)local_128 + iVar10 + 0x30) >> 1) & 1) ==
              ((param_1[0x5a] & 0x20000000U) != 0))) {
            *(undefined4 *)((int)local_128 + iVar10) = 0;
          }
          pfVar13 = (float *)((int)local_128 + iVar10);
          local_124 = (int *)((int)local_124 + 1);
          local_128 = (char *)((int)local_128 + 0x38);
          param_1[5] = (int)((float)param_1[5] + *pfVar13);
          iVar10 = param_1[2];
        } while (local_124 < (int *)((param_1[3] - iVar10) / 0x38));
      }
    }
    goto LAB_0056c759;
  }
  if (param_1[0x2d9] == 0) {
    if (param_1 + 0x79 != (int *)&DAT_00c34e80) {
      param_1[0x79] = _DAT_00c34e80;
      param_1[0x7a] = iVar14;
      param_1[0x7b] = iVar15;
      param_1[0x7c] = iVar3;
      iVar3 = iRam00c34e9c;
      iVar15 = iRam00c34e98;
      iVar14 = iRam00c34e94;
      param_1[0x7d] = _DAT_00c34e90;
      param_1[0x7e] = iVar14;
      param_1[0x7f] = iVar15;
      param_1[0x80] = iVar3;
      *(undefined8 *)(param_1 + 0x81) = DAT_00c34ea0;
      param_1[0x83] = DAT_00c34ea8;
    }
    param_1[0x3c6] = 1;
    puStack_20 = &stack0xfffffffc;
    if (param_1[0xc] == 0) {
      puStack_20 = &stack0xfffffffc;
      piVar8 = (int *)FUN_00812d00(&local_2c);
      param_1[0xcf] = *piVar8;
      param_1[0xd0] = (int)local_194;
      param_1[0xd4] = 0x42a00000;
      param_1[0xd5] = 8000;
      uVar6 = 0;
      do {
        FUN_008167e0(uVar6);
        iVar14 = DAT_00c71678;
        uVar6 = uVar6 + 1;
      } while (uVar6 < 8);
      piVar8 = (int *)(DAT_00c71678 + 0x1baa8);
      local_124 = (int *)0x0;
      *(undefined4 *)(*(int *)(iVar10 + 4) + 0x18) = 0;
      iVar10 = *(int *)(iVar14 + 0x18300);
      local_14c = *(float *)(iVar10 + 0x20) - DAT_00baaa00;
      local_150 = (*(float *)(iVar10 + 0x1c) + *(float *)(iVar10 + 0x14)) * DAT_00baa2d0;
      if (*(int *)(iVar14 + 0x1baac) - *piVar8 >> 2 != 0) {
        do {
          iVar10 = piVar8[1];
          if (iVar10 - *piVar8 >> 2 == 0) {
            FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
            iVar10 = piVar8[1];
            iVar14 = DAT_00c71678;
          }
          puVar9 = (undefined4 *)*piVar8;
          if (local_124 < (uint)(iVar10 - (int)puVar9 >> 2)) {
            puVar9 = puVar9 + (int)local_124;
          }
          uVar25 = 0;
          uVar24 = 0;
          uVar7 = FUN_009bc690(&local_16c,*puVar9,&local_150,iVar14 + 0x1baa8);
          FUN_007cd950(uVar7,uVar24,uVar25);
          piVar8 = (int *)(DAT_00c71678 + 0x1baa8);
          local_124 = (int *)((int)local_124 + 1);
          iVar14 = DAT_00c71678;
        } while (local_124 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *piVar8 >> 2));
      }
      iVar10 = *(int *)(iVar14 + 0x18300);
      local_140 = (int *)0x0;
      local_128 = (char *)iVar10;
      if (*(int *)(iVar10 + 0x1264) != 0) {
        do {
          iVar14 = *(int *)(*(int *)(iVar10 + 0x125c) + (int)local_140 * 4);
          if ((iVar14 != 0) && (*(int *)(iVar14 + 0x28) == 3)) {
            puVar9 = (undefined4 *)FUN_0063b4a0(&local_2c,0);
            *(undefined4 *)(iVar14 + 0x33c) = *puVar9;
            *(undefined4 *)(iVar14 + 0x340) = puVar9[1];
          }
          local_140 = (int *)((int)local_140 + 1);
        } while (local_140 < *(uint *)(iVar10 + 0x1264));
      }
      param_1 = local_15c;
      FUN_00568cc0();
      uVar7 = FUN_006eef60();
      local_124 = (int *)FUN_00428b20(1000,0x8c,&local_1b4,&DAT_00c7b640,0,0,uVar7);
      local_2c = 0.0;
      local_140 = local_124 + 0x12;
      local_28 = (int *)0xf;
      local_3c = (undefined4 *)0x0;
      local_3c = (undefined4 *)FUN_0040cf00();
      uVar25 = s_gfx_backdrop_07x_corpse_bottomwa_00b61920._12_4_;
      uVar24 = s_gfx_backdrop_07x_corpse_bottomwa_00b61920._8_4_;
      uVar7 = s_gfx_backdrop_07x_corpse_bottomwa_00b61920._4_4_;
      local_2c = 5.465064e-44;
      local_28 = (int *)0x2f;
      *local_3c = s_gfx_backdrop_07x_corpse_bottomwa_00b61920._0_4_;
      local_3c[1] = uVar7;
      local_3c[2] = uVar24;
      local_3c[3] = uVar25;
      *(undefined (*) [16])(local_3c + 4) = s_gfx_backdrop_07x_corpse_bottomwa_00b61920._16_16_;
      local_3c[8] = s_gfx_backdrop_07x_corpse_bottomwa_00b61920._32_4_;
      *(undefined2 *)(local_3c + 9) = s_gfx_backdrop_07x_corpse_bottomwa_00b61920._36_2_;
      *(char *)((int)local_3c + 0x26) = s_gfx_backdrop_07x_corpse_bottomwa_00b61920[0x26];
      *(undefined *)((int)local_3c + 0x27) = 0;
      local_14 = 0;
      FUN_0040bd50(&local_3c,1);
      local_14 = 0xffffffff;
      if (0xf < local_28) {
        uVar6 = (int)local_28 + 1;
        puVar9 = local_3c;
        if (0xfff < uVar6) {
          puVar9 = (undefined4 *)local_3c[-1];
          uVar6 = (int)local_28 + 0x24;
          if (0x1f < (uint)((int)local_3c + (-4 - (int)puVar9))) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(puVar9,uVar6);
      }
      uVar6 = 1;
      if (1 < (uint)local_124[0x32]) {
        do {
          iVar10 = FUN_0040b220(uVar6);
          uVar6 = uVar6 + 1;
          *(undefined *)(iVar10 + 0x74) = 0;
          param_1 = local_15c;
        } while (uVar6 < (uint)local_124[0x32]);
      }
      piVar8 = local_140;
      cVar5 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (((cVar5 != '\0') && (piVar8[0xd] != 0)) && (FUN_00408e00(), piVar8[0xd] != 0)) {
        *(undefined *)(piVar8 + 0x11) = 0;
      }
      iVar10 = FUN_0040b220(0);
      *(undefined4 *)(iVar10 + 0x78) = 0;
      *(undefined4 *)(iVar10 + 0x7c) = 0;
      *(undefined4 *)(iVar10 + 0x80) = 2;
      *(undefined4 *)(iVar10 + 0x84) = 1;
      *(undefined4 *)(iVar10 + 0x88) = 1;
      local_124[0xd7] = 0;
      uVar7 = FUN_006eef60();
      piVar8 = (int *)FUN_00428b20(1000,0x8c,&local_1b4,&DAT_00c7b640,0,0,uVar7);
      local_2c = 0.0;
      local_28 = (int *)&DAT_0000000f;
      local_3c = (undefined4 *)0x0;
      local_128 = (char *)piVar8;
      FUN_0040ccd0("gfx/backdrop/07x_corpse_bottomwall.anm2",0x27);
      local_14 = 1;
      FUN_0040bd50(&local_3c,1);
      local_14 = 0xffffffff;
      if (&DAT_0000000f < local_28) {
        piVar17 = (int *)((int)local_28 + 1);
        puVar9 = local_3c;
        if ((int *)0xfff < piVar17) {
          puVar9 = (undefined4 *)local_3c[-1];
          piVar17 = local_28 + 9;
          if (0x1f < (uint)((int)local_3c + (-4 - (int)puVar9))) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(puVar9,piVar17);
      }
      iVar10 = FUN_0040b220(0);
      *(undefined *)(iVar10 + 0x74) = 0;
      cVar5 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (((cVar5 != '\0') && (piVar8[0x1f] != 0)) && (FUN_00408e00(), piVar8[0x1f] != 0)) {
        *(undefined *)(piVar8 + 0x23) = 0;
      }
      local_140 = (int *)0x270;
      *(int *)((int)local_128 + 0x35c) = 1;
      param_1[0x2f1] = 0;
      FUN_00956780();
      FUN_0092dc30(local_140,0x3f800000,2,0,0x3f800000,0);
    }
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    param_1[0x2d9] = 3;
    puVar4 = puStack_20;
    goto LAB_0056c6a7;
  }
  puVar4 = &stack0xfffffffc;
  if (param_1[0xc] != 0) goto LAB_0056c6a7;
  puVar4 = &stack0xfffffffc;
  switch(param_1[0x2d9]) {
  case 3:
    fVar19 = DAT_00baa9a0;
    puStack_20 = &stack0xfffffffc;
    cVar5 = FUN_0040a550(&DAT_00b1a4ec);
    if (cVar5 != '\0') {
      FUN_0040a380(&DAT_00b1bc54,0);
      fVar19 = DAT_00baa9a0;
    }
    iVar10 = param_1[0x104];
    if (0 < iVar10) {
      iVar10 = iVar10 - local_12c;
      param_1[0x104] = iVar10;
    }
    iVar14 = param_1[0x2fb];
    if (iVar14 == 0) {
      if (param_1[0x2f1] == -1) {
        cVar5 = FUN_004073b0();
        puVar4 = puStack_20;
        if (cVar5 != '\0') {
          param_1[0x2f1] = 0;
          FUN_006b6470(0x26e,2,0,0x3f800000);
          FUN_0040a380("GroundPound3",0);
          param_1[0x2d9] = 0xc;
          param_1[0x104] = 0;
          puVar4 = puStack_20;
        }
      }
      else if (param_1[0x2f1] < 1) {
        puVar4 = puStack_20;
        if (iVar10 < 1) {
          if ((float)param_1[0xe9] < (float)(param_1[0x2f0] * 0x654 + 0x474)) {
            local_124 = (int *)FUN_006d6c20();
            uVar16 = FUN_006eef60();
            if ((uVar16 % 6 == 0) && (2 < param_1[0x2ea])) {
              param_1[0x2d9] = 0x13;
              FUN_0040a380("Shoot1",0);
              FUN_006b6470(0x26f,2,0,0x3f800000);
              param_1[0x2ea] = -1;
            }
            else {
              uVar16 = FUN_006eef60();
              if (uVar16 % 3 == 0) {
                param_1[0x2d9] = 10;
                uVar16 = FUN_006eef60();
                pcVar11 = "WristAttackLeft";
                if ((uVar16 & 1) == 0) {
                  pcVar11 = "WristAttackRight";
                }
                FUN_0040a380(pcVar11,0);
                FUN_006b6470(0x276,2,0,0x3f800000);
              }
              else {
                iVar10 = FUN_0067f010();
                if ((iVar10 == 0) && ((int)local_124 < 0xf)) {
                  param_1[0x2d9] = 9;
                  uVar16 = FUN_006eef60();
                  pcVar11 = "GroundPound";
                  if ((uVar16 & 1) == 0) {
                    pcVar11 = "GroundPound2";
                  }
                  FUN_0040a380(pcVar11,0);
                  uVar16 = FUN_0040a4d0("GroundPound");
                  FUN_006b6470((uVar16 & 0xff ^ 1) + 0x26c,2,0,0x3f800000);
                }
                else {
                  param_1[0x2d9] = 8;
                  uVar16 = FUN_006eef60();
                  pcVar11 = "ThrowKnife";
                  if ((uVar16 & 1) == 0) {
                    pcVar11 = "ThrowKnife2";
                  }
                  FUN_0040a380(pcVar11,0);
                }
              }
            }
            param_1[0x2ea] = param_1[0x2ea] + 1;
            param_1[0x104] = 0;
            puVar4 = puStack_20;
          }
          else {
            param_1[0x2d9] = 0xd;
            param_1[0x2f0] = param_1[0x2f0] + 1;
            FUN_0040a380("SummonBegin",0);
            param_1[0x104] = 0;
            param_1[0x2f1] = 0;
            puVar4 = puStack_20;
          }
        }
      }
      else {
        cVar5 = FUN_004073b0();
        puVar4 = puStack_20;
        if (cVar5 != '\0') {
          FUN_006d0c60(local_34,0x390,0x14);
          piVar8 = (int *)0x0;
          local_14 = 2;
          iVar10 = 0;
          if (local_28 != (int *)0x0) {
            local_124 = (int *)0x0;
            do {
              iVar14 = *(int *)(local_30 + (int)piVar8 * 4);
              pfVar13 = (float *)(iVar14 + 0x340);
              if (*pfVar13 <= (float)param_1[0xd0] + DAT_00baaa30 &&
                  (float)param_1[0xd0] + DAT_00baaa30 != *pfVar13) {
                pfVar13 = (float *)(iVar14 + 0x33c);
                if ((float)param_1[0xcf] < *pfVar13 || (float)param_1[0xcf] == *pfVar13) {
                  local_124 = (int *)((int)local_124 + 1);
                }
                else {
                  iVar10 = iVar10 + 1;
                }
              }
              piVar8 = (int *)((int)piVar8 + 1);
            } while (piVar8 < local_28);
            if ((0 < iVar10) || (0 < (int)local_124)) {
              local_128 = "ScrapeAttack";
              pcVar11 = "ScrapeAttack2";
              if (iVar10 <= (int)local_124) {
                pcVar11 = "ScrapeAttack";
              }
              FUN_0040a380(pcVar11,0);
              param_1[0x2d9] = 0xb;
              param_1[0x2e8] = 1 - param_1[0x2e8];
            }
          }
          local_14 = 0xffffffff;
          FUN_004175b0();
          puVar4 = puStack_20;
        }
      }
    }
    else {
      local_124 = (int *)((float)param_1[0xd0] + fVar19);
      fVar19 = *(float *)(iVar14 + 0x37c);
      fVar21 = *(float *)(*(int *)(iVar14 + 0x330) + 0x44);
      local_12d = '\0';
      fVar20 = DAT_00baa83c;
      cVar5 = '\0';
      if (fVar19 < fVar21 + DAT_00baa7a4) {
        piVar8 = local_124;
        if ((NAN(fVar19) || NAN(fVar21)) != (fVar19 == fVar21)) {
          fVar19 = *(float *)(iVar14 + 0x334) * *(float *)(iVar14 + 0x334) +
                   *(float *)(iVar14 + 0x338) * *(float *)(iVar14 + 0x338);
          FUN_00435a50();
          iVar14 = param_1[0x2fb];
          piVar8 = local_124;
          fVar20 = DAT_00baa83c;
          cVar5 = local_12d;
          if (DAT_00baa6fc <= fVar19) {
            fVar20 = DAT_00baa854;
            cVar5 = '\x01';
          }
        }
      }
      else {
        piVar8 = (int *)((float)local_124 - DAT_00baaa30);
      }
      fVar19 = *(float *)(iVar14 + 0x39c) / (float)param_1[0xe7];
      fVar21 = *(float *)(iVar14 + 0x360) * fVar20 * fVar19 + *(float *)(iVar14 + 0x33c);
      puVar4 = puStack_20;
      if ((*(float *)(iVar14 + 0x364) < 0.0) &&
         (*(float *)(iVar14 + 0x364) * fVar20 * fVar19 + *(float *)(iVar14 + 0x340) < (float)piVar8)
         ) {
        fVar19 = (local_180 + local_17c) * DAT_00baa2d0;
        if (cVar5 == '\0') {
          pcVar11 = "ScrapeAttack2";
          if (fVar19 <= fVar21) {
            pcVar11 = "ScrapeAttack";
          }
          FUN_0040a380(pcVar11,1);
          param_1[0x2d9] = 0xb;
          uVar16 = FUN_006eef60();
          iVar10 = uVar16 % 3 + 0x26c;
        }
        else {
          pcVar11 = "GroundPound2";
          if (fVar19 <= fVar21) {
            pcVar11 = "GroundPound";
          }
          FUN_0040a380(pcVar11,1);
          param_1[0x2d9] = 9;
          uVar16 = FUN_0040a4d0("GroundPound");
          iVar10 = (uVar16 & 0xff ^ 1) + 0x26c;
        }
        goto LAB_0056c1b5;
      }
    }
    break;
  case 5:
    puStack_20 = &stack0xfffffffc;
    cVar5 = FUN_0040a550(&DAT_00b1a4ec);
    puVar4 = puStack_20;
    if (cVar5 != '\0') {
      FUN_0040a380(&DAT_00b1bc54,0);
      param_1[0x2d9] = 3;
      puVar4 = puStack_20;
    }
    break;
  case 8:
    puStack_20 = &stack0xfffffffc;
    cVar5 = FUN_0040b030("Sound");
    if (cVar5 != '\0') {
      FUN_009568e0(0x272,2,0,0x3f800000);
      FUN_009568e0(0x21c,2,0,0x3f800000);
      FUN_00703670(8);
    }
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 != '\0') {
      FUN_009568e0(0x273,2,0,0x3f800000);
      FUN_009568e0(0xfc,2,0,0x3f4ccccd);
      FUN_009568e0(0x12d,2,0,0x3f800000);
      ppiVar12 = (int **)FUN_006b6af0(&local_2c,"ShootPos");
      local_128 = (char *)param_1[0xcf];
      local_154 = *ppiVar12;
      local_124 = (int *)param_1[0xd0];
      local_134 = ppiVar12[1];
      uVar7 = FUN_006eef60();
      local_18c = (float)local_128 + (float)local_154 + DAT_00ba9fe4;
      local_150 = 0.0;
      local_14c = 15.0;
      local_188 = (float)local_124 + (float)local_134 + DAT_00baa950;
      piVar8 = (int *)FUN_00428b20(1000,0xb6,&local_18c,&local_150,param_1,0,uVar7);
      FUN_006a92a0(param_1);
      (**(code **)(*piVar8 + 0xc))();
    }
    goto LAB_0056a095;
  case 9:
    puStack_20 = &stack0xfffffffc;
    if (param_1[0x2fb] != 0) {
      puStack_20 = &stack0xfffffffc;
      pfVar13 = (float *)FUN_006b6af0(&local_2c,"ShootPos");
      iVar10 = param_1[0x2fb];
      local_150 = (*pfVar13 + (float)param_1[0xcf] + DAT_00ba9fe4) - *(float *)(iVar10 + 0x33c);
      local_14c = (pfVar13[1] + (float)param_1[0xd0] + DAT_00baa9a0) - *(float *)(iVar10 + 0x340);
      pfVar13 = (float *)FUN_00a10100(&local_2c,0x41200000);
      fVar19 = *(float *)(iVar10 + 0x334);
      local_150 = fVar19 + *pfVar13;
      fVar21 = *(float *)(iVar10 + 0x338);
      local_14c = fVar21 + pfVar13[1];
      fVar19 = fVar21 * fVar21 + fVar19 * fVar19;
      FUN_00435a50();
      puVar9 = (undefined4 *)FUN_00a10100(&local_16c,fVar19);
      uVar7 = puVar9[1];
      *(undefined4 *)(iVar10 + 0x334) = *puVar9;
      *(undefined4 *)(iVar10 + 0x338) = uVar7;
    }
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 != '\0') {
      FUN_009568e0(0x34,2,0,0x3f800000);
      FUN_00703670(0xc);
      pfVar13 = (float *)FUN_006b6af0(&local_2c,"ShootPos");
      iVar10 = param_1[0x2fb];
      local_164 = (int *)((float)param_1[0xcf] + *pfVar13 + DAT_00ba9fe4);
      local_160 = (int *)(pfVar13[1] + (float)param_1[0xd0] + DAT_00baa950);
      local_154 = local_160;
      local_128 = (char *)local_164;
      if (iVar10 == 0) {
        pfVar13 = (float *)FUN_00812d00(&local_16c);
        local_150 = *pfVar13 - (float)local_128;
        local_14c = pfVar13[1] - (float)local_154;
        FUN_00a10030(&local_148);
        uVar16 = 0xfffffffa;
        do {
          local_124 = (int *)((((float)uVar16 * DAT_00baa9a0) / DAT_00baa7a4) * DAT_00baa088);
          piVar8 = local_124;
          FUN_0041d540();
          local_128 = (char *)piVar8;
          piVar8 = local_124;
          FUN_0041d520();
          local_154 = piVar8;
          iVar10 = FUN_006eef60();
          fVar20 = (float)local_148 * (float)local_128;
          fVar19 = (float)local_144 * (float)local_128;
          local_128 = (char *)(uVar16 & 1);
          fVar21 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa7a4 + DAT_00baa6fc;
          local_13c = (fVar20 - (float)local_144 * (float)local_154) * fVar21;
          local_138 = (int *)(((float)local_148 * (float)local_154 + fVar19) * fVar21);
          if ((int *)local_128 != (int *)0x0) {
            local_150 = (float)local_164 + local_13c;
            local_14c = (float)local_160 + (float)local_138;
            FUN_004d8b50(&local_13c,0xc1000000);
          }
          if ((int *)local_128 == (int *)0x0) {
            piVar8 = local_124;
            FUN_0041d540();
            local_128 = (char *)piVar8;
            piVar8 = local_124;
            FUN_0041d520();
            local_13c = ((float)local_128 * (float)local_148 - (float)local_144 * (float)piVar8) *
                        DAT_00baa848;
            local_138 = (int *)(((float)local_148 * (float)piVar8 +
                                (float)local_128 * (float)local_144) * DAT_00baa848);
            AI_0043ef30();
            local_18c = local_13c + (float)local_164;
            local_114 = 0xbd23d70a;
            local_188 = (float)local_138 + (float)local_160;
            local_10c = 0x3fb33333;
            iVar10 = FUN_006cb2e0(&local_18c,&local_13c,0,local_120);
            *(undefined4 *)(iVar10 + 0x30) = 1;
          }
          uVar16 = uVar16 + 1;
        } while ((int)uVar16 < 7);
      }
      else {
        *(uint *)(iVar10 + 0x168) = *(uint *)(iVar10 + 0x168) | 0x40000;
        *(undefined4 *)(iVar10 + 0x16c) = *(undefined4 *)(iVar10 + 0x16c);
        pcVar18 = *(code **)(*(int *)param_1[0x2fb] + 0x24);
        FUN_00431310(local_15c);
        (*pcVar18)(&local_4c);
        param_1 = local_15c;
        iVar10 = local_15c[0x2fb];
        if ((*(int *)(iVar10 + 0x28) == 0x390) && (*(int *)(iVar10 + 0x2c) == 100)) {
          FUN_00567d50(iVar10);
        }
        FUN_00568980(1);
      }
      FUN_006b66c0(&local_164,param_1 + 0x79);
      FUN_00703770(&local_164,0x3d23d70a,0x3ccccccd,0xd);
    }
LAB_0056a095:
    cVar5 = FUN_0040a550(&DAT_00b1a4ec);
    puVar4 = puStack_20;
    if (cVar5 != '\0') {
LAB_0056a0ab:
      FUN_0040a380(&DAT_00b1bc54,0);
LAB_0056a0b7:
      param_1[0x2d9] = 3;
      param_1[0x104] = 0x32;
      puVar4 = puStack_20;
    }
    break;
  case 10:
    puStack_20 = &stack0xfffffffc;
    cVar5 = FUN_0040b030("Sound");
    if (cVar5 != '\0') {
      FUN_006b6470(0x283,2,0,0x3f800000);
    }
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 != '\0') {
      pfVar13 = (float *)FUN_006b6af0(&local_2c,"ShootPos");
      local_198 = (int *)0xc1a00000;
      local_128 = (char *)0x0;
      local_19c = 0.0;
      local_124 = (int *)&DAT_0000000f;
      local_148 = (int *)((float)param_1[0xcf] + *pfVar13 + 0.0);
      local_144 = (int *)(pfVar13[1] + (float)param_1[0xd0] + DAT_00baa950);
      do {
        fVar19 = ((float)(int)local_128 - 0.0) / DAT_00baa7b8;
        if (fVar19 <= 0.0) {
          fVar19 = 0.0;
        }
        if (DAT_00baa454 <= fVar19) {
          fVar19 = DAT_00baa454;
        }
        piVar8 = (int *)((fVar19 * DAT_00baaa00 + DAT_00baa8d0) * DAT_00baa088);
        local_154 = piVar8;
        FUN_0041d540();
        local_134 = piVar8;
        FUN_0041d520();
        uVar7 = FUN_006eef60();
        iVar10 = FUN_006eef60();
        local_150 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa75c + DAT_00baa7a4;
        local_14c = local_150 * (float)local_154;
        local_150 = local_150 * (float)local_134;
        local_160 = (int *)((float)local_134 * DAT_00baa75c);
        local_138 = (int *)((float)local_154 * DAT_00baa75c);
        local_18c = (float)local_160 + (float)local_148;
        local_188 = (float)local_138 + (float)local_144;
        piVar8 = (int *)FUN_00428b20(0x390,0x1e,&local_18c,&local_150,param_1,0,uVar7);
        local_178 = (int *)FUN_006be840();
        if (piVar8[0xf1] != 0) {
          local_190 = piVar8 + 0xf1;
          FUN_004cf210(&local_190);
        }
        piVar8[0xf1] = (int)local_178;
        if (local_178 != (int *)0x0) {
          FUN_004cdcf0(piVar8 + 0xf1);
        }
        piVar8[0x2e9] = (int)local_124;
        iVar10 = FUN_006eef60();
        fVar21 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa198 + DAT_00baa354;
        piVar8[0x30e] = (int)fVar21;
        fVar21 = fVar21 * (float)piVar8[0xed];
        fVar19 = fVar21 * DAT_00c3793c;
        piVar8[0x3a] = (int)(fVar21 * DAT_00c37940);
        piVar8[0x39] = (int)fVar19;
        (**(code **)(*piVar8 + 0xc))();
        iVar10 = FUN_006eef60();
        local_1ac = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa75c + DAT_00baa7a4;
        local_1a8 = local_1ac * (float)local_154;
        local_1ac = local_1ac * (float)local_134;
        local_16c = (float)local_148 + (float)local_160;
        local_168 = (int *)((float)local_144 + (float)local_138);
        FUN_006d7cf0(&local_19c,param_1 + 0x79,&local_1ac);
        local_124 = local_124 + 2;
        local_128 = (char *)((int)local_128 + 1);
      } while ((int)local_124 < 0x4f);
      local_16c = 0.0;
      local_168 = (int *)0x40c00000;
      local_138 = (int *)&DAT_00000005;
      FUN_006b31b0(&local_138,param_1,param_1 + 0x79,&local_16c,0x40200000);
      FUN_006b6470(0x284,2,0,0x3f800000);
      uVar25 = 0x3f800000;
      uVar24 = 0;
      uVar7 = 2;
      uVar16 = FUN_006eef60(2,0,0x3f800000);
      FUN_006b6470((~uVar16 & 1) * 2 + 0x278,uVar7,uVar24,uVar25);
    }
    cVar5 = FUN_0040a550(&DAT_00b1a4ec);
    puVar4 = puStack_20;
    if (cVar5 != '\0') {
      FUN_0040a380(&DAT_00b1bc54,0);
      param_1[0x2d9] = 3;
      param_1[0x104] = 0x5a;
      puVar4 = puStack_20;
    }
    break;
  case 0xb:
    puStack_20 = &stack0xfffffffc;
    cVar5 = FUN_0040b030("Shoot");
    puVar4 = puStack_20;
    if (cVar5 == '\0') break;
    FUN_00703670(8);
    FUN_006b6c20(&local_4c,"ShootPos");
    if (DAT_00ba9fe4 < local_2c) {
      fVar19 = (float)param_1[0xd3];
      fVar21 = (float)param_1[0xd4];
      local_4c = local_4c + fVar19;
      local_48 = local_48 + fVar21;
      local_44 = local_44 + fVar19;
      local_40 = local_40 + fVar21;
      local_3c = (undefined4 *)((float)local_3c + fVar19);
      local_38 = local_38 + fVar21;
      cVar5 = FUN_00431760(5);
      if (cVar5 != '\0') {
        iVar10 = FUN_006b5f10(1);
        *(undefined4 *)(iVar10 + 4) = 1;
        FUN_0042eef0(&local_4c);
      }
      FUN_0041a790(local_1a4,&local_4c,0xffffffff);
      local_14 = 3;
      local_124 = (int *)0x0;
      if (local_198 != (int *)0x0) {
        do {
          piVar8 = *(int **)(local_1a0 + (int)local_124 * 4);
          local_134 = piVar8;
          if (((piVar8 != param_1) && (piVar8[0x62] != 0)) && (piVar8[0x61] != 4)) {
            if ((piVar8[10] == 0x390) && (piVar8[0xb] == 100)) {
              bVar2 = true;
            }
            else {
              bVar2 = false;
            }
            if (!bVar2) {
              FUN_006a9ba0(local_1dc,&DAT_00c7b640);
              local_168 = (int *)0x0;
              local_16c = 0.0;
              cVar5 = FUN_00945470(&local_16c);
              if (cVar5 != '\0') {
                local_128 = (char *)((float)piVar8[0xcf] - (float)param_1[0xcf]);
                local_154 = (int *)((float)piVar8[0xd0] - (float)param_1[0xd0]);
                fVar19 = (float)local_128 * (float)local_128 + (float)local_154 * (float)local_154;
                FUN_00435a50();
                piVar17 = local_154;
                piVar1 = (int *)local_128;
                if (DAT_00ba9fe4 < fVar19) {
                  piVar17 = (int *)((DAT_00baa454 / fVar19) * (float)local_154);
                  piVar1 = (int *)((DAT_00baa454 / fVar19) * (float)local_128);
                }
                fVar19 = (float)piVar17 * DAT_00baa81c;
                piVar8[0xd8] = (int)((float)piVar1 * DAT_00baa81c + (float)piVar8[0xd8]);
                piVar8[0xd9] = (int)(fVar19 + (float)piVar8[0xd9]);
                if ((piVar8[10] == 1) || (piVar8[10] == 3)) {
                  pcVar18 = *(code **)(*piVar8 + 0x20);
                  FUN_00431310(param_1);
                  puVar9 = &uStack_74;
                  uVar7 = 0x40000000;
                }
                else {
                  pcVar18 = *(code **)(*piVar8 + 0x20);
                  FUN_00431310(param_1);
                  puVar9 = local_204;
                  uVar7 = 0x42c80000;
                }
                (*pcVar18)(uVar7,0,0,puVar9,0x1e);
                piVar8 = local_134;
              }
              if ((piVar8[10] == 0x390) && (piVar8[0xb] == 0x14)) {
                local_128 = (char *)0x282;
                FUN_00956780();
                FUN_0092dc30(local_128,0x3f800000,2,0,0x3f800000,0);
              }
            }
          }
          local_124 = (int *)((int)local_124 + 1);
        } while (local_124 < local_198);
      }
      local_14 = 0xffffffff;
      FUN_004175b0();
    }
    if ((param_1[0x2fb] != 0) &&
       (pfVar13 = (float *)(param_1[0x2fb] + 0x340),
       *pfVar13 <= (float)param_1[0xd0] + DAT_00baaa44 &&
       (float)param_1[0xd0] + DAT_00baaa44 != *pfVar13)) {
      iVar10 = FUN_006be840();
      local_148 = (int *)(*(float *)(iVar10 + 0x33c) - *(float *)(param_1[0x2fb] + 0x33c));
      local_144 = (int *)(*(float *)(iVar10 + 0x340) - *(float *)(param_1[0x2fb] + 0x340));
      FUN_00a0ffc0();
      FUN_006b6470(0x4d,2,0,0x3f800000);
      puVar9 = (undefined4 *)FUN_00a10100(&local_2c,0x41800000);
      iVar10 = param_1[0x2fb];
      *(undefined4 *)(iVar10 + 0x360) = *puVar9;
      *(undefined4 *)(iVar10 + 0x364) = puVar9[1];
      iVar10 = param_1[0x2fb];
      fVar21 = *(float *)(iVar10 + 0x334) * *(float *)(iVar10 + 0x334) +
               *(float *)(iVar10 + 0x338) * *(float *)(iVar10 + 0x338);
      FUN_00435a50();
      fVar19 = fVar21 + DAT_00baa154;
      if (DAT_00baa6fc <= fVar21 + DAT_00baa154) {
        fVar19 = DAT_00baa6fc;
      }
      puVar9 = (undefined4 *)FUN_00a10100(&local_16c,fVar19);
      uVar7 = puVar9[1];
      *(undefined4 *)(iVar10 + 0x334) = *puVar9;
      *(undefined4 *)(iVar10 + 0x338) = uVar7;
      fVar19 = *(float *)(param_1[0x2fb] + 0x37c);
      pfVar13 = (float *)(*(int *)(param_1[0x2fb] + 0x330) + 0x44);
      if ((NAN(fVar19) || NAN(*pfVar13)) != (fVar19 == *pfVar13)) {
        uVar7 = FUN_006be840();
        FUN_006a9320(uVar7);
      }
    }
    goto LAB_0056a0b7;
  case 0xc:
    puStack_20 = &stack0xfffffffc;
    cVar5 = FUN_0040b030(&DAT_00b619dc);
    if (cVar5 != '\0') {
      param_1[0xce] = (int)local_194;
      FUN_005688c0(4);
    }
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 != '\0') {
      param_1[0x2ec] = param_1[0xd0];
      param_1[0x2ed] = 0;
      FUN_009568e0(0x34,2,0,0x3f800000);
      FUN_00703670(0xc);
      pfVar13 = (float *)FUN_006b6af0(&local_2c,"ShootPos");
      local_13c = *pfVar13 + (float)param_1[0xcf] + DAT_00ba9fe4;
      local_138 = (int *)(pfVar13[1] + (float)param_1[0xd0] + DAT_00baa950);
      FUN_006b66c0(&local_13c,param_1 + 0x79);
      FUN_00703770(&local_13c,0x3d23d70a,0x3ccccccd,0xd);
      pfVar13 = (float *)FUN_006b6af0(&local_2c,"ShootPos2");
      local_13c = (float)param_1[0xcf] + *pfVar13 + DAT_00ba9fe4;
      local_138 = (int *)(pfVar13[1] + (float)param_1[0xd0] + DAT_00baa950);
      FUN_006b66c0(&local_13c,param_1 + 0x79);
      FUN_00703770(&local_13c,0x3d23d70a,0x3ccccccd,0xd);
    }
    cVar5 = FUN_0040b090("Shoot");
    if ((cVar5 != '\0') || (cVar5 = FUN_004073b0(), cVar5 != '\0')) {
      param_1[0x2ec] = (int)((float)param_1[0xe7] * DAT_00baa87c + (float)param_1[0x2ec]);
      iVar10 = FUN_006ac760();
      if (iVar10 != 0) {
        FUN_006d0c60(local_34,0x390,0x14);
        local_14 = 4;
        local_154 = (int *)0x0;
        iVar10 = local_30;
        piVar8 = local_28;
        if (local_28 != (int *)0x0) {
          do {
            piVar17 = *(int **)(iVar10 + (int)local_154 * 4);
            local_128 = (char *)piVar17;
            if (((piVar17 != (int *)0x0) &&
                (((iVar10 = local_30, 1 < *(int *)(DAT_00c71678 + 0x26614) && (piVar17[10] == 1)) ||
                 (piVar17[10] - 10U < 0x3de)))) &&
               ((float)piVar17[0xd0] <= (float)param_1[0x2ec] &&
                (float)param_1[0x2ec] != (float)piVar17[0xd0])) {
              uVar7 = FUN_006eef60();
              local_16c = (float)piVar17[0xcf];
              local_168 = (int *)piVar17[0xd0];
              piVar8 = (int *)FUN_00428b20(1000,0x3e,&local_16c,&DAT_00c7b640,param_1,0,uVar7);
              (**(code **)(*piVar8 + 0xc))();
              piVar17[0x5a] = piVar17[0x5a] | 0x40000;
              piVar17[0x5b] = piVar17[0x5b];
              pcVar18 = *(code **)(*piVar17 + 0x24);
              FUN_00431310(param_1);
              (*pcVar18)(&uStack_74);
              AI_0043ef30();
              local_114 = 0x3fc00000;
              iVar10 = FUN_006eef60();
              local_11c = local_11c -
                          (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa7e8;
              iVar10 = FUN_006eef60();
              local_8c = 0xf;
              local_19c = *(float *)((int)local_128 + 0x33c);
              local_198 = *(int **)((int)local_128 + 0x340);
              local_118 = (DAT_00baad84 -
                          (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa81c) - (float)param_1[0x2ed];
              FUN_006cb2e0(&local_19c,&DAT_00c7b640,0,local_120);
              param_1[0x2ed] = (int)((float)param_1[0x2ed] + DAT_00baa6fc);
              iVar10 = local_30;
              piVar8 = local_28;
            }
            local_154 = (int *)((int)local_154 + 1);
          } while (local_154 < piVar8);
        }
        local_14 = 0xffffffff;
        FUN_004175b0();
      }
    }
    cVar5 = FUN_0040a550(&DAT_00b1a4ec);
    if (cVar5 != '\0') {
      FUN_0040a380(&DAT_00b1bc54,0);
    }
    param_1[0x104] = param_1[0x104] + local_12c;
    cVar5 = FUN_004073b0();
    puVar4 = puStack_20;
    if ((cVar5 != '\0') && (0x2d < extraout_EDX)) {
      param_1[0x2d9] = 3;
      param_1[0x104] = 0x32;
    }
    break;
  case 0xd:
    puStack_20 = &stack0xfffffffc;
    cVar5 = FUN_0040a550(&DAT_00b1a4ec);
    if (-1 < param_1[0x104]) {
      if (cVar5 != '\0') {
        FUN_0040a380("LaserAttackLoop",0);
      }
      cVar5 = FUN_0040b030(&DAT_00b619dc);
      if (cVar5 != '\0') {
        param_1[0xce] = (int)local_140;
        FUN_005688c0(0);
      }
      cVar5 = FUN_0040b030("Sound");
      if (cVar5 != '\0') {
        FUN_006b6470(0x274,2,0,0x3f800000);
      }
      cVar5 = FUN_0040b030("Shoot");
      if (cVar5 != '\0') {
        uVar16 = FUN_006eef60();
        param_1[0x2f1] = 1;
        param_1[0x2e8] = uVar16 & 1;
        param_1[0x2ec] = 0x41f00000;
      }
      cVar5 = FUN_0040b090("Shoot");
      if ((cVar5 != '\0') || (cVar5 = FUN_004073b0(), cVar5 != '\0')) {
        FUN_00703670(4);
        iVar10 = FUN_006ac760();
        if (iVar10 != 0) {
          local_138 = (int *)(local_17c + DAT_00baa87c);
          iVar10 = FUN_006eef60();
          local_158 = ((local_180 - DAT_00baa87c) - (float)local_138) *
                      (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                      DAT_00ba9ff4 + (float)local_138;
          local_154 = (int *)((float)local_134 - DAT_00baa87c);
          iVar10 = FUN_006eef60();
          local_154 = (int *)((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                              DAT_00ba9ff4 * DAT_00baa904 + (float)local_154);
          uVar7 = FUN_00407170();
          FUN_00703330(&local_158,4,1,0x40c00000,uVar7,0x47c35000,0x20000);
          uVar16 = FUN_006eef60();
          if (uVar16 % 3 == 0) {
            FUN_006d7cf0(&DAT_00c7b640,&DAT_00c34e80,&DAT_00c7b640);
          }
        }
      }
      iVar10 = param_1[0x104];
      param_1[0x104] = iVar10 + local_12c;
      puVar4 = puStack_20;
      if (0x78 < iVar10 + local_12c) {
        FUN_0040a380("LaserAttackEnd",0);
        param_1[0x2d9] = 3;
        param_1[0x104] = -1;
        puVar4 = puStack_20;
      }
      break;
    }
    puVar4 = puStack_20;
    if (cVar5 == '\0') break;
    goto LAB_0056a0ab;
  case 0x10:
    puStack_20 = &stack0xfffffffc;
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 != '\0') {
      iVar14 = param_1[0x2f0];
      if (((iVar14 == 0) || (iVar14 == 1)) || (iVar14 == 3)) {
        piVar8 = (int *)FUN_0044bc90(1);
        if (*piVar8 == 0) {
          piVar8 = (int *)FUN_0044bc90(2);
          if (*piVar8 != 0) {
            ppiVar12 = (int **)FUN_0044bc90(2);
            (**(code **)(**ppiVar12 + 0x28))();
            uVar7 = 2;
            goto LAB_0056b7ea;
          }
        }
        else {
          ppiVar12 = (int **)FUN_0044bc90(1);
          (**(code **)(**ppiVar12 + 0x28))();
          uVar7 = 1;
LAB_0056b7ea:
          FUN_0044bc90(uVar7);
          FUN_006b5b50();
        }
        local_138 = (int *)((float)param_1[0xd3] + (float)param_1[0xcf]);
        local_160 = (int *)((float)param_1[0xd0] + (float)param_1[0xd4]);
        pfVar13 = (float *)FUN_006b6af0(&local_2c,"ShootPos");
        local_18c = (float)local_138 + *pfVar13;
        local_188 = (float)local_160 + pfVar13[1];
        FUN_006b31b0(param_1[0xcc] + 0x60,param_1,param_1 + 0x79,&DAT_00c7b640,0x3f800000);
        FUN_006d7cf0(&DAT_00c7b640,param_1 + 0x79,&DAT_00c7b640);
        FUN_006b6470(0x8d,2,0,0x3f800000);
        iVar14 = param_1[0x2f0];
      }
      if (iVar14 == 2) {
        local_138 = (int *)((float)param_1[0xd3] + (float)param_1[0xcf]);
        local_16c = 0.0;
        local_168 = (int *)0xc1200000;
        local_160 = (int *)((float)param_1[0xd0] + (float)param_1[0xd4]);
        pfVar13 = (float *)FUN_006b6af0(&local_2c,"ShootPos");
        local_150 = ((float)local_138 + *pfVar13) - DAT_00ba9fe4;
        local_14c = ((float)local_160 + pfVar13[1]) - DAT_00baadc0;
        piVar8 = (int *)FUN_0096f310(6,&local_150,0x42b40000,0x2f,&local_16c,param_1,0);
        local_58 = 0;
        local_78 = _DAT_00bac7b0;
        uStack_74 = _UNK_00bac7b4;
        uStack_70 = _UNK_00bac7b8;
        uStack_6c = _UNK_00bac7bc;
        local_54 = 0;
        local_68 = _DAT_00bac7f0;
        local_50 = 0;
        (**(code **)(*piVar8 + 0x3c))(&local_78,0xffffffff,0xff,0,1);
        piVar8[0xd6] = 0x447a0000;
        FUN_006b6830(&local_150,param_1 + 0x79);
        iVar14 = param_1[0x2f0];
        iVar10 = local_184;
      }
      if (iVar14 == 3) {
        FUN_006b6830(param_1 + 0xcf,param_1 + 0x79);
        piVar8 = (int *)FUN_0044bc90(0);
        if (*piVar8 != 0) {
          FUN_0044bc90(0);
          FUN_006a92a0(0);
          FUN_0044bc90(0);
          uVar7 = FUN_00452bf0(&local_3c);
          local_14 = 5;
          FUN_0040a360(uVar7,0);
          local_14 = 0xffffffff;
          FUN_0040d040();
          FUN_0044bc90(0);
          uVar7 = FUN_0040a780();
          FUN_0040a720(uVar7);
          fVar21 = DAT_00c33d3c + (float)param_1[0xcd];
          fVar19 = DAT_00c33d40 + (float)param_1[0xce];
          piVar8 = (int *)FUN_0044bc90(0);
          iVar10 = *piVar8;
          *(float *)(iVar10 + 0x334) = fVar21;
          *(float *)(iVar10 + 0x338) = fVar19;
          piVar8 = (int *)FUN_0044bc90(0);
          *(undefined4 *)(*piVar8 + 0x358) = 0x42c80000;
        }
        FUN_006c0f30(0x390,10,0,0xffffffff);
        FUN_0044bc90(0);
        FUN_006b5b50();
        FUN_0040a380("ChargeLoop",0);
        param_1[0x5a] = param_1[0x5a] & 0xffffffee;
        param_1[0x2d9] = 0x10;
        param_1[0x2f0] = 0;
        param_1[0x2f1] = 0;
        param_1[0xe0] = param_1[0xe1];
        param_1[0xd8] = 0;
        param_1[0xd9] = 0x41800000;
        param_1[0x62] = 4;
        param_1[0x5b] = param_1[0x5b];
        *(undefined *)(param_1 + 0xec) = 0;
        param_1[0xd3] = 0;
        param_1[0xd4] = 0x42700000;
        local_16c = (float)param_1[0xcf] + DAT_00ba9fe4;
        local_168 = (int *)((float)param_1[0xd0] + DAT_00baa9d0);
        FUN_00944d10(&local_16c);
        goto LAB_0056c759;
      }
      param_1[0x2f0] = iVar14 + 1;
    }
    if (((param_1[0x2f0] == 3) && (cVar5 = FUN_006ac710(2,0), cVar5 != '\0')) &&
       (local_134 = (int *)0x1, 1 < *(int *)(iVar10 + 0x10) + -1)) {
LAB_0056bc51:
      iVar14 = *(int *)(iVar10 + 0xc);
      local_12d = '\0';
      local_128 = (char *)0x1;
      if (iVar14 + -1 < 2) goto LAB_0056c068;
      while ((((((-1 < (int)local_128 && ((int)local_128 < iVar14)) && (-1 < (int)local_134)) &&
               (((int)local_134 < *(int *)(iVar10 + 0x10) &&
                (piVar8 = (int *)(iVar14 * (int)local_134 + (int)local_128), -1 < (int)piVar8)))) &&
              (local_124 = *(int **)(iVar10 + 0x24 + (int)piVar8 * 4), local_124 != (int *)0x0)) &&
             (local_124[1] == 0xf))) {
        uVar23 = FUN_00407170();
        iVar10 = *(int *)((int)((ulonglong)uVar23 >> 0x20) + 0x24);
        iVar14 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
        local_16c = (float)(iVar10 % iVar14) * DAT_00baa904 + DAT_00baa904;
        local_168 = (int *)((float)(iVar10 / iVar14) * DAT_00baa904 + DAT_00baaa00);
        FUN_00703330(&local_16c,4,1,0x40c00000,(int)uVar23,0x47c35000,0);
        uVar16 = FUN_006eef60();
        if (uVar16 % 3 == 0) {
          iVar10 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
          local_190 = (int *)((float)(local_124[9] % iVar10) * DAT_00baa904 + DAT_00baa904);
          local_154 = (int *)((float)(local_124[9] / iVar10) * DAT_00baa904 + DAT_00baaa00);
          iVar10 = FUN_006eef60();
          fVar19 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa704;
          local_138 = (int *)(fVar19 + fVar19);
          piVar8 = local_138;
          FUN_0041d520();
          local_178 = piVar8;
          iVar10 = FUN_006eef60();
          local_160 = (int *)((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                              DAT_00ba9ff4 * DAT_00baa904);
          piVar8 = local_138;
          FUN_0041d540();
          local_19c = (float)piVar8 * (float)local_160 + (float)local_190;
          local_198 = (int *)((float)local_154 + (float)local_178 * (float)local_160);
          FUN_006d7cf0(&DAT_00c7b640,&DAT_00c34e80,&DAT_00c7b640);
        }
        uVar7 = FUN_006eef60();
        iVar10 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
        local_1ac = (float)(local_124[9] % iVar10) * DAT_00baa904 + DAT_00baa904;
        local_1a8 = (float)(local_124[9] / iVar10) * DAT_00baa904 + DAT_00baaa00;
        piVar8 = (int *)FUN_00428b20(1000,7,&local_1ac,&DAT_00c7b640,local_15c,0,uVar7);
        iVar10 = FUN_006eef60();
        piVar17 = local_15c + 0x79;
        fVar21 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4
                 + DAT_00baa630;
        fVar19 = fVar21 * DAT_00c3793c;
        piVar8[0x3a] = (int)(fVar21 * DAT_00c37940);
        piVar8[0x39] = (int)fVar19;
        (**(code **)(*piVar8 + 0x3c))(piVar17,0xffffffff,0xff,0,1);
        (**(code **)(*piVar8 + 0xc))();
        piVar8 = local_124;
        local_138 = (int *)0x1;
        iVar10 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
        local_2c = (float)(local_124[9] % iVar10) * DAT_00baa904 + DAT_00baa904;
        local_28 = (int *)((float)(local_124[9] / iVar10) * DAT_00baa904 + DAT_00baaa00);
        FUN_006b31b0(&local_138,0,piVar17,&DAT_00c7b640,0x3f800000);
        iVar10 = local_184;
        uVar16 = piVar8[9];
        if (((uVar16 < 0x1c0) &&
            (puVar9 = *(undefined4 **)(local_184 + 0x24 + uVar16 * 4), puVar9 != (undefined4 *)0x0))
           && (puVar9[1] != 1)) {
          *(undefined4 *)(local_184 + 0x76c + uVar16 * 4) = 900;
          *(undefined4 *)(local_184 + 0x24 + uVar16 * 4) = 0;
          (**(code **)*puVar9)(1);
        }
        iVar14 = *(int *)(iVar10 + 0xc);
        local_128 = (char *)((int)local_128 + 1);
        local_12d = '\x01';
        if (iVar14 + -1 <= (int)local_128) goto LAB_0056c080;
      }
      if (local_12d == '\0') goto LAB_0056c068;
LAB_0056c080:
      piVar8 = local_134;
      uVar7 = FUN_00812e60(0,local_134);
      FUN_00812f00(&local_16c,uVar7);
      FUN_00956940(0x4d,extraout_ECX,2,0,0x3f800000);
      AI_0041af60(local_174,1000,0x8c,0xffffffff,0,0);
      local_14 = 6;
      local_128 = (char *)0x0;
      iVar14 = local_170;
      piVar17 = local_168;
      if (local_168 != (int *)0x0) {
        do {
          piVar1 = *(int **)(iVar14 + (int)local_128 * 4);
          if ((piVar1 != (int *)0x0) && (piVar1[10] == 1000)) {
            if (piVar8 == (int *)(*(int *)(iVar10 + 0x10) + -1)) {
              (**(code **)(*piVar1 + 0x28))();
              iVar14 = local_170;
              piVar17 = local_168;
            }
            else {
              fVar19 = (float)piVar1[0xd0] + DAT_00baa904;
              piVar1[0xcf] = (int)((float)piVar1[0xcf] + DAT_00ba9fe4);
              piVar1[0xd0] = (int)fVar19;
              iVar14 = local_170;
            }
          }
          local_128 = (char *)((int)local_128 + 1);
        } while (local_128 < piVar17);
      }
      FUN_007f2390(0);
      local_14 = 0xffffffff;
      FUN_004175b0();
      param_1 = local_15c;
    }
LAB_0056c18d:
    puVar4 = puStack_20;
    if ((param_1[0x1f] != 0) && (cVar5 = FUN_0040add0("Sound"), puVar4 = puStack_20, cVar5 != '\0'))
    {
      iVar10 = 0xd4;
LAB_0056c1b5:
      FUN_006b6470(iVar10,2,0,0x3f800000);
      puVar4 = puStack_20;
    }
    break;
  case 0x13:
    cVar5 = FUN_0040b030("Shoot");
    puVar4 = puStack_20;
    if (cVar5 != '\0') {
      iVar10 = FUN_006be840();
      local_160 = (int *)(*(float *)(iVar10 + 0x33c) - (float)param_1[0xcf]);
      local_178 = (int *)(*(float *)(iVar10 + 0x340) - (float)param_1[0xd0]);
      local_138 = (int *)((float)local_160 * DAT_00ba9fe4 + (float)local_178);
      fVar19 = (float)local_178 * (float)local_178 + (float)local_160 * (float)local_160;
      local_148 = local_160;
      local_144 = local_178;
      FUN_00435a50();
      if ((float)local_138 < fVar19 * DAT_00baa2d0) {
        fVar19 = fVar19 * DAT_00baa2d0 - (float)local_138;
        local_144 = (int *)(fVar19 + (float)local_178);
        local_148 = (int *)(fVar19 * DAT_00ba9fe4 + (float)local_160);
      }
      FUN_006b6470(0xd5,2,0,0x3f800000);
      FUN_006b6830(param_1 + 0xcf,param_1 + 0x79);
      uVar7 = FUN_006eef60();
      uVar24 = FUN_00a10100(&local_2c,0x41800000);
      piVar8 = (int *)FUN_00428b20(0x390,100,param_1 + 0xcf,uVar24,param_1,0,uVar7);
      piVar17 = (int *)FUN_00a10100(&local_16c,0x40000000);
      iVar10 = piVar17[1];
      piVar8[0xcd] = *piVar17;
      piVar8[0xce] = iVar10;
      FUN_006a92a0(param_1);
      FUN_006d0c20(piVar8);
      uVar7 = FUN_006be840();
      FUN_006a9320(uVar7);
      (**(code **)(*piVar8 + 0xc))();
      goto LAB_0056a0b7;
    }
  }
  puStack_20 = puVar4;
  iVar10 = param_1[0x2f1];
  if (0 < iVar10) {
    fVar19 = DAT_00baa2d0;
    fVar21 = DAT_00baa87c;
    if (0 < local_12c) {
      do {
        iVar14 = local_184;
        iVar10 = param_1[0x2f1];
        fVar22 = (float)param_1[0x2ec] + DAT_00baa454;
        param_1[0x2ec] = (int)fVar22;
        fVar20 = fVar21 - (float)iVar10 * fVar19;
        if (fVar20 <= DAT_00baa7a4) {
          fVar20 = DAT_00baa7a4;
        }
        if (fVar20 <= fVar22) {
          iVar10 = 10;
          local_178 = (int *)(local_17c + fVar21);
          local_144 = (int *)0x0;
          local_148 = (int *)0x0;
          local_160 = (int *)((local_180 - fVar21) - (float)local_178);
          local_190 = (int *)((float)local_1b0 + DAT_00baa904);
          local_128 = (char *)(int)(((float)local_190 - DAT_00baaa00) / DAT_00baa904 + fVar19);
          while( true ) {
            iVar15 = FUN_006eef60(uVar6);
            local_144 = local_190;
            local_148 = (int *)((float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)])
                                * DAT_00ba9ff4 * (float)local_160 + (float)local_178);
            iVar15 = (int)(((float)local_148 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
            if (((iVar15 < 0) || (*(int *)(iVar14 + 0xc) <= iVar15)) || ((int)local_128 < 0)) break;
            if (((*(int *)(iVar14 + 0x10) <= (int)local_128) ||
                (uVar16 = (int)local_128 * *(int *)(iVar14 + 0xc) + iVar15, 0x1bf < uVar16)) ||
               ((*(int *)(iVar14 + 0x76c + uVar16 * 4) < 0x65 || (iVar10 = iVar10 + -1, iVar10 < 1))
               )) break;
          }
          FUN_004cdd80(&local_148,900);
          local_128 = (char *)0x281;
          FUN_00956780();
          FUN_0092dc30(local_128,0x3f800000,2,0,0x3f800000,0);
          uVar7 = FUN_006eef60();
          param_1 = local_15c;
          piVar8 = (int *)FUN_00428b20(0x390,0x14,&local_148,&DAT_00c7b640,local_15c,0,uVar7);
          fVar19 = (float)param_1[0xdc];
          fVar21 = (float)param_1[0xd0];
          piVar8[0xcd] = (int)local_148;
          piVar8[0xce] = (int)((fVar19 + fVar21) - DAT_00baa904);
          (**(code **)(*piVar8 + 0xc))();
          param_1[0x2f1] = param_1[0x2f1] + 1;
          fVar21 = DAT_00baa87c;
          fVar19 = DAT_00baa2d0;
          iVar10 = param_1[0x2f1];
          param_1[0x2ec] = 0;
        }
        local_12c = local_12c + -1;
      } while (local_12c != 0);
    }
    if (0x22 < iVar10) {
      param_1[0x2f1] = -1;
      local_128 = (char *)0x275;
      FUN_00956780();
      FUN_0092dc30(local_128,0x3f800000,2,0,0x3f800000,0);
    }
  }
  if ((NAN((float)param_1[0xce]) || NAN((float)local_140)) ==
      ((float)param_1[0xce] == (float)local_140)) {
    fVar19 = 0.0;
  }
  else {
    local_124 = (int *)param_1[0xd0];
    if ((NAN(local_194) || NAN((float)local_140)) != (local_194 == (float)local_140)) {
      FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
    }
    fVar19 = ((float)local_124 - local_194) / ((float)local_140 - local_194);
    if (fVar19 <= 0.0) {
      fVar19 = 0.0;
    }
    if (DAT_00baa454 <= fVar19) {
      fVar19 = DAT_00baa454;
    }
    fVar19 = fVar19 + 0.0;
  }
  uVar6 = 0;
  if (param_1[0x32] != 0) {
    local_124 = (int *)((uint)fVar19 ^ DAT_00bacb70);
    local_138 = (int *)(DAT_00baa454 - fVar19 * DAT_00baa2d0);
    do {
      iVar10 = FUN_0040b220(uVar6);
      *(int **)(iVar10 + 0x48) = local_138;
      *(int **)(iVar10 + 0x4c) = local_138;
      *(int **)(iVar10 + 0x50) = local_138;
      *(undefined4 *)(iVar10 + 0x54) = 0x3f800000;
      iVar10 = FUN_0040b220(uVar6);
      uVar6 = uVar6 + 1;
      *(undefined4 *)(iVar10 + 0x58) = 0x3f800000;
      *(undefined4 *)(iVar10 + 0x5c) = 0x3f800000;
      *(undefined4 *)(iVar10 + 0x60) = 0x3f800000;
      *(int **)(iVar10 + 100) = local_124;
    } while (uVar6 < (uint)param_1[0x32]);
  }
  local_140 = (int *)param_1[0x2fb];
  puVar4 = puStack_20;
  if (((local_140 != (int *)0x0) &&
      (*(float *)(local_140[0xcc] + 0x44) + DAT_00baa7a4 <= (float)local_140[0xdf])) &&
     (((float)local_140[0xd9] <= 0.0 && (float)local_140[0xd9] != 0.0 &&
      ((float)local_140[0xd0] <= (float)param_1[0xd0] + DAT_00baa9d0 &&
       (float)param_1[0xd0] + DAT_00baa9d0 != (float)local_140[0xd0])))) {
    if ((local_140[10] == 0x390) && (local_140[0xb] == 100)) {
      FUN_006d0c20(param_1);
      local_140 = (int *)param_1[0x2fb];
      if (*(char *)((int)local_140 + 0x173) == '\0') {
        FUN_00567d50(local_140);
        local_140 = (int *)param_1[0x2fb];
      }
    }
    pcVar18 = *(code **)(*local_140 + 0x24);
    FUN_00431310(param_1);
    (*pcVar18)(&uStack_74);
    puVar4 = puStack_20;
    if (param_1[0x2d9] != 0x10) {
      FUN_0040a380("Stunned",0);
      param_1[0x2d9] = 5;
      puVar4 = puStack_20;
    }
  }
LAB_0056c6a7:
  puStack_20 = puVar4;
  iVar10 = param_1[0xef];
  pfVar13 = (float *)(param_1 + 0xd8);
  if (iVar10 == 0) {
    fVar19 = (float)param_1[0xce];
    fVar21 = (float)param_1[0xcd];
  }
  else {
    uVar16 = -(uint)(param_1[0xc] != 0) & param_1[0xc];
    uVar6 = 3;
    if (uVar16 < 3) {
      uVar6 = uVar16;
    }
    fVar19 = *(float *)(iVar10 + 0x338) + *(float *)(&DAT_00c33d38 + uVar6 * 8);
    fVar21 = *(float *)(iVar10 + 0x334) + *(float *)(&DAT_00c33d34 + uVar6 * 8);
  }
  *pfVar13 = fVar21 - (float)param_1[0xcf];
  param_1[0xd9] = (int)(fVar19 - (float)param_1[0xd0]);
  if (param_1[0xef] == 0) {
    iVar10 = param_1[0x62];
  }
  else {
    iVar10 = *(int *)(param_1[0xef] + 0x188);
  }
  if (iVar10 == 0) {
    *pfVar13 = *pfVar13 * DAT_00baa2d0;
    param_1[0xd9] = (int)((float)param_1[0xd9] * DAT_00baa2d0);
  }
LAB_0056c759:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
LAB_0056c068:
  local_134 = (int *)((int)local_134 + 1);
  param_1 = local_15c;
  if (*(int *)(iVar10 + 0x10) + -1 <= (int)local_134) goto LAB_0056c18d;
  goto LAB_0056bc51;
}

