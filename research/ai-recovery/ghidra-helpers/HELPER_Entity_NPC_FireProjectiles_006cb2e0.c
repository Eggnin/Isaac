/* Local J460 decompiler output.
 * VA: 0x006cb2e0
 * Entry: 006cb2e0
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: common_attack
 * Evidence: NPC projectile emitter
 */

/* WARNING: Removing unreachable block (ram,0x006ccd5b) */
/* WARNING: Removing unreachable block (ram,0x006cb892) */
/* WARNING: Removing unreachable block (ram,0x006cbdb6) */
/* WARNING: Removing unreachable block (ram,0x006cc307) */
/* WARNING: Removing unreachable block (ram,0x006cc129) */
/* WARNING: Removing unreachable block (ram,0x006cbacd) */
/* WARNING: Removing unreachable block (ram,0x006cb68e) */
/* WARNING: Removing unreachable block (ram,0x006cc4df) */
/* WARNING: Removing unreachable block (ram,0x006ccd6d) */
/* WARNING: Removing unreachable block (ram,0x006ccd7d) */
/* WARNING: Removing unreachable block (ram,0x006ccd83) */
/* WARNING: Removing unreachable block (ram,0x006cbe83) */
/* WARNING: Removing unreachable block (ram,0x006cc39a) */
/* WARNING: Removing unreachable block (ram,0x006cc1b9) */
/* WARNING: Removing unreachable block (ram,0x006cbbb2) */
/* WARNING: Removing unreachable block (ram,0x006cc56f) */
/* WARNING: Removing unreachable block (ram,0x006cbf50) */
/* WARNING: Removing unreachable block (ram,0x006cc5ff) */
/* WARNING: Removing unreachable block (ram,0x006cc69f) */
/* WARNING: Removing unreachable block (ram,0x006cc73c) */
/* WARNING: Removing unreachable block (ram,0x006cc7cf) */
/* WARNING: Removing unreachable block (ram,0x006cb52f) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=common_attack; NPC projectile emitter */

undefined4 __thiscall
HELPER_Entity_NPC_FireProjectiles
          (int param_1_00,float *param_1,float *param_2,int param_3,int param_4)

