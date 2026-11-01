/* Local J460 decompiler output.
 * VA: 0x006a9140
 * Entry: 006a9140
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Explosion radius source player-owner gate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Explosion radius source player-owner
   gate */

uint __fastcall HELPER_EntityPlayerOwner(uint param_1)

{
  int iVar1;
  undefined *puVar2;
  uint uVar3;
  undefined local_28 [8];
  int local_20;
  int local_1c;
  undefined4 local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00afa41d;
  local_10 = ExceptionList;
  ExceptionList = &local_10;
  local_1c = 0;
  local_18 = 0;
  local_1c = FUN_00a0f4c0(0x18,DAT_00bf93b4 ^ (uint)&stack0xfffffffc);
  *(int *)local_1c = local_1c;
  *(int *)(local_1c + 4) = local_1c;
  *(int *)(local_1c + 8) = local_1c;
  *(undefined2 *)(local_1c + 0xc) = 0x101;
  local_8 = 0;
  local_14 = param_1;
  if (param_1 != 0) {
    do {
      uVar3 = local_14;
      if (*(int *)(local_14 + 0x28) == 1) goto LAB_006a926c;
      _Find_lower_bound<>(local_28,&local_14);
      if (((*(char *)(local_20 + 0xd) == '\0') && (*(uint *)(local_20 + 0x10) <= uVar3)) &&
         (local_20 != local_1c)) break;
      puVar2 = (undefined *)FUN_006b7d20(&local_14);
      *puVar2 = 1;
      local_14 = *(uint *)(local_14 + 0x3bc);
    } while (local_14 != 0);
  }
  iVar1 = local_1c;
  FID_conflict__Erase_tree<class_fuzzer::fuzzer_allocator<struct_std::_Tree_node<struct_fuzzer::TracePC::PCTableEntry_const*,void*>_>_>
            (&local_1c,*(undefined4 *)(local_1c + 4));
  *(int *)(iVar1 + 4) = iVar1;
  *(int *)iVar1 = iVar1;
  *(int *)(iVar1 + 8) = iVar1;
  local_18 = 0;
  local_14 = param_1;
  if (param_1 != 0) {
    do {
      uVar3 = local_14;
      if (*(int *)(local_14 + 0x28) == 1) goto LAB_006a926c;
      _Find_lower_bound<>(local_28,&local_14);
      if (((*(char *)(local_20 + 0xd) == '\0') && (*(uint *)(local_20 + 0x10) <= uVar3)) &&
         (local_20 != local_1c)) break;
      puVar2 = (undefined *)FUN_006b7d20(&local_14);
      *puVar2 = 1;
      local_14 = *(uint *)(local_14 + 0x3c8);
    } while (local_14 != 0);
  }
  uVar3 = 0;
LAB_006a926c:
  FID_conflict__Erase_tree<class_fuzzer::fuzzer_allocator<struct_std::_Tree_node<struct_fuzzer::TracePC::PCTableEntry_const*,void*>_>_>
            (&local_1c,*(undefined4 *)(local_1c + 4));
  FUN_00aef15c(local_1c,0x18);
  ExceptionList = local_10;
  return uVar3;
}

