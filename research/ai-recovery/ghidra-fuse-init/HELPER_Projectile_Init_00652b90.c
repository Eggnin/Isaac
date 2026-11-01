/* Local J460 decompiler output.
 * VA: 0x00652b90
 * Entry: 00652b90
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: Projectile vtable Init
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; Projectile vtable Init */

void __thiscall
HELPER_Projectile_Init
          (int param_1_00,undefined4 param_1,undefined4 param_2,undefined4 param_3,
          undefined4 param_4)

{
  double dVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  float fVar5;
  
  FUN_006a93a0(param_1,param_2,param_3,param_4);
  *(undefined4 *)(param_1_00 + 0x184) = 4;
  if (*(int *)(param_1_00 + 0x330) != 0) {
    FUN_0040bd50(*(int *)(param_1_00 + 0x330) + 0x74,1);
  }
  *(undefined4 *)(param_1_00 + 0x410) = 0xc1b80000;
  iVar3 = FUN_006eef60();
  *(undefined4 *)(param_1_00 + 0x418) = 0;
  *(undefined4 *)(param_1_00 + 0x420) = 0x3f800000;
  *(undefined4 *)(param_1_00 + 0x438) = 0;
  *(undefined4 *)(param_1_00 + 0x43c) = 0;
  *(undefined4 *)(param_1_00 + 0x424) = 0x3f800000;
  *(undefined4 *)(param_1_00 + 0x428) = 0x3c75c28f;
  *(undefined4 *)(param_1_00 + 0x42c) = 0x3f8147ae;
  dVar1 = (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)];
  *(undefined4 *)(param_1_00 + 0x430) = 0;
  *(undefined4 *)(param_1_00 + 0x444) = 0xffffffff;
  *(undefined4 *)(param_1_00 + 0x388) = 0x3f800000;
  *(undefined *)(param_1_00 + 0x440) = 0;
  *(undefined4 *)(param_1_00 + 0x450) = 0;
  *(undefined4 *)(param_1_00 + 0x454) = 0;
  *(undefined4 *)(param_1_00 + 0x458) = 0;
  *(undefined4 *)(param_1_00 + 0x45c) = 0x1e;
  *(undefined4 *)(param_1_00 + 900) = 0;
  *(float *)(param_1_00 + 0x414) =
       ((float)((double)iVar3 + dVar1) * DAT_00ba9ff4 - DAT_00baa2d0) * DAT_00baa198;
  *(undefined4 *)(param_1_00 + 0x460) = DAT_00c7b640;
  *(undefined4 *)(param_1_00 + 0x464) = DAT_00c7b644;
  *(undefined4 *)(param_1_00 + 0x470) = 0;
  uVar2 = DAT_00c798e4;
  if (*(int *)(param_1_00 + 0x2c) == 2) {
    iVar3 = FUN_0040b220(0);
    uVar4 = 1;
    if ((uVar2 & 4) == 0) {
      uVar4 = 6;
    }
    *(undefined4 *)(iVar3 + 0x78) = 0;
    *(undefined4 *)(iVar3 + 0x7c) = uVar4;
    *(undefined4 *)(iVar3 + 0x80) = 1;
    *(undefined4 *)(iVar3 + 0x84) = 1;
    *(undefined4 *)(iVar3 + 0x88) = 1;
    if (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 8) == 0x10) {
      iVar3 = FUN_0040b220(0);
      *(undefined4 *)(iVar3 + 0x40) = 0;
      *(undefined4 *)(iVar3 + 0x44) = 0x41000000;
    }
  }
  if ((*(int *)(param_1_00 + 0x3c8) != 0) &&
     ((*(uint *)(*(int *)(param_1_00 + 0x3c8) + 0x16c) & 0x400000) != 0)) {
    fVar5 = *(float *)(param_1_00 + 0x360) * DAT_00baa3a4;
    *(uint *)(param_1_00 + 0x16c) = *(uint *)(param_1_00 + 0x16c) | 0x400000;
    *(undefined4 *)(param_1_00 + 0x168) = *(undefined4 *)(param_1_00 + 0x168);
    *(float *)(param_1_00 + 0x360) = fVar5;
    *(float *)(param_1_00 + 0x364) = *(float *)(param_1_00 + 0x364) * DAT_00baa3a4;
  }
  *(undefined4 *)(param_1_00 + 0x468) = DAT_00c7b640;
  *(undefined4 *)(param_1_00 + 0x46c) = DAT_00c7b644;
  FUN_008624b0(param_1_00);
  return;
}

