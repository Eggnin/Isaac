/* Local J460 decompiler output.
 * VA: 0x00579890
 * Entry: 00579890
 * Dispatcher: 0x006c2990
 * Types: 900
 * Identities: 900.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00579db3; instructions=285
 */

/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=900; identities=900.0.0; dispatcher=0x006c2990;
   end=0x00579db3; instructions=285 */

void __fastcall AI_00579890(float param_1)

{
  byte bVar1;
  code *pcVar2;
  float *pfVar3;
  longlong lVar4;
  longlong lVar5;
  char cVar6;
  undefined4 uVar7;
  int *piVar8;
  uint uVar9;
  int iVar10;
  float fVar11;
  int *piVar12;
  byte **ppbVar13;
  byte **ppbVar14;
  float *pfVar15;
  undefined8 *puVar16;
  int iVar17;
  undefined4 *puVar18;
  char cVar19;
  undefined4 extraout_ECX;
  byte *pbVar20;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  undefined4 extraout_ECX_04;
  uint uVar21;
  int extraout_EDX;
  float unaff_ESI;
  uint uVar22;
  bool bVar23;
  float fVar24;
  float fVar25;
  ulonglong uVar26;
  undefined4 uVar27;
  undefined4 uVar28;
  undefined4 uVar29;
  char *pcVar30;
  undefined4 uVar31;
  float local_328;
  byte *pbStack_324;
  undefined4 uStack_320;
  int *piStack_31c;
  float fStack_318;
  float local_314;
  undefined4 uStack_310;
  float fStack_30c;
  float fStack_308;
  float fStack_304;
  float fStack_300;
  float fStack_2fc;
  float local_2f8;
  float fStack_2f4;
  float fStack_2f0;
  float fStack_2ec;
  float fStack_2e8;
  float fStack_2e4;
  float fStack_2e0;
  float fStack_2dc;
  float local_2d8;
  float fStack_2d4;
  undefined4 uStack_2d0;
  float fStack_2cc;
  float fStack_2c8;
  int iStack_2c4;
  float fStack_2c0;
  float fStack_2bc;
  int *piStack_2b8;
  float fStack_2b4;
  undefined4 local_2b0;
  float local_2ac;
  float fStack_2a8;
  float fStack_2a4;
  undefined4 uStack_2a0;
  float fStack_298;
  float fStack_294;
  float fStack_280;
  float fStack_27c;
  undefined8 uStack_278;
  int *piStack_270;
  float fStack_26c;
  float fStack_268;
  float fStack_264;
  int iStack_260;
  undefined auStack_240 [8];
  undefined auStack_238 [4];
  float fStack_234;
  undefined8 uStack_230;
  int *apiStack_228 [2];
  undefined auStack_220 [24];
  undefined auStack_208 [4];
  undefined4 uStack_204;
  float fStack_200;
  undefined4 uStack_1fc;
  float fStack_1f4;
  undefined auStack_160 [4];
  undefined4 uStack_15c;
  float fStack_158;
  undefined4 uStack_154;
  float fStack_14c;
  undefined4 uStack_cc;
  undefined auStack_b8 [4];
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  float fStack_a4;
  uint local_c;
  
  fVar11 = DAT_00c71678;
  fVar25 = DAT_00baa7e8;
  local_c = DAT_00bf93b4 ^ (uint)&local_328;
  local_314 = *(float *)((int)DAT_00c71678 + 0x18300);
  local_2d8 = DAT_00baa304;
  local_328 = DAT_00baa2d0;
  iVar10 = *(int *)((int)param_1 + 0xb64);
  local_2f8 = param_1;
  if (((iVar10 == 0x10) || ('\x01' < *(char *)((int)param_1 + 0xbc1))) ||
     (fVar24 = ((float)(2 - *(char *)((int)param_1 + 0xbc1)) * *(float *)((int)param_1 + 900)) /
               DAT_00baa6fc,
     fVar24 < *(float *)((int)param_1 + 0x380) || fVar24 == *(float *)((int)param_1 + 0x380))) {
    switch(iVar10) {
    case 0:
      *(undefined *)((int)param_1 + 0xb8) = 1;
      *(undefined4 *)((int)param_1 + 0xb64) = 6;
      *(undefined4 *)((int)param_1 + 0x184) = 0;
      fVar11 = *(float *)(*(int *)((int)fVar11 + 0x18300) + 0x18);
      *(undefined4 *)((int)param_1 + 0x334) = *(undefined4 *)((int)param_1 + 0x33c);
      *(float *)((int)param_1 + 0x338) = fVar11 + fVar25;
      *(undefined4 *)((int)param_1 + 0xbc0) = 0;
      *(undefined4 *)((int)param_1 + 0xbc4) = 0;
      *(undefined4 *)((int)param_1 + 0x410) = 0;
      *(undefined4 *)((int)param_1 + 0xba0) = 0;
      *(undefined4 *)((int)param_1 + 0xbb0) = 0;
      *(undefined4 *)((int)param_1 + 0xbb4) = 0;
      *(undefined4 *)((int)param_1 + 0xba4) = 0;
      break;
    case 3:
      if (*(char *)((int)param_1 + 0xbc1) == '\0') {
        local_328 = DAT_00baa454;
        FUN_0040a380(&DAT_00b601c4,0);
        if (*(int *)((int)param_1 + 0xba0) < 1) {
          FUN_006d6ba0(0x74,0x3f800000,2,0,0x3f800000);
          iVar10 = FUN_00579770();
          if ((iVar10 < 1) && (uVar9 = FUN_006eef60(), (uVar9 & 3) != 0)) {
            pcVar30 = "Summon1";
            uVar7 = 0xd;
          }
          else {
            pcVar30 = "Attack1Start";
            uVar7 = 8;
          }
          *(undefined4 *)((int)param_1 + 0xb64) = uVar7;
          *(undefined4 *)((int)param_1 + 0xba0) = 0;
LAB_0057a756:
          FUN_0040a380(pcVar30,0);
          *(char *)((int)param_1 + 0xbc3) = *(char *)((int)param_1 + 0xbc3) + '\x01';
        }
        else {
          *(int *)((int)param_1 + 0xba0) = *(int *)((int)param_1 + 0xba0) + -1;
        }
      }
      else if (*(char *)((int)param_1 + 0xbc1) == '\x01') {
        local_328 = DAT_00baa354;
        FUN_0040a380(&DAT_00b1d428,0);
        if (*(int *)((int)param_1 + 0xba0) < 1) {
          FUN_006d6ba0(0x74,0x3f800000,2,0,0x3f800000);
          iVar10 = FUN_00579770();
          if ((iVar10 < 1) && (uVar9 = FUN_006eef60(), (uVar9 & 1) != 0)) {
            *(undefined4 *)((int)param_1 + 0xb64) = 0xe;
            pcVar30 = "Summon2";
            *(undefined4 *)((int)param_1 + 0xba0) = 0;
          }
          else {
            *(undefined4 *)((int)param_1 + 0xb64) = 9;
            *(undefined4 *)((int)param_1 + 0xba0) = 0;
            uVar9 = FUN_006eef60();
            *(uint *)((int)param_1 + 0xbc4) = uVar9 & 1;
            pcVar30 = "Attack2";
          }
          goto LAB_0057a756;
        }
        *(int *)((int)param_1 + 0xba0) = *(int *)((int)param_1 + 0xba0) + -1;
      }
      else {
        local_328 = DAT_00baa454;
        FUN_0040a380(&DAT_00b1d43c,0);
        if (*(int *)((int)param_1 + 0xba0) < 1) {
          if (((*(char *)((int)param_1 + 0xbc3) == '\0') ||
              (uVar9 = FUN_006eef60(), (uVar9 & 3) == 0)) && (iVar10 = FUN_00579770(), iVar10 < 3))
          {
            pcVar30 = "DashRightStart";
            *(undefined4 *)((int)param_1 + 0xb64) = 7;
            *(undefined4 *)((int)param_1 + 0xba0) = 0;
            fVar25 = (float)((uint)(*(float *)((int)param_1 + 0x33c) -
                                   *(float *)((int)local_314 + 0x14)) & DAT_00bacb40);
            fVar11 = (float)((uint)(*(float *)((int)param_1 + 0x33c) -
                                   *(float *)((int)local_314 + 0x1c)) & DAT_00bacb40);
            if (fVar11 < fVar25) {
              pcVar30 = "DashLeftStart";
            }
            *(char *)((int)param_1 + 0xbc2) = (fVar25 <= fVar11) * '\x02' + -1;
          }
          else {
            *(undefined4 *)((int)param_1 + 0xb64) = 10;
            *(undefined4 *)((int)param_1 + 0xba0) = 0;
            uVar9 = FUN_006eef60();
            *(uint *)((int)param_1 + 0xbc4) = uVar9 & 1;
            FUN_006d6ba0(0x74,0x3f800000,2,0,0x3f800000);
            pcVar30 = "Attack3Start";
          }
          FUN_0040a380(pcVar30,0);
          *(char *)((int)param_1 + 0xbc3) = *(char *)((int)param_1 + 0xbc3) + '\x01';
        }
        else {
          *(int *)((int)param_1 + 0xba0) = *(int *)((int)param_1 + 0xba0) + -1;
        }
      }
      break;
    case 6:
      ppbVar14 = *(byte ***)((int)param_1 + 0x7c);
      if (ppbVar14 == (byte **)0x0) {
LAB_0057a438:
        cVar6 = FUN_0040a5d0(&DAT_00b1d560,1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)((int)param_1 + 0x8c) = 1;
        }
      }
      else {
        if (&DAT_0000000f < ppbVar14[5]) {
          ppbVar14 = (byte **)*ppbVar14;
        }
        pbVar20 = &DAT_00b1d560;
        do {
          bVar1 = *(byte *)ppbVar14;
          bVar23 = bVar1 < *pbVar20;
          if (bVar1 != *pbVar20) {
LAB_0057a420:
            uVar9 = -(uint)bVar23 | 1;
            goto LAB_0057a425;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar14 + 1);
          bVar23 = bVar1 < pbVar20[1];
          if (bVar1 != pbVar20[1]) goto LAB_0057a420;
          ppbVar14 = (byte **)((int)ppbVar14 + 2);
          pbVar20 = pbVar20 + 2;
        } while (bVar1 != 0);
        uVar9 = 0;
LAB_0057a425:
        if ((uVar9 != 0) ||
           ((*(char *)(*(int *)((int)param_1 + 0x7c) + 0x34) != '\0' &&
            (*(char *)((int)param_1 + 0x8c) == '\0')))) goto LAB_0057a438;
      }
      if ((*(int *)((int)param_1 + 0x7c) != 0) &&
         (cVar6 = FUN_0040add0(&DAT_00b1d560), cVar6 != '\0')) {
        FUN_006d6ba0(0xe,0x3f800000,2,0,0x3f800000);
      }
      if ((*(int *)((int)param_1 + 0x7c) == 0) ||
         (cVar6 = FUN_0040ae70(&DAT_00b1d574), cVar6 == '\0')) {
        cVar6 = FUN_0040b090(&DAT_00b1d560);
        if (cVar6 != '\0') {
          fVar25 = (*(float *)((int)param_1 + 0x338) - *(float *)((int)param_1 + 0x340)) *
                   DAT_00baa1d4;
          *(float *)((int)param_1 + 0x360) =
               (*(float *)((int)param_1 + 0x334) - *(float *)((int)param_1 + 0x33c)) * DAT_00baa1d4;
          *(float *)((int)param_1 + 0x364) = fVar25;
          cVar6 = FUN_0040b030(&DAT_00b1d574);
          if (cVar6 != '\0') {
            pbStack_324 = (byte *)0x30;
            FUN_00956780();
            FUN_0092dc30(pbStack_324,0x3f800000,2,0,0x3f800000,0);
            *(undefined4 *)((int)param_1 + 0x33c) = *(undefined4 *)((int)param_1 + 0x334);
            *(undefined4 *)((int)param_1 + 0x340) = *(undefined4 *)((int)param_1 + 0x338);
            *(undefined4 *)((int)param_1 + 0x360) = DAT_00c7b640;
            *(undefined4 *)((int)param_1 + 0x364) = DAT_00c7b644;
          }
        }
      }
      else {
        *(float *)((int)param_1 + 0x360) =
             *(float *)((int)param_1 + 0x334) - *(float *)((int)param_1 + 0x33c);
        *(float *)((int)param_1 + 0x364) =
             *(float *)((int)param_1 + 0x338) - *(float *)((int)param_1 + 0x340);
        if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
          *(undefined4 *)((int)param_1 + 0xb64) = 3;
          uVar9 = FUN_006eef60();
          fVar25 = *(float *)((int)param_1 + 0x36c) * local_2d8;
          *(uint *)((int)param_1 + 0xba0) = uVar9 % 0x1e + 0x1e;
          goto LAB_0057bdca;
        }
      }
      fVar25 = *(float *)((int)param_1 + 0x36c) * local_2d8;
      goto LAB_0057bdca;
    case 7:
      if (*(char *)((int)param_1 + 0xbc2) == '\0') {
        if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
          *(undefined4 *)((int)param_1 + 0xb64) = 3;
          uVar9 = FUN_006eef60();
          *(uint *)((int)param_1 + 0xba0) = uVar9 % 0x1e + 0x1e;
        }
      }
      else {
        cVar6 = FUN_0040b030("Shoot");
        if (cVar6 != '\0') {
          FUN_006d6ba0(0x73,0x3f800000,2,0,0x3f800000);
        }
        cVar6 = FUN_0040b090("Shoot");
        if ((cVar6 != '\0') || (cVar6 = FUN_004073b0(), cVar6 != '\0')) {
          if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
            pcVar30 = "DashLeftLoop";
            if (-1 < *(char *)((int)param_1 + 0xbc2)) {
              pcVar30 = "DashRightLoop";
            }
            FUN_0040a380(pcVar30,0);
          }
          cVar6 = *(char *)((int)param_1 + 0xbc2);
          fVar25 = *(float *)((int)param_1 + 0x360);
          fVar11 = (float)(int)cVar6;
          fVar24 = fVar25 + *(float *)((int)param_1 + 0x33c) + fVar11 * fVar11;
          if (((cVar6 < '\0') && (fVar24 < *(float *)((int)local_314 + 0x14))) ||
             (('\0' < cVar6 &&
              (*(float *)((int)local_314 + 0x1c) <= fVar24 &&
               fVar24 != *(float *)((int)local_314 + 0x1c))))) {
            *(float *)((int)param_1 + 0x360) = fVar25 * DAT_00baad50;
            FUN_006d6ba0(0x34,0x40000000,2,0,0x3f800000);
            FUN_00703670(0xf);
            *(undefined4 *)((int)param_1 + 0xba0) = 0x16;
            FUN_0040a380("DashEnd",0);
            *(undefined *)((int)param_1 + 0xbc2) = 0;
          }
          else {
            *(float *)((int)param_1 + 0x360) =
                 fVar11 * *(float *)((int)param_1 + 0x39c) * DAT_00baa7e8 + fVar25;
          }
        }
      }
      if (0 < (int)*(uint *)((int)param_1 + 0xba0)) {
        if ((*(uint *)((int)param_1 + 0xba0) & 1) == 0) {
          uVar31 = 0;
          uVar29 = 0;
          uVar28 = 0;
          uVar27 = 0x42800000;
          uVar7 = FUN_0081e9d0(&uStack_230,0x41200000);
          FUN_00813520(&fStack_2e0,uVar7,uVar27,uVar28,uVar29,uVar31);
          uVar9 = FUN_006eef60();
          if ((uVar9 % 3 == 0) && (iVar10 = FUN_00579770(), iVar10 < 4)) {
            iVar10 = FUN_00738470(extraout_ECX_04);
            pfVar15 = (float *)FUN_0067f070(apiStack_228);
            local_2f8 = fStack_2e0 - *pfVar15 * DAT_00baa87c;
            fStack_2f4 = fStack_2dc - pfVar15[1] * DAT_00baa87c;
            if ((iVar10 == 0x1d) || (iVar10 == 0x1e)) {
              FUN_004f9920(param_1,0);
            }
            else {
              FUN_006c2750(&local_2f8,param_1,local_2f8,fStack_2f4,0,0xc3c80000);
            }
          }
          else {
            AI_0043ef30();
            iVar10 = FUN_006eef60();
            uStack_15c = 0xc3c80000;
            uStack_154 = 0x40000000;
            fStack_14c = DAT_00baa4b0 -
                         (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                         DAT_00ba9ff4 * _DAT_00baa284;
            iVar10 = FUN_006eef60();
            uStack_cc = 9;
            fStack_158 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa81c + 0.0;
            FUN_006cb2e0(&fStack_2e0,&DAT_00c7b640,0,auStack_160);
          }
        }
        *(int *)((int)param_1 + 0xba0) = *(int *)((int)param_1 + 0xba0) + -1;
      }
      local_2d8 = DAT_00baa3a4;
      break;
    case 8:
      uVar9 = *(uint *)((int)param_1 + 0xba0);
      if (uVar9 == 0) {
        local_328 = 0.0;
        if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == (char)uVar9))
        {
          FUN_006d6ba0(0x13d,0x3f800000,2,0,0x3f4ccccd);
          *(undefined4 *)((int)param_1 + 0xba0) = 0x3c;
          FUN_0040a380("Attack1Fire",0);
        }
      }
      else {
        if ((int)uVar9 < 1) {
          local_328 = 0.0;
          goto LAB_0057aad1;
        }
        if ((uVar9 & 1) == 0) {
          FUN_006be840();
          iVar10 = FUN_006eef60();
          local_2f8 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                      DAT_00ba9ff4;
          fVar25 = DAT_00baa54c;
          FUN_0041d540();
          fStack_2c0 = fVar25 * DAT_00baa834;
          fVar25 = DAT_00baa54c;
          FUN_0041d520();
          fStack_2bc = fVar25 * DAT_00baa834;
          AI_0043ef30();
          uStack_b4 = 0xc1c00000;
          fStack_a4 = DAT_00baa5b4 - local_2f8 * _DAT_00baa3a0;
          uStack_b0 = 0x40000000;
          local_2f8 = *(float *)((int)param_1 + 0x33c);
          fStack_2e0 = *(float *)((int)param_1 + 0x340);
          pfVar15 = (float *)FUN_0067f070(auStack_220);
          iVar10 = FUN_006eef60();
          fVar25 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                   DAT_00ba9ff4;
          fStack_2cc = fVar25 * *pfVar15 * DAT_00baa83c + local_2f8 + 0.0;
          fStack_2c8 = pfVar15[1] * fVar25 * DAT_00baa83c + fStack_2e0 + DAT_00baa784;
          FUN_006cb2e0(&fStack_2cc,&fStack_2c0,0,auStack_b8);
          FUN_006d6ba0(0x99,0x3f800000,2,0,0x3f800000);
          uVar9 = *(uint *)((int)param_1 + 0xba0);
        }
        *(uint *)((int)param_1 + 0xba0) = uVar9 - 1;
        if ((int)(uVar9 - 1) < 1) {
          FUN_0040a380("Attack1End",0);
          *(undefined4 *)((int)param_1 + 0xba0) = 0xffffffff;
        }
      }
      break;
    case 9:
      local_328 = 0.0;
      cVar6 = FUN_0040b030("Shoot");
      if (cVar6 != '\0') {
        FUN_006d6ba0(0x10,0x3f800000,2,0,0x3f800000);
        *(undefined4 *)((int)param_1 + 0xba0) = 1;
        iVar10 = FUN_006be840();
        fVar25 = *(float *)(iVar10 + 0x340) - *(float *)((int)param_1 + 0x340);
        FUN_00499d60();
        local_2f8 = fVar25 * DAT_00baa948;
        iVar17 = FUN_006eef60();
        fVar25 = DAT_00baa8d0;
        fVar11 = local_2f8 +
                 ((float)((double)iVar17 + (double)(&DAT_00bacb00)[-(iVar17 >> 0x1f)]) *
                  DAT_00ba9ff4 - DAT_00baa2d0) * DAT_00baa87c;
        *(float *)((int)param_1 + 0xbb4) = fVar11;
        if ((fVar11 < fVar25) || (fVar11 != DAT_00baaa44)) {
          fVar25 = *(float *)(iVar10 + 0x340);
          fVar11 = ((fVar25 - fVar25) + (fVar25 - fVar25) + fVar25) -
                   *(float *)((int)param_1 + 0x340);
          FUN_00499d60();
          fVar25 = fVar11 * DAT_00baa948;
          if (fVar11 * DAT_00baa948 <= DAT_00baa98c) {
            fVar25 = DAT_00baa98c;
          }
          if (DAT_00baa9e4 <= fVar25) {
            fVar25 = DAT_00baa9e4;
          }
          *(float *)((int)param_1 + 0xbb4) = fVar25 - DAT_00baab30;
        }
      }
      cVar6 = FUN_0040b030("EndShoot");
      if (cVar6 == '\0') {
        if (0 < *(int *)((int)param_1 + 0xba0)) {
          uVar9 = *(int *)((int)param_1 + 0xba0) + 1;
          *(uint *)((int)param_1 + 0xba0) = uVar9;
          if ((uVar9 & 1) != 0) {
            if ((*(int *)((int)param_1 + 0xbc4) == 0) ||
               (fVar25 = *(float *)((int)param_1 + 0xbb4), fVar25 < 0.0)) {
              fVar25 = *(float *)((int)param_1 + 0xbb4);
              cVar6 = '\0';
            }
            else {
              cVar6 = '\x01';
            }
            uStack_320 = CONCAT13(cVar6,(undefined3)uStack_320);
            iVar10 = (int)uVar9 / 2;
            if (cVar6 == '\0') {
              pbStack_324 = (byte *)0x1e;
              iVar17 = 4 - iVar10;
              if (DAT_00baa9b4 <= fVar25) {
                iVar17 = iVar10 + -4;
              }
              iVar17 = iVar17 * 0xd;
            }
            else {
              pbStack_324 = &DAT_00000014;
              iVar17 = (4 - iVar10) * 8;
              if (DAT_00baa9b4 <= fVar25) {
                iVar17 = iVar10 * 8 + -0x20;
              }
            }
            fStack_2e0 = (float)(iVar17 + 0x2d);
            pbVar20 = (byte *)(iVar17 + -0x2d);
            if ((int)pbVar20 <= (int)fStack_2e0) {
              do {
                fVar25 = ((float)(int)pbVar20 + *(float *)((int)param_1 + 0xbb4)) * DAT_00baa088;
                local_2f8 = fVar25;
                FUN_0041d540();
                fStack_2e8 = fVar25 * DAT_00baa7e8;
                fVar25 = local_2f8;
                FUN_0041d520();
                fStack_2e4 = fVar25 * DAT_00baa7e8;
                AI_0043ef30();
                uVar9 = FUN_006eef60();
                if (uStack_320._3_1_ == '\0') {
                  if (uVar9 % 10 != 0) {
                    fStack_1f4 = 1.1;
                    uStack_204 = 0xc1c00000;
                    fStack_200 = 1.5;
                    goto LAB_0057ae8c;
                  }
                }
                else {
                  uStack_204 = 0xc1c00000;
                  uStack_1fc = 0x3e99999a;
                  fStack_1f4 = (float)((double)uVar9 +
                                      (double)(&DAT_00bacb00)[-((int)uVar9 >> 0x1f)]) * DAT_00ba9ff4
                               * DAT_00baa3e0 + local_2d8;
                  iVar10 = FUN_006eef60();
                  fStack_200 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)])
                               * DAT_00ba9ff4 * DAT_00baa860 - DAT_00baa834;
                  iVar10 = FUN_006eef60();
                  fVar25 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa2d0;
                  fStack_2e4 = fVar25 * fStack_2e4;
                  fStack_2e8 = fVar25 * fStack_2e8;
LAB_0057ae8c:
                  fStack_300 = fStack_2e8 * DAT_00baa6fc + *(float *)((int)param_1 + 0x33c);
                  fStack_2fc = fStack_2e4 * DAT_00baa6fc + *(float *)((int)param_1 + 0x340);
                  FUN_006cb2e0(&fStack_300,&fStack_2e8,0,auStack_208);
                }
                pbVar20 = pbVar20 + (int)pbStack_324;
              } while ((int)pbVar20 <= (int)fStack_2e0);
            }
          }
        }
      }
      else {
        *(undefined4 *)((int)param_1 + 0xba0) = 0;
      }
