/* Local J460 decompiler output.
 * VA: 0x0040a1b0
 * Entry: 0040a1b0
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: Animation Update loop branch
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; Animation Update loop branch */

void __fastcall HELPER_AnimationState_Loop(int param_1)

{
  int iVar1;
  uint uVar2;
  
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 *)(param_1 + 0x1c) = 0;
  HELPER_AnimationState_TriggerEvents();
  iVar1 = *(int *)(param_1 + 4);
  uVar2 = 0;
  if (*(int *)(iVar1 + 0x1c) != 0) {
    do {
      *(undefined4 *)(*(int *)(param_1 + 8) + uVar2 * 4) = 0;
      uVar2 = uVar2 + 1;
      iVar1 = *(int *)(param_1 + 4);
    } while (uVar2 < *(uint *)(iVar1 + 0x1c));
  }
  uVar2 = 0;
  if (*(int *)(iVar1 + 0x24) != 0) {
    do {
      *(undefined4 *)(*(int *)(param_1 + 0xc) + uVar2 * 4) = 0;
      uVar2 = uVar2 + 1;
    } while (uVar2 < *(uint *)(*(int *)(param_1 + 4) + 0x24));
  }
  return;
}

