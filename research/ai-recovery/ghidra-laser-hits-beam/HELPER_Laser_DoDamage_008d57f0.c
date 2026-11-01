/* Local J460 decompiler output.
 * VA: 0x008d57f0
 * Entry: 008d57f0
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: SDK DoDamage signature matched original J460
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; SDK DoDamage signature matched
   original J460 */

void __thiscall HELPER_Laser_DoDamage(int param_1_00,float *param_1)

{
  code *pcVar1;
  float *pfVar2;
  undefined *puVar3;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined local_60 [20];
  undefined4 local_4c;
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  if (*(int *)(param_1_00 + 0x60) != 0) {
    FUN_00417870(*(undefined4 *)(DAT_00c71678 + 0x24a20));
    if (*(int *)(param_1_00 + 0x338) == 0) {
      pfVar2 = (float *)0x0;
      uVar4 = extraout_ECX;
    }
    else {
      pfVar2 = (float *)FUN_0040ace0("PocketTitle");
      uVar4 = extraout_ECX_00;
    }
    local_40 = *pfVar2 + *param_1;
    local_3c = pfVar2[1] + param_1[1];
    FUN_008d5da0(*(undefined4 *)(param_1_00 + 0x60),param_1_00 + 100,&local_40,uVar4);
    local_4c = *(undefined4 *)(param_1_00 + 0x180);
    local_3c = *(float *)(param_1_00 + 0x17c);
    if (*(int *)(param_1_00 + 0x338) == 0) {
      pfVar2 = (float *)0x0;
    }
    else {
      pfVar2 = (float *)FUN_0040ace0("PocketDesc");
    }
    local_48 = *pfVar2 + *param_1;
    local_44 = pfVar2[1] + param_1[1];
    uVar4 = local_3c;
    FUN_008d5f70(*(undefined4 *)(param_1_00 + 0x60),&local_48,0x78,local_3c,local_4c);
    if (*(int *)(param_1_00 + 0x14) == 3) {
      puVar3 = &DAT_00c79118;
      if ((DAT_00c7911c & 1) == 0) {
        puVar3 = DAT_00c379b8;
      }
      uVar5 = 0x8d58f8;
      DAT_00c379b8 = puVar3;
      FUN_00407170();
      FUN_0040c550((int **)(param_1_00 + 0x640));
      FUN_00683060(1,uVar4,uVar5);
      pcVar1 = *(code **)(**(int **)(param_1_00 + 0x640) + 0x20);
      FUN_00a0f550(0xffffffff);
      if (*(int *)(param_1_00 + 0x338) == 0) {
        pfVar2 = (float *)0x0;
      }
      else {
        pfVar2 = (float *)FUN_0040ace0("PocketTitle");
      }
      local_48 = *param_1 + *pfVar2 + DAT_00ba9fe4;
      local_44 = pfVar2[1] + param_1[1] + DAT_00baa6fc;
      (*pcVar1)(&local_48,local_60);
    }
  }
  FUN_00aef12b();
  return;
}

