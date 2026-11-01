/* Local J460 decompiler output.
 * VA: 0x0096d3f0
 * Entry: 0096d3f0
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Ring sampled damage helper
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Ring sampled damage helper */

void __thiscall
HELPER_Laser_DamageSamples(TypeDescriptor *param_1_00,TypeDescriptor *param_1,float *param_2)

{
  code *pcVar1;
  longlong lVar2;
  longlong lVar3;
  longlong lVar4;
  void **ppvVar5;
  TypeDescriptor *pTVar6;
  TypeDescriptor *pTVar7;
  void **ppvVar8;
  char cVar9;
  int iVar10;
  uint uVar11;
  TypeDescriptor **ppTVar12;
  undefined4 uVar13;
  int *piVar14;
  byte bVar15;
  undefined4 extraout_ECX;
  undefined4 *puVar16;
  TypeDescriptor *pTVar17;
  uint uVar18;
  uint uVar19;
  bool bVar20;
  void *pvVar21;
  float fVar22;
  void *pvVar23;
  ulonglong uVar24;
  TypeDescriptor *pTStack_1e8;
  TypeDescriptor *pTStack_1e4;
  TypeDescriptor *pTStack_1e0;
  TypeDescriptor *pTStack_1dc;
  TypeDescriptor *pTStack_1d8;
  TypeDescriptor *pTStack_1d4;
  char *pcStack_1d0;
  TypeDescriptor *pTStack_1cc;
  TypeDescriptor TStack_1c8;
  undefined4 *puStack_1c0;
  TypeDescriptor *pTStack_1bc;
  TypeDescriptor *pTStack_1b8;
  TypeDescriptor *pTStack_1b4;
  void **ppvStack_1b0;
  undefined8 local_1ac;
  void **ppvStack_1a4;
  TypeDescriptor local_1a0;
  TypeDescriptor *pTStack_198;
  TypeDescriptor *pTStack_194;
  undefined4 uStack_188;
  undefined4 uStack_184;
  float local_180;
  float fStack_17c;
  TypeDescriptor TStack_178;
  TypeDescriptor local_170;
  undefined8 local_168;
  undefined4 *local_160;
  void *local_15c;
  TypeDescriptor TStack_158;
  TypeDescriptor *local_150;
  TypeDescriptor local_14c;
  float local_144;
  TypeDescriptor TStack_140;
  TypeDescriptor TStack_138;
  float local_130;
  TypeDescriptor *pTStack_12c;
  void *local_128;
  TypeDescriptor *local_124;
  uint local_120;
  uint local_11c;
  undefined8 uStack_118;
  undefined4 *local_110;
  TypeDescriptor local_10c;
  void *local_104;
  void *local_100;
  void *pvStack_fc;
  uint uStack_f8;
  void *pvStack_f4;
  undefined4 uStack_f0;
  undefined4 uStack_ec;
  uint uStack_e8;
  undefined auStack_e4 [12];
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  void *pvStack_c8;
  undefined8 uStack_c4;
  undefined4 *puStack_bc;
  void *pvStack_b8;
  int iStack_b4;
  int iStack_b0;
  float fStack_ac;
  int iStack_a8;
  int iStack_a4;
  int iStack_a0;
  int iStack_9c;
  undefined8 uStack_98;
  int iStack_90;
  void *pvStack_8c;
  void *pvStack_88;
  void *pvStack_84;
  float fStack_80;
  void *pvStack_7c;
  void *pvStack_78;
  void *pvStack_74;
  void *pvStack_70;
  TypeDescriptor TStack_6c;
  void *pvStack_64;
  undefined auStack_44 [4];
  TypeDescriptor local_40;
  float local_34;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&uStack_188;
  local_124 = param_1;
  TStack_140.spare = DAT_00baa454;
  ppvVar8 = (void **)param_1_00[0x79].pVFTable;
  ppvStack_1a4 = (void **)param_1_00[0x79].pVFTable;
  while (ppvVar5 = ppvVar8, ppvVar5 != (void **)0x0) {
    ppvStack_1a4 = ppvVar5;
    ppvVar8 = (void **)ppvVar5[0xf2];
  }
  pTStack_194 = (TypeDescriptor *)0x0;
  pTStack_198 = &IsaacRepentancePlus::Entity_Player::RTTI_Type_Descriptor;
  local_1a0.spare = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
  local_1a0.pVFTable = (TypeDescriptor *)0x0;
  local_1ac = CONCAT44(0x96d453,(uint)local_1ac);
  TStack_178.spare = param_1_00;
  iVar10 = __RTDynamicCast();
  if ((iVar10 != 0) && (*(int *)(DAT_00c7169c + 0x4b3d8) != *(int *)(DAT_00c7169c + 0x4b3dc))) {
    pTStack_194 = *(TypeDescriptor **)(iVar10 + 0x1618);
    pTStack_198 = (TypeDescriptor *)0x96d478;
    cVar9 = FUN_0090b100();
    if (cVar9 == '\0') {
      if ((DAT_00c71678 == (TypeDescriptor *)0x0) || ((int)DAT_00c71678[0x4cc2].spare < 2)) {
        TStack_140.spare =
             (void *)((float)*(int *)(DAT_00c7169c + 0x2a3e8) * DAT_00baa10c + DAT_00baa120);
      }
      else {
        TStack_140.spare = DAT_00baa454;
      }
    }
  }
  uVar11 = (uint)param_1_00[0x86].spare & DAT_00c34bcc;
  local_168 = CONCAT44(uVar11,(float)local_168);
  if ((((uint)param_1_00[0x85].pVFTable & DAT_00c34bc0 | (uint)param_1_00[0x85].spare & DAT_00c34bc4
       ) != 0) || (((uint)param_1_00[0x86].pVFTable & DAT_00c34bc8 | uVar11) != 0)) {
    if (*(char *)&param_1_00[0x8b].spare == '\0') {
      pTStack_194 = (TypeDescriptor *)0x96d53a;
      iVar10 = HELPER_Entity_TimeoutCrossed();
      if (iVar10 == 0) goto LAB_0096e506;
    }
    pvVar23 = param_1_00[6].pVFTable;
    if (((pvVar23 == (void *)0x1) || (pvVar23 == (void *)0x2)) || (pvVar23 == (void *)0x3)) {
      fVar22 = DAT_00baa784;
      if (pvVar23 == (void *)0x1) {
        fVar22 = DAT_00baa8d0;
      }
      if ((float)param_1_00[0x74].spare < fVar22) goto LAB_0096e506;
    }
    pvVar23 = param_1_00[0x9c].pVFTable;
    if ((float)DAT_00baa454 <= (float)pvVar23) {
      fVar22 = (float)pvVar23 * DAT_00baa81c + DAT_00baa8d0;
      local_180 = DAT_00baa950;
      if (DAT_00baa950 <= fVar22) {
        local_180 = fVar22;
      }
    }
    else {
      local_180 = (float)pvVar23 * DAT_00baa950;
      if (local_180 <= DAT_00baa8d0) {
        local_180 = DAT_00baa8d0;
      }
    }
    local_15c = (void *)(local_180 / DAT_00baa950);
    pTStack_194 = (TypeDescriptor *)0x3f800000;
    TStack_138.spare = (void *)(*param_2 * DAT_00baa81c + (float)local_124->pVFTable);
    local_130 = param_2[1] * DAT_00baa81c + (float)local_124->spare;
    ppvStack_1a4 = (void **)param_1_00[0x85].spare;
    local_1a0.pVFTable = param_1_00[0x86].pVFTable;
    local_1a0.spare = param_1_00[0x86].spare;
    ppvStack_1b0 = &TStack_138.spare;
    local_1ac = CONCAT44(param_1_00[0x85].pVFTable,local_180);
    pTStack_1b4 = (TypeDescriptor *)0x96d62b;
    pTStack_198 = param_1_00;
    HELPER_ExplosionEffects();
    pTStack_1cc = (TypeDescriptor *)param_1_00[0x85].pVFTable;
    TStack_1c8.pVFTable = param_1_00[0x85].spare;
    TStack_1c8.spare = param_1_00[0x86].pVFTable;
    puStack_1c0 = (undefined4 *)param_1_00[0x86].spare;
    pTStack_1b4 = (TypeDescriptor *)0x0;
    pTStack_1b8 = (TypeDescriptor *)0x0;
    pTStack_1bc = (TypeDescriptor *)0x4;
    pTStack_1dc = (TypeDescriptor *)
                  ((float)param_1_00[0x71].pVFTable + (float)param_1_00[0x71].pVFTable +
                  DAT_00baa81c);
    pTStack_1d4 = (TypeDescriptor *)0x1;
    pTStack_1e0 = (TypeDescriptor *)&TStack_158.spare;
    pTStack_1d8 = (TypeDescriptor *)local_1a0.pVFTable;
    pTStack_1e4 = (TypeDescriptor *)0x96d67e;
    pcStack_1d0 = (char *)param_1_00;
    HELPER_ExplosionDamage();
    if ((((uint)param_1_00[0x85].pVFTable & DAT_00c34bd0 |
         (uint)param_1_00[0x85].spare & DAT_00c34bd4) != 0) ||
       (((uint)param_1_00[0x86].pVFTable & DAT_00c34bd8 |
        (uint)param_1_00[0x86].spare & DAT_00c34bdc) != 0)) {
      pTStack_1b4 = (TypeDescriptor *)0x96d6bf;
      TStack_140.pVFTable = (void *)FUN_006eef60();
      pTStack_1b4 = &TStack_140;
      pTStack_1b8 = &TStack_178;
      TStack_158.pVFTable = DAT_00c71678;
      pTStack_1bc = (TypeDescriptor *)0x0;
      puStack_1c0 = &DAT_00c7b640;
      TStack_1c8.spare = &TStack_158.spare;
      TStack_178.pVFTable = (void *)0x0;
      TStack_1c8.pVFTable = &TStack_138.spare;
      TStack_138.spare = (void *)0x7;
      pTStack_1cc = &TStack_138;
      TStack_138.pVFTable = (void *)0x3e8;
      pcStack_1d0 = (char *)0x96d716;
      FUN_008646e0();
      pTVar17 = local_150;
      if ((int)DAT_00c71678[0x4cc2].spare < 2) {
LAB_0096d990:
        pTStack_1b4 = pTStack_194;
      }
      else {
        pTStack_1b8 = (TypeDescriptor *)DAT_00c71678[0x4cc4].pVFTable;
        pcStack_1d0 = (char *)0x96d73b;
        pvVar23 = (void *)FUN_006eef60();
        pTVar7 = pTStack_194;
        pTVar6 = pTStack_1b8;
        uStack_118 = DAT_00b1f66c;
        local_110 = DAT_00b1f674;
        pTStack_1bc = (TypeDescriptor *)pvVar23;
        if ((TypeDescriptor *)TStack_158.spare != (TypeDescriptor *)0x5) goto LAB_0096d990;
        if ((TypeDescriptor *)0x12c < pTVar17) {
          if (pTVar17 == (TypeDescriptor *)0x15e) {
            do {
              pTStack_1b4 = pTStack_194;
              if (pTStack_194 != (TypeDescriptor *)0x0) {
                pTStack_1d4 = (TypeDescriptor *)0x96d971;
                pcStack_1d0 = (char *)pTStack_194;
                cVar9 = (**(code **)((int)pTStack_1b8->pVFTable + 0x2c))();
                if (cVar9 == '\0') goto LAB_0096d998;
              }
              pcStack_1d0 = (char *)0x0;
              pTStack_1d4 = (TypeDescriptor *)0x96d988;
              pTStack_194 = (TypeDescriptor *)FUN_00733ca0();
            } while( true );
          }
          goto LAB_0096d990;
        }
        bVar15 = (byte)DAT_00b1f674;
        if (pTVar17 == (TypeDescriptor *)0x12c) {
          do {
            pTStack_1b4 = pTStack_194;
            if (pTStack_194 != (TypeDescriptor *)0x0) {
              pTStack_1d4 = (TypeDescriptor *)0x96d8bf;
              pcStack_1d0 = (char *)pTStack_194;
              cVar9 = (**(code **)((int)pTStack_1b8->pVFTable + 0x24))();
              if (cVar9 == '\0') goto LAB_0096d998;
            }
            if (pvVar23 == (void *)0x0) {
              pcStack_1d0 = "RNG Seed is zero!\n";
              pTStack_1d4 = (TypeDescriptor *)0x10;
              pTStack_1d8 = (TypeDescriptor *)0x96d8d7;
              FUN_00a112c0();
              pcVar1 = (code *)swi(3);
              (*pcVar1)();
              return;
            }
            uVar11 = (uint)pvVar23 >> ((byte)uStack_118 & 0x1f) ^ (uint)pvVar23;
            uVar11 = uVar11 << ((byte)((ulonglong)uStack_118 >> 0x20) & 0x1f) ^ uVar11;
            pcStack_1d0 = (char *)0x1;
            pTStack_1d4 = (TypeDescriptor *)0xa;
            pTStack_1d8 = (TypeDescriptor *)0xa;
            pvVar23 = (void *)(uVar11 >> (bVar15 & 0x1f) ^ uVar11);
            pTStack_1dc = (TypeDescriptor *)0x19;
            pTStack_1e4 = (TypeDescriptor *)0x96d90d;
            pTStack_1e0 = (TypeDescriptor *)pvVar23;
            pTStack_1dc = (TypeDescriptor *)FUN_00734180();
            pcStack_1d0 = (char *)0x0;
            pTStack_1d4 = (TypeDescriptor *)0x1;
            pTStack_1d8 = (TypeDescriptor *)0x1;
            pTStack_1e0 = (TypeDescriptor *)&pvStack_c8;
            uStack_c4 = DAT_00b1f66c;
            puStack_bc = DAT_00b1f674;
            pTStack_1e4 = (TypeDescriptor *)0x96d946;
            pvStack_c8 = pvVar23;
            pTStack_194 = (TypeDescriptor *)FUN_00865340();
          } while( true );
        }
        if (pTVar17 == (TypeDescriptor *)0x46) {
          local_168 = CONCAT44(local_168._4_4_,(uint)pTStack_194 >> 0xb);
          do {
            pTStack_1b4 = pTStack_194;
            if (pTStack_194 != (TypeDescriptor *)0x0) {
              pcStack_1d0 = (char *)0x0;
              pcVar1 = *(code **)((int)pTStack_1b8->pVFTable + 0x28);
              pTStack_1d8 = (TypeDescriptor *)0x96d82f;
              pTStack_1d4 = pTStack_194;
              pcStack_1d0 = (char *)FUN_00734a80();
              pTStack_1d4 = (TypeDescriptor *)0x96d836;
              cVar9 = (*pcVar1)();
              pvVar23 = pTStack_1bc;
              if (cVar9 == '\0') goto LAB_0096d998;
            }
            if (pvVar23 == (void *)0x0) {
              pcStack_1d0 = "RNG Seed is zero!\n";
              pTStack_1d4 = (TypeDescriptor *)0x10;
              pTStack_1d8 = (TypeDescriptor *)0x96d858;
              FUN_00a112c0();
              pcVar1 = (code *)swi(3);
              (*pcVar1)();
              return;
            }
            uVar11 = (uint)pvVar23 >> ((byte)uStack_118 & 0x1f) ^ (uint)pvVar23;
            uVar11 = uVar11 << ((byte)((ulonglong)uStack_118 >> 0x20) & 0x1f) ^ uVar11;
            pvVar23 = (void *)(uVar11 >> (bVar15 & 0x1f) ^ uVar11);
            pTStack_1d4 = (TypeDescriptor *)0x96d890;
            pcStack_1d0 = (char *)pvVar23;
            pTStack_1bc = (TypeDescriptor *)pvVar23;
            uVar11 = FUN_00734900();
            pTStack_194 = (TypeDescriptor *)(uVar11 | ((uint)(float)local_168 & 1) << 0xb);
          } while( true );
        }
        if (pTVar17 != (TypeDescriptor *)0x64) goto LAB_0096d990;
        pTStack_1b4 = pTStack_194;
        if (pTStack_194 == (TypeDescriptor *)0x19) {
LAB_0096d7d2:
          bVar20 = false;
        }
        else {
          pcStack_1d0 = (char *)&local_168;
          local_168 = CONCAT44(local_168._4_4_,pTStack_194);
          pTStack_1d4 = &local_10c;
          pTStack_1d8 = (TypeDescriptor *)0x96d7b7;
          FUN_004288a0();
          if (((*(char *)((int)local_104 + 0xd) == '\0') &&
              (*(int *)((int)local_104 + 0x10) <= (int)pTVar7)) && (local_104 != pTVar6[4].pVFTable)
             ) goto LAB_0096d7d2;
          bVar20 = true;
        }
        if ((pTVar7 == (TypeDescriptor *)0x0) || (bVar20)) {
          pcStack_1d0 = (char *)0x0;
          pTStack_1d4 = (TypeDescriptor *)0x96d7ee;
          pTStack_1b4 = (TypeDescriptor *)(**(code **)((int)pTVar6->pVFTable + 0x84))();
          pTStack_194 = pTStack_1b4;
        }
      }
LAB_0096d998:
      pcStack_1d0 = (char *)0x0;
      pTStack_1d4 = (TypeDescriptor *)TStack_158.spare;
      pTStack_1d8 = (TypeDescriptor *)0x96d9ad;
      pTStack_1b8 = (TypeDescriptor *)FUN_006f0090();
      lVar2 = ZEXT48(pTStack_1bc) << 0x20;
      if (pTStack_1b8 != (TypeDescriptor *)0x0) {
        pcStack_1d0 = (char *)0x96d9be;
        uVar24 = FUN_00a68490();
        pTVar6 = pTStack_1b8;
        pTStack_1bc = (TypeDescriptor *)(uVar24 >> 0x20);
        lVar2 = (uVar24 & 0xffffffff) * 0x431bde82;
        ppvStack_1a4 = (void **)((ulonglong)lVar2 >> 0x20);
        local_1a0.pVFTable = (void *)(ZEXT48(pTStack_1bc) * 0xd7b634db >> 0x20);
        uVar24 = ZEXT48(pTStack_1bc) * 0xd7b634db + ((uVar24 & 0xffffffff) * 0xd7b634db >> 0x20);
        uVar18 = (uint)(uVar24 >> 0x20);
        lVar2 = lVar2 + (uVar24 & 0xffffffff);
        uStack_184 = (undefined4)lVar2;
        uVar11 = (uint)((ulonglong)lVar2 >> 0x20);
        lVar2 = ZEXT48(pTStack_1bc) * 0x431bde82 +
                (ulonglong)CONCAT14(CARRY4(uVar18,uVar11),uVar18 + uVar11);
        uVar11 = (uint)((ulonglong)lVar2 >> 0x20);
        pTVar17 = pTStack_1b8 + 0x79;
        local_1ac = CONCAT44(uVar11 >> 0x12,(uint)lVar2 >> 0x12 | uVar11 * 0x4000);
        pvVar23 = pTVar17->pVFTable;
        pTStack_1b8[6].spare = (void *)0x0;
        pTStack_1b8[7].pVFTable = (void *)0x0;
        if (pvVar23 != (void *)0x0) {
          pcStack_1d0 = (char *)((int)&local_168 + 4);
          local_168 = CONCAT44(pTVar17,(float)local_168);
          pTStack_1d4 = (TypeDescriptor *)0x96da6d;
          FUN_004cf210();
        }
        pcStack_1d0 = (char *)local_15c;
        pvVar23 = pTVar6->pVFTable;
        pTStack_1d4 = pTStack_1b4;
        pTStack_1d8 = local_150;
        pTVar17->pVFTable = (void *)0x0;
        pTVar6[0x67].spare = local_170.pVFTable;
        pTVar6[0x68].pVFTable = local_170.spare;
        pTVar6[0x6c].pVFTable = DAT_00c7b640;
        pTStack_1dc = (TypeDescriptor *)TStack_158.spare;
        pTVar6[0x6c].spare = DAT_00c7b644;
        pTStack_1e0 = (TypeDescriptor *)0x96dacd;
        (**(code **)((int)pvVar23 + 4))();
        pTVar17 = (TypeDescriptor *)TStack_178.spare;
        pcStack_1d0 = (char *)pTVar6;
        pvVar23 = *(void **)((int)((TypeDescriptor *)((int)TStack_178.spare + 0x18300))->pVFTable +
                            0x1214);
        *(int *)((int)((TypeDescriptor *)((int)TStack_178.spare + 0x18300))->pVFTable + 0x1214) =
             (int)pvVar23 + 1;
        pTVar6[4].pVFTable = pvVar23;
        pTStack_1d4 = (TypeDescriptor *)0x96daf5;
        FUN_00418500();
        pcStack_1d0 = (char *)pTVar6;
        pTStack_1d4 = (TypeDescriptor *)0x96dafb;
        cVar9 = FUN_007078f0();
        if (cVar9 != '\0') {
          pTStack_1d4 = pTVar6;
          pTStack_1d8 = (TypeDescriptor *)0x96db06;
          FUN_007079c0();
        }
        if ((*(char *)((int)&pTVar6[0x2e].pVFTable + 2) != '\0') &&
           (pTVar17[0xceeb].pVFTable != pTVar17[0xceeb].spare)) {
          local_128 = pTVar6[5].spare;
          pTStack_12c = (TypeDescriptor *)pTVar6[5].pVFTable;
          pcStack_1d0 = (char *)&pTStack_12c;
          pTStack_1d4 = &TStack_158;
          pTStack_1d8 = (TypeDescriptor *)0x96db53;
          FUN_009e24a0();
          pTVar17 = (TypeDescriptor *)pTVar17[0xcef0].pVFTable;
          if ((TypeDescriptor *)TStack_158.pVFTable == pTVar17) {
            local_124 = pTStack_12c;
            pcStack_1d0 = (char *)&local_124;
            pTStack_1d4 = &local_14c;
            local_120 = 0xffffffff;
            pTStack_1d8 = (TypeDescriptor *)0x96db8b;
            ppTVar12 = (TypeDescriptor **)FUN_009e24a0();
            TStack_158.pVFTable = *ppTVar12;
            if ((TypeDescriptor *)TStack_158.pVFTable == pTVar17) goto LAB_0096dc14;
          }
          uVar11 = 0;
          pTVar17 = DAT_00c71678 + 0x3755;
          if ((int)DAT_00c71678[0x3755].spare - (int)pTVar17->pVFTable >> 2 != 0) {
            do {
              if ((int)pTVar17->spare - (int)pTVar17->pVFTable >> 2 == 0) {
                pcStack_1d0 = "PlayerManager::GetPlayer() : There are no players! \n";
                pTStack_1d4 = (TypeDescriptor *)0x10;
                pTStack_1d8 = (TypeDescriptor *)0x96dbca;
                FUN_00a112c0();
              }
              pcStack_1d0 = (char *)&DAT_00c7b640;
              pTStack_1d4 = &local_170;
              pTStack_1d8 = pTStack_1b8;
              pTStack_1dc = (TypeDescriptor *)0x6;
              pTStack_1e0 = (TypeDescriptor *)0x96dbfb;
              FUN_009e0680();
              uVar11 = uVar11 + 1;
              pTVar17 = DAT_00c71678 + 0x3755;
            } while (uVar11 < (uint)((int)DAT_00c71678[0x3755].spare - (int)pTVar17->pVFTable >> 2))
            ;
          }
        }
LAB_0096dc14:
        pcStack_1d0 = (char *)0x96dc19;
        uVar24 = FUN_00a68490();
        uVar11 = (uint)(uVar24 >> 0x20);
        lVar3 = (uVar24 & 0xffffffff) * 0x431bde82;
        ppvStack_1a4 = (void **)((ulonglong)lVar3 >> 0x20);
        lVar4 = (ulonglong)uVar11 * 0xd7b634db;
        local_1a0.pVFTable = (void *)((ulonglong)lVar4 >> 0x20);
        lVar2 = (ulonglong)uVar11 * 0x431bde82;
        uVar24 = lVar4 + ((uVar24 & 0xffffffff) * 0xd7b634db >> 0x20);
        uVar18 = (uint)(uVar24 >> 0x20);
        lVar3 = lVar3 + (uVar24 & 0xffffffff);
        uStack_184 = (undefined4)lVar3;
        uVar11 = (uint)((ulonglong)lVar3 >> 0x20);
        lVar3 = lVar2 + (ulonglong)CONCAT14(CARRY4(uVar18,uVar11),uVar18 + uVar11);
        uVar19 = (uint)((ulonglong)lVar3 >> 0x20);
        uVar11 = (uint)lVar3 >> 0x12 | uVar19 * 0x4000;
        uVar18 = uVar11 - (uint)local_1ac;
        bVar20 = CARRY4(DAT_00c7b630,uVar18);
        DAT_00c7b630 = DAT_00c7b630 + uVar18;
        DAT_00c7b634 = DAT_00c7b634 +
                       (((uVar19 >> 0x12) - (int)local_1ac._4_4_) - (uint)(uVar11 < (uint)local_1ac)
                       ) + (uint)bVar20;
      }
      pTStack_1bc = (TypeDescriptor *)((ulonglong)lVar2 >> 0x20);
      pcStack_1d0 = (char *)0x0;
      pTStack_1d4 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
      pTStack_1d8 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      pTStack_1dc = (TypeDescriptor *)0x0;
      pTStack_1e4 = (TypeDescriptor *)0x96dcba;
      pTStack_1e0 = pTStack_1b8;
      piVar14 = (int *)__RTDynamicCast();
      pcStack_1d0 = "j\x01j";
      iVar10 = FUN_006eef60();
      pcStack_1d0 = (char *)0x1;
      pTStack_1d4 = (TypeDescriptor *)0x0;
      pTStack_1d8 = (TypeDescriptor *)0xff;
      pTStack_1e0 = (TypeDescriptor *)&pvStack_f4;
      pTStack_1dc = (TypeDescriptor *)0xffffffff;
      uStack_d4 = 0;
      uStack_d0 = 0x3eaaaaab;
      uStack_cc = 0;
      fVar22 = ((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4
               + (float)DAT_00baa454) * (float)pTStack_198;
      piVar14[0x39] = (int)fVar22;
      piVar14[0x3a] = (int)fVar22;
      _auStack_e4 = ZEXT816(0);
      pvStack_f4 = _DAT_00bac0e0;
      uStack_f0 = _UNK_00bac0e4;
      uStack_ec = _UNK_00bac0e8;
      uStack_e8 = _UNK_00bac0ec;
      pTStack_1e4 = (TypeDescriptor *)0x96dd57;
      (**(code **)(*piVar14 + 0x3c))();
      pTStack_1e4 = (TypeDescriptor *)0x96dd5e;
      (**(code **)(*piVar14 + 0xc))();
      pTStack_1e4 = (TypeDescriptor *)0x96dd63;
      local_1a0.pVFTable = (void *)FUN_006eef60();
      pTStack_1e4 = &local_1a0;
      pTStack_1e8 = &TStack_1c8;
      pTStack_1b8 = DAT_00c71678;
      TStack_1c8.pVFTable = (void *)0x4;
      uStack_188 = 2;
      puStack_1c0 = (undefined4 *)0x3e8;
      FUN_008646e0(&puStack_1c0,&uStack_188,&uStack_184,&DAT_00c7b640,0);
      ppvVar8 = ppvStack_1a4;
      if ((int)DAT_00c71678[0x4cc2].spare < 2) {
LAB_0096e028:
        pTStack_1e8 = pTStack_1e4;
      }
      else {
        pTStack_1d8 = (TypeDescriptor *)DAT_00c71678[0x4cc4].pVFTable;
        uVar11 = FUN_006eef60();
        pTVar6 = pTStack_1d8;
        pTVar17 = pTStack_1e4;
        local_168 = DAT_00b1f66c;
        puStack_1c0 = DAT_00b1f674;
        local_160 = DAT_00b1f674;
        if (pTStack_1dc != (TypeDescriptor *)0x5) goto LAB_0096e028;
        if (ppvVar8 < (void **)0x12d) {
          if (ppvVar8 == (void **)0x12c) {
            while ((pTStack_1e8 = pTStack_1e4, pTStack_1e4 == (TypeDescriptor *)0x0 ||
                   (cVar9 = (**(code **)((int)pTStack_1d8->pVFTable + 0x24))(pTStack_1e4),
                   cVar9 != '\0'))) {
              if (uVar11 == 0) {
                FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                pcVar1 = (code *)swi(3);
                (*pcVar1)();
                return;
              }
              uVar11 = uVar11 >> ((byte)local_168 & 0x1f) ^ uVar11;
              uVar11 = uVar11 << ((byte)((ulonglong)local_168 >> 0x20) & 0x1f) ^ uVar11;
              uVar11 = uVar11 >> ((byte)puStack_1c0 & 0x1f) ^ uVar11;
              uVar13 = FUN_00734180(uVar11,0x19,10,10,1);
              auStack_e4._8_4_ = DAT_00b1f674;
              auStack_e4._0_8_ = DAT_00b1f66c;
              uStack_e8 = uVar11;
              pTStack_1e4 = (TypeDescriptor *)FUN_00865340(&uStack_e8,uVar13,1,1,0);
            }
          }
          else {
            if (ppvVar8 == (void **)0x46) {
              pTStack_1b8 = (TypeDescriptor *)((uint)pTStack_1e4 >> 0xb);
              uVar18 = uVar11;
              do {
                pTStack_1e8 = pTStack_1e4;
                if (pTStack_1e4 != (TypeDescriptor *)0x0) {
                  pcVar1 = *(code **)((int)pTStack_1d8->pVFTable + 0x28);
                  uVar13 = FUN_00734a80(pTStack_1e4,0);
                  uVar11 = uVar18;
                  cVar9 = (*pcVar1)(uVar13);
                  if (cVar9 == '\0') goto LAB_0096e030;
                }
                if (uVar11 == 0) {
                  FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                  pcVar1 = (code *)swi(3);
                  (*pcVar1)();
                  return;
                }
                uVar11 = uVar11 >> ((byte)local_168 & 0x1f) ^ uVar11;
                uVar11 = uVar11 << ((byte)((ulonglong)local_168 >> 0x20) & 0x1f) ^ uVar11;
                uVar11 = uVar11 >> ((byte)puStack_1c0 & 0x1f) ^ uVar11;
                uVar18 = uVar11;
                uVar19 = FUN_00734900(uVar11);
                pTStack_1e4 = (TypeDescriptor *)(uVar19 | ((uint)pTStack_1b8 & 1) << 0xb);
              } while( true );
            }
            if (ppvVar8 != (void **)0x64) goto LAB_0096e028;
            pTStack_1e8 = pTStack_1e4;
            if (pTStack_1e4 == (TypeDescriptor *)0x19) {
LAB_0096de6a:
              bVar20 = false;
            }
            else {
              pTStack_1b8 = pTStack_1e4;
              FUN_004288a0(&local_130,&pTStack_1b8);
              if (((*(char *)((int)local_128 + 0xd) == '\0') &&
                  (*(int *)((int)local_128 + 0x10) <= (int)pTVar17)) &&
                 (local_128 != pTVar6[4].pVFTable)) goto LAB_0096de6a;
              bVar20 = true;
            }
            if ((pTVar17 == (TypeDescriptor *)0x0) || (bVar20)) {
              pTStack_1e8 = (TypeDescriptor *)(**(code **)((int)pTVar6->pVFTable + 0x84))(0);
              pTStack_1e4 = pTStack_1e8;
            }
          }
        }
        else {
          if (ppvVar8 != (void **)0x15e) goto LAB_0096e028;
          while ((pTStack_1e8 = pTStack_1e4, pTStack_1e4 == (TypeDescriptor *)0x0 ||
                 (cVar9 = (**(code **)((int)pTStack_1d8->pVFTable + 0x2c))(pTStack_1e4),
                 cVar9 != '\0'))) {
            pTStack_1e4 = (TypeDescriptor *)FUN_00733ca0(0);
          }
        }
      }
LAB_0096e030:
      pcStack_1d0 = (char *)FUN_006f0090(pTStack_1dc,0);
      lVar2 = CONCAT44(pTStack_198,pTStack_194);
      if ((TypeDescriptor *)pcStack_1d0 != (TypeDescriptor *)0x0) {
        uVar24 = FUN_00a68490();
        pTVar6 = (TypeDescriptor *)pcStack_1d0;
        uVar18 = (uint)(uVar24 >> 0x20);
        lVar2 = (uVar24 & 0xffffffff) * 0x431bde82;
        pTStack_1cc = (TypeDescriptor *)((ulonglong)lVar2 >> 0x20);
        lVar3 = (ulonglong)uVar18 * 0xd7b634db;
        pTStack_1d8 = (TypeDescriptor *)((ulonglong)lVar3 >> 0x20);
        uVar24 = lVar3 + ((uVar24 & 0xffffffff) * 0xd7b634db >> 0x20);
        uVar19 = (uint)(uVar24 >> 0x20);
        lVar2 = lVar2 + (uVar24 & 0xffffffff);
        pTStack_1b4 = (TypeDescriptor *)lVar2;
        uVar11 = (uint)((ulonglong)lVar2 >> 0x20);
        lVar2 = (ulonglong)uVar18 * 0x431bde82 +
                (ulonglong)CONCAT14(CARRY4(uVar19,uVar11),uVar19 + uVar11);
        ((TypeDescriptor *)((int)pcStack_1d0 + 0x30))->spare = (void *)0x0;
        uVar11 = (uint)((ulonglong)lVar2 >> 0x20);
        ((TypeDescriptor *)((int)pcStack_1d0 + 0x38))->pVFTable = (void *)0x0;
        puStack_1c0 = (undefined4 *)((uint)lVar2 >> 0x12 | uVar11 * 0x4000);
        uVar11 = uVar11 >> 0x12;
        pTVar17 = (TypeDescriptor *)((int)pcStack_1d0 + 0x3c8);
        if (pTVar17->pVFTable != (void *)0x0) {
          pTStack_1cc = pTVar17;
          FUN_004cf210(&pTStack_1cc);
        }
        pvVar23 = pTVar6->pVFTable;
        pTVar17->pVFTable = (void *)0x0;
        pTVar6[0x67].spare = local_1a0.pVFTable;
        pTVar6[0x68].pVFTable = local_1a0.spare;
        pTVar6[0x6c].pVFTable = DAT_00c7b640;
        pTVar6[0x6c].spare = DAT_00c7b644;
        (**(code **)((int)pvVar23 + 4))(pTStack_1dc,ppvStack_1a4,pTStack_1e8,pTStack_1bc);
        pTVar17 = pTStack_1d4;
        pvVar23 = *(void **)((int)pTStack_1d4[0x3060].pVFTable + 0x1214);
        *(int *)((int)pTStack_1d4[0x3060].pVFTable + 0x1214) = (int)pvVar23 + 1;
        pTVar6[4].pVFTable = pvVar23;
        FUN_00418500(pTVar6);
        cVar9 = FUN_007078f0(pTVar6);
        if (cVar9 != '\0') {
          FUN_007079c0(pTVar6,extraout_ECX);
        }
        if ((*(char *)((int)&pTVar6[0x2e].pVFTable + 2) != '\0') &&
           (pTVar17[0xceeb].pVFTable != pTVar17[0xceeb].spare)) {
          local_170.pVFTable = pTVar6[5].spare;
          TStack_178.spare = pTVar6[5].pVFTable;
          FUN_009e24a0(&pTStack_1d4,&TStack_178.spare);
          if (pTStack_1d4 == (TypeDescriptor *)pTVar17[0xcef0].pVFTable) {
            pTStack_1b4 = (TypeDescriptor *)pTVar6[5].pVFTable;
            ppvStack_1b0 = (void **)0xffffffff;
            ppTVar12 = (TypeDescriptor **)FUN_009e24a0(&pTStack_1e8,&pTStack_1b4);
            pTStack_1d4 = *ppTVar12;
            if (pTStack_1d4 == (TypeDescriptor *)pTVar17[0xcef0].pVFTable) goto LAB_0096e2b2;
          }
          pTVar17 = DAT_00c71678 + 0x3755;
          pTStack_1d8 = (TypeDescriptor *)0x0;
          if ((int)DAT_00c71678[0x3755].spare - (int)pTVar17->pVFTable >> 2 != 0) {
            do {
              if ((int)pTVar17->spare - (int)pTVar17->pVFTable >> 2 == 0) {
                FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
              }
              FUN_009e0680(6,pTVar6,&local_1a0,&DAT_00c7b640);
              pTVar17 = DAT_00c71678 + 0x3755;
              pTStack_1d8 = (TypeDescriptor *)((int)&pTStack_1d8->pVFTable + 1);
            } while (pTStack_1d8 <
                     (TypeDescriptor *)
                     ((int)DAT_00c71678[0x3755].spare - (int)pTVar17->pVFTable >> 2));
          }
        }
LAB_0096e2b2:
        uVar24 = FUN_00a68490();
        pTStack_1d4 = (TypeDescriptor *)(uVar24 >> 0x20);
        lVar3 = (uVar24 & 0xffffffff) * 0x431bde82;
        pTStack_1b8 = (TypeDescriptor *)((ulonglong)lVar3 >> 0x20);
        pTStack_1cc = (TypeDescriptor *)(ZEXT48(pTStack_1d4) * 0xd7b634db >> 0x20);
        lVar2 = ZEXT48(pTStack_1d4) * 0x431bde82;
        uVar24 = ZEXT48(pTStack_1d4) * 0xd7b634db + ((uVar24 & 0xffffffff) * 0xd7b634db >> 0x20);
        uVar19 = (uint)(uVar24 >> 0x20);
        lVar3 = lVar3 + (uVar24 & 0xffffffff);
        pTStack_1b4 = (TypeDescriptor *)lVar3;
        uVar18 = (uint)((ulonglong)lVar3 >> 0x20);
        lVar3 = lVar2 + (ulonglong)CONCAT14(CARRY4(uVar19,uVar18),uVar19 + uVar18);
        uVar19 = (uint)((ulonglong)lVar3 >> 0x20);
        puVar16 = (undefined4 *)((uint)lVar3 >> 0x12 | uVar19 * 0x4000);
        uVar18 = (int)puVar16 - (int)puStack_1c0;
        bVar20 = CARRY4(DAT_00c7b630,uVar18);
        DAT_00c7b630 = DAT_00c7b630 + uVar18;
        DAT_00c7b634 = DAT_00c7b634 + (((uVar19 >> 0x12) - uVar11) - (uint)(puVar16 < puStack_1c0))
                       + (uint)bVar20;
      }
      pTVar17 = (TypeDescriptor *)pcStack_1d0;
      pTStack_198 = (TypeDescriptor *)((ulonglong)lVar2 >> 0x20);
      pTStack_194 = (TypeDescriptor *)lVar2;
      FUN_00682ed0();
      local_124 = (TypeDescriptor *)0x3ca3d70a;
      local_120 = 0x3f666666;
      local_11c = 0x3ca3d70a;
      uStack_118 = CONCAT44(uStack_118._4_4_,local_1ac._4_4_);
      local_104 = (void *)0x3d20a0a1;
      local_100 = (void *)0x3ec8c8ca;
      pvStack_fc = (void *)0x0;
      (**(code **)((int)pTVar17->pVFTable + 0x3c))(&local_124,0xffffffff,0xff,0,1);
      pvVar23 = pTVar17->pVFTable;
      pvVar21 = (void *)((float)pTStack_1dc * DAT_00baa280);
      pTVar17[0x6b].pVFTable = (void *)0xc0a00000;
      pTVar17[0x1c].spare = pTStack_1dc;
      pTVar17[0x1d].pVFTable = pvVar21;
      (**(code **)((int)pvVar23 + 0xc))();
      param_1_00 = pTStack_194;
    }
    pTStack_1b4 = (TypeDescriptor *)0x96e3f6;
    pTStack_1b8 = (TypeDescriptor *)FUN_006eef60();
    pTStack_1b4 = (TypeDescriptor *)0x0;
    pTStack_1bc = (TypeDescriptor *)0x0;
    puStack_1c0 = (undefined4 *)0x0;
    TStack_1c8.spare = &DAT_00c7b640;
    TStack_1c8.pVFTable = &TStack_158.spare;
    pTStack_1cc = (TypeDescriptor *)0x1;
    pcStack_1d0 = (char *)0x3e8;
    pTStack_1d4 = (TypeDescriptor *)0x96e419;
    TStack_1c8.spare = (void *)HELPER_Entity_CreateDispatcher();
    pTStack_1b4 = (TypeDescriptor *)0x0;
    pTStack_1b8 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
    pTStack_1bc = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    puStack_1c0 = (undefined4 *)0x0;
    TStack_1c8.pVFTable = (void *)0x96e42d;
    piVar14 = (int *)__RTDynamicCast();
    if ((NAN(fStack_17c) || NAN((float)DAT_00baa454)) == (fStack_17c == (float)DAT_00baa454)) {
      piVar14[0x3a] = (int)(fStack_17c * (float)piVar14[0x3a]);
      piVar14[0x39] = (int)(fStack_17c * (float)piVar14[0x39]);
    }
    pvStack_8c = param_1_00[0x1e].pVFTable;
    pvStack_88 = param_1_00[0x1e].spare;
    pvStack_84 = param_1_00[0x1f].pVFTable;
    pvStack_64 = param_1_00[0x23].pVFTable;
    TStack_1c8.spare = &pvStack_8c;
    pvStack_7c = param_1_00[0x20].pVFTable;
    pvStack_78 = param_1_00[0x20].spare;
    pvStack_74 = param_1_00[0x21].pVFTable;
    pvStack_70 = param_1_00[0x21].spare;
    pTStack_1b4 = (TypeDescriptor *)0x1;
    pTStack_1b8 = (TypeDescriptor *)0x0;
    fStack_80 = (float)param_1_00[0x1f].spare * (float)local_15c;
    pTStack_1bc = (TypeDescriptor *)0xff;
    TStack_6c = param_1_00[0x22];
    puStack_1c0 = (undefined4 *)0xffffffff;
    TStack_1c8.pVFTable = (void *)0x96e4cf;
    (**(code **)(*piVar14 + 0x3c))();
    uVar11 = DAT_00c34bcc;
    uVar19 = ~DAT_00c34bc8;
    uVar18 = ~DAT_00c34bc4;
    param_1_00[0x87].pVFTable = (void *)((uint)param_1_00[0x87].pVFTable & ~DAT_00c34bc0);
    param_1_00[0x87].spare = (void *)((uint)param_1_00[0x87].spare & uVar18);
    param_1_00[0x88].pVFTable = (void *)((uint)param_1_00[0x88].pVFTable & uVar19);
    param_1_00[0x88].spare = (void *)((uint)param_1_00[0x88].spare & ~uVar11);
  }
LAB_0096e506:
  TStack_178.spare = (void *)(DAT_00c34858 | DAT_00c34888);
  pvVar21 = param_1_00[0x86].pVFTable;
  pvVar23 = param_1_00[0x86].spare;
  local_160 = (undefined4 *)(DAT_00c3485c | (uint)DAT_00c3488c);
  if ((((DAT_00c34850 | DAT_00c34880) & (uint)param_1_00[0x85].pVFTable |
       (DAT_00c34854 | (uint)DAT_00c34884) & (uint)param_1_00[0x85].spare) != 0) ||
     (((uint)pvVar21 & (uint)TStack_178.spare | (uint)pvVar23 & (uint)local_160) != 0)) {
    local_15c = pvVar23;
    if (*(char *)&param_1_00[0x8b].spare == '\0') {
      pTStack_194 = (TypeDescriptor *)0x96e58a;
      iVar10 = HELPER_Entity_TimeoutCrossed();
      pvVar23 = local_15c;
      if (iVar10 == 0) goto LAB_0096ead2;
    }
    ppvStack_1a4 = &local_14c.spare;
    pTStack_194 = (TypeDescriptor *)0x3f800000;
    pTStack_198 = (TypeDescriptor *)0x3f800000;
    local_1a0.spare = (TypeDescriptor *)0x3f800000;
    local_1a0.pVFTable = local_124;
    local_1ac = CONCAT44(0x96e5ce,(uint)local_1ac);
    HELPER_RoomClampedPoint();
    pTStack_194 = (TypeDescriptor *)0x96e5d3;
    iVar10 = FUN_006eef60();
    fVar22 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa704;
    TStack_178.spare = (void *)(fVar22 + fVar22);
    pTStack_194 = (TypeDescriptor *)0x96e60a;
    pvVar23 = TStack_178.spare;
    FUN_0041d540();
    local_110 = (undefined4 *)((float)pvVar23 * DAT_00baa81c);
    local_168 = CONCAT44(local_168._4_4_,local_110);
    pTStack_194 = (TypeDescriptor *)0x96e62c;
    pvVar23 = TStack_178.spare;
    FUN_0041d520();
    local_100 = (void *)(~(DAT_00c34780 | _DAT_00c345d0 | _DAT_00c345e0 | _DAT_00c345c0 |
                           DAT_00c348f0 | DAT_00c34c50 | DAT_00c34850 | DAT_00c34880) &
                        ((uint)param_1_00[0x85].pVFTable | DAT_00c34b50));
    local_150 = (TypeDescriptor *)((float)pvVar23 * DAT_00baa81c);
    pvStack_fc = (void *)(~(DAT_00c34784 | _DAT_00c345d4 | _DAT_00c345e4 | _DAT_00c345c4 |
                            DAT_00c348f4 | DAT_00c34c54 | DAT_00c34854 | (uint)DAT_00c34884) &
                         ((uint)param_1_00[0x85].spare | DAT_00c34b54));
    uStack_f8 = ~(DAT_00c34788 | _DAT_00c345d8 | _DAT_00c345e8 | _DAT_00c345c8 | DAT_00c348f8 |
                  DAT_00c34c58 | DAT_00c34858 | DAT_00c34888) &
                ((uint)param_1_00[0x86].pVFTable | DAT_00c34b58);
    pvStack_f4 = (void *)(~(DAT_00c3478c | _DAT_00c345dc | _DAT_00c345ec | _DAT_00c345cc |
                            DAT_00c348fc | DAT_00c34c5c | DAT_00c3485c | (uint)DAT_00c3488c) &
                         ((uint)param_1_00[0x86].spare | DAT_00c34b5c));
    pTStack_194 = &local_40;
    pTStack_198 = (TypeDescriptor *)0x96e76e;
    local_10c.pVFTable = local_150;
    FUN_0096ee00();
    local_170.pVFTable = param_1_00[0x85].spare;
    local_34 = local_34 * (float)TStack_140.spare;
    local_11c = DAT_00c34880;
    local_128 = DAT_00c34884;
    uVar11 = DAT_00c34858 | DAT_00c34888;
    local_168 = CONCAT44(uVar11,(float)local_168);
    local_120 = DAT_00c34888;
    local_160 = (undefined4 *)(DAT_00c3485c | (uint)DAT_00c3488c);
    local_14c.pVFTable = DAT_00c3488c;
    local_15c = (void *)((uint)local_170.pVFTable &
                        (uint)(void *)(DAT_00c34854 | (uint)DAT_00c34884));
    pvVar23 = param_1_00[0x86].pVFTable;
    if ((((((uint)param_1_00[0x85].pVFTable & (DAT_00c34850 | DAT_00c34880)) ==
           (DAT_00c34850 | DAT_00c34880)) &&
         (local_15c == (void *)(DAT_00c34854 | (uint)DAT_00c34884))) &&
        (((uint)pvVar23 & uVar11) == uVar11)) &&
       ((undefined4 *)((uint)param_1_00[0x86].spare & (uint)local_160) == local_160)) {
      local_170.pVFTable = (void *)0x6;
      fVar22 = DAT_00baa950;
LAB_0096e8c5:
      pvVar23 = (void *)(fVar22 * DAT_00baa088);
      pTStack_194 = (TypeDescriptor *)0x96e8d8;
      TStack_178.spare = pvVar23;
      FUN_0041d540();
      pTStack_194 = (TypeDescriptor *)0x96e8e9;
      local_160 = (undefined4 *)pvVar23;
      FUN_0041d520();
      do {
        pTStack_194 = (TypeDescriptor *)0x96e8f5;
        pTStack_198 = (TypeDescriptor *)FUN_006eef60();
        pTStack_194 = (TypeDescriptor *)0x0;
        ppvStack_1a4 = &local_110;
        local_1a0.spare = (void *)0x0;
        local_1a0.pVFTable = param_1_00[0x79].pVFTable;
        local_10c.spare = (void *)((float)local_14c.spare - *param_2 * DAT_00baa75c);
        local_104 = (void *)(local_144 - param_2[1] * DAT_00baa75c);
        local_1ac = ZEXT48(&local_10c.spare) << 0x20;
        ppvStack_1b0 = (void **)0x2;
        pTStack_1b4 = (TypeDescriptor *)0x96e961;
        pvVar23 = local_104;
        piVar14 = (int *)HELPER_Entity_CreateDispatcher();
        piVar14[0x104] = -0x3ec20000;
        pTStack_194 = (TypeDescriptor *)0x96e97c;
        FUN_00676020();
        pTVar17 = DAT_00c71678;
        piVar14[0xd4] = (int)pvVar23;
        if (*(int *)((int)pTVar17[0x3060].pVFTable + 8) == 0x10) {
          piVar14[0xd4] = -0x3e700000;
        }
        local_1a0.pVFTable = local_100;
        local_1a0.spare = pvStack_fc;
        pTStack_198 = (TypeDescriptor *)uStack_f8;
        pTStack_194 = (TypeDescriptor *)pvStack_f4;
        ppvStack_1a4 = (void **)0x96e9b7;
        FUN_00676150();
        pTStack_194 = (TypeDescriptor *)((float)param_1_00[0x71].pVFTable * DAT_00baa2d0);
        pTStack_198 = (TypeDescriptor *)0x96e9d4;
        (**(code **)(*piVar14 + 0x40))();
        fVar22 = (float)param_1_00[0x9c].pVFTable * DAT_00baa304;
        if (fVar22 <= DAT_00baa06c) {
          fVar22 = DAT_00baa06c;
        }
        piVar14[0x109] = (int)fVar22;
        piVar14[0x108] = (int)fVar22;
        pTStack_198 = (TypeDescriptor *)0x96ea03;
        FUN_00677780();
        local_1ac._4_4_ = auStack_44;
        pTStack_198 = (TypeDescriptor *)0x1;
        local_1a0.spare = (TypeDescriptor *)0x0;
        local_1a0.pVFTable = (TypeDescriptor *)0xff;
        ppvStack_1a4 = (void **)0xffffffff;
        local_1ac._0_4_ = 0x96ea1d;
        (**(code **)(*piVar14 + 0x3c))();
        local_1ac = CONCAT44(local_1ac._4_4_,0x96ea24);
        (**(code **)(*piVar14 + 0xc))();
        local_170.pVFTable = (void *)((int)local_170.pVFTable + -1);
        local_110 = (undefined4 *)
                    ((float)local_168 * (float)local_160 -
                    (float)local_150 * (float)TStack_178.spare);
        local_150 = (TypeDescriptor *)
                    ((float)local_150 * (float)local_160 +
                    (float)local_168 * (float)TStack_178.spare);
        local_168 = CONCAT44(local_168._4_4_,local_110);
        local_10c.pVFTable = local_150;
      } while (local_170.pVFTable != (void *)0x0);
      local_170.pVFTable = (void *)0x0;
    }
    else {
      if ((((uint)param_1_00[0x85].pVFTable & DAT_00c34850 | (uint)local_170.pVFTable & DAT_00c34854
           ) != 0) ||
         (((uint)pvVar23 & DAT_00c34858 | (uint)param_1_00[0x86].spare & DAT_00c3485c) != 0)) {
        local_170.pVFTable = (void *)0x2;
        fVar22 = DAT_00baaa78;
        goto LAB_0096e8c5;
      }
      local_170.pVFTable = (void *)((uint)local_170.pVFTable & (uint)DAT_00c34884);
      if ((((uint)param_1_00[0x85].pVFTable & DAT_00c34880 | (uint)local_170.pVFTable) != 0) ||
         (((uint)pvVar23 & DAT_00c34888 | (uint)param_1_00[0x86].spare & (uint)DAT_00c3488c) != 0))
      {
        local_170.pVFTable = (void *)0x4;
        fVar22 = DAT_00baa9b4;
        goto LAB_0096e8c5;
      }
    }
    pvVar23 = DAT_00c34884;
    uVar11 = DAT_00c34880;
    uVar18 = ~(uint)DAT_00c3488c;
    param_1_00[0x88].pVFTable = (void *)((uint)param_1_00[0x88].pVFTable & ~DAT_00c34888);
    param_1_00[0x87].pVFTable = (void *)((uint)param_1_00[0x87].pVFTable & ~uVar11);
    param_1_00[0x87].spare = (void *)((uint)param_1_00[0x87].spare & ~(uint)pvVar23);
    param_1_00[0x88].spare = (void *)((uint)param_1_00[0x88].spare & uVar18);
    pvVar21 = param_1_00[0x86].pVFTable;
    pvVar23 = param_1_00[0x86].spare;
  }
LAB_0096ead2:
  TStack_178.spare = (void *)((uint)pvVar21 & _DAT_00c34908);
  local_160 = (undefined4 *)(DAT_00c3490c & (uint)pvVar23);
  if ((((uint)param_1_00[0x85].pVFTable & _DAT_00c34900 |
       (uint)param_1_00[0x85].spare & _DAT_00c34904) != 0) ||
     (((uint)TStack_178.spare | (uint)local_160) != 0)) {
    if (*(char *)&param_1_00[0x8b].spare == '\0') {
      pTStack_194 = (TypeDescriptor *)0x96eb35;
      local_15c = pvVar23;
      iVar10 = HELPER_Entity_TimeoutCrossed();
      pvVar23 = local_15c;
      if (iVar10 == 0) goto LAB_0096ec0c;
    }
    pTStack_194 = (TypeDescriptor *)param_1_00[0x79].pVFTable;
    ppvStack_1a4 = (void **)param_1_00[0x85].pVFTable;
    local_1a0.pVFTable = param_1_00[0x85].spare;
    local_1a0.spare = param_1_00[0x86].pVFTable;
    pTStack_198 = (TypeDescriptor *)param_1_00[0x86].spare;
    local_1ac = CONCAT44(local_124,0x96eb6e);
    piVar14 = (int *)FUN_00707e10();
    pTStack_194 = param_1_00 + 0xa4;
    pTStack_198 = (TypeDescriptor *)0x96eb82;
    FUN_007525e0();
    pvStack_b8 = (void *)piVar14[0x3c];
    iStack_b4 = piVar14[0x3d];
    iStack_b0 = piVar14[0x3e];
    pTStack_194 = (TypeDescriptor *)0x1;
    pTStack_198 = (TypeDescriptor *)0x0;
    local_1a0.spare = (TypeDescriptor *)0xff;
    iStack_a8 = piVar14[0x40];
    iStack_a4 = piVar14[0x41];
    iStack_a0 = piVar14[0x42];
    iStack_9c = piVar14[0x43];
    ppvStack_1a4 = &pvStack_b8;
    fStack_ac = (float)piVar14[0x3f] * (float)TStack_140.spare;
    local_1a0.pVFTable = (TypeDescriptor *)0xffffffff;
    uStack_98 = *(undefined8 *)(piVar14 + 0x44);
    iStack_90 = piVar14[0x46];
    local_1ac = CONCAT44(0x96ebeb,(uint)local_1ac);
    (**(code **)(*piVar14 + 0x3c))();
    local_1ac = CONCAT44(0x96ebf2,(uint)local_1ac);
    (**(code **)(*piVar14 + 0xc))();
    pvVar21 = param_1_00[0x86].pVFTable;
    pvVar23 = param_1_00[0x86].spare;
  }
LAB_0096ec0c:
  if ((((uint)param_1_00[0x85].pVFTable & DAT_00c34970 | (uint)param_1_00[0x85].spare & DAT_00c34974
       ) != 0) || (((uint)pvVar21 & DAT_00c34978 | (uint)pvVar23 & DAT_00c3497c) != 0)) {
    if (*(char *)&param_1_00[0x8b].spare == '\0') {
      pTStack_194 = (TypeDescriptor *)0x96ec52;
      iVar10 = HELPER_Entity_TimeoutCrossed();
      if (iVar10 == 0) goto LAB_0096eddc;
    }
    pTStack_194 = (TypeDescriptor *)0xc1200000;
    pTStack_198 = local_124;
    local_1a0.spare = (TypeDescriptor *)0x96ec77;
    cVar9 = FUN_00813360();
    if (cVar9 != '\0') {
      ppvStack_1a4 = &local_14c.spare;
      TStack_178.spare = (void *)((float)param_1_00[0x71].pVFTable * DAT_00baa2d0);
      pTStack_194 = (TypeDescriptor *)0x0;
      pTStack_198 = (TypeDescriptor *)0x0;
      local_1a0.spare = (void *)0x0;
      local_1a0.pVFTable = local_124;
      local_1ac = CONCAT44(0x96ecc6,(uint)local_1ac);
      HELPER_RoomClampedPoint();
      pTStack_194 = (TypeDescriptor *)0x96eccb;
      pTStack_198 = (TypeDescriptor *)FUN_006eef60();
      pTStack_194 = (TypeDescriptor *)0x0;
      local_1a0.spare = (void *)0x0;
      local_1a0.pVFTable = param_1_00[0x79].pVFTable;
      ppvStack_1a4 = &DAT_00c7b640;
      local_1ac = CONCAT44(&local_14c.spare,0xb4);
      ppvStack_1b0 = (void **)0x3e8;
      pTStack_1b4 = (TypeDescriptor *)0x96ecf5;
      piVar14 = (int *)HELPER_Entity_CreateDispatcher();
      fVar22 = (float)param_1_00[0x9c].pVFTable * DAT_00c3793c;
      piVar14[0x3a] = (int)((float)param_1_00[0x9c].pVFTable * DAT_00c37940);
      piVar14[0x39] = (int)fVar22;
      pTStack_194 = (TypeDescriptor *)TStack_178.spare;
      pTStack_198 = (TypeDescriptor *)0x96ed35;
      (**(code **)(*piVar14 + 0x40))();
      iVar10 = 0x3c;
      if (1 < (int)DAT_00c71678[0x4cc2].spare) {
        iVar10 = 0x1e;
      }
      piVar14[0x117] = iVar10;
      piVar14[0x118] = iVar10;
      pTStack_198 = (TypeDescriptor *)0x96ed61;
      (**(code **)(*piVar14 + 0xc))();
      uVar11 = DAT_00c34974;
      uVar19 = ~DAT_00c34978;
      uVar18 = ~DAT_00c3497c;
      param_1_00[0x87].pVFTable = (void *)((uint)param_1_00[0x87].pVFTable & ~DAT_00c34970);
      param_1_00[0x88].pVFTable = (void *)((uint)param_1_00[0x88].pVFTable & uVar19);
      param_1_00[0x87].spare = (void *)((uint)param_1_00[0x87].spare & ~uVar11);
      param_1_00[0x88].spare = (void *)((uint)param_1_00[0x88].spare & uVar18);
      local_168 = CONCAT44(0x440,(float)local_168);
      pTStack_194 = (TypeDescriptor *)0x96edaf;
      FUN_00956780();
      pTStack_194 = (TypeDescriptor *)0x0;
      pTStack_198 = (TypeDescriptor *)0x3f800000;
      local_1a0.spare = (TypeDescriptor *)0x0;
      local_1a0.pVFTable = (TypeDescriptor *)0x2;
      ppvStack_1a4 = (void **)0x3f800000;
      local_1ac = CONCAT44((int)((ulonglong)local_168 >> 0x20),0x96eddc);
      FUN_0092dc30();
    }
  }
LAB_0096eddc:
  FUN_00aef12b();
  return;
}

