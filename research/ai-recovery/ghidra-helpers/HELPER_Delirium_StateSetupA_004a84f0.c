/* Local J460 decompiler output.
 * VA: 0x004a84f0
 * Entry: 004a84f0
 * Dispatcher: 0x006c2990
 * Types: 412
 * Identities: delirium.state_setup
 * Evidence: Called at 0x004a6fa0
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=412; identities=delirium.state_setup; Called at
   0x004a6fa0 */

void __fastcall HELPER_Delirium_StateSetupA(int param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  undefined local_14 [8];
  int **local_c;
  int **local_8;
  
  iVar1 = *(int *)(param_1 + 0x28);
  iVar2 = *(int *)(param_1 + 0x2c);
  local_8 = (int **)param_1;
  uVar3 = FUN_006eef60();
  if ((uVar3 & 1) == 0) {
    piVar4 = &DAT_00b1e980;
    local_c = (int **)0x0;
    while ((iVar7 = piVar4[-2], iVar1 != iVar7 || (iVar2 != piVar4[-1]))) {
      if ((iVar1 == *piVar4) && (iVar2 == piVar4[1])) goto LAB_004a857c;
      local_c = (int **)((int)local_c + 1);
      piVar4 = piVar4 + 5;
      if (0xb1ebff < (int)piVar4) {
        return;
      }
    }
  }
  else {
    piVar4 = &DAT_00b1ebec;
    local_c = (int **)&DAT_0000001f;
    while ((iVar7 = piVar4[-2], iVar1 != iVar7 || (iVar2 != piVar4[-1]))) {
      if ((iVar1 == *piVar4) && (iVar2 == piVar4[1])) goto LAB_004a857c;
      local_c = (int **)((int)local_c + -1);
      piVar4 = piVar4 + -5;
      if ((int)piVar4 < 0xb1e980) {
        return;
      }
    }
  }
  iVar7 = *piVar4;
LAB_004a857c:
  uVar3 = FUN_006eef60();
  if ((int)(uVar3 % 100) < *(int *)(&DAT_00b1e988 + (int)local_c * 0x14)) {
    uVar5 = FUN_006eef60();
    uVar6 = FUN_0081e9d0(local_14,0);
    piVar4 = (int *)HELPER_Entity_SpawnRelay(iVar7,iVar2,uVar6,&DAT_00c7b640,local_8,0,uVar5);
    piVar4[0xe0] = *(int *)((int)local_8 + 900);
    iVar1 = *(int *)((int)local_8 + 900);
    piVar4[0x5a] = piVar4[0x5a] | 0x80040000;
    piVar4[0xe1] = iVar1;
    piVar4[0x5b] = piVar4[0x5b];
    HELPER_Delirium_ApplyFormAndState(iVar2,1);
    HELPER_Delirium_StateSetupB();
    local_8 = (int **)((int)local_8 + 0xbe8);
    if (*local_8 != (int *)0x0) {
      local_c = local_8;
      FUN_004cf210(&local_c);
    }
    *local_8 = piVar4;
    FUN_004cdcf0(local_8);
    (**(code **)(*piVar4 + 0xc))();
    FUN_00a112c0(1,"Spawned Delirium companion %d:%u\n",iVar7,iVar2);
  }
  return;
}

