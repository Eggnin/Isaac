/* Local J460 decompiler output.
 * VA: 0x00652df0
 * Entry: 00652df0
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: Projectile Update first call
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; Projectile Update first call */

void __fastcall HELPER_Projectile_BaseUpdate(int param_1)

{
  int iVar1;
  char cVar2;
  
  FUN_007ea3e0(param_1,param_1);
  iVar1 = DAT_00c71678;
  if ((((*(uint *)(param_1 + 0x438) & 0x80000080) != 0x80000080) &&
      (((*(int *)(param_1 + 0x3bc) == 0 ||
        ((*(uint *)(*(int *)(param_1 + 0x3bc) + 0x168) & 0x20000000) == 0)) &&
       (cVar2 = FUN_009305f0(0xe8), cVar2 == '\0')))) &&
     ((*(int *)(iVar1 + 0x26584) == 0x16 || (*(int *)(*(int *)(iVar1 + 0x18300) + 0x1210) != 1)))) {
    FUN_00930980(0x42);
  }
  return;
}

