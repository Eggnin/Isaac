/* Local J460 decompiler output.
 * VA: 0x006acb00
 * Entry: 006acb00
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Bomb vtable slot +0x28
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Bomb vtable slot +0x28 */

void __fastcall HELPER_Entity_Remove(int param_1)

{
  undefined4 *puVar1;
  
  *(undefined *)(param_1 + 0x172) = 0;
  if (*(char *)(param_1 + 0x173) == '\0') {
    *(undefined *)(param_1 + 0x173) = 1;
  }
  FUN_00866060(param_1);
  puVar1 = *(undefined4 **)(param_1 + 0x408);
  if (puVar1 != (undefined4 *)0x0) {
    luaL_unref(*puVar1,0xfff0b9d8,puVar1[1]);
    FUN_00aef15c(puVar1,8);
    *(undefined4 *)(param_1 + 0x408) = 0;
  }
  return;
}

