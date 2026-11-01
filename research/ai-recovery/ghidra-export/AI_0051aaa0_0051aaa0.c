/* Local J460 decompiler output.
 * VA: 0x0051aaa0
 * Entry: 0051aaa0
 * Dispatcher: 0x006c2990
 * Types: 87
 * Identities: 87.0.0,87.1.0
 * Evidence: dispatcher=0x006c2990; end=0x0051b570; instructions=656
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=87; identities=87.0.0,87.1.0; dispatcher=0x006c2990;
   end=0x0051b570; instructions=656 */

void __fastcall AI_0051aaa0(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  undefined auVar3 [16];
  char cVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  undefined4 uVar8;
  int *piVar9;
  undefined4 *puVar10;
  int *piVar11;
  byte **ppbVar12;
  undefined4 extraout_ECX;
  byte *pbVar13;
  bool bVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined4 uVar18;
  TypeDescriptor *pTVar19;
  TypeDescriptor *pTVar20;
  undefined4 uVar21;
  undefined4 uVar22;
  undefined4 local_198 [8];
  undefined4 local_178;
  undefined4 uStack_174;
  undefined4 local_170;
  undefined4 local_16c [8];
  undefined4 local_14c;
  undefined4 uStack_148;
  undefined4 local_144;
  float local_140;
  float local_13c;
  float local_138;
  float local_134;
  float local_130;
  float local_12c;
  int local_7c [4];
  undefined4 local_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  uint uStack_60;
  undefined4 local_58;
  uint local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [5];
  undefined uStack_3b;
  undefined2 uStack_3a;
  undefined4 uStack_38;
  undefined uStack_34;
  undefined3 uStack_33;
  undefined4 local_30;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  uVar22 = _UNK_00bac4bc;
  uVar21 = _UNK_00bac4b8;
  uVar18 = _UNK_00bac4b4;
  uVar8 = _DAT_00bac4b0;
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af4485;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar7 = *(int *)(param_1 + 0xb64);
  local_24 = uVar5;
  if (iVar7 == 0) {
    puVar10 = (undefined4 *)(param_1 + 0x1e4);
    *(undefined4 *)(param_1 + 0xb64) = 4;
    local_14c = 0xbe48c8ca;
    uStack_148 = 0x3f028283;
    local_144 = 0x3e48c8ca;
    if (puVar10 != local_16c) {
      *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
      *(undefined8 *)(param_1 + 0x204) = 0x3f028283be48c8ca;
      *puVar10 = uVar8;
      *(undefined4 *)(param_1 + 0x1e8) = uVar18;
      *(undefined4 *)(param_1 + 0x1ec) = uVar21;
      *(undefined4 *)(param_1 + 0x1f0) = uVar22;
      *(undefined4 *)(param_1 + 0x20c) = 0x3e48c8ca;
    }
    uVar21 = _UNK_00baca2c;
    uVar18 = _UNK_00baca28;
    uVar8 = _UNK_00baca24;
    puStack_20 = &stack0xfffffffc;
    if (*(int *)(param_1 + 0x2c) == 1) {
      local_178 = 0x3f800000;
      uStack_174 = 0x3f038384;
      local_170 = 0x3b808081;
      puStack_20 = &stack0xfffffffc;
      if (puVar10 != local_198) {
        *puVar10 = _DAT_00baca20;
        *(undefined4 *)(param_1 + 0x1e8) = uVar8;
        *(undefined4 *)(param_1 + 0x1ec) = uVar18;
        *(undefined4 *)(param_1 + 0x1f0) = uVar21;
        *(undefined8 *)(param_1 + 0x204) = 0x3f0383843f800000;
        *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
        *(undefined4 *)(param_1 + 0x20c) = 0x3b808081;
        puStack_20 = &stack0xfffffffc;
      }
    }
    goto LAB_0051b548;
  }
  if (*(char *)(param_1 + 0x173) != '\0') {
    puStack_20 = &stack0xfffffffc;
    if (((DAT_00baae00 < *(float *)(param_1 + 0x380)) &&
        (puStack_20 = &stack0xfffffffc, uVar6 = FUN_006eef60(uVar5), uVar6 % 100 < 0xf)) &&
       (*(int *)(param_1 + 0x2c) == 0)) {
      FUN_006c0f30(0xee,0,0,0xffffffff);
      *(undefined *)(param_1 + 0x173) = 0;
      *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
      uVar5 = FUN_006eef60(uVar5);
      *(uint *)(param_1 + 0xba0) = uVar5 % 0x14 + 0x14;
    }
    goto LAB_0051b548;
  }
  if ((0.0 < *(float *)(param_1 + 0x14)) &&
     (puVar10 = *(undefined4 **)(param_1 + 8), puVar10 != *(undefined4 **)(param_1 + 0xc))) {
    do {
      local_13c = (float)puVar10[3];
      if (((((puVar10[2] & 6) != 0) && ((((uint)puVar10[0xc] >> 1 & 1) == 0 && (puVar10[4] != 1))))
          && (puVar10[6] != 1)) && ((puVar10[6] != 3 && ((puVar10[2] & 0x1000) == 0)))) {
        *puVar10 = 0;
      }
      puVar10 = puVar10 + 0xe;
    } while (puVar10 != *(undefined4 **)(param_1 + 0xc));
    iVar7 = *(int *)(param_1 + 0xb64);
  }
  if (iVar7 == 4) {
    puStack_20 = &stack0xfffffffc;
    uVar6 = FUN_006eef60(uVar5);
    if (uVar6 % 10 == 0) {
      iVar7 = FUN_006eef60(uVar5);
      local_134 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa2d0 + DAT_00baa198;
      uVar8 = FUN_006eef60();
      local_130 = *(float *)(param_1 + 0x33c) + DAT_00ba9fe4;
      local_12c = *(float *)(param_1 + 0x340) + DAT_00baa454;
      uVar21 = 0;
      pTVar20 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
      pTVar19 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar18 = 0;
      uVar8 = FUN_00428b20(1000,7,&local_130,&DAT_00c7b640,param_1,0,uVar8);
      piVar9 = (int *)__RTDynamicCast(uVar8,uVar18,pTVar19,pTVar20,uVar21);
      piVar9[0x39] = (int)local_134;
      piVar9[0x3a] = (int)local_134;
      if (*(int *)(param_1 + 0x2c) == 0) {
        _local_40 = ZEXT816(0);
        local_30 = 0;
        puVar10 = &local_50;
        local_2c = 0x3f000000;
        local_50 = _DAT_00bac030;
        uStack_4c = _UNK_00bac034;
        uStack_48 = _UNK_00bac038;
        uStack_44 = _UNK_00bac03c;
        local_28 = 0;
      }
      else {
        puVar10 = (undefined4 *)(param_1 + 0x1e4);
      }
      (**(code **)(*piVar9 + 0x3c))(puVar10,0xffffffff,0xff,0,1);
      (**(code **)(*piVar9 + 0xc))();
    }
    auVar3 = _local_40;
    local_28 = 0xf;
    local_2c = 8;
    local_40[4] = s_WalkHori_00b1dd30[0];
    uStack_3b = s_WalkHori_00b1dd30[1];
    uStack_3a._0_1_ = s_WalkHori_00b1dd30[2];
    uStack_3a._1_1_ = s_WalkHori_00b1dd30[3];
    uStack_38._0_1_ = s_WalkHori_00b1dd30[4];
    uStack_38._1_1_ = s_WalkHori_00b1dd30[5];
    uStack_38._2_1_ = s_WalkHori_00b1dd30[6];
    uStack_38._3_1_ = s_WalkHori_00b1dd30[7];
    uStack_33 = auVar3._13_3_;
    uStack_34 = 0;
    local_54 = 0xf;
    local_58 = 8;
    uStack_68._0_1_ = s_WalkHori_00b1dd30[0];
    uStack_68._1_1_ = s_WalkHori_00b1dd30[1];
    uStack_68._2_1_ = s_WalkHori_00b1dd30[2];
    uStack_68._3_1_ = s_WalkHori_00b1dd30[3];
    uStack_64._0_1_ = s_WalkHori_00b1dd30[4];
    uStack_64._1_1_ = s_WalkHori_00b1dd30[5];
    uStack_64._2_1_ = s_WalkHori_00b1dd30[6];
    uStack_64._3_1_ = s_WalkHori_00b1dd30[7];
    uStack_60 = uStack_60 & 0xffffff00;
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    FUN_006c1330(&uStack_68,local_40 + 4,0x3dcccccd);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < local_54) {
      uVar6 = local_54 + 1;
      uVar5 = uStack_68;
      if (0xfff < uVar6) {
        uVar5 = *(uint *)(uStack_68 - 4);
        uVar6 = local_54 + 0x24;
        if (0x1f < (uStack_68 - uVar5) - 4) goto LAB_0051aea6;
      }
      FUN_00aef15c(uVar5,uVar6);
    }
    local_14 = -1;
    local_58 = 0;
    local_54 = 0xf;
    uStack_68 = uStack_68 & 0xffffff00;
    if (0xf < local_28) {
      uVar5 = local_28 + 1;
      iVar7 = stack0xffffffc4;
      if (0xfff < uVar5) {
        iVar7 = *(int *)(stack0xffffffc4 + -4);
        uVar5 = local_28 + 0x24;
        if (0x1f < (stack0xffffffc4 - iVar7) - 4U) {
LAB_0051aea6:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar7,uVar5);
    }
    if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
      uVar22 = 1;
      uVar21 = 0;
      uVar18 = 0x3f19999a;
      uVar8 = FUN_006bec40(&local_130,0);
      FUN_007e33c0(uVar8,uVar18,uVar21,uVar22);
    }
    else {
      iVar7 = FUN_006be840();
      local_130 = *(float *)(iVar7 + 0x33c);
      local_12c = *(float *)(iVar7 + 0x340);
      FUN_007e4940(&local_130,0);
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar8 = FUN_006be840();
      cVar4 = FUN_006d7d60(uVar8);
      if (((cVar4 != '\0') && (*(char *)(param_1 + 0xb40) != '\0')) &&
         (uVar5 = FUN_006eef60(), uVar5 % 3 == 0)) goto LAB_0051afa3;
    }
    else {
      cVar4 = FUN_009561e0(10,*(int *)(param_1 + 0xf1c),param_1,0);
      if (cVar4 != '\0') {
LAB_0051afa3:
        if (*(int *)(param_1 + 0x2c) == 0) {
          uVar18 = 0x28;
          uVar8 = 0xa5;
        }
        else {
          if ((*(int *)(param_1 + 0x2c) != 1) || (uVar5 = FUN_006eef60(), uVar5 % 3 != 0))
          goto LAB_0051aff5;
          uVar18 = 0x78;
          uVar8 = 0xa7;
        }
        FUN_006d6ba0(uVar8,0x3f800000,uVar18,0,0x3f800000);
      }
    }
LAB_0051aff5:
    *(bool *)(param_1 + 0x148) =
         *(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar5 = FUN_006eef60();
      cVar4 = uVar5 % 0x3c == 0;
    }
    else {
      cVar4 = FUN_006cae60(0,7);
    }
    if (((cVar4 != '\0') && (*(int *)(param_1 + 0x34) != 0x38a)) &&
       ((*(uint *)(param_1 + 0x168) & 0x1000a00) == 0)) {
      FUN_006d9050(1);
      iVar7 = FUN_006be840();
      local_134 = *(float *)(param_1 + 0x33c) - *(float *)(iVar7 + 0x33c);
      fVar16 = *(float *)(param_1 + 0x340) - *(float *)(iVar7 + 0x340);
      if (*(int *)(param_1 + 0xf1c) != -1) {
        local_134 = *(float *)(param_1 + 0xf20);
        fVar16 = *(float *)(param_1 + 0xf24);
      }
      if (fVar16 * fVar16 + local_134 * local_134 < DAT_00baac44) {
        *(undefined4 *)(param_1 + 0x410) = 0;
        *(undefined4 *)(param_1 + 0xb64) = 8;
        cVar4 = FUN_0040a5d0("Attack",1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
        *(bool *)(param_1 + 0x148) = DAT_00ba9fe4 < local_134;
      }
    }
    goto LAB_0051b548;
  }
  if (*(int *)(param_1 + 0xf1c) == -1) {
    *(float *)(param_1 + 0xf20) = DAT_00c7b640;
    fVar16 = DAT_00c7b644;
    puStack_20 = &stack0xfffffffc;
LAB_0051b19c:
    *(float *)(param_1 + 0xf24) = fVar16;
  }
  else {
    FUN_006d85a0(&local_130);
    if (((NAN(local_130) || NAN(DAT_00c7b640)) == (local_130 == DAT_00c7b640)) ||
       ((NAN(local_12c) || NAN(DAT_00c7b644)) == (local_12c == DAT_00c7b644))) {
      *(float *)(param_1 + 0xf20) = local_130;
      fVar16 = local_12c;
      goto LAB_0051b19c;
    }
  }
  fVar16 = DAT_00baa354;
  if ((*(int *)(param_1 + 0x7c) != 0) &&
     (cVar4 = FUN_0040add0("Shoot"), fVar16 = DAT_00baa354, cVar4 != '\0')) {
    iVar7 = FUN_006be840();
    local_138 = *(float *)(iVar7 + 0x33c);
    local_134 = *(float *)(iVar7 + 0x340);
    if ((*(int *)(param_1 + 0xf1c) != -1) &&
       ((fVar16 = *(float *)(param_1 + 0xf20),
        (NAN(fVar16) || NAN(DAT_00c7b640)) == (fVar16 == DAT_00c7b640) ||
        ((NAN(*(float *)(param_1 + 0xf24)) || NAN(DAT_00c7b644)) ==
         (*(float *)(param_1 + 0xf24) == DAT_00c7b644))))) {
      local_138 = fVar16 * DAT_00baaa44 + *(float *)(param_1 + 0x33c);
      local_134 = *(float *)(param_1 + 0xf24) * DAT_00baaa44 + *(float *)(param_1 + 0x340);
    }
    FUN_006d6ba0(0xd5,0x3f333333,2,0,0x3f800000);
    uVar8 = AI_0043ef30();
    piVar9 = (int *)FUN_006ccdd0(1,&local_138,0x41200000,uVar8);
    iVar7 = *(int *)(param_1 + 0x2c);
    piVar9[0x108] = 0x3fcccccd;
    uVar22 = _UNK_00bac7bc;
    uVar21 = _UNK_00bac7b8;
    uVar18 = _UNK_00bac7b4;
    uVar8 = _DAT_00bac7b0;
    if (iVar7 == 1) {
      piVar9[0x10f] = piVar9[0x10f] | 8;
      local_50 = uVar8;
      uStack_4c = uVar18;
      uStack_48 = uVar21;
      uStack_44 = uVar22;
      piVar9[0x10e] = piVar9[0x10e];
      _local_40 = ZEXT816(0);
      local_30 = 0x3f800000;
      local_2c = 0x3e99999a;
      local_28 = 0;
      (**(code **)(*piVar9 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
      piVar11 = piVar9 + 0x3c;
      local_130 = DAT_00baa7e8;
      if (*(char *)(param_1 + 0x148) != '\0') {
        local_130 = DAT_00baadb4;
      }
      local_138 = *(float *)(param_1 + 0x33c) + DAT_00ba9fe4;
      local_134 = *(float *)(param_1 + 0x340) + DAT_00baa630;
    }
    else {
      piVar9[0x10f] = piVar9[0x10f];
      piVar9[0x10e] = piVar9[0x10e] | 2;
      FUN_00435a80();
      local_6c = _DAT_00bac500;
      uStack_68 = _UNK_00bac504;
      uStack_64._0_1_ = UNK_00bac508;
      uStack_64._1_1_ = UNK_00bac509;
      uStack_64._2_1_ = UNK_00bac50a;
      uStack_64._3_1_ = UNK_00bac50b;
      uStack_60 = _UNK_00bac50c;
      (**(code **)(*piVar9 + 0x3c))(extraout_ECX,0xffffffff,0xff,0,1);
      local_130 = DAT_00baa7e8;
      if (*(char *)(param_1 + 0x148) != '\0') {
        local_130 = DAT_00baadb4;
      }
      piVar11 = local_7c;
      local_140 = *(float *)(param_1 + 0x33c) + DAT_00ba9fe4;
      local_13c = *(float *)(param_1 + 0x340) + DAT_00baa630;
    }
    local_12c = -15.0;
    FUN_006d7cf0(&local_130,piVar11,&DAT_00c7b640);
    fVar16 = (float)piVar9[0xd8] * DAT_00baa2e4;
    fVar17 = (float)piVar9[0xd9] * DAT_00baa2e4;
    piVar9[0x106] = (int)((float)piVar9[0x106] - DAT_00baa304);
    piVar9[0xd8] = (int)fVar16;
    fVar16 = DAT_00baa354;
    fVar15 = (float)piVar9[0x105] * DAT_00baa354;
    piVar9[0xd9] = (int)fVar17;
    piVar9[0x105] = (int)(fVar15 - DAT_00baa6fc);
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * fVar16;
  if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar2 != (byte **)0x0) {
      ppbVar12 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar12 = (byte **)*ppbVar2;
      }
      pbVar13 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar12;
        bVar14 = bVar1 < *pbVar13;
        if (bVar1 != *pbVar13) {
LAB_0051b510:
          uVar5 = -(uint)bVar14 | 1;
          goto LAB_0051b515;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar12 + 1);
        bVar14 = bVar1 < pbVar13[1];
        if (bVar1 != pbVar13[1]) goto LAB_0051b510;
        ppbVar12 = (byte **)((int)ppbVar12 + 2);
        pbVar13 = pbVar13 + 2;
      } while (bVar1 != 0);
      uVar5 = 0;
LAB_0051b515:
      if ((uVar5 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
      goto LAB_0051b548;
    }
    cVar4 = FUN_0040a5d0(&DAT_00b1bc54,1);
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
  }
LAB_0051b548:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

