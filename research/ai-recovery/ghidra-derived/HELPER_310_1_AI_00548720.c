/* Local J460 decompiler output.
 * VA: 0x00548720
 * Entry: 00548720
 * Dispatcher: 0x006c2990
 * Types: 310
 * Identities: 310.1.0
 * Evidence: AI direct dispatch
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=310; identities=310.1.0; AI direct dispatch */

void __fastcall HELPER_310_1_AI(int *param_1)

{
  byte bVar1;
  code *pcVar2;
  char cVar3;
  float *pfVar4;
  int iVar5;
  byte **ppbVar6;
  uint uVar7;
  undefined4 uVar8;
  int iVar9;
  byte *pbVar10;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  uint uVar11;
  bool bVar12;
  float fVar13;
  int *piVar14;
  float fVar15;
  undefined4 local_118;
  undefined4 local_114;
  undefined4 local_110;
  undefined4 local_10c;
  undefined4 local_108;
  undefined4 local_104;
  undefined4 local_100;
  undefined4 local_fc;
  undefined4 local_f8;
  undefined4 local_f4;
  undefined local_f0 [12];
  undefined4 uStack_e4;
  float local_d4;
  int *local_d0;
  int *local_cc;
  byte *local_c8;
  float local_c4;
  undefined local_c0 [44];
  undefined4 local_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined local_84 [16];
  ulonglong local_74;
  undefined4 local_6c;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  if (param_1[0x2d9] != 0) {
    if (param_1[0x2d9] == 4) {
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa418);
      pfVar4 = (float *)HELPER_Entity_NPC_ProjectileHelper(&local_d4,0);
      local_c8 = (byte *)(pfVar4[1] - (float)param_1[0xd0]);
      local_c4 = *pfVar4 - (float)param_1[0xcf];
      fVar13 = (float)local_c8 * (float)local_c8 + local_c4 * local_c4;
      FUN_00435a50();
      if (0.0 < fVar13) {
        local_c4 = local_c4 * (DAT_00baa454 / fVar13);
        local_c8 = (byte *)((float)local_c8 * (DAT_00baa454 / fVar13));
      }
      if (param_1[0x3c7] != -1) {
        pfVar4 = (float *)FUN_006d82d0(&local_d4);
        local_c4 = *pfVar4;
        local_c8 = (byte *)pfVar4[1];
      }
      iVar5 = FUN_006eef60();
      fVar13 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
      local_cc = (int *)(fVar13 + fVar13);
      local_d0 = local_cc;
      FUN_0041d540();
      piVar14 = local_cc;
      FUN_0041d520();
      fVar13 = ((float)local_d0 + (float)local_d0 + local_c4) * DAT_00baa154;
      param_1[0xd9] =
           (int)(((float)piVar14 + (float)piVar14 + (float)local_c8) * DAT_00baa154 *
                 (float)param_1[0xe7] + (float)param_1[0xd9]);
      param_1[0xd8] = (int)(fVar13 * (float)param_1[0xe7] + (float)param_1[0xd8]);
    }
    goto LAB_00548a4b;
  }
  uVar11 = param_1[0xfb];
  local_c4 = DAT_00b1f53c;
  local_d0 = param_1 + 0x12;
  local_f0._4_8_ = DAT_00b1f534;
  if (uVar11 == 0) {
    FUN_00a112c0(0x10,"RNG Seed is zero!\n");
    pcVar2 = (code *)swi(3);
    (*pcVar2)();
    return;
  }
  uVar11 = uVar11 >> ((byte)DAT_00b1f534 & 0x1f) ^ uVar11;
  uVar11 = uVar11 << ((byte)((ulonglong)DAT_00b1f534 >> 0x20) & 0x1f) ^ uVar11;
  uVar11 = uVar11 >> (SUB41(DAT_00b1f53c,0) & 0x1f) ^ uVar11;
  local_c8 = (&PTR_DAT_00b614c0)[uVar11 % 6];
  ppbVar6 = (byte **)param_1[0x1f];
  if (ppbVar6 == (byte **)0x0) {
LAB_005489d8:
    cVar3 = HELPER_0040a5d0_AnimationPredicateC(local_c8,1);
    if (cVar3 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
  else {
    pbVar10 = local_c8;
    if (&DAT_0000000f < ppbVar6[5]) {
      ppbVar6 = (byte **)*ppbVar6;
    }
    do {
      bVar1 = *(byte *)ppbVar6;
      bVar12 = bVar1 < *pbVar10;
      if (bVar1 != *pbVar10) {
LAB_005489b8:
        uVar7 = -(uint)bVar12 | 1;
        goto LAB_005489bd;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar6 + 1);
      bVar12 = bVar1 < pbVar10[1];
      if (bVar1 != pbVar10[1]) goto LAB_005489b8;
      ppbVar6 = (byte **)((int)ppbVar6 + 2);
      pbVar10 = pbVar10 + 2;
    } while (bVar1 != 0);
    uVar7 = 0;
LAB_005489bd:
    if ((uVar7 != 0) ||
       ((*(char *)(param_1[0x1f] + 0x34) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
    goto LAB_005489d8;
  }
  param_1[0x2d9] = 4;
  if (uVar11 == 0) {
    FUN_00a112c0(0x10,"RNG Seed is zero!\n");
    pcVar2 = (code *)swi(3);
    (*pcVar2)();
    return;
  }
  uVar11 = uVar11 >> (SUB161(_local_f0,4) & 0x1f) ^ uVar11;
  uVar11 = uVar11 << (SUB161(_local_f0,8) & 0x1f) ^ uVar11;
  *(byte *)(param_1 + 0x52) = ~((byte)(uVar11 >> (SUB41(local_c4,0) & 0x1f)) ^ (byte)uVar11) & 1;
  *(undefined *)(param_1 + 0x5d) = 1;
LAB_00548a4b:
  cVar3 = FUN_006ac710(10,0);
  if (cVar3 != '\0') {
    iVar5 = FUN_006eef60();
    FUN_006b64d0((float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa280 + DAT_00baa280);
  }
  cVar3 = FUN_006ac710(6,0);
  _local_f0 = ZEXT416(DAT_00baa1f8);
  uVar8 = extraout_ECX;
  if (cVar3 != '\0') {
    uVar8 = FUN_006eef60();
    local_d0 = (int *)param_1[0xd8];
    local_cc = (int *)param_1[0xd9];
    iVar5 = FUN_006eef60();
    fVar13 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa704;
    local_c8 = (byte *)(fVar13 + fVar13);
    iVar5 = FUN_006eef60();
    local_c4 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4;
    pbVar10 = local_c8;
    FUN_0041d540();
    local_d4 = (float)pbVar10 * local_c4 * DAT_00baa6fc + (float)local_d0 * (float)local_f0._0_4_;
    pbVar10 = local_c8;
    FUN_0041d520();
    local_d0 = (int *)((float)pbVar10 * local_c4 * DAT_00baa6fc +
                      (float)local_cc * (float)local_f0._0_4_);
    iVar5 = HELPER_Entity_SpawnRelay(1000,0x6f,param_1 + 0xcf,&local_d4,0,0,uVar8);
    iVar9 = FUN_006eef60();
    *(float *)(iVar5 + 0x14c) =
         (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
         DAT_00baa304 + DAT_00baa2d0;
    local_cc = (int *)((float)param_1[0x30e] * DAT_00c37940);
    local_d0 = (int *)((float)param_1[0x30e] * DAT_00c3793c);
    iVar9 = FUN_006eef60();
    fVar13 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa304 + DAT_00baa304;
    *(float *)(iVar5 + 0xe4) = (float)local_d0 * DAT_00baa2d0 * fVar13;
    *(float *)(iVar5 + 0xe8) = (float)local_cc * DAT_00baa2d0 * fVar13;
    *(undefined4 *)(iVar5 + 0x34c) = 0;
    *(undefined4 *)(iVar5 + 0x350) = 0xc1b00000;
    *(undefined4 *)(iVar5 + 0x354) = 0xfffffe70;
    uVar8 = extraout_ECX_00;
  }
  if ((param_1[0x3c7] != -1) &&
     (cVar3 = HELPER_00956110_BossEventQuery(9,param_1[0x3c7],param_1,uVar8), cVar3 != '\0')) {
    local_118 = 0;
    local_114 = 0;
    local_110 = 0;
    local_10c = 0;
    local_108 = DAT_00c7b640;
    local_104 = DAT_00c7b644;
    local_100 = DAT_00c7b640;
    local_fc = DAT_00c7b644;
    local_f8 = 0;
    local_f4 = 0;
    (**(code **)(*param_1 + 0x24))(&local_118);
  }
  if ((*(char *)((int)param_1 + 0x173) != '\0') && ((param_1[0x5a] & 0x1000000U) == 0)) {
    iVar5 = FUN_006be840();
    local_c8 = *(byte **)(iVar5 + 0x360);
    fVar13 = (float)param_1[0xd0] - *(float *)(iVar5 + 0x340);
    local_c4 = *(float *)(iVar5 + 0x364);
    fVar15 = (float)param_1[0xcf] - *(float *)(iVar5 + 0x33c);
    fVar13 = fVar13 * fVar13 + fVar15 * fVar15;
    FUN_00435a50();
    local_c8 = (byte *)(((float)local_c8 * DAT_00baa120 * fVar13 + *(float *)(iVar5 + 0x33c)) -
                       (float)param_1[0xcf]);
    local_c4 = (local_c4 * DAT_00baa120 * fVar13 + *(float *)(iVar5 + 0x340)) - (float)param_1[0xd0]
    ;
    fVar15 = local_c4 * local_c4 + (float)local_c8 * (float)local_c8;
    FUN_00435a50();
    pbVar10 = local_c8;
    fVar13 = local_c4;
    if (DAT_00ba9fe4 < fVar15) {
      pbVar10 = (byte *)((float)local_c8 * (DAT_00baa454 / fVar15));
      fVar13 = local_c4 * (DAT_00baa454 / fVar15);
    }
    local_d4 = (float)pbVar10 * DAT_00baa81c;
    local_d0 = (int *)(fVar13 * DAT_00baa81c);
    AI_0043ef30();
    local_6c = 0;
    local_94 = _DAT_00bac7b0;
    uStack_90 = _UNK_00bac7b4;
    uStack_8c = _UNK_00bac7b8;
    uStack_88 = _UNK_00bac7bc;
    local_74 = local_f0._0_8_ & 0xffffffff;
    local_84 = ZEXT816(0);
    HELPER_Entity_NPC_FireProjectiles(param_1 + 0xcf,&local_d4,0,local_c0);
  }
  FUN_00aef12b();
  return;
}

