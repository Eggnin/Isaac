/* Local J460 decompiler output.
 * VA: 0x0049fa10
 * Entry: 0049fa10
 * Dispatcher: 0x006c2990
 * Types: 910
 * Identities: 910.0.0,910.1.0,910.2.0
 * Evidence: dispatcher=0x006c2990; end=0x004a1000; instructions=1152
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=910; identities=910.0.0,910.1.0,910.2.0;
   dispatcher=0x006c2990; end=0x004a1000; instructions=1152 */

void __fastcall AI_0049fa10(int *param_1)

{
  char cVar1;
  char cVar2;
  int **ppiVar3;
  int **ppiVar4;
  float *pfVar5;
  int iVar6;
  char *pcVar7;
  int iVar8;
  undefined4 uVar9;
  int *piVar10;
  uint uVar11;
  int **extraout_ECX;
  int extraout_EDX;
  float fVar12;
  float fVar13;
  int *piVar14;
  undefined auStack_178 [4];
  float fStack_174;
  float fStack_170;
  int *piStack_16c;
  int *local_168 [2];
  int *local_160;
  int *piStack_15c;
  char local_155;
  float local_154;
  int *apiStack_150 [2];
  int *local_148;
  float *pfStack_144;
  int *piStack_140;
  float fStack_13c;
  undefined4 uStack_138;
  undefined4 uStack_134;
  undefined4 uStack_130;
  undefined4 uStack_12c;
  undefined auStack_128 [16];
  undefined4 uStack_118;
  undefined4 uStack_114;
  undefined4 uStack_110;
  undefined4 local_10c;
  undefined4 uStack_108;
  undefined4 uStack_104;
  undefined4 uStack_100;
  undefined local_fc [16];
  undefined4 local_ec;
  undefined4 local_e8;
  undefined4 local_e4;
  undefined local_e0 [12];
  undefined4 uStack_d4;
  undefined4 uStack_cc;
  undefined4 uStack_b8;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_178;
  local_148 = DAT_00baa7a4;
  switch(param_1[0x2d9]) {
  case 0:
    param_1[0x2ee] = 0;
    *(undefined2 *)(param_1 + 0x2ef) = 0;
    param_1[0x2d9] = 7;
    cVar1 = FUN_0040a5d0(&DAT_00b1e7b0,1);
    if (cVar1 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
    break;
  case 3:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    FUN_0040a380(&DAT_00b1bc54,0);
    param_1[0x104] = param_1[0x104] + ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
    if (8 < param_1[0x104]) {
      iVar8 = FUN_006be840();
      fStack_174 = *(float *)(iVar8 + 0x33c);
      pfVar5 = (float *)(param_1 + 0xcf);
      fStack_170 = *(float *)(iVar8 + 0x340);
      cVar1 = FUN_007f0df0(pfVar5,&fStack_174,3,0,0,0,0);
      if ((((cVar1 == '\0') || (uVar11 = FUN_006eef60(), (uVar11 & 3) != 0)) ||
          ((*(char *)(param_1 + 0x2ee) != '\0' ||
           ((param_1[0xef] != 0 && (*(int *)(param_1[0xef] + 0xb64) != 3)))))) &&
         (param_1[0xef] != 0)) {
        uVar11 = FUN_006eef60();
        if (((uVar11 % 10 == 0) ||
            ((1 < param_1[0x2f1] && (uVar11 = FUN_006eef60(), uVar11 % 3 == 0)))) ||
           ((3 < param_1[0x2f1] && (uVar11 = FUN_006eef60(), (uVar11 & 1) == 0)))) {
          local_154 = *pfVar5;
          fVar12 = ((float)param_1[0xd0] - fStack_170) * ((float)param_1[0xd0] - fStack_170) +
                   (local_154 - fStack_174) * (local_154 - fStack_174);
          FUN_00435a50();
          if ((fVar12 < DAT_00baab60) &&
             ((param_1[0xef] == 0 || (*(int *)(param_1[0xef] + 0xb64) == 3)))) {
            *(bool *)(param_1 + 0x52) = 0.0 < fStack_174 - local_154;
            FUN_0040a380("Shoot",0);
            param_1[0x2d9] = 8;
            param_1[0x2f1] = 0;
            param_1[0x104] = -1;
            param_1[0x2e8] = 0;
            break;
          }
        }
        cVar1 = FUN_00417430(0x1000a00,0);
        if ((cVar1 == '\0') && (cVar1 = FUN_007f0df0(pfVar5,&fStack_174,0,0,0,0,0), cVar1 == '\0'))
        {
          local_154 = *pfVar5;
          pfStack_144 = (float *)param_1[0xd0];
          piStack_140 = (int *)param_1[0xd8];
          apiStack_150[0] = (int *)param_1[0xd9];
          local_160 = (int *)param_1[0xdb];
          FUN_007e3260();
          FUN_007e33c0(&fStack_174,0x3f800000,0,1);
          cVar1 = FUN_00a10630(&DAT_00c7b640);
          if (cVar1 == '\0') {
            ppiVar3 = (int **)FUN_006bec40(local_168,0);
            ppiVar4 = (int **)(param_1 + 0xd8);
            piStack_16c = *ppiVar3;
            local_168[0] = ppiVar3[1];
          }
          else {
            piStack_16c = (int *)((float)*extraout_ECX * DAT_00baab08 + (float)param_1[0xcf]);
            local_168[0] = (int *)((float)extraout_ECX[1] * DAT_00baab08 + (float)param_1[0xd0]);
            ppiVar4 = extraout_ECX;
          }
          param_1[0xcf] = (int)local_154;
          param_1[0xd0] = (int)pfStack_144;
          *ppiVar4 = piStack_140;
          ppiVar4[1] = apiStack_150[0];
          param_1[0xdb] = (int)local_160;
        }
        else {
          ppiVar4 = (int **)FUN_006bec40(&local_160,0);
          piStack_16c = *ppiVar4;
          local_168[0] = ppiVar4[1];
        }
        if (((NAN((float)piStack_16c) || NAN(fStack_174)) != ((float)piStack_16c == fStack_174)) &&
           ((NAN((float)local_168[0]) || NAN(fStack_170)) != ((float)local_168[0] == fStack_170))) {
          iVar8 = FUN_006be840();
          fVar12 = ((float)param_1[0xd0] - fStack_170) * ((float)param_1[0xd0] - fStack_170) +
                   ((float)param_1[0xcf] - fStack_174) * ((float)param_1[0xcf] - fStack_174);
          FUN_00435a50();
          local_160 = (int *)(*(float *)(iVar8 + 0x360) * DAT_00baa120 * fVar12 + (float)piStack_16c
                             );
          piStack_15c = (int *)(*(float *)(iVar8 + 0x364) * DAT_00baa120 * fVar12 +
                               (float)local_168[0]);
          iVar8 = FUN_007f0780(local_160,piStack_15c);
          if (iVar8 == 0) {
            piStack_16c = local_160;
            local_168[0] = piStack_15c;
          }
        }
        param_1[0x104] = -1;
        FUN_0040a380(&DAT_00b1d560,0);
        param_1[0x2f1] = param_1[0x2f1] + 1;
        param_1[0x2ec] = (int)piStack_16c;
        param_1[0x2ed] = (int)local_168[0];
        param_1[0x2d9] = 6;
      }
      else {
        *(bool *)(param_1 + 0x52) = 0.0 < fStack_174 - *pfVar5;
        FUN_0040a380("ChargeAnnounce",0);
        param_1[0x2d9] = 9;
        param_1[0x2f1] = 0;
        param_1[0x104] = -1;
      }
    }
    break;
  case 6:
    if (((param_1[0x1f] == 0) || (cVar1 = FUN_0040ae70(&DAT_00b1d560), cVar1 == '\0')) ||
       (cVar1 = FUN_0040b090("Shoot"), cVar1 != '\0')) {
      fVar12 = (float)param_1[0xdb] * DAT_00baa3a4;
      param_1[0x62] = 4;
      param_1[0xdb] = (int)fVar12;
    }
    else {
      param_1[0x62] = 0;
      fStack_174 = (float)param_1[0x2ec] - (float)param_1[0xcf];
      fStack_170 = (float)param_1[0x2ed] - (float)param_1[0xd0];
      pfVar5 = (float *)FUN_00a10030(apiStack_150);
      fVar12 = (float)param_1[0xdb];
      if (NAN(fVar12) == (fVar12 == 0.0)) {
        fVar13 = ((float)param_1[0xe7] * *pfVar5 * (float)DAT_00baa528) / fVar12 +
                 (float)param_1[0xd8];
        param_1[0xd9] =
             (int)(((float)param_1[0xe7] * pfVar5[1] * (float)DAT_00baa528) / fVar12 +
                  (float)param_1[0xd9]);
        param_1[0xd8] = (int)fVar13;
        fVar12 = (float)param_1[0xdb];
      }
      else {
        fVar13 = (float)param_1[0xd8];
      }
      param_1[0xdb] = (int)(fVar12 * DAT_00baa3e0);
      *(bool *)(param_1 + 0x52) = 0.0 < fVar13;
    }
    if (param_1[0x1f] != 0) {
      cVar1 = FUN_0040add0("Shoot");
      if (cVar1 != '\0') {
        FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
        param_1[0x104] = 0;
        fVar12 = (float)param_1[0xd9] * DAT_00baa0d0;
        param_1[0xcd] = (int)((float)param_1[0xd8] * DAT_00baa0d0);
        param_1[0xce] = (int)fVar12;
      }
      if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
    }
    param_1[0x62] = 4;
    param_1[0x2d9] = 3;
    param_1[0x104] = 0;
    break;
  case 7:
    FUN_0040a380(&DAT_00b1e7b0,0);
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa400);
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 3;
    }
    break;
  case 8:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    if ((param_1[0x1f] != 0) && (cVar1 = FUN_0040add0("Shoot"), cVar1 != '\0')) {
      FUN_006d6ba0(0xb,0x3f800000,2,0,0x3f800000);
      param_1[0x104] = 0;
      iVar6 = FUN_006be840();
      iVar8 = *(int *)(iVar6 + 0x340);
      param_1[0x2ec] = *(int *)(iVar6 + 0x33c);
      param_1[0x2ed] = iVar8;
    }
    if (-1 < param_1[0x104]) {
      iVar8 = param_1[0x2e8];
      if (iVar8 == 2) {
        iVar6 = FUN_006be840();
        iVar8 = param_1[0x2e8];
        fStack_174 = *(float *)(iVar6 + 0x33c);
        fStack_170 = *(float *)(iVar6 + 0x340);
      }
      else {
        fStack_174 = (float)param_1[0x2ec];
        fStack_170 = (float)param_1[0x2ed];
      }
      pfStack_144 = &fStack_174;
      local_154 = 0.0;
      local_160 = (int *)((uint)(iVar8 < 1) * 2 + 10);
      if ((int)(float)param_1[0xe9] != (int)(float)param_1[0xe8] &&
          -1 < (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]) {
        iVar8 = param_1[0x104];
        do {
          if ((iVar8 % 3 == 0) && (iVar8 < (int)local_160)) {
            pfVar5 = (float *)(param_1 + 0xcf);
            local_168[0] = (int *)(*pfStack_144 - *pfVar5);
            piStack_16c = (int *)(pfStack_144[1] - (float)param_1[0xd0]);
            fVar12 = (float)local_168[0] * (float)local_168[0] +
                     (float)piStack_16c * (float)piStack_16c;
            FUN_00435a50();
            if (0.0 < fVar12) {
              local_168[0] = (int *)((float)local_168[0] * ((float)DAT_00baa454 / fVar12));
              piStack_16c = (int *)((float)piStack_16c * ((float)DAT_00baa454 / fVar12));
            }
            uStack_138 = _DAT_00bac7b0;
            uStack_134 = _UNK_00bac7b4;
            uStack_130 = _UNK_00bac7b8;
            uStack_12c = _UNK_00bac7bc;
            uStack_118 = 0;
            uStack_114 = 0;
            auStack_128 = ZEXT816(0);
            uStack_110 = 0;
            if (param_1[0x2e8] == 0) {
              AI_0043ef30();
              uStack_b8 = 0x3fc00000;
              uStack_cc = 0x3fb33333;
              if (param_1[0x104] != 0) {
                uStack_cc = 0x3f800000;
              }
              piStack_140 = (int *)((float)local_168[0] * DAT_00baa7e8);
              uStack_d4 = 0xbd4ccccd;
              fStack_13c = (float)piStack_16c * DAT_00baa7e8;
              FUN_006cb2e0(pfVar5,&piStack_140,5,local_e0);
            }
            local_168[0] = DAT_00baada8;
            if (*(char *)(param_1 + 0x52) != '\0') {
              local_168[0] = DAT_00baa7a4;
            }
            uVar9 = FUN_006eef60();
            piVar10 = (int *)FUN_00428b20(1000,2,pfVar5,&DAT_00c7b640,0,3,uVar9);
            (**(code **)(*piVar10 + 0x3c))(&uStack_138,0xffffffff,0xff,0,1);
            piVar10[0x37] = (int)local_168[0];
            piVar10[0x38] = -0x3ee00000;
            piVar10[0xd6] = 0x41200000;
            if (piVar10[0xef] != 0) {
              apiStack_150[0] = piVar10 + 0xef;
              FUN_004cf210(apiStack_150);
            }
            piVar10[0xef] = (int)param_1;
            FUN_004cdcf0(piVar10 + 0xef);
            fVar12 = (float)param_1[0xcf];
            fVar13 = (float)param_1[0xd0];
            *(undefined *)(piVar10 + 0x119) = 1;
            piVar10[0x11a] = (int)((float)piVar10[0xcf] - fVar12);
            piVar10[0x11b] = (int)((float)piVar10[0xd0] - fVar13);
          }
          param_1[0x104] = param_1[0x104] + 1;
          iVar8 = param_1[0x104];
          local_154 = (float)((int)local_154 + 1);
        } while ((int)local_154 < (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
      }
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 3;
      param_1[0x104] = 0;
    }
    break;
  case 9:
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_006d6ba0(0x73,0x3f800000,2,0,0x3f800000);
      iVar8 = FUN_006be840();
      local_160 = *(int **)(iVar8 + 0x33c);
      apiStack_150[0] = *(int **)(iVar8 + 0x340);
      fVar12 = ((float)param_1[0xd0] - (float)apiStack_150[0]) *
               ((float)param_1[0xd0] - (float)apiStack_150[0]) +
               ((float)param_1[0xcf] - (float)local_160) * ((float)param_1[0xcf] - (float)local_160)
      ;
      FUN_00435a50();
      fStack_174 = *(float *)(iVar8 + 0x360) * fVar12 * DAT_00baa0d0 + (float)local_160;
      fStack_170 = *(float *)(iVar8 + 0x364) * fVar12 * DAT_00baa0d0 + (float)apiStack_150[0];
      FUN_0049f870(&fStack_174);
      param_1[0x2e9] = 1;
    }
    break;
  case 10:
    fVar12 = (float)param_1[0xcd];
    if (((NAN(fVar12) || NAN(DAT_00c7b640)) == (fVar12 == DAT_00c7b640)) ||
       ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) == ((float)param_1[0xce] == DAT_00c7b644)))
    {
      *(bool *)(param_1 + 0x52) = 0.0 < fVar12;
      param_1[0xdb] = 0x3f6e147b;
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_0040a380("ChargeLoop",0);
      }
    }
    else {
      param_1[0xdb] = 0x3f59999a;
      if ((param_1[0x2e9] < 3) || (pcVar7 = "ChargeEnd", param_1[0xef] == 0)) {
        pcVar7 = "ChargeEndShort";
      }
      FUN_0040a380(pcVar7,0);
      *(undefined2 *)(param_1 + 0x2f0) = 0;
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        if ((param_1[0x2e9] < 3) || (param_1[0xef] == 0)) {
          iVar8 = param_1[0xef];
          if (((iVar8 == 0) || (cVar1 = FUN_0049d100(), cVar1 == '\0')) || (extraout_EDX != 2)) {
            iVar8 = FUN_006be840();
            local_160 = *(int **)(iVar8 + 0x33c);
            apiStack_150[0] = *(int **)(iVar8 + 0x340);
            fVar12 = ((float)param_1[0xd0] - (float)apiStack_150[0]) *
                     ((float)param_1[0xd0] - (float)apiStack_150[0]) +
                     ((float)param_1[0xcf] - (float)local_160) *
                     ((float)param_1[0xcf] - (float)local_160);
            FUN_00435a50();
            fStack_174 = *(float *)(iVar8 + 0x360) * fVar12 * DAT_00baa0d0 + (float)local_160;
            fStack_170 = *(float *)(iVar8 + 0x364) * fVar12 * DAT_00baa0d0 + (float)apiStack_150[0];
            FUN_0049f870(&fStack_174);
            param_1[0x2e9] = param_1[0x2e9] + 1;
          }
          else {
            local_160 = *(int **)(iVar8 + 0x33c);
            apiStack_150[0] = *(int **)(iVar8 + 0x340);
            fVar12 = ((float)param_1[0xd0] - (float)apiStack_150[0]) *
                     ((float)param_1[0xd0] - (float)apiStack_150[0]) +
                     ((float)param_1[0xcf] - (float)local_160) *
                     ((float)param_1[0xcf] - (float)local_160);
            FUN_00435a50();
            fStack_174 = *(float *)(iVar8 + 0x360) * fVar12 * DAT_00baa120 + (float)local_160;
            fStack_170 = *(float *)(iVar8 + 0x364) * fVar12 * DAT_00baa120 + (float)apiStack_150[0];
            FUN_0049f870(&fStack_174);
            *(undefined *)(param_1 + 0x2f0) = 1;
            param_1[0x2e9] = param_1[0x2e9] + 1;
          }
        }
        else {
          param_1[0x2d9] = 3;
          param_1[0x104] = 0;
        }
      }
    }
    break;
  case 0x10:
    if ((param_1[0xef] == 0) || (*(int *)(param_1[0xef] + 0xb64) != 0x10)) {
      param_1[0x62] = 4;
      param_1[0x2d9] = 7;
      FUN_0040a380(&DAT_00b1e7b0,0);
      param_1[0xd8] = (int)DAT_00c7b640;
      param_1[0xd9] = (int)DAT_00c7b644;
      param_1[0xd4] = 0;
      *(undefined *)((int)param_1 + 0x171) = 1;
    }
  }
  if (param_1[0x2d9] != 0x10) {
    *(undefined *)((int)param_1 + 0x171) = 1;
  }
  fVar12 = (float)param_1[0x30d];
  fVar13 = (float)param_1[0xd4];
  param_1[0xd4] = (int)(fVar12 + fVar13);
  piVar10 = DAT_00baa528;
  if (0.0 <= fVar12 + fVar13) {
    param_1[0xd4] = 0;
    if (fVar12 <= (float)piVar10) {
      fVar12 = 0.0;
    }
    else {
      fVar12 = fVar12 * DAT_00baad0c;
    }
  }
  param_1[0x30d] = (int)(fVar12 + DAT_00baa490);
  if ((((param_1[0x5a] & 0x4000U) == 0) && (cVar1 = FUN_006fd350(), cVar1 == '\0')) &&
     ((int)(((float)param_1[0xe8] + 0.0) / DAT_00baadc0) !=
      (int)(((float)param_1[0xe9] + 0.0) / DAT_00baadc0))) {
    if (*(char *)(param_1 + 0x2ee) != '\0') {
      *(char *)(param_1 + 0x2ee) = *(char *)(param_1 + 0x2ee) + -1;
    }
    if (*(char *)((int)param_1 + 0xbb9) != '\0') {
      *(char *)((int)param_1 + 0xbb9) = *(char *)((int)param_1 + 0xbb9) + -1;
    }
    if (*(char *)((int)param_1 + 0xbba) != '\0') {
      *(char *)((int)param_1 + 0xbba) = *(char *)((int)param_1 + 0xbba) + -1;
    }
    if (*(char *)((int)param_1 + 0xbbb) != '\0') {
      *(char *)((int)param_1 + 0xbbb) = *(char *)((int)param_1 + 0xbbb) + -1;
    }
    if (*(char *)(param_1 + 0x2ef) != '\0') {
      *(char *)(param_1 + 0x2ef) = *(char *)(param_1 + 0x2ef) + -1;
    }
    if (*(char *)((int)param_1 + 0xbbd) != '\0') {
      *(char *)((int)param_1 + 0xbbd) = *(char *)((int)param_1 + 0xbbd) + -1;
    }
  }
  if (((NAN((float)param_1[0xcd]) || NAN(DAT_00c7b640)) == ((float)param_1[0xcd] == DAT_00c7b640))
     || ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) == ((float)param_1[0xce] == DAT_00c7b644))
     ) {
    fVar12 = DAT_00baa400;
    if (DAT_00baa400 <= (float)param_1[0xdb]) {
      fVar12 = (float)param_1[0xdb];
    }
    param_1[0xdb] = (int)fVar12;
    local_155 = *(char *)((int)param_1 + 0xbc1);
    cVar1 = local_155;
    if (((local_155 != '\0') && ((param_1[0x5a] & 0x4000U) == 0)) &&
       ((cVar2 = FUN_006fd350(), cVar1 = local_155, cVar2 == '\0' &&
        ((int)(((float)param_1[0xe8] + 0.0) / DAT_00baada0) !=
         (int)(((float)param_1[0xe9] + 0.0) / DAT_00baada0))))) {
      local_10c = _DAT_00bac7b0;
      uStack_108 = _UNK_00bac7b4;
      uStack_104 = _UNK_00bac7b8;
      uStack_100 = _UNK_00bac7bc;
      local_ec = 0x3f400000;
      local_e8 = 0;
      local_e4 = 0;
      local_fc = ZEXT816(0);
      (**(code **)(*param_1 + 0x3c))(&local_10c,4,0xff,1,1);
      cVar1 = *(char *)((int)param_1 + 0xbc1);
    }
    if (*(char *)(param_1 + 100) != '\0') {
      if (cVar1 != '\0') {
        FUN_00703670(10);
        uVar9 = AI_0043ef30();
        FUN_006ccdd0(0x14,&DAT_00c7b640,0,uVar9);
        local_168[0] = DAT_00baa454;
        piVar10 = DAT_00baa528;
        if ((param_1[0x319] == 0x12) || (piVar10 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
          local_168[0] = piVar10;
        }
        local_154 = 6.726233e-44;
        FUN_00956780();
        FUN_0092dc30(local_154,0x3f800000,2,0,local_168[0],0);
        local_160 = (int *)FUN_00407170();
        if (*(char *)(param_1 + 0x52) == '\0') {
          local_148 = DAT_00baada8;
        }
        uVar9 = FUN_006eef60();
        piVar10 = (int *)FUN_00428b20(1000,2,param_1 + 0xcf,&DAT_00c7b640,0,4,uVar9);
        (**(code **)(*piVar10 + 0x3c))(local_160,0xffffffff,0xff,0,1);
        piVar10[0x37] = (int)local_148;
        piVar10[0x38] = -0x3ee00000;
        piVar10[0xd6] = 0x41200000;
        if (piVar10[0xef] != 0) {
          local_160 = piVar10 + 0xef;
          FUN_004cf210(&local_160);
        }
        piVar10[0xef] = (int)param_1;
        FUN_004cdcf0(piVar10 + 0xef);
        fVar12 = (float)param_1[0xcf];
        fVar13 = (float)param_1[0xd0];
        *(undefined *)(piVar10 + 0x119) = 1;
        piVar10[0x11a] = (int)((float)piVar10[0xcf] - fVar12);
        piVar10[0x11b] = (int)((float)piVar10[0xd0] - fVar13);
        param_1[0x2ec] = -0x3f000000;
      }
      local_168[0] = DAT_00baa454;
      piVar10 = DAT_00baa528;
      if ((param_1[0x319] == 0x12) || (piVar10 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
        local_168[0] = piVar10;
      }
      local_148 = (int *)0x48;
      FUN_00956780();
      FUN_0092dc30(local_148,0x3f800000,2,0,local_168[0],0);
      local_168[0] = (int *)param_1[0xd8];
      piStack_16c = (int *)param_1[0xd9];
      fVar12 = (float)local_168[0] * (float)local_168[0] + (float)piStack_16c * (float)piStack_16c;
      FUN_00435a50();
      if (0.0 < fVar12) {
        local_168[0] = (int *)((float)local_168[0] * ((float)DAT_00baa454 / fVar12));
        piStack_16c = (int *)((float)piStack_16c * ((float)DAT_00baa454 / fVar12));
      }
      fVar12 = (float)param_1[0xcd] * (float)param_1[0xcd] +
               (float)param_1[0xce] * (float)param_1[0xce];
      FUN_00435a50();
      fVar13 = (float)piStack_16c * fVar12 * (float)DAT_00baa2d0;
      param_1[0xcd] = (int)((float)local_168[0] * fVar12 * (float)DAT_00baa2d0);
      param_1[0xce] = (int)fVar13;
      *(undefined *)((int)param_1 + 0xbc1) = 0;
    }
    fVar13 = (float)param_1[0xd8] + (float)param_1[0xcd];
    local_160 = (int *)((float)param_1[0xcd] * DAT_00baa418);
    piVar10 = (int *)((float)param_1[0xce] * DAT_00baa418);
    param_1[0xd8] = (int)fVar13;
    fVar12 = (float)param_1[0xce] + (float)param_1[0xd9];
    param_1[0xcd] = (int)local_160;
    param_1[0xce] = (int)piVar10;
    param_1[0xd9] = (int)fVar12;
    piVar14 = local_160;
    if (param_1[0x2d9] == 10) {
      fVar12 = fVar12 * fVar12 + fVar13 * fVar13;
      apiStack_150[0] = piVar10;
      piStack_140 = local_160;
      FUN_00435a50();
      piVar10 = apiStack_150[0];
      piVar14 = piStack_140;
      if (fVar12 < DAT_00baa7e8) {
        param_1[0xcd] = (int)((float)local_160 * DAT_00baa418);
        piVar10 = (int *)((float)param_1[0xce] * DAT_00baa418);
        param_1[0xce] = (int)piVar10;
        piVar14 = (int *)param_1[0xcd];
      }
    }
    fVar12 = (float)piVar10 * (float)piVar10 + (float)piVar14 * (float)piVar14;
    FUN_00435a50();
    if (fVar12 < DAT_00baa120) {
      param_1[0xcd] = (int)DAT_00c7b640;
      param_1[0xce] = (int)DAT_00c7b644;
    }
    if ((*(char *)((int)param_1 + 0xbc1) != '\0') && (uVar11 = FUN_006eef60(), (uVar11 & 3) == 0)) {
      uVar9 = AI_0043ef30();
      fStack_174 = (float)param_1[0xcf] - (float)param_1[0xd8] * DAT_00baa75c;
      fStack_170 = (float)param_1[0xd0] - (float)param_1[0xd9] * DAT_00baa75c;
      uVar11 = FUN_006eef60();
      FUN_006ccdd0((uVar11 & 1) + 1,&fStack_174,0,uVar9);
    }
    uVar11 = FUN_006eef60();
    if (uVar11 % 3 == 0) {
      uVar9 = FUN_006eef60();
      piVar10 = (int *)FUN_006fe410(1000,0x16,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar9,0);
      piVar10[0x117] = 0x1e;
      piVar10[0x118] = 0x1e;
      (**(code **)(*piVar10 + 0xc))();
    }
  }
  FUN_00aef12b();
  return;
}

