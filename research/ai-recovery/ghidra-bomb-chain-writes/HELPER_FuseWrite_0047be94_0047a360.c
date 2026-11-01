/* Local J460 decompiler output.
 * VA: 0x0047be94
 * Entry: 0047a360
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Candidate immediate-zero +0x410 write, entity type not yet classified
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Candidate immediate-zero +0x410
   write, entity type not yet classified */

void __fastcall HELPER_FuseWrite_0047be94(TypeDescriptor *param_1)

{
  byte bVar1;
  void *pvVar2;
  void *pvVar3;
  void *pvVar4;
  void *pvVar5;
  undefined4 *puVar6;
  code *pcVar7;
  char cVar8;
  uint uVar9;
  TypeDescriptor *pTVar10;
  TypeDescriptor **ppTVar11;
  void *pvVar12;
  byte **ppbVar13;
  int iVar14;
  float *pfVar15;
  int iVar16;
  void **ppvVar17;
  undefined4 uVar18;
  int *piVar19;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  int *extraout_ECX_01;
  byte *pbVar20;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  uint *puVar21;
  code *extraout_EDX;
  uint uVar22;
  code *extraout_EDX_00;
  uint uVar23;
  undefined *puVar24;
  char *pcVar25;
  TypeDescriptor *pTVar26;
  byte bVar27;
  bool bVar28;
  float fVar29;
  undefined auVar30 [16];
  float fVar31;
  float fVar32;
  void *pvVar33;
  undefined8 uVar34;
  undefined4 uVar35;
  TypeDescriptor *pTVar36;
  undefined4 uVar37;
  undefined4 uStack_2bc;
  undefined4 uStack_2b8;
  undefined4 uStack_2b4;
  undefined4 uStack_2b0;
  void *pvStack_2ac;
  void *pvStack_2a8;
  void *pvStack_2a4;
  void *pvStack_2a0;
  undefined4 uStack_29c;
  undefined4 uStack_298;
  char acStack_294 [4];
  int iStack_290;
  uint uStack_288;
  undefined4 uStack_284;
  float fStack_280;
  float fStack_27c;
  float fStack_278;
  undefined4 uStack_274;
  float fStack_270;
  float fStack_26c;
  float fStack_268;
  float fStack_264;
  float fStack_260;
  float fStack_25c;
  int *piStack_258;
  TypeDescriptor *pTStack_254;
  float fStack_250;
  TypeDescriptor *pTStack_24c;
  float fStack_248;
  char cStack_241;
  TypeDescriptor *pTStack_240;
  TypeDescriptor *pTStack_23c;
  undefined auStack_238 [172];
  undefined4 uStack_18c;
  TypeDescriptor *pTStack_188;
  void *pvStack_184;
  TypeDescriptor *pTStack_180;
  void **ppvStack_17c;
  TypeDescriptor *pTStack_178;
  TypeDescriptor *pTStack_174;
  TypeDescriptor *local_170;
  undefined4 uStack_16c;
  TypeDescriptor *pTStack_168;
  TypeDescriptor *local_164;
  TypeDescriptor local_fc;
  undefined4 local_f4;
  undefined4 local_f0;
  void *local_ec;
  void *local_e8;
  void *local_e4;
  void *local_e0;
  undefined4 local_dc;
  undefined4 local_d8;
  char local_d4;
  void *local_d0;
  TypeDescriptor *local_c8;
  TypeDescriptor *local_c4;
  TypeDescriptor local_c0;
  undefined local_b8 [4];
  char *local_b4;
  undefined local_b0 [8];
  TypeDescriptor *local_a8;
  void **local_9c;
  TypeDescriptor *local_98;
  char local_91;
  TypeDescriptor *local_90;
  TypeDescriptor *local_8c;
  undefined4 local_88;
  char *local_84;
  TypeDescriptor local_80;
  undefined8 local_78;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  char *local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined8 local_50;
  undefined4 local_48;
  char *local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined8 local_30;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  pTVar10 = DAT_00baa454;
  local_14._0_1_ = 0xff;
  local_14._1_3_ = 0xffffff;
  puStack_18 = &LAB_00af2b1b;
  local_1c = ExceptionList;
  puStack_20 = &stack0xfffffffc;
  uVar9 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_24 = uVar9;
  ExceptionList = &local_1c;
  local_c4 = param_1;
  local_98 = (TypeDescriptor *)0x0;
  if ((param_1[5].pVFTable == (void *)0x1c) && (param_1[5].spare == (void *)0x0)) {
    local_9c = (void **)0x0;
    if (param_1[6].spare != (void *)0x19d) goto LAB_0047a3ed;
    local_91 = '\x01';
  }
  else {
    local_9c = (void **)param_1[5].spare;
LAB_0047a3ed:
    local_91 = '\0';
    if (local_9c == (void **)0x1) {
      local_90 = (TypeDescriptor *)((float)param_1[0x70].pVFTable / (float)param_1[0x70].spare);
      local_8c = (TypeDescriptor *)0x0;
      ppTVar11 = &local_90;
      if ((float)local_90 <= DAT_00ba9fe4) {
        ppTVar11 = &local_8c;
      }
      fVar31 = DAT_00baa490 - (float)*ppTVar11 * _DAT_00baa150;
      pvVar12 = (void *)((float)*ppTVar11 * DAT_00baa244 + DAT_00baa354);
      param_1[0x187].pVFTable = pvVar12;
      fVar29 = (float)pvVar12 * (float)param_1[0x76].spare;
      pvVar12 = (void *)(fVar29 * DAT_00c3793c);
      param_1[0x1d].pVFTable = (void *)(fVar29 * DAT_00c37940);
      param_1[0x1c].spare = pvVar12;
      pvVar12 = param_1[0x73].spare;
      if ((NAN((float)pvVar12) || NAN((float)pTVar10)) == ((float)pvVar12 == (float)pTVar10)) {
        fVar31 = fVar31 / ((fVar31 + (float)pvVar12) - fVar31 * (float)pvVar12);
      }
      param_1[0x6c].pVFTable = (void *)(fVar31 * (float)param_1[0x6c].pVFTable);
    }
  }
  if (*(char *)((int)&param_1[0x2e].pVFTable + 3) != '\0') {
    local_8c = pTVar10;
    pTVar10 = DAT_00baa528;
    if ((param_1[0x18c].spare == (void *)0x12) ||
       (pTVar10 = DAT_00baa2d0, param_1[0x18c].spare == (void *)0x13)) {
      local_8c = pTVar10;
    }
    local_b4 = (char *)0x75;
    FUN_00956780();
    local_164 = local_8c;
    pTStack_168 = (TypeDescriptor *)0x0;
    uStack_16c = (void **)0x2;
    local_170 = (TypeDescriptor *)0x3f000000;
    pTStack_174 = (TypeDescriptor *)local_b4;
    pTStack_178 = (TypeDescriptor *)0x47a542;
    FUN_0092dc30();
    if ((int *)param_1[0x78].pVFTable != (int *)0x0) {
                    /* WARNING: Load size is inaccurate */
      local_164 = (TypeDescriptor *)0x47a5c4;
      (**(code **)(*param_1[0x78].pVFTable + 0x24))();
    }
    if ((int *)param_1[0x77].spare != (int *)0x0) {
                    /* WARNING: Load size is inaccurate */
      local_fc.pVFTable = (void *)0x0;
      local_fc.spare = (void *)0x0;
      local_f4 = 0;
      local_f0 = 0;
      local_ec = DAT_00c7b640;
      local_e8 = DAT_00c7b644;
      local_e4 = DAT_00c7b640;
      local_e0 = DAT_00c7b644;
      local_dc = 0;
      local_d8 = 0;
      local_164 = (TypeDescriptor *)0x47a646;
      (**(code **)(*param_1[0x77].spare + 0x24))();
    }
  }
  ppvVar17 = local_9c;
  if (param_1[0x16c].spare == (void *)0x0) {
    if ((param_1[0x77].spare == (void *)0x0) && (param_1[0x78].pVFTable == (void *)0x0)) {
      local_164 = (TypeDescriptor *)0x0;
      pTStack_168 = (TypeDescriptor *)0xffffffff;
      uStack_16c = (void **)param_1[5].spare;
      pTStack_174 = (TypeDescriptor *)&local_d4;
      local_170 = (TypeDescriptor *)param_1[5].pVFTable;
      pTStack_178 = (TypeDescriptor *)0x47a69c;
      AI_0041af60();
      pTVar10 = local_c8;
      local_14 = 0;
      if (local_c8 == (TypeDescriptor *)0x0) {
        local_164 = (TypeDescriptor *)0x10;
        pTStack_168 = (TypeDescriptor *)0x47a6b9;
        FUN_00a112c0();
      }
      local_b0._4_4_ = (void *)0x0;
      local_a8 = (TypeDescriptor *)0x0;
      local_164 = (TypeDescriptor *)0x47a6d7;
      local_98 = (TypeDescriptor *)FUN_00a0f4c0();
      local_98->pVFTable = local_98;
      local_98->spare = local_98;
      local_b0._4_4_ = local_98;
      local_14._0_1_ = 1;
      local_8c = (TypeDescriptor *)0x0;
      if (pTVar10 != (TypeDescriptor *)0x0) {
        do {
          local_164 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
          pTStack_168 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uStack_16c = (void **)0x0;
          local_170 = *(TypeDescriptor **)((int)local_d0 + (int)local_8c * 4);
          pTStack_174 = (TypeDescriptor *)0x47a71c;
          pTVar10 = (TypeDescriptor *)__RTDynamicCast();
          if ((((pTVar10 != (TypeDescriptor *)0x0) && (pTVar10[0x77].spare == (void *)0x0)) &&
              (pTVar10[0x78].pVFTable == (void *)0x0)) &&
             (*(char *)((int)&pTVar10[0x2e].pVFTable + 3) == '\0')) {
            bVar27 = local_a8 < (TypeDescriptor *)0x15555555;
            local_90 = (TypeDescriptor *)local_b0._4_4_;
            if (local_a8 == (TypeDescriptor *)0x15555555) {
              local_164 = (TypeDescriptor *)0x47ab3c;
              std::_Xlength_error("list too long");
              goto LAB_0047ab3c;
            }
            local_c0.pVFTable = local_b0 + 4;
            local_14._0_1_ = 2;
            local_c0.spare = (void *)0x0;
            local_164 = (TypeDescriptor *)0x47a77a;
            ppTVar11 = (TypeDescriptor **)FUN_00a0f4c0();
            local_14._0_1_ = 1;
            local_c0.spare = (void **)0x0;
            ppTVar11[2] = pTVar10;
            local_a8 = (TypeDescriptor *)((int)&local_a8->pVFTable + 1);
            pTVar10 = (TypeDescriptor *)local_90->spare;
            *ppTVar11 = local_90;
            ppTVar11[1] = pTVar10;
            local_90->spare = ppTVar11;
            pTVar10->pVFTable = ppTVar11;
          }
          local_8c = (TypeDescriptor *)((int)&local_8c->pVFTable + 1);
        } while (local_8c < local_c8);
      }
      local_90 = local_a8;
      local_98 = (TypeDescriptor *)local_b0._4_4_;
      if ((local_a8 != (TypeDescriptor *)0x0) && (local_a8 != (TypeDescriptor *)0x1)) {
        local_164 = (TypeDescriptor *)0x47a7ea;
        local_8c = (TypeDescriptor *)FUN_004999d0();
        local_164 = (TypeDescriptor *)0x47a7fe;
        local_164 = (TypeDescriptor *)FUN_004999d0();
        pTVar10 = local_98;
        pTStack_168 = (TypeDescriptor *)0x47a813;
        pvVar12 = (void *)FUN_00499a50();
        pTVar10->pVFTable = pvVar12;
      }
      pTVar10 = (TypeDescriptor *)*(void **)local_b0._4_4_;
      local_b4 = (char *)0x1;
      pTVar36 = param_1;
      pTVar26 = (TypeDescriptor *)local_b0._4_4_;
      local_8c = param_1;
      if (pTVar10 != (TypeDescriptor *)local_b0._4_4_) {
        do {
          local_98 = (TypeDescriptor *)pTVar10[1].pVFTable;
          if (local_98 != param_1) {
            fVar29 = (float)local_98[0x68].pVFTable - (float)pTVar36[0x68].pVFTable;
            fVar31 = (float)local_98[0x67].spare - (float)pTVar36[0x67].spare;
            pTVar36 = (TypeDescriptor *)(fVar29 * fVar29 + fVar31 * fVar31);
            FUN_00435a50();
            local_90 = pTVar36;
            fVar29 = DAT_00baa630;
            FUN_00435a50();
            if (fVar29 * DAT_00baa904 + (float)DAT_00baa454 < (float)local_90) break;
            local_9c = &local_98[0x77].spare;
            if (*local_9c != (void *)0x0) {
              local_164 = (TypeDescriptor *)0x47a8d8;
              local_90 = (TypeDescriptor *)local_9c;
              FUN_004cf210();
            }
            *local_9c = local_8c;
            local_164 = (TypeDescriptor *)0x47a8eb;
            FUN_004cdcf0();
            local_8c = local_8c + 0x78;
            if (local_8c->pVFTable != (void *)0x0) {
              local_164 = (TypeDescriptor *)0x47a90f;
              local_90 = local_8c;
              FUN_004cf210();
            }
            local_8c->pVFTable = local_98;
            local_164 = (TypeDescriptor *)0x47a922;
            FUN_004cdcf0();
            local_b4 = (char *)((int)(void **)local_b4 + 1);
            local_8c = local_98;
            pTVar36 = local_98;
            pTVar26 = (TypeDescriptor *)local_b0._4_4_;
            if ((TypeDescriptor *)local_b4 == (TypeDescriptor *)0x3) break;
          }
          pTVar10 = (TypeDescriptor *)pTVar10->pVFTable;
        } while (pTVar10 != pTVar26);
      }
      if (((param_1[0x1ea].spare != (void *)0x0) || (param_1[0x179].pVFTable == param_1[5].pVFTable)
          ) && (local_b4 < (TypeDescriptor *)0x3)) {
        local_b4 = (char *)(3 - (int)local_b4);
        pTVar10 = local_8c;
        do {
          local_170 = (TypeDescriptor *)FUN_006eef60();
          local_164 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
          pTStack_168 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uStack_16c = (void **)0x0;
          pTStack_174 = (TypeDescriptor *)param_1[6].pVFTable;
          pTStack_180 = (TypeDescriptor *)&param_1[0x67].spare;
          ppvStack_17c = &DAT_00c7b640;
          pvStack_184 = param_1[5].spare;
          pTStack_188 = (TypeDescriptor *)param_1[5].pVFTable;
          uStack_18c = 0x47a9bb;
          pTStack_178 = param_1;
          local_170 = (TypeDescriptor *)HELPER_Entity_SpawnRelay();
          pTStack_174 = (TypeDescriptor *)0x47a9c1;
          local_98 = (TypeDescriptor *)__RTDynamicCast();
          local_8c = (TypeDescriptor *)&local_98[0x77].spare;
          if (local_98[0x77].spare != (void *)0x0) {
            local_164 = (TypeDescriptor *)0x47a9ee;
            local_90 = local_8c;
            FUN_004cf210();
          }
          local_8c->pVFTable = pTVar10;
          if (pTVar10 != (TypeDescriptor *)0x0) {
            local_164 = (TypeDescriptor *)0x47a9ff;
            FUN_004cdcf0();
          }
          if (pTVar10[0x78].pVFTable != (void *)0x0) {
            local_164 = (TypeDescriptor *)0x47aa21;
            local_90 = pTVar10 + 0x78;
            FUN_004cf210();
          }
          pTVar10[0x78].pVFTable = local_98;
          local_164 = (TypeDescriptor *)0x47aa31;
          FUN_004cdcf0();
          local_b4 = (char *)((int)&((TypeDescriptor *)((int)local_b4 + -8))->spare + 3);
          pTVar10 = local_98;
        } while ((TypeDescriptor *)local_b4 != (TypeDescriptor *)0x0);
      }
      local_88 = 0;
      local_84 = "AppearHead";
      pTVar10 = &local_80;
      local_80.pVFTable = &DAT_bf800000;
      local_80.spare = (void *)0x5dc;
      local_78 = 0;
      local_70 = 0x40000;
      local_6c = 0;
      local_68 = 1;
      local_64 = "AppearBody01";
      local_60 = 0x3eae147b;
      local_5c = 500;
      local_58 = 0x80000000;
      local_54 = 0;
      local_50 = 0;
      local_48 = 2;
      local_44 = "AppearBody02";
      local_40 = 0x3e851eb8;
      local_3c = 0xfffffe0c;
      local_38 = 0x80000000;
      local_34 = 0;
      local_30 = 0;
      local_98 = (TypeDescriptor *)0x0;
      local_90 = param_1;
      local_8c = pTVar10;
LAB_0047aae5:
      if ((int)local_98 < 3) {
        local_164 = (TypeDescriptor *)pTVar10[-1].spare;
        param_1[0x178].pVFTable = pTVar10[-1].pVFTable;
        ppbVar13 = (byte **)param_1[0xf].spare;
        if (ppbVar13 != (byte **)0x0) {
          if (&DAT_0000000f < ppbVar13[5]) {
            ppbVar13 = (byte **)*ppbVar13;
          }
          do {
            bVar1 = *(byte *)ppbVar13;
            bVar27 = bVar1 < *(byte *)local_164;
            if (bVar1 != *(byte *)local_164) goto LAB_0047ab3c;
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar13 + 1);
            bVar27 = bVar1 < *(byte *)((int)local_164 + 1);
            if (bVar1 != *(byte *)((int)local_164 + 1)) goto LAB_0047ab3c;
            ppbVar13 = (byte **)((int)ppbVar13 + 2);
            local_164 = (TypeDescriptor *)((int)local_164 + 2);
          } while (bVar1 != 0);
          uVar9 = 0;
          goto LAB_0047ab41;
        }
        goto LAB_0047ab5a;
      }
      goto LAB_0047ac0c;
    }
    param_1[0x16c].spare = &DAT_00000004;
    goto LAB_0047c7f8;
  }
  if ((((local_9c == (void **)0x2) && (param_1[0x178].pVFTable != (void *)0x2)) &&
      (DAT_00ba9fe4 < (float)param_1[2].spare)) &&
     (pfVar15 = (float *)param_1[1].pVFTable, pfVar15 != (float *)param_1[1].spare)) {
    do {
      if (((void *)pfVar15[4] != param_1[5].pVFTable) || ((void *)pfVar15[5] != param_1[5].spare)) {
        param_1[2].spare = (void *)((float)param_1[2].spare - *pfVar15);
        *pfVar15 = 0.0;
      }
      pfVar15 = pfVar15 + 0xe;
    } while (pfVar15 != (float *)param_1[1].spare);
  }
  pvVar12 = param_1[0x178].pVFTable;
  if (pvVar12 == (void *)0x0) {
    pTVar10 = param_1;
    pTVar36 = (TypeDescriptor *)((float)param_1[0x70].pVFTable - (float)param_1[2].spare);
    while( true ) {
      pvVar12 = pTVar10[0x78].pVFTable;
      local_8c = pTVar36;
      if (pvVar12 != (void *)0x0) {
        local_164 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
        pTStack_168 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uStack_16c = (void **)0x0;
        pTStack_174 = (TypeDescriptor *)0x47b600;
        local_170 = (TypeDescriptor *)pvVar12;
        iVar14 = __RTDynamicCast();
        if (iVar14 == 0) {
          local_164 = (TypeDescriptor *)0x10;
          pTStack_168 = (TypeDescriptor *)0x47b613;
          FUN_00a112c0();
        }
      }
      pTVar10 = (TypeDescriptor *)pTVar10[0x78].pVFTable;
      pTVar36 = param_1;
      if (pTVar10 == (TypeDescriptor *)0x0) break;
      pTVar36 = (TypeDescriptor *)((float)pTVar10[0x70].pVFTable - (float)pTVar10[2].spare);
      if ((float)local_8c <= (float)pTVar36) {
        pTVar36 = local_8c;
      }
    }
    do {
      local_b4 = (char *)pTVar36;
      if ((float)local_8c <
          (float)((TypeDescriptor *)((int)local_b4 + 0x380))->pVFTable -
          (float)((TypeDescriptor *)((int)local_b4 + 0x10))->spare) {
        pcVar7 = *(code **)((int)*(void **)local_b4 + 0x20);
        local_164 = (TypeDescriptor *)0x47b663;
        pTVar10 = local_8c;
        FUN_00431310();
        local_164 = &local_fc;
        pTStack_168 = (TypeDescriptor *)0x0;
        local_170 = (TypeDescriptor *)
                    ((float)((TypeDescriptor *)((int)local_b4 + 0x380))->pVFTable - (float)pTVar10);
        uStack_16c = (void **)0x0;
        pTStack_174 = (TypeDescriptor *)0x47b68a;
        (*pcVar7)();
      }
      pTVar10 = (TypeDescriptor *)((int)local_b4 + 0x3c0);
      pvVar12 = pTVar10->pVFTable;
      if (pvVar12 != (void *)0x0) {
        local_164 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
        pTStack_168 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uStack_16c = (void **)0x0;
        pTStack_174 = (TypeDescriptor *)0x47b6b0;
        local_170 = (TypeDescriptor *)pvVar12;
        iVar14 = __RTDynamicCast();
        if (iVar14 == 0) {
          local_164 = (TypeDescriptor *)0x10;
          pTStack_168 = (TypeDescriptor *)0x47b6c3;
          FUN_00a112c0();
        }
      }
      local_b4 = (char *)pTVar10->pVFTable;
      pTVar36 = (TypeDescriptor *)local_b4;
    } while ((TypeDescriptor *)local_b4 != (TypeDescriptor *)0x0);
    local_90 = (TypeDescriptor *)param_1[0x6c].pVFTable;
    local_8c = (TypeDescriptor *)param_1[0x6c].spare;
    fVar29 = (float)local_90 * (float)local_90 + (float)local_8c * (float)local_8c;
    local_c0.spare = &param_1[0x67].spare;
    FUN_00435a50();
    pTVar10 = local_8c;
    if (DAT_00ba9fe4 < fVar29) {
      local_90 = (TypeDescriptor *)((float)param_1[0x6c].pVFTable * ((float)DAT_00baa454 / fVar29));
      pTVar10 = (TypeDescriptor *)((float)param_1[0x6c].spare * ((float)DAT_00baa454 / fVar29));
    }
    local_b0._4_4_ = (float)local_90 * DAT_00baa904 + (float)param_1[0x67].spare;
    local_a8 = (TypeDescriptor *)((float)pTVar10 * DAT_00baa904 + (float)param_1[0x68].pVFTable);
    local_90 = *(TypeDescriptor **)(DAT_00c71678 + 0x18300);
    local_164 = (TypeDescriptor *)0x47b795;
    FUN_00431310();
    local_164 = (TypeDescriptor *)0x47b7a7;
    uVar23 = FUN_00812c90();
    if ((uVar23 < 0x1c0) && ((int *)(&local_90[4].spare)[uVar23] != (int *)0x0)) {
                    /* WARNING: Load size is inaccurate */
      local_164 = (TypeDescriptor *)0x1;
      pTStack_168 = (TypeDescriptor *)0x47b7c7;
      (**(code **)(*(&local_90[4].spare)[uVar23] + 0x10))();
    }
    pcVar25 = "WalkNormalHori";
    local_b4 = "WalkNormalDown";
    local_8c = (TypeDescriptor *)0xb1e3e4;
    pTVar36 = (TypeDescriptor *)local_b4;
    pTVar26 = local_8c;
    pTVar10 = param_1;
    switch(param_1[0x16c].spare) {
    case (void *)0x4:
      local_164 = (TypeDescriptor *)0x0;
      pTStack_168 = (TypeDescriptor *)0x47b80b;
      cVar8 = FUN_00417430();
      if ((cVar8 == '\0') ||
         (local_91 = '\0',
         (*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
        local_91 = '\x01';
      }
      if (((local_9c != (void **)0x2) ||
          (DAT_00baa1f8 <= (float)param_1[0x70].pVFTable / (float)param_1[0x70].spare)) ||
         (param_1[6].pVFTable != (void *)0x0)) {
        local_164 = (TypeDescriptor *)0x3fc00000;
        pTStack_168 = (TypeDescriptor *)0x47ba86;
        FUN_007e5340();
        pvVar12 = (void *)((int)param_1[0x82].pVFTable + 1);
        param_1[0x82].pVFTable = pvVar12;
        pTVar36 = local_98;
        if (local_91 == '\0') {
LAB_0047bc91:
          local_91 = '\0';
        }
        else {
          if (0x32 < (int)pvVar12) {
            local_164 = (TypeDescriptor *)local_b8;
            pTStack_168 = (TypeDescriptor *)0x47babf;
            pfVar15 = (float *)HELPER_Entity_NPC_ProjectileHelper();
            iVar14 = FUN_006be840();
            local_90 = *(TypeDescriptor **)(iVar14 + 0x360);
            local_8c = *(TypeDescriptor **)(iVar14 + 0x364);
            iVar14 = FUN_006eef60();
            pvVar12 = param_1[0x67].spare;
            fVar29 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                     DAT_00ba9ff4;
            local_c0.spare =
                 (void *)((fVar29 * (float)local_8c * DAT_00baa85c + pfVar15[1]) -
                         (float)param_1[0x68].pVFTable);
            local_c0.pVFTable =
                 (void *)((fVar29 * (float)local_90 * DAT_00baa85c + *pfVar15) - (float)pvVar12);
            if (((float)((uint)local_c0.spare & DAT_00bacb40) < DAT_00baa87c) ||
               ((float)((uint)local_c0.pVFTable & DAT_00bacb40) < DAT_00baa87c)) {
              local_b0._4_4_ = (float)pvVar12 + (float)local_c0.pVFTable;
              local_164 = (TypeDescriptor *)0x0;
              pTStack_168 = (TypeDescriptor *)0x0;
              uStack_16c = (void **)0x0;
              local_170 = (TypeDescriptor *)0x0;
              local_a8 = (TypeDescriptor *)((float)param_1[0x68].pVFTable + (float)local_c0.spare);
              pTStack_174 = (TypeDescriptor *)(local_b0 + 4);
              ppvStack_17c = (void **)0x47bbbb;
              pTStack_178 = (TypeDescriptor *)&param_1[0x67].spare;
              cVar8 = FUN_007f0df0();
              if (cVar8 != '\0') {
                local_164 = (TypeDescriptor *)0x1000a00;
                pTStack_168 = (TypeDescriptor *)0x47bbcd;
                cVar8 = FUN_00417430();
                if (cVar8 == '\0') {
                  local_164 = (TypeDescriptor *)0x0;
                  pTStack_168 = (TypeDescriptor *)0x2;
                  uStack_16c = (void **)0x3f800000;
                  local_170 = (TypeDescriptor *)0x73;
                  pTStack_174 = (TypeDescriptor *)0x47bbee;
                  FUN_006d6ba0();
                  ppvVar17 = (void **)FUN_0067f170();
                  param_1[0x176].pVFTable = *ppvVar17;
                  param_1[0x176].spare = ppvVar17[1];
                  param_1[0x82].pVFTable = (void *)0x0;
                  param_1[0x16c].spare = &DAT_00000008;
                  FUN_007e6fa0();
                }
              }
            }
          }
          pTVar36 = local_98;
          if ((undefined *)param_1[0x16c].spare != &DAT_00000004) goto LAB_0047bc91;
          uVar23 = FUN_006eef60();
          pTVar36 = local_98;
          if ((undefined *)(uVar23 % 100) != (undefined *)0x0) goto LAB_0047bc91;
          if (param_1[5].spare == (void *)0x2) {
            local_91 = '\x01';
          }
          else {
            pTStack_168 = (TypeDescriptor *)param_1[5].pVFTable;
            uStack_16c = (void **)&local_d4;
            local_170 = (TypeDescriptor *)0x47bc69;
            local_164 = (TypeDescriptor *)(undefined *)(uVar23 % 100);
            iVar14 = FUN_006d0ca0();
            pTVar36 = (TypeDescriptor *)0x1;
            if (4 < *(uint *)(iVar14 + 0xc)) goto LAB_0047bc91;
            local_91 = '\x01';
          }
        }
        pcVar25 = "WalkNormalHori";
        if (((uint)pTVar36 & 1) != 0) {
          FUN_004175b0();
        }
        if (local_91 != '\0') {
          pTVar36 = (TypeDescriptor *)0x0;
          local_8c = (TypeDescriptor *)0x0;
          if (param_1[5].spare == (void *)0x2) {
            local_90 = *(TypeDescriptor **)(DAT_00c71678 + 0x18300);
            local_98 = (TypeDescriptor *)((int)local_90[2].pVFTable * (int)local_90[1].spare);
            uVar23 = 0;
            if (0 < (int)local_98) {
              ppvVar17 = &local_90[4].spare;
              do {
                if (((uVar23 < 0x1c0) &&
                    (pvVar12 = *ppvVar17, pTVar36 = local_8c, pvVar12 != (void *)0x0)) &&
                   ((*(int *)((int)pvVar12 + 4) == 0xe && (*(int *)((int)pvVar12 + 8) == 1)))) {
                  local_8c = (TypeDescriptor *)((int)&local_8c->pVFTable + 1);
                  pTVar36 = local_8c;
                }
                uVar23 = uVar23 + 1;
                ppvVar17 = ppvVar17 + 1;
              } while ((int)uVar23 < (int)local_98);
              if (4 < (int)pTVar36) goto LAB_0047ba62;
            }
          }
          param_1[0x82].pVFTable = (void *)0x0;
          param_1[0x16c].spare = (void *)0xd;
          FUN_007e6fa0();
          pTVar36 = (TypeDescriptor *)"WalkNormalDown";
          pTVar26 = (TypeDescriptor *)"WalkNormalUp";
          break;
        }
      }
      else {
        if (((uint)param_1[0x2d].pVFTable & 0x200) != 0) {
          local_164 = (TypeDescriptor *)0x47b886;
          FUN_007e6300();
          local_164 = (TypeDescriptor *)0x47b893;
          FUN_007e6300();
          local_164 = (TypeDescriptor *)0x47b8a0;
          FUN_007e6300();
          pcVar25 = "WalkNormalHori";
          pTVar36 = (TypeDescriptor *)"WalkNormalDown";
          pTVar26 = (TypeDescriptor *)"WalkNormalUp";
          break;
        }
        local_a8 = DAT_00baad50;
        if (DAT_00baa120 <= (float)param_1[0x6c].spare) {
          local_a8 = DAT_00baa454;
        }
        local_b0._4_4_ = DAT_00baad50;
        if (DAT_00ba9fe4 < (float)param_1[0x6c].pVFTable) {
          local_b0._4_4_ = DAT_00baa454;
        }
        local_b0._4_4_ = (float)local_b0._4_4_ + (float)local_b0._4_4_;
        local_a8 = (TypeDescriptor *)((float)local_a8 + (float)local_a8);
        local_164 = (TypeDescriptor *)(local_b0 + 4);
        pTStack_168 = (TypeDescriptor *)0x47b91b;
        FUN_004314b0();
        local_164 = (TypeDescriptor *)0x1000800;
        pTStack_168 = (TypeDescriptor *)0x47b929;
        cVar8 = FUN_00417430();
        if (cVar8 != '\0') {
          iVar14 = FUN_006be840();
          local_b0._4_4_ =
               (uint)(*(float *)(iVar14 + 0x33c) - (float)param_1[0x67].spare) ^ DAT_00bacb70;
          local_a8 = (TypeDescriptor *)
                     ((uint)(*(float *)(iVar14 + 0x340) - (float)param_1[0x68].pVFTable) ^
                     DAT_00bacb70);
          fVar29 = (float)local_b0._4_4_ * (float)local_b0._4_4_ + (float)local_a8 * (float)local_a8
          ;
          FUN_00435a50();
          pTStack_168 = &local_c0;
          local_164 = (TypeDescriptor *)((DAT_00baaa00 - fVar29) * DAT_00baa0bc);
          if ((float)local_164 <= DAT_00ba9fe4) {
            local_164 = (TypeDescriptor *)DAT_00ba9fe4;
          }
          if (DAT_00baa5b4 <= (float)local_164) {
            local_164 = (TypeDescriptor *)DAT_00baa5b4;
          }
          uStack_16c = (void **)0x47b9c8;
          local_164 = (TypeDescriptor *)FUN_00a10100();
          pTStack_168 = (TypeDescriptor *)0x47b9d0;
          FUN_004314b0();
        }
        if (*(char *)&param_1[0x32].pVFTable != '\0') {
          local_164 = (TypeDescriptor *)0x0;
          pTStack_168 = (TypeDescriptor *)0x2;
          uStack_16c = (void **)0x3f800000;
          local_170 = (TypeDescriptor *)0x3df;
          pTStack_174 = (TypeDescriptor *)0x47b9f9;
          FUN_006d6ba0();
        }
        if (DAT_00baa1f8 <= (float)param_1[0x177].spare / (float)param_1[0x70].spare) {
          local_164 = (TypeDescriptor *)0x0;
          pTStack_168 = (TypeDescriptor *)0x2;
          uStack_16c = (void **)0x3f800000;
          local_170 = (TypeDescriptor *)0x3e0;
          pTStack_174 = (TypeDescriptor *)0x47ba32;
          FUN_006d6ba0();
        }
        uVar23 = FUN_006eef60();
        local_164 = (TypeDescriptor *)(uVar23 % 100);
        if (local_164 == (TypeDescriptor *)0x0) {
          pTStack_168 = (TypeDescriptor *)0x64;
          uStack_16c = (void **)0x3f800000;
          local_170 = (TypeDescriptor *)0x3e1;
          pTStack_174 = (TypeDescriptor *)0x47ba62;
          FUN_006d6ba0();
        }
      }
LAB_0047ba62:
      pcVar25 = "WalkNormalHori";
      pTVar36 = (TypeDescriptor *)"WalkNormalDown";
      pTVar26 = (TypeDescriptor *)"WalkNormalUp";
      break;
    case (void *)0x8:
      param_1[0x82].pVFTable = (void *)((int)param_1[0x82].pVFTable + 1);
      pcVar25 = "WalkAttack01Hori";
      local_b4 = "WalkAttack01Down";
      local_8c = (TypeDescriptor *)0xb1e450;
      if (*(char *)&param_1[0x32].pVFTable == '\0') {
        local_c0.spare = *(float **)(DAT_00c71678 + 0x18300);
        local_164 = (TypeDescriptor *)0x47c2b4;
        uVar23 = FUN_00812c90();
        if ((0x1bf < uVar23) ||
           (*(void **)((int)local_c0.spare + (uVar23 + 0x1db) * 4) != (void *)0x3e7)) {
          local_164 = (TypeDescriptor *)0x1000a00;
          pTStack_168 = (TypeDescriptor *)0x47c2df;
          cVar8 = FUN_00417430();
          if (cVar8 == '\0') {
            local_164 = (TypeDescriptor *)(local_b0 + 4);
            param_1[0x6d].spare = (void *)((float)param_1[0x6d].spare * DAT_00baa3e0);
            local_b0._4_4_ = (float)param_1[0x176].pVFTable * DAT_00baa740;
            local_a8 = (TypeDescriptor *)((float)param_1[0x176].spare * DAT_00baa740);
            pTStack_168 = (TypeDescriptor *)0x47c33b;
            FUN_004314b0();
            pTVar36 = (TypeDescriptor *)local_b4;
            pTVar26 = local_8c;
            break;
          }
        }
      }
      param_1[0x16c].spare = &DAT_00000004;
      if ((local_9c == (void **)0x2) &&
         (DAT_00baa1f8 <= (float)param_1[0x70].pVFTable / (float)param_1[0x70].spare)) {
        local_164 = (TypeDescriptor *)0x0;
        pTStack_168 = (TypeDescriptor *)0x2;
        uStack_16c = (void **)0x3f800000;
        local_170 = (TypeDescriptor *)0x3e0;
        pTStack_174 = (TypeDescriptor *)0x47c38c;
        FUN_006d6ba0();
      }
      param_1[0x176].pVFTable = DAT_00c7b640;
      param_1[0x176].spare = DAT_00c7b644;
      pTVar36 = (TypeDescriptor *)local_b4;
      pTVar26 = local_8c;
      break;
    case (void *)0xc:
      pvVar12 = param_1[0x17d].spare;
      if (pvVar12 != (void *)0x0) {
        *(void **)((int)pvVar12 + 0x360) = DAT_00c7b640;
        *(void **)((int)pvVar12 + 0x364) = DAT_00c7b644;
        pvVar12 = param_1[0x17d].spare;
        *(void **)((int)pvVar12 + 0x33c) = param_1[0x67].spare;
        *(void **)((int)pvVar12 + 0x340) = param_1[0x68].pVFTable;
        pvVar12 = param_1[0x17d].spare;
        if (*(int *)((int)pvVar12 + 0x28) == 4) {
          *(undefined4 *)((int)pvVar12 + 0x410) = 0x18;
          *(undefined4 *)((int)pvVar12 + 0x414) = 0x18;
        }
      }
      local_164 = (TypeDescriptor *)0x47bfcb;
      cVar8 = HELPER_0040b030_AnimationEventPredicateD();
      if (cVar8 != '\0') {
        iVar14 = FUN_006be840();
        local_98 = (TypeDescriptor *)(*(float *)(iVar14 + 0x364) * DAT_00baa120);
        local_90 = (TypeDescriptor *)(*(float *)(iVar14 + 0x360) * DAT_00baa120);
        fVar31 = (float)param_1[0x67].spare - *(float *)(iVar14 + 0x33c);
        fVar29 = (float)param_1[0x68].pVFTable - *(float *)(iVar14 + 0x340);
        fVar29 = fVar29 * fVar29 + fVar31 * fVar31;
        FUN_00435a50();
        ppvVar17 = (void **)local_c0.spare;
                    /* WARNING: Load size is inaccurate */
        local_b0._4_4_ =
             (*(float *)(iVar14 + 0x33c) + fVar29 * (float)local_90) - (float)*local_c0.spare;
        local_a8 = (TypeDescriptor *)
                   ((*(float *)(iVar14 + 0x340) + fVar29 * (float)local_98) -
                   *(float *)((int)local_c0.spare + 4));
        local_164 = (TypeDescriptor *)0x47c093;
        pfVar15 = (float *)FUN_00a10030();
        local_164 = (TypeDescriptor *)0x0;
        local_98 = (TypeDescriptor *)(*pfVar15 * DAT_00baa87c);
        pTStack_168 = (TypeDescriptor *)0x2;
        uStack_16c = (void **)0x3f99999a;
        local_8c = (TypeDescriptor *)(pfVar15[1] * DAT_00baa87c);
        local_170 = (TypeDescriptor *)0x13f;
        pTStack_174 = (TypeDescriptor *)0x47c0d9;
        FUN_006d6ba0();
        pvVar12 = param_1[0x17d].spare;
        if (pvVar12 != (void *)0x0) {
          *(TypeDescriptor **)((int)pvVar12 + 0x360) = local_98;
          *(TypeDescriptor **)((int)pvVar12 + 0x364) = local_8c;
          fVar29 = (float)ppvVar17[1];
          pvVar12 = param_1[0x17d].spare;
          *(float *)((int)pvVar12 + 0x33c) = (float)local_98 + (float)*ppvVar17;
          *(float *)((int)pvVar12 + 0x340) = (float)local_8c + fVar29;
          pvVar12 = param_1[0x17d].spare;
          if (*(int *)((int)pvVar12 + 0x28) == 4) {
            local_164 = (TypeDescriptor *)0xb1d52c;
            pTStack_168 = (TypeDescriptor *)0x47c142;
            HELPER_0040a380_AnimationActionA();
            *(undefined4 *)((int)pvVar12 + 0x410) = 0x12;
            *(undefined4 *)((int)pvVar12 + 0x414) = 0x12;
            cVar8 = HELPER_Bomb_ContactMode();
            if (cVar8 != '\0') {
              fVar29 = (float)local_8c * DAT_00baa120;
              *(float *)((int)pvVar12 + 0x360) = (float)local_98 * DAT_00baa120;
              *(float *)((int)pvVar12 + 0x364) = fVar29;
              pTVar36 = local_8c;
              FUN_00499d60();
              *(float *)((int)pvVar12 + 0x428) = (float)pTVar36 * DAT_00baa948;
            }
            *(undefined4 *)((int)pvVar12 + 0x188) = 2;
            *(undefined *)((int)pvVar12 + 0x171) = 1;
            local_164 = (TypeDescriptor *)0x47c1c9;
            FUN_006a92a0();
          }
          local_164 = (TypeDescriptor *)0x47c1d2;
          FUN_006d0c20();
        }
      }
      if ((param_1[0xf].spare == (void *)0x0) || (*(char *)&param_1[0x11].spare == '\0')) {
        param_1[0x16c].spare = &DAT_00000004;
        if ((local_9c == (void **)0x2) &&
           (DAT_00baa1f8 <= (float)param_1[0x70].pVFTable / (float)param_1[0x70].spare)) {
          local_164 = (TypeDescriptor *)0x0;
          pTStack_168 = (TypeDescriptor *)0x2;
          uStack_16c = (void **)0x3f800000;
          local_170 = (TypeDescriptor *)0x3e0;
          pTStack_174 = (TypeDescriptor *)0x47c231;
          FUN_006d6ba0();
        }
        param_1[0x176].pVFTable = DAT_00c7b640;
        param_1[0x176].spare = DAT_00c7b644;
        param_1[0x177].pVFTable = (void *)0x0;
        param_1[0x178].spare = (void *)0x0;
      }
      goto LAB_0047c541;
    case (void *)0xd:
      pvVar12 = (void *)((int)param_1[0x82].pVFTable + 1);
      param_1[0x82].pVFTable = pvVar12;
      if (((pvVar12 == (void *)0x5) && (param_1[0x78].pVFTable != (void *)0x0)) &&
         (iVar14 = FUN_004567e0(), *(int *)(iVar14 + 0x3c0) != 0)) {
        FUN_004567e0();
        iVar14 = FUN_004567e0();
        *(undefined4 *)(iVar14 + 0xb64) = 0xd;
        FUN_004567e0();
        iVar14 = FUN_004567e0();
        *(undefined4 *)(iVar14 + 0x410) = 0;
      }
      if ((int)param_1[0x82].pVFTable < 0xb) {
        pcVar25 = "WalkChubbyHori";
        pTVar36 = (TypeDescriptor *)"WalkChubbyDown";
        pTVar26 = (TypeDescriptor *)"WalkNormalUp";
      }
      else {
        local_8c = (TypeDescriptor *)0xb1e450;
        local_b4 = "WalkAttack02Down";
        pcVar25 = "WalkAttack02Hori";
        pTVar36 = (TypeDescriptor *)local_b4;
        pTVar26 = local_8c;
        if (0x1e < (int)param_1[0x82].pVFTable) {
          local_8c = (TypeDescriptor *)0xb1e450;
          param_1[0x16c].spare = &DAT_00000004;
          local_b4 = "WalkAttack02Down";
          pTVar36 = (TypeDescriptor *)local_b4;
          pTVar26 = local_8c;
          if (local_9c == (void **)0x2) {
            local_8c = (TypeDescriptor *)0xb1e450;
            local_b4 = "WalkAttack02Down";
            pTVar36 = (TypeDescriptor *)local_b4;
            pTVar26 = local_8c;
            if (DAT_00baa1f8 <= (float)param_1[0x70].pVFTable / (float)param_1[0x70].spare) {
              local_164 = (TypeDescriptor *)0x0;
              pTStack_168 = (TypeDescriptor *)0x2;
              uStack_16c = (void **)0x3f800000;
              local_170 = (TypeDescriptor *)0x3e0;
              pTStack_174 = (TypeDescriptor *)0x47c4b5;
              FUN_006d6ba0();
              pTVar36 = (TypeDescriptor *)"WalkAttack02Down";
              pTVar26 = (TypeDescriptor *)"WalkAttackUp";
            }
          }
        }
      }
      break;
    case (void *)0x10:
      pcVar25 = "WalkSadHori";
      local_b4 = "WalkSadDown";
      pvVar12 = param_1[0x82].pVFTable;
      if (pvVar12 == (void *)0x1) {
        local_164 = (TypeDescriptor *)0x0;
        pTStack_168 = (TypeDescriptor *)0x2;
        uStack_16c = (void **)0x3f800000;
        local_170 = (TypeDescriptor *)0x8e;
        pTStack_174 = (TypeDescriptor *)0x47bd8a;
        FUN_006d6ba0();
        pvVar12 = param_1[0x82].pVFTable;
      }
      pvVar33 = (void *)((float)param_1[0x6d].spare * DAT_00baa304);
      param_1[0x82].pVFTable = (void *)((int)pvVar12 + 1);
      pvVar12 = param_1[0x17d].spare;
      param_1[0x6d].spare = pvVar33;
      if (pvVar12 != (void *)0x0) {
        *(void **)((int)pvVar12 + 0x360) = DAT_00c7b640;
        *(void **)((int)pvVar12 + 0x364) = DAT_00c7b644;
        pvVar12 = param_1[0x17d].spare;
        *(void **)((int)pvVar12 + 0x33c) = param_1[0x67].spare;
        *(void **)((int)pvVar12 + 0x340) = param_1[0x68].pVFTable;
        pvVar12 = param_1[0x17d].spare;
        if (pvVar12 != (void *)0x0) {
          if ((int)param_1[0x82].pVFTable < 0x25) {
            pTVar36 = (TypeDescriptor *)local_b4;
            pTVar26 = local_8c;
            if ((local_91 != '\0') && (9 < (int)param_1[0x82].pVFTable)) {
              param_1[0x16c].spare = (void *)0xc;
              local_b4 = "SpitDown";
              pcVar25 = "SpitHori";
              local_8c = (TypeDescriptor *)0xb1e448;
              pTVar36 = (TypeDescriptor *)local_b4;
              pTVar26 = local_8c;
            }
            break;
          }
          if (*(int *)((int)pvVar12 + 0x28) == 4) {
            *(undefined4 *)((int)pvVar12 + 0x410) = 0;
            *(undefined4 *)((int)pvVar12 + 0x414) = 0;
                    /* WARNING: Load size is inaccurate */
            (**(code **)(*param_1[0x17d].spare + 0xc))();
            *(undefined *)((int)param_1[0x17d].spare + 0x171) = 1;
          }
        }
      }
      local_164 = (TypeDescriptor *)0x0;
      pTStack_168 = (TypeDescriptor *)0x2;
      uStack_16c = (void **)0x3f4ccccd;
      local_170 = (TypeDescriptor *)0x75;
      pTStack_174 = (TypeDescriptor *)0x47bedd;
      FUN_006d6ba0();
      param_1[0x16c].spare = &DAT_00000004;
      param_1[0x176].pVFTable = DAT_00c7b640;
      param_1[0x176].spare = DAT_00c7b644;
      pTVar36 = (TypeDescriptor *)local_b4;
      pTVar26 = local_8c;
      if ((local_9c == (void **)0x2) &&
         (DAT_00baa1f8 <= (float)param_1[0x70].pVFTable / (float)param_1[0x70].spare)) {
        local_164 = (TypeDescriptor *)0x0;
        pTStack_168 = (TypeDescriptor *)0x2;
        uStack_16c = (void **)0x3f800000;
        local_170 = (TypeDescriptor *)0x3e0;
        pTStack_174 = (TypeDescriptor *)0x47bf51;
        FUN_006d6ba0();
        pTVar36 = (TypeDescriptor *)local_b4;
        pTVar26 = local_8c;
      }
    }
    if ((float)((uint)param_1[0x6c].pVFTable & DAT_00bacb40) <=
        (float)((uint)param_1[0x6c].spare & DAT_00bacb40)) {
      local_164 = pTVar26;
      if (DAT_00ba9fe4 < (float)param_1[0x6c].spare) {
        local_164 = pTVar36;
      }
    }
    else {
      *(bool *)&param_1[0x29].pVFTable = (float)param_1[0x6c].pVFTable < 0.0;
      local_164 = (TypeDescriptor *)pcVar25;
    }
    if (param_1[0x16c].spare == (void *)0x10) {
      pTStack_168 = (TypeDescriptor *)0x47c4f8;
      FUN_0040a6e0();
      if (param_1[0x78].pVFTable != (void *)0x0) {
        iVar14 = FUN_004567e0();
        *(undefined4 *)(iVar14 + 0xb64) = 0x10;
        iVar14 = FUN_004567e0();
        if (*(int *)(iVar14 + 0x3c0) != 0) {
          FUN_004567e0();
          iVar14 = FUN_004567e0();
          *(undefined4 *)(iVar14 + 0xb64) = 0x10;
        }
        goto LAB_0047c541;
      }
    }
    else {
      pTStack_168 = (TypeDescriptor *)0x47c541;
      HELPER_0040a380_AnimationActionA();
LAB_0047c541:
      if (param_1[0x78].pVFTable != (void *)0x0) goto LAB_0047c55f;
    }
    FUN_00435c70();
    local_164 = (TypeDescriptor *)0x47c55f;
    (*extraout_EDX_00)();
  }
  else {
    if (pvVar12 == (void *)0x2) {
      if ((param_1[0xf].spare == (void *)0x0) || (*(char *)&param_1[0x11].spare == '\0')) {
        local_164 = (TypeDescriptor *)0xb1e3a8;
LAB_0047ad39:
        pTStack_168 = (TypeDescriptor *)0x47ad3e;
        HELPER_0040a380_AnimationActionA();
      }
    }
    else if (pvVar12 == (void *)0x1) {
      local_164 = (TypeDescriptor *)0xb1e39c;
      goto LAB_0047ad39;
    }
    if (param_1[0x77].spare == (void *)0x0) {
      FUN_00435c70();
      local_164 = (TypeDescriptor *)0x47ad5d;
      (*extraout_EDX)();
      if (param_1[0x77].spare != (void *)0x0) goto LAB_0047ad6b;
    }
    else {
LAB_0047ad6b:
      iVar14 = FUN_00447770();
      if (*(int *)(iVar14 + 0xc14) != 0) {
        local_8c = (TypeDescriptor *)((uint)(param_1[0x178].pVFTable != (void *)0x2) * 2 + 0xd);
        iVar14 = FUN_00447770();
        if ((int)local_8c < *(int *)(iVar14 + 0xc14)) {
          iVar14 = FUN_00447770();
          local_a8 = *(TypeDescriptor **)(iVar14 + 0xc10);
          uVar23 = (int)&local_a8->pVFTable + (int)&local_8c->pVFTable;
          uVar22 = uVar23 & 1;
          iVar14 = *(int *)(*(int *)(iVar14 + 0xc08) +
                           (*(int *)(iVar14 + 0xc0c) - 1U & uVar23 >> 1) * 4);
          param_1[0x67].spare = *(void **)(iVar14 + uVar22 * 8);
          param_1[0x68].pVFTable = *(void **)(iVar14 + 4 + uVar22 * 8);
          if (param_1[0x182].spare != (void *)0x0) {
            local_164 = (TypeDescriptor *)0x47ae0a;
            pfVar15 = (float *)FUN_00499230();
            fVar29 = (float)param_1[0x68].pVFTable - pfVar15[1];
            fVar31 = (float)param_1[0x67].spare - *pfVar15;
            fVar29 = fVar29 * fVar29 + fVar31 * fVar31;
            FUN_00435a50();
            if (DAT_00baa630 < fVar29) {
              param_1[0x6c].pVFTable = DAT_00c7b640;
              param_1[0x6c].spare = DAT_00c7b644;
              iVar14 = FUN_00447770();
              local_a8 = *(TypeDescriptor **)(iVar14 + 0xc10);
              puVar24 = (undefined *)((int)&local_8c[-1].spare + 3) + (int)local_a8;
              local_90 = (TypeDescriptor *)((uint)puVar24 & 1);
              iVar14 = *(int *)(*(int *)(iVar14 + 0xc08) +
                               (*(int *)(iVar14 + 0xc0c) - 1U & (uint)puVar24 >> 1) * 4);
              iVar16 = FUN_00447770();
              local_a8 = *(TypeDescriptor **)(iVar16 + 0xc10);
              uVar23 = (int)&local_a8->pVFTable + (int)&local_8c->pVFTable;
              uVar22 = uVar23 & 1;
              iVar16 = *(int *)(*(int *)(iVar16 + 0xc08) +
                               (*(int *)(iVar16 + 0xc0c) - 1U & uVar23 >> 1) * 4);
              pvVar12 = local_c4[0x6d].spare;
              fVar29 = (*(float *)(iVar14 + (int)local_90 * 8) - *(float *)(iVar16 + uVar22 * 8)) *
                       DAT_00baa75c;
              ppvVar17 = local_9c;
              param_1 = local_c4;
              if ((NAN((float)pvVar12) || NAN(DAT_00ba9fe4)) == ((float)pvVar12 == DAT_00ba9fe4)) {
                local_c4[0x6c].spare =
                     (void *)(((float)local_c4[0x73].spare *
                              (*(float *)(iVar14 + 4 + (int)local_90 * 8) -
                              *(float *)(iVar16 + 4 + uVar22 * 8)) * DAT_00baa75c) / (float)pvVar12
                             + (float)local_c4[0x6c].spare);
                local_c4[0x6c].pVFTable =
                     (void *)(((float)local_c4[0x73].spare * fVar29) / (float)pvVar12 +
                             (float)local_c4[0x6c].pVFTable);
              }
              goto LAB_0047af7c;
            }
          }
          param_1[0x6c].pVFTable = DAT_00c7b640;
          param_1[0x6c].spare = DAT_00c7b644;
          ppvVar17 = local_9c;
        }
      }
    }
LAB_0047af7c:
    pTVar10 = param_1;
    if ((param_1[0x178].pVFTable == (void *)0x2) && (param_1[0x16c].spare == (void *)0xd)) {
      puVar24 = (undefined *)((int)param_1[0x82].pVFTable + 1);
      param_1[0x82].pVFTable = puVar24;
      if (puVar24 == (undefined *)0x1) {
        local_164 = (TypeDescriptor *)0x0;
        pTStack_168 = (TypeDescriptor *)0x2;
        uStack_16c = (void **)0x3f800000;
        local_170 = (TypeDescriptor *)0x3e2;
        if (ppvVar17 != (void **)0x2) {
          local_170 = (TypeDescriptor *)0x74;
        }
        pTStack_174 = (TypeDescriptor *)0x47afd8;
        FUN_006d6ba0();
        pvVar12 = DAT_00c7b644;
        pvVar33 = DAT_00c7b640;
        if (param_1[0x77].spare != (void *)0x0) {
          iVar14 = FUN_00447770();
          pvVar33 = (void *)(*(float *)(iVar14 + 0x33c) - (float)param_1[0x67].spare);
          pvVar12 = (void *)(*(float *)(iVar14 + 0x340) - (float)param_1[0x68].pVFTable);
        }
        if ((float)((uint)pvVar33 & DAT_00bacb40) <= (float)((uint)pvVar12 & DAT_00bacb40)) {
          if (0.0 <= (float)pvVar12) {
            local_164 = (TypeDescriptor *)0xb1e3dc;
          }
          else {
            local_164 = (TypeDescriptor *)0xb1e3b4;
          }
        }
        else {
          local_164 = (TypeDescriptor *)0xb1e3c0;
          *(bool *)&param_1[0x29].pVFTable = DAT_00ba9fe4 < (float)pvVar33;
        }
        pTStack_168 = (TypeDescriptor *)0x47b050;
        cVar8 = HELPER_0040a5d0_AnimationPredicateC();
        if (cVar8 != '\0') {
          HELPER_AnimationState_Loop();
          *(undefined *)&param_1[0x11].spare = 1;
        }
      }
      else if (puVar24 == &DAT_00000005) {
        if (param_1[0x182].spare < (void *)0x6) {
          local_b0._4_4_ = (int)param_1[0x182].spare + (int)param_1[0x182].pVFTable;
          puVar24 = (undefined *)((int)&((TypeDescriptor *)(local_b0._4_4_ + -8))->spare + 3);
        }
        else {
          local_a8 = (TypeDescriptor *)param_1[0x182].pVFTable;
          puVar24 = (undefined *)((int)&local_a8->spare + 1);
        }
        iVar14 = *(int *)((int)param_1[0x181].pVFTable +
                         ((int)param_1[0x181].spare - 1U & (uint)puVar24 >> 1) * 4);
        local_c0.pVFTable = *(void **)(iVar14 + ((uint)puVar24 & 1) * 8);
        local_c0.spare = *(void **)(iVar14 + 4 + ((uint)puVar24 & 1) * 8);
        local_8c = *(TypeDescriptor **)(DAT_00c71678 + 0x18300);
        local_164 = (TypeDescriptor *)0x47b109;
        pTVar36 = (TypeDescriptor *)FUN_00812c90();
        local_c0.pVFTable =
             (void *)((float)((int)pTVar36 % (int)local_8c[1].spare) * DAT_00baa904 + DAT_00baa904);
        local_c0.spare =
             (void *)((float)((int)pTVar36 / (int)local_8c[1].spare) * DAT_00baa904 + DAT_00baaa00);
        local_98 = pTVar36;
        if (local_9c == (void **)0x2) {
          if (param_1[6].pVFTable == (void *)0x0) {
            if ((((((TypeDescriptor *)0x1bf < pTVar36) ||
                  ((&local_8c[4].spare)[(int)pTVar36] == (void *)0x0)) ||
                 (iVar14 = *(int *)((int)(&local_8c[4].spare)[(int)pTVar36] + 4), iVar14 == 1)) ||
                (iVar14 == 10)) && (local_8c[1].pVFTable != (void *)0x10)) {
              local_90 = (TypeDescriptor *)FUN_007e90f0();
              if (((int)pTVar36 < 0) || (0x1bf < (int)pTVar36)) {
                local_164 = (TypeDescriptor *)0x10;
                pTStack_168 = (TypeDescriptor *)0x47b1c1;
                FUN_00a112c0();
              }
              if ((pTVar36 < (TypeDescriptor *)0x1c0) &&
                 ((int)(&local_8c[0xed].spare)[(int)pTVar36] < 0x385)) {
                local_164 = (TypeDescriptor *)0x47b1ee;
                pTVar36 = (TypeDescriptor *)FUN_00a0f4c0();
                local_14 = 0xb;
                local_a8 = pTVar36;
                if (pTVar36 == (TypeDescriptor *)0x0) {
                  pTVar36 = (TypeDescriptor *)0x0;
                }
                else {
                  FUN_00709c40();
                  pTVar36->pVFTable = IsaacRepentancePlus::GridEntity_Poop::vftable;
                  pTVar36[0x2b].pVFTable = (void *)0x0;
                  pTVar36[0x2d].pVFTable = (void *)0x0;
                  pTVar36[0x2d].spare = &DAT_0000000f;
                  *(undefined *)&pTVar36[0x2b].pVFTable = 0;
                  pTVar36[0x2e].spare = (void *)0x0;
                  pTVar36[0x2f].pVFTable = (void *)0x0;
                  pTVar36[0x2f].spare = (void *)0x0;
                  pTVar36[0x30].pVFTable = (void *)0x0;
                  pTVar36[0x30].spare = DAT_00c7b640;
                  pTVar36[0x31].pVFTable = DAT_00c7b644;
                  pTVar36[0x31].spare = DAT_00c7b640;
                  pTVar36[0x32].pVFTable = DAT_00c7b644;
                  pTVar36[0x32].spare = (void *)0x0;
                  pTVar36[0x33].pVFTable = (void *)0x0;
                }
                local_14._0_1_ = 0xff;
                local_14._1_3_ = 0xffffff;
                if (pTVar36 != (TypeDescriptor *)0x0) {
                  pTVar36->spare = &DAT_0000000e;
                  pTVar36[4].spare = local_98;
                  if ((undefined4 *)(&local_8c[4].spare)[(int)local_98] != (undefined4 *)0x0) {
                    /* WARNING: Load size is inaccurate */
                    local_164 = (TypeDescriptor *)0x47b2e8;
                    (***(&local_8c[4].spare)[(int)local_98])();
                  }
                  (&local_8c[4].spare)[(int)local_98] = pTVar36;
                  pTVar36[1].pVFTable = (void *)0x1;
                  pTVar36[3].pVFTable = (void *)0x0;
                  local_164 = (TypeDescriptor *)0x47b30d;
                  FUN_00709db0();
                }
              }
              local_164 = (TypeDescriptor *)0x0;
              pTStack_168 = (TypeDescriptor *)0x2;
              uStack_16c = (void **)0x3f800000;
              local_170 = (TypeDescriptor *)0x3de;
              pTStack_174 = (TypeDescriptor *)0x47b32d;
              FUN_006d6ba0();
            }
          }
          else {
            iVar14 = FUN_004566b0();
            if (iVar14 < 5) {
              local_164 = (TypeDescriptor *)0x0;
              pTStack_168 = (TypeDescriptor *)0x47b351;
              cVar8 = FUN_00417430();
              if (cVar8 != '\0') {
                pTStack_168 = (TypeDescriptor *)0x0;
                uStack_16c = (void **)0x5c;
                local_170 = (TypeDescriptor *)0x47b363;
                local_164 = (TypeDescriptor *)extraout_ECX;
                uVar23 = FUN_006ac7e0();
                if (2 < uVar23) goto LAB_0047b3e1;
              }
              local_170 = (TypeDescriptor *)FUN_006eef60();
              local_164 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
              pTStack_168 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
              uStack_16c = (void **)0x0;
              pTStack_174 = (TypeDescriptor *)0x0;
              ppvStack_17c = &DAT_00c7b640;
              pTStack_180 = &local_c0;
              pvStack_184 = (void *)0x0;
              pTStack_188 = (TypeDescriptor *)0x5c;
              uStack_18c = 0x47b39a;
              pTStack_178 = param_1;
              local_170 = (TypeDescriptor *)HELPER_Entity_SpawnRelay();
              pTStack_174 = (TypeDescriptor *)0x47b3a0;
              iVar14 = __RTDynamicCast();
              *(float *)(iVar14 + 0x380) = *(float *)(iVar14 + 0x380) * DAT_00baa354;
              local_164 = (TypeDescriptor *)0x47b3d9;
              FUN_006d6610();
              local_164 = (TypeDescriptor *)0x47b3e1;
              FUN_006a92a0();
            }
          }
LAB_0047b3e1:
          pvVar12 = param_1[0x70].pVFTable;
          param_1[0x16c].spare = &DAT_00000004;
          if (DAT_00baa1f8 <= (float)pvVar12 / (float)param_1[0x70].spare) {
            local_164 = (TypeDescriptor *)0x0;
            pTStack_168 = (TypeDescriptor *)0x2;
            uStack_16c = (void **)0x3f800000;
            local_170 = (TypeDescriptor *)0x3e0;
            pTStack_174 = (TypeDescriptor *)0x47b428;
            FUN_006d6ba0();
          }
        }
        else {
          pTVar36 = (TypeDescriptor *)0x3d;
          if (param_1[5].spare == (void *)0x0) {
            if (param_1[6].pVFTable == (void *)0x1) {
              pTVar36 = (TypeDescriptor *)0x1e;
            }
            else {
              pTVar36 = (TypeDescriptor *)((uint)(param_1[6].pVFTable == (void *)0x2) * 8 + 0x17);
              local_90 = pTVar36;
            }
          }
          local_164 = (TypeDescriptor *)0x0;
          pTStack_168 = (TypeDescriptor *)0x47b467;
          cVar8 = FUN_00417430();
          if (cVar8 != '\0') {
            pTStack_168 = (TypeDescriptor *)0x0;
            local_170 = (TypeDescriptor *)0x47b478;
            uStack_16c = &pTVar36->pVFTable;
            local_164 = (TypeDescriptor *)extraout_ECX_00;
            uVar23 = FUN_006ac7e0();
            if (2 < uVar23) {
              param_1[0x16c].spare = &DAT_00000004;
              goto LAB_0047c55f;
            }
          }
          if (pTVar36 == (TypeDescriptor *)0x1e) {
LAB_0047b4e7:
            local_164 = (TypeDescriptor *)0x0;
            pTStack_168 = (TypeDescriptor *)0x2;
            uStack_16c = (void **)0x3f333333;
            local_170 = (TypeDescriptor *)0x109;
            pTStack_174 = (TypeDescriptor *)0x47b507;
            FUN_006d6ba0();
          }
          else {
            uVar23 = FUN_006eef60();
            local_164 = (TypeDescriptor *)(uVar23 % 3);
            if (local_164 != (TypeDescriptor *)0x0) goto LAB_0047b4e7;
            pTStack_168 = (TypeDescriptor *)0x2;
            uStack_16c = (void **)0x3f800000;
            local_170 = (TypeDescriptor *)0x109;
            pTStack_174 = (TypeDescriptor *)0x47b4c2;
            FUN_006d6ba0();
            FUN_006eef60();
            local_164 = (TypeDescriptor *)0x0;
            uStack_16c = &DAT_00c7b640;
            local_170 = &local_c0;
            pTStack_174 = (TypeDescriptor *)0x0;
            ppvStack_17c = (void **)0x47b4e5;
            pTStack_178 = pTVar36;
            pTStack_168 = param_1;
            HELPER_Entity_SpawnRelay();
          }
          local_170 = (TypeDescriptor *)FUN_006eef60();
          local_164 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
          pTStack_168 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uStack_16c = (void **)0x0;
          pTStack_174 = (TypeDescriptor *)0x0;
          ppvStack_17c = &DAT_00c7b640;
          pTStack_180 = &local_c0;
          pvStack_184 = (void *)0x0;
          uStack_18c = 0x47b538;
          pTStack_188 = pTVar36;
          pTStack_178 = param_1;
          local_170 = (TypeDescriptor *)HELPER_Entity_SpawnRelay();
          pTStack_174 = (TypeDescriptor *)0x47b53e;
          __RTDynamicCast();
          if (pTVar36 == (TypeDescriptor *)0x1e) {
            local_164 = (TypeDescriptor *)0x0;
            pTStack_168 = (TypeDescriptor *)0x47b550;
            FUN_006d0300();
            param_1[0x16c].spare = &DAT_00000004;
          }
          else {
            local_164 = (TypeDescriptor *)(local_b0 + 4);
            local_b0._4_4_ =
                 (float)((uint)((float)local_c0.pVFTable - (float)param_1[0x67].spare) ^
                        DAT_00bacb70) * DAT_00baa120;
            local_a8 = (TypeDescriptor *)
                       ((float)((uint)((float)local_c0.spare - (float)param_1[0x68].pVFTable) ^
                               DAT_00bacb70) * DAT_00baa120);
            pTStack_168 = (TypeDescriptor *)0x47b5bd;
            FUN_004314b0();
            param_1[0x16c].spare = &DAT_00000004;
          }
        }
      }
    }
  }
LAB_0047c55f:
  if (pTVar10[0x182].spare == (void *)0x0) {
    local_164 = (TypeDescriptor *)0x47c57a;
    FUN_00499190();
  }
  ppvVar17 = &pTVar10[0x180].spare;
  local_164 = (TypeDescriptor *)0x47c588;
  pfVar15 = (float *)FUN_00499230();
  local_98 = (TypeDescriptor *)((float)pTVar10[0x67].spare - *pfVar15);
  local_b4 = (char *)((float)pTVar10[0x68].pVFTable - pfVar15[1]);
  auVar30 = ZEXT416((uint)((float)local_98 * (float)local_98 + (float)local_b4 * (float)local_b4));
  FUN_00435a50();
  local_9c = auVar30._0_4_;
  if (DAT_00ba9fe4 < (float)local_9c) {
    local_b4 = (char *)((float)local_b4 * ((float)DAT_00baa454 / (float)local_9c));
    local_98 = (TypeDescriptor *)(((float)DAT_00baa454 / (float)local_9c) * (float)local_98);
  }
  local_98 = (TypeDescriptor *)((float)local_98 + (float)local_98);
  local_b4 = (char *)((float)local_b4 + (float)local_b4);
  param_1 = pTVar10;
  if ((float)local_9c != DAT_00baa630) {
    pvVar12 = pTVar10[0x182].spare;
    pTVar36 = pTVar10;
    while (pvVar12 != (void *)0x0) {
      local_8c = (TypeDescriptor *)pTVar10[0x182].pVFTable;
      if ((TypeDescriptor **)*ppvVar17 == (TypeDescriptor **)0x0) {
        local_90 = (TypeDescriptor *)0x0;
      }
      else {
                    /* WARNING: Load size is inaccurate */
        local_90 = **ppvVar17;
      }
      uVar23 = (uint)local_8c & 1;
      iVar14 = *(int *)((int)local_90->spare +
                       ((int)local_90[1].pVFTable - 1U & (uint)local_8c >> 1) * 4);
      local_c0.spare = (void *)((float)local_98 + *(float *)(iVar14 + uVar23 * 8));
      local_a8 = (TypeDescriptor *)((float)local_b4 + *(float *)(iVar14 + 4 + uVar23 * 8));
      if ((uVar23 == 0) && (pTVar10[0x181].spare <= (void *)((int)pTVar10[0x182].spare + 2U >> 1)))
      {
        local_164 = (TypeDescriptor *)0x47c69f;
        FUN_00499410();
        local_8c = (TypeDescriptor *)pTVar10[0x182].pVFTable;
        auVar30 = ZEXT416(local_9c);
      }
      pvVar33 = pTVar10[0x181].spare;
      pvVar2 = (void *)((int)pvVar33 * 2);
      pvVar12 = (void *)((uint)local_8c & (int)pvVar2 - 1U);
      pTVar10[0x182].pVFTable = pvVar12;
      if (pvVar12 == (void *)0x0) {
        pvVar12 = pvVar2;
      }
      local_8c = (TypeDescriptor *)((int)pvVar12 - 1);
      local_90 = (TypeDescriptor *)((int)pvVar33 - 1U & (uint)local_8c >> 1);
      if (*(int *)((int)pTVar10[0x181].pVFTable + (int)local_90 * 4) == 0) {
        local_164 = (TypeDescriptor *)0x47c6e0;
        uVar18 = FUN_00a0f4c0();
        auVar30 = ZEXT416(local_9c);
        *(undefined4 *)((int)pTVar10[0x181].pVFTable + (int)local_90 * 4) = uVar18;
      }
      auVar30._0_4_ = (void **)(auVar30._0_4_ - DAT_00baa630);
      iVar14 = *(int *)((int)pTVar10[0x181].pVFTable + (int)local_90 * 4);
      *(void **)(iVar14 + ((uint)local_8c & 1) * 8) = local_c0.spare;
      *(TypeDescriptor **)(iVar14 + 4 + ((uint)local_8c & 1) * 8) = local_a8;
      pTVar10[0x182].spare = (void *)((int)pTVar10[0x182].spare + 1);
      fVar29 = DAT_00baa630;
      pvVar12 = pTVar10[0x182].spare;
      pTVar10[0x182].pVFTable = local_8c;
      param_1 = local_c4;
      pTVar36 = local_c4;
      local_9c = auVar30._0_4_;
      if ((float)auVar30._0_4_ <= fVar29) goto LAB_0047c75c;
    }
    uVar34 = FUN_00499550();
    pcVar25 = (char *)((int)((ulonglong)uVar34 >> 0x20) + -0x3e);
    *pcVar25 = *pcVar25 + (char)((uint)extraout_ECX_01 >> 8);
    pcVar25 = (char *)((int)&pTVar10[0x178].pVFTable + 3);
    *pcVar25 = *pcVar25 + (char)((ulonglong)uVar34 >> 0x20);
    *(char *)((int)extraout_ECX_01 + 0x4f0047c3) =
         *(char *)((int)extraout_ECX_01 + 0x4f0047c3) + (char)((ulonglong)uVar34 >> 0x28);
    *(char *)uVar34 = *(char *)uVar34 + (char)uVar34;
    pTStack_178 = (TypeDescriptor *)&stack0xfffffea0;
    pTStack_168 = (TypeDescriptor *)0xbe440047;
    uStack_16c = (void **)0xffffffff;
    local_170 = (TypeDescriptor *)&LAB_00af2b68;
    pTStack_174 = (TypeDescriptor *)ExceptionList;
    ppvStack_17c = (void **)(DAT_00bf93b4 ^ (uint)&pTStack_168);
    ExceptionList = &pTStack_174;
    piStack_258 = extraout_ECX_01;
    local_164 = (TypeDescriptor *)uVar9;
    pTStack_240 = (TypeDescriptor *)
                  FUN_006be840(ppvStack_17c,(undefined *)((int)&pTVar36->pVFTable + 3),ppvVar17);
    if (extraout_ECX_01[0x2d9] == 0) {
      iVar14 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4);
      if ((((iVar14 == 0) || (iVar14 = *(int *)(iVar14 + 0x10), iVar14 == 0)) ||
          (piVar19 = extraout_ECX_01, *(int *)(iVar14 + 0x48) == 1)) &&
         (piVar19 = extraout_ECX_01, -1 < extraout_ECX_01[0xcb])) {
        pTStack_254 = (TypeDescriptor *)extraout_ECX_01[0xcf];
        fStack_250 = 400.0;
        piVar19 = extraout_ECX_01;
        pTStack_240 = pTStack_254;
        if (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0) {
          uVar9 = 0;
          do {
            if (uVar9 == 0) {
              FUN_00417870(0);
              ppTVar11 = &pTStack_254;
            }
            else {
              FUN_00417870(uVar9);
              iVar14 = FUN_006eef60();
              fVar29 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa704;
              pTStack_23c = (TypeDescriptor *)(fVar29 + fVar29);
              piVar19 = (int *)pTStack_23c;
              FUN_0041d540();
              pTStack_24c = (TypeDescriptor *)((float)piVar19 * DAT_00baa87c + (float)pTStack_240);
              piVar19 = (int *)pTStack_23c;
              FUN_0041d520();
              ppTVar11 = &pTStack_24c;
              fStack_248 = (float)piVar19 * DAT_00baa87c + DAT_00baab54;
            }
            FUN_007cd950(ppTVar11,0,0);
            uVar9 = uVar9 + 1;
            piVar19 = piStack_258;
          } while (uVar9 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) -
                                  *(int *)(DAT_00c71678 + 0x1baa8) >> 2));
        }
      }
      piVar19[0xd0] = (int)((float)piVar19[0xd0] + DAT_00baa8a0);
      piVar19[0xcd] = piVar19[0xcf];
      piVar19[0xce] = piVar19[0xd0];
      piVar19[0x2d9] = 3;
      goto LAB_0047d87a;
    }
    extraout_ECX_01[0xd9] = (int)((float)extraout_ECX_01[0xce] - (float)extraout_ECX_01[0xd0]);
    fVar29 = (float)extraout_ECX_01[0xdb] * DAT_00baa3a4;
    extraout_ECX_01[0xd8] = (int)((float)extraout_ECX_01[0xcd] - (float)extraout_ECX_01[0xcf]);
    extraout_ECX_01[0xdb] = (int)fVar29;
    FUN_006d0ca0(acStack_294,extraout_ECX_01[10],0,0);
    uStack_16c = (void **)0x0;
    pTStack_23c = (TypeDescriptor *)0x0;
    if (uStack_288 != 0) {
      do {
        piVar19 = (int *)__RTDynamicCast(*(undefined4 *)(iStack_290 + (int)pTStack_23c * 4),0,
                                         &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                         &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        if ((piVar19 != (int *)0x0) && (piVar19 != extraout_ECX_01)) {
          if (piVar19[10] == 0x1e) {
            if ((*(char *)((int)extraout_ECX_01 + 0x173) != '\0') &&
               ((extraout_ECX_01[0x5b] & 0x10000000U) != 0)) {
              pvStack_2ac = DAT_00c7b640;
              pvStack_2a4 = DAT_00c7b640;
              pvStack_2a8 = DAT_00c7b644;
              pvStack_2a0 = DAT_00c7b644;
              uStack_2bc = 0;
              uStack_2b8 = 0;
              uStack_2b4 = 0;
              uStack_2b0 = 0;
              uStack_29c = 0;
              uStack_298 = 0;
              (**(code **)(*piVar19 + 0x24))(&uStack_2bc);
            }
          }
          else {
            fStack_250 = (float)piVar19[0xd0] - (float)extraout_ECX_01[0xd0];
            piStack_258 = (int *)((float)piVar19[0xcf] - (float)extraout_ECX_01[0xcf]);
            fVar29 = fStack_250 * fStack_250 + (float)piStack_258 * (float)piStack_258;
            FUN_00435a50();
            if ((DAT_00baa06c < fVar29) && (fVar29 < DAT_00baa9a0)) {
              fVar31 = (float)piVar19[0xdb];
              fVar29 = ((DAT_00baa9a0 - fVar29) * DAT_00baa0a0) / fVar29;
              if (NAN(fVar31) == (fVar31 == 0.0)) {
                piVar19[0xd9] =
                     (int)(((float)piVar19[0xe7] * fStack_250 * fVar29) / fVar31 +
                          (float)piVar19[0xd9]);
                piVar19[0xd8] =
                     (int)(((float)piVar19[0xe7] * (float)piStack_258 * fVar29) / fVar31 +
                          (float)piVar19[0xd8]);
              }
            }
          }
        }
        pTStack_23c = (TypeDescriptor *)((int)pTStack_23c + 1);
      } while (pTStack_23c < uStack_288);
    }
    if (extraout_ECX_01[0x2d9] == 3) {
      if (extraout_ECX_01[0x104] == 0) {
        uVar9 = FUN_006eef60();
        iVar14 = (uVar9 & 1) * 2 + 1;
        if (0.0 < (float)extraout_ECX_01[0x2ec]) {
          iVar14 = 2;
          extraout_ECX_01[0x2ec] = 0;
        }
        FUN_0041e420(&DAT_00c7f718,0x20,"Idle%d",iVar14);
        cVar8 = HELPER_0040a5d0_AnimationPredicateC(&DAT_00c7f718,1);
        if (cVar8 != '\0') {
          HELPER_AnimationState_Loop();
          *(undefined *)(extraout_ECX_01 + 0x23) = 1;
        }
        extraout_ECX_01[0x104] = extraout_ECX_01[0x104] + 1;
      }
      else if ((extraout_ECX_01[0x1f] == 0) || (*(char *)(extraout_ECX_01 + 0x23) == '\0')) {
        pTVar10 = (TypeDescriptor *)0x0;
        pTStack_23c = (TypeDescriptor *)0x0;
        if (((extraout_ECX_01[0x5b] & 0x10000000U) == 0) ||
           ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
          uVar9 = FUN_006eef60();
          if ((uVar9 % 3 == 0) || ((float)pTStack_240[0x68].pVFTable <= DAT_00baaa94)) {
LAB_0047ce36:
            iVar16 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                     *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
            iVar14 = 0;
            if (0 < iVar16) {
              iVar14 = iVar16;
            }
            if (iVar14 < 0xe) {
LAB_0047ce56:
              uVar9 = FUN_006eef60();
              pvStack_184 = (void *)0x1;
              pTStack_188 = (TypeDescriptor *)0x3;
              pTStack_180 = (TypeDescriptor *)0x6;
              pTVar10 = (&pTStack_188)[uVar9 % 3];
              pTStack_23c = pTVar10;
            }
LAB_0047ce7f:
            extraout_ECX_01[0x104] = 0;
            if ((int)pTVar10 < 1) goto LAB_0047d697;
          }
          else {
            iVar16 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                     *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
            iVar14 = 0;
            if (0 < iVar16) {
              iVar14 = iVar16;
            }
            if (7 < iVar14) goto LAB_0047ce36;
            if (extraout_ECX_01[0xc] == 1) goto LAB_0047ce56;
            fVar29 = (float)extraout_ECX_01[0xd0] - (float)pTStack_240[0x68].pVFTable;
            fVar31 = (float)extraout_ECX_01[0xcf] - (float)pTStack_240[0x67].spare;
            if (((float)((uint)fVar29 & DAT_00bacb40) < (float)((uint)fVar31 & DAT_00bacb40)) ||
               (0.0 < fVar29)) {
              if (0.0 < fVar31) {
                pTVar10 = (TypeDescriptor *)0x4;
                extraout_ECX_01[0x104] = 0;
                pTStack_23c = (TypeDescriptor *)0x4;
                goto LAB_0047ce91;
              }
              pTVar10 = (TypeDescriptor *)0x5;
              pTStack_23c = pTVar10;
              goto LAB_0047ce7f;
            }
            pTVar10 = (TypeDescriptor *)0x2;
            extraout_ECX_01[0x104] = 0;
            pTStack_23c = (TypeDescriptor *)0x2;
          }
LAB_0047ce91:
          extraout_ECX_01[0x2d9] = 8;
          FUN_0041e420(&DAT_00c7f718,0x20,"Attack%d",pTVar10);
          ppbVar13 = (byte **)extraout_ECX_01[0x1f];
          if (ppbVar13 == (byte **)0x0) {
LAB_0047cf06:
            cVar8 = HELPER_0040a5d0_AnimationPredicateC(&DAT_00c7f718,1);
            if (cVar8 != '\0') {
              HELPER_AnimationState_Loop();
              *(undefined *)(extraout_ECX_01 + 0x23) = 1;
              pTVar10 = pTStack_23c;
            }
          }
          else {
            if (&DAT_0000000f < ppbVar13[5]) {
              ppbVar13 = (byte **)*ppbVar13;
            }
            pbVar20 = &DAT_00c7f718;
            do {
              bVar27 = *(byte *)ppbVar13;
              bVar28 = bVar27 < *pbVar20;
              if (bVar27 != *pbVar20) {
LAB_0047cee6:
                uVar9 = -(uint)bVar28 | 1;
                goto LAB_0047ceeb;
              }
              if (bVar27 == 0) break;
              bVar27 = *(byte *)((int)ppbVar13 + 1);
              bVar28 = bVar27 < pbVar20[1];
              if (bVar27 != pbVar20[1]) goto LAB_0047cee6;
              ppbVar13 = (byte **)((int)ppbVar13 + 2);
              pbVar20 = pbVar20 + 2;
            } while (bVar27 != 0);
            uVar9 = 0;
LAB_0047ceeb:
            if ((uVar9 != 0) ||
               ((*(char *)(extraout_ECX_01[0x1f] + 0x34) != '\0' &&
                (*(char *)(extraout_ECX_01 + 0x23) == '\0')))) goto LAB_0047cf06;
          }
          extraout_ECX_01[0x2f0] = (int)pTVar10;
          extraout_ECX_01[0x2ec] = 0;
        }
        else {
          extraout_ECX_01[0x104] = 0;
        }
      }
    }
    else if (extraout_ECX_01[0x2d9] == 8) {
      if ((extraout_ECX_01[0x1f] == 0) || (*(char *)(extraout_ECX_01 + 0x23) == '\0')) {
        extraout_ECX_01[0x104] = 0;
        extraout_ECX_01[0x2d9] = 3;
      }
      else {
        cVar8 = HELPER_AnimationState_IsEventTriggered("Shoot");
        if (cVar8 != '\0') {
          AI_0043ef30();
          iVar14 = extraout_ECX_01[0x2f0];
          if (iVar14 == 3) {
            FUN_006d6ba0(0x109,0x3f333333,2,0,0x3f800000);
            FUN_006d6ba0(9,0x3f800000,2,0,0x3f800000);
            if (((extraout_ECX_01[0x5b] & 0x10000000U) == 0) ||
               (uVar9 = FUN_006ac7e0(0xe,0,extraout_ECX_01[0x5b] & 0x10000000U,0), uVar9 < 3)) {
              uVar18 = FUN_006eef60();
              fStack_25c = (float)extraout_ECX_01[0xcf] + DAT_00baa950;
              piStack_258 = (int *)((float)extraout_ECX_01[0xd0] - DAT_00baa8a0);
              pTStack_24c = (TypeDescriptor *)0x41200000;
              fStack_248 = 0.0;
              HELPER_Entity_SpawnRelay(0xe,0,&fStack_25c,&pTStack_24c,extraout_ECX_01,0,uVar18);
            }
          }
          else if (iVar14 == 1) {
            FUN_006d6ba0(0x109,0x3f800000,2,0,0x3f800000);
            FUN_006d6ba0(0xd,0x3f800000,2,0,0x3f800000);
            pTStack_23c = (TypeDescriptor *)0x2;
            cVar8 = FUN_00417430(0,0x10000000);
            if (cVar8 != '\0') {
              iVar14 = FUN_006ac7e0(0x12,0,extraout_ECX_02,0);
              pTStack_23c = (TypeDescriptor *)2;
              if (3 - iVar14 < 3) {
                pTStack_23c = (TypeDescriptor *)(3 - iVar14);
              }
            }
            iVar14 = 0;
            if (0 < (int)pTStack_23c) {
              pTStack_24c = (TypeDescriptor *)0x0;
              fStack_248 = -20.0;
              do {
                pTStack_240 = DAT_00baad50;
                if (iVar14 == 0) {
                  pTStack_240 = DAT_00baa454;
                }
                uVar18 = FUN_006eef60();
                fStack_260 = (float)extraout_ECX_01[0xd0] - DAT_00baa968;
                fStack_264 = (float)pTStack_240 * DAT_00baa904 + (float)extraout_ECX_01[0xcf];
                uVar37 = 0;
                pTVar36 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
                pTVar10 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
                uVar35 = 0;
                uVar18 = HELPER_Entity_SpawnRelay
                                   (0x12,0,&fStack_264,&pTStack_24c,extraout_ECX_01,0,uVar18);
                iVar16 = __RTDynamicCast(uVar18,uVar35,pTVar10,pTVar36,uVar37);
                iVar14 = iVar14 + 1;
                fVar29 = *(float *)(iVar16 + 0x380) - DAT_00baa630;
                *(undefined *)(iVar16 + 0x174) = 1;
                *(float *)(iVar16 + 0x380) = fVar29;
              } while (iVar14 < (int)pTStack_23c);
            }
          }
          else if (iVar14 == 6) {
            FUN_006d6ba0(0x109,0x3f99999a,2,0,0x3f800000);
            FUN_006d0c60(&uStack_18c,0x1e,0xffffffff);
            iVar14 = 2;
            uStack_16c = (void **)CONCAT31(uStack_16c._1_3_,1);
            pTStack_23c = (TypeDescriptor *)0x2;
            cVar8 = FUN_00417430(0,0x10000000);
            if (cVar8 != '\0') {
              iVar16 = FUN_006ac7e0(0x1e,0,extraout_ECX_03,0);
              iVar16 = 3 - iVar16;
              pTStack_23c = (TypeDescriptor *)iVar14;
              if (iVar16 < 3) {
                iVar14 = iVar16;
                pTStack_23c = (TypeDescriptor *)iVar16;
              }
            }
            pTStack_240 = (TypeDescriptor *)0x0;
            if (0 < iVar14) {
              do {
                pTVar26 = (TypeDescriptor *)0x0;
                cStack_241 = '\x01';
                pTStack_254 = (TypeDescriptor *)
                              ((float)(&DAT_00c5c5bc)[(int)pTStack_240 * 2] +
                              (float)extraout_ECX_01[0xcf]);
                fVar29 = (float)(&DAT_00c5c5c0)[(int)pTStack_240 * 2] + (float)extraout_ECX_01[0xd0]
                ;
                pTVar10 = pTStack_188;
                fStack_250 = fVar29;
                pTVar36 = pTStack_254;
                if (pTStack_180 == (TypeDescriptor *)0x0) {
LAB_0047d335:
                  uVar18 = FUN_006eef60();
                  HELPER_Entity_SpawnRelay
                            (0x1e,0,&pTStack_254,&DAT_00c7b640,extraout_ECX_01,0,uVar18);
                }
                else {
                  do {
                    pvVar12 = (&pTVar10->pVFTable)[(int)pTVar26];
                    fVar31 = (float)pTVar36 - *(float *)((int)pvVar12 + 0x33c);
                    fVar32 = fVar29 - *(float *)((int)pvVar12 + 0x340);
                    if (fVar32 * fVar32 + fVar31 * fVar31 < DAT_00baab54) {
                      cStack_241 = '\0';
                      *(undefined4 *)((int)pvVar12 + 0x380) = *(undefined4 *)((int)pvVar12 + 900);
                      uVar18 = FUN_006eef60();
                      HELPER_Entity_SpawnRelay(1000,0xf,&pTStack_254,&DAT_00c7b640,0,0,uVar18);
                      pTVar10 = pTStack_188;
                      fVar29 = fStack_250;
                      pTVar36 = pTStack_254;
                    }
                    pTVar26 = (TypeDescriptor *)((int)&pTVar26->pVFTable + 1);
                  } while (pTVar26 < pTStack_180);
                  if (cStack_241 != '\0') goto LAB_0047d335;
                }
                pTStack_240 = (TypeDescriptor *)((int)&pTStack_240->pVFTable + 1);
              } while ((int)pTStack_240 < (int)pTStack_23c);
            }
            uVar9 = (uint)uStack_16c;
            uStack_16c = (void **)((uint)uStack_16c & 0xffffff00);
            if ((char)uStack_18c == '\0') {
              uStack_16c._1_3_ = SUB43(uVar9,1);
              uStack_16c._0_1_ = 2;
              FUN_00a648b0(0,0);
              uStack_16c = (void **)((uint)uStack_16c._1_3_ << 8);
            }
          }
          else if (iVar14 == 2) {
            FUN_006d6ba0(0xc,0x3f800000,2,0,0x3f800000);
            iVar14 = FUN_006eef60();
            fStack_268 = (float)extraout_ECX_01[0xd0] - DAT_00baa87c;
            fStack_26c = ((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa8d0 - DAT_00baa854) + (float)extraout_ECX_01[0xcf]
            ;
            iVar14 = FUN_006eef60();
            fStack_248 = 10.0;
            pTStack_24c = (TypeDescriptor *)
                          ((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa6fc - (float)DAT_00baa528);
            HELPER_Entity_NPC_FireProjectiles(&fStack_26c,&pTStack_24c,5,auStack_238);
          }
          else if (iVar14 == 4) {
            FUN_006d6ba0(0xb,0x3f800000,2,0,0x3f800000);
            iVar14 = FUN_006eef60();
            fStack_27c = (float)extraout_ECX_01[0xcf] + DAT_00baa83c;
            fStack_278 = (DAT_00baade4 -
                         ((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa8d0 - DAT_00baa854)) +
                         (float)extraout_ECX_01[0xd0];
            iVar14 = FUN_006eef60();
            uStack_274 = 0xc1200000;
            fStack_270 = ((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa6fc + (float)DAT_00baa454) - (float)DAT_00baa528;
            HELPER_Entity_NPC_FireProjectiles(&fStack_27c,&uStack_274,5,auStack_238);
          }
          else if (iVar14 == 5) {
            FUN_006d6ba0(0xb,0x3f800000,2,0,0x3f800000);
            iVar14 = FUN_006eef60();
            pvStack_184 = (void *)((float)extraout_ECX_01[0xcf] - DAT_00baa83c);
            pTStack_180 = (TypeDescriptor *)
                          ((DAT_00baade4 -
                           ((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                            DAT_00ba9ff4 * DAT_00baa8d0 - DAT_00baa854)) +
                          (float)extraout_ECX_01[0xd0]);
            iVar14 = FUN_006eef60();
            uStack_284 = 0x41200000;
            fStack_280 = ((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa6fc + (float)DAT_00baa454) - (float)DAT_00baa528;
            HELPER_Entity_NPC_FireProjectiles(&pvStack_184,&uStack_284,5,auStack_238);
          }
        }
      }
    }
LAB_0047d697:
    pTStack_23c = (TypeDescriptor *)(extraout_ECX_01 + 0x1e);
    if (extraout_ECX_01[0x1f] != 0) {
      cVar8 = HELPER_AnimationState_IsEventTriggered("FaceAttackAppear");
      if (cVar8 != '\0') {
        pTStack_240 = (TypeDescriptor *)0x3ab;
        FUN_00956780();
        FUN_0092dc30(pTStack_240,0x3f800000,2,0,0x3f800000,0);
        pTStack_23c = (TypeDescriptor *)(extraout_ECX_01 + 0x1e);
      }
      if (extraout_ECX_01[0x1f] != 0) {
        cVar8 = HELPER_AnimationState_IsEventTriggered("FaceAttackHide");
        if (cVar8 != '\0') {
          pTStack_240 = (TypeDescriptor *)0x3ac;
          FUN_00956780();
          FUN_0092dc30(pTStack_240,0x3f800000,2,0,0x3f800000,0);
        }
        if ((extraout_ECX_01[0x1f] != 0) &&
           (cVar8 = HELPER_AnimationState_IsEventTriggered("SmileAppear"), cVar8 != '\0')) {
          pTStack_240 = (TypeDescriptor *)0x3ad;
          FUN_00956780();
          FUN_0092dc30(pTStack_240,0x3f800000,2,0,0x3f800000,0);
        }
      }
    }
    if ((extraout_ECX_01[0x1f] != 0) &&
       (cVar8 = HELPER_AnimationState_IsEventTriggered("SmileHide"), cVar8 != '\0')) {
      pTStack_240 = (TypeDescriptor *)0x3ae;
      FUN_00956780();
      FUN_0092dc30(pTStack_240,0x3f800000,2,0,0x3f800000,0);
    }
    if (acStack_294[0] == '\0') {
      if (DAT_00c7de78 == 0) {
        puVar21 = &DAT_00c7f618;
      }
      else {
        puVar21 = (uint *)(DAT_00c7de78 + 0x30);
      }
      if (iStack_290 != 0) {
        uVar23 = *(uint *)(iStack_290 + -4);
        uVar9 = *puVar21;
        *puVar21 = *puVar21 - uVar23;
        puVar21[1] = puVar21[1] - (uint)(uVar9 < uVar23);
        free((void *)(iStack_290 + -4));
      }
    }
LAB_0047d87a:
    ExceptionList = pTStack_174;
    FUN_00aef12b();
    return;
  }
LAB_0047c75c:
  if ((void *)0x1e < param_1[0x182].spare) {
    pTStack_174 = (TypeDescriptor *)*ppvVar17;
    uStack_16c = (void **)((int)pTVar10[0x182].pVFTable + 0x14);
    local_164 = (TypeDescriptor *)0x0;
    local_170 = (TypeDescriptor *)0x0;
    pTStack_178 = (TypeDescriptor *)local_b0;
    ppvStack_17c = (void **)0x47c7a9;
    pTStack_168 = pTStack_174;
    FUN_00498fd0();
  }
  if (param_1[5].spare == (void *)0x0) {
    if (param_1[6].pVFTable == (void *)0x1) {
      pvVar12 = (void *)((float)param_1[0x6d].spare * DAT_00baa380);
    }
    else {
      if (param_1[6].pVFTable != (void *)0x2) goto LAB_0047c7e0;
      pvVar12 = (void *)((float)param_1[0x6d].spare * _DAT_00baa3c8);
    }
  }
  else {
LAB_0047c7e0:
    pvVar12 = (void *)((float)param_1[0x6d].spare * DAT_00baa3a4);
  }
  param_1[0x6d].spare = pvVar12;
LAB_0047c7f8:
  param_1[0x177].spare = param_1[0x70].pVFTable;
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
LAB_0047ab3c:
  uVar9 = -(uint)bVar27 | 1;
LAB_0047ab41:
  if ((uVar9 != 0) ||
     ((*(char *)((int)param_1[0xf].spare + 0x34) != '\0' && (*(char *)&param_1[0x11].spare == '\0'))
     )) {
    local_164 = (TypeDescriptor *)pTVar10[-1].spare;
LAB_0047ab5a:
    pTStack_168 = (TypeDescriptor *)0x47ab62;
    cVar8 = HELPER_0040a5d0_AnimationPredicateC();
    if (cVar8 != '\0') {
      HELPER_AnimationState_Loop();
      *(undefined *)&param_1[0x11].spare = 1;
      pTVar10 = local_8c;
    }
  }
  pvVar12 = pTVar10->pVFTable;
  if ((NAN((float)pvVar12) || NAN((float)DAT_00baad50)) != ((float)pvVar12 == (float)DAT_00baad50))
  {
    pvVar12 = param_1[0x2b].spare;
  }
  pvVar33 = pTVar10[1].pVFTable;
  pvVar2 = pTVar10[1].spare;
  pvVar3 = param_1[0x2d].pVFTable;
  local_98 = (TypeDescriptor *)((int)&local_98->pVFTable + 1);
  param_1[0x6a].spare = pTVar10->spare;
  pvVar4 = local_8c[2].pVFTable;
  pvVar5 = local_8c[2].spare;
  param_1[0x2b].spare = pvVar12;
  local_164 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
  param_1[0x2d].spare = (void *)(((uint)pvVar2 | (uint)param_1[0x2d].spare) & ~(uint)pvVar5);
  pTStack_168 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
  uStack_16c = (void **)0x0;
  local_170 = (TypeDescriptor *)param_1[0x78].pVFTable;
  pTVar10 = local_8c + 4;
  param_1[0x2d].pVFTable = (void *)(((uint)pvVar33 | (uint)pvVar3) & ~(uint)pvVar4);
  pTStack_174 = (TypeDescriptor *)0x47abf9;
  local_8c = pTVar10;
  param_1 = (TypeDescriptor *)__RTDynamicCast();
  if (param_1 == (TypeDescriptor *)0x0) goto LAB_0047ac0c;
  goto LAB_0047aae5;
LAB_0047ac0c:
  param_1 = local_c4;
  **(undefined4 **)(local_b0._4_4_ + 4) = 0;
  local_164 = (TypeDescriptor *)*(void **)local_b0._4_4_;
  while (local_164 != (TypeDescriptor *)0x0) {
    puVar6 = *(undefined4 **)local_164;
    pTStack_168 = (TypeDescriptor *)0x47ac31;
    FUN_00aef15c();
    local_164 = (TypeDescriptor *)puVar6;
  }
  pTStack_168 = (TypeDescriptor *)0x47ac47;
  local_164 = (TypeDescriptor *)local_b0._4_4_;
  FUN_00aef15c();
  if (local_d4 == '\0') {
    if (DAT_00c7de78 == 0) {
      puVar21 = &DAT_00c7f618;
    }
    else {
      puVar21 = (uint *)(DAT_00c7de78 + 0x30);
    }
    if (local_d0 != (void *)0x0) {
      uVar23 = *(uint *)((int)local_d0 + -4);
      uVar9 = *puVar21;
      *puVar21 = *puVar21 - uVar23;
      puVar21[1] = puVar21[1] - (uint)(uVar9 < uVar23);
      local_164 = (TypeDescriptor *)0x47ac93;
      free((uint *)((int)local_d0 + -4));
    }
  }
  goto LAB_0047c7f8;
}