LAB_0057aad1:
      if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
        *(undefined4 *)((int)param_1 + 0xb64) = 3;
        uVar9 = FUN_006eef60();
        *(uint *)((int)param_1 + 0xba0) = uVar9 % 0x3c + 0x3c;
      }
      break;
    case 10:
      local_328 = 0.0;
      if (*(int *)((int)param_1 + 0xba0) < 1) {
        cVar6 = FUN_0040b030("Close");
        if (cVar6 != '\0') {
          FUN_006be840();
          uVar9 = FUN_006eef60();
          *(uint *)((int)param_1 + 0xbc4) = uVar9 & 1;
          uVar7 = 0xfffffff6;
          if ((uVar9 & 1) == 0) {
            uVar7 = 0xffffffe2;
          }
          *(undefined4 *)((int)param_1 + 0xba0) = uVar7;
          FUN_006d6ba0((uint)(*(int *)((int)param_1 + 0xbc4) != 1) * 2 + 0x136,0x3f800000,2,0,
                       0x3f800000);
        }
        if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
          FUN_0040a380("Attack3Charge",0);
        }
        if ((*(int *)((int)param_1 + 0xba0) < 0) &&
           (iVar10 = *(int *)((int)param_1 + 0xba0) + 1, *(int *)((int)param_1 + 0xba0) = iVar10,
           iVar10 == 0)) {
          FUN_0040a380("Attack3BeamStart",0);
          *(undefined4 *)((int)param_1 + 0xba0) = 1;
        }
      }
      else {
        if (*(int *)((int)param_1 + 0xba0) != 1) goto LAB_0057b179;
        cVar6 = FUN_0040b030("Shoot");
        if (cVar6 != '\0') {
          if (*(int *)((int)param_1 + 0xbc4) == 0) {
            FUN_006d6ba0(0x131,0x3f800000,2,0,0x3f800000);
            uVar7 = FUN_005797b0(extraout_ECX_00);
            FUN_006a92e0(uVar7);
            FUN_005797b0(extraout_ECX_01);
            FUN_005797b0(extraout_ECX_02);
            FUN_005797b0(extraout_ECX_03);
          }
          else {
            FUN_006d6ba0(0x131,0x3f800000,2,0,0x3f800000);
            fStack_2d4 = 0.0;
            fStack_2f0 = *(float *)((int)param_1 + 0x33c) + 0.0;
            uStack_2d0 = 0xc2000000;
            fStack_2ec = *(float *)((int)param_1 + 0x340) + DAT_00baa75c;
            piVar8 = (int *)FUN_0096f310(0xb,&fStack_2f0,0x42b40000,0x32,&fStack_2d4,param_1,0);
            piVar8[0xd6] = 0x447a0000;
            (**(code **)(*piVar8 + 0xc))();
            FUN_006a92e0(piVar8);
          }
        }
        if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
          FUN_0040a380("Attack3BeamLoop",0);
        }
        if ((*(int *)((int)param_1 + 0x3c0) != 0) &&
           (local_328 = DAT_00baa298, *(int *)((int)param_1 + 0xbc4) == 0)) {
          local_328 = DAT_00baa280;
        }
        cVar6 = FUN_004073b0();
        if ((cVar6 != '\0') &&
           (((extraout_EDX == 0 || (*(int *)(extraout_EDX + 0x28) != 7)) ||
            (*(int *)(extraout_EDX + 0x458) < 5)))) {
          FUN_0040a380("Attack3End",0);
          *(undefined4 *)((int)param_1 + 0xba0) = 2;
        }
      }
      break;
    case 0xd:
      local_328 = 0.0;
      cVar6 = FUN_0040b030("Shoot");
      if (cVar6 != '\0') {
        FUN_006d6ba0(0x7a,0x3f800000,2,0,0x3f800000);
      }
      if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
        *(undefined4 *)((int)param_1 + 0xb64) = 3;
        uVar9 = FUN_006eef60();
        *(uint *)((int)param_1 + 0xba0) = uVar9 % 0x1e + 0x1e;
        uVar9 = FUN_006eef60();
        fStack_308 = *(float *)((int)local_314 + 0x14);
        piStack_31c = *(int **)((int)local_314 + 0x18);
        pbStack_324 = *(byte **)((int)local_314 + 0x1c);
        fStack_300 = *(float *)((int)local_314 + 0x20);
        if (uVar9 % 5 < 2) {
          uVar7 = FUN_006eef60();
          piStack_31c = (int *)((float)piStack_31c + DAT_00baa87c);
          iVar10 = FUN_006eef60();
          fStack_280 = fStack_308;
          puVar16 = (undefined8 *)&fStack_280;
          fStack_27c = ((fStack_300 - DAT_00baa87c) - (float)piStack_31c) *
                       (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                       DAT_00ba9ff4 + (float)piStack_31c;
        }
        else if (uVar9 % 5 < 4) {
          uVar7 = FUN_006eef60();
          piStack_31c = (int *)((float)piStack_31c + DAT_00baa87c);
          iVar10 = FUN_006eef60();
          puVar16 = &uStack_278;
          uStack_278 = CONCAT44(((fStack_300 - DAT_00baa87c) - (float)piStack_31c) *
                                (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)])
                                * DAT_00ba9ff4 + (float)piStack_31c,pbStack_324);
        }
        else {
          uVar7 = FUN_006eef60();
          fStack_308 = fStack_308 + DAT_00baa87c;
          iVar10 = FUN_006eef60();
          puVar16 = (undefined8 *)&piStack_31c;
          fStack_318 = fStack_300;
          piStack_31c = (int *)((((float)pbStack_324 - DAT_00baa87c) - fStack_308) *
                                (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)])
                                * DAT_00ba9ff4 + fStack_308);
        }
        piVar8 = (int *)FUN_006fe410(0xf0,0,puVar16,&DAT_00c7b640,0,0,uVar7,0);
        (**(code **)(*piVar8 + 0xc))();
        FUN_006d6ba0(0x109,0x3f800000,2,0,0x3f800000);
      }
      break;
    case 0xe:
      local_328 = 0.0;
      cVar6 = FUN_0040b030("Shoot");
      if (cVar6 != '\0') {
        FUN_006d6ba0(0x10,0x3f800000,2,0,0x3f800000);
        pfVar15 = (float *)((int)param_1 + 0x33c);
        uVar9 = FUN_006eef60();
        if ((uVar9 & 1) == 0) {
          fStack_30c = 4.203895e-45;
          do {
            iVar10 = FUN_006eef60();
            pbStack_324 = (byte *)(((float)((double)iVar10 +
                                           (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                                    DAT_00ba9ff4 * DAT_00baa9b4 + DAT_00baa910) * DAT_00baa088);
            iVar10 = FUN_006eef60();
            fStack_304 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                         DAT_00ba9ff4;
            pbVar20 = pbStack_324;
            FUN_0041d540();
            piStack_2b8 = (int *)((float)pbVar20 * fStack_304 * DAT_00baaa94 + *pfVar15);
            pbVar20 = pbStack_324;
            FUN_0041d520();
            fStack_2b4 = (float)pbVar20 * fStack_304 * DAT_00baaa94 +
                         *(float *)((int)param_1 + 0x340);
            puVar18 = (undefined4 *)FUN_0081e520(auStack_238,&piStack_2b8,0x42800000);
            FUN_006c2750(pfVar15,param_1,*puVar18,puVar18[1],0,0xc2000000);
            fStack_30c = (float)((int)fStack_30c + -1);
          } while (fStack_30c != 0.0);
          fStack_30c = 0.0;
        }
        else {
          uVar7 = FUN_006eef60();
          piStack_270 = (int *)(*pfVar15 + 0.0);
          fStack_26c = *(float *)((int)param_1 + 0x340) + DAT_00baa75c;
          iVar10 = FUN_006fe410(0x1d,1,&piStack_270,&DAT_00c7b640,0,0,uVar7,0);
          iVar17 = FUN_006eef60();
          pbStack_324 = (byte *)(((float)((double)iVar17 +
                                         (double)(&DAT_00bacb00)[-(iVar17 >> 0x1f)]) * DAT_00ba9ff4
                                  * DAT_00baa9b4 + DAT_00baa910) * DAT_00baa088);
          iVar17 = FUN_006eef60();
          fStack_304 = (float)((double)iVar17 + (double)(&DAT_00bacb00)[-(iVar17 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baaa94 + DAT_00baa9d0;
          pbVar20 = pbStack_324;
          FUN_0041d540();
          fStack_268 = (float)pbVar20 * fStack_304 + *(float *)((int)param_1 + 0x33c);
          pbVar20 = pbStack_324;
          FUN_0041d520();
          fStack_264 = (float)pbVar20 * fStack_304 + *(float *)((int)param_1 + 0x340);
          puVar18 = (undefined4 *)FUN_0081e520(auStack_240,&fStack_268,0x42800000);
          uVar7 = puVar18[1];
          *(undefined4 *)(iVar10 + 0x334) = *puVar18;
          *(undefined4 *)(iVar10 + 0x338) = uVar7;
          *(undefined4 *)(iVar10 + 0xb64) = 4;
          *(undefined4 *)(iVar10 + 0x410) = 5;
          FUN_0040a380(&DAT_00b1de1c,1);
          FUN_0040a720(5);
        }
      }
LAB_0057b179:
      if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
        *(undefined4 *)((int)param_1 + 0xb64) = 3;
        uVar9 = FUN_006eef60();
        *(uint *)((int)param_1 + 0xba0) = uVar9 % 0x1e + 0x1e;
      }
      break;
    case 0x10:
      goto code_r0x0057a2df;
    }
  }
  else {
    if (iVar10 == 6) {
      local_2b0 = 0x30;
      FUN_00956780();
      FUN_0092dc30(local_2b0,0x3f800000,2,0,0x3f800000,0);
      *(undefined4 *)((int)param_1 + 0x33c) = *(undefined4 *)((int)param_1 + 0x334);
      *(undefined4 *)((int)param_1 + 0x340) = *(undefined4 *)((int)param_1 + 0x338);
      *(undefined4 *)((int)param_1 + 0x360) = DAT_00c7b640;
      *(undefined4 *)((int)param_1 + 0x364) = DAT_00c7b644;
    }
    FUN_006d6ba0(0x70,0x3f800000,2,0,0x3f800000);
    local_2ac = 4.203895e-44;
    FUN_00956780();
    FUN_0092dc30(local_2ac,0x3f800000,2,0,0x3f800000,0);
    uVar7 = FUN_006eef60();
    piVar8 = (int *)FUN_006fe410(1000,2,(int)param_1 + 0x33c,&DAT_00c7b640,0,3,uVar7,0);
    piVar8[0xd3] = 0;
    piVar8[0xd4] = -0x3e400000;
    (**(code **)(*piVar8 + 0xc))();
    uVar7 = FUN_006eef60();
    piVar8 = (int *)FUN_006fe410(1000,7,(int)param_1 + 0x33c,&DAT_00c7b640,0,0,uVar7,0);
    (**(code **)(*piVar8 + 0xc))();
    uVar9 = FUN_006eef60();
    for (pbStack_324 = (byte *)(uVar9 % 3 + 8); pbStack_324 != (byte *)0x0;
        pbStack_324 = (byte *)((int)pbStack_324 + -1)) {
      iVar10 = FUN_006eef60();
      fStack_30c = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa704;
      fStack_30c = fStack_30c + fStack_30c;
      fVar25 = fStack_30c;
      FUN_0041d540();
      fStack_2a8 = fVar25 * DAT_00baa2d0 * *(float *)((int)param_1 + 0x370) +
                   *(float *)((int)param_1 + 0x33c);
      fVar25 = fStack_30c;
      FUN_0041d520();
      fStack_2a4 = fVar25 * DAT_00baa2d0 * *(float *)((int)param_1 + 0x370) +
                   *(float *)((int)param_1 + 0x340);
      iVar10 = FUN_006eef60();
      fStack_300 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa704;
      fStack_300 = fStack_300 + fStack_300;
      iVar10 = FUN_006eef60();
      fStack_2d4 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa75c + DAT_00baa630;
      fVar25 = fStack_300;
      FUN_0041d540();
      fStack_2e8 = fVar25 * fStack_2d4;
      fStack_298 = fStack_2e8;
      fVar25 = fStack_300;
      FUN_0041d520();
      fStack_2e0 = fVar25 * fStack_2d4;
      fStack_294 = fStack_2e0;
      fStack_30c = (float)FUN_006eef60();
      fStack_2d4 = DAT_00c71678;
      uStack_310 = 0;
      iStack_2c4 = 5;
      fStack_308 = 1.401298e-42;
      FUN_008646e0(&fStack_308,&iStack_2c4,&fStack_2a8,&fStack_298,0,&uStack_310,&fStack_30c);
      fVar25 = unaff_ESI;
      if (1 < *(int *)((int)DAT_00c71678 + 0x26614)) {
        piVar8 = *(int **)((int)DAT_00c71678 + 0x26620);
        fVar11 = (float)FUN_006eef60();
        uStack_278 = DAT_00b1f66c;
        piStack_31c = DAT_00b1f674;
        piStack_270 = DAT_00b1f674;
        fStack_30c = fVar11;
        if (pbStack_324 == (byte *)0x5) {
          if ((uint)fStack_2e0 < 0x12d) {
            if (fStack_2e0 == 4.203895e-43) {
              while ((unaff_ESI == 0.0 ||
                     (fVar25 = unaff_ESI, cVar6 = (**(code **)(*piVar8 + 0x24))(unaff_ESI),
                     cVar6 != '\0'))) {
                if (fStack_30c == 0.0) {
                  FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                  pcVar2 = (code *)swi(3);
                  (*pcVar2)();
                  return;
                }
                uVar9 = (uint)fStack_30c >> ((byte)uStack_278 & 0x1f) ^ (uint)fStack_30c;
                uVar9 = uVar9 << ((byte)((ulonglong)uStack_278 >> 0x20) & 0x1f) ^ uVar9;
                fVar25 = (float)(uVar9 >> ((byte)piStack_31c & 0x1f) ^ uVar9);
                fStack_30c = fVar25;
                uVar7 = FUN_00734180(fVar25,0x19,10,10,1);
                uStack_230 = DAT_00b1f66c;
                apiStack_228[0] = DAT_00b1f674;
                fStack_234 = fVar25;
                unaff_ESI = (float)FUN_00865340(&fStack_234,uVar7,1,1,0);
              }
            }
            else {
              if (fStack_2e0 == 9.809089e-44) {
                fStack_2e8 = (float)((uint)unaff_ESI >> 0xb);
                do {
                  if (unaff_ESI != 0.0) {
                    pcVar2 = *(code **)(*piVar8 + 0x28);
                    fVar25 = unaff_ESI;
                    uVar7 = FUN_00734a80(unaff_ESI,0);
                    cVar6 = (*pcVar2)(uVar7);
                    fVar11 = fStack_30c;
                    if (cVar6 == '\0') goto LAB_00579ef5;
                  }
                  if (fVar11 == 0.0) {
                    FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                    pcVar2 = (code *)swi(3);
                    (*pcVar2)();
                    return;
                  }
                  uVar9 = (uint)fVar11 >> ((byte)uStack_278 & 0x1f) ^ (uint)fVar11;
                  uVar9 = uVar9 << ((byte)((ulonglong)uStack_278 >> 0x20) & 0x1f) ^ uVar9;
                  fVar11 = (float)(uVar9 >> ((byte)piStack_31c & 0x1f) ^ uVar9);
                  fStack_30c = fVar11;
                  uVar9 = FUN_00734900(fVar11);
                  unaff_ESI = (float)(uVar9 | ((uint)fStack_2e8 & 1) << 0xb);
                } while( true );
              }
              if (fStack_2e0 == 1.401298e-43) {
                if ((unaff_ESI == 3.503246e-44) ||
                   (((fStack_2bc = unaff_ESI, FUN_004288a0(&fStack_268,&fStack_2bc),
                     *(char *)(iStack_260 + 0xd) == '\0' &&
                     (*(int *)(iStack_260 + 0x10) <= (int)unaff_ESI)) && (iStack_260 != piVar8[8])))
                   ) {
                  bVar23 = false;
                }
                else {
                  bVar23 = true;
                }
                if ((unaff_ESI == 0.0) || (bVar23)) {
                  unaff_ESI = (float)(**(code **)(*piVar8 + 0x84))(0);
                  fVar25 = unaff_ESI;
                }
              }
            }
          }
          else if (fStack_2e0 == 4.904545e-43) {
            while ((unaff_ESI == 0.0 ||
                   (fVar25 = unaff_ESI, cVar6 = (**(code **)(*piVar8 + 0x2c))(unaff_ESI),
                   cVar6 != '\0'))) {
              unaff_ESI = (float)FUN_00733ca0(0);
            }
          }
        }
      }
LAB_00579ef5:
      piStack_31c = (int *)FUN_006f0090(pbStack_324,0);
      lVar4 = CONCAT44(fStack_2e8,fStack_2dc);
      if (piStack_31c == (int *)0x0) {
        piVar8 = (int *)0x0;
      }
      else {
        uVar26 = FUN_00a68490();
        piVar12 = piStack_31c;
        uVar22 = (uint)(uVar26 >> 0x20);
        lVar4 = (uVar26 & 0xffffffff) * 0x431bde82;
        fStack_2dc = (float)((ulonglong)lVar4 >> 0x20);
        lVar5 = (ulonglong)uVar22 * 0xd7b634db;
        fStack_2e8 = (float)((ulonglong)lVar5 >> 0x20);
        uVar26 = lVar5 + ((uVar26 & 0xffffffff) * 0xd7b634db >> 0x20);
        uVar21 = (uint)(uVar26 >> 0x20);
        lVar4 = lVar4 + (uVar26 & 0xffffffff);
        fStack_2d4 = (float)lVar4;
        uVar9 = (uint)((ulonglong)lVar4 >> 0x20);
        lVar4 = (ulonglong)uVar22 * 0x431bde82 +
                (ulonglong)CONCAT14(CARRY4(uVar21,uVar9),uVar21 + uVar9);
        uVar9 = (uint)((ulonglong)lVar4 >> 0x20);
        fStack_30c = (float)((uint)lVar4 >> 0x12 | uVar9 * 0x4000);
        uVar9 = uVar9 >> 0x12;
        piVar8 = piStack_31c + 0xf2;
        piStack_31c[0xd] = 0;
        piStack_31c[0xe] = 0;
        if (*piVar8 != 0) {
          piStack_2b8 = piVar8;
          FUN_004cf210(&piStack_2b8);
        }
        iVar10 = *piVar12;
        *piVar8 = 0;
        piVar12[0xcf] = iStack_2c4;
        piVar12[0xd0] = (int)fStack_2c0;
        piVar12[0xd8] = (int)fStack_304;
        piVar12[0xd9] = (int)fStack_2fc;
        (**(code **)(iVar10 + 4))(pbStack_324,fStack_2e0,fVar25,local_328);
        iVar10 = *(int *)(*(int *)((int)fStack_2f0 + 0x18300) + 0x1214);
        *(int *)(*(int *)((int)fStack_2f0 + 0x18300) + 0x1214) = iVar10 + 1;
        piVar12[8] = iVar10;
        FUN_00418500(piVar12);
        cVar6 = FUN_007078f0(piVar12);
        if (cVar6 != '\0') {
          FUN_007079c0(piVar12,extraout_ECX);
        }
        if ((*(char *)((int)piVar12 + 0x172) != '\0') &&
           (*(int *)((int)fStack_2f0 + 0x67758) != *(int *)((int)fStack_2f0 + 0x6775c))) {
          fStack_2a8 = (float)piVar12[0xb];
          fVar25 = (float)piVar12[10];
          piVar8 = (int *)((int)fStack_2f0 + 0x67780);
          local_2ac = fVar25;
          FUN_009e24a0(&uStack_320,&local_2ac);
          if (uStack_320 == *piVar8) {
            uStack_2a0 = 0xffffffff;
            fStack_2a4 = fVar25;
            piVar12 = (int *)FUN_009e24a0(&fStack_26c,&fStack_2a4);
            uStack_320 = *piVar12;
            if (uStack_320 == *piVar8) goto LAB_0057a17c;
          }
          uVar22 = 0;
          piVar8 = (int *)((int)DAT_00c71678 + 0x1baa8);
          if (*(int *)((int)DAT_00c71678 + 0x1baac) - *piVar8 >> 2 != 0) {
            do {
              if (piVar8[1] - *piVar8 >> 2 == 0) {
                FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
              }
              FUN_009e0680(6,piStack_31c,&iStack_2c4,&fStack_2b4);
              uVar22 = uVar22 + 1;
              piVar8 = (int *)((int)DAT_00c71678 + 0x1baa8);
            } while (uVar22 < (uint)(*(int *)((int)DAT_00c71678 + 0x1baac) - *piVar8 >> 2));
          }
        }
LAB_0057a17c:
        uVar26 = FUN_00a68490();
        local_328 = (float)(uVar26 >> 0x20);
        lVar5 = (uVar26 & 0xffffffff) * 0x431bde82;
        fStack_304 = (float)((ulonglong)lVar5 >> 0x20);
        fStack_2fc = (float)((ulonglong)(uint)local_328 * 0xd7b634db >> 0x20);
        lVar4 = (ulonglong)(uint)local_328 * 0x431bde82;
        uVar26 = (ulonglong)(uint)local_328 * 0xd7b634db +
                 ((uVar26 & 0xffffffff) * 0xd7b634db >> 0x20);
        uVar21 = (uint)(uVar26 >> 0x20);
        lVar5 = lVar5 + (uVar26 & 0xffffffff);
        fStack_2d4 = (float)lVar5;
        uVar22 = (uint)((ulonglong)lVar5 >> 0x20);
        lVar5 = lVar4 + (ulonglong)CONCAT14(CARRY4(uVar21,uVar22),uVar21 + uVar22);
        uVar21 = (uint)((ulonglong)lVar5 >> 0x20);
        fVar25 = (float)((uint)lVar5 >> 0x12 | uVar21 * 0x4000);
        uVar22 = (int)fVar25 - (int)fStack_30c;
        bVar23 = CARRY4(DAT_00c7b630,uVar22);
        DAT_00c7b630 = DAT_00c7b630 + uVar22;
        DAT_00c7b634 = DAT_00c7b634 +
                       (((uVar21 >> 0x12) - uVar9) - (uint)((uint)fVar25 < (uint)fStack_30c)) +
                       (uint)bVar23;
        piVar8 = piStack_31c;
        param_1 = local_314;
      }
      fStack_2e8 = (float)((ulonglong)lVar4 >> 0x20);
      fStack_2dc = (float)lVar4;
      piVar8[0xd3] = 0;
      piVar8[0xd4] = -0x3e400000;
      (**(code **)(*piVar8 + 0xc))();
    }
    if (*(char *)((int)param_1 + 0xbc0) == '\0') {
      pbStack_324 = (&PTR_s_Transition1_00b61f74)[*(char *)((int)param_1 + 0xbc1)];
    }
    else {
      pbStack_324 = (&PTR_s_Transition1Alt_00b61f6c)[*(char *)((int)param_1 + 0xbc1)];
    }
    ppbVar14 = *(byte ***)((int)param_1 + 0x7c);
    if (ppbVar14 == (byte **)0x0) {
LAB_0057a2ae:
      cVar6 = FUN_0040a5d0(pbStack_324,1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)((int)param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar13 = ppbVar14;
      pbVar20 = pbStack_324;
      if (&DAT_0000000f < ppbVar14[5]) {
        ppbVar13 = (byte **)*ppbVar14;
      }
      do {
        bVar1 = *(byte *)ppbVar13;
        bVar23 = bVar1 < *pbVar20;
        if (bVar1 != *pbVar20) {
LAB_0057a290:
          uVar9 = -(uint)bVar23 | 1;
          goto LAB_0057a295;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar13 + 1);
        bVar23 = bVar1 < pbVar20[1];
        if (bVar1 != pbVar20[1]) goto LAB_0057a290;
        ppbVar13 = (byte **)((int)ppbVar13 + 2);
        pbVar20 = pbVar20 + 2;
      } while (bVar1 != 0);
      uVar9 = 0;
LAB_0057a295:
      if ((uVar9 != 0) ||
         ((*(byte *)(ppbVar14 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
      goto LAB_0057a2ae;
    }
    *(undefined4 *)((int)param_1 + 0xb64) = 0x10;
    *(undefined4 *)((int)param_1 + 0xba0) = 0;
code_r0x0057a2df:
    local_328 = 0.0;
    if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
      *(undefined *)((int)param_1 + 0xbc0) = 0;
      uVar9 = FUN_006eef60();
      *(uint *)((int)param_1 + 0xba0) = uVar9 % 0x1e + 0x1e;
      *(char *)((int)param_1 + 0xbc1) = *(char *)((int)param_1 + 0xbc1) + '\x01';
      *(undefined *)((int)param_1 + 0xbc3) = 0;
      *(undefined4 *)((int)param_1 + 0xb64) = 3;
    }
    else {
      *(undefined4 *)((int)param_1 + 0x14) = 0;
      fVar25 = DAT_00baa120;
      pfVar3 = *(float **)((int)param_1 + 0xc);
      for (pfVar15 = *(float **)((int)param_1 + 8); pfVar15 != pfVar3; pfVar15 = pfVar15 + 0xe) {
        fVar11 = *pfVar15;
        *pfVar15 = fVar11 * fVar25;
        *(float *)((int)param_1 + 0x14) = fVar11 * fVar25 + *(float *)((int)param_1 + 0x14);
      }
    }
  }
  iVar10 = *(int *)((int)param_1 + 0xb64);
  if ((((iVar10 == 8) || (iVar10 == 9)) || (iVar10 == 10)) && (*(int *)((int)param_1 + 0x7c) != 0))
  {
    cVar6 = FUN_0040add0(&DAT_00b1d644);
    if (cVar6 == '\0') {
      if ((*(int *)((int)param_1 + 0x7c) != 0) && (cVar6 = FUN_0040add0("Close"), cVar6 != '\0')) {
        *(undefined *)((int)param_1 + 0xbc0) = 0;
      }
    }
    else {
      FUN_006d6ba0(0x13a,0x3f800000,2,0,0x3f800000);
      *(undefined *)((int)param_1 + 0xbc0) = 1;
    }
  }
  if (*(int *)((int)param_1 + 0xb64) != 6) {
    *(float *)((int)param_1 + 0x364) =
         (*(float *)(*(int *)((int)DAT_00c71678 + 0x18300) + 0x18) + DAT_00baa7e8) -
         *(float *)((int)param_1 + 0x340);
    if (*(float *)((int)param_1 + 0x360) <= DAT_00baa454) {
      if (DAT_00baad50 <= *(float *)((int)param_1 + 0x360)) {
        pcVar30 = "WalkIdle";
      }
      else {
        pcVar30 = "WalkLeft";
      }
    }
    else {
      pcVar30 = "WalkRight";
    }
    FUN_0040a940(pcVar30,0);
  }
  if (*(int *)((int)param_1 + 0xb64) != 7) {
    iVar10 = FUN_006be840();
    fVar25 = local_314;
    cVar6 = *(char *)((int)param_1 + 0xbc1);
    uStack_320 = CONCAT13(cVar6,(undefined3)uStack_320);
    if (cVar6 == '\x01') {
      fVar11 = *(float *)((int)local_314 + 0x14) + DAT_00baa9a0;
      piStack_31c = (int *)((((*(float *)((int)local_314 + 0x1c) - DAT_00baa9a0) - fVar11) *
                             (*(float *)((int)param_1 + 0xbb0) + DAT_00baa454) * DAT_00baa2d0 +
                            fVar11) - *(float *)((int)param_1 + 0x33c));
    }
    else {
      piStack_31c = (int *)(*(float *)(iVar10 + 0x33c) - *(float *)((int)param_1 + 0x33c));
      if ((*(int *)((int)param_1 + 0xb64) == 8) || (*(int *)((int)param_1 + 0xb64) == 10)) {
        if ((float)piStack_31c < 0.0) {
          piStack_31c = (int *)((float)piStack_31c - DAT_00baa87c);
        }
        else if (0.0 < (float)piStack_31c) {
          piStack_31c = (int *)((float)piStack_31c + DAT_00baa87c);
        }
      }
      else {
        piStack_31c = (int *)((float)piStack_31c + *(float *)((int)param_1 + 0xbb0) * DAT_00baaa00);
      }
    }
    *(int *)((int)param_1 + 0xba4) = *(int *)((int)param_1 + 0xba4) + -1;
    if (*(int *)((int)param_1 + 0xba4) < 1) {
      iVar10 = FUN_006eef60();
      fVar11 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4;
      *(float *)((int)param_1 + 0xbb0) = (fVar11 + fVar11) - DAT_00baa454;
      uVar9 = FUN_006eef60();
      *(uint *)((int)param_1 + 0xba4) = uVar9 % 0x1e + 10;
      cVar6 = uStack_320._3_1_;
    }
    if ((float)piStack_31c <= DAT_00baa904) {
      if ((float)piStack_31c < DAT_00baae28) {
        cVar19 = -1;
        goto LAB_0057bcb6;
      }
LAB_0057bcd9:
      *(int *)((int)param_1 + 0x410) = *(int *)((int)param_1 + 0x410) + -1;
      if (*(int *)((int)param_1 + 0x410) < 1) {
        *(undefined *)((int)param_1 + 0xbc2) = 0;
      }
    }
    else {
      cVar19 = '\x01';
LAB_0057bcb6:
      if ((*(char *)((int)param_1 + 0xbc2) != cVar19) && (*(char *)((int)param_1 + 0xbc2) != '\0'))
      goto LAB_0057bcd9;
      *(char *)((int)param_1 + 0xbc2) = cVar19;
      *(undefined4 *)((int)param_1 + 0x410) = 6;
    }
    if (DAT_00ba9fe4 < local_328) {
      fVar11 = local_328;
      if ((cVar6 != '\x01') &&
         (iVar10 = FUN_006be840(), fVar11 = local_328,
         (float)((uint)(*(float *)(iVar10 + 0x340) - *(float *)((int)param_1 + 0x340)) &
                DAT_00bacb40) < DAT_00baa8e0)) {
        fVar11 = DAT_00baa454;
      }
      if (*(char *)((int)param_1 + 0xbc2) < '\x01') {
        if ((*(char *)((int)param_1 + 0xbc2) < '\0') &&
           (*(float *)((int)fVar25 + 0x14) + DAT_00baa9a0 < *(float *)((int)param_1 + 0x33c))) {
          *(float *)((int)param_1 + 0x360) =
               *(float *)((int)param_1 + 0x360) -
               fVar11 * DAT_00baa784 * *(float *)((int)param_1 + 0x39c);
        }
      }
      else {
        fVar25 = *(float *)((int)fVar25 + 0x1c) - DAT_00baa9a0;
        if (*(float *)((int)param_1 + 0x33c) <= fVar25 && fVar25 != *(float *)((int)param_1 + 0x33c)
           ) {
          *(float *)((int)param_1 + 0x360) =
               fVar11 * DAT_00baa784 * *(float *)((int)param_1 + 0x39c) +
               *(float *)((int)param_1 + 0x360);
        }
      }
    }
  }
  fVar25 = local_2d8 * *(float *)((int)param_1 + 0x36c);
LAB_0057bdca:
  *(float *)((int)param_1 + 0x36c) = fVar25;
  FUN_00aef12b();
  return;
}