{
  uint *puVar1;
  int *piVar2;
  float fVar3;
  int iVar4;
  float fVar5;
  undefined *puVar6;
  uint uVar7;
  undefined4 uVar8;
  float fVar9;
  float *pfVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  undefined4 uVar14;
  TypeDescriptor *pTVar15;
  TypeDescriptor *pTVar16;
  undefined4 uVar17;
  float *local_58;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  float local_30;
  float local_2c;
  float local_28;
  int local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  puStack_18 = &LAB_00afaafd;
  local_1c = ExceptionList;
  uVar7 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  pfVar10 = (float *)0x0;
  local_58 = (float *)0x0;
  local_14 = 0;
  local_24 = param_1_00;
  puVar6 = &stack0xfffffffc;
  switch(param_3) {
  case 0:
    puStack_20 = &stack0xfffffffc;
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    local_48 = *(float *)(param_4 + 0x60) + *param_1;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_44 = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_48,param_2,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    pfVar10 = (float *)0x0;
    puVar6 = puStack_20;
    goto switchD_006cb33c_caseD_a;
  case 1:
    puStack_20 = &stack0xfffffffc;
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = *param_2 * _DAT_00baa42c - param_2[1] * _DAT_00baa1e4 * *(float *)(param_4 + 0x28);
    local_40 = *(float *)(param_4 + 0x60) + *param_1;
    local_44 = *param_2 * _DAT_00baa1e4 * *(float *)(param_4 + 0x28) + param_2[1] * _DAT_00baa42c;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = param_2[1] * _DAT_00baa1e4 * *(float *)(param_4 + 0x28) + *param_2 * _DAT_00baa42c;
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_44 = param_2[1] * _DAT_00baa42c - *param_2 * _DAT_00baa1e4 * *(float *)(param_4 + 0x28);
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    break;
  case 2:
    puStack_20 = &stack0xfffffffc;
    uVar8 = FUN_006eef60();
    iVar4 = local_24;
    uVar17 = 0;
    local_48 = *param_1 + *(float *)(param_4 + 0x60);
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_44 = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_48,param_2,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = *param_2 * _DAT_00baa42c * DAT_00baa3e0 -
               param_2[1] * _DAT_00baa1e4 * DAT_00baa3e0 * *(float *)(param_4 + 0x28);
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_44 = *param_2 * _DAT_00baa1e4 * DAT_00baa3e0 * *(float *)(param_4 + 0x28) +
               param_2[1] * _DAT_00baa42c * DAT_00baa3e0;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,iVar4,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    local_48 = param_2[1] * _DAT_00baa1e4 * DAT_00baa3e0 * *(float *)(param_4 + 0x28) +
               *param_2 * _DAT_00baa42c * DAT_00baa3e0;
    local_44 = param_2[1] * _DAT_00baa42c * DAT_00baa3e0 -
               *param_2 * _DAT_00baa1e4 * DAT_00baa3e0 * *(float *)(param_4 + 0x28);
    goto LAB_006cb713;
  case 3:
    puStack_20 = &stack0xfffffffc;
    uVar8 = FUN_006eef60();
    iVar4 = local_24;
    uVar17 = 0;
    local_48 = *(float *)(param_4 + 0x60) + *param_1;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_44 = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_48,param_2,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = *param_2 * _DAT_00baa3ec - param_2[1] * _DAT_00baa288 * *(float *)(param_4 + 0x28);
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_44 = *param_2 * _DAT_00baa288 * *(float *)(param_4 + 0x28) + param_2[1] * _DAT_00baa3ec;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,iVar4,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    local_48 = param_2[1] * _DAT_00baa288 * *(float *)(param_4 + 0x28) + *param_2 * _DAT_00baa3ec;
    local_44 = param_2[1] * _DAT_00baa3ec - *param_2 * _DAT_00baa288 * *(float *)(param_4 + 0x28);
    goto LAB_006cb8ff;
  case 4:
    puStack_20 = &stack0xfffffffc;
    uVar8 = FUN_006eef60();
    iVar4 = local_24;
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = *param_2 * DAT_00baa44c - param_2[1] * _DAT_00baa148 * *(float *)(param_4 + 0x28);
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_44 = *param_2 * _DAT_00baa148 * *(float *)(param_4 + 0x28) + param_2[1] * DAT_00baa44c;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = param_2[1] * _DAT_00baa148 * *(float *)(param_4 + 0x28) + *param_2 * DAT_00baa44c;
    local_40 = *(float *)(param_4 + 0x60) + *param_1;
    local_44 = param_2[1] * DAT_00baa44c - *param_2 * _DAT_00baa148 * *(float *)(param_4 + 0x28);
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,iVar4,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = *param_2 * _DAT_00baa3ec * DAT_00baa3e0 -
               param_2[1] * _DAT_00baa288 * DAT_00baa3e0 * *(float *)(param_4 + 0x28);
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_44 = *param_2 * _DAT_00baa288 * DAT_00baa3e0 * *(float *)(param_4 + 0x28) +
               param_2[1] * _DAT_00baa3ec * DAT_00baa3e0;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = param_2[1] * _DAT_00baa288 * DAT_00baa3e0 * *(float *)(param_4 + 0x28) +
               *param_2 * _DAT_00baa3ec * DAT_00baa3e0;
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_44 = param_2[1] * _DAT_00baa3ec * DAT_00baa3e0 -
               *param_2 * _DAT_00baa288 * DAT_00baa3e0 * *(float *)(param_4 + 0x28);
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    break;
  case 5:
    puStack_20 = &stack0xfffffffc;
    uVar8 = FUN_006eef60();
    iVar4 = local_24;
    uVar17 = 0;
    local_48 = *(float *)(param_4 + 0x60) + *param_1;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_44 = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_48,param_2,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = *param_2 * _DAT_00baa440 - param_2[1] * _DAT_00baa1a8 * *(float *)(param_4 + 0x28);
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_44 = *param_2 * _DAT_00baa1a8 * *(float *)(param_4 + 0x28) + param_2[1] * _DAT_00baa440;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,iVar4,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = param_2[1] * _DAT_00baa1a8 * *(float *)(param_4 + 0x28) + *param_2 * _DAT_00baa440;
    local_40 = *(float *)(param_4 + 0x60) + *param_1;
    local_44 = param_2[1] * _DAT_00baa440 - *param_2 * _DAT_00baa1a8 * *(float *)(param_4 + 0x28);
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = *param_2 * _DAT_00baa3ec - param_2[1] * _DAT_00baa288 * *(float *)(param_4 + 0x28);
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_44 = *param_2 * _DAT_00baa288 * *(float *)(param_4 + 0x28) + param_2[1] * _DAT_00baa3ec;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = param_2[1] * _DAT_00baa288 * *(float *)(param_4 + 0x28) + *param_2 * _DAT_00baa3ec;
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_44 = param_2[1] * _DAT_00baa3ec - *param_2 * _DAT_00baa288 * *(float *)(param_4 + 0x28);
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    break;
  case 6:
    local_28 = *param_2;
    puStack_20 = &stack0xfffffffc;
    uVar8 = FUN_006eef60();
    iVar4 = local_24;
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = local_28;
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_44 = 0.0;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    local_48 = (float)((uint)local_28 ^ DAT_00bacb70);
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_40 = *(float *)(param_4 + 0x60) + *param_1;
    local_44 = 0.0;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    local_30 = local_48;
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,iVar4,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_44 = local_28;
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_48 = 0.0;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    local_44 = local_30;
    local_48 = 0.0;
LAB_006cb8ff:
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    local_40 = *(float *)(param_4 + 0x60) + *param_1;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    break;
  case 7:
    local_28 = *param_2 * DAT_00baa36c;
    puStack_20 = &stack0xfffffffc;
    uVar8 = FUN_006eef60();
    iVar4 = local_24;
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = local_28;
    local_44 = local_28;
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_44 = local_28;
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_48 = (float)((uint)local_28 ^ DAT_00bacb70);
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    local_2c = local_48;
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,iVar4,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    local_48 = local_28;
    uVar14 = 0;
    local_44 = local_2c;
    local_40 = *(float *)(param_4 + 0x60) + *param_1;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    local_48 = local_2c;
    local_44 = local_2c;
    goto LAB_006cb713;
  case 8:
    local_28 = *param_2;
    uVar8 = FUN_006eef60();
    iVar4 = local_24;
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = local_28;
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_44 = 0.0;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    local_48 = (float)((uint)local_28 ^ DAT_00bacb70);
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_40 = *(float *)(param_4 + 0x60) + *param_1;
    local_44 = 0.0;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    local_30 = local_48;
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,iVar4,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_44 = local_28;
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_48 = 0.0;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_44 = local_30;
    local_40 = *(float *)(param_4 + 0x60) + *param_1;
    local_48 = 0.0;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    local_28 = local_28 * DAT_00baa36c;
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_48 = local_28;
    local_44 = local_28;
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar14 = 0;
    local_44 = local_28;
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    local_48 = (float)((uint)local_28 ^ DAT_00bacb70);
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    local_2c = local_48;
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    local_48 = local_28;
    uVar14 = 0;
    local_44 = local_2c;
    local_40 = *(float *)(param_4 + 0x60) + *param_1;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    FUN_0042c920(0,&local_34);
    uVar8 = FUN_006eef60();
    local_48 = local_2c;
    local_44 = local_48;
LAB_006cb713:
    uVar17 = 0;
    pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
    pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    local_40 = *param_1 + *(float *)(param_4 + 0x60);
    uVar14 = 0;
    local_3c = *(float *)(param_4 + 100) + param_1[1];
    uVar8 = HELPER_Entity_SpawnRelay
                      (9,*(undefined4 *)(param_4 + 0x94),&local_40,&local_48,local_24,0,uVar8);
    local_34 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
    break;
  case 9:
    local_34 = *(float *)(param_4 + 0x18);
    local_30 = (float)(int)(param_2[1] + DAT_00baa2d0);
    local_3c = DAT_00baa7a8 / (float)(int)local_30;
    local_2c = *param_2;
    puStack_20 = &stack0xfffffffc;
    puVar6 = &stack0xfffffffc;
    if (0 < (int)local_30) {
      do {
        local_34 = local_34 + local_3c;
        fVar9 = local_34;
        FUN_0041d540(uVar7);
        local_48 = fVar9 * local_2c;
        local_28 = local_48;
        fVar9 = local_34;
        FUN_0041d520();
        local_38 = *(float *)(param_4 + 0x70);
        local_44 = fVar9 * local_2c;
        if (((NAN(local_38) || NAN(DAT_00c7b640)) == (local_38 == DAT_00c7b640)) ||
           ((NAN(*(float *)(param_4 + 0x74)) || NAN(DAT_00c7b644)) ==
            (*(float *)(param_4 + 0x74) == DAT_00c7b644))) {
          fVar11 = local_44 * local_44 + local_28 * local_28;
          FUN_00435a50();
          fVar9 = local_44;
          if (DAT_00ba9fe4 < fVar11) {
            local_28 = (DAT_00baa454 / fVar11) * local_28;
            fVar9 = local_44 * (DAT_00baa454 / fVar11);
          }
          fVar9 = fVar9 * *(float *)(param_4 + 0x74) + local_38 * local_28;
          if (*(float *)(param_4 + 0x78) <= fVar9 && fVar9 != *(float *)(param_4 + 0x78))
          goto LAB_006cc917;
        }
        else {
LAB_006cc917:
          uVar8 = FUN_006eef60();
          uVar17 = 0;
          pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
          pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          local_50 = *param_1 + *(float *)(param_4 + 0x60);
          uVar14 = 0;
          local_4c = *(float *)(param_4 + 100) + param_1[1];
          uVar8 = HELPER_Entity_SpawnRelay
                            (9,*(undefined4 *)(param_4 + 0x94),&local_50,&local_48,local_24,0,uVar8)
          ;
          local_38 = (float)__RTDynamicCast(uVar8,uVar14,pTVar15,pTVar16,uVar17);
          if (pfVar10 == (float *)0x0) {
            FUN_0042c920(0,&local_38);
            pfVar10 = local_58;
          }
          else {
            *pfVar10 = local_38;
            local_58 = pfVar10 + 1;
            pfVar10 = local_58;
          }
        }
        local_30 = (float)((int)local_30 + -1);
      } while (local_30 != 0.0);
      local_30 = 0.0;
      puVar6 = puStack_20;
    }
  default:
    goto switchD_006cb33c_caseD_a;
  }
  local_58 = (float *)0x0;
  FUN_0042c920(0,&local_34);
  pfVar10 = local_58;
  puVar6 = puStack_20;
switchD_006cb33c_caseD_a:
  puStack_20 = puVar6;
  fVar9 = (float)((int)pfVar10 >> 2);
  local_34 = 0.0;
  local_2c = fVar9;
  if (fVar9 != 0.0) {
    do {
      if (*(int *)((int)local_34 * 4) == 0) {
        FUN_00a112c0(0x10,"Failed to spawn Projectile");
        fVar9 = local_2c;
      }
      local_34 = (float)((int)local_34 + 1);
    } while ((uint)local_34 < (uint)fVar9);
  }
  if ((((*(char *)(param_4 + 0x98) == '\0') && (param_3 != 6)) && (param_3 != 7)) &&
     ((param_3 != 8 && (param_3 != 9)))) {
    if (fVar9 != 0.0) {
      fVar11 = 0.0;
      do {
        *(undefined4 *)(*(int *)((int)fVar11 * 4) + 0x414) = 0xc0400000;
        piVar2 = (int *)((int)fVar11 * 4);
        fVar11 = (float)((int)fVar11 + 1);
        *(undefined4 *)(*piVar2 + 0x418) = 0x3dcccccd;
        pfVar10 = local_58;
      } while ((uint)fVar11 < (uint)fVar9);
    }
    fVar5 = DAT_00baa4b0;
    fVar13 = DAT_00baa454;
    fVar11 = DAT_00baa280;
    if (((param_3 != 2) && (param_3 != 4)) && (param_3 != 5)) goto LAB_006ccaf9;
    if (fVar9 == 0.0) goto LAB_006ccd46;
    fVar12 = 0.0;
    do {
      iVar4 = *(int *)((int)fVar12 * 4);
      fVar12 = (float)((int)fVar12 + 1);
      *(float *)(iVar4 + 0x414) = *(float *)(iVar4 + 0x414) - fVar13;
      fVar3 = *(float *)(local_24 + 0x364);
      *(float *)(iVar4 + 0x360) =
           *(float *)(local_24 + 0x360) * fVar11 + *(float *)(iVar4 + 0x360) * fVar5;
      *(float *)(iVar4 + 0x364) = fVar3 * fVar11 + *(float *)(iVar4 + 0x364) * fVar5;
    } while ((uint)fVar12 < (uint)fVar9);
  }
  else {
LAB_006ccaf9:
    fVar13 = DAT_00baa454;
    if (fVar9 == 0.0) goto LAB_006ccd46;
  }
  local_28 = 0.0;
  do {
    iVar4 = *(int *)((int)local_28 * 4);
    *(float *)(iVar4 + 0x410) = *(float *)(param_4 + 4) + *(float *)(iVar4 + 0x410);
    *(float *)(iVar4 + 0x414) = *(float *)(param_4 + 8) + *(float *)(iVar4 + 0x414);
    *(float *)(iVar4 + 0x418) = *(float *)(iVar4 + 0x418) + *(float *)(param_4 + 0xc);
    *(undefined4 *)(iVar4 + 0x420) = *(undefined4 *)(param_4 + 0x14);
    fVar9 = *(float *)(param_4 + 0x9c);
    if ((*(float *)(param_4 + 0x9c) < 0.0) &&
       (fVar9 = fVar13, _DAT_00baa5e8 < (double)*(float *)(param_4 + 0x14))) {
      fVar9 = DAT_00baa630;
    }
    (**(code **)(**(int **)((int)local_28 * 4) + 0x40))(fVar9);
    iVar4 = *(int *)((int)local_28 * 4);
    fVar9 = *(float *)(param_4 + 0x10);
    *(float *)(iVar4 + 0x360) = *(float *)(iVar4 + 0x360) * *(float *)(param_4 + 0x10);
    *(float *)(iVar4 + 0x364) = *(float *)(iVar4 + 0x364) * fVar9;
    *(uint *)(iVar4 + 0x438) = *(uint *)(iVar4 + 0x438) | *(uint *)(param_4 + 0x58);
    *(uint *)(iVar4 + 0x43c) = *(uint *)(iVar4 + 0x43c) | *(uint *)(param_4 + 0x5c);
    (**(code **)(**(int **)((int)local_28 * 4) + 0x3c))(param_4 + 0x2c,0xffffffff,0xff,0,1);
    fVar9 = local_28;
    uVar8 = *(undefined4 *)(param_4 + 0x6c);
    iVar4 = *(int *)((int)local_28 * 4);
    *(undefined4 *)(iVar4 + 0x334) = *(undefined4 *)(param_4 + 0x68);
    *(undefined4 *)(iVar4 + 0x338) = uVar8;
    *(undefined4 *)(iVar4 + 0x424) = *(undefined4 *)(param_4 + 0x1c);
    *(undefined4 *)(*(int *)((int)local_28 * 4) + 0x428) = *(undefined4 *)(param_4 + 0x20);
    *(undefined4 *)(*(int *)((int)local_28 * 4) + 0x42c) = *(undefined4 *)(param_4 + 0x24);
    *(undefined4 *)(*(int *)((int)local_28 * 4) + 0x448) = *(undefined4 *)(param_4 + 0x7c);
    iVar4 = *(int *)((int)local_28 * 4);
    puVar1 = (uint *)(iVar4 + 0x450);
    *puVar1 = *puVar1 | *(uint *)(param_4 + 0x80);
    puVar1 = (uint *)(iVar4 + 0x454);
    *puVar1 = *puVar1 | *(uint *)(param_4 + 0x84);
    *(undefined4 *)(*(int *)((int)local_28 * 4) + 0x458) = *(undefined4 *)(param_4 + 0x88);
    *(undefined4 *)(*(int *)((int)local_28 * 4) + 0x45c) = *(undefined4 *)(param_4 + 0x8c);
    *(undefined *)(*(int *)((int)local_28 * 4) + 0x440) = *(undefined *)(param_4 + 0xa4);
    *(float *)(*(int *)((int)local_28 * 4) + 0x358) =
         *(float *)(param_4 + 0x90) - *(float *)(param_4 + 100);
    iVar4 = *(int *)((int)local_28 * 4);
    if ((*(float *)(iVar4 + 0x410) <= DAT_00baae30 && DAT_00baae30 != *(float *)(iVar4 + 0x410)) &&
       ((*(uint *)(iVar4 + 0x438) & 0x20000) == 0)) {
      *(undefined4 *)(*(int *)((int)local_28 * 4) + 0x188) = 0;
      iVar4 = *(int *)((int)local_28 * 4);
    }
    local_28 = (float)iVar4;
    fVar13 = DAT_00baa454;
    fVar9 = (float)((int)fVar9 + 1);
    *(undefined4 *)((int)local_28 + 0x470) = *(undefined4 *)(param_4 + 0xa0);
    local_28 = fVar9;
  } while ((uint)fVar9 < (uint)local_2c);
  fVar9 = 0.0;
  do {
    FUN_006cb2a0(*(undefined4 *)((int)fVar9 * 4));
    fVar9 = (float)((int)fVar9 + 1);
    pfVar10 = local_58;
  } while ((uint)fVar9 < (uint)local_2c);
LAB_006ccd46:
  uVar8 = uRam00000000;
  if (pfVar10 == (float *)0x0) {
    uVar8 = 0;
  }
  ExceptionList = local_1c;
  return uVar8;
}

