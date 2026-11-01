/* Local J460 decompiler output.
 * VA: 0x00408d00
 * Entry: 00408d00
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: SDK signature resolved against original J460
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; SDK signature resolved against
   original J460 */

void __thiscall HELPER_AnimationState_AdvancePosition(int param_1_00,int param_1)

{
  int iVar1;
  uint uVar2;
  float fVar3;
  float fVar4;
  double dVar5;
  
  fVar4 = *(float *)(param_1_00 + 0x10);
  dVar5 = floor((double)fVar4);
  if (param_1 < (int)dVar5) {
    FUN_00a112c0(0x10,"Animation::AdvancePosition cannot go backward (new: %d, cur: %d)\n",param_1,
                 (int)dVar5);
    fVar4 = *(float *)(param_1_00 + 0x10);
  }
  fVar3 = (float)param_1;
  *(undefined4 *)(param_1_00 + 0x18) = 0;
  if (fVar4 < fVar3) {
    do {
      dVar5 = floor((double)*(float *)(param_1_00 + 0x10));
      *(float *)(param_1_00 + 0x10) = (float)dVar5 + DAT_00baa454;
      FUN_00408c90();
    } while (*(float *)(param_1_00 + 0x10) <= fVar3 && fVar3 != *(float *)(param_1_00 + 0x10));
  }
  iVar1 = *(int *)(param_1_00 + 4);
  uVar2 = 0;
  if (*(int *)(iVar1 + 0x1c) != 0) {
    do {
      FUN_00408b90();
      iVar1 = *(int *)(param_1_00 + 4);
      uVar2 = uVar2 + 1;
    } while (uVar2 < *(uint *)(iVar1 + 0x1c));
  }
  uVar2 = 0;
  if (*(int *)(iVar1 + 0x24) != 0) {
    do {
      FUN_00408c10();
      uVar2 = uVar2 + 1;
    } while (uVar2 < *(uint *)(*(int *)(param_1_00 + 4) + 0x24));
  }
  return;
}

