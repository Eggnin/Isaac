/* Local J460 decompiler output.
 * VA: 0x0041a790
 * Entry: 0041a790
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.147.*
 * Evidence: AreaDamage collects entities using XMM3 radius
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.147.*; AreaDamage collects
   entities using XMM3 radius */

int HELPER_Room_QueryRadius(int param_1,float *param_2,uint param_3)

{
  undefined4 uVar1;
  longlong lVar2;
  longlong lVar3;
  int iVar4;
  undefined4 *puVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  int *piVar10;
  int iVar11;
  bool bVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float in_XMM3_Da;
  ulonglong uVar17;
  ulonglong uVar18;
  float local_30;
  float local_2c;
  undefined4 local_28;
  uint local_24;
  uint local_1c;
  float local_18;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  puStack_c = &LAB_00af15be;
  local_10 = ExceptionList;
  ExceptionList = &local_10;
  local_8 = 0;
  local_18 = in_XMM3_Da;
  uVar17 = FUN_00a68490(DAT_00bf93b4 ^ (uint)&stack0xfffffffc);
  iVar4 = (int)local_2c;
  uVar8 = (uint)(uVar17 >> 0x20);
  local_30 = local_18;
  uVar18 = (uVar17 & 0xffffffff) * 0xd7b634db;
  local_28 = (undefined4)uVar18;
  uVar18 = (ulonglong)uVar8 * 0xd7b634db + (uVar18 >> 0x20);
  uVar9 = (uint)(uVar18 >> 0x20);
  uVar6 = (uint)((uVar17 & 0xffffffff) * 0x431bde82 + (uVar18 & 0xffffffff) >> 0x20);
  lVar2 = (ulonglong)uVar8 * 0x431bde82 + (ulonglong)CONCAT14(CARRY4(uVar9,uVar6),uVar9 + uVar6);
  local_24 = (uint)((ulonglong)lVar2 >> 0x20);
  local_2c = local_18;
  local_1c = (uint)lVar2 >> 0x12 | local_24 * 0x4000;
  *(undefined4 *)(iVar4 + 0x7c) = 0;
  iVar11 = iVar4 + 0x70;
  local_24 = local_24 >> 0x12;
  if ((param_3 & 1) != 0) {
    FUN_0041c490(iVar11,param_2,&local_30);
  }
  if ((param_3 & 4) != 0) {
    FUN_0041c490(iVar11,param_2,&local_30);
  }
  if ((param_3 & 8) != 0) {
    FUN_0041c490(iVar11,param_2,&local_30);
  }
  if ((param_3 & 2) != 0) {
    FUN_0041c490(iVar11,param_2,&local_30);
  }
  if ((param_3 & 0x10) != 0) {
    FUN_0041c490(iVar11,param_2,&local_30);
  }
  if ((param_3 & 0x20) != 0) {
    uVar6 = 0;
    piVar10 = (int *)(DAT_00c71678 + 0x1baa8);
    if (*(int *)(DAT_00c71678 + 0x1baac) - *piVar10 >> 2 != 0) {
      do {
        iVar11 = piVar10[1];
        if (iVar11 - *piVar10 >> 2 == 0) {
          FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
          iVar11 = piVar10[1];
        }
        puVar5 = (undefined4 *)*piVar10;
        if (uVar6 < (uint)(iVar11 - (int)puVar5 >> 2)) {
          puVar5 = puVar5 + uVar6;
        }
        iVar11 = *(int *)(iVar4 + 0x7c);
        uVar1 = *puVar5;
        if (*(uint *)(iVar4 + 0x78) < iVar11 + 1U) {
          FUN_00a112c0(0x10,"EL: not enough space for push_back\n");
          iVar11 = *(int *)(iVar4 + 0x7c);
        }
        uVar6 = uVar6 + 1;
        *(undefined4 *)(*(int *)(iVar4 + 0x74) + iVar11 * 4) = uVar1;
        iVar11 = DAT_00c71678;
        *(int *)(iVar4 + 0x7c) = *(int *)(iVar4 + 0x7c) + 1;
        piVar10 = (int *)(iVar11 + 0x1baa8);
      } while (uVar6 < (uint)(*(int *)(iVar11 + 0x1baac) - *piVar10 >> 2));
    }
  }
  iVar11 = 0;
  uVar6 = 0;
  if (*(int *)(iVar4 + 0x7c) != 0) {
    do {
      iVar7 = *(int *)(*(int *)(iVar4 + 0x74) + uVar6 * 4);
      fVar16 = local_18 + *(float *)(iVar7 + 0x370);
      if (((*(uint *)(iVar7 + 0x16c) & 0x4000) == 0) &&
         (fVar14 = *(float *)(iVar7 + 0x340) - param_2[1],
         fVar13 = *(float *)(iVar7 + 0x33c) - *param_2,
         fVar14 * fVar14 + fVar13 * fVar13 < fVar16 * fVar16)) {
        *(int *)(*(int *)(iVar4 + 0x74) + iVar11 * 4) = iVar7;
        iVar11 = iVar11 + 1;
      }
      uVar6 = uVar6 + 1;
    } while (uVar6 < *(uint *)(iVar4 + 0x7c));
  }
  *(int *)(iVar4 + 0x7c) = iVar11;
  if (((param_3 & 0x40) != 0) && (uVar6 = 0, fVar16 = local_18, *(int *)(iVar4 + 0x6c) != 0)) {
    do {
      iVar11 = *(int *)(*(int *)(iVar4 + 100) + uVar6 * 4);
      fVar13 = fVar16 + *(float *)(iVar11 + 0x370);
      if (((*(uint *)(iVar11 + 0x16c) & 0x4000) == 0) &&
         (fVar15 = *(float *)(iVar11 + 0x340) - param_2[1],
         fVar14 = *(float *)(iVar11 + 0x33c) - *param_2,
         fVar15 * fVar15 + fVar14 * fVar14 < fVar13 * fVar13)) {
        iVar7 = *(int *)(iVar4 + 0x7c);
        if (*(uint *)(iVar4 + 0x78) < iVar7 + 1U) {
          FUN_00a112c0(0x10,"EL: not enough space for push_back\n");
          iVar7 = *(int *)(iVar4 + 0x7c);
          fVar16 = local_18;
        }
        *(int *)(*(int *)(iVar4 + 0x74) + iVar7 * 4) = iVar11;
        *(int *)(iVar4 + 0x7c) = *(int *)(iVar4 + 0x7c) + 1;
      }
      uVar6 = uVar6 + 1;
    } while (uVar6 < *(uint *)(iVar4 + 0x6c));
    iVar11 = *(int *)(iVar4 + 0x7c);
  }
  FUN_00417540(iVar4 + 0x80,iVar11);
  local_8 = 0;
  uVar6 = *(uint *)(iVar4 + 0x7c);
  if (*(uint *)(param_1 + 8) < uVar6) {
    FUN_00a112c0(0x10,"EL: not enough space for copy\n");
    uVar6 = *(uint *)(iVar4 + 0x7c);
  }
  memcpy(*(void **)(param_1 + 4),*(void **)(iVar4 + 0x74),uVar6 << 2);
  *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(iVar4 + 0x7c);
  uVar18 = FUN_00a68490();
  uVar8 = (uint)(uVar18 >> 0x20);
  lVar2 = (uVar18 & 0xffffffff) * 0x431bde82;
  lVar3 = (ulonglong)uVar8 * 0xd7b634db + ((uVar18 & 0xffffffff) * 0xd7b634db >> 0x20);
  uVar9 = (uint)((ulonglong)lVar3 >> 0x20);
  uVar6 = (int)((ulonglong)lVar2 >> 0x20) + (uint)CARRY4((uint)lVar2,(uint)lVar3);
  lVar2 = (ulonglong)uVar8 * 0x431bde82 + (ulonglong)CONCAT14(CARRY4(uVar9,uVar6),uVar9 + uVar6);
  uVar9 = (uint)((ulonglong)lVar2 >> 0x20);
  uVar6 = (uint)lVar2 >> 0x12 | uVar9 * 0x4000;
  uVar8 = uVar6 - local_1c;
  bVar12 = CARRY4(DAT_00c79c48,uVar8);
  DAT_00c79c48 = DAT_00c79c48 + uVar8;
  DAT_00c79c4c = DAT_00c79c4c + (((uVar9 >> 0x12) - local_24) - (uint)(uVar6 < local_1c)) +
                 (uint)bVar12;
  ExceptionList = local_10;
  return param_1;
}

