/* Local J460 decompiler output.
 * VA: 0x00457840
 * Entry: 00457840
 * Dispatcher: 0x006c2990
 * Types: 64
 * Identities: 64.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00458870; instructions=960
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=64; identities=64.0.0; dispatcher=0x006c2990;
   end=0x00458870; instructions=960 */

void __fastcall AI_00457840(float param_1)

{
  code *pcVar1;
  undefined4 uVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  int *piVar7;
  int iVar8;
  int iVar9;
  float fVar10;
  float *pfVar11;
  float *pfVar12;
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
  uint uVar13;
  bool bVar14;
  bool bVar15;
  bool bVar16;
  float fVar17;
  undefined4 uVar18;
  TypeDescriptor *pTVar19;
  TypeDescriptor *pTVar20;
  char *pcVar21;
  undefined4 uVar22;
  undefined local_250 [8];
  undefined local_248 [8];
  undefined4 local_240 [8];
  undefined4 local_220;
  undefined4 uStack_21c;
  undefined4 local_218;
  float local_214;
  float local_210;
  undefined4 local_20c;
  undefined4 local_208;
  float local_204;
  float local_200;
  float local_1fc;
  float local_1f8;
  undefined local_1f4 [4];
  float local_1f0;
  float local_1ec;
  float local_1e8;
  undefined4 local_1e4;
  float local_1e0;
  float local_1dc;
  float local_1d8;
  char local_1d1;
  undefined local_128 [60];
  undefined4 local_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  undefined4 local_dc;
  undefined4 local_d8;
  undefined4 local_d4;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  uint local_54;
  undefined local_50;
  undefined4 local_44;
  uint local_40;
  uint local_3c;
  undefined local_38;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af2525;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_1e8 = param_1;
  local_24 = uVar4;
  if (*(int *)((int)param_1 + 0xb64) == 0) {
    *(undefined4 *)((int)param_1 + 0xb64) = 4;
    uVar2 = _UNK_00bac4bc;
    uVar22 = _UNK_00bac4b8;
    uVar18 = _UNK_00bac4b4;
    uVar6 = _DAT_00bac4b0;
    puStack_20 = &stack0xfffffffc;
    if (*(int *)((int)param_1 + 0x30) == 1) {
      local_220 = 0xbe48c8ca;
      uStack_21c = 0x3f028283;
      local_218 = 0x3e48c8ca;
      puStack_20 = &stack0xfffffffc;
      if ((undefined4 *)((int)param_1 + 0x1e4) != local_240) {
        *(undefined (*) [16])((int)param_1 + 500) = ZEXT816(0);
        *(undefined8 *)((int)param_1 + 0x204) = 0x3f028283be48c8ca;
        *(undefined4 *)((int)param_1 + 0x1e4) = uVar6;
        *(undefined4 *)((int)param_1 + 0x1e8) = uVar18;
        *(undefined4 *)((int)param_1 + 0x1ec) = uVar22;
        *(undefined4 *)((int)param_1 + 0x1f0) = uVar2;
        *(undefined4 *)((int)param_1 + 0x20c) = 0x3e48c8ca;
        puStack_20 = &stack0xfffffffc;
      }
    }
    goto LAB_00458846;
  }
  *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
  cVar3 = FUN_006ac710(3,0);
  if ((cVar3 != '\0') && (*(int *)((int)param_1 + 0x30) == 0)) {
    iVar5 = FUN_006eef60(uVar4);
    local_1f0 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
                DAT_00baa2d0 + DAT_00baa280;
    uVar6 = FUN_006eef60();
    iVar5 = FUN_006eef60();
    local_1d8 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
                DAT_00baa704;
    local_1d8 = local_1d8 + local_1d8;
    local_1e0 = local_1d8;
    FUN_0041d520();
    fVar17 = local_1d8;
    FUN_0041d540();
    uVar22 = 0;
    local_1fc = fVar17 * DAT_00baa87c + *(float *)((int)param_1 + 0x33c);
    pTVar20 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
    local_1f8 = local_1e0 * DAT_00baa87c + *(float *)((int)param_1 + 0x340);
    pTVar19 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar18 = 0;
    uVar6 = FUN_00428b20(1000,7,&local_1fc,&DAT_00c7b640,param_1,0,uVar6);
    piVar7 = (int *)__RTDynamicCast(uVar6,uVar18,pTVar19,pTVar20,uVar22);
    pcVar1 = *(code **)(*piVar7 + 0x3c);
    piVar7[0x39] = (int)local_1f0;
    piVar7[0x3a] = (int)local_1f0;
    (*pcVar1)((int)param_1 + 0x1e4,0xffffffff,0xff,0,1);
    (**(code **)(*piVar7 + 0xc))();
  }
  if ((*(int *)((int)param_1 + 0xbc0) == 0) &&
     (*(float *)((int)param_1 + 0x380) / *(float *)((int)param_1 + 900) < DAT_00baa2d0)) {
    *(undefined4 *)((int)param_1 + 0xbc0) = 1;
    uVar6 = FUN_006eef60(uVar4);
    iVar5 = FUN_0040b220(1);
    local_1fc = *(float *)((int)param_1 + 0x33c) + *(float *)(iVar5 + 0x40);
    local_1f8 = *(float *)(iVar5 + 0x44) + *(float *)((int)param_1 + 0x340);
    piVar7 = (int *)FUN_00428b20(1000,1,&local_1fc,&DAT_00c7b640,param_1,0,uVar6);
    FUN_006b45c0();
    iVar5 = FUN_0040b220(1);
    *(undefined *)(iVar5 + 0x74) = 0;
    (**(code **)(*piVar7 + 0x3c))((int)param_1 + 0x1e4,0xffffffff,0xff,0,1);
    *(undefined4 *)((int)param_1 + 0x418) = DAT_00c7b640;
    *(undefined4 *)((int)param_1 + 0x41c) = DAT_00c7b644;
    *(undefined4 *)((int)param_1 + 0x420) = DAT_00c7b640;
    *(undefined4 *)((int)param_1 + 0x424) = DAT_00c7b644;
  }
  cVar3 = FUN_006ac710(7,0);
  if (cVar3 != '\0') {
    uVar6 = FUN_006eef60(uVar4);
    uVar22 = 0;
    pTVar20 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
    pTVar19 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar18 = 0;
    uVar6 = FUN_00428b20(1000,(*(int *)((int)param_1 + 0x30) != 0) * '\x02' + '\x17',
                         (int)param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar6);
    piVar7 = (int *)__RTDynamicCast(uVar6,uVar18,pTVar19,pTVar20,uVar22);
    fVar17 = DAT_00c37940 * DAT_00baa630;
    piVar7[0x39] = (int)(DAT_00c3793c * DAT_00baa630);
    piVar7[0x3a] = (int)fVar17;
    (**(code **)(*piVar7 + 0xc))();
  }
  fVar17 = 4.203895e-45;
  if ((*(uint *)((int)param_1 + 0x16c) & 0x10000000) == 0) {
    fVar17 = 5.605194e-45;
  }
  local_1e0 = fVar17;
  iVar5 = FUN_006be840();
  local_1f0 = *(float *)(iVar5 + 0x33c) - *(float *)((int)param_1 + 0x33c);
  local_1d8 = *(float *)(iVar5 + 0x340) - *(float *)((int)param_1 + 0x340);
  if (*(int *)((int)param_1 + 0xbc0) == 0) {
    iVar5 = *(int *)((int)param_1 + 0xb64);
    if (iVar5 == 4) {
      FUN_007e5340(0x3f800000,0);
      local_40 = 0xf;
      local_44 = 4;
      local_54 = 0x6b6c6157;
      local_50 = 0;
      local_28 = 0xf;
      local_2c = 4;
      local_3c = 0x6b6c6157;
      local_38 = 0;
      local_14._0_1_ = 1;
      local_14._1_3_ = 0;
      FUN_006c1330(&local_3c,&local_54,0x40400000);
      local_14 = (uint)local_14._1_3_ << 8;
      if (0xf < local_28) {
        uVar13 = local_28 + 1;
        uVar4 = local_3c;
        if (0xfff < uVar13) {
          uVar4 = *(uint *)(local_3c - 4);
          uVar13 = local_28 + 0x24;
          if (0x1f < (local_3c - uVar4) - 4) goto LAB_00457d6c;
        }
        FUN_00aef15c(uVar4,uVar13);
      }
      local_14 = -1;
      local_2c = 0;
      local_28 = 0xf;
      local_3c = local_3c & 0xffffff00;
      if (0xf < local_40) {
        uVar13 = local_40 + 1;
        uVar4 = local_54;
        if (0xfff < uVar13) {
          uVar4 = *(uint *)(local_54 - 4);
          uVar13 = local_40 + 0x24;
          if (0x1f < (local_54 - uVar4) - 4) {
LAB_00457d6c:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(uVar4,uVar13);
      }
      local_44 = 0;
      local_40 = 0xf;
      local_54 = local_54 & 0xffffff00;
      if (((*(uint *)((int)param_1 + 0x16c) & 0x10000000) == 0) ||
         ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
        cVar3 = FUN_00417430(0,0x10000000);
        if (cVar3 == '\0') {
          fVar10 = (float)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                          *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4));
          fVar17 = 0.0;
          if (0 < (int)fVar10) {
            fVar17 = fVar10;
          }
        }
        else {
          iVar5 = FUN_006ac7e0(0x1f,0,extraout_ECX,0);
          iVar8 = FUN_006ac7e0(0x1d,1,extraout_ECX_00,0);
          iVar9 = FUN_006ac7e0(0x17,0,extraout_ECX_01,0);
          local_1e8 = (float)(iVar9 + iVar5 + iVar8);
          fVar17 = local_1e8;
        }
        uVar4 = FUN_006eef60();
        if ((uVar4 % 0x28 == 0) && ((int)fVar17 < (int)local_1e0)) {
          pcVar21 = "Attack2";
LAB_00457e45:
          *(undefined4 *)((int)param_1 + 0xb64) = 0xd;
LAB_00457e4f:
          *(undefined4 *)((int)param_1 + 0x410) = 0;
LAB_00457e59:
          cVar3 = FUN_0040a5d0(pcVar21,1);
          if (cVar3 != '\0') {
            FUN_0040a1b0();
            *(undefined *)((int)param_1 + 0x8c) = 1;
          }
        }
        else {
          uVar4 = FUN_006eef60();
          if (uVar4 % 0x14 == 0) {
            fVar17 = local_1d8 * local_1d8 + local_1f0 * local_1f0;
            FUN_00435a50();
            if (fVar17 < DAT_00baaac0) {
              *(undefined4 *)((int)param_1 + 0xb64) = 8;
              *(undefined4 *)((int)param_1 + 0x410) = 0;
              pcVar21 = "Attack1";
              *(bool *)((int)param_1 + 0x148) = local_1f0 < 0.0;
              goto LAB_00457e59;
            }
          }
        }
      }
    }
    else if (iVar5 == 0xd) {
      iVar8 = *(int *)((int)param_1 + 0x410);
      iVar5 = iVar8 + 1;
      *(int *)((int)param_1 + 0x410) = iVar5;
      if (iVar8 == 0x19) {
        FUN_006d6ba0(0x72,0x3f800000,2,0,0x3f800000);
        FUN_006d6ba0(0x109,0x3f99999a,2,0,0x3f800000);
        pfVar11 = (float *)FUN_0067f070(&local_204);
        local_1e8 = 2.802597e-45;
        local_1f0 = *pfVar11 * DAT_00baa81c;
        local_1e0 = pfVar11[1] * DAT_00baa81c;
        cVar3 = FUN_00417430(0,0x10000000);
        if (cVar3 == '\0') {
          fVar17 = 2.802597e-45;
        }
        else {
          iVar5 = FUN_006ac7e0(0x17,0,extraout_ECX_02,0);
          iVar8 = FUN_006ac7e0(0x1f,0,extraout_ECX_03,0);
          iVar9 = FUN_006ac7e0(0x1d,1,extraout_ECX_04,0);
          fVar10 = (float)((((int)fVar17 - iVar5) - iVar8) - iVar9);
          fVar17 = 2.802597e-45;
          local_1e8 = 2.802597e-45;
          if ((int)fVar10 < 3) {
            fVar17 = fVar10;
            local_1e8 = fVar10;
          }
        }
        if (*(int *)((int)param_1 + 0x30) == 0) {
          uVar4 = FUN_006eef60();
          local_1d8 = (float)((uVar4 & 1) << 3 | 0x17);
          if (0 < (int)local_1e8) {
            uVar6 = FUN_006eef60();
            local_1fc = local_1f0 + *(float *)((int)param_1 + 0x33c);
            local_1f8 = local_1e0 + *(float *)((int)param_1 + 0x340);
            FUN_00428b20(local_1d8,0,&local_1fc,&DAT_00c7b640,param_1,0,uVar6);
          }
          if (1 < (int)local_1e8) {
            uVar6 = FUN_006eef60();
            local_1ec = *(float *)((int)param_1 + 0x33c) - local_1f0;
            local_1e8 = *(float *)((int)param_1 + 0x340) - local_1e0;
            FUN_00428b20(local_1d8,0,&local_1ec,&DAT_00c7b640,param_1,0,uVar6);
          }
        }
        else if (0 < (int)fVar17) {
          uVar6 = FUN_006eef60();
          local_1dc = local_1f0 + *(float *)((int)param_1 + 0x33c);
          local_1d8 = local_1e0 + *(float *)((int)param_1 + 0x340);
          FUN_00428b20(0x1d,1,&local_1dc,&DAT_00c7b640,param_1,0,uVar6);
        }
      }
      else {
LAB_0045813e:
        bVar16 = SBORROW4(iVar5,0x39);
        bVar15 = iVar5 + -0x39 < 0;
        bVar14 = iVar5 == 0x39;
LAB_004585d6:
        if (!bVar14 && bVar16 == bVar15) {
          *(undefined4 *)((int)param_1 + 0xb64) = 4;
        }
      }
    }
    else if (iVar5 == 8) {
      iVar8 = *(int *)((int)param_1 + 0x410);
      iVar5 = iVar8 + 1;
      *(int *)((int)param_1 + 0x410) = iVar5;
      if (iVar8 != 0x16) {
        bVar16 = SBORROW4(iVar5,0x28);
        bVar15 = iVar8 + -0x27 < 0;
        bVar14 = iVar5 == 0x28;
        goto LAB_004585d6;
      }
LAB_004585eb:
      local_1e0 = DAT_00baa454;
      fVar17 = DAT_00baa528;
      if ((*(int *)((int)param_1 + 0xc64) == 0x12) ||
         (fVar17 = DAT_00baa2d0, *(int *)((int)param_1 + 0xc64) == 0x13)) {
        local_1e0 = fVar17;
      }
      local_1d8 = 1.45735e-43;
      FUN_00956780();
      FUN_0092dc30(local_1d8,0x3f800000,2,0,local_1e0,0);
      if (*(int *)((int)param_1 + 0x30) == 0) {
        uVar6 = AI_0043ef30();
        iVar5 = FUN_006be840();
        local_1e4 = *(undefined4 *)(iVar5 + 0x33c);
        local_1e0 = *(float *)(iVar5 + 0x340);
        piVar7 = (int *)FUN_006ccdd0(1,&local_1e4,0x41200000,uVar6);
        fVar17 = (float)piVar7[0x106] - DAT_00baa1f8;
        piVar7[0x10e] = piVar7[0x10e] | 6;
        piVar7[0x10f] = piVar7[0x10f];
        piVar7[0x108] = 0x3fcccccd;
        piVar7[0x106] = (int)fVar17;
        piVar7[0x105] = (int)((float)piVar7[0x105] * DAT_00baa354 - DAT_00baa83c);
        local_80 = _DAT_00bac7b0;
        uStack_7c = _UNK_00bac7b4;
        uStack_78 = _UNK_00bac7b8;
        uStack_74 = _UNK_00bac7bc;
        local_60 = 0;
        local_5c = 0;
        local_58 = 0;
        local_70 = _DAT_00bac500;
        uStack_6c = _UNK_00bac504;
        uStack_68 = _UNK_00bac508;
        uStack_64 = _UNK_00bac50c;
        (**(code **)(*piVar7 + 0x3c))(&local_80,0xffffffff,0xff,0,1);
      }
      else {
        AI_0043ef30();
        local_ec = _DAT_00bac9c0;
        uStack_e8 = _UNK_00bac9c4;
        uStack_e4 = _UNK_00bac9c8;
        uStack_e0 = _UNK_00bac9cc;
        local_dc = 0x3e48c8ca;
        local_214 = *(float *)((int)param_1 + 0x33c) + 0.0;
        local_d8 = 0x3e48c8ca;
        local_d4 = 0x3e48c8ca;
        local_210 = *(float *)((int)param_1 + 0x340) - DAT_00baa8d0;
        local_20c = 0x41000000;
        local_208 = 0x40c00000;
        FUN_006cb2e0(&local_214,&local_20c,9,local_128);
      }
    }
  }
  else if (*(int *)((int)param_1 + 0xbc0) == 1) {
    iVar5 = *(int *)((int)param_1 + 0xb64);
    if (iVar5 == 4) {
      FUN_007e6650(0);
      cVar3 = FUN_00417430(0,0x10000000);
      if ((cVar3 == '\0') ||
         ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
        iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
        iVar5 = 0;
        if (0 < iVar8) {
          iVar5 = iVar8;
        }
        local_1d1 = iVar5 < (int)fVar17;
        cVar3 = FUN_00417430(0,0x10000000);
        if (cVar3 != '\0') {
          if (*(int *)((int)param_1 + 0x30) == 0) {
            iVar5 = FUN_006ac7e0(0x12,0,extraout_ECX_05,0);
            bVar14 = SBORROW4(iVar5,(int)fVar17);
            iVar5 = iVar5 - (int)fVar17;
          }
          else {
            if (*(int *)((int)param_1 + 0x30) != 1) goto LAB_00458255;
            iVar8 = FUN_006ac7e0(0x32e,0,extraout_ECX_05,0);
            iVar9 = FUN_006ac7e0(0x5e,0,extraout_ECX_06,0);
            iVar5 = FUN_006ac7e0(0x55,0,extraout_ECX_07,0);
            iVar5 = iVar5 + iVar8 + iVar9;
            bVar14 = SBORROW4(iVar5,(int)local_1e0);
            iVar5 = iVar5 - (int)local_1e0;
          }
          local_1d1 = bVar14 != iVar5 < 0;
        }
LAB_00458255:
        uVar4 = FUN_006eef60();
        if (((int)((ulonglong)uVar4 % 0x28) == 0) && (local_1d1 != (char)((ulonglong)uVar4 % 0x28)))
        {
          pcVar21 = "HeadlessAttack2";
          goto LAB_00457e45;
        }
        uVar4 = FUN_006eef60();
        if (uVar4 % 0x14 == 0) {
          fVar17 = local_1d8 * local_1d8 + local_1f0 * local_1f0;
          FUN_00435a50();
          if (fVar17 < DAT_00baaac0) {
            *(undefined4 *)((int)param_1 + 0xb64) = 8;
            pcVar21 = "HeadlessAttack1";
            goto LAB_00457e4f;
          }
        }
      }
    }
    else if (iVar5 == 0xd) {
      iVar8 = *(int *)((int)param_1 + 0x410);
      iVar5 = iVar8 + 1;
      *(int *)((int)param_1 + 0x410) = iVar5;
      if ((iVar8 == 0x19) && (*(int *)((int)param_1 + 0x30) == 0)) {
        local_1e0 = 2.802597e-45;
        cVar3 = FUN_00417430(0,0x10000000);
        if (cVar3 != '\0') {
          iVar5 = FUN_006ac7e0(0x12,0,extraout_ECX_08,0);
          local_1e0 = 2.802597e-45;
          if ((int)fVar17 - iVar5 < 3) {
            local_1e0 = (float)((int)fVar17 - iVar5);
          }
        }
        FUN_006d6ba0(0x9e,0x3f800000,2,0,0x3f800000);
        if (*(char *)((int)param_1 + 0x148) == '\0') {
          local_1fc = 40.0;
          local_1f8 = 0.0;
        }
        else {
          local_1dc = -40.0;
          local_1d8 = 0.0;
        }
        pfVar11 = &local_1fc;
        if (*(char *)((int)param_1 + 0x148) != '\0') {
          pfVar11 = &local_1dc;
        }
        pfVar12 = (float *)FUN_0067f070(local_248);
        local_1f0 = *pfVar12 * DAT_00baa81c + *pfVar11;
        local_1e8 = pfVar12[1] * DAT_00baa81c + pfVar11[1];
        iVar5 = 0;
        if (0 < (int)local_1e0) {
          do {
            local_1d8 = DAT_00baad50;
            if (iVar5 == 0) {
              local_1d8 = DAT_00baa454;
            }
            uVar6 = FUN_006eef60();
            uVar22 = 0;
            pTVar20 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
            local_204 = local_1f0 * local_1d8 + *(float *)((int)param_1 + 0x33c);
            pTVar19 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar18 = 0;
            local_200 = local_1e8 * local_1d8 + *(float *)((int)param_1 + 0x340);
            uVar6 = FUN_00428b20(0x12,0,&local_204,&DAT_00c7b640,param_1,0,uVar6);
            iVar8 = __RTDynamicCast(uVar6,uVar18,pTVar19,pTVar20,uVar22);
            iVar5 = iVar5 + 1;
            *(uint *)(iVar8 + 0x168) = *(uint *)(iVar8 + 0x168) & 0xfffffffb;
            *(undefined *)(iVar8 + 0x174) = 1;
            *(undefined4 *)(iVar8 + 0x16c) = *(undefined4 *)(iVar8 + 0x16c);
          } while (iVar5 < (int)local_1e0);
        }
      }
      else {
        if ((iVar5 != 0x13) || (*(int *)((int)param_1 + 0x30) != 1)) goto LAB_0045813e;
        FUN_006d6ba0(0x9e,0x3f800000,2,0,0x3f800000);
        pfVar11 = (float *)FUN_00813520(local_1f4,(int)param_1 + 0x33c,0x428c0000,0,0,0);
        pfVar12 = (float *)FUN_0067f070(local_250);
        iVar5 = FUN_006eef60();
        param_1 = local_1e8;
        fVar17 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4;
        local_1d8 = fVar17 * pfVar12[1] * DAT_00baa81c + pfVar11[1];
        local_1dc = fVar17 * *pfVar12 * DAT_00baa81c + *pfVar11;
        FUN_006c2750((int)local_1e8 + 0x33c,local_1e8,local_1dc,local_1d8,0,0xc1f00000);
      }
    }
    else if (iVar5 == 8) {
      iVar8 = *(int *)((int)param_1 + 0x410);
      iVar5 = iVar8 + 1;
      *(int *)((int)param_1 + 0x410) = iVar5;
      if (iVar8 == 9) goto LAB_004585eb;
      bVar16 = SBORROW4(iVar5,0x1d);
      bVar15 = iVar8 + -0x1c < 0;
      bVar14 = iVar5 == 0x1d;
      goto LAB_004585d6;
    }
  }
  if ((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x37) &&
     (*(float *)((int)param_1 + 0x340) < DAT_00baab14)) {
    *(float *)((int)param_1 + 0x364) =
         ((DAT_00baab14 - *(float *)((int)param_1 + 0x340)) - *(float *)((int)param_1 + 0x364)) *
         DAT_00baa2d0 + *(float *)((int)param_1 + 0x364);
  }
LAB_00458846:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

