/* Local J460 decompiler output.
 * VA: 0x006a2030
 * Entry: 006a2030
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Bomb collision early-fuse predicate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Bomb collision early-fuse predicate
    */

int __fastcall HELPER_Bomb_ContactMode(int param_1)

{
  int iVar1;
  uint3 uVar2;
  
  iVar1 = *(int *)(param_1 + 0x2c);
  uVar2 = (uint3)((uint)iVar1 >> 8);
  if ((iVar1 != 0x13) && (iVar1 != 0x14)) {
    return (uint)uVar2 << 8;
  }
  return CONCAT31(uVar2,1);
}

