/* Local J460 decompiler output.
 * VA: 0x00409030
 * Entry: 00409030
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: ANM2 Update calls main and overlay state
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; ANM2 Update calls main and overlay
   state */

void __fastcall HELPER_AnimationState_Update(int *param_1)

{
  float fVar1;
  int iVar2;
  int iVar3;
  float fVar4;
  double dVar5;
  
  iVar2 = param_1[1];
  if ((iVar2 != 0) && (*(char *)(param_1 + 5) != '\0')) {
    fVar1 = (float)param_1[4];
    fVar4 = fVar1 + *(float *)(*param_1 + 0x104);
    dVar5 = floor((double)fVar4);
    iVar3 = *(int *)(iVar2 + 0x30);
    if (iVar3 <= (int)dVar5) {
      if (*(char *)(iVar2 + 0x34) != '\0') {
        FUN_0040a1b0();
        return;
      }
      dVar5 = floor((double)fVar1);
      if ((int)dVar5 <= iVar3 + -1) {
        HELPER_AnimationState_AdvancePosition();
      }
      *(undefined *)(param_1 + 5) = 0;
      return;
    }
    HELPER_AnimationState_AdvancePosition();
    param_1[4] = (int)fVar4;
  }
  return;
}

