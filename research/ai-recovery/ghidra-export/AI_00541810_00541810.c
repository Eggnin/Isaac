/* Local J460 decompiler output.
 * VA: 0x00541810
 * Entry: 00541810
 * Dispatcher: 0x006c2990
 * Types: 288
 * Identities: 288.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00541ce0; instructions=287
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=288; identities=288.0.0; dispatcher=0x006c2990;
   end=0x00541ce0; instructions=287 */

void __fastcall AI_00541810(int param_1)

{
  char cVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  float *pfVar5;
  float fVar6;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  undefined local_10 [12];
  
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x184) = 3;
    iVar2 = FUN_006eef60();
    local_18 = (float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
    local_18 = local_18 + local_18;
    local_20 = local_18;
    FUN_0041d540();
    FUN_0041d520();
    *(float *)(param_1 + 0x360) = local_20;
    *(float *)(param_1 + 0x364) = local_18;
    *(undefined4 *)(param_1 + 0xba0) = 0x3c;
    return;
  }
  FUN_006d8e40(1);
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
  if (*(int *)(param_1 + 0xb64) == 4) {
    FUN_0040a380(&DAT_00b1bc54,0);
    if (*(int *)(param_1 + 0xba0) < 1) {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        uVar3 = FUN_006eef60();
        if ((uVar3 % 10 != 0) || (iVar2 = FUN_006d6c20(), 7 < iVar2)) goto LAB_00541b8f;
      }
      else {
        cVar1 = FUN_006cae60(0,7);
        if ((cVar1 == '\0') && (cVar1 = FUN_006d8260(9), cVar1 == '\0')) goto LAB_00541b8f;
      }
      cVar1 = FUN_00417430(0x200,0);
      if (cVar1 == '\0') {
        *(undefined4 *)(param_1 + 0xb64) = 8;
      }
    }
  }
  else if (*(int *)(param_1 + 0xb64) == 8) {
    FUN_0040a380("Cough",0);
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar1 = FUN_0040add0("Shoot");
      if (cVar1 != '\0') {
        FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
        uVar4 = FUN_006eef60();
        pfVar5 = (float *)FUN_0067f070(local_10);
        local_18 = *pfVar5 * DAT_00baa730 + *(float *)(param_1 + 0x360);
        local_14 = pfVar5[1] * DAT_00baa730 + *(float *)(param_1 + 0x364);
        local_20 = *(float *)(param_1 + 0x33c) + DAT_00ba9fe4;
        local_1c = *(float *)(param_1 + 0x340) + DAT_00baa904;
        iVar2 = FUN_006fe410(0x100,0,&local_20,&local_18,param_1,0,uVar4,0);
        *(uint *)(iVar2 + 0x168) = *(uint *)(iVar2 + 0x168) & 0xfffffffb;
        *(undefined4 *)(iVar2 + 0x16c) = *(undefined4 *)(iVar2 + 0x16c);
        uVar3 = FUN_006eef60();
        if (uVar3 % 3 == 0) {
          uVar4 = FUN_006eef60();
          pfVar5 = (float *)FUN_0067f070(local_10);
          local_18 = *pfVar5 * DAT_00baa730 + *(float *)(param_1 + 0x360);
          local_14 = pfVar5[1] * DAT_00baa730 + *(float *)(param_1 + 0x364);
          local_20 = *(float *)(param_1 + 0x33c) + DAT_00ba9fe4;
          local_1c = *(float *)(param_1 + 0x340) + DAT_00baa904;
          iVar2 = FUN_006fe410(0x100,0,&local_20,&local_18,param_1,0,uVar4,0);
          *(uint *)(iVar2 + 0x168) = *(uint *)(iVar2 + 0x168) & 0xfffffffb;
          *(undefined4 *)(iVar2 + 0x16c) = *(undefined4 *)(iVar2 + 0x16c);
        }
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_00541b8f;
    }
    *(undefined4 *)(param_1 + 0xb64) = 4;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar3 = FUN_006eef60();
      iVar2 = uVar3 % 0x1e + 0x5a;
    }
    else {
      iVar2 = 0x5a;
    }
    *(int *)(param_1 + 0xba0) = iVar2;
  }
LAB_00541b8f:
  if (0 < *(int *)(param_1 + 0xba0)) {
    *(int *)(param_1 + 0xba0) =
         ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
         *(int *)(param_1 + 0xba0);
  }
  if (((*(uint *)(param_1 + 0x168) & 0x200) != 0) && (*(int *)(param_1 + 0xf1c) == -1)) {
    FUN_007e6300(0);
    return;
  }
  local_20 = DAT_00baa1f8;
  if (*(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0) {
    local_20 = DAT_00baad14;
  }
  local_18 = DAT_00baa1f8;
  if (*(float *)(param_1 + 0x364) <= 0.0 && *(float *)(param_1 + 0x364) != 0.0) {
    local_18 = DAT_00baad14;
  }
  if (*(int *)(param_1 + 0xf1c) != -1) {
    pfVar5 = (float *)FUN_006d82d0(local_10);
    fVar6 = local_20 * local_20 + local_18 * local_18;
    FUN_00435a50();
    local_18 = local_18 + fVar6 * DAT_00baa2d0 * pfVar5[1];
    local_20 = fVar6 * DAT_00baa2d0 * *pfVar5 + local_20;
  }
  fVar6 = *(float *)(param_1 + 0x36c);
  if (NAN(fVar6) == (fVar6 == 0.0)) {
    *(float *)(param_1 + 0x364) =
         (*(float *)(param_1 + 0x39c) * local_18) / fVar6 + *(float *)(param_1 + 0x364);
    *(float *)(param_1 + 0x360) =
         (*(float *)(param_1 + 0x39c) * local_20) / fVar6 + *(float *)(param_1 + 0x360);
  }
  return;
}

