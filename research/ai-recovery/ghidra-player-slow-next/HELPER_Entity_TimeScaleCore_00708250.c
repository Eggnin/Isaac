/* Local J460 decompiler output.
 * VA: 0x00708250
 * Entry: 00708250
 * Dispatcher: 0x006c2990
 * Types: 1
 * Identities: 1.*
 * Evidence: Entity TimeScale 0x7EA3E0 callee
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1; identities=1.*; Entity TimeScale 0x7EA3E0 callee */

int HELPER_Entity_TimeScaleCore(void)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  undefined local_18 [8];
  int local_10;
  int local_c;
  int local_8;
  
  iVar1 = DAT_00c71678;
  local_c = 0x4f;
  FUN_004288a0(local_18,&local_c);
  if (((*(char *)(local_10 + 0xd) == '\0') && (*(int *)(local_10 + 0x10) < 0x50)) &&
     (local_10 != *(int *)(iVar1 + 0x1bbd8))) {
    iVar2 = *(int *)(iVar1 + 0x1baac);
    piVar3 = *(int **)(iVar1 + 0x1baa8);
    local_8 = 0;
    uVar5 = 0;
    iVar4 = 0;
    if (iVar2 - (int)piVar3 >> 2 != 0) {
      do {
        local_c = iVar2;
        if (iVar2 - (int)piVar3 >> 2 == 0) {
          FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
          iVar2 = *(int *)(iVar1 + 0x1baac);
          piVar3 = *(int **)(iVar1 + 0x1baa8);
        }
        if (uVar5 < (uint)(iVar2 - (int)piVar3 >> 2)) {
          piVar3 = piVar3 + uVar5;
        }
        if ((*(int *)(*piVar3 + 0x2c) == 0) && (*(int *)(*piVar3 + 0x3bc) == 0)) {
          iVar2 = FUN_007db860();
          local_8 = local_8 + iVar2;
          iVar2 = *(int *)(iVar1 + 0x1baac);
        }
        piVar3 = *(int **)(iVar1 + 0x1baa8);
        uVar5 = uVar5 + 1;
        iVar4 = local_8;
      } while (uVar5 < (uint)(iVar2 - (int)piVar3 >> 2));
    }
    return iVar4;
  }
  return 0;
}

