/* Local J460 decompiler output.
 * VA: 0x00499de0
 * Entry: 00499de0
 * Dispatcher: 0x006c2990
 * Types: 916
 * Identities: 916.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0049cb40; instructions=2418
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=916; identities=916.0.0; dispatcher=0x006c2990;
   end=0x0049cb40; instructions=2418 */

void __fastcall AI_00499de0(int *param_1)

{
  byte bVar1;
  int *piVar2;
  byte **ppbVar3;
  float fVar4;
  float fVar5;
  int *piVar6;
  undefined *puVar7;
  char cVar8;
  char cVar9;
  uint uVar10;
  uint uVar11;
  float *pfVar12;
  undefined4 *puVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  int *piVar17;
  byte **ppbVar18;
  int iVar19;
  char *pcVar20;
  int iVar21;
  int **ppiVar22;
  code *pcVar23;
  bool bVar24;
  float fVar25;
  int **ppiVar26;
  int *piVar28;
  float fVar29;
  int *piVar30;
  float fVar31;
  float fVar32;
  undefined8 uVar33;
  undefined4 uVar34;
  undefined4 uVar35;
  undefined local_328 [40];
  undefined local_300 [32];
  float local_2e0;
  undefined local_2d8 [4];
  int local_2d4;
  int *local_2cc;
  float local_2c8;
  float local_2c4;
  undefined4 local_2c0;
  int **local_2bc;
  float local_2b8;
  int **local_2b4;
  float local_2b0;
  float local_2ac;
  float local_2a8;
  int *local_2a4;
  undefined4 local_2a0;
  float local_29c;
  float local_298;
  float local_294;
  float local_290;
  int local_28c;
  int *local_288;
  int *local_284;
  int **local_280;
  char local_27c [4];
  int local_278;
  float local_274;
  int *local_270;
  int local_26c;
  int *local_268;
  int **local_264;
  float local_260;
  int *local_25c;
  int *local_258;
  int *local_254;
  int **local_250;
  char local_249;
  undefined local_248 [148];
  undefined4 local_1b4;
  undefined local_1a0 [20];
  undefined4 local_18c;
  undefined4 local_10c;
  undefined local_f8 [4];
  undefined4 local_f4;
  float local_f0;
  undefined4 local_ec;
  float local_e4;
  undefined4 local_64;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  undefined auVar27 [16];
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2efb;
  local_1c = ExceptionList;
  uVar10 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_2a0 = local_2a0 & 0xffffff00;
  local_249 = '\0';
  local_26c = *(int *)(DAT_00c71678 + 0x18300);
  local_28c = (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8];
  if (*(char *)(param_1 + 100) == '\0') {
    param_1[0x2db] = 0;
  }
  else {
    param_1[0x2db] = param_1[0x2db] + 1;
  }
  local_288 = param_1;
  local_24 = uVar10;
  puVar7 = &stack0xfffffffc;
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    local_254 = (int *)0x2cf;
    FUN_00956780(uVar10);
    FUN_0092dc30(local_254,0x3f800000,2,0,0x3f800000,0);
    puVar7 = puStack_20;
  }
  puStack_20 = puVar7;
  iVar21 = local_28c;
  fVar31 = DAT_00baa630;
  switch(param_1[0x2d9]) {
  case 0:
    param_1[0x2d9] = 3;
    uVar11 = FUN_006eef60();
    param_1[0x2f1] = 0;
    param_1[0x2db] = 0;
    param_1[0x2f0] = uVar11 % 0x1e + 0x1e;
    *(undefined *)(param_1 + 0x2d3) = 1;
    break;
  default:
    goto switchD_00499f10_caseD_1;
  case 3:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    FUN_0040a380(&DAT_00b1d428,0);
    param_1[0x2f0] = param_1[0x2f0] - iVar21;
    if (param_1[0x2f0] < 1) {
      param_1[0x2d9] = 4;
      uVar11 = FUN_006eef60();
      param_1[0x104] = 0;
      param_1[0x2f0] = uVar11 % 0x3c + 0x3c;
    }
    else {
      iVar21 = FUN_006be840();
      local_258 = *(int **)(iVar21 + 0x360);
      fVar29 = (float)param_1[0xcf] - *(float *)(iVar21 + 0x33c);
      fVar31 = (float)param_1[0xd0] - *(float *)(iVar21 + 0x340);
      fVar31 = fVar31 * fVar31 + fVar29 * fVar29;
      FUN_00435a50();
      local_284 = (int *)((float)local_258 * fVar31 * DAT_00baa120 + *(float *)(iVar21 + 0x33c));
      local_280 = (int **)(*(float *)(iVar21 + 0x364) * fVar31 * DAT_00baa120 +
                          *(float *)(iVar21 + 0x340));
      local_268 = (int *)((float)local_284 - (float)param_1[0xcf]);
      local_264 = (int **)((float)local_280 - (float)param_1[0xd0]);
      local_258 = local_268;
      FUN_00a10030(&local_274);
      if ((((_DAT_00baa1fc < (float)local_270) && ((float)local_270 < DAT_00baa3e4)) &&
          (cVar9 = FUN_007f0df0(param_1 + 0xcf,&local_284,1,0,0,0,0), cVar9 != '\0')) &&
         (uVar11 = FUN_006eef60(), uVar11 % 10 == 0)) {
        FUN_0040a380("ButtBomb",0);
        param_1[0x2d9] = 0xb;
        *(bool *)(param_1 + 0x52) = (float)local_258 < 0.0;
      }
    }
    break;
  case 4:
    iVar21 = param_1[0x2fb];
    if ((iVar21 == 0) ||
       (((*(char *)(iVar21 + 0x173) == '\0' && (*(int *)(iVar21 + 0x28) == 5)) &&
        (*(int *)(iVar21 + 0x2c) == 0x14)))) {
      cVar9 = FUN_006ac710(3,0);
      if ((cVar9 != '\0') && ((iVar21 == 0 || (uVar11 = FUN_006eef60(), (uVar11 & 3) == 0))))
      goto LAB_0049a295;
    }
    else {
      local_250 = (int **)(param_1 + 0x2fb);
      FUN_004cf210(&local_250);
      param_1[0x2fb] = 0;
LAB_0049a295:
      AI_0041af60(local_27c,5,0x14,0xffffffff,0,0);
      local_14 = 0;
      piVar17 = (int *)0x0;
      local_258 = (int *)0x0;
      local_254 = DAT_00baac7c;
      local_25c = (int *)0x0;
      piVar30 = local_270;
      iVar21 = local_278;
      if (local_270 != (int *)0x0) {
        do {
          piVar2 = *(int **)(iVar21 + (int)local_25c * 4);
          piVar6 = local_258;
          piVar28 = local_254;
          if (((piVar2 != (int *)0x0) && (piVar2[10] == 5)) &&
             ((*(char *)((int)piVar2 + 0x173) == '\0' && (piVar2[0x14d] == 0)))) {
            local_268 = (int *)piVar2[0xcf];
            local_264 = (int **)piVar2[0xd0];
            cVar9 = FUN_007e7070(&local_268,0);
            piVar30 = local_270;
            iVar21 = local_278;
            if ((cVar9 == '\0') ||
               (piVar28 = (int *)(((float)param_1[0xd0] - (float)piVar2[0xd0]) *
                                  ((float)param_1[0xd0] - (float)piVar2[0xd0]) +
                                 ((float)param_1[0xcf] - (float)piVar2[0xcf]) *
                                 ((float)param_1[0xcf] - (float)piVar2[0xcf])), piVar17 = piVar2,
               piVar6 = piVar2, (float)local_254 <= (float)piVar28)) {
              piVar17 = local_258;
              piVar6 = local_258;
              piVar28 = local_254;
            }
          }
          local_254 = piVar28;
          local_258 = piVar6;
          local_25c = (int *)((int)local_25c + 1);
        } while (local_25c < piVar30);
        if (piVar17 != (int *)0x0) {
          ppiVar26 = (int **)(param_1 + 0x2fb);
          if (param_1[0x2fb] != 0) {
            local_250 = ppiVar26;
            FUN_004cf210(&local_250);
            piVar17 = local_258;
          }
          *ppiVar26 = piVar17;
          FUN_004cdcf0(ppiVar26);
        }
      }
      local_14 = 0xffffffff;
      if (local_27c[0] == '\0') {
        local_14 = 1;
        FUN_00a648b0(0,0);
        local_14 = 0xffffffff;
      }
    }
    FUN_0040a380(&DAT_00b1dce4,0);
    if ((param_1[0x1f] == 0) || (cVar9 = FUN_0040add0(&DAT_00b1e5a8), cVar9 == '\0')) {
      iVar21 = param_1[0x104];
      if (0 < iVar21) goto LAB_0049a485;
    }
    else {
      FUN_006d6ba0(0x45,0x3f800000,2,0,0x3f800000);
      iVar21 = 3;
LAB_0049a485:
      fVar31 = (float)param_1[0xdb] * DAT_00baa280;
      param_1[0x104] = iVar21 - local_28c;
      param_1[0xdb] = (int)fVar31;
    }
    iVar21 = param_1[0x2fb];
    if (iVar21 == 0) {
      ppiVar26 = (int **)FUN_006bec40(&local_274,0);
      local_284 = *ppiVar26;
      local_280 = (int **)ppiVar26[1];
      local_25c = local_284;
      local_250 = local_280;
      iVar21 = FUN_00812d00(&local_274);
      if (*(float *)(iVar21 + 4) <= (float)param_1[0xd0] &&
          (float)param_1[0xd0] != *(float *)(iVar21 + 4)) {
        local_268 = (int *)0x0;
        local_264 = (int **)&DAT_bf800000;
        pfVar12 = (float *)FUN_007f0b40(&local_274,&local_284,&local_268);
        local_254 = (int *)(pfVar12[1] - (float)local_250);
        local_258 = (int *)(*pfVar12 - (float)local_25c);
        fVar31 = (float)local_254 * (float)local_254 + (float)local_258 * (float)local_258;
        FUN_00435a50();
        local_284 = local_258;
        piVar17 = local_254;
        if ((DAT_00baa9a0 < fVar31) && (0.0 < fVar31)) {
          local_284 = (int *)((float)local_258 * (DAT_00baa9a0 / fVar31));
          piVar17 = (int *)((float)local_254 * (DAT_00baa9a0 / fVar31));
        }
        local_284 = (int *)((float)local_25c + (float)local_284);
        local_280 = (int **)((float)local_250 + (float)piVar17);
      }
    }
    else {
      local_284 = *(int **)(iVar21 + 0x33c);
      local_280 = *(int ***)(iVar21 + 0x340);
    }
    fVar31 = DAT_00baa3a4;
    if (param_1[0x2fb] != 0) {
      fVar31 = DAT_00baa418;
    }
    FUN_007e33c0(&local_284,fVar31,900,1);
    iVar21 = param_1[0x2f0] - local_28c;
    param_1[0x2f0] = iVar21;
    *(bool *)(param_1 + 0x52) =
         (float)param_1[0xcf] <= (float)local_284 && (float)local_284 != (float)param_1[0xcf];
    if ((param_1[0x2db] < 9) || (0 < param_1[0x2e8])) {
      if (param_1[0x2fb] == 0) {
        iVar21 = FUN_006be840();
        fVar31 = (float)param_1[0xd0] - *(float *)(iVar21 + 0x340);
        fVar29 = (float)param_1[0xcf] - *(float *)(iVar21 + 0x33c);
        fVar31 = fVar31 * fVar31 + fVar29 * fVar29;
        FUN_00435a50();
        local_254 = (int *)(fVar31 * *(float *)(iVar21 + 0x360) * DAT_00baa120 +
                           *(float *)(iVar21 + 0x33c));
        local_250 = (int **)(fVar31 * *(float *)(iVar21 + 0x364) * DAT_00baa120 +
                            *(float *)(iVar21 + 0x340));
        uVar11 = FUN_006eef60();
        if (((((uVar11 & 3) == 0) &&
             ((float)((uint)((float)local_250 - (float)param_1[0xd0]) & DAT_00bacb40) <=
              DAT_00baa904)) &&
            ((float)((uint)((float)local_254 - (float)param_1[0xcf]) & DAT_00bacb40) <= DAT_00baaa94
            )) && ((param_1[0x2e8] < 1 || (uVar11 = FUN_006eef60(), uVar11 % 0x32 == 0)))) {
          param_1[0x104] = 1;
          goto LAB_0049a69d;
        }
        if (((float)((uint)((float)local_254 - (float)param_1[0xcf]) & DAT_00bacb40) <= DAT_00baa904
            ) && (uVar11 = FUN_006eef60(), uVar11 % 6 == 0)) {
          pcVar20 = "UpCharge";
          param_1[0x2d9] = 10;
          param_1[0x2ec] = (int)((float)local_254 - (float)param_1[0xcf]);
          param_1[0x2ed] = (int)((float)local_250 - (float)param_1[0xd0]);
          if (0.0 <= (float)local_250 - (float)param_1[0xd0]) {
            pcVar20 = "DownCharge";
          }
          FUN_0040a380(pcVar20,0);
          param_1[0x104] = 0;
        }
      }
      else {
        if (iVar21 < 0xf) {
          iVar21 = 0xf;
        }
        param_1[0x2f0] = iVar21;
      }
    }
    else {
      param_1[0x104] = -1;
LAB_0049a69d:
      param_1[0x2ec] = (int)DAT_00c7b640;
      param_1[0x2ed] = DAT_00c7b644;
      param_1[0x2d9] = 8;
      cVar9 = FUN_0040a5d0("Swipe",1);
      if (cVar9 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
      local_250 = (int **)0x2d3;
      FUN_00956780();
      FUN_0092dc30(local_250,0x3f800000,2,0,0x3f800000,0);
    }
    if (param_1[0x2f0] < 1) {
LAB_0049a8fb:
      param_1[0x2d9] = 3;
      uVar11 = FUN_006eef60();
      param_1[0x2f0] = uVar11 % 0x14 + 10;
    }
    break;
  case 5:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
    cVar9 = FUN_0040a550(&DAT_00b1a4ec);
    if (param_1[0x104] == 0) {
      if (cVar9 != '\0') {
        FUN_0040a380("Dizzy",0);
        FUN_006b6470(0x2d0,2,0,0x3f800000);
      }
      iVar21 = local_28c;
      if (0 < local_28c) {
        do {
          param_1[0x2f0] = param_1[0x2f0] + -1;
          if ((10 < param_1[0x2f0]) && ((param_1[0x2f0] & 1U) == 0)) {
            uVar11 = FUN_006eef60();
            if (uVar11 % 5 == 0) {
              puVar13 = (undefined4 *)FUN_006bec40(&local_274,0);
            }
            else {
              uVar35 = 0;
              uVar34 = 0;
              uVar15 = 0;
              uVar14 = 0x42800000;
              uVar16 = FUN_0081e9d0(&local_29c,0x41200000);
              puVar13 = (undefined4 *)FUN_00813520(&local_2c8,uVar16,uVar14,uVar15,uVar34,uVar35);
            }
            local_2c0 = *puVar13;
            local_2bc = (int **)puVar13[1];
            AI_0043ef30();
            iVar19 = FUN_006eef60();
            local_f4 = 0xc3c80000;
            local_ec = 0x40000000;
            local_e4 = DAT_00baa4b0 -
                       (float)((double)iVar19 + (double)(&DAT_00bacb00)[-(iVar19 >> 0x1f)]) *
                       DAT_00ba9ff4 * _DAT_00baa284;
            iVar19 = FUN_006eef60();
            local_64 = 9;
            local_f0 = (float)((double)iVar19 + (double)(&DAT_00bacb00)[-(iVar19 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa81c + DAT_00ba9fe4;
            iVar19 = FUN_006eef60();
            fVar31 = (float)((double)iVar19 + (double)(&DAT_00bacb00)[-(iVar19 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_250 = (int **)(fVar31 + fVar31);
            iVar19 = FUN_006eef60();
            local_25c = (int *)((float)((double)iVar19 + (double)(&DAT_00bacb00)[-(iVar19 >> 0x1f)])
                               * DAT_00ba9ff4);
            ppiVar26 = local_250;
            FUN_0041d540();
            local_268 = (int *)((float)ppiVar26 * (float)local_25c);
            ppiVar26 = local_250;
            FUN_0041d520();
            local_264 = (int **)((float)ppiVar26 * (float)local_25c);
            FUN_006cb2e0(&local_2c0,&local_268,0,local_f8);
          }
          iVar21 = iVar21 + -1;
        } while (iVar21 != 0);
      }
      if (param_1[0x2f0] < 0) {
        FUN_0040a380("ShakeOff",0);
        FUN_006b6470(0x2d6,2,0,0x3f800000);
        param_1[0x104] = param_1[0x104] + 1;
      }
    }
    else if (cVar9 != '\0') {
      FUN_006b6470(0x2d2,2,0,0x3f800000);
      goto LAB_0049a8fb;
    }
    break;
  case 8:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    if ((param_1[0x1f] != 0) && (cVar9 = FUN_0040add0("Shoot"), cVar9 != '\0')) {
      FUN_006d6ba0(0x12f,0x3f800000,2,0,0x3f800000);
      iVar21 = FUN_006be840();
      local_25c = (int *)param_1[0xcf];
      local_250 = *(int ***)(iVar21 + 0x340);
      fVar31 = (float)local_25c - *(float *)(iVar21 + 0x33c);
      fVar31 = ((float)param_1[0xd0] - (float)local_250) * ((float)param_1[0xd0] - (float)local_250)
               + fVar31 * fVar31;
      FUN_00435a50();
      fVar5 = DAT_00baadcc;
      fVar4 = DAT_00baad90;
      fVar32 = DAT_00baa834;
      fVar29 = DAT_00baa75c;
      if (fVar31 <= DAT_00baa020) {
        fVar31 = 0.0;
      }
      else {
        fVar31 = ((float)local_250 - (float)param_1[0xd0]) / fVar31;
      }
      fVar31 = fVar31 * DAT_00baa75c;
      param_1[0x2ec] = -0x3ec00000;
      if (fVar31 <= fVar4) {
        fVar31 = fVar4;
      }
      if (fVar29 <= fVar31) {
        fVar31 = fVar29;
      }
      param_1[0x2ed] = (int)fVar31;
      fVar31 = fVar5;
      if (*(char *)(param_1 + 0x52) != '\0') {
        param_1[0x2ec] = 0x41400000;
        fVar31 = fVar32;
      }
      if (param_1[0x104] == 0) {
        fVar25 = (*(float *)(iVar21 + 0x33c) - (float)local_25c) / DAT_00baa87c;
        auVar27 = ZEXT416((uint)fVar25);
        if (0.0 <= fVar31) {
          if (fVar25 <= fVar29) {
            auVar27 = ZEXT416((uint)fVar29);
          }
          if (fVar32 <= auVar27._0_4_) {
            auVar27._0_4_ = fVar32;
          }
        }
        else {
          if (fVar25 <= fVar5) {
            auVar27 = ZEXT416((uint)fVar5);
          }
          if (fVar4 <= auVar27._0_4_) {
            auVar27._0_4_ = fVar4;
          }
        }
        param_1[0x2ec] = auVar27._0_4_;
      }
    }
    cVar9 = FUN_00a10630(&DAT_00c7b640);
    if (cVar9 != '\0') {
      iVar21 = FUN_006ac760();
      if (iVar21 != 0) {
        uVar16 = FUN_006eef60();
        local_250 = (int **)((float)param_1[0xd8] * DAT_00baa198);
        local_25c = (int *)((float)param_1[0xd9] * DAT_00baa198);
        pfVar12 = (float *)FUN_0067f070(&local_274);
        local_268 = (int *)((float)local_250 + *pfVar12 + *pfVar12);
        local_264 = (int **)((float)local_25c + pfVar12[1] + pfVar12[1]);
        iVar21 = FUN_00428b20(1000,0x3b,param_1 + 0xcf,&local_268,param_1,0,uVar16);
        iVar19 = FUN_006eef60();
        *(float *)(iVar21 + 0x474) =
             (float)((double)iVar19 + (double)(&DAT_00bacb00)[-(iVar19 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa81c + DAT_00baa630;
        uVar11 = FUN_006eef60();
        iVar19 = uVar11 % 0xf + 0xf;
        *(int *)(iVar21 + 0x45c) = iVar19;
        *(int *)(iVar21 + 0x460) = iVar19;
        uVar33 = FUN_004238f0(0x3f400000);
        (*(code *)((ulonglong)uVar33 >> 0x20))((int)uVar33,0xffffffff,0xff,0,1);
        *(undefined4 *)(iVar21 + 0x358) = 0xc0a00000;
      }
      pfVar12 = (float *)(param_1 + 0x2ec);
      FUN_004314b0(pfVar12,0);
      fVar32 = DAT_00baa380;
      FUN_00684cb0();
      fVar31 = *pfVar12;
      param_1[0x2ed] = (int)(fVar32 * (float)param_1[0x2ed]);
      fVar29 = DAT_00baa120;
      *pfVar12 = fVar32 * fVar31;
      if ((float)((uint)(fVar32 * fVar31) & DAT_00bacb40) < fVar29) {
        *pfVar12 = DAT_00c7b640;
        param_1[0x2ed] = DAT_00c7b644;
      }
      if (*(char *)(param_1 + 100) != '\0') {
        fVar31 = (float)param_1[0x65] * (float)param_1[0x65] +
                 (float)param_1[0x66] * (float)param_1[0x66];
        FUN_00435a50();
        if (DAT_00baa81c < fVar31) {
          pfVar12 = (float *)FUN_00a10030(&local_274);
          local_2a0 = local_2a0 & 0xff;
          if (DAT_00baa1f8 < pfVar12[1] * (float)param_1[0x68] + *pfVar12 * (float)param_1[0x67]) {
            local_2a0 = 1;
          }
        }
      }
      local_249 = '\x01';
    }
    FUN_006b6c20(local_300,"Hitbox");
    if (0.0 < local_2e0) {
      if ((*(uint *)(DAT_00c71678 + 0x26544) >> 5 & 1) != 0) {
        iVar21 = FUN_006b5f10(1);
        *(undefined4 *)(iVar21 + 4) = 1;
        FUN_0042eef0(local_300);
      }
      FUN_0041a790(local_2d8,local_300,0xffffffff);
      local_14 = 2;
      local_258 = (int *)0x0;
      if (local_2cc != (int *)0x0) {
        do {
          piVar17 = *(int **)(local_2d4 + (int)local_258 * 4);
          local_254 = piVar17;
          if (((piVar17[0x62] != 0) && (piVar17[0x61] != 4)) && (piVar17 != param_1)) {
            FUN_006a9ba0(&uStack_4c,&DAT_00c7b640);
            local_2c4 = 0.0;
            local_2c8 = 0.0;
            cVar9 = FUN_00945470(&local_2c8);
            if (cVar9 != '\0') {
              local_2b4 = (int **)((float)piVar17[0xcf] - (float)param_1[0xcf]);
              local_2a4 = (int *)((float)piVar17[0xd0] - (float)param_1[0xd0]);
              fVar31 = (float)local_2b4 * (float)local_2b4 + (float)local_2a4 * (float)local_2a4;
              local_25c = local_2a4;
              local_250 = local_2b4;
              FUN_00435a50();
              piVar30 = local_2a4;
              ppiVar26 = local_2b4;
              if (DAT_00ba9fe4 < fVar31) {
                piVar30 = (int *)((float)local_25c * ((float)DAT_00baa454 / fVar31));
                ppiVar26 = (int **)((float)local_250 * ((float)DAT_00baa454 / fVar31));
              }
              fVar29 = (float)piVar30 * DAT_00baa81c;
              piVar17[0xd8] = (int)((float)ppiVar26 * DAT_00baa81c + (float)piVar17[0xd8]);
              piVar17[0xd9] = (int)(fVar29 + (float)piVar17[0xd9]);
              local_290 = fVar31;
              if ((piVar17[10] == 1) || (piVar17[10] == 3)) {
                pcVar23 = *(code **)(*piVar17 + 0x20);
                FUN_00431310(param_1);
                uVar16 = 0x40000000;
              }
              else {
                pcVar23 = *(code **)(*piVar17 + 0x20);
                FUN_00431310(param_1);
                uVar16 = 0x420c0000;
              }
              (*pcVar23)(uVar16,0,0,&uStack_4c,0x1e);
              piVar17 = local_254;
              if (((local_254[10] == 1) && (local_254[0xb] == 0)) &&
                 ((*(char *)((int)local_254 + 0x20a9) == '\0' &&
                  ((cVar9 = FUN_007c3100(0,0,0), cVar9 == '\0' && (0 < piVar17[0x4da])))))) {
                FUN_00759400(0xffffffff);
                uVar11 = FUN_006eef60();
                ppiVar22 = (int **)(uVar11 % 3 + 1);
                ppiVar26 = (int **)piVar17[0x4da];
                if ((int)ppiVar22 < (int)(int **)piVar17[0x4da]) {
                  ppiVar26 = ppiVar22;
                }
                local_264 = ppiVar26;
                if (0 < (int)ppiVar26) {
                  do {
                    local_280 = (int **)FUN_006eef60();
                    piVar30 = local_25c;
                    local_2bc = local_250;
                    if (DAT_00ba9fe4 < local_290) {
                      local_2bc = (int **)((float)local_250 * ((float)DAT_00baa454 / local_290));
                      piVar30 = (int *)((float)local_25c * ((float)DAT_00baa454 / local_290));
                    }
                    local_2bc = (int **)((float)local_2bc * DAT_00baa6fc);
                    local_2ac = (float)piVar30 * DAT_00baa6fc;
                    iVar21 = FUN_006eef60();
                    fVar31 = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baa704;
                    local_2a4 = (int *)(fVar31 + fVar31);
                    piVar30 = local_2a4;
                    FUN_0041d520();
                    local_254 = piVar30;
                    iVar21 = FUN_006eef60();
                    local_2b4 = (int **)((float)((double)iVar21 +
                                                (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                                         DAT_00ba9ff4 * DAT_00baa784 + DAT_00baa630);
                    piVar30 = local_2a4;
                    FUN_0041d540();
                    local_274 = (float)piVar17[0xcf];
                    local_270 = (int *)piVar17[0xd0];
                    local_29c = (float)piVar30 * (float)local_2b4 + (float)local_2bc;
                    local_298 = (float)local_254 * (float)local_2b4 + local_2ac;
                    FUN_00428b20(5,0x14,&local_274,&local_29c,0,1,local_280);
                    ppiVar26 = (int **)((int)ppiVar26 + -1);
                    param_1 = local_288;
                  } while (ppiVar26 != (int **)0x0);
                }
                FUN_00759400(-(int)local_264);
              }
            }
          }
          local_258 = (int *)((int)local_258 + 1);
        } while (local_258 < local_2cc);
      }
      local_14 = 0xffffffff;
      FUN_004175b0();
    }
    if ((0 < param_1[0x104]) && (cVar9 = FUN_0040b030("Sound"), cVar9 != '\0')) {
      param_1[0x104] = param_1[0x104] + -1;
      *(bool *)(param_1 + 0x52) = *(char *)(param_1 + 0x52) == '\0';
      FUN_0040a380("Swipe",1);
      FUN_006b6470(0x2d3,2,0,0x3f800000);
      FUN_0040a720(7);
    }
    if ((param_1[0x1f] == 0) || (fVar31 = DAT_00baa630, *(char *)(param_1 + 0x23) == '\0')) {
      if (param_1[0x104] < 0) {
        param_1[0x2d9] = 3;
        param_1[0x2f0] = 1;
        param_1[0x2e8] = 1;
        fVar31 = DAT_00baa630;
      }
      else {
        *(undefined *)(param_1 + 0x52) = 0;
        FUN_0040a380("GroundSlam",0);
        param_1[0x2d9] = 9;
        fVar31 = DAT_00baa630;
      }
    }
    goto switchD_00499f10_caseD_1;
  case 9:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
    cVar9 = FUN_0040b030("Sound");
    if (cVar9 != '\0') {
      FUN_006b6470(0x2d5,2,0,0x3f800000);
    }
    cVar9 = FUN_0040b030("Shoot");
    if (cVar9 != '\0') {
      pfVar12 = (float *)FUN_006b6af0(&local_274,"Hitbox");
      local_294 = (float)param_1[0xcf] + *pfVar12;
      local_290 = pfVar12[1] + (float)param_1[0xd0];
      FUN_00703670(0xe);
      local_254 = (int *)0xf;
      do {
        iVar21 = FUN_006eef60();
        fVar31 = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa704;
        local_250 = (int **)(fVar31 + fVar31);
        iVar21 = FUN_006eef60();
        local_25c = (int *)((float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                            DAT_00ba9ff4 * DAT_00baa784 + DAT_00baa854);
        ppiVar26 = local_250;
        FUN_0041d540();
        local_274 = (float)ppiVar26 * (float)local_25c;
        ppiVar26 = local_250;
        FUN_0041d520();
        local_270 = (int *)((float)ppiVar26 * (float)local_25c);
        uVar16 = FUN_006eef60();
        piVar17 = (int *)FUN_00428b20(1000,0x3b,&local_294,&local_274,param_1,0,uVar16);
        uVar11 = FUN_006eef60();
        local_250 = DAT_00baad50;
        if ((uVar11 & 1) != 0) {
          local_250 = DAT_00baa454;
        }
        iVar21 = FUN_006eef60();
        piVar17[0x11d] =
             (int)(((float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa630) * (float)local_250);
        iVar21 = FUN_006eef60();
        fVar29 = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa1f8 + DAT_00baa3e0;
        fVar31 = fVar29 * DAT_00c3793c;
        piVar17[0x3a] = (int)(fVar29 * DAT_00c37940);
        piVar17[0x39] = (int)fVar31;
        uVar11 = FUN_006eef60();
        iVar21 = uVar11 % 0x14 + 0x14;
        piVar17[0x117] = iVar21;
        piVar17[0x118] = iVar21;
        FUN_00682ed0();
        local_50 = _DAT_00babdf0;
        uStack_4c = _UNK_00babdf4;
        uStack_48 = _UNK_00babdf8;
        uStack_44 = _UNK_00babdfc;
        (**(code **)(*piVar17 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
        local_254 = (int *)((int)local_254 + -1);
      } while (local_254 != (int *)0x0);
      local_250 = (int **)0x0;
      local_254 = (int *)0x0;
      do {
        uVar16 = FUN_006eef60();
        local_280 = (int **)FUN_00428b20(1000,0x48,&local_294,&DAT_00c7b640,param_1,0,uVar16);
        ppiVar26 = local_280 + 0xef;
        if (local_280[0xef] != (int *)0x0) {
          local_264 = ppiVar26;
          FUN_004cf210(&local_264);
        }
        *ppiVar26 = param_1;
        FUN_004cdcf0(ppiVar26);
        ppiVar26 = (int **)((int)local_250 + 1);
        local_280[0x11d] =
             (int *)((float)((double)(int)local_250 +
                            (double)(&DAT_00bacb00)[-((int)local_250 >> 0x1f)]) * DAT_00baa9b4 +
                    DAT_00baa910);
        local_250 = ppiVar26;
      } while (ppiVar26 < (int **)0x4);
      local_250 = (int **)0x34;
      FUN_00956780();
      FUN_0092dc30(local_250,0x3f800000,0x14,0,0x3f800000,0);
      FUN_00703670(0xe);
      FUN_00682ed0();
      local_50 = _DAT_00babf00;
      uStack_4c = _UNK_00babf04;
      uStack_48 = _UNK_00babf08;
      uStack_44 = _UNK_00babf0c;
      FUN_006b6550(&local_294,&local_50);
      AI_0043ef30();
      local_10c = 9;
      local_18c = 0x3fa00000;
      local_274 = 12.0;
      local_270 = (int *)0x0;
      FUN_006cb2e0(&local_294,&local_274,8,local_1a0);
      iVar21 = 10;
      do {
        iVar19 = FUN_006eef60();
        fVar31 = (float)((double)iVar19 + (double)(&DAT_00bacb00)[-(iVar19 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa704;
        local_250 = (int **)(fVar31 + fVar31);
        iVar19 = FUN_006eef60();
        local_25c = (int *)((float)((double)iVar19 + (double)(&DAT_00bacb00)[-(iVar19 >> 0x1f)]) *
                            DAT_00ba9ff4 + DAT_00baa2d0);
        ppiVar26 = local_250;
        FUN_0041d540();
        local_264 = (int **)((float)ppiVar26 * (float)local_25c);
        ppiVar26 = local_250;
        FUN_0041d520();
        local_280 = (int **)((float)ppiVar26 * (float)local_25c * DAT_00baa3a4);
        uVar16 = FUN_006eef60();
        uVar11 = FUN_006eef60();
        local_29c = (float)local_264 * DAT_00baa81c;
        local_2c8 = (float)local_264 * DAT_00baa6fc + local_294;
        local_298 = (float)local_280 * DAT_00baa81c;
        local_2c4 = (float)local_280 * DAT_00baa6fc + local_290;
        FUN_00428b20(1000,4,&local_2c8,&local_29c,0,-(uint)(uVar11 % 3 != 0) & 0x20000,uVar16);
        param_1 = local_288;
        iVar21 = iVar21 + -1;
      } while (iVar21 != 0);
      piVar17 = (int *)(DAT_00c71678 + 0x1baa8);
      local_254 = (int *)0x0;
      if (*(int *)(DAT_00c71678 + 0x1baac) - *piVar17 >> 2 != 0) {
        do {
          iVar21 = piVar17[1];
          if (iVar21 - *piVar17 >> 2 == 0) {
            FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
            iVar21 = piVar17[1];
          }
          ppiVar26 = (int **)*piVar17;
          if (local_254 < (int *)(iVar21 - (int)ppiVar26 >> 2)) {
            ppiVar26 = ppiVar26 + (int)local_254;
          }
          ppiVar26 = (int **)*ppiVar26;
          local_25c = (int *)((float)ppiVar26[0xd0] - local_290);
          local_250 = (int **)((float)ppiVar26[0xcf] - local_294);
          fVar31 = (float)local_25c * (float)local_25c + (float)local_250 * (float)local_250;
          local_264 = ppiVar26;
          FUN_00435a50();
          if (fVar31 < DAT_00baa9d0) {
            ppiVar22 = local_250;
            piVar17 = local_25c;
            if (DAT_00ba9fe4 < fVar31) {
              ppiVar22 = (int **)((float)local_250 * ((float)DAT_00baa454 / fVar31));
              piVar17 = (int *)((float)local_25c * ((float)DAT_00baa454 / fVar31));
            }
            local_29c = (float)ppiVar22 * DAT_00baa6fc;
            local_298 = (float)piVar17 * DAT_00baa6fc;
            pcVar23 = (code *)(*ppiVar26)[0x15];
            FUN_00431310(param_1);
            (*pcVar23)(&uStack_4c,&local_29c,0x41100000);
          }
          piVar17 = (int *)(DAT_00c71678 + 0x1baa8);
          local_254 = (int *)((int)local_254 + 1);
        } while (local_254 < (int *)(*(int *)(DAT_00c71678 + 0x1baac) - *piVar17 >> 2));
      }
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 3;
      uVar11 = FUN_006eef60();
      param_1[0x2f0] = uVar11 % 0x14 + 10;
      uVar11 = FUN_006eef60();
      param_1[0x2e8] = uVar11 % 0x3c + 0x1e;
    }
    break;
  case 10:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
    if (param_1[0x104] == 0) {
      cVar9 = FUN_0040b030("Sound");
      if (cVar9 != '\0') {
        FUN_006d6ba0(0x12f,0x3f800000,2,0,0x3f800000);
      }
      cVar9 = FUN_0040b030("Shoot");
      fVar31 = DAT_00baa630;
      if (cVar9 != '\0') {
        FUN_006b6470(0x2d4,2,0,0x3f800000);
        param_1[0x104] = param_1[0x104] + 1;
        fVar31 = DAT_00baadb4;
        if (DAT_00ba9fe4 < (float)param_1[0x2ed]) {
          fVar31 = DAT_00baa81c;
        }
        param_1[0x2ed] = (int)fVar31;
        local_270 = (int *)(fVar31 + fVar31);
        param_1[0x2ec] = 0;
        local_274 = 0.0;
        FUN_004314b0(&local_274,0);
        break;
      }
    }
    else if (param_1[0x104] == 1) {
      iVar21 = FUN_006ac760();
      if (iVar21 != 0) {
        uVar16 = FUN_006eef60();
        local_264 = (int **)param_1[0xd8];
        local_280 = (int **)param_1[0xd9];
        pfVar12 = (float *)FUN_0067f070(&local_29c);
        local_274 = *pfVar12 + *pfVar12 + (float)local_264 * DAT_00baa198;
        local_270 = (int *)(pfVar12[1] + pfVar12[1] + (float)local_280 * DAT_00baa198);
        piVar17 = (int *)FUN_00428b20(1000,0x3b,param_1 + 0xcf,&local_274,param_1,0,uVar16);
        iVar21 = FUN_006eef60();
        piVar17[0x11d] =
             (int)((float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa630);
        uVar11 = FUN_006eef60();
        iVar21 = uVar11 % 0xf + 0xf;
        piVar17[0x117] = iVar21;
        piVar17[0x118] = iVar21;
        uVar16 = FUN_004238f0(0x3f400000);
        (**(code **)(*piVar17 + 0x3c))(uVar16,0xffffffff,0xff,0,1);
        piVar17[0xd6] = -0x3f600000;
      }
      FUN_004314b0(param_1 + 0x2ec,0);
      local_249 = '\x01';
      local_2a0 = CONCAT31(local_2a0._1_3_,*(char *)(param_1 + 100) != '\0');
      fVar31 = DAT_00baa630;
    }
switchD_00499f10_caseD_1:
    pfVar12 = (float *)(param_1[0xcc] + 0x28);
    if (local_249 == '\0') goto LAB_00499f61;
    fVar29 = *pfVar12;
    if (fVar29 <= fVar31) {
      fVar29 = fVar31;
    }
    goto LAB_00499f65;
  case 0xb:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
    cVar9 = FUN_0040b030("Sound");
    if (cVar9 != '\0') {
      FUN_006d6ba0(0x2d1,0x3f800000,2,0,0x3f800000);
    }
    cVar9 = FUN_0040b030("Shoot");
    if (cVar9 != '\0') {
      pfVar12 = (float *)FUN_006b6af0(&local_274,"Hitbox");
      local_2b0 = (float)param_1[0xcf] + *pfVar12;
      local_2ac = pfVar12[1] + (float)param_1[0xd0];
      uVar16 = FUN_00407170();
      FUN_00703be0(&local_2b0,0x42aa0000,param_1,0x3f800000,0,uVar16);
      local_250 = DAT_00baa8d0;
      if (*(char *)(param_1 + 0x52) != '\0') {
        local_250 = DAT_00baaa44;
      }
      iVar21 = FUN_006be840();
      local_254 = *(int **)(iVar21 + 0x360);
      local_258 = *(int **)(iVar21 + 0x364);
      fVar31 = (float)param_1[0xd0] - *(float *)(iVar21 + 0x340);
      fVar29 = (float)param_1[0xcf] - *(float *)(iVar21 + 0x33c);
      fVar31 = fVar31 * fVar31 + fVar29 * fVar29;
      FUN_00435a50();
      local_254 = (int *)(((float)local_254 * fVar31 * DAT_00baa120 + *(float *)(iVar21 + 0x33c)) -
                         local_2b0);
      local_258 = (int *)(((float)local_258 * fVar31 * DAT_00baa120 + *(float *)(iVar21 + 0x340)) -
                         local_2ac);
      uVar16 = FUN_006eef60();
      FUN_00499d60();
      ppiVar26 = local_250;
      FUN_00682a50();
      ppiVar26 = (int **)((float)ppiVar26 * DAT_00baa088);
      local_264 = ppiVar26;
      FUN_0041d540();
      local_274 = (float)ppiVar26 * DAT_00baa834;
      ppiVar26 = local_264;
      FUN_0041d520();
      local_270 = (int *)((float)ppiVar26 * DAT_00baa834);
      iVar21 = FUN_00428b20(4,9,&local_2b0,&local_274,param_1,0,uVar16);
      *(undefined4 *)(iVar21 + 0x410) = 0x14;
      *(undefined4 *)(iVar21 + 0x414) = 0x14;
      *(undefined4 *)(iVar21 + 0x188) = 0;
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_0049a8fb;
    break;
  case 0x10:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa2d0);
    cVar9 = FUN_0040b030("Shoot");
    if (cVar9 != '\0') {
      uVar16 = FUN_00737380(&DAT_00b1e620,0xc,param_1[0xfb],0x24,1,0);
      uVar14 = FUN_007e90f0();
      uVar15 = FUN_006eeaa0();
      iVar21 = FUN_00428b20(5,100,uVar15,&DAT_00c7b640,0,uVar16,uVar14);
      uVar16 = FUN_006eef60();
      local_274 = *(float *)(iVar21 + 0x33c);
      local_270 = *(int **)(iVar21 + 0x340);
      FUN_00428b20(1000,0xf,&local_274,&DAT_00c7b640,0,0,uVar16);
      FUN_009568e0(0x10c,2,0,0x3f800000);
      param_1 = local_288;
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      (**(code **)(*param_1 + 0x28))();
      FUN_007fec00(param_1);
      goto LAB_0049cadb;
    }
  }
  pfVar12 = (float *)(param_1[0xcc] + 0x28);
LAB_00499f61:
  fVar29 = *pfVar12;
LAB_00499f65:
  param_1[0xe2] = (int)fVar29;
  if ((*(char *)(param_1 + 100) == '\0') || (local_249 == '\0')) {
LAB_0049c479:
    if ((char)local_2a0 != '\0') {
      local_250 = (int **)0x34;
      FUN_00956780(uVar10);
      FUN_0092dc30(local_250,0x3f800000,0x14,0,0x3f800000,0);
      FUN_00703670(0xe);
      ppbVar3 = (byte **)param_1[0x1f];
      if (ppbVar3 == (byte **)0x0) {
LAB_0049c531:
        cVar9 = FUN_0040a5d0("WallImpact",1);
        if (cVar9 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppbVar18 = ppbVar3;
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar18 = (byte **)*ppbVar3;
        }
        pcVar20 = "WallImpact";
        do {
          bVar1 = *(byte *)ppbVar18;
          bVar24 = bVar1 < (byte)*pcVar20;
          if (bVar1 != *pcVar20) {
LAB_0049c513:
            uVar10 = -(uint)bVar24 | 1;
            goto LAB_0049c518;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar18 + 1);
          bVar24 = bVar1 < ((byte *)pcVar20)[1];
          if (bVar1 != ((byte *)pcVar20)[1]) goto LAB_0049c513;
          ppbVar18 = (byte **)((int)ppbVar18 + 2);
          pcVar20 = (char *)((byte *)pcVar20 + 2);
        } while (bVar1 != 0);
        uVar10 = 0;
LAB_0049c518:
        if ((uVar10 != 0) ||
           ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_0049c531;
      }
      local_250 = (int **)0x2d1;
      FUN_00956780();
      FUN_0092dc30(local_250,0x3f800000,2,0,0x3f800000,0);
      param_1[0x2d9] = 5;
      param_1[0x104] = 0;
      param_1[0x2f0] = 0x3c;
      FUN_006be840();
      local_25c = (int *)0xa;
      do {
        iVar21 = FUN_006eef60();
        local_264 = (int **)(((float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                              DAT_00ba9ff4 * DAT_00baaa5c + DAT_00baa9d0) * DAT_00baa088);
        ppiVar26 = local_264;
        FUN_0041d540();
        local_280 = ppiVar26;
        ppiVar26 = local_264;
        FUN_0041d520();
        local_2bc = ppiVar26;
        local_264 = (int **)param_1[0x67];
        local_2ac = (float)param_1[0x68];
        iVar21 = FUN_006eef60();
        fVar31 = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa75c + DAT_00baa854;
        local_274 = ((float)local_264 * (float)local_280 - local_2ac * (float)local_2bc) * fVar31;
        local_270 = (int *)(((float)local_264 * (float)local_2bc + local_2ac * (float)local_280) *
                           fVar31);
        uVar16 = FUN_006eef60();
        piVar17 = (int *)FUN_00428b20(1000,0x3b,param_1 + 0xcf,&local_274,param_1,0,uVar16);
        uVar10 = FUN_006eef60();
        local_250 = DAT_00baad50;
        if ((uVar10 & 1) != 0) {
          local_250 = DAT_00baa454;
        }
        iVar21 = FUN_006eef60();
        piVar17[0x11d] =
             (int)(((float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa630) * (float)local_250);
        iVar21 = FUN_006eef60();
        fVar29 = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa1f8 + DAT_00baa3e0;
        fVar31 = fVar29 * DAT_00c3793c;
        piVar17[0x3a] = (int)(fVar29 * DAT_00c37940);
        piVar17[0x39] = (int)fVar31;
        uVar10 = FUN_006eef60();
        iVar21 = uVar10 % 0x14 + 0x14;
        piVar17[0x117] = iVar21;
        piVar17[0x118] = iVar21;
        FUN_00682ed0();
        local_50 = _DAT_00babdf0;
        uStack_4c = _UNK_00babdf4;
        uStack_48 = _UNK_00babdf8;
        uStack_44 = _UNK_00babdfc;
        (**(code **)(*piVar17 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
        local_25c = (int *)((int)local_25c + -1);
      } while (local_25c != (int *)0x0);
      AI_0043ef30();
      local_274 = (float)param_1[0xcf] - (float)param_1[0x67] * DAT_00baa9d0;
      local_270 = (int *)((float)param_1[0xd0] - (float)param_1[0x68] * DAT_00baa9d0);
      local_1b4 = 9;
      FUN_006ccdd0(8,&local_274,0,local_248);
      piVar17 = (int *)(DAT_00c71678 + 0x1baa8);
      local_254 = (int *)0x0;
      if (*(int *)(DAT_00c71678 + 0x1baac) - *piVar17 >> 2 != 0) {
        do {
          iVar21 = piVar17[1];
          if (iVar21 - *piVar17 >> 2 == 0) {
            FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
            iVar21 = piVar17[1];
          }
          ppiVar26 = (int **)*piVar17;
          if (local_254 < (int *)(iVar21 - (int)ppiVar26 >> 2)) {
            ppiVar26 = ppiVar26 + (int)local_254;
          }
          ppiVar26 = (int **)*ppiVar26;
          local_25c = (int *)((float)ppiVar26[0xd0] - (float)param_1[0xd0]);
          local_250 = (int **)((float)ppiVar26[0xcf] - (float)param_1[0xcf]);
          fVar31 = (float)local_25c * (float)local_25c + (float)local_250 * (float)local_250;
          local_264 = ppiVar26;
          FUN_00435a50();
          if (fVar31 < (float)DAT_00baaa44) {
            ppiVar22 = local_250;
            local_2a4 = local_25c;
            if (DAT_00ba9fe4 < fVar31) {
              ppiVar22 = (int **)((float)local_250 * ((float)DAT_00baa454 / fVar31));
              local_2a4 = (int *)((float)local_25c * ((float)DAT_00baa454 / fVar31));
            }
            local_2a8 = (float)ppiVar22 * DAT_00baa6fc;
            local_2a4 = (int *)((float)local_2a4 * DAT_00baa6fc);
            pcVar23 = (code *)(*ppiVar26)[0x15];
            FUN_00431310(param_1);
            (*pcVar23)(local_328,&local_2a8,0x41100000);
          }
          piVar17 = (int *)(DAT_00c71678 + 0x1baa8);
          local_254 = (int *)((int)local_254 + 1);
        } while (local_254 < (int *)(*(int *)(DAT_00c71678 + 0x1baac) - *piVar17 >> 2));
      }
    }
  }
  else {
    pfVar12 = (float *)param_1[0x5e];
    cVar9 = '\0';
    local_249 = '\0';
    fVar31 = DAT_00baa2d0;
    fVar29 = DAT_00baa904;
    if (pfVar12 == (float *)param_1[0x5f]) goto LAB_0049c479;
    do {
      iVar21 = (int)((((float)param_1[0x65] * fVar31 + (float)param_1[0xcf] + *pfVar12) - fVar29) /
                     fVar29 + fVar31);
      iVar19 = (int)((((float)param_1[0x66] * fVar31 + (float)param_1[0xd0] + pfVar12[1]) -
                     DAT_00baaa00) / fVar29 + fVar31);
      if (((-1 < iVar21) && (cVar9 = local_249, iVar21 < *(int *)(local_26c + 0xc))) &&
         ((-1 < iVar19 &&
          ((param_1 = local_288, iVar19 < *(int *)(local_26c + 0x10) &&
           (iVar21 = *(int *)(local_26c + 0xc) * iVar19 + iVar21, -1 < iVar21)))))) {
        if (iVar21 < 0x1c0) {
          local_258 = *(int **)(local_26c + 0x24 + iVar21 * 4);
        }
        else {
          local_258 = (int *)0x0;
        }
        iVar21 = FUN_007f0800(iVar21);
        fVar31 = DAT_00baa2d0;
        cVar9 = local_249;
        fVar29 = DAT_00baa904;
        if ((((iVar21 == 3) || (iVar21 == 2)) && (local_258 != (int *)0x0)) && (local_258[0xf] == 3)
           ) {
          pcVar23 = *(code **)(*local_258 + 0x14);
          FUN_00431310(local_288);
          cVar8 = (*pcVar23)(0,local_300);
          param_1 = local_288;
          fVar31 = DAT_00baa2d0;
          cVar9 = local_249;
          fVar29 = DAT_00baa904;
          if (cVar8 != '\0') {
            local_250 = *(int ***)(DAT_00c71678 + 0x18300);
            fVar29 = (float)(local_258[9] % (int)local_250[3]) * DAT_00baa904 + DAT_00baa904;
            fVar32 = (float)(local_258[9] / (int)local_250[3]) * DAT_00baa904 + DAT_00baaa00;
            local_2a8 = fVar29 - (float)local_288[0xcf];
            local_2a4 = (int *)(fVar32 - (float)local_288[0xd0]);
            fVar31 = DAT_00baa904;
            FUN_0067f170();
            local_260 = local_2b8 * fVar31 + fVar29;
            local_25c = (int *)((float)local_2b4 * fVar31 + fVar32);
            iVar21 = FUN_00812c90(&local_260);
            if (-1 < iVar21) {
              if (iVar21 < 0x1c0) {
                uVar16 = *(undefined4 *)(local_26c + 0x24 + iVar21 * 4);
              }
              else {
                uVar16 = 0;
              }
              FUN_0081e6e0(uVar16,local_258);
            }
            local_249 = '\x01';
            fVar31 = DAT_00baa2d0;
            cVar9 = '\x01';
            fVar29 = DAT_00baa904;
          }
        }
      }
      pfVar12 = pfVar12 + 2;
    } while (pfVar12 != (float *)param_1[0x5f]);
    if (cVar9 == '\0') goto LAB_0049c479;
    param_1[0xd8] = (int)((float)param_1[0x65] * fVar31);
    param_1[0xd9] = (int)((float)param_1[0x66] * fVar31);
  }
  if (0 < param_1[0x2e8]) {
    param_1[0x2e8] = param_1[0x2e8] - local_28c;
  }
  if (((param_1[0x2d9] != 3) && (param_1[0x2d9] != 4)) || (param_1[0x2f1] < 0xc)) goto LAB_0049cadb;
  param_1[0x2f1] = 0;
  param_1[0x2d9] = 0x10;
  ppbVar3 = (byte **)param_1[0x1f];
  if (ppbVar3 == (byte **)0x0) {
LAB_0049caa5:
    cVar9 = FUN_0040a5d0("ItemSpawn",1);
    if (cVar9 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
  else {
    ppbVar18 = ppbVar3;
    if (&DAT_0000000f < ppbVar3[5]) {
      ppbVar18 = (byte **)*ppbVar3;
    }
    pcVar20 = "ItemSpawn";
    do {
      bVar1 = *(byte *)ppbVar18;
      bVar24 = bVar1 < (byte)*pcVar20;
      if (bVar1 != *pcVar20) {
LAB_0049ca87:
        uVar10 = -(uint)bVar24 | 1;
        goto LAB_0049ca8c;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar18 + 1);
      bVar24 = bVar1 < ((byte *)pcVar20)[1];
      if (bVar1 != ((byte *)pcVar20)[1]) goto LAB_0049ca87;
      ppbVar18 = (byte **)((int)ppbVar18 + 2);
      pcVar20 = (char *)((byte *)pcVar20 + 2);
    } while (bVar1 != 0);
    uVar10 = 0;
LAB_0049ca8c:
    if ((uVar10 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
    goto LAB_0049caa5;
  }
  *(undefined *)(param_1 + 0x52) = 0;
  FUN_006ae630();
  param_1[0x62] = 0;
LAB_0049cadb:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

