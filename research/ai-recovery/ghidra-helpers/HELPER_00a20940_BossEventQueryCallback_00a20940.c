/* Local J460 decompiler output.
 * VA: 0x00a20940
 * Entry: 00a20940
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: boss_event
 * Evidence: Callback passed to PTR_vftable_00c57b18+0x74 by 0x00956110
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=boss_event; Callback passed to
   PTR_vftable_00c57b18+0x74 by 0x00956110 */

undefined HELPER_00a20940_BossEventQueryCallback(int *param_1,int *param_2,undefined4 *param_3)

{
  undefined uVar1;
  char cVar2;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  puStack_c = &LAB_00b115cd;
  local_10 = ExceptionList;
  ExceptionList = &local_10;
  local_8 = 0;
  uVar1 = (**(code **)(*param_1 + 0x30))(*param_3,DAT_00bf93b4 ^ (uint)&stack0xfffffffc);
  local_8 = 1;
  if (param_2 != (int *)0x0) {
    cVar2 = (**(code **)(*param_2 + 0xc))();
    if ((cVar2 != '\0') && (DAT_00c7e814 != (code *)0x0)) {
      (*DAT_00c7e814)(&param_1);
    }
  }
  ExceptionList = local_10;
  return uVar1;
}

