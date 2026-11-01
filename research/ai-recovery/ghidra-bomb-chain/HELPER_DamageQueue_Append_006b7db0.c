/* Local J460 decompiler output.
 * VA: 0x006b7db0
 * Entry: 006b7db0
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: TakeDamage queued event append
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; TakeDamage queued event append */

void __thiscall HELPER_DamageQueue_Append(int param_1_00,undefined4 *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  puVar1 = *(undefined4 **)(param_1_00 + 4);
  if (puVar1 != *(undefined4 **)(param_1_00 + 8)) {
    uVar2 = param_1[1];
    uVar3 = param_1[2];
    uVar4 = param_1[3];
    *puVar1 = *param_1;
    puVar1[1] = uVar2;
    puVar1[2] = uVar3;
    puVar1[3] = uVar4;
    uVar2 = param_1[5];
    uVar3 = param_1[6];
    uVar4 = param_1[7];
    puVar1[4] = param_1[4];
    puVar1[5] = uVar2;
    puVar1[6] = uVar3;
    puVar1[7] = uVar4;
    uVar2 = param_1[9];
    uVar3 = param_1[10];
    uVar4 = param_1[0xb];
    puVar1[8] = param_1[8];
    puVar1[9] = uVar2;
    puVar1[10] = uVar3;
    puVar1[0xb] = uVar4;
    *(undefined8 *)(puVar1 + 0xc) = *(undefined8 *)(param_1 + 0xc);
    *(int *)(param_1_00 + 4) = *(int *)(param_1_00 + 4) + 0x38;
    return;
  }
  FUN_006b7fd0(puVar1,param_1);
  return;
}

