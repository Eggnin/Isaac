/* Local J460 decompiler output.
 * VA: 0x00703190
 * Entry: 00703190
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Explosion invokes after damage dispatch
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Explosion invokes after damage
   dispatch */

int * __thiscall HELPER_Explosion_AfterDamage(int param_1_00,undefined4 *param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  int iVar5;
  float fVar6;
  float in_XMM2_Da;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_64;
  undefined4 local_60;
  int local_58;
  float local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00afc320;
  local_10 = ExceptionList;
  ExceptionList = &local_10;
  local_14 = in_XMM2_Da;
  uVar3 = FUN_006eef60(DAT_00bf93b4 ^ (uint)&stack0xfffffffc);
  piVar4 = (int *)HELPER_Entity_SpawnRelay(1000,0x12,param_1,&DAT_00c7b640,param_2,0,uVar3);
  fVar6 = local_14 * DAT_00c37940;
  piVar4[0x39] = (int)(local_14 * DAT_00c3793c);
  piVar4[0x3a] = (int)fVar6;
  (**(code **)(*piVar4 + 0xc))();
  FUN_004d3080();
  local_8 = 0;
  local_64 = *param_1;
  iVar1 = *(int *)(param_1_00 + 0x18300);
  local_60 = param_1[1];
  local_8c = 1000;
  local_88 = 0x12;
  local_58 = piVar4[0xfb];
  iVar2 = *(int *)(iVar1 + 4);
  iVar5 = *(int *)(iVar2 + 0x8c) - *(int *)(iVar2 + 0x88);
  while (0x80 < iVar5 / 0x78 + 1U) {
    FUN_004d6f80(&param_2,*(undefined4 *)(*(int *)(iVar1 + 4) + 0x88));
    iVar2 = *(int *)(iVar1 + 4);
    iVar5 = *(int *)(iVar2 + 0x8c) - *(int *)(iVar2 + 0x88);
  }
  if (*(int *)(iVar2 + 0x8c) == *(int *)(iVar2 + 0x90)) {
    FUN_004d7530(*(int *)(iVar2 + 0x8c),&local_8c);
  }
  else {
    FUN_004d3130(&local_8c);
    *(int *)(iVar2 + 0x8c) = *(int *)(iVar2 + 0x8c) + 0x78;
  }
  FUN_004d6ee0();
  ExceptionList = local_10;
  return piVar4;
}

