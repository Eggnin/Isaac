/* Local J460 decompiler output.
 * VA: 0x0051d300
 * Entry: 0051d300
 * Dispatcher: 0x006c2990
 * Types: 99
 * Identities: 99.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0051e0f0; instructions=777
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=99; identities=99.0.0; dispatcher=0x006c2990;
   end=0x0051e0f0; instructions=777 */

void __fastcall AI_0051d300(int param_1)

{
  undefined *puVar1;
  undefined4 uVar2;
  int iVar3;
  float *pfVar4;
  int iVar5;
  float fVar6;
  float local_118;
  float local_114;
  undefined local_10c [8];
  int local_104;
  undefined4 local_100;
  float local_fc;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 uStack_14;
  
  puStack_20 = &stack0xfffffffc;
  uStack_14 = 0xffffffff;
  puStack_18 = &LAB_00af4530;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar5 = *(int *)(param_1 + 0xb64);
  local_104 = param_1;
  if (iVar5 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x410) = 0;
    puStack_20 = &stack0xfffffffc;
    if ((*(int *)(param_1 + 0x30) == 1) &&
       (puStack_20 = &stack0xfffffffc, *(int *)(param_1 + 0x34) != *(int *)(param_1 + 0x28))) {
      puStack_20 = &stack0xfffffffc;
      uVar2 = FUN_006eef60();
      local_118 = *(float *)(param_1 + 0x33c) + DAT_00baa89c;
      local_114 = *(float *)(param_1 + 0x340) + 0.0;
      FUN_00428b20(*(undefined4 *)(param_1 + 0x28),*(undefined4 *)(param_1 + 0x2c),&local_118,
                   param_1 + 0x360,param_1,*(undefined4 *)(param_1 + 0x30),uVar2);
      *(float *)(param_1 + 0x33c) = *(float *)(param_1 + 0x33c) - DAT_00baa89c;
      *(float *)(param_1 + 0x340) = *(float *)(param_1 + 0x340) - 0.0;
    }
  }
  else {
    puVar1 = &stack0xfffffffc;
    if (*(char *)(param_1 + 0x173) != '\0') {
      local_fc = DAT_00baa454;
      fVar6 = DAT_00baa528;
      if ((*(int *)(param_1 + 0xc64) == 0x12) ||
         (fVar6 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
        local_fc = fVar6;
      }
      local_100 = 0x75;
      FUN_00956780(local_24);
      FUN_0092dc30(local_100,0x3f99999a,2,0,local_fc,0);
      iVar5 = *(int *)(param_1 + 0xb64);
      puVar1 = puStack_20;
    }
    puStack_20 = puVar1;
    if (iVar5 == 8) {
      iVar3 = FUN_006ac760();
      local_fc = DAT_00baa198;
      if (iVar3 != 0) {
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa438;
        goto LAB_0051d4e2;
      }
    }
    else {
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    }
    local_fc = DAT_00baa198;
    if (iVar5 - 3U < 8) {
LAB_0051d4e2:
                    /* WARNING: Could not recover jumptable at 0x0051d4ed. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (*(code *)(&PTR_LAB_0051e0c8)[iVar5 + -3])();
      return;
    }
    if ((*(int *)(param_1 + 0xf1c) != -1) && (0.0 < DAT_00baa198)) {
      pfVar4 = (float *)FUN_006d82d0(local_10c);
      fVar6 = pfVar4[1];
      *(float *)(param_1 + 0x360) =
           local_fc * *pfVar4 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           fVar6 * local_fc * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

