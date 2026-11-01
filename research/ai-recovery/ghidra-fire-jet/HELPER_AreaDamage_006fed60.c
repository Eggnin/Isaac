/* Local J460 decompiler output.
 * VA: 0x006fed60
 * Entry: 006fed60
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.147.*
 * Evidence: FireJet dispatch with radius 20 and ownership flag
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.147.*; FireJet dispatch with
   radius 20 and ownership flag */

void HELPER_AreaDamage(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,
                      char param_5,undefined4 param_6,float param_7,undefined4 param_8,
                      undefined4 param_9,undefined4 param_10,undefined4 param_11)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  bool bVar4;
  char cVar5;
  uint uVar6;
  uint *puVar7;
  undefined4 uVar8;
  float in_XMM2_Da;
  undefined local_78 [56];
  char local_40 [4];
  int local_3c;
  uint local_34;
  uint local_2c;
  float local_28;
  char local_22;
  char local_21;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00afc22d;
  local_1c = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_28 = in_XMM2_Da;
  FUN_00431310(param_2);
  if ((param_2 == 0) ||
     ((*(int *)(param_2 + 0x28) != 1 &&
      ((*(int *)(param_2 + 0x28) != 3 || ((*(uint *)(param_2 + 0x168) & 0x100) != 0)))))) {
    bVar4 = false;
    if (param_2 != 0) {
      if ((*(uint *)(param_2 + 0x168) & 0x20000000) != 0) {
        bVar4 = false;
        local_21 = '\0';
        goto LAB_006fee08;
      }
      bVar4 = false;
    }
LAB_006fee00:
    local_21 = '\x01';
    if (param_2 != 0) goto LAB_006fee08;
LAB_006fee31:
    local_22 = '\0';
    if (param_5 == '\0') goto LAB_006fee3d;
  }
  else {
    bVar4 = true;
    if (param_5 != '\0') goto LAB_006fee00;
    local_21 = param_5;
LAB_006fee08:
    if (!bVar4) {
      local_2c = *(undefined4 *)(param_2 + 0x16c);
      if (((*(uint *)(param_2 + 0x168) & 0x100) == 0) &&
         ((*(uint *)(param_2 + 0x168) & 0x20000100) == 0)) goto LAB_006fee31;
    }
  }
  local_22 = '\x01';
LAB_006fee3d:
  FUN_0041a790(local_40,param_1,0xffffffff);
  local_14 = 0;
  local_2c = 0;
  if (local_34 != 0) {
    do {
      piVar1 = *(int **)(local_3c + local_2c * 4);
      if (piVar1[0x62] != 0) {
        iVar2 = piVar1[10];
        if (((iVar2 == 1) || (iVar2 == 3)) && (local_21 != '\0')) {
          puVar7 = (uint *)FUN_00417170(&DAT_00c34bd0);
          if (((((*puVar7 | puVar7[1]) == 0) && ((puVar7[2] | puVar7[3]) == 0)) || (iVar2 != 1)) ||
             (cVar5 = FUN_007c3320(), cVar5 == '\0')) {
            uVar8 = DAT_00baa454;
            if (param_7 <= local_28) {
              uVar8 = DAT_00baa630;
            }
            (**(code **)(*piVar1 + 0x20))(uVar8,param_3,param_4,local_78,0x1e);
          }
        }
        else if ((((1 < *(int *)(DAT_00c71678 + 0x26614)) && (iVar2 == 1)) || (iVar2 - 10U < 0x3de))
                && ((local_22 != '\0' && (iVar2 != 1)))) {
          (**(code **)(*piVar1 + 0x20))(local_28,param_3,param_4,local_78,0x1e,uVar6);
          FUN_0067af60(param_8,param_9,param_10,param_11,param_2,0x40600000);
        }
      }
      local_2c = local_2c + 1;
    } while (local_2c < local_34);
  }
  if (local_40[0] == '\0') {
    if (DAT_00c7de78 == 0) {
      puVar7 = &DAT_00c7f618;
    }
    else {
      puVar7 = (uint *)(DAT_00c7de78 + 0x30);
    }
    if (local_3c != 0) {
      uVar3 = *(uint *)(local_3c + -4);
      uVar6 = *puVar7;
      *puVar7 = *puVar7 - uVar3;
      puVar7[1] = puVar7[1] - (uint)(uVar6 < uVar3);
      free((void *)(local_3c + -4));
    }
  }
  ExceptionList = local_1c;
  return;
}

