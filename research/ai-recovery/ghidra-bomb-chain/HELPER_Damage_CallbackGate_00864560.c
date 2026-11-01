/* Local J460 decompiler output.
 * VA: 0x00864560
 * Entry: 00864560
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: TakeDamage callback acceptance
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; TakeDamage callback acceptance */

bool HELPER_Damage_CallbackGate
               (int param_1,undefined4 param_2,int param_3,undefined4 param_4,undefined4 param_5)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 in_XMM2_Da;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  puStack_c = &LAB_00b042c0;
  local_10 = ExceptionList;
  ExceptionList = &local_10;
  if ((**DAT_00c71690 & 0x800) != 0) {
    local_8 = 0;
    FUN_00874550(&param_2,*(undefined4 *)(param_1 + 0x28),param_1,in_XMM2_Da,param_2,param_3,param_4
                 ,param_5);
    iVar4 = param_3;
    uVar1 = param_2;
    if (param_3 != -1) {
      FUN_006a80f0(param_2);
      iVar2 = lua_type(uVar1,0xffffffff);
      lua_settop(uVar1,0xfffffffe);
      if (iVar2 != 0) {
        FUN_006a80f0(uVar1);
        uVar3 = lua_gettop(uVar1);
        iVar4 = lua_toboolean(uVar1,uVar3);
        lua_settop(uVar1,0xfffffffe);
        luaL_unref(uVar1,0xfff0b9d8,param_3);
        ExceptionList = local_10;
        return iVar4 != 0;
      }
    }
    luaL_unref(uVar1,0xfff0b9d8,iVar4);
  }
  ExceptionList = local_10;
  return true;
}

