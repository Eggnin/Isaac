/* Local J460 decompiler output.
 * VA: 0x00a20ab0
 * Entry: 00a20ab0
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: boss_event
 * Evidence: Callback passed to PTR_vftable_00c57b18+0x74 by 0x009562d0
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=boss_event; Callback passed to
   PTR_vftable_00c57b18+0x74 by 0x009562d0 */

bool HELPER_00a20ab0_BossEventMutationCallback
               (int *param_1,int *param_2,undefined4 *param_3,float *param_4)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  char cVar4;
  float10 fVar5;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  puStack_c = &LAB_00b115fd;
  local_10 = ExceptionList;
  ExceptionList = &local_10;
  local_8 = 0;
  fVar5 = (float10)(**(code **)(*param_1 + 0x38))(*param_3,DAT_00bf93b4 ^ (uint)&stack0xfffffffc);
  param_3 = (undefined4 *)(float)fVar5;
  bVar1 = NAN((float)param_3);
  bVar2 = NAN(DAT_00ba9fe4);
  bVar3 = (float)param_3 == DAT_00ba9fe4;
  *param_4 = (float)param_3;
  local_8 = 1;
  if (((param_2 != (int *)0x0) && (cVar4 = (**(code **)(*param_2 + 0xc))(), cVar4 != '\0')) &&
     (DAT_00c7e814 != (code *)0x0)) {
    (*DAT_00c7e814)(&param_1);
  }
  ExceptionList = local_10;
  return (bVar1 || bVar2) == bVar3;
}

