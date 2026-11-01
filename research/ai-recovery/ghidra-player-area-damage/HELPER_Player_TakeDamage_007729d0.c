/* Local J460 decompiler output.
 * VA: 0x007729d0
 * Entry: 007729d0
 * Dispatcher: 0x006c2990
 * Types: 1
 * Identities: 1.*
 * Evidence: Entity_Player vtable 0xB6BDD0 slot +0x20
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=1; identities=1.*; Entity_Player vtable 0xB6BDD0 slot
   +0x20 */

void __thiscall
HELPER_Player_TakeDamage
          (int *param_1_00,float param_1,uint param_2,int *param_3,int *param_4,undefined4 param_5)

{
  code *pcVar1;
  char cVar2;
  byte bVar3;
  undefined uVar4;
  uint uVar5;
  int iVar6;
  int *piVar7;
  int *piVar8;
  undefined4 *puVar9;
  float *pfVar10;
  int **ppiVar11;
  int iVar12;
  uint uVar13;
  undefined (*pauVar14) [16];
  undefined4 uVar15;
  int *piVar16;
  int **ppiVar17;
  undefined *puVar18;
  int iVar19;
  bool bVar20;
  float10 fVar21;
  float fVar22;
  float fVar23;
  undefined in_XMM0 [16];
  undefined auVar24 [16];
  undefined auVar25 [16];
  undefined8 uVar26;
  undefined4 in_stack_fffffe7c;
  undefined4 in_stack_fffffe80;
  undefined4 in_stack_fffffe84;
  undefined4 in_stack_fffffe88;
  undefined4 in_stack_fffffe8c;
  int in_stack_fffffe90;
  undefined4 uVar27;
  undefined4 in_stack_fffffe94;
  undefined4 uVar28;
  TypeDescriptor *pTVar29;
  undefined4 uVar30;
  TypeDescriptor *pTVar31;
  undefined4 uVar32;
  undefined4 *puVar33;
  undefined local_150 [4];
  float local_14c;
  undefined4 local_148;
  int *local_144;
  undefined auStack_140 [4];
  float local_13c;
  undefined local_138 [4];
  int *local_134;
  undefined4 local_130;
  int *local_12c;
  byte local_125;
  uint local_124;
  int *local_11c;
  int *local_118;
  char local_111;
  undefined auStack_110 [4];
  undefined4 local_10c;
  char local_107;
  char local_106;
  char local_105;
  int *local_104;
  undefined4 local_100;
  undefined local_ec [48];
  float local_bc [2];
  uint local_b4;
  int *local_b0;
  undefined local_ac [8];
  int *local_a4;
  float fStack_a0;
  uint uStack_9c;
  undefined4 uStack_98;
  undefined local_94 [12];
  undefined4 uStack_88;
  undefined local_84 [16];
  undefined local_74 [4];
  uint local_70;
  undefined local_6c [16];
  undefined local_5c [4];
  undefined local_58 [4];
  undefined local_54 [4];
  vector<unsigned_int,class_std::allocator<unsigned_int>_> local_50 [4];
  undefined4 local_4c;
  undefined local_44 [12];
  undefined local_38 [4];
  undefined local_34 [4];
  int local_30;
  undefined local_2c [16];
  undefined local_1c [4];
  float local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00aff27a;
  local_10 = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  local_124 = param_2;
  local_144 = param_3;
  local_12c = param_4;
  local_130 = param_1_00;
  local_14 = uVar5;
  if (((param_1_00[0x4f0] == 0x28) && (param_1_00[0x79a] != 0)) &&
     (cVar2 = HELPER_Player_HasCollectible(0x114,0), cVar2 == '\0')) {
    if ((param_1_00[0x4f0] == 0x28) && (*(int *)(param_1_00[0x79a] + 0x1600) == 0x160)) {
      FUN_00407f10();
    }
    (**(code **)(*(int *)param_1_00[0x79a] + 0x20))
              (param_1,local_124 | 0x800,param_3,param_4,param_5);
    goto LAB_00779031;
  }
  if (*param_4 == 0x3c6) {
    in_stack_fffffe94 = 0;
    in_stack_fffffe90 = param_4[9];
    in_stack_fffffe8c = 0x772ab8;
    iVar6 = __RTDynamicCast(in_stack_fffffe90,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                            &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0,uVar5);
    if (iVar6 != 0) {
      in_stack_fffffe94 = 0;
      in_stack_fffffe90 = *(int *)(iVar6 + 0x3c4);
      in_stack_fffffe8c = 0x772ad8;
      iVar6 = __RTDynamicCast(in_stack_fffffe90,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor
                              ,&IsaacRepentancePlus::Entity_Familiar::RTTI_Type_Descriptor,0);
      if ((iVar6 != 0) && (*(int *)(iVar6 + 0xef0) - 1U < 0x1d)) goto LAB_00779031;
    }
  }
  if (*param_4 == 3) {
    in_stack_fffffe94 = 0;
    in_stack_fffffe90 = param_4[9];
    in_stack_fffffe8c = 0x772b0a;
    iVar6 = __RTDynamicCast(in_stack_fffffe90,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                            &IsaacRepentancePlus::Entity_Familiar::RTTI_Type_Descriptor,0,uVar5);
    if ((iVar6 != 0) && (*(int *)(iVar6 + 0xef0) - 1U < 0x1d)) goto LAB_00779031;
  }
  cVar2 = FUN_007c7b10(local_124,param_3);
  if (cVar2 != '\0') goto LAB_00779031;
  if ((*param_4 == 0x21) && (param_4[1] == 4)) {
    switch(param_1_00[0x4f0]) {
    default:
      cVar2 = FUN_00930680(0x70);
      if ((cVar2 != '\0') || (param_1_00[0x4f0] == 0x27)) goto LAB_00779031;
      if ((*param_4 == 0x21) && (param_4[1] == 4)) {
        if (*(char *)((int)param_1_00 + 0x173) == '\0') {
          FUN_007d87a0();
          cVar2 = FUN_00930680(0x70);
          if (cVar2 == '\0') {
            FUN_009be850(0x70);
          }
          local_100 = (int *)0x2b;
          FUN_00956780();
          FUN_0092dc30(local_100,0x3f800000,2,0,0x3f800000,0);
          if (*(char *)(DAT_00c7169c + 0x2a38e) != '\0') {
            local_11c = (int *)0x3f19999a;
            local_100 = (int *)0x3f99999a;
            (**(code **)(PTR_vftable_00c57b18 + 0x74))
                      (param_1_00[0x586],FUN_00a20b70,&local_11c,&local_100,0);
          }
        }
        goto LAB_00779031;
      }
      break;
    case 10:
    case 0x1f:
    case 0x28:
      goto LAB_00779031;
    }
  }
  cVar2 = FUN_007db700();
  if ((cVar2 != '\0') || (((*param_4 == 1000 && (param_4[1] == 0x13)) && (param_4[2] == 1))))
  goto LAB_00779031;
  if (*(int *)(DAT_00c71678 + 0x26614) < 2) {
    if ((param_4[8] & 2U) != 0) goto LAB_00779031;
  }
  else if ((param_4[8] & 2U) != 0) {
    local_100 = (int *)param_4[9];
    if (local_100 == (int *)0x0) goto LAB_00779031;
    FUN_00431310(param_1_00);
    cVar2 = FUN_006acd10(local_ac);
    if (cVar2 != '\0') goto LAB_00779031;
  }
  if (((((uint)param_3 & 4) != 0) ||
      (((((piVar7 = (int *)param_4[9], piVar7 != (int *)0x0 && (piVar7[10] == 0x362)) &&
         ((piVar8 = (int *)param_1_00[0x7f0], piVar7 != piVar8 &&
          (((int *)piVar7[0xef] != piVar8 || (piVar8 == (int *)0x0)))))) &&
        (((int *)piVar7[0xf0] != piVar8 || (piVar8 == (int *)0x0)))) &&
       (((int *)piVar7[0xf2] != param_1_00 && ((int *)piVar7[0xf2] != piVar8)))))) ||
     (*(char *)((int)param_1_00 + 0x173) != '\0')) goto LAB_00779031;
  uVar32 = 0;
  uVar30 = 0x114;
  uVar28 = 0x772d84;
  cVar2 = HELPER_Player_HasCollectible(0x114,0);
  if (((cVar2 != '\0') || (param_1_00[0x4f0] == 0x23)) && ((local_124 & 0x2820) == 0))
  goto LAB_00779031;
  FUN_00431310(param_4[9]);
  cVar2 = HELPER_Effect_PlayerDamageImmunity
                    (in_stack_fffffe7c,in_stack_fffffe80,in_stack_fffffe84,in_stack_fffffe88,
                     in_stack_fffffe8c,in_stack_fffffe90,in_stack_fffffe94,uVar28,uVar30,uVar32);
  if ((cVar2 != '\0') ||
     (((param_1_00[0xb] == 1 || (*(char *)((int)param_1_00 + 0x20a9) != '\0')) &&
      ((cVar2 = FUN_0040a4d0("Appear"), cVar2 != '\0' ||
       (cVar2 = FUN_0040a4d0("Glitch"), cVar2 != '\0')))))) goto LAB_00779031;
  if (((*param_4 == 0x387) && (param_4[1] == 10)) && (iVar6 = param_4[9], iVar6 != 0)) {
    for (iVar12 = *(int *)(iVar6 + 0x3c0);
        ((iVar12 != 0 && (*(int *)(iVar12 + 0x28) == 0x387)) && (*(int *)(iVar12 + 0x2c) == 10));
        iVar12 = *(int *)(iVar12 + 0x3c0)) {
      iVar6 = iVar12;
    }
    if (*(int **)(iVar6 + 0x3c4) == param_1_00) goto LAB_00779031;
  }
  local_118 = param_1_00 + 0xcf;
  local_10c = (int *)FUN_004e7d10(1);
  if (local_10c != (int *)0x0) {
    pcVar1 = *(code **)(*local_10c + 0x20);
    FUN_00431310(0);
    (*pcVar1)(0x40600000,0x40,0,local_ac,0xf);
    local_100 = (int *)0x1f5;
    FUN_00956780();
    FUN_0092dc30(local_100,0x3f800000,10,0,0x3f800000,0);
    if ((int *)param_1_00[0xf6] != (int *)0x0) {
      (**(code **)(*(int *)param_1_00[0xf6] + 0x28))();
    }
    uVar28 = FUN_006eef60();
    piVar7 = (int *)HELPER_Entity_SpawnRelay
                              (1000,0xa0,param_1_00 + 0xcf,&DAT_00c7b640,local_10c,0,uVar28);
    FUN_006a92a0(local_10c);
    FUN_006a9320(param_1_00);
    piVar7[0x11a] = 0;
    piVar7[0x11b] = -0x3e400000;
    fVar22 = (float)param_1_00[0xd4] - DAT_00baa89c;
    piVar7[0xd3] = (int)((float)param_1_00[0xd3] + 0.0);
    piVar7[0xd4] = (int)fVar22;
    (**(code **)(*piVar7 + 0xc))();
    FUN_004cf380(piVar7);
    goto LAB_00779031;
  }
  cVar2 = HELPER_Player_HasTrinket(0x6c,0);
  piVar7 = in_XMM0._0_4_;
  if ((cVar2 != '\0') && ((local_124 & 4) != 0)) {
    iVar6 = param_1_00[0x5df];
    FUN_007e90f0();
    piVar7 = in_XMM0._0_4_;
    param_4 = local_12c;
    if (*(uint *)(iVar6 + 0x6c0) % 100 < 0x21) {
      piVar8 = (int *)HELPER_Player_TrinketMultiplier(0x6c);
      local_10c = &DAT_00b6bcc0;
      local_11c = piVar8;
      do {
        if (0 < (int)piVar8) {
          do {
            local_100 = piVar8;
            uVar28 = FUN_007e90f0();
            uVar30 = FUN_00813520(&local_148,param_1_00 + 0xcf,0x42200000,0,0,0);
            HELPER_Entity_SpawnRelay(5,*local_10c,uVar30,&DAT_00c7b640,param_1_00,0,uVar28);
            piVar8 = (int *)((int)local_100 + -1);
          } while ((int *)((int)local_100 + -1) != (int *)0x0);
          local_100 = (int *)0x0;
          piVar8 = local_11c;
        }
        piVar7 = in_XMM0._0_4_;
        local_10c = local_10c + 1;
      } while ((int)local_10c < 0xb6bcd0);
      FUN_00771f60(0x6c);
      param_4 = local_12c;
    }
  }
  cVar2 = HELPER_Player_HasCollectible(0xdf,0);
  if (cVar2 != '\0') {
    if ((local_124 & 2) != 0) goto LAB_00779031;
    local_10c = (int *)(local_124 & 4);
    if (local_10c != (int *)0x0) {
      iVar6 = FUN_007cb060();
      if (param_1_00[0x4d1] < iVar6) {
        uVar28 = FUN_006eef60();
        uVar32 = 0;
        pTVar31 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
        pTVar29 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar30 = 0;
        uVar28 = HELPER_Entity_SpawnRelay(1000,0x31,param_1_00 + 0xcf,&DAT_00c7b640,0,0,uVar28);
        iVar6 = __RTDynamicCast(uVar28,uVar30,pTVar29,pTVar31,uVar32);
        *(undefined4 *)(iVar6 + 0xdc) = 0;
        *(undefined4 *)(iVar6 + 0xe0) = 0xc1c00000;
        *(undefined4 *)(iVar6 + 0x358) = 0x3f800000;
        FUN_00758a70(1,0,0);
      }
      goto LAB_00779031;
    }
  }
  local_10c = (int *)(local_124 & 4);
  cVar2 = HELPER_Player_HasCollectible(0x177,0);
  if ((cVar2 != '\0') && (local_10c != (int *)0x0)) {
    FUN_0040c340("GuardDown");
    local_8 = 0;
    FUN_0040c340("GuardRight");
    local_8._0_1_ = 1;
    FUN_0040c340("GuardUp");
    local_8._0_1_ = 2;
    FUN_0040c340("GuardLeft");
    local_8._0_1_ = 3;
    puVar9 = (undefined4 *)FUN_0067f1d0();
    uVar28 = FUN_007ad7e0(&uStack_9c,*puVar9,puVar9[1],local_5c,local_2c,local_44,local_84);
    local_8 = CONCAT31(local_8._1_3_,4);
LAB_0077321a:
    FUN_00759f50(0x177,0,uVar28,0xffffffff,0);
    thunk_FUN_0040d040();
    thunk_FUN_0040d040();
    thunk_FUN_0040d040();
    thunk_FUN_0040d040();
    thunk_FUN_0040d040();
    goto LAB_00779031;
  }
  cVar2 = FUN_005b1780(5);
  if ((((((cVar2 != '\0') ||
         ((cVar2 = FUN_005b1780(10), cVar2 != '\0' &&
          (cVar2 = HELPER_Player_HasCollectible(0x34,0), cVar2 != '\0')))) &&
        (cVar2 = HELPER_Player_HasCollectible(0x95,0), cVar2 != '\0')) &&
       ((local_10c != (int *)0x0 &&
        ((((param_4[2] == 1 || (param_4[2] == 3)) &&
          (iVar6 = __RTDynamicCast(param_4[9],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                   &IsaacRepentancePlus::Entity_Bomb::RTTI_Type_Descriptor,0),
          iVar6 != 0)) && (cVar2 = FUN_004316a0(), cVar2 != '\0')))))) ||
      ((((cVar2 = FUN_005b1780(10), cVar2 != '\0' &&
         (cVar2 = HELPER_Player_HasCollectible(0x95,0), cVar2 != '\0')) && (local_10c != (int *)0x0)
        ) && (*param_4 == 8)))) ||
     (((cVar2 = HELPER_Player_HasCollectible(0x100,0), cVar2 != '\0' && ((local_124 & 2) != 0)) ||
      ((param_1_00[0xb] == 1 && ((param_1_00[0x6bb] == 0x14 && (local_10c != (int *)0x0))))))))
  goto LAB_00779031;
  cVar2 = HELPER_Player_HasCollectible(0x2b2,0);
  piVar8 = local_12c;
  if ((cVar2 != '\0') && ((local_124 & 0x2200000) == 0)) {
    if ((param_4[9] == 0) ||
       ((((iVar6 = *param_4, iVar6 < 10 || (999 < iVar6)) && (iVar6 != 9)) && (iVar6 != 1)))) {
      local_105 = '\0';
    }
    else {
      local_105 = '\x01';
    }
    FUN_00417850();
    FUN_00429560();
    iVar6 = HELPER_Global_ModuloCountdown();
    piVar8 = local_12c;
    if ((iVar6 != 0) || (local_105 == '\0')) goto LAB_007737ee;
    cVar2 = FUN_004173b0();
    if (cVar2 != '\0') {
      cVar2 = HELPER_Entity_HasFlag(0,0x8000);
      piVar8 = local_12c;
      if (cVar2 == '\0') {
        HELPER_Entity_Position(&local_148);
        iVar6 = FUN_00417350();
        local_100 = (int *)(iVar6 + 4);
        FUN_00417350();
        fVar21 = (float10)FUN_00a0ff30(local_118);
        piVar8 = local_12c;
        local_134 = (int *)(float)fVar21;
        HELPER_Effect_PlayerSize();
        local_11c = piVar7;
        pfVar10 = (float *)HELPER_FloatBound();
        param_1_00 = local_130;
        if ((float)local_134 <= (float)local_11c * *pfVar10 + (float)local_130[0xdc] + DAT_00baa81c)
        {
          HELPER_Entity_Velocity(&local_148);
          fVar21 = (float10)FUN_00a0fed0();
          local_100 = (int *)(float)fVar21;
          fVar21 = (float10)FUN_00a0fed0();
          local_100 = (int *)(float)(fVar21 + (float10)(float)local_100);
          fVar22 = (float)local_100 / DAT_00baa8a0;
          FUN_00a15550();
          local_11c = (int *)(fVar22 * DAT_00baa904);
          fVar21 = (float10)FUN_00a0fed0();
          local_134 = (int *)(float)((fVar21 / (float10)(float)local_100) *
                                    (float10)(float)local_11c);
          HELPER_Entity_Position(&local_148);
          FUN_00a10480(local_1c,local_118);
          FUN_00a10030(local_34);
          uVar28 = FUN_00a104e0(local_74,&local_134);
          FUN_00431310(local_130);
          FUN_006b7a80(local_ac,uVar28,1,1);
          piVar7 = local_130;
          local_130[0x7bf] = 0x41a00000;
          FUN_006b6470(0x24c,2,0,0x3f800000);
          FUN_004361d0(8);
          piVar7[0x5b] = piVar7[0x5b] | 0x10;
          piVar7[0x5a] = piVar7[0x5a];
          goto LAB_00779031;
        }
      }
      goto LAB_007737ee;
    }
    cVar2 = FUN_006ac530();
    if (cVar2 == '\0') {
      cVar2 = FUN_00431540();
      if ((cVar2 != '\0') || (cVar2 = FUN_00431530(), piVar8 = local_12c, cVar2 != '\0')) {
        HELPER_Entity_Position(local_1c);
        FUN_00a10480(local_34,param_1_00 + 0xcf);
        FUN_00a10100(&local_148,0x41200000);
        local_100 = (int *)__RTDynamicCast(param_4[9],0,
                                           &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                           &IsaacRepentancePlus::Entity_Projectile::
                                            RTTI_Type_Descriptor,0);
        iVar6 = __RTDynamicCast(param_4[9],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_Tear::RTTI_Type_Descriptor,0);
        if (local_100 != (int *)0x0) {
          FUN_00652fa0(param_1_00,&local_148);
        }
        if (iVar6 != 0) {
          FUN_0067a080(param_1_00,&local_148);
        }
        uVar30 = 0x3fa00000;
        param_1_00[0x7bf] = 0x41600000;
        uVar28 = 3;
        goto LAB_007736eb;
      }
      goto LAB_007737ee;
    }
    HELPER_Entity_Position(local_1c);
    iVar6 = FUN_00417350();
    local_100 = (int *)(iVar6 + 4);
    FUN_00417350();
    fVar21 = (float10)FUN_00a0ff30(local_118);
    piVar8 = local_12c;
    local_134 = (int *)(float)fVar21;
    HELPER_Effect_PlayerSize();
    local_11c = piVar7;
    pfVar10 = (float *)HELPER_FloatBound();
    param_1_00 = local_130;
    if ((float)local_11c * *pfVar10 + (float)local_130[0xdc] + DAT_00baa81c < (float)local_134)
    goto LAB_007737ee;
    HELPER_Entity_Position(local_1c);
    FUN_00a10480(local_34,param_1_00 + 0xcf);
    FUN_00a10100(&local_148,0x41a00000);
    FUN_00431310(param_1_00);
    FUN_006b7a80(local_ac,&local_148,0xf,1);
    uVar30 = 0x3f800000;
    param_1_00[0x7bf] = 0x41a00000;
    uVar28 = 0x24c;
LAB_007736eb:
    FUN_006b6470(uVar28,2,0,uVar30);
    FUN_004361d0(8);
LAB_007736fb:
    param_1_00[0x5b] = param_1_00[0x5b] | 0x10;
    param_1_00[0x5a] = param_1_00[0x5a];
    goto LAB_00779031;
  }
LAB_007737ee:
  FUN_00417850();
  cVar2 = FUN_00429550();
  local_100 = (int *)((uint)(cVar2 != '\0') * 4 + 5);
  cVar2 = HELPER_Player_HasCollectible(0x177,0);
  if ((cVar2 != '\0') && (iVar6 = HELPER_Global_ModuloCountdown(), iVar6 == 0)) {
    if (*piVar8 != 9) {
      FUN_00417850();
      cVar2 = FUN_00429550();
      if ((cVar2 == '\0') || (*piVar8 != 2)) goto LAB_00773987;
    }
    FUN_00a10100(local_1c,0x41200000);
    FUN_00a10660(&local_148);
    puVar9 = (undefined4 *)FUN_00a102e0(local_1c,0xc1700000);
    param_1_00 = param_1_00 + 0xcf;
    FUN_00790af0(param_1_00,*puVar9,puVar9[1],7,0,0x3f800000);
    FUN_00790af0(param_1_00,local_148,local_144,7,0,0x3f800000);
    puVar9 = (undefined4 *)FUN_00a102e0(local_1c,0x41700000);
    FUN_00790af0(param_1_00,*puVar9,puVar9[1],7,0,0x3f800000);
    FUN_0040c340("ShootingDown");
    local_8 = 5;
    FUN_0040c340("ShootingRight");
    local_8._0_1_ = 6;
    FUN_0040c340("ShootingUp");
    local_8._0_1_ = 7;
    FUN_0040c340("ShootingLeft");
    local_8._0_1_ = 8;
    uVar28 = FUN_007ad7e0(&uStack_9c,local_148,local_144,local_5c,local_2c,local_44,local_84);
    local_8 = CONCAT31(local_8._1_3_,9);
    goto LAB_0077321a;
  }
LAB_00773987:
  cVar2 = HELPER_Player_HasCollectible(0x1c1,0);
  if (cVar2 != '\0') {
    FUN_005cbd00(0x1c1);
    iVar6 = FUN_007e9020(4);
    if ((iVar6 == 0) && ((*piVar8 == 9 || (*piVar8 == 2)))) {
      FUN_00a10100(&local_148,0x41200000);
      puVar9 = (undefined4 *)FUN_00a10660(local_1c);
      piVar7 = (int *)FUN_00790af0(param_1_00 + 0xcf,*puVar9,puVar9[1],7,0,0x3f800000);
      puVar33 = &DAT_00c34bf0;
      puVar9 = &DAT_00c34ba0;
      FUN_004177c0(local_54);
      FUN_00435c20(puVar9,puVar33);
      puVar9 = (undefined4 *)FUN_00435c20();
      FUN_00676150(*puVar9,puVar9[1],puVar9[2],puVar9[3]);
      pcVar1 = *(code **)(*piVar7 + 0x3c);
      uVar28 = FUN_0040d0e0(0x3f800000,0,0,0);
      (*pcVar1)(uVar28,0xffffffff,0xff,0,1);
      (**(code **)(*piVar7 + 0xc))();
      goto LAB_00779031;
    }
  }
  cVar2 = HELPER_Player_HasCollectible(0x1c9,0);
  if ((cVar2 != '\0') && ((local_124 & 0x2200000) == 0)) {
    FUN_005cbd00(0x1c9);
    iVar6 = FUN_007e9020(5);
    if (iVar6 == 0) {
      pcVar1 = *(code **)(*param_1_00 + 0x3c);
      uVar28 = FUN_00435a80();
      (*pcVar1)(uVar28,10,1,1,1);
      goto LAB_00779031;
    }
  }
  if ((local_124 & 0x100d0400) == 0) {
    FUN_007d1c10();
  }
  cVar2 = FUN_00665c60(0x49);
  if ((cVar2 == '\0') && ((param_1_00[0xb] != 1 || (cVar2 = FUN_00665c60(0x37), cVar2 == '\0')))) {
    FUN_00417850();
    cVar2 = FUN_00429550();
    if ((cVar2 == '\0') || (cVar2 = FUN_005b1580(), cVar2 == '\0')) {
      if (((param_1 <= 0.0) && ((local_124 & 0x8000) != 0)) &&
         ((cVar2 = FUN_007c3320(), cVar2 == '\0' || ((*piVar8 == 1000 && (piVar8[1] == 0x7b)))))) {
        HELPER_Entity_DamagePreparation();
        local_b4 = local_124;
        local_bc[0] = param_1;
        local_b0 = param_3;
        FUN_00499960(piVar8);
        HELPER_DamageQueue_Append(local_bc);
        param_1_00[6] = param_1_00[6] | local_124;
        param_1_00[7] = param_1_00[7] | (uint)param_3;
        param_1_00[5] = (int)(param_1 + (float)param_1_00[5]);
      }
      auVar24 = ZEXT416((uint)(param_1 + (float)DAT_00baa2d0));
      local_144 = (int *)(int)(param_1 + (float)DAT_00baa2d0);
      local_104 = local_144;
      FUN_00417850();
      cVar2 = FUN_00429550();
      if (((cVar2 != '\0') && (local_104 == (int *)0x0)) &&
         (auVar24 = ZEXT416((uint)param_1), DAT_00ba9fe4 < param_1)) {
        local_104 = (int *)0x1;
      }
      local_134 = (int *)(local_124 & 0x2000000);
      if (local_134 == (int *)0x0) {
        cVar2 = FUN_006f8120();
        if (cVar2 == '\0') {
          FUN_00424530();
          iVar6 = FUN_0040c3a0();
          if ((iVar6 < 7) && (iVar6 = FUN_006b84b0(), iVar6 < 1)) {
            FUN_00424530();
            cVar2 = FUN_0074f090();
            if (cVar2 == '\0') goto LAB_00773d11;
          }
          local_100 = (int *)0x2;
          ppiVar11 = (int **)FUN_0041cb80();
          local_104 = *ppiVar11;
        }
        else {
LAB_00773d11:
          FUN_006f8120();
        }
        cVar2 = HELPER_Player_HasCollectible(0x6c,0);
        if ((((cVar2 != '\0') || (cVar2 = FUN_009305f0(0x6c), cVar2 != '\0')) ||
            ((iVar6 = HELPER_Player_TrinketMultiplier(0xe), 2 < iVar6 ||
             ((*(byte *)(piVar8 + 8) & 4) != 0)))) ||
           ((cVar2 = HELPER_Player_HasCollectible(0x279,0), cVar2 != '\0' &&
            (cVar2 = FUN_006f8100(), cVar2 == '\0')))) {
          auVar24 = ZEXT416(DAT_00baa2d0);
          local_100 = DAT_00baa2d0;
          FUN_00417850();
          cVar2 = FUN_00429550();
          piVar7 = local_100;
          if (cVar2 != '\0') {
            piVar7 = DAT_00baa380;
          }
          if (1 < (int)local_104) {
            local_11c = (int *)0x1;
            fVar22 = (float)(int)local_104 * (float)piVar7 + (float)DAT_00baa2d0;
            auVar24 = ZEXT416((uint)fVar22);
            local_100 = (int *)(int)fVar22;
            ppiVar11 = (int **)FUN_0041cb80();
            local_104 = *ppiVar11;
          }
        }
        FUN_0042ca00();
        uVar28 = FUN_0072fda0(0x1d);
        cVar2 = FUN_009305c0(uVar28);
        if (cVar2 != '\0') {
          local_100 = DAT_00baa454;
          FUN_00417850();
          cVar2 = FUN_00429550();
          if (cVar2 != '\0') {
            local_100 = DAT_00baa4c0;
          }
          local_11c = (int *)0x2;
          piVar7 = (int *)FUN_0041cb80();
          auVar24 = ZEXT416((uint)((float)*piVar7 * (float)local_100));
          local_104 = (int *)(int)((float)*piVar7 * (float)local_100);
        }
        iVar6 = FUN_007cafe0();
        if (iVar6 == 3) {
          local_104 = (int *)0x2;
        }
        cVar2 = FUN_00665c60(0x2f);
        if (cVar2 != '\0') {
          local_100 = (int *)0x2;
          ppiVar11 = (int **)FUN_0041cb80();
          local_104 = *ppiVar11;
        }
        cVar2 = FUN_00665c60(0x30);
        if (cVar2 != '\0') {
          local_100 = (int *)0x18;
          ppiVar11 = (int **)FUN_0041cb80();
          local_104 = *ppiVar11;
        }
      }
      piVar7 = local_12c;
      local_11c = (int *)(local_124 & 0x200000);
      if (local_11c != (int *)0x0) {
        local_104 = (int *)0x0;
      }
      if ((local_124 & 0x4000) != 0) {
        local_10c = (int *)local_12c[9];
        if ((local_10c == (int *)0x0) ||
           (((cVar2 = FUN_004173b0(), cVar2 == '\0' &&
             (local_10c = (int *)FUN_004174a0(), local_10c == (int *)0x0)) ||
            (cVar2 = FUN_004173b0(), cVar2 == '\0')))) {
          local_10c = (int *)FUN_00703950(param_1_00 + 0xcf);
        }
        piVar8 = param_1_00;
        uVar28 = HELPER_Entity_Position(local_1c);
        FUN_007599d0(1,uVar28,piVar8);
      }
      cVar2 = FUN_007c3100(local_124,param_3,piVar7);
      local_14c = (float)(local_124 & 0x10000020);
      local_111 = local_14c == 0.0;
      if (((param_1_00[0xb] == 1) && (param_1_00[0x6bb] == 0xb)) &&
         (*(char *)(param_1_00 + 0x6c4) != '\0')) {
        cVar2 = '\x01';
        *(undefined *)(param_1_00 + 0x6c4) = 0;
      }
      if ((((0 < param_1_00[0x4ef]) && (((uint)param_3 & 8) == 0)) ||
          ((auVar24 = ZEXT416((uint)param_1), param_1 <= DAT_00ba9fe4 || (cVar2 != '\0')))) &&
         (local_11c == (int *)0x0)) goto LAB_00779031;
      cVar2 = FUN_009305f0(0x139);
      if ((cVar2 != '\0') && ((local_124 & 0x20) == 0)) {
        FUN_006b6470(0x115,2,0,0x3f800000);
        uVar28 = FUN_006eef60();
        piVar7 = (int *)HELPER_Entity_SpawnRelay
                                  (1000,0x10,param_1_00 + 0xcf,&DAT_00c7b640,param_1_00,0xb,uVar28);
        FUN_004564b0(param_1_00);
        FUN_004172f0(param_1_00 + 0xd3);
        uVar28 = FUN_00417200();
        FUN_0042d9b0(uVar28);
        FUN_00435cf0(0x41800000);
        (**(code **)(*piVar7 + 0xc))();
        FUN_009304a0(0x139,1);
        cVar2 = FUN_007db2d0();
        if (cVar2 == '\0') {
          cVar2 = FUN_009305f0(0x217);
          if (cVar2 == '\0') {
            cVar2 = HELPER_Player_HasCollectible(0x139,0);
            if ((cVar2 == '\0') || (*(char *)(param_1_00 + 0x4ed) != '\0')) {
              cVar2 = FUN_00930680(0x2e);
              if (cVar2 != '\0') {
                FUN_00930550(0x2e,1);
              }
            }
            else {
              *(undefined *)(param_1_00 + 0x4ed) = 1;
            }
          }
          else {
            FUN_009304a0(0x217,1);
          }
        }
        iVar6 = FUN_00930a70(0x139);
        if (iVar6 < 1) {
          FUN_0042ca00();
          uVar28 = HELPER_ItemConfig_GetCollectible(0x139);
          FUN_0075d850(uVar28);
        }
        iVar6 = FUN_007db330(0x3c);
        param_1_00[0x4ef] = iVar6;
        cVar2 = HELPER_Player_HasTrinket(0x51,0);
        if (cVar2 != '\0') {
          iVar6 = HELPER_Player_TrinketMultiplier(0x51);
          iVar6 = FUN_007db330(iVar6 * 2);
          param_1_00[0x4ef] = param_1_00[0x4ef] * iVar6;
        }
        param_1_00[0x5b] = param_1_00[0x5b] & 0xffffffef;
        param_1_00[0x5a] = param_1_00[0x5a];
        goto LAB_00779031;
      }
      if ((0 < param_1_00[0x764]) && (local_134 == (int *)0x0)) {
        FUN_005cbd00(0x21f);
        iVar6 = FUN_007e9020(2);
        if (iVar6 == 0) {
          pcVar1 = *(code **)(*param_1_00 + 0x3c);
          uVar28 = FUN_00435ad0(0x3f800000,0x40,0x40,0x80);
          (*pcVar1)(uVar28,0xf,0xff,1,1);
          iVar6 = FUN_007db330(8);
          param_1_00[0x4ef] = iVar6;
          goto LAB_007736fb;
        }
      }
      cVar2 = HELPER_Damage_CallbackGate(param_1_00,local_124,param_3,piVar7,param_5);
      if ((cVar2 == '\0') || (cVar2 = FUN_007d35b0(), cVar2 != '\0')) goto LAB_00779031;
      if ((param_1_00[0x4f0] == 0x25) && (*piVar7 == 0x362)) {
        FUN_007d87a0();
        FUN_007ce6e0(0x27,0);
        FUN_004361d0(0x5a);
        goto LAB_00779031;
      }
      if ((piVar7[9] != 0) && (local_100 = (int *)FUN_006a9140(), local_100 != (int *)0x0)) {
        FUN_0065d090();
        FUN_00425ac0(0x10,local_100);
      }
      FUN_0065d090();
      FUN_00425ac0(3,param_1_00);
      FUN_00499960(piVar7);
      param_1_00[0x5aa] = local_124;
      param_1_00[0x5ab] = (int)param_3;
      *(undefined *)((int)param_1_00 + 0x13b5) = 1;
      param_1_00[0x7bd] = 0;
      param_1_00[0x4ef] = 4;
      FUN_007cf8f0();
      local_134 = auVar24._0_4_;
      if (local_111 != '\0') {
        param_1_00[0x5ac] = param_1_00[0x5ac] + (int)local_104;
        if (param_1_00[0x4f0] == 0x16) {
          local_100 = (int *)param_1_00[0x4d1];
          iVar6 = FUN_007d4320();
          if ((((int)local_100 <= iVar6) && (param_1_00[0x4d3] < 2)) &&
             ((param_1_00[0x4d3] != 1 || ((int)(param_1_00[0x762] + (int)local_100) < 1))))
          goto LAB_007743f5;
        }
        else {
LAB_007743f5:
          param_1_00[0x5ad] = param_1_00[0x5ad] + (int)local_104;
        }
        if (piVar7[9] == 0) {
          local_10c = (int *)0x0;
        }
        else {
          local_10c = (int *)FUN_006a9140();
        }
        cVar2 = FUN_006ac530();
        if ((cVar2 != '\0') && (local_10c != (int *)0x0)) {
          auVar24 = ZEXT416((uint)param_1);
          uVar28 = FUN_00aefca0();
          FUN_006a8210(uVar28);
        }
      }
      if (*piVar7 - 10U < 0x3de) {
        FUN_00421800();
        FUN_0092aaf0(*piVar7,piVar7[1]);
      }
      local_125 = 1;
      cVar2 = FUN_00431760(6);
      if (cVar2 != '\0') {
        FUN_00a0f550(0xffff4500);
        FUN_00703580(DAT_00c71678,param_1_00 + 0xcf,local_58,"hurt %d",(int)param_1);
      }
      if (((local_124 & 0x202) != 0) && ((local_124 & 4) == 0)) {
        FUN_006b6470(0x2b,2,0,0x3f800000);
      }
      iVar6 = *piVar7;
      if ((((((((iVar6 == 0x32) || (iVar6 == 0x56)) || (iVar6 == 0x5a)) ||
             ((iVar6 == 0x196 || (iVar12 = piVar7[2], iVar12 == 0x196)))) ||
            ((iVar6 == 0x126 || ((iVar12 == 0x126 || (iVar6 == 299)))))) ||
           ((iVar6 == 9 && (((iVar12 == 0x32 || (iVar12 == 0x56)) || (iVar12 == 0x5a)))))) ||
          (iVar6 = FUN_00421770(), iVar6 == 0x18)) && (0 < param_1_00[0x4da])) {
        FUN_00759400(0xffffffff);
        iVar6 = HELPER_Global_ModuloCountdown();
        local_100 = (int *)(iVar6 + 1);
        ppiVar11 = (int **)FUN_0041cb60();
        local_10c = *ppiVar11;
        piVar8 = local_10c;
        if (0 < (int)local_10c) {
          do {
            local_100 = piVar8;
            uVar28 = FUN_006eef60();
            FUN_0067f070(local_1c);
            FUN_0067efe0();
            auVar24._0_4_ = (int *)(auVar24._0_4_ * DAT_00baa784 + DAT_00baa630);
            local_11c = auVar24._0_4_;
            uVar30 = FUN_00a104e0(local_34,&local_11c);
            param_1_00 = local_130;
            HELPER_Entity_SpawnRelay(5,0x14,local_130 + 0xcf,uVar30,local_130,1,uVar28);
            piVar8 = (int *)((int)local_100 + -1);
          } while ((int *)((int)local_100 + -1) != (int *)0x0);
          local_100 = (int *)0x0;
          piVar7 = local_12c;
        }
        FUN_00759400(-(int)local_10c);
      }
      piVar8 = auVar24._0_4_;
      if (param_1_00[0xb] == 1) {
        iVar6 = param_1_00[0x6bb];
        if (iVar6 == 0x11) {
          iVar6 = HELPER_Global_ModuloCountdown();
          if (iVar6 == 0) {
            uVar28 = FUN_00407170();
            FUN_00703be0(param_1_00 + 0xcf,0x42aa0000,param_1_00,0x3f800000,0,uVar28);
          }
          FUN_00704360(param_1_00 + 0xcf,0x42f00000,param_1_00,iVar6 != 0,0);
        }
        else if (iVar6 == 0x14) {
          auVar24 = _DAT_00c79100;
          HELPER_ExplosionDamage
                    (param_1_00 + 0xcf,0x42200000,0x42700000,1,param_1_00,SUB164(_DAT_00c79100,0),
                     SUB164(_DAT_00c79100,4),SUB164(_DAT_00c79100,8),SUB164(_DAT_00c79100,0xc),4,0,0
                    );
          piVar8 = auVar24._0_4_;
          uVar28 = FUN_006eef60();
          piVar16 = (int *)HELPER_Entity_SpawnRelay
                                     (1000,1,param_1_00 + 0xcf,&DAT_00c7b640,0,0,uVar28);
          (**(code **)(*piVar16 + 0xc))();
        }
        else if (iVar6 == 0x2c) {
          FUN_005b39d0((int)&local_10c + 2,0x69,1,0xffffffff,0);
        }
      }
      cVar2 = HELPER_Player_HasCollectible(0x21a,0);
      if ((cVar2 != '\0') &&
         ((param_1_00[0x5b0] != 0 ||
          ((param_1_00[0x5f1] != 0 && (cVar2 = FUN_0060cc80(), cVar2 != '\0')))))) {
        FUN_005cbd00(0x21a);
        iVar6 = FUN_007e9020(10);
        if ((iVar6 == 0) || (iVar6 = FUN_00421770(), iVar6 == 0x29)) {
          FUN_0075e1d0();
          FUN_005b39d0((int)&local_10c + 2,0x1df,1,0xffffffff,0);
          FUN_006b6470(0x9d,2,0,0x3f800000);
        }
      }
      cVar2 = FUN_009305f0(0x53);
      if (cVar2 == '\0') {
        auVar25 = ZEXT416(local_134);
        FUN_007c9ad0();
        iVar6 = 0x37;
      }
      else {
        FUN_007c9ad0();
        local_100 = piVar8;
        iVar6 = HELPER_Global_ModuloCountdown();
        auVar25 = ZEXT416(local_100);
        iVar6 = (-(uint)(iVar6 != 0) & 0xfffffffe) + 0x6a;
      }
      FUN_006b6470(iVar6,2,0,auVar25._0_4_);
      if (*piVar7 == 0x2d) {
        iVar6 = HELPER_Global_ModuloCountdown();
        uVar28 = 0x54;
LAB_00774872:
        FUN_009568e0(uVar28,iVar6 + 0x32,0,0x3f800000);
      }
      else if (*piVar7 == 0x4e) {
        iVar6 = HELPER_Global_ModuloCountdown();
        uVar28 = 0x56;
        goto LAB_00774872;
      }
      cVar2 = HELPER_Player_HasTrinket(0x28,0);
      iVar6 = 0x14;
      if (cVar2 != '\0') {
        local_100 = (int *)HELPER_Player_TrinketMultiplier(0x28);
        FUN_00417850();
        cVar2 = FUN_00429550();
        if (cVar2 != '\0') {
          iVar6 = 10;
        }
        if (local_100 == (int *)0x2) {
          FUN_00417850();
          cVar2 = FUN_00429550();
          iVar6 = 0x21;
          iVar12 = 0x14;
LAB_0077490b:
          if (cVar2 != '\0') {
            iVar6 = iVar12;
          }
        }
        else if (2 < (int)local_100) {
          FUN_00417850();
          cVar2 = FUN_00429550();
          iVar6 = 0x32;
          iVar12 = 0x1e;
          goto LAB_0077490b;
        }
        FUN_00417850();
        cVar2 = FUN_00429550();
        fVar22 = DAT_00baa784;
        if (cVar2 != '\0') {
          fVar22 = DAT_00baa6bc;
        }
        fVar23 = (float)param_1_00[0x55b];
        auVar25 = ZEXT416((uint)(fVar22 * fVar23));
        uVar5 = HELPER_Global_ModuloCountdown();
        if (uVar5 < (uint)(iVar6 + (int)(fVar22 * fVar23))) {
          FUN_0042ca00();
          uVar32 = 1;
          uVar30 = 1;
          uVar28 = FUN_0072fd70(0x28);
          uVar28 = FUN_00435f80(uVar28);
          FUN_00930220(uVar28,uVar30,uVar32);
        }
      }
      cVar2 = HELPER_Player_HasTrinket(0x30,0);
      if (cVar2 != '\0') {
        auVar25 = ZEXT416((uint)((float)param_1_00[0x55b] * DAT_00baa1f8));
        local_100 = (int *)0x2;
        local_11c = (int *)(0x14 - (int)((float)param_1_00[0x55b] * DAT_00baa1f8));
        FUN_0041cb80();
        iVar6 = HELPER_Global_ModuloCountdown();
        if (iVar6 == 0) {
          FUN_009568e0(0x21,2,0,0x3f800000);
          FUN_00456860();
          FUN_009ad210(0x1e,0,0);
          FUN_005b39d0((int)&local_10c + 2,0x23,1,0xffffffff,0);
        }
      }
      cVar2 = HELPER_Player_HasTrinket(0x1d,0);
      if (cVar2 != '\0') {
        FUN_00417850();
        cVar2 = FUN_00429550();
        if ((cVar2 == '\0') || (iVar6 = HELPER_Global_ModuloCountdown(), iVar6 == 0)) {
          uVar28 = 0;
          piVar7 = param_1_00 + 0xcf;
          iVar6 = HELPER_Player_TrinketMultiplier(0x1d);
          iVar12 = HELPER_Global_ModuloCountdown(piVar7,uVar28);
          FUN_007599d0(iVar6 * (iVar12 + 1),piVar7,uVar28);
        }
      }
      cVar2 = HELPER_Player_HasCollectible(0x94,0);
      if (cVar2 != '\0') {
        FUN_00417850();
        cVar2 = FUN_00429550();
        if (cVar2 != '\0') {
          uVar26 = FUN_00a15b10();
          local_18 = (float)(((int)((ulonglong)uVar26 >> 0x20) - param_1_00[0xba9]) -
                            (uint)((uint)uVar26 < (uint)param_1_00[0xba8]));
          if ((local_18 == 0.0) && ((uint)uVar26 - param_1_00[0xba8] < 0x1389)) goto LAB_00774b06;
        }
        uVar28 = 0;
        piVar7 = param_1_00 + 0xcf;
        iVar6 = HELPER_Global_ModuloCountdown(piVar7,0);
        FUN_007599d0(iVar6 + 2,piVar7,uVar28);
        uVar26 = FUN_00a15b10();
        *(undefined8 *)(param_1_00 + 0xba8) = uVar26;
      }
LAB_00774b06:
      cVar2 = HELPER_Player_HasCollectible(0x20d,0);
      if (cVar2 != '\0') {
        FUN_00417850();
        cVar2 = FUN_00429550();
        if ((cVar2 == '\0') ||
           (*(char *)((int)param_1_00 + 0x2eca) = *(char *)((int)param_1_00 + 0x2eca) + '\x01',
           (uint)*(byte *)((int)param_1_00 + 0x2eca) % 5 == 0)) {
          FUN_00759b90();
        }
      }
      cVar2 = HELPER_Player_HasCollectible(0x292,0);
      if (cVar2 != '\0') {
        local_134 = (int *)0x0;
        FUN_00407480();
        FUN_00428a60();
        AI_0041af60(local_54,3,0xe4,0xffffffff,0,0);
        local_8 = 10;
        iVar6 = FUN_004176f0();
        if (iVar6 != 0) {
          uVar5 = 0;
          do {
            ppiVar11 = (int **)FUN_00417620(uVar5);
            local_100 = *ppiVar11;
            piVar7 = (int *)FUN_004361f0();
            if (piVar7 == param_1_00) {
              fVar21 = (float10)FUN_00417360();
              FUN_00435d20((float)fVar21);
              local_134 = (int *)((int)local_134 + 1);
            }
            uVar5 = uVar5 + 1;
            uVar13 = FUN_004176f0();
          } while (uVar5 < uVar13);
        }
        FUN_00417850();
        cVar2 = FUN_00429550();
        fVar22 = DAT_00baa854;
        if (cVar2 == '\0') {
LAB_00774c43:
          if (local_134 < (int *)0x10) {
            FUN_007d1860(param_1_00 + 0xcf,1);
          }
        }
        else {
          fVar23 = param_1 + (float)param_1_00[0xbb5];
          auVar25 = ZEXT416((uint)fVar23);
          bVar20 = DAT_00baa854 <= fVar23;
          param_1_00[0xbb5] = (int)fVar23;
          if (bVar20) {
            auVar25 = ZEXT416((uint)(fVar23 - fVar22));
            param_1_00[0xbb5] = (int)(fVar23 - fVar22);
            goto LAB_00774c43;
          }
        }
        local_8 = 0xffffffff;
        FUN_004175b0();
      }
      cVar2 = HELPER_Player_HasCollectible(0x2b8,0);
      if ((cVar2 != '\0') && (iVar6 = FUN_00930a70(0x2b8), iVar6 < 10)) {
        FUN_009302e0(0x2b8,1,1);
      }
      if (((local_111 != '\0') && (cVar2 = HELPER_Player_HasTrinket(0x91,0), cVar2 != '\0')) &&
         (cVar2 = FUN_00771f60(0x91), cVar2 != '\0')) {
        FUN_0042ca00();
        local_11c = (int *)FUN_0072fd70(0x91);
        if (local_11c != (int *)0x0) {
          param_1_00[0x55d] = param_1_00[0x55d] | local_11c[0x15];
          FUN_00435fb0();
        }
        FUN_006b6470(0x10b,2,0,0x3f800000);
        uVar28 = FUN_006eef60();
        uVar30 = FUN_0067f070(local_1c);
        FUN_0067efe0();
        auVar25._0_4_ = (int *)(auVar25._0_4_ * DAT_00baa7a4 + DAT_00baa75c);
        local_100 = auVar25._0_4_;
        uVar30 = FUN_004171d0(uVar30);
        piVar7 = (int *)HELPER_Entity_SpawnRelay(1000,0xf,local_118,uVar30,0,100,uVar28);
        FUN_00417910();
        iVar6 = FUN_00694fb0(5,0x15e,0);
        FUN_00435dd0();
        FUN_0040bd50(iVar6 + 0x74,0);
        FUN_00435dd0();
        FUN_0040bf30(0,local_11c + 0xe);
        FUN_00435dd0();
        FUN_0040bff0();
        FUN_00435dd0();
        HELPER_0040a380_AnimationActionA("Appear",0);
        FUN_004cdce0();
        FUN_0044bfa0(5);
        (**(code **)(*piVar7 + 0xc))();
        param_1_00 = local_130;
      }
      cVar2 = FUN_007aa7c0(0xd);
      if ((cVar2 != '\0') && (iVar6 = HELPER_Global_ModuloCountdown(), iVar6 == 0)) {
        uVar28 = FUN_006eef60();
        HELPER_Entity_SpawnRelay(1000,0x3d,param_1_00 + 0xcf,&DAT_00c7b640,param_1_00,0,uVar28);
        FUN_006a92a0(param_1_00);
        auVar25 = ZEXT416((uint)param_1_00[0xdc]);
        FUN_00435ef0(param_1_00[0xdc],0x42b40000);
        FUN_00435e90(10);
      }
      cVar2 = HELPER_Player_HasCollectible(0xa2,0);
      if (cVar2 != '\0') {
        auVar25 = ZEXT416((uint)((float)param_1_00[0x55b] * DAT_00baa154));
        local_100 = (int *)0x1;
        local_11c = (int *)(5 - (int)((float)param_1_00[0x55b] * DAT_00baa154));
        FUN_0041cb80();
        iVar6 = HELPER_Global_ModuloCountdown();
        if (iVar6 == 0) {
          FUN_0042ca00();
          uVar28 = HELPER_ItemConfig_GetCollectible(0x3a);
          FUN_00435f80(uVar28);
          FUN_0042ca00();
          iVar6 = HELPER_ItemConfig_GetCollectible(0xa2);
          local_4c = *(undefined4 *)(iVar6 + 0x78);
          FUN_00930220(local_54,1,1);
        }
      }
      cVar2 = HELPER_Player_HasCollectible(0x75,0);
      if (cVar2 != '\0') {
        FUN_00417850();
        cVar2 = FUN_00429550();
        if (cVar2 != '\0') {
          uVar26 = FUN_00a15b10();
          local_18 = (float)(((int)((ulonglong)uVar26 >> 0x20) - param_1_00[0xbaf]) -
                            (uint)((uint)uVar26 < (uint)param_1_00[0xbae]));
          if ((local_18 == 0.0) && ((uint)uVar26 - param_1_00[0xbae] < 0x7531)) goto LAB_00775002;
        }
        FUN_0042ca00();
        uVar28 = HELPER_ItemConfig_GetCollectible(0x75);
        FUN_00435f80(uVar28);
        FUN_00417850();
        cVar2 = FUN_00429550();
        if (cVar2 != '\0') {
          local_4c = 0x1c2;
          uVar26 = FUN_00a15b10();
          *(undefined8 *)(param_1_00 + 0xbae) = uVar26;
        }
        FUN_00930220(local_54,1,1);
        FUN_0042ca00();
        uVar28 = HELPER_ItemConfig_GetCollectible(0x75);
        FUN_0075d850(uVar28);
      }
LAB_00775002:
      cVar2 = HELPER_Player_HasCollectible(0x262,0);
      if (cVar2 != '\0') {
        FUN_009302e0(0x262,1,1);
        FUN_0042ca00();
        uVar28 = HELPER_ItemConfig_GetCollectible(0x262);
        FUN_0075d850(uVar28);
      }
      uVar5 = 0;
      do {
        iVar6 = FUN_0042a2f0(uVar5);
        if (iVar6 == 0x263) {
          FUN_007915a0(1,uVar5,0,0,0);
        }
        uVar5 = uVar5 + 1;
      } while (uVar5 < 4);
      if ((param_1_00[0x4f0] == 0x1b) &&
         (((0 < param_1_00[0x4d1] || (0 < param_1_00[0x4d3])) || (0 < param_1_00[0x762])))) {
        FUN_007d9200(10000);
      }
      cVar2 = HELPER_Player_HasCollectible(0x112,0);
      if (cVar2 != '\0') {
        FUN_009302e0(0x112,1,1);
      }
      cVar2 = HELPER_Player_HasCollectible(0x9c,0);
      if (cVar2 != '\0') {
        FUN_00417850();
        cVar2 = FUN_00429550();
        local_106 = cVar2 == '\0';
        FUN_00417850();
        cVar2 = FUN_00429550();
        if (cVar2 == '\0') {
LAB_00775125:
          if (local_106 == '\0') goto LAB_0077513f;
        }
        else {
          bVar3 = *(char *)((int)param_1_00 + 0x2ecb) + (char)local_104;
          *(byte *)((int)param_1_00 + 0x2ecb) = bVar3;
          if (bVar3 < 0x14) goto LAB_00775125;
          *(byte *)((int)param_1_00 + 0x2ecb) = bVar3 - 0x14;
        }
        FUN_007915a0(1,0xffffffff,0,0,0);
      }
LAB_0077513f:
      cVar2 = HELPER_Player_HasCollectible(0xb4,0);
      if (cVar2 != '\0') {
        FUN_00417850();
        cVar2 = FUN_00429550();
        if (cVar2 != '\0') {
          uVar26 = FUN_00a15b10();
          local_18 = (float)(((int)((ulonglong)uVar26 >> 0x20) - param_1_00[0xbb1]) -
                            (uint)((uint)uVar26 < (uint)param_1_00[0xbb0]));
          if ((local_18 == 0.0) && ((uint)uVar26 - param_1_00[0xbb0] < 0x1389)) goto LAB_007751a5;
        }
        FUN_009302e0(0xb4,1,1);
        uVar26 = FUN_00a15b10();
        *(undefined8 *)(param_1_00 + 0xbb0) = uVar26;
      }
LAB_007751a5:
      cVar2 = HELPER_Player_HasCollectible(0xd6,0);
      if (cVar2 != '\0') {
        FUN_0042ca00();
        uVar28 = HELPER_ItemConfig_GetCollectible(0xd6);
        FUN_00435f80(uVar28);
        FUN_00417850();
        cVar2 = FUN_00429550();
        if (cVar2 != '\0') {
          local_4c = 300;
        }
        FUN_00930220(local_54,1,1);
      }
      cVar2 = HELPER_Player_HasTrinket(1,0);
      if (cVar2 != '\0') {
        piVar7 = (int *)HELPER_Player_TrinketMultiplier(1);
        local_134 = piVar7;
        iVar6 = FUN_007cafe0();
        if (iVar6 == 3) {
          FUN_005cbd00(1);
          piVar7 = (int *)FUN_007e9020(2);
          local_134 = piVar7;
        }
        else {
          FUN_005cbd00(1);
          FUN_007e90f0();
        }
        if (0 < (int)piVar7) {
          do {
            uVar28 = FUN_006eef60();
            FUN_0067f070(local_1c);
            FUN_0067efe0();
            auVar25._0_4_ = (int *)(auVar25._0_4_ * DAT_00baa784 + DAT_00baa630);
            local_100 = auVar25._0_4_;
            uVar30 = FUN_00a104e0(local_34,&local_100);
            param_1_00 = local_130;
            HELPER_Entity_SpawnRelay(5,0x14,local_130 + 0xcf,uVar30,local_130,0,uVar28);
            local_134 = (int *)((int)local_134 + -1);
          } while (local_134 != (int *)0x0);
        }
      }
      cVar2 = HELPER_Player_HasCollectible(0xcc,0);
      if ((cVar2 != '\0') && (iVar6 = HELPER_Global_ModuloCountdown(), iVar6 != 0)) {
        local_10c = (int *)0x0;
        uVar5 = HELPER_Global_ModuloCountdown();
        if (uVar5 == 0) {
          cVar2 = HELPER_Player_HasTrinket(0x16,0);
          if ((cVar2 == '\0') || (iVar6 = HELPER_Global_ModuloCountdown(), iVar6 == 0))
          goto LAB_00775342;
          iVar6 = HELPER_Global_ModuloCountdown();
          uVar5 = iVar6 + 1;
        }
        if (uVar5 < 4) {
LAB_00775342:
                    /* WARNING: Could not recover jumptable at 0x00775342. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          (*(code *)(&PTR_LAB_007791b0)[uVar5])();
          return;
        }
        uVar28 = FUN_006eef60();
        FUN_00407480();
        uVar30 = FUN_00813520(local_1c,param_1_00 + 0xcf,0x42200000,0,0,0);
        HELPER_Entity_SpawnRelay(5,local_10c,uVar30,&DAT_00c7b640,param_1_00,0,uVar28);
      }
      FUN_005b17c0(0xdb);
      local_11c = (int *)FUN_0065cf80(0x16);
      FUN_00417850();
      cVar2 = FUN_00429550();
      fVar22 = DAT_00baa198;
      if (cVar2 != '\0') {
        fVar22 = DAT_00baa120;
      }
      local_100 = (int *)(fVar22 + (float)param_1_00[0x55b] * DAT_00baa06c);
      auVar24 = ZEXT416(local_100);
      cVar2 = HELPER_Player_HasCollectible(0xdb,0);
      if (cVar2 != '\0') {
        fVar21 = (float10)FUN_007e9080();
        auVar24 = ZEXT416(local_100);
        local_134 = (int *)(float)fVar21;
        if (((float)local_134 <= (float)local_100) &&
           ((cVar2 = HELPER_Player_HasTrinket(0x16,0), cVar2 == '\0' ||
            (iVar6 = FUN_007e9020(5), iVar6 == 0)))) {
          uVar28 = FUN_006eef60();
          FUN_00417850();
          cVar2 = FUN_00429550();
          local_100 = (int *)((cVar2 != '\0') + 1);
          FUN_00407480();
          uVar30 = FUN_00813520(local_1c,param_1_00 + 0xcf,0x42200000,0,0,0);
          HELPER_Entity_SpawnRelay(5,10,uVar30,&DAT_00c7b640,param_1_00,local_100,uVar28);
        }
      }
      FUN_005b17c0(0xe1);
      cVar2 = HELPER_Player_HasCollectible(0xe1,0);
      if (cVar2 != '\0') {
        fVar21 = (float10)FUN_007e9080();
        local_100 = (int *)(float)fVar21;
        fVar22 = (float)param_1_00[0x55b] * DAT_00baa08c + DAT_00baa108;
        auVar24 = ZEXT416((uint)fVar22);
        if (((float)local_100 <= fVar22) &&
           ((cVar2 = HELPER_Player_HasTrinket(0x16,0), cVar2 == '\0' ||
            (iVar6 = FUN_007e9020(5), iVar6 == 0)))) {
          uVar28 = FUN_006eef60();
          FUN_00407480();
          uVar30 = FUN_00813520(local_1c,param_1_00 + 0xcf,0x42200000,0,0,0);
          HELPER_Entity_SpawnRelay(5,10,uVar30,&DAT_00c7b640,param_1_00,3,uVar28);
        }
      }
      local_10c = (int *)FUN_005b17c0(0xe3);
      cVar2 = HELPER_Player_HasCollectible(0xe3,0);
      if (cVar2 != '\0') {
        iVar6 = FUN_007cafe0();
        if (iVar6 == 3) {
LAB_00775601:
          local_134 = (int *)FUN_007e9020(2);
        }
        else {
          FUN_00417850();
          cVar2 = FUN_00429550();
          if (cVar2 != '\0') goto LAB_00775601;
          iVar6 = FUN_007e9020(2);
          local_134 = (int *)(iVar6 + 1);
        }
        if (0 < (int)local_134) {
          do {
            uVar28 = FUN_007e90f0();
            FUN_0067f070(local_1c);
            local_100 = (int *)0x40000000;
            uVar30 = FUN_00a104e0(local_34,&local_100);
            HELPER_Entity_SpawnRelay(5,0x14,param_1_00 + 0xcf,uVar30,param_1_00,1,uVar28);
            local_134 = (int *)((int)local_134 + -1);
          } while (local_134 != (int *)0x0);
        }
      }
      FUN_0065cf80(8);
      cVar2 = HELPER_Player_HasTrinket(8,0);
      if (cVar2 != '\0') {
        auVar24 = ZEXT416((uint)((float)param_1_00[0x55b] * (float)DAT_00baa2d0));
        local_100 = (int *)0x1;
        local_134 = (int *)(0x14 - (int)((float)param_1_00[0x55b] * (float)DAT_00baa2d0));
        puVar9 = (undefined4 *)FUN_0041cb80();
        iVar6 = FUN_007e9020(*puVar9);
        iVar12 = HELPER_Player_TrinketMultiplier(8);
        if ((iVar6 < iVar12) && (cVar2 = FUN_009305f0(0x5d), cVar2 == '\0')) {
          FUN_005b39d0((int)&local_10c + 2,0x5d,1,0xffffffff,0);
          local_125 = 0;
        }
      }
      cVar2 = HELPER_Player_HasCollectible(0xd3,0);
      if (cVar2 != '\0') {
        FUN_00417850();
        cVar2 = FUN_00429550();
        if (cVar2 != '\0') {
          uVar26 = FUN_00a15b10();
          local_18 = (float)(((int)((ulonglong)uVar26 >> 0x20) - param_1_00[0xbab]) -
                            (uint)((uint)uVar26 < (uint)param_1_00[0xbaa]));
          if ((local_18 == 0.0) && ((uint)uVar26 - param_1_00[0xbaa] < 0x5dd)) goto LAB_007757f6;
        }
        FUN_005b17c0(0xd3);
        FUN_00417850();
        cVar2 = FUN_00429550();
        if (cVar2 == '\0') {
          iVar6 = FUN_007e9020(4);
          iVar6 = iVar6 + 2;
        }
        else {
          iVar6 = FUN_007e9020(2);
          iVar6 = iVar6 + 1;
        }
        FUN_00407480();
        FUN_00813520(local_1c,param_1_00 + 0xcf,0,1,0,0);
        if (0 < iVar6) {
          do {
            FUN_007bf640(local_1c,&DAT_00c7b640);
            iVar6 = iVar6 + -1;
          } while (iVar6 != 0);
        }
        uVar26 = FUN_00a15b10();
        *(undefined8 *)(param_1_00 + 0xbaa) = uVar26;
      }
LAB_007757f6:
      cVar2 = HELPER_Player_HasCollectible(0x106,0);
      if (((cVar2 != '\0') &&
          (iVar6 = FUN_007dd380(),
          (param_1_00[0x4d1] - (int)local_104) + param_1_00[0x762] + param_1_00[0x4d3] <= iVar6)) &&
         (iVar6 = FUN_007dd380(), iVar6 < param_1_00[0x4d1] + param_1_00[0x762] + param_1_00[0x4d3])
         ) {
        FUN_00417850();
        cVar2 = FUN_00429550();
        if ((cVar2 == '\0') || (*(char *)(param_1_00 + 0xbb6) == '\0')) {
          FUN_009568e0(0x21,2,0,0x3f800000);
          FUN_00456860();
          FUN_009ad210(0x1f,0,0);
          FUN_005b39d0((int)&local_10c + 2,0x23,1,0xffffffff,0);
          *(undefined *)(param_1_00 + 0xbb6) = 1;
        }
      }
      cVar2 = HELPER_Player_HasCollectible(0x12d,0);
      if ((cVar2 != '\0') || (iVar6 = FUN_007c7960(), iVar6 == 0x12d)) {
        FUN_009302e0(0x6c,1,1);
      }
      local_100 = (int *)FUN_005b17c0(0x12f);
      cVar2 = HELPER_Player_HasCollectible(0x12f,0);
      if ((cVar2 != '\0') || (iVar6 = FUN_007c7960(), iVar6 == 0x12f)) {
        FUN_00417850();
        cVar2 = FUN_00429550();
        fVar22 = (float)param_1_00[0x55b];
        auVar24 = ZEXT416((uint)fVar22);
        if (cVar2 == '\0') {
          auVar24 = ZEXT416((uint)(fVar22 * DAT_00baa1f8));
          local_100 = (int *)0x1;
          local_134 = (int *)(4 - (int)(fVar22 * DAT_00baa1f8));
          puVar9 = (undefined4 *)FUN_0041cb80();
          iVar6 = FUN_007e9020(*puVar9);
          bVar20 = iVar6 == 0;
        }
        else {
          uVar5 = 10;
          if (fVar22 < DAT_00baa81c) {
            if (fVar22 < DAT_00baa7b8) {
              if (DAT_00baa75c <= fVar22) {
                uVar5 = 0x14;
              }
              uVar13 = FUN_007e9020(100);
              bVar20 = uVar13 < uVar5;
            }
            else {
              uVar5 = FUN_007e9020(100);
              bVar20 = uVar5 < 0x23;
            }
          }
          else {
            uVar5 = FUN_007e9020(100);
            bVar20 = uVar5 < 0x32;
          }
        }
        if (bVar20) {
          FUN_009302e0(0x3a,1,1);
        }
      }
      cVar2 = HELPER_Player_HasCollectible(0x9d,0);
      if (((cVar2 != '\0') || (cVar2 = HELPER_Player_HasCollectible(0x2b7,0), cVar2 != '\0')) ||
         (cVar2 = HELPER_Player_HasCollectible(0xba,0), cVar2 != '\0')) {
        local_100 = (int *)CONCAT31(local_100._1_3_,param_1_00[0x4f0] != 6);
        cVar2 = HELPER_Player_HasCollectible(0x9d,0);
        if (cVar2 != '\0') {
          FUN_009302e0(0x9d,local_100,1);
        }
        cVar2 = HELPER_Player_HasCollectible(0x2b7,0);
        if (cVar2 != '\0') {
          FUN_009302e0(0x2b7,1,1);
        }
        *(short *)(param_1_00 + 0x4df) = *(short *)(param_1_00 + 0x4df) + 1;
      }
      cVar2 = HELPER_Player_HasCollectible(0x173,0);
      if (((cVar2 != '\0') && (*local_12c != 4)) && (*local_12c != 6)) {
        FUN_0042ca00();
        uVar32 = 1;
        uVar30 = 1;
        uVar28 = HELPER_ItemConfig_GetCollectible(0x41);
        uVar28 = FUN_00435f80(uVar28);
        FUN_00930220(uVar28,uVar30,uVar32);
      }
      cVar2 = HELPER_Player_HasTrinket(0x43,0);
      if (cVar2 != '\0') {
        uVar5 = 0x32;
        iVar6 = HELPER_Player_TrinketMultiplier(0x43);
        if (iVar6 == 2) {
          uVar5 = 0x4b;
        }
        else if (iVar6 == 3) {
          uVar5 = 100;
        }
        FUN_0065cf80(0x43);
        uVar13 = FUN_007e9020(100);
        if (uVar13 < uVar5) {
          FUN_0065cf80(0x43);
          uVar28 = FUN_007e9020(5);
          switch(uVar28) {
          case 0:
            uVar28 = 0x69;
            break;
          case 1:
            uVar28 = 0xa6;
            break;
          case 2:
            uVar28 = 0x182;
            break;
          case 3:
            uVar28 = 0x196;
            break;
          case 4:
            uVar28 = 0x11d;
            break;
          default:
            goto LAB_00775bb8;
          }
          FUN_005b39d0((int)&local_10c + 2,uVar28,1,0xffffffff,0);
        }
      }
LAB_00775bb8:
      cVar2 = HELPER_Player_HasCollectible(0x197,0);
      if ((cVar2 != '\0') && (cVar2 = FUN_009305f0(0x197), cVar2 != '\0')) {
        FUN_00417850();
        cVar2 = FUN_00429550();
        if (cVar2 != '\0') {
          *(short *)(param_1_00 + 0xbb2) = *(short *)(param_1_00 + 0xbb2) + 1;
          if (*(short *)(param_1_00 + 0xbb2) < 5) goto LAB_00775c66;
          *(undefined2 *)(param_1_00 + 0xbb2) = 0xff2e;
        }
        FUN_009304a0(0x197,1);
        FUN_005b17c0(0x197);
        iVar6 = FUN_007e9020(4);
        param_1_00[0x64b] = iVar6;
        FUN_0042ca00();
        uVar28 = FUN_0072fda0(0x11);
        FUN_0075d850(uVar28);
      }
LAB_00775c66:
      if (*(short *)(param_1_00 + 0xbb2) < 0) {
        *(undefined2 *)(param_1_00 + 0xbb2) = 0xff2e;
      }
      FUN_00417850();
      cVar2 = FUN_00429550();
      if (((cVar2 == '\0') && (cVar2 = HELPER_Player_HasCollectible(0x19f,0), cVar2 != '\0')) &&
         (cVar2 = FUN_009305f0(0x19f), cVar2 != '\0')) {
        FUN_009304a0(0x19f,1);
        HELPER_0040a380_AnimationActionA("FloatNoGlow",0);
      }
      cVar2 = HELPER_Player_HasCollectible(0x19c,0);
      if (cVar2 != '\0') {
        iVar6 = FUN_007c9080();
        piVar7 = local_130;
        local_13c = (float)FUN_007c90b0();
        piVar7[0x64d] = piVar7[0x64d] + 1;
        iVar12 = FUN_007c9080();
        local_10c = (int *)FUN_007c90b0();
        param_1_00 = local_130;
        if (iVar6 != iVar12) {
          iVar6 = 6;
          local_a4 = _DAT_00bab3a0;
          fStack_a0 = _UNK_00bab3a4;
          uStack_9c = _UNK_00bab3a8;
          uStack_98 = _UNK_00bab3ac;
          _local_94 = _DAT_00baaf40;
          auVar24 = _DAT_00baaf40;
          FUN_00421800();
          cVar2 = FUN_00929aa0(0x1c7);
          if (cVar2 != '\0') {
            local_94._8_4_ = 0x800;
            iVar6 = 7;
          }
          FUN_00421800();
          cVar2 = FUN_00929aa0(0x1f6);
          param_1_00 = local_130;
          if (cVar2 != '\0') {
            (&local_a4)[iVar6] = (int *)0x1000;
            iVar6 = iVar6 + 1;
          }
          FUN_005cbd00(0x19c);
          local_100 = (int *)FUN_007e9020(iVar6);
          iVar12 = 0;
          if (iVar6 != 0) {
            do {
              local_134 = (&local_a4)[(iVar12 + (int)local_100) % iVar6];
              if ((param_1_00[0x64e] & (uint)local_134) == 0) {
                FUN_009568e0(0x3f1,2,0,0x3f800000);
                param_1_00[0x64e] = param_1_00[0x64e] | (uint)local_134;
                param_1_00[0x55d] = param_1_00[0x55d] | 0x200;
                FUN_00763570();
                break;
              }
              iVar12 = iVar12 + 1;
            } while (iVar12 < iVar6);
          }
        }
        if ((int *)local_13c != local_10c) {
          FUN_007c7d70(1);
        }
      }
      cVar2 = HELPER_Entity_HasFlag(0,4);
      if (((cVar2 != '\0') && ((int *)param_1_00[0xa3] == param_1_00)) && (0 < param_1_00[0x4e3])) {
        param_1_00[0x4e3] = 600;
      }
      cVar2 = HELPER_Player_HasCollectible(0x1c0,0);
      if (cVar2 != '\0') {
        HELPER_Entity_AddFlags(0,4);
        FUN_00431310(param_1_00);
        FUN_00499960(local_ac);
        if (param_1_00[0x4e3] < 1) {
          param_1_00[0x4e3] = 600;
        }
        FUN_005cbd00(0x1c0);
        iVar6 = FUN_007e9020(4);
        if (iVar6 == 0) {
          uVar28 = FUN_006eef60();
          FUN_00407480();
          uVar30 = FUN_00813520(local_1c,param_1_00 + 0xcf,0x42200000,0,0,0);
          HELPER_Entity_SpawnRelay(5,10,uVar30,&DAT_00c7b640,param_1_00,1,uVar28);
        }
      }
      cVar2 = HELPER_Player_HasCollectible(0x1c4,0);
      if ((cVar2 != '\0') && (cVar2 = FUN_009305f0(0x1c4), cVar2 == '\0')) {
        FUN_00417850();
        cVar2 = FUN_00429550();
        if (cVar2 != '\0') {
          uVar26 = FUN_00a15b10();
          local_18 = (float)(((int)((ulonglong)uVar26 >> 0x20) - param_1_00[0xbad]) -
                            (uint)((uint)uVar26 < (uint)param_1_00[0xbac]));
          if ((local_18 == 0.0) && ((uint)uVar26 - param_1_00[0xbac] < 0xfa1)) goto LAB_0077606b;
        }
        FUN_009302e0(0x1c4,1,1);
        FUN_00417850();
        cVar2 = FUN_00429550();
        FUN_005b39d0((int)&local_10c + 2,0x26,1,0xffffffff,-(cVar2 != '\0') & 0x20);
        FUN_009304a0(0x1c4,1);
        cVar2 = FUN_009305f0(0xd6);
        if (cVar2 == '\0') {
          FUN_005cbd00(0x1c4);
          iVar6 = FUN_007e9020(5);
          if (iVar6 == 0) {
            FUN_0042ca00();
            uVar28 = HELPER_ItemConfig_GetCollectible(0xd6);
            FUN_00435f80(uVar28);
            local_4c = 0x3c;
            FUN_00930220(local_54,1,1);
          }
        }
        uVar26 = FUN_00a15b10();
        *(undefined8 *)(param_1_00 + 0xbac) = uVar26;
      }
LAB_0077606b:
      cVar2 = HELPER_Player_HasCollectible(0x230,0);
      if (cVar2 != '\0') {
        FUN_00417850();
        cVar2 = FUN_00429550();
        if (cVar2 != '\0') {
          if (2 < *(byte *)(param_1_00 + 0xbb4)) goto LAB_00776196;
          *(byte *)(param_1_00 + 0xbb4) = *(byte *)(param_1_00 + 0xbb4) + 1;
        }
        local_100 = (int *)0x0;
        do {
          FUN_00a10350(local_1c,((float)(int)local_100 * DAT_00baab30) / DAT_00baa81c);
          local_13c = 10.0;
          FUN_00a10540(&local_13c);
          uVar28 = FUN_006eef60();
          piVar7 = (int *)HELPER_Entity_SpawnRelay
                                    (2,1,param_1_00 + 0xcf,local_1c,param_1_00,0,uVar28);
          FUN_00676120(0x3faa3d71);
          (**(code **)(*piVar7 + 0x40))(0x41200000);
          puVar9 = &DAT_00c346a0;
          FUN_004177c0(local_54);
          pauVar14 = (undefined (*) [16])FUN_00435c20(puVar9);
          auVar24 = *pauVar14;
          FUN_00676150(auVar24._0_4_,auVar24._4_4_,auVar24._8_4_,auVar24._12_4_);
          local_100 = (int *)((int)local_100 + 1);
        } while ((int)local_100 < 10);
        FUN_00930390(0x39,1,1);
        FUN_00763570();
      }
LAB_00776196:
      cVar2 = HELPER_Player_HasCollectible(0x2a3,0);
      if (cVar2 != '\0') {
        FUN_007d7c30(&DAT_00c7b640);
      }
      cVar2 = HELPER_Player_HasCollectible(0x2be,0);
      if (cVar2 != '\0') {
        local_134 = (int *)0x0;
        FUN_00407480();
        local_10c = (int *)FUN_00428a50();
        piVar7 = (int *)0x0;
        local_100 = (int *)0x0;
        iVar6 = FUN_004176f0();
        if (iVar6 != 0) {
          do {
            FUN_00417610(piVar7);
            iVar6 = FUN_00435de0();
            if ((((iVar6 != 0) && (iVar6 = FUN_00417270(), iVar6 == 0xce)) &&
                (piVar7 = (int *)FUN_004361f0(), piVar7 == param_1_00)) &&
               (iVar6 = FUN_00417280(), iVar6 == 0x2be)) {
              local_134 = (int *)((int)local_134 + 1);
            }
            piVar7 = (int *)((int)local_100 + 1);
            local_100 = piVar7;
            piVar8 = (int *)FUN_004176f0();
          } while (piVar7 < piVar8);
          if (5 < (int)local_134) goto LAB_00776282;
        }
        FUN_005c93b0(0x2be,param_1_00 + 0xcf,0,0);
      }
LAB_00776282:
      cVar2 = HELPER_Player_HasTrinket(0x9e,0);
      fVar22 = auVar24._0_4_;
      if (cVar2 != '\0') {
        iVar6 = HELPER_Player_TrinketMultiplier(0x9e);
        fVar22 = auVar24._0_4_;
        local_100 = (int *)(iVar6 + 1);
        if (0 < (int)local_100) {
          do {
            FUN_00424510();
            local_8 = 0xb;
            FUN_0049cb60(0,param_1_00[0x4da],0);
            FUN_0049cb60(1,param_1_00[0x4d7],0);
            iVar6 = param_1_00[0x4d9];
            uVar30 = 2;
            uVar28 = 0x7762f8;
            FUN_0049cb60(2,iVar6,0);
            if (param_1_00[0x4f0] == 0x12) {
              iVar6 = param_1_00[0x76a];
              uVar30 = 3;
LAB_0077631e:
              uVar28 = 0x776326;
              FUN_0049cb60(uVar30,iVar6,0);
            }
            else if (param_1_00[0x4f0] == 0x24) {
              iVar6 = param_1_00[0x76b];
              uVar30 = 4;
              goto LAB_0077631e;
            }
            uVar32 = 0x77632e;
            cVar2 = FUN_004178f0();
            if (cVar2 == '\0') goto LAB_00776576;
            uVar27 = 0x23;
            FUN_005cbd00(0x9e);
            uVar15 = FUN_007e90f0(uVar27);
            FUN_007e8f90(uVar15,uVar27);
            uVar28 = FUN_0049cbf0(uVar28,uVar30,iVar6,uVar32);
            switch(uVar28) {
            case 0:
              FUN_00759400(0xffffffff);
              FUN_005cbd00(0x9e);
              uVar28 = FUN_007e90f0();
              FUN_00407480();
              uVar30 = FUN_00813520(local_34,param_1_00 + 0xcf,0x42200000,0,0,0);
              bVar3 = 0;
              uVar32 = 0x14;
              break;
            case 1:
              FUN_007595b0(0xffffffff);
              FUN_005cbd00(0x9e);
              uVar28 = FUN_007e90f0();
              FUN_00407480();
              uVar30 = FUN_00813520(local_74,param_1_00 + 0xcf,0x42200000,0,0,0);
              bVar3 = 0;
              uVar32 = 0x1e;
              break;
            case 2:
              FUN_00759500(0xffffffff);
              FUN_005cbd00(0x9e);
              uVar28 = FUN_007e90f0();
              FUN_00407480();
              uVar30 = FUN_00813520(auStack_140,param_1_00 + 0xcf,0x42200000,0,0,0);
              bVar3 = 0;
              uVar32 = 0x28;
              break;
            case 3:
              FUN_007d2ad0(0xffffffff);
              FUN_005cbd00(0x9e);
              uVar28 = FUN_007e90f0();
              FUN_005cbd00(0x9e);
              iVar6 = FUN_007e9020(10);
              bVar3 = -(iVar6 != 0) & 8;
              FUN_00407480();
              puVar18 = local_138;
              goto LAB_00776543;
            case 4:
              FUN_007d2d40(0xffffffff);
              FUN_005cbd00(0x9e);
              uVar28 = FUN_007e90f0();
              FUN_005cbd00(0x9e);
              iVar6 = FUN_007e9020(10);
              bVar3 = -(iVar6 != 0) & 2;
              FUN_00407480();
              puVar18 = auStack_110;
LAB_00776543:
              uVar30 = FUN_00813520(puVar18,local_118,0x42200000,0,0,0);
              uVar32 = 10;
              param_1_00 = local_130;
              break;
            default:
              goto LAB_00776576;
            }
            HELPER_Entity_SpawnRelay(5,uVar32,uVar30,&DAT_00c7b640,param_1_00,bVar3,uVar28);
LAB_00776576:
            local_8 = 0xffffffff;
            thunk_FUN_00426980();
            fVar22 = auVar24._0_4_;
            local_100 = (int *)((int)local_100 + -1);
          } while (local_100 != (int *)0x0);
        }
      }
      cVar2 = HELPER_Player_HasCollectible(0x2d4,0);
      if (((cVar2 != '\0') && ((local_124 & 0x10040000) == 0)) &&
         ((cVar2 = HELPER_Player_HasTrinket(0x16,0), cVar2 == '\0' ||
          (iVar6 = FUN_007e9020(5), iVar6 == 0)))) {
        local_13c = 10.0;
        FUN_00a104e0(local_34,&local_13c);
        uVar28 = FUN_0067f070(local_74);
        local_100 = (int *)0x40000000;
        uVar28 = FUN_004171d0(uVar28);
        FUN_00a10420(local_138,uVar28);
        FUN_00a10100(local_1c,0x41900000);
        iVar6 = 2;
        if ((float)DAT_00baa454 < param_1) {
          iVar6 = 1;
        }
        fVar22 = param_1;
        cVar2 = HELPER_Player_HasTrinket(0x16,0);
        if (cVar2 != '\0') {
          iVar6 = 6;
        }
        uVar28 = FUN_006eef60();
        local_13c = 0.4;
        uVar30 = FUN_004171d0(local_1c);
        uVar30 = FUN_00a10420(local_74,uVar30);
        piVar7 = (int *)HELPER_Entity_SpawnRelay(5,10,uVar30,local_1c,local_130,iVar6,uVar28);
        FUN_0060d1f0(0x2d);
        (**(code **)(*piVar7 + 0xc))();
        uVar28 = FUN_006eef60();
        local_13c = 0.4;
        uVar30 = FUN_00a104e0(local_34,&local_13c);
        local_100 = (int *)HELPER_Entity_SpawnRelay(1000,2,local_118,uVar30,local_130,2,uVar28);
        if (iVar6 == 6) {
          pcVar1 = *(code **)(*local_100 + 0x3c);
          fVar22 = DAT_00baa1f8;
          uVar28 = FUN_00435b50(0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0,0,0);
          (*pcVar1)(uVar28,0xffffffff,0xff,0,1);
        }
        (**(code **)(*local_100 + 0xc))();
        param_1_00 = local_130;
      }
      FUN_00a10480(local_1c,local_12c + 4);
      uVar28 = FUN_00a10030(local_34);
      FUN_009e0680(4,local_12c[9],param_1_00 + 0xcf,uVar28);
      cVar2 = HELPER_Player_HasCollectible(0x1f6,0);
      if (cVar2 != '\0') {
        FUN_0067efe0();
        uVar28 = FUN_00a10350(local_1c,fVar22 * DAT_00baab30);
        FUN_007c9590(uVar28);
      }
      cVar2 = HELPER_Player_HasTrinket(0x61,0);
      if (cVar2 != '\0') {
        iVar6 = HELPER_Player_TrinketMultiplier(0x61);
        *(short *)(param_1_00 + 0x4e0) = *(short *)(param_1_00 + 0x4e0) + -1;
        if (*(short *)(param_1_00 + 0x4e0) < 1) {
          if ((int)*(short *)((int)param_1_00 + 0x1382) < iVar6 + 1) {
            param_1_00[0x55d] = param_1_00[0x55d] | 0x200;
            *(short *)((int)param_1_00 + 0x1382) = *(short *)((int)param_1_00 + 0x1382) + 1;
            FUN_00763570();
          }
          FUN_007d9ca0();
        }
        if (iVar6 + 1 <= (int)*(short *)((int)param_1_00 + 0x1382)) {
          FUN_00771f60(0x61);
        }
      }
      cVar2 = HELPER_Player_HasTrinket(0x69,0);
      if (cVar2 != '\0') {
        uVar28 = 0x14;
        iVar6 = HELPER_Player_TrinketMultiplier(0x69);
        if (iVar6 == 2) {
          uVar28 = 10;
        }
        else if (iVar6 == 3) {
          uVar28 = 7;
        }
        FUN_005cbd00(0x69);
        iVar6 = FUN_007e9020(uVar28);
        if (iVar6 == 0) {
          iVar6 = FUN_00421770();
          if (iVar6 == 0x29) {
            FUN_005b19d0();
          }
          FUN_0042a330();
          FUN_00753650(2);
          uVar28 = FUN_006eef60();
          FUN_00407480();
          uVar30 = FUN_00813520(local_1c,param_1_00 + 0xcf,0x42200000,0,0,0);
          HELPER_Entity_SpawnRelay(5,100,uVar30,&DAT_00c7b640,param_1_00,0x16,uVar28);
          iVar6 = FUN_00421770();
          if (iVar6 == 0x29) {
            FUN_005b19d0();
          }
          FUN_00771f60(0x69);
        }
      }
      FUN_00417850();
      cVar2 = FUN_00429550();
      local_13c = DAT_00baa1f8;
      if (cVar2 != '\0') {
        local_13c = DAT_00baa120;
      }
      local_13c = local_13c + (float)param_1_00[0x55b] * DAT_00baa08c;
      cVar2 = HELPER_Player_HasTrinket(0x21,0);
      if (cVar2 != '\0') {
        FUN_005cbd00(0x21);
        fVar21 = (float10)FUN_007e9080();
        local_100 = (int *)(float)fVar21;
        if ((float)local_100 <= local_13c) {
          FUN_009302e0(0x13e,1,1);
        }
      }
      cVar2 = HELPER_Player_HasTrinket(0x68,0);
      if (cVar2 != '\0') {
        uVar28 = 0x14;
        iVar6 = HELPER_Player_TrinketMultiplier(0x68);
        if (iVar6 == 2) {
          uVar28 = 10;
        }
        else if (iVar6 == 3) {
          uVar28 = 7;
        }
        FUN_005cbd00(0x68);
        iVar6 = FUN_007e9020(uVar28);
        if (iVar6 == 0) {
          iVar6 = FUN_00421770();
          if (iVar6 == 0x29) {
            FUN_005b19d0();
          }
          FUN_005cbd00(0x68);
          uVar28 = FUN_007e90f0();
          FUN_00407480();
          uVar30 = FUN_00813520(local_1c,param_1_00 + 0xcf,0x42200000,0,0,0);
          HELPER_Entity_SpawnRelay(5,100,uVar30,&DAT_00c7b640,param_1_00,0,uVar28);
          iVar6 = FUN_00421770();
          if (iVar6 == 0x29) {
            FUN_005b19d0();
          }
          FUN_00771f60(0x68);
        }
      }
      FUN_00417850();
      cVar2 = FUN_00429550();
      uVar28 = 0x14;
      if (cVar2 != '\0') {
        uVar28 = 0x21;
      }
      cVar2 = HELPER_Player_HasCollectible(0x201,0);
      if (cVar2 != '\0') {
        FUN_005cbd00(0x201);
        iVar6 = FUN_007e9020(uVar28);
        if (iVar6 == 0) {
          FUN_00407480();
          FUN_00a10030(local_1c);
          local_13c = 15.0;
          uVar28 = FUN_00a104e0(local_34,&local_13c);
          uVar28 = FUN_00a10480(local_74,uVar28);
          piVar7 = (int *)FUN_00812c90(uVar28);
          local_100 = piVar7;
          FUN_00407480();
          local_13c = (float)FUN_00436060(piVar7);
          FUN_00407480();
          cVar2 = FUN_007ea190();
          if (cVar2 == '\0') {
            FUN_00407480();
            iVar6 = FUN_007f0800(piVar7);
            if (iVar6 == 0) {
              if (local_13c != 0.0) {
                FUN_004073c0();
                cVar2 = FUN_0070bf80();
                if (cVar2 != '\0') goto LAB_00776c4d;
              }
              FUN_00407480();
              FUN_005cbd00(0x201);
              uVar28 = FUN_007e90f0();
              FUN_007ebca0(local_100,0xe,4,uVar28,0);
            }
          }
LAB_00776c4d:
          FUN_006b6470(0x25,2,0,0x3f800000);
        }
      }
      cVar2 = HELPER_Player_HasTrinket(0x7a,0);
      if (cVar2 != '\0') {
        uVar28 = 0x32;
        iVar6 = HELPER_Player_TrinketMultiplier(0x7a);
        if (iVar6 == 2) {
          uVar28 = 0x19;
        }
        else if (iVar6 == 3) {
          uVar28 = 0x10;
        }
        FUN_005cbd00(0x7a);
        iVar6 = FUN_007e9020(uVar28);
        if (iVar6 == 0) {
          FUN_00424510();
          local_8 = 0xc;
          uVar5 = FUN_00417840();
          std::vector<unsigned_int,class_std::allocator<unsigned_int>_>::reserve(local_50,uVar5);
          fVar22 = 1.401298e-45;
          uVar5 = FUN_00417840();
          if (1 < uVar5) {
            do {
              piVar7 = (int *)FUN_0042c810(fVar22);
              if (((0 < *piVar7) && (cVar2 = FUN_007ce2a0(fVar22,0), cVar2 != '\0')) &&
                 (iVar6 = FUN_007911c0(fVar22), iVar6 < 0)) {
                local_13c = fVar22;
                FUN_0042c850(&local_13c);
              }
              fVar22 = (float)((int)fVar22 + 1);
              fVar23 = (float)FUN_00417840();
            } while ((uint)fVar22 < (uint)fVar23);
          }
          iVar6 = FUN_00417840();
          if (iVar6 != 0) {
            FUN_005cbd00(0x7a);
            uVar28 = FUN_00417840();
            uVar28 = FUN_007e9020(uVar28);
            puVar9 = (undefined4 *)FUN_0042c810(uVar28);
            FUN_00790530(*puVar9,0,1);
            FUN_007cf8f0();
            FUN_009568e0(0x385,2,0,0x3f800000);
          }
          local_8 = 0xffffffff;
          FID_conflict__Tidy();
        }
      }
      FUN_00407480();
      local_10c = (int *)FUN_00428a50();
      local_118 = (int *)0x0;
      iVar6 = FUN_004176f0();
      if (iVar6 != 0) {
        piVar7 = (int *)0x0;
        piVar8 = local_12c;
        do {
          FUN_00417620(piVar7);
          cVar2 = FUN_0042a250();
          if (cVar2 == '\0') {
            FUN_00417620(local_118);
            cVar2 = FUN_006ac530();
            if (cVar2 != '\0') {
              FUN_00417620(local_118);
              FUN_006d6d20(param_1_00,local_124,param_3,piVar8);
            }
          }
          else {
            pfVar10 = (float *)FUN_00417620(local_118);
            local_13c = *pfVar10;
            piVar7 = (int *)FUN_004361f0();
            if (piVar7 == param_1_00) {
              FUN_0062b750(local_124,param_3,local_12c);
              piVar8 = local_12c;
            }
          }
          local_118 = (int *)((int)local_118 + 1);
          piVar16 = (int *)FUN_004176f0();
          piVar7 = local_118;
        } while (local_118 < piVar16);
      }
      if ((local_111 != '\0') && (param_1_00[0xef] == 0)) {
        FUN_00424530();
        FUN_00428a80(5,1);
        FUN_00424530();
        uVar28 = FUN_0040c3a0();
        FUN_00753c50(uVar28);
      }
      cVar2 = FUN_00431760(2);
      local_100 = (int *)ThreadLocalStoragePointer;
      if (cVar2 == '\0') {
        if (0 < (int)local_104) {
          FUN_00417850();
          cVar2 = FUN_00429550();
          if (cVar2 == '\0') {
            ppiVar11 = (int **)(param_1_00 + 0x4d3);
            local_30 = (param_1_00[0x4d3] + 1 >> 1) + param_1_00[0x762];
            piVar7 = (int *)FUN_0041cb60();
            local_18 = (float)(*piVar7 + 1 >> 1);
            local_134 = (int *)(local_124 & 0x20);
            if ((local_134 == (int *)0x0) &&
               (cVar2 = HELPER_Player_HasTrinket(0x6b,0), cVar2 == '\0')) {
              local_10c = (int *)param_1_00[0x4d1];
LAB_00776fab:
              local_107 = '\0';
            }
            else {
              local_10c = (int *)param_1_00[0x4d1];
              if ((int)local_10c < (int)local_104) goto LAB_00776fab;
              local_107 = '\x01';
            }
            piVar8 = local_130;
            local_118 = *ppiVar11;
            local_11c = *ppiVar11;
            piVar7 = (int *)param_1_00[0x762];
            local_105 = false;
            local_13c = (float)(((int)local_118 + 1 >> 1) + (int)piVar7);
            if (0 < (int)piVar7) {
              local_118 = (int *)0x0;
              fVar22 = local_13c;
              while ((fVar22 = (float)((int)fVar22 - 1), -1 < (int)fVar22 &&
                     (cVar2 = FUN_007caaa0(fVar22), cVar2 == '\0'))) {
                if ((local_118 == (int *)0x0) && ((*(byte *)(piVar8 + 0x4d3) & 1) != 0)) {
                  local_118 = (int *)0x1;
                }
                else {
                  local_118 = (int *)((int)local_118 + 2);
                }
              }
              ppiVar11 = (int **)(piVar8 + 0x4d3);
              ppiVar17 = (int **)FUN_0041cb60();
              piVar7 = (int *)piVar8[0x762];
              local_10c = (int *)piVar8[0x4d1];
              local_11c = *ppiVar17;
              local_105 = piVar8[0x4d0] + (int)piVar7 * 2 + -1 <= (int)local_10c;
              local_118 = local_11c;
            }
            if (((int)local_11c < 1) || (local_107 != '\0')) {
              if (((int)piVar7 < 1) || (((bool)local_105 != false || (local_107 != '\0')))) {
                if ((0 < piVar8[0x769]) && (piVar8[0x4d2] < 1)) {
                  if (local_107 != '\0') {
                    local_13c = 0.0;
                    local_14c = (float)((piVar8[0x769] * 2 - (int)local_10c) + (int)local_104);
                    FUN_0041cb80();
                  }
                  piVar7 = (int *)FUN_0041cb60();
                  local_104 = (int *)((int)local_104 + *piVar7);
                }
                iVar6 = piVar8[0x762];
                if ((0 < iVar6) && (local_105 != '\0')) {
                  local_14c = (float)((~piVar8[0x4d1] & 1U) + 1);
                  ppiVar17 = (int **)FUN_0041cb60();
                  iVar6 = piVar8[0x762];
                  local_104 = *ppiVar17;
                }
                iVar12 = piVar8[0x4d2];
                if (0 < iVar12) {
                  piVar8 = local_130;
                  if (local_134 != (int *)0x0) {
                    if ((int)local_104 <=
                        (int)((local_130[0x4d1] - (uint)((int)*ppiVar11 + iVar6 < 1)) -
                             local_130[0x769])) goto LAB_00777601;
                    iVar12 = local_130[0x4d2];
                  }
                  local_104 = (int *)((int)local_104 - iVar12);
                  local_130[0x4d2] = 0;
                  if ((int)local_104 < 0) {
                    local_104 = (int *)0x0;
                  }
                }
LAB_00777601:
                local_106 = '\x01';
                local_14c = 0.0;
                iVar6 = piVar8[0x769] * 2;
                local_70 = (uint)(iVar6 < (int)local_104);
                if (local_107 == '\0') {
                  local_10c = (int *)0x0;
                  local_130 = (int *)(piVar8[0x769] - ((int)local_104 + 1) / 2);
                  piVar7 = (int *)FUN_0041cb80();
                }
                else {
                  local_14c = (float)((iVar6 - piVar8[0x4d1]) + (int)local_104);
                  local_13c = 0.0;
                  piVar7 = (int *)FUN_0041cb80();
                  local_134 = (int *)0x0;
                  local_11c = (int *)(piVar8[0x769] - (*piVar7 + 1) / 2);
                  piVar7 = (int *)FUN_0041cb80();
                }
                piVar8[0x769] = *piVar7;
                FUN_00758a70(-(int)local_104,0,0);
                if (((((char)local_70 != '\0') && (iVar6 = piVar8[0x4f0], iVar6 != 0xe)) &&
                    (iVar6 != 0x21)) &&
                   ((((piVar8[0xef] == 0 && (local_111 != '\0')) &&
                     ((0 < (int)local_104 && (piVar8[0x4d1] < piVar8[0x4d0])))) &&
                    ((iVar6 != 0x16 || (iVar6 = FUN_007d4320(), piVar8[0x4d1] < iVar6)))))) {
                  uVar5 = 0;
                  iVar6 = HELPER_Player_TrinketMultiplier(0x6b);
                  if (iVar6 == 2) {
                    uVar5 = 0x19;
                  }
                  else if (2 < iVar6) {
                    uVar5 = 0x32;
                  }
                  FUN_0065cf80(0x6b);
                  uVar13 = FUN_007e9020(100);
                  if (uVar5 <= uVar13) {
                    FUN_00424530();
                    FUN_0074b5b0();
                    FUN_00407480();
                    FUN_007537c0();
                  }
                }
              }
              else {
                local_11c = piVar7;
                if ((((0 < piVar8[0x4d2]) && ((int)local_10c < 1)) && ((int)*ppiVar11 < 1)) &&
                   ((int)piVar7 < 2)) {
                  local_13c = (float)((int)local_104 - piVar8[0x4d2]);
                  local_11c = (int *)0x0;
                  ppiVar11 = (int **)FUN_0041cb80();
                  local_104 = *ppiVar11;
                  piVar7 = (int *)piVar8[0x762];
                  piVar8[0x4d2] = 0;
                }
                if (0 < (int)local_104) {
                  piVar8[0x762] = (int)piVar7 + -1;
                  FUN_007c9ea0();
                  if (((piVar8[0x4f0] == 0x10) && (local_14c == 0.0)) && (piVar8[0xef] == 0)) {
                    FUN_00424530();
                    FUN_0074b5b0();
                    FUN_00407480();
                    FUN_007537c0();
                  }
                  if ((*(int *)(*local_100 + 0xc) < DAT_00c8114c) &&
                     (FUN_00aef29d(&DAT_00c8114c), DAT_00c8114c == -1)) {
                    local_8 = 0xd;
                    FUN_004238f0(0x3f800000);
                    local_8 = 0xffffffff;
                    FUN_00aef253(&DAT_00c8114c);
                  }
                  local_14c = (float)piVar8[0xd4];
                  fVar22 = local_14c;
                  FUN_0067efe0();
                  fVar22 = fVar22 * DAT_00baa6fc + DAT_00baa630;
                  FUN_00703330(piVar8 + 0xcf,0x23,8,fVar22,&DAT_00c81150,local_14c,0);
                  FUN_0067efe0();
                  fVar22 = fVar22 * DAT_00baa198 + (float)DAT_00baa454;
                  FUN_006b6470(0x1ce,2,0,fVar22);
                  cVar2 = HELPER_Player_HasCollectible(0x225,0);
                  if (cVar2 != '\0') {
                    FUN_0067efe0();
                    local_14c = fVar22 * DAT_00baab30;
                    local_11c = (int *)0x0;
                    do {
                      uVar28 = FUN_006eef60();
                      FUN_00a10350(local_74,((float)(int)local_11c / DAT_00baa81c + local_14c) *
                                            DAT_00baab30);
                      local_13c = 10.0;
                      uVar30 = FUN_00a104e0(local_138,&local_13c);
                      piVar7 = (int *)HELPER_Entity_SpawnRelay
                                                (2,0x1d,piVar8 + 0xcf,uVar30,piVar8,0,uVar28);
                      iVar6 = HELPER_Global_ModuloCountdown(0);
                      FUN_007bf6c0(local_ec,1,0x3f800000,iVar6 * 2 + -1);
                      puVar9 = (undefined4 *)FUN_00435c20(&DAT_00c348f0);
                      FUN_00676150(*puVar9,puVar9[1],puVar9[2],puVar9[3]);
                      FUN_00676120(fStack_a0 * _DAT_00baa4f4);
                      (**(code **)(*piVar7 + 0x40))((float)local_a4 * DAT_00baa630 + DAT_00baa884);
                      FUN_00675fc0(uStack_9c);
                      FUN_006a92a0(piVar8);
                      (**(code **)(*piVar7 + 0xc))();
                      local_11c = (int *)((int)local_11c + 1);
                    } while ((int)local_11c < 10);
                    *(short *)(piVar8 + 0x624) = *(short *)(piVar8 + 0x624) + 1;
                    piVar8[0x55d] = piVar8[0x55d] | 2;
                    FUN_00763570();
                  }
                }
              }
            }
            else {
              ppiVar17 = (int **)FUN_0041cb60();
              piVar7 = *ppiVar11;
              local_104 = *ppiVar17;
              piVar16 = piVar7;
              if ((int)piVar7 - (int)local_104 < (int)piVar7) {
                do {
                  cVar2 = FUN_00759220(piVar16);
                  if (cVar2 != '\0') {
                    FUN_007591e0(piVar16);
                    FUN_005b39d0((int)&local_10c + 2,0x23,9,0xffffffff,0);
                    FUN_006b6470(0x50,2,0,0x3f800000);
                  }
                  piVar7 = (int *)piVar8[0x4d3];
                  piVar16 = (int *)((int)piVar16 + -1);
                } while ((int)piVar7 - (int)local_104 < (int)piVar16);
              }
              if ((((0 < piVar8[0x4d2]) && (piVar8[0x4d1] < 1)) && (piVar8[0x762] < 1)) &&
                 (piVar7 == local_104 || (int)piVar7 - (int)local_104 < 0)) {
                local_13c = (float)((int)local_104 - piVar8[0x4d2]);
                local_11c = (int *)0x0;
                ppiVar11 = (int **)FUN_0041cb80();
                local_104 = *ppiVar11;
                piVar8[0x4d2] = 0;
              }
              if (0 < (int)local_104) {
                piVar7 = (int *)FUN_0041cb60();
                piVar8[0x4d3] = piVar8[0x4d3] - *piVar7;
              }
            }
            FUN_007ce420();
            iVar6 = piVar8[0x4d3];
            iVar12 = piVar8[0x762];
            piVar7 = (int *)FUN_0041cb60();
            local_14c = (float)piVar8[0x653];
            local_70 = *piVar7 + 1 >> 1;
            fVar22 = local_14c;
            iVar19 = local_30;
            while ((fVar23 = local_18, (iVar6 + 1 >> 1) + iVar12 < iVar19 && (0 < (int)fVar22))) {
              iVar19 = iVar19 + -1;
              fVar22 = (float)((int)fVar22 - 1);
              piVar8[0x653] = (int)fVar22;
            }
            while (((int)local_70 < (int)fVar23 && (0 < (int)fVar22))) {
              fVar22 = (float)((int)fVar22 - 1);
              piVar8[0x653] = (int)fVar22;
              fVar23 = (float)((int)fVar23 + -1);
            }
            param_1_00 = piVar8;
            if ((int)fVar22 < (int)local_14c) {
              FUN_007ca2d0((int)local_14c - (int)fVar22);
            }
          }
          else {
            FUN_00407480();
            FUN_004360d0();
            cVar2 = FUN_009305f0(0x1de);
            piVar7 = local_12c;
            if ((((cVar2 != '\0') && (local_12c[9] != 0)) &&
                (local_18 = (float)FUN_006a9140(), local_18 != 0.0)) &&
               (*(short *)((int)local_18 + 0x2ed2) != 0)) {
              FUN_00407480();
              FUN_004360d0();
              FUN_009304a0(0x1de,1);
              FUN_00407480();
              FUN_00821940(0);
              *(undefined2 *)((int)local_18 + 0x2ed2) = 0;
            }
            cVar2 = HELPER_Entity_HasFlag(0,0x100000);
            if (((cVar2 != '\0') && (piVar7[9] != 0)) &&
               (cVar2 = FUN_006a8fa0(param_1_00[0xb7]), cVar2 == '\0')) {
              fVar22 = (float)(int)local_104 * DAT_00baa4b0;
              FUN_005a6fb0();
              local_104 = (int *)(int)fVar22;
            }
            if (0 < (int)local_104) {
              fVar22 = (float)param_1_00[0x4d4] * DAT_00baa0e4;
              FUN_004405e0();
              local_18 = (float)(int)fVar22;
              piVar7 = (int *)FUN_0041cb60();
              iVar6 = *piVar7;
              param_1_00[0x4d4] = param_1_00[0x4d4] - iVar6;
              local_104 = (int *)((int)local_104 - iVar6);
              fVar22 = (float)param_1_00[0x4d4] * DAT_00baa0e4;
              FUN_004405e0();
              iVar6 = (int)local_18 - (int)fVar22;
              if (0 < iVar6) {
                do {
                  FUN_005b39d0((int)&local_10c + 2,0x23,9,0xffffffff,0);
                  FUN_006b6470(0x50,2,0,0x3f800000);
                  iVar6 = iVar6 + -1;
                } while (iVar6 != 0);
              }
              if (0 < (int)local_104) {
                fVar22 = (float)param_1_00[0x762] * DAT_00baa0e4;
                FUN_004405e0();
                local_134 = (int *)(int)fVar22;
                piVar7 = (int *)FUN_0041cb60();
                iVar6 = *piVar7;
                param_1_00[0x762] = param_1_00[0x762] - iVar6;
                local_104 = (int *)((int)local_104 - iVar6);
                auVar24 = ZEXT416((uint)((float)param_1_00[0x762] * DAT_00baa0e4));
                FUN_004405e0();
                local_134 = (int *)((int)local_134 - (int)auVar24._0_4_);
                piVar7 = local_134;
                if (0 < (int)local_134) {
                  do {
                    local_118 = piVar7;
                    fVar22 = auVar24._0_4_;
                    FUN_0067efe0();
                    local_18 = fVar22 * DAT_00baab30;
                    local_11c = (int *)0x0;
                    do {
                      uVar28 = FUN_006eef60();
                      FUN_00a10350(local_74,((float)(int)local_11c / DAT_00baa81c + local_18) *
                                            DAT_00baab30);
                      local_30 = 0x41200000;
                      uVar30 = FUN_00a104e0(local_150,&local_30);
                      piVar7 = (int *)HELPER_Entity_SpawnRelay
                                                (2,0x1d,param_1_00 + 0xcf,uVar30,param_1_00,0,uVar28
                                                );
                      iVar6 = HELPER_Global_ModuloCountdown(0);
                      FUN_007bf6c0(local_ec,1,0x3f800000,iVar6 * 2 + -1);
                      puVar9 = (undefined4 *)FUN_00435c20(&DAT_00c348f0);
                      FUN_00676150(*puVar9,puVar9[1],puVar9[2],puVar9[3]);
                      FUN_00676120(fStack_a0 * _DAT_00baa4f4);
                      (**(code **)(*piVar7 + 0x40))((float)local_a4 * DAT_00baa630);
                      auVar24 = ZEXT416(uStack_9c);
                      FUN_00675fc0(uStack_9c);
                      FUN_006a92a0(param_1_00);
                      (**(code **)(*piVar7 + 0xc))();
                      local_11c = (int *)((int)local_11c + 1);
                    } while ((int)local_11c < 10);
                    local_118 = (int *)((int)local_118 + -1);
                    piVar7 = local_118;
                  } while (local_118 != (int *)0x0);
                  if ((*(int *)(*local_100 + 0xc) < DAT_00c8117c) &&
                     (FUN_00aef29d(&DAT_00c8117c), DAT_00c8117c == -1)) {
                    local_8 = 0xe;
                    FUN_004238f0(0x3f800000);
                    local_8 = 0xffffffff;
                    FUN_00aef253(&DAT_00c8117c);
                  }
                  local_18 = (float)param_1_00[0xd4];
                  fVar22 = local_18;
                  FUN_0067efe0();
                  fVar22 = fVar22 * DAT_00baa6fc + DAT_00baa630;
                  FUN_00703330(param_1_00 + 0xcf,0x23,8,fVar22,&DAT_00c81180,local_18,0);
                  FUN_0067efe0();
                  FUN_006b6470(0x1ce,2,0,fVar22 * DAT_00baa198 + (float)DAT_00baa454);
                  cVar2 = HELPER_Player_HasCollectible(0x225,0);
                  if (cVar2 != '\0') {
                    *(short *)(param_1_00 + 0x624) =
                         *(short *)(param_1_00 + 0x624) + (short)local_134;
                    param_1_00[0x55d] = param_1_00[0x55d] | 2;
                    FUN_00763570();
                  }
                }
                if (0 < (int)local_104) {
                  fVar22 = (float)param_1_00[0x769] * DAT_00baa0e4;
                  FUN_004405e0();
                  local_18 = (float)(int)fVar22;
                  piVar7 = (int *)FUN_0041cb60();
                  iVar6 = *piVar7;
                  param_1_00[0x769] = param_1_00[0x769] - iVar6;
                  local_104 = (int *)((int)local_104 - iVar6);
                  fVar22 = (float)param_1_00[0x769] * DAT_00baa0e4;
                  FUN_004405e0();
                  iVar6 = (int)local_18 - (int)fVar22;
                  if (0 < iVar6) {
                    do {
                      piVar7 = param_1_00 + 0xcf;
                      uVar30 = 0;
                      uVar28 = FUN_0067f030(piVar7,0);
                      FUN_007599d0(uVar28,piVar7,uVar30);
                      iVar6 = iVar6 + -1;
                    } while (iVar6 != 0);
                  }
                }
              }
            }
            iVar6 = 0;
            if (0 < (int)local_104) {
              fVar22 = (float)param_1_00[0x653] * DAT_00baa0e4;
              FUN_004405e0();
              local_18 = (float)(int)fVar22;
              piVar7 = (int *)FUN_0041cb60();
              iVar6 = *piVar7;
              param_1_00[0x653] = param_1_00[0x653] - iVar6;
              local_104 = (int *)((int)local_104 - iVar6);
              fVar22 = (float)param_1_00[0x653] * DAT_00baa0e4;
              FUN_004405e0();
              iVar6 = (int)local_18 - (int)fVar22;
            }
            FUN_007ca2d0(iVar6);
            if (0 < (int)local_104) {
              FUN_004405e0();
              piVar7 = (int *)FUN_0041cb60();
              iVar6 = *piVar7;
              param_1_00[0x4d3] = param_1_00[0x4d3] - iVar6;
              local_104 = (int *)((int)local_104 - iVar6);
              FUN_004405e0();
            }
            local_106 = 0 < (int)local_104;
            if (0 < (int)local_104) {
              FUN_004405e0();
              piVar7 = (int *)FUN_0041cb60();
              iVar6 = *piVar7;
              param_1_00[0x4d1] = param_1_00[0x4d1] - iVar6;
              local_104 = (int *)((int)local_104 - iVar6);
              FUN_004405e0();
            }
            if (local_106 != '\0') {
              FUN_007c9ea0();
            }
          }
        }
      }
      else {
        local_104 = (int *)0x0;
      }
      cVar2 = HELPER_Player_HasCollectible(0x2a5,0);
      if (cVar2 == '\0') {
LAB_00777e98:
        local_107 = '\0';
      }
      else {
        FUN_00407480();
        cVar2 = FUN_00436080();
        if (((cVar2 != '\0') || (cVar2 = FUN_009305f0(0x2a5), cVar2 != '\0')) ||
           (param_1_00[0x7ab] != 0)) goto LAB_00777e98;
        local_107 = '\x01';
      }
      cVar2 = FUN_007db6b0();
      if ((cVar2 == '\0') || (local_105 = '\x01', (int)local_104 < 1)) {
        local_105 = '\0';
      }
      if (local_107 == '\0') {
        cVar2 = FUN_009305f0(0x2c0);
        local_106 = '\0';
        if (cVar2 != '\0') goto LAB_00777ee1;
      }
      else {
LAB_00777ee1:
        local_106 = '\x01';
      }
      if ((((param_1_00[0x4d1] < 1) && (param_1_00[0x4d3] < 1)) && (param_1_00[0x762] < 1)) ||
         (local_105 != '\0')) {
        local_10c = (int *)(CONCAT13((undefined)local_124,(undefined3)local_10c) & 0x1ffffff);
        cVar2 = HELPER_Player_HasCollectible(0x2b6,0);
        if (cVar2 != '\0') {
          iVar6 = FUN_007cafe0();
          if (iVar6 == 3) {
            uVar28 = 1;
          }
          else {
            uVar28 = 2;
          }
          FUN_007d2a40(uVar28);
          FUN_005b39d0((int)&local_130 + 2,0x23,9,0xffffffff,0);
          FUN_006b6470(0x50,2,0,0x3f800000);
          iVar6 = FUN_007cae60(0);
          if (iVar6 < 1) goto LAB_00777f89;
LAB_00777f92:
          FUN_007caad0();
          goto LAB_0077816e;
        }
LAB_00777f89:
        if (local_10c._3_1_ != '\0') goto LAB_00777f92;
        if (local_105 != '\0') {
          param_1_00[0x4d1] = 0;
          param_1_00[0x4d3] = 0;
          param_1_00[0x4d4] = 0;
          param_1_00[0x762] = 0;
          param_1_00[0x4d2] = 0;
          param_1_00[0x769] = 0;
        }
        if (local_106 != '\0') goto LAB_0077816e;
        if (local_105 != '\0') {
          pcVar1 = *(code **)(*param_1_00 + 0x24);
          uVar28 = FUN_00435c70();
          (*pcVar1)(uVar28);
        }
        uVar4 = FUN_007afc20();
        piVar7 = local_12c;
        local_10c = (int *)CONCAT13(uVar4,(undefined3)local_10c);
        FUN_00499960(local_12c);
        if (local_10c._3_1_ != '\0') {
          FUN_00417850();
          cVar2 = FUN_00429550();
          if (cVar2 != '\0') {
            local_11c = (int *)piVar7[9];
            while (local_11c != (int *)0x0) {
              cVar2 = FUN_004173b0();
              if (cVar2 != '\0') {
                FUN_007a0080(param_1_00);
                break;
              }
              local_11c = (int *)FUN_004174a0();
            }
          }
        }
        if (*(char *)((int)param_1_00 + 0x173) != '\0') {
          if (*piVar7 - 10U < 0x3de) {
            FUN_00421800();
            iVar6 = piVar7[1];
            iVar12 = *piVar7;
LAB_007780c6:
            FUN_0092abd0(iVar12,iVar6);
          }
          else if (piVar7[2] - 10U < 0x3de) {
            FUN_00421800();
            iVar6 = piVar7[3];
            iVar12 = piVar7[2];
            goto LAB_007780c6;
          }
          if ((((local_124 & 4) != 0) && (*piVar7 == 2)) &&
             (iVar6 = __RTDynamicCast(piVar7[9],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor
                                      ,&IsaacRepentancePlus::Entity_Tear::RTTI_Type_Descriptor,0),
             iVar6 != 0)) {
            puVar9 = &DAT_00c34bc0;
            FUN_004177c0(local_54);
            FUN_00417170(puVar9);
            cVar2 = FUN_004171b0();
            if (cVar2 != '\0') {
              puVar9 = &DAT_00c34bd0;
              FUN_004177c0(local_54);
              FUN_00417170(puVar9);
              cVar2 = FUN_004171b0();
              if (cVar2 != '\0') {
                FUN_00421800();
                FUN_00929a20(0x180);
              }
            }
          }
          goto LAB_0077816e;
        }
LAB_00778177:
        cVar2 = HELPER_Player_HasCollectible(0x13c,0);
        bVar3 = local_125;
        if (((cVar2 != '\0') &&
            (cVar2 = HELPER_Player_HasCollectible(0x104,0), bVar3 = local_125, cVar2 == '\0')) &&
           (((int *)param_1_00[0x4f8] != (int *)0x0 &&
            (cVar2 = (**(code **)(*(int *)param_1_00[0x4f8] + 0x38))(), bVar3 = local_125,
            cVar2 != '\0')))) {
          FUN_005cbd00(0x13c);
          uVar28 = FUN_007e90f0();
          FUN_006fe3d0(0,uVar28,param_1_00);
          bVar3 = 0;
        }
      }
      else {
LAB_0077816e:
        bVar3 = local_125;
        if (*(char *)((int)param_1_00 + 0x173) == '\0') goto LAB_00778177;
      }
      local_70 = 0;
      if (param_1_00[0xff] == 0) {
        local_70 = (uint)bVar3;
      }
      cVar2 = HELPER_Player_HasTrinket(0x2b,0);
      if ((cVar2 != '\0') && (*(char *)((int)param_1_00 + 0x173) == '\0')) {
        local_30 = HELPER_Player_TrinketMultiplier(0x2b);
        iVar6 = param_1_00[0x4d1];
        local_18 = (float)((2 < local_30) + 1);
        iVar12 = FUN_007dd380();
        if ((iVar6 <= iVar12) &&
           ((param_1_00[0x4d3] < 1 ||
            ((iVar6 < 1 && (iVar6 = FUN_007dd380(), param_1_00[0x4d3] <= iVar6)))))) {
          if (local_30 == 1) {
            FUN_005cbd00(0x2b);
            uVar28 = FUN_007e90f0();
            FUN_006fe3d0(0,uVar28,param_1_00);
          }
          else {
            FUN_00424510();
            local_8 = 0xf;
            local_18 = 2.802597e-45;
            FUN_007dc620(&local_18);
            local_18 = 5.605194e-45;
            FUN_007dc620(&local_18);
            local_18 = 8.407791e-45;
            FUN_007dc620(&local_18);
            local_18 = 9.809089e-45;
            FUN_007dc620(&local_18);
            local_18 = 1.121039e-44;
            FUN_007dc620(&local_18);
            local_18 = 1.261169e-44;
            FUN_007dc620(&local_18);
            local_18 = 1.541428e-44;
            FUN_007dc620(&local_18);
            local_18 = 1.681558e-44;
            FUN_007dc620(&local_18);
            local_18 = 1.821688e-44;
            FUN_007dc620(&local_18);
            local_18 = 2.522337e-44;
            FUN_007dc620(&local_18);
            local_18 = 2.662467e-44;
            FUN_007dc620(&local_18);
            local_18 = 2.802597e-44;
            FUN_007dc620(&local_18);
            local_18 = 2.942727e-44;
            FUN_007dc620(&local_18);
            local_18 = 3.363116e-44;
            FUN_007dc620(&local_18);
            FUN_007cdf30(local_38,0);
            local_8 = 0xffffffff;
            FID_conflict__Tidy();
          }
        }
      }
      iVar6 = FUN_007dd380();
      if (param_1_00[0x4d1] <= iVar6) {
        cVar2 = HELPER_Player_HasCollectible(0x147,0);
        if (cVar2 != '\0') {
          FUN_0042ca00();
          uVar28 = HELPER_ItemConfig_GetCollectible(0x3a);
          FUN_00435f80(uVar28);
          local_4c = 0x96;
          FUN_00930220(local_54,1,1);
        }
        cVar2 = HELPER_Player_HasCollectible(0x148,0);
        if (cVar2 != '\0') {
          FUN_005b39d0((int)&local_130 + 2,0x23,1,0xffffffff,0);
        }
        if ((param_1_00[0x4d3] < 1) ||
           ((param_1_00[0x4d1] < 1 && (iVar6 = FUN_007dd380(), param_1_00[0x4d3] == iVar6)))) {
          cVar2 = HELPER_Player_HasCollectible(0x8e,0);
          if ((cVar2 != '\0') &&
             (((cVar2 = FUN_009305f0(0x8e), cVar2 != '\0' &&
               (*(char *)((int)param_1_00 + 0x173) == '\0')) && ((local_124 & 0x40020) == 0)))) {
            FUN_00758d00(2,0);
            FUN_009304a0(0x8e,1);
            FUN_007ad330(0x8e,0);
            FUN_006b6470(0x36,2,0,0x3f800000);
            uVar28 = FUN_006eef60();
            uVar32 = 0;
            pTVar31 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
            pTVar29 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar30 = 0;
            uVar28 = HELPER_Entity_SpawnRelay(1000,0x31,param_1_00 + 0xcf,&DAT_00c7b640,0,4,uVar28);
            __RTDynamicCast(uVar28,uVar30,pTVar29,pTVar31,uVar32);
            uVar28 = FUN_00a0fe90();
            FUN_004563c0(uVar28);
            FUN_00435cf0(0x3f800000);
          }
          cVar2 = HELPER_Player_HasTrinket(0x14,0);
          if ((cVar2 != '\0') && (param_1_00[0xb] == 0)) {
            local_11c = (int *)HELPER_Player_TrinketMultiplier(0x14);
            if (0 < (int)local_11c) {
              do {
                uVar28 = FUN_006eef60();
                FUN_00407480();
                uVar30 = FUN_00813520(local_1c,param_1_00 + 0xcf,0x42200000,0,0,0);
                HELPER_Entity_SpawnRelay(5,10,uVar30,&DAT_00c7b640,param_1_00,6,uVar28);
                local_11c = (int *)((int)local_11c + -1);
              } while (local_11c != (int *)0x0);
            }
            param_1_00[0x4e5] = param_1_00[0x4e5] + -1;
            if (param_1_00[0x4e5] < 1) {
              FUN_00771f60(0x14);
              param_1_00[0x4e5] = 3;
            }
          }
        }
      }
      local_18 = 2.802597e-45;
      piVar7 = (int *)FUN_0041cb60();
      iVar6 = FUN_007db330(*piVar7 * 0x3c);
      param_1_00[0x5b] = param_1_00[0x5b] & 0xffffffef;
      param_1_00[0x4ef] = iVar6;
      param_1_00[0x5a] = param_1_00[0x5a];
      if (local_107 != '\0') {
        FUN_00407480();
        FUN_007ea260(0x3c);
        FUN_007d87a0();
        FUN_009302e0(0x2a5,1,1);
        FUN_0042ca00();
        uVar28 = HELPER_ItemConfig_GetCollectible(0x2a5);
        FUN_00435f80(uVar28);
        local_4c = 0x96;
        FUN_00407480();
        FUN_004360d0();
        FUN_00930220(local_54,1,1);
        FUN_00703830(10);
        if ((*(int *)(*local_100 + 0xc) < DAT_00c811ac) &&
           (FUN_00aef29d(&DAT_00c811ac), DAT_00c811ac == -1)) {
          local_8 = 0x10;
          FUN_004aadf0(0x3f800000,0,0x3f800000);
          local_8 = 0xffffffff;
          FUN_00aef253(&DAT_00c811ac);
        }
        FUN_007067c0(&DAT_00c811b0,0);
        FUN_00407480();
        uVar28 = FUN_00823370(&uStack_9c);
        FUN_007067c0(uVar28,1);
        FUN_00703770(param_1_00 + 0xcf,0x3d4ccccd,0x3d8f5c29,0xc);
        FUN_009568e0(0x141,2,0,0x3f800000);
        iVar6 = FUN_007db330(0x3c);
        param_1_00[0x4ef] = param_1_00[0x4ef] + iVar6;
      }
      cVar2 = HELPER_Player_HasTrinket(0x51,0);
      if (cVar2 != '\0') {
        iVar6 = HELPER_Player_TrinketMultiplier(0x51);
        iVar6 = FUN_007db330(iVar6 * 2);
        param_1_00[0x4ef] = iVar6 * param_1_00[0x4ef];
      }
      cVar2 = HELPER_Player_HasTrinket(0x80,0);
      if (cVar2 != '\0') {
        local_100 = (int *)0x19;
        iVar6 = HELPER_Player_TrinketMultiplier(0x80);
        if (iVar6 == 2) {
          local_100 = (int *)0xc;
        }
        else if (iVar6 == 3) {
          local_100 = (int *)&DAT_00000008;
        }
        FUN_005cbd00(0x80);
        iVar6 = FUN_007e9020(local_100);
        if (iVar6 == 0) {
          FUN_007ca840(1);
        }
      }
      if (((local_111 != '\0') && (cVar2 = HELPER_Player_HasCollectible(0x160,0), cVar2 != '\0')) &&
         (local_144 = (int *)FUN_007911c0(0x160), -1 < (int)local_144)) {
        FUN_0078f840(param_1_00[(int)(local_144 + 0x2b) * 8],0,local_144,1);
        FUN_0075f0e0(0x1da,0,0,local_144,0,0);
        FUN_006b6470(0x35,2,0,0x3f800000);
        uVar28 = FUN_006eef60();
        piVar7 = (int *)HELPER_Entity_SpawnRelay
                                  (1000,0x61,param_1_00 + 0xcf,&DAT_00c7b640,0,0,uVar28);
        (**(code **)(*piVar7 + 0xc))();
        local_144 = (int *)param_1_00[0xd4];
        piVar7 = local_144;
        uVar28 = FUN_00407170();
        FUN_0067efe0();
        FUN_00703330(param_1_00 + 0xcf,0x23,8,(float)piVar7 * DAT_00baa6fc + DAT_00baa630,uVar28,
                     local_144,0);
        cVar2 = FUN_009305f0(0xd6);
        if (cVar2 == '\0') {
          FUN_0042ca00();
          uVar28 = HELPER_ItemConfig_GetCollectible(0xd6);
          FUN_00435f80(uVar28);
          FUN_00417850();
          cVar2 = FUN_00429550();
          if (cVar2 != '\0') {
            local_4c = 300;
          }
          FUN_00930220(local_54,1,1);
        }
        cVar2 = HELPER_Player_HasCollectible(0x3b,0);
        if (cVar2 != '\0') {
          FUN_00930390(0x7b,1,4);
        }
        FUN_0060d090();
        pcVar1 = *(code **)(*param_1_00 + 0x20);
        FUN_00431310(param_1_00);
        fVar22 = DAT_00baa630;
        FUN_00665a30();
        (*pcVar1)(fVar22,0x2002801,0,local_ac,0x1e);
        FUN_0060d090();
        pcVar1 = *(code **)(*param_1_00 + 0x20);
        FUN_00431310(param_1_00);
        fVar22 = DAT_00baa630;
        FUN_00665a30();
        (*pcVar1)(fVar22,0x2002801,0,local_6c,0x1e);
      }
      if ((char)local_70 != '\0') {
        iVar6 = FUN_0040c3a0();
        if (iVar6 == 0) {
LAB_00778ac1:
          iVar6 = FUN_00421770();
          if (iVar6 != 0x1e) goto LAB_00778ad3;
        }
        else {
          FUN_0040c3a0();
          iVar6 = FUN_004253b0();
          if (iVar6 != 0x28) goto LAB_00778ac1;
          FUN_0040c3a0();
LAB_00778ad3:
          FUN_007abe20(&DAT_00b1d3b0);
        }
        if (param_1_00[0x580] != 0x2f) {
          FUN_007c36b0();
        }
      }
      *(undefined *)((int)param_1_00 + 0x1399) = 1;
      FUN_00417900();
      cVar2 = FUN_006f0010();
      if (cVar2 != '\0') {
        iVar6 = param_1_00[0x586];
        local_30 = 0x3f800000;
        local_144 = (int *)0x3f19999a;
        local_18 = (float)(int)local_104 * DAT_00baa304;
        HELPER_FloatBound();
        ppiVar11 = (int **)FUN_0040c780();
        local_100 = *ppiVar11;
        local_13c = 2.0;
        local_70 = 0x3ecccccd;
        local_14c = (float)(int)local_104 * DAT_00baa198;
        HELPER_FloatBound();
        puVar9 = (undefined4 *)FUN_0040c780();
        FUN_00a20b50(*puVar9,local_100,iVar6);
      }
      FUN_007ca7c0(0);
      FUN_007cabc0();
      if (((0 < param_1_00[0x4ef]) && (*(char *)((int)param_1_00 + 0x173) == '\0')) &&
         ((iVar6 = FUN_00417820(), iVar6 != 0 &&
          ((*(int *)(iVar6 + 0x13bc) < param_1_00[0x4ef] && (*(char *)(iVar6 + 0x173) == '\0'))))))
      {
        *(int *)(iVar6 + 0x13bc) = param_1_00[0x4ef];
      }
      cVar2 = HELPER_Player_HasTrinket(0xb2,0);
      if ((cVar2 != '\0') && ((local_124 & 0x10000000) == 0)) {
        FUN_005cbd00(0xb2);
        iVar6 = HELPER_Player_TrinketMultiplier(0xb2);
        local_18 = 1.401298e-45;
        local_144 = (int *)(3 - iVar6);
        puVar9 = (undefined4 *)FUN_0041cb80();
        iVar6 = FUN_007e9020(*puVar9);
        if (iVar6 == 0) {
          FUN_005b39d0((int)&local_130 + 2,0x28,0xb,0xffffffff,0);
        }
      }
      if ((((*(char *)((int)param_1_00 + 0x173) == '\0') && (param_1_00[0x4f0] == 0x1e)) &&
          (local_111 != '\0')) &&
         ((*(char *)(param_1_00 + 0x4e6) == '\0' || (cVar2 = FUN_0040a4d0("Glitch"), cVar2 == '\0'))
         )) {
        FUN_006b6470(0x253,2,0,0x3f800000);
        piVar7 = (int *)FUN_005cbd00(0x102);
        local_11c = piVar7;
        fVar21 = (float10)FUN_007e9080();
        param_1_00[0x555] = (int)(float)(fVar21 * (float10)DAT_00baa630 - (float10)1);
        fVar21 = (float10)FUN_007e9080();
        param_1_00[0x553] = (int)(float)(fVar21 * (float10)DAT_00baa1f8 - (float10)DAT_00baa154);
        fVar21 = (float10)FUN_007e9080();
        param_1_00[0x554] =
             (int)(float)(fVar21 * (float10)DAT_00baa528 - (float10)(float)DAT_00baa380);
        fVar21 = (float10)FUN_007e9080();
        param_1_00[0x556] = (int)(float)(fVar21 * (float10)DAT_00baaa00 - (float10)DAT_00baa950);
        fVar21 = (float10)FUN_007e9080();
        param_1_00[0x557] =
             (int)(float)(fVar21 * (float10)(float)DAT_00baa2d0 - (float10)DAT_00baa1d4);
        fVar21 = (float10)FUN_007e9080();
        param_1_00[0x558] = (int)(float)(fVar21 * (float10)DAT_00baa630 - (float10)1);
        FUN_007e8f90(param_1_00[0xfb],0x3e);
        local_8 = 0x11;
        iVar6 = FUN_007e90f0();
        param_1_00[0xfb] = iVar6;
        local_8 = 0xffffffff;
        _guard_check_icall();
        FUN_005c88a0(piVar7,1);
        local_100 = (int *)0x0;
        iVar6 = FUN_007717c0();
        local_134 = (int *)(iVar6 + -1);
        if (-1 < (int)local_134) {
          ppiVar11 = (int **)(param_1_00 + iVar6 + 0x5af);
          do {
            local_144 = *ppiVar11;
            if (local_144 != (int *)0x0) {
              FUN_007adb30(local_144);
              *ppiVar11 = (int *)0x0;
              FUN_007ad3a0(local_144);
              local_100 = (int *)((int)local_100 + 1);
            }
            local_134 = (int *)((int)local_134 + -1);
            ppiVar11 = ppiVar11 + -1;
          } while (-1 < (int)local_134);
          piVar7 = local_100;
          if (0 < (int)local_100) {
            do {
              FUN_0042a330();
              uVar30 = 0;
              uVar28 = FUN_00733ca0(0);
              FUN_00771d30(uVar28,uVar30);
              piVar7 = (int *)((int)piVar7 + -1);
            } while (piVar7 != (int *)0x0);
          }
        }
        local_118 = (int *)0x0;
        iVar6 = FUN_007ad440();
        iVar12 = iVar6 + -1;
        if (-1 < iVar12) {
          local_100 = param_1_00 + (iVar6 + 0x2f3) * 2;
          do {
            if ((*local_100 != 0) && (cVar2 = FUN_00753640(), cVar2 == '\0')) {
              FUN_007a4850(iVar12);
              local_118 = (int *)((int)local_118 + 1);
            }
            local_100 = local_100 + -2;
            iVar12 = iVar12 + -1;
          } while (-1 < iVar12);
        }
        FUN_00417860();
        local_105 = FUN_004f8940(0xfb);
        FUN_00417860();
        local_106 = FUN_004f8940(0xfc);
        if ((local_105 != '\0') && (local_106 != '\0')) {
          local_106 = '\0';
          local_105 = '\0';
        }
        if (0 < (int)local_118) {
          do {
            if ((local_105 == '\0') &&
               ((local_106 != '\0' || (iVar6 = FUN_007e9020(2), iVar6 != 0)))) {
              FUN_0042a330();
              uVar28 = FUN_007e90f0();
              uVar28 = FUN_00734900(uVar28);
              FUN_007a3c30(uVar28);
            }
            else {
              FUN_0042a330();
              uVar28 = FUN_007e90f0();
              uVar28 = FUN_00734870(uVar28,1,1,0);
              FUN_007a3c10(uVar28);
            }
            local_118 = (int *)((int)local_118 + -1);
          } while (local_118 != (int *)0x0);
        }
        FUN_007abe20("Glitch");
      }
      goto LAB_00779031;
    }
  }
  local_18 = 2.802597e-45;
  local_144 = (int *)(int)(param_1 + (float)DAT_00baa2d0);
  piVar7 = (int *)FUN_0041cb60();
  param_1_00[0x4ef] = *piVar7 * 0x3c;
LAB_00779031:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

