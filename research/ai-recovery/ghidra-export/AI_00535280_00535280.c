/* Local J460 decompiler output.
 * VA: 0x00535280
 * Entry: 00535280
 * Dispatcher: 0x006c2990
 * Types: 220,871
 * Identities: 220.0.0,220.1.0,871.0.0
 * Evidence: dispatcher=0x006c2990; end=0x005362a1; instructions=893
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=220,871; identities=220.0.0,220.1.0,871.0.0;
   dispatcher=0x006c2990; end=0x005362a1; instructions=893 */

void __fastcall AI_00535280(float *param_1)

{
  code *pcVar1;
  longlong lVar2;
  longlong lVar3;
  float fVar4;
  char cVar5;
  float fVar6;
  int iVar7;
  undefined4 uVar8;
  int *piVar9;
  float *pfVar10;
  float *pfVar11;
  int **ppiVar12;
  uint uVar13;
  uint uVar14;
  int *piVar15;
  undefined4 extraout_ECX;
  uint uVar16;
  uint uVar17;
  int unaff_EDI;
  int iVar18;
  bool bVar19;
  float fVar20;
  float fVar21;
  float **ppfVar22;
  float **ppfVar23;
  ulonglong uVar24;
  undefined4 uVar25;
  undefined4 uVar26;
  undefined4 uVar27;
  float *pfVar28;
  uint uStack_2bc;
  undefined4 local_2b8;
  float local_2b4;
  int *local_2b0;
  uint local_2ac;
  float local_2a8;
  float local_2a4;
  int iStack_29c;
  float local_298;
  float *pfStack_294;
  float *local_288;
  float local_284;
  undefined4 local_280 [2];
  float *local_278;
  float **local_274;
  float **local_270;
  float **local_26c;
  float **local_268;
  float local_264;
  float local_260;
  float fStack_25c;
  float fStack_258;
  float fStack_254;
  float fStack_250;
  uint uStack_24c;
  float fStack_248;
  float local_228;
  float local_224;
  float local_220;
  float local_21c;
  float local_218;
  float local_214;
  float local_210;
  float local_20c;
  float local_208;
  float local_204;
  float local_200;
  float local_1fc;
  float local_1f8;
  float local_1f4;
  float local_1f0;
  float local_1ec;
  float local_1e8;
  float local_1e4;
  float local_1e0;
  float local_1dc;
  float local_1d8;
  float local_1d4;
  undefined8 uStack_1cc;
  uint uStack_1c4;
  undefined4 local_1c0;
  undefined4 uStack_1bc;
  undefined4 uStack_1b8;
  undefined4 uStack_1b4;
  float fStack_1b0;
  float fStack_1ac;
  float fStack_1a8;
  float fStack_1a4;
  undefined4 uStack_1a0;
  undefined4 uStack_19c;
  undefined4 uStack_198;
  undefined4 uStack_194;
  undefined4 uStack_190;
  undefined4 uStack_18c;
  float fStack_188;
  float fStack_184;
  float fStack_180;
  float fStack_17c;
  undefined4 uStack_178;
  undefined4 uStack_174;
  float fStack_170;
  float fStack_16c;
  float fStack_168;
  float fStack_164;
  float fStack_160;
  float fStack_15c;
  float fStack_158;
  float fStack_154;
  float fStack_150;
  float fStack_14c;
  float fStack_148;
  float fStack_144;
  float fStack_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  undefined auStack_130 [4];
  undefined auStack_12c [8];
  int iStack_124;
  float local_104 [8];
  undefined4 local_e4;
  undefined4 uStack_e0;
  undefined4 local_dc;
  float local_d8 [8];
  undefined4 local_b8;
  undefined4 uStack_b4;
  undefined4 local_b0;
  undefined local_ac [8];
  undefined local_a4 [8];
  undefined local_9c [8];
  undefined local_94 [8];
  undefined local_8c [8];
  undefined local_84 [8];
  undefined local_7c [8];
  undefined local_74 [8];
  undefined local_6c [8];
  undefined local_64 [8];
  undefined local_5c [8];
  undefined local_54 [8];
  undefined local_4c [20];
  uint uStack_38;
  undefined8 uStack_34;
  uint uStack_2c;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&uStack_2bc;
  fVar20 = param_1[0x2d9];
  local_278 = param_1;
  if (fVar20 == 0.0) {
    pfVar10 = param_1 + 0x79;
    param_1[0x2d9] = 4.203895e-45;
    fVar4 = _UNK_00babf2c;
    fVar21 = _UNK_00babf28;
    fVar6 = _UNK_00babf24;
    fVar20 = _DAT_00babf20;
    if (param_1[0xb] == 1.401298e-45) {
      local_b8 = 0;
      uStack_b4 = 0;
      local_b0 = 0;
      if (pfVar10 != local_d8) {
        *pfVar10 = _DAT_00babf20;
        param_1[0x7a] = fVar6;
        param_1[0x7b] = fVar21;
        param_1[0x7c] = fVar4;
        *(undefined8 *)(param_1 + 0x81) = 0;
        *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
        param_1[0x83] = 0.0;
        FUN_00aef12b();
        return;
      }
    }
    else {
      local_e4 = 0x3e828283;
      uStack_e0 = 0x3e24a4a5;
      local_dc = 0x3e0c8c8d;
      if (pfVar10 != local_104) {
        *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
        *(undefined8 *)(param_1 + 0x81) = 0x3e24a4a53e828283;
        *pfVar10 = fVar20;
        param_1[0x7a] = fVar6;
        param_1[0x7b] = fVar21;
        param_1[0x7c] = fVar4;
        param_1[0x83] = 0.1372549;
        FUN_00aef12b();
        return;
      }
    }
    goto LAB_00536cd0;
  }
  if ((param_1[10] != 1.220531e-42) ||
     (fVar6 = 8.407791e-45, *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7240) <= 0.0)) {
    fVar6 = 7.006492e-45;
  }
  param_1[0x61] = fVar6;
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (*(short *)((int)param_1 + 0xc76) == 0)) {
    if (param_1[10] == 1.220531e-42) {
      iVar18 = 2;
      do {
        iVar7 = FUN_006eef60();
        local_2a8 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa704;
        local_2a8 = local_2a8 + local_2a8;
        fVar20 = local_2a8;
        FUN_0041d540();
        local_2a4 = fVar20;
        fVar20 = local_2a8;
        FUN_0041d520();
        local_2b4 = fVar20;
        uVar8 = FUN_006eef60();
        local_228 = local_2a4 * DAT_00baa81c + param_1[0xcf];
        local_224 = local_2b4 * DAT_00baa81c + param_1[0xd0];
        piVar9 = (int *)FUN_006fe410(0x366,0,&local_228,&DAT_00c7b640,param_1,0,uVar8,0);
        iVar7 = FUN_006eef60();
        fVar20 = (float)piVar9[0xdb];
        fVar6 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4;
        fVar6 = fVar6 + fVar6 + DAT_00baa75c;
        if ((NAN(fVar20) || NAN(DAT_00ba9fe4)) == (fVar20 == DAT_00ba9fe4)) {
          piVar9[0xd9] = (int)(((float)piVar9[0xe7] * local_2b4 * fVar6) / fVar20 +
                              (float)piVar9[0xd9]);
          piVar9[0xd8] = (int)(((float)piVar9[0xe7] * local_2a4 * fVar6) / fVar20 +
                              (float)piVar9[0xd8]);
        }
        piVar9[0x5a] = piVar9[0x5a] & 0xfffffffb;
        piVar9[0x5b] = piVar9[0x5b];
        piVar9[0x2d9] = 4;
        (**(code **)(*piVar9 + 0xc))();
        iVar18 = iVar18 + -1;
      } while (iVar18 != 0);
      FUN_00aef12b();
      return;
    }
    if (param_1[0xb] == 1.401298e-45) {
      uVar8 = FUN_006eef60();
      local_220 = param_1[0xcf] + DAT_00baa81c;
      local_21c = param_1[0xd0] + DAT_00ba9fe4;
      FUN_006fe410(0xf,1,&local_220,&DAT_00c7b640,param_1,0,uVar8,0);
      uVar8 = FUN_006eef60();
      local_218 = param_1[0xcf] - DAT_00baa81c;
      local_214 = param_1[0xd0] + DAT_00ba9fe4;
      FUN_006fe410(0xf,1,&local_218,&DAT_00c7b640,param_1,0,uVar8,0);
      FUN_00aef12b();
      return;
    }
    uVar8 = FUN_006eef60();
    local_210 = param_1[0xcf] + DAT_00baa81c;
    local_20c = param_1[0xd0] + DAT_00ba9fe4;
    FUN_006fe410(0xd9,0,&local_210,&DAT_00c7b640,param_1,0,uVar8,0);
    uVar8 = FUN_006eef60();
    local_208 = param_1[0xcf] - DAT_00baa81c;
    local_204 = param_1[0xd0] + DAT_00ba9fe4;
    FUN_006fe410(0xd9,0,&local_208,&DAT_00c7b640,param_1,0,uVar8,0);
    FUN_00aef12b();
    return;
  }
  param_1[0xdb] = param_1[0xdb] * DAT_00baa418;
  if (fVar20 == 4.203895e-45) {
    FUN_0040a380(&DAT_00b1bc54,0);
    if (param_1[0x3c7] == -NAN) {
      uVar13 = FUN_006eef60();
      if (uVar13 % 5 == 0) {
        cVar5 = FUN_006ac710(5,param_1[8]);
        bVar19 = cVar5 == '\0';
        goto LAB_005357e2;
      }
    }
    else {
      pfVar10 = (float *)FUN_006d82d0(local_ac);
      if (((NAN(*pfVar10) || NAN(DAT_00c7b640)) == (*pfVar10 == DAT_00c7b640)) ||
         ((NAN(pfVar10[1]) || NAN(DAT_00c7b644)) == (pfVar10[1] == DAT_00c7b644))) {
        bVar19 = false;
      }
      else {
        bVar19 = true;
      }
LAB_005357e2:
      if (!bVar19) {
        local_284 = param_1[0x5b];
        if ((((uint)param_1[0x5a] & 0x1000800) == 0) || (param_1[0x3c7] != -NAN)) {
          if ((((uint)param_1[0x5a] & 0x200) == 0) || (param_1[0x3c7] != -NAN)) {
            param_1[0x2d9] = 1.121039e-44;
            param_1[0x2f0] = 0.0;
          }
          else {
            param_1[0x2ec] = 0.0;
            param_1[0x2d9] = 5.605194e-45;
            param_1[0x2f0] = 0.0;
            pfVar10 = (float *)FUN_0067f070(local_9c);
            param_1[0xd8] = *pfVar10;
            param_1[0xd9] = pfVar10[1];
          }
        }
        else {
          param_1[0x2ec] = 0.0;
          param_1[0x2d9] = 5.605194e-45;
          param_1[0x2f0] = 0.0;
          pfVar10 = (float *)FUN_006bec40(local_a4,0x3f800000);
          fVar20 = pfVar10[1];
          param_1[0xd8] = *pfVar10 - param_1[0xcf];
          param_1[0xd9] = fVar20 - param_1[0xd0];
        }
      }
    }
    fVar20 = param_1[0xdb] * DAT_00baa354;
LAB_00535fbb:
    param_1[0xdb] = fVar20;
  }
  else if ((fVar20 == 5.605194e-45) || (fVar20 == 8.407791e-45)) {
    FUN_0040a380("Slide",0);
    fVar20 = DAT_00baa81c;
    if (param_1[10] == 1.220531e-42) {
      fVar20 = param_1[0x2d9];
      if (fVar20 == 8.407791e-45) {
        FUN_006d8b20(1);
        fVar20 = param_1[0x2d9];
      }
      fVar6 = DAT_00baa81c;
      local_2a8 = param_1[0xe7];
      local_298 = local_2a8 + param_1[0x2ec];
      param_1[0x2ec] = local_298;
      if (fVar6 <= local_298) {
        fVar6 = local_298;
        if (param_1[0xd8] * param_1[0xd8] + param_1[0xd9] * param_1[0xd9] < DAT_00baa804) {
          bVar19 = fVar20 == 8.407791e-45;
          fVar20 = 4.203895e-45;
          if (bVar19) {
            fVar20 = 1.261169e-44;
          }
          param_1[0x2d9] = fVar20;
        }
      }
      else {
        pfVar10 = (float *)FUN_00a10100(local_54,0x3f000000);
        fVar21 = param_1[0xdb];
        fVar6 = local_298;
        if ((NAN(fVar21) || NAN(DAT_00ba9fe4)) == (fVar21 == DAT_00ba9fe4)) {
          fVar20 = pfVar10[1];
          param_1[0xd8] = (local_2a8 * *pfVar10) / fVar21 + param_1[0xd8];
          param_1[0xd9] = (fVar20 * local_2a8) / fVar21 + param_1[0xd9];
          fVar20 = param_1[0x2d9];
          fVar6 = param_1[0x2ec];
        }
      }
      fVar21 = DAT_00baa904;
      if (fVar20 == 8.407791e-45) {
        fVar21 = DAT_00baa7e8;
      }
      if (fVar6 <= fVar21) goto LAB_00535fc3;
LAB_00535fab:
      fVar20 = param_1[0xdb] * DAT_00baa3c4;
      goto LAB_00535fbb;
    }
    local_2a8 = param_1[0xe7];
    fVar6 = param_1[0x2ec];
    param_1[0x2ec] = local_2a8 + fVar6;
    if (fVar20 <= local_2a8 + fVar6) {
      fVar20 = param_1[0xd8] * param_1[0xd8] + param_1[0xd9] * param_1[0xd9];
      if (DAT_00baa454 <= fVar20) {
        if (fVar20 < DAT_00baa804) {
          param_1[0xdb] = param_1[0xdb] * DAT_00baa3a4;
        }
      }
      else {
        param_1[0x2d9] = 4.203895e-45;
      }
    }
    else {
      pfVar10 = (float *)FUN_00a10100(&local_1c0,0x3f000000);
      fVar20 = param_1[0xdb];
      if ((NAN(fVar20) || NAN(DAT_00ba9fe4)) == (fVar20 == DAT_00ba9fe4)) {
        fVar6 = pfVar10[1];
        param_1[0xd8] = (local_2a8 * *pfVar10) / fVar20 + param_1[0xd8];
        param_1[0xd9] = (local_2a8 * fVar6) / fVar20 + param_1[0xd9];
      }
    }
    fVar20 = param_1[0x2f0];
    if (*(char *)(param_1 + 100) != '\0') {
      fVar20 = (float)((int)fVar20 + 1);
      param_1[0x2f0] = fVar20;
    }
    if (4 < (int)fVar20) goto LAB_00535fab;
  }
  else if (fVar20 == 1.121039e-44) {
    FUN_0040a380(&DAT_00b1d53c,0);
    FUN_006d8b20(1);
    cVar5 = FUN_0040b030("Slide");
    if (cVar5 != '\0') {
      pfVar10 = param_1 + 0xcf;
      if (param_1[10] == 1.220531e-42) {
        iVar18 = FUN_006be840();
        local_200 = *(float *)(iVar18 + 0x33c) - *pfVar10;
        local_1fc = *(float *)(iVar18 + 0x340) - param_1[0xd0];
        FUN_00a10030(&local_274);
        ppfVar22 = local_274;
        ppfVar23 = local_270;
        if (param_1[0x3c7] != -NAN) {
          FUN_006d8d30(local_94);
          cVar5 = FUN_00a10630(pfVar10);
          ppfVar22 = local_274;
          ppfVar23 = local_270;
          if (cVar5 != '\0') {
            pfVar11 = (float *)FUN_006d8d30(local_8c);
            local_1f8 = *pfVar11 - *pfVar10;
            local_1f4 = pfVar11[1] - param_1[0xd0];
            ppiVar12 = (int **)FUN_00a10030(local_84);
            local_274 = (float **)*ppiVar12;
            local_270 = (float **)ppiVar12[1];
            ppfVar22 = local_274;
            ppfVar23 = local_270;
          }
        }
      }
      else {
        iVar18 = FUN_006be840();
        local_1f0 = *(float *)(iVar18 + 0x33c) - *pfVar10;
        local_1ec = *(float *)(iVar18 + 0x340) - param_1[0xd0];
        FUN_00a10030(&local_26c);
        ppfVar22 = local_26c;
        ppfVar23 = local_268;
        if (param_1[0x3c7] != -NAN) {
          FUN_006d8d30(local_4c);
          cVar5 = FUN_00a10630(pfVar10);
          ppfVar22 = local_26c;
          ppfVar23 = local_268;
          if (cVar5 != '\0') {
            pfVar11 = (float *)FUN_006d8d30(local_7c);
            local_1e8 = *pfVar11 - *pfVar10;
            local_1e4 = pfVar11[1] - param_1[0xd0];
            ppiVar12 = (int **)FUN_00a10030(local_74);
            local_26c = (float **)*ppiVar12;
            local_268 = (float **)ppiVar12[1];
            ppfVar22 = local_26c;
            ppfVar23 = local_268;
          }
        }
      }
      fVar20 = (float)ppfVar22 * DAT_00baa87c;
      param_1[0xd9] = ((float)ppfVar23 * DAT_00baa87c) / param_1[0xdb] + param_1[0xd9];
      param_1[0xd8] = fVar20 / param_1[0xdb] + param_1[0xd8];
      FUN_006d6ba0(0x39,0x3f800000,100,0,0x3f800000);
    }
    if ((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2ec] = 0.0;
      param_1[0x2d9] = (float)((uint)(param_1[10] == 1.220531e-42) * 2 + 4);
    }
  }
  else if (fVar20 == 1.261169e-44) {
    FUN_0040a380(&DAT_00b1d554,0);
    FUN_006d8b20(1);
    cVar5 = FUN_0040b030("Slide");
    if (cVar5 != '\0') {
      iVar18 = FUN_006be840();
      pfVar10 = param_1 + 0xcf;
      local_1e0 = *(float *)(iVar18 + 0x33c) - *pfVar10;
      local_1dc = *(float *)(iVar18 + 0x340) - param_1[0xd0];
      FUN_00a10030(&local_264);
      if (param_1[0x3c7] != -NAN) {
        FUN_006d8d30(local_6c);
        cVar5 = FUN_00a10630(pfVar10);
        if (cVar5 != '\0') {
          pfVar11 = (float *)FUN_006d8d30(local_64);
          local_1d8 = *pfVar11 - *pfVar10;
          local_1d4 = pfVar11[1] - param_1[0xd0];
          pfVar10 = (float *)FUN_00a10030(local_5c);
          local_264 = *pfVar10;
          local_260 = pfVar10[1];
        }
      }
      fVar20 = param_1[0xdb];
      fVar6 = local_260 * DAT_00baa87c;
      if ((NAN(fVar20) || NAN(DAT_00ba9fe4)) == (fVar20 == DAT_00ba9fe4)) {
        param_1[0xd8] = (local_264 * DAT_00baa87c) / fVar20 + param_1[0xd8];
        param_1[0xd9] = fVar6 / fVar20 + param_1[0xd9];
      }
      FUN_006d6ba0(0x39,0x3f800000,100,0,0x3f800000);
    }
    if ((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2ec] = 0.0;
      param_1[0x2d9] = 5.605194e-45;
    }
  }
