/* Local J460 decompiler output.
 * VA: 0x00408c90
 * Entry: 00408c90
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: AdvancePosition trigger bitmask dispatch
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; AdvancePosition trigger bitmask
   dispatch */

void __fastcall HELPER_AnimationState_TriggerEvents(int param_1)

{
  uint uVar1;
  int iVar2;
  float fVar3;
  
  iVar2 = *(int *)(param_1 + 4);
  if (iVar2 == 0) {
    FUN_00a112c0(0x10,"AnimationData is NULL\n");
    iVar2 = *(int *)(param_1 + 4);
  }
  uVar1 = 0;
  if (*(int *)(iVar2 + 0x2c) != 0) {
    do {
      fVar3 = (float)*(int *)(*(int *)(iVar2 + 0x28) + 4 + uVar1 * 8);
      if ((NAN(fVar3) || NAN(*(float *)(param_1 + 0x10))) != (fVar3 == *(float *)(param_1 + 0x10)))
      {
        *(uint *)(param_1 + 0x18) =
             *(uint *)(param_1 + 0x18) | 1 << (*(uint *)(*(int *)(iVar2 + 0x28) + uVar1 * 8) & 0x1f)
        ;
        *(uint *)(param_1 + 0x1c) =
             *(uint *)(param_1 + 0x1c) | 1 << (*(uint *)(*(int *)(iVar2 + 0x28) + uVar1 * 8) & 0x1f)
        ;
      }
      uVar1 = uVar1 + 1;
    } while (uVar1 < *(uint *)(iVar2 + 0x2c));
  }
  return;
}

