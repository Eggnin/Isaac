/* Local J460 decompiler output.
 * VA: 0x0059edb0
 * Entry: 0059edb0
 * Dispatcher: 0x006c2990
 * Types: 406
 * Identities: 406.0.0,406.1.0
 * Evidence: dispatcher=0x006c2990; end=0x005a4820; instructions=4873
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=406; identities=406.0.0,406.1.0; dispatcher=0x006c2990;
   end=0x005a4820; instructions=4873 */

void __fastcall AI_0059edb0(float **param_1)

{
  byte bVar1;
  code *pcVar2;
  undefined *puVar3;
  char cVar4;
  undefined4 uVar5;
  int *piVar6;
  byte **ppbVar7;
  int iVar8;
  byte **ppbVar9;
  char *pcVar10;
  uint extraout_ECX;
  uint extraout_ECX_00;
  uint extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  undefined4 extraout_ECX_04;
  undefined4 extraout_ECX_05;
  undefined4 extraout_ECX_06;
  undefined4 extraout_ECX_07;
  undefined4 extraout_ECX_08;
  undefined4 extraout_ECX_09;
  float **extraout_ECX_10;
  float **extraout_ECX_11;
  float **extraout_ECX_12;
  float **extraout_ECX_13;
  byte *pbVar11;
  float **extraout_ECX_14;
  float **extraout_ECX_15;
  float **extraout_ECX_16;
  float **extraout_ECX_17;
  undefined4 extraout_EDX;
  uint3 uVar15;
  uint3 extraout_var;
  undefined4 extraout_EDX_00;
  int iVar12;
  int iVar13;
  uint uVar14;
  float *pfVar16;
  uint uVar17;
  float *pfVar18;
  float **ppfVar19;
  float fVar20;
  bool bVar21;
  float10 fVar22;
  undefined auVar23 [16];
  float **ppfVar24;
  undefined auVar25 [16];
  float fVar26;
  float fVar27;
  undefined8 uVar28;
  double dVar29;
  undefined4 uVar30;
  TypeDescriptor *pTVar31;
  undefined local_25c [40];
  char local_234 [12];
  int local_228;
  char local_224 [12];
  uint local_218;
  char local_214 [12];
  uint local_208;
  char local_204 [4];
  int local_200;
  float local_1f8;
  char local_1f4 [4];
  int local_1f0;
  float *local_1e8;
  float *local_1d8;
  float *local_1d4;
  uint local_1cc;
  undefined8 uStack_1c8;
  float *pfStack_1c0;
  undefined local_1bc [8];
  float local_1b4;
  float **local_1b0;
  float *local_1ac;
  float *local_1a8;
  float local_1a4;
  float **local_1a0;
  float local_19c;
  float **local_198;
  float *local_194;
  undefined4 local_190;
  float local_18c;
  float *local_188;
  float local_184;
  float **local_180;
  float local_17c;
  float *local_178;
  float **local_174;
  float local_170;
  float **local_16c;
  float **local_168;
  float *local_164;
  int local_160;
  float **local_15c;
  float **local_158;
  float *local_154;
  float **local_150;
  float local_14c;
  float local_148;
  byte local_142;
  byte local_141;
  float **local_140;
  float **local_13c;
  float **local_138;
  float **local_134;
  undefined4 local_130;
  float **local_12c;
  undefined local_128 [4];
  undefined4 local_124;
  float local_120;
  undefined4 local_11c;
  undefined4 local_114;
  float local_100;
  uint local_d0;
  undefined4 local_cc;
  undefined4 local_94;
  undefined local_7c [32];
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined local_50 [16];
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  float *pfStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af589d;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_130 = param_1;
  puVar3 = &stack0xfffffffc;
  if ((param_1[0xb] == (float *)0x1) && (puVar3 = &stack0xfffffffc, 0.0 < (float)param_1[5])) {
    FUN_005a6fb0(local_24);
    FUN_00aefca0();
    FUN_0059e4c0();
    puVar3 = puStack_20;
  }
  puStack_20 = puVar3;
  AI_0041af60(local_1f4,5,0x14,0xffffffff,1,0);
  local_14 = 0;
  AI_0041af60(local_224,0x125,0xffffffff,0xffffffff,1,0);
  local_14._0_1_ = 1;
  AI_0041af60(local_234,299,0xffffffff,0xffffffff,1,0);
  local_14._0_1_ = 2;
  AI_0041af60(local_214,0x56,0xffffffff,0xffffffff,1,0);
  local_14._0_1_ = 3;
  AI_0041af60(local_204,0x126,0xffffffff,0xffffffff,1,0);
  local_14 = CONCAT31(local_14._1_3_,4);
  pfVar16 = (float *)0x0;
  local_148 = 0.0;
  uVar5 = extraout_EDX;
  fVar20 = local_148;
  if (local_1e8 != (float *)0x0) {
    fVar20 = 0.0;
    do {
      uVar28 = __RTDynamicCast(*(undefined4 *)(local_1f0 + (int)pfVar16 * 4),0,
                               &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                               &IsaacRepentancePlus::Entity_Pickup::RTTI_Type_Descriptor,0);
      uVar5 = (undefined4)((ulonglong)uVar28 >> 0x20);
      iVar8 = (int)uVar28;
      if (iVar8 != 0) {
        if ((*(int *)(iVar8 + 0x2c) == 0x14) && (*(int *)(iVar8 + 0x30) - 1U < 7)) {
          iVar8 = *(int *)(&DAT_00b67e34 + *(int *)(iVar8 + 0x30) * 4);
        }
        else {
          iVar8 = 0;
        }
        fVar20 = (float)((int)fVar20 + iVar8);
      }
      pfVar16 = (float *)((int)pfVar16 + 1);
      param_1 = local_130;
    } while (pfVar16 < local_1e8);
  }
  local_148 = fVar20;
  iVar8 = DAT_00c7169c;
  local_14c = (float)((local_218 >> 1) + local_228 + local_208);
  uVar15 = (uint3)((uint)uVar5 >> 8);
  local_178 = DAT_00baa968;
  local_194 = DAT_00baa910;
  if ((*(char *)(DAT_00c7169c + 0x142) != '\0') ||
     (((*(int *)(DAT_00c7169c + 8) == 2 && (DAT_00c71678 != 0)) &&
      ((*(int *)(DAT_00c71678 + 0x26630) != 0 || (*(char *)(DAT_00c71678 + 0x26589) != '\0')))))) {
    local_178 = DAT_00baa9a8;
    local_194 = DAT_00baa950;
  }
  if (param_1[0xb] == (float *)0x1) {
    local_178 = local_194;
  }
  pfVar16 = param_1[0x2d9];
  if (pfVar16 == (float *)0x0) {
    if ((*(char *)(DAT_00c7169c + 0x142) != '\0') ||
       (((*(int *)(DAT_00c7169c + 8) == 2 && (DAT_00c71678 != 0)) &&
        ((*(int *)(DAT_00c71678 + 0x26630) != 0 || (*(char *)(DAT_00c71678 + 0x26589) != '\0'))))))
    {
      param_1[0xe1] = (float *)((float)param_1[0xe1] * DAT_00baa4a0);
      param_1[0xe0] = (float *)((float)param_1[0xe0] * DAT_00baa4a0);
    }
    local_134 = (float **)0x3f800000;
    local_138 = (float **)0x40000000;
    FUN_006ac2a0(param_1[0xdc],0x40000000,0x3f800000,param_1[0xcc][0x12]);
    *(undefined *)(param_1 + 0x2d3) = 1;
    pfVar16 = param_1[0x5a];
    pfVar18 = param_1[0x5b];
    if ((((uint)pfVar16 & 0x20000000) == 0) && (local_1f8 == 0.0)) {
      uVar17 = 0;
      local_13c = (float **)0x1;
      local_130 = (float **)0x744;
      fVar20 = DAT_00baa904;
      do {
        local_194 = *(float **)(DAT_00c71678 + 0x18300);
        if ((uVar17 < 8) &&
           ((*(uint *)(*(int *)((int)local_194[1] + 0x10) + 0x38 + (uVar17 >> 5) * 4) &
            (uint)local_13c) != 0)) {
          local_138 = (float **)
                      ((float)(*(int *)((int)local_130 + (int)local_194) % (int)local_194[3]) *
                       fVar20 + fVar20);
          local_134 = (float **)
                      ((float)(*(int *)((int)local_130 + (int)local_194) / (int)local_194[3]) *
                       fVar20 + DAT_00baaa00);
          uVar5 = FUN_006eef60();
          uVar28 = 0xc5d6ac;
          pTVar31 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar30 = 0;
          uVar5 = FUN_00428b20(0x126,0,&local_138,&DAT_00c7b640,param_1,0,uVar5);
          piVar6 = (int *)__RTDynamicCast(uVar5,uVar30,pTVar31,uVar28);
          fVar20 = DAT_00baa904;
          if (piVar6 != (int *)0x0) {
            piVar6[0x2f0] = uVar17;
            (**(code **)(*piVar6 + 0xc))();
            fVar20 = DAT_00baa904;
          }
        }
        uVar17 = uVar17 + 1;
        local_130 = local_130 + 1;
        local_13c = (float **)((int)local_13c << 1 | (uint)((int)local_13c < 0));
      } while ((int)local_130 < 0x764);
      pfVar16 = param_1[0x5a];
      pfVar18 = param_1[0x5b];
    }
    param_1[0x310] = local_178;
    param_1[0x311] = (float *)0x78;
    param_1[0x2ed] = (float *)0x0;
    param_1[0x2d9] = (float *)0x2;
    param_1[0x5a] = (float *)((uint)pfVar16 & 0xfffffffb);
    param_1[0x5b] = pfVar18;
    ppbVar9 = (byte **)param_1[0x1f];
    if (ppbVar9 != (byte **)0x0) {
      ppbVar7 = ppbVar9;
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar7 = (byte **)*ppbVar9;
      }
      pcVar10 = "Hanging";
      do {
        bVar1 = *(byte *)ppbVar7;
        bVar21 = bVar1 < (byte)*pcVar10;
        if (bVar1 != *pcVar10) {
LAB_0059f295:
          uVar17 = -(uint)bVar21 | 1;
          goto LAB_0059f29a;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar7 + 1);
        bVar21 = bVar1 < ((byte *)pcVar10)[1];
        if (bVar1 != ((byte *)pcVar10)[1]) goto LAB_0059f295;
        ppbVar7 = (byte **)((int)ppbVar7 + 2);
        pcVar10 = (char *)((byte *)pcVar10 + 2);
      } while (bVar1 != 0);
      uVar17 = 0;
LAB_0059f29a:
      if ((uVar17 == 0) &&
         ((*(char *)(ppbVar9 + 0xd) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
      goto LAB_005a472a;
    }
    cVar4 = FUN_0040a5d0("Hanging",1);
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
    goto LAB_005a472a;
  }
  uVar17 = DAT_00c71678;
  if (((*(char *)((int)param_1 + 0x173) != '\0') && (pfVar16 != (float *)0x2328)) &&
     (pfVar16 != (float *)0x2329)) {
    if (*(int *)(DAT_00c7169c + 0x4b3d8) != *(int *)(DAT_00c7169c + 0x4b3dc)) {
      uVar5 = FUN_006ef1f0();
      FUN_00a112c0(1,"[Frame %d] Greed State Set: = STATE_TURN_GOLD ( Global Seed = %08x )\n",
                   *(undefined4 *)(iVar8 + 0x4b3e4),uVar5);
    }
    uVar17 = DAT_00c71678;
    param_1[0x2d9] = (float *)0x2328;
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    param_1[0x5a] = (float *)((uint)param_1[0x5a] | 0x80000000);
    param_1[0x104] = (float *)0x0;
    *(undefined *)((int)param_1 + 0x173) = 0;
    param_1[0x5b] = param_1[0x5b];
    local_140 = *(float ***)(uVar17 + 0x18300);
    local_13c = (float **)0x0;
    if (local_140[0x499] != (float *)0x0) {
      do {
        ppfVar24 = (float **)local_140[0x497][(int)local_13c];
        local_12c = ppfVar24;
        if (ppfVar24[10] != (float *)0x196) {
          if (ppfVar24[10] == (float *)0x9) {
            *(undefined *)((int)ppfVar24 + 0x173) = 1;
          }
          else {
            cVar4 = FUN_006a8f20();
            if (cVar4 == '\0') {
              if ((ppfVar24[10] == (float *)0x126) &&
                 (iVar8 = __RTDynamicCast(ppfVar24,0,
                                          &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                          &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
                 iVar8 != 0)) {
                *(undefined4 *)(iVar8 + 0xb64) = 3;
              }
            }
            else {
              pcVar2 = (code *)(*ppfVar24)[9];
              FUN_00431310();
              (*pcVar2)();
            }
          }
        }
        local_13c = (float **)((int)local_13c + 1);
      } while (local_13c < local_140[0x499]);
    }
    FUN_0092acb0(param_1[10],param_1[0xb]);
    uVar17 = extraout_ECX;
    uVar15 = extraout_var;
  }
  if (param_1[0x1f] == (float *)0x0) {
    local_190 = (uint)uVar15 << 8;
    local_142 = 0;
  }
  else {
    local_142 = FUN_0040add0();
    local_190 = CONCAT31((int3)((uint)extraout_EDX_00 >> 8),local_142);
    uVar17 = extraout_ECX_00;
    local_141 = local_142;
    if (param_1[0x1f] != (float *)0x0) {
      cVar4 = FUN_0040add0();
      uVar17 = (uint)local_141;
      local_142 = local_141;
      local_190 = CONCAT31(local_190._1_3_,local_141);
      if (cVar4 != '\0') {
        local_142 = 1;
        local_190 = CONCAT31(local_190._1_3_,local_141);
      }
    }
  }
  if (param_1[0x1f] != (float *)0x0) {
    cVar4 = FUN_0040add0();
    local_190 = local_190 & 0xff;
    uVar17 = extraout_ECX_01;
    if (cVar4 != '\0') {
      local_190 = 1;
    }
  }
  local_164 = param_1[0x3c7];
  fVar20 = 0.0;
  local_13c = (float **)0x0;
  local_134 = (float **)0x0;
  local_180 = (float **)0x0;
  local_138 = (float **)0x0;
  if (local_164 != (float *)0xffffffff) {
    FUN_009562d0(0,local_164,param_1,uVar17);
    local_180 = (float **)(0.0 - fVar20);
    if (param_1[0x3c7] == (float *)0xffffffff) {
      local_138 = (float **)((float)local_180 + 0.0);
      uVar5 = extraout_ECX_02;
LAB_0059f5e9:
      local_13c = (float **)0x0;
      local_180 = local_138;
      local_150 = local_138;
LAB_0059f5f6:
      ppfVar24 = (float **)0x0;
      pfVar16 = (float *)0xffffffff;
    }
    else {
      FUN_009562d0(1,param_1[0x3c7],param_1,extraout_ECX_02);
      local_180 = (float **)(fVar20 + (float)local_180);
      uVar5 = extraout_ECX_03;
      local_138 = local_180;
      if (param_1[0x3c7] == (float *)0xffffffff) goto LAB_0059f5e9;
      local_150 = local_180;
      ppfVar24 = local_180;
      FUN_009562d0(2,param_1[0x3c7],param_1,extraout_ECX_03);
      local_13c = (float **)(0.0 - (float)ppfVar24);
      uVar5 = extraout_ECX_04;
      if (param_1[0x3c7] == (float *)0xffffffff) goto LAB_0059f5f6;
      FUN_009562d0(3,param_1[0x3c7],param_1,extraout_ECX_04);
      pfVar16 = param_1[0x3c7];
      uVar5 = extraout_ECX_05;
    }
    local_13c = (float **)((float)ppfVar24 + (float)local_13c);
    fVar20 = (float)local_13c * (float)local_13c + (float)local_150 * (float)local_150;
    local_134 = local_13c;
    if (((float)DAT_00baa454 < fVar20) &&
       (FUN_00435a50(), uVar5 = extraout_ECX_06, (float)DAT_00ba9fe4 < fVar20)) {
      local_180 = (float **)((float)local_150 * ((float)DAT_00baa454 / fVar20));
      local_13c = (float **)((float)local_13c * ((float)DAT_00baa454 / fVar20));
      local_138 = local_180;
      local_134 = local_13c;
    }
    if (pfVar16 != (float *)0xffffffff) {
      FUN_009562d0(4,pfVar16,param_1,uVar5);
      if (param_1[0x3c7] != (float *)0xffffffff) {
        FUN_009562d0(5,param_1[0x3c7],param_1,extraout_ECX_07);
        if (param_1[0x3c7] != (float *)0xffffffff) {
          FUN_009562d0(6,param_1[0x3c7],param_1,extraout_ECX_08);
          if (param_1[0x3c7] != (float *)0xffffffff) {
            FUN_009562d0(7,param_1[0x3c7],param_1,extraout_ECX_09);
          }
        }
      }
    }
  }
  pfVar16 = param_1[0x2d9];
  if (((pfVar16 == (float *)0x190) || (pfVar16 == (float *)0x64)) || (pfVar16 == (float *)0x1fe)) {
    param_1[0x310] = (float *)((float)local_178 + (float)local_178);
  }
  else {
    if (param_1[0xb] != (float *)0x1) {
      param_1[0x310] = local_178;
    }
    pfVar16 = param_1[0x2f1];
    if ((0 < (int)pfVar16) && (cVar4 = FUN_006ac710(0x1e,param_1[8]), cVar4 != '\0')) {
      param_1[0x2f1] = (float *)((int)pfVar16 + -1);
    }
  }
  local_140 = (float **)param_1[0xe1];
  local_12c = (float **)param_1[0xe0];
  if (NAN((float)local_140) != ((float)local_140 == 0.0)) {
    FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
  }
  ppfVar24 = (float **)(((float)local_12c - 0.0) / ((float)local_140 - 0.0));
  if ((float)ppfVar24 <= 0.0) {
    ppfVar24 = (float **)0x0;
  }
  if ((float)DAT_00baa454 <= (float)ppfVar24) {
    ppfVar24 = DAT_00baa454;
  }
  ppfVar24 = (float **)
             ((((float)(int)param_1[0x2f1] + (DAT_00baa854 - (float)ppfVar24 * DAT_00baa854)) - 0.0)
             / DAT_00baa8a0);
  if ((float)ppfVar24 <= 0.0) {
    ppfVar24 = (float **)0x0;
  }
  if ((float)DAT_00baa454 <= (float)ppfVar24) {
    ppfVar24 = DAT_00baa454;
  }
  local_188 = (float *)((float)ppfVar24 + 0.0);
  if (param_1[0x2d9] == (float *)0x2328) {
    if (param_1[0x1f] == (float *)0x0) {
      iVar8 = -1;
    }
    else {
      local_12c = (float **)param_1[0x22];
      dVar29 = floor((double)(float)local_12c);
      local_12c = (float **)(float)dVar29;
      iVar8 = (int)dVar29;
    }
    ppfVar24 = (float **)(((float)iVar8 - 0.0) / DAT_00baa81c);
    if ((float)ppfVar24 <= 0.0) {
      ppfVar24 = (float **)0x0;
    }
    if ((float)DAT_00baa454 <= (float)ppfVar24) {
      ppfVar24 = DAT_00baa454;
    }
    local_188 = (float *)((float)local_188 + (0.0 - (float)local_188) * (float)ppfVar24);
  }
  else if (param_1[0x2d9] == (float *)0x2329) {
    local_188 = (float *)0x0;
  }
  local_30 = 0;
  uStack_2c = 0;
  local_28 = 0;
  local_40 = 0x3f800000;
  uStack_3c = 0x3e4ccccd;
  uStack_38 = 0x3e4ccccd;
  local_50 = _DAT_00bac7b0;
  if ((undefined (*) [16])(param_1 + 0x6e) != &local_50) {
    *(undefined (*) [16])(param_1 + 0x6e) = _DAT_00bac7b0;
    param_1[0x72] = (float *)0x3f800000;
    param_1[0x73] = (float *)0x3e4ccccd;
    param_1[0x74] = (float *)0x3e4ccccd;
    param_1[0x75] = local_188;
    *(undefined8 *)(param_1 + 0x76) = 0;
    param_1[0x78] = (float *)0x0;
  }
  pfStack_34 = local_188;
  (*(code *)(*param_1)[0xf])(local_50,1,0,0,1);
  local_178 = param_1[0x2d9];
  if (local_178 == (float *)0x2) {
    local_12c = (float **)((float)param_1[0xcf] + (float)DAT_00ba9fe4);
    local_140 = (float **)((float)param_1[0xd0] - DAT_00baa9d0);
    iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11f8);
    if (*(char *)(iVar8 + 0x8c) == '\0') {
      local_130 = *(float ***)(iVar8 + 0x54);
      ppfVar24 = *(float ***)(iVar8 + 0x58);
      if (ppfVar24 == local_130) {
        if ((int)ppfVar24 < 1) {
          FUN_00a112c0(0x10,"Cannot erase from empty buffer");
          local_130 = *(float ***)(iVar8 + 0x54);
          ppfVar24 = *(float ***)(iVar8 + 0x58);
        }
        iVar12 = (*(int *)(iVar8 + 0x5c) + 1) % (int)local_130;
        ppfVar24 = (float **)((int)ppfVar24 + -1);
        *(int *)(iVar8 + 0x5c) = iVar12;
        *(float ***)(iVar8 + 0x58) = ppfVar24;
      }
      else {
        iVar12 = *(int *)(iVar8 + 0x5c);
      }
      iVar13 = (iVar12 + (int)ppfVar24) % (int)local_130;
      iVar12 = *(int *)(iVar8 + 0x50);
      *(float ***)(iVar12 + iVar13 * 8) = local_12c;
      *(float ***)(iVar12 + 4 + iVar13 * 8) = local_140;
      *(int *)(iVar8 + 0x58) = *(int *)(iVar8 + 0x58) + 1;
      *(undefined *)(iVar8 + 0x8c) = 1;
    }
    param_1[0xdb] = (float *)0x3c23d70a;
    param_1[0x62] = (float *)0x0;
    if ((param_1[0x1f] != (float *)0x0) && (cVar4 = FUN_0040add0(), cVar4 != '\0')) {
      FUN_00703670();
      local_130 = DAT_00baa454;
      ppfVar24 = DAT_00baa528;
      if ((param_1[0x319] == (float *)0x12) ||
         (ppfVar24 = DAT_00baa2d0, param_1[0x319] == (float *)0x13)) {
        local_130 = ppfVar24;
      }
      local_148 = 6.053609e-43;
      FUN_00956780();
      FUN_0092dc30(local_148,0x3f800000,2,0,local_130,0);
    }
    if ((local_142 != 0) || ((byte)local_190 != '\0')) {
      FUN_00703670();
      iVar8 = FUN_006eef60();
      local_130 = (float **)
                  ((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa198 + DAT_00baa3e0);
      if (param_1[0x319] == (float *)0x12) {
        local_130 = (float **)((float)local_130 + (float)DAT_00baa2d0);
      }
      else if (param_1[0x319] == (float *)0x13) {
        local_130 = (float **)((float)local_130 * (float)DAT_00baa2d0);
      }
      local_148 = 6.726233e-44;
      FUN_00956780();
      FUN_0092dc30(local_148,0x3f800000,2,0,local_130,0);
    }
    if ((param_1[0x1f] != (float *)0x0) && (*(char *)(param_1 + 0x23) != '\0')) {
      ppbVar9 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar9 = (byte **)*ppbVar9;
      }
      pcVar10 = "Hanging";
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar21 = bVar1 < (byte)*pcVar10;
        if (bVar1 != *pcVar10) {
LAB_0059fbc1:
          uVar17 = -(uint)bVar21 | 1;
          goto LAB_0059fbc6;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar21 = bVar1 < ((byte *)pcVar10)[1];
        if (bVar1 != ((byte *)pcVar10)[1]) goto LAB_0059fbc1;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pcVar10 = (char *)((byte *)pcVar10 + 2);
      } while (bVar1 != 0);
      uVar17 = 0;
LAB_0059fbc6:
      if ((uVar17 == 0) && (0x3c < (int)param_1[0x104])) {
        ppbVar9 = (byte **)param_1[0x1f];
        if (ppbVar9 != (byte **)0x0) {
          ppbVar7 = ppbVar9;
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar7 = (byte **)*ppbVar9;
          }
          pcVar10 = "Appearing";
          do {
            bVar1 = *(byte *)ppbVar7;
            bVar21 = bVar1 < (byte)*pcVar10;
            if (bVar1 != *pcVar10) {
LAB_0059fc10:
              uVar17 = -(uint)bVar21 | 1;
              goto LAB_0059fc15;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar7 + 1);
            bVar21 = bVar1 < ((byte *)pcVar10)[1];
            if (bVar1 != ((byte *)pcVar10)[1]) goto LAB_0059fc10;
            ppbVar7 = (byte **)((int)ppbVar7 + 2);
            pcVar10 = (char *)((byte *)pcVar10 + 2);
          } while (bVar1 != 0);
          uVar17 = 0;
LAB_0059fc15:
          if ((uVar17 == 0) &&
             ((*(char *)(ppbVar9 + 0xd) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
          goto LAB_0059fc4c;
        }
        cVar4 = FUN_0040a5d0("Appearing",1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
    }
LAB_0059fc4c:
    param_1[0x104] = (float *)((int)param_1[0x104] + 1);
    if ((param_1[0x1f] != (float *)0x0) && (*(char *)(param_1 + 0x23) == '\0')) {
      ppbVar9 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar9 = (byte **)*ppbVar9;
      }
      pcVar10 = "Appearing";
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar21 = bVar1 < (byte)*pcVar10;
        if (bVar1 != *pcVar10) {
LAB_0059fca0:
          uVar17 = -(uint)bVar21 | 1;
          goto LAB_0059fca5;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar21 = bVar1 < ((byte *)pcVar10)[1];
        if (bVar1 != ((byte *)pcVar10)[1]) goto LAB_0059fca0;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pcVar10 = (char *)((byte *)pcVar10 + 2);
      } while (bVar1 != 0);
      uVar17 = 0;
LAB_0059fca5:
      if (uVar17 == 0) {
        param_1[0x62] = (float *)&DAT_00000004;
        param_1[0x2d9] = (float *)&DAT_00000004;
        param_1[0x104] = (float *)0x0;
      }
    }
    goto LAB_005a3586;
  }
  if (((local_178 != (float *)&DAT_00000004) && (local_178 != (float *)0x3)) &&
     (local_178 != (float *)0x136)) {
    if (local_178 == (float *)0x12c) {
      FUN_009568e0(0x1b0,0x1e,0,0x3f800000);
      FUN_0040a380("Tantrum",0);
      iVar8 = FUN_0040a780();
      if (iVar8 == 0xc) {
        param_1[0x2d9] = (float *)0x136;
        param_1[0x104] = (float *)0x0;
        param_1[0x2e9] = (float *)0x0;
        param_1[0x2f0] = (float *)0x0;
      }
LAB_005a09ef:
      param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa280);
    }
    else {
      if ((local_178 == (float *)0x2bc) || (local_178 == (float *)0x2c6)) {
        if (param_1[0x2f0] == (float *)0x0) {
          FUN_009568e0(0x1b1,0x2d,0,0x3f800000);
        }
        FUN_0040a380("Smash",0);
        cVar4 = FUN_0040b030();
        if (cVar4 != '\0') {
          local_134 = (float **)((float)param_1[0xd0] + (float)DAT_00baa950);
          local_138 = (float **)((float)param_1[0xcf] + (float)DAT_00ba9fe4);
          FUN_0059e730(local_138,local_134);
        }
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          if (param_1[0x2d9] == (float *)0x2bc) {
LAB_005a1af9:
            param_1[0x2d9] = (float *)0x3;
            param_1[0x104] = (float *)0x0;
            param_1[0x2f0] = (float *)0x0;
          }
          else if (param_1[0x2d9] == (float *)0x2c6) {
            if (1 < (int)param_1[0x2f0]) goto LAB_005a1af9;
            FUN_0040a380("Smash",1);
            *(bool *)(param_1 + 0x52) = *(char *)(param_1 + 0x52) == '\0';
            param_1[0x104] = (float *)0x0;
            param_1[0x2f0] = (float *)((int)param_1[0x2f0] + 1);
          }
        }
        goto LAB_005a09ef;
      }
      if (local_178 == (float *)0x190) {
        pfVar16 = param_1[0x2f0];
        if (pfVar16 == (float *)0x0) {
          FUN_0040a380("GuardStart",0);
          cVar4 = FUN_0040a550();
          if (cVar4 != '\0') {
            param_1[0x2f0] = (float *)0x1;
          }
        }
        else if (pfVar16 == (float *)0x1) {
          param_1[0x5a] = (float *)((uint)param_1[0x5a] | 0x2000000);
          param_1[0x5b] = param_1[0x5b];
          cVar4 = FUN_0040a550();
          if ((cVar4 != '\0') || (cVar4 = FUN_0040a550(), cVar4 != '\0')) {
            FUN_0040a380("Guarding",0);
          }
          if ((float)DAT_00ba9fe4 < (float)param_1[5]) {
            FUN_0040a380("GuardFlashSlow",1);
          }
          if (local_164 == (float *)0xffffffff) {
            if ((int)local_14c < 5) {
LAB_0059fe46:
              param_1[0x2f0] = (float *)0x2;
              param_1[0x5a] = (float *)((uint)param_1[0x5a] & 0xfdffffff);
              param_1[0x5b] = param_1[0x5b];
            }
          }
          else {
            cVar4 = FUN_006d8260();
            if (cVar4 == '\0') goto LAB_0059fe46;
          }
        }
        else if (pfVar16 == (float *)0x2) {
          FUN_0040a380("GuardEnd",0);
          cVar4 = FUN_0040a550();
          if (cVar4 != '\0') {
            param_1[0x2d9] = (float *)&DAT_00000004;
            param_1[0x104] = (float *)0x0;
            param_1[0x2f0] = (float *)0x0;
          }
        }
        pfVar16 = (float *)((float)param_1[0xdb] * DAT_00baa280);
        param_1[0x104] = (float *)((int)param_1[0x104] + 1);
        param_1[0xdb] = pfVar16;
        goto LAB_005a3586;
      }
      if ((local_178 == (float *)0x1f4) || (local_178 == (float *)0x1fe)) {
        local_130 = (float **)((uint)local_130 & 0xffffff00);
        param_1[0xdb] = (float *)((float)param_1[0xdb] * (float)DAT_00baa3a4);
        if (local_178 == (float *)0x1fe) {
          pfVar16 = param_1[0x2f0];
          if (pfVar16 == (float *)0x0) {
            FUN_0040a380("SpinStart",0);
            FUN_009568e0(0x1b1,0x1e,0,0x3f800000);
            cVar4 = FUN_0040a550();
            if (cVar4 != '\0') {
              param_1[0x2f0] = (float *)0x1;
            }
          }
          else if (pfVar16 == (float *)0x1) {
            if ((param_1[0x104] == (float *)0x0) ||
               (cVar4 = FUN_006ac710(0x1e,param_1[8]), cVar4 != '\0')) {
              ppfVar24 = (float **)FUN_0081e9d0(local_1bc,0);
              param_1[0xcd] = *ppfVar24;
              param_1[0xce] = ppfVar24[1];
            }
            FUN_0040a380("SpinConstant",0);
            local_130 = (float **)CONCAT31(local_130._1_3_,1);
            fVar20 = (float)(int)param_1[0x104] / DAT_00baaad4;
            if ((*(byte *)(param_1 + 8) & 1) == 0) {
              fVar20 = fVar20 * (float)DAT_00baad50;
            }
            ppfVar24 = (float **)(fVar20 * DAT_00baa7a8);
            local_12c = ppfVar24;
            FUN_0041d540();
            local_140 = (float **)((float)ppfVar24 * DAT_00baa354);
            ppfVar24 = local_12c;
            FUN_0041d520();
            local_134 = (float **)((float)ppfVar24 * DAT_00baa354);
            local_138 = local_140;
            FUN_004314b0(&local_138,0);
            local_138 = (float **)((float)param_1[0xcd] - (float)param_1[0xcf]);
            local_134 = (float **)((float)param_1[0xce] - (float)param_1[0xd0]);
            FUN_00a100b0();
            if (local_164 != (float *)0xffffffff) {
              local_138 = local_180;
              local_134 = local_13c;
            }
            FUN_004314b0(&local_138,0);
            if (*(char *)(param_1 + 100) != '\0') {
              local_12c = (float **)((float)((uint)param_1[0x67] ^ DAT_00bacb70) * DAT_00baa87c);
              local_140 = (float **)((float)((uint)param_1[0x68] ^ DAT_00bacb70) * DAT_00baa87c);
              iVar8 = FUN_006eef60();
              fVar20 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                       DAT_00ba9ff4;
              local_138 = (float **)((float)local_12c * fVar20);
              local_134 = (float **)((float)local_140 * fVar20);
              FUN_004314b0(&local_138,0);
            }
            pfVar16 = param_1[0x104];
            uVar17 = (uint)pfVar16 & 0x80000007;
            bVar21 = uVar17 == 0;
            if ((int)uVar17 < 0) {
              bVar21 = (uVar17 - 1 | 0xfffffff8) == 0xffffffff;
            }
            if (bVar21) {
              AI_0043ef30();
              local_94 = 7;
              local_124 = 0xc2a00000;
              local_114 = 0x3fcccccd;
              local_11c = 0x3d75c28f;
              local_120 = 10.0;
              ppfVar24 = (float **)
                         ((float)(int)param_1[0x104] * DAT_00baa834 * _DAT_00baa368 * DAT_00baa088);
              local_12c = ppfVar24;
              FUN_0041d520();
              local_140 = ppfVar24;
              ppfVar24 = local_12c;
              FUN_0041d540();
              local_1b4 = (float)ppfVar24 * DAT_00baa81c + (float)param_1[0xd8];
              local_1b0 = (float **)((float)local_140 * DAT_00baa81c + (float)param_1[0xd9]);
              FUN_006cb2e0(param_1 + 0xcf,&local_1b4,0,local_128);
              pfVar16 = param_1[0x104];
            }
            if (local_164 == (float *)0xffffffff) {
              if ((int)(DAT_00baaa00 - (float)local_188 * (float)DAT_00baa950) < (int)pfVar16)
              goto LAB_005a15ba;
            }
            else {
              cVar4 = FUN_006d8260();
              if (cVar4 != '\0') {
                param_1[0x104] = (float *)((int)param_1[0x104] + 1);
                goto LAB_005a1634;
              }
LAB_005a15ba:
              param_1[0x2f0] = (float *)0x2;
              pfVar16 = (float *)0x0;
            }
            param_1[0x104] = (float *)((int)pfVar16 + 1);
          }
          else if (pfVar16 == (float *)0x2) {
            FUN_0040a380("SpinEnd",0);
            cVar4 = FUN_0040a550();
            if (cVar4 != '\0') {
              param_1[0x2d9] = (float *)&DAT_00000004;
              param_1[0x104] = (float *)0x0;
              param_1[0x2f0] = (float *)0x0;
              param_1[0xcd] = DAT_00c7b640;
              param_1[0xce] = DAT_00c7b644;
            }
          }
        }
LAB_005a1634:
        if (param_1[0x2d9] == (float *)0x1f4) {
          FUN_0040a380("SpinOnce",0);
          FUN_009568e0(0x1b1,0x1e,0,0x3f800000);
          iVar8 = FUN_0040a780();
          local_130 = (float **)((uint)local_130 & 0xff);
          if (3 < iVar8) {
            local_130 = (float **)0x1;
          }
          cVar4 = FUN_0040a550();
          if (cVar4 != '\0') {
            param_1[0x2d9] = (float *)&DAT_00000004;
            param_1[0x104] = (float *)0x0;
            param_1[0x2f0] = (float *)0x0;
          }
        }
        if ((char)local_130 != '\0') {
          FUN_0041a790(&local_1cc,param_1 + 0xcf,0xffffffff);
          local_14._0_1_ = 6;
          local_164 = (float *)0x0;
          if (pfStack_1c0 != (float *)0x0) {
            do {
              piVar6 = *(int **)((int)uStack_1c8 + (int)local_164 * 4);
              if (((piVar6 != (int *)0x0) && (piVar6[0x62] != 0)) &&
                 ((((iVar8 = piVar6[10], iVar8 == 1 || (iVar8 == 3)) &&
                   (((uint)param_1[0x5a] & 0x20000000) == 0)) ||
                  ((((1 < *(int *)(DAT_00c71678 + 0x26614) && (iVar8 == 1)) || (iVar8 - 10U < 0x3de)
                    ) && (((uint)param_1[0x5a] & 0x100) != 0)))))) {
                local_13c = (float **)piVar6[0xcf];
                local_14c = (float)piVar6[0xd0];
                fVar20 = ((float)param_1[0xd0] - local_14c) * ((float)param_1[0xd0] - local_14c) +
                         ((float)param_1[0xcf] - (float)local_13c) *
                         ((float)param_1[0xcf] - (float)local_13c);
                FUN_00435a50();
                if (fVar20 < (float)param_1[0xdc] * (float)param_1[0xdd] * DAT_00baa6b4) {
                  local_13c = (float **)((float)local_13c - (float)param_1[0xcf]);
                  local_14c = local_14c - (float)param_1[0xd0];
                  fVar20 = DAT_00baae44;
                  if (*(char *)(param_1 + 0x52) != '\0') {
                    fVar20 = DAT_00baa97c;
                  }
                  fVar20 = fVar20 * DAT_00baa088;
                  local_12c = (float **)fVar20;
                  FUN_0041d540();
                  local_130 = (float **)fVar20;
                  fVar20 = (float)local_12c;
                  FUN_0041d520();
                  local_148 = (float)local_130 * (float)local_13c - fVar20 * local_14c;
                  local_130 = (float **)((float)local_130 * local_14c + fVar20 * (float)local_13c);
                  fVar26 = local_148 * local_148 + (float)local_130 * (float)local_130;
                  FUN_00435a50();
                  ppfVar24 = local_130;
                  fVar20 = local_148;
                  if (0.0 < fVar26) {
                    fVar20 = local_148 * (DAT_00baa784 / fVar26);
                    ppfVar24 = (float **)((float)local_130 * (DAT_00baa784 / fVar26));
                  }
                  fVar26 = (float)piVar6[0xdb];
                  if (NAN(fVar26) == (fVar26 == 0.0)) {
                    piVar6[0xd9] = (int)(((float)piVar6[0xe7] * (float)ppfVar24) / fVar26 +
                                        (float)piVar6[0xd9]);
                    piVar6[0xd8] = (int)(((float)piVar6[0xe7] * fVar20) / fVar26 +
                                        (float)piVar6[0xd8]);
                  }
                  local_12c = *(float ***)(*piVar6 + 0x20);
                  FUN_00431310();
                  fVar20 = DAT_00baa8d0;
                  if (((*(int *)(DAT_00c71678 + 0x26614) < 2) || (piVar6[10] != 1)) &&
                     (0x3dd < piVar6[10] - 10U)) {
                    fVar20 = DAT_00baa630;
                  }
                  (*(code *)local_12c)(fVar20,0x40,0,local_25c,0x1e);
                }
              }
              local_164 = (float *)((int)local_164 + 1);
            } while (local_164 < pfStack_1c0);
          }
          FUN_0092e620(0x1b8,0x3f800000,0x3f800000);
          local_14 = CONCAT31(local_14._1_3_,4);
          FUN_004175b0();
        }
        goto LAB_005a3586;
      }
      if (local_178 != (float *)0x258) {
        if (local_178 != (float *)0x64) {
          if (local_178 == (float *)0xc8) {
            FUN_0040a380("Tantrum",0);
            pfVar16 = param_1[0x104];
            if (pfVar16 == (float *)0x0) {
              FUN_009568e0(0x1b0,2,0,0x3f800000);
              pfVar16 = param_1[0x104];
            }
            local_188 = (float *)((float)local_188 + (float)DAT_00baa454);
            param_1[0x104] = (float *)((int)pfVar16 + 1);
            param_1[0x53] = local_188;
            if ((local_142 != 0) || ((byte)local_190 != '\0')) {
              FUN_00703670();
              iVar8 = FUN_006eef60();
              FUN_006d6ba0(0x30,0x3f800000,2,0,
                           (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa3e0);
              if (param_1[0xb] == (float *)0x0) {
                if (local_208 < 4) {
                  local_138 = (float **)((float)param_1[0xcf] + (float)DAT_00ba9fe4);
                  local_134 = (float **)((float)param_1[0xdc] * DAT_00baa4cc + (float)param_1[0xd0])
                  ;
                  uVar5 = FUN_006eef60();
                  FUN_00428b20(0x56,0,&local_138,&DAT_00c7b640,param_1,0,uVar5);
                }
              }
              else if (param_1[0xb] == (float *)0x1) {
                local_148 = 2.802597e-45;
                do {
                  uVar5 = FUN_0081e9d0(&local_1ac,0);
                  FUN_00813520(local_1bc,uVar5,0,0,0,0);
                  uVar5 = FUN_006eef60();
                  iVar8 = FUN_006eef60();
                  fVar20 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa704;
                  local_12c = (float **)(fVar20 + fVar20);
                  ppfVar24 = local_12c;
                  FUN_0041d520();
                  local_140 = ppfVar24;
                  ppfVar24 = local_12c;
                  FUN_0041d540();
                  local_138 = ppfVar24;
                  pTVar31 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
                  uVar30 = 0;
                  local_134 = local_140;
                  uVar5 = FUN_00428b20(0x125,2,local_1bc,&local_138,param_1,0,uVar5);
                  piVar6 = (int *)__RTDynamicCast(uVar5,uVar30,pTVar31);
                  piVar6[0xc] = 1;
                  (**(code **)(*piVar6 + 0xc))();
                  local_148 = (float)((int)local_148 - 1);
                } while (local_148 != 0.0);
              }
              FUN_00456570();
              local_1d8 = param_1[0xcf];
              local_1d4 = param_1[0xd0];
              pfStack_1c0 = (float *)0x19;
              uStack_1c8 = CONCAT44(uStack_1c8._4_4_,0x3ccccccd);
              local_1cc = 0x3ccccccd;
              uVar5 = FUN_0081e220();
              FUN_0081df10(uVar5,&local_1d8);
            }
            if (local_164 == (float *)0xffffffff) {
              if ((int)(DAT_00baa98c / (float)local_188) < (int)param_1[0x104]) {
                ppfVar24 = DAT_00baad50;
                if (param_1[0x1f] != (float *)0x0) {
                  ppfVar24 = (float **)param_1[0x22];
                }
                if ((float)ppfVar24 < (float)local_188) goto LAB_005a09d1;
              }
            }
            else {
              cVar4 = FUN_006d8260();
              if (cVar4 == '\0') {
LAB_005a09d1:
                param_1[0x2d9] = (float *)&DAT_00000004;
                param_1[0x104] = (float *)0x0;
                param_1[0x53] = (float *)0x3f800000;
              }
            }
            goto LAB_005a09ef;
          }
          if (local_178 == (float *)0x6) {
            pfVar16 = param_1[0x2f0];
            if (pfVar16 == (float *)0x0) {
              FUN_0040a380(&DAT_00b1e0e4,0);
              if (param_1[0x104] == (float *)0x0) {
                iVar8 = FUN_006be840();
                pfVar16 = *(float **)(iVar8 + 0x340);
                param_1[0xcd] = *(float **)(iVar8 + 0x33c);
                param_1[0xce] = pfVar16;
              }
              cVar4 = FUN_0040b030();
              if (cVar4 != '\0') {
                param_1[0x62] = (float *)0x0;
                param_1[0x61] = (float *)0x0;
                FUN_009568e0(0xe,2,0,0x3f800000);
                FUN_0059e4c0();
                FUN_00703670();
              }
              cVar4 = FUN_0040a550();
              if (cVar4 == '\0') {
                pfVar16 = param_1[0x2f0];
              }
              else {
                param_1[0x2f0] = (float *)0x1;
                pfVar16 = (float *)0x1;
              }
              param_1[0x104] = (float *)((int)param_1[0x104] + 1);
            }
            if (pfVar16 == (float *)0x1) {
              local_138 = (float **)((float)param_1[0xcd] - (float)param_1[0xcf]);
              local_134 = (float **)((float)param_1[0xce] - (float)param_1[0xd0]);
              FUN_00a0ffc0();
              local_138 = (float **)((float)local_138 * DAT_00baa630);
              local_134 = (float **)((float)local_134 * DAT_00baa630);
              FUN_00431450(&local_138,0);
              cVar4 = FUN_006ac710(5,0);
              if (cVar4 != '\0') {
                ppfVar24 = (float **)(((float)(int)param_1[0x104] - 0.0) / (float)DAT_00baa950);
                if ((float)ppfVar24 <= 0.0) {
                  ppfVar24 = (float **)0x0;
                }
                if ((float)DAT_00baa454 <= (float)ppfVar24) {
                  ppfVar24 = DAT_00baa454;
                }
                local_12c = (float **)((float)ppfVar24 + (float)ppfVar24 + (float)DAT_00baa6fc);
                AI_0043ef30();
                local_124 = 0xc4480000;
                iVar8 = FUN_006eef60();
                local_11c = 0x40000000;
                local_114 = 0x3fcccccd;
                local_94 = 7;
                local_d0 = 2;
                local_cc = 0;
                local_120 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                            DAT_00ba9ff4 * DAT_00baa784 + DAT_00baa8d0;
                pfVar16 = (float *)FUN_0067f070();
                iVar8 = FUN_006eef60();
                fVar20 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                         DAT_00ba9ff4;
                local_134 = (float **)((float)local_12c * fVar20 * pfVar16[1]);
                local_138 = (float **)((float)local_12c * fVar20 * *pfVar16);
                FUN_006cb2e0(param_1 + 0xcf,&local_138,0,local_128);
              }
              cVar4 = FUN_006ac710(1,0);
              if (cVar4 != '\0') {
                uVar5 = FUN_00407170();
                FUN_00703330(param_1 + 0xcf,0x5f,2,0x40400000,uVar5,0xc4480000,0);
              }
              fVar20 = (float)param_1[0xcf] - (float)param_1[0xcd];
              fVar20 = ((float)param_1[0xd0] - (float)param_1[0xce]) *
                       ((float)param_1[0xd0] - (float)param_1[0xce]) + fVar20 * fVar20;
              FUN_00435a50();
              if ((float)param_1[0xdc] <= fVar20) {
                pfVar16 = param_1[0x2f0];
              }
              else {
                param_1[0x2f0] = (float *)0x2;
                pfVar16 = (float *)0x2;
              }
              param_1[0x104] = (float *)((int)param_1[0x104] + 1);
            }
            if (pfVar16 == (float *)0x2) {
              FUN_0040a380("JumpDown",0);
              cVar4 = FUN_0040b030();
              if (cVar4 != '\0') {
                param_1[0x62] = (float *)&DAT_00000004;
                param_1[0x61] = (float *)&DAT_00000005;
                FUN_0059e4c0();
                FUN_009568e0(0x8a,2,0,0x3f800000);
                iVar8 = FUN_006eef60();
                FUN_009568e0(0x30,2,0,(float)((double)iVar8 +
                                             (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                                      DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa3e0);
                FUN_00456570();
                local_1d8 = param_1[0xcf];
                local_1d4 = param_1[0xd0];
                pfStack_1c0 = (float *)0x19;
                uStack_1c8 = CONCAT44(uStack_1c8._4_4_,0x3ccccccd);
                local_1cc = 0x3ccccccd;
                uVar5 = FUN_0081e220();
                FUN_0081df10(uVar5,&local_1d8);
                FUN_00703670();
                local_148 = 0.0;
                do {
                  uVar5 = FUN_006eef60();
                  uVar28 = 0xc5d5ac;
                  pTVar31 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
                  uVar30 = 0;
                  uVar5 = FUN_00428b20(1000,0x48,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar5);
                  local_140 = (float **)__RTDynamicCast(uVar5,uVar30,pTVar31,uVar28);
                  ppfVar24 = local_140 + 0xef;
                  if (local_140[0xef] != (float *)0x0) {
                    local_12c = ppfVar24;
                    FUN_004cf210();
                  }
                  *ppfVar24 = (float *)param_1;
                  FUN_004cdcf0();
                  fVar20 = (float)((int)local_148 + 1);
                  local_140[0x11d] =
                       (float *)(((float)(int)local_148 * DAT_00baab30) / DAT_00baa784);
                  local_148 = fVar20;
                } while ((int)fVar20 < 5);
              }
              param_1[0x104] = (float *)((int)param_1[0x104] + 1);
              cVar4 = FUN_0040a550();
              if (cVar4 != '\0') {
                param_1[0x2f0] = (float *)0x0;
                param_1[0x104] = (float *)0x0;
                param_1[0x2d9] = (float *)0x3;
              }
            }
            param_1[0xdb] = (float *)((float)param_1[0xdb] * (float)DAT_00baa3a4);
          }
          else if (local_178 == (float *)0x2328) {
            FUN_0040a380("Death",0);
            param_1[0x53] = (float *)0x3f800000;
            FUN_0059e390();
            cVar4 = FUN_0040a550();
            if (cVar4 != '\0') {
              param_1[0x2d9] = (float *)0x2329;
            }
            cVar4 = FUN_0040b030();
            if (cVar4 != '\0') {
              FUN_009568e0(0x1af,2,0,0x3f800000);
              FUN_009568e0(0x1ab,2,0,0x3f800000);
              param_1[0x62] = (float *)0x0;
              param_1[0x57] = (float *)0x0;
              local_130 = (float **)0x0;
              do {
                uVar5 = FUN_00407170();
                iVar8 = FUN_006eef60();
                fVar20 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa704;
                local_12c = (float **)(fVar20 + fVar20);
                ppfVar24 = local_12c;
                FUN_0041d520();
                local_1b0 = ppfVar24;
                iVar8 = FUN_006eef60();
                local_140 = (float **)
                            ((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                            DAT_00ba9ff4);
                ppfVar24 = local_12c;
                FUN_0041d540();
                fVar20 = (float)param_1[0xdc] * (float)ppfVar24 * (float)local_140;
                fVar26 = (float)param_1[0xdc] * (float)local_140 * (float)local_1b0;
                local_138 = (float **)(fVar20 + fVar20 + (float)param_1[0xcf]);
                local_134 = (float **)(fVar26 + fVar26 + (float)param_1[0xd0]);
                FUN_00703330(&local_138,0x5f,4,0x41200000,uVar5,(float)(int)local_130 * DAT_00baad74
                             ,0);
                local_130 = (float **)((int)local_130 + 1);
              } while ((int)local_130 < 100);
              uVar5 = FUN_006eef60();
              local_138 = (float **)0x0;
              local_134 = (float **)0xc0400000;
              FUN_00428b20(5,0x14,param_1 + 0xcf,&local_138,param_1,1,uVar5);
              FUN_00820ac0();
            }
          }
          else if (local_178 == (float *)0x2329) {
            FUN_0040a380("Final",0);
            *(undefined *)(param_1 + 0x30f) = 0;
            FUN_0059e390();
          }
          goto LAB_005a3586;
        }
        pfVar16 = param_1[0x2f0];
        pfVar18 = (float *)0x64;
        if (pfVar16 == (float *)0x0) {
          FUN_0040a380("SlotStart",0);
          FUN_009568e0(0x1b3,0x3c,0,0x3f800000);
          cVar4 = FUN_0040a550();
          if (cVar4 != '\0') {
            param_1[0x2f0] = (float *)0x1;
            param_1[0x104] = (float *)0x0;
          }
        }
        else if (pfVar16 == (float *)0x1) {
          FUN_0040a380("SlotSpinningFast",0);
          FUN_0092e620(0x1b4,0x3f800000,0x3f800000);
          fVar20 = (float)local_188 * DAT_00baa880;
          param_1[0x104] = (float *)((int)param_1[0x104] + 1);
          if ((int)(DAT_00baa928 - fVar20) < (int)param_1[0x104]) {
            FUN_0092e230();
            FUN_009568e0(0x1b5,0x5a,0,0x3f800000);
            param_1[0x2f0] = (float *)0x2;
            uVar17 = FUN_006eef60();
            FUN_0040a6e0("SlotSpinningOutcomes",uVar17 & 3);
            param_1[0x104] = (float *)0x0;
          }
        }
        else if (pfVar16 == (float *)0x2) {
          local_130 = (float **)0x1;
          iVar8 = FUN_0040a780();
          if (iVar8 == 0) {
            local_14c = local_1f8;
            local_180 = (float **)0x1;
            local_178 = (float *)&DAT_00000008;
            local_130 = (float **)0x1;
            if ((float)param_1[0xe0] <= (float)param_1[0xe1] * DAT_00baa198 &&
                (float)param_1[0xe1] * DAT_00baa198 != (float)param_1[0xe0]) {
              local_130 = (float **)0x2;
            }
LAB_005a0396:
            local_13c = (float **)(int)((float)DAT_00baa950 - (float)local_188 * DAT_00baa904);
            if (0x3b < (int)param_1[0x104]) goto LAB_005a044d;
            FUN_0092e620(0x1b7,0x3f800000,0x3f800000);
          }
          else {
            iVar8 = FUN_0040a780();
            if (iVar8 == 1) {
              local_180 = (float **)0x2;
              local_14c = 1.681558e-44;
              local_178 = (float *)0x2;
              goto LAB_005a0396;
            }
            iVar8 = FUN_0040a780();
            if (iVar8 == 2) {
              local_180 = (float **)0x3;
              local_14c = 9.809089e-45;
              local_178 = (float *)0x7;
              goto LAB_005a0396;
            }
            iVar8 = FUN_0040a780();
            if (iVar8 == 3) {
              local_180 = (float **)0x0;
              local_14c = 9.809089e-45;
              local_178 = (float *)0x7;
            }
            else {
              local_178 = (float *)0x1e;
              local_14c = 1.401298e-45;
              local_180 = (float **)0xffffffff;
            }
            local_13c = (float **)0x0;
            local_130 = (float **)0x1;
LAB_005a044d:
            FUN_0092e230();
            FUN_009568e0(0x1b6,0x5a,0,0x3f800000);
          }
          pfVar16 = param_1[0x104];
          if (pfVar16 == (float *)0x0) {
            FUN_009568e0(0x1ac,0x5a,0,0x3f800000);
            pfVar16 = param_1[0x104];
          }
          ppfVar24 = (float **)((int)pfVar16 + 1);
          param_1[0x104] = (float *)ppfVar24;
          if (((local_180 != (float **)0xffffffff) &&
              (local_12c = ppfVar24, (int)ppfVar24 % (int)local_178 == 0)) &&
             ((int)ppfVar24 <= (int)local_14c * (int)local_178)) {
            do {
              uVar5 = FUN_0081e9d0(&local_1ac,0);
              FUN_00813520(local_1bc,uVar5,0,0,0,0);
              uVar5 = FUN_006eef60();
              iVar8 = FUN_006eef60();
              fVar20 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa704;
              local_12c = (float **)(fVar20 + fVar20);
              ppfVar24 = local_12c;
              FUN_0041d520();
              local_140 = ppfVar24;
              ppfVar24 = local_12c;
              FUN_0041d540();
              local_138 = ppfVar24;
              pTVar31 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
              uVar30 = 0;
              local_134 = local_140;
              uVar5 = FUN_00428b20(0x125,local_180,local_1bc,&local_138,param_1,0,uVar5);
              piVar6 = (int *)__RTDynamicCast(uVar5,uVar30,pTVar31);
              if (piVar6 != (int *)0x0) {
                if (((local_180 == (float **)0x1) &&
                    (iVar8 = (int)param_1[0x104] / (int)local_178 + -1, iVar8 < (int)local_1f8)) &&
                   (iVar8 = __RTDynamicCast(*(undefined4 *)(local_200 + iVar8 * 4),0,
                                            &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor),
                   iVar8 != 0)) {
                  piVar6[0x2f0] = *(int *)(iVar8 + 0xbc0);
                }
                (**(code **)(*piVar6 + 0xc))();
              }
              local_130 = (float **)((int)local_130 + -1);
            } while (local_130 != (float **)0x0);
            ppfVar24 = (float **)param_1[0x104];
            local_130 = (float **)0x0;
          }
          pfVar18 = (float *)0x64;
          if (((int)local_14c * (int)local_178 < (int)ppfVar24) && ((int)local_13c < (int)ppfVar24))
          {
            pfVar18 = (float *)&DAT_00000004;
          }
        }
        if (pfVar18 != param_1[0x2d9]) {
          param_1[0x2d9] = pfVar18;
          param_1[0x104] = (float *)0x0;
          param_1[0x2f0] = (float *)0x0;
        }
        goto LAB_005a09ef;
      }
      local_134 = (float **)((float)param_1[0xce] - (float)param_1[0xd0]);
      local_138 = (float **)((float)param_1[0xcd] - (float)param_1[0xcf]);
      uVar5 = FUN_0067f260();
      switch(uVar5) {
      case 0:
        uVar28 = 0xb60d0c;
        break;
      case 1:
        uVar28 = 0xb60d04;
        break;
      case 2:
        uVar28 = 0xb60cf8;
        break;
      case 3:
        uVar28 = 0xb60cec;
        break;
      default:
        goto switchD_0059ff31_caseD_4;
      }
      FUN_0040a380(uVar28);
switchD_0059ff31_caseD_4:
      pfVar16 = param_1[0x2f0];
      if (pfVar16 == (float *)0x0) {
        uVar17 = FUN_006eef60();
        pfVar16 = (float *)(uVar17 | 1);
        param_1[0x2f0] = pfVar16;
      }
      FUN_007e8f90(pfVar16,0x23);
      local_160 = 0;
      local_15c = (float **)0x0;
      local_158 = (float **)0x0;
      local_14 = CONCAT31(local_14._1_3_,7);
      FUN_0049cb60(3,100,0);
      FUN_0049cb60(4,100,0);
      FUN_0049cb60(5,100,0);
      FUN_0049cb60(0x32,100,0);
      local_148 = (float)FUN_0049cbf0(local_1cc,(int)uStack_1c8,uStack_1c8._4_4_,pfStack_1c0);
      cVar4 = FUN_0040b090();
      if (cVar4 != '\0') {
        if (param_1[0x104] == (float *)0x0) {
          FUN_009568e0(0x1b2,2,0,0x3f800000);
        }
        AI_0043ef30();
        local_94 = 7;
        local_124 = 0xc2a00000;
        local_114 = 0x3fcccccd;
        if (param_1[0xb] == (float *)0x1) {
          local_100 = local_100 * DAT_00baa554;
          local_d0 = local_d0 | 2;
        }
        if (param_1[0x104] == (float *)0x0) {
          if (local_148 == 7.006492e-44) {
            FUN_006ccdd0(6,param_1 + 0xcd,0,local_128);
          }
          else {
            local_11c = 0x3d75c28f;
            local_120 = 10.0;
            FUN_00a10100(&local_1ac,0x41300000);
            FUN_006cb2e0(param_1 + 0xcf,&local_1ac,local_148,local_128);
          }
        }
        param_1[0x104] = (float *)((int)param_1[0x104] + 1);
      }
      cVar4 = FUN_0040a550();
      if (cVar4 != '\0') {
        param_1[0x2d9] = (float *)0x3;
        param_1[0x2f0] = (float *)0x0;
        param_1[0x104] = (float *)0x0;
      }
      local_14 = CONCAT31(local_14._1_3_,4);
      param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa280);
      if (local_160 != 0) {
        deallocate(local_160,(int)local_158 - local_160 >> 3);
      }
    }
    goto LAB_005a3586;
  }
  if ((local_142 != 0) || ((byte)local_190 != '\0')) {
    FUN_00703670();
    iVar8 = FUN_006eef60();
    local_150 = (float **)
                ((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa198 + DAT_00baa3e0);
    if (param_1[0x319] == (float *)0x12) {
      local_150 = (float **)((float)local_150 + (float)DAT_00baa2d0);
    }
    else if (param_1[0x319] == (float *)0x13) {
      local_150 = (float **)((float)local_150 * (float)DAT_00baa2d0);
    }
    local_16c = (float **)0x30;
    FUN_00956780();
    FUN_0092dc30(local_16c,0x3f800000,2,0,local_150,0);
  }
  local_150 = (float **)((uint)local_150 & 0xffffff00);
  if (param_1[0x1f] != (float *)0x0) {
    local_12c = (float **)param_1[0x22];
    dVar29 = floor((double)(float)local_12c);
    local_12c = (float **)(float)dVar29;
    iVar8 = (int)dVar29;
    if ((iVar8 < 0) || (4 < iVar8)) {
      local_150 = (float **)0x0;
      if (0xd < iVar8) {
        local_150 = (float **)(uint)(iVar8 < 0x13);
      }
    }
    else {
      local_150 = (float **)0x1;
    }
    if (0x1b < iVar8) {
      local_150 = (float **)0x1;
    }
  }
  auVar23 = ZEXT416((uint)((float)local_13c * (float)local_13c + (float)local_180 * (float)local_180
                          ));
  FUN_00435a50();
  local_168 = DAT_00baa454;
  local_1a0 = auVar23._0_4_;
  auVar25._0_4_ = (float)local_1a0 * DAT_00baa81c;
  auVar25._4_12_ = auVar23._4_12_;
  if (local_164 == (float *)0xffffffff) {
    auVar25 = ZEXT416((uint)DAT_00baa81c);
  }
  pfVar16 = param_1[0x2d9];
  if (pfVar16 == (float *)0x136) {
    auVar25 = ZEXT416((uint)DAT_00baa81c);
  }
  local_12c = DAT_00baa454;
  if (param_1[0xb] == (float *)0x1) {
    local_12c = DAT_00baa304;
  }
  local_140 = (float **)((float)local_12c * DAT_00baa75c);
  ppfVar24 = DAT_00baa3a4;
  if ((char)local_150 == '\0') {
    local_140 = (float **)((float)local_140 * DAT_00baa354);
    auVar25._0_4_ = auVar25._0_4_ * (float)DAT_00baa304;
    ppfVar24 = DAT_00baa304;
  }
  param_1[0xdb] = (float *)((float)param_1[0xdb] * (float)ppfVar24);
  local_168 = (float **)((float)local_188 * _DAT_00baa358 + (float)local_168);
  local_174 = local_168;
  if (pfVar16 == (float *)0x136) {
    local_174 = DAT_00baa6fc;
  }
  local_174 = (float **)((float)local_174 * auVar25._0_4_);
  local_198 = param_1 + 0xcf;
  local_141 = 0;
  local_1ac = *local_198;
  local_1a8 = param_1[0xd0];
  local_1b0 = DAT_00baacb4;
  if (pfVar16 == (float *)&DAT_00000004) {
    local_150 = (float **)0x0;
    do {
      iVar8 = local_1f0;
      if (local_1e8 <= local_150) break;
      iVar12 = *(int *)(local_1f0 + (int)local_150 * 4);
      fVar26 = (float)param_1[0xd0] - *(float *)(iVar12 + 0x340);
      fVar20 = (float)param_1[0xcf] - *(float *)(iVar12 + 0x33c);
      local_16c = (float **)(fVar26 * fVar26 + fVar20 * fVar20);
      iVar12 = __RTDynamicCast(iVar12,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                               &IsaacRepentancePlus::Entity_Pickup::RTTI_Type_Descriptor,0);
      ppfVar24 = local_16c;
      if (iVar12 != 0) {
        if ((*(int *)(iVar12 + 0x2c) == 0x14) && (*(int *)(iVar12 + 0x30) - 1U < 7)) {
          iVar13 = *(int *)(&DAT_00b67e34 + *(int *)(iVar12 + 0x30) * 4);
        }
        else {
          iVar13 = 0;
        }
        ppfVar24 = (float **)((float)local_16c / (float)iVar13);
      }
      if ((((float)ppfVar24 < (float)local_1b0) && (*(int *)(iVar12 + 0x188) != 0)) &&
         (*(char *)(iVar12 + 0x173) == '\0')) {
        local_141 = 1;
        iVar8 = *(int *)(iVar8 + (int)local_150 * 4);
        local_1ac = *(float **)(iVar8 + 0x33c);
        local_1a8 = *(float **)(iVar8 + 0x340);
        param_1[0xcd] = DAT_00c7b640;
        param_1[0xce] = DAT_00c7b644;
        local_1b0 = ppfVar24;
      }
      pfVar16 = param_1[0x2d9];
      local_150 = (float **)((int)local_150 + 1);
    } while (pfVar16 == (float *)&DAT_00000004);
    if (local_141 == 0) {
      if (((NAN((float)param_1[0xcd]) || NAN((float)DAT_00c7b640)) !=
           ((float)param_1[0xcd] == (float)DAT_00c7b640)) &&
         ((NAN((float)param_1[0xce]) || NAN((float)DAT_00c7b644)) !=
          ((float)param_1[0xce] == (float)DAT_00c7b644))) {
        ppfVar24 = (float **)FUN_0081e9d0(local_1bc,(float)param_1[0xdc] * (float)param_1[0xdd]);
        iVar8 = 0;
        param_1[0xcd] = *ppfVar24;
        param_1[0xce] = ppfVar24[1];
        do {
          FUN_0081e9d0(&local_154,(float)param_1[0xdc] * (float)param_1[0xdd]);
          ppfVar24 = (float **)
                     (((float)local_150 - (float)param_1[0xd0]) *
                      ((float)local_150 - (float)param_1[0xd0]) +
                     ((float)local_154 - (float)param_1[0xcf]) *
                     ((float)local_154 - (float)param_1[0xcf]));
          FUN_00435a50();
          local_1b0 = ppfVar24;
          fVar26 = ((float)param_1[0xce] - (float)param_1[0xd0]) *
                   ((float)param_1[0xce] - (float)param_1[0xd0]) +
                   ((float)param_1[0xcd] - (float)param_1[0xcf]) *
                   ((float)param_1[0xcd] - (float)param_1[0xcf]);
          FUN_00435a50();
          fVar20 = DAT_00baaa78;
          if (fVar26 < (float)local_1b0) {
            param_1[0xcd] = local_154;
            param_1[0xce] = (float *)local_150;
            if (fVar20 < (float)local_1b0) break;
          }
          iVar8 = iVar8 + 1;
        } while (iVar8 < 0x14);
      }
      local_1ac = param_1[0xcd];
      pfVar16 = param_1[0x2d9];
      local_1a8 = param_1[0xce];
    }
  }
  local_150 = (float **)0x0;
  local_16c = (float **)0x0;
  if (local_164 == (float *)0xffffffff) {
    fVar26 = ((float)local_1ac - (float)param_1[0xcf]) / (float)param_1[0xdd];
    fVar20 = ((float)local_1a8 - (float)param_1[0xd0]) / (float)param_1[0xde];
    fVar20 = fVar20 * fVar20 + fVar26 * fVar26;
    FUN_00435a50();
    if (fVar20 < (float)param_1[0xdc] || fVar20 == (float)param_1[0xdc]) {
      if ((local_141 == 0) && (pfVar16 == (float *)&DAT_00000004)) {
        param_1[0xcd] = DAT_00c7b640;
        local_178 = (float *)0x3;
        param_1[0xce] = DAT_00c7b644;
      }
    }
    else {
      local_1b0 = (float **)param_1[0xd8];
      local_13c = (float **)param_1[0xd9];
      local_180 = (float **)param_1[0xdb];
      FUN_007e33c0(&local_1ac,0x3f800000,900,1);
      local_150 = (float **)((float)param_1[0xd9] - (float)local_13c);
      local_16c = (float **)((float)param_1[0xd8] - (float)local_1b0);
      param_1[0xd8] = (float *)local_1b0;
      param_1[0xd9] = (float *)local_13c;
      param_1[0xdb] = (float *)local_180;
      fVar20 = (float)local_150 * (float)local_150 + (float)local_16c * (float)local_16c;
      FUN_00435a50();
      if (0.0 < fVar20) {
        pfVar16 = param_1[0x2d9];
        local_16c = (float **)((float)local_16c * ((float)DAT_00baa454 / fVar20));
        local_150 = (float **)((float)local_150 * ((float)DAT_00baa454 / fVar20));
        goto LAB_005a2262;
      }
    }
    pfVar16 = param_1[0x2d9];
  }
  else {
    local_16c = local_180;
    local_150 = local_13c;
  }
LAB_005a2262:
  if (pfVar16 == (float *)0x136) {
    local_16c = (float **)param_1[0xcd];
    local_150 = (float **)param_1[0xce];
    fVar20 = (float)local_16c * (float)local_16c + (float)local_150 * (float)local_150;
    FUN_00435a50();
    if (0.0 < fVar20) {
      local_16c = (float **)((float)local_16c * ((float)DAT_00baa454 / fVar20));
      local_150 = (float **)((float)local_150 * ((float)DAT_00baa454 / fVar20));
    }
  }
  pfVar16 = param_1[0xdb];
  if (NAN((float)pfVar16) == ((float)pfVar16 == 0.0)) {
    param_1[0xd9] =
         (float *)(((float)param_1[0xe7] * (float)local_140 * (float)local_150) / (float)pfVar16 +
                  (float)param_1[0xd9]);
    param_1[0xd8] =
         (float *)(((float)param_1[0xe7] * (float)local_140 * (float)local_16c) / (float)pfVar16 +
                  (float)param_1[0xd8]);
  }
  local_140 = (float **)param_1[0xd9];
  fVar20 = (float)param_1[0xd8] * (float)param_1[0xd8] + (float)local_140 * (float)local_140;
  FUN_00435a50();
  if (((float)local_174 < fVar20) && (0.0 < fVar20)) {
    param_1[0xd8] = (float *)(((float)local_174 / fVar20) * (float)param_1[0xd8]);
    param_1[0xd9] = (float *)((float)local_140 * ((float)local_174 / fVar20));
  }
  local_13c = (float **)0x0;
  if ((param_1[0x1f] != (float *)0x0) && (*(char *)(param_1 + 0x23) != '\0')) {
    ppbVar9 = (byte **)param_1[0x1f];
    if (&DAT_0000000f < ppbVar9[5]) {
      ppbVar9 = (byte **)*ppbVar9;
    }
    pcVar10 = "Walking";
    do {
      bVar1 = *(byte *)ppbVar9;
      bVar21 = bVar1 < (byte)*pcVar10;
      if (bVar1 != *pcVar10) {
LAB_005a2402:
        uVar17 = -(uint)bVar21 | 1;
        goto LAB_005a2407;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar9 + 1);
      bVar21 = bVar1 < ((byte *)pcVar10)[1];
      if (bVar1 != ((byte *)pcVar10)[1]) goto LAB_005a2402;
      ppbVar9 = (byte **)((int)ppbVar9 + 2);
      pcVar10 = (char *)((byte *)pcVar10 + 2);
    } while (bVar1 != 0);
    uVar17 = 0;
LAB_005a2407:
    if (uVar17 != 0) {
      ppbVar9 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar9 = (byte **)*ppbVar9;
      }
      pcVar10 = "WalkingUp";
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar21 = bVar1 < (byte)*pcVar10;
        if (bVar1 != *pcVar10) {
LAB_005a2440:
          uVar17 = -(uint)bVar21 | 1;
          goto LAB_005a2445;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar21 = bVar1 < ((byte *)pcVar10)[1];
        if (bVar1 != ((byte *)pcVar10)[1]) goto LAB_005a2440;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pcVar10 = (char *)((byte *)pcVar10 + 2);
      } while (bVar1 != 0);
      uVar17 = 0;
LAB_005a2445:
      if (uVar17 != 0) {
        ppbVar9 = (byte **)param_1[0x1f];
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pcVar10 = "WalkingDown";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar21 = bVar1 < (byte)*pcVar10;
          if (bVar1 != *pcVar10) {
LAB_005a2480:
            uVar17 = -(uint)bVar21 | 1;
            goto LAB_005a2485;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar21 = bVar1 < ((byte *)pcVar10)[1];
          if (bVar1 != ((byte *)pcVar10)[1]) goto LAB_005a2480;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar10 = (char *)((byte *)pcVar10 + 2);
        } while (bVar1 != 0);
        uVar17 = 0;
LAB_005a2485:
        if (uVar17 != 0) goto LAB_005a2499;
      }
    }
    local_13c = (float **)param_1[0x22];
  }
LAB_005a2499:
  if ((float)((uint)local_16c & DAT_00bacb40) <= (float)((uint)local_150 & DAT_00bacb40)) {
    ppfVar24 = (float **)((uint)(0.0 <= (float)local_150) * 2 + 1);
  }
  else {
    ppfVar24 = (float **)0x2;
    if ((float)local_16c < 0.0) {
      ppfVar24 = (float **)0x0;
    }
  }
  local_180 = ppfVar24;
  ppfVar19 = (float **)((float)local_16c * (float)local_16c + (float)local_150 * (float)local_150);
  FUN_00435a50();
  local_174 = ppfVar19;
  if (NAN((float)local_174) != ((float)local_174 == 0.0)) {
    ppfVar24 = (float **)0xffffffff;
    local_180 = (float **)0xffffffff;
  }
  if ((param_1[0x1f] != (float *)0x0) && (*(char *)(param_1 + 0x23) != '\0')) {
    ppbVar9 = (byte **)param_1[0x1f];
    if (&DAT_0000000f < ppbVar9[5]) {
      ppbVar9 = (byte **)*ppbVar9;
    }
    pcVar10 = "DashStop";
    do {
      bVar1 = *(byte *)ppbVar9;
      bVar21 = bVar1 < (byte)*pcVar10;
      if (bVar1 != *pcVar10) {
LAB_005a2560:
        uVar17 = -(uint)bVar21 | 1;
        goto LAB_005a2565;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar9 + 1);
      bVar21 = bVar1 < *(byte *)((int)pcVar10 + 1);
      if (bVar1 != *(byte *)((int)pcVar10 + 1)) goto LAB_005a2560;
      ppbVar9 = (byte **)((int)ppbVar9 + 2);
      pcVar10 = (char *)((int)pcVar10 + 2);
    } while (bVar1 != 0);
    uVar17 = 0;
LAB_005a2565:
    if (uVar17 != 0) goto switchD_005a2583_switchD;
    param_1[0x53] = (float *)0x3f800000;
    goto LAB_005a26c2;
  }
switchD_005a2583_switchD:
  switch(ppfVar24) {
  case (float **)0x0:
  case (float **)0x2:
    FUN_0040a380("Walking",0);
    pcVar10 = (char *)extraout_ECX_10;
    if (param_1[0x1f] != (float *)0x0) {
      FUN_00408e00();
      pcVar10 = (char *)extraout_ECX_11;
    }
    break;
  case (float **)0x1:
    uVar28 = 0xb62654;
    goto LAB_005a25bc;
  case (float **)0x3:
    uVar28 = 0xb62648;
LAB_005a25bc:
    FUN_0040a380(uVar28);
    pcVar10 = (char *)extraout_ECX_12;
    if (param_1[0x1f] != (float *)0x0) {
      FUN_00408e00();
      pcVar10 = (char *)extraout_ECX_13;
    }
    goto LAB_005a2696;
  default:
    param_1[0x53] = (float *)0x3f800000;
    ppbVar9 = (byte **)param_1[0x1f];
    if (ppbVar9 != (byte **)0x0) {
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar9 = (byte **)*ppbVar9;
      }
      pbVar11 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar21 = bVar1 < *pbVar11;
        if (bVar1 != *pbVar11) {
LAB_005a2630:
          uVar17 = -(uint)bVar21 | 1;
          goto LAB_005a2635;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar21 = bVar1 < pbVar11[1];
        if (bVar1 != pbVar11[1]) goto LAB_005a2630;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pbVar11 = pbVar11 + 2;
      } while (bVar1 != 0);
      uVar17 = 0;
LAB_005a2635:
      pcVar10 = (char *)(param_1 + 0x12);
      if ((uVar17 == 0) &&
         ((*(char *)(param_1[0x1f] + 0xd) == '\0' || (*(char *)(param_1 + 0x23) != '\0')))) break;
    }
    cVar4 = FUN_0040a5d0(&DAT_00b1bc54,1);
    pcVar10 = (char *)extraout_ECX_14;
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
      pcVar10 = (char *)extraout_ECX_15;
      ppfVar24 = local_180;
    }
  }
  if ((ppfVar24 == (float **)0x0) || (ppfVar24 == (float **)0x2)) {
    *(bool *)(param_1 + 0x52) = (float)local_16c < 0.0;
  }
  if (ppfVar24 != (float **)0xffffffff) {
LAB_005a2696:
    param_1[0x53] =
         (float *)((float)local_174 * (float)local_168 * (float)DAT_00baa3a4 * (float)local_12c);
  }
LAB_005a26c2:
  pfVar16 = param_1[0x2d9];
  local_150 = (float **)0x0;
  local_16c = (float **)0x0;
  pfVar18 = local_178;
  if (local_164 == (float *)0xffffffff) {
    if ((pfVar16 == (float *)&DAT_00000004) || (pfVar16 == (float *)0x3)) {
      cVar4 = FUN_006ac710(0xf,0);
      if (cVar4 != '\0') {
        local_160 = 0;
        local_15c = (float **)0x0;
        local_158 = (float **)0x0;
        local_14 = CONCAT31(local_14._1_3_,5);
        iVar8 = 0;
        if (param_1[0xb] == (float *)0x0) {
          local_12c = (float **)((float)local_188 * DAT_00baa87c);
          local_13c = (float **)(int)((float)local_12c + DAT_00baa8d0);
          ppfVar19 = (float **)(-(uint)(local_218 < 3) & (uint)local_13c);
          ppfVar24 = (float **)((int)ppfVar19 + 0x1e);
          if (1 < (int)local_14c) {
            ppfVar24 = ppfVar19;
          }
          if (0 < (int)ppfVar24) {
            local_138 = (float **)0x64;
            local_134 = ppfVar24;
            FUN_004a11c0(0,&local_138);
          }
          pfVar16 = (float *)FUN_006bec40(local_1bc,0);
          iVar8 = FUN_006be840();
          local_168 = *(float ***)(iVar8 + 0x360);
          local_174 = *(float ***)(iVar8 + 0x364);
          iVar8 = FUN_006eef60();
          fVar20 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4
          ;
          local_134 = (float **)(fVar20 * (float)local_174 * DAT_00baa85c + pfVar16[1]);
          local_138 = (float **)(fVar20 * (float)local_168 * DAT_00baa85c + *pfVar16);
          FUN_00812f50(&local_1a4,&local_138,0x41a00000,0x41a00000,0x41a00000);
          param_1 = local_130;
          local_138 = (float **)(local_1a4 - (float)*local_198);
          local_134 = (float **)((float)local_1a0 - (float)local_198[1]);
          if (((float)((uint)local_138 & DAT_00bacb40) <
               (float)local_130[0xdc] * (float)local_130[0xdd]) ||
             ((float)((uint)local_134 & DAT_00bacb40) <
              (float)local_130[0xdc] * (float)local_130[0xde])) {
            pfVar16 = (float *)FUN_0067f170();
            local_16c = (float **)*pfVar16;
            local_150 = (float **)pfVar16[1];
          }
          else {
            local_13c = (float **)0x0;
          }
          uVar17 = 0;
          uVar14 = (int)local_15c - local_160 >> 3;
          if (uVar14 != 0) {
            do {
              if (*(int *)(local_160 + uVar17 * 8) == 300) {
                piVar6 = (int *)(local_160 + 4 + uVar17 * 8);
                *piVar6 = *piVar6 + (int)local_13c;
                if (*piVar6 < 0) {
                  *(undefined4 *)(local_160 + 4 + uVar17 * 8) = 0;
                }
                goto LAB_005a29aa;
              }
              uVar17 = uVar17 + 1;
            } while (uVar17 < uVar14);
          }
          if (0 < (int)local_13c) {
            local_138 = (float **)0x12c;
            local_134 = local_13c;
            if (local_15c == local_158) {
              FUN_004a11c0(local_15c,&local_138);
            }
            else {
              *local_15c = (float *)0x12c;
              local_15c[1] = (float *)local_13c;
              local_15c = local_15c + 2;
            }
          }
LAB_005a29aa:
          iVar8 = local_160;
          local_13c = (float **)0x0;
          iVar12 = FUN_006be840();
          fVar26 = (float)param_1[0xcf] / (float)param_1[0xdd] -
                   *(float *)(iVar12 + 0x33c) / (float)param_1[0xdd];
          fVar20 = (float)param_1[0xd0] / (float)param_1[0xde] -
                   *(float *)(iVar12 + 0x340) / (float)param_1[0xde];
          fVar20 = fVar20 * fVar20 + fVar26 * fVar26;
          FUN_00435a50();
          if (fVar20 < (float)param_1[0xdc] * (float)DAT_00baa6fc) {
            local_13c = (float **)(int)((float)local_188 * DAT_00baaa1c + DAT_00baa97c);
          }
          uVar17 = 0;
          uVar14 = (int)local_15c - iVar8 >> 3;
          if (uVar14 != 0) {
            do {
              if (*(int *)(iVar8 + uVar17 * 8) == 500) {
                piVar6 = (int *)(iVar8 + 4 + uVar17 * 8);
                *piVar6 = *piVar6 + (int)local_13c;
                if (*piVar6 < 0) {
                  *(undefined4 *)(iVar8 + 4 + uVar17 * 8) = 0;
                }
                goto LAB_005a2ada;
              }
              uVar17 = uVar17 + 1;
            } while (uVar17 < uVar14);
          }
          if (0 < (int)local_13c) {
            local_138 = (float **)0x1f4;
            local_134 = local_13c;
            if (local_15c == local_158) {
              FUN_004a11c0(local_15c,&local_138);
              iVar8 = local_160;
            }
            else {
              *local_15c = (float *)0x1f4;
              local_15c[1] = (float *)local_13c;
              local_15c = local_15c + 2;
            }
          }
LAB_005a2ada:
          uVar17 = 0;
          uVar14 = (int)local_15c - iVar8 >> 3;
          if (uVar14 != 0) {
            do {
              if (*(int *)(iVar8 + uVar17 * 8) == 0x1fe) {
                piVar6 = (int *)(iVar8 + 4 + uVar17 * 8);
                *piVar6 = *piVar6 + (int)((float)local_12c + DAT_00baa854);
                if (*piVar6 < 0) {
                  *(undefined4 *)(iVar8 + 4 + uVar17 * 8) = 0;
                }
                goto LAB_005a2b66;
              }
              uVar17 = uVar17 + 1;
            } while (uVar17 < uVar14);
          }
          ppfVar24 = (float **)(int)((float)local_12c + DAT_00baa854);
          if (0 < (int)ppfVar24) {
            local_138 = (float **)0x1fe;
            local_134 = ppfVar24;
            if (local_15c == local_158) {
              FUN_004a11c0(local_15c,&local_138);
              iVar8 = local_160;
            }
            else {
              *local_15c = (float *)0x1fe;
              local_15c[1] = (float *)ppfVar24;
              local_15c = local_15c + 2;
            }
          }
        }
LAB_005a2b66:
        iVar12 = FUN_006be840();
        local_13c = (float **)0x0;
        fVar20 = *(float *)(iVar12 + 0x33c) - (float)param_1[0xcf];
        fVar26 = *(float *)(iVar12 + 0x340) - (float)param_1[0xd0];
        pfVar16 = (float *)(fVar20 * fVar20 + fVar26 * fVar26);
        FUN_00435a50();
        local_164 = pfVar16;
        if ((DAT_00baaa94 < (float)local_164) && ((float)local_164 < DAT_00baab14)) {
          if (param_1[0xb] == (float *)0x0) {
            fVar20 = (float)local_188 * DAT_00baa8d0 + DAT_00baa924;
          }
          else {
            if (param_1[0xb] != (float *)0x1) goto LAB_005a2c0e;
            fVar20 = (float)local_188 * DAT_00baa904 + DAT_00baa9a0;
          }
          local_13c = (float **)(int)fVar20;
        }
LAB_005a2c0e:
        uVar17 = 0;
        uVar14 = (int)local_15c - iVar8 >> 3;
        if (uVar14 != 0) {
          do {
            if (*(int *)(iVar8 + uVar17 * 8) == 600) {
              piVar6 = (int *)(iVar8 + 4 + uVar17 * 8);
              *piVar6 = *piVar6 + (int)local_13c;
              if (*piVar6 < 0) {
                *(undefined4 *)(iVar8 + 4 + uVar17 * 8) = 0;
              }
              goto LAB_005a2c9a;
            }
            uVar17 = uVar17 + 1;
          } while (uVar17 < uVar14);
        }
        if (0 < (int)local_13c) {
          local_138 = (float **)0x258;
          local_134 = local_13c;
          if (local_15c == local_158) {
            FUN_004a11c0(local_15c,&local_138);
            iVar8 = local_160;
          }
          else {
            *local_15c = (float *)0x258;
            local_15c[1] = (float *)local_13c;
            local_15c = local_15c + 2;
          }
        }
LAB_005a2c9a:
        if (param_1[0xb] == (float *)0x0) {
          ppfVar24 = (float **)(int)((float)local_188 * DAT_00baa87c + DAT_00baa87c);
          local_12c = (float **)((int)ppfVar24 + 0x1e);
          if (1 < (int)local_14c) {
            local_12c = ppfVar24;
          }
          uVar17 = 0;
          uVar14 = (int)local_15c - iVar8 >> 3;
          if (uVar14 != 0) {
            do {
              if (*(int *)(iVar8 + uVar17 * 8) == 200) {
                piVar6 = (int *)(iVar8 + 4 + uVar17 * 8);
                *piVar6 = *piVar6 + (int)local_12c;
                if (*piVar6 < 0) {
                  *(undefined4 *)(iVar8 + 4 + uVar17 * 8) = 0;
                }
                goto LAB_005a2d64;
              }
              uVar17 = uVar17 + 1;
            } while (uVar17 < uVar14);
          }
          if (0 < (int)local_12c) {
            local_138 = (float **)0xc8;
            local_134 = local_12c;
            if (local_15c == local_158) {
              FUN_004a11c0(local_15c,&local_138);
              iVar8 = local_160;
            }
            else {
              *local_15c = (float *)0xc8;
              local_15c[1] = (float *)local_12c;
              local_15c = local_15c + 2;
            }
          }
LAB_005a2d64:
          ppfVar19 = (float **)(int)(DAT_00baa9d0 - (float)local_188 * DAT_00baa904);
          ppfVar24 = ppfVar19 + -0xf;
          if (1 < (int)local_14c) {
            ppfVar24 = ppfVar19;
          }
          local_12c = ppfVar24 + 0x7d;
          if ((int)local_148 < 6) {
            local_12c = ppfVar24;
          }
          local_140 = (float **)param_1[0x2d9];
          uVar17 = 0;
          uVar14 = (int)local_15c - iVar8 >> 3;
          if (uVar14 != 0) {
            do {
              param_1 = local_130;
              if (*(float ***)(iVar8 + uVar17 * 8) == local_140) {
                piVar6 = (int *)(iVar8 + 4 + uVar17 * 8);
                *piVar6 = *piVar6 + (int)local_12c;
                if (*piVar6 < 0) {
                  *(undefined4 *)(iVar8 + 4 + uVar17 * 8) = 0;
                }
                goto LAB_005a2e3b;
              }
              uVar17 = uVar17 + 1;
            } while (uVar17 < uVar14);
          }
          if (0 < (int)local_12c) {
            local_138 = local_140;
            local_134 = local_12c;
            if (local_15c == local_158) {
              FUN_004a11c0(local_15c,&local_138);
            }
            else {
              *local_15c = (float *)local_140;
              local_15c[1] = (float *)local_12c;
              local_15c = local_15c + 2;
            }
          }
        }
LAB_005a2e3b:
        if (param_1[0xb] == (float *)0x1) {
          ppfVar24 = (float **)(int)((float)local_188 * DAT_00baa784 + DAT_00baa81c);
          local_12c = (float **)((int)ppfVar24 + 0x1e);
          if (1 < (int)local_14c) {
            local_12c = ppfVar24;
          }
          uVar17 = 0;
          uVar14 = (int)local_15c - local_160 >> 3;
          if (uVar14 != 0) {
            do {
              if (*(int *)(local_160 + uVar17 * 8) == 200) {
                piVar6 = (int *)(local_160 + 4 + uVar17 * 8);
                *piVar6 = *piVar6 + (int)local_12c;
                if (*piVar6 < 0) {
                  *(undefined4 *)(local_160 + 4 + uVar17 * 8) = 0;
                }
                goto LAB_005a2f11;
              }
              uVar17 = uVar17 + 1;
            } while (uVar17 < uVar14);
          }
          if (0 < (int)local_12c) {
            local_138 = (float **)0xc8;
            local_134 = local_12c;
            if (local_15c == local_158) {
              FUN_004a11c0(local_15c,&local_138);
            }
            else {
              *local_15c = (float *)0xc8;
              local_15c[1] = (float *)local_12c;
              local_15c = local_15c + 2;
            }
          }
LAB_005a2f11:
          ppfVar24 = (float **)(int)(DAT_00baa9d0 - (float)local_188 * DAT_00baa97c);
          local_12c = ppfVar24 + 0x7d;
          if ((int)local_148 < 6) {
            local_12c = ppfVar24;
          }
          local_140 = (float **)param_1[0x2d9];
          uVar14 = (int)local_15c - local_160 >> 3;
          uVar17 = 0;
          if (uVar14 != 0) {
            do {
              param_1 = local_130;
              if (*(float ***)(local_160 + uVar17 * 8) == local_140) {
                piVar6 = (int *)(local_160 + 4 + uVar17 * 8);
                *piVar6 = *piVar6 + (int)local_12c;
                if (*piVar6 < 0) {
                  *(undefined4 *)(local_160 + 4 + uVar17 * 8) = 0;
                }
                goto LAB_005a2fd3;
              }
              uVar17 = uVar17 + 1;
            } while (uVar17 < uVar14);
          }
          if (0 < (int)local_12c) {
            local_138 = local_140;
            local_134 = local_12c;
            if (local_15c == local_158) {
              FUN_004a11c0(local_15c,&local_138);
            }
            else {
              *local_15c = (float *)local_140;
              local_15c[1] = (float *)local_12c;
              local_15c = local_15c + 2;
            }
          }
LAB_005a2fd3:
          pfVar16 = param_1[0xdc];
          pfVar18 = param_1[0xdd];
          local_198 = (float **)((float)pfVar16 * (float)pfVar18);
          local_168 = (float **)((float)local_198 + DAT_00baa9d0);
          if ((NAN((float)local_198) || NAN((float)local_168)) !=
              ((float)local_198 == (float)local_168)) {
            FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
            pfVar18 = param_1[0xdd];
            pfVar16 = param_1[0xdc];
          }
          fVar26 = (float)local_168 - (float)local_198;
          fVar20 = (float)local_164 - (float)local_198;
          local_198 = (float **)((float)pfVar18 * (float)pfVar16);
          ppfVar24 = (float **)(fVar20 / fVar26);
          if ((float)ppfVar24 <= (float)DAT_00ba9fe4) {
            ppfVar24 = DAT_00ba9fe4;
          }
          if ((float)DAT_00baa454 <= (float)ppfVar24) {
            ppfVar24 = DAT_00baa454;
          }
          local_168 = (float **)((float)local_198 + DAT_00baa9d0);
          local_174 = (float **)(int)(DAT_00baa87c - (float)ppfVar24 * DAT_00baa81c);
          if ((NAN((float)local_198) || NAN((float)local_168)) !=
              ((float)local_198 == (float)local_168)) {
            FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
          }
          ppfVar24 = (float **)
                     (((float)local_164 - (float)local_198) / ((float)local_168 - (float)local_198))
          ;
          if ((float)ppfVar24 <= (float)DAT_00ba9fe4) {
            ppfVar24 = DAT_00ba9fe4;
          }
          if ((float)DAT_00baa454 <= (float)ppfVar24) {
            ppfVar24 = DAT_00baa454;
          }
          iVar8 = (int)(DAT_00baa87c - (float)ppfVar24 * DAT_00baa81c);
          if (0 < (int)local_14c) {
            iVar8 = iVar8 * 3;
          }
          FUN_0049cb60(700,local_174,0);
          FUN_0049cb60(0x2c6,iVar8,0);
          local_168 = (float **)((float)param_1[0xdc] * (float)param_1[0xdd]);
          local_198 = (float **)((float)local_168 + DAT_00baab54);
          if ((NAN((float)local_168) || NAN((float)local_198)) !=
              ((float)local_168 == (float)local_198)) {
            FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
          }
          ppfVar24 = (float **)
                     (((float)local_164 - (float)local_168) / ((float)local_198 - (float)local_168))
          ;
          if ((float)ppfVar24 <= (float)DAT_00ba9fe4) {
            ppfVar24 = DAT_00ba9fe4;
          }
          if ((float)DAT_00baa454 <= (float)ppfVar24) {
            ppfVar24 = DAT_00baa454;
          }
          FUN_0049cb60(6,(int)((float)ppfVar24 * DAT_00baa904 + DAT_00baa81c),0);
        }
        local_1cc = FUN_006eef60();
        local_1cc = local_1cc | 1;
        pfStack_1c0 = DAT_00b1f674;
        uStack_1c8._0_4_ = (int)DAT_00b1f66c;
        uVar5 = (int)uStack_1c8;
        uStack_1c8._4_4_ = (undefined4)((ulonglong)DAT_00b1f66c >> 0x20);
        uVar30 = uStack_1c8._4_4_;
        uStack_1c8 = DAT_00b1f66c;
        local_178 = (float *)FUN_0049cbf0(local_1cc,uVar5,uVar30,DAT_00b1f674);
        local_14 = CONCAT31(local_14._1_3_,4);
        if (local_160 != 0) {
          deallocate(local_160,(int)local_158 - local_160 >> 3);
        }
      }
      pfVar18 = local_178;
      if (5 < (int)local_14c) {
        pfVar18 = (float *)0x190;
      }
    }
    else {
LAB_005a3277:
      if (pfVar16 == (float *)0x136) {
        iVar8 = 3;
        do {
          local_12c = (float **)FUN_006eef60();
          local_130 = (float **)param_1[0xd8];
          local_13c = (float **)param_1[0xd9];
          fVar20 = (float)local_130 * (float)local_130 + (float)local_13c * (float)local_13c;
          FUN_00435a50();
          if ((float)DAT_00ba9fe4 < fVar20) {
            local_13c = (float **)(((float)DAT_00baa454 / fVar20) * (float)local_13c);
            local_130 = (float **)(((float)DAT_00baa454 / fVar20) * (float)local_130);
          }
          local_130 = (float **)((float)local_130 * _DAT_00baad8c);
          local_13c = (float **)((float)local_13c * _DAT_00baad8c);
          iVar12 = FUN_006eef60();
          fVar20 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa704;
          local_198 = (float **)(fVar20 + fVar20);
          ppfVar24 = local_198;
          FUN_0041d520();
          local_174 = ppfVar24;
          iVar12 = FUN_006eef60();
          local_168 = (float **)
                      ((float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                      DAT_00ba9ff4);
          ppfVar24 = local_198;
          FUN_0041d540();
          local_138 = (float **)((float)ppfVar24 * (float)local_168 + (float)local_130);
          uVar28 = 0xc5d5ac;
          local_134 = (float **)((float)local_174 * (float)local_168 + (float)local_13c);
          pTVar31 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar30 = 0;
          uVar5 = FUN_00428b20(1000,0x58,param_1 + 0xcf,&local_138,0,0,local_12c);
          local_12c = (float **)__RTDynamicCast(uVar5,uVar30,pTVar31,uVar28);
          (*(code *)(*local_12c)[3])();
          pfVar16 = (float *)(DAT_00c37940 * DAT_00baa630);
          local_12c[0x39] = (float *)(DAT_00c3793c * DAT_00baa630);
          local_12c[0x3a] = pfVar16;
          iVar12 = FUN_006eef60();
          fVar20 = DAT_00baadec;
          dVar29 = (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)];
          local_12c[0x37] = (float *)0x0;
          local_12c[0x38] =
               (float *)(fVar20 - (float)((double)iVar12 + dVar29) * DAT_00ba9ff4 * DAT_00baa904);
          if ((float)param_1[0xce] <= 0.0 && (float)param_1[0xce] != 0.0) {
            local_12c[0xd5] = (float *)0x7d0;
          }
          iVar8 = iVar8 + -1;
        } while (iVar8 != 0);
        pfVar16 = (float *)((int)param_1[0x2e9] +
                           ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]));
        param_1[0x2e9] = pfVar16;
        if (0x5a < (int)pfVar16) {
          param_1[0x104] = (float *)0x64;
        }
        pfVar18 = local_178;
        if ((*(char *)(param_1 + 100) == '\0') && ((int)param_1[0x104] < 100)) {
          param_1[0x104] = (float *)0x0;
        }
        else {
          pfVar16 = param_1[0x104];
          param_1[0x104] = (float *)((int)pfVar16 + 1);
          if (5 < (int)(float *)((int)pfVar16 + 1)) {
            param_1[0xcd] = DAT_00c7b640;
            param_1[0xce] = DAT_00c7b644;
            FUN_0040a380("DashStop",0);
            pfVar18 = (float *)0x3;
          }
        }
      }
    }
  }
  else {
    if ((pfVar16 != (float *)&DAT_00000004) && (pfVar16 != (float *)0x3)) goto LAB_005a3277;
    if ((param_1[0x3c7] != (float *)0xffffffff) &&
       ((cVar4 = FUN_00956110(5,param_1[0x3c7],param_1,pcVar10), pcVar10 = (char *)extraout_ECX_16,
        pfVar18 = local_178, cVar4 != '\0' && ((float)DAT_00baa2d0 < (float)local_1a0)))) {
      pfVar16 = (float *)FUN_0067f170();
      local_16c = (float **)*pfVar16;
      local_150 = (float **)pfVar16[1];
      pcVar10 = (char *)extraout_ECX_17;
      pfVar18 = (float *)0x12c;
    }
    if (param_1[0x3c7] != (float *)0xffffffff) {
      cVar4 = FUN_00956110(7,param_1[0x3c7],param_1,pcVar10);
      pcVar10 = (char *)0x1f4;
      if (cVar4 != '\0') {
        pfVar18 = (float *)0x1f4;
      }
    }
    if (param_1[0x3c7] != (float *)0xffffffff) {
      cVar4 = FUN_00956110(4,param_1[0x3c7],param_1,pcVar10);
      pcVar10 = (char *)0x1fe;
      if (cVar4 != '\0') {
        pfVar18 = (float *)0x1fe;
      }
    }
    if (param_1[0x3c7] != (float *)0xffffffff) {
      cVar4 = FUN_00956110(6,param_1[0x3c7],param_1,pcVar10);
      pcVar10 = (char *)0x258;
      if (cVar4 != '\0') {
        pfVar18 = (float *)0x258;
      }
    }
    if (param_1[0x3c7] != (float *)0xffffffff) {
      cVar4 = FUN_00956110(8,param_1[0x3c7],param_1,pcVar10);
      pcVar10 = (char *)0x64;
      if (cVar4 != '\0') {
        pfVar18 = (float *)0x64;
      }
    }
    if (param_1[0x3c7] != (float *)0xffffffff) {
      cVar4 = FUN_00956110(10,param_1[0x3c7],param_1,pcVar10);
      pcVar10 = (char *)0xc8;
      if (cVar4 != '\0') {
        pfVar18 = (float *)0xc8;
      }
    }
    if ((param_1[0x3c7] != (float *)0xffffffff) &&
       (cVar4 = FUN_00956110(0xb,param_1[0x3c7],param_1,pcVar10), cVar4 != '\0')) {
      pfVar18 = (float *)0x190;
    }
  }
  if ((param_1[0x2d9] == (float *)0x3) &&
     (pfVar16 = param_1[0x104], param_1[0x104] = (float *)((int)pfVar16 + 1),
     0x1e < (int)(float *)((int)pfVar16 + 1))) {
    pfVar18 = (float *)&DAT_00000004;
LAB_005a3562:
    param_1[0x2d9] = pfVar18;
    param_1[0x104] = (float *)0x0;
    param_1[0x2f0] = (float *)0x0;
    param_1[0x53] = (float *)0x3f800000;
  }
  else if (pfVar18 != param_1[0x2d9]) {
    if (pfVar18 == (float *)0x12c) {
      param_1[0xcd] = (float *)local_16c;
      param_1[0xce] = (float *)local_150;
    }
    else if (pfVar18 == (float *)0x258) {
      iVar8 = FUN_006be840();
      pfVar16 = *(float **)(iVar8 + 0x340);
      param_1[0xcd] = *(float **)(iVar8 + 0x33c);
      param_1[0xce] = pfVar16;
    }
    else if ((((((pfVar18 == (float *)0x190) || (pfVar18 == (float *)0x3)) ||
               (pfVar18 == (float *)&DAT_00000004)) ||
              ((pfVar18 == (float *)0x1f4 || (pfVar18 == (float *)0x1fe)))) ||
             (pfVar18 == (float *)0x2bc)) || (pfVar18 == (float *)0x2c6)) goto LAB_005a3562;
    param_1[0x2d9] = pfVar18;
    param_1[0x104] = (float *)0x0;
    param_1[0x2f0] = (float *)0x0;
    param_1[0x53] = (float *)0x3f800000;
    *(undefined *)(param_1 + 0x52) = 0;
  }
LAB_005a3586:
  if (param_1[0xb] == (float *)0x1) {
    FUN_0059e390();
    if (param_1[0x1f] != (float *)0x0) {
      cVar4 = FUN_0040add0();
      if (cVar4 != '\0') {
        FUN_0059e4c0();
        local_12c = (float **)0x8a;
        FUN_00956780();
        FUN_0092dc30(local_12c,0x3f800000,2,0,0x3f000000,0);
        local_12c = (float **)0x1ae;
        FUN_00956780();
        FUN_0092dc30(local_12c,0x3f800000,2,0,0x3f800000,0);
      }
      if ((param_1[0x1f] != (float *)0x0) && (cVar4 = FUN_0040add0(), cVar4 != '\0')) {
        FUN_0059e4c0();
        local_12c = (float **)0x1ab;
        FUN_00956780();
        FUN_0092dc30(local_12c,0x3f800000,2,0,0x3f800000,0);
        local_12c = (float **)0x1b0;
        FUN_00956780();
        FUN_0092dc30(local_12c,0x3f800000,2,0,0x3f000000,0);
        local_134 = (float **)((float)param_1[0xd0] + (float)DAT_00baa950);
        local_138 = (float **)((float)param_1[0xcf] + (float)DAT_00ba9fe4);
        FUN_0059e730(local_138,local_134);
      }
    }
    if ((param_1[0xb] == (float *)0x1) && (param_1[0x2d9] == (float *)0x10)) {
      param_1[0x62] = (float *)&DAT_00000004;
      *(undefined *)((int)param_1 + 0x173) = 0;
      FUN_006ae630();
      param_1[0x5a] = (float *)((uint)param_1[0x5a] | 0xc4000001);
      param_1[0x5b] = param_1[0x5b];
      param_1[0xe0] = param_1[0xe1];
      *(undefined *)(param_1 + 0xec) = 1;
      param_1[0xe2] = (float *)0x0;
      local_134 = (float **)0x3f800000;
      local_138 = (float **)0x40000000;
      FUN_006ac2a0(param_1[0xdc],0x40000000,0x3f800000,param_1[0xcc][0x12]);
      param_1[0xd8] = DAT_00c7b640;
      param_1[0xd9] = DAT_00c7b644;
      param_1[0xcf] = param_1[0xcd];
      param_1[0xd0] = param_1[0xce];
      pfVar16 = (float *)((float)param_1[0xdb] * DAT_00baa06c);
      param_1[0x104] = (float *)((int)param_1[0x104] + 1);
      param_1[0xdb] = pfVar16;
      if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x5a] = (float *)((uint)param_1[0x5a] & 0x39fffffe);
        param_1[0x5b] = (float *)((uint)param_1[0x5b] & 0xfffffff7);
        param_1[0xe0] = param_1[0xe1];
        *(undefined *)(param_1 + 0xec) = 0;
        param_1[0x2d9] = (float *)0x3;
        param_1[0x104] = (float *)0x0;
        iVar8 = FUN_00694fb0(param_1[10],param_1[0xb],0);
        param_1[0xe2] = *(float **)(iVar8 + 0x28);
      }
    }
  }
  if ((param_1[0x2d9] == (float *)0x2328) || (param_1[0x2d9] == (float *)0x2329)) {
    if (param_1[0x104] == (float *)0x0) {
      local_12c = (float **)0x1ad;
      FUN_00956780();
      FUN_0092dc30(local_12c,0x3f800000,2,0,0x3f800000,0);
      local_12c = (float **)0x1ae;
      FUN_00956780();
      FUN_0092dc30(local_12c,0x3f800000,2,0,0x3f800000,0);
      local_12c = (float **)0x1af;
      FUN_00956780();
      FUN_0092dc30(local_12c,0x3f800000,2,0,0x3f800000,0);
      local_12c = (float **)0x1b0;
      FUN_00956780();
      FUN_0092dc30(local_12c,0x3f800000,2,0,0x3f19999a,0);
    }
    if (param_1[0xb] == (float *)0x0) {
      param_1[0x62] = (float *)&DAT_00000004;
    }
    *(undefined *)((int)param_1 + 0x173) = 0;
    FUN_006ae630();
    param_1[0x5a] = (float *)((uint)param_1[0x5a] | 0xc4000001);
    param_1[0x5b] = (float *)((uint)param_1[0x5b] | 8);
    param_1[0xe0] = param_1[0xe1];
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0xe2] = (float *)0x0;
    local_134 = (float **)0x3f800000;
    local_138 = (float **)0x40000000;
    FUN_006ac2a0(param_1[0xdc],0x40000000,0x3f800000,param_1[0xcc][0x12]);
    param_1[0xd8] = DAT_00c7b640;
    param_1[0xd9] = DAT_00c7b644;
    pfVar16 = (float *)((float)param_1[0xdb] * DAT_00baa06c);
    param_1[0xcf] = param_1[0xcd];
    param_1[0xd0] = param_1[0xce];
    param_1[0x104] = (float *)((int)param_1[0x104] + 1);
    param_1[0xdb] = pfVar16;
    if (((param_1[0xb] == (float *)0x0) &&
        ((param_1[0x1f] == (float *)0x0 || (*(char *)(param_1 + 0x23) == '\0')))) &&
       ((*(int *)(DAT_00c71678 + 0x269c8) == 3 || (*(int *)(DAT_00c71678 + 0x269c8) == 1)))) {
      iVar8 = FUN_0092b190(0x196,1);
      param_1[0xd8] = DAT_00c7b640;
      param_1[0xd9] = DAT_00c7b644;
      FUN_006c0f30(0x196,1,0,0xffffffff);
      param_1[0x310] = local_194;
      param_1[0x311] = (float *)0x78;
      param_1[0x2d9] = (float *)0x10;
      param_1[0x104] = (float *)0x0;
      if (iVar8 == 0) {
        FUN_00a112c0(1,"First UG+ encounter");
        uVar28 = 0xb6271c;
      }
      else {
        uVar28 = 0xb6270c;
      }
      FUN_0040a380(uVar28);
    }
  }
  pfVar16 = param_1[0x5e];
  local_148 = 0.0;
  fVar20 = DAT_00baa490;
  ppfVar24 = DAT_00baa2d0;
  fVar26 = DAT_00baa904;
  if ((int)param_1[0x5f] - (int)pfVar16 >> 3 != 0) {
    do {
      iVar8 = *(int *)(DAT_00c71678 + 0x18300);
      iVar13 = (int)(((pfVar16[(int)local_148 * 2] * fVar20 + (float)param_1[0xcf]) - fVar26) /
                     fVar26 + (float)ppfVar24);
      iVar12 = (int)(((pfVar16[(int)local_148 * 2 + 1] * fVar20 + (float)param_1[0xd0]) -
                     DAT_00baaa00) / fVar26 + (float)ppfVar24);
      if ((((-1 < iVar13) && (iVar13 < *(int *)(iVar8 + 0xc))) && (-1 < iVar12)) &&
         ((iVar12 < *(int *)(iVar8 + 0x10) &&
          (iVar13 = iVar12 * *(int *)(iVar8 + 0xc) + iVar13, -1 < iVar13)))) {
        if (iVar13 < 0x1c0) {
          ppfVar19 = *(float ***)(iVar8 + 0x24 + iVar13 * 4);
        }
        else {
          ppfVar19 = (float **)0x0;
        }
        local_130 = ppfVar19;
        iVar8 = FUN_007f0800();
        fVar20 = DAT_00baa490;
        ppfVar24 = DAT_00baa2d0;
        fVar26 = DAT_00baa904;
        if (((iVar8 == 3) || (iVar8 == 2)) &&
           ((ppfVar19 != (float **)0x0 && (ppfVar19[0xf] == (float *)0x3)))) {
          pcVar2 = (code *)(*ppfVar19)[5];
          FUN_00431310();
          cVar4 = (*pcVar2)(0,local_25c);
          fVar20 = DAT_00baa490;
          ppfVar24 = DAT_00baa2d0;
          fVar26 = DAT_00baa904;
          if (cVar4 != '\0') {
            local_1a0 = *(float ***)(DAT_00c71678 + 0x18300);
            pfVar16 = local_1a0[3];
            fVar27 = (float)((int)local_130[9] % (int)pfVar16) * DAT_00baa904 + DAT_00baa904;
            fVar20 = (float)((int)local_130[9] / (int)pfVar16) * DAT_00baa904 + DAT_00baaa00;
            local_138 = (float **)(fVar27 - (float)param_1[0xcf]);
            local_134 = (float **)(fVar20 - (float)param_1[0xd0]);
            FUN_0067f170();
            iVar12 = (int)(((fVar27 + local_19c * fVar26) - fVar26) / fVar26 + (float)DAT_00baa2d0);
            iVar8 = (int)((((float)local_198 * fVar26 + fVar20) - DAT_00baaa00) / fVar26 +
                         (float)DAT_00baa2d0);
            fVar20 = DAT_00baa490;
            ppfVar24 = DAT_00baa2d0;
            if ((((-1 < iVar12) && (iVar12 < (int)pfVar16)) && (-1 < iVar8)) &&
               ((iVar8 < (int)local_1a0[4] && (iVar12 = (int)pfVar16 * iVar8 + iVar12, -1 < iVar12))
               )) {
              if (iVar12 < 0x1c0) {
                pfVar16 = local_1a0[iVar12 + 9];
              }
              else {
                pfVar16 = (float *)0x0;
              }
              FUN_0081e6e0(pfVar16,local_130);
              fVar20 = DAT_00baa490;
              ppfVar24 = DAT_00baa2d0;
              fVar26 = DAT_00baa904;
            }
          }
        }
      }
      pfVar16 = param_1[0x5e];
      local_148 = (float)((int)local_148 + 1);
    } while ((uint)local_148 < (uint)((int)param_1[0x5f] - (int)pfVar16 >> 3));
  }
  if ((local_142 != 0) || ((byte)local_190 != '\0')) {
    if (param_1[0x1f] == (float *)0x0) {
      local_140 = (float **)0x0;
      local_130 = (float **)0x0;
    }
    else {
      ppfVar24 = (float **)FUN_0040ace0();
      local_130 = ppfVar24;
      if (param_1[0x1f] == (float *)0x0) {
        local_140 = (float **)0x0;
      }
      else {
        local_140 = (float **)FUN_0040ace0();
        local_130 = ppfVar24;
      }
    }
    local_164 = (float *)0x0;
    ppfVar24 = local_130;
    fVar20 = DAT_00baa324;
    do {
      ppfVar19 = ppfVar24;
      bVar1 = local_142;
      if (local_164 == (float *)0x0) {
joined_r0x005a412e:
        if ((bVar1 != 0) && (ppfVar19 != (float **)0x0)) {
          local_13c = (float **)ppfVar19[1];
          ppfVar24 = DAT_00baa454;
          if (*(char *)(param_1 + 0x52) != '\0') {
            ppfVar24 = DAT_00baad50;
          }
          local_194 = (float *)((float)ppfVar24 * (float)*ppfVar19);
          local_168 = (float **)((float)local_194 / fVar20);
          local_174 = (float **)((float)local_13c / fVar20);
          iVar8 = FUN_006eef60();
          fVar20 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa704;
          local_1a0 = (float **)(fVar20 + fVar20);
          ppfVar24 = local_1a0;
          FUN_0041d520();
          local_198 = ppfVar24;
          iVar8 = FUN_006eef60();
          local_14c = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                      DAT_00ba9ff4;
          ppfVar24 = local_1a0;
          FUN_0041d540();
          local_12c = (float **)((float)ppfVar24 * local_14c * DAT_00baa854 + (float)local_168);
          local_14c = local_14c * (float)local_198 * DAT_00baa854 + (float)local_174;
          uVar5 = FUN_006eef60();
          local_138 = (float **)((float)local_194 + (float)param_1[0xcf]);
          local_134 = (float **)((float)local_13c + (float)param_1[0xd0]);
          FUN_00428b20(1000,0x59,&local_138,&DAT_00c7b640,0,0,uVar5);
          if (param_1[0xb] == (float *)0x1) {
            FUN_00682ed0();
            local_184 = (float)local_194 + (float)param_1[0xcf];
            local_180 = (float **)((float)local_13c + (float)param_1[0xd0]);
            FUN_00703330(&local_184,0x5f,10,0x41000000,local_7c,0,0);
          }
          local_194 = (float *)0x10;
          do {
            iVar8 = FUN_006eef60();
            fVar20 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_1a0 = (float **)(fVar20 + fVar20);
            ppfVar24 = local_1a0;
            FUN_0041d520();
            local_198 = ppfVar24;
            iVar8 = FUN_006eef60();
            local_148 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                        DAT_00ba9ff4;
            FUN_0041d540();
            local_1a0 = (float **)((float)local_1a0 * local_148 * (float)DAT_00baa6fc);
            local_148 = (float)((uint)(local_148 * (float)local_198 * (float)DAT_00baa6fc) &
                               DAT_00bacb40);
            uVar5 = FUN_006eef60();
            local_17c = (float)local_1a0 + (float)param_1[0xd8] * (float)DAT_00baa2d0;
            uVar28 = 0xc5d5ac;
            pTVar31 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar30 = 0;
            local_178 = (float *)(local_148 + (float)param_1[0xd9] * (float)DAT_00baa2d0);
            local_150 = (float **)(local_148 + (float)param_1[0xd0] + (float)DAT_00ba9fe4);
            local_154 = (float *)((float)local_12c + (float)local_1a0 + (float)param_1[0xcf]);
            uVar5 = FUN_00428b20(1000,0x58,&local_154,&local_17c,0,0,uVar5);
            piVar6 = (int *)__RTDynamicCast(uVar5,uVar30,pTVar31,uVar28);
            (**(code **)(*piVar6 + 0xc))();
            piVar6[0xd5] = 1000;
            piVar6[0x37] = 0;
            piVar6[0x38] = (int)local_13c;
            FUN_00682ed0();
            local_5c = 0x3df0f0f2;
            local_58 = 0x3d70f0f2;
            local_54 = 0x3ca0a0a1;
            (**(code **)(*piVar6 + 0x3c))(local_7c,0xffffffff,0xff);
            local_194 = (float *)((int)local_194 + -1);
          } while (local_194 != (float *)0x0);
          uVar17 = FUN_006eef60();
          ppfVar24 = local_130;
          fVar20 = DAT_00baa324;
          if ((uVar17 & 1) == 0) {
            uVar5 = FUN_006eef60();
            local_198 = (float **)((float)param_1[0xd8] + (float)DAT_00ba9fe4);
            local_174 = (float **)((float)param_1[0xd9] + DAT_00baa630);
            iVar8 = FUN_006eef60();
            fVar20 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_1a0 = (float **)(fVar20 + fVar20);
            ppfVar24 = local_1a0;
            FUN_0041d520();
            local_168 = ppfVar24;
            ppfVar24 = local_1a0;
            FUN_0041d540();
            local_170 = (float)ppfVar24 + (float)local_198;
            local_16c = (float **)((float)local_168 + (float)local_174);
            pTVar31 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar30 = 0;
            local_188 = (float *)(local_14c + (float)param_1[0xd0]);
            local_18c = (float)local_12c + (float)param_1[0xcf];
            uVar5 = FUN_00428b20(1000,4,&local_18c,&local_170,0,0,uVar5);
            piVar6 = (int *)__RTDynamicCast(uVar5,uVar30,pTVar31);
            (**(code **)(*piVar6 + 0xc))();
            ppfVar24 = local_130;
            fVar20 = DAT_00baa324;
          }
        }
      }
      else if (local_164 == (float *)0x1) {
        ppfVar19 = local_140;
        bVar1 = (byte)local_190;
        goto joined_r0x005a412e;
      }
      local_164 = (float *)((int)local_164 + 1);
    } while ((int)local_164 < 2);
  }
  cVar4 = FUN_0092e560();
  if (((cVar4 != '\0') && (param_1[0x2d9] != (float *)0x1f4)) && (param_1[0x2d9] != (float *)0x1fe))
  {
    fVar22 = (float10)FUN_0092e6e0();
    local_1a0 = (float **)(float)(fVar22 - (float10)DAT_00baa154);
    FUN_0092e620(0x1b8,local_1a0,0x3f800000);
  }
  if (param_1[0x2d9] != (float *)0x64) {
    FUN_0092e230();
    FUN_0092e230();
  }
LAB_005a472a:
  if (local_204[0] == '\0') {
    local_14 = CONCAT31(local_14._1_3_,8);
    FUN_00a648b0(0,0);
  }
  if (local_214[0] == '\0') {
    local_14 = CONCAT31(local_14._1_3_,9);
    FUN_00a648b0(0,0);
  }
  if (local_234[0] == '\0') {
    local_14 = CONCAT31(local_14._1_3_,10);
    FUN_00a648b0(0,0);
  }
  if (local_224[0] == '\0') {
    local_14 = CONCAT31(local_14._1_3_,0xb);
    FUN_00a648b0(0,0);
  }
  local_14 = 0xffffffff;
  if (local_1f4[0] == '\0') {
    local_14 = 0xc;
    FUN_00a648b0(0,0);
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

