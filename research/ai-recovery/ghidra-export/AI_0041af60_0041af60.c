/* Local J460 decompiler output.
 * VA: 0x0041af60
 * Entry: 0041af60
 * Dispatcher: 0x006c2990
 * Types: 93
 * Identities: 93.0.0,93.1.0
 * Evidence: dispatcher=0x006c2990; end=0x0041b4f0; instructions=464
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=93; identities=93.0.0,93.1.0; dispatcher=0x006c2990;
   end=0x0041b4f0; instructions=464 */

undefined * __thiscall
AI_0041af60(int param_1_00,undefined *param_1,int param_2,int param_3,int param_4,char param_5,
           char param_6)

{
  ulonglong uVar1;
  longlong lVar2;
  longlong lVar3;
  void *pvVar4;
  undefined4 uVar5;
  undefined *puVar6;
  uint *puVar7;
  int iVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  int iVar12;
  bool bVar13;
  ulonglong uVar14;
  int local_48;
  int local_44;
  int local_40;
  char local_3c;
  void *local_38;
  uint local_34;
  int local_30;
  char local_2c;
  void *local_28;
  uint local_24;
  undefined4 local_20;
  uint local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af1635;
  local_10 = ExceptionList;
  if ((param_2 == 3) && (param_3 == 0xce)) {
    if (param_4 == -1) {
      *(undefined4 *)(param_1 + 4) = *(undefined4 *)(param_1_00 + 0x94);
      *(undefined4 *)(param_1 + 8) = *(undefined4 *)(param_1_00 + 0x98);
      uVar5 = *(undefined4 *)(param_1_00 + 0x9c);
      *param_1 = 1;
      *(undefined4 *)(param_1 + 0xc) = uVar5;
      return param_1;
    }
    uVar5 = 0;
    ExceptionList = &local_10;
    *(undefined4 *)(param_1_00 + 0x7c) = 0;
    uVar11 = 0;
    if (*(int *)(param_1_00 + 0x9c) != 0) {
      do {
        iVar12 = *(int *)(*(int *)(param_1_00 + 0x94) + uVar11 * 4);
        if (*(int *)(iVar12 + 0x30) == param_4) {
          iVar8 = *(int *)(param_1_00 + 0x7c);
          if (*(uint *)(param_1_00 + 0x78) < iVar8 + 1U) {
            FUN_00a112c0(0x10,"EL: not enough space for push_back\n");
            iVar8 = *(int *)(param_1_00 + 0x7c);
          }
          *(int *)(*(int *)(param_1_00 + 0x74) + iVar8 * 4) = iVar12;
          *(int *)(param_1_00 + 0x7c) = *(int *)(param_1_00 + 0x7c) + 1;
        }
        uVar5 = *(undefined4 *)(param_1_00 + 0x7c);
        uVar11 = uVar11 + 1;
      } while (uVar11 < *(uint *)(param_1_00 + 0x9c));
    }
    FUN_00417540(param_1_00 + 0x80,uVar5);
    local_8 = 0;
    uVar11 = *(uint *)(param_1_00 + 0x7c);
    if (local_34 < uVar11) {
      FUN_00a112c0(0x10,"EL: not enough space for copy\n");
      uVar11 = *(uint *)(param_1_00 + 0x7c);
    }
    memcpy(local_38,*(void **)(param_1_00 + 0x74),uVar11 << 2);
    uVar5 = *(undefined4 *)(param_1_00 + 0x7c);
    *param_1 = 1;
    *(void **)(param_1 + 4) = local_38;
    *(uint *)(param_1 + 8) = local_34;
    *(undefined4 *)(param_1 + 0xc) = uVar5;
    if (local_3c == '\0') {
      local_8 = 1;
      FUN_00a648b0(0,0);
    }
  }
  else {
    ExceptionList = &local_10;
    uVar14 = FUN_00a68490(DAT_00bf93b4 ^ (uint)&stack0xfffffffc);
    uVar9 = (uint)(uVar14 >> 0x20);
    uVar1 = (uVar14 & 0xffffffff) * 0xd7b634db;
    local_34 = (uint)uVar1;
    lVar2 = (uVar14 & 0xffffffff) * 0x431bde82;
    local_30 = (int)((ulonglong)lVar2 >> 0x20);
    lVar3 = (ulonglong)uVar9 * 0xd7b634db;
    local_20 = (undefined4)((ulonglong)lVar3 >> 0x20);
    uVar1 = lVar3 + (uVar1 >> 0x20);
    uVar10 = (uint)(uVar1 >> 0x20);
    lVar2 = lVar2 + (uVar1 & 0xffffffff);
    local_24 = (uint)lVar2;
    uVar11 = (uint)((ulonglong)lVar2 >> 0x20);
    lVar2 = (ulonglong)uVar9 * 0x431bde82 +
            (ulonglong)CONCAT14(CARRY4(uVar10,uVar11),uVar10 + uVar11);
    local_18 = (uint)((ulonglong)lVar2 >> 0x20);
    local_44 = param_3;
    local_14 = (uint)lVar2 >> 0x12 | local_18 * 0x4000;
    local_18 = local_18 >> 0x12;
    local_48 = param_2;
    local_40 = param_4;
    if (param_5 != '\0') {
      FUN_0041d390(&local_38,&local_48);
      if (((*(char *)(local_30 + 0xd) != '\0') || (param_2 < *(int *)(local_30 + 0x10))) ||
         ((iVar12 = local_30, param_2 <= *(int *)(local_30 + 0x10) &&
          ((param_3 < *(int *)(local_30 + 0x14) ||
           ((param_3 <= *(int *)(local_30 + 0x14) && (param_4 < *(int *)(local_30 + 0x18))))))))) {
        iVar12 = *(int *)(param_1_00 + 0xe0);
      }
      if (iVar12 != *(int *)(param_1_00 + 0xe0)) {
        *(undefined4 *)(param_1 + 4) = *(undefined4 *)(iVar12 + 0x20);
        *(undefined4 *)(param_1 + 8) = *(undefined4 *)(iVar12 + 0x24);
        uVar5 = *(undefined4 *)(iVar12 + 0x28);
        *param_1 = 1;
        *(undefined4 *)(param_1 + 0xc) = uVar5;
        ExceptionList = local_10;
        return param_1;
      }
    }
    iVar12 = *(int *)(param_1_00 + 0x4c);
    *(undefined4 *)(param_1_00 + 0x7c) = 0;
    if (param_3 < 0) {
      uVar11 = 0;
      if (param_4 < 0) {
        if (iVar12 != 0) {
          do {
            iVar12 = *(int *)(*(int *)(param_1_00 + 0x44) + uVar11 * 4);
            if (((*(int *)(iVar12 + 0x28) == param_2) && ((*(uint *)(iVar12 + 0x16c) & 0x4000) == 0)
                ) && ((param_6 == '\0' || ((*(uint *)(iVar12 + 0x168) & 0x20000000) == 0)))) {
              iVar8 = *(int *)(param_1_00 + 0x7c);
              if (*(uint *)(param_1_00 + 0x78) < iVar8 + 1U) {
                FUN_00a112c0(0x10,"EL: not enough space for push_back\n");
                iVar8 = *(int *)(param_1_00 + 0x7c);
              }
              *(int *)(*(int *)(param_1_00 + 0x74) + iVar8 * 4) = iVar12;
              *(int *)(param_1_00 + 0x7c) = *(int *)(param_1_00 + 0x7c) + 1;
            }
            uVar11 = uVar11 + 1;
          } while (uVar11 < *(uint *)(param_1_00 + 0x4c));
        }
      }
      else if (iVar12 != 0) {
        do {
          iVar12 = *(int *)(*(int *)(param_1_00 + 0x44) + uVar11 * 4);
          if ((((*(int *)(iVar12 + 0x28) == param_2) && (*(int *)(iVar12 + 0x30) == param_4)) &&
              ((*(uint *)(iVar12 + 0x16c) & 0x4000) == 0)) &&
             ((param_6 == '\0' || ((*(uint *)(iVar12 + 0x168) & 0x20000000) == 0)))) {
            iVar8 = *(int *)(param_1_00 + 0x7c);
            if (*(uint *)(param_1_00 + 0x78) < iVar8 + 1U) {
              FUN_00a112c0(0x10,"EL: not enough space for push_back\n");
              iVar8 = *(int *)(param_1_00 + 0x7c);
            }
            *(int *)(*(int *)(param_1_00 + 0x74) + iVar8 * 4) = iVar12;
            *(int *)(param_1_00 + 0x7c) = *(int *)(param_1_00 + 0x7c) + 1;
          }
          uVar11 = uVar11 + 1;
        } while (uVar11 < *(uint *)(param_1_00 + 0x4c));
      }
    }
    else if (param_4 < 0) {
      uVar11 = 0;
      if (iVar12 != 0) {
        do {
          iVar12 = *(int *)(*(int *)(param_1_00 + 0x44) + uVar11 * 4);
          if (((*(int *)(iVar12 + 0x28) == param_2) && (*(int *)(iVar12 + 0x2c) == param_3)) &&
             (((*(uint *)(iVar12 + 0x16c) & 0x4000) == 0 &&
              ((param_6 == '\0' || ((*(uint *)(iVar12 + 0x168) & 0x20000000) == 0)))))) {
            iVar8 = *(int *)(param_1_00 + 0x7c);
            if (*(uint *)(param_1_00 + 0x78) < iVar8 + 1U) {
              FUN_00a112c0(0x10,"EL: not enough space for push_back\n");
              iVar8 = *(int *)(param_1_00 + 0x7c);
            }
            *(int *)(*(int *)(param_1_00 + 0x74) + iVar8 * 4) = iVar12;
            *(int *)(param_1_00 + 0x7c) = *(int *)(param_1_00 + 0x7c) + 1;
          }
          uVar11 = uVar11 + 1;
        } while (uVar11 < *(uint *)(param_1_00 + 0x4c));
      }
    }
    else {
      uVar11 = 0;
      if (iVar12 != 0) {
        do {
          iVar12 = *(int *)(*(int *)(param_1_00 + 0x44) + uVar11 * 4);
          if (((((*(int *)(iVar12 + 0x28) == param_2) && (*(int *)(iVar12 + 0x2c) == param_3)) &&
               (*(int *)(iVar12 + 0x30) == param_4)) && ((*(uint *)(iVar12 + 0x16c) & 0x4000) == 0))
             && ((param_6 == '\0' || ((*(uint *)(iVar12 + 0x168) & 0x20000000) == 0)))) {
            iVar8 = *(int *)(param_1_00 + 0x7c);
            if (*(uint *)(param_1_00 + 0x78) < iVar8 + 1U) {
              FUN_00a112c0(0x10,"EL: not enough space for push_back\n");
              iVar8 = *(int *)(param_1_00 + 0x7c);
            }
            *(int *)(*(int *)(param_1_00 + 0x74) + iVar8 * 4) = iVar12;
            *(int *)(param_1_00 + 0x7c) = *(int *)(param_1_00 + 0x7c) + 1;
          }
          uVar11 = uVar11 + 1;
        } while (uVar11 < *(uint *)(param_1_00 + 0x4c));
      }
    }
    FUN_00417540(param_1_00 + 0x80,*(undefined4 *)(param_1_00 + 0x7c));
    local_8 = 2;
    uVar11 = *(uint *)(param_1_00 + 0x7c);
    if (local_24 < uVar11) {
      FUN_00a112c0(0x10,"EL: not enough space for copy\n");
      uVar11 = *(uint *)(param_1_00 + 0x7c);
    }
    pvVar4 = local_28;
    memcpy(local_28,*(void **)(param_1_00 + 0x74),uVar11 << 2);
    uVar5 = *(undefined4 *)(param_1_00 + 0x7c);
    local_20 = uVar5;
    if (param_5 != '\0') {
      puVar6 = (undefined *)FUN_0041c6f0(&local_48);
      *puVar6 = 1;
      *(void **)(puVar6 + 4) = pvVar4;
      *(uint *)(puVar6 + 8) = local_24;
      *(undefined4 *)(puVar6 + 0xc) = uVar5;
    }
    uVar14 = FUN_00a68490();
    uVar9 = (uint)(uVar14 >> 0x20);
    uVar1 = (ulonglong)uVar9 * 0xd7b634db + ((uVar14 & 0xffffffff) * 0xd7b634db >> 0x20);
    uVar10 = (uint)(uVar1 >> 0x20);
    lVar2 = (uVar14 & 0xffffffff) * 0x431bde82 + (uVar1 & 0xffffffff);
    local_34 = (uint)lVar2;
    uVar11 = (uint)((ulonglong)lVar2 >> 0x20);
    *param_1 = 1;
    lVar2 = (ulonglong)uVar9 * 0x431bde82 +
            (ulonglong)CONCAT14(CARRY4(uVar10,uVar11),uVar10 + uVar11);
    uVar10 = (uint)((ulonglong)lVar2 >> 0x20);
    uVar11 = (uint)lVar2 >> 0x12 | uVar10 * 0x4000;
    *(uint *)(param_1 + 8) = local_24;
    uVar9 = uVar11 - local_14;
    *(undefined4 *)(param_1 + 0xc) = uVar5;
    bVar13 = CARRY4(DAT_00c79c48,uVar9);
    DAT_00c79c48 = DAT_00c79c48 + uVar9;
    DAT_00c79c4c = DAT_00c79c4c + (((uVar10 >> 0x12) - local_18) - (uint)(uVar11 < local_14)) +
                   (uint)bVar13;
    *(void **)(param_1 + 4) = local_28;
    if (local_2c == '\0') {
      if (DAT_00c7de78 == 0) {
        puVar7 = &DAT_00c7f618;
      }
      else {
        puVar7 = (uint *)(DAT_00c7de78 + 0x30);
      }
      if (local_28 != (void *)0x0) {
        uVar9 = *(uint *)((int)local_28 + -4);
        uVar11 = *puVar7;
        *puVar7 = *puVar7 - uVar9;
        puVar7[1] = puVar7[1] - (uint)(uVar11 < uVar9);
        free((uint *)((int)local_28 + -4));
      }
    }
  }
  ExceptionList = local_10;
  return param_1;
}

