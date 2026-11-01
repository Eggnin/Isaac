/* Local J460 decompiler output.
 * VA: 0x009562d0
 * Entry: 009562d0
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: boss_event
 * Evidence: Paired with 0x00956110 across boss AI functions
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=boss_event; Paired with 0x00956110 across
   boss AI functions */

void __thiscall
HELPER_009562d0_BossEventMutation
          (undefined4 param_1_00,code *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  char cVar3;
  int iVar4;
  uint uVar5;
  float10 fVar6;
  
  uVar2 = param_1;
  iVar1 = DAT_00c7169c;
  if (((*(int *)(DAT_00c7169c + 8) != 2) || (DAT_00c71690 == 0)) ||
     (cVar3 = FUN_00864d80(param_3,param_1_00,param_1,&param_1), cVar3 == '\0')) {
    iVar4 = *(int *)(iVar1 + 0x4b3d8);
    if ((iVar4 != *(int *)(iVar1 + 0x4b3dc)) && (param_2 == -1)) {
      uVar5 = 0;
      if (*(int *)(iVar1 + 0x4b3dc) - iVar4 >> 2 != 0) {
        do {
          param_1 = *(code **)(**(int **)(iVar4 + uVar5 * 4) + 0x38);
          fVar6 = (float10)(*param_1)(uVar2);
          if (NAN((float)fVar6) == ((float)fVar6 == 0.0)) {
            return;
          }
          uVar5 = uVar5 + 1;
          iVar4 = *(int *)(iVar1 + 0x4b3d8);
        } while (uVar5 < (uint)(*(int *)(iVar1 + 0x4b3dc) - iVar4 >> 2));
      }
      return;
    }
    param_3 = uVar2;
    param_1 = (code *)0x0;
    (**(code **)(PTR_vftable_00c57b18 + 0x74))
              (param_2,HELPER_00a20ab0_BossEventMutationCallback,&param_3,&param_1,0);
  }
  return;
}

