/* Local J460 decompiler output.
 * VA: 0x005586b0
 * Entry: 005586b0
 * Dispatcher: 0x006c2990
 * Types: 808
 * Identities: 808.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00558fe0; instructions=531
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=808; identities=808.0.0; dispatcher=0x006c2990;
   end=0x00558fe0; instructions=531 */

void __fastcall AI_005586b0(int *param_1)

{
  char cVar1;
  uint uVar2;
  float *pfVar3;
  float *pfVar4;
  int iVar5;
  undefined4 uVar6;
  int *piVar7;
  int iVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  undefined auStack_154 [8];
  undefined auStack_14c [4];
  float fStack_148;
  undefined auStack_144 [4];
  float fStack_140;
  float fStack_13c;
  int *local_138;
  char acStack_134 [4];
  int iStack_130;
  uint uStack_128;
  float fStack_124;
  float fStack_120;
  float fStack_11c;
  float fStack_118;
  undefined auStack_114 [88];
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_80;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined auStack_5c [16];
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined auStack_30 [16];
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 uStack_8;
  
  uStack_8 = 0xffffffff;
  puStack_c = &LAB_00af4cc0;
  local_10 = ExceptionList;
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  fVar10 = (float)param_1[0xe9];
  fVar11 = (float)param_1[0xe8];
  if (0 < param_1[0x2e8]) {
    iVar8 = param_1[0x2e8] - ((int)fVar10 - (int)fVar11);
    iVar5 = 0;
    if (0 < iVar8) {
      iVar5 = iVar8;
    }
    param_1[0x2e8] = iVar5;
  }
  local_138 = param_1;
  switch(param_1[0x2d9]) {
  case 0:
    param_1[0x5b] = param_1[0x5b] | 0x2000;
    param_1[0x2ec] = 0x42f00000;
    param_1[0x2ed] = 0x3f800000;
    param_1[0x2e9] = 0x28;
    param_1[0x5a] = param_1[0x5a];
    FUN_00557ce0();
    if ((**(char **)(DAT_00c71678 + 0x18300) != '\0') &&
       (*(int *)(DAT_00c71678 + 0x264f8) == *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0)))
    {
      FUN_006d0c60(acStack_134,0x328,0xffffffff);
      uVar2 = 0;
      if (uStack_128 != 0) {
        do {
          iVar5 = *(int *)(iStack_130 + uVar2 * 4);
          FUN_00558070(&fStack_124,0);
          pfVar3 = (float *)FUN_00557f70(auStack_154,0xc);
          fStack_148 = fStack_124;
          fStack_118 = *pfVar3 - fStack_124;
          fStack_11c = pfVar3[1] - fStack_120;
          fStack_140 = fStack_120;
          fVar9 = fStack_118 * fStack_118 + fStack_11c * fStack_11c;
          FUN_00435a50();
          fVar10 = fStack_118;
          fVar11 = fStack_11c;
          if (0.0 < fVar9) {
            fVar11 = fStack_11c * (DAT_00baa454 / fVar9);
            fVar10 = fStack_118 * (DAT_00baa454 / fVar9);
          }
          uVar2 = uVar2 + 1;
          fVar9 = *(float *)(iVar5 + 0xbb0) * DAT_00baa4a0;
          *(float *)(iVar5 + 0x340) = fStack_140 + fVar11 * fVar9;
          *(float *)(iVar5 + 0x33c) = fStack_148 + fVar10 * fVar9;
          param_1 = local_138;
        } while (uVar2 < uStack_128);
      }
      if (acStack_134[0] == '\0') {
        uStack_8 = 0;
        FUN_00a648b0(0,0);
        uStack_8 = 0xffffffff;
      }
    }
    param_1[0x2d9] = 3;
    break;
  case 3:
    FUN_0040a380(&DAT_00b1de04,0);
    FUN_005581b0();
    if (1 < param_1[0x2e9]) {
      iVar8 = param_1[0x2e9] - ((int)fVar10 - (int)fVar11);
      iVar5 = 1;
      if (1 < iVar8) {
        iVar5 = iVar8;
      }
      param_1[0x2e9] = iVar5;
    }
    uVar2 = FUN_006eef60();
    if (uVar2 % 9 == 0) {
      if (param_1[0xc] != 1) {
        if ((0 < param_1[0x2e8]) || ((float)param_1[0xd4] <= 0.0 && (float)param_1[0xd4] != 0.0))
        break;
        pfVar3 = (float *)FUN_00557f70(auStack_154,0);
        fVar10 = *pfVar3 - (float)param_1[0xcf];
        if ((DAT_00baab54 <
             (pfVar3[1] - (float)param_1[0xd0]) * (pfVar3[1] - (float)param_1[0xd0]) +
             fVar10 * fVar10) ||
           ((cVar1 = FUN_00813360(param_1 + 0xcf,0), cVar1 == '\0' ||
            (cVar1 = FUN_00417430(0x1000a00,0), cVar1 != '\0')))) break;
        FUN_006d0c60(acStack_134,0x328,0xffffffff);
        uVar2 = 0;
        if (uStack_128 != 0) {
          do {
            iVar5 = *(int *)(iStack_130 + uVar2 * 4);
            if (((*(int *)(iVar5 + 0x30) == 0) && (*(char *)(iVar5 + 0x173) == '\0')) &&
               ((*(int *)(iVar5 + 0xb64) == 8 || (*(int *)(iVar5 + 0xb64) == 9)))) {
              FUN_004175b0();
              goto LAB_00558f6c;
            }
            uVar2 = uVar2 + 1;
          } while (uVar2 < uStack_128);
        }
        if (acStack_134[0] == '\0') {
          uStack_8 = 1;
          FUN_00a648b0(0,0);
          uStack_8 = 0xffffffff;
        }
      }
      param_1[0x2d9] = 8;
      param_1[0x2ef] = param_1[0x2ee];
    }
    break;
  case 6:
    FUN_0040a380("UnderwaterSpawn",0);
    param_1[0x62] = 0;
    FUN_005581b0();
    iVar5 = FUN_0040a780();
    if (iVar5 == 1) {
      uVar6 = FUN_006eef60();
      piVar7 = (int *)FUN_006fe410(1000,0x85,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar6,0);
      uStack_20 = 0x3f800000;
      uStack_1c = 0x3f40c0c2;
      auStack_30 = ZEXT816(0);
      uStack_40 = _DAT_00babf20;
      uStack_3c = _UNK_00babf24;
      uStack_38 = _UNK_00babf28;
      uStack_34 = _UNK_00babf2c;
      uStack_18 = 0x3b808081;
      (**(code **)(*piVar7 + 0x3c))(&uStack_40,0xffffffff,0xff,0,1);
      *(undefined *)((int)param_1 + 0x171) = 1;
      param_1[0x57] = *(int *)(param_1[0xcc] + 0x24);
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 3;
      param_1[0x62] = 4;
    }
    break;
  case 7:
    FUN_0040a380("UnderwaterAttack",0);
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      uVar6 = FUN_006eef60();
      piVar7 = (int *)FUN_006fe410(1000,0x85,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar6,0);
      uStack_20 = 0x3f800000;
      uStack_1c = 0x3f40c0c2;
      auStack_30 = ZEXT816(0);
      uStack_40 = _DAT_00babf20;
      uStack_3c = _UNK_00babf24;
      uStack_38 = _UNK_00babf28;
      uStack_34 = _UNK_00babf2c;
      uStack_18 = 0x3b808081;
      (**(code **)(*piVar7 + 0x3c))(&uStack_40,0xffffffff,0xff,0,1);
      (**(code **)(*param_1 + 0x28))();
    }
    else {
      iVar5 = FUN_0040a780();
      if (iVar5 == 1) {
        uVar6 = FUN_006eef60();
        piVar7 = (int *)FUN_006fe410(1000,0x85,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar6,0);
        uStack_20 = 0x3f800000;
        uStack_1c = 0x3f40c0c2;
        auStack_30 = ZEXT816(0);
        uStack_40 = _DAT_00babf20;
        uStack_3c = _UNK_00babf24;
        uStack_38 = _UNK_00babf28;
        uStack_34 = _UNK_00babf2c;
        uStack_18 = 0x3b808081;
        (**(code **)(*piVar7 + 0x3c))(&uStack_40,0xffffffff,0xff,0,1);
      }
      FUN_005583d0();
    }
    param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
    param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
    break;
  case 8:
    FUN_0040a380("Attack",0);
    FUN_005583d0();
    FUN_005581b0();
    break;
  case 9:
    FUN_005583d0();
    fVar10 = (float)param_1[0xcd] * DAT_00baa3e0;
    param_1[0xd8] = param_1[0xcd];
    param_1[0xd9] = param_1[0xce];
    param_1[0xcd] = (int)fVar10;
    param_1[0xce] = (int)((float)param_1[0xce] * DAT_00baa3e0);
    break;
  case 10:
    FUN_005581b0(local_14);
    iVar5 = param_1[0x104];
    param_1[0x104] = iVar5 + 1;
    fVar10 = ((float)(iVar5 + 1) - 0.0) * DAT_00baa0e4;
    if (fVar10 <= 0.0) {
      fVar10 = 0.0;
    }
    if (DAT_00baa454 <= fVar10) {
      fVar10 = DAT_00baa454;
    }
    fVar10 = fVar10 * DAT_00baa708 + 0.0;
    FUN_0041d520();
    param_1[0x2ed] = (int)(fVar10 * DAT_00baa3a4 + DAT_00baa454);
    if (((iVar5 == 2) || (iVar5 == 5)) || (iVar5 == 8)) {
      FUN_006d6ba0(0x99,0x3f800000,2,0,0x3f800000);
      pfVar3 = (float *)FUN_00557f70(auStack_154,0);
      pfVar4 = (float *)FUN_00558070(auStack_144,0);
      fStack_124 = *pfVar3 - *pfVar4;
      fStack_120 = pfVar3[1] - pfVar4[1];
      pfVar3 = (float *)FUN_00a10030(auStack_14c);
      local_138 = (int *)(pfVar3[1] * DAT_00baa7e8);
      fStack_13c = *pfVar3 * DAT_00baa7e8;
      AI_0043ef30();
      FUN_004071f0(&DAT_00c33cb0);
      uStack_80 = 4;
      uStack_bc = 0x2000;
      uStack_b8 = 0;
      FUN_006cb2e0(param_1 + 0xcf,&fStack_13c,0,auStack_114);
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2ed] = 0x3f800000;
      param_1[0x2d9] = 3;
    }
    break;
  case 0xd:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa2d0);
    FUN_0040a380("UnderwaterDive",0);
    if (((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) && (param_1[0x62] != 0)) {
      uVar6 = FUN_006eef60();
      piVar7 = (int *)FUN_006fe410(1000,0x85,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar6,0);
      uStack_4c = 0x3f800000;
      uStack_48 = 0x3f40c0c2;
      auStack_5c = ZEXT816(0);
      uStack_6c = _DAT_00babf20;
      uStack_68 = _UNK_00babf24;
      uStack_64 = _UNK_00babf28;
      uStack_60 = _UNK_00babf2c;
      uStack_44 = 0x3b808081;
      (**(code **)(*piVar7 + 0x3c))(&uStack_6c,0xffffffff,0xff,0,1);
      param_1[0x62] = 0;
      *(undefined *)((int)param_1 + 0x171) = 0;
      param_1[0x57] = 0;
    }
  }
LAB_00558f6c:
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    FUN_00557ce0();
  }
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