LAB_00535fc3:
  uVar13 = FUN_006eef60();
  if (uVar13 % 10 == 0) {
    iVar18 = FUN_006eef60();
    piVar9 = (int *)FUN_006b64d0((float)((double)iVar18 + (double)(&DAT_00bacb00)[-(iVar18 >> 0x1f)]
                                        ) * DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa198);
    (**(code **)(*piVar9 + 0x3c))(param_1 + 0x79,0xffffffff,0xff,0,1);
  }
  *(bool *)(param_1 + 0x52) = param_1[0xd8] <= 0.0 && param_1[0xd8] != 0.0;
  if ((param_1[0x2d9] == 1.261169e-44) && (param_1[0x3c7] == -NAN)) {
    iVar18 = FUN_006be840();
    *(bool *)(param_1 + 0x52) =
         *(float *)(iVar18 + 0x33c) <= param_1[0xcf] && param_1[0xcf] != *(float *)(iVar18 + 0x33c);
  }
  uVar13 = DAT_00c71678;
  if (((((param_1[0xb] != 1.401298e-45) || (((uint)param_1[0x5a] & 0x4000) != 0)) ||
       (cVar5 = FUN_006fd350(), cVar5 != '\0')) || (*(int *)(uVar13 + 0x264f8) % 3 != 0)) ||
     ((param_1[0x2d9] != 5.605194e-45 &&
      ((param_1[0x2d9] != 1.121039e-44 || (cVar5 = FUN_0040b090("Slide"), cVar5 == '\0'))))))
  goto LAB_00536cd0;
  local_298 = (float)FUN_006eef60();
  local_288 = param_1 + 0xcf;
  pfVar10 = &local_298;
  local_2ac = DAT_00c71678;
  local_2b0 = (int *)0x0;
  local_2b8 = 0x1a;
  local_280[0] = 1000;
  pfVar11 = param_1;
  FUN_008646e0(local_280,&local_2b8,local_288,&DAT_00c7b640,param_1,&local_2b0);
  iVar18 = iStack_29c;
  if (1 < *(int *)(DAT_00c71678 + 0x26614)) {
    piVar9 = *(int **)(DAT_00c71678 + 0x26620);
    uVar13 = FUN_006eef60();
    uStack_1cc = DAT_00b1f66c;
    uStack_2bc = DAT_00b1f674;
    uStack_1c4 = DAT_00b1f674;
    iVar18 = iStack_29c;
    if (iStack_29c == 5) {
      if (pfVar11 < (float *)0x12d) {
        if (pfVar11 == (float *)0x12c) {
          while ((pfVar10 == (float *)0x0 ||
                 (cVar5 = (**(code **)(*piVar9 + 0x24))(pfVar10), cVar5 != '\0'))) {
            if (uVar13 == 0) {
              FUN_00a112c0(0x10,"RNG Seed is zero!\n");
              pcVar1 = (code *)swi(3);
              (*pcVar1)();
              return;
            }
            uVar13 = uVar13 >> ((byte)uStack_1cc & 0x1f) ^ uVar13;
            uVar13 = uVar13 << ((byte)((ulonglong)uStack_1cc >> 0x20) & 0x1f) ^ uVar13;
            uVar13 = uVar13 >> ((byte)uStack_2bc & 0x1f) ^ uVar13;
            uVar8 = FUN_00734180(uVar13,0x19,10,10,1);
            uStack_34 = DAT_00b1f66c;
            uStack_2c = DAT_00b1f674;
            uStack_38 = uVar13;
            pfVar10 = (float *)FUN_00865340(&uStack_38,uVar8,1,1,0);
          }
        }
        else {
          if (pfVar11 == (float *)0x46) {
            local_2ac = (uint)pfVar10 >> 0xb;
            do {
              if (pfVar10 != (float *)0x0) {
                pcVar1 = *(code **)(*piVar9 + 0x28);
                uVar8 = FUN_00734a80(pfVar10,0);
                cVar5 = (*pcVar1)(uVar8);
                if (cVar5 == '\0') goto LAB_00536213;
              }
              if (uVar13 == 0) {
                FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                pcVar1 = (code *)swi(3);
                (*pcVar1)();
                return;
              }
              uVar13 = uVar13 >> ((byte)uStack_1cc & 0x1f) ^ uVar13;
              uVar13 = uVar13 << ((byte)((ulonglong)uStack_1cc >> 0x20) & 0x1f) ^ uVar13;
              uVar13 = uVar13 >> ((byte)uStack_2bc & 0x1f) ^ uVar13;
              uVar14 = FUN_00734900(uVar13);
              pfVar10 = (float *)(uVar14 | (local_2ac & 1) << 0xb);
            } while( true );
          }
          if (pfVar11 == (float *)0x64) {
            pfVar28 = pfVar10;
            if ((pfVar10 == (float *)0x19) ||
               (((local_278 = pfVar10, FUN_004288a0(auStack_12c,&local_278),
                 *(char *)(iStack_124 + 0xd) == '\0' &&
                 (*(int *)(iStack_124 + 0x10) <= (int)pfVar10)) && (iStack_124 != piVar9[8])))) {
              bVar19 = false;
              iVar18 = iStack_29c;
            }
            else {
              bVar19 = true;
              iVar18 = iStack_29c;
            }
            if ((pfVar10 == (float *)0x0) || (pfVar10 = pfVar28, bVar19)) {
              pfVar10 = (float *)(**(code **)(*piVar9 + 0x84))(0);
            }
          }
        }
      }
      else if (pfVar11 == (float *)0x15e) {
        while ((pfVar10 == (float *)0x0 ||
               (cVar5 = (**(code **)(*piVar9 + 0x2c))(pfVar10), cVar5 != '\0'))) {
          pfVar10 = (float *)FUN_00733ca0(0);
        }
      }
    }
  }
