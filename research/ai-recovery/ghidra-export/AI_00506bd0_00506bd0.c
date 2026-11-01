/* Local J460 decompiler output.
 * VA: 0x00506bd0
 * Entry: 00506bd0
 * Dispatcher: 0x006c2990
 * Types: 13,14,18,61,80,214,249,819
 * Identities: 13.0.0,14.0.0,14.1.0,14.2.0,18.0.0,214.0.0,249.0.0,61.0.0,61.1.0,61.2.0,61.3.0,61.4.0,61.5.0,61.6.0,61.7.0,80.0.0,819.0.0,819.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00508f40; instructions=1904
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=13,14,18,61,80,214,249,819;
   identities=13.0.0,14.0.0,14.1.0,14.2.0,18.0.0,214.0.0,249.0.0,61.0.0,61.1.0,61.2.0,61.3.0,61.4.0,61.5.0,61.6.0,61.7.0,80.0.0,819.0.0,819.1.0;
   dispatcher=0x006c2990; end=0x00508f40; instructions=1904 */

void __fastcall AI_00506bd0(float ***param_1)

{
  byte bVar1;
  char cVar2;
  int iVar3;
  int *piVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  float **ppfVar8;
  undefined *puVar9;
  float ****ppppfVar10;
  float *pfVar11;
  int *piVar12;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  undefined4 extraout_ECX_04;
  undefined4 extraout_ECX_05;
  undefined4 extraout_ECX_06;
  undefined4 extraout_ECX_07;
  undefined4 extraout_ECX_08;
  undefined4 extraout_ECX_09;
  byte *pbVar13;
  float *extraout_ECX_10;
  float *extraout_ECX_11;
  int extraout_ECX_12;
  int *extraout_EDX;
  float ****ppppfVar14;
  bool bVar15;
  undefined uVar16;
  float fVar17;
  float **ppfVar18;
  float fVar19;
  float ***pppfVar20;
  float fVar21;
  float ***pppfVar22;
  float ***pppfVar23;
  undefined8 uVar24;
  undefined local_2fc [40];
  undefined local_2d4 [8];
  undefined local_2cc [4];
  int local_2c8;
  undefined local_2c4 [4];
  int local_2c0;
  undefined4 local_2bc;
  undefined4 uStack_2b8;
  undefined4 uStack_2b4;
  undefined4 uStack_2b0;
  undefined local_2ac [16];
  undefined4 local_29c;
  undefined4 local_298;
  undefined4 local_294;
  undefined4 local_290;
  undefined4 local_28c;
  float **local_288;
  float local_284;
  float ***local_280;
  float ***local_27c;
  float **local_278;
  undefined *local_274;
  float local_270;
  float local_26c;
  undefined local_268 [4];
  float ***local_264;
  float ***local_260;
  float ***local_25c;
  float **local_258;
  float ***local_254;
  float ***local_250;
  char local_249;
  undefined local_1a0 [8];
  undefined4 local_198;
  undefined4 local_194;
  undefined4 local_18c;
  undefined4 local_178;
  undefined4 local_148;
  undefined4 local_144;
  undefined local_108;
  undefined local_f8 [20];
  undefined4 local_e4;
  undefined4 local_e0;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4180;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_264 = param_1;
  if (param_1[10] == (float **)0x3d) {
    ppfVar8 = param_1[0xb];
    if ((ppfVar8 == (float **)0x5) || (ppfVar8 == (float **)0x6)) {
      FUN_0054bca0(local_24);
      goto LAB_00508f17;
    }
    if (ppfVar8 == (float **)0x4) {
      puStack_20 = &stack0xfffffffc;
      FUN_004ddf00();
      goto LAB_00508f17;
    }
  }
  puStack_20 = &stack0xfffffffc;
  if (param_1[0x2d9] == (float **)0x0) {
    param_1[0x61] = (float **)0x3;
    param_1[0x2ee] = DAT_00c7b640;
    param_1[0x2ef] = DAT_00c7b644;
    param_1[0x2d9] = (float **)0x3;
    if (param_1[10] == (float **)0x3d) {
      if (param_1[0xb] == (float **)0x1) {
        local_2ac = ZEXT816(0);
        local_29c = 0xbe48c8ca;
        local_298 = 0x3f028283;
        local_2bc = _DAT_00bac4b0;
        uStack_2b8 = _UNK_00bac4b4;
        uStack_2b4 = _UNK_00bac4b8;
        uStack_2b0 = _UNK_00bac4bc;
        local_294 = 0x3e48c8ca;
        puStack_20 = &stack0xfffffffc;
        FUN_004071f0(&local_2bc);
      }
      else {
        puStack_20 = &stack0xfffffffc;
        if (param_1[0xb] == (float **)0x3) {
          puStack_20 = &stack0xfffffffc;
          uVar5 = FUN_004238f0(0x3f800000);
          FUN_004071f0(uVar5);
        }
      }
    }
    else {
      puStack_20 = &stack0xfffffffc;
      if (param_1[10] == (float **)0x333) {
        local_2ac = ZEXT416(0);
        local_29c = 0x3df0f0f2;
        local_298 = 0x3df0f0f2;
        local_2bc = _DAT_00babf20;
        uStack_2b8 = _UNK_00babf24;
        uStack_2b4 = _UNK_00babf28;
        uStack_2b0 = _UNK_00babf2c;
        local_294 = 0x3df0f0f2;
        puStack_20 = &stack0xfffffffc;
        FUN_004071f0(&local_2bc);
        if (param_1[0xb] == (float **)0x1) {
          param_1[0x5a] = (float **)((uint)param_1[0x5a] | 0x11);
          *(undefined *)(param_1 + 0xec) = 1;
          param_1[0x61] = (float **)0x0;
          param_1[0x5b] = param_1[0x5b];
        }
      }
    }
    param_1[0x2f0] = (float **)0x0;
  }
  iVar3 = FUN_009be080(9,DAT_00c71678 + 0x1baa8,1);
  if ((iVar3 == 0) || (((uint)param_1[0x5a] & 0x20000000) != 0)) {
    local_249 = '\0';
  }
  else {
    local_249 = '\x01';
    if (param_1[10] == (float **)0x12) {
      FUN_006c0f30(0xd,0,0,0xffffffff);
    }
  }
  iVar3 = FUN_009be530(DAT_00c71678 + 0x1baa8,param_1[0xfb]);
  uVar5 = extraout_ECX;
  if ((iVar3 != 0) && (*(char *)((int)param_1 + 0x173) == '\0')) {
    ppfVar8 = param_1[10];
    if ((ppfVar8 == (float **)0x12) ||
       (((ppfVar8 == (float **)0xd || (ppfVar8 == (float **)0xd6)) || (ppfVar8 == (float **)0xf9))))
    {
      FUN_009e5c00(param_1);
      (*(code *)(*param_1)[10])();
      FUN_007599d0(1,param_1 + 0xcf,0);
      uVar5 = extraout_ECX_03;
    }
    else {
      cVar2 = (*(code *)(*param_1)[0x13])();
      uVar5 = extraout_ECX_00;
      if ((cVar2 == '\0') &&
         (cVar2 = FUN_00417430(0x20000000,0), uVar5 = extraout_ECX_01, cVar2 == '\0')) {
        FUN_00431310(iVar3);
        FUN_006ad870(local_2fc,0xffffffff,1,0);
        uVar5 = extraout_ECX_02;
      }
    }
  }
  if (((param_1[10] == (float **)0x3d) && (param_1[0x3c7] != (float **)0xffffffff)) &&
     (cVar2 = FUN_00956110(9,param_1[0x3c7],param_1,uVar5), cVar2 != '\0')) {
    uVar24 = FUN_00435c70();
    (*(code *)((ulonglong)uVar24 >> 0x20))((int)uVar24);
  }
  local_258 = DAT_00baa7e8;
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    if (param_1[10] == (float **)0x3d) {
      ppfVar8 = param_1[0xb];
      if (ppfVar8 == (float **)0x0) {
        cVar2 = FUN_00417430(0x1000000,0);
        if (cVar2 == '\0') {
          AI_0043ef30();
          iVar3 = FUN_006d8240();
          local_278 = DAT_00baa7e8;
          if (0 < iVar3) {
            local_278 = DAT_00baa81c;
          }
          local_274 = (undefined *)0x0;
          FUN_006cb2e0(param_1 + 0xcf,&local_278,6,extraout_ECX_04);
        }
      }
      else if (ppfVar8 == (float **)0x1) {
        cVar2 = FUN_00417430(0x1000000,0);
        if (cVar2 == '\0') {
          uVar5 = AI_0043ef30();
          iVar3 = FUN_006be840();
          local_278 = *(float ***)(iVar3 + 0x33c);
          local_274 = *(undefined **)(iVar3 + 0x340);
          iVar3 = FUN_006ccdd0(1,&local_278,0x41200000,uVar5);
          fVar17 = *(float *)(iVar3 + 0x418) - DAT_00baa1f8;
          fVar19 = *(float *)(iVar3 + 0x360) * DAT_00baa2e4;
          *(uint *)(iVar3 + 0x438) = *(uint *)(iVar3 + 0x438) | 2;
          fVar21 = *(float *)(iVar3 + 0x364) * DAT_00baa2e4;
          *(undefined4 *)(iVar3 + 0x43c) = *(undefined4 *)(iVar3 + 0x43c);
          *(float *)(iVar3 + 0x418) = fVar17;
          fVar17 = *(float *)(iVar3 + 0x414) * DAT_00baa354;
          *(undefined4 *)(iVar3 + 0x420) = 0x3fcccccd;
          *(float *)(iVar3 + 0x360) = fVar19;
          *(float *)(iVar3 + 0x364) = fVar21;
          *(float *)(iVar3 + 0x414) = fVar17 - DAT_00baa83c;
          FUN_00435a80();
          local_40 = _DAT_00bac500;
          uStack_3c = _UNK_00bac504;
          uStack_38 = _UNK_00bac508;
          uStack_34 = _UNK_00bac50c;
          (**(code **)(*extraout_EDX + 0x3c))(extraout_ECX_05,0xffffffff,0xff,0,1);
        }
      }
      else if (ppfVar8 == (float **)0x2) {
        cVar2 = FUN_00417430(0x1000000,0);
        if (cVar2 == '\0') {
          uVar5 = FUN_006eef60();
          pppfVar20 = param_1 + 0xcf;
          piVar12 = (int *)FUN_00428b20(1000,0x6e,pppfVar20,&DAT_00c7b640,param_1,0,uVar5);
          piVar12[0xd3] = 0;
          piVar12[0xd4] = -0x3e900000;
          (**(code **)(*piVar12 + 0xc))();
          fVar17 = 0.0;
          uVar5 = FUN_004238f0(0x3f4ccccd);
          local_260 = (float ***)((float)*pppfVar20 + fVar17);
          local_25c = (float ***)((float)param_1[0xd0] + fVar17);
          local_278 = (float **)0x3f800000;
          local_274 = (undefined *)0x0;
          FUN_0060b9d0(extraout_ECX_06,uVar5,0x40800000);
          fVar17 = 0.0;
          uVar5 = FUN_004238f0(0x3f4ccccd);
          local_260 = (float ***)((float)*pppfVar20 + fVar17);
          local_25c = (float ***)((float)param_1[0xd0] + fVar17);
          local_278 = (float **)0x0;
          local_274 = (undefined *)0x3f800000;
          FUN_0060b9d0(extraout_ECX_07,uVar5,0x40800000);
          fVar17 = 0.0;
          uVar5 = FUN_004238f0(0x3f4ccccd);
          local_260 = (float ***)((float)*pppfVar20 + fVar17);
          local_25c = (float ***)((float)param_1[0xd0] + fVar17);
          local_278 = (float **)&DAT_bf800000;
          local_274 = (undefined *)0x0;
          FUN_0060b9d0(extraout_ECX_08,uVar5,0x40800000);
          fVar17 = 0.0;
          uVar5 = FUN_004238f0(0x3f4ccccd);
          local_288 = (float **)((float)*pppfVar20 + fVar17);
          local_284 = (float)param_1[0xd0] + fVar17;
          local_278 = (float **)0x0;
          local_274 = &DAT_bf800000;
          FUN_0060b9d0(extraout_ECX_09,uVar5,0x40800000);
        }
      }
      else if (ppfVar8 == (float **)0x3) {
        cVar2 = FUN_00417430(0x1000000,0);
        if (cVar2 == '\0') {
          AI_0043ef30();
          FUN_004071f0(&DAT_00c34e54);
          iVar3 = FUN_006d8240();
          local_288 = DAT_00baa7e8;
          if (0 < iVar3) {
            local_288 = DAT_00baa81c;
          }
          local_284 = 0.0;
          FUN_006cb2e0(param_1 + 0xcf,&local_288,7,local_f8);
          uVar5 = FUN_006eef60();
          piVar12 = (int *)FUN_00428b20(1000,0x1a,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar5);
          piVar12[0x39] = 0x40800000;
          piVar12[0x3a] = 0x40800000;
          piVar12[0x117] = 0x1c2;
          piVar12[0x118] = 0x1c2;
          (**(code **)(*piVar12 + 0xc))();
        }
      }
      else if ((ppfVar8 == (float **)0x7) && (cVar2 = FUN_00417430(0x1000000,0), cVar2 == '\0')) {
        AI_0043ef30();
        local_e4 = 0x3fe66666;
        local_a0 = 0;
        local_9c = 0x40;
        local_e0 = 0;
        local_288 = (float **)0x41000000;
        local_284 = 6.0;
        FUN_006cb2e0(param_1 + 0xcf,&local_288,9,local_f8);
      }
    }
    else if (((param_1[10] == (float **)0x50) && (DAT_00baadec < (float)param_1[0xe0])) &&
            (local_249 == '\0')) {
      iVar3 = FUN_006be840();
      local_254 = (float ***)(*(float *)(iVar3 + 0x340) - (float)param_1[0xd0]);
      local_250 = (float ***)(*(float *)(iVar3 + 0x33c) - (float)param_1[0xcf]);
      fVar17 = (float)local_254 * (float)local_254 + (float)local_250 * (float)local_250;
      FUN_00435a50();
      if (fVar17 <= DAT_00ba9fe4) {
        pfVar11 = (float *)FUN_0067f070(&local_270);
        local_260 = (float ***)(*pfVar11 * (float)DAT_00baa81c);
        fVar19 = pfVar11[1];
      }
      else {
        fVar19 = (float)local_250 / fVar17;
        local_260 = (float ***)
                    ((uint)(((float)local_254 / fVar17) * (float)DAT_00baa81c) ^ DAT_00bacb70);
      }
      local_25c = (float ***)(fVar19 * (float)DAT_00baa81c);
      local_254 = local_260;
      local_250 = local_25c;
      uVar5 = FUN_006eef60();
      local_288 = (float **)((float)local_254 + (float)param_1[0xcf]);
      local_284 = (float)local_250 + (float)param_1[0xd0];
      piVar12 = (int *)FUN_00428b20(0x12,0,&local_288,&local_260,param_1,0,uVar5);
      uVar5 = FUN_006eef60();
      local_278 = (float **)((float)DAT_00c7b640 - (float)local_254);
      local_274 = (undefined *)((float)DAT_00c7b644 - (float)local_250);
      local_260 = (float ***)((float)local_264[0xcf] - (float)local_254);
      local_25c = (float ***)((float)local_264[0xd0] - (float)local_250);
      piVar4 = (int *)FUN_00428b20(0x12,0,&local_260,&local_278,local_264,0,uVar5);
      piVar12[0x5a] = piVar12[0x5a] & 0xfffffffb;
      piVar12[0x5b] = piVar12[0x5b];
      piVar4[0x5a] = piVar4[0x5a] & 0xfffffffb;
      piVar4[0x5b] = piVar4[0x5b];
      (**(code **)(*piVar12 + 0xc))();
      (**(code **)(*piVar4 + 0xc))();
      param_1 = local_264;
    }
  }
  if (0 < (int)param_1[0x2f0]) {
    local_250 = (float ***)((float)param_1[0xe1] / DAT_00baa950 + (float)param_1[0xe0]);
    pppfVar20 = (float ***)&local_250;
    if ((float)param_1[0xe1] <= (float)local_250) {
      pppfVar20 = param_1 + 0xe1;
    }
    param_1[0xe0] = *pppfVar20;
    param_1[0x2f0] = (float **)((int)param_1[0x2f0] + -1);
  }
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[10] == (float **)0x333)) {
    uVar5 = FUN_006eef60();
    iVar3 = FUN_00428b20(4,0xe,param_1 + 0xcf,param_1 + 0xd8,param_1,0,uVar5);
    FUN_0040a380("Appear",0);
    if (*(int *)(iVar3 + 0x7c) != 0) {
      FUN_00408e00();
    }
    local_254 = (float ***)param_1[0xef];
    if (*(int *)(iVar3 + 0x3bc) != 0) {
      local_250 = (float ***)(iVar3 + 0x3bc);
      FUN_004cf210(&local_250);
    }
    *(float **)(iVar3 + 0x3bc) = (float *)local_254;
    if (local_254 != (float ***)0x0) {
      FUN_004cdcf0((float **)(iVar3 + 0x3bc));
    }
    uVar6 = FUN_006eef60();
    iVar7 = 0x3c - uVar6 % 0xf;
    *(int *)(iVar3 + 0x410) = iVar7;
    *(int *)(iVar3 + 0x414) = iVar7;
  }
  ppfVar8 = param_1[10];
  if ((((ppfVar8 == (float **)0xd) || (ppfVar8 == (float **)0x50)) || (ppfVar8 == (float **)0x3d))
     || (ppfVar8 == (float **)0x12)) {
    ppfVar8 = param_1[0x1f];
    if (ppfVar8 == (float **)0x0) {
LAB_00507880:
      cVar2 = FUN_0040a5d0(&DAT_00b1de04,1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppfVar18 = ppfVar8;
      if (&DAT_0000000f < ppfVar8[5]) {
        ppfVar18 = (float **)*ppfVar8;
      }
      pbVar13 = &DAT_00b1de04;
      do {
        bVar1 = *(byte *)ppfVar18;
        bVar15 = bVar1 < *pbVar13;
        if (bVar1 != *pbVar13) {
LAB_00507862:
          uVar6 = -(uint)bVar15 | 1;
          goto LAB_00507867;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppfVar18 + 1);
        bVar15 = bVar1 < pbVar13[1];
        if (bVar1 != pbVar13[1]) goto LAB_00507862;
        ppfVar18 = (float **)((int)ppfVar18 + 2);
        pbVar13 = pbVar13 + 2;
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_00507867:
      if ((uVar6 != 0) || ((*(byte *)(ppfVar8 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_00507880;
    }
    if (param_1[10] == (float **)0x3d) {
      *(bool *)(param_1 + 0x52) = (float)param_1[0xd8] <= 0.0 && (float)param_1[0xd8] != 0.0;
    }
  }
  else if (ppfVar8 == (float **)0xe) {
    if (param_1[0x2d9] < (float **)0x5) {
      FUN_0040a380(&DAT_00b1de04,0);
    }
    else if ((param_1[0x2d9] == (float **)0x8) &&
            ((param_1[0x1f] == (float **)0x0 || (*(char *)(param_1 + 0x23) == '\0')))) {
      param_1[0x2d9] = (float **)0x4;
    }
  }
  else if (((ppfVar8 == (float **)0xd6) || (ppfVar8 == (float **)0xf9)) ||
          ((ppfVar8 == (float **)0x333 && (param_1[0x2d9] == (float **)0x3)))) {
    FUN_0040a380(&DAT_00b1bc54,0);
  }
  if ((param_1[10] == (float **)0xd) && (uVar6 = FUN_006eef60(), uVar6 % 1000 == 0)) {
    iVar3 = *(int *)(DAT_00c71678 + 0x18300);
    iVar7 = FUN_00812c90(param_1 + 0xcf);
    if ((-1 < iVar7) &&
       (((iVar7 < 0x1c0 &&
         (local_250 = *(float ****)(iVar3 + 0x24 + iVar7 * 4), local_250 != (float ***)0x0)) &&
        (local_250[1] == (float **)0xe)))) {
      pfVar11 = (*local_250)[4];
      FUN_00431310(param_1);
      (*(code *)pfVar11)(1,local_2fc);
      FUN_006c0f30(0xe,0,0,0xffffffff);
      param_1[0xe0] = param_1[0xe1];
    }
  }
  if ((param_1[10] == (float **)0xe) && (local_249 == '\0')) {
    if (((int)param_1[0x2e8] < 1) && (cVar2 = FUN_006cae60(0,7), cVar2 != '\0')) {
      ppfVar8 = (float **)0x23;
      if (param_1[0xb] == (float **)0x2) {
        ppfVar8 = (float **)0x3f;
      }
      param_1[0x2e8] = ppfVar8;
      FUN_0040a380("Attack",0);
      param_1[0x2d9] = (float **)0x8;
      FUN_006d9050(1);
      cVar2 = FUN_00a10600(&DAT_00c7b640);
      if (cVar2 == '\0') {
        fVar17 = *extraout_ECX_10;
      }
      else {
        iVar3 = FUN_006be840();
        fVar17 = *(float *)(iVar3 + 0x33c) - (float)param_1[0xcf];
      }
      *(bool *)(param_1 + 0x52) = fVar17 < 0.0;
    }
    if (((param_1[0x2d9] == (float **)0x8) && (FUN_006d9050(0), param_1[0x1f] != (float **)0x0)) &&
       (cVar2 = FUN_0040add0("Shoot"), cVar2 != '\0')) {
      pppfVar20 = param_1 + 0xcf;
      cVar2 = FUN_00a10600(&DAT_00c7b640);
      if (cVar2 == '\0') {
        local_280 = (float ***)*extraout_ECX_11;
        local_27c = (float ***)extraout_ECX_11[1];
      }
      else {
        iVar3 = FUN_006be840();
        local_280 = (float ***)(*(float *)(iVar3 + 0x33c) - (float)*pppfVar20);
        local_27c = (float ***)(*(float *)(iVar3 + 0x340) - (float)param_1[0xd0]);
      }
      local_254 = (float ***)&local_280;
      local_260 = local_280;
      local_25c = local_27c;
      local_250 = pppfVar20;
      if (param_1[0xb] == (float **)0x2) {
        AI_0043ef30();
        local_18c = 0x3fb33333;
        local_194 = 0xbe19999a;
        local_198 = 0x3f800000;
        local_178 = 0x3f99999a;
        fVar17 = (float)local_25c * (float)local_25c + (float)local_260 * (float)local_260;
        local_148 = 0;
        local_144 = 0x400000;
        local_108 = 1;
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar17) {
          local_25c = (float ***)(((float)DAT_00baa7b8 / fVar17) * (float)local_25c);
          local_260 = (float ***)(((float)DAT_00baa7b8 / fVar17) * (float)local_260);
        }
        puVar9 = local_1a0;
        uVar16 = 4;
        pppfVar20 = local_250;
      }
      else {
        pppfVar23 = local_27c;
        pppfVar22 = local_280;
        iVar3 = FUN_006d8240();
        ppfVar8 = DAT_00baa7b8;
        if ((iVar3 < 1) || (ppfVar8 = DAT_00baa81c, extraout_ECX_12 != 1)) {
          local_258 = ppfVar8;
        }
        fVar17 = (float)pppfVar23 * (float)pppfVar23 + (float)pppfVar22 * (float)pppfVar22;
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar17) {
          local_260 = (float ***)(((float)local_258 / fVar17) * (float)*local_254);
          local_25c = (float ***)((float)local_254[1] * ((float)local_258 / fVar17));
        }
        puVar9 = (undefined *)AI_0043ef30();
        uVar16 = param_1[0xb] == (float **)0x1;
      }
      FUN_006cb2e0(pppfVar20,&local_260,uVar16,puVar9);
      FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
    }
    if (0 < (int)param_1[0x2e8]) {
      param_1[0xdb] = (float **)((float)param_1[0xdb] * DAT_00baa3a4);
      ppfVar8 = (float **)((float)param_1[0x2ec] * DAT_00baa354);
      param_1[0x2e8] =
           (float **)((int)param_1[0x2e8] - ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]))
      ;
      param_1[0x2ec] = ppfVar8;
      param_1[0x2ed] = (float **)((float)param_1[0x2ed] * DAT_00baa354);
    }
  }
  if (param_1[0xd] == (float **)0x66) {
    if (param_1[0xc] == (float **)0x0) goto LAB_00507cdf;
    FUN_004568d0();
  }
  else {
    if (param_1[0xd] == (float **)0x369) {
      FUN_00561580();
      goto LAB_00508f17;
    }
LAB_00507cdf:
    ppfVar8 = param_1[10];
    if (ppfVar8 == (float **)0x333) {
      if (param_1[0x2d9] != (float **)0x3) {
        if (param_1[0x2d9] != (float **)0x10) goto LAB_005084a6;
        if (param_1[0x104] == (float **)0xffffffff) {
          param_1[0xdb] = (float **)((float)param_1[0xdb] * DAT_00baa3c4);
          if ((param_1[0x1f] == (float **)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
            param_1[0x2d9] = (float **)0x3;
          }
          goto LAB_00508f17;
        }
        if ((float)param_1[0xdf] <= DAT_00baa924 && DAT_00baa924 != (float)param_1[0xdf]) {
          local_264 = (float ***)param_1[0xd8];
          local_258 = param_1[0xd9];
          fVar17 = (float)local_264 * (float)local_264 + (float)local_258 * (float)local_258;
          FUN_00435a50();
          if (DAT_00ba9fe4 < fVar17) {
            fVar17 = (float)DAT_00baa81c / fVar17;
            param_1[0xd8] = (float **)((float)local_264 * fVar17);
            param_1[0xd9] = (float **)((float)local_258 * fVar17);
          }
          param_1[0xdf] = (float **)0x42480000;
        }
        FUN_0040a380("Cannonball",0);
        param_1[0x104] = (float **)((int)param_1[0x104] + 1);
        if ((int)param_1[0x104] < 0x2e) {
          fVar17 = (float)param_1[0xd8] * (float)param_1[0xd8] +
                   (float)param_1[0xd9] * (float)param_1[0xd9];
          FUN_00435a50();
          if (fVar17 < DAT_00baa784) goto LAB_00507e2b;
        }
        else {
LAB_00507e2b:
          FUN_0040a380("Deploy",0);
          param_1[0x104] = (float **)0xffffffff;
          param_1[0xdf] = (float **)param_1[0xcc][0x11];
        }
        if (*(char *)(param_1 + 100) != '\0') {
          ppfVar8 = param_1[0x67];
          ppfVar18 = param_1[0x68];
          local_264 = (float ***)0x28;
          fVar17 = (float)param_1[0x66] * (float)ppfVar18 + (float)param_1[0x65] * (float)ppfVar8;
          param_1[0xd8] =
               (float **)((float)param_1[0x65] - ((float)ppfVar8 + (float)ppfVar8) * fVar17);
          param_1[0xd9] =
               (float **)((float)param_1[0x66] - ((float)ppfVar18 + (float)ppfVar18) * fVar17);
          FUN_00956780();
          FUN_0092dc30(local_264,0x3f800000,2,0,0x3f800000,0);
        }
        goto LAB_00508f17;
      }
      if (param_1[0xb] == (float **)0x1) {
        ppfVar8 = param_1[0xef];
        *(undefined *)(param_1 + 0xec) = 1;
        if (ppfVar8 == (float **)0x0) {
          uVar5 = FUN_00435c70();
          (*(code *)(*param_1)[9])(uVar5);
          local_258 = (float **)((float)param_1[0x2ec] * DAT_00baa088);
          ppfVar8 = local_258;
          FUN_0041d540();
          local_250 = (float ***)((float)ppfVar8 * (float)DAT_00baa854);
          ppfVar8 = local_258;
          FUN_0041d520();
          ppfVar8 = (float **)((float)ppfVar8 * (float)DAT_00baa854);
          param_1[0xd8] = (float **)local_250;
          param_1[0xd9] = ppfVar8;
          uVar5 = FUN_006eef60();
          iVar3 = FUN_00428b20(4,0xe,param_1 + 0xcf,param_1 + 0xd8,param_1,0,uVar5);
          FUN_0040a380("Appear",0);
          FUN_0040a720(8);
          FUN_006a92a0(local_264[0xef]);
          uVar6 = FUN_006eef60();
          iVar7 = 0x3c - uVar6 % 0xf;
          *(int *)(iVar3 + 0x410) = iVar7;
          *(int *)(iVar3 + 0x414) = iVar7;
        }
        else {
          ppfVar18 = (float **)((float)param_1[0xe7] * DAT_00baa784 + (float)param_1[0x2ec]);
          FUN_00682740();
          param_1[0x2ec] = ppfVar18;
          pppfVar20 = (float ***)((float)ppfVar18 * DAT_00baa088);
          local_264 = pppfVar20;
          FUN_0041d540();
          local_258 = (float **)((float)pppfVar20 * DAT_00baa904 + (float)ppfVar8[0xcf]);
          pppfVar20 = local_264;
          FUN_0041d520();
          ppfVar8 = (float **)((float)pppfVar20 * DAT_00baa904 + (float)ppfVar8[0xd0]);
          param_1[0xcd] = local_258;
          param_1[0xce] = ppfVar8;
          param_1[0xd8] = (float **)((float)local_258 - (float)param_1[0xcf]);
          param_1[0xd9] = (float **)((float)ppfVar8 - (float)param_1[0xd0]);
        }
        goto LAB_00508f17;
      }
    }
    cVar2 = FUN_006ac710(3,0);
    if (cVar2 != '\0') {
      if ((((ppfVar8 == (float **)0x12) || (ppfVar8 == (float **)0x50)) ||
          (ppfVar8 == (float **)0xd6)) ||
         ((ppfVar8 == (float **)0xf9 || (ppfVar8 == (float **)0x333)))) {
        ppfVar18 = param_1[0xef];
        if ((ppfVar18 != (float **)0x0) && (param_1[0x3c7] == (float **)0xffffffff)) {
          local_258 = (float **)((float)ppfVar18[0xd0] - (float)param_1[0xd0]);
          local_264 = (float ***)((float)ppfVar18[0xcf] - (float)param_1[0xcf]);
          pppfVar20 = (float ***)
                      ((float)local_258 * (float)local_258 + (float)local_264 * (float)local_264);
          FUN_00435a50();
          local_250 = pppfVar20;
          if ((float)local_250 < DAT_00baaaec) {
            fVar17 = (float)*(int *)(DAT_00c71678 + 0x264f8) * DAT_00baa08c;
            FUN_0041d520();
            pppfVar20 = local_250;
            local_254 = (float ***)0xc0a00000;
            local_27c = (float ***)0x40a00000;
            local_250 = (float ***)((float)local_250 - (fVar17 * DAT_00baa784 + DAT_00baa968));
            ppppfVar10 = &local_250;
            if ((float)local_250 <= DAT_00baada0) {
              ppppfVar10 = &local_254;
            }
            ppppfVar14 = &local_27c;
            if ((float)*ppppfVar10 <= DAT_00baa784 && DAT_00baa784 != (float)*ppppfVar10) {
              ppppfVar14 = ppppfVar10;
            }
            local_26c = ((float)*ppppfVar14 * (float)local_258 * DAT_00baa2d0) / (float)pppfVar20;
            local_270 = ((float)*ppppfVar14 * (float)local_264 * DAT_00baa2d0) / (float)pppfVar20;
            FUN_004314b0(&local_270,0);
            fVar17 = (float)(((uint)*ppppfVar14 ^ DAT_00bacb70) & DAT_00bacb40) + DAT_00baa630;
            local_26c = (((float)local_264 * DAT_00baa198) / fVar17) / (float)param_1[0xdb];
            local_270 = (float)((uint)(((float)local_258 * DAT_00baa198) / fVar17) ^ DAT_00bacb70) /
                        (float)param_1[0xdb];
            FUN_004314b0(&local_270,0);
            ppfVar8 = param_1[10];
          }
        }
        if (ppfVar8 != (float **)0x12) goto LAB_005082c0;
      }
      else {
LAB_005082c0:
        if (((ppfVar8 != (float **)0x3d) && (ppfVar8 != (float **)0x50)) &&
           ((ppfVar8 != (float **)0xd6 &&
            (((ppfVar8 != (float **)0xf9 && (ppfVar8 != (float **)0x333)) && (local_249 == '\0')))))
           ) {
          pfVar11 = (float *)FUN_0067f070(local_268);
          iVar3 = FUN_006eef60();
          local_27c = (float ***)
                      ((float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) *
                      DAT_00ba9ff4);
          iVar3 = FUN_006eef60();
          fVar17 = (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4
                   * (float)local_27c * DAT_00baaad4;
          iVar3 = *(int *)(DAT_00c71678 + 0x18300);
          local_26c = fVar17 * pfVar11[1] + (float)param_1[0xd0];
          local_270 = fVar17 * *pfVar11 + (float)param_1[0xcf];
          iVar7 = FUN_00812c90(&local_270);
          if (((-1 < iVar7) && (iVar7 < 0x1c0)) &&
             ((iVar3 = *(int *)(iVar3 + 0x24 + iVar7 * 4), iVar3 != 0 &&
              (*(int *)(iVar3 + 4) == 0xe)))) {
            piVar12 = (int *)FUN_00812f00(&local_290,iVar7);
            param_1[0xcd] = (float **)*piVar12;
            param_1[0xce] = (float **)piVar12[1];
          }
          uVar6 = FUN_006eef60();
          if (uVar6 % 100 == 0) {
            AI_0041af60(local_2cc,0x21,0xffffffff,0xffffffff,0,0);
            local_14 = 0;
            if (local_2c0 != 0) {
              iVar3 = FUN_0067f010();
              iVar3 = *(int *)(local_2c8 + iVar3 * 4);
              ppfVar8 = *(float ***)(iVar3 + 0x340);
              param_1[0xcd] = *(float ***)(iVar3 + 0x33c);
              param_1[0xce] = ppfVar8;
            }
            local_14 = 0xffffffff;
            FUN_004175b0();
          }
          goto LAB_005084a6;
        }
      }
      piVar12 = (int *)FUN_006bec40(local_2d4,0);
      param_1[0xcd] = (float **)*piVar12;
      param_1[0xce] = (float **)piVar12[1];
    }
  }
LAB_005084a6:
  if (((param_1[10] == (float **)0xd) || (param_1[10] == (float **)0xe)) &&
     ((param_1[0xd] != (float **)0x66 || (param_1[0xc] == (float **)0x0)))) {
    param_1[0xcd] = DAT_00c7b640;
    param_1[0xce] = DAT_00c7b644;
  }
  if (((((uint)param_1[0x5a] & 0x1000800) != 0) && (cVar2 = FUN_00417430(0x720,0), cVar2 == '\0'))
     && (param_1[0x3c7] == (float **)0xffffffff)) {
    iVar3 = FUN_006be840();
    fVar17 = (float)param_1[0xd0] - *(float *)(iVar3 + 0x340);
    fVar19 = (float)param_1[0xcf] - *(float *)(iVar3 + 0x33c);
    fVar17 = fVar17 * fVar17 + fVar19 * fVar19;
    FUN_00435a50();
    if (fVar17 < DAT_00baab54) {
      local_258 = DAT_00baa9d0;
      if (DAT_00baaa94 < fVar17) {
        local_258 = (float **)
                    ((float)DAT_00baa9d0 -
                    ((fVar17 - DAT_00baaa94) / DAT_00baaa94) * (float)DAT_00baa9d0);
      }
      local_264 = (float ***)DAT_00baaab0;
      if (*(char *)(param_1 + 100) != '\0') {
        local_264 = (float ***)DAT_00baab30;
      }
      iVar3 = FUN_006be840();
      local_250 = (float ***)((float)param_1[0xcf] - *(float *)(iVar3 + 0x33c));
      local_254 = (float ***)((float)param_1[0xd0] - *(float *)(iVar3 + 0x340));
      iVar3 = FUN_006eef60();
      local_27c = (float ***)
                  (((float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) *
                    DAT_00ba9ff4 * (float)local_264 - (float)local_264 * DAT_00baa2d0) *
                  DAT_00baa088);
      pppfVar20 = local_27c;
      FUN_0041d540();
      local_264 = pppfVar20;
      pppfVar20 = local_27c;
      FUN_0041d520();
      local_270 = (float)local_264 * (float)local_250 - (float)local_254 * (float)pppfVar20;
      local_26c = (float)local_254 * (float)local_264 + (float)pppfVar20 * (float)local_250;
      pfVar11 = (float *)FUN_00a10100(local_2c4,local_258);
      fVar17 = *pfVar11;
      param_1[0xce] = (float **)(pfVar11[1] + (float)param_1[0xd0]);
      ppfVar8 = (float **)((float)param_1[0x2ec] * DAT_00baa2d0);
      param_1[0xcd] = (float **)(fVar17 + (float)param_1[0xcf]);
      param_1[0x2ec] = ppfVar8;
      param_1[0x2ed] = (float **)((float)param_1[0x2ed] * DAT_00baa2d0);
    }
  }
  if ((param_1[0xd] != (float **)0x66) || (param_1[0xc] == (float **)0x0)) {
    if ((((NAN((float)param_1[0xcd]) || NAN((float)DAT_00c7b640)) ==
          ((float)param_1[0xcd] == (float)DAT_00c7b640)) ||
        ((NAN((float)param_1[0xce]) || NAN((float)DAT_00c7b644)) ==
         ((float)param_1[0xce] == (float)DAT_00c7b644))) && (iVar3 = FUN_006ac760(), iVar3 != 0)) {
      ppfVar8 = param_1[10];
      local_264 = DAT_00baa8d0;
      if (((ppfVar8 == (float **)0x12) || (ppfVar8 == (float **)0x50)) ||
         ((ppfVar8 == (float **)0xd6 ||
          ((ppfVar8 == (float **)0xf9 || (ppfVar8 == (float **)0x333)))))) {
        local_264 = DAT_00baa8a0;
      }
      if ((ppfVar8 == (float **)0x3d) || (DAT_00baa490 < (float)param_1[0x39])) {
        local_264 = DAT_00baa854;
      }
      local_254 = (float ***)((float)param_1[0xcd] - (float)param_1[0xcf]);
      fVar17 = (float)param_1[0xce] - (float)param_1[0xd0];
      if (param_1[0x3c7] == (float **)0xffffffff) {
        if (((ppfVar8 == (float **)0xd6) || (ppfVar8 == (float **)0x333)) && (local_249 == '\0')) {
          fVar19 = (float)((uint)fVar17 ^ DAT_00bacb70);
          pppfVar20 = local_254;
LAB_005088a1:
          fVar17 = fVar17 + (float)pppfVar20;
          local_254 = (float ***)(fVar19 + (float)local_254);
        }
        else if ((ppfVar8 == (float **)0xf9) && (local_249 == '\0')) {
          pppfVar20 = (float ***)((uint)local_254 ^ DAT_00bacb70);
          fVar19 = fVar17;
          goto LAB_005088a1;
        }
        local_250 = (float ***)(fVar17 * DAT_00baa2d0);
        if (param_1[0xef] != (float **)0x0) {
          local_254 = (float ***)((float)local_254 * DAT_00baa198);
          local_250 = (float ***)((float)local_250 * DAT_00baa198);
        }
      }
      else {
        pfVar11 = (float *)FUN_006d82d0(&local_270);
        ppfVar8 = param_1[10];
        local_254 = (float ***)(*pfVar11 * (float)DAT_00baa9d0);
        local_250 = (float ***)(pfVar11[1] * (float)DAT_00baa9d0);
      }
      fVar17 = (float)local_254 * (float)local_254 + (float)local_250 * (float)local_250;
      FUN_00435a50();
      pppfVar20 = local_250;
      pppfVar23 = local_254;
      if (DAT_00ba9fe4 < fVar17) {
        pppfVar23 = (float ***)((float)local_254 / fVar17);
        pppfVar20 = (float ***)((float)local_250 / fVar17);
      }
      if (*(char *)(param_1 + 0x5d) != '\0') {
        param_1[0xdb] = (float **)((float)param_1[0xdb] * DAT_00baa3e0);
      }
      if (((ppfVar8 != (float **)0x12) && (ppfVar8 != (float **)0x3d)) &&
         ((ppfVar8 != (float **)0x50 &&
          (((ppfVar8 != (float **)0xd6 && (ppfVar8 != (float **)0xf9)) &&
           (ppfVar8 != (float **)0x333)))))) {
        param_1[0x2ec] = (float **)((float)param_1[0x2ec] * DAT_00baa354);
        param_1[0x2ed] = (float **)((float)param_1[0x2ed] * DAT_00baa354);
        ppfVar8 = param_1[10];
      }
      if ((float)local_264 < fVar17) {
        local_26c = (fVar17 - (float)local_264) * DAT_00baa108;
        if (DAT_00baa4b0 <= local_26c) {
          local_26c = DAT_00baa4b0;
        }
        if ((((ppfVar8 == (float **)0xd6) || (ppfVar8 == (float **)0xf9)) ||
            (ppfVar8 == (float **)0x333)) && (local_249 == '\0')) {
          local_26c = local_26c + local_26c;
        }
        local_270 = (float)pppfVar23 * local_26c;
        local_26c = (float)pppfVar20 * local_26c;
        FUN_004314b0(&local_270,0);
      }
    }
    ppfVar8 = param_1[10];
    if (((ppfVar8 == (float **)0xd6) || (ppfVar8 == (float **)0xf9)) || (ppfVar8 == (float **)0x333)
       ) {
      if (((*(char *)(param_1 + 100) != '\0') && (uVar6 = FUN_006eef60(), uVar6 % 3 == 0)) &&
         (cVar2 = FUN_00417430(0x1000800,0), cVar2 == '\0')) {
        iVar3 = FUN_006eef60();
        piVar12 = (int *)FUN_00a10100(local_268,
                                      DAT_00baad74 -
                                      (float)((double)iVar3 +
                                             (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) *
                                      DAT_00ba9ff4 * DAT_00baa528);
        param_1[0x2ee] = (float **)*piVar12;
        param_1[0x2ef] = (float **)piVar12[1];
      }
      if ((float)param_1[0x2ee] * (float)param_1[0x2ee] +
          (float)param_1[0x2ef] * (float)param_1[0x2ef] <= DAT_00baa454) {
        param_1[0x2ee] = DAT_00c7b640;
        param_1[0x2ef] = DAT_00c7b644;
      }
      else {
        FUN_004314b0(param_1 + 0x2ee,0);
        param_1[0x2ee] = (float **)((float)param_1[0x2ee] * DAT_00baa3e0);
        param_1[0x2ef] = (float **)((float)param_1[0x2ef] * DAT_00baa3e0);
      }
    }
  }
  if (param_1[0x61] == (float **)0x0) {
    cVar2 = FUN_00813360(param_1 + 0xcf,param_1[0xdc]);
    if (cVar2 != '\0') {
      local_280 = (float ***)param_1[0xcf];
      local_27c = (float ***)param_1[0xd0];
      iVar3 = FUN_007f0780(local_280,local_27c);
      if (iVar3 < 4) {
        param_1[0x61] = (float **)0x3;
      }
    }
  }
  if (((NAN((float)param_1[0xcd]) || NAN((float)DAT_00c7b640)) !=
       ((float)param_1[0xcd] == (float)DAT_00c7b640)) &&
     ((NAN((float)param_1[0xce]) || NAN((float)DAT_00c7b644)) !=
      ((float)param_1[0xce] == (float)DAT_00c7b644))) {
    if (param_1[0x3c7] == (float **)0xffffffff) {
      uVar6 = FUN_006eef60();
      if (uVar6 % 5 == 0) {
        iVar3 = FUN_006be840();
        local_270 = *(float *)(iVar3 + 0x33c) - (float)param_1[0xcf];
        local_26c = *(float *)(iVar3 + 0x340) - (float)param_1[0xd0];
        pfVar11 = (float *)FUN_00a10030(&local_280);
        fVar17 = pfVar11[1] * DAT_00baa354;
        param_1[0xd8] =
             (float **)(*pfVar11 * DAT_00baa354 * (float)param_1[0xe7] + (float)param_1[0xd8]);
        param_1[0xd9] = (float **)(fVar17 * (float)param_1[0xe7] + (float)param_1[0xd9]);
      }
    }
    else {
      iVar3 = FUN_006ac760();
      if (iVar3 != 0) {
        FUN_006d82d0(&local_270);
        param_1[0xd8] =
             (float **)(local_270 * DAT_00baa490 * (float)param_1[0xe7] + (float)param_1[0xd8]);
        param_1[0xd9] =
             (float **)(local_26c * DAT_00baa490 * (float)param_1[0xe7] + (float)param_1[0xd9]);
      }
    }
  }
  uVar6 = *(uint *)(DAT_00c71678 + 0x264f8) & 0x80000003;
  if ((int)uVar6 < 0) {
    uVar6 = (uVar6 - 1 | 0xfffffffc) + 1;
  }
  fVar17 = DAT_00baa304;
  if (uVar6 == 1) {
    pfVar11 = (float *)FUN_0067f070(&local_270);
    fVar17 = DAT_00baa304;
    ppfVar8 = (float **)((pfVar11[1] * DAT_00baa304 + (float)param_1[0x2ed]) * DAT_00baa280);
    param_1[0x2ec] = (float **)((*pfVar11 * DAT_00baa304 + (float)param_1[0x2ec]) * DAT_00baa280);
    param_1[0x2ed] = ppfVar8;
  }
  fVar19 = DAT_00baa0dc;
  if (*(int *)(DAT_00c71678 + 0x264f8) % 3 == 2) {
    if (param_1[0xd] != (float **)0x43) {
      if (DAT_00baaac0 <= (float)param_1[0xd0]) {
        if (DAT_00baab60 < (float)param_1[0xd0]) {
          ppfVar8 = (float **)((float)param_1[0x2ed] - DAT_00baa0dc);
          goto LAB_00508df8;
        }
      }
      else {
        ppfVar8 = (float **)((float)param_1[0x2ed] + DAT_00baa0dc);
LAB_00508df8:
        param_1[0x2ed] = ppfVar8;
      }
      if ((float)param_1[0xcf] <= DAT_00baab84) {
        if (DAT_00baa9a0 <= (float)param_1[0xcf]) goto LAB_00508e40;
        ppfVar8 = (float **)((float)param_1[0x2ec] + fVar19);
      }
      else {
        ppfVar8 = (float **)((float)param_1[0x2ec] - fVar19);
      }
      param_1[0x2ec] = ppfVar8;
    }
LAB_00508e40:
    ppfVar8 = param_1[0xdb];
    if ((NAN((float)ppfVar8) || NAN(DAT_00ba9fe4)) == ((float)ppfVar8 == DAT_00ba9fe4)) {
      param_1[0xd9] =
           (float **)
           (((float)param_1[0xe7] * ((float)param_1[0x2ed] + (float)param_1[0x2ed])) /
            (float)ppfVar8 + (float)param_1[0xd9]);
      param_1[0xd8] =
           (float **)
           (((float)param_1[0xe7] * ((float)param_1[0x2ec] + (float)param_1[0x2ec])) /
            (float)ppfVar8 + (float)param_1[0xd8]);
      ppfVar8 = param_1[0xdb];
    }
    param_1[0xdb] = (float **)((float)ppfVar8 * fVar17);
  }
  if (((param_1[10] == (float **)0xf9) && (*(char *)((int)param_1 + 0x173) != '\0')) &&
     (cVar2 = FUN_00417430(0x1000000,0), cVar2 == '\0')) {
    uVar5 = AI_0043ef30();
    local_290 = 0x41000000;
    local_28c = 0x40c00000;
    FUN_006cb2e0(param_1 + 0xcf,&local_290,9,uVar5);
  }
LAB_00508f17:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

