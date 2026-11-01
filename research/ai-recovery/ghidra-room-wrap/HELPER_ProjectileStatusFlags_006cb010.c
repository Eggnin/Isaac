/* Local J460 decompiler output.
 * VA: 0x006cb010
 * Entry: 006cb010
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: Projectile finalization native flags
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; Projectile finalization native flags
    */

void __fastcall
HELPER_ProjectileStatusFlags(int *param_1_00,int param_2_00,uint param_1,uint param_2,int param_3)

{
  int *piVar1;
  undefined8 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  undefined4 uVar12;
  float fVar13;
  float in_XMM1_Da;
  int *local_68;
  undefined local_64 [44];
  int local_38;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  int local_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  undefined8 local_18;
  int local_10;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  if ((param_1 & 0x80) != 0) {
    param_1_00[0x10e] = param_1_00[0x10e] | 0x1000000;
    param_1_00[0x10f] = param_1_00[0x10f];
  }
  if ((param_1 & 0x100) != 0) {
    param_1_00[0x10e] = param_1_00[0x10e] | 0x80;
    param_1_00[0x10f] = param_1_00[0x10f];
  }
  if ((param_1 & 0x20000000) != 0) {
    param_1_00[0x10e] = param_1_00[0x10e] | 0x80000000;
    param_1_00[0x10f] = param_1_00[0x10f];
  }
  if (param_3 != 0) {
    if (((1 < *(int *)(DAT_00c71678 + 0x26614)) && (*(int *)(param_3 + 0x28) == 1)) ||
       (*(int *)(param_3 + 0x28) - 10U < 0x3de)) {
      iVar11 = FUN_009be080(0x187,DAT_00c71678 + 0x1baa8,1);
      if (iVar11 != 0) {
        param_1_00[0x10e] = param_1_00[0x10e] | 0x80;
        param_1_00[0x10f] = param_1_00[0x10f];
      }
    }
    if (((param_1_00[0x10e] & 0x80U) != 0) || ((param_2 & 0x100000) != 0)) {
      piVar1 = param_1_00 + 0xef;
      if (param_1_00[0xef] != 0) {
        local_68 = piVar1;
        FUN_004cf210(&local_68);
      }
      *piVar1 = param_3;
      FUN_004cdcf0(piVar1);
    }
  }
  fVar13 = DAT_00baa454;
  if (-1 < param_2_00) {
    if (param_1_00[0xb] == 1) {
      uVar12 = FUN_00505b80(local_64);
      iVar3 = param_1_00[0x6e];
      iVar4 = param_1_00[0x6f];
      iVar5 = param_1_00[0x70];
      iVar6 = param_1_00[0x71];
      iVar11 = param_1_00[0x78];
      iVar7 = param_1_00[0x72];
      iVar8 = param_1_00[0x73];
      iVar9 = param_1_00[0x74];
      iVar10 = param_1_00[0x75];
      uVar2 = *(undefined8 *)(param_1_00 + 0x76);
      FUN_006831c0(uVar12);
      local_38 = iVar3;
      iStack_34 = iVar4;
      iStack_30 = iVar5;
      iStack_2c = iVar6;
      local_28 = iVar7;
      iStack_24 = iVar8;
      iStack_20 = iVar9;
      iStack_1c = iVar10;
      local_18 = uVar2;
      local_10 = iVar11;
      (**(code **)(*param_1_00 + 0x3c))(&local_38,0xffffffff,0xff,0,1);
    }
    fVar13 = DAT_00baa454;
    if (param_2_00 != 0x12) {
      fVar13 = (float)param_1_00[0xe2] + (float)param_1_00[0xe2];
      if (DAT_00baa630 <= fVar13) {
        fVar13 = DAT_00baa630;
      }
      (**(code **)(*param_1_00 + 0x40))(fVar13);
      fVar13 = DAT_00baa4b4;
      if (param_2_00 == 3) {
        param_1_00[0x10e] = param_1_00[0x10e] | 0x200;
      }
      else {
        if (param_2_00 != 8) goto LAB_006cb24a;
        param_1_00[0x10e] = param_1_00[0x10e] | 0x10;
      }
      param_1_00[0x10f] = param_1_00[0x10f];
    }
  }
LAB_006cb24a:
  fVar13 = fVar13 * in_XMM1_Da;
  if ((param_2 & 0x400000) != 0) {
    fVar13 = fVar13 * DAT_00baa3a4;
  }
  if ((NAN(fVar13) || NAN(DAT_00baa454)) == (fVar13 == DAT_00baa454)) {
    param_1_00[0x108] = (int)(fVar13 * (float)param_1_00[0x108]);
  }
  FUN_00aef12b();
  return;
}

