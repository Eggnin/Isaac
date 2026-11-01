/* Local J460 decompiler output.
 * VA: 0x006a24d0
 * Entry: 006a24d0
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.17.0
 * Evidence: native RTTI vtable+0xc
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.17.0; native RTTI vtable+0xc */

void __fastcall HELPER_Bomb_Update(int *param_1)

{
  code *pcVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined auVar4 [16];
  undefined auVar5 [12];
  undefined auVar6 [12];
  undefined auVar7 [12];
  undefined auVar8 [12];
  undefined auVar9 [12];
  undefined auVar10 [12];
  undefined auVar11 [12];
  undefined auVar12 [12];
  undefined auVar13 [12];
  undefined auVar14 [12];
  undefined auVar15 [12];
  undefined auVar16 [12];
  undefined auVar17 [12];
  undefined auVar18 [16];
  undefined auVar19 [16];
  undefined auVar20 [16];
  undefined auVar21 [16];
  undefined auVar22 [16];
  undefined auVar23 [12];
  undefined auVar24 [16];
  undefined auVar25 [16];
  undefined auVar26 [16];
  undefined *puVar27;
  char cVar28;
  char cVar29;
  uint *puVar30;
  undefined4 uVar31;
  int *piVar32;
  float *pfVar33;
  uint uVar34;
  undefined4 uVar35;
  int iVar36;
  undefined4 *puVar37;
  char extraout_DL;
  int extraout_EDX;
  char *pcVar38;
  int iVar39;
  float10 fVar40;
  float fVar41;
  float fVar42;
  float fVar43;
  undefined (*pauVar44) [16];
  undefined auVar45 [16];
  float fVar46;
  undefined auVar47 [16];
  float fVar48;
  float fVar49;
  float fVar50;
  undefined8 uVar51;
  undefined in_stack_fffffeb8 [16];
  undefined auVar52 [16];
  undefined auVar53 [16];
  undefined auVar54 [16];
  undefined auVar55 [16];
  undefined auVar56 [16];
  undefined auVar57 [16];
  undefined auVar58 [16];
  undefined auVar59 [16];
  ulonglong in_stack_fffffed4;
  undefined auVar62 [16];
  ulonglong uVar60;
  undefined auVar63 [16];
  undefined auVar64 [16];
  undefined auVar65 [16];
  undefined auVar66 [16];
  undefined auVar67 [16];
  undefined auVar68 [16];
  undefined auVar69 [16];
  undefined auVar70 [16];
  undefined auVar71 [16];
  undefined auVar72 [16];
  undefined auVar73 [16];
  undefined auVar74 [16];
  undefined auVar75 [16];
  undefined auVar76 [16];
  undefined auVar77 [16];
  undefined auVar78 [16];
  undefined auVar79 [16];
  undefined auVar80 [16];
  undefined auVar81 [16];
  undefined auVar107 [12];
  undefined auVar82 [16];
  undefined auVar83 [16];
  undefined auVar84 [16];
  undefined auVar85 [16];
  undefined auVar86 [16];
  undefined auVar87 [16];
  undefined auVar88 [16];
  undefined auVar89 [16];
  undefined auVar90 [16];
  undefined auVar91 [16];
  undefined auVar92 [16];
  undefined auVar93 [16];
  undefined auVar94 [16];
  longlong lVar61;
  undefined auVar108 [12];
  undefined auVar95 [16];
  undefined auVar96 [16];
  undefined auVar97 [16];
  undefined auVar98 [16];
  undefined auVar99 [16];
  undefined auVar100 [16];
  undefined auVar101 [16];
  undefined auVar102 [16];
  undefined auVar103 [16];
  undefined auVar109 [12];
  undefined auVar104 [16];
  undefined auVar105 [16];
  undefined auVar110 [12];
  undefined auVar111 [12];
  undefined auVar112 [12];
  undefined auVar113 [12];
  undefined auVar106 [16];
  float local_f0;
  float local_ec;
  char local_e8 [4];
  int local_e4;
  uint local_e0;
  undefined (*local_dc) [16];
  float local_d8;
  float local_d4;
  int *local_d0;
  undefined4 local_cc;
  float *local_c8;
  float local_c4;
  int local_c0;
  undefined8 local_bc;
  undefined (*local_b4) [16];
  int local_b0;
  float local_ac;
  char local_a5;
  float local_a4;
  undefined local_a0 [8];
  float fStack_98;
  undefined (*pauStack_94) [16];
  undefined (*local_8c) [16];
  float local_88;
  undefined (*local_84) [16];
  undefined (*local_80) [16];
  undefined local_4c [40];
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00afa186;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_d0 = param_1;
  if (*(char *)((int)param_1 + 0x461) != '\0') {
    *(undefined *)((int)param_1 + 0x461) = 0;
    puStack_20 = &stack0xfffffffc;
    goto LAB_006a5a3c;
  }
  puVar27 = &stack0xfffffffc;
  if (*(char *)((int)param_1 + 0x463) != '\0') {
    FUN_006a6f10(local_24);
    puVar27 = puStack_20;
  }
  puStack_20 = puVar27;
  local_80 = (undefined (*) [16])(param_1 + 0x10e);
  puVar30 = (uint *)FUN_00417170();
  fVar43 = DAT_00baad84;
  if (((*puVar30 | puVar30[1]) == 0) && ((puVar30[2] | puVar30[3]) == 0)) {
    local_a5 = '\0';
  }
  else {
    local_a5 = '\x01';
  }
  local_c4 = (float)param_1[0x10a];
  if (*(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca] == 1) {
    if (param_1[0xd] == 1) {
      param_1[0x115] = DAT_00c7ec64;
      DAT_00c7ec64 = DAT_00c7ec64 + 1;
    }
    if (local_a5 != '\0') {
      param_1[0x107] = -0x3f000000;
      param_1[0xd4] = -0x3fc00000;
    }
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    param_1[0xd8] = DAT_00c7b640;
    param_1[0xd9] = DAT_00c7b644;
    FUN_006ae820();
    if (param_1[0x116] < 1) {
      if (((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) || (param_1[0xb] == 2)) {
        (**(code **)(*param_1 + 0x28))();
      }
    }
    else {
      param_1[0x116] = param_1[0x116] + -1;
    }
    goto LAB_006a5a3c;
  }
  if (param_1[0xff] != 0) {
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
    if (0 < param_1[0x104]) {
      param_1[0x104] = param_1[0x104] + 1;
    }
    if (((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) &&
       ((param_1[0xff] == 1 && (param_1[0xff] = 2, param_1[0xef] == 0)))) {
      (**(code **)(*param_1 + 0x28))();
      fVar43 = DAT_00baad84;
    }
  }
  fVar49 = DAT_00baa630;
  fVar42 = DAT_00baa3a4;
  if ((param_1[0x5a] & 0x20U) != 0) {
    FUN_0040a6e0();
    if (*(char *)((int)param_1 + 0x462) != '\0') {
      pcVar38 = (char *)((int)param_1 + 0x56d);
      local_84 = (undefined (*) [16])&DAT_00000005;
      do {
        if (*pcVar38 != '\0') {
          FUN_00409030();
          FUN_00409030();
        }
        pcVar38 = pcVar38 + 0x114;
        local_84 = (undefined (*) [16])(local_84[-1] + 0xf);
      } while (local_84 != (undefined (*) [16])0x0);
    }
    FUN_006ae820();
    goto LAB_006a5a3c;
  }
  fVar48 = 0.0;
  if (((*(char *)((int)param_1 + 0x171) != '\0') && (param_1[0xff] == 0)) &&
     ((*(char *)((int)param_1 + 0x173) == '\0' &&
      (((float)param_1[0xd4] < 0.0 || ((float)param_1[0x107] <= 0.0 && (float)param_1[0x107] != 0.0)
       ))))) {
    fVar41 = (float)param_1[0x107];
    fVar50 = fVar41 + (float)param_1[0xd4];
    param_1[0xd4] = (int)fVar50;
    cVar28 = FUN_006a2030();
    if (cVar28 == '\0') {
      fVar46 = DAT_00baa6bc;
      if ((local_a5 == '\0') &&
         (fVar46 = (float)param_1[0x108], (NAN(fVar46) || NAN(fVar48)) != (fVar46 == fVar48))) {
        fVar46 = fVar42;
      }
    }
    else {
      fVar46 = DAT_00baa554;
      if (local_a5 == '\0') {
        fVar46 = (float)param_1[0x108];
      }
    }
    fVar46 = fVar46 + fVar41;
    param_1[0x107] = (int)fVar46;
    cVar28 = local_a5;
    if (DAT_00baae04 <= fVar50) {
      if (((fVar50 < fVar43) || (*(char *)(param_1 + 0x112) != '\0')) ||
         (cVar29 = FUN_006a2030(), cVar28 = extraout_DL, cVar29 != '\0')) {
        param_1[0x61] = 6;
      }
      else {
        param_1[0x61] = 5;
      }
    }
    else {
      param_1[0x61] = 3;
    }
    auVar109 = in_stack_fffffeb8._0_12_;
    if (fVar48 <= fVar50) {
      if (((cVar28 == '\0') || (fVar46 <= fVar49)) || (3 < param_1[0x109])) {
        param_1[0xd4] = 0;
        param_1[0x107] = 0;
        param_1[0xe2] = 0;
        cVar28 = FUN_006a2030();
        if (cVar28 == '\0') {
          auVar68._8_4_ = 0;
          auVar68._0_8_ = in_stack_fffffed4;
          auVar68._12_4_ = 0x3f800000;
          local_80 = (undefined (*) [16])0x3f800000;
          auVar69._8_8_ = auVar68._8_8_;
          auVar69._0_8_ = 0x200000000;
          auVar70._4_12_ = auVar69._4_12_;
          if (param_1[0xb] == 0x12) {
            auVar70._0_4_ = 0x1d2;
          }
          else {
            auVar70._0_4_ = 0x28;
          }
          in_stack_fffffed4 = auVar70._0_8_;
          FUN_009568e0(auVar70);
        }
        else {
          param_1[0x104] = 0;
        }
      }
      else {
        fVar46 = fVar46 * _DAT_00baad38;
        param_1[0x109] = param_1[0x109] + 1;
        param_1[0xd4] = 0;
        param_1[0x107] = (int)fVar46;
        uVar31 = FUN_006eef60();
        auVar62._8_4_ = 0;
        auVar62._0_8_ = in_stack_fffffed4;
        auVar62._12_4_ = uVar31;
        auVar18._8_8_ = 0;
        auVar18._0_8_ = auVar62._8_8_;
        uVar60 = 0;
        in_stack_fffffeb8._12_4_ = 0x6a289b;
        in_stack_fffffeb8._0_12_ = auVar109;
        piVar32 = (int *)HELPER_Entity_SpawnRelay
                                   (1000,0xe,param_1 + 0xcf,&DAT_00c7b640,SUB1612(auVar18 << 0x40,4)
                                   );
        auVar63._8_4_ = 0;
        auVar63._0_8_ = uVar60;
        auVar63._12_4_ = 1;
        auVar64._8_8_ = auVar63._8_8_;
        auVar64._0_8_ = 0xff00000000;
        auVar65._4_12_ = auVar64._4_12_;
        auVar65._0_4_ = 0xffffffff;
        uVar60 = auVar65._0_8_;
        (**(code **)(*piVar32 + 0x3c))(local_d0 + 0x3c,0xffffffff);
        (**(code **)(*piVar32 + 0xc))();
        auVar66._8_4_ = 0;
        auVar66._0_8_ = uVar60;
        auVar66._12_4_ = 0x3f800000;
        auVar67._8_8_ = auVar66._8_8_;
        auVar67._0_8_ = 0x200000000;
        FUN_009568e0(0x96,auVar67._4_12_);
        in_stack_fffffed4 = SUB168(*local_80,0);
        FUN_0067d430(*local_80);
        param_1 = local_d0;
      }
    }
  }
  iVar39 = param_1[0xf2];
  if ((iVar39 != 0) && (*(int *)(iVar39 + 0x28) != 1)) {
    iVar39 = 0;
  }
  iVar36 = param_1[0xb];
  local_b0 = iVar39;
  if ((iVar36 == 0x13) || (iVar36 == 0x14)) {
    in_stack_fffffed4 = 0;
    cVar28 = FUN_00417430();
    if (cVar28 == '\0') {
      iVar36 = param_1[0xb];
      goto LAB_006a2a0d;
    }
    param_1[0x3b] = 0;
    in_stack_fffffed4 = 0;
    HELPER_0040a380_AnimationActionA();
    param_1[0x10b] = 0;
  }
  else {
LAB_006a2a0d:
    if ((((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) ||
        (cVar28 = FUN_004073b0(), iVar36 = extraout_EDX, cVar28 != '\0')) &&
       ((iVar36 != 2 && (param_1[0xff] == 0)))) {
      in_stack_fffffed4 = 0;
      HELPER_0040a380_AnimationActionA();
    }
  }
  cVar28 = FUN_0040a4d0();
  if ((cVar28 != '\0') && (cVar28 = FUN_006a2030(), cVar28 == '\0')) {
    if ((*(char *)(param_1 + 0x112) == '\0') && ((param_1[0xd] == 1 && (iVar39 != 0)))) {
      in_stack_fffffed4 = 0;
      cVar28 = FUN_007706e0();
      if (cVar28 == '\0') goto LAB_006a2aa3;
      iVar39 = FUN_0040a780();
      if (iVar39 < 0xf) goto LAB_006a2b06;
    }
    else {
LAB_006a2aa3:
      local_80 = (undefined (*) [16])0x0;
      auVar71._0_8_ = FUN_00440e30();
      iVar39 = ((int)auVar71._0_8_ - *(int *)((ulonglong)auVar71._0_8_ >> 0x20)) + -1;
      if (iVar39 < 0) {
        iVar39 = iVar39 + (iVar39 / 0xf) * -0xf + 0xf;
      }
      iVar36 = FUN_0040a780();
      if (iVar39 == iVar36) goto LAB_006a2b06;
    }
    FUN_0040a720();
  }
LAB_006a2b06:
  if (*(char *)(param_1 + 0x112) != '\0') {
    uVar34 = DAT_00bacb70;
    fVar43 = DAT_00baa088;
    fVar42 = DAT_00baa9b4;
    FUN_00417170();
    cVar28 = FUN_004171b0();
    if (cVar28 != '\0') {
      param_1[0x61] = 3;
    }
    cVar28 = FUN_006a2030();
    if (cVar28 == '\0') {
      FUN_00417170();
      cVar28 = FUN_004171b0();
      if (cVar28 != '\0') {
        fStack_98 = (float)param_1[0xd9];
        pauStack_94 = (undefined (*) [16])(param_1[0xd8] ^ uVar34);
        FUN_00a0ffc0();
        pauVar44 = (undefined (*) [16])
                   ((float)*(int *)(DAT_00c71678 + 0x264f8) * DAT_00baa354 +
                   (float)((double)param_1[8] + (double)(&DAT_00bacb00)[-(param_1[8] >> 0x1f)]));
        FUN_0041d520();
        fVar43 = (float)param_1[0xd8] * (float)param_1[0xd8] +
                 (float)param_1[0xd9] * (float)param_1[0xd9];
        local_80 = pauVar44;
        FUN_00435a50();
        param_1[0xcf] = (int)(fStack_98 * fVar43 * (float)local_80 + (float)param_1[0xcf]);
        param_1[0xd0] = (int)((float)pauStack_94 * fVar43 * (float)local_80 + (float)param_1[0xd0]);
      }
      if (*(char *)(param_1 + 100) != '\0') {
        FUN_00417170();
        cVar28 = FUN_004171b0();
        if (cVar28 != '\0') {
          param_1[0x104] = 0;
        }
      }
      FUN_00417170();
      cVar28 = FUN_004171b0();
      uVar60 = in_stack_fffffeb8._0_8_;
      if (((cVar28 != '\0') && (iVar39 = param_1[0xef], iVar39 != 0)) &&
         (*(int *)(iVar39 + 0x28) == 1)) {
        in_stack_fffffed4 = 0;
        local_84 = (undefined (*) [16])__RTDynamicCast(iVar39,0);
        auVar52._8_4_ = 0;
        auVar52._0_8_ = uVar60;
        auVar52._12_4_ = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        in_stack_fffffeb8._8_8_ = auVar52._8_8_;
        in_stack_fffffeb8._4_4_ = *(undefined4 *)local_84[0x143];
        in_stack_fffffeb8._0_4_ = 0x6a2ec0;
        iVar39 = __RTDynamicCast();
        if (iVar39 != 0) {
          local_a4 = (float)param_1[0xcf] - *(float *)(local_84[0x33] + 0xc);
          local_88 = (float)param_1[0xd0] - *(float *)local_84[0x34];
          local_80 = (undefined (*) [16])(*(float *)(iVar39 + 0x41c) * DAT_00baa088);
          local_8c = local_80;
          FUN_0041d520();
          pauVar44 = local_80;
          FUN_0041d540();
          fVar43 = (float)pauVar44 * local_a4 + (float)local_8c * local_88;
          if (0.0 < fVar43) {
            local_80 = (undefined (*) [16])
                       (((fVar43 * (float)pauVar44 + *(float *)(local_84[0x33] + 0xc)) -
                        (float)param_1[0xcf]) * DAT_00baa06c);
            local_a4 = ((fVar43 * (float)local_8c + *(float *)local_84[0x34]) - (float)param_1[0xd0]
                       ) * DAT_00baa06c;
            fStack_98 = (float)local_80;
            pauStack_94 = (undefined (*) [16])local_a4;
            fVar43 = (float)local_80 * (float)local_80 + local_a4 * local_a4;
            if ((DAT_00baa75c < fVar43) && (FUN_00435a50(), DAT_00ba9fe4 < fVar43)) {
              fStack_98 = (float)local_80 * (DAT_00baa630 / fVar43);
              pauStack_94 = (undefined (*) [16])((DAT_00baa630 / fVar43) * local_a4);
            }
            in_stack_fffffed4 = 0;
            FUN_004314b0();
          }
        }
      }
      fVar43 = 0.0;
      FUN_00417170();
      cVar28 = FUN_004171b0();
      if ((cVar28 != '\0') && (iVar39 = param_1[0xef], iVar39 != 0)) {
        fStack_98 = (float)param_1[0xcf] - (*(float *)(iVar39 + 0x33c) + fVar43);
        pauStack_94 = (undefined (*) [16])
                      ((float)param_1[0xd0] - (*(float *)(iVar39 + 0x340) + DAT_00baa630));
        pfVar33 = (float *)FUN_00a10030();
        fVar43 = pfVar33[1] * DAT_00baa304;
        param_1[0xd8] = (int)((float)param_1[0xd8] - *pfVar33 * DAT_00baa304);
        param_1[0xd9] = (int)((float)param_1[0xd9] - fVar43);
      }
    }
    else {
      local_ac = (float)param_1[0xe9] - DAT_00baa454;
      FUN_00417170();
      cVar28 = FUN_004171b0();
      if (cVar28 != '\0') {
        local_80 = (undefined (*) [16])(((float)param_1[0x10a] + fVar42) * fVar43);
        local_88 = (float)local_80;
        FUN_0041d520();
        FUN_0041d540();
        local_80 = (undefined (*) [16])((float)local_80 * (float)DAT_00baa7a4);
        local_88 = local_88 * (float)DAT_00baa7a4;
        local_ac = local_ac * DAT_00baa3a4;
        fVar43 = local_ac;
        FUN_0041d520();
        fVar42 = local_ac - DAT_00baa2d0;
        param_1[0xd8] =
             (int)((float)local_80 * fVar43 * (float)param_1[0xe7] + (float)param_1[0xd8]);
        param_1[0xd9] = (int)(local_88 * fVar43 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        FUN_0041d520();
        local_c4 = fVar42 * DAT_00baa8a0 + (float)param_1[0x10a];
        fVar43 = DAT_00baa088;
      }
      if ((NAN((float)param_1[0x108]) || NAN(DAT_00ba9fe4)) ==
          ((float)param_1[0x108] == DAT_00ba9fe4)) {
        local_c4 = local_c4 * fVar43;
        local_a4 = local_c4;
        FUN_0041d520();
        pauVar44 = (undefined (*) [16])
                   ((float)param_1[0xd8] * (float)param_1[0xd8] +
                   (float)param_1[0xd9] * (float)param_1[0xd9]);
        FUN_00435a50();
        local_80 = pauVar44;
        FUN_0041d540();
        fVar43 = (float)param_1[0x107] + local_a4 * (float)local_80;
        FUN_00499d60();
        local_c4 = fVar43 * DAT_00baa948;
      }
    }
  }
  auVar75._8_4_ = 0x6a30f0;
  auVar75._0_8_ = in_stack_fffffed4;
  auVar75._12_4_ = &DAT_00c34c00;
  puVar30 = (uint *)FUN_00417170();
  auVar71._0_8_ = auVar75._0_8_;
  if (((*puVar30 | puVar30[1]) != 0) || ((puVar30[2] | puVar30[3]) != 0)) {
    if (param_1[0xd] == 1) {
      auVar71._8_4_ = param_1 + 0xcf;
      auVar71._12_4_ = 8;
      auVar72._8_8_ = auVar71._8_8_;
      auVar72._4_4_ = &local_c0;
      auVar72._0_4_ = 0x6a313e;
      FUN_0041a790();
      auVar71._0_8_ = auVar72._0_8_;
      local_14 = 0;
      local_84 = (undefined (*) [16])0x0;
      if (local_b4 != (undefined (*) [16])0x0) {
        do {
          pauVar44 = *(undefined (**) [16])((int)local_bc + (int)local_84 * 4);
          auVar72._8_4_ = 0x6a3175;
          auVar72._12_4_ = 0;
          local_80 = pauVar44;
          cVar28 = HELPER_Entity_DamageFilter();
          if ((cVar28 != '\0') &&
             (fVar42 = *(float *)pauVar44[0x34] - (float)param_1[0xd0],
             fVar43 = *(float *)(pauVar44[0x33] + 0xc) - (float)param_1[0xcf],
             fVar49 = *(float *)pauVar44[0x37] + (float)param_1[0xdc],
             fVar42 * fVar42 + fVar43 * fVar43 < fVar49 * fVar49)) {
            pcVar1 = *(code **)(*(int *)*pauVar44 + 0x20);
            auVar71._0_8_ = auVar72._0_8_;
            FUN_00431310();
            auVar73._8_4_ = local_4c;
            auVar73._0_8_ = auVar71._0_8_;
            auVar73._12_4_ = 0x1e;
            auVar19._8_8_ = 0;
            auVar19._0_8_ = auVar73._8_8_;
            auVar72._4_12_ = SUB1612(auVar19 << 0x40,4);
            auVar72._0_4_ = 2;
            (*pcVar1)(0x41800000,2);
          }
          auVar71._0_8_ = auVar72._0_8_;
          local_84 = (undefined (*) [16])(*local_84 + 1);
        } while (local_84 < local_b4);
      }
      local_14 = 0xffffffff;
      FUN_004175b0();
    }
    else {
      local_84 = (undefined (*) [16])0x0;
      if (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0) {
        do {
          auVar75._8_4_ = 0x6a323c;
          auVar75._12_4_ = local_84;
          local_80 = (undefined (*) [16])FUN_00417870();
          if ((local_80 != (undefined (*) [16])0x0) &&
             (fVar42 = *(float *)local_80[0x34] - (float)param_1[0xd0],
             fVar43 = *(float *)(local_80[0x33] + 0xc) - (float)param_1[0xcf],
             fVar49 = *(float *)local_80[0x37] + (float)param_1[0xdc] + DAT_00baa528,
             fVar42 * fVar42 + fVar43 * fVar43 < fVar49 * fVar49)) {
            pcVar1 = *(code **)(*(int *)*local_80 + 0x20);
            auVar71._0_8_ = auVar75._0_8_;
            FUN_00431310();
            auVar74._8_4_ = local_4c;
            auVar74._0_8_ = auVar71._0_8_;
            auVar74._12_4_ = 0x1e;
            auVar20._8_8_ = 0;
            auVar20._0_8_ = auVar74._8_8_;
            auVar75._4_12_ = SUB1612(auVar20 << 0x40,4);
            auVar75._0_4_ = 2;
            (*pcVar1)(0x3f800000,2);
          }
          auVar71._0_8_ = auVar75._0_8_;
          local_84 = (undefined (*) [16])(*local_84 + 1);
        } while (local_84 <
                 (undefined (*) [16])
                 (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2));
      }
    }
  }
  puVar30 = (uint *)FUN_00417170();
  if (((((*puVar30 | puVar30[1]) == 0) && ((puVar30[2] | puVar30[3]) == 0)) ||
      (local_88 = (float)param_1[0xef], local_88 == 0.0)) || (*(int *)((int)local_88 + 0x28) != 1))
  {
LAB_006a34c6:
    fVar43 = 0.0;
  }
  else {
    FUN_00779620();
    FUN_007b9f60();
    iVar39 = *(int *)((int)local_88 + 0x140c);
    if (iVar39 != 0) {
      fVar43 = (*(float *)(iVar39 + 0x33c) - (float)param_1[0xcf]) / DAT_00baa81c;
      fVar42 = (*(float *)(iVar39 + 0x340) - (float)param_1[0xd0]) / DAT_00baa81c;
      fStack_98 = fVar43;
      pauStack_94 = (undefined (*) [16])fVar42;
      fVar43 = fVar43 * fVar43 + fVar42 * fVar42;
      FUN_00435a50();
      if (DAT_00baa454 < fVar43) {
        FUN_00a0ffc0();
      }
    }
    local_88 = *(float *)((int)local_88 + 0x1464) * DAT_00baa6fc;
    auVar71._0_8_ = 0;
    cVar28 = FUN_007706e0();
    if (cVar28 != '\0') {
      local_88 = local_88 * DAT_00baa2d0;
    }
    fVar43 = 0.0;
    if ((NAN(fStack_98) == (fStack_98 == 0.0)) ||
       (NAN((float)pauStack_94) == ((float)pauStack_94 == 0.0))) {
      FUN_00a0ffc0();
      param_1[0xd8] = (int)(fStack_98 * local_88 + (float)param_1[0xd8]);
      param_1[0xd9] = (int)((float)pauStack_94 * local_88 + (float)param_1[0xd9]);
      param_1[0xdb] = 0x3f4ccccd;
      goto LAB_006a34c6;
    }
    FUN_00417170();
    cVar28 = FUN_004171b0();
    if (cVar28 == '\0') {
      FUN_00417170();
      cVar28 = FUN_004171b0();
      if (cVar28 == '\0') {
        param_1[0xdb] = 0x3f4ccccd;
      }
      else {
        param_1[0xdb] = 0x3f666666;
      }
    }
    else {
      param_1[0xdb] = 0x3f800000;
    }
  }
  iVar39 = param_1[0xb];
  if ((iVar39 == 0x13) || (iVar39 == 0x14)) {
    fVar42 = (float)param_1[0x10b] - fVar43;
    local_a4 = fVar42 * DAT_00baa0e4;
    if (local_a4 <= fVar43) {
      local_a4 = fVar43;
    }
    if (DAT_00baa454 <= local_a4) {
      local_a4 = DAT_00baa454;
    }
    fVar49 = local_a4 * _DAT_00baa18c;
    if (iVar39 != 0x14) {
      fVar42 = fVar42 * DAT_00baa13c;
      if (fVar42 <= fVar43) {
        fVar42 = fVar43;
      }
      if (DAT_00baa454 <= fVar42) {
        fVar42 = DAT_00baa454;
      }
      local_a4 = fVar42 + fVar42;
    }
    local_a4 = local_a4 + fVar43;
    param_1[0xdb] = (int)(fVar49 + DAT_00baa3a4);
    param_1[0x10b] = (int)((float)param_1[0x10b] + (float)param_1[0xe7]);
    local_80 = (undefined (*) [16])((float)param_1[0x10a] * DAT_00baa088);
    pauVar44 = local_80;
    FUN_0041d520();
    local_84 = pauVar44;
    pauVar44 = local_80;
    FUN_0041d540();
    fVar42 = (float)pauVar44 * local_a4 * (float)param_1[0xe7] + (float)param_1[0xd8];
    fVar43 = (float)local_84 * local_a4 * (float)param_1[0xe7] + (float)param_1[0xd9];
    param_1[0xd8] = (int)fVar42;
    param_1[0xd9] = (int)fVar43;
    if (*(char *)(param_1 + 100) != '\0') {
      param_1[0x104] = 0;
      param_1[0xcf] = (int)((float)param_1[0xcf] - (float)param_1[0xe7] * fVar42);
      param_1[0xd0] = (int)((float)param_1[0xd0] - (float)param_1[0xe7] * fVar43);
    }
  }
  FUN_006ae820();
  if ((param_1[0xb] == 0x13) || (param_1[0xb] == 0x14)) {
    puVar30 = (uint *)FUN_00417170();
    if ((((*puVar30 | puVar30[1]) != 0) || ((puVar30[2] | puVar30[3]) != 0)) && (param_1[0xef] != 0)
       ) {
      fVar43 = *(float *)(param_1[0xef] + 0x340) - (float)param_1[0xd0];
      FUN_00499d60();
      fVar43 = fVar43 * DAT_00baa948 - (float)param_1[0x10a];
      FUN_00682740();
      fVar42 = ((float)param_1[0x10b] - DAT_00baa454) / DAT_00baa804;
      auVar47 = ZEXT416((uint)fVar42);
      if (fVar42 <= 0.0) {
        auVar47 = ZEXT816(0) << 0x20;
      }
      if (DAT_00baa454 <= auVar47._0_4_) {
        auVar47._0_4_ = DAT_00baa454;
      }
      param_1[0x10a] =
           (int)((auVar47._0_4_ * DAT_00baa2d0 + 0.0) * fVar43 * (float)param_1[0xe7] +
                (float)param_1[0x10a]);
    }
    puVar30 = (uint *)FUN_00417170();
    if (((*puVar30 | puVar30[1]) != 0) || ((puVar30[2] | puVar30[3]) != 0)) {
      auVar71._0_8_ = 0;
      FUN_007e8f90();
      fVar40 = (float10)FUN_007e9080();
      local_88 = (float)param_1[0x10b];
      local_84 = (undefined (*) [16])
                 (float)(fVar40 * (float10)(float)DAT_00baa7a4 + (float10)DAT_00baa6fc);
      local_80 = (undefined (*) [16])((float)local_84 + DAT_00baa81c);
      if ((NAN((float)local_84) || NAN((float)local_80)) != ((float)local_84 == (float)local_80)) {
        auVar71._0_8_ = 0;
        FUN_00a112c0();
      }
      local_88 = (local_88 - (float)local_84) / ((float)local_80 - (float)local_84);
      if (local_88 <= 0.0) {
        local_88 = 0.0;
      }
      if (DAT_00baa454 <= local_88) {
        local_88 = DAT_00baa454;
      }
      local_88 = local_88 + 0.0;
      if ((param_1[0xf1] == 0) || (*(char *)(param_1[0xf1] + 0x173) != '\0')) {
        auVar76._8_4_ = param_1 + 0xcf;
        auVar76._0_8_ = auVar71._0_8_;
        auVar76._12_4_ = 0xffffffff;
        auVar77._8_8_ = auVar76._8_8_;
        auVar77._4_4_ = &local_c0;
        auVar77._0_4_ = 0x6a37fa;
        FUN_0041a790();
        auVar71._0_8_ = auVar77._0_8_;
        local_14 = 1;
        local_ac = 0.0;
        local_a4 = DAT_00baacc4;
        local_80 = (undefined (*) [16])0x0;
        if (local_b4 != (undefined (*) [16])0x0) {
          do {
            fVar43 = *(float *)((int)local_bc + (int)local_80 * 4);
            auVar77._8_4_ = 0x6a3842;
            auVar77._12_4_ = 0;
            cVar28 = HELPER_Entity_DamageFilter();
            auVar109 = auVar77._0_12_;
            if (cVar28 != '\0') {
              if (param_1[0xf2] != 0) {
                auVar77._8_4_ = 0x6a385a;
                auVar77._12_4_ = fVar43;
                cVar28 = FUN_006a8fa0();
                auVar109 = auVar77._0_12_;
                if (cVar28 != '\0') goto LAB_006a39af;
              }
              local_c8 = (float *)param_1[0xcf];
              local_8c = (undefined (*) [16])(*(float *)((int)fVar43 + 0x33c) - (float)local_c8);
              local_84 = (undefined (*) [16])
                         (*(float *)((int)fVar43 + 0x340) - (float)param_1[0xd0]);
              pauStack_94 = (undefined (*) [16])param_1[0xd0];
              fVar42 = (float)local_84 * (float)local_84 + (float)local_8c * (float)local_8c;
              FUN_00435a50();
              if (DAT_00ba9fe4 < fVar42) {
                local_8c = (undefined (*) [16])((DAT_00baa454 / fVar42) * (float)local_8c);
                local_84 = (undefined (*) [16])((float)local_84 * (DAT_00baa454 / fVar42));
              }
              local_ec = (float)param_1[0x10a] * DAT_00baa088;
              fVar42 = local_ec;
              FUN_0041d520();
              local_dc = (undefined (*) [16])fVar42;
              auVar77._12_4_ = 0x6a391d;
              auVar77._0_12_ = auVar109;
              fVar42 = local_ec;
              FUN_0041d540();
              local_dc = (undefined (*) [16])
                         (fVar42 * (float)local_8c + (float)local_dc * (float)local_84);
              if (DAT_00baa198 < (float)local_dc) {
                fVar42 = (float)pauStack_94 - *(float *)((int)fVar43 + 0x340);
                fVar49 = (float)local_c8 - *(float *)((int)fVar43 + 0x33c);
                fVar42 = fVar42 * fVar42 + fVar49 * fVar49;
                auVar77._12_4_ = 0x6a3978;
                FUN_00435a50();
                fVar42 = fVar42 * (DAT_00baa454 - (float)local_dc);
                if (fVar42 < local_a4) {
                  local_ac = fVar43;
                  local_a4 = fVar42;
                }
              }
            }
LAB_006a39af:
            fVar43 = local_ac;
            auVar71._0_8_ = auVar77._0_8_;
            local_80 = (undefined (*) [16])(*local_80 + 1);
          } while (local_80 < local_b4);
          if (local_ac != 0.0) {
            if (param_1[0xf1] != 0) {
              pauStack_94 = (undefined (*) [16])(param_1 + 0xf1);
              FUN_004cf210();
            }
            param_1[0xf1] = (int)fVar43;
            FUN_004cdcf0();
          }
        }
        if ((char)local_c0 == '\0') {
          local_14 = 2;
          auVar71._0_8_ = 0;
          FUN_00a648b0();
        }
        local_14 = 0xffffffff;
      }
      if ((param_1[0xf1] != 0) && (0.0 < local_88)) {
        fVar43 = *(float *)(param_1[0xf1] + 0x340) - (float)param_1[0xd0];
        FUN_00499d60();
        fVar43 = fVar43 * DAT_00baa948 - (float)param_1[0x10a];
        FUN_00682740();
        param_1[0x10a] = (int)(local_88 * (float)param_1[0xe7] * fVar43 + (float)param_1[0x10a]);
      }
    }
  }
  local_ac = DAT_00baad50;
  if ((((*(char *)(param_1 + 0x112) != '\0') && (param_1[0xef] != 0)) &&
      ((fVar43 = DAT_00baad50, puVar30 = (uint *)FUN_00417170(), (*puVar30 | puVar30[1]) != 0 ||
       ((puVar30[2] | puVar30[3]) != 0)))) && (cVar28 = FUN_006a2030(), cVar28 == '\0')) {
    local_88 = fVar43;
    if ((*(byte *)(param_1 + 0x115) & 1) == 0) {
      local_88 = DAT_00baa454;
    }
    local_8c = (undefined (*) [16])((float)param_1[0xd0] - *(float *)(param_1[0xef] + 0x340));
    local_84 = (undefined (*) [16])((float)param_1[0xcf] - *(float *)(param_1[0xef] + 0x33c));
    fVar43 = (float)local_8c * (float)local_8c + (float)local_84 * (float)local_84;
    FUN_00435a50();
    if ((NAN(fVar43) || NAN(DAT_00ba9fe4)) != (fVar43 == DAT_00ba9fe4)) {
      fVar43 = DAT_00baa120;
    }
    local_84 = (undefined (*) [16])((float)local_84 / fVar43);
    local_8c = (undefined (*) [16])((float)local_8c / fVar43);
    local_c8 = (float *)((DAT_00baa9ec - fVar43) * DAT_00baa0d0);
    fVar43 = local_88 * (float)local_8c;
    local_88 = local_88 * (float)((uint)local_84 ^ DAT_00bacb70);
    pauStack_94 = (undefined (*) [16])fVar43;
    pauVar44 = (undefined (*) [16])
               ((float)param_1[0xd8] * (float)param_1[0xd8] +
               (float)param_1[0xd9] * (float)param_1[0xd9]);
    FUN_00435a50();
    local_dc = pauVar44;
    fStack_98 = (float)local_dc * (float)pauStack_94 + (float)local_c8 * (float)local_84;
    pauStack_94 = (undefined (*) [16])
                  ((float)local_dc * local_88 + (float)local_c8 * (float)local_8c);
    pfVar33 = (float *)FUN_00a10030();
    fVar43 = pfVar33[1];
    param_1[0xd8] = (int)((float)local_dc * *pfVar33);
    param_1[0xd9] = (int)((float)local_dc * fVar43);
  }
  if (param_1[0xd] == 1) {
    pauVar44 = DAT_00baa784;
    puVar30 = (uint *)FUN_00417170();
    uVar51 = in_stack_fffffeb8._0_8_;
    if (((*puVar30 | puVar30[1]) != 0) || ((puVar30[2] | puVar30[3]) != 0)) {
      if (param_1[0xf1] == 0) {
        auVar78._8_4_ = &fStack_98;
        auVar78._0_8_ = auVar71._0_8_;
        auVar78._12_4_ = 8;
        auVar79._8_8_ = auVar78._8_8_;
        auVar79._4_4_ = local_e8;
        fStack_98 = (float)param_1[0xd8] * (float)pauVar44 + (float)param_1[0xcf];
        pauStack_94 = (undefined (*) [16])
                      ((float)param_1[0xd9] * (float)pauVar44 + (float)param_1[0xd0]);
        auVar79._0_4_ = 0x6a3d2b;
        FUN_0041a790();
        uVar51 = in_stack_fffffeb8._0_8_;
        auVar71._0_8_ = auVar79._0_8_;
        local_14 = 3;
        local_84 = (undefined (*) [16])0x0;
        if (local_dc != (undefined (*) [16])0x0) {
          do {
            iVar39 = *(int *)(local_e4 + (int)local_84 * 4);
            auVar79._8_4_ = 0x6a3d55;
            auVar79._12_4_ = 0;
            cVar28 = HELPER_Entity_DamageFilter();
            if (cVar28 != '\0') {
              if (param_1[0xf2] != 0) {
                auVar79._8_4_ = 0x6a3d78;
                auVar79._12_4_ = *(undefined4 *)(local_e4 + (int)local_84 * 4);
                cVar28 = FUN_006a8fa0();
                if (cVar28 != '\0') goto LAB_006a3e32;
              }
              if ((*(uint *)(iVar39 + 0x168) & 0x20000010) == 0) {
                auVar79._12_4_ = 0x6a3d99;
                uVar34 = FUN_006eef60();
                if ((uVar34 & 1) != 0) {
                  auVar80._0_8_ = auVar79._0_8_;
                  auVar80._8_4_ = 5;
                  auVar80._12_4_ = param_1[8];
                  auVar79._8_8_ = auVar80._8_8_;
                  auVar79._0_8_ = 0x6a3dae00000000;
                  cVar28 = FUN_006ac710();
                  if (cVar28 != '\0') {
                    local_c8 = *(float **)(iVar39 + 0x340);
                    local_cc = *(undefined4 *)(iVar39 + 0x33c);
                    auVar4._12_4_ = 0;
                    auVar4._0_12_ = ZEXT412(0);
                    auVar79 = auVar4 << 0x20;
                    in_stack_fffffeb8._12_4_ = 0x6a3df6;
                    cVar28 = FUN_007f0df0(param_1 + 0xcf,&local_cc,1,0,ZEXT412(0));
                    auVar71._0_8_ = auVar79._0_8_;
                    if (cVar28 != '\0') {
                      if (param_1[0xf1] != 0) {
                        pauStack_94 = (undefined (*) [16])(param_1 + 0xf1);
                        FUN_004cf210();
                      }
                      param_1[0xf1] = iVar39;
                      auVar79._8_4_ = 0x6a3e32;
                      auVar79._0_8_ = auVar71._0_8_;
                      auVar79._12_4_ = param_1 + 0xf1;
                      FUN_004cdcf0();
                    }
                  }
                }
              }
            }
LAB_006a3e32:
            uVar51 = in_stack_fffffeb8._0_8_;
            auVar71._0_8_ = auVar79._0_8_;
            local_84 = (undefined (*) [16])(*local_84 + 1);
          } while (local_84 < local_dc);
        }
        local_14 = 0xffffffff;
        if (local_e8[0] == '\0') {
          local_14 = 4;
          auVar71._0_8_ = 0;
          FUN_00a648b0();
          local_14 = 0xffffffff;
        }
      }
      else {
        cVar28 = FUN_006a2030();
        if ((cVar28 == '\0') && (uVar34 = FUN_006eef60(), (uVar34 & 1) == 0)) {
          fStack_98 = (float)param_1[0xcf] - *(float *)(param_1[0xf1] + 0x33c);
          pauStack_94 = (undefined (*) [16])
                        ((float)param_1[0xd0] - *(float *)(param_1[0xf1] + 0x340));
          pfVar33 = (float *)FUN_00a10030();
          fVar43 = pfVar33[1] * _DAT_00baa4e0;
          param_1[0xd8] = (int)((float)param_1[0xd8] - *pfVar33 * _DAT_00baa4e0);
          param_1[0xd9] = (int)((float)param_1[0xd9] - fVar43);
        }
      }
    }
    if ((*(char *)((int)param_1 + 0x173) == '\0') &&
       ((puVar30 = (uint *)FUN_00417170(), (*puVar30 | puVar30[1]) != 0 ||
        ((puVar30[2] | puVar30[3]) != 0)))) {
      auVar71._0_8_ = 0;
      cVar28 = FUN_006ac710();
      if (cVar28 != '\0') {
        if (*(int *)(DAT_00c71678 + 0x26614) < 2) {
          pauVar44 = (undefined (*) [16])(((float)param_1[0x106] - DAT_00baa8d0) / DAT_00baa6fc);
          local_80 = DAT_00baa7a4;
          if ((float)DAT_00baa7a4 <= (float)pauVar44) {
            local_80 = pauVar44;
          }
        }
        else {
          local_80 = DAT_00baa784;
        }
        uVar31 = FUN_006eef60();
        auVar109._8_4_ = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
        auVar109._0_8_ = 0xc5d5dc00000000;
        auVar81._8_8_ = 0;
        auVar81._0_8_ = auVar109._4_8_;
        auVar81 = auVar81 << 0x20;
        auVar53._8_4_ = param_1 + 0xcf;
        auVar53._0_8_ = uVar51;
        auVar53._12_4_ = &DAT_00c7b640;
        auVar54._8_8_ = auVar53._8_8_;
        auVar54._0_8_ = 0x2e00000000;
        uVar31 = HELPER_Entity_SpawnRelay(1000,auVar54._4_12_,param_1[0xf2],0,uVar31);
        piVar32 = (int *)__RTDynamicCast(uVar31,auVar81);
        iVar39 = FUN_006eef60();
        auVar107._8_4_ = 0;
        auVar107._0_8_ = SUB128(ZEXT412(100) << 0x40,4);
        uVar60 = 0;
        fVar42 = (float)((double)iVar39 + (double)(&DAT_00bacb00)[-(iVar39 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa304 + DAT_00baa1f8;
        fVar43 = fVar42 * DAT_00c3793c;
        piVar32[0x3a] = (int)(fVar42 * DAT_00c37940);
        piVar32[0x39] = (int)fVar43;
        uVar31 = FUN_00435ad0(0x3f800000,auVar107);
        auVar82._8_4_ = 0;
        auVar82._0_8_ = uVar60;
        auVar82._12_4_ = 1;
        auVar83._8_8_ = auVar82._8_8_;
        auVar83._0_8_ = 0xff00000000;
        auVar84._4_12_ = auVar83._4_12_;
        auVar84._0_4_ = 0xffffffff;
        auVar71._0_8_ = auVar84._0_8_;
        (**(code **)(*piVar32 + 0x3c))(uVar31,0xffffffff);
        (**(code **)(*piVar32 + 0x40))(local_80);
        if (((param_1[0xf2] != 0) && (*(int *)(param_1[0xf2] + 0x28) == 1)) &&
           (iVar39 = FUN_007cb6e0(0x47), fVar43 = DAT_00baa630, 1 < iVar39)) {
          fVar42 = DAT_00baa528;
          if (2 < iVar39) {
            fVar42 = (float)piVar32[0x117] * DAT_00baa528;
            piVar32[0x117] = (int)fVar42;
            piVar32[0x118] = (int)fVar42;
            fVar42 = fVar43;
          }
          piVar32[0x3a] = (int)(fVar42 * (float)piVar32[0x3a]);
          piVar32[0x39] = (int)(fVar42 * (float)piVar32[0x39]);
        }
        piVar32[0xd] = param_1[0xd];
        piVar32[0xe] = param_1[0xe];
        (**(code **)(*piVar32 + 0xc))();
      }
    }
  }
  if (((param_1[0xb] != 0x13) && (param_1[0xb] != 0x14)) &&
     ((DAT_00ba9fe4 <= (float)param_1[0xd4] || (*(char *)(param_1 + 0x112) == '\0')))) {
    fVar42 = (float)param_1[0xd8] * DAT_00baa418;
    fVar43 = (float)param_1[0xd9] * DAT_00baa418;
    param_1[0xd8] = (int)fVar42;
    param_1[0xd9] = (int)fVar43;
    if (fVar42 * fVar42 + fVar43 * fVar43 < DAT_00baa454) {
      fVar43 = (float)param_1[0xd9] * DAT_00baa2d0;
      param_1[0xd8] = (int)(fVar42 * DAT_00baa2d0);
      param_1[0xd9] = (int)fVar43;
    }
  }
  puVar30 = (uint *)FUN_00417170();
  if ((((*puVar30 | puVar30[1]) != 0) || ((puVar30[2] | puVar30[3]) != 0)) &&
     (iVar39 = param_1[0x114], iVar39 != 0)) {
    fVar43 = *(float *)(iVar39 + 0x364) * DAT_00baa3e0;
    *(float *)(iVar39 + 0x360) = *(float *)(iVar39 + 0x360) * DAT_00baa3e0;
    *(float *)(iVar39 + 0x364) = fVar43;
  }
  if (param_1[0x104] < 1) {
    local_80 = (undefined (*) [16])(local_b0 + 0x1508);
LAB_006a4412:
    if ((*(char *)(param_1 + 0x112) == '\0') && (local_b0 != 0)) {
      auVar71._0_8_ = 0;
      cVar28 = FUN_007706e0();
      if (cVar28 == '\0') goto LAB_006a444c;
      auVar102._8_4_ = 0x6a443e;
      auVar102._0_8_ = auVar71._0_8_;
      auVar102._12_4_ = 0x89;
      cVar28 = FUN_009305f0();
      if ((cVar28 != '\0') || (param_1[0xd] != 1)) goto LAB_006a444c;
    }
    else {
LAB_006a444c:
      auVar68 = *(undefined (*) [16])(param_1 + 0x10e);
      if ((param_1[0xb] == 0x11) || (_local_a0 = auVar68, param_1[0xb] == 0x14)) {
        local_a0._0_4_ = auVar68._0_4_;
        local_a0._4_4_ = auVar68._4_4_;
        local_a0._4_4_ = local_a0._4_4_ | DAT_00c347d4;
        local_a0._0_4_ = local_a0._0_4_ | DAT_00c347d0;
        fStack_98 = auVar68._8_4_;
        pauStack_94 = auVar68._12_4_;
        fStack_98 = (float)((uint)fStack_98 | DAT_00c347d8);
        pauStack_94 = (undefined (*) [16])((uint)pauStack_94 | DAT_00c347dc);
        param_1[0x116] = 5;
      }
      uVar31 = 4;
      if (*(char *)(param_1 + 0x112) == '\0') {
        uVar31 = 0x40000004;
      }
      local_c8 = (float *)(param_1 + 0xcf);
      lVar61 = 0;
      auVar56 = _local_a0;
      FUN_00700060(local_c8,param_1[0x106],_local_a0,param_1 + 0x3c,param_1,param_1[0x113],1,uVar31)
      ;
      if (local_b0 == 0) {
        local_88 = (float)param_1[0xb];
      }
      else {
        local_88 = 0.0;
      }
      puVar30 = (uint *)FUN_00417170();
      if (((*puVar30 | puVar30[1]) != 0) || ((puVar30[2] | puVar30[3]) != 0)) {
        uVar34 = FUN_006eef60();
        local_84 = (undefined (*) [16])((uVar34 & 1) + 4);
        do {
          auVar71._0_8_ = auVar56._0_8_;
          iVar39 = FUN_006eef60();
          fVar43 = (float)((double)iVar39 + (double)(&DAT_00bacb00)[-(iVar39 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa704;
          pauVar44 = (undefined (*) [16])(fVar43 + fVar43);
          pauStack_94 = pauVar44;
          FUN_0041d540();
          local_80 = pauVar44;
          fVar43 = (float)pauStack_94;
          FUN_0041d520();
          local_a4 = fVar43;
          uVar31 = FUN_006eef60();
          iVar39 = param_1[0xf2];
          iVar36 = FUN_006eef60();
          local_f0 = (float)((double)iVar36 + (double)(&DAT_00bacb00)[-(iVar36 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa7b8 + DAT_00baa6fc;
          local_ec = local_f0 * local_a4;
          local_f0 = local_f0 * (float)local_80;
          iVar36 = FUN_006eef60();
          param_1 = local_d0;
          auVar5._8_4_ = &IsaacRepentancePlus::Entity_Bomb::RTTI_Type_Descriptor;
          auVar5._0_8_ = 0xc5d5dc00000000;
          auVar91._8_8_ = 0;
          auVar91._0_8_ = auVar5._4_8_;
          auVar91 = auVar91 << 0x20;
          fVar43 = (float)((double)iVar36 + (double)(&DAT_00bacb00)[-(iVar36 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa854;
          local_d8 = fVar43 * (float)local_80 + *local_c8;
          local_d4 = fVar43 * local_a4 + (float)local_d0[0xd0];
          auVar55._8_4_ = &local_d8;
          auVar55._0_8_ = auVar71._0_8_;
          auVar55._12_4_ = &local_f0;
          auVar6._4_8_ = auVar55._8_8_;
          auVar6._0_4_ = local_88;
          auVar56._4_12_ = auVar6;
          auVar56._0_4_ = local_d0[10];
          uVar31 = HELPER_Entity_SpawnRelay(local_d0[10],auVar6,iVar39,0,uVar31);
          auVar71._0_8_ = auVar91._0_8_;
          iVar39 = __RTDynamicCast(uVar31,auVar91);
          *(undefined *)(iVar39 + 0x448) = *(undefined *)(param_1 + 0x112);
          *(int *)(iVar39 + 0x34) = param_1[0xd];
          *(int *)(iVar39 + 0x38) = param_1[0xe];
          FUN_00592200();
          puVar37 = (undefined4 *)FUN_00417170();
          fVar43 = DAT_00baa2d0;
          uVar31 = *puVar37;
          uVar35 = puVar37[1];
          uVar2 = puVar37[2];
          uVar3 = puVar37[3];
          *(undefined *)(iVar39 + 0x463) = 1;
          *(undefined4 *)(iVar39 + 0x438) = uVar31;
          *(undefined4 *)(iVar39 + 0x43c) = uVar35;
          *(undefined4 *)(iVar39 + 0x440) = uVar2;
          *(undefined4 *)(iVar39 + 0x444) = uVar3;
          *(float *)(iVar39 + 0x434) = (float)param_1[0x10d] * fVar43;
          *(float *)(iVar39 + 0x418) = (float)param_1[0x106] * fVar43;
          *(float *)(iVar39 + 0x44c) = (float)param_1[0x113] * DAT_00baa324;
          local_dc = (undefined (*) [16])((uint)DAT_00c37940 ^ DAT_00bacb70);
          local_e0 = (uint)DAT_00c3793c ^ DAT_00bacb70;
          auVar92._8_4_ = local_dc;
          auVar92._0_8_ = auVar71._0_8_;
          auVar92._12_4_ = 0xffffffff;
          auVar7._4_8_ = auVar92._8_8_;
          auVar7._0_4_ = local_e0;
          fVar43 = *(float *)(iVar39 + 0x370) * fVar43;
          auVar93._4_12_ = auVar7;
          auVar93._0_4_ = fVar43;
          lVar61 = auVar93._0_8_;
          FUN_006ac2a0(fVar43,auVar7);
          if ((*(int *)(iVar39 + 0x2c) == 0x13) || (*(int *)(iVar39 + 0x2c) == 0x14)) {
            iVar36 = FUN_006eef60();
            *(undefined4 *)(iVar39 + 0x420) = 0x3fa66666;
            fVar43 = (float)((double)iVar36 + (double)(&DAT_00bacb00)[-(iVar36 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa81c;
          }
          else {
            iVar36 = FUN_006eef60();
            fVar43 = (float)((double)iVar36 + (double)(&DAT_00bacb00)[-(iVar36 >> 0x1f)]) *
                     DAT_00ba9ff4 * (float)DAT_00baa784;
          }
          *(float *)(iVar39 + 0x41c) = DAT_00baad84 - fVar43;
          *(undefined4 *)(iVar39 + 0x34c) = 0;
          *(undefined4 *)(iVar39 + 0x350) = 0xc0400000;
          iVar36 = FUN_007e9020();
          *(uint *)(iVar39 + 0x168) = *(uint *)(iVar39 + 0x168) | 0x4000000;
          *(uint *)(iVar39 + 0x16c) = *(uint *)(iVar39 + 0x16c) | 0x400;
          local_84 = (undefined (*) [16])((int)local_84 + -1);
          *(int *)(iVar39 + 0x410) = iVar36 + 10;
          *(int *)(iVar39 + 0x414) = iVar36 + 10;
        } while (local_84 != (undefined (*) [16])0x0);
        local_84 = (undefined (*) [16])0x0;
      }
      puVar30 = (uint *)FUN_00417170();
      auVar109 = auVar56._0_12_;
      if (((*puVar30 | puVar30[1]) != 0) || ((puVar30[2] | puVar30[3]) != 0)) {
        if (DAT_00baa380 < (float)param_1[0x10d]) {
          iVar39 = FUN_006eef60();
          local_80 = (undefined (*) [16])0x2c;
          pauStack_94 = (undefined (*) [16])
                        ((float)((double)iVar39 + (double)(&DAT_00bacb00)[-(iVar39 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa280 + DAT_00baa630);
          FUN_00956780();
          auVar23._4_8_ = 0;
          auVar23._0_4_ = pauStack_94;
          auVar108._8_4_ = 0;
          auVar108._0_8_ = SUB128(auVar23 << 0x40,4);
          auVar71._0_8_ = 0;
          FUN_0092dc30(local_80,0x3f333333,2,auVar108);
          local_c0 = param_1[0xfb];
          local_bc = DAT_00b1f564;
          local_b4 = DAT_00b1f56c;
          uVar31 = FUN_007e90f0();
          auVar95._8_4_ = 1;
          auVar95._0_8_ = auVar71._0_8_;
          auVar95._12_4_ = uVar31;
          auVar9._4_8_ = auVar95._8_8_;
          auVar9._0_4_ = local_b0;
          lVar61 = auVar9._0_8_ << 0x20;
          auVar56._12_4_ = 0x6a4a18;
          auVar56._0_12_ = auVar109;
          piVar32 = (int *)HELPER_Entity_SpawnRelay(1000,0xba,param_1 + 0xcf,&DAT_00c7b640,auVar9);
          iVar39 = 0x168;
          if (*(char *)(param_1 + 0x112) != '\0') {
            iVar39 = 0xb4;
          }
          piVar32[0x117] = iVar39;
          piVar32[0x118] = iVar39;
          (**(code **)(*piVar32 + 0x40))();
          auVar96._8_4_ = (uint)DAT_00c37940 ^ DAT_00bacb70;
          auVar96._0_8_ = lVar61;
          auVar96._12_4_ = 0xffffffff;
          fStack_98 = (float)((uint)DAT_00c3793c ^ DAT_00bacb70);
          pauStack_94 = (undefined (*) [16])((uint)DAT_00c37940 ^ DAT_00bacb70);
          auVar10._4_8_ = auVar96._8_8_;
          auVar10._0_4_ = (uint)DAT_00c3793c ^ DAT_00bacb70;
          auVar97._4_12_ = auVar10;
          auVar97._0_4_ = (float)piVar32[0xdc] * (float)param_1[0x10d];
          lVar61 = auVar97._0_8_;
          FUN_006ac2a0((float)piVar32[0xdc] * (float)param_1[0x10d],auVar10);
          fVar43 = (float)param_1[0x10d];
        }
        else {
          local_c0 = param_1[0xfb];
          local_bc = DAT_00b1f564;
          local_b4 = DAT_00b1f56c;
          uVar31 = FUN_007e90f0();
          auVar94._8_4_ = 1;
          auVar94._0_8_ = lVar61;
          auVar94._12_4_ = uVar31;
          auVar8._4_8_ = auVar94._8_8_;
          auVar8._0_4_ = local_b0;
          lVar61 = auVar8._0_8_ << 0x20;
          auVar56._12_4_ = 0x6a490f;
          auVar56._0_12_ = auVar109;
          piVar32 = (int *)HELPER_Entity_SpawnRelay(1000,0xbd,param_1 + 0xcf,&DAT_00c7b640,auVar8);
          if (piVar32[0x1f] != 0) {
            FUN_00408d00();
          }
          fVar43 = (float)param_1[0x10d] + (float)param_1[0x10d];
        }
        fVar42 = fVar43 * DAT_00c37940;
        piVar32[0x39] = (int)(fVar43 * DAT_00c3793c);
        piVar32[0x3a] = (int)fVar42;
        (**(code **)(*piVar32 + 0xc))();
      }
      *(undefined *)((int)param_1 + 0x173) = 1;
      if (param_1[0xff] == 0) {
        lVar61 = 0;
        HELPER_0040a380_AnimationActionA();
      }
      if (*(char *)(param_1 + 0x112) == '\0') {
        auVar102._8_4_ = 0x6a50e9;
        auVar102._0_8_ = lVar61;
        auVar102._12_4_ = &DAT_00c34930;
        puVar30 = (uint *)FUN_00417170();
        if ((((*puVar30 | puVar30[1]) != 0) || ((puVar30[2] | puVar30[3]) != 0)) &&
           (iVar39 = param_1[0x114], iVar39 != 0)) {
          *(uint *)(iVar39 + 0x168) = *(uint *)(iVar39 + 0x168) | 0x400000;
          *(undefined4 *)(iVar39 + 0x16c) = *(undefined4 *)(iVar39 + 0x16c);
        }
        if ((param_1[0xb] != 0xd) && (local_b0 != 0)) {
          auVar102._8_4_ = 0x49;
          auVar102._0_8_ = 0x6a513600000000;
          auVar102._12_4_ = 0;
          cVar28 = FUN_00771550();
          if (cVar28 != '\0') {
            auVar71._0_8_ = auVar102._0_8_;
            FUN_0065cf80();
            iVar39 = FUN_007cb6e0();
            auVar102._8_4_ = 0x6a5164;
            auVar102._0_8_ = auVar71._0_8_;
            auVar102._12_4_ = (int)(10 / (longlong)iVar39);
            iVar39 = FUN_007e9020();
            if (iVar39 == 0) {
              auVar71._0_8_ = auVar102._0_8_;
              uVar31 = FUN_006eef60();
              auVar103._8_4_ = 1;
              auVar103._0_8_ = auVar71._0_8_;
              auVar103._12_4_ = uVar31;
              auVar24._8_8_ = 0;
              auVar24._0_8_ = auVar103._8_8_;
              auVar109 = SUB1612(auVar24 << 0x40,4);
              auVar26._12_4_ = 0;
              auVar26._0_12_ = auVar109;
              auVar102 = auVar26 << 0x20;
              HELPER_Entity_SpawnRelay(5,0x28,param_1 + 0xcf,&DAT_00c7b640,auVar109);
            }
          }
        }
      }
      else {
        puVar30 = (uint *)FUN_00417170();
        auVar71._0_8_ = auVar56._0_8_;
        if (((*puVar30 | puVar30[1]) != 0) || ((puVar30[2] | puVar30[3]) != 0)) {
          uVar31 = FUN_006eef60();
          auVar11._8_4_ = &IsaacRepentancePlus::Entity_Bomb::RTTI_Type_Descriptor;
          auVar11._0_8_ = 0xc5d5dc00000000;
          auVar98._8_8_ = 0;
          auVar98._0_8_ = auVar11._4_8_;
          auVar98 = auVar98 << 0x20;
          auVar57._8_4_ = param_1 + 0xcf;
          auVar57._0_8_ = auVar71._0_8_;
          auVar57._12_4_ = param_1 + 0xd8;
          auVar12._4_8_ = auVar57._8_8_;
          auVar12._0_4_ = param_1[0xb];
          auVar56._4_12_ = auVar12;
          auVar56._0_4_ = 4;
          uVar31 = HELPER_Entity_SpawnRelay(4,auVar12,param_1[0xf2],0,uVar31);
          lVar61 = auVar98._0_8_;
          iVar39 = __RTDynamicCast(uVar31,auVar98);
          *(int *)(iVar39 + 0x34) = param_1[0xd];
          *(int *)(iVar39 + 0x38) = param_1[0xe];
          *(undefined *)(iVar39 + 0x448) = 1;
          FUN_00592200();
          pauVar44 = (undefined (*) [16])FUN_00417170();
          auVar68 = *pauVar44;
          *(undefined *)(iVar39 + 0x463) = 1;
          *(undefined (*) [16])(iVar39 + 0x438) = auVar68;
          if ((*(int *)(iVar39 + 0x2c) == 0x13) || (*(int *)(iVar39 + 0x2c) == 0x14)) {
            *(int *)(iVar39 + 0x428) = param_1[0x10a];
            uVar31 = 0x3c;
          }
          else {
            uVar31 = 0x1e;
          }
          *(undefined4 *)(iVar39 + 0x410) = uVar31;
          *(undefined4 *)(iVar39 + 0x414) = uVar31;
          *(uint *)(iVar39 + 0x168) = *(uint *)(iVar39 + 0x168) | 0x4000000;
          *(uint *)(iVar39 + 0x16c) = *(uint *)(iVar39 + 0x16c) | 0x400;
        }
        puVar30 = (uint *)FUN_00417170();
        if (((*puVar30 | puVar30[1]) != 0) || ((puVar30[2] | puVar30[3]) != 0)) {
          local_84 = (undefined (*) [16])param_1[0xd9];
          local_8c = (undefined (*) [16])(param_1[0xd8] ^ DAT_00bacb70);
          fVar43 = (float)local_84 * (float)local_84 + (float)local_8c * (float)local_8c;
          FUN_00435a50();
          if (DAT_00ba9fe4 < fVar43) {
            local_84 = (undefined (*) [16])((float)local_84 * (DAT_00baa454 / fVar43));
            local_8c = (undefined (*) [16])((float)local_8c * (DAT_00baa454 / fVar43));
          }
          do {
            auVar71._0_8_ = auVar56._0_8_;
            uVar31 = FUN_006eef60();
            local_d8 = local_ac * (float)local_84 * (float)DAT_00baa784;
            auVar13._8_4_ = &IsaacRepentancePlus::Entity_Bomb::RTTI_Type_Descriptor;
            auVar13._0_8_ = 0xc5d5dc00000000;
            auVar99._8_8_ = 0;
            auVar99._0_8_ = auVar13._4_8_;
            auVar99 = auVar99 << 0x20;
            local_d4 = local_ac * (float)local_8c * (float)DAT_00baa784;
            auVar58._8_4_ = &fStack_98;
            auVar58._0_8_ = auVar71._0_8_;
            auVar58._12_4_ = &local_d8;
            auVar14._4_8_ = auVar58._8_8_;
            auVar14._0_4_ = local_88;
            auVar56._4_12_ = auVar14;
            auVar56._0_4_ = 4;
            fStack_98 = (float)param_1[0xdc] * (float)local_84 * local_ac + (float)param_1[0xcf];
            pauStack_94 = (undefined (*) [16])
                          ((float)param_1[0xdc] * (float)local_8c * local_ac + (float)param_1[0xd0])
            ;
            uVar31 = HELPER_Entity_SpawnRelay(4,auVar14,param_1[0xf2],0,uVar31);
            lVar61 = auVar99._0_8_;
            iVar39 = __RTDynamicCast(uVar31,auVar99);
            *(int *)(iVar39 + 0x34) = param_1[0xd];
            *(int *)(iVar39 + 0x38) = param_1[0xe];
            *(undefined *)(iVar39 + 0x448) = 1;
            FUN_00592200();
            puVar37 = (undefined4 *)FUN_00417170();
            fVar43 = DAT_00baa454;
            uVar31 = *puVar37;
            uVar35 = puVar37[1];
            uVar2 = puVar37[2];
            uVar3 = puVar37[3];
            *(uint *)(iVar39 + 0x168) = *(uint *)(iVar39 + 0x168) | 0x4000000;
            *(uint *)(iVar39 + 0x16c) = *(uint *)(iVar39 + 0x16c) | 0x400;
            *(undefined4 *)(iVar39 + 0x438) = uVar31;
            *(undefined4 *)(iVar39 + 0x43c) = uVar35;
            *(undefined4 *)(iVar39 + 0x440) = uVar2;
            *(undefined4 *)(iVar39 + 0x444) = uVar3;
            *(undefined *)(iVar39 + 0x463) = 1;
            fVar42 = *(float *)(iVar39 + 0x418) * DAT_00baa280;
            *(undefined4 *)(iVar39 + 0x410) = 0xf;
            *(undefined4 *)(iVar39 + 0x414) = 0xf;
            *(float *)(iVar39 + 0x418) = fVar42;
            local_ac = local_ac + DAT_00baa630;
          } while (local_ac <= fVar43);
        }
        auVar102._8_4_ = 0x6a4e33;
        auVar102._0_8_ = lVar61;
        auVar102._12_4_ = &DAT_00c34880;
        puVar30 = (uint *)FUN_00417170();
        if (((*puVar30 | puVar30[1]) != 0) || ((puVar30[2] | puVar30[3]) != 0)) {
          iVar39 = FUN_006eef60();
          fVar43 = (float)((double)iVar39 + (double)(&DAT_00bacb00)[-(iVar39 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa704;
          pauVar44 = (undefined (*) [16])(fVar43 + fVar43);
          pauStack_94 = pauVar44;
          FUN_0041d540();
          local_84 = pauVar44;
          pauVar44 = pauStack_94;
          FUN_0041d520();
          local_8c = pauVar44;
          pfVar33 = DAT_00baa54c;
          FUN_0041d540();
          local_c8 = pfVar33;
          pfVar33 = DAT_00baa54c;
          FUN_0041d520();
          pauStack_94 = (undefined (*) [16])pfVar33;
          local_80 = (undefined (*) [16])0x4;
          do {
            auVar71._0_8_ = auVar56._0_8_;
            uVar31 = FUN_006eef60();
            local_d8 = (float)local_84 * DAT_00baa7b0;
            auVar15._8_4_ = &IsaacRepentancePlus::Entity_Bomb::RTTI_Type_Descriptor;
            auVar15._0_8_ = 0xc5d5dc00000000;
            local_d4 = (float)local_8c * DAT_00baa7b0;
            auVar100._8_8_ = 0;
            auVar100._0_8_ = auVar15._4_8_;
            auVar100 = auVar100 << 0x20;
            auVar59._8_4_ = &local_f0;
            auVar59._0_8_ = auVar71._0_8_;
            auVar59._12_4_ = &local_d8;
            local_ec = (float)param_1[0xdc] * (float)local_8c + (float)param_1[0xd0];
            auVar16._4_8_ = auVar59._8_8_;
            auVar16._0_4_ = local_88;
            local_f0 = (float)param_1[0xdc] * (float)local_84 + (float)param_1[0xcf];
            auVar56._4_12_ = auVar16;
            auVar56._0_4_ = param_1[10];
            uVar31 = HELPER_Entity_SpawnRelay(param_1[10],auVar16,param_1[0xf2],0,uVar31);
            auVar71._0_8_ = auVar100._0_8_;
            iVar39 = __RTDynamicCast(uVar31,auVar100);
            *(int *)(iVar39 + 0x34) = param_1[0xd];
            *(int *)(iVar39 + 0x38) = param_1[0xe];
            *(undefined *)(iVar39 + 0x448) = 1;
            FUN_00592200();
            puVar37 = (undefined4 *)FUN_00417170();
            fVar43 = DAT_00baa2d0;
            uVar31 = *puVar37;
            uVar35 = puVar37[1];
            uVar2 = puVar37[2];
            uVar3 = puVar37[3];
            *(undefined *)(iVar39 + 0x463) = 1;
            *(undefined4 *)(iVar39 + 0x438) = uVar31;
            *(undefined4 *)(iVar39 + 0x43c) = uVar35;
            *(undefined4 *)(iVar39 + 0x440) = uVar2;
            *(undefined4 *)(iVar39 + 0x444) = uVar3;
            *(float *)(iVar39 + 0x434) = (float)param_1[0x10d] * fVar43;
            *(float *)(iVar39 + 0x418) = *(float *)(iVar39 + 0x418) * DAT_00baa244;
            *(float *)(iVar39 + 0x44c) = (float)param_1[0x113] * fVar43;
            local_dc = (undefined (*) [16])((uint)DAT_00c37940 ^ DAT_00bacb70);
            local_e0 = (uint)DAT_00c3793c ^ DAT_00bacb70;
            auVar101._8_4_ = local_dc;
            auVar101._0_8_ = auVar71._0_8_;
            auVar101._12_4_ = 0xffffffff;
            auVar17._4_8_ = auVar101._8_8_;
            auVar17._0_4_ = local_e0;
            fVar43 = *(float *)(iVar39 + 0x370) * fVar43;
            auVar102._4_12_ = auVar17;
            auVar102._0_4_ = fVar43;
            FUN_006ac2a0(fVar43,auVar17);
            *(uint *)(iVar39 + 0x168) = *(uint *)(iVar39 + 0x168) | 0x4000000;
            *(uint *)(iVar39 + 0x16c) = *(uint *)(iVar39 + 0x16c) | 0x400;
            *(undefined4 *)(iVar39 + 0x410) = 7;
            *(undefined4 *)(iVar39 + 0x414) = 7;
            local_80 = (undefined (*) [16])((int)local_80 + -1);
            fVar43 = (float)pauStack_94 * (float)local_84;
            local_84 = (undefined (*) [16])
                       ((float)local_c8 * (float)local_84 - (float)pauStack_94 * (float)local_8c);
            local_8c = (undefined (*) [16])((float)local_c8 * (float)local_8c + fVar43);
          } while (local_80 != (undefined (*) [16])0x0);
          local_80 = (undefined (*) [16])0x0;
        }
      }
      if (param_1[0xb] == 0x12) {
        *(undefined *)((int)param_1 + 0x173) = 0;
        auVar71._0_8_ = auVar102._0_8_;
        iVar39 = FUN_007e9020();
        auVar104._8_4_ = "Appear";
        auVar104._0_8_ = auVar71._0_8_;
        auVar104._12_4_ = 1;
        param_1[0x104] = iVar39 + 0x3c;
        auVar105._8_8_ = auVar104._8_8_;
        auVar105._0_8_ = 0x6a51c500000000;
        auVar109 = auVar105._0_12_;
        cVar28 = HELPER_0040a5d0_AnimationPredicateC();
        if (cVar28 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
        if (param_1[0x1f] != 0) {
          FUN_00408e00();
        }
        FUN_007e90f0();
        pfVar33 = (float *)FUN_0067f0d0();
        auVar102._12_4_ = 0x6a5215;
        auVar102._0_12_ = auVar109;
        FUN_007e90f0();
        fVar42 = (float)((double)param_1[0xf7] + (double)(&DAT_00bacb00)[-(param_1[0xf7] >> 0x1f)])
                 * DAT_00ba9ff0 * (float)DAT_00baa784 + (float)DAT_00baa784;
        fVar43 = *pfVar33;
        param_1[0xd9] = (int)(fVar42 * pfVar33[1]);
        param_1[0xd8] = (int)(fVar42 * fVar43);
        param_1[0x117] = 0x5a;
      }
      if (((((param_1[0x5b] & 0x400U) == 0) && (local_b0 != 0)) && (param_1[0xf2] == local_b0)) &&
         (*(char *)(param_1 + 0x112) == '\0')) {
        auVar102._8_4_ = 0x6a52ad;
        auVar102._12_4_ = 0x89;
        cVar28 = FUN_009305f0();
        if (cVar28 != '\0') {
          auVar102._8_4_ = 0x248;
          auVar102._0_8_ = 0x6a52bf00000000;
          auVar102._12_4_ = 0;
          cVar28 = FUN_007706e0();
          if (cVar28 != '\0') {
            auVar110._4_8_ = 0;
            auVar110._0_4_ = param_1 + 0xcf;
            auVar102._4_12_ = auVar110;
            auVar102._0_4_ = 0x89;
            FUN_005c93b0(0x89,auVar110);
          }
        }
      }
    }
  }
  else {
    if ((param_1[0xd] == 1) && (local_b0 != 0)) {
      local_80 = (undefined (*) [16])(local_b0 + 0x1508);
      cVar28 = FUN_009305f0();
      if (cVar28 != '\0') goto LAB_006a4412;
    }
    if ((param_1[0xb] == 0x13) || (param_1[0xb] == 0x14)) {
      auVar71._0_8_ = 0;
      cVar28 = FUN_00417430();
      if (cVar28 == '\0') goto LAB_006a4288;
    }
    else {
LAB_006a4288:
      param_1[0x104] = param_1[0x104] + -1;
    }
    puVar30 = (uint *)FUN_00417170();
    if (((*puVar30 | puVar30[1]) != 0) || ((puVar30[2] | puVar30[3]) != 0)) {
      auVar85._8_8_ = 0;
      auVar85._4_4_ = param_1 + 0xcf;
      auVar85._0_4_ = 0x6a42d8;
      auVar71._0_8_ = auVar85._0_8_;
      FUN_00705b90();
    }
    auVar102._8_4_ = 0x6a42eb;
    auVar102._0_8_ = auVar71._0_8_;
    auVar102._12_4_ = 0x3f;
    cVar28 = FUN_0044bfb0();
    uVar60 = auVar102._0_8_;
    if ((cVar28 != '\0') && (param_1[0x104] == 0)) {
      iVar39 = param_1[0xb];
      if ((iVar39 == 3) || (((iVar39 == 4 || (iVar39 == 8)) || (iVar39 == 0x12)))) {
LAB_006a4340:
        (**(code **)(*param_1 + 0x28))();
        auVar86._8_4_ = 0;
        auVar86._0_8_ = uVar60;
        auVar86._12_4_ = 0x3f800000;
        auVar87._8_8_ = auVar86._8_8_;
        auVar87._0_8_ = 0x200000000;
        auVar88._4_12_ = auVar87._4_12_;
        auVar88._0_4_ = 900;
        auVar71._0_8_ = auVar88._0_8_;
        FUN_009568e0(900,auVar88._4_12_);
        iVar39 = param_1[0xb];
        uVar31 = 1;
        if (iVar39 == 4) {
          uVar31 = 2;
        }
        else if (iVar39 == 0x12) {
          uVar31 = 4;
        }
        else if (iVar39 == 0x11) {
          uVar31 = 7;
        }
        uVar35 = FUN_006eef60();
        auVar89._8_4_ = uVar31;
        auVar89._0_8_ = auVar71._0_8_;
        auVar89._12_4_ = uVar35;
        auVar21._8_8_ = 0;
        auVar21._0_8_ = auVar89._8_8_;
        auVar71._0_8_ = 0;
        iVar39 = HELPER_Entity_SpawnRelay
                           (5,0x28,param_1 + 0xcf,param_1 + 0xd8,SUB1612(auVar21 << 0x40,4));
        if (*(int *)(iVar39 + 0x7c) != 0) {
          FUN_00408e00();
        }
        uVar31 = FUN_006eef60();
        auVar90._8_4_ = 1;
        auVar90._0_8_ = auVar71._0_8_;
        auVar90._12_4_ = uVar31;
        auVar22._8_8_ = 0;
        auVar22._0_8_ = auVar90._8_8_;
        HELPER_Entity_SpawnRelay(1000,0xf,param_1 + 0xcf,&DAT_00c7b640,SUB1612(auVar22 << 0x40,4));
        goto LAB_006a5a3c;
      }
      if ((iVar39 == 0x11) && (param_1[0xd] != 1)) {
        auVar102._8_4_ = 0x20000000;
        auVar102._0_8_ = 0x6a433800000000;
        auVar102._12_4_ = 0;
        cVar28 = FUN_00417430();
        uVar60 = auVar102._0_8_;
        if (cVar28 == '\0') goto LAB_006a4340;
      }
    }
  }
  fVar43 = DAT_00baa3a4;
  if (param_1[0xb] == 4) {
    auVar71._0_8_ = auVar102._0_8_;
    iVar39 = FUN_00703950();
    pauStack_94 = (undefined (*) [16])*(undefined4 *)(iVar39 + 0x33c);
    local_c8 = *(float **)(iVar39 + 0x340);
    auVar102._8_4_ = 0x6a5322;
    auVar102._0_8_ = auVar71._0_8_;
    auVar102._12_4_ = param_1 + 0xcf;
    iVar39 = FUN_00703950();
    local_a4 = (*(float *)(iVar39 + 0x364) * (float)DAT_00baa784 + (float)local_c8) -
               (float)param_1[0xd0];
    local_80 = (undefined (*) [16])
               ((*(float *)(iVar39 + 0x360) * (float)DAT_00baa784 + (float)pauStack_94) -
               (float)param_1[0xcf]);
    fVar43 = local_a4 * local_a4 + (float)local_80 * (float)local_80;
    if (fVar43 < DAT_00baac74) {
      auVar102._12_4_ = 0x6a538f;
      FUN_00435a50();
      pauVar44 = local_80;
      fVar42 = local_a4;
      if (DAT_00ba9fe4 < fVar43) {
        pauVar44 = (undefined (*) [16])((float)local_80 * (DAT_00baa454 / fVar43));
        fVar42 = local_a4 * (DAT_00baa454 / fVar43);
      }
      fVar42 = fVar42 * DAT_00baa528;
      param_1[0xd8] = (int)((float)pauVar44 * DAT_00baa528 + (float)param_1[0xd8]);
      param_1[0xd9] = (int)(fVar42 + (float)param_1[0xd9]);
    }
    iVar39 = DAT_00c71678;
    fVar43 = DAT_00baa3a4;
    param_1[0xd8] = (int)((float)param_1[0xd8] * DAT_00baa3a4);
    param_1[0xd9] = (int)((float)param_1[0xd9] * fVar43);
    if (*(int *)(iVar39 + 0x264f8) - param_1[0xca] < 0x14) {
      param_1[0xdb] = (int)((float)param_1[0xdb] * fVar43);
    }
  }
  if (0 < *(short *)(param_1 + 0x10c)) {
    *(short *)(param_1 + 0x10c) = *(short *)(param_1 + 0x10c) + -1;
  }
  if (0 < *(short *)((int)param_1 + 0x432)) {
    *(short *)((int)param_1 + 0x432) = *(short *)((int)param_1 + 0x432) + -1;
  }
  if (0 < param_1[0x117]) {
    param_1[0x117] = param_1[0x117] + -1;
  }
  iVar36 = DAT_00c71678;
  iVar39 = *(int *)(DAT_00c71678 + 0x264f8);
  if ((0xf < iVar39 - param_1[0xca]) && (param_1[0x62] == 1)) {
    param_1[0x62] = 4;
    iVar39 = *(int *)(iVar36 + 0x264f8);
  }
  if ((param_1[0x104] < iVar39 - param_1[0xca]) && (param_1[0x62] == 0)) {
    param_1[0x62] = 4;
  }
  if (((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 8) == 0x10) && (param_1[0xb] != 0x13)) &&
     (param_1[0xb] != 0x14)) {
    param_1[0xd9] = (int)((float)param_1[0xd9] + DAT_00baa3e0);
  }
  if (param_1[0xb] == 0xf) {
    if ((0.0 <= (float)param_1[0xd4]) && (0.0 <= (float)param_1[0x107])) {
      param_1[0xdb] = (int)((float)param_1[0xdb] * fVar43);
    }
    if (param_1[0x1f] != 0) {
      auVar102._8_4_ = 0x6a5568;
      auVar102._12_4_ = &DAT_00b670d0;
      cVar28 = FUN_0040add0();
      if (cVar28 != '\0') {
        local_80 = (undefined (*) [16])0xab;
        FUN_00956780();
        auVar111._8_4_ = 0;
        auVar111._0_8_ = SUB128(ZEXT412(0x3fc00000) << 0x40,4);
        auVar102._4_12_ = auVar111;
        auVar102._0_4_ = 2;
        FUN_0092dc30(local_80,0x3f800000,2,auVar111);
      }
    }
  }
  iVar39 = param_1[0x114];
  if (iVar39 == 0) {
    if (param_1[0x61] == 0) {
      param_1[0x61] = 5;
    }
  }
  else {
    iVar36 = *(int *)(iVar39 + 0x364);
    param_1[0xd8] = *(int *)(iVar39 + 0x360);
    param_1[0xd9] = iVar36;
    fVar43 = *(float *)(iVar39 + 0x340);
    param_1[0xcf] = (int)(*(float *)(iVar39 + 0x33c) + (float)param_1[0xcd]);
    param_1[0xd0] = (int)(fVar43 + (float)param_1[0xce]);
    param_1[0x62] = 0;
    param_1[0x61] = 0;
  }
  if (*(char *)((int)param_1 + 0x171) == '\0') {
    param_1[0x62] = 0;
    param_1[0x61] = 0;
    *(undefined2 *)(param_1 + 0x10c) = 4;
  }
  if (param_1[0x1f] != 0) {
    auVar102._8_4_ = 0x6a5670;
    auVar102._12_4_ = "DropSound";
    cVar28 = FUN_0040add0();
    if (cVar28 != '\0') {
      if (param_1[0xb] == 0x11) {
        auVar112._8_4_ = 0;
        auVar112._0_8_ = SUB128(ZEXT412(0x3f4ccccd) << 0x40,4);
        auVar71._0_8_ = 0;
        FUN_0092dc30(0x28,0x3f800000,4,auVar112);
        auVar102._8_4_ = 0x6a56be;
        auVar102._0_8_ = auVar71._0_8_;
        auVar102._12_4_ = 6;
        FUN_00703670();
      }
      else {
        fVar43 = (float)param_1[0x10d];
        auVar113._8_4_ = 0;
        auVar113._0_8_ = SUB128(ZEXT412(0x3f800000) << 0x40,4);
        auVar102._4_12_ = auVar113;
        auVar102._0_4_ = 4;
        if (param_1[0xb] == 0x12) {
          if (DAT_00baa454 <= fVar43) {
            fVar43 = DAT_00baa454;
          }
          fVar43 = fVar43 * DAT_00baa3a4;
          uVar31 = 0x1d2;
        }
        else {
          if (DAT_00baa454 <= fVar43) {
            fVar43 = DAT_00baa454;
          }
          uVar31 = 0x28;
        }
        FUN_0092dc30(uVar31,fVar43,4,auVar113);
      }
    }
  }
  uVar60 = auVar102._0_8_;
  if (*(char *)((int)param_1 + 0x462) != '\0') {
    pcVar38 = (char *)((int)param_1 + 0x56d);
    local_80 = (undefined (*) [16])&DAT_00000005;
    do {
      if (*pcVar38 != '\0') {
        auVar109 = auVar102._0_12_;
        FUN_00409030();
        auVar102._12_4_ = 0x6a575e;
        auVar102._0_12_ = auVar109;
        FUN_00409030();
      }
      uVar60 = auVar102._0_8_;
      pcVar38 = pcVar38 + 0x114;
      local_80 = (undefined (*) [16])(local_80[-1] + 0xf);
    } while (local_80 != (undefined (*) [16])0x0);
  }
  if ((param_1[0xb] == 0x13) || (param_1[0xb] == 0x14)) {
    auVar45 = ZEXT416((uint)local_c4);
    if (DAT_00baab30 < (float)((uint)local_c4 & DAT_00bacb40)) {
      auVar45 = ZEXT416((uint)local_c4);
      FUN_00499d20();
    }
    fVar43 = auVar45._0_4_;
    if (fVar43 <= DAT_00baaa78) {
      if (fVar43 < DAT_00baae7c) {
        auVar45._0_4_ = fVar43 + DAT_00baab30;
      }
    }
    else {
      auVar45._0_4_ = fVar43 - DAT_00baab30;
    }
    fVar43 = auVar45._0_4_;
    if ((param_1[0x5b] & 0x2000000U) == 0) {
      if ((DAT_00baa9b4 < fVar43) || (fVar43 < DAT_00baae50)) {
        fVar43 = DAT_00baaa78 - fVar43;
        *(undefined *)(param_1 + 0x52) = 1;
      }
      else {
        *(undefined *)(param_1 + 0x52) = 0;
      }
    }
    else {
      *(undefined *)(param_1 + 0x52) = 0;
      fVar43 = 0.0;
    }
    param_1[0x3b] = (int)fVar43;
    iVar39 = FUN_006ac760();
    if ((iVar39 != 0) && (*(char *)((int)param_1 + 0x171) != '\0')) {
      uVar31 = FUN_006eef60();
      local_d8 = (float)param_1[0xd8] * _DAT_00baa150;
      local_c4 = local_c4 * DAT_00baa088;
      local_d4 = (float)param_1[0xd9] * _DAT_00baa150;
      fVar43 = local_c4;
      FUN_0041d540();
      fStack_98 = (float)param_1[0xcf] - fVar43 * (float)DAT_00baa784 * (float)param_1[0x10d];
      fVar43 = local_c4;
      FUN_0041d520();
      auVar106._8_4_ = 0;
      auVar106._0_8_ = uVar60;
      auVar106._12_4_ = uVar31;
      auVar25._8_8_ = 0;
      auVar25._0_8_ = auVar106._8_8_;
      pauStack_94 = (undefined (*) [16])
                    ((float)param_1[0xd0] - fVar43 * (float)DAT_00baa784 * (float)param_1[0x10d]);
      piVar32 = (int *)HELPER_Entity_SpawnRelay
                                 (1000,0x3b,&fStack_98,&local_d8,SUB1612(auVar25 << 0x40,4));
      uVar31 = FUN_004238f0();
      (**(code **)(*piVar32 + 0x3c))(uVar31,0xffffffff);
      iVar39 = FUN_006eef60();
      piVar32[0x11d] =
           (int)((float)((double)iVar39 + (double)(&DAT_00bacb00)[-(iVar39 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa81c + DAT_00baa630);
      uVar34 = FUN_006eef60();
      iVar39 = uVar34 % 0xf + 0xf;
      piVar32[0x117] = iVar39;
      piVar32[0x118] = iVar39;
      fVar42 = (float)param_1[0x10d] * DAT_00baa280 * DAT_00c37940;
      fVar43 = (float)param_1[0x10d] * DAT_00baa280 * DAT_00c3793c;
      piVar32[0xd6] = -0x3e700000;
      piVar32[0x3a] = (int)fVar42;
      piVar32[0x39] = (int)fVar43;
      piVar32[0xd3] = param_1[0xd3];
      piVar32[0xd4] = param_1[0xd4];
    }
  }
  if ((1 < *(int *)(DAT_00c71678 + 0x26614)) &&
     (iVar39 = (**(code **)(**(int **)(DAT_00c71678 + 0x26620) + 4))(), iVar39 == 3)) {
    param_1[0x62] = 0;
  }
  FUN_00861f80();
LAB_006a5a3c:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

