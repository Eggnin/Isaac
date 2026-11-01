/* Local J460 decompiler output.
 * VA: 0x006c4b30
 * Entry: 006c4b30
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: common_npc_update
 * Evidence: Calls shield absorption and the 0x006c2990 AI dispatcher
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=common_npc_update; Calls shield absorption
   and the 0x006c2990 AI dispatcher */

void __fastcall HELPER_006c4b30_NPCUpdateCandidate(int *param_1)

{
  short sVar1;
  code *pcVar2;
  bool bVar3;
  char cVar4;
  undefined uVar5;
  undefined4 uVar6;
  int *piVar7;
  int **ppiVar8;
  int *piVar9;
  uint uVar10;
  float *pfVar11;
  int iVar12;
  undefined4 *puVar13;
  int iVar14;
  int **ppiVar15;
  uint uVar16;
  float10 fVar17;
  float fVar18;
  undefined in_XMM0 [16];
  undefined auVar21 [12];
  undefined auVar19 [16];
  undefined auVar20 [16];
  undefined4 in_stack_fffffc50;
  undefined4 in_stack_fffffc54;
  undefined4 in_stack_fffffc58;
  undefined4 in_stack_fffffc5c;
  undefined4 uVar22;
  TypeDescriptor *pTVar23;
  char *pcVar24;
  undefined4 uVar25;
  TypeDescriptor *pTVar26;
  undefined *puVar27;
  undefined4 uVar28;
  undefined4 uVar29;
  undefined4 uVar30;
  undefined local_374 [8];
  undefined local_36c [8];
  undefined local_364 [8];
  undefined local_35c [8];
  undefined local_354 [8];
  undefined local_34c [8];
  undefined local_344 [12];
  undefined4 local_338;
  undefined local_334 [8];
  undefined local_32c [8];
  int **local_324;
  undefined local_320 [4];
  float local_31c;
  undefined local_318 [8];
  undefined local_310 [8];
  undefined local_308 [4];
  float local_304;
  float local_300;
  float local_2fc;
  undefined local_2f8 [8];
  undefined local_2f0 [4];
  undefined4 local_2ec;
  undefined local_2e8 [8];
  undefined local_2e0 [8];
  int **local_2d8;
  char local_2d1;
  float local_2d0;
  float local_2cc;
  int **local_2c4;
  int **local_2c0;
  int *local_2bc;
  undefined local_2b8 [4];
  undefined4 local_2b4;
  int **local_2b0;
  int **local_2ac;
  char local_2a5;
  int *local_2a4;
  int *local_2a0;
  int **local_29c;
  undefined8 local_298;
  char *local_290;
  int *local_28c;
  int **local_288;
  char local_281;
  undefined local_254 [44];
  undefined local_228 [4];
  undefined4 local_224;
  undefined4 local_220;
  float local_21c;
  undefined4 local_214;
  undefined local_150 [132];
  undefined local_cc [44];
  undefined local_a0 [44];
  undefined local_74 [16];
  undefined local_64 [4];
  float local_60;
  float local_5c;
  float local_58;
  undefined local_54 [8];
  undefined local_4c [16];
  undefined local_3c [4];
  float local_38;
  float local_34;
  float local_30;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00afaabc;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_2a4 = (int *)0x0;
  local_28c = (int *)0x0;
  local_2bc = param_1;
  puVar27 = &stack0xfffffffc;
  if (*(char *)((int)param_1 + 0x172) == '\0') goto LAB_006ca86f;
  FUN_006b99e0(local_24);
  param_1[0xe7] = in_XMM0._0_4_;
  FUN_006d90e0(0);
  if (param_1[0x3c7] == -1) {
    ppiVar15 = (int **)(param_1 + 0x3ca);
    param_1[0x3c8] = (int)DAT_00c7b640;
    in_XMM0 = ZEXT416((uint)DAT_00c7b644);
    param_1[0x3c9] = (int)DAT_00c7b644;
    if (*ppiVar15 != (int *)0x0) {
      (**(code **)(**ppiVar15 + 0x28))();
      if (*ppiVar15 != (int *)0x0) {
        local_288 = ppiVar15;
        FUN_004cf210(&local_288);
      }
      *ppiVar15 = (int *)0x0;
    }
  }
  if ((param_1[0x5b] & 0x20000U) != 0) {
    FUN_006ca930();
    puVar27 = puStack_20;
    goto LAB_006ca86f;
  }
  cVar4 = FUN_006ac710(2,0);
  if ((((cVar4 != '\0') && ((param_1[0x5a] & 0x20000000U) == 0)) &&
      (cVar4 = FUN_006b5b90(0), cVar4 != '\0')) && (cVar4 = FUN_00930680(0x40), cVar4 != '\0')) {
    FUN_00431310(0);
    FUN_006b77d0(local_4c,0xfffffffd);
  }
  iVar14 = param_1[0x3d6];
  if ((iVar14 != 0) && (*(int **)(iVar14 + 0x3c4) == param_1)) {
    *(int *)(iVar14 + 0x33c) = param_1[0xcf];
    *(int *)(iVar14 + 0x340) = param_1[0xd0];
    iVar14 = param_1[0x3d6];
    *(int *)(iVar14 + 0x360) = param_1[0xd8];
    *(int *)(iVar14 + 0x364) = param_1[0xd9];
  }
  if (((param_1[10] == 0x17) && (param_1[0xb] == 0)) && (param_1[0xc] == 1)) {
    bVar3 = true;
  }
  else {
    bVar3 = false;
  }
  local_290 = (char *)0x0;
  if (param_1[0x319] == 0x16) {
    local_290 = "Crown";
LAB_006c4d15:
    iVar14 = 1;
  }
  else {
    iVar14 = 0;
    if (param_1[0x319] == 0x17) {
      local_290 = "Skull";
      goto LAB_006c4d15;
    }
  }
  uVar16 = param_1[0x5a];
  if (((uVar16 & 0x100) == 0) || (bVar3)) {
    if ((param_1[0x5b] & 0x1000000U) != 0) {
      local_290 = "BrimstoneCurse";
      goto LAB_006c4f0d;
    }
    if ((param_1[0x5b] & 0x80000U) != 0) {
      local_290 = "Magnetize";
      goto LAB_006c4f0d;
    }
    if ((param_1[0x5b] & 0x100000U) != 0) {
      local_290 = &DAT_00b67654;
      iVar14 = 0;
      goto LAB_006c4f12;
    }
    if ((uVar16 & 0x200) != 0) {
      local_290 = "Confuse";
      goto LAB_006c4f0d;
    }
    if ((uVar16 & 0x1000) != 0) {
      local_290 = "Burning";
      iVar14 = 0;
      goto LAB_006c4f12;
    }
    if ((uVar16 & 0x40) != 0) {
      local_290 = "Poison";
      goto LAB_006c4f0d;
    }
    if ((uVar16 & 0x800) != 0) {
      local_290 = &DAT_00b67628;
      goto LAB_006c4f0d;
    }
    if ((param_1[0x5b] & 4U) != 0) {
      local_290 = "BleedingOut";
      goto LAB_006c4f0d;
    }
    if (((uVar16 & 0x80) != 0) ||
       ((((cVar4 = FUN_009305f0(0xe8), cVar4 != '\0' || (cVar4 = FUN_009305f0(0x42), cVar4 != '\0'))
         || ((*(int *)(DAT_00c71678 + 0x26584) != 0x16 &&
             (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1210) == 1)))) &&
        (((param_1[0x5a] & 0x20000001U) == 0 || (param_1[10] == 0xd4)))))) {
      local_290 = &DAT_00b6769c;
      goto LAB_006c4f0d;
    }
    if ((param_1[0x5b] & 0x400000U) != 0) {
      local_290 = "Weakness";
      goto LAB_006c4f0d;
    }
    if (param_1[10] == 0x3c6) {
      local_290 = "EnemyCharm";
      goto LAB_006c4f0d;
    }
    if ((int **)local_290 != (int **)0x0) goto LAB_006c4f12;
    if (param_1[0x343] != 0) {
      *(undefined *)(param_1 + 0x347) = 0;
    }
  }
  else {
    local_290 = "Charm";
LAB_006c4f0d:
    iVar14 = 1;
LAB_006c4f12:
    if (*(char *)((int)param_1 + 0xde1) == '\0') {
      FUN_0040c340("gfx/StatusEffects.anm2");
      local_14 = 0;
      FUN_0040bd50(local_3c,1);
      local_14 = 0xffffffff;
      FUN_0040d040();
    }
    cVar4 = FUN_0040a4d0(&DAT_00b1a4ec);
    if ((cVar4 != '\0') && (*(char *)((int)param_1 + 0xde1) != '\0')) {
      FUN_00409030();
      FUN_00409030();
    }
    HELPER_0040a380_AnimationActionA(local_290,0);
    param_1[0x37a] = iVar14 << 0x1f;
  }
  fVar18 = DAT_00baa304;
  iVar14 = param_1[199];
  if ((iVar14 == 0) && ((param_1[0x5b] & 0x2000000U) == 0)) {
    local_2d1 = *(char *)((int)param_1 + 0x173);
  }
  else {
    if (((NAN((float)param_1[0xc5]) || NAN(DAT_00c7b640)) != ((float)param_1[0xc5] == DAT_00c7b640))
       && ((NAN((float)param_1[0xc6]) || NAN(DAT_00c7b644)) !=
           ((float)param_1[0xc6] == DAT_00c7b644))) {
      param_1[0xc5] = param_1[0xcf];
      param_1[0xc6] = param_1[0xd0];
      iVar14 = param_1[199];
    }
    if ((0 < iVar14) && (param_1[199] = iVar14 + -1, 0 < iVar14 + -1)) {
      param_1[0xcf] = param_1[0xc5];
      param_1[0xd0] = param_1[0xc6];
    }
    param_1[0xd8] = (int)((float)param_1[0xd8] * fVar18);
    param_1[0xd9] = (int)((float)param_1[0xd9] * fVar18);
    local_281 = *(char *)((int)param_1 + 0x173);
    HELPER_006d7010_DamageQueuePreprocessCandidate();
    HELPER_006d7230_ShieldDamageAbsorption();
    if ((*(byte *)(param_1 + 0x3c6) & 1) != 0) {
      param_1[0x2dd] = 1;
      HELPER_Entity_NPC_Update_dispatcher();
      param_1[0x2dd] = 0;
    }
    local_288 = (int **)param_1[0xe0];
    if ((param_1[0x5b] & 1U) == 0) {
      param_1[0x5a] = param_1[0x5a];
      param_1[0x5b] = param_1[0x5b] ^ 1;
      FUN_006ae820();
      param_1[0x5a] = param_1[0x5a];
      param_1[0x5b] = param_1[0x5b] ^ 1;
    }
    else {
      FUN_006ae820();
    }
    local_288 = (int **)((float)local_288 - (float)param_1[0xe0]);
    local_2ac = (int **)0x0;
    pfVar11 = (float *)FUN_0041cb70();
    in_XMM0 = ZEXT416((uint)(*pfVar11 + (float)param_1[0x317]));
    local_2d1 = *(char *)((int)param_1 + 0x173);
    param_1[0x317] = (int)(*pfVar11 + (float)param_1[0x317]);
    puVar27 = puStack_20;
    if (local_281 == local_2d1) goto LAB_006ca86f;
  }
  cVar4 = FUN_00417430(4,0);
  iVar14 = param_1[0x2d9];
  if (cVar4 == '\0') {
    if (iVar14 == 1) {
      param_1[0x2d9] = param_1[0x2da];
    }
    else {
LAB_006c58e9:
      if ((iVar14 == 0x12) || (iVar14 == 0x11)) {
        in_XMM0 = ZEXT416((uint)((float)param_1[0xdb] * DAT_00baa06c));
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa06c);
        if (param_1[0x104] == 0) {
          if (iVar14 == 0x11) {
            iVar14 = param_1[10];
            if (((((((iVar14 == 0xd9) || (iVar14 == 0xdc)) || (iVar14 == 0xdf)) ||
                  ((iVar14 == 0x105 || (iVar14 == 0x192)))) || (iVar14 == 0x366)) ||
                ((iVar14 == 0x367 || (iVar14 == 0x392)))) ||
               ((iVar14 == 0x368 || ((iVar14 == 0xed && (param_1[0xb] == 2)))))) {
              local_2a0 = param_1 + 0x12;
              iVar14 = FUN_0040bcd0("Flush");
              if (iVar14 != 0) {
                HELPER_0040a380_AnimationActionA("Flush",0);
                iVar14 = param_1[0x2d9];
                param_1[0xd5] = 5000;
                goto LAB_006c59c4;
              }
              param_1[0x2d9] = 0x12;
              goto LAB_006c59d3;
            }
          }
          else {
LAB_006c59c4:
            local_2a0 = param_1 + 0x12;
            if (iVar14 == 0x12) {
LAB_006c59d3:
              iVar12 = FUN_0040bcd0("Death");
              iVar14 = param_1[10];
              if (iVar12 == 0) {
                if (iVar14 == 0x1c) {
                  iVar14 = param_1[0x2f0];
                  if (iVar14 == 0) {
                    pcVar24 = "DeathHead";
LAB_006c5b7b:
                    HELPER_0040a380_AnimationActionA(pcVar24,0);
                  }
                  else {
                    if (iVar14 == 1) {
                      pcVar24 = "DeathBody01";
                      goto LAB_006c5b7b;
                    }
                    if (iVar14 == 2) {
                      pcVar24 = "DeathBody02";
                      goto LAB_006c5b7b;
                    }
                  }
                  iVar14 = FUN_0040a780();
                  if (iVar14 == 3) {
                    FUN_006d6ba0(0x74,0x3f800000,2,0,0x3f800000);
                  }
                }
                else if ((iVar14 == 0x13) || (iVar14 == 0x396)) {
                  pcVar24 = "DeathBody01";
                  if (param_1[0xef] == 0) {
                    pcVar24 = "DeathHead";
                  }
                  HELPER_0040a380_AnimationActionA(pcVar24,0);
                }
                else if (iVar14 == 0x3e) {
                  if (param_1[0xef] == 0) {
                    HELPER_0040a380_AnimationActionA("DeathHead",0);
                  }
                  else if (param_1[0xf0] == 0) {
                    (**(code **)(*param_1 + 0x28))();
                  }
                  else {
                    HELPER_0040a380_AnimationActionA("DeathBody01",0);
                  }
                }
                else if (((iVar14 != 0x4a) && (iVar14 != 0x4b)) && (iVar14 != 0x4c)) {
                  FUN_006b45c0();
                  FUN_006d5400();
                }
              }
              else if (iVar14 == 0x19b) {
                if (param_1[0xb] == 1) {
                  local_288 = (int **)FUN_0040b430(&DAT_00b6767c);
                  piVar7 = param_1 + 0x12;
                  if (local_288 != (int **)0x0) {
                    FUN_0041e460();
                    uVar6 = FUN_00452be0();
                    iVar14 = FUN_0040a220(uVar6);
                    piVar7 = local_2a0;
                    if ((iVar14 != 0) && (*(char *)(iVar14 + 0x2c) != '\0')) {
                      HELPER_0040a380_AnimationActionA("HandDeath",0);
                      goto LAB_006c5c3e;
                    }
                  }
                  local_2a0 = piVar7;
                  HELPER_0040a380_AnimationActionA("SmallHoleClose",0);
                }
                else if (param_1[0xb] == 2) {
                  FUN_0044bf90(0);
                }
                else {
                  FUN_0041e460();
                  FUN_00452bf0(local_3c);
                  local_14 = 4;
                  local_281 = FUN_004f84a0();
                  local_14 = 0xffffffff;
                  thunk_FUN_0040d040();
                  if (local_281 != '\0') {
                    HELPER_0040a380_AnimationActionA("Death",0);
                  }
                }
              }
              else {
                if ((iVar14 == 0x195) &&
                   (local_29c = (int **)FUN_0040b430(&DAT_00b5fed4), local_29c != (int **)0x0)) {
                  FUN_0041e460();
                  uVar6 = FUN_00452be0();
                  iVar14 = FUN_0040a220(uVar6);
                  if ((iVar14 == 0) || (*(char *)(iVar14 + 0x2c) == '\0')) {
                    uVar5 = 0;
                  }
                  else {
                    uVar5 = 1;
                  }
                  *(undefined *)(local_29c + 0x1d) = uVar5;
                }
                HELPER_0040a380_AnimationActionA("Death",0);
              }
            }
          }
        }
LAB_006c5c3e:
        iVar14 = param_1[0x104];
        iVar12 = param_1[10];
        param_1[0x104] = iVar14 + 1;
        if (iVar12 == 0x66) {
          if ((param_1[0xb] != 2) && (iVar14 + 1 == 0x11)) {
            FUN_006d6ba0(0x10a,0x40000000,2,0,0x3f800000);
            iVar12 = param_1[10];
            goto LAB_006c5c89;
          }
        }
        else {
LAB_006c5c89:
          if (iVar12 == 0x38c) {
            cVar4 = HELPER_0040b030_AnimationEventPredicateD("Shoot");
            if (cVar4 != '\0') {
              FUN_009568e0(0x48,2,0,0x3f800000);
            }
            cVar4 = HELPER_0040a550_AnimationPredicateB(&DAT_00b1a4ec);
            if ((cVar4 != '\0') && (*(char *)((int)param_1 + 0x173) != '\0')) {
              AI_0043ef30();
              puVar27 = local_228;
              local_21c = local_21c - _DAT_00baa114;
              in_XMM0 = ZEXT416((uint)local_21c);
              uVar22 = 9;
              uVar6 = FUN_00a0fe90(9,puVar27);
              HELPER_Entity_NPC_FireProjectiles(param_1 + 0xcf,uVar6,uVar22,puVar27);
            }
          }
          else if (iVar12 == 0x38b) {
            thunk_FUN_004b3610();
          }
          else if (iVar12 == 900) {
            FUN_0041e470();
            cVar4 = FUN_004073a0();
            if (cVar4 == '\0') {
              FUN_0040ac60();
            }
          }
          else if (iVar12 == 0x393) {
            cVar4 = HELPER_0040a550_AnimationPredicateB(&DAT_00b1a4ec);
            if ((cVar4 != '\0') && (*(char *)((int)param_1 + 0x173) != '\0')) {
              uVar6 = FUN_00407170();
              uVar28 = 0;
              uVar25 = 0;
              uVar30 = 4;
              uVar29 = 1;
              uVar22 = 0x3fc00000;
              piVar7 = param_1;
              FUN_00435bc0(0,0);
              FUN_00700060(param_1 + 0xcf,0x42a00000,in_stack_fffffc50,in_stack_fffffc54,
                           in_stack_fffffc58,in_stack_fffffc5c,uVar6,piVar7,uVar22,uVar29,uVar30,
                           uVar25,uVar28);
            }
          }
          else if (iVar12 == 0x391) {
            cVar4 = HELPER_0040b030_AnimationEventPredicateD("Shoot");
            if ((cVar4 != '\0') &&
               (local_2a4 = (int *)FUN_0040b1d0("BloodGuide"), local_2a4 != (int *)0x0)) {
              uVar6 = FUN_006eef60();
              HELPER_Entity_SpawnRelay(1000,2,param_1 + 0xcf,&DAT_00c7b640,0,2,uVar6);
              piVar7 = (int *)FUN_004a2920();
              FUN_004563c0(local_2a4);
              (**(code **)(*piVar7 + 0x3c))(param_1 + 0x79,0xffffffff,0xff,0,1);
              FUN_009568e0(0x1e,2,0,0x3f800000);
              FUN_0041e460();
              iVar14 = FUN_00440e30();
              iVar12 = FUN_0040a780();
              if (iVar14 + -1 <= iVar12) {
                FUN_009568e0(0x105,2,0,0x3f800000);
                uVar6 = FUN_006eef60();
                HELPER_Entity_SpawnRelay(1000,0xf,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar6);
                FUN_004563c0(local_2a4);
                uVar29 = 0;
                uVar22 = 3;
                uVar6 = 3;
                FUN_00a0f690(0x3f800000);
                FUN_0060af70(uVar6,uVar22,uVar29);
                uVar6 = FUN_0067f2e0();
                FUN_004172f0(uVar6);
                FUN_00435dd0();
                FUN_0040a720(1);
                FUN_00a114d0(2,0);
                FUN_00435dd0();
                pfVar11 = &local_38;
                FUN_0040b200(0);
                FUN_00a115c0(pfVar11);
              }
            }
          }
          else if (iVar12 == 0x390) {
            if ((param_1[0xb] == 10) &&
               (cVar4 = HELPER_0040b030_AnimationEventPredicateD("Shoot"), cVar4 != '\0')) {
              FUN_00703670(0x14);
              FUN_006b6470(0x1d,2,0,0x3f000000);
            }
          }
          else if ((iVar12 == 0x399) &&
                  (cVar4 = HELPER_0040b030_AnimationEventPredicateD("Explosion"), cVar4 != '\0')) {
            uVar6 = FUN_006eef60();
            piVar7 = (int *)HELPER_Entity_SpawnRelay
                                      (1000,0x90,param_1 + 0xcf,&DAT_00c7b640,0,3,uVar6);
            uVar6 = FUN_00a0fe90();
            FUN_004172f0(uVar6);
            FUN_00435dd0();
            FUN_0067efe0();
            auVar21 = in_XMM0._4_12_;
            fVar18 = in_XMM0._0_4_ * DAT_00baab30;
            FUN_0043ee80(fVar18);
            FUN_00435dd0();
            local_288 = (int **)0x3fc00000;
            uVar6 = FUN_00a104e0(local_2e0,&local_288);
            FUN_00420170(uVar6);
            (**(code **)(*piVar7 + 0x40))(0x42a00000);
            (**(code **)(*piVar7 + 0xc))();
            FUN_0067efe0();
            param_1 = local_2bc;
            in_XMM0._0_4_ = fVar18 * (float)DAT_00baa198 + DAT_00baa3e0;
            in_XMM0._4_12_ = auVar21;
            FUN_006b6470(0x1dd,2,0,in_XMM0._0_4_);
            FUN_00703670(0xe);
          }
        }
        local_29c = (int **)FUN_0040b1d0("BloodGuide");
        if (local_29c != (int **)0x0) {
          FUN_006d7520(local_29c);
          cVar4 = FUN_00417430(0x10000,0);
          if (((cVar4 == '\0') &&
              ((iVar14 = FUN_00708250(), 2 < iVar14 ||
               ((cVar4 = FUN_00417220(0x38c,0xffffffff,0xffffffff), cVar4 != '\0' &&
                ((param_1[0xfb] & 0xfffffU) == 0xdedbb)))))) &&
             (((*(byte *)(param_1 + 0xfb) & 1) == 0 ||
              (cVar4 = FUN_00417220(0x38c,0xffffffff,0xffffffff), cVar4 != '\0')))) {
            FUN_0041e460();
            iVar14 = FUN_0040af10("Explosion");
            FUN_0040a7c0();
            in_XMM0._0_4_ = in_XMM0._0_4_ + DAT_00baa81c;
            if (in_XMM0._0_4_ <= (float)iVar14) {
              fVar17 = (float10)FUN_00456360();
              local_288 = (int **)((float)fVar17 * (float)param_1[0xe7]);
              auVar19 = ZEXT416(local_288);
              FUN_0040a7c0();
              in_XMM0._4_12_ = auVar19._4_12_;
              in_XMM0._0_4_ = auVar19._0_4_ + (float)local_288 + DAT_00baa81c;
              if ((float)iVar14 < in_XMM0._0_4_) {
                uVar6 = FUN_006eef60();
                piVar7 = (int *)HELPER_Entity_SpawnRelay
                                          (1000,0xf,param_1 + 0xcf,&DAT_00c7b640,0,0xb,uVar6);
                FUN_00435dd0();
                FUN_0040c340("gfx/promo/gfuel/effects/explosion_delayed.anm2");
                local_14 = 5;
                FUN_0040bd50(local_3c,1);
                local_14 = 0xffffffff;
                thunk_FUN_0040d040();
                FUN_00435dd0();
                FUN_00435dd0();
                uVar6 = FUN_004a5cf0();
                FUN_0040a360(uVar6,0);
                FUN_00435dd0();
                iVar14 = FUN_0067f010();
                FUN_00435c60(iVar14 == 0);
                FUN_00435dd0();
                local_288 = (int **)0x3fc00000;
                uVar6 = FUN_004171d0(&DAT_00c3793c);
                FUN_00420170(uVar6);
                (**(code **)(*piVar7 + 0xc))();
                param_1 = local_2bc;
                FUN_004173e0(0x10000,0);
              }
            }
          }
          cVar4 = HELPER_0040b030_AnimationEventPredicateD("Explosion");
          if (cVar4 != '\0') {
            cVar4 = FUN_00417430(0x10000,0);
            if (cVar4 == '\0') {
              fVar18 = (float)param_1[0xdc];
              uVar6 = 2;
              in_XMM0 = ZEXT416((uint)DAT_00baa83c);
              if (fVar18 < DAT_00baa83c) {
                uVar6 = 1;
              }
              if ((DAT_00baa868 <= fVar18) ||
                 (in_XMM0 = ZEXT416((uint)param_1[0x57]), DAT_00baa8d0 < (float)param_1[0x57])) {
                uVar6 = 3;
              }
              if ((DAT_00baa904 <= fVar18) ||
                 (in_XMM0 = ZEXT416((uint)param_1[0x57]), DAT_00baa924 < (float)param_1[0x57])) {
                uVar6 = 4;
              }
              iVar14 = FUN_00708250();
              if (iVar14 < 1) {
                uVar22 = FUN_006eef60();
                uVar30 = 0;
                pTVar26 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
                pTVar23 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
                uVar29 = 0;
                uVar6 = HELPER_Entity_SpawnRelay(1000,2,param_1 + 0xcf,&DAT_00c7b640,0,uVar6,uVar22)
                ;
                piVar7 = (int *)__RTDynamicCast(uVar6,uVar29,pTVar23,pTVar26,uVar30);
                FUN_004563c0(local_29c);
                (**(code **)(*piVar7 + 0x3c))(param_1 + 0x79,0xffffffff,0xff,0,1);
                cVar4 = (**(code **)(*param_1 + 0x4c))();
                if (((cVar4 != '\0') && (cVar4 = FUN_00435880(4), cVar4 != '\0')) &&
                   ((param_1[10] != 0x3e || (param_1[0xef] == 0)))) {
                  uVar6 = FUN_006eef60();
                  uVar29 = 0;
                  pTVar26 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
                  pTVar23 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
                  uVar22 = 0;
                  uVar6 = HELPER_Entity_SpawnRelay
                                    (1000,0x4d,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar6);
                  piVar7 = (int *)__RTDynamicCast(uVar6,uVar22,pTVar23,pTVar26,uVar29);
                  (**(code **)(*piVar7 + 0x3c))(param_1 + 0x79,0xffffffff,0xff,0,1);
                }
              }
              else {
                FUN_006b9450();
                cVar4 = (**(code **)(*param_1 + 0x4c))();
                if (((cVar4 != '\0') && (cVar4 = FUN_00435880(4), cVar4 != '\0')) &&
                   ((param_1[10] != 0x3e || (param_1[0xef] == 0)))) {
                  FUN_006b9450();
                }
              }
            }
            if (param_1[10] == 0x4e) {
              AI_0043ef30();
              puVar27 = local_228;
              uVar22 = 9;
              local_224 = 0x40a00000;
              local_214 = 0x3fc00000;
              local_21c = -0.06;
              local_220 = 0xc0000000;
              uVar6 = FUN_00a0fe90(9,puVar27);
              HELPER_Entity_NPC_FireProjectiles(param_1 + 0xcf,uVar6,uVar22,puVar27);
            }
            cVar4 = FUN_00417220(0x10d,1,0xffffffff);
            if (cVar4 != '\0') {
              iVar14 = FUN_0067f010();
              local_2c4 = (int **)(iVar14 + 0xc);
              if (0 < (int)local_2c4) {
                do {
                  fVar18 = in_XMM0._0_4_;
                  FUN_0067f070(local_2e0);
                  FUN_0067efe0();
                  ppiVar15 = (int **)(fVar18 * (float)DAT_00baa784);
                  local_288 = ppiVar15;
                  FUN_00a104e0(&local_298,&local_288);
                  local_2c0 = (int **)FUN_006eef60();
                  FUN_00417290(local_2e8);
                  FUN_0067f070(&local_2d0);
                  FUN_0067efe0();
                  local_2ac = (int **)((float)ppiVar15 * DAT_00baa87c);
                  uVar6 = FUN_00a104e0(&local_300,&local_2ac);
                  uVar6 = FUN_00a10420(local_2b8,uVar6);
                  param_1 = local_2bc;
                  uVar29 = 0;
                  pTVar26 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
                  pTVar23 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
                  uVar22 = 0;
                  uVar6 = HELPER_Entity_SpawnRelay(1000,0x3b,uVar6,&local_298,local_2bc,0,local_2c0)
                  ;
                  local_2a4 = (int *)__RTDynamicCast(uVar6,uVar22,pTVar23,pTVar26,uVar29);
                  local_2b0 = DAT_00baa454;
                  FUN_00417290(local_2f0);
                  uVar6 = FUN_00417290(local_308);
                  FUN_00a10480(local_320,uVar6);
                  uVar6 = FUN_00a0fe90();
                  fVar17 = (float10)FUN_00a10180(uVar6);
                  piVar7 = local_2a4;
                  local_2c0 = (int **)(float)fVar17;
                  ppiVar15 = (int **)0x0;
                  if ((float)local_2c0 < 0.0) {
                    local_2b0 = DAT_00baad50;
                    ppiVar15 = DAT_00baad50;
                  }
                  FUN_004563c0(local_29c);
                  FUN_0067efe0();
                  fVar18 = ((float)ppiVar15 * DAT_00baa81c + DAT_00baa630) * (float)local_2b0;
                  FUN_00435eb0(fVar18);
                  iVar14 = FUN_0067f010();
                  FUN_00435e90(iVar14 + 0xf);
                  uVar29 = 0;
                  uVar22 = 0;
                  uVar6 = 0;
                  pcVar2 = *(code **)(*piVar7 + 0x3c);
                  FUN_0067efe0(0,0,0);
                  in_XMM0 = ZEXT416(DAT_00baa454);
                  uVar6 = FUN_00435ad0(fVar18 * (float)DAT_00baa2d0 + (float)DAT_00baa198,uVar6,
                                       uVar22,uVar29);
                  (*pcVar2)(uVar6,0xffffffff,0xff,0,1);
                  (**(code **)(*local_2a4 + 0xc))();
                  local_2c4 = (int **)((int)local_2c4 + -1);
                } while (local_2c4 != (int **)0x0);
              }
            }
            param_1[0x57] = 0;
            FUN_006b45c0();
          }
        }
        if (((param_1[10] == 0x197) &&
            (cVar4 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b6774c), cVar4 != '\0')) &&
           (cVar4 = FUN_00417430(0,0x10000000), cVar4 == '\0')) {
          uVar6 = FUN_006eef60();
          piVar7 = (int *)HELPER_Entity_SpawnRelay
                                    (1000,100,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar6);
          if (piVar7 != (int *)0x0) {
            (**(code **)(*piVar7 + 0xc))();
          }
          FUN_00703670(0x1e);
          FUN_009568e0(0x10a,2,0,0x3f800000);
        }
        cVar4 = HELPER_0040a550_AnimationPredicateB(&DAT_00b1a4ec);
        if ((cVar4 != '\0') && (*(char *)((int)param_1 + 0x172) != '\0')) {
          FUN_006d5400();
        }
      }
    }
  }
  else {
    if (iVar14 != 1) goto LAB_006c58e9;
    iVar14 = param_1[0x2dc];
    if (iVar14 == 0) {
      param_1[0x2d9] = 0;
      if (param_1[0x319] == 6) {
        *(undefined *)(param_1 + 0xec) = 1;
        FUN_004173e0(1,0);
      }
      HELPER_Entity_NPC_Update_dispatcher();
      if ((param_1[0x319] == 0x11) || (param_1[0x319] == 0x19)) {
        uVar6 = FUN_006eef60();
        HELPER_Entity_SpawnRelay(0x60,0,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar6);
        FUN_006a92a0(param_1);
      }
      cVar4 = FUN_00417430(4,0);
      if (cVar4 != '\0') {
        *(undefined *)((int)param_1 + 0x171) = 0;
        param_1[0x2da] = param_1[0x2d9];
        param_1[0x2d9] = 1;
      }
      FUN_00417860();
      cVar4 = FUN_0044bfb0(0x35);
      if ((((cVar4 != '\0') && (param_1[10] != 0x112)) && (param_1[10] != 0x113)) &&
         (in_XMM0 = ZEXT416((uint)param_1[0xe0]), DAT_00baa950 < (float)param_1[0xe0])) {
        iVar12 = 0;
        FUN_00417860();
        iVar14 = FUN_009bea80(0x35);
        if (0 < iVar14) {
          do {
            iVar12 = iVar12 + 1;
            in_XMM0 = ZEXT416((uint)((float)param_1[0xe0] * DAT_00baa3c4));
            param_1[0xe0] = (int)((float)param_1[0xe0] * DAT_00baa3c4);
            FUN_00417860();
            iVar14 = FUN_009bea80(0x35);
          } while (iVar12 < iVar14);
        }
      }
      uVar16 = 0;
      iVar14 = FUN_00440e40();
      if (iVar14 != 0) {
        do {
          local_288 = (int **)FUN_0040b200(uVar16);
          FUN_00407320(local_64);
          local_14 = 1;
          local_2a4 = (int *)((uint)local_28c | 1);
          local_28c = local_2a4;
          cVar4 = FUN_004561b0();
          if (cVar4 == '\0') {
            FUN_00407320(local_3c);
            local_14 = 2;
            local_2a4 = (int *)((uint)local_28c | 2);
            local_28c = local_2a4;
            cVar4 = FUN_004561b0();
            local_281 = '\0';
            if (cVar4 != '\0') goto LAB_006c5358;
          }
          else {
LAB_006c5358:
            local_281 = '\x01';
          }
          if (((uint)local_28c & 2) != 0) {
            local_28c = (int *)((uint)local_28c & 0xfffffffd);
            thunk_FUN_0040d040();
          }
          local_14 = 0xffffffff;
          if (((uint)local_28c & 1) != 0) {
            local_28c = (int *)((uint)local_28c & 0xfffffffe);
            thunk_FUN_0040d040();
          }
          if (local_281 != '\0') {
            FUN_006c04b0(1);
            break;
          }
          uVar16 = uVar16 + 1;
          uVar10 = FUN_00440e40();
        } while (uVar16 < uVar10);
      }
      cVar4 = (**(code **)(*param_1 + 0x4c))();
      if ((cVar4 != '\0') && (iVar14 = FUN_0042a260(), iVar14 == 0)) {
        FUN_00703470(param_1[10],param_1[0xb]);
      }
    }
    else if (iVar14 == 1) {
      uVar6 = 2;
      if ((float)param_1[0xdc] < DAT_00baa83c) {
        uVar6 = 1;
      }
      if ((DAT_00baa868 <= (float)param_1[0xdc]) || (DAT_00baa8d0 < (float)param_1[0x57])) {
        uVar6 = 3;
      }
      uVar22 = FUN_006eef60();
      uVar30 = 0;
      pTVar26 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
      pTVar23 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar29 = 0;
      uVar6 = HELPER_Entity_SpawnRelay(1000,0xf,param_1 + 0xcf,&DAT_00c7b640,param_1,uVar6,uVar22);
      ppiVar15 = (int **)__RTDynamicCast(uVar6,uVar29,pTVar23,pTVar26,uVar30);
      local_288 = ppiVar15;
      FUN_004172f0(param_1 + 0xd3);
      in_XMM0 = ZEXT416((uint)((float)param_1[0xd4] + (float)DAT_00baa454));
      FUN_00435cf0((float)param_1[0xd4] + (float)DAT_00baa454);
      if ((*(char *)((int)param_1 + 0xc63) != '\0') && ((uint)param_1[0x319] < 0x1a)) {
        pcVar2 = (code *)(*ppiVar15)[0xf];
        uVar6 = FUN_00505b80(local_a0);
        (*pcVar2)(uVar6,0xffffffff,0xff,0,1);
      }
      uVar6 = 0x11e;
      cVar4 = FUN_006b8490();
      if (cVar4 != '\0') {
        uVar6 = 0x368;
      }
      FUN_00420af0();
      FUN_0092e230(uVar6);
      FUN_006d6ba0(uVar6,0x3f800000,2,0,0x3f800000);
      iVar14 = param_1[10];
      if (iVar14 == 0x191) {
        FUN_009568e0(0x40,2,0,0x3f800000);
        FUN_006d6ba0(0x1a3,0x3f800000,2,0,0x3f800000);
      }
      else if (iVar14 == 0x193) {
        FUN_006d6ba0(0x1a1,0x3f800000,2,0,0x3f800000);
      }
      else if ((iVar14 == 0x19b) && (param_1[0xb] == 0)) {
        FUN_006d6ba0(0xe,0x40000000,2,0,0x3f800000);
      }
    }
    else if (iVar14 == 4) {
      if (param_1[10] != 0x3e) {
        *(undefined *)((int)param_1 + 0x171) = 1;
      }
      iVar14 = FUN_0040bcd0("Appear");
      if (iVar14 != 0) {
        if (param_1[10] != 0x10a) {
          FUN_0040ac60();
        }
        HELPER_0040a380_AnimationActionA("Appear",1);
      }
    }
    else {
      if (iVar14 < 0x14) {
LAB_006c56aa:
        local_281 = '\0';
      }
      else {
        cVar4 = HELPER_0040a550_AnimationPredicateB("Appear");
        if ((cVar4 == '\0') && (iVar14 = FUN_0040bcd0("Appear"), iVar14 != 0)) {
          FUN_0040c340("Appear");
          local_14 = 3;
          local_2a4 = (int *)&DAT_00000004;
          FUN_0041e460();
          FUN_00452bf0(local_3c);
          local_28c = (int *)0xc;
          cVar4 = FUN_0040c7c0();
          if (cVar4 == '\0') goto LAB_006c56aa;
        }
        local_281 = '\x01';
      }
      if (((uint)local_28c & 8) != 0) {
        local_28c = (int *)((uint)local_28c & 0xfffffff7);
        thunk_FUN_0040d040();
      }
      local_14 = 0xffffffff;
      if (((uint)local_28c & 4) != 0) {
        local_28c = (int *)((uint)local_28c & 0xfffffffb);
        thunk_FUN_0040d040();
      }
      if (local_281 != '\0') {
        param_1[0x2d9] = param_1[0x2da];
        param_1[0xdb] = param_1[0xda];
      }
    }
    iVar14 = param_1[10];
    if (iVar14 == 0x391) {
      cVar4 = HELPER_0040b030_AnimationEventPredicateD("Shoot");
      if (cVar4 == '\0') {
        iVar14 = param_1[10];
        goto LAB_006c5752;
      }
      FUN_006d6ba0(0x1e3,0x3f800000,2,0,0x3f800000);
    }
    else {
LAB_006c5752:
      if (((iVar14 == 0x390) && (param_1[0xb] == 0x14)) &&
         (cVar4 = HELPER_0040b030_AnimationEventPredicateD("Shoot"), cVar4 != '\0')) {
        uVar6 = FUN_00407170();
        FUN_00703330(param_1 + 0xcf,4,5,0x40c00000,uVar6,0x47c35000,0x20000);
      }
      else {
        iVar14 = param_1[10];
        if (iVar14 == 0x395) {
          cVar4 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b1d574);
          if (cVar4 != '\0') {
            FUN_00703670(8);
            param_1[0x62] = 4;
            FUN_006b6810(param_1 + 0x79);
            uVar6 = FUN_00a0fe90();
            FUN_006b68c0(param_1 + 0xcf,uVar6);
            FUN_006b6470(0x30,2,0,0x3f800000);
            goto LAB_006c58bd;
          }
          iVar14 = param_1[10];
        }
        if (iVar14 == 0x194) {
          cVar4 = HELPER_0040b030_AnimationEventPredicateD("HoleOpen");
          if (cVar4 != '\0') {
            FUN_009568e0(0x3b3,2,0,0x3f800000);
          }
          cVar4 = HELPER_0040b030_AnimationEventPredicateD("HoleExit");
          if (cVar4 != '\0') {
            FUN_009568e0(0x3b4,2,0,0x3f800000);
          }
        }
      }
    }
