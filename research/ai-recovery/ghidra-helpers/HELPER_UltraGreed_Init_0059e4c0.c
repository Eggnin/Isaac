/* Local J460 decompiler output.
 * VA: 0x0059e4c0
 * Entry: 0059e4c0
 * Dispatcher: 0x006c2990
 * Types: 406
 * Identities: ultra_greed.init
 * Evidence: Called from Ultra Greed AI
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=406; identities=ultra_greed.init; Called from Ultra
   Greed AI */

void __thiscall HELPER_UltraGreed_Init(int param_1_00,int param_1)

{
  int iVar1;
  undefined local_64 [12];
  float local_58;
  float local_50;
  undefined4 local_4c;
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined local_28 [16];
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  if (param_1 != 0) {
    do {
      iVar1 = FUN_006eef60();
      local_3c = ((float)((double)iVar1 + (double)(&DAT_00bacb00)[-(iVar1 >> 0x1f)]) * DAT_00ba9ff4
                 - DAT_00baa454) * DAT_00baaa84;
      iVar1 = FUN_006eef60();
      local_48 = ((float)((double)iVar1 + (double)(&DAT_00bacb00)[-(iVar1 >> 0x1f)]) * DAT_00ba9ff4
                 - DAT_00baa2d0) * _DAT_00baaa08;
      local_44 = local_3c;
      local_40 = local_48;
      FUN_0040b590(local_64,local_48,local_3c,DAT_00c7b640,DAT_00c7b644,0x3f666666,0xffffffff);
      if (DAT_00baa454 <= local_58) {
        local_38 = _DAT_00bac7b0;
        uStack_34 = _UNK_00bac7b4;
        uStack_30 = _UNK_00bac7b8;
        uStack_2c = _UNK_00bac7bc;
        local_18 = 0;
        local_28 = ZEXT816(0);
        local_14 = 0;
        local_50 = local_40 + *(float *)(param_1_00 + 0x33c);
        local_10 = 0;
        local_4c = *(undefined4 *)(param_1_00 + 0x340);
        FUN_00703330(&local_50,0x5f,7,0x41400000,&local_38,local_3c,0);
      }
      param_1 = param_1 + -1;
    } while (param_1 != 0);
  }
  FUN_00aef12b();
  return;
}

