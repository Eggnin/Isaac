/* Local J460 decompiler output.
 * VA: 0x0096f420
 * Entry: 0096f420
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Lua method registration
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Lua method registration */

void __thiscall
HELPER_Laser_SetActiveRotation
          (int param_1_00,int param_1,undefined4 param_2,undefined4 param_3,char param_4)

{
  int iVar1;
  
  *(undefined *)(param_1_00 + 0x4c0) = 1;
  *(int *)(param_1_00 + 0x4c4) = param_1;
  *(undefined4 *)(param_1_00 + 0x4c8) = param_2;
  *(undefined4 *)(param_1_00 + 0x4cc) = param_3;
  if (param_4 != '\0') {
    iVar1 = FUN_00aefca0();
    *(int *)(param_1_00 + 0x458) = iVar1 + 1 + param_1;
  }
  return;
}

