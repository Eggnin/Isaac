/* Local J460 decompiler output.
 * VA: 0x00707370
 * Entry: 00707370
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: SMART alternate target branch
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; SMART alternate target branch */

int __fastcall HELPER_FriendlyProjectileHoming(float *param_1_00,int *param_2,code *param_1)

{
  char cVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  bool bVar7;
  float10 fVar8;
  float in_XMM1_Da;
  float fVar9;
  float fVar10;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  uint local_40;
  int local_3c;
  float local_38;
  int local_30;
  int local_28;
  uint local_20;
  float local_1c;
  float *local_18;
  int local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 uStack_8;
  
  uStack_8 = 0xffffffff;
  puStack_c = &LAB_00afc4c0;
  local_10 = ExceptionList;
  uVar2 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  local_1c = in_XMM1_Da * in_XMM1_Da;
  local_14 = 0;
  local_20 = 0;
  local_30 = *(int *)(DAT_00c71678 + 0x18300);
  iVar5 = 0;
  local_18 = param_1_00;
  if (*(int *)(local_30 + 0x1264) != 0) {
    do {
      iVar5 = *(int *)(*(int *)(local_30 + 0x125c) + local_20 * 4);
      if (((*(int *)(iVar5 + 0x28) == 1) && (param_2 != (int *)0x0)) &&
         (cVar1 = FUN_00417430(0x20000000,0), cVar1 != '\0')) {
        local_5c = *(undefined4 *)(iVar5 + 0x2c);
        local_50 = *(undefined4 *)(iVar5 + 0x33c);
        local_4c = *(undefined4 *)(iVar5 + 0x340);
        local_58 = *(undefined4 *)(iVar5 + 0x34);
        local_54 = *(undefined4 *)(iVar5 + 0x38);
        local_48 = *(undefined4 *)(iVar5 + 0x360);
        local_44 = *(undefined4 *)(iVar5 + 0x364);
        local_60 = 1;
        if ((*(uint *)(iVar5 + 0x168) & 0x20000000) == 0) {
          uVar4 = 0;
        }
        else {
          uVar4 = 2;
        }
        if ((*(uint *)(iVar5 + 0x16c) & 0x400000) == 0) {
          uVar3 = 0;
        }
        else {
          uVar3 = 4;
        }
        local_40 = uVar3 | uVar4 | (uint)((*(uint *)(iVar5 + 0x168) & 0x100) != 0);
        local_3c = iVar5;
        cVar1 = FUN_006acd10(&local_60);
        if (cVar1 == '\0') goto LAB_007074b5;
LAB_00707698:
        fVar10 = local_1c;
        iVar5 = local_14;
      }
      else {
LAB_007074b5:
        if (*(int *)(DAT_00c71678 + 0x26614) < 2) {
LAB_007074d7:
          if ((param_2 != (int *)0x0) &&
             (cVar1 = (**(code **)(*param_2 + 0x50))(iVar5,uVar2), cVar1 == '\0'))
          goto LAB_00707698;
        }
        else if (param_2 != (int *)0x0) {
          cVar1 = FUN_006a8fa0(iVar5);
          if (cVar1 != '\0') goto LAB_00707698;
          goto LAB_007074d7;
        }
        if (*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(iVar5 + 0x328) < 2) goto LAB_00707698;
        local_28 = *(int *)(DAT_00c71678 + 0x26614);
        if ((local_28 < 2) || (*(int *)(iVar5 + 0x28) != 1)) {
          iVar6 = *(int *)(iVar5 + 0x28);
          if (0x3dd < iVar6 - 10U) goto LAB_00707698;
        }
        else {
          iVar6 = 1;
        }
        if (((((*(int *)(iVar5 + 0x188) == 1) || (*(int *)(iVar5 + 0x188) == 0)) ||
             (*(char *)(iVar5 + 0x3b0) != '\0')) || (*(char *)(iVar5 + 0x173) != '\0')) ||
           (((cVar1 = FUN_00417430(0x10,0), cVar1 != '\0' && (iVar6 != 0x322)) && (iVar6 != 0x362)))
           ) goto LAB_00707698;
        if ((local_28 < 2) || (iVar6 != 1)) {
          if ((iVar6 - 10U < 0x3de) && (((iVar6 != 0x21 && (iVar6 != 0x11)) && (iVar6 != 0x124)))) {
            if (iVar6 == 0x375) {
              bVar7 = *(int *)(iVar5 + 0x2c) == 10;
            }
            else {
              if ((iVar6 == 0x3c0) || (iVar6 == 0x3c5)) goto LAB_00707698;
              bVar7 = iVar6 == 0xf5;
            }
            if (!bVar7) goto LAB_007075f1;
          }
          goto LAB_00707698;
        }
LAB_007075f1:
        uVar4 = *(uint *)(iVar5 + 0x168);
        if (((uVar4 & 0x20000000) != 0) || ((uVar4 & 0x10) != 0)) goto LAB_00707698;
        if (param_1 == (code *)0x0) {
          fVar9 = local_18[1] - *(float *)(iVar5 + 0x340);
          fVar10 = *local_18 - *(float *)(iVar5 + 0x33c);
          fVar10 = fVar9 * fVar9 + fVar10 * fVar10;
          local_28 = *(int *)(iVar5 + 0x16c);
        }
        else {
          fVar8 = (float10)(*param_1)(local_18,param_2,iVar5);
          uVar4 = *(uint *)(iVar5 + 0x168);
          fVar10 = (float)fVar8;
          local_38 = fVar10;
          local_28 = *(int *)(iVar5 + 0x16c);
        }
        if ((uVar4 & 0x100) != 0) {
          fVar10 = fVar10 + DAT_00baac8c;
        }
        if (local_1c <= fVar10) goto LAB_00707698;
      }
      local_14 = iVar5;
      local_1c = fVar10;
      local_20 = local_20 + 1;
      iVar5 = local_14;
    } while (local_20 < *(uint *)(local_30 + 0x1264));
  }
  ExceptionList = local_10;
  return iVar5;
}

