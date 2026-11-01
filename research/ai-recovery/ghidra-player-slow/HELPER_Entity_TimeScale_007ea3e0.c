/* Local J460 decompiler output.
 * VA: 0x007ea3e0
 * Entry: 007ea3e0
 * Dispatcher: 0x006c2990
 * Types: 1
 * Identities: 1.*
 * Evidence: Effect and projectile pre-update time-scale helper
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=1; identities=1.*; Effect and projectile pre-update
   time-scale helper */

void HELPER_Entity_TimeScale(undefined4 param_1,int param_2)

{
  int iVar1;
  undefined4 local_1c [2];
  undefined local_14 [8];
  int local_c;
  
  if ((param_2 == 0) || (*(int *)(param_2 + 0x28) != 1)) {
    FUN_009be080(0xe8,DAT_00c71678 + 0x1baa8,1);
    iVar1 = DAT_00c71678;
    local_1c[0] = 0x4d;
    FUN_004288a0(local_14,local_1c);
    if ((*(char *)(local_c + 0xd) == '\0') &&
       ((*(int *)(local_c + 0x10) < 0x4e && (local_c != *(int *)(iVar1 + 0x1bbd8))))) {
      FUN_00417870(0);
      FUN_00435a50();
    }
  }
  FUN_00708250();
  iVar1 = FUN_00930980(0x2a5);
  if (((iVar1 != 0) && (param_2 != 0)) && (*(int *)(param_2 + 0x28) == 1)) {
    HELPER_Player_HasCollectible(0x2a5,0);
  }
  return;
}

