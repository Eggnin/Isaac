/* Local J460 decompiler output.
 * VA: 0x0097e3c0
 * Entry: 0097e3c0
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: SDK DoDamage signature matched original J460
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; SDK DoDamage signature matched
   original J460 */

void __thiscall HELPER_Laser_DoDamage(int param_1_00,int *param_1)

{
  char cVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  uint *puVar5;
  int extraout_ECX;
  int iVar6;
  code *pcVar7;
  float10 fVar8;
  float in_XMM2_Da;
  float fVar9;
  uint uVar10;
  uint uVar11;
  undefined local_60 [40];
  int local_38;
  undefined8 local_34;
  undefined4 local_2c;
  undefined4 *local_24;
  uint local_20;
  uint local_1c;
  int local_18;
  float local_14;
  uint local_10;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  local_14 = in_XMM2_Da;
  if (*(int *)(param_1_00 + 0x52c) != 0) {
    HELPER_Laser_Root();
  }
  uVar2 = FUN_006b62b0();
  FUN_00431570(uVar2);
  iVar4 = param_1[10];
  if (iVar4 == 4) goto LAB_0097e6be;
  local_18 = param_1_00;
  if (*(int *)(param_1_00 + 0x3c8) != 0) {
    local_18 = *(int *)(param_1_00 + 0x3c8);
  }
  if (iVar4 == 1) {
    if (*(int *)(DAT_00c71678 + 0x26614) < 2) {
      piVar3 = (int *)__RTDynamicCast(param_1,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                      &IsaacRepentancePlus::Entity_Player::RTTI_Type_Descriptor,0);
      pcVar7 = *(code **)(*piVar3 + 0x20);
      FUN_00431310(local_18);
      uVar10 = 8;
      fVar9 = 1.0;
      uVar11 = 0;
    }
    else {
      cVar1 = FUN_006a8fa0(param_1);
      iVar6 = extraout_ECX;
      if (cVar1 != '\0') goto LAB_0097e6be;
LAB_0097e488:
      local_20 = 8;
      local_1c = 0;
      local_24 = (undefined4 *)(param_1_00 + 0x428);
      FUN_0067d1f0(iVar6,*(undefined4 *)(param_1_00 + 0x428),*(undefined4 *)(param_1_00 + 0x42c),
                   *(undefined4 *)(param_1_00 + 0x430),*(undefined4 *)(param_1_00 + 0x434));
      FUN_0067af60(*(undefined4 *)(param_1_00 + 0x428),*(undefined4 *)(param_1_00 + 0x42c),
                   *(undefined4 *)(param_1_00 + 0x430),*(undefined4 *)(param_1_00 + 0x434),
                   param_1_00,local_14);
      if (((param_1[0x5b] & 0x1000000U) != 0) &&
         (cVar1 = HELPER_Laser_BrimstonePredicate(), cVar1 != '\0')) {
        local_10 = 0x4d;
        FUN_00956780();
        FUN_0092dc30(local_10,0x3f333333,8,0,0x3f800000,0);
        param_1[0x5b] = param_1[0x5b] | 0x800000;
        param_1[0x5a] = param_1[0x5a];
        local_14 = local_14 + local_14 + DAT_00baa6fc;
      }
      uVar10 = local_20;
      if ((0.0 < *(float *)(param_1_00 + 0x4f4)) &&
         (cVar1 = FUN_006b5b90(0), uVar10 = local_20, cVar1 != '\0')) {
        local_38 = param_1[0xfb];
        local_34 = DAT_00b1f4e0;
        local_2c = DAT_00b1f4e8;
        fVar8 = (float10)FUN_007e9080();
        uVar10 = local_20;
        if ((float)fVar8 < *(float *)(param_1_00 + 0x4f4)) {
          uVar10 = local_20 | 0x800000;
        }
      }
      uVar11 = local_1c;
      local_10 = local_1c;
      if ((1 < *(int *)(DAT_00c71678 + 0x26614)) &&
         ((puVar5 = (uint *)FUN_00417170(&DAT_00c345d0), (*puVar5 | puVar5[1]) != 0 ||
          ((puVar5[2] | puVar5[3]) != 0)))) {
        local_10 = uVar11 | 8;
      }
      pcVar7 = *(code **)(*param_1 + 0x20);
      FUN_00431310(local_18);
      fVar9 = local_14;
      uVar11 = local_10;
    }
  }
  else {
    iVar6 = local_18;
    if ((iVar4 != 3) ||
       (((iVar6 = param_1[0xb], iVar6 != 0x3e &&
         ((*(int *)(DAT_00c71678 + 0x26584) != 0x1e || (iVar6 != 0x43)))) ||
        (1 < *(int *)(DAT_00c71678 + 0x26614))))) goto LAB_0097e488;
    iVar4 = __RTDynamicCast(param_1,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                            &IsaacRepentancePlus::Entity_Familiar::RTTI_Type_Descriptor,0);
    pcVar7 = *(code **)(**(int **)(iVar4 + 0x410) + 0x20);
    FUN_00431310(local_18);
    uVar11 = 0;
    uVar10 = 0x808;
    fVar9 = 1.0;
  }
  (*pcVar7)(fVar9,uVar10,uVar11,local_60,0x1e);
LAB_0097e6be:
  FUN_00aef12b();
  return;
}

