/* Local J460 decompiler output.
 * VA: 0x0047d8a0
 * Entry: 0047d8a0
 * Dispatcher: 0x006c2990
 * Types: 68
 * Identities: 68.0.0,68.1.0,68.10.0,68.11.0
 * Evidence: dispatcher=0x006c2990; end=0x0047f640; instructions=1622
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=68; identities=68.0.0,68.1.0,68.10.0,68.11.0;
   dispatcher=0x006c2990; end=0x0047f640; instructions=1622 */

void __fastcall AI_0047d8a0(int *param_1)

{
  code *pcVar1;
  byte bVar2;
  char cVar3;
  uint uVar4;
  undefined4 uVar5;
  float *pfVar6;
  int iVar7;
  undefined4 *puVar8;
  undefined4 *puVar9;
  int *piVar10;
  int iVar11;
  int ***pppiVar12;
  int *piVar13;
  int **ppiVar14;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  uint uVar15;
  int **ppiVar16;
  undefined auVar17 [16];
  undefined auVar18 [16];
  float fVar19;
  undefined8 uVar20;
  undefined4 uVar21;
  TypeDescriptor *pTVar22;
  TypeDescriptor *pTVar23;
  undefined4 uVar24;
  undefined local_258 [8];
  float local_250;
  float local_24c;
  float local_248;
  float local_244;
  float local_240;
  undefined *local_23c;
  int **local_238;
  int **local_234;
  int **local_230;
  int **local_22c;
  int **local_228;
  int *local_224;
  undefined4 local_220;
  int **local_21c;
  int **local_218;
  int **local_214;
  undefined local_168 [60];
  undefined4 local_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  undefined4 uStack_120;
  undefined4 local_11c;
  undefined4 local_118;
  undefined4 local_114;
  undefined4 local_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 local_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined8 local_a0;
  undefined4 local_98;
  undefined4 local_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 local_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined8 local_74;
  undefined4 local_6c;
  undefined local_68 [16];
  int local_58;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  int local_40;
  int iStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -NAN;
  puStack_18 = &LAB_00af2bc5;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_228 = (int **)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  local_224 = param_1;
  local_24 = uVar4;
  if (param_1[0x2d9] == 0) {
    param_1[0x2d9] = 4;
    if ((uint)param_1[0xb] < 10) {
      puStack_20 = &stack0xfffffffc;
      if ((((param_1[0xb] == 1) && (puStack_20 = &stack0xfffffffc, DAT_00c71678[0x9961] == 0x20)) &&
          (puStack_20 = &stack0xfffffffc, *DAT_00c71678 == 6)) &&
         ((puStack_20 = &stack0xfffffffc, *(int *)(DAT_00c71678[0x60c0] + 8) == 5 &&
          (puStack_20 = &stack0xfffffffc, param_1[0xd] != param_1[10])))) {
        puStack_20 = &stack0xfffffffc;
        uVar5 = FUN_006eef60(uVar4);
        iVar7 = param_1[0xc];
        pfVar6 = (float *)FUN_0067f070(&local_240);
        local_218 = (int **)(*pfVar6 * DAT_00baa904 + (float)local_224[0xcf]);
        local_214 = (int **)(pfVar6[1] * DAT_00baa904 + (float)local_224[0xd0]);
        FUN_00428b20(local_224[10],local_224[0xb],&local_218,local_224 + 0xd8,local_224,iVar7,uVar5)
        ;
      }
    }
    else {
      param_1[0x5a] = param_1[0x5a] | 1;
      param_1[0x5b] = param_1[0x5b] | 8;
      *(undefined *)(param_1 + 0xec) = 1;
      param_1[0x61] = 3;
      puStack_20 = &stack0xfffffffc;
      if (param_1[0xc] == 99) {
        *(undefined *)(param_1 + 0x30f) = 0;
        puStack_20 = &stack0xfffffffc;
      }
    }
    goto LAB_0047f5f1;
  }
  FUN_006bec40(&local_218,0);
  iVar7 = FUN_006be840();
  uVar15 = param_1[0xb];
  local_234 = (int **)(*(float *)(iVar7 + 0x360) + *(float *)(iVar7 + 0x360));
  local_21c = (int **)(*(float *)(iVar7 + 0x364) + *(float *)(iVar7 + 0x364));
  if (9 < uVar15) {
    FUN_0040a380(&DAT_00b1dce4,0);
    if (param_1[0xc] == 99) {
      iVar7 = FUN_00740bc0(DAT_00c71678[0x60c1],DAT_00c71678[0x60c3]);
      if (((*(uint *)(iVar7 + 0x44) >> 1 & 1) != 0) ||
         ((iVar7 = FUN_006d6c20(), iVar7 < 1 && (*(int *)(DAT_00c71678[0x60c0] + 0x11ec) < 9)))) {
LAB_0047dace:
        uVar5 = FUN_00435c70();
        (**(code **)(*param_1 + 0x24))(uVar5);
      }
    }
    else if ((param_1[0xef] == 0) || (*(char *)(param_1[0xef] + 0x173) != '\0')) goto LAB_0047dace;
    uVar4 = FUN_006eef60(uVar4);
    if ((uVar4 & 3) == 0) {
      iVar7 = FUN_006eef60();
      FUN_006b64d0((float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa1f8 + DAT_00baa1f8);
    }
    ppiVar16 = DAT_00baa630;
    FUN_00435a50();
    local_22c = (int **)((float)ppiVar16 * DAT_00baa2b8);
    local_224 = (int *)param_1[0xd8];
    if (((0.0 < (float)local_224) && ((float)param_1[0x2ec] <= 0.0)) ||
       ((local_228 = (int **)param_1[0xd9], 0.0 < (float)local_228 && ((float)param_1[0x2ed] <= 0.0)
        ))) {
      uVar4 = FUN_006eef60();
      param_1[0x2f1] = uVar4 % 0x1f - 0xf;
      local_228 = (int **)param_1[0xd9];
      local_224 = (int *)param_1[0xd8];
    }
    local_21c = (int **)(((float)param_1[0x2f1] * (float)DAT_00baa708) / DAT_00baaa78 + DAT_00baa398
                        );
    auVar17 = ZEXT416(local_21c);
    FUN_0041d520();
    auVar18 = auVar17;
    if ((float)local_228 <= DAT_00ba9fe4) {
      auVar18._0_4_ = auVar17._0_4_ ^ DAT_00bacb70;
      auVar18._4_4_ = 0;
      auVar18._8_4_ = auVar17._8_4_ ^ _UNK_00bacb78;
      auVar18._12_4_ = auVar17._12_4_ ^ _UNK_00bacb7c;
    }
    local_234 = (int **)((float)local_22c * auVar18._0_4_);
    auVar18 = ZEXT416(local_21c);
    FUN_0041d540();
    auVar17 = auVar18;
    if ((float)local_224 <= 0.0) {
      auVar17._0_4_ = auVar18._0_4_ ^ DAT_00bacb70;
      auVar17._4_4_ = 0;
      auVar17._8_4_ = auVar18._8_4_ ^ _UNK_00bacb78;
      auVar17._12_4_ = auVar18._12_4_ ^ _UNK_00bacb7c;
    }
    fVar19 = (float)param_1[0xdb] * DAT_00baa3e0;
    param_1[0xdb] = (int)fVar19;
    if (NAN(fVar19) == (fVar19 == 0.0)) {
      param_1[0xd8] =
           (int)(((float)local_22c * auVar17._0_4_ * (float)param_1[0xe7]) / fVar19 +
                (float)local_224);
      param_1[0xd9] =
           (int)(((float)local_234 * (float)param_1[0xe7]) / fVar19 + (float)param_1[0xd9]);
    }
    param_1[0x2ec] = param_1[0xd8];
    param_1[0x2ed] = param_1[0xd9];
    goto LAB_0047f5f1;
  }
  if (uVar15 == 1) {
    if (param_1[0xc] == 1) {
      uVar20 = CONCAT44(1,&local_c0);
      local_c0 = _DAT_00babf10;
      uStack_bc = _UNK_00babf14;
      uStack_b8 = _UNK_00babf18;
      uStack_b4 = _UNK_00babf1c;
      local_b0 = _DAT_00bac090;
      uStack_ac = _UNK_00bac094;
      uStack_a8 = _UNK_00bac098;
      uStack_a4 = _UNK_00bac09c;
      local_a0 = 0;
      local_98 = 0;
    }
    else {
      uVar20 = FUN_00407170();
    }
    uVar15 = (uint)((ulonglong)uVar20 >> 0x20);
    puVar8 = (undefined4 *)uVar20;
    local_94 = *puVar8;
    uStack_90 = puVar8[1];
    uStack_8c = puVar8[2];
    uStack_88 = puVar8[3];
    local_84 = puVar8[4];
    uStack_80 = puVar8[5];
    uStack_7c = puVar8[6];
    uStack_78 = puVar8[7];
    local_6c = puVar8[10];
    puVar9 = &local_94;
    local_74 = *(undefined8 *)(puVar8 + 8);
  }
  else {
    puVar9 = &local_50;
    local_50 = _DAT_00babf10;
    uStack_4c = _UNK_00babf14;
    uStack_48 = _UNK_00babf18;
    uStack_44 = _UNK_00babf1c;
    local_30 = 0;
    local_40 = _DAT_00bac0a0;
    iStack_3c = _UNK_00bac0a4;
    uStack_38 = _UNK_00bac0a8;
    uStack_34 = _UNK_00bac0ac;
    local_2c = 0;
    local_28 = 0;
  }
  local_c0 = *puVar9;
  uStack_bc = puVar9[1];
  uStack_b8 = puVar9[2];
  uStack_b4 = puVar9[3];
  local_b0 = puVar9[4];
  uStack_ac = puVar9[5];
  uStack_a8 = puVar9[6];
  uStack_a4 = puVar9[7];
  local_a0 = *(undefined8 *)(puVar9 + 8);
  local_98 = puVar9[10];
  if (param_1[0x62] == 0) {
LAB_0047ddee:
    if (uVar15 == 0) goto LAB_0047ddf6;
  }
  else {
    if ((uVar15 != 0) || (param_1[0xc] != 1)) {
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
      goto LAB_0047ddee;
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
LAB_0047ddf6:
    if (((param_1[0xc] == 1) && (*(char *)DAT_00c71678[0x60c0] != '\0')) &&
       (iVar7 = DAT_00c71678[0x993e] - *(int *)((char *)DAT_00c71678[0x60c0] + 0x11f0),
       iVar7 == (iVar7 / 0xd) * 0xd)) {
      uVar5 = FUN_006eef60(uVar4);
      uVar24 = 0;
      pTVar23 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
      pTVar22 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar21 = 0;
      uVar5 = FUN_00428b20(1000,0x18,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar5);
      piVar10 = (int *)__RTDynamicCast(uVar5,uVar21,pTVar22,pTVar23,uVar24);
      fVar19 = DAT_00c37940 * DAT_00baa554;
      piVar10[0x39] = (int)(DAT_00c3793c * DAT_00baa554);
      piVar10[0x3a] = (int)fVar19;
      (**(code **)(*piVar10 + 0xc))();
    }
  }
  switch(param_1[0x2d9]) {
  case 4:
    FUN_007e6650(0);
    FUN_0040a380(&DAT_00b1dce4,0);
    param_1[0x104] = 0;
    cVar3 = FUN_00417430(0,0x10000000);
    if (((cVar3 == '\0') || ((*(byte *)(*(int *)(DAT_00c71678[0x60c0] + 4) + 0x44) & 1) == 0)) &&
       ((param_1[0xb] != 0 || ((param_1[0xc] != 1 || (uVar4 = FUN_006eef60(), uVar4 % 3 != 0)))))) {
      uVar4 = FUN_006eef60();
      if (uVar4 % 0x17 == 0) {
        param_1[0x2d9] = 6;
      }
      uVar4 = FUN_006eef60();
      if (uVar4 % 0x14 == 0) {
        uVar4 = FUN_006eef60();
        iVar7 = 0xd;
        if ((uVar4 & 1) == 0) {
          iVar7 = 8;
        }
        param_1[0x2d9] = iVar7;
      }
      if (param_1[0xb] == 1) {
        uVar5 = FUN_004238f0(0x3f4ccccd);
        FUN_004071c0(uVar5);
        if (((float)((uint)((((float)param_1[0xd0] - (float)local_214) - DAT_00baa904) -
                           (float)local_21c * DAT_00baa784) & DAT_00bacb40) < DAT_00baa87c) &&
           ((float)param_1[0xdc] * (float)param_1[0x30e] <
            (float)((uint)((float)param_1[0xcf] - (float)local_218) & DAT_00bacb40))) {
          param_1[0x2d9] = 10;
          ppiVar16 = (int **)0x0;
          FUN_0041d520();
          local_21c = ppiVar16;
          local_230 = (int **)0x0;
          FUN_0041d540();
          local_22c = local_21c;
          local_220 = 0x41a00000;
          local_21c = (int **)0xc2a00000;
          FUN_0060b890(&local_230,0xc,&local_94,0x40800000);
          ppiVar16 = DAT_00baa708;
          FUN_0041d520();
          local_21c = ppiVar16;
          ppiVar16 = DAT_00baa708;
          FUN_0041d540();
          local_230 = ppiVar16;
          local_22c = local_21c;
          local_220 = 0xc1a00000;
          local_21c = (int **)0xc2a00000;
          FUN_0060b890(&local_230,0xc,&local_94,0x40800000);
        }
        ppiVar16 = DAT_00baa54c;
        if (((float)((uint)(((float)param_1[0xcf] - (float)local_218) -
                           (float)local_234 * DAT_00baa784) & DAT_00bacb40) < DAT_00baa904) &&
           ((float)param_1[0xd0] <= (float)local_214 && (float)local_214 != (float)param_1[0xd0])) {
          param_1[0x2d9] = 9;
          FUN_0041d520();
          local_22c = ppiVar16;
          local_218 = DAT_00baa54c;
          FUN_0041d540();
          local_214 = local_22c;
          local_220 = 0x41700000;
          local_21c = (int **)0xc2200000;
          FUN_0060b890(&local_218,0xc,&local_94,0x40800000);
          local_214 = local_22c;
          local_220 = 0xc1700000;
          local_21c = (int **)0xc2200000;
          FUN_0060b890(&local_218,0xc,&local_94,0x40800000);
        }
      }
    }
    break;
  case 6:
    iVar7 = param_1[0x104];
    if (iVar7 == 0) {
      cVar3 = FUN_0040a5d0(&DAT_00b1e0e4,1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
      FUN_006d6ba0(0xf,0x3f800000,2,0,0x3f800000);
      iVar7 = param_1[0x104];
    }
    param_1[0x104] = iVar7 + 1;
    cVar3 = FUN_0040b030(&DAT_00b1d560);
    if (cVar3 != '\0') {
      fVar19 = ((float)local_214 - (float)param_1[0xd0]) * _DAT_00baa0ac;
      param_1[0xd8] = (int)(((float)local_218 - (float)param_1[0xcf]) * _DAT_00baa0ac);
      param_1[0xd9] = (int)fVar19;
    }
    cVar3 = FUN_0040b090(&DAT_00b1d560);
    if (cVar3 != '\0') {
      param_1[0x62] = 0;
      param_1[0x61] = 3;
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x104] = 0;
      param_1[0x2d9] = 7;
    }
    break;
  case 7:
    if ((param_1[0x104] == 0) && (cVar3 = FUN_0040a5d0("JumpDown",1), cVar3 != '\0')) {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
    param_1[0x104] = param_1[0x104] + 1;
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 4;
    }
    cVar3 = FUN_0040b090("Shoot");
    if (cVar3 != '\0') {
      param_1[0x62] = 4;
      param_1[0x61] = 5;
    }
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 != '\0') {
      FUN_00456570();
      local_40 = param_1[0xcf];
      iStack_3c = param_1[0xd0];
      iVar7 = DAT_00c71678[0x60c0];
      local_28 = 10;
      local_30 = 0x3ccccccd;
      uStack_34 = 0x3d0f5c29;
      piVar10 = (int *)(iVar7 + 0x70fc);
      *piVar10 = *piVar10 + 1;
      uVar4 = *(uint *)(iVar7 + 0x70fc) & 0x80000001;
      if ((int)uVar4 < 0) {
        uVar4 = (uVar4 - 1 | 0xfffffffe) + 1;
      }
      FUN_0081df10(uVar4,&local_40);
      FUN_006d6ba0(0x30,0x3f800000,2,0,0x3f800000);
      AI_0043ef30();
      if (param_1[0xb] == 1) {
        local_22c = (int **)0xa;
        do {
          uVar5 = FUN_006eef60();
          iVar7 = FUN_006eef60();
          fVar19 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa704;
          local_21c = (int **)(fVar19 + fVar19);
          ppiVar16 = local_21c;
          FUN_0041d520();
          local_228 = ppiVar16;
          iVar7 = FUN_006eef60();
          local_234 = (int **)((float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                               DAT_00ba9ff4 * DAT_00baa9d0);
          ppiVar16 = local_21c;
          FUN_0041d540();
          uVar24 = 0;
          pTVar23 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
          local_218 = (int **)((float)ppiVar16 * (float)local_234 + (float)param_1[0xcf]);
          pTVar22 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          local_214 = (int **)((float)local_228 * (float)local_234 + (float)param_1[0xd0]);
          uVar21 = 0;
          uVar5 = FUN_00428b20(1000,0x17 - (uint)(param_1[0xc] != 1),&local_218,&DAT_00c7b640,
                               param_1,0,uVar5);
          iVar7 = __RTDynamicCast(uVar5,uVar21,pTVar22,pTVar23,uVar24);
          local_22c = (int **)((int)local_22c + -1);
          fVar19 = DAT_00c37940 * (float)DAT_00baa630;
          *(float *)(iVar7 + 0xe4) = DAT_00c3793c * (float)DAT_00baa630;
          *(float *)(iVar7 + 0xe8) = fVar19;
        } while (local_22c != (int **)0x0);
        if (param_1[0xc] == 0) {
          iVar7 = FUN_006d8240();
          if (iVar7 < 1) {
            local_214 = (int **)0x0;
            uVar5 = 8;
            local_218 = DAT_00baa81c;
          }
          else {
            local_214 = (int **)0x0;
            uVar5 = 8;
            local_218 = DAT_00baa834;
          }
          goto LAB_0047ea10;
        }
        iVar7 = 0;
        do {
          local_21c = (int **)AI_0043ef30();
          if (iVar7 == 0) {
            iVar11 = FUN_006be840();
            local_218 = *(int ***)(iVar11 + 0x33c);
            local_214 = *(int ***)(iVar11 + 0x340);
            pppiVar12 = &local_218;
          }
          else {
            pppiVar12 = &local_238;
            local_238 = DAT_00c7b640;
            local_234 = (int **)DAT_00c7b644;
          }
          piVar10 = (int *)FUN_006ccdd0(1,pppiVar12,0x41200000,local_21c);
          fVar19 = (float)piVar10[0x106] - DAT_00baa1f8;
          piVar10[0x10e] = piVar10[0x10e] | 2;
          piVar10[0x10f] = piVar10[0x10f];
          piVar10[0x108] = 0x3fcccccd;
          piVar10[0x106] = (int)fVar19;
          piVar10[0x105] = (int)((float)piVar10[0x105] * DAT_00baa354 - DAT_00baa83c);
          local_50 = _DAT_00bac7b0;
          uStack_4c = _UNK_00bac7b4;
          uStack_48 = _UNK_00bac7b8;
          uStack_44 = _UNK_00bac7bc;
          local_30 = 0;
          local_2c = 0;
          local_28 = 0;
          local_40 = _DAT_00bac500;
          iStack_3c = _UNK_00bac504;
          uStack_38 = _UNK_00bac508;
          uStack_34 = _UNK_00bac50c;
          (**(code **)(*piVar10 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
          iVar7 = iVar7 + 1;
        } while (iVar7 < 3);
      }
      else {
        local_12c = _DAT_00bac300;
        uStack_128 = _UNK_00bac304;
        uStack_124 = _UNK_00bac308;
        uStack_120 = _UNK_00bac30c;
        local_11c = 0x3e70f0f2;
        local_118 = 0x3e70f0f2;
        local_114 = 0;
        iVar7 = FUN_006d8240();
        local_218 = DAT_00baa834;
        if (iVar7 < 1) {
          local_218 = DAT_00baa81c;
        }
        local_214 = (int **)0x41400000;
        uVar5 = 9;
LAB_0047ea10:
        FUN_006cb2e0(param_1 + 0xcf,&local_218,uVar5,local_168);
      }
      FUN_006b66c0(param_1 + 0xcf,&local_c0);
    }
    break;
  case 8:
    iVar7 = param_1[0x104];
    if (iVar7 == 0) {
      cVar3 = FUN_0040a5d0(&DAT_00b1d53c,1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
      FUN_006d6ba0(0xf,0x3f800000,2,0,0x3f800000);
      iVar7 = param_1[0x104];
    }
    param_1[0x104] = iVar7 + 1;
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 4;
    }
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 != '\0') {
      FUN_006d6ba0(0x30,0x3f4ccccd,2,0,0x3f800000);
      AI_0043ef30();
      if (param_1[0xb] == 1) {
        if (param_1[0xc] == 0) {
          iVar7 = FUN_006d8240();
          if (iVar7 < 1) {
            local_214 = (int **)0x0;
            uVar5 = 8;
            local_218 = DAT_00baa81c;
          }
          else {
            local_214 = (int **)0x0;
            uVar5 = 8;
            local_218 = DAT_00baa834;
          }
          goto LAB_0047e4ac;
        }
        iVar7 = 2;
        do {
          uVar5 = AI_0043ef30();
          piVar10 = (int *)FUN_006ccdd0(1,&DAT_00c7b640,0x41200000,uVar5);
          fVar19 = (float)piVar10[0x106] - DAT_00baa1f8;
          piVar10[0x10e] = piVar10[0x10e] | 2;
          piVar10[0x10f] = piVar10[0x10f];
          piVar10[0x108] = 0x3fcccccd;
          piVar10[0x106] = (int)fVar19;
          piVar10[0x105] = (int)((float)piVar10[0x105] * DAT_00baa354 - DAT_00baa83c);
          local_50 = _DAT_00bac7b0;
          uStack_4c = _UNK_00bac7b4;
          uStack_48 = _UNK_00bac7b8;
          uStack_44 = _UNK_00bac7bc;
          local_30 = 0;
          local_2c = 0;
          local_28 = 0;
          local_40 = _DAT_00bac500;
          iStack_3c = _UNK_00bac504;
          uStack_38 = _UNK_00bac508;
          uStack_34 = _UNK_00bac50c;
          (**(code **)(*piVar10 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
          iVar7 = iVar7 + -1;
        } while (iVar7 != 0);
      }
      else {
        local_12c = _DAT_00bac300;
        uStack_128 = _UNK_00bac304;
        uStack_124 = _UNK_00bac308;
        uStack_120 = _UNK_00bac30c;
        local_11c = 0x3e70f0f2;
        local_118 = 0x3e70f0f2;
        local_114 = 0;
        iVar7 = FUN_006d8240();
        local_218 = DAT_00baa81c;
        if (0 < iVar7) {
          local_218 = DAT_00baa834;
        }
        local_214 = (int **)0x41000000;
        uVar5 = 9;
LAB_0047e4ac:
        FUN_006cb2e0(param_1 + 0xcf,&local_218,uVar5,local_168);
      }
      FUN_006b66c0(param_1 + 0xcf,&local_c0);
    }
    break;
  case 9:
    iVar7 = param_1[0x104];
    if (iVar7 == 0) {
      FUN_0040a380("AttackAlt01",1);
      iVar7 = param_1[0x104];
    }
    param_1[0x104] = iVar7 + 1;
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 4;
    }
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 != '\0') {
      local_250 = (float)param_1[0xcf] - DAT_00baa854;
      local_24c = (float)param_1[0xd0] - DAT_00baa904;
      local_240 = 0.0;
      local_23c = &DAT_c1c80000;
      piVar10 = (int *)FUN_0096f310(1,&local_250,0x42b40000,0x28,&local_240,param_1,0);
      local_23c = &DAT_c1c80000;
      local_248 = (float)local_224[0xcf] + DAT_00baa854;
      uVar5 = 0x42b40000;
LAB_0047f0d6:
      local_244 = (float)local_224[0xd0] - DAT_00baa904;
      local_240 = 0.0;
      piVar13 = (int *)FUN_0096f310(1,&local_248,uVar5,0x28,&local_240,local_224,0);
      piVar10[0xd6] = 0x453b8000;
      piVar13[0xd6] = 0x453b8000;
      (**(code **)(*piVar10 + 0xc))();
      (**(code **)(*piVar13 + 0xc))();
      param_1 = local_224;
    }
    break;
  case 10:
    iVar7 = param_1[0x104];
    if (iVar7 == 0) {
      FUN_0040a380("AttackAlt02",1);
      iVar7 = param_1[0x104];
    }
    param_1[0x104] = iVar7 + 1;
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 4;
    }
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 != '\0') {
      local_250 = (float)param_1[0xcf] - DAT_00baa87c;
      local_24c = (float)param_1[0xd0] - DAT_00baa904;
      local_240 = 0.0;
      local_23c = (undefined *)0xc20c0000;
      piVar10 = (int *)FUN_0096f310(1,&local_250,0x43340000,0x28,&local_240,param_1,0);
      local_23c = (undefined *)0xc20c0000;
      local_248 = (float)local_224[0xcf] + DAT_00baa87c;
      uVar5 = 0;
      goto LAB_0047f0d6;
    }
    break;
  case 0xd:
    if ((param_1[0x104] == 0) && (cVar3 = FUN_0040a5d0(&DAT_00b1d554,1), cVar3 != '\0')) {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
    param_1[0x104] = param_1[0x104] + 1;
    cVar3 = FUN_0040b030(&DAT_00b1d560);
    if (cVar3 != '\0') {
      FUN_006d6ba0(0x95,0x3f800000,2,0,0x3f800000);
      uVar5 = FUN_006eef60();
      piVar10 = (int *)FUN_00428b20(1000,0x10,param_1 + 0xcf,&DAT_00c7b640,param_1,3,uVar5);
      (**(code **)(*piVar10 + 0x3c))(&local_c0,0xffffffff,0xff,0,1);
      bVar2 = FUN_006eef60();
      *(byte *)(piVar10 + 0x52) = (bVar2 ^ 0xff) & 1;
      (**(code **)(*piVar10 + 0xc))();
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 4;
    }
    local_21c = (int **)0x0;
    ppiVar16 = local_228;
    if (0 < (int)local_228) {
      do {
        ppiVar14 = local_21c;
        if (((param_1[0x1f] != 0) &&
            (local_22c = (int **)FUN_0040ace0("BloodGuide"), ppiVar16 = local_228,
            local_22c != (int **)0x0)) && (*(char *)(local_22c + 3) != '\0')) {
          iVar7 = FUN_006eef60();
          fVar19 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa704;
          local_234 = (int **)(fVar19 + fVar19);
          fVar19 = (float)local_234;
          FUN_0041d520();
          local_224 = (int *)fVar19;
          FUN_0041d540();
          local_234 = (int **)((float)local_234 * (float)local_22c[4] * (float)DAT_00baa81c);
          local_224 = (int *)((float)local_224 * (float)local_22c[5] * (float)DAT_00baa81c);
          iVar7 = FUN_006eef60();
          fVar19 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4
          ;
          local_234 = (int **)(fVar19 * (float)local_234);
          local_224 = (int *)((float)local_224 * fVar19);
          if (((param_1[0xb] == 1) && (param_1[0xc] == 1)) &&
             ((param_1[0x1f] != 0 &&
              ((cVar3 = FUN_0040add0("Shoot"), cVar3 != '\0' && (ppiVar14 == (int **)0x0)))))) {
            FUN_00813520(&local_218,param_1 + 0xcf,0x42480000,0,0,0);
            uVar5 = FUN_006eef60();
            FUN_00428b20(0x17,0,&local_218,&DAT_00c7b640,param_1,0,uVar5);
            ppiVar16 = (int **)FUN_00813520(local_258,param_1 + 0xcf,0x42480000,0,0,0);
            local_218 = (int **)*ppiVar16;
            local_214 = (int **)ppiVar16[1];
            uVar5 = FUN_006eef60();
            FUN_00428b20(0x17,0,&local_218,&DAT_00c7b640,param_1,0,uVar5);
          }
          iVar7 = 0x18;
          local_22c = DAT_00baa630;
          if (param_1[0xb] == 1) {
            local_22c = DAT_00baa6c8;
            iVar7 = 0x17 - (uint)(param_1[0xc] != 1);
          }
          uVar5 = FUN_006eef60();
          local_248 = (float)local_234 + (float)param_1[0xcf];
          local_244 = (float)local_224 + (float)param_1[0xd0];
          piVar10 = (int *)FUN_00428b20(1000,iVar7,&local_248,&DAT_00c7b640,param_1,0,uVar5);
          fVar19 = (float)local_22c * DAT_00c3793c;
          piVar10[0x3a] = (int)((float)local_22c * DAT_00c37940);
          piVar10[0x39] = (int)fVar19;
          (**(code **)(*piVar10 + 0xc))();
          local_240 = (float)local_234 * DAT_00baa244 + (float)param_1[0xcf];
          local_250 = (float)local_234 * DAT_00baa06c;
          local_23c = (undefined *)((float)local_224 * DAT_00baa244 + (float)param_1[0xd0]);
          local_24c = (float)local_224 * DAT_00baa06c;
          uVar5 = FUN_006eef60();
          piVar10 = (int *)FUN_00428b20(1000,2,&local_240,&local_250,0,3,uVar5);
          (**(code **)(*piVar10 + 0x3c))(&local_c0,0xffffffff,0xff,0,1);
          piVar10[0x37] = (int)DAT_00c7b640;
          piVar10[0x38] = (int)DAT_00c7b644;
          piVar10[0xd6] = 0x41200000;
          ppiVar16 = local_228;
          ppiVar14 = local_21c;
        }
        local_21c = (int **)((int)ppiVar14 + 1);
      } while ((int)local_21c < (int)ppiVar16);
    }
  }
  iVar7 = FUN_006eef60();
  ppiVar14 = (int **)FUN_006b64d0((float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)])
                                  * DAT_00ba9ff4 * (float)DAT_00baa2d0 + DAT_00baa198);
  local_22c = ppiVar14;
  iVar7 = FUN_006eef60();
  fVar19 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 *
           DAT_00baa704;
  local_21c = (int **)(fVar19 + fVar19);
  ppiVar16 = local_21c;
  FUN_0041d520();
  local_234 = ppiVar16;
  ppiVar16 = local_21c;
  FUN_0041d540();
  piVar10 = (int *)((float)local_234 + (float)local_234 + (float)param_1[0xd0] + DAT_00baa7e8);
  ppiVar14[0xcf] = (int *)((float)ppiVar16 + (float)ppiVar16 + (float)param_1[0xcf] + DAT_00ba9fe4);
  ppiVar14[0xd0] = piVar10;
  iVar7 = param_1[0xb];
  if (iVar7 == 0) {
    pcVar1 = (code *)(*ppiVar14)[0xf];
    FUN_00682ed0();
    local_94 = _DAT_00babd60;
    uStack_90 = _UNK_00babd64;
    uStack_8c = _UNK_00babd68;
    uStack_88 = _UNK_00babd6c;
    local_74 = 0x3f48c8ca3f48c8ca;
    local_6c = 0;
    (*pcVar1)(&local_94,0xffffffff,0xff,0,1);
    iVar7 = param_1[0xb];
  }
  fVar19 = (float)(2 - (int)(((float)param_1[0xe0] * DAT_00baa6fc) / (float)param_1[0xe1]));
  local_234 = (int **)2.802597e-45;
  if ((int)fVar19 < 2) {
    local_234 = (int **)fVar19;
  }
  if ((iVar7 == 1) || (param_1[0xc] == 2)) {
    local_234 = (int **)0x2;
  }
  fVar19 = (float)local_234;
  iVar11 = param_1[0x2f0];
  if (iVar11 < (int)local_234) {
    if (local_234 == (int **)0x1) {
      if (iVar7 == 0) {
        FUN_0040b220(0);
        FUN_004562f0(local_68);
        local_14 = 0.0;
        FUN_00414520(local_58 + -4,0);
        FUN_004997f0("_b.png",6);
        uVar5 = FUN_006ba840(&iStack_3c,local_68);
        local_14._0_1_ = 1;
        FUN_0040bf30(0,uVar5);
        local_14 = (float)((uint)local_14._1_3_ << 8);
        FUN_0040d040();
        cVar3 = FUN_00417430(0,0x10000000);
        uVar5 = extraout_ECX;
        if (cVar3 != '\0') {
          FUN_004a5d10(param_1[0xb],0);
          uVar5 = extraout_ECX_00;
        }
        FUN_0040c000(uVar5);
        local_14 = -NAN;
        FUN_0040d040();
        iVar11 = param_1[0x2f0];
      }
      goto LAB_0047f37f;
    }
  }
  else {
LAB_0047f37f:
    if ((int)fVar19 <= iVar11) goto LAB_0047f5f1;
  }
  if (fVar19 == 2.802597e-45) {
    if (param_1[0xb] == 0) {
      FUN_0040b220(0);
      FUN_004562f0(local_68);
      local_14 = fVar19;
      FUN_00414520(local_58 + -4,0);
      FUN_004997f0("_c.png",6);
      uVar5 = FUN_006ba840(&iStack_3c,local_68);
      local_14._0_1_ = 3;
      FUN_0040bf30(0,uVar5);
      local_14 = (float)CONCAT31(local_14._1_3_,2);
      FUN_0040d040();
      cVar3 = FUN_00417430(0,0x10000000);
      uVar5 = extraout_ECX_01;
      if (cVar3 != '\0') {
        FUN_004a5d10(param_1[0xb],0);
        uVar5 = extraout_ECX_02;
      }
      FUN_0040c000(uVar5);
      local_14 = -NAN;
      FUN_0040d040();
      iVar11 = param_1[0x2f0];
    }
    if (1 < iVar11) goto LAB_0047f5f1;
  }
  do {
    local_228 = DAT_00baa454;
    ppiVar16 = DAT_00baa528;
    if ((param_1[0x319] == 0x12) || (ppiVar16 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
      local_228 = ppiVar16;
    }
    local_21c = (int **)0xed;
    FUN_00956780();
    FUN_0092dc30(local_21c,0x3f800000,2,0,local_228,0);
    param_1[0x2f0] = param_1[0x2f0] + 1;
    uVar5 = FUN_006eef60();
    iVar7 = FUN_006eef60();
    fVar19 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa704;
    local_21c = (int **)(fVar19 + fVar19);
    ppiVar16 = local_21c;
    FUN_0041d540();
    local_240 = (float)ppiVar16 * DAT_00baa8d0 + (float)param_1[0xcf];
    ppiVar16 = local_21c;
    FUN_0041d520();
    uVar24 = 0;
    pTVar23 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
    local_23c = (undefined *)((float)ppiVar16 * DAT_00baa8d0 + (float)param_1[0xd0]);
    pTVar22 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar21 = 0;
    uVar5 = FUN_00428b20(param_1[10],param_1[0xb] + 10,&local_240,&DAT_00c7b640,param_1,0,uVar5);
    iVar7 = __RTDynamicCast(uVar5,uVar21,pTVar22,pTVar23,uVar24);
    FUN_006d0300(param_1[0x31e],uVar24);
    ppiVar16 = (int **)(iVar7 + 0x3bc);
    if (*(int *)(iVar7 + 0x3bc) != 0) {
      local_21c = ppiVar16;
      FUN_004cf210(&local_21c);
    }
    *ppiVar16 = param_1;
    FUN_004cdcf0(ppiVar16);
  } while (param_1[0x2f0] < (int)local_234);
LAB_0047f5f1:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

