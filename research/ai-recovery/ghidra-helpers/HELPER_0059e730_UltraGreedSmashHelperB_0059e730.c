/* Local J460 decompiler output.
 * VA: 0x0059e730
 * Entry: 0059e730
 * Dispatcher: 0x006c2990
 * Types: 406
 * Identities: ultra_greed.attack_helper
 * Evidence: Called during Ultra Greed smash states
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=406; identities=ultra_greed.attack_helper; Called
   during Ultra Greed smash states */

void HELPER_0059e730_UltraGreedSmashHelperB(int param_1,int param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  uint *puVar9;
  char local_b0 [4];
  int local_ac;
  undefined4 local_a8;
  uint local_a4;
  int local_a0;
  undefined4 *local_9c;
  undefined4 *local_98;
  int local_94;
  uint local_90;
  undefined8 uStack_8c;
  float fStack_84;
  uint local_80;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined local_6c [16];
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [16];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  uint local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af580b;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar5;
  HELPER_UltraGreed_Init(0x1e);
  local_80 = 0x8a;
  FUN_00956780(uVar5);
  FUN_0092dc30(local_80,0x3f800000,2,0,0x3f800000,0);
  iVar6 = FUN_006eef60();
  local_80 = 0x30;
  fStack_84 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
              DAT_00baa198 + DAT_00baa3e0;
  FUN_00956780();
  FUN_0092dc30(local_80,0x3f800000,2,0,fStack_84,0);
  fStack_84 = (float)param_1;
  iVar6 = *(int *)(DAT_00c71678 + 0x18300);
  local_80 = param_2;
  *(int *)(iVar6 + 0x70fc) = *(int *)(iVar6 + 0x70fc) + 1;
  uVar5 = *(uint *)(iVar6 + 0x70fc) & 0x80000001;
  if ((int)uVar5 < 0) {
    uVar5 = (uVar5 - 1 | 0xfffffffe) + 1;
  }
  if (1 < uVar5) {
    FUN_00a112c0(0x10,"Shockwave id is too large!");
  }
  iVar2 = local_94;
  iVar7 = uVar5 + 0x407;
  *(float *)(iVar6 + iVar7 * 0x1c) = fStack_84;
  local_40 = ZEXT816(0);
  *(uint *)(iVar6 + 4 + iVar7 * 0x1c) = local_80;
  *(undefined4 *)(iVar6 + 8 + iVar7 * 0x1c) = 0;
  *(undefined4 *)(iVar6 + 0xc + iVar7 * 0x1c) = 0x3ccccccd;
  *(undefined4 *)(iVar6 + 0x10 + iVar7 * 0x1c) = 0x3ccccccd;
  *(undefined4 *)(iVar6 + 0x14 + iVar7 * 0x1c) = 0;
  *(undefined4 *)(iVar6 + 0x18 + iVar7 * 0x1c) = 0x19;
  local_30 = 0x3f000000;
  local_2c = 0x3e800000;
  local_28 = 0;
  local_50 = _DAT_00bac7b0;
  uStack_4c = _UNK_00bac7b4;
  uStack_48 = _UNK_00bac7b8;
  uStack_44 = _UNK_00bac7bc;
  FUN_00700060(&param_1,0x42700000,0,0,0,0,&local_50,local_94,0x3fe66666,1,4,0,0);
  local_7c = _DAT_00bac7b0;
  uStack_78 = _UNK_00bac7b4;
  uStack_74 = _UNK_00bac7b8;
  uStack_70 = _UNK_00bac7bc;
  local_6c = ZEXT816(0);
  local_5c = 0;
  local_58 = 0;
  local_54 = 0;
  FUN_00703330(&param_1,0x5f,0xf,0x40a00000,&local_7c,0x47c35000,0);
  AI_0041af60(local_b0,0x126,0xffffffff,0xffffffff,1,0);
  local_14 = 0;
  if ((*(int *)(iVar2 + 0xb64) == 700) || (*(int *)(iVar2 + 0xb64) == 0x10)) {
    local_a0 = 0;
    local_9c = (undefined4 *)0x0;
    local_98 = (undefined4 *)0x0;
    local_14 = 1;
    uStack_8c = uStack_8c & 0xffffffff;
    fStack_84 = 1.401298e-43;
    FUN_004a11c0(0,(int)&uStack_8c + 4);
    uVar5 = 0;
    uVar8 = (int)local_9c - local_a0 >> 3;
    if (uVar8 != 0) {
      do {
        if (*(int *)(local_a0 + uVar5 * 8) == 1) {
          piVar1 = (int *)(local_a0 + 4 + uVar5 * 8);
          *piVar1 = *piVar1 + 0x46;
          if (*piVar1 < 0) {
            *(undefined4 *)(local_a0 + 4 + uVar5 * 8) = 0;
          }
          goto LAB_0059eaaa;
        }
        uVar5 = uVar5 + 1;
      } while (uVar5 < uVar8);
    }
    uStack_8c = CONCAT44(1,(undefined4)uStack_8c);
    fStack_84 = 9.809089e-44;
    if (local_9c == local_98) {
      FUN_004a11c0(local_9c,(int)&uStack_8c + 4);
    }
    else {
      *local_9c = 1;
      local_9c[1] = 0x46;
      local_9c = local_9c + 2;
    }
LAB_0059eaaa:
    local_90 = FUN_006eef60();
    local_90 = local_90 | 1;
    fStack_84 = (float)DAT_00b1f674;
    uStack_8c._0_4_ = (undefined4)DAT_00b1f66c;
    uVar3 = (undefined4)uStack_8c;
    uStack_8c._4_4_ = (undefined4)(DAT_00b1f66c >> 0x20);
    uVar4 = uStack_8c._4_4_;
    uStack_8c = DAT_00b1f66c;
    iVar6 = FUN_0049cbf0(local_90,uVar3,uVar4,DAT_00b1f674);
    if ((iVar6 == 0) || (*(int *)(local_94 + 0xb64) == 0x10)) {
      FUN_00703670(0xd);
      if (local_a4 != 0) {
        uVar5 = FUN_006eef60();
        local_80 = uVar5 % local_a4 + 1;
        if (0 < (int)local_80) {
          do {
            uVar5 = FUN_006eef60();
            iVar6 = __RTDynamicCast(*(undefined4 *)(local_ac + (uVar5 % local_a4) * 4),0,
                                    &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                    &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
            iVar7 = FUN_0059e630(iVar6,1,local_ac,local_a8,local_a4);
            if ((iVar6 != 0) && (*(int *)(iVar6 + 0xb64) == 3)) {
              *(undefined4 *)(iVar6 + 0xb64) = 8;
            }
            if ((iVar7 != 0) && (*(int *)(iVar7 + 0xb64) == 3)) {
              *(undefined4 *)(iVar7 + 0xb64) = 9;
            }
            local_80 = local_80 + -1;
          } while (local_80 != 0);
        }
      }
    }
    else if ((iVar6 == 1) && (FUN_00703670(0x12), local_a4 != 0)) {
      local_80 = local_a4;
      do {
        if (local_a4 == 0) {
          uVar5 = 0;
        }
        else {
          uVar5 = FUN_006eef60();
          uVar5 = uVar5 % local_a4;
        }
        iVar6 = __RTDynamicCast(*(undefined4 *)(local_ac + uVar5 * 4),0,
                                &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        iVar7 = FUN_0059e630(iVar6,1,local_ac,local_a8,local_a4);
        if ((iVar6 != 0) && (*(int *)(iVar6 + 0xb64) == 3)) {
          *(undefined4 *)(iVar6 + 0xb64) = 8;
        }
        if ((iVar7 != 0) && (*(int *)(iVar7 + 0xb64) == 3)) {
          *(undefined4 *)(iVar7 + 0xb64) = 9;
        }
        local_80 = local_80 - 1;
      } while (local_80 != 0);
      local_80 = 0;
    }
    local_14 = local_14 & 0xffffff00;
    if (local_a0 != 0) {
      uVar5 = ((int)local_98 - local_a0 >> 3) * 8;
      iVar6 = local_a0;
      if (0xfff < uVar5) {
        iVar6 = *(int *)(local_a0 + -4);
        uVar5 = uVar5 + 0x23;
        if (0x1f < (local_a0 - iVar6) - 4U) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar6,uVar5);
    }
  }
  if ((*(int *)(local_94 + 0xb64) == 0x2c6) && (FUN_00703670(10), local_a4 != 0)) {
    uVar5 = FUN_006eef60();
    iVar6 = __RTDynamicCast(*(undefined4 *)(local_ac + (uVar5 % local_a4) * 4),0,
                            &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                            &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
    fStack_84 = (float)iVar6;
    iVar7 = FUN_0059e630(iVar6,1,local_ac,local_a8,local_a4);
    if (iVar6 != 0) {
      *(undefined4 *)(iVar6 + 0xb64) = 8;
      *(undefined4 *)(iVar6 + 0x410) = 0;
    }
    if (iVar7 != 0) {
      *(undefined4 *)(iVar7 + 0xb64) = 9;
      *(undefined4 *)(iVar7 + 0x410) = 0;
    }
  }
  if (local_b0[0] == '\0') {
    if (DAT_00c7de78 == 0) {
      puVar9 = &DAT_00c7f618;
    }
    else {
      puVar9 = (uint *)(DAT_00c7de78 + 0x30);
    }
    if (local_ac != 0) {
      uVar8 = *(uint *)(local_ac + -4);
      uVar5 = *puVar9;
      *puVar9 = *puVar9 - uVar8;
      puVar9[1] = puVar9[1] - (uint)(uVar5 < uVar8);
      free((void *)(local_ac + -4));
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

