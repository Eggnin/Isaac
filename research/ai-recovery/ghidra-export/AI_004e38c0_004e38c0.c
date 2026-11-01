/* Local J460 decompiler output.
 * VA: 0x004e38c0
 * Entry: 004e38c0
 * Dispatcher: 0x006c2990
 * Types: 855
 * Identities: 855.0.0,855.1.0
 * Evidence: dispatcher=0x006c2990; end=0x004e45c0; instructions=727
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=855; identities=855.0.0,855.1.0; dispatcher=0x006c2990;
   end=0x004e45c0; instructions=727 */

void __fastcall AI_004e38c0(float param_1)

{
  bool bVar1;
  undefined *puVar2;
  undefined uVar3;
  char cVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  float *pfVar8;
  undefined4 *puVar9;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  uint uVar10;
  bool bVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  undefined8 uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  undefined local_b0 [4];
  float local_ac;
  undefined local_a8 [4];
  float local_a4;
  undefined local_a0 [4];
  float local_9c;
  float local_98;
  float local_94;
  float local_90;
  float local_8c;
  float local_88;
  undefined local_84 [4];
  float local_80;
  float local_7c;
  float local_78;
  float local_74;
  float local_70;
  undefined8 local_6c;
  char local_64;
  undefined local_63;
  undefined4 local_5c;
  uint local_58;
  ulonglong local_54;
  char local_4c;
  undefined local_4b;
  undefined4 local_44;
  uint local_40;
  uint local_3c;
  undefined2 local_38;
  char local_36;
  undefined local_35;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined local_14;
  undefined3 uStack_13;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xff;
  uStack_13 = 0xffffff;
  puStack_18 = &LAB_00af3bdd;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar5 = *(int *)((int)param_1 + 0xb64);
  local_70 = param_1;
  puVar2 = &stack0xfffffffc;
  if (iVar5 != 0) {
    if (iVar5 == 4) {
      local_58 = 0xf;
      local_5c = 9;
      local_6c = s_Move_Down_00b605fc._0_8_;
      local_64 = s_Move_Down_00b605fc[8];
      local_63 = 0;
      local_3c = s_Move_Up_00b60608._0_4_;
      local_38 = s_Move_Up_00b60608._4_2_;
      local_28 = 0xf;
      local_2c = 7;
      local_36 = s_Move_Up_00b60608[6];
      local_35 = 0;
      local_40 = 0xf;
      local_44 = 9;
      local_54 = s_Move_Hori_00b605f0._0_8_;
      local_4c = s_Move_Hori_00b605f0[8];
      local_4b = 0;
      local_14 = 2;
      uStack_13 = 0;
      FUN_006c15c0(&local_54,&local_3c,&local_6c,0);
      local_14 = 1;
      uVar3 = local_14;
      local_14 = 1;
      if (0xf < local_40) {
        uVar7 = local_40 + 1;
        iVar5 = (int)local_54;
        if (0xfff < uVar7) {
          iVar5 = *(int *)((int)local_54 + -4);
          uVar7 = local_40 + 0x24;
          if (0x1f < ((int)local_54 - iVar5) - 4U) goto LAB_004e3f4c;
        }
        FUN_00aef15c(iVar5,uVar7);
      }
      local_14 = 0;
      local_44 = 0;
      local_40 = 0xf;
      local_54 = local_54 & 0xffffffffffffff00;
      if (0xf < local_28) {
        uVar10 = local_28 + 1;
        uVar7 = local_3c;
        if (0xfff < uVar10) {
          uVar7 = *(uint *)(local_3c - 4);
          uVar10 = local_28 + 0x24;
          uVar3 = local_14;
          if (0x1f < (local_3c - uVar7) - 4) goto LAB_004e3f4c;
        }
        FUN_00aef15c(uVar7,uVar10);
      }
      local_14 = 0xff;
      uStack_13 = 0xffffff;
      local_2c = 0;
      local_28 = 0xf;
      local_3c = local_3c & 0xffffff00;
      if (0xf < local_58) {
        uVar7 = local_58 + 1;
        iVar5 = (int)local_6c;
        if (0xfff < uVar7) {
          iVar5 = *(int *)((int)local_6c + -4);
          uVar7 = local_58 + 0x24;
          uVar3 = local_14;
          if (0x1f < ((int)local_6c - iVar5) - 4U) {
LAB_004e3f4c:
            local_14 = uVar3;
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar5,uVar7);
      }
      if ((*(int *)((int)param_1 + 0x2c) == 1) && (0 < *(int *)((int)param_1 + 0x410))) {
        iVar5 = ((int)*(float *)((int)param_1 + 0x3a0) - (int)*(float *)((int)param_1 + 0x3a4)) +
                *(int *)((int)param_1 + 0x410);
        *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3c4;
        *(int *)((int)param_1 + 0x410) = iVar5;
        if (iVar5 < 1) {
          uVar18 = 0;
          uVar17 = 900;
          *(undefined4 *)((int)param_1 + 0x410) = 4;
          uVar16 = 0x40000000;
          uVar6 = FUN_006bec40(&local_78,0);
          FUN_007e33c0(uVar6,uVar16,uVar17,uVar18);
          iVar5 = FUN_0067f260();
          FUN_0067f1d0();
          local_7c = 3.09687e-43;
          FUN_00956780();
          FUN_0092dc30(local_7c,0x3f800000,0x14,0,0x3f800000,0);
          fVar12 = local_70;
          uVar7 = iVar5 + 2U & 0x80000003;
          if ((int)uVar7 < 0) {
            uVar7 = (uVar7 - 1 | 0xfffffffc) + 1;
          }
          FUN_0040a380((&PTR_s_Attack_Right_00b60610)[uVar7],0);
          fVar13 = local_78 * DAT_00baa630;
          *(undefined *)((int)fVar12 + 0x148) = 0;
          fVar14 = local_74 * DAT_00baa630;
          *(float *)((int)fVar12 + 0xbb0) = fVar13;
          *(float *)((int)fVar12 + 0xbb4) = fVar14;
          *(undefined4 *)((int)fVar12 + 3000) = 0x40000000;
          *(undefined4 *)((int)fVar12 + 0xb64) = 8;
          *(undefined4 *)((int)fVar12 + 0xb44) = *(undefined4 *)((int)fVar12 + 0x33c);
          *(undefined4 *)((int)fVar12 + 0xb48) = *(undefined4 *)((int)fVar12 + 0x340);
          *(undefined4 *)((int)fVar12 + 0x43c) = 0;
        }
      }
      else {
        FUN_007e5340(0x3f266666,0);
        fVar14 = DAT_00baa430;
        fVar12 = *(float *)((int)param_1 + 0x39c);
        bVar11 = NAN(DAT_00baa454);
        bVar1 = fVar12 == DAT_00baa454;
        *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3c4;
        if ((NAN(fVar12) || bVar11) == bVar1) {
          fVar14 = fVar14 / ((fVar12 + fVar14) - fVar12 * fVar14);
        }
        local_94 = *(float *)((int)param_1 + 0x33c);
        *(float *)((int)param_1 + 0x364) = fVar14 * *(float *)((int)param_1 + 0x364);
        local_90 = *(float *)((int)param_1 + 0x340);
        pfVar8 = (float *)FUN_006bec40(local_a0,0);
        iVar5 = FUN_006be840();
        local_88 = *(float *)(iVar5 + 0x360);
        local_80 = *(float *)(iVar5 + 0x364);
        iVar5 = FUN_006eef60();
        fVar12 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4;
        local_74 = fVar12 * local_80 * DAT_00baa85c + pfVar8[1];
        local_78 = fVar12 * local_88 * DAT_00baa85c + *pfVar8;
        FUN_00812f50(&local_8c,&local_78,0x41a00000,0x41a00000,0x41a00000);
        fVar12 = local_70;
        local_a4 = local_8c - local_94;
        local_9c = local_8c;
        iVar5 = *(int *)((int)local_70 + 0xf1c);
        local_80 = local_88;
        local_ac = local_88 - local_90;
        if (iVar5 != -1) {
          pfVar8 = (float *)FUN_006d82d0(&local_78);
          iVar5 = *(int *)((int)fVar12 + 0xf1c);
          local_a4 = *pfVar8 * DAT_00baa9d0;
          local_ac = pfVar8[1] * DAT_00baa9d0;
          local_9c = local_94 + local_a4;
          local_80 = local_90 + local_ac;
        }
        fVar14 = local_ac;
        FUN_00499d60();
        uVar7 = (int)((fVar14 * DAT_00baa948 + DAT_00baab30 + DAT_00baa910) / DAT_00baa9b4) &
                0x80000003;
        if ((int)uVar7 < 0) {
          uVar7 = (uVar7 - 1 | 0xfffffffc) + 1;
        }
        local_88 = (float)(uVar7 * 2);
        fVar14 = (float)(int)local_88 * DAT_00baa910 * DAT_00baa088;
        local_70 = fVar14;
        FUN_0041d540();
        local_7c = fVar14;
        FUN_0041d520();
        fVar14 = DAT_00baa54c;
        FUN_0041d540();
        local_74 = fVar14;
        fVar14 = DAT_00baa54c;
        FUN_0041d520();
        if (iVar5 == -1) {
          if ((local_7c * local_a4 + local_70 * local_ac <= 0.0) ||
             (DAT_00baa87c <=
              (float)((uint)((local_7c * fVar14 + local_70 * local_74) * local_ac +
                            (local_7c * local_74 - local_70 * fVar14) * local_a4) & DAT_00bacb40)))
          goto LAB_004e3dd1;
          local_98 = local_94;
          local_94 = local_90;
          local_78 = local_9c;
          local_74 = local_80;
          cVar4 = FUN_007f0df0(&local_98,&local_78,1,0,0,0,0);
          bVar11 = cVar4 == '\0';
        }
        else if (((NAN(local_a4) || NAN(DAT_00c7b640)) == (local_a4 == DAT_00c7b640)) ||
                ((NAN(local_ac) || NAN(DAT_00c7b644)) == (local_ac == DAT_00c7b644))) {
          bVar11 = false;
        }
        else {
          bVar11 = true;
        }
        if (!bVar11) {
          if (*(int *)((int)fVar12 + 0x2c) == 1) {
            local_80 = 3.09687e-43;
            FUN_00956780();
            FUN_0092dc30(local_80,0x3f800000,0x14,0,0x3f800000,0);
            FUN_0040a380((&PTR_s_Attack_Right_00b60610)[(int)local_88 / 2],0);
            fVar14 = local_70 + local_70;
            fVar13 = local_7c + local_7c;
          }
          else {
            local_80 = 3.138909e-43;
            FUN_00956780();
            FUN_0092dc30(local_80,0x3f800000,0x14,0,0x3f666666,0);
            FUN_0040a380((&PTR_s_Attack_Right_00b60620)[(int)local_88],0);
            fVar14 = local_70 * DAT_00baa4cc;
            fVar13 = local_7c * DAT_00baa4cc;
          }
          *(float *)((int)fVar12 + 0xbb0) = fVar13;
          *(float *)((int)fVar12 + 0xbb4) = fVar14;
          *(undefined *)((int)fVar12 + 0x148) = 0;
          *(undefined4 *)((int)fVar12 + 3000) = 0x40000000;
          *(undefined4 *)((int)fVar12 + 0xb64) = 8;
          *(undefined4 *)((int)fVar12 + 0x410) = 4;
          *(undefined4 *)((int)fVar12 + 0xb44) = *(undefined4 *)((int)fVar12 + 0x33c);
          *(undefined4 *)((int)fVar12 + 0xb48) = *(undefined4 *)((int)fVar12 + 0x340);
          *(undefined4 *)((int)fVar12 + 0x43c) = 0;
        }
      }
      goto LAB_004e3dd1;
    }
    puStack_20 = &stack0xfffffffc;
    if (iVar5 != 8) goto LAB_004e3dd1;
    fVar14 = *(float *)((int)param_1 + 0xb48) - *(float *)((int)param_1 + 0x340);
    fVar12 = *(float *)((int)param_1 + 0xb44) - *(float *)((int)param_1 + 0x33c);
    if (((fVar14 * fVar14 + fVar12 * fVar12) /
         (*(float *)((int)param_1 + 0x39c) * *(float *)((int)param_1 + 0x39c)) < DAT_00baa630) ||
       (*(char *)((int)param_1 + 400) != '\0')) {
      *(int *)((int)param_1 + 0x43c) =
           *(int *)((int)param_1 + 0x43c) +
           ((int)*(float *)((int)param_1 + 0x3a4) - (int)*(float *)((int)param_1 + 0x3a0));
      local_7c = *(float *)((int)param_1 + 0x43c);
    }
    else {
      *(undefined4 *)((int)param_1 + 0x43c) = 0;
      local_7c = 0.0;
    }
    puStack_20 = &stack0xfffffffc;
    if ((*(int *)((int)param_1 + 0x2c) == 1) &&
       (puStack_20 = &stack0xfffffffc, iVar5 = FUN_006ac760(local_24), iVar5 != 0)) {
      FUN_007e3260();
      local_88 = *(float *)((int)param_1 + 0x360);
      uVar18 = 0;
      uVar17 = 900;
      local_80 = *(float *)((int)param_1 + 0x364);
      local_9c = *(float *)((int)param_1 + 0x36c);
      uVar16 = 0x41200000;
      uVar6 = FUN_006bec40(&local_78,0);
      FUN_007e33c0(uVar6,uVar16,uVar17,uVar18);
      FUN_0067f260();
      uVar15 = FUN_0067f260();
      *(float *)((int)param_1 + 0x360) = local_88;
      fVar12 = local_7c;
      if ((int)uVar15 != (int)((ulonglong)uVar15 >> 0x20)) {
        fVar12 = 1.401298e-44;
      }
      *(float *)((int)param_1 + 0x364) = local_80;
      *(float *)((int)param_1 + 0x36c) = local_9c;
      *(float *)((int)param_1 + 0x43c) = fVar12;
    }
    *(undefined4 *)((int)param_1 + 0xb44) = *(undefined4 *)((int)param_1 + 0x33c);
    *(undefined4 *)((int)param_1 + 0xb48) = *(undefined4 *)((int)param_1 + 0x340);
    if ((*(uint *)((int)param_1 + 0x168) & 0x1000a00) == 0) {
      cVar4 = FUN_00417430(0x80,0);
      uVar6 = extraout_ECX;
      if (cVar4 != '\0') {
        fVar12 = *(float *)((int)param_1 + 0x360) * *(float *)((int)param_1 + 0x360) +
                 *(float *)((int)param_1 + 0x364) * *(float *)((int)param_1 + 0x364);
        FUN_00435a50();
        uVar6 = extraout_ECX_00;
        if (fVar12 < DAT_00baa6fc) goto LAB_004e3d87;
      }
      if (*(int *)((int)param_1 + 0x43c) < 6) {
        fVar12 = *(float *)((int)param_1 + 0xbb4);
        uVar16 = 0;
        FUN_00499d60(uVar6,0);
        uVar7 = (int)((fVar12 * DAT_00baa948 + DAT_00baab30 + DAT_00baa888) / DAT_00baa910) &
                0x80000007;
        if ((int)uVar7 < 0) {
          uVar7 = (uVar7 - 1 | 0xfffffff8) + 1;
        }
        FUN_0040a380((&PTR_s_Attack_Right_00b60620)[uVar7],uVar16);
        fVar12 = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
        *(float *)((int)param_1 + 0x36c) = fVar12;
        if (NAN(fVar12) == (fVar12 == 0.0)) {
          *(float *)((int)param_1 + 0x360) =
               (*(float *)((int)param_1 + 0x39c) * *(float *)((int)param_1 + 0xbb0)) / fVar12 +
               *(float *)((int)param_1 + 0x360);
          *(float *)((int)param_1 + 0x364) =
               (*(float *)((int)param_1 + 0x39c) * *(float *)((int)param_1 + 0xbb4)) / fVar12 +
               *(float *)((int)param_1 + 0x364);
        }
        if (*(int *)((int)param_1 + 0x2c) != 1) {
          local_80 = 0.0;
          local_88 = *(float *)((int)param_1 + 3000) -
                     *(float *)((int)param_1 + 0x39c) * _DAT_00baa0ac;
          pfVar8 = &local_88;
          if (local_88 <= 0.0) {
            pfVar8 = &local_80;
          }
          *(float *)((int)param_1 + 3000) = *pfVar8;
          pfVar8 = (float *)FUN_006bec40(local_84,0);
          iVar5 = FUN_006be840();
          local_78 = *(float *)(iVar5 + 0x360) * DAT_00baa85c + *pfVar8;
          local_74 = *(float *)(iVar5 + 0x364) * DAT_00baa85c + pfVar8[1];
          FUN_00812f50(&local_8c,&local_78,0x41a00000,0x41a00000,0x41a00000);
          fVar12 = local_70;
          local_74 = local_88 - *(float *)((int)local_70 + 0x340);
          local_78 = local_8c - *(float *)((int)local_70 + 0x33c);
          if ((0.0 < *(float *)((int)local_70 + 0xbb4) * local_74 +
                     *(float *)((int)local_70 + 0xbb0) * local_78) &&
             (fVar14 = *(float *)((int)local_70 + 3000), 0.0 < fVar14)) {
            if (DAT_00baa454 <= fVar14) {
              fVar14 = DAT_00baa454;
            }
            pfVar8 = (float *)FUN_00a10100(local_b0,fVar14 * DAT_00baa120);
            fVar14 = *(float *)((int)fVar12 + 0xbb0);
            local_78 = *(float *)((int)fVar12 + 0x39c) * *pfVar8 + fVar14;
            fVar13 = *(float *)((int)fVar12 + 0xbb4);
            local_74 = *(float *)((int)fVar12 + 0x39c) * pfVar8[1] + fVar13;
            fVar14 = fVar13 * fVar13 + fVar14 * fVar14;
            FUN_00435a50();
            puVar9 = (undefined4 *)FUN_00a10100(local_a8,fVar14);
            *(undefined4 *)((int)fVar12 + 0xbb0) = *puVar9;
            *(undefined4 *)((int)fVar12 + 0xbb4) = puVar9[1];
          }
        }
        goto LAB_004e3dd1;
      }
    }
LAB_004e3d87:
    *(float *)((int)param_1 + 0x418) = DAT_00c7b640;
    *(float *)((int)param_1 + 0x41c) = DAT_00c7b644;
    *(float *)((int)param_1 + 0x420) = DAT_00c7b640;
    *(float *)((int)param_1 + 0x424) = DAT_00c7b644;
    puVar2 = puStack_20;
  }
  puStack_20 = puVar2;
  *(undefined4 *)((int)param_1 + 0xb64) = 4;
LAB_004e3dd1:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

