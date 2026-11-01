/* Local J460 decompiler output.
 * VA: 0x009a1680
 * Entry: 009a1680
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: HomingType 1 inserts candidates before endpoint
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; HomingType 1 inserts candidates
   before endpoint */

undefined4 * __thiscall
HELPER_LaserNode_Insert(int param_1_00,undefined4 *param_1,undefined4 *param_2,undefined4 *param_3)

{
  undefined8 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  undefined4 local_c;
  undefined4 uStack_8;
  
  puVar7 = *(undefined4 **)(param_1_00 + 4);
  if (puVar7 == *(undefined4 **)(param_1_00 + 8)) {
    uVar5 = FUN_009a17b0(param_2,param_3);
    *param_1 = uVar5;
    return param_1;
  }
  uVar5 = *param_3;
  uVar2 = param_3[1];
  uVar3 = param_3[2];
  uVar4 = param_3[3];
  if (param_2 == puVar7) {
    *puVar7 = uVar5;
    puVar7[1] = uVar2;
    puVar7[2] = uVar3;
    puVar7[3] = uVar4;
    *(undefined8 *)(puVar7 + 4) = *(undefined8 *)(param_3 + 4);
    *(int *)(param_1_00 + 4) = *(int *)(param_1_00 + 4) + 0x18;
    *param_1 = param_2;
    return param_1;
  }
  uVar1 = *(undefined8 *)(param_3 + 4);
  puVar8 = puVar7 + -6;
  *puVar7 = *puVar8;
  puVar7[1] = puVar7[-5];
  puVar7[2] = puVar7[-4];
  puVar7[3] = puVar7[-3];
  *(undefined8 *)(puVar7 + 4) = *(undefined8 *)(puVar7 + -2);
  *(int *)(param_1_00 + 4) = *(int *)(param_1_00 + 4) + 0x18;
  if (puVar8 != param_2) {
    puVar6 = puVar7 + 5;
    puVar7 = puVar7 + -7;
    do {
      puVar6[-0xb] = puVar7[-5];
      puVar8 = puVar8 + -6;
      puVar6[-10] = puVar7[-4];
      puVar6[-9] = puVar7[-3];
      puVar6[-8] = puVar7[-2];
      puVar6[-7] = puVar7[-1];
      puVar6[-6] = *puVar7;
      puVar6 = puVar6 + -6;
      puVar7 = puVar7 + -6;
    } while (puVar8 != param_2);
  }
  *param_2 = uVar5;
  param_2[1] = uVar2;
  param_2[2] = uVar3;
  param_2[3] = uVar4;
  local_c = (undefined4)uVar1;
  param_2[4] = local_c;
  uStack_8 = (undefined4)((ulonglong)uVar1 >> 0x20);
  param_2[5] = uStack_8;
  *param_1 = param_2;
  return param_1;
}

