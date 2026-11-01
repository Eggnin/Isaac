/* Local J460 decompiler output.
 * VA: 0x00584140
 * Entry: 00584140
 * Dispatcher: 0x006c2990
 * Types: 909
 * Identities: 909.0.0,909.10.0
 * Evidence: dispatcher=0x006c2990; end=0x00584d54; instructions=680
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=909; identities=909.0.0,909.10.0;
   dispatcher=0x006c2990; end=0x00584d54; instructions=680 */

void __fastcall AI_00584140(int *param_1)

{
  float *pfVar1;
  byte bVar2;
  byte **ppbVar3;
  longlong lVar4;
  longlong lVar5;
  int iVar6;
  int *piVar7;
  code *pcVar8;
  char cVar9;
  undefined uVar10;
  byte **ppbVar11;
  uint uVar12;
  int *piVar13;
  int *piVar14;
  int iVar15;
  int **ppiVar16;
  int **ppiVar17;
  float *pfVar18;
  undefined4 uVar19;
  int iVar20;
  uint uVar21;
  char *pcVar22;
  undefined4 extraout_ECX;
  float *extraout_ECX_00;
  uint uVar23;
  uint uVar24;
  uint unaff_EDI;
  bool bVar25;
  bool bVar26;
  float fVar27;
  double dVar28;
  float fVar29;
  float fVar30;
  float fVar31;
  int *piVar32;
  code *pcVar33;
  ulonglong uVar34;
  undefined4 uVar35;
  undefined4 uVar36;
  undefined4 uVar37;
  int *piStack_388;
  int **local_384;
  int **ppiStack_374;
  undefined4 local_370;
  code *local_36c;
  int *local_368;
  float fStack_364;
  int *local_360;
  float local_35c;
  int iStack_358;
  code *local_354;
  int iStack_350;
  int *local_34c;
  int iStack_348;
  int *local_344;
  int *local_340;
  float fStack_32c;
  float fStack_328;
  int *local_324;
  int *piStack_320;
  float fStack_31c;
  float fStack_318;
  float fStack_314;
  undefined4 auStack_310 [2];
  int **local_308;
  float local_304;
  float local_300;
  int *local_2fc;
  int *local_2f8;
  int *local_2f4;
  int *local_2f0;
  int *piStack_2ec;
  int *piStack_2e8;
  uint uStack_2e4;
  int iStack_2e0;
  undefined4 local_2c0;
  float local_2bc;
  float local_2b8;
  float local_2b4;
  float local_2b0;
  float local_2ac;
  float fStack_2a8;
  float fStack_2a4;
  float fStack_290;
  float fStack_28c;
  undefined4 local_288;
  float local_284;
  float fStack_280;
  float fStack_27c;
  undefined8 uStack_278;
  code *local_270;
  float local_26c;
  undefined4 uStack_268;
  undefined4 uStack_264;
  undefined4 uStack_260;
  int *piStack_25c;
  int *piStack_258;
  int *piStack_254;
  int *piStack_250;
  undefined4 uStack_24c;
  undefined4 uStack_248;
  undefined4 uStack_244;
  undefined4 uStack_240;
  undefined4 uStack_23c;
  undefined4 uStack_238;
  int *piStack_234;
  int *piStack_230;
  int *piStack_22c;
  int *piStack_228;
  undefined4 uStack_224;
  undefined4 uStack_220;
  int local_200;
  int local_1fc;
  int local_1f8;
  int local_1f4;
  int local_1f0;
  int local_1ec;
  int local_1e8;
  int local_1e4;
  uint local_1e0;
  int *local_1dc;
  int iStack_1d8;
  int iStack_1d4;
  int iStack_1d0;
  int *piStack_1cc;
  int *piStack_1c8;
  int *piStack_1c4;
  int *piStack_1c0;
  int *piStack_1bc;
  int *piStack_1b8;
  int *piStack_1b4;
  int *piStack_1b0;
  int *piStack_1ac;
  int *piStack_1a8;
  int *piStack_1a4;
  int *piStack_1a0;
  int *piStack_19c;
  int *piStack_198;
  int *piStack_194;
  int *piStack_190;
  undefined auStack_18c [4];
  undefined auStack_188 [8];
  int iStack_180;
  undefined local_160 [8];
  undefined auStack_158 [60];
  uint uStack_11c;
  undefined8 uStack_118;
  code *pcStack_110;
  undefined4 auStack_f0 [22];
  undefined4 uStack_98;
  undefined4 uStack_94;
  int local_1c [4];
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&ppiStack_374;
  local_360 = *(int **)(DAT_00c71678 + 0x18300);
  local_1c[0] = _DAT_00bab0b0;
  local_1c[1] = _UNK_00bab0b4;
  local_1c[2] = _UNK_00bab0b8;
  local_1c[3] = _UNK_00bab0bc;
  local_34c = param_1;
  if (param_1[0x2dd] == 1) {
    piVar13 = param_1;
    if (*(char *)((int)param_1 + 0x173) != '\0') {
      do {
        piVar13 = (int *)piVar13[0xef];
        piVar14 = param_1;
        if ((piVar13 == (int *)0x0) || (piVar13[10] != 0x38d)) break;
      } while (piVar13[0xb] == 10);
      do {
        piVar14 = (int *)piVar14[0xf0];
        if ((piVar14 == (int *)0x0) || (piVar14[10] != 0x38d)) break;
      } while (piVar14[0xb] == 10);
      if (param_1[0xef] != 0) {
        local_384 = &local_2fc;
        piStack_388 = (int *)0x584207;
        local_2fc = param_1 + 0xef;
        FUN_004cf210();
      }
      param_1[0xef] = 0;
      if (param_1[0xf0] != 0) {
        local_384 = &local_2f8;
        piStack_388 = (int *)0x58423d;
        local_2f8 = param_1 + 0xf0;
        FUN_004cf210();
      }
      param_1[0xf0] = 0;
      local_384 = (int **)0x584250;
      FUN_00583170();
      local_384 = (int **)0x584257;
      FUN_00583170();
      ppbVar3 = (byte **)param_1[0x1f];
      if (ppbVar3 != (byte **)0x0) {
        ppbVar11 = ppbVar3;
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar11 = (byte **)*ppbVar3;
        }
        pcVar22 = "WallImpact";
        do {
          bVar2 = *(byte *)ppbVar11;
          bVar25 = bVar2 < (byte)*pcVar22;
          if (bVar2 != *pcVar22) {
LAB_00584290:
            uVar12 = -(uint)bVar25 | 1;
            goto LAB_00584295;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppbVar11 + 1);
          bVar25 = bVar2 < ((byte *)pcVar22)[1];
          if (bVar2 != ((byte *)pcVar22)[1]) goto LAB_00584290;
          ppbVar11 = (byte **)((int)ppbVar11 + 2);
          pcVar22 = (char *)((byte *)pcVar22 + 2);
        } while (bVar2 != 0);
        uVar12 = 0;
LAB_00584295:
        if ((uVar12 == 0) &&
           ((*(byte *)(ppbVar3 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
        goto LAB_00586436;
      }
      local_384 = (int **)0x1;
      piStack_388 = (int *)0xb1e5f0;
      cVar9 = FUN_0040a5d0();
      if (cVar9 != '\0') {
        local_384 = (int **)0x5842cd;
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
        FUN_00aef12b();
        return;
      }
    }
    goto LAB_00586436;
  }
  if (param_1[0x2d9] == 0) {
    param_1[0x5a] = param_1[0x5a] | 1;
    param_1[0x2d9] = 3;
    param_1[0x3c6] = 1;
    param_1[0x5b] = param_1[0x5b];
    param_1[0x104] = -1;
    *(undefined *)((int)param_1 + 0xc3d) = 0;
    iVar6 = iRam00c34e8c;
    iVar20 = iRam00c34e88;
    iVar15 = iRam00c34e84;
    if (param_1 + 0x79 != (int *)&DAT_00c34e80) {
      param_1[0x79] = _DAT_00c34e80;
      param_1[0x7a] = iVar15;
      param_1[0x7b] = iVar20;
      param_1[0x7c] = iVar6;
      iVar6 = iRam00c34e9c;
      iVar20 = iRam00c34e98;
      iVar15 = iRam00c34e94;
      param_1[0x7d] = _DAT_00c34e90;
      param_1[0x7e] = iVar15;
      param_1[0x7f] = iVar20;
      param_1[0x80] = iVar6;
      *(undefined8 *)(param_1 + 0x81) = DAT_00c34ea0;
      param_1[0x83] = DAT_00c34ea8;
    }
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') goto LAB_00586436;
  local_384 = (int **)0x584376;
  piVar13 = (int *)FUN_00582a60();
  local_384 = (int **)0x584383;
  local_344 = piVar13;
  piVar14 = (int *)FUN_00582a80();
  local_308 = (int **)(piVar13 + 0xef);
  local_340 = piVar14;
  if (*local_308 == (int *)0x0) {
LAB_005843f4:
    iVar15 = 4;
  }
  else {
    fVar27 = ((float)piVar13[0xd0] - (float)param_1[0xd0]) *
             ((float)piVar13[0xd0] - (float)param_1[0xd0]) +
             ((float)piVar13[0xcf] - (float)param_1[0xcf]) *
             ((float)piVar13[0xcf] - (float)param_1[0xcf]);
    local_384 = (int **)0x5843ca;
    FUN_00435a50();
    if (*(float *)(param_1[0xcc] + 0x38) + (float)(*local_308)[0xdc] + DAT_00baa81c < fVar27)
    goto LAB_005843f4;
    iVar15 = 0;
  }
  param_1[0x62] = iVar15;
  if (param_1[0x2d9] != 0) {
    local_384 = (int **)0x58440f;
    FUN_00583170();
  }
  if (param_1 == piVar13) {
    iVar15 = DAT_00baa9d0;
    if ((float)piVar14[0xd0] - (float)param_1[0xd0] < 0.0) {
      iVar15 = DAT_00baae5c;
    }
    param_1[0xd6] = iVar15;
    if (param_1[0xc] == 0) {
      *(bool *)(param_1 + 0x52) =
           (float)param_1[0xcf] <= (float)piVar14[0xcf] &&
           (float)piVar14[0xcf] != (float)param_1[0xcf];
    }
    iVar15 = param_1[0xef];
    if (iVar15 == 0) {
      local_384 = (int **)0x5844ba;
      local_384 = (int **)FUN_00435c70();
      piStack_388 = (int *)0x5844c2;
      (**(code **)(*param_1 + 0x24))();
    }
    else {
      fVar29 = (*(float *)(iVar15 + 0x340) + (float)param_1[0x2ed]) - (float)param_1[0xd0];
      param_1[0xd8] =
           (int)((*(float *)(iVar15 + 0x33c) + (float)param_1[0x2ec]) - (float)param_1[0xcf]);
LAB_00586177:
      param_1[0xd9] = (int)fVar29;
    }
  }
  else {
    if (param_1 != piVar14) {
      local_36c = (code *)(((float)piVar13[0xd0] - (float)piVar14[0xd0]) *
                           ((float)piVar13[0xd0] - (float)piVar14[0xd0]) +
                          ((float)piVar13[0xcf] - (float)piVar14[0xcf]) *
                          ((float)piVar13[0xcf] - (float)piVar14[0xcf]));
      local_384 = (int **)0x585f6a;
      FUN_00435a50();
      local_384 = (int **)local_160;
      local_344 = (int *)((float)piVar14[0xcf] - (float)piVar13[0xcf]);
      local_360 = (int *)((float)piVar14[0xd0] - (float)piVar13[0xd0]);
      piStack_388 = (int *)0x585fc2;
      local_270 = (code *)local_344;
      local_26c = (float)local_360;
      pfVar18 = (float *)FUN_00a10030();
      local_384 = (int **)0x585fd1;
      local_35c = DAT_00baa54c;
      FUN_0041d540();
      local_384 = (int **)0x585fe4;
      fVar27 = DAT_00baa54c;
      FUN_0041d520();
      piVar14 = local_340;
      fVar29 = (float)param_1[0x2e9] / (float)(param_1[0x2e8] + -1);
      local_354 = (code *)(local_35c * *pfVar18 - fVar27 * pfVar18[1]);
      local_344 = (int *)((float)local_344 * fVar29 + (float)piVar13[0xcf]);
      local_360 = (int *)((float)local_360 * fVar29 + (float)piVar13[0xd0]);
      local_34c = (int *)(fVar29 + fVar29);
      local_368 = local_34c;
      if (DAT_00baa2d0 <= fVar29) {
        local_368 = (int *)((DAT_00baa454 - fVar29) + (DAT_00baa454 - fVar29));
      }
      fVar30 = fVar29 * (float)local_36c * (float)local_340[0x2f0];
      local_384 = (int **)0x5860dd;
      local_35c = local_35c * pfVar18[1] + fVar27 * *pfVar18;
      local_340 = (int *)(((float)local_340[0xd4] - (float)piVar13[0xd4]) * fVar29 +
                         (float)piVar13[0xd4]);
      FUN_0041d520();
      local_36c = (code *)(fVar30 * (float)piVar14[0x2f1] * (float)local_368);
      dVar28 = (double)((float)local_34c - DAT_00baa454);
      local_384 = (int **)0x58610f;
      _libm_sse2_pow_precise();
      fVar27 = (float)local_36c + (DAT_00baa454 - (float)dVar28) * (float)piVar14[0x2ef];
      fVar29 = (local_35c * fVar27 + (float)local_360) - (float)param_1[0xd0];
      param_1[0xd4] = (int)local_340;
      param_1[0xd8] = (int)(((float)local_354 * fVar27 + (float)local_344) - (float)param_1[0xcf]);
      goto LAB_00586177;
    }
    if (param_1[0x2d9] != 6) {
      if (param_1[0x2d9] == 7) {
        fVar27 = ((float)piVar13[0xd0] - (float)param_1[0xd0]) * DAT_00baa2d0;
        param_1[0xd8] = (int)(((float)piVar13[0xcf] - (float)param_1[0xcf]) * DAT_00baa2d0);
        param_1[0xd9] = (int)fVar27;
        fVar27 = (float)param_1[0xe7];
        bVar25 = NAN(DAT_00baa454);
        bVar26 = fVar27 == DAT_00baa454;
        param_1[0xdb] = 0x3f800000;
        fVar29 = DAT_00baa3a4;
        if ((NAN(fVar27) || bVar25) == bVar26) {
          fVar29 = DAT_00baa3a4 / ((fVar27 + DAT_00baa3a4) - fVar27 * DAT_00baa3a4);
        }
        local_36c = (code *)(fVar29 * (float)piVar13[0x39]);
        piVar13[0x39] = (int)local_36c;
        piVar13[0x3a] = (int)((float)piVar13[0x3a] * fVar29);
        fVar27 = ((float)piVar13[0xd0] - (float)param_1[0xd0]) *
                 ((float)piVar13[0xd0] - (float)param_1[0xd0]) +
                 ((float)piVar13[0xcf] - (float)param_1[0xcf]) *
                 ((float)piVar13[0xcf] - (float)param_1[0xcf]);
        local_384 = (int **)0x585a04;
        FUN_00435a50();
        if ((fVar27 < DAT_00baa81c) || ((float)local_36c < DAT_00baa120)) {
          while( true ) {
            local_384 = (int **)0x585a2b;
            (**(code **)(*piVar13 + 0x28))();
            piVar13 = (int *)piVar13[0xf0];
            if ((piVar13 == (int *)0x0) || (piVar13[10] != 0x38d)) break;
            if (piVar13[0xb] != 10) {
              FUN_00aef12b();
              return;
            }
          }
          goto LAB_00586436;
        }
      }
      else {
        param_1[0xdf] = 0x447a0000;
        local_384 = &DAT_00c7b640;
        piStack_388 = (int *)0x585a7b;
        cVar9 = FUN_00a10600();
        if (cVar9 == '\0') {
          local_354 = (code *)(extraout_ECX_00[1] * DAT_00baa81c * (float)param_1[0xe7] +
                              (float)param_1[0xd9]);
          local_36c = (code *)(*extraout_ECX_00 * DAT_00baa81c * (float)param_1[0xe7] +
                              (float)param_1[0xd8]);
          param_1[0xd9] = (int)local_354;
          param_1[0xd8] = (int)local_36c;
          fVar27 = (float)local_354 * (float)local_354 + (float)local_36c * (float)local_36c;
          local_384 = (int **)0x585aef;
          FUN_00435a50();
          piVar14 = local_360;
          if ((DAT_00baa9a0 < fVar27) && (DAT_00ba9fe4 < fVar27)) {
            fVar27 = DAT_00baa9a0 / fVar27;
            param_1[0xd9] = (int)(fVar27 * (float)local_354);
            param_1[0xd8] = (int)(fVar27 * (float)local_36c);
          }
          fVar30 = DAT_00baa8e8;
          fVar29 = DAT_00baa87c;
          fVar27 = (float)param_1[0xcf];
          fVar31 = (float)local_360[5] - DAT_00baa8e8;
          if (fVar31 <= fVar27) {
            if (fVar27 <= (float)local_360[7] + DAT_00baa8e8) {
              if (((float)local_360[6] - DAT_00baa8e8) + DAT_00baa87c <= (float)param_1[0xd0]) {
                if ((float)param_1[0xd0] <= (float)local_360[8] + DAT_00baa8e8 + DAT_00baa87c)
                goto LAB_0058617f;
                local_360 = (int *)0x3;
              }
              else {
                local_360 = (int *)0x1;
              }
            }
            else {
              local_360 = (int *)0x2;
            }
          }
          else {
            local_360 = (int *)0x0;
          }
          if (fVar31 <= fVar27) {
            if ((float)piVar14[7] + DAT_00baa8e8 < fVar27) {
              param_1[0xcf] = (int)((float)piVar14[7] + DAT_00baa8e8);
            }
          }
          else {
            param_1[0xcf] = (int)fVar31;
          }
          fVar27 = ((float)piVar14[6] - fVar30) + fVar29;
          if (((float)param_1[0xd0] < fVar27) ||
             (fVar27 = (float)piVar14[8] + fVar30 + fVar29, fVar27 < (float)param_1[0xd0])) {
            param_1[0xd0] = (int)fVar27;
          }
          local_384 = (int **)0x3f800000;
          piStack_388 = (int *)0x0;
          FUN_006d6ba0(0x4d,0x3f800000,2);
          local_384 = (int **)0x8;
          piStack_388 = (int *)0x585c39;
          FUN_00703670();
          local_384 = (int **)0x585c45;
          piVar13 = (int *)FUN_00407170();
          local_288 = 0;
          local_384 = (int **)0x585c57;
          iVar15 = FUN_006eef60();
          local_384 = &DAT_00c7b640;
          pfVar18 = (float *)(param_1 + 0xcf);
          local_284 = DAT_00baadc0 -
                      (float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa87c;
          piStack_388 = piVar13;
          piVar13 = (int *)FUN_006d7cf0(&local_288);
          local_384 = (int **)0x1;
          piStack_388 = (int *)0x0;
          (**(code **)(*piVar13 + 0x3c))(&DAT_00c34e80,0xffffffff,0xff);
          iVar15 = 6;
          do {
            local_384 = (int **)0x585cd8;
            iVar20 = FUN_006eef60();
            local_36c = (code *)(((float)((double)iVar20 +
                                         (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) * DAT_00ba9ff4
                                 - DAT_00baa2d0) * DAT_00baa910 * DAT_00baa088);
            local_384 = (int **)0x585d1b;
            pcVar33 = local_36c;
            FUN_0041d540();
            local_354 = pcVar33;
            local_384 = (int **)0x585d2c;
            pcVar33 = local_36c;
            FUN_0041d520();
            local_368 = (int *)((float)local_354 * (float)param_1[0xcd] -
                               (float)pcVar33 * (float)param_1[0xce]);
            local_34c = (int *)((float)pcVar33 * (float)param_1[0xcd] +
                               (float)local_354 * (float)param_1[0xce]);
            local_384 = (int **)0x585d74;
            iVar20 = FUN_006eef60();
            fVar27 = (float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                     DAT_00ba9ff4;
            uStack_278 = CONCAT44((float)local_34c * fVar27 * DAT_00baa834 + (float)param_1[0xd0],
                                  (float)local_368 * fVar27 * DAT_00baa834 + *pfVar18);
            local_384 = (int **)0x585ddb;
            piStack_388 = (int *)FUN_006eef60();
            fStack_280 = (float)local_368 * DAT_00baa784;
            local_384 = (int **)0x0;
            fStack_27c = (float)local_34c * DAT_00baa784;
            piVar13 = (int *)FUN_006fe410(1000,4,&uStack_278,&fStack_280,0,0);
            local_384 = (int **)0x585e39;
            (**(code **)(*piVar13 + 0xc))();
            piVar13 = local_344;
            iVar15 = iVar15 + -1;
          } while (iVar15 != 0);
          param_1[0xd8] = (int)DAT_00c7b640;
          param_1[0xd9] = (int)DAT_00c7b644;
          param_1[0xcd] = (int)*pfVar18;
          param_1[0xce] = param_1[0xd0];
          param_1[0x2d9] = 6;
          fVar27 = ((float)local_344[0xd0] - (float)param_1[0xd0]) *
                   ((float)local_344[0xd0] - (float)param_1[0xd0]) +
                   ((float)local_344[0xcf] - *pfVar18) * ((float)local_344[0xcf] - *pfVar18);
          local_384 = (int **)0x585eab;
          FUN_00435a50();
          param_1[0x2ee] = (int)fVar27;
          param_1[0x2f0] = 0x3d75c28f;
          piStack_388 = (int *)0xb6207c;
          local_384 = (int **)0x0;
          if (param_1[0xc] == 0) {
            piStack_388 = (int *)0xb6206c;
          }
          param_1[0x30d] = 0x41b00000;
          FUN_0040a380();
          local_384 = (int **)0x0;
          piStack_388 = (int *)0xb1e5f0;
          FUN_0040a380();
          param_1[0x3b] = local_1c[(int)local_360];
          if (param_1[0xc] != 0) {
            param_1[0x2f1] = (int)&DAT_bf800000;
            param_1[0x104] = (uint)(*(char *)(param_1 + 0x52) != '\0') * 2 + 1 + (int)local_360 & 3;
          }
        }
      }
      goto LAB_0058617f;
    }
    uVar12 = param_1[0x104];
    if ((-1 < (int)uVar12) && (fVar27 = (float)param_1[0x2f1], 0.0 <= fVar27)) {
      if (param_1[0xc] == 2) {
        local_2f4 = (int *)(fVar27 + DAT_00baa490);
        ppiVar16 = (int **)&DAT_00b1f128;
        ppiVar17 = &local_2f4;
        bVar25 = (float)local_2f4 == DAT_00baa89c;
        bVar26 = (float)local_2f4 < DAT_00baa89c;
      }
      else {
        local_2f0 = (int *)(fVar27 + DAT_00baa454);
        ppiVar16 = (int **)&DAT_00b1f124;
        ppiVar17 = &local_2f0;
        bVar25 = (float)local_2f0 == DAT_00baa83c;
        bVar26 = (float)local_2f0 < DAT_00baa83c;
      }
      if (bVar26 || bVar25) {
        ppiVar16 = ppiVar17;
      }
      param_1[0x2f1] = (int)*ppiVar16;
      piVar32 = DAT_00c7b644;
      piVar14 = DAT_00c7b640;
      if (uVar12 < 4) {
                    /* WARNING: Load size is inaccurate */
        ppiVar16 = DAT_00c80020;
        if (*(int *)(*ThreadLocalStoragePointer + 0xc) < (int)DAT_00c80020) {
          local_384 = (int **)&DAT_00c80020;
          piStack_388 = (int *)0x586455;
          ppiVar16 = (int **)FUN_00aef29d();
          if (DAT_00c80020 == (int **)0xffffffff) {
            _DAT_00c80024 = _DAT_00bacb90;
            _DAT_00c80028 = _UNK_00bacb94;
            uRam00c8002c = _UNK_00bacb98;
            uRam00c80030 = _UNK_00bacb9c;
            local_384 = (int **)&DAT_00c80020;
            _DAT_00c80034 = _DAT_00babfb0;
            uRam00c80038 = _UNK_00babfb4;
            uRam00c8003c = _UNK_00babfb8;
            uRam00c80040 = _UNK_00babfbc;
            piStack_388 = (int *)0x58648b;
            ppiVar16 = (int **)FUN_00aef253();
          }
        }
        piVar32 = *(int **)(&DAT_00c80028 + uVar12 * 8);
        piVar14 = *(int **)(&DAT_00c80024 + uVar12 * 8);
      }
      fVar27 = DAT_00baa8e8;
      ppiVar17 = (int **)((uint)ppiVar16 & 0xffffff00);
      fVar30 = (float)param_1[0x2f1] * (float)piVar14 + (float)param_1[0xcd];
      param_1[0xce] = (int)((float)param_1[0x2f1] * (float)piVar32 + (float)param_1[0xce]);
      param_1[0xcd] = (int)fVar30;
      fVar29 = (float)local_360[5] - fVar27;
      if (fVar29 <= fVar30) {
        fVar29 = (float)local_360[7] + fVar27;
        if (fVar29 < fVar30) {
          ppiVar17 = (int **)0x0;
          if (param_1[0x104] == 2) {
            ppiVar17 = (int **)0x1;
          }
          goto LAB_0058461d;
        }
      }
      else {
        ppiVar17 = (int **)CONCAT31((int3)((uint)ppiVar16 >> 8),param_1[0x104] == 0);
LAB_0058461d:
        param_1[0xcd] = (int)fVar29;
      }
      fVar29 = ((float)local_360[6] - fVar27) + DAT_00baa87c;
      local_370._1_3_ = (undefined3)((uint)ppiVar17 >> 8);
      if (fVar29 <= (float)param_1[0xce]) {
        fVar27 = (float)local_360[8] + fVar27 + DAT_00baa87c;
        if (fVar27 < (float)param_1[0xce]) {
          uVar10 = SUB41(ppiVar17,0);
          if (param_1[0x104] == 3) {
            uVar10 = 1;
          }
          param_1[0xce] = (int)fVar27;
          local_370 = (int **)CONCAT31(local_370._1_3_,uVar10);
          ppiVar17 = local_370;
        }
      }
      else {
        param_1[0xce] = (int)fVar29;
        if (param_1[0x104] == 1) {
          local_370 = (int **)CONCAT31(local_370._1_3_,1);
          ppiVar17 = local_370;
        }
      }
      local_370 = ppiVar17;
      local_384 = (int **)0x584691;
      uVar12 = FUN_006eef60();
      fVar29 = DAT_00baa1f8;
      fVar27 = (float)param_1[0x2f1];
      if (uVar12 % 0x1e == 0) {
        fVar27 = fVar27 * DAT_00baa1f8;
        param_1[0x2f1] = (int)fVar27;
      }
      cVar9 = *(char *)(param_1 + 0x52);
      if ((char)local_370 == '\0') {
        uVar12 = param_1[0x104];
      }
      else {
        fVar27 = fVar27 * fVar29;
        param_1[0x2f1] = (int)fVar27;
        uVar12 = (uint)(cVar9 != '\0') * 2 + 1 + param_1[0x104] & 0x80000003;
        if ((int)uVar12 < 0) {
          uVar12 = (uVar12 - 1 | 0xfffffffc) + 1;
        }
        param_1[0x104] = uVar12;
      }
      fVar29 = DAT_00baa630;
      uVar12 = (uint)(cVar9 == '\0') * 2 + 1 + uVar12 & 0x80000003;
      if ((int)uVar12 < 0) {
        uVar12 = (uVar12 - 1 | 0xfffffffc) + 1;
      }
      param_1[0x3b] = local_1c[uVar12];
      if (cVar9 == '\0') {
        fVar31 = (float)param_1[0x2ef] + fVar29;
        fVar30 = DAT_00baa904;
        if (fVar31 <= DAT_00baa904) {
          fVar30 = fVar31;
        }
      }
      else {
        fVar31 = (float)param_1[0x2ef] - fVar29;
        fVar30 = DAT_00baae28;
        if (DAT_00baae28 <= fVar31) {
          fVar30 = fVar31;
        }
      }
      param_1[0x2ef] = (int)fVar30;
      if (fVar29 < fVar27) {
        local_384 = (int **)0x584790;
        iVar15 = FUN_0067f010();
        if (iVar15 == 0) {
          local_384 = (int **)0x5847c9;
          FUN_0067f1d0();
          local_2c0 = 0;
          local_384 = (int **)0x5847d9;
          iVar15 = FUN_006eef60();
          local_384 = &DAT_00c7b640;
          piStack_388 = (int *)&DAT_00c34e80;
          local_2bc = DAT_00baadc0 -
                      (float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa87c;
          FUN_006d7cf0(&local_2c0);
          local_384 = (int **)0x584840;
          uVar12 = FUN_006eef60();
          if ((uVar12 % 3 == 0) || (param_1[0xc] == 2)) {
            local_384 = (int **)0x58485c;
            iVar15 = FUN_006eef60();
            local_368 = (int *)(((float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]
                                        ) * DAT_00ba9ff4 - DAT_00baa2d0) * DAT_00baa910 *
                               DAT_00baa088);
            local_384 = (int **)0x58489f;
            local_324 = local_368;
            FUN_0041d540();
            local_384 = (int **)0x5848b0;
            piVar14 = local_368;
            FUN_0041d520();
            local_35c = (float)local_324 * local_2b8 - (float)piVar14 * local_2b4;
            local_370 = (int **)((float)piVar14 * local_2b8 + (float)local_324 * local_2b4);
            local_384 = (int **)0x5848fc;
            iVar15 = FUN_006eef60();
            fVar27 = (float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                     DAT_00ba9ff4;
            local_300 = fVar27 * (float)local_370 * DAT_00baa834 + (float)param_1[0xd0];
            local_304 = fVar27 * local_35c * DAT_00baa834 + (float)param_1[0xcf];
            local_384 = (int **)0x58495f;
            piStack_388 = (int *)FUN_006eef60();
            local_2b0 = local_35c * DAT_00baa784;
            local_384 = (int **)0x0;
            local_2ac = (float)local_370 * DAT_00baa784;
            piVar14 = (int *)FUN_006fe410(1000,5,&local_304,&local_2b0,0,0);
            local_384 = (int **)&DAT_00c34e80;
            piStack_388 = (int *)0x5849c5;
            FUN_004073d0();
            local_384 = (int **)0x5849cc;
            (**(code **)(*piVar14 + 0xc))();
            local_384 = (int **)&DAT_00000004;
            piStack_388 = (int *)0x5849d9;
            FUN_00703670();
            if (param_1[0xc] == 2) {
              local_384 = (int **)0x40800000;
              piStack_388 = (int *)0x40800000;
              FUN_00812f50(&fStack_32c,&local_304,0x40800000);
              local_384 = (int **)&fStack_318;
              fStack_2a8 = (float)piVar13[0xcf] - fStack_32c;
              fStack_2a4 = (float)piVar13[0xd0] - fStack_328;
              piStack_388 = (int *)0x584a59;
              FUN_00a10030();
              local_384 = (int **)0x584a5e;
              iVar15 = FUN_006eef60();
              fVar27 = (float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa950 + DAT_00baa87c;
              local_384 = (int **)(fVar27 * fStack_314 + fStack_328);
              piStack_388 = (int *)(fVar27 * fStack_318 + fStack_32c);
              piStack_320 = piStack_388;
              fStack_31c = (float)local_384;
              iVar15 = FUN_007f0780();
              if (iVar15 != 0) {
                local_384 = (int **)0x0;
                piStack_388 = (int *)0x0;
                pfVar18 = (float *)FUN_00813520(&uStack_268,&piStack_320,0,0);
                local_384 = (int **)0x584af5;
                iVar15 = FUN_006eef60();
                local_368 = (int *)((float)((double)iVar15 +
                                           (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                                    DAT_00ba9ff4 * DAT_00baa8d0 - DAT_00baa854);
                local_384 = (int **)0x584b30;
                iVar15 = FUN_006eef60();
                fStack_31c = (float)local_368 + pfVar18[1];
                piStack_320 = (int *)(((float)((double)iVar15 +
                                              (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                                       DAT_00ba9ff4 * DAT_00baa8d0 - DAT_00baa854) + *pfVar18);
              }
              local_384 = (int **)0x584b80;
              local_324 = (int *)FUN_006eef60();
              local_384 = &local_324;
              piStack_388 = &iStack_358;
              iStack_350 = DAT_00c71678;
              iStack_358 = 100;
              fStack_364 = 3.222986e-44;
              auStack_310[0] = 1000;
              FUN_008646e0(auStack_310,&fStack_364,&fStack_32c,&DAT_00c7b640,param_1);
              fStack_364 = fStack_32c;
              if (1 < *(int *)(DAT_00c71678 + 0x26614)) {
                piVar14 = *(int **)(DAT_00c71678 + 0x26620);
                uVar12 = FUN_006eef60();
                uStack_278 = DAT_00b1f66c;
                local_354 = DAT_00b1f674;
                local_270 = DAT_00b1f674;
                if (fStack_364 == 7.006492e-45) {
                  if (unaff_EDI < 0x12d) {
                    if (unaff_EDI == 300) {
                      while ((ppiStack_374 == (int **)0x0 ||
                             (cVar9 = (**(code **)(*piVar14 + 0x24))(ppiStack_374), cVar9 != '\0')))
                      {
                        if (uVar12 == 0) {
                          FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                          pcVar33 = (code *)swi(3);
                          (*pcVar33)();
                          return;
                        }
                        uVar12 = uVar12 >> ((byte)uStack_278 & 0x1f) ^ uVar12;
                        uVar12 = uVar12 << ((byte)((ulonglong)uStack_278 >> 0x20) & 0x1f) ^ uVar12;
                        uVar12 = uVar12 >> ((byte)local_354 & 0x1f) ^ uVar12;
                        uVar19 = FUN_00734180(uVar12,0x19,10,10,1);
                        uStack_118 = DAT_00b1f66c;
                        pcStack_110 = DAT_00b1f674;
                        uStack_11c = uVar12;
                        ppiStack_374 = (int **)FUN_00865340(&uStack_11c,uVar19,1,1,0);
                      }
                    }
                    else {
                      if (unaff_EDI == 0x46) {
                        local_35c = (float)((uint)ppiStack_374 >> 0xb);
                        do {
                          if (ppiStack_374 != (int **)0x0) {
                            pcVar33 = *(code **)(*piVar14 + 0x28);
                            uVar19 = FUN_00734a80(ppiStack_374,0);
                            cVar9 = (*pcVar33)(uVar19);
                            if (cVar9 == '\0') goto LAB_00584cc2;
                          }
                          local_384 = (int **)(DAT_00c71678 + 0x1a740);
                          if (uVar12 == 0) {
                            FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                            pcVar33 = (code *)swi(3);
                            (*pcVar33)();
                            return;
                          }
                          uVar12 = uVar12 >> ((byte)uStack_278 & 0x1f) ^ uVar12;
                          uVar12 = uVar12 << ((byte)((ulonglong)uStack_278 >> 0x20) & 0x1f) ^ uVar12
                          ;
                          uVar12 = uVar12 >> ((byte)local_354 & 0x1f) ^ uVar12;
                          uVar21 = FUN_00734900(uVar12);
                          ppiStack_374 = (int **)(uVar21 | ((uint)local_35c & 1) << 0xb);
                        } while( true );
                      }
                      if (unaff_EDI == 100) {
                        if (ppiStack_374 == (int **)0x19) {
LAB_00584c9c:
                          bVar25 = false;
                        }
                        else {
                          local_308 = ppiStack_374;
                          FUN_004288a0(auStack_188,&local_308);
                          if (((*(char *)(iStack_180 + 0xd) == '\0') &&
                              (*(int *)(iStack_180 + 0x10) <= (int)ppiStack_374)) &&
                             (iStack_180 != piVar14[8])) goto LAB_00584c9c;
                          bVar25 = true;
                        }
                        if ((ppiStack_374 == (int **)0x0) || (bVar25)) {
                          ppiStack_374 = (int **)(**(code **)(*piVar14 + 0x84))(0);
                        }
                      }
                    }
                  }
                  else if (unaff_EDI == 0x15e) {
                    while ((ppiStack_374 == (int **)0x0 ||
                           (cVar9 = (**(code **)(*piVar14 + 0x2c))(ppiStack_374),
                           piVar13 = local_360, cVar9 != '\0'))) {
                      ppiStack_374 = (int **)FUN_00733ca0(0);
                    }
                  }
                }
              }
LAB_00584cc2:
              if (((param_1[0x5a] & 0x20000000U) != 0) && (fStack_364 == 1.401298e-42)) {
                switch(unaff_EDI) {
                case 0x16:
                  unaff_EDI = 0x2e;
                  break;
                case 0x17:
                  unaff_EDI = 0x35;
                  break;
                case 0x18:
                  unaff_EDI = 0xcc;
                  break;
                case 0x19:
                  unaff_EDI = 0x2c;
                  break;
                case 0x1a:
                  unaff_EDI = 0x2d;
                }
              }
              local_384 = (int **)FUN_006f0090(fStack_364,0);
              if (local_384 != (int **)0x0) {
                uVar34 = FUN_00a68490();
                piVar14 = local_368;
                piVar13 = (int *)local_384;
                uVar12 = (uint)(uVar34 >> 0x20);
                lVar4 = (uVar34 & 0xffffffff) * 0x431bde82;
                local_354 = (code *)((ulonglong)lVar4 >> 0x20);
                lVar5 = (ulonglong)uVar12 * 0xd7b634db +
                        ((uVar34 & 0xffffffff) * 0xd7b634db >> 0x20);
                uVar21 = (uint)((ulonglong)lVar5 >> 0x20);
                lVar4 = (ulonglong)uVar12 * 0x431bde82 +
                        (ulonglong)
                        CONCAT14(CARRY4(uVar21,(uint)(local_354 + CARRY4((uint)lVar4,(uint)lVar5))),
                                 local_354 + CARRY4((uint)lVar4,(uint)lVar5) + uVar21);
                uVar21 = (uint)((ulonglong)lVar4 >> 0x20);
                ppiVar17 = local_384 + 0xf2;
                uVar12 = (uint)lVar4 >> 0x12 | uVar21 * 0x4000;
                local_384[0xd] = (int *)local_368[10];
                local_35c = (float)(uVar21 >> 0x12);
                local_384[0xe] = (int *)local_368[0xb];
                if (*ppiVar17 != (int *)0x0) {
                  local_370 = ppiVar17;
                  FUN_004cf210(&local_370);
                }
                *ppiVar17 = piVar14;
                FUN_004cdcf0(ppiVar17);
                fVar27 = fStack_364;
                piVar13[0xcf] = iStack_348;
                piVar13[0xd0] = (int)local_344;
                piVar13[0xd8] = (int)DAT_00c7b640;
                piVar13[0xd9] = (int)DAT_00c7b644;
                (**(code **)(*piVar13 + 4))(fStack_364,unaff_EDI,ppiStack_374,local_340);
                iVar15 = *(int *)(*(int *)(local_36c + 0x18300) + 0x1214);
                *(int *)(*(int *)(local_36c + 0x18300) + 0x1214) = iVar15 + 1;
                piVar13[8] = iVar15;
                FUN_00418500(piVar13);
                cVar9 = FUN_006b5b90(1);
                if (cVar9 != '\0') {
                  if ((piVar14[0x5b] & 0x10000000U) == 0) {
                    cVar9 = FUN_00417430(0x20000000,0);
                    if (cVar9 != '\0') {
                      uVar37 = 0;
                      uVar36 = 0;
                      uVar35 = 0xffffffff;
                      uVar19 = FUN_00435c70(0xffffffff,0,0);
                      FUN_006ad870(uVar19,uVar35,uVar36,uVar37);
                    }
                  }
                  else {
                    uVar21 = piVar13[0x5b];
                    iVar15 = piVar13[0x5a];
                    piVar13[0x5a] = iVar15;
                    piVar13[0x5b] = uVar21 | 0x10000000;
                    if ((fVar27 != 1.261169e-44) && (fVar27 != 9.809089e-45)) {
                      piVar13[0x5a] = iVar15;
                      piVar13[0x5b] = uVar21 | 0x10000020;
                    }
                    iStack_2e0 = piVar14[0x99];
                    if (iStack_2e0 == 0) {
                      local_304 = 0.0;
                      local_300 = 0.0;
                      local_2fc = (int *)0x0;
                      local_2f8 = (int *)0x0;
                      piStack_1cc = DAT_00c7b640;
                      piStack_1c8 = DAT_00c7b644;
                      local_2f4 = DAT_00c7b640;
                      local_2f0 = DAT_00c7b644;
                      piStack_1c4 = DAT_00c7b640;
                      piStack_1c0 = DAT_00c7b644;
                      piStack_2ec = DAT_00c7b640;
                      piStack_2e8 = DAT_00c7b644;
LAB_005851ae:
                      uStack_2e4 = 0;
                      if (iStack_2e0 != 0) goto LAB_005851ba;
                      uStack_2e4 = 0;
LAB_005851dc:
                      local_354 = (code *)0x0;
                      if (iStack_2e0 != 0) goto LAB_005851e8;
LAB_00585201:
                      uVar21 = 0;
                    }
                    else {
                      local_304 = *(float *)(iStack_2e0 + 0x28);
                      local_2f4 = *(int **)(iStack_2e0 + 0x33c);
                      local_2f0 = *(int **)(iStack_2e0 + 0x340);
                      local_300 = *(float *)(iStack_2e0 + 0x2c);
                      local_2fc = *(int **)(iStack_2e0 + 0x34);
                      local_2f8 = *(int **)(iStack_2e0 + 0x38);
                      piStack_2ec = *(int **)(iStack_2e0 + 0x360);
                      piStack_2e8 = *(int **)(iStack_2e0 + 0x364);
                      piStack_19c = local_2f4;
                      piStack_198 = local_2f0;
                      piStack_194 = piStack_2ec;
                      piStack_190 = piStack_2e8;
                      if ((*(uint *)(iStack_2e0 + 0x168) & 0x100) == 0) goto LAB_005851ae;
                      uStack_2e4 = 1;
LAB_005851ba:
                      if ((*(uint *)(iStack_2e0 + 0x168) & 0x20000000) == 0) goto LAB_005851dc;
                      local_354 = (code *)0x2;
LAB_005851e8:
                      if ((*(uint *)(iStack_2e0 + 0x16c) & 0x400000) == 0) goto LAB_00585201;
                      uVar21 = 4;
                    }
                    uStack_2e4 = uVar21 | (uint)local_354 | uStack_2e4;
                    FUN_006ad870(&local_304,0xffffffff,0,0);
                    if ((int)fVar27 - 10U < 0x3de) {
                      FUN_004a5d10(unaff_EDI,1);
                    }
                  }
                  local_354 = (code *)__RTDynamicCast(piVar14,0,
                                                      &IsaacRepentancePlus::Entity::
                                                       RTTI_Type_Descriptor,
                                                      &IsaacRepentancePlus::Entity_NPC::
                                                       RTTI_Type_Descriptor,0);
                  piVar14 = (int *)__RTDynamicCast(piVar13,0,
                                                   &IsaacRepentancePlus::Entity::
                                                    RTTI_Type_Descriptor,
                                                   &IsaacRepentancePlus::Entity_NPC::
                                                    RTTI_Type_Descriptor,0);
                  if ((local_354 != (code *)0x0) && (piVar14 != (int *)0x0)) {
                    cVar9 = FUN_00417430(1,0);
                    if (cVar9 == '\0') {
                      cVar9 = FUN_00417430(0,0x1000000);
                      if (cVar9 != '\0') {
                        local_26c = 0.0;
                        uStack_268 = 0;
                        uStack_264 = 0;
                        uStack_260 = 0;
                        piStack_1bc = DAT_00c7b640;
                        piStack_1b8 = DAT_00c7b644;
                        piStack_25c = DAT_00c7b640;
                        piStack_258 = DAT_00c7b644;
                        piStack_1b4 = DAT_00c7b640;
                        piStack_1b0 = DAT_00c7b644;
                        piStack_254 = DAT_00c7b640;
                        piStack_250 = DAT_00c7b644;
                        uStack_24c = 0;
                        uStack_248 = 0;
                        FUN_006b78d0(&local_26c,0x5a);
                      }
                      cVar9 = FUN_00417430(0x1000000,0);
                      if (cVar9 != '\0') {
                        uStack_244 = 0;
                        uStack_240 = 0;
                        uStack_23c = 0;
                        uStack_238 = 0;
                        piStack_1ac = DAT_00c7b640;
                        piStack_1a8 = DAT_00c7b644;
                        piStack_234 = DAT_00c7b640;
                        piStack_230 = DAT_00c7b644;
                        piStack_1a4 = DAT_00c7b640;
                        piStack_1a0 = DAT_00c7b644;
                        piStack_22c = DAT_00c7b640;
                        piStack_228 = DAT_00c7b644;
                        uStack_224 = 0;
                        uStack_220 = 0;
                        FUN_006b5c10(&uStack_244,0x5a,0,0);
                        if (0 < piVar14[0x8f]) {
                          piVar14[0x5a] = piVar14[0x5a] | 0x1000000;
                          piVar14[0x5b] = piVar14[0x5b];
                          piVar14[0xed] = piVar14[0xee];
                        }
                      }
                    }
                    pcVar8 = local_354;
                    fVar27 = (float)piVar14[0x30e];
                    fVar29 = *(float *)(local_354 + 0xf48);
                    pcVar33 = *(code **)(*piVar14 + 0x4c);
                    piVar14[0x30e] = (int)(fVar27 * fVar29);
                    fVar29 = fVar27 * fVar29 * (float)piVar14[0xed];
                    fVar27 = fVar29 * DAT_00c3793c;
                    piVar14[0x3a] = (int)(fVar29 * DAT_00c37940);
                    piVar14[0x39] = (int)fVar27;
                    piVar14[0x3d2] = (int)((float)piVar14[0x3d2] * *(float *)(local_354 + 0xf48));
                    piVar14[0x3d1] = (int)(*(float *)(local_354 + 0xf44) * (float)piVar14[0x3d1]);
                    piVar14[0xe1] = (int)((float)piVar14[0xe1] * *(float *)(local_354 + 0xf44));
                    piVar14[0xe0] = (int)((float)piVar14[0xe0] * *(float *)(local_354 + 0xf44));
                    cVar9 = (*pcVar33)();
                    if (cVar9 != '\0') {
                      iVar15 = *(int *)(pcVar8 + 0xf54);
                      piVar14 = piVar14 + 0x3d5;
                      if (*piVar14 != iVar15) {
                        if (*piVar14 != 0) {
                          piStack_388 = piVar14;
                          FUN_004cf210(&piStack_388);
                        }
                        *piVar14 = iVar15;
                        if (iVar15 != 0) {
                          FUN_004cdcf0(piVar14);
                        }
                      }
                    }
                  }
                }
                cVar9 = FUN_007078f0(piVar13);
                if (cVar9 != '\0') {
                  FUN_007079c0(piVar13,extraout_ECX);
                }
                if ((*(char *)((int)piVar13 + 0x172) != '\0') &&
                   (*(int *)(local_36c + 0x67758) != *(int *)(local_36c + 0x6775c))) {
                  local_2b8 = (float)piVar13[0xb];
                  pfVar18 = (float *)(local_36c + 0x67780);
                  local_2bc = (float)piVar13[10];
                  FUN_009e24a0(&fStack_328,&local_2bc);
                  fVar27 = *pfVar18;
                  if (fStack_328 == fVar27) {
                    local_2b4 = (float)piVar13[10];
                    local_2b0 = -NAN;
                    pfVar18 = (float *)FUN_009e24a0(auStack_18c,&local_2b4);
                    fStack_328 = *pfVar18;
                    if (fStack_328 == fVar27) goto LAB_00585691;
                  }
                  uVar21 = 0;
                  piVar14 = (int *)(DAT_00c71678 + 0x1baa8);
                  if (*(int *)(DAT_00c71678 + 0x1baac) - *piVar14 >> 2 != 0) {
                    do {
                      if (piVar14[1] - *piVar14 >> 2 == 0) {
                        FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
                      }
                      FUN_009e0680(6,piVar13,&iStack_348,&DAT_00c7b640);
                      uVar21 = uVar21 + 1;
                      piVar14 = (int *)(DAT_00c71678 + 0x1baa8);
                    } while (uVar21 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *piVar14 >> 2));
                  }
                }
LAB_00585691:
                uVar34 = FUN_00a68490();
                uVar21 = (uint)(uVar34 >> 0x20);
                lVar4 = (uVar34 & 0xffffffff) * 0x431bde82;
                local_370 = (int **)((ulonglong)lVar4 >> 0x20);
                lVar5 = (ulonglong)uVar21 * 0x431bde82;
                piStack_388 = (int *)lVar5;
                uVar34 = (ulonglong)uVar21 * 0xd7b634db +
                         ((uVar34 & 0xffffffff) * 0xd7b634db >> 0x20);
                uVar24 = (uint)(uVar34 >> 0x20);
                lVar4 = lVar4 + (uVar34 & 0xffffffff);
                local_284 = (float)lVar4;
                uVar21 = (uint)((ulonglong)lVar4 >> 0x20);
                lVar5 = lVar5 + (ulonglong)CONCAT14(CARRY4(uVar24,uVar21),uVar24 + uVar21);
                uVar23 = (uint)((ulonglong)lVar5 >> 0x20);
                uVar21 = (uint)lVar5 >> 0x12 | uVar23 * 0x4000;
                uVar24 = uVar21 - uVar12;
                bVar25 = CARRY4(DAT_00c7b630,uVar24);
                DAT_00c7b630 = DAT_00c7b630 + uVar24;
                DAT_00c7b634 = DAT_00c7b634 +
                               (((uVar23 >> 0x12) - (int)local_35c) - (uint)(uVar21 < uVar12)) +
                               (uint)bVar25;
                param_1 = local_368;
                piVar13 = local_360;
              }
              fVar27 = DAT_00c3793c * DAT_00baa528;
              local_384[0x3a] = (int *)(DAT_00c37940 * DAT_00baa528);
              local_384[0x39] = (int *)fVar27;
              iVar15 = FUN_006eef60();
              piVar14 = (int *)FUN_006b64d0(((float)((double)iVar15 +
                                                    (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                                             DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa2d0) *
                                            DAT_00baa528);
              (**(code **)(*piVar14 + 0x3c))(&DAT_00c34e80,0xffffffff,0xff,0,1);
              (**(code **)(*piVar14 + 0xc))();
              local_384 = (int **)0x5857c2;
              uVar12 = FUN_006eef60();
              if (uVar12 % 3 == 0) {
                local_384 = (int **)0x41800000;
                piStack_388 = (int *)0x41800000;
                local_384 = (int **)FUN_00812f50(auStack_158,&local_304,0x41800000);
                piStack_388 = (int *)0x585819;
                FUN_004d8910();
              }
              local_384 = (int **)0x585828;
              AI_0043ef30();
              local_384 = (int **)&DAT_00c34ed8;
              piStack_388 = (int *)0x585839;
              FUN_004071f0();
              local_384 = (int **)auStack_f0;
              piStack_388 = (int *)0x0;
              fStack_290 = fStack_318 * DAT_00baaa30 + fStack_32c;
              uStack_98 = 0x2000;
              uStack_94 = 0;
              fStack_28c = fStack_314 * DAT_00baaa30 + fStack_328;
              FUN_006ccdd0(1,&fStack_290);
            }
          }
        }
      }
    }
    param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
    param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
    fVar27 = DAT_00baa3a4;
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    param_1[0x30d] = (int)((float)param_1[0x30d] * fVar27);
    param_1[0x2f0] = (int)((float)param_1[0x2f0] * fVar27);
  }
LAB_0058617f:
  pcVar33 = (code *)0x0;
  local_368 = (int *)0x0;
  piVar14 = piVar13;
  piVar32 = DAT_00baacc4;
  do {
    pfVar1 = (float *)(piVar14 + 0xe0);
    pfVar18 = (float *)(piVar14 + 5);
    piVar14 = (int *)piVar14[0xf0];
    piVar7 = (int *)(*pfVar1 - *pfVar18);
    if ((float)piVar32 <= (float)(int *)(*pfVar1 - *pfVar18)) {
      piVar7 = piVar32;
    }
    piVar32 = piVar7;
    local_340 = piVar32;
  } while (((piVar14 != (int *)0x0) && (piVar14[10] == 0x38d)) && (piVar14[0xb] == 10));
  do {
    pcVar8 = (code *)local_368;
    if ((float)piVar32 < (float)piVar13[0xe0] - (float)piVar13[5]) {
      local_354 = (code *)(((float)piVar13[0xe0] - (float)piVar13[5]) - (float)piVar32);
      local_1f0 = param_1[0xcf];
      local_1ec = param_1[0xd0];
      local_36c = *(code **)(*piVar13 + 0x20);
      local_200 = param_1[10];
      local_1fc = param_1[0xb];
      local_1f8 = param_1[0xd];
      local_1f4 = param_1[0xe];
      local_1e8 = param_1[0xd8];
      local_1e4 = param_1[0xd9];
      if ((param_1[0x5a] & 0x20000000U) == 0) {
        uVar12 = 0;
      }
      else {
        uVar12 = 2;
      }
      if ((param_1[0x5b] & 0x400000U) == 0) {
        uVar21 = 0;
      }
      else {
        uVar21 = 4;
      }
      local_1e0 = uVar21 | uVar12 | (uint)((param_1[0x5a] & 0x100U) != 0);
      local_384 = (int **)0x1e;
      piStack_388 = &local_200;
      local_1dc = param_1;
      (*local_36c)(local_354,0,0);
      pcVar33 = local_354;
      piVar32 = local_340;
      pcVar8 = local_354;
      if ((float)local_354 <= (float)local_368) {
        pcVar33 = (code *)local_368;
        pcVar8 = (code *)local_368;
      }
    }
    local_368 = (int *)pcVar8;
    piVar13 = (int *)piVar13[0xf0];
  } while (((piVar13 != (int *)0x0) && (piVar13[10] == 0x38d)) && (piVar13[0xb] == 10));
  if ((*local_308 != (int *)0x0) && (DAT_00ba9fe4 < (float)pcVar33)) {
    piStack_1c8 = (int *)param_1[0xcf];
    piStack_1c4 = (int *)param_1[0xd0];
    local_36c = *(code **)(**local_308 + 0x20);
    iStack_1d8 = param_1[10];
    iStack_1d4 = param_1[0xb];
    iStack_1d0 = param_1[0xd];
    piStack_1cc = (int *)param_1[0xe];
    piStack_1c0 = (int *)param_1[0xd8];
    piStack_1bc = (int *)param_1[0xd9];
    if ((param_1[0x5a] & 0x20000000U) == 0) {
      uVar12 = 0;
    }
    else {
      uVar12 = 2;
    }
    if ((param_1[0x5b] & 0x400000U) == 0) {
      uVar21 = 0;
    }
    else {
      uVar21 = 4;
    }
    piStack_1b8 = (int *)(uVar21 | uVar12 | (uint)((param_1[0x5a] & 0x100U) != 0));
    local_384 = (int **)0x1e;
    piStack_388 = &iStack_1d8;
    piStack_1b4 = param_1;
    (*local_36c)((float)pcVar33 * DAT_00baa120,0,0);
  }
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
LAB_00586436:
  FUN_00aef12b();
  return;
}

