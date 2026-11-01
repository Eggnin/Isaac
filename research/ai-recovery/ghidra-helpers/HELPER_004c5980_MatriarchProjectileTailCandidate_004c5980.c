/* Local J460 decompiler output.
 * VA: 0x004c5980
 * Entry: 004c5980
 * Dispatcher: 0x006c2990
 * Types: 413
 * Identities: matriarch.attack_helper
 * Evidence: Called by Matriarch State 13 projectile branch
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=413; identities=matriarch.attack_helper; Called by
   Matriarch State 13 projectile branch */

void __fastcall
HELPER_004c5980_MatriarchProjectileTailCandidate
          (undefined4 param_1_00,undefined4 param_2_00,undefined4 *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = FUN_006eef60();
  iVar2 = HELPER_Entity_SpawnRelay(1000,2,param_2_00,param_2,0,param_1_00,uVar1);
  *(undefined4 *)(iVar2 + 0x34c) = *param_1;
  *(undefined4 *)(iVar2 + 0x350) = param_1[1];
  return;
}