LAB_006c58bd:
    if (param_1[0x2d9] == 1) {
      in_XMM0 = ZEXT416((uint)((float)param_1[0xdb] * DAT_00baa06c));
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa06c);
    }
    param_1[0x2dc] = param_1[0x2dc] + 1;
  }
  if (((param_1[0x2d9] == 0x12) || (param_1[0x2d9] == 0x11)) ||
     (((cVar4 = FUN_006c4a90(), cVar4 != '\0' || (param_1[0x2d9] == 1)) &&
      (*(char *)((int)param_1 + 0x173) == '\0')))) {
    cVar4 = FUN_00417430(0x20,0);
    if ((cVar4 != '\0') || (0 < param_1[0xfc])) {
      in_XMM0 = ZEXT416((uint)((float)param_1[0xdb] * DAT_00baa06c));
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa06c);
      if (0 < param_1[0xfc]) {
        cVar4 = FUN_00a10630(&DAT_00c7b640);
        if (cVar4 != '\0') {
          FUN_007dd3b0(param_1 + 0xfd);
        }
      }
    }
LAB_006c87a7:
    fVar18 = in_XMM0._0_4_;
    if (*(char *)((int)param_1 + 0x173) == '\0') goto LAB_006c87b4;
  }
  else {
    cVar4 = FUN_00417430(0x100,0);
    if (cVar4 == '\0') {
      if (param_1[0x2e1] < 0xb5) {
        if (param_1[0x2e1] < -0xb4) {
          param_1[0x2e1] = 0;
        }
      }
      else {
        param_1[0x2e1] = -1;
      }
      FUN_006be840();
      iVar14 = FUN_00417260();
      if ((iVar14 == 3) && (iVar14 = FUN_00417270(), iVar14 == 0x43)) {
        param_1[0x2e1] = param_1[0x2e1] + 1;
      }
      else if (param_1[0x2e1] != 0) {
        param_1[0x2e1] = param_1[0x2e1] + -1;
      }
    }
    if ((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[0x2d9] == 1)) {
      param_1[0xdb] = param_1[0xda];
      param_1[0x2d9] = param_1[0x2da];
      *(undefined *)((int)param_1 + 0x171) = 1;
    }
    if (*(short *)(param_1 + 0x31d) == 0) {
      HELPER_Entity_NPC_Update_dispatcher();
    }
    local_2d8 = (int **)(param_1 + 0x12);
    iVar14 = FUN_0040b1d0("OverlayEffect");
    if ((iVar14 == 0) || (*(char *)(iVar14 + 0xc) != '\0')) {
      local_281 = '\x01';
    }
    else {
      local_281 = '\0';
    }
    if ((((param_1[0x319] == 2) || (param_1[0x319] == 0x19)) && (local_281 != '\0')) &&
       ((cVar4 = FUN_006ac710(7,0), cVar4 != '\0' &&
        (cVar4 = FUN_00417430(0x1000000,0), cVar4 == '\0')))) {
      uVar6 = FUN_006eef60();
      uVar29 = 0;
      pTVar26 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
      pTVar23 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar22 = 0;
      uVar6 = HELPER_Entity_SpawnRelay(1000,0x17,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar6);
      piVar7 = (int *)__RTDynamicCast(uVar6,uVar22,pTVar23,pTVar26,uVar29);
      FUN_00435e90(0x1e);
      (**(code **)(*piVar7 + 0xc))();
    }
    if (param_1[0x319] == 0x18) {
      FUN_00407480();
      cVar4 = FUN_007ea190();
      if ((cVar4 == '\0') && (local_281 != '\0')) {
        cVar4 = FUN_006ac710(3,0);
        if (cVar4 != '\0') {
                    /* WARNING: Load size is inaccurate */
          if ((*(int *)(*ThreadLocalStoragePointer + 0xc) < DAT_00c80e10) &&
             (FUN_00aef29d(&DAT_00c80e10), DAT_00c80e10 == -1)) {
            local_14 = 6;
            FUN_00435b50(0x3f800000,0,0,0,0,0x3e828f5c,0x3e24dd2f,0x3e0c49ba);
            local_14 = 0xffffffff;
            FUN_00aef253(&DAT_00c80e10);
          }
          FUN_0067efe0();
          in_XMM0._0_4_ = in_XMM0._0_4_ * (float)DAT_00baa2d0 + (float)DAT_00baa198;
          piVar7 = (int *)FUN_006b64d0(in_XMM0._0_4_);
          (**(code **)(*piVar7 + 0x3c))(&DAT_00c80e14,0xffffffff,0xff,0,1);
        }
        local_2ac = (int **)FUN_00407480();
        local_2c0 = (int **)FUN_00812c90(param_1 + 0xcf);
        if (local_2c0 != (int **)param_1[0x3d3]) {
          iVar14 = FUN_0067f010();
          if ((iVar14 == 0) && (-1 < param_1[0x3d3])) {
            local_288 = (int **)FUN_00436060(param_1[0x3d3]);
            iVar14 = FUN_007f0800(param_1[0x3d3]);
            if (iVar14 == 0) {
              if (local_288 != (int **)0x0) {
                FUN_004073c0();
                cVar4 = FUN_0070bf80();
                if (cVar4 != '\0') goto LAB_006c6bee;
              }
              FUN_00407480();
              uVar6 = FUN_006eef60();
              FUN_007ebca0(param_1[0x3d3],0xe,0,uVar6,0);
              iVar14 = FUN_00436060(param_1[0x3d3]);
              if ((iVar14 != 0) && (iVar14 = FUN_004073c0(), iVar14 == 0xe)) {
                FUN_00456870();
                FUN_006b8580(1);
                FUN_006b8310(0);
              }
            }
          }
LAB_006c6bee:
          param_1[0x3d3] = (int)local_2c0;
        }
      }
    }
    if (param_1[0x319] == 6) {
      *(undefined *)(param_1 + 0xec) = 0;
      FUN_00417400(1,0);
      FUN_00407480();
      local_2b0 = (int **)FUN_00428a50();
      ppiVar15 = (int **)0x0;
      local_29c = (int **)0x0;
      iVar14 = FUN_004176f0();
      if (iVar14 != 0) {
        do {
          ppiVar15 = (int **)FUN_00417620(ppiVar15);
          piVar7 = *ppiVar15;
          cVar4 = FUN_006ac530();
          if (((cVar4 != '\0') && (cVar4 = (**(code **)(*piVar7 + 0x48))(), cVar4 != '\0')) &&
             ((iVar14 = __RTDynamicCast(piVar7,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                        &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
              *(char *)(iVar14 + 0xc63) == '\0' || (*(int *)(iVar14 + 0xc64) != 6)))) {
            *(undefined *)(param_1 + 0xec) = 1;
            FUN_004173e0(1,0);
          }
          ppiVar15 = (int **)((int)local_29c + 1);
          local_29c = ppiVar15;
          ppiVar8 = (int **)FUN_004176f0();
        } while (ppiVar15 < ppiVar8);
      }
    }
    if ((param_1[0x319] == 9) || (param_1[10] == 0xfc)) {
      switch(param_1[0x31b]) {
      case 0:
        iVar14 = param_1[0x31a];
        param_1[0x31a] = iVar14 + -1;
        if (iVar14 < 0) {
          param_1[0x31b] = 1;
        }
        break;
      case 1:
        if ((float)param_1[0x31c] <= DAT_00ba9fe4) {
          param_1[0x31b] = 3;
LAB_006c6d40:
          iVar14 = FUN_0067f010();
          param_1[0x31a] = iVar14 + 0x3c;
        }
        else {
          param_1[0x31c] = (int)((float)param_1[0x31c] - DAT_00baa0d0);
        }
        break;
      case 2:
        if ((float)DAT_00baa454 <= (float)param_1[0x31c]) {
          param_1[0x31b] = 0;
          goto LAB_006c6d40;
        }
        param_1[0x31c] = (int)((float)param_1[0x31c] + DAT_00baa0d0);
        break;
      case 3:
        iVar14 = param_1[0x31a];
        *(undefined *)((int)param_1 + 0x171) = 0;
        param_1[0x31a] = iVar14 + -1;
        if (iVar14 < 0) {
          *(undefined *)((int)param_1 + 0x171) = 1;
          param_1[0x31b] = 2;
        }
      }
      uVar6 = FUN_00407410();
      FUN_004071c0(uVar6);
      in_XMM0 = ZEXT416((uint)param_1[0x31c]);
      FUN_00407280(param_1[0x31c]);
      FUN_004073d0(local_a0);
    }
    iVar14 = param_1[0x319];
    if (iVar14 == 8) {
      param_1[0x61] = 3;
    }
    else if ((((iVar14 == 10) || (iVar14 == 0x19)) &&
             (param_1[0x2ea] = param_1[0x2ea] + -1, param_1[0x2ea] < 1)) &&
            ((local_281 != '\0' && (cVar4 = FUN_00417430(0x1000000,0), cVar4 == '\0')))) {
      fVar17 = (float10)FUN_00a0fea0();
      local_300 = DAT_00c7b640;
      local_29c = (int **)(float)fVar17;
      local_2fc = DAT_00c7b644;
      in_XMM0 = ZEXT416(local_29c);
      if (DAT_00ba9fe4 < (float)local_29c) {
        uVar6 = FUN_00a105a0(local_2e0,&local_29c);
        FUN_007dd3b0(uVar6);
        iVar14 = FUN_0067f010();
        param_1[0x2ea] = iVar14 + 0x28;
        AI_0043ef30();
        puVar27 = local_228;
        local_21c = 0.3;
        uVar22 = 0;
        local_220 = 0xc0a00000;
        local_288 = (int **)0x40a00000;
        uVar6 = FUN_00a104e0(local_2e0,&local_288);
        HELPER_Entity_NPC_FireProjectiles(param_1 + 0xcf,uVar6,uVar22,puVar27);
        FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
      }
    }
    if (((param_1[0x319] == 0xb) || (param_1[0x319] == 0x19)) && (local_281 != '\0')) {
      FUN_00407480();
      local_2c4 = (int **)FUN_00428a50();
      ppiVar15 = (int **)0x0;
      local_2b0 = (int **)0x0;
      iVar14 = FUN_004176f0();
      if (iVar14 != 0) {
        do {
          FUN_00417620(ppiVar15);
          iVar14 = FUN_00417260();
          if ((iVar14 == 1) || (iVar14 = FUN_00417260(), iVar14 == 2)) {
            uVar6 = FUN_00417290(local_2e0);
            FUN_00a10480(&local_298,uVar6);
            FUN_00a0ffc0();
            local_2a4 = (int *)0x3f666666;
            iVar14 = FUN_00417260();
            if (iVar14 == 1) {
              local_2a4 = (int *)0x3f4ccccd;
            }
            uVar6 = FUN_00417290(local_2e8);
            FUN_00a10480(&local_2d0,uVar6);
            fVar17 = (float10)FUN_00a0fea0();
            local_2ac = (int **)0x0;
            local_288 = (int **)(((DAT_00baab08 - (float)fVar17) * (float)local_2a4) / DAT_00baab08)
            ;
            in_XMM0 = ZEXT416(local_288);
            FUN_0041cb70();
            uVar6 = FUN_0040c780();
            FUN_00a10540(uVar6);
            FUN_004314b0(&local_298,0);
          }
          ppiVar15 = (int **)((int)local_2b0 + 1);
          local_2b0 = ppiVar15;
          ppiVar8 = (int **)FUN_004176f0();
        } while (ppiVar15 < ppiVar8);
      }
    }
    iVar14 = param_1[0x319];
    if (iVar14 == 0xc) {
      if (*(char *)((int)param_1 + 0x173) == '\0') {
        if (*(short *)(param_1 + 0x31d) != 0) goto LAB_006c7154;
      }
      else if (*(short *)(param_1 + 0x31d) == 0) {
        *(short *)((int)param_1 + 0xc76) = *(short *)((int)param_1 + 0xc76) + 1;
        *(undefined2 *)(param_1 + 0x31d) = 1;
        *(undefined *)((int)param_1 + 0x173) = 0;
        param_1[0xe0] = 0x41200000;
        *(undefined *)(param_1 + 0xec) = 0;
        param_1[0x62] = 4;
        if (param_1[0x61] == 0) {
          param_1[0x61] = 3;
        }
        param_1[0x3c6] = param_1[0x3c6] << 0x10;
      }
      else {
LAB_006c7154:
        in_XMM0 = ZEXT416((uint)((float)param_1[0xdb] * DAT_00baa3a4));
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
        ppiVar15 = (int **)FUN_00435db0();
        local_288 = ppiVar15;
        if (0 < (int)ppiVar15) {
          do {
            *(short *)(param_1 + 0x31d) = *(short *)(param_1 + 0x31d) + 1;
            sVar1 = *(short *)(param_1 + 0x31d);
            if ((sVar1 < 6) || ((0x50 < sVar1 && (sVar1 < 0x56)))) {
              fVar17 = (float10)FUN_004567a0();
              FUN_006d6610((float)(fVar17 * (float10)(float)DAT_00baa2d0));
              if ((4 < *(short *)(param_1 + 0x31d)) &&
                 ((int)*(short *)(param_1 + 0x31d) - (int)local_288 < 5)) {
                FUN_0040c340("gfx/024.000_Globin.anm2");
                local_14 = 7;
                FUN_0040bd50(local_3c,1);
                local_14 = 0xffffffff;
                thunk_FUN_0040d040();
                HELPER_0040a380_AnimationActionA("ReGenChamp",1);
LAB_006c7308:
                (**(code **)(*param_1 + 0x60))();
              }
            }
            else if ((sVar1 < 10) || (0x55 < sVar1)) {
              fVar17 = (float10)FUN_004567a0();
              FUN_006d6610((float)(fVar17 * (float10)DAT_00baa630));
              if (0x59 < *(short *)(param_1 + 0x31d)) {
                FUN_006baf40(1);
                param_1[0x2d9] = 1;
                *(undefined2 *)(param_1 + 0x31d) = 0;
                param_1[0xdb] = param_1[0xda];
                param_1[0x3c6] = (uint)*(ushort *)((int)param_1 + 0xf1a);
                iVar14 = param_1[10];
                if ((((iVar14 == 0x22) || (iVar14 == 0x56)) || (iVar14 == 0x36)) ||
                   ((iVar14 == 0xf6 || (iVar14 == 0x1d)))) {
                  FUN_007dd3b0(&DAT_00c7b640);
                }
                else if (iVar14 == 0x379) {
                  FUN_007dd3b0(&DAT_00c7b640);
                  FUN_00417400(0x11,8);
                  *(undefined *)(param_1 + 0xec) = 0;
                  FUN_007e3260();
                  goto LAB_006c7308;
                }
                FUN_007e3260();
                goto LAB_006c7308;
              }
            }
            ppiVar15 = (int **)((int)ppiVar15 + -1);
          } while (ppiVar15 != (int **)0x0);
        }
      }
    }
    else if (iVar14 == 0xe) {
      FUN_0067f310(1);
      FUN_00407480();
      uVar6 = FUN_006b83e0();
      FUN_00a104b0(uVar6);
      FUN_00407480();
      FUN_004177e0(local_2e8);
      local_14 = 8;
      piVar7 = (int *)FUN_0040c3a0();
      pcVar2 = *(code **)(*piVar7 + 0x2c);
      uVar6 = FUN_00aefca0();
      uVar6 = FUN_00aefca0(uVar6);
      (*pcVar2)(&local_60,uVar6);
      local_14 = 0xffffffff;
      FUN_0041c710();
      uVar6 = FUN_00407410();
      FUN_004071c0(uVar6);
      local_288 = (int **)(local_58 * DAT_00baa3e0);
      fVar17 = (float10)FUN_004072d0();
      local_2ac = (int **)(float)fVar17;
      ppiVar15 = local_2ac;
      FUN_00a155c0();
      local_2c0 = ppiVar15;
      local_288 = (int **)(local_5c * DAT_00baa3e0);
      fVar17 = (float10)FUN_004072c0();
      local_2ac = (int **)(float)fVar17;
      ppiVar15 = local_2ac;
      FUN_00a155c0();
      local_2d8 = ppiVar15;
      local_288 = (int **)(local_60 * DAT_00baa3e0);
      fVar17 = (float10)FUN_004072b0();
      local_2ac = (int **)(float)fVar17;
      in_XMM0 = ZEXT416(local_2ac);
      FUN_00a155c0();
      uVar6 = FUN_0040d0e0(0x3f800000,in_XMM0._0_4_,local_2d8,local_2c0);
      FUN_004073d0(uVar6);
      param_1 = local_2bc;
    }
    else if ((iVar14 == 0xf) || (iVar14 == 0x10)) {
      FUN_00407480();
      FUN_00813ce0();
      FUN_00417160();
      ppiVar15 = (int **)0x0;
      FUN_0042f2a0();
      local_2b0 = ppiVar15;
      FUN_00407480();
      FUN_00813ce0();
      FUN_00417160();
      uVar6 = 0;
      FUN_0042f2a0();
      iVar14 = param_1[0x319];
      uVar6 = FUN_00407170(uVar6);
      uVar6 = FUN_006832e0(local_150,&DAT_00c354d4 + iVar14 * 0x40,uVar6);
      FUN_004073d0(uVar6);
      FUN_004476a0(&DAT_00c354c0 + param_1[0x319] * 0x40);
      fVar17 = (float10)FUN_00407260();
      local_298 = CONCAT44((float)fVar17,(int **)local_298);
      fVar17 = (float10)FUN_00407250();
      local_2b4 = (int *)(float)fVar17;
      fVar17 = (float10)FUN_00407240();
      in_XMM0 = ZEXT416((uint)((float)DAT_00baa454 - (float)local_2b0));
      local_2ec = (int *)(float)fVar17;
      uVar6 = FUN_004238f0((float)DAT_00baa454 - (float)local_2b0);
      FUN_006b82b0(uVar6);
      if ((param_1[0x319] == 0x10) &&
         (in_XMM0 = ZEXT416(local_2b0), (float)local_2b0 < DAT_00baa280)) {
        FUN_00a15640(0);
        local_2b4 = in_XMM0._0_4_;
        FUN_00407480();
        FUN_00428a60();
        piVar7 = param_1 + 0xcf;
        local_2ec = piVar7;
        FUN_0041a790(local_318,piVar7,4);
        local_14 = 9;
        iVar14 = FUN_004176f0();
        if (iVar14 != 0) {
          uVar16 = 0;
          do {
            FUN_00417620(uVar16);
            iVar14 = FUN_00417260();
            if (iVar14 == 2) {
              FUN_00417620(uVar16);
              FUN_00417290(local_54);
              FUN_00a10480(local_2e8,piVar7);
              FUN_00417620(uVar16);
              fVar17 = (float10)FUN_00a0fed0();
              fVar18 = (float)((float10)1 - fVar17 / (float10)DAT_00baac34);
              local_298 = CONCAT44(fVar18,(int **)local_298);
              fVar18 = (fVar18 + fVar18) * (float)local_2b4;
              in_XMM0 = ZEXT416((uint)fVar18);
              uVar6 = FUN_00a10100(local_2f8,fVar18);
              FUN_004314b0(uVar6,0);
              piVar7 = local_2ec;
            }
            uVar16 = uVar16 + 1;
            uVar10 = FUN_004176f0();
            param_1 = local_2bc;
          } while (uVar16 < uVar10);
        }
        local_14 = 0xffffffff;
        FUN_004175b0();
      }
    }
    else if (iVar14 == 0x14) {
      FUN_00407480();
      FUN_00813ce0();
      FUN_00417160();
      ppiVar15 = (int **)0x0;
      FUN_0042f2a0();
      local_288 = ppiVar15;
      FUN_00407480();
      FUN_00813ce0();
      FUN_00417160();
      uVar6 = 0;
      FUN_0042f2a0();
      iVar14 = param_1[0x319];
      uVar6 = FUN_00407170(uVar6);
      uVar6 = FUN_006832e0(local_cc,&DAT_00c354d4 + iVar14 * 0x40,uVar6);
      FUN_004073d0(uVar6);
      FUN_004476a0(&DAT_00c354c0 + param_1[0x319] * 0x40);
      fVar17 = (float10)FUN_00407260();
      local_2ac = (int **)(float)fVar17;
      fVar17 = (float10)FUN_00407250();
      local_2c0 = (int **)(float)fVar17;
      fVar17 = (float10)FUN_00407240();
      in_XMM0 = ZEXT416((uint)((float)DAT_00baa454 - (float)local_288));
      local_2d8 = (int **)(float)fVar17;
      uVar6 = FUN_004238f0((float)DAT_00baa454 - (float)local_288);
      FUN_006b82b0(uVar6);
      cVar4 = FUN_006ac710(0x1e,param_1[8]);
      if (cVar4 != '\0') {
        FUN_00407480();
        local_290 = (char *)FUN_00428a50();
        local_281 = '\0';
        piVar7 = (int *)0x0;
        local_2a0 = (int *)0x0;
        iVar14 = FUN_004176f0();
        if (iVar14 != 0) {
          do {
            FUN_00417620(piVar7);
            cVar4 = FUN_006b5b90(0);
            if ((cVar4 != '\0') && (ppiVar15 = (int **)FUN_00417620(piVar7), *ppiVar15 != param_1))
            {
              FUN_00417620(piVar7);
              local_2a5 = FUN_00417430(0x20000100,0);
              cVar4 = FUN_00417430(0x20000000,0);
              piVar7 = local_2a0;
              if (cVar4 == local_2a5) {
                puVar13 = (undefined4 *)FUN_00417620(local_2a0);
                iVar14 = __RTDynamicCast(*puVar13,0,
                                         &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                         &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
                if (*(int *)(iVar14 + 0xc64) != 0x14) {
                  FUN_00417620(piVar7);
                  fVar17 = (float10)FUN_00417370();
                  local_2ac = (int **)(float)fVar17;
                  FUN_00417620(piVar7);
                  fVar17 = (float10)FUN_00417360();
                  local_288 = (int **)(float)fVar17;
                  in_XMM0 = ZEXT416(local_288);
                  if ((float)local_2ac < (float)local_288) {
                    FUN_00417620(piVar7);
                    cVar4 = FUN_00417220(0x325,0xffffffff,0xffffffff);
                    if (cVar4 == '\0') {
                      FUN_00417620(piVar7);
                      FUN_00417620(local_2a0);
                      fVar17 = (float10)FUN_00417370();
                      local_2c0 = (int **)(float)(fVar17 + (float10)DAT_00baa87c);
                      FUN_00417620(local_2a0);
                      fVar17 = (float10)FUN_00417360();
                      local_2d8 = (int **)(float)fVar17;
                      puVar13 = (undefined4 *)FUN_0040c780();
                      FUN_00435d20(*puVar13);
                      uVar6 = FUN_006eef60();
                      FUN_00417620(local_2a0);
                      uVar22 = FUN_00417290(local_36c);
                      uVar30 = 0;
                      pTVar26 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
                      pTVar23 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
                      uVar29 = 0;
                      uVar6 = HELPER_Entity_SpawnRelay(1000,0x31,uVar22,&DAT_00c7b640,0,0,uVar6);
                      __RTDynamicCast(uVar6,uVar29,pTVar23,pTVar26,uVar30);
                      piVar7 = local_2a0;
                      FUN_00417620(local_2a0);
                      FUN_00417290(local_374);
                      local_2a4 = param_1 + 0xcf;
                      FUN_00a10480(local_2e8,local_2a4);
                      local_288 = (int **)0x3dcccccd;
                      FUN_00a104e0(&local_2d0,&local_288);
                      fVar17 = (float10)FUN_00a0fea0();
                      local_288 = (int **)(float)fVar17;
                      if (DAT_00baa75c < (float)local_288) {
                        FUN_00a100b0(0x40800000);
                      }
                      local_2c4 = (int **)0xc;
                      local_2ac = (int **)&DAT_00000004;
                      fVar17 = (float10)FUN_00a0fea0();
                      ppiVar15 = (int **)(float)(fVar17 / (float10)DAT_00baa87c);
                      local_288 = ppiVar15;
                      FUN_00407140();
                      local_2b0 = (int **)(int)(float)ppiVar15;
                      FUN_0041cb80();
                      ppiVar15 = (int **)FUN_0041cb60();
                      local_2b4 = *ppiVar15;
                      if (0 < (int)local_2b4) {
                        local_2c4 = (int **)(param_1 + 0xd3);
                        local_298 = CONCAT44((float)((int)local_2b4 + 1),(int **)local_298);
                        local_2ec = (int *)0x0;
                        fVar18 = (float)((int)local_2b4 + 1);
                        do {
                          local_2ec = (int *)((int)local_2ec + 1);
                          ppiVar15 = (int **)((float)(int)local_2ec / fVar18);
                          local_2ac = ppiVar15;
                          local_288 = ppiVar15;
                          FUN_00417620(piVar7);
                          uVar6 = FUN_00417290(local_344);
                          FUN_00a101c0(uVar6,0);
                          FUN_0067f070(local_354);
                          FUN_0067efe0();
                          local_324 = ppiVar15;
                          FUN_00a104e0(local_35c,&local_324);
                          local_338 = 0x41700000;
                          uVar6 = FUN_00a104e0(local_364,&local_338);
                          FUN_00a10420(local_2e0,uVar6);
                          uVar6 = FUN_006eef60();
                          FUN_0067efe0();
                          local_31c = (float)ppiVar15 * (float)DAT_00baa2d0 + (float)DAT_00baa2d0;
                          uVar22 = FUN_00a104e0(local_32c,&local_31c);
                          piVar7 = (int *)HELPER_Entity_SpawnRelay
                                                    (1000,0x6f,local_2e0,uVar22,0,0,uVar6);
                          pcVar2 = *(code **)(*piVar7 + 0x3c);
                          ppiVar15 = DAT_00baa454;
                          uVar6 = FUN_00435b50(0x3f800000,0,0,0,0,0x3e99999a,0,0);
                          (*pcVar2)(uVar6,0xffffffff,0xff,0,1);
                          FUN_00a104e0(local_334,&local_2ac);
                          FUN_0067efe0();
                          local_304 = (float)ppiVar15 * DAT_00baa1f8 + DAT_00baa1f8;
                          uVar6 = FUN_00a104e0(local_310,&local_304);
                          FUN_0042d9b0(uVar6);
                          FUN_00435dd0();
                          FUN_00417200();
                          uVar6 = FUN_00a0fe90();
                          uVar6 = FUN_00a10420(local_54,uVar6);
                          FUN_004172f0(uVar6);
                          piVar7 = local_2a0;
                          fVar18 = (float)local_298._4_4_;
                        } while ((int)local_2ec < (int)local_2b4);
                      }
                      local_281 = '\x01';
                      ppiVar15 = (int **)FUN_00417620(piVar7);
                      in_XMM0 = ZEXT416(DAT_00baa354);
                      pcVar2 = *(code **)(**ppiVar15 + 0x3c);
                      uVar6 = FUN_00435b50(0x3f800000,0,0,0,0,0x3f333333,0,0);
                      (*pcVar2)(uVar6,8,0xff,1,1);
                      piVar7 = local_2a0;
                      param_1 = local_2bc;
                    }
                  }
                }
              }
            }
            piVar7 = (int *)((int)piVar7 + 1);
            local_2a0 = piVar7;
            piVar9 = (int *)FUN_004176f0();
          } while (piVar7 < piVar9);
          if (local_281 != '\0') {
            in_XMM0 = ZEXT416(DAT_00baa354);
            pcVar2 = *(code **)(*param_1 + 0x3c);
            uVar6 = FUN_00435b50(0x3f800000,0,0,0,0,0x3f333333,0,0);
            (*pcVar2)(uVar6,8,0xff,1,1);
            FUN_006b6470(0x9d,2,0,0x3f800000);
          }
        }
      }
    }
    else if (iVar14 == 0x16) {
      cVar4 = FUN_006ac710(0x1e,param_1[8]);
      if (cVar4 != '\0') {
        FUN_00407480();
        local_2a0 = (int *)FUN_00428a50();
        uVar16 = 0;
        iVar14 = FUN_004176f0();
        if (iVar14 != 0) {
          do {
            FUN_00417620(uVar16);
            cVar4 = FUN_006b5b90(0);
            if (cVar4 != '\0') {
              ppiVar15 = (int **)FUN_00417620(uVar16);
              cVar4 = (**(code **)(**ppiVar15 + 0x4c))();
              if ((cVar4 == '\0') && (ppiVar15 = (int **)FUN_00417620(uVar16), *ppiVar15 != param_1)
                 ) {
                puVar13 = (undefined4 *)FUN_00417620(uVar16);
                piVar7 = (int *)__RTDynamicCast(*puVar13,0,
                                                &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                                &IsaacRepentancePlus::Entity_NPC::
                                                 RTTI_Type_Descriptor,0);
                if ((piVar7 != (int *)0x0) && (*(char *)((int)piVar7 + 0xc63) == '\0')) {
                  *(undefined *)((int)piVar7 + 0xc63) = 1;
                  piVar7[0x319] = 1;
                  (**(code **)(*piVar7 + 0x60))();
                }
              }
            }
            uVar16 = uVar16 + 1;
            uVar10 = FUN_004176f0();
          } while (uVar16 < uVar10);
        }
      }
    }
    else if ((iVar14 == 0x15) && (0 < param_1[0x2ea])) {
      param_1[0x2ea] = param_1[0x2ea] + -1;
    }
    if (param_1[0x319] == 0x19) {
      FUN_00407480();
      FUN_00813ce0();
      FUN_00684b90(0x3f800000);
      uVar6 = FUN_004238f0(0x3f800000);
      FUN_006b82b0(uVar6);
    }
    cVar4 = FUN_00417430(0x1000000,0);
    if ((cVar4 != '\0') && (param_1[0x8f] - 1U < 0x3b)) {
      FUN_00407480();
      FUN_00813ce0();
      FUN_00417160();
      FUN_0042f2a0();
      FUN_00407480();
      FUN_00813ce0();
      FUN_00417160();
      uVar6 = 0;
      FUN_0042f2a0();
      local_298 = CONCAT44(uVar6,(int **)local_298);
      FUN_00435ad0(0x3f800000,0x3c,0x3c,0x3c);
      in_XMM0 = ZEXT416(local_298._4_4_);
      uVar6 = FUN_00407170(local_298._4_4_);
      uVar6 = FUN_006832e0(local_254,local_a0,uVar6);
      FUN_004073d0(uVar6);
    }
    FUN_00407480();
    cVar4 = FUN_006b8440();
    if (cVar4 != '\0') {
      if ((((*(char *)((int)param_1 + 0x173) == '\0') && (*(char *)((int)param_1 + 0xc3d) == '\0'))
          && (cVar4 = FUN_006ac6c0(), cVar4 == '\0')) && (param_1[0x61] != 6)) {
        uVar6 = 1;
      }
      else {
        uVar6 = 0;
      }
      uVar22 = 0;
      if (param_1[10] != 0x376) {
        uVar22 = uVar6;
      }
      local_298 = CONCAT44(uVar22,(int **)local_298);
      FUN_00407480();
      iVar14 = FUN_00813ce0();
      if ((uint)(iVar14 + param_1[8]) % 0x3c == 0) {
        FUN_00407480();
        iVar14 = FUN_00813ce0();
        if ((900 < iVar14) && (local_298._4_1_ != '\0')) {
          FUN_00407480();
          iVar14 = FUN_0043eec0();
          if (iVar14 == 1) {
            FUN_00407480();
            cVar4 = FUN_00436080();
            if (cVar4 == '\0') {
              FUN_00417860();
              cVar4 = FUN_009be9c0();
              if (cVar4 == '\0') {
                ppiVar15 = (int **)0x0;
                local_29c = (int **)0x0;
                iVar14 = FUN_004178d0();
                if (iVar14 != 0) {
                  do {
                    uVar6 = FUN_00417870(ppiVar15);
                    local_298 = CONCAT44(uVar6,(int **)local_298);
                    cVar4 = FUN_006ac6c0();
                    if (cVar4 == '\0') {
                      uVar22 = 1;
                      uVar6 = FUN_00417290(local_54);
                      cVar4 = FUN_007e7070(uVar6,uVar22);
                      ppiVar15 = local_29c;
                      if (cVar4 != '\0') goto LAB_006c8453;
                    }
                    ppiVar15 = (int **)((int)ppiVar15 + 1);
                    local_29c = ppiVar15;
                    ppiVar8 = (int **)FUN_004178d0();
                  } while (ppiVar15 < ppiVar8);
                }
                if (*(char *)((int)param_1 + 0xc3e) == '\0') {
                  *(undefined *)((int)param_1 + 0xc3e) = 1;
                }
                else {
                  *(undefined *)(param_1 + 0x30f) = 0;
                }
              }
            }
          }
        }
      }
    }
LAB_006c8453:
    if (*(char *)((int)param_1 + 0x173) != '\0') {
      if (*(char *)((int)param_1 + 0x172) != '\0') {
        FUN_006d4e00();
        cVar4 = FUN_00417430(0x400,0);
        if ((cVar4 != '\0') && (cVar4 = FUN_00417430(0,0x400), cVar4 == '\0')) {
          local_2b4 = param_1 + 0xcf;
          iVar14 = FUN_00703ab0(local_2b4,1,0,1);
          if ((iVar14 == 0) || (iVar14 = FUN_007cafe0(), iVar14 != 3)) {
            iVar14 = FUN_0067f010();
            local_2a4 = (int *)(iVar14 + 1);
          }
          else {
            local_2a4 = (int *)FUN_0067f010();
          }
          if (0 < (int)local_2a4) {
            do {
              uVar6 = FUN_006eef60();
              FUN_0067f070(local_2f8);
              FUN_0067efe0();
              in_XMM0._0_4_ = in_XMM0._0_4_ * DAT_00baa6fc;
              local_298 = CONCAT44(in_XMM0._0_4_,(int **)local_298);
              uVar22 = FUN_00a104e0(local_310,(int)&local_298 + 4);
              HELPER_Entity_SpawnRelay(5,0x14,local_2b4,uVar22,0,1,uVar6);
              local_2a4 = (int *)((int)local_2a4 + -1);
            } while (local_2a4 != (int *)0x0);
            local_2a4 = (int *)0x0;
            param_1 = local_2bc;
          }
        }
        cVar4 = FUN_00417430(0x40000,0);
        if (cVar4 == '\0') {
          FUN_006bbdc0();
          uVar16 = 0;
          iVar14 = FUN_004178d0();
          if (iVar14 != 0) {
            do {
              FUN_00417870(uVar16);
              FUN_007a0080(param_1);
              uVar16 = uVar16 + 1;
              uVar10 = FUN_004178d0();
            } while (uVar16 < uVar10);
          }
        }
        FUN_006d5350();
        if ((*(char *)((int)param_1 + 0xc3d) == '\0') && (param_1[10] != 0x1c)) {
          FUN_006d5400();
        }
        else {
          param_1[0x2d9] = 0x12;
          param_1[0x104] = 0;
        }
        FUN_00407480();
        cVar4 = FUN_007ea190();
        if ((cVar4 != '\0') && (cVar4 = FUN_006ac6c0(), cVar4 == '\0')) {
          FUN_00407480();
          iVar14 = FUN_00456620(param_1 + 0xcf);
          if ((iVar14 != 0) && (iVar14 = FUN_004073c0(), iVar14 == 0x13)) {
            param_1[0xd9] = (int)((float)param_1[0xd9] * (float)DAT_00baa2d0);
            if ((float)param_1[0xd8] <= 0.0) {
              if ((float)param_1[0xd8] < 0.0) {
                fVar17 = (float10)FUN_00a0fea0();
                local_298 = CONCAT44((float)fVar17,(int **)local_298);
                param_1[0xd8] = (uint)(float)fVar17 ^ DAT_00bacb70;
              }
            }
            else {
              fVar17 = (float10)FUN_00a0fea0();
              param_1[0xd8] = (int)(float)fVar17;
            }
            param_1[0xd9] = 0;
            FUN_00407480();
            uVar6 = FUN_00a0fe90();
            pfVar11 = (float *)FUN_00a10420(local_310,uVar6);
            local_2d0 = *pfVar11;
            local_2cc = pfVar11[1];
            in_XMM0 = ZEXT416((uint)local_2cc);
            iVar14 = FUN_007f0780(local_2d0,local_2cc);
            if (iVar14 != 4) {
              uVar22 = 0;
              uVar6 = FUN_00a0fe90(0);
              FUN_004314b0(uVar6,uVar22);
            }
          }
        }
      }
      goto LAB_006c87a7;
    }
LAB_006c87b4:
    fVar18 = in_XMM0._0_4_;
    if ((((param_1[0x2d9] != 0x12) && (param_1[0x2d9] != 0x11)) &&
        (cVar4 = FUN_004567b0(), cVar4 == '\0')) &&
       (cVar4 = HELPER_Entity_DamageFilter(0), cVar4 != '\0')) {
      ppiVar15 = (int **)0x0;
      local_2d8 = DAT_00baacb8;
      local_2c0 = DAT_00baacb8;
      auVar19 = ZEXT416(DAT_00baac24);
      local_2c4 = (int **)0x0;
      local_288 = (int **)0x0;
      local_29c = (int **)0x0;
      local_2b0 = DAT_00baac24;
      local_2ac = (int **)0x0;
      iVar14 = FUN_004178d0();
      fVar18 = auVar19._0_4_;
      if (iVar14 != 0) {
        do {
          ppiVar15 = (int **)FUN_00417870(ppiVar15);
          FUN_0042a020();
          uVar5 = FUN_007706e0(0x14f,0);
          FUN_006da770(local_2e0,0);
          FUN_006da710(local_298._4_4_);
          _guard_check_icall();
          uVar5 = FUN_00771550(0x44,0);
          local_2b4 = (int *)CONCAT31(local_2b4._1_3_,uVar5);
          FUN_006da770(local_2e8,1);
          FUN_006da710(local_2b4);
          _guard_check_icall();
          uVar5 = FUN_007706e0(0x2b8,0);
          local_2ec = (int *)CONCAT31(local_2ec._1_3_,uVar5);
          FUN_006da770(&local_2d0,2);
          FUN_006da710(local_2ec);
          _guard_check_icall();
          cVar4 = FUN_006da750();
          if (cVar4 != '\0') {
            FUN_00417290(local_32c);
            fVar17 = (float10)FUN_00a0ff90(param_1 + 0xcf);
            local_290 = (char *)(float)fVar17;
            FUN_006da770(&local_300,0);
            local_28c = (int *)((uint)local_28c | 0x10);
            cVar4 = FUN_006da6f0();
            if ((cVar4 == '\0') || (local_281 = '\x01', (float)local_2b0 <= (float)local_290)) {
              local_281 = '\0';
            }
            if (((uint)local_28c & 0x10) != 0) {
              local_28c = (int *)((uint)local_28c & 0xffffffef);
              _guard_check_icall();
            }
            auVar19 = ZEXT416(local_290);
            if (local_281 != '\0') {
              local_2b0 = (int **)local_290;
              local_2c4 = ppiVar15;
            }
            FUN_006da770(local_308,1);
            local_28c = (int *)((uint)local_28c | 0x20);
            cVar4 = FUN_006da6f0();
            if (cVar4 == '\0') {
LAB_006c8a1f:
              local_281 = '\0';
            }
            else {
              auVar19 = ZEXT416(local_2d8);
              local_281 = '\x01';
              if ((float)local_2d8 <= (float)local_290) goto LAB_006c8a1f;
            }
            if (((uint)local_28c & 0x20) != 0) {
              local_28c = (int *)((uint)local_28c & 0xffffffdf);
              _guard_check_icall();
            }
            if (local_281 != '\0') {
              auVar19 = ZEXT416(local_290);
              local_2d8 = (int **)local_290;
              local_288 = ppiVar15;
            }
            FUN_006da770(local_320,2);
            local_14 = 10;
            local_2a4 = (int *)((uint)local_28c | 0x40);
            local_28c = local_2a4;
            cVar4 = FUN_006da6f0();
            if ((cVar4 == '\0') ||
               (auVar19 = ZEXT416(local_2c0), (float)local_2c0 <= (float)local_290)) {
LAB_006c8ae8:
              local_281 = '\0';
            }
            else {
              FUN_007d4340();
              auVar19._0_4_ = auVar19._0_4_ * DAT_00baa97c + (float)param_1[0xdc];
              FUN_006daa90();
              local_281 = '\x01';
              if (auVar19._0_8_ <= (double)(float)local_290) goto LAB_006c8ae8;
            }
            local_14 = 0xffffffff;
            if (((uint)local_28c & 0x40) != 0) {
              local_28c = (int *)((uint)local_28c & 0xffffffbf);
              _guard_check_icall();
            }
            if (local_281 != '\0') {
              auVar19 = ZEXT416(local_290);
              local_2c0 = (int **)local_290;
              local_29c = ppiVar15;
            }
          }
          ppiVar15 = (int **)((int)local_2ac + 1);
          local_2ac = ppiVar15;
          ppiVar8 = (int **)FUN_004178d0();
          fVar18 = auVar19._0_4_;
        } while (ppiVar15 < ppiVar8);
        if ((local_2c4 != (int **)0x0) && (iVar14 = FUN_0067f010(), iVar14 == 0)) {
          uVar6 = FUN_00417290(local_32c);
          FUN_00a10480(local_364,uVar6);
          ppiVar15 = local_2b0;
          FUN_00435a50();
          local_298._4_4_ = (int *)(DAT_00baa9a0 - (float)ppiVar15);
          FUN_0067efe0();
          param_1 = local_2bc;
          local_2b4 = (int *)((float)ppiVar15 * (float)local_298._4_4_ * DAT_00baa120);
          fVar17 = (float10)FUN_00a0fea0();
          local_298 = CONCAT44((float)fVar17,(int **)local_298);
          fVar18 = (float)fVar17 * (float)local_2b4 * (float)DAT_00baa198 + DAT_00baa0d0;
          uVar6 = FUN_00a10100(local_35c,fVar18);
          FUN_00a10450(uVar6);
        }
        if ((local_288 != (int **)0x0) && (iVar14 = FUN_0067f010(), iVar14 == 0)) {
          FUN_00417290(local_354);
          FUN_00a10480(local_34c,param_1 + 0xcf);
          uVar6 = FUN_00a10100(local_344,0x3f000000);
          FUN_00a10450(uVar6);
        }
        ppiVar15 = local_29c;
        if (local_29c != (int **)0x0) {
          iVar14 = FUN_0040c3a0();
          if (iVar14 == 0) {
            uVar6 = FUN_006eef60();
            piVar7 = (int *)HELPER_Entity_SpawnRelay
                                      (1000,0x13,param_1 + 0xcf,&DAT_00c7b640,ppiVar15,3,uVar6);
            FUN_006a9320(param_1);
            FUN_006a92a0(local_29c);
            (**(code **)(*piVar7 + 0x40))(0x40600000);
            (**(code **)(*piVar7 + 0xc))();
            FUN_004cf1d0(piVar7);
          }
          iVar14 = FUN_0040c3a0();
          if (iVar14 != 0) {
            FUN_0040c3a0();
            FUN_00435e60(1);
          }
        }
      }
    }
  }
  FUN_00407480();
  iVar14 = FUN_00813ce0();
  if ((iVar14 == 0) && (cVar4 = HELPER_Entity_DamageFilter(0), cVar4 != '\0')) {
    FUN_00417860();
    local_2b4 = (int *)FUN_009be080(0x15e,0,0);
    if (local_2b4 != (int *)0x0) {
      FUN_00431310(local_2b4);
      FUN_006ad500(local_4c,0xffffffd8,0,0);
    }
    FUN_00417860();
    iVar14 = FUN_009be6b0(0x87);
    if (iVar14 != 0) {
      local_29c = DAT_00baa198;
      ppiVar8 = DAT_00baa198;
      iVar12 = FUN_007cb6e0(0x87);
      ppiVar15 = DAT_00baa220;
      if ((iVar12 == 2) || (ppiVar15 = DAT_00baa2d0, iVar12 == 3)) {
        local_29c = ppiVar15;
        ppiVar8 = ppiVar15;
      }
      FUN_007e8f90(param_1[0xfb],5);
      local_14 = 0xb;
      fVar17 = (float10)FUN_007e9080();
      local_298 = CONCAT44((float)fVar17,(int **)local_298);
      FUN_00665c00();
      fVar18 = (float)ppiVar8 * DAT_00baa08c + (float)local_29c;
      local_14 = 0xffffffff;
      local_2a5 = (float)local_298._4_4_ < fVar18;
      _guard_check_icall();
      if (local_2a5 != '\0') {
        FUN_00431310(iVar14);
        FUN_006ae280(local_4c,0xffffffa6,0,0);
      }
    }
    FUN_00417860();
    iVar14 = FUN_009be6b0(0xbc);
    if (iVar14 != 0) {
      local_29c = DAT_00baa198;
      ppiVar8 = DAT_00baa198;
      iVar14 = FUN_007cb6e0(0xbc);
      ppiVar15 = DAT_00baa220;
      if ((iVar14 == 2) || (ppiVar15 = DAT_00baa2d0, iVar14 == 3)) {
        local_29c = ppiVar15;
        ppiVar8 = ppiVar15;
      }
      FUN_007e8f90(param_1[0xfb],5);
      local_14 = 0xc;
      fVar17 = (float10)FUN_007e9080();
      local_298 = CONCAT44((float)fVar17,(int **)local_298);
      FUN_00665c00();
      fVar18 = (float)ppiVar8 * DAT_00baa08c + (float)local_29c;
      local_14 = 0xffffffff;
      local_2a5 = (float)local_298._4_4_ < fVar18;
      _guard_check_icall();
      piVar7 = local_2b4;
      if (local_2a5 != '\0') {
        FUN_00431310(local_2b4);
        FUN_006ad3c0(local_4c,0xffffffa6,0);
        FUN_00431310(piVar7);
        FUN_006b79d0(local_74,0xffffffa6);
      }
    }
  }
  FUN_006be840();
  iVar14 = FUN_00499da0();
  if ((iVar14 != 0) && (cVar4 = FUN_007c32c0(), cVar4 != '\0')) {
    FUN_00431310(param_1);
    FUN_006add70(local_4c,0xfffffffe,0);
  }
  FUN_00417860();
  iVar14 = FUN_009be080(0x202,0,0);
  if (iVar14 != 0) {
    FUN_00417860();
    FUN_009bea40();
    local_2b4 = (int *)0x26;
    local_298 = CONCAT44(0x37 - (int)fVar18,(int **)local_298);
    FUN_0041cb80();
    (**(code **)(*param_1 + 0x4c))();
    cVar4 = HELPER_Entity_DamageFilter(0);
    if (((cVar4 != '\0') && (iVar14 = FUN_0067f010(), iVar14 == 0)) &&
       (*(char *)((int)param_1 + 0x173) == '\0')) {
      FUN_006a89f0();
      FUN_004173e0(0x20,0);
      FUN_006a8a20();
    }
  }
  cVar4 = FUN_006b5b90(0);
  if (((cVar4 != '\0') && (cVar4 = FUN_00417430(0x20,0), cVar4 != '\0')) &&
     ((param_1[0x86] < 1 && (cVar4 = FUN_006ac710(0x32,0), cVar4 != '\0')))) {
    FUN_006a89f0();
    FUN_00417400(0x20,0);
    FUN_006a8a20();
    cVar4 = FUN_00a10630(&DAT_00c7b640);
    if (cVar4 != '\0') {
      FUN_00a0fe80();
      iVar14 = FUN_0067f030();
      local_2d0 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                  DAT_00baa848 - DAT_00baa880;
      iVar14 = FUN_0067f030();
      local_2cc = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                  DAT_00baa848 - DAT_00baa880;
      FUN_00407480();
      piVar7 = param_1 + 0xcf;
      FUN_00436090(local_54,piVar7,0);
      local_2a5 = FUN_00a10600(piVar7);
      FUN_00a10450(&local_2d0);
      if (local_2a5 != '\0') {
        FUN_00407480();
        uVar6 = FUN_00436090(local_54,piVar7,0);
        FUN_007dd3b0(uVar6);
      }
    }
  }
  ppiVar15 = (int **)FUN_00417430(0x10,0);
  if ((char)ppiVar15 == '\0') {
    uVar16 = 0;
    local_29c = ppiVar15;
    FUN_00417860();
    iVar14 = FUN_00417840();
    if (iVar14 != 0) {
      do {
        FUN_00417870(uVar16);
        FUN_004361c0();
        cVar4 = FUN_009305f0(0x5d);
        local_29c = (int **)((uint)local_29c & 0xff);
        if (cVar4 != '\0') {
          local_29c = (int **)0x1;
        }
        uVar16 = uVar16 + 1;
        FUN_00417860();
        uVar10 = FUN_00417840();
        param_1 = local_2bc;
      } while (uVar16 < uVar10);
      if ((char)local_29c != '\0') {
        pcVar2 = *(code **)(*local_2bc + 0x3c);
        uVar6 = FUN_00435a80();
        (*pcVar2)(uVar6,2,0,0,1);
        FUN_00431310(param_1);
        FUN_006ae0a0(local_4c,0xfffffffe,0);
      }
    }
  }
  FUN_00407480();
  FUN_004360d0();
  cVar4 = FUN_009305f0(0xe8);
  if (cVar4 == '\0') {
    FUN_00407480();
    FUN_004360d0();
    cVar4 = FUN_009305f0(0x42);
    if (cVar4 != '\0') goto LAB_006c930b;
    FUN_00407480();
    iVar14 = FUN_0081edd0();
    if (iVar14 == 1) goto LAB_006c930b;
  }
  else {
LAB_006c930b:
    cVar4 = FUN_00417430(0x20000001,0);
    if ((cVar4 == '\0') || (param_1[10] == 0xd4)) {
      pcVar2 = *(code **)(*param_1 + 0x3c);
      uVar6 = FUN_00435ad0(0x3f800000,0x28,0x28,0x28);
      (*pcVar2)(uVar6,2,0xfa,0,1);
    }
  }
  cVar4 = FUN_00417430(0,0x100000);
  if (cVar4 != '\0') {
    fVar18 = DAT_00baa3f4;
    FUN_00684cb0();
    param_1[0xdb] = (int)(fVar18 * (float)param_1[0xdb]);
  }
  if (*(char *)((int)param_1 + 0xc63) != '\0') {
    fVar18 = (float)DAT_00baa454 -
             ((float)DAT_00baa454 - (float)param_1[0x2eb]) *
             ((float)DAT_00baa454 - (float)param_1[0xdb]);
    FUN_00684cb0();
    local_298 = CONCAT44(fVar18,(int **)local_298);
    FUN_00a10540((int)&local_298 + 4);
  }
  local_298 = CONCAT44(param_1 + 0x12,(int **)local_298);
  cVar4 = HELPER_0040b030_AnimationEventPredicateD("poof02");
  if (cVar4 != '\0') {
    uVar6 = FUN_0040b1d0("poof02");
    uVar22 = FUN_006eef60();
    uVar30 = 0;
    pTVar26 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
    pTVar23 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar29 = 0;
    uVar22 = HELPER_Entity_SpawnRelay(1000,0x10,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar22);
    piVar7 = (int *)__RTDynamicCast(uVar22,uVar29,pTVar23,pTVar26,uVar30);
    FUN_004563c0(uVar6);
    uVar6 = FUN_00a0fe90();
    uVar6 = FUN_00a10510(local_2f8,uVar6);
    FUN_0042d9b0(uVar6);
    FUN_00435cf0(0x41200000);
    pcVar2 = *(code **)(*piVar7 + 0x3c);
    uVar6 = FUN_00435ad0(0x3f000000,0,0,0);
    (*pcVar2)(uVar6,0xffffffff,0xff,0,1);
    param_1 = local_2bc;
  }
  HELPER_006d7010_DamageQueuePreprocessCandidate();
  HELPER_006d7230_ShieldDamageAbsorption();
  if ((*(byte *)(param_1 + 0x3c6) & 1) != 0) {
    param_1[0x2dd] = 1;
    HELPER_Entity_NPC_Update_dispatcher();
    param_1[0x2dd] = 0;
  }
  cVar4 = FUN_00417430(0,0x10000020);
  if (cVar4 != '\0') {
    cVar4 = FUN_006ac710(0xf,0);
    if ((cVar4 != '\0') && ((float)DAT_00baa454 < (float)param_1[0xe0])) {
      local_2b4 = (int *)0x3f800000;
      local_298 = CONCAT44((float)param_1[0xe0] - DAT_00baa1d4,(int **)local_298);
      piVar7 = (int *)FUN_0041cb70();
      param_1[0xe0] = *piVar7;
    }
    FUN_0042f2a0();
    fVar18 = DAT_00baa304;
    FUN_00a155c0();
    local_298._4_4_ = (int *)fVar18;
    FUN_00407410();
    FUN_00682f20(local_298._4_4_,local_298._4_4_,local_298._4_4_,0x3f800000);
    FUN_00431260();
    FUN_0042f2a0();
    fVar18 = DAT_00baa304;
    FUN_00a155c0();
    local_298 = CONCAT44(fVar18,(int **)local_298);
    uVar6 = FUN_00a104e0(local_54,(int)&local_298 + 4);
    FUN_00420170(uVar6);
    local_29c = (int **)0x0;
    local_288 = (int **)0x0;
    local_298 = 0;
    FUN_00435c70();
    FUN_004561a0(&local_2a4);
    uVar6 = FUN_00456190(&local_2b4);
    cVar4 = FUN_0042c710(uVar6);
    if (cVar4 == '\0') {
      local_2a0 = local_298._4_4_;
      local_290 = (char *)(int **)local_298;
    }
    else {
      local_2a0 = local_298._4_4_;
      local_290 = (char *)(int **)local_298;
      do {
        ppiVar8 = (int **)FUN_0040c3a0();
        ppiVar15 = (int **)ppiVar8[2];
        if (((uint)ppiVar15 & 0x282) == 0) {
          if (((uint)ppiVar15 & 0x286) != 0) {
            local_2a0 = ppiVar8[3];
            local_29c = DAT_00baa784;
            local_290 = (char *)ppiVar15;
            FUN_00499960(ppiVar8 + 4);
            break;
          }
          if ((float)local_288 < (float)*ppiVar8) {
            local_2a0 = ppiVar8[3];
            local_29c = DAT_00baa454;
            local_290 = (char *)ppiVar15;
            local_288 = (int **)*ppiVar8;
            FUN_00499960(ppiVar8 + 4);
          }
        }
        FUN_00456170((int)&local_298 + 4,0);
        uVar6 = FUN_00456190(&local_2b4);
        cVar4 = FUN_0042c710(uVar6);
      } while (cVar4 != '\0');
    }
    FUN_00456400();
    if (DAT_00ba9fe4 < (float)local_29c) {
      (**(code **)(*param_1 + 0x20))(local_29c,local_290,local_2a0,local_4c,0);
    }
  }
  local_298 = CONCAT44(param_1[0xe0],(int **)local_298);
  if (param_1[10] == 0x3c5) {
    FUN_004cde30();
  }
  else {
    FUN_006ae820();
  }
  local_2b4 = (int *)0x0;
  local_298 = CONCAT44((float)local_298._4_4_ - (float)param_1[0xe0],(int **)local_298);
  pfVar11 = (float *)FUN_0041cb70();
  auVar20 = ZEXT416((uint)(*pfVar11 + (float)param_1[0x317]));
  param_1[0x317] = (int)(*pfVar11 + (float)param_1[0x317]);
  if ((*(byte *)(param_1 + 0x3c6) & 8) != 0) {
    param_1[0x2dd] = 4;
    HELPER_Entity_NPC_Update_dispatcher();
    param_1[0x2dd] = 0;
  }
  cVar4 = FUN_00665c60(0xf);
  if (cVar4 != '\0') {
    pcVar2 = *(code **)(*param_1 + 0x3c);
    uVar6 = FUN_0040d0e0(0,0,0,0);
    (*pcVar2)(uVar6,0xffffffff,0xff,0,1);
    uVar6 = FUN_0040d0e0(0,0,0,0);
    FUN_004073d0(uVar6);
    param_1[0x57] = 0;
  }
  cVar4 = FUN_00665c60(4);
  if ((cVar4 != '\0') || (cVar4 = FUN_00665c60(6), cVar4 != '\0')) {
    local_298 = CONCAT44(param_1 + 0xcf,(int **)local_298);
    iVar14 = FUN_006a9c10();
    if (iVar14 < 2) {
      FUN_0067f310(1);
      FUN_00407480();
      uVar6 = FUN_006b83e0();
      FUN_00a104b0(uVar6);
      FUN_00407480();
      FUN_004177e0(local_2e0);
      local_14 = 0xd;
      piVar7 = (int *)FUN_0040c3a0();
      pcVar2 = *(code **)(*piVar7 + 0x2c);
      uVar6 = FUN_00aefca0();
      uVar6 = FUN_00aefca0(uVar6);
      (*pcVar2)(&local_38,uVar6);
      local_14 = 0xffffffff;
      FUN_0041c710();
      param_1 = local_2bc;
      piVar7 = local_2bc + 800;
      FUN_00682f50(0,0,0,0xff);
      FUN_00407280(0x3f333333);
      auVar20 = ZEXT416((uint)(local_38 * DAT_00baa3e0));
      FUN_00682fe0(local_38 * DAT_00baa3e0,local_34 * DAT_00baa3e0,local_30 * DAT_00baa3e0);
      FUN_004073d0(piVar7);
    }
    iVar14 = FUN_004074b0();
    if ((uint)(iVar14 + param_1[8]) % 0x1e < 2) {
      FUN_0067f310(1);
      FUN_00407480();
      uVar6 = FUN_006b83e0();
      FUN_00a104b0(uVar6);
      FUN_00407480();
      FUN_004177e0(local_2e0);
      local_14 = 0xe;
      piVar7 = (int *)FUN_0040c3a0();
      (**(code **)(*piVar7 + 0x2c))(&local_38,(int)local_2d0,(int)local_2cc);
      local_14 = 0xffffffff;
      FUN_0041c710();
      fVar17 = (float10)FUN_00407270();
      fVar18 = (float)fVar17;
      local_298 = CONCAT44(fVar18,(int **)local_298);
      FUN_00a155c0();
      FUN_00407280(fVar18);
      local_298 = CONCAT44(local_30 * DAT_00baa3e0,(int **)local_298);
      fVar17 = (float10)FUN_004072d0();
      local_2b4 = (int *)(float)fVar17;
      piVar7 = local_2b4;
      FUN_00a155c0();
      local_2ec = piVar7;
      local_298 = CONCAT44(local_34 * DAT_00baa3e0,(int **)local_298);
      fVar17 = (float10)FUN_004072c0();
      local_2b4 = (int *)(float)fVar17;
      fVar18 = (float)local_2b4;
      FUN_00a155c0();
      local_304 = fVar18;
      local_298 = CONCAT44(local_38 * DAT_00baa3e0,(int **)local_298);
      fVar17 = (float10)FUN_004072b0();
      local_2b4 = (int *)(float)fVar17;
      auVar20 = ZEXT416(local_2b4);
      FUN_00a155c0();
      FUN_00682fe0(auVar20._0_4_,local_304,local_2ec);
    }
    uVar6 = FUN_00407410();
    FUN_004071c0(uVar6);
    FUN_006832e0(local_cc,local_a0,param_1 + 800,0x3dcccccd);
    FUN_00407410();
    fVar17 = (float10)FUN_00407270();
    FUN_00407280((float)fVar17);
    FUN_00682f20(0x3ca3d70a,0x3ca3d70a,0x3ca3d70a,0x3f800000);
    FUN_004073d0(local_cc);
  }
  cVar4 = FUN_00665c60(0x19);
  if (((cVar4 != '\0') || (cVar4 = FUN_00431760(9), cVar4 != '\0')) &&
     (cVar4 = FUN_006b5b90(0), cVar4 != '\0')) {
    local_28c = (int *)(((float)param_1[0xe1] / DAT_00baa8d0) / DAT_00baa8d0);
    auVar20 = ZEXT416(local_28c);
    cVar4 = FUN_00665c60(0x19);
    if (cVar4 != '\0') {
      *(undefined *)(param_1 + 0xec) = 1;
    }
    iVar14 = param_1[10];
    if (iVar14 == 0x104) {
      if (param_1[0xb] == 10) goto LAB_006c9da4;
LAB_006c9e06:
      if (iVar14 == 0x51) {
        FUN_00407480();
        iVar14 = FUN_0043ef20();
        if (iVar14 == 0x18) goto LAB_006c9da4;
        iVar14 = param_1[10];
      }
      if ((iVar14 == 0x112) || (iVar14 == 0x113)) {
        local_28c = (int *)((float)local_28c * DAT_00baa22c);
        auVar20 = ZEXT416(local_28c);
        if (*(char *)(param_1 + 0xec) == '\0') goto LAB_006c9dbc;
        auVar20 = ZEXT816(0);
        goto LAB_006c9db4;
      }
      FUN_00407480();
      iVar14 = FUN_0043ef20();
      if (iVar14 == 0x37) {
        auVar20 = ZEXT416((uint)((float)local_28c * DAT_00baa75c));
        goto LAB_006c9db4;
      }
    }
    else {
      if ((((iVar14 != 0x47) && (iVar14 != 0x48)) &&
          ((iVar14 != 0x49 && ((iVar14 != 0x4a && (iVar14 != 0x4b)))))) && (iVar14 != 0x4c))
      goto LAB_006c9e06;
LAB_006c9da4:
      auVar20 = ZEXT416((uint)((float)local_28c * DAT_00baa6fc));
LAB_006c9db4:
      local_28c = auVar20._0_4_;
    }
LAB_006c9dbc:
    FUN_00407480();
    iVar14 = FUN_0043eec0();
    if (iVar14 == 0x11) {
      auVar20 = ZEXT416((uint)((float)local_28c + (float)local_28c));
LAB_006c9ee0:
      local_28c = auVar20._0_4_;
    }
    else {
      FUN_00407480();
      iVar14 = FUN_0043eec0();
      if (iVar14 == 6) {
        auVar20 = ZEXT416((uint)((float)local_28c * DAT_00baa6fc));
        goto LAB_006c9ee0;
      }
      FUN_00407480();
      iVar14 = FUN_0043eec0();
      if (iVar14 != 5) {
        auVar20 = ZEXT416((uint)((float)local_28c * DAT_00baa7a4));
        goto LAB_006c9ee0;
      }
    }
    cVar4 = FUN_00431760(9);
    if (cVar4 != '\0') {
      local_28c = (int *)((float)local_28c * DAT_00baa9d0);
      auVar20 = ZEXT416(local_28c);
    }
    cVar4 = (**(code **)(*param_1 + 0x4c))();
    if ((cVar4 == '\0') && (cVar4 = FUN_00431760(9), cVar4 == '\0')) {
      FUN_00407480();
      iVar14 = FUN_004566d0();
      if (iVar14 < 1) {
        *(undefined *)(param_1 + 0x30f) = 0;
      }
    }
    else {
      iVar14 = param_1[10];
      if ((iVar14 == 0x4a) || ((iVar14 == 0x4b || (iVar14 == 0x4c)))) {
        auVar20 = ZEXT416((uint)param_1[0xe0]);
        if ((0.0 < (float)param_1[0xe0]) || (param_1[0x62] == 0)) goto LAB_006ca08e;
        *(undefined *)(param_1 + 0xec) = 0;
        param_1[0xe0] = 0x3f800000;
        *(undefined *)((int)param_1 + 0x173) = 1;
      }
      else {
        auVar20 = ZEXT416((uint)param_1[0xe0]);
        if (0.0 < (float)param_1[0xe0]) {
LAB_006ca08e:
          auVar20._0_4_ = auVar20._0_4_ - (float)local_28c;
          param_1[0xe0] = (int)auVar20._0_4_;
        }
        else {
          cVar4 = FUN_00431760(9);
          if ((((((cVar4 == '\0') && (iVar14 = param_1[10], iVar14 != 0x24)) && (iVar14 != 0x106))
               && ((iVar14 != 0x107 && (iVar14 != 0x4e)))) && (iVar14 != 0x47)) &&
             (((iVar14 != 0x48 && (iVar14 != 0x49)) && ((iVar14 != 0x104 || (param_1[0xb] != 10)))))
             ) {
            FUN_00407480();
            iVar14 = FUN_0043eec0();
            if (iVar14 != 0x11) {
              FUN_00407480();
              iVar14 = FUN_0043ef20();
              if (iVar14 != 0x37) {
                if (param_1[10] == 0x51) {
                  FUN_00407480();
                  iVar14 = FUN_0043ef20();
                  if (iVar14 == 0x18) goto LAB_006ca02b;
                }
                *(undefined *)(param_1 + 0x30f) = 0;
                goto LAB_006ca09e;
              }
            }
          }
LAB_006ca02b:
          *(undefined *)(param_1 + 0xec) = 0;
          pcVar2 = *(code **)(*param_1 + 0x20);
          uVar6 = FUN_00435c70();
          (*pcVar2)(0x3f800000,0,0,uVar6,0x1e);
          *(undefined *)((int)param_1 + 0x173) = 1;
        }
      }
    }
  }
LAB_006ca09e:
  FUN_006d6650();
  cVar4 = FUN_006ac6c0();
  if (((cVar4 == '\0') && (*(char *)((int)param_1 + 0x171) != '\0')) &&
     (cVar4 = FUN_006b5b90(0), cVar4 != '\0')) {
    fVar17 = (float10)FUN_00a0fed0();
    fVar18 = (float)fVar17;
    local_298 = CONCAT44(fVar18,(int **)local_298);
    auVar20 = ZEXT416((uint)fVar18);
    if ((float)DAT_00baa454 < fVar18) {
      FUN_00407480();
      cVar4 = FUN_008208c0();
      if (((cVar4 != '\0') && (cVar4 = FUN_006ac710(7,param_1[8]), cVar4 != '\0')) &&
         (param_1[0x62] != 0)) {
        uVar6 = FUN_006eef60();
        uVar22 = FUN_00a10420(local_54,param_1 + 0xd8);
        uVar30 = 0;
        pTVar26 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
        pTVar23 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar29 = 0;
        uVar6 = HELPER_Entity_SpawnRelay(1000,99,uVar22,&DAT_00c7b640,param_1,0,uVar6);
        piVar7 = (int *)__RTDynamicCast(uVar6,uVar29,pTVar23,pTVar26,uVar30);
        fVar18 = (float)param_1[0xdc] * DAT_00baa0d0 * (float)param_1[0x30e];
        auVar20 = ZEXT416((uint)fVar18);
        local_298 = CONCAT44(fVar18,(int **)local_298);
        uVar6 = FUN_00a104e0(local_2f8,(int)&local_298 + 4);
        FUN_0042d9b0(uVar6);
        FUN_00435cf0(0xc1200000);
        local_298 = CONCAT44(0x3f000000,(int **)local_298);
        uVar6 = FUN_00a104e0(local_310,(int)&local_298 + 4);
        FUN_00428910(uVar6);
        (**(code **)(*piVar7 + 0xc))();
      }
    }
  }
  piVar7 = param_1 + 0xcf;
  local_2b4 = piVar7;
  FUN_007dd3b0(piVar7);
  if (*(char *)(param_1 + 0x318) == '\0') {
    FUN_00421800();
    FUN_0092aea0(param_1[10],param_1[0xb]);
    *(undefined *)(param_1 + 0x318) = 1;
  }
  cVar4 = FUN_006ac710(*(int *)(param_1[0xcc] + 0xd0) * 2,param_1[8]);
  if (cVar4 == '\0') {
    if ((param_1[10] == 0x322) && (param_1[0x2d9] == 8)) {
      FUN_0041e460();
      cVar4 = FUN_004073b0();
      if ((cVar4 != '\0') && (cVar4 = FUN_006ac710(3,param_1[8]), cVar4 != '\0')) goto LAB_006ca297;
    }
  }
  else {
LAB_006ca297:
    FUN_004e47c0(0);
  }
  iVar14 = param_1[10];
  if (iVar14 == 0x38a) {
    thunk_FUN_004bb0e0();
    iVar14 = param_1[10];
  }
  if (iVar14 == 0x38b) {
    if (param_1[0x2d9] == 1) {
      FUN_00407480();
      FUN_00428a70();
      FUN_00944d10(piVar7);
      iVar14 = param_1[10];
      goto LAB_006ca2e9;
    }
  }
  else {
LAB_006ca2e9:
    if ((((iVar14 == 0x5c) && (FUN_007dd3b0(&DAT_00c7b640), param_1[0xb] == 1)) &&
        (param_1[0x2fb] != 0)) && (cVar4 = FUN_006ac530(), cVar4 != '\0')) {
      FUN_00417290(local_54);
      uVar6 = FUN_00a10480(local_2f8,param_1 + 0xcf);
      FUN_007dd3b0(uVar6);
      uVar6 = FUN_00a10660(local_310);
      FUN_007dd3b0(uVar6);
    }
  }
  if ((param_1[10] == 0x19b) &&
     (cVar4 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b1d534), cVar4 != '\0')) {
    FUN_00407480();
    FUN_00407470();
    if ((float)DAT_00baa198 < auVar20._0_4_) {
      FUN_00a0fe90();
      iVar14 = FUN_0067f010();
      iVar14 = iVar14 + 0xc;
      local_298 = CONCAT44(iVar14,(int **)local_298);
      if (0 < iVar14) {
        do {
          uVar6 = FUN_0067f070(local_54);
          FUN_00a10510(&local_2d0,uVar6);
          FUN_0067efe0();
          auVar21 = auVar20._4_12_;
          fVar18 = auVar20._0_4_ * (float)DAT_00baa784 + DAT_00baa6fc;
          local_298 = CONCAT44(fVar18,(int **)local_298);
          FUN_004171d0(&local_2d0);
          FUN_00a105a0(local_2e0,local_2e8);
          uVar6 = FUN_006eef60();
          uVar22 = FUN_00a10420(local_310,&local_2d0);
          piVar7 = (int *)HELPER_Entity_SpawnRelay(1000,99,uVar22,local_2e0,0,1,uVar6);
          FUN_00417320();
          local_2ec = (int *)0x40000000;
          uVar6 = FUN_00a104e0(local_334,&local_2ec);
          FUN_0042d9b0(uVar6);
          FUN_0067efe0();
          auVar20._0_4_ = fVar18 * DAT_00baa7e8;
          auVar20._4_12_ = auVar21;
          FUN_00444c70(DAT_00baad90 - auVar20._0_4_);
          FUN_00444c90(0x3fc00000);
          (**(code **)(*piVar7 + 0xc))();
          iVar14 = iVar14 + -1;
          param_1 = local_2bc;
        } while (iVar14 != 0);
      }
    }
  }
  if (*(char *)((int)param_1 + 0x173) == '\0') {
LAB_006ca806:
    if (param_1[0x2d9] != 0x12) {
      FUN_00417400(0,0x800000);
      FUN_00417400(0x400000,0);
    }
  }
  else {
    if (((local_2d1 == '\0') && (cVar4 = (**(code **)(*param_1 + 0x4c))(), cVar4 == '\0')) &&
       ((*(char *)(param_1[0xcc] + 0x2c) == '\0' && (cVar4 = FUN_00417430(0,0x40000), cVar4 != '\0')
        ))) {
      FUN_006bbdc0();
      uVar16 = 0;
      iVar14 = FUN_004178d0();
      if (iVar14 != 0) {
        do {
          FUN_00417870(uVar16);
          FUN_007a0080(param_1);
          uVar16 = uVar16 + 1;
          uVar10 = FUN_004178d0();
        } while (uVar16 < uVar10);
      }
      FUN_006d5350();
      FUN_0042c770(&local_2a4);
      uVar6 = FUN_004561a0((int)&local_298 + 4);
      cVar4 = FUN_0042c710(uVar6);
      while (cVar4 != '\0') {
        puVar13 = (undefined4 *)FUN_005cba30();
        *(undefined4 *)*puVar13 = 0;
        FUN_006518f0(&local_2b4,0);
        uVar6 = FUN_004561a0((int)&local_298 + 4);
        cVar4 = FUN_0042c710(uVar6);
      }
      FUN_004cf350();
      FUN_0040a910();
      FUN_0040a9c0();
      FUN_006ae630();
      FUN_00407f10();
      (**(code **)(*param_1 + 0x40))(0);
      param_1[0x62] = 4;
      if ((param_1[0x61] < 3) || (param_1[0x61] == 7)) {
        param_1[0x61] = 3;
      }
      FUN_00407480();
      uVar6 = FUN_00436090(local_54,param_1 + 0xcf,0);
      FUN_007dd3b0(uVar6);
      if (*(int *)(param_1[0xcc] + 0x48) < 1) {
        FUN_006ac2a0(param_1[0xdc],param_1[0xdd],param_1[0xde],8);
      }
      param_1[0xdf] = 0x447a0000;
      *(undefined *)((int)param_1 + 0x173) = 0;
      *(undefined2 *)(param_1 + 0x30f) = 0;
      *(undefined *)(param_1 + 0xec) = 1;
      FUN_004173e0(0x10011,0x20000);
      param_1[0xe0] = 0x41200000;
      param_1[0xe1] = 0x41200000;
      if (((param_1[10] == 0x322) && (param_1[0xef] != 0)) &&
         (cVar4 = FUN_0042a250(), cVar4 != '\0')) {
        FUN_0062e0e0(param_1);
      }
      param_1[0xd] = 0;
      param_1[0xe] = 0;
      FUN_006a9360(0);
      FUN_006a92a0(0);
      FUN_006a92e0(0);
      FUN_006a9320(0);
      param_1[0x104] = param_1[10];
      param_1[10] = 0x3c3;
      (**(code **)(*param_1 + 0x60))();
      pcVar2 = *(code **)(*param_1 + 0x3c);
      uVar6 = FUN_00435b50(0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f000000,0x3f4ccccd,
                           0x3f800000,0x3f99999a);
      (*pcVar2)(uVar6,6,1,1,1);
    }
    if (*(char *)((int)param_1 + 0x173) == '\0') goto LAB_006ca806;
  }
  iVar14 = param_1[0x3cf];
  puVar27 = puStack_20;
  if (iVar14 < 1) {
    if (iVar14 < 0) {
      param_1[0x3cf] = iVar14 + 1;
    }
  }
  else {
    param_1[0x3cf] = iVar14 + -1;
    if (iVar14 + -1 == 0) {
      cVar4 = (**(code **)(*param_1 + 0x4c))();
      if (cVar4 != '\0') {
        param_1[0x3cf] = -0x96;
      }
      FUN_006b5b50();
      puVar27 = puStack_20;
    }
  }
LAB_006ca86f:
  puStack_20 = puVar27;
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

