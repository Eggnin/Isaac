/* Local J460 decompiler output.
 * VA: 0x00493200
 * Entry: 00493200
 * Dispatcher: 0x006c2990
 * Types: 405
 * Identities: 405.0.0,405.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00495610; instructions=2217
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=405; identities=405.0.0,405.1.0; dispatcher=0x006c2990;
   end=0x00495610; instructions=2217 */

void __fastcall AI_00493200(float **param_1)

{
  float *pfVar1;
  byte bVar2;
  int iVar3;
  code *pcVar4;
  float *pfVar5;
  float *pfVar6;
  float *pfVar7;
  float *pfVar8;
  undefined *puVar9;
  char cVar10;
  uint uVar11;
  int iVar12;
  int iVar13;
  float **ppfVar14;
  undefined4 uVar15;
  int *piVar16;
  int *piVar17;
  float *pfVar18;
  char *pcVar19;
  byte *pbVar20;
  float *pfVar21;
  undefined4 extraout_ECX;
  float **ppfVar22;
  bool bVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float *local_1cc [8];
  undefined4 local_1ac;
  undefined4 uStack_1a8;
  undefined4 local_1a4;
  char local_1a0 [4];
  int local_19c;
  uint local_194;
  char local_190 [4];
  int local_18c;
  uint local_184;
  float *local_180;
  float *pfStack_17c;
  float *pfStack_178;
  float *pfStack_174;
  undefined4 local_170;
  float *local_16c;
  float *local_168;
  float *local_164;
  float *local_160;
  undefined4 local_15c;
  undefined4 local_158;
  char local_154 [4];
  int local_150;
  uint local_148;
  float local_144;
  float local_140;
  float **local_13c;
  float **local_138;
  uint local_134;
  uint local_130;
  float **local_12c;
  float **local_128;
  char local_124 [4];
  int local_120;
  float **local_11c;
  float **local_118;
  float *local_114;
  float local_110;
  float local_10c;
  int local_108;
  float **local_104;
  float **local_100;
  float *local_fc;
  int local_f8;
  undefined4 local_f4;
  float **local_f0;
  float **local_ec;
  float **local_e8;
  undefined local_e1;
  float **local_e0;
  char local_da;
  char local_d9;
  float **local_d8;
  byte local_d1;
  undefined local_d0 [8];
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 local_b4;
  undefined4 local_78;
  undefined4 local_74;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2e61;
  local_1c = ExceptionList;
  uVar11 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_114 = param_1[0xc];
  local_ec = param_1;
  local_24 = uVar11;
  if (param_1[0xb] != (float *)0x0) {
    puVar9 = &stack0xfffffffc;
    if (param_1[0xb] != (float *)0x1) goto LAB_004955cb;
    pfVar18 = param_1[0x2d9];
    if (pfVar18 == (float *)0x0) {
      param_1[0x2d9] = (float *)&DAT_00000004;
      param_1[0x104] = (float *)0x0;
      iVar12 = FUN_006eef60();
      param_1[0x2f0] =
           (float *)(0x3c - (int)((float)((double)iVar12 +
                                         (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) * _DAT_00baacd8
                                 * DAT_00baa910));
      FUN_00682ed0();
      local_160 = (float *)0x3eb33333;
      local_180 = _DAT_00babf20;
      pfStack_17c = _UNK_00babf24;
      pfStack_178 = _UNK_00babf28;
      pfStack_174 = _UNK_00babf2c;
      local_15c = 0x3de147ae;
      local_158 = 0x3eb851ec;
      FUN_004071f0(&local_180);
      puVar9 = puStack_20;
      goto LAB_004955cb;
    }
    local_ec = (float **)(int)((float)(int)param_1[0x2f0] - DAT_00baa98c);
    local_e0 = (float **)(int)((float)(int)param_1[0x2f0] - DAT_00baa854);
    puStack_20 = &stack0xfffffffc;
    if (((param_1[0xef] != (float *)0x0) &&
        (puStack_20 = &stack0xfffffffc, param_1[0xd] != (float *)0x199)) &&
       (local_d8 = (float **)0x0, iVar12 = (int)param_1[3] - (int)param_1[2] >> 0x1f,
       puStack_20 = &stack0xfffffffc, ((int)param_1[3] - (int)param_1[2]) / 0x38 + iVar12 != iVar12)
       ) {
      local_f4 = 0;
      puStack_20 = &stack0xfffffffc;
      do {
        pfVar18 = param_1[2];
        (**(code **)((int)*param_1[0xef] + 0x20))
                  (*(undefined4 *)(local_f4 + (int)pfVar18),
                   *(undefined4 *)(local_f4 + 8 + (int)pfVar18),
                   *(undefined4 *)(local_f4 + 0xc + (int)pfVar18),local_f4 + 0x10 + (int)pfVar18,
                   0x1e,uVar11);
        local_f4 = local_f4 + 0x38;
        local_d8 = (float **)((int)local_d8 + 1);
      } while (local_d8 < (float **)(((int)param_1[3] - (int)param_1[2]) / 0x38));
      pfVar18 = param_1[0x2d9];
    }
    pfVar21 = (float *)((int)param_1[0x104] + 1);
    param_1[0x104] = pfVar21;
    if (((uint)param_1[0x5a] & 0x100) == 0) {
      if (pfVar18 == (float *)&DAT_00000004) goto LAB_00495090;
    }
    else {
      param_1[0x104] = (float *)0x0;
      pfVar21 = (float *)0x0;
      param_1[0x2d9] = (float *)&DAT_00000004;
LAB_00495090:
      local_d8 = (float **)(float)(int)local_ec;
      local_ec = (float **)(float)(int)local_e0;
      local_104 = (float **)(float)(int)pfVar21;
      if ((NAN((float)local_d8) || NAN((float)local_ec)) != ((float)local_d8 == (float)local_ec)) {
        FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
      }
      fVar25 = ((float)local_104 - (float)local_d8) / ((float)local_ec - (float)local_d8);
      if (fVar25 <= DAT_00ba9fe4) {
        fVar25 = DAT_00ba9fe4;
      }
      if (DAT_00baa454 <= fVar25) {
        fVar25 = DAT_00baa454;
      }
      local_d8 = (float **)(DAT_00baa81c - fVar25 * DAT_00baa7e8);
      pfVar18 = (float *)FUN_006bec40(&local_144,0);
      local_11c = (float **)(*pfVar18 - (float)param_1[0xcf]);
      local_118 = (float **)(pfVar18[1] - (float)param_1[0xd0]);
      local_fc = param_1[0xd9];
      pfVar18 = (float *)FUN_00a10030(&local_144);
      pfVar21 = (float *)FUN_00a10030(&local_11c);
      local_100 = (float **)
                  ((float)local_d8 * *pfVar18 * DAT_00baa154 + (float)param_1[0xd8] +
                  (float)local_d8 * *pfVar21 * DAT_00baa154);
      local_128 = (float **)
                  ((float)local_d8 * pfVar18[1] * DAT_00baa154 + (float)local_fc +
                  (float)local_d8 * pfVar21[1] * DAT_00baa154);
      fVar25 = (float)local_100 * (float)local_100 + (float)local_128 * (float)local_128;
      FUN_00435a50();
      ppfVar22 = local_100;
      ppfVar14 = local_128;
      if (DAT_00ba9fe4 < fVar25) {
        ppfVar22 = (float **)((float)local_100 * ((float)local_d8 / fVar25));
        ppfVar14 = (float **)((float)local_128 * ((float)local_d8 / fVar25));
      }
      pfVar18 = param_1[0xe7];
      fVar25 = DAT_00baa3a4;
      if ((NAN((float)pfVar18) || NAN(DAT_00baa454)) == ((float)pfVar18 == DAT_00baa454)) {
        fVar25 = DAT_00baa3a4 / (((float)pfVar18 + DAT_00baa3a4) - (float)pfVar18 * DAT_00baa3a4);
      }
      fVar25 = DAT_00baa454 - fVar25;
      param_1[0xd8] =
           (float *)(((float)ppfVar22 - (float)param_1[0xd8]) * fVar25 + (float)param_1[0xd8]);
      param_1[0xd9] = (float *)(((float)ppfVar14 - (float)local_fc) * fVar25 + (float)local_fc);
      uVar15 = FUN_006ac8d0();
      switch(uVar15) {
      case 0:
        pcVar19 = "RollLeft";
        break;
      case 1:
        pcVar19 = "RollUp";
        break;
      case 2:
        pcVar19 = "RollRight";
        break;
      default:
        pcVar19 = "RollDown";
      }
      FUN_0040a380(pcVar19,0);
      pfVar21 = param_1[0x104];
      if ((int)local_e0 < (int)pfVar21) {
        param_1[0x2d9] = (float *)0x3;
      }
    }
    if (((param_1[0x2d9] == (float *)0x3) || (*(char *)((int)param_1 + 0x173) != '\0')) &&
       (((int)param_1[0x2f0] < (int)pfVar21 || (*(char *)((int)param_1 + 0x173) != '\0')))) {
      uVar11 = FUN_006eef60();
      if (local_114 == (float *)0x2) {
        local_d8 = (float **)((uVar11 & 1) + 1);
        if (local_d8 != (float **)0x0) {
          do {
            uVar15 = FUN_006eef60();
            iVar12 = FUN_00428b20(0x55,0,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar15);
            local_104 = (float **)param_1[0xef];
            ppfVar22 = (float **)(iVar12 + 0x3bc);
            if (*ppfVar22 != (float *)0x0) {
              local_ec = ppfVar22;
              FUN_004cf210(&local_ec);
            }
            *ppfVar22 = (float *)local_104;
            if (local_104 != (float **)0x0) {
              FUN_004cdcf0(ppfVar22);
            }
            local_d8 = (float **)((int)local_d8 + -1);
          } while (local_d8 != (float **)0x0);
          local_d8 = (float **)0x0;
        }
      }
      else {
        piVar16 = (int *)FUN_00428b20(0xf6,1,param_1 + 0xcf,param_1 + 0xd8,param_1,0,uVar11);
        if (piVar16 != (int *)0x0) {
          FUN_006a92a0(param_1[0xef]);
          FUN_006d0300(param_1[0x31e],extraout_ECX);
          if (*(char *)((int)param_1 + 0x173) == '\0') {
            local_d8 = (float **)piVar16[0xe1];
            if (local_114 == (float *)0x1) {
              local_d8 = (float **)((float)local_d8 * DAT_00baa328);
              piVar16[0xe1] = (int)local_d8;
              piVar16[0xe0] = (int)local_d8;
            }
            local_100 = (float **)param_1[0xe1];
            local_ec = (float **)param_1[0xe0];
            local_104 = (float **)((float)local_d8 * DAT_00baa2d0);
            if (NAN((float)local_100) != ((float)local_100 == 0.0)) {
              FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
            }
            fVar25 = ((float)local_ec - 0.0) / ((float)local_100 - 0.0);
            if (fVar25 <= 0.0) {
              fVar25 = 0.0;
            }
            if (DAT_00baa454 <= fVar25) {
              fVar25 = DAT_00baa454;
            }
            piVar16[0xe0] = (int)(((float)local_d8 - (float)local_104) * fVar25 + (float)local_104);
          }
          else if (param_1[0xef] == (float *)0x0) {
            (**(code **)(*piVar16 + 0x28))();
          }
          else {
            uVar15 = FUN_006eef60();
            FUN_00428b20(1000,0xf,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar15);
            piVar16[0x5a] = piVar16[0x5a] & 0xfffffffb;
            piVar16[0x5b] = piVar16[0x5b];
            (**(code **)(*piVar16 + 0xc))();
            *(undefined *)((int)piVar16 + 0x173) = 1;
          }
        }
      }
      (*(code *)(*param_1)[10])();
      puVar9 = puStack_20;
    }
    else {
      fVar25 = (float)param_1[0xd8] * (float)param_1[0xd8] +
               (float)param_1[0xd9] * (float)param_1[0xd9];
      FUN_00435a50();
      fVar25 = (fVar25 - 0.0) / DAT_00baa81c;
      if (fVar25 <= 0.0) {
        fVar25 = 0.0;
      }
      if (DAT_00baa454 <= fVar25) {
        fVar25 = DAT_00baa454;
      }
      param_1[0x53] = (float *)(fVar25 + fVar25 + 0.0);
      param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa3a4);
      puVar9 = puStack_20;
    }
    goto LAB_004955cb;
  }
  puStack_20 = &stack0xfffffffc;
  iVar12 = FUN_006be840();
  pfVar8 = _UNK_00babf2c;
  pfVar7 = _UNK_00babf28;
  pfVar6 = _UNK_00babf24;
  pfVar5 = _DAT_00babf20;
  pfVar18 = param_1[0xcf];
  local_10c = *(float *)(iVar12 + 0x33c);
  local_110 = *(float *)(iVar12 + 0x340);
  local_104 = param_1 + 0xcf;
  local_d1 = (float)((uint)local_110 & DAT_00bacb40) < (float)((uint)local_10c & DAT_00bacb40);
  local_e1 = local_10c - (float)pfVar18 < 0.0;
  pfVar21 = param_1[0xe1];
  local_f4 = 0;
  if (*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14) + DAT_00baa9a0 <= (float)pfVar18) {
    local_f4 = (uint)(byte)local_e1;
  }
  pfVar1 = param_1[0xe0];
  if (*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) - DAT_00baa9a0 < (float)pfVar18) {
    local_f4 = 1;
  }
  local_fc = (float *)(uint)((float)pfVar1 < (float)pfVar21);
  if ((float)pfVar1 < (float)pfVar21 * DAT_00baa380) {
    local_fc = (float *)0x2;
  }
  if ((float)pfVar1 < (float)pfVar21 * DAT_00baa2e4) {
    local_fc = (float *)0x3;
  }
  if ((float)pfVar1 < (float)pfVar21 * DAT_00baa244) {
    local_fc = (float *)&DAT_00000004;
  }
  local_130 = (uint)((float)pfVar1 < (float)pfVar21);
  if ((float)pfVar1 < (float)pfVar21 * DAT_00baa304) {
    local_130 = 2;
  }
  if (param_1[0xc] == (float *)0x1) {
    local_fc = (float *)&DAT_00000004;
    local_130 = 4;
  }
  if (param_1[0x2d9] == (float *)0x0) {
    param_1[0x2d9] = (float *)&DAT_00000004;
    param_1[0x2f0] = (float *)0x0;
    local_1ac = 0x3eb33333;
    uStack_1a8 = 0x3de147ae;
    local_1a4 = 0x3eb851ec;
    puVar9 = puStack_20;
    if (param_1 + 0x79 != local_1cc) {
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
      *(undefined8 *)(param_1 + 0x81) = 0x3de147ae3eb33333;
      param_1[0x79] = pfVar5;
      param_1[0x7a] = pfVar6;
      param_1[0x7b] = pfVar7;
      param_1[0x7c] = pfVar8;
      param_1[0x83] = (float *)0x3eb851ec;
    }
    goto LAB_004955cb;
  }
  AI_0041af60(local_154,0xf6,1,0xffffffff,0,0);
  local_14 = 0;
  AI_0041af60(local_1a0,0x195,0xffffffff,0xffffffff,0,0);
  local_14._0_1_ = 1;
  AI_0041af60(local_190,0x55,0xffffffff,0xffffffff,0,0);
  ppfVar22 = (float **)0x0;
  local_14._0_1_ = 2;
  uVar11 = 0;
  local_f8 = 0;
  local_108 = 0;
  local_d8 = (float **)0x0;
  if (local_194 != 0) {
    do {
      iVar12 = *(int *)(local_19c + uVar11 * 4);
      if ((*(int *)(iVar12 + 0x2c) == 1) && (*(float ***)(iVar12 + 0x3bc) == param_1)) {
        ppfVar22 = (float **)((int)ppfVar22 + 1);
      }
      uVar11 = uVar11 + 1;
      local_d8 = ppfVar22;
    } while (uVar11 < local_194);
  }
  uVar11 = 0;
  iVar12 = 0;
  if (local_148 != 0) {
    do {
      iVar3 = *(int *)(local_150 + uVar11 * 4);
      local_f8 = iVar12 + 1;
      if (*(float ***)(iVar3 + 0x3bc) != param_1) {
        local_f8 = iVar12;
      }
      iVar13 = local_108 + 1;
      if (*(int *)(iVar3 + 0xb64) != 0x10) {
        iVar13 = local_108;
      }
      uVar11 = uVar11 + 1;
      iVar12 = local_f8;
      local_108 = iVar13;
    } while (uVar11 < local_148);
  }
  if ((local_114 == (float *)0x2) && (uVar11 = 0, iVar12 = local_f8, local_184 != 0)) {
    do {
      local_f8 = iVar12 + 1;
      if (*(float ***)(*(int *)(local_18c + uVar11 * 4) + 0x3bc) != param_1) {
        local_f8 = iVar12;
      }
      uVar11 = uVar11 + 1;
      iVar12 = local_f8;
    } while (uVar11 < local_184);
  }
  local_da = '\0';
  local_d9 = '\0';
  local_12c = DAT_00baacac;
  local_e8 = DAT_00baacac;
  local_e0 = DAT_00baacac;
  local_128 = DAT_00baacac;
  local_100 = DAT_00baacac;
  local_134 = 0;
  if (local_148 != 0) {
    do {
      iVar12 = *(int *)(local_150 + local_134 * 4);
      local_138 = *(float ***)(iVar12 + 0x33c);
      local_13c = *(float ***)(iVar12 + 0x340);
      ppfVar22 = (float **)
                 (((float)local_13c - (float)param_1[0xd0]) *
                  ((float)local_13c - (float)param_1[0xd0]) +
                 ((float)local_138 - (float)param_1[0xcf]) *
                 ((float)local_138 - (float)param_1[0xcf]));
      FUN_00435a50();
      if (*(int *)(iVar12 + 0xb64) == 0x10) {
        if ((((local_d9 == '\0') || ((float)ppfVar22 < (float)local_12c)) &&
            (0x77 < (int)param_1[0x2f0])) && (local_f8 - local_108 < (int)local_130)) {
          local_e8 = local_138;
          local_e0 = local_13c;
          local_da = '\x01';
          local_d9 = '\x01';
          local_128 = local_138;
          local_100 = local_13c;
          local_12c = ppfVar22;
        }
      }
      else if (((float)ppfVar22 < (float)local_12c) && (local_d9 == '\0')) {
        local_e8 = (float **)((float)local_13c - local_110);
        local_e0 = (float **)((float)local_138 - local_10c);
        local_da = '\x01';
        fVar24 = (float)local_e8 * (float)local_e8 + (float)local_e0 * (float)local_e0;
        local_12c = ppfVar22;
        FUN_00435a50();
        fVar25 = (float)local_e0;
        fVar26 = (float)local_e8;
        if (DAT_00ba9fe4 < fVar24) {
          fVar25 = (float)local_e0 * (DAT_00baa454 / fVar24);
          fVar26 = (float)local_e8 * (DAT_00baa454 / fVar24);
        }
        local_144 = (float)local_138 + fVar25 * DAT_00baa950;
        local_140 = (float)local_13c + fVar26 * DAT_00baa950;
        FUN_00812f50(&local_11c,&local_144,0x42700000,0x42700000,0x42700000);
        local_e8 = local_11c;
        local_e0 = local_118;
      }
      local_134 = local_134 + 1;
    } while (local_134 < local_148);
  }
  iVar12 = local_f8;
  local_134 = local_f8 - local_108;
  if ((int)local_134 < (int)local_130) {
    param_1[0x2f0] = (float *)((int)param_1[0x2f0] + 1);
  }
  else {
    param_1[0x2f0] = (float *)0x0;
  }
  if (0 < (int)param_1[0x2e8]) {
    param_1[0x2e8] = (float *)((int)param_1[0x2e8] + -1);
  }
  pfVar18 = param_1[0x2d9];
  if (pfVar18 == (float *)&DAT_00000004) {
    FUN_006bec40(&local_f0,0);
    if ((local_da != '\0') && (((uint)param_1[0x5a] & 0x1000b00) == 0)) {
      local_f0 = local_e8;
      local_ec = local_e0;
    }
    param_1[0x106] = DAT_00c7b640;
    param_1[0x107] = DAT_00c7b644;
    param_1[0x108] = DAT_00c7b640;
    param_1[0x109] = DAT_00c7b644;
    FUN_007e33c0(&local_f0,0x3f866666,900,1);
    *(undefined *)(param_1 + 0x52) = 0;
    fVar25 = (float)param_1[0xd8] * (float)param_1[0xd8] +
             (float)param_1[0xd9] * (float)param_1[0xd9];
    FUN_00435a50();
    ppfVar22 = (float **)param_1[0x1f];
    if (fVar25 <= DAT_00baa454) {
      if (ppfVar22 == (float **)0x0) {
LAB_00493b20:
        pcVar19 = "Idle";
        goto LAB_00493b27;
      }
      if (&DAT_0000000f < ppfVar22[5]) {
        ppfVar22 = (float **)*ppfVar22;
      }
      pbVar20 = &DAT_00b1bc54;
      do {
        bVar2 = *(byte *)ppfVar22;
        bVar23 = bVar2 < *pbVar20;
        if (bVar2 != *pbVar20) {
LAB_00493b00:
          uVar11 = -(uint)bVar23 | 1;
          goto LAB_00493b05;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppfVar22 + 1);
        bVar23 = bVar2 < pbVar20[1];
        if (bVar2 != pbVar20[1]) goto LAB_00493b00;
        ppfVar22 = (float **)((int)ppfVar22 + 2);
        pbVar20 = pbVar20 + 2;
      } while (bVar2 != 0);
      uVar11 = 0;
LAB_00493b05:
      if ((uVar11 != 0) ||
         ((*(char *)(param_1[0x1f] + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_00493b20;
    }
    else {
      if ((float)((uint)param_1[0xd8] & DAT_00bacb40) <= (float)((uint)param_1[0xd9] & DAT_00bacb40)
         ) {
        if (ppfVar22 != (float **)0x0) {
          if (&DAT_0000000f < ppfVar22[5]) {
            ppfVar22 = (float **)*ppfVar22;
          }
          pcVar19 = "WalkVert";
          do {
            bVar2 = *(byte *)ppfVar22;
            bVar23 = bVar2 < (byte)*pcVar19;
            if (bVar2 != *pcVar19) {
LAB_00493a92:
              uVar11 = -(uint)bVar23 | 1;
              goto LAB_00493a97;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppfVar22 + 1);
            bVar23 = bVar2 < ((byte *)pcVar19)[1];
            if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00493a92;
            ppfVar22 = (float **)((int)ppfVar22 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar2 != 0);
          uVar11 = 0;
LAB_00493a97:
          if (uVar11 == 0) {
            if ((*(char *)(param_1[0x1f] + 0xd) != '\0') && (*(char *)(param_1 + 0x23) == '\0')) {
              pcVar19 = "WalkVert";
              goto LAB_00493b27;
            }
            goto LAB_00493b45;
          }
        }
        pcVar19 = "WalkVert";
      }
      else if (0.0 <= (float)param_1[0xd8]) {
        if (ppfVar22 != (float **)0x0) {
          if (&DAT_0000000f < ppfVar22[5]) {
            ppfVar22 = (float **)*ppfVar22;
          }
          pcVar19 = "WalkRight";
          do {
            bVar2 = *(byte *)ppfVar22;
            bVar23 = bVar2 < (byte)*pcVar19;
            if (bVar2 != *pcVar19) {
LAB_00493a21:
              uVar11 = -(uint)bVar23 | 1;
              goto LAB_00493a26;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppfVar22 + 1);
            bVar23 = bVar2 < ((byte *)pcVar19)[1];
            if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00493a21;
            ppfVar22 = (float **)((int)ppfVar22 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar2 != 0);
          uVar11 = 0;
LAB_00493a26:
          if (uVar11 == 0) {
            if ((*(char *)(param_1[0x1f] + 0xd) != '\0') && (*(char *)(param_1 + 0x23) == '\0')) {
              pcVar19 = "WalkRight";
              goto LAB_00493b27;
            }
            goto LAB_00493b45;
          }
        }
        pcVar19 = "WalkRight";
      }
      else {
        if (ppfVar22 != (float **)0x0) {
          if (&DAT_0000000f < ppfVar22[5]) {
            ppfVar22 = (float **)*ppfVar22;
          }
          pcVar19 = "WalkLeft";
          do {
            bVar2 = *(byte *)ppfVar22;
            bVar23 = bVar2 < (byte)*pcVar19;
            if (bVar2 != *pcVar19) {
LAB_004939b0:
              uVar11 = -(uint)bVar23 | 1;
              goto LAB_004939b5;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppfVar22 + 1);
            bVar23 = bVar2 < ((byte *)pcVar19)[1];
            if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_004939b0;
            ppfVar22 = (float **)((int)ppfVar22 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar2 != 0);
          uVar11 = 0;
LAB_004939b5:
          if (uVar11 == 0) {
            if ((*(char *)(param_1[0x1f] + 0xd) == '\0') || (*(char *)(param_1 + 0x23) != '\0'))
            goto LAB_00493b45;
            pcVar19 = "WalkLeft";
            goto LAB_00493b27;
          }
        }
        pcVar19 = "WalkLeft";
      }
LAB_00493b27:
      cVar10 = FUN_0040a5d0(pcVar19,1);
      if (cVar10 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
        iVar12 = local_f8;
      }
    }
LAB_00493b45:
    if ((((uint)param_1[0x5b] & 0x10000000) != 0) &&
       ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) != 0))
    goto LAB_00494d31;
    if (((int)param_1[0x2f0] < 0x78) && (local_114 != (float *)0x1)) goto LAB_00493c39;
    if ((iVar12 < (int)local_fc) && ((int)local_134 < (int)local_130)) {
      param_1[0x2d9] = (float *)0xd;
      local_fc = (float *)0x18a;
      FUN_00956780();
      FUN_0092dc30(local_fc,0x3f800000,2,0,0x3f800000,0);
      goto LAB_00494d31;
    }
    if ((int)param_1[0x2f0] < 0x78) {
LAB_00493c39:
      if ((local_114 != (float *)0x2) || (uVar11 = FUN_006eef60(), uVar11 % 100 != 0)) {
        cVar10 = FUN_006ac710(0xf,param_1[8]);
        if ((cVar10 != '\0') &&
           ((((uVar11 = FUN_006eef60(), uVar11 % 100 < 0x14 && (local_d1 != 0)) &&
             ((int)param_1[0x2e8] < 1)) && (param_1[0xc] != (float *)0x1)))) {
          param_1[0x2d9] = (float *)&DAT_00000008;
          *(undefined *)(param_1 + 0x52) = local_e1;
        }
        goto LAB_00494d31;
      }
    }
    else {
      fVar25 = ((float)param_1[0xd0] - (float)local_100) * ((float)param_1[0xd0] - (float)local_100)
               + ((float)param_1[0xcf] - (float)local_128) *
                 ((float)param_1[0xcf] - (float)local_128);
      FUN_00435a50();
      if (DAT_00baa97c <= fVar25) goto LAB_00493c39;
    }
    param_1[0x2d9] = (float *)&DAT_0000000e;
LAB_00494d31:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa3a4);
  }
  else {
    if (pfVar18 == (float *)0xd) {
      if (param_1[0x1f] == (float *)0x0) {
LAB_00493e66:
        ppfVar22 = (float **)param_1[0x1f];
        if ((char)local_f4 == '\0') {
          if (ppfVar22 != (float **)0x0) {
            if (&DAT_0000000f < ppfVar22[5]) {
              ppfVar22 = (float **)*ppfVar22;
            }
            pcVar19 = "HeadThrowRight";
            do {
              bVar2 = *(byte *)ppfVar22;
              bVar23 = bVar2 < (byte)*pcVar19;
              if (bVar2 != *pcVar19) {
LAB_00493f00:
                uVar11 = -(uint)bVar23 | 1;
                goto LAB_00493f05;
              }
              if (bVar2 == 0) break;
              bVar2 = *(byte *)((int)ppfVar22 + 1);
              bVar23 = bVar2 < ((byte *)pcVar19)[1];
              if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00493f00;
              ppfVar22 = (float **)((int)ppfVar22 + 2);
              pcVar19 = (char *)((byte *)pcVar19 + 2);
            } while (bVar2 != 0);
            uVar11 = 0;
LAB_00493f05:
            if ((uVar11 == 0) &&
               ((*(char *)(param_1[0x1f] + 0xd) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
            goto LAB_00493f3d;
          }
          pcVar19 = "HeadThrowRight";
        }
        else {
          if (ppfVar22 != (float **)0x0) {
            if (&DAT_0000000f < ppfVar22[5]) {
              ppfVar22 = (float **)*ppfVar22;
            }
            pcVar19 = "HeadThrowLeft";
            do {
              bVar2 = *(byte *)ppfVar22;
              bVar23 = bVar2 < (byte)*pcVar19;
              if (bVar2 != *pcVar19) {
LAB_00493ea5:
                uVar11 = -(uint)bVar23 | 1;
                goto LAB_00493eaa;
              }
              if (bVar2 == 0) break;
              bVar2 = *(byte *)((int)ppfVar22 + 1);
              bVar23 = bVar2 < ((byte *)pcVar19)[1];
              if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00493ea5;
              ppfVar22 = (float **)((int)ppfVar22 + 2);
              pcVar19 = (char *)((byte *)pcVar19 + 2);
            } while (bVar2 != 0);
            uVar11 = 0;
LAB_00493eaa:
            if ((uVar11 == 0) &&
               ((*(char *)(param_1[0x1f] + 0xd) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
            goto LAB_00493f3d;
          }
          pcVar19 = "HeadThrowLeft";
        }
        cVar10 = FUN_0040a5d0(pcVar19,1);
        if (cVar10 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppfVar22 = (float **)param_1[0x1f];
        if (*(char *)(param_1 + 0x23) == '\0') {
          if (&DAT_0000000f < ppfVar22[5]) {
            ppfVar22 = (float **)*ppfVar22;
          }
          pcVar19 = "HeadThrowLeft";
          do {
            bVar2 = *(byte *)ppfVar22;
            bVar23 = bVar2 < (byte)*pcVar19;
            if (bVar2 != *pcVar19) {
LAB_00493e18:
              uVar11 = -(uint)bVar23 | 1;
              goto LAB_00493e1d;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppfVar22 + 1);
            bVar23 = bVar2 < ((byte *)pcVar19)[1];
            if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00493e18;
            ppfVar22 = (float **)((int)ppfVar22 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar2 != 0);
          uVar11 = 0;
LAB_00493e1d:
          if (uVar11 != 0) {
            ppfVar22 = (float **)param_1[0x1f];
            if (&DAT_0000000f < ppfVar22[5]) {
              ppfVar22 = (float **)*ppfVar22;
            }
            pcVar19 = "HeadThrowRight";
            do {
              bVar2 = *(byte *)ppfVar22;
              bVar23 = bVar2 < (byte)*pcVar19;
              if (bVar2 != *pcVar19) {
LAB_00493e51:
                uVar11 = -(uint)bVar23 | 1;
                goto LAB_00493e56;
              }
              if (bVar2 == 0) break;
              bVar2 = *(byte *)((int)ppfVar22 + 1);
              bVar23 = bVar2 < ((byte *)pcVar19)[1];
              if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00493e51;
              ppfVar22 = (float **)((int)ppfVar22 + 2);
              pcVar19 = (char *)((byte *)pcVar19 + 2);
            } while (bVar2 != 0);
            uVar11 = 0;
LAB_00493e56:
            if (uVar11 != 0) goto LAB_00493e66;
          }
        }
        else {
          if (&DAT_0000000f < ppfVar22[5]) {
            ppfVar22 = (float **)*ppfVar22;
          }
          pcVar19 = "HeadThrowLeft";
          do {
            local_d1 = *(byte *)ppfVar22;
            bVar23 = local_d1 < (byte)*pcVar19;
            ppfVar14 = (float **)param_1[0x1f];
            if (local_d1 != *pcVar19) {
LAB_00493d3c:
              uVar11 = -(uint)bVar23 | 1;
              goto LAB_00493d41;
            }
            if (local_d1 == 0) break;
            local_d1 = *(byte *)((int)ppfVar22 + 1);
            bVar23 = local_d1 < ((byte *)pcVar19)[1];
            ppfVar14 = (float **)param_1[0x1f];
            if (local_d1 != ((byte *)pcVar19)[1]) goto LAB_00493d3c;
            ppfVar22 = (float **)((int)ppfVar22 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (local_d1 != 0);
          uVar11 = 0;
LAB_00493d41:
          if (uVar11 != 0) {
            ppfVar22 = (float **)param_1[0x1f];
            if (&DAT_0000000f < ppfVar22[5]) {
              ppfVar22 = (float **)*ppfVar22;
            }
            pcVar19 = "HeadThrowRight";
            do {
              local_d1 = *(byte *)ppfVar22;
              bVar23 = local_d1 < (byte)*pcVar19;
              ppfVar14 = (float **)param_1[0x1f];
              if (local_d1 != *pcVar19) {
LAB_00493d9c:
                uVar11 = -(uint)bVar23 | 1;
                goto LAB_00493da1;
              }
              if (local_d1 == 0) break;
              local_d1 = *(byte *)((int)ppfVar22 + 1);
              bVar23 = local_d1 < ((byte *)pcVar19)[1];
              ppfVar14 = (float **)param_1[0x1f];
              if (local_d1 != ((byte *)pcVar19)[1]) goto LAB_00493d9c;
              ppfVar22 = (float **)((int)ppfVar22 + 2);
              pcVar19 = (char *)((byte *)pcVar19 + 2);
            } while (local_d1 != 0);
            uVar11 = 0;
LAB_00493da1:
            if (uVar11 != 0) goto LAB_00493e66;
          }
          if (&DAT_0000000f < ppfVar14[5]) {
            ppfVar14 = (float **)*ppfVar14;
          }
          pcVar19 = "HeadThrowLeft";
          do {
            bVar2 = *(byte *)ppfVar14;
            bVar23 = bVar2 < (byte)*pcVar19;
            if (bVar2 != *pcVar19) {
LAB_00493dd6:
              uVar11 = -(uint)bVar23 | 1;
              goto LAB_00493ddb;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppfVar14 + 1);
            bVar23 = bVar2 < ((byte *)pcVar19)[1];
            if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00493dd6;
            ppfVar14 = (float **)((int)ppfVar14 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar2 != 0);
          uVar11 = 0;
LAB_00493ddb:
          if (uVar11 == 0) {
            local_f4 = CONCAT31(local_f4._1_3_,1);
            goto LAB_00493f3d;
          }
        }
        local_f4 = (uint)local_f4._1_3_ << 8;
      }
LAB_00493f3d:
      if ((param_1[0x1f] != (float *)0x0) && (cVar10 = FUN_0040add0(&DAT_00b1de50), cVar10 != '\0'))
      {
        local_ec = (float **)0x0;
        if ((char)local_f4 == '\0') {
          local_f0 = (float **)0x41200000;
          uVar15 = FUN_006eef60();
          fVar25 = DAT_00baa454;
        }
        else {
          local_f0 = (float **)0xc1200000;
          uVar15 = FUN_006eef60();
          fVar25 = DAT_00baad50;
        }
        local_118 = (float **)((float)param_1[0xd0] + DAT_00ba9fe4);
        local_11c = (float **)(fVar25 * _DAT_00baa944 + (float)param_1[0xcf]);
        piVar16 = (int *)FUN_00428b20(0x195,1,&local_11c,&local_f0,param_1,param_1[0xc],uVar15);
        if (piVar16[0xef] != 0) {
          local_d8 = (float **)(piVar16 + 0xef);
          FUN_004cf210(&local_d8);
        }
        piVar16[0xef] = (int)param_1;
        FUN_004cdcf0(piVar16 + 0xef);
        piVar16[0x5a] = piVar16[0x5a] & 0xfffffffb;
        piVar16[0x5b] = piVar16[0x5b];
        if ((float *)piVar16[0x31e] != param_1[0x31e]) {
          piVar16[0x31e] = (int)param_1[0x31e];
          FUN_006baf40(1);
          piVar17 = piVar16 + 0x18;
          if (0xf < (uint)piVar16[0x1d]) {
            piVar17 = (int *)*piVar17;
          }
          cVar10 = FUN_0040a5d0(piVar17,1);
          if (((cVar10 != '\0') && (piVar16[0x1f] != 0)) && (FUN_00408e00(), piVar16[0x1f] != 0)) {
            *(undefined *)(piVar16 + 0x23) = 0;
          }
        }
        (**(code **)(*piVar16 + 0x60))();
        if (((uint)param_1[0x5b] & 0x10000000) != 0) {
          piVar16[0xe0] = 0x41000000;
          piVar16[0xe1] = 0x41000000;
        }
      }
      pfStack_17c = (float *)0x0;
      pfStack_178 = (float *)0x0;
      pfStack_174 = (float *)0x0;
      local_170 = 0;
      local_16c = DAT_00c7b640;
      local_168 = DAT_00c7b644;
      local_164 = DAT_00c7b640;
      local_160 = DAT_00c7b644;
      local_15c = 0;
      local_158 = 0;
      (*(code *)(*param_1)[8])(&DAT_bf800000,0,0,&pfStack_17c,0x1e);
      if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = (float *)0x3;
        uVar11 = FUN_006eef60();
        param_1[0x2e8] = (float *)(uVar11 % 0x14 + 0x28);
      }
      goto LAB_00494d31;
    }
    if (pfVar18 != (float *)0x3) {
      if (pfVar18 == (float *)&DAT_00000008) {
        if (param_1[0x1f] == (float *)0x0) goto LAB_0049480d;
        ppfVar22 = (float **)param_1[0x1f];
        if (*(char *)(param_1 + 0x23) == '\0') {
          if (&DAT_0000000f < ppfVar22[5]) {
            ppfVar22 = (float **)*ppfVar22;
          }
          pcVar19 = "Shooting1";
          do {
            bVar2 = *(byte *)ppfVar22;
            bVar23 = bVar2 < (byte)*pcVar19;
            if (bVar2 != *pcVar19) {
LAB_00494770:
              uVar11 = -(uint)bVar23 | 1;
              goto LAB_00494775;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppfVar22 + 1);
            bVar23 = bVar2 < ((byte *)pcVar19)[1];
            if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00494770;
            ppfVar22 = (float **)((int)ppfVar22 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar2 != 0);
          uVar11 = 0;
LAB_00494775:
          if (uVar11 != 0) {
            ppfVar22 = (float **)param_1[0x1f];
            if (&DAT_0000000f < ppfVar22[5]) {
              ppfVar22 = (float **)*ppfVar22;
            }
            pcVar19 = "Shooting3";
            do {
              bVar2 = *(byte *)ppfVar22;
              bVar23 = bVar2 < (byte)*pcVar19;
              if (bVar2 != *pcVar19) {
LAB_004947b0:
                uVar11 = -(uint)bVar23 | 1;
                goto joined_r0x004947b7;
              }
              if (bVar2 == 0) break;
              bVar2 = *(byte *)((int)ppfVar22 + 1);
              bVar23 = bVar2 < ((byte *)pcVar19)[1];
              if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_004947b0;
              ppfVar22 = (float **)((int)ppfVar22 + 2);
              pcVar19 = (char *)((byte *)pcVar19 + 2);
            } while (bVar2 != 0);
            uVar11 = 0;
joined_r0x004947b7:
            if (uVar11 != 0) {
              if ((param_1[0x1f] != (float *)0x0) && (*(char *)(param_1 + 0x23) == '\0')) {
                ppfVar22 = (float **)param_1[0x1f];
                if (&DAT_0000000f < ppfVar22[5]) {
                  ppfVar22 = (float **)*ppfVar22;
                }
                pcVar19 = "Shooting5";
                do {
                  bVar2 = *(byte *)ppfVar22;
                  bVar23 = bVar2 < (byte)*pcVar19;
                  if (bVar2 != *pcVar19) {
LAB_00494800:
                    uVar11 = -(uint)bVar23 | 1;
                    goto LAB_00494805;
                  }
                  if (bVar2 == 0) break;
                  bVar2 = *(byte *)((int)ppfVar22 + 1);
                  bVar23 = bVar2 < ((byte *)pcVar19)[1];
                  if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00494800;
                  ppfVar22 = (float **)((int)ppfVar22 + 2);
                  pcVar19 = (char *)((byte *)pcVar19 + 2);
                } while (bVar2 != 0);
                uVar11 = 0;
LAB_00494805:
                if (uVar11 == 0) goto switchD_00494858_caseD_5;
              }
LAB_0049480d:
              uVar11 = FUN_006eef60();
              pfVar18 = param_1[0xe1];
              uVar11 = uVar11 % 3;
              if (((float)pfVar18 + (float)pfVar18) / DAT_00baa6fc < (float)param_1[0xe0]) {
                uVar11 = uVar11 - 1;
              }
              if ((float)param_1[0xe0] < (float)pfVar18 / DAT_00baa6fc) {
                uVar11 = uVar11 + 1;
              }
              switch(uVar11) {
              case 1:
                FUN_0040a380("Shooting3",0);
                uVar15 = 0x18b;
                break;
              case 2:
              case 3:
                FUN_0040a380("Shooting5",0);
                uVar15 = 0x189;
                break;
              case 0xffffffff:
              case 0:
                FUN_0040a380("Shooting1",0);
                uVar15 = 0x188;
                break;
              default:
                goto switchD_00494858_caseD_5;
              }
              FUN_009568e0(uVar15,2,0,0x3f800000);
            }
          }
        }
        else {
          if (&DAT_0000000f < ppfVar22[5]) {
            ppfVar22 = (float **)*ppfVar22;
          }
          pcVar19 = "Shooting1";
          do {
            bVar2 = *(byte *)ppfVar22;
            bVar23 = bVar2 < (byte)*pcVar19;
            if (bVar2 != *pcVar19) {
LAB_004946b7:
              uVar11 = -(uint)bVar23 | 1;
              goto LAB_004946bc;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppfVar22 + 1);
            bVar23 = bVar2 < ((byte *)pcVar19)[1];
            if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_004946b7;
            ppfVar22 = (float **)((int)ppfVar22 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar2 != 0);
          uVar11 = 0;
LAB_004946bc:
          if (uVar11 != 0) {
            ppfVar22 = (float **)param_1[0x1f];
            if (&DAT_0000000f < ppfVar22[5]) {
              ppfVar22 = (float **)*ppfVar22;
            }
            pcVar19 = "Shooting3";
            do {
              bVar2 = *(byte *)ppfVar22;
              bVar23 = bVar2 < (byte)*pcVar19;
              if (bVar2 != *pcVar19) {
LAB_004946f4:
                uVar11 = -(uint)bVar23 | 1;
                goto LAB_004946f9;
              }
              if (bVar2 == 0) break;
              bVar2 = *(byte *)((int)ppfVar22 + 1);
              bVar23 = bVar2 < ((byte *)pcVar19)[1];
              if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_004946f4;
              ppfVar22 = (float **)((int)ppfVar22 + 2);
              pcVar19 = (char *)((byte *)pcVar19 + 2);
            } while (bVar2 != 0);
            uVar11 = 0;
LAB_004946f9:
            if (uVar11 != 0) {
              ppfVar22 = (float **)param_1[0x1f];
              if (&DAT_0000000f < ppfVar22[5]) {
                ppfVar22 = (float **)*ppfVar22;
              }
              pcVar19 = "Shooting5";
              do {
                bVar2 = *(byte *)ppfVar22;
                bVar23 = bVar2 < (byte)*pcVar19;
                if (bVar2 != *pcVar19) {
LAB_00494731:
                  uVar11 = -(uint)bVar23 | 1;
                  goto joined_r0x004947b7;
                }
                if (bVar2 == 0) break;
                bVar2 = *(byte *)((int)ppfVar22 + 1);
                bVar23 = bVar2 < ((byte *)pcVar19)[1];
                if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00494731;
                ppfVar22 = (float **)((int)ppfVar22 + 2);
                pcVar19 = (char *)((byte *)pcVar19 + 2);
              } while (bVar2 != 0);
              uVar11 = 0;
              goto joined_r0x004947b7;
            }
          }
        }
switchD_00494858_caseD_5:
        local_d1 = *(byte *)(param_1 + 0x52);
        if (param_1[0x1f] != (float *)0x0) {
          cVar10 = FUN_0040add0("Shoot");
          if (cVar10 != '\0') {
            local_d8 = (float **)0xb2;
            FUN_00956780();
            FUN_0092dc30(local_d8,0x3f800000,2,0,0x3f800000,0);
            local_10c = local_10c - (float)param_1[0xcf];
            local_110 = local_110 - (float)param_1[0xd0];
            fVar25 = local_10c * local_10c + local_110 * local_110;
            FUN_00435a50();
            if (DAT_00ba9fe4 < fVar25) {
              local_10c = (DAT_00baa454 / fVar25) * local_10c;
              local_110 = local_110 * (DAT_00baa454 / fVar25);
            }
            AI_0043ef30();
            local_11c = (float **)(local_10c * DAT_00baa7b8);
            local_78 = 1;
            local_118 = (float **)(local_110 * DAT_00baa7b8);
            local_74 = 0;
            local_b4 = 0x3f800000;
            fVar25 = DAT_00baa454;
            if (local_d1 != 0) {
              fVar25 = DAT_00baad50;
            }
            local_140 = (float)param_1[0xd0] + DAT_00ba9fe4;
            local_144 = fVar25 * DAT_00baa85c + (float)param_1[0xcf];
            FUN_006cb2e0(&local_144,&local_11c,0,local_d0);
          }
          if ((param_1[0x1f] != (float *)0x0) && (*(char *)(param_1 + 0x23) != '\0'))
          goto LAB_00494d31;
        }
        param_1[0x2e8] = (float *)0x5a;
      }
      else {
        if (pfVar18 != (float *)&DAT_0000000e) goto LAB_00494d49;
        ppfVar22 = (float **)param_1[0x1f];
        if (ppfVar22 == (float **)0x0) {
LAB_00494b03:
          cVar10 = FUN_0040a5d0("Rebirth",1);
          if (cVar10 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
        }
        else {
          ppfVar14 = ppfVar22;
          if (&DAT_0000000f < ppfVar22[5]) {
            ppfVar14 = (float **)*ppfVar22;
          }
          pcVar19 = "Rebirth";
          do {
            bVar2 = *(byte *)ppfVar14;
            bVar23 = bVar2 < (byte)*pcVar19;
            if (bVar2 != *pcVar19) {
LAB_00494ae5:
              uVar11 = -(uint)bVar23 | 1;
              goto LAB_00494aea;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppfVar14 + 1);
            bVar23 = bVar2 < ((byte *)pcVar19)[1];
            if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00494ae5;
            ppfVar14 = (float **)((int)ppfVar14 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar2 != 0);
          uVar11 = 0;
LAB_00494aea:
          if ((uVar11 != 0) ||
             ((*(char *)(ppfVar22 + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
          goto LAB_00494b03;
        }
        if (param_1[0x1f] != (float *)0x0) {
          cVar10 = FUN_0040add0("Revive");
          if (cVar10 != '\0') {
            local_d8 = (float **)0x109;
            FUN_00956780();
            FUN_0092dc30(local_d8,0x3f800000,2,0,0x3f800000,0);
            local_d8 = (float **)0x189;
            FUN_00956780();
            FUN_0092dc30(local_d8,0x3f800000,2,0,0x3f800000,0);
            if (local_114 == (float *)0x2) {
              uVar15 = AI_0043ef30();
              iVar12 = FUN_00703850(param_1 + 0xcf,0x4b18967f);
              local_11c = *(float ***)(iVar12 + 0x33c);
              local_118 = *(float ***)(iVar12 + 0x340);
              FUN_006ccdd0(3,&local_11c,0x41200000,uVar15);
            }
            else if (local_148 != 0) {
              uVar11 = 0;
              do {
                iVar12 = *(int *)(local_150 + uVar11 * 4);
                fVar25 = *(float *)(iVar12 + 0x340) - (float)local_104[1];
                fVar26 = *(float *)(iVar12 + 0x33c) - (float)*local_104;
                fVar25 = fVar25 * fVar25 + fVar26 * fVar26;
                FUN_00435a50();
                if (fVar25 < DAT_00baa9d0) {
                  if (*(int *)(iVar12 + 0xb64) == 0x10) {
                    *(undefined4 *)(iVar12 + 0xb64) = 2;
                  }
                  else {
                    fVar25 = *(float *)(iVar12 + 900);
                    fVar26 = fVar25 * DAT_00baa1d4 + *(float *)(iVar12 + 0x380);
                    *(float *)(iVar12 + 0x380) = fVar26;
                    if (fVar25 < fVar26) {
                      *(float *)(iVar12 + 0x380) = fVar25;
                    }
                  }
                }
                uVar11 = uVar11 + 1;
                param_1 = local_ec;
              } while (uVar11 < local_148);
            }
            param_1[0xe0] = (float *)((float)param_1[0xe1] * DAT_00baa0d0 + (float)param_1[0xe0]);
          }
          if ((param_1[0x1f] != (float *)0x0) && (*(char *)(param_1 + 0x23) != '\0'))
          goto LAB_00494d31;
        }
        param_1[0x2f0] = (float *)0x0;
      }
      param_1[0x2d9] = (float *)&DAT_00000004;
      goto LAB_00494d31;
    }
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa380);
    if (param_1[0x1f] == (float *)0x0) {
LAB_00494265:
      if (((uint)param_1[0x5a] & 0x1000800) == 0) {
        FUN_007e6300(0);
        pfVar18 = param_1[0xe7];
        fVar25 = DAT_00baa490;
        if ((NAN((float)pfVar18) || NAN(DAT_00baa454)) == ((float)pfVar18 == DAT_00baa454)) {
          fVar25 = DAT_00baa490 / (((float)pfVar18 + DAT_00baa490) - (float)pfVar18 * DAT_00baa490);
        }
        param_1[0xd9] = (float *)(fVar25 * (float)param_1[0xd9]);
        param_1[0xd8] = (float *)(fVar25 * (float)param_1[0xd8]);
      }
      else {
        iVar12 = FUN_006be840();
        local_11c = *(float ***)(iVar12 + 0x33c);
        local_118 = *(float ***)(iVar12 + 0x340);
        FUN_007e4940(&local_11c,0);
        if (0 < (int)param_1[0x2d4]) {
          param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa3a4);
        }
      }
      ppfVar22 = (float **)param_1[0x1f];
      if ((float)((uint)param_1[0xd8] & DAT_00bacb40) <= (float)((uint)param_1[0xd9] & DAT_00bacb40)
         ) {
        if (ppfVar22 != (float **)0x0) {
          if (&DAT_0000000f < ppfVar22[5]) {
            ppfVar22 = (float **)*ppfVar22;
          }
          pcVar19 = "WalkNoHeadVert";
          do {
            bVar2 = *(byte *)ppfVar22;
            bVar23 = bVar2 < (byte)*pcVar19;
            if (bVar2 != *pcVar19) {
LAB_00494450:
              uVar11 = -(uint)bVar23 | 1;
              goto LAB_00494455;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppfVar22 + 1);
            bVar23 = bVar2 < ((byte *)pcVar19)[1];
            if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00494450;
            ppfVar22 = (float **)((int)ppfVar22 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar2 != 0);
          uVar11 = 0;
LAB_00494455:
          if ((uVar11 == 0) &&
             ((*(char *)(param_1[0x1f] + 0xd) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
          goto LAB_00494489;
        }
        pcVar19 = "WalkNoHeadVert";
LAB_0049446f:
        cVar10 = FUN_0040a5d0(pcVar19,1);
        if (cVar10 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        if (0.0 <= (float)param_1[0xd8]) {
          if (ppfVar22 != (float **)0x0) {
            if (&DAT_0000000f < ppfVar22[5]) {
              ppfVar22 = (float **)*ppfVar22;
            }
            pcVar19 = "WalkNoHeadRight";
            do {
              bVar2 = *(byte *)ppfVar22;
              bVar23 = bVar2 < (byte)*pcVar19;
              if (bVar2 != *pcVar19) {
LAB_004943f5:
                uVar11 = -(uint)bVar23 | 1;
                goto LAB_004943fa;
              }
              if (bVar2 == 0) break;
              bVar2 = *(byte *)((int)ppfVar22 + 1);
              bVar23 = bVar2 < ((byte *)pcVar19)[1];
              if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_004943f5;
              ppfVar22 = (float **)((int)ppfVar22 + 2);
              pcVar19 = (char *)((byte *)pcVar19 + 2);
            } while (bVar2 != 0);
            uVar11 = 0;
LAB_004943fa:
            if ((uVar11 == 0) &&
               ((*(char *)(param_1[0x1f] + 0xd) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
            goto LAB_00494489;
          }
          pcVar19 = "WalkNoHeadRight";
          goto LAB_0049446f;
        }
        if (ppfVar22 == (float **)0x0) {
LAB_004943b6:
          pcVar19 = "WalkNoHeadLeft";
          goto LAB_0049446f;
        }
        if (&DAT_0000000f < ppfVar22[5]) {
          ppfVar22 = (float **)*ppfVar22;
        }
        pcVar19 = "WalkNoHeadLeft";
        do {
          bVar2 = *(byte *)ppfVar22;
          bVar23 = bVar2 < (byte)*pcVar19;
          if (bVar2 != *pcVar19) {
LAB_00494396:
            uVar11 = -(uint)bVar23 | 1;
            goto LAB_0049439b;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppfVar22 + 1);
          bVar23 = bVar2 < ((byte *)pcVar19)[1];
          if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00494396;
          ppfVar22 = (float **)((int)ppfVar22 + 2);
          pcVar19 = (char *)((byte *)pcVar19 + 2);
        } while (bVar2 != 0);
        uVar11 = 0;
LAB_0049439b:
        if ((uVar11 != 0) ||
           ((*(char *)(param_1[0x1f] + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_004943b6;
      }
LAB_00494489:
      if ((((int)param_1[0x2e8] < 1) && (((uint)param_1[0x5a] & 0x1000a00) == 0)) &&
         (param_1[0xc] != (float *)0x1)) {
        uVar11 = FUN_006eef60();
        param_1[0x2e8] = (float *)(uVar11 % 0x14 + 0x28);
        local_e8 = (float **)param_1[0xd9];
        local_e0 = (float **)param_1[0xd8];
        fVar25 = (float)local_e8 * (float)local_e8 + (float)local_e0 * (float)local_e0;
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar25) {
          local_e0 = (float **)((float)local_e0 * (DAT_00baa454 / fVar25));
          local_e8 = (float **)((float)local_e8 * (DAT_00baa454 / fVar25));
        }
        AI_0043ef30();
        local_11c = (float **)((float)local_e0 * DAT_00baa784);
        local_118 = (float **)((float)local_e8 * DAT_00baa784);
        local_c4 = 0x3e99999a;
        local_c8 = 0xc0a00000;
        local_78 = 1;
        local_74 = 0;
        FUN_006cb2e0(param_1 + 0xcf,&local_11c,0,local_d0);
        FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
      }
      if (local_d8 == (float **)0x0) {
        ppfVar22 = (float **)param_1[0x1f];
        if (ppfVar22 != (float **)0x0) {
          if (&DAT_0000000f < ppfVar22[5]) {
            ppfVar22 = (float **)*ppfVar22;
          }
          pcVar19 = "HeadPop";
          do {
            bVar2 = *(byte *)ppfVar22;
            bVar23 = bVar2 < (byte)*pcVar19;
            if (bVar2 != *pcVar19) {
LAB_00494620:
              uVar11 = -(uint)bVar23 | 1;
              goto LAB_00494625;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppfVar22 + 1);
            bVar23 = bVar2 < ((byte *)pcVar19)[1];
            if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00494620;
            ppfVar22 = (float **)((int)ppfVar22 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar2 != 0);
          uVar11 = 0;
LAB_00494625:
          if ((uVar11 == 0) &&
             ((*(char *)(param_1[0x1f] + 0xd) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
          goto LAB_00494d49;
        }
        cVar10 = FUN_0040a5d0("HeadPop",1);
        if (cVar10 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
    }
    else {
      if (*(char *)(param_1 + 0x23) == '\0') {
        ppfVar22 = (float **)param_1[0x1f];
        if (&DAT_0000000f < ppfVar22[5]) {
          ppfVar22 = (float **)*ppfVar22;
        }
        pcVar19 = "HeadPop";
        do {
          bVar2 = *(byte *)ppfVar22;
          bVar23 = bVar2 < (byte)*pcVar19;
          if (bVar2 != *pcVar19) {
LAB_004941f0:
            uVar11 = -(uint)bVar23 | 1;
            goto LAB_004941f5;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppfVar22 + 1);
          bVar23 = bVar2 < ((byte *)pcVar19)[1];
          if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_004941f0;
          ppfVar22 = (float **)((int)ppfVar22 + 2);
          pcVar19 = (char *)((byte *)pcVar19 + 2);
        } while (bVar2 != 0);
        uVar11 = 0;
LAB_004941f5:
        if (uVar11 == 0) {
          param_1[0x2d9] = (float *)&DAT_00000004;
          param_1[0x104] = (float *)0x0;
          param_1[0x2e8] = (float *)0x0;
          goto LAB_00494d49;
        }
        if (*(char *)(param_1 + 0x23) == '\0') goto LAB_00494265;
      }
      ppfVar22 = (float **)param_1[0x1f];
      if (ppfVar22 == (float **)0x0) {
        ppfVar22 = (float **)&DAT_00b1a4ec;
      }
      else if (&DAT_0000000f < ppfVar22[5]) {
        ppfVar22 = (float **)*ppfVar22;
      }
      pcVar19 = "HeadPop";
      do {
        bVar2 = *(byte *)ppfVar22;
        bVar23 = bVar2 < (byte)*pcVar19;
        if (bVar2 != *pcVar19) {
LAB_00494258:
          uVar11 = -(uint)bVar23 | 1;
          goto LAB_0049425d;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppfVar22 + 1);
        bVar23 = bVar2 < ((byte *)pcVar19)[1];
        if (bVar2 != ((byte *)pcVar19)[1]) goto LAB_00494258;
        ppfVar22 = (float **)((int)ppfVar22 + 2);
        pcVar19 = (char *)((byte *)pcVar19 + 2);
      } while (bVar2 != 0);
      uVar11 = 0;
LAB_0049425d:
      if (uVar11 != 0) goto LAB_00494265;
    }
  }
LAB_00494d49:
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (((uint)param_1[0x5a] & 0x20000000) == 0)) {
    AI_0041af60(local_124,0xf6,1,0xffffffff,0,0);
    local_14._0_1_ = 3;
    local_d8 = (float **)0x0;
    if (local_118 != (float **)0x0) {
      do {
        local_ec = *(float ***)(local_120 + (int)local_d8 * 4);
        if (((uint)local_ec[0x5a] & 0x20000000) == 0) {
          pcVar4 = (code *)(*local_ec)[9];
          FUN_00431310(param_1);
          (*pcVar4)(&pfStack_17c);
        }
        local_d8 = (float **)((int)local_d8 + 1);
      } while (local_d8 < local_118);
    }
    if (local_124[0] == '\0') {
      local_14._0_1_ = 4;
      FUN_00a648b0(0,0);
    }
  }
  if (local_190[0] == '\0') {
    local_14._0_1_ = 5;
    FUN_00a648b0(0,0);
  }
  if (local_1a0[0] == '\0') {
    local_14 = CONCAT31(local_14._1_3_,6);
    FUN_00a648b0(0,0);
  }
  local_14 = 0xffffffff;
  puVar9 = puStack_20;
  if (local_154[0] == '\0') {
    local_14 = 7;
    FUN_00a648b0(0,0);
    puVar9 = puStack_20;
  }
LAB_004955cb:
  puStack_20 = puVar9;
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

