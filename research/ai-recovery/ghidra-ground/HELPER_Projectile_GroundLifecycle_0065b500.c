/* Local J460 decompiler output.
 * VA: 0x0065b500
 * Entry: 0065b500
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.0.0
 * Evidence: Projectile Update tail
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.0.0; Projectile Update tail */

void __fastcall HELPER_Projectile_GroundLifecycle(int param_1)

{
  float fVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  float fVar5;
  
  iVar3 = DAT_00c71678;
  fVar5 = DAT_00baada4;
  fVar1 = *(float *)(param_1 + 0x410);
  if (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 8) == 0x10) {
    *(undefined4 *)(param_1 + 0x350) = 0xc1700000;
    if (fVar5 < fVar1) {
      *(undefined4 *)(param_1 + 0x410) = 0xc0a33333;
    }
    *(undefined4 *)(param_1 + 0x188) = 4;
    if (((*(uint *)(param_1 + 0x438) & 0x40003810 | *(uint *)(param_1 + 0x43c) & 0x400) == 0) ||
       ((*(uint *)(param_1 + 0x438) & 2) != 0)) {
      uVar4 = 4;
    }
    else {
      uVar4 = 0;
    }
    *(undefined4 *)(param_1 + 0x184) = uVar4;
    piVar2 = *(int **)(*(int *)(*(int *)(iVar3 + 0x18300) + 4) + 0x10);
    if (((piVar2 != (int *)0x0) && (piVar2[2] == 0x10)) && (*piVar2 == 0x23)) {
      *(undefined4 *)(param_1 + 0x184) = 0;
    }
  }
  else {
    fVar5 = fVar1;
    if (*(float *)(param_1 + 0x418) <= 0.0 && *(float *)(param_1 + 0x418) != 0.0) {
      fVar5 = fVar1 + _DAT_00baa7fc;
      if (fVar5 <= 0.0) {
        fVar5 = 0.0;
      }
      fVar5 = (fVar1 * DAT_00baa2d0 - DAT_00baa854) + fVar5 * fVar5;
    }
    *(float *)(param_1 + 0x350) = fVar5;
    if (DAT_00baae30 <= fVar1) {
      *(undefined4 *)(param_1 + 0x188) = 4;
      if ((*(uint *)(param_1 + 0x438) & 0x40003810 | *(uint *)(param_1 + 0x43c) & 0x400) == 0) {
        *(undefined4 *)(param_1 + 0x184) = 4;
      }
      else {
        *(undefined4 *)(param_1 + 0x184) = 0;
      }
    }
    else if ((*(uint *)(param_1 + 0x438) & 0x20000) == 0) {
      *(undefined4 *)(param_1 + 0x188) = 0;
    }
  }
  if ((*(uint *)(param_1 + 0x168) & 0x20) != 0) {
    *(undefined4 *)(param_1 + 0x188) = 0;
  }
  return;
}