LAB_00536213:
  if ((((uint)param_1[0x5a] & 0x20000000) != 0) && (iVar18 == 1000)) {
    switch(pfVar11) {
    case (float *)0x16:
      pfVar11 = (float *)0x2e;
      break;
    case (float *)0x17:
      pfVar11 = (float *)0x35;
      break;
    case (float *)0x18:
      pfVar11 = (float *)0xcc;
      break;
    case (float *)0x19:
      pfVar11 = (float *)0x2c;
      break;
    case (float *)0x1a:
      pfVar11 = (float *)0x2d;
    }
  }
  piVar9 = (int *)FUN_006f0090(iVar18,0);
  if (piVar9 != (int *)0x0) {
    uVar24 = FUN_00a68490();
    pfVar28 = pfStack_294;
    uVar14 = (uint)(uVar24 >> 0x20);
    lVar2 = (uVar24 & 0xffffffff) * 0x431bde82;
    uStack_2bc = (uint)((ulonglong)lVar2 >> 0x20);
    lVar3 = (ulonglong)uVar14 * 0xd7b634db + ((uVar24 & 0xffffffff) * 0xd7b634db >> 0x20);
    uVar17 = (uint)((ulonglong)lVar3 >> 0x20);
    uVar13 = uStack_2bc + CARRY4((uint)lVar2,(uint)lVar3);
    lVar2 = (ulonglong)uVar14 * 0x431bde82 +
            (ulonglong)CONCAT14(CARRY4(uVar17,uVar13),uVar17 + uVar13);
    local_2ac = (uint)((ulonglong)lVar2 >> 0x20);
    ppfVar22 = (float **)(piVar9 + 0xf2);
    uVar13 = (uint)lVar2 >> 0x12 | local_2ac * 0x4000;
    piVar9[0xd] = (int)pfStack_294[10];
    local_2ac = local_2ac >> 0x12;
    piVar9[0xe] = (int)pfStack_294[0xb];
    if (*ppfVar22 != (float *)0x0) {
      local_274 = ppfVar22;
      FUN_004cf210(&local_274);
    }
    *ppfVar22 = pfVar28;
    FUN_004cdcf0(ppfVar22);
    piVar9[0xcf] = (int)pfVar28[0xcf];
    piVar9[0xd0] = (int)pfVar28[0xd0];
    piVar9[0xd8] = (int)DAT_00c7b640;
    piVar9[0xd9] = (int)DAT_00c7b644;
    (**(code **)(*piVar9 + 4))(iVar18,pfVar11,pfVar10,local_2b4);
    iVar7 = *(int *)(*(int *)(unaff_EDI + 0x18300) + 0x1214);
    *(int *)(*(int *)(unaff_EDI + 0x18300) + 0x1214) = iVar7 + 1;
    piVar9[8] = iVar7;
    FUN_00418500(piVar9);
    cVar5 = FUN_006b5b90(1);
    if (cVar5 != '\0') {
      if (((uint)pfVar28[0x5b] & 0x10000000) == 0) {
        cVar5 = FUN_00417430(0x20000000,0);
        if (cVar5 != '\0') {
          uVar27 = 0;
          uVar26 = 0;
          uVar25 = 0xffffffff;
          uVar8 = FUN_00435c70(0xffffffff,0,0);
          FUN_006ad870(uVar8,uVar25,uVar26,uVar27);
        }
      }
      else {
        uVar14 = piVar9[0x5b];
        iVar7 = piVar9[0x5a];
        piVar9[0x5a] = iVar7;
        piVar9[0x5b] = uVar14 | 0x10000000;
        if ((iVar18 != 9) && (iVar18 != 7)) {
          piVar9[0x5a] = iVar7;
          piVar9[0x5b] = uVar14 | 0x10000020;
        }
        fStack_248 = pfVar28[0x99];
        if (fStack_248 == 0.0) {
          local_26c = (float **)0x0;
          local_268 = (float **)0x0;
          local_264 = 0.0;
          local_260 = 0.0;
          fStack_170 = DAT_00c7b640;
          fStack_16c = DAT_00c7b644;
          fStack_25c = DAT_00c7b640;
          fStack_258 = DAT_00c7b644;
          fStack_168 = DAT_00c7b640;
          fStack_164 = DAT_00c7b644;
          fStack_254 = DAT_00c7b640;
          fStack_250 = DAT_00c7b644;
LAB_005366e2:
          uStack_24c = 0;
          if (fStack_248 != 0.0) goto LAB_005366ee;
          uStack_24c = 0;
LAB_00536710:
          uStack_2bc = 0;
          if (fStack_248 != 0.0) goto LAB_0053671c;
LAB_00536735:
          uVar14 = 0;
        }
        else {
          local_26c = *(float ***)((int)fStack_248 + 0x28);
          fStack_25c = *(float *)((int)fStack_248 + 0x33c);
          fStack_258 = *(float *)((int)fStack_248 + 0x340);
          local_268 = *(float ***)((int)fStack_248 + 0x2c);
          local_264 = *(float *)((int)fStack_248 + 0x34);
          local_260 = *(float *)((int)fStack_248 + 0x38);
          fStack_254 = *(float *)((int)fStack_248 + 0x360);
          fStack_250 = *(float *)((int)fStack_248 + 0x364);
          fStack_140 = fStack_25c;
          fStack_13c = fStack_258;
          fStack_138 = fStack_254;
          fStack_134 = fStack_250;
          if ((*(uint *)((int)fStack_248 + 0x168) & 0x100) == 0) goto LAB_005366e2;
          uStack_24c = 1;
LAB_005366ee:
          if ((*(uint *)((int)fStack_248 + 0x168) & 0x20000000) == 0) goto LAB_00536710;
          uStack_2bc = 2;
LAB_0053671c:
          if ((*(uint *)((int)fStack_248 + 0x16c) & 0x400000) == 0) goto LAB_00536735;
          uVar14 = 4;
        }
        uStack_24c = uVar14 | uStack_2bc | uStack_24c;
        FUN_006ad870(&local_26c,0xffffffff,0,0);
        if (iVar18 - 10U < 0x3de) {
          FUN_004a5d10(pfVar11,1);
        }
      }
      uStack_2bc = __RTDynamicCast(pfVar28,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                   &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
      piVar15 = (int *)__RTDynamicCast(piVar9,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                       &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
      if ((uStack_2bc != 0) && (piVar15 != (int *)0x0)) {
        cVar5 = FUN_00417430(1,0);
        if (cVar5 == '\0') {
          cVar5 = FUN_00417430(0,0x1000000);
          if (cVar5 != '\0') {
            local_1c0 = 0;
            uStack_1bc = 0;
            uStack_1b8 = 0;
            uStack_1b4 = 0;
            fStack_160 = DAT_00c7b640;
            fStack_15c = DAT_00c7b644;
            fStack_1b0 = DAT_00c7b640;
            fStack_1ac = DAT_00c7b644;
            fStack_158 = DAT_00c7b640;
            fStack_154 = DAT_00c7b644;
            fStack_1a8 = DAT_00c7b640;
            fStack_1a4 = DAT_00c7b644;
            uStack_1a0 = 0;
            uStack_19c = 0;
            FUN_006b78d0(&local_1c0,0x5a);
          }
          cVar5 = FUN_00417430(0x1000000,0);
          if (cVar5 != '\0') {
            uStack_198 = 0;
            uStack_194 = 0;
            uStack_190 = 0;
            uStack_18c = 0;
            fStack_150 = DAT_00c7b640;
            fStack_14c = DAT_00c7b644;
            fStack_188 = DAT_00c7b640;
            fStack_184 = DAT_00c7b644;
            fStack_148 = DAT_00c7b640;
            fStack_144 = DAT_00c7b644;
            fStack_180 = DAT_00c7b640;
            fStack_17c = DAT_00c7b644;
            uStack_178 = 0;
            uStack_174 = 0;
            FUN_006b5c10(&uStack_198,0x5a,0,0);
            if (0 < piVar15[0x8f]) {
              piVar15[0x5a] = piVar15[0x5a] | 0x1000000;
              piVar15[0x5b] = piVar15[0x5b];
              piVar15[0xed] = piVar15[0xee];
            }
          }
        }
        uVar14 = uStack_2bc;
        fVar6 = *(float *)(uStack_2bc + 0xf48) * (float)piVar15[0x30e];
        pcVar1 = *(code **)(*piVar15 + 0x4c);
        piVar15[0x30e] = (int)fVar6;
        fVar6 = fVar6 * (float)piVar15[0xed];
        fVar20 = fVar6 * DAT_00c3793c;
        piVar15[0x3a] = (int)(fVar6 * DAT_00c37940);
        piVar15[0x39] = (int)fVar20;
        piVar15[0x3d2] = (int)((float)piVar15[0x3d2] * *(float *)(uStack_2bc + 0xf48));
        piVar15[0x3d1] = (int)((float)piVar15[0x3d1] * *(float *)(uStack_2bc + 0xf44));
        piVar15[0xe1] = (int)((float)piVar15[0xe1] * *(float *)(uStack_2bc + 0xf44));
        piVar15[0xe0] = (int)((float)piVar15[0xe0] * *(float *)(uStack_2bc + 0xf44));
        cVar5 = (*pcVar1)();
        if (cVar5 != '\0') {
          iVar18 = *(int *)(uVar14 + 0xf54);
          piVar15 = piVar15 + 0x3d5;
          if (*piVar15 != iVar18) {
            if (*piVar15 != 0) {
              local_2b0 = piVar15;
              FUN_004cf210(&local_2b0);
            }
            *piVar15 = iVar18;
            if (iVar18 != 0) {
              FUN_004cdcf0(piVar15);
            }
          }
        }
      }
    }
    cVar5 = FUN_007078f0(piVar9);
    if (cVar5 != '\0') {
      FUN_007079c0(piVar9,extraout_ECX);
    }
    if ((*(char *)((int)piVar9 + 0x172) != '\0') &&
       (*(int *)(unaff_EDI + 0x67758) != *(int *)(unaff_EDI + 0x6775c))) {
      local_1e8 = (float)piVar9[0xb];
      local_1ec = (float)piVar9[10];
      FUN_009e24a0(&local_298,&local_1ec);
      fVar20 = *(float *)(unaff_EDI + 0x67780);
      if (local_298 == fVar20) {
        local_1e4 = (float)piVar9[10];
        local_1e0 = -NAN;
        pfVar10 = (float *)FUN_009e24a0(auStack_130,&local_1e4);
        local_298 = *pfVar10;
        if (local_298 == fVar20) goto LAB_00536bc0;
      }
      uVar14 = 0;
      piVar15 = (int *)(DAT_00c71678 + 0x1baa8);
      if (*(int *)(DAT_00c71678 + 0x1baac) - *piVar15 >> 2 != 0) {
        do {
          if (piVar15[1] - *piVar15 >> 2 == 0) {
            FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
          }
          FUN_009e0680(6,piVar9,local_2a4,&DAT_00c7b640);
          uVar14 = uVar14 + 1;
          piVar15 = (int *)(DAT_00c71678 + 0x1baa8);
        } while (uVar14 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *piVar15 >> 2));
      }
    }
LAB_00536bc0:
    uVar24 = FUN_00a68490();
    uVar14 = (uint)(uVar24 >> 0x20);
    lVar2 = (uVar24 & 0xffffffff) * 0x431bde82;
    local_2b0 = (int *)((ulonglong)lVar2 >> 0x20);
    lVar3 = (ulonglong)uVar14 * 0x431bde82;
    local_2a4 = (float)lVar3;
    uVar24 = (ulonglong)uVar14 * 0xd7b634db + ((uVar24 & 0xffffffff) * 0xd7b634db >> 0x20);
    uVar17 = (uint)(uVar24 >> 0x20);
    lVar2 = lVar2 + (uVar24 & 0xffffffff);
    local_1dc = (float)lVar2;
    uVar14 = (uint)((ulonglong)lVar2 >> 0x20);
    lVar3 = lVar3 + (ulonglong)CONCAT14(CARRY4(uVar17,uVar14),uVar17 + uVar14);
    uVar16 = (uint)((ulonglong)lVar3 >> 0x20);
    uVar14 = (uint)lVar3 >> 0x12 | uVar16 * 0x4000;
    uVar17 = uVar14 - uVar13;
    bVar19 = CARRY4(DAT_00c7b630,uVar17);
    DAT_00c7b630 = DAT_00c7b630 + uVar17;
    DAT_00c7b634 = DAT_00c7b634 + (((uVar16 >> 0x12) - local_2ac) - (uint)(uVar14 < uVar13)) +
                   (uint)bVar19;
    param_1 = pfStack_294;
  }
  piVar9 = (int *)__RTDynamicCast(piVar9,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                  &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,0);
  ppfVar22 = (float **)(piVar9 + 0xef);
  if (piVar9[0xef] != 0) {
    local_270 = ppfVar22;
    FUN_004cf210(&local_270);
  }
  *ppfVar22 = param_1;
  FUN_004cdcf0(ppfVar22);
  fVar20 = DAT_00c37940;
  piVar9[0x39] = (int)DAT_00c3793c;
  piVar9[0x3a] = (int)fVar20;
  piVar9[0x117] = 0x3c;
  piVar9[0x118] = 0x3c;
  (**(code **)(*piVar9 + 0xc))();
LAB_00536cd0:
  FUN_00aef12b();
  return;
}

