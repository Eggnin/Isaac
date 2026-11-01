/* Local J460 decompiler output.
 * VA: 0x0096f310
 * Entry: 0096f310
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: entity_spawn
 * Evidence: Creates an entity-like object with a Type 10 argument in attacks
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=entity_spawn; Creates an entity-like
   object with a Type 10 argument in attacks */

int HELPER_0096f310_EntityAttackObjectCandidate
              (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
              undefined4 *param_5,int param_6,undefined param_7)

{
  int *piVar1;
  float fVar2;
  undefined4 uVar3;
  int iVar4;
  int *local_c [2];
  
  uVar3 = FUN_006eef60();
  iVar4 = HELPER_Entity_CreateDispatcher(7,param_1,param_2,&DAT_00c7b640,param_6,0,uVar3,param_7);
  if (iVar4 == 0) {
    return 0;
  }
  *(undefined4 *)(iVar4 + 0x41c) = param_3;
  *(undefined4 *)(iVar4 + 0x418) = param_3;
  *(undefined4 *)(iVar4 + 0x458) = param_4;
  *(undefined4 *)(iVar4 + 0x34c) = *param_5;
  *(undefined4 *)(iVar4 + 0x350) = param_5[1];
  if (param_6 != 0) {
    piVar1 = (int *)(iVar4 + 0x3c8);
    if (*(int *)(iVar4 + 0x3c8) != 0) {
      local_c[0] = piVar1;
      FUN_004cf210(local_c);
    }
    *piVar1 = param_6;
    FUN_004cdcf0(piVar1);
    piVar1 = (int *)(iVar4 + 0x3bc);
    if (*(int *)(iVar4 + 0x3bc) != 0) {
      local_c[0] = piVar1;
      FUN_004cf210(local_c);
    }
    *piVar1 = param_6;
    FUN_004cdcf0(piVar1);
    fVar2 = *(float *)(param_6 + 0x340);
    *(float *)(iVar4 + 0x410) = *(float *)(iVar4 + 0x33c) - *(float *)(param_6 + 0x33c);
    *(float *)(iVar4 + 0x414) = *(float *)(iVar4 + 0x340) - fVar2;
  }
  return iVar4;
}

