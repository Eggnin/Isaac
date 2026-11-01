/* Local J460 decompiler output.
 * VA: 0x005a4820
 * Entry: 005a4820
 * Dispatcher: 0x006c2990
 * Types: 293
 * Identities: 293.0.0,293.1.0,293.2.0,293.3.0
 * Evidence: dispatcher=0x006c2990; end=0x005a5b60; instructions=1017
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=293; identities=293.0.0,293.1.0,293.2.0,293.3.0;
   dispatcher=0x006c2990; end=0x005a5b60; instructions=1017 */

void __fastcall AI_005a4820(int *param_1)

{
  byte bVar1;
  char cVar2;
  uint uVar3;
  uint uVar4;
  int *piVar5;
  byte **ppbVar6;
  undefined4 uVar7;
  int iVar8;
  int iVar9;
  byte **ppbVar10;
  char *pcVar11;
  uint *puVar12;
  bool bVar13;
  float fVar14;
  float fVar15;
  undefined4 uVar16;
  TypeDescriptor *pTVar17;
  TypeDescriptor *pTVar18;
  undefined4 uVar19;
  undefined local_110 [32];
  undefined4 local_f0;
  undefined4 uStack_ec;
  undefined4 local_e8;
  char local_e4 [4];
  int local_e0;
  uint local_d8;
  undefined local_d4 [4];
  int local_d0;
  float local_c8;
  float local_c4;
  int *local_c0;
  undefined local_bc [4];
  float local_b8;
  char local_b1;
  float local_b0;
  float local_ac;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined local_6c [16];
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [16];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined local_14;
  undefined3 uStack_13;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xff;
  uStack_13 = 0xffffff;
  puStack_18 = &LAB_00af58f6;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_c0 = param_1;
  local_24 = uVar3;
  if (param_1[0x2d9] == 0) {
    param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
    param_1[0x5b] = param_1[0x5b];
    param_1[0x2d9] = 2;
    local_f0 = 0;
    uStack_ec = 0;
    local_e8 = 0;
    if ((undefined (*) [16])(param_1 + 0x79) != (undefined (*) [16])local_110) {
      *(undefined8 *)(param_1 + 0x81) = 0;
      *(undefined (*) [16])(param_1 + 0x79) = ZEXT816(0);
      param_1[0x83] = 0;
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
    }
    iVar9 = DAT_00c7169c;
    param_1[0x62] = 0;
    param_1[0x37] = 0x40a00000;
    param_1[0x38] = -0x3fc00000;
    if ((*(char *)(iVar9 + 0x142) != '\0') ||
       (((puStack_20 = &stack0xfffffffc, *(int *)(iVar9 + 8) == 2 &&
         (puStack_20 = &stack0xfffffffc, DAT_00c71678 != 0)) &&
        ((*(int *)(DAT_00c71678 + 0x26630) != 0 ||
         (puStack_20 = &stack0xfffffffc, *(char *)(DAT_00c71678 + 0x26589) != '\0')))))) {
      param_1[0xe1] = (int)((float)param_1[0xe1] * DAT_00baa4a0);
      param_1[0xe0] = (int)((float)param_1[0xe0] * DAT_00baa4a0);
      puStack_20 = &stack0xfffffffc;
    }
    goto LAB_005a5b10;
  }
  AI_0041af60(local_e4,0x196,0xffffffff,0xffffffff,0,0);
  local_14 = 0;
  uStack_13 = 0;
  uVar4 = 0;
  fVar15 = 0.0;
  fVar14 = 0.0;
  local_b0 = DAT_00baa454;
  if (local_d8 != 0) {
    do {
      iVar9 = *(int *)(local_e0 + uVar4 * 4);
      if ((0.0 < *(float *)(iVar9 + 900)) && (*(char *)(iVar9 + 0x173) == '\0')) {
        fVar14 = fVar14 + *(float *)(iVar9 + 0x380);
        fVar15 = fVar15 + *(float *)(iVar9 + 900);
      }
      uVar4 = uVar4 + 1;
    } while (uVar4 < local_d8);
    local_b8 = fVar14;
    local_ac = fVar15;
    if (0.0 < fVar15) {
      if (NAN(fVar15) != (fVar15 == 0.0)) {
        FUN_00a112c0(0x10,"Start and End parameters cannot be the same!",uVar3);
      }
      fVar14 = (local_b8 - 0.0) / (local_ac - 0.0);
      if (fVar14 <= 0.0) {
        fVar14 = 0.0;
      }
      if (DAT_00baa454 <= fVar14) {
        fVar14 = DAT_00baa454;
      }
      local_b0 = fVar14 * DAT_00baa2d0 + DAT_00baa2d0;
      if ((*(char *)(DAT_00c7169c + 0x142) != '\0') ||
         (((*(int *)(DAT_00c7169c + 8) == 2 && (DAT_00c71678 != 0)) &&
          ((*(int *)(DAT_00c71678 + 0x26630) != 0 || (*(char *)(DAT_00c71678 + 0x26589) != '\0')))))
         ) {
        local_b0 = local_b0 * DAT_00baa3e0;
      }
    }
  }
  fVar14 = DAT_00baa120;
  iVar9 = param_1[0x2d9];
  if (iVar9 == 2) {
    switch(param_1[0xb]) {
    case 0:
      pcVar11 = "AppearNeutral";
      break;
    case 1:
      pcVar11 = "AppearKey";
      break;
    case 2:
      pcVar11 = "AppearBomb";
      break;
    case 3:
      pcVar11 = "AppearHeart";
      break;
    default:
      goto switchD_005a4ae5_caseD_4;
    }
    FUN_0040a380(pcVar11,0);
switchD_005a4ae5_caseD_4:
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 3;
      param_1[0x104] = 0;
      param_1[0x62] = 4;
      switch(param_1[0xb]) {
      case 0:
        pcVar11 = "SpinningNeutral";
        break;
      case 1:
        pcVar11 = "SpinningKey";
        break;
      case 2:
        pcVar11 = "SpinningBomb";
        break;
      case 3:
        pcVar11 = "SpinningHeart";
        break;
      default:
        goto switchD_005a4b56_caseD_4;
      }
LAB_005a58d2:
      FUN_0040a380(pcVar11,0);
    }
    goto switchD_005a4b56_caseD_4;
  }
  if (iVar9 != 3) {
    if (iVar9 != 4) goto switchD_005a4b56_caseD_4;
    if (param_1[0xb] != 1) {
      if (param_1[0xb] == 3) {
        param_1[0x62] = 0;
        param_1[0x61] = 0;
        cVar2 = FUN_0040a4d0("HeartChange");
        if (((cVar2 == '\0') && (param_1[0x1f] != 0)) && (*(char *)(param_1 + 0x23) != '\0')) {
          cVar2 = FUN_0040a4d0("HeartMove");
          if (cVar2 != '\0') {
            AI_0041af60(local_d4,0x196,0xffffffff,0xffffffff,0,0);
            uVar19 = 0;
            pTVar18 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
            pTVar17 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar16 = 0;
            local_14 = 2;
            uVar7 = FUN_004be670(0,param_1[0xcf],param_1[0xd0]);
            iVar9 = __RTDynamicCast(uVar7,uVar16,pTVar17,pTVar18,uVar19);
            if (iVar9 != 0) {
              local_b0 = *(float *)(iVar9 + 0x33c) - (float)param_1[0xcf];
              local_b8 = *(float *)(iVar9 + 0x340) - (float)param_1[0xd0];
              fVar14 = local_b0 * local_b0 + local_b8 * local_b8;
              FUN_00435a50();
              if (DAT_00ba9fe4 < fVar14) {
                local_b0 = (DAT_00baa630 / fVar14) * local_b0;
                local_b8 = local_b8 * (DAT_00baa630 / fVar14);
              }
              fVar15 = local_b0 * (float)param_1[0xe7] + (float)param_1[0xd8];
              fVar14 = local_b8 * (float)param_1[0xe7] + (float)param_1[0xd9];
              param_1[0xd8] = (int)fVar15;
              fVar14 = fVar14 * fVar14 + fVar15 * fVar15;
              FUN_00435a50();
              local_c0 = (int *)fVar14;
              fVar14 = local_b0 * local_b0 + local_b8 * local_b8;
              FUN_00435a50();
              if (DAT_00ba9fe4 < fVar14) {
                local_b8 = ((float)local_c0 / fVar14) * local_b8;
                local_b0 = ((float)local_c0 / fVar14) * local_b0;
              }
              param_1[0xd9] = (int)local_b8;
              param_1[0xd8] = (int)local_b0;
              fVar14 = (float)param_1[0xd0] - *(float *)(iVar9 + 0x340);
              fVar15 = (float)param_1[0xcf] - *(float *)(iVar9 + 0x33c);
              piVar5 = (int *)(fVar14 * fVar14 + fVar15 * fVar15);
              FUN_00435a50();
              local_c0 = piVar5;
              fVar14 = local_b8 * local_b8 + local_b0 * local_b0;
              FUN_00435a50();
              if (fVar14 <= (float)local_c0) {
                local_14 = 0;
                FUN_004175b0();
                goto switchD_005a4b56_caseD_4;
              }
              FUN_0059e2a0(3);
              local_ac = 3.279038e-43;
              FUN_00956780();
              FUN_0092dc30(local_ac,0x3f800000,2,0,0x3f666666,0);
            }
            (**(code **)(*param_1 + 0x28))();
            FUN_004175b0();
            goto LAB_005a5acd;
          }
        }
        else {
          param_1[0xdb] = (int)((float)param_1[0xdb] * fVar14);
          if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
            pcVar11 = "HeartMove";
            goto LAB_005a58af;
          }
        }
      }
      goto switchD_005a4b56_caseD_4;
    }
    param_1[0x62] = 0;
    param_1[0x61] = 0;
    cVar2 = FUN_0040a4d0("KeyChange");
    if (((cVar2 != '\0') || (param_1[0x1f] == 0)) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0xdb] = (int)((float)param_1[0xdb] * fVar14);
      if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0'))
      goto switchD_005a4b56_caseD_4;
      pcVar11 = "KeyMove";
LAB_005a58af:
      param_1[0xd8] = DAT_00c7b640;
      param_1[0xd9] = DAT_00c7b644;
      goto LAB_005a58d2;
    }
    cVar2 = FUN_0040a4d0("KeyMove");
    if (cVar2 == '\0') goto switchD_005a4b56_caseD_4;
    AI_0041af60(local_d4,0x126,0xffffffff,0xffffffff,0,0);
    local_14 = 1;
    iVar9 = 0;
    local_ac = 0.0;
    if (local_c8 != 0.0) {
      do {
        iVar8 = __RTDynamicCast(*(undefined4 *)(local_d0 + (int)local_ac * 4),0,
                                &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        if ((iVar8 != 0) && (*(int *)(iVar8 + 0xbc0) == param_1[0x2f0])) {
          iVar9 = iVar8;
        }
        local_ac = (float)((int)local_ac + 1);
      } while ((uint)local_ac < (uint)local_c8);
      if (iVar9 != 0) {
        local_b0 = *(float *)(iVar9 + 0x340) - (float)param_1[0xd0];
        local_b8 = *(float *)(iVar9 + 0x33c) - (float)param_1[0xcf];
        fVar14 = local_b0 * local_b0 + local_b8 * local_b8;
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar14) {
          local_b8 = local_b8 * (DAT_00baa630 / fVar14);
          local_b0 = local_b0 * (DAT_00baa630 / fVar14);
        }
        local_b0 = local_b0 * (float)param_1[0xe7] + (float)param_1[0xd9];
        local_b8 = local_b8 * (float)param_1[0xe7] + (float)param_1[0xd8];
        param_1[0xd9] = (int)local_b0;
        param_1[0xd8] = (int)local_b8;
        fVar14 = (float)param_1[0xd0] - *(float *)(iVar9 + 0x340);
        fVar15 = (float)param_1[0xcf] - *(float *)(iVar9 + 0x33c);
        piVar5 = (int *)(fVar14 * fVar14 + fVar15 * fVar15);
        FUN_00435a50();
        local_c0 = piVar5;
        fVar14 = local_b0 * local_b0 + local_b8 * local_b8;
        FUN_00435a50();
        if (fVar14 <= (float)local_c0) {
          local_14 = 0;
          FUN_004175b0();
          goto switchD_005a4b56_caseD_4;
        }
        *(undefined4 *)(iVar9 + 0xb64) = 0xd;
        local_ac = 2.186026e-43;
        FUN_00956780();
        FUN_0092dc30(local_ac,0x3f800000,2,0,0x3f800000,0);
      }
    }
    (**(code **)(*param_1 + 0x28))();
    FUN_004175b0();
    goto LAB_005a5acd;
  }
  uVar4 = 0;
  local_b1 = '\0';
  switch(param_1[0xb]) {
  case 0:
    local_ac = (float)param_1[0xdb] * DAT_00baa3e0;
    param_1[0xdb] = (int)local_ac;
    local_b8 = (float)param_1[0xe1];
    local_b0 = (float)param_1[0xe0] - (local_b8 * (float)param_1[0xe7]) / DAT_00baab1c;
    param_1[0xe0] = (int)local_b0;
    if (local_b0 < 0.0) {
      *(undefined *)((int)param_1 + 0x173) = 1;
    }
    if (NAN(local_b8) != (local_b8 == 0.0)) {
      FUN_00a112c0(0x10,"Start and End parameters cannot be the same!",uVar3);
      local_ac = (float)param_1[0xdb];
    }
    fVar14 = (local_b0 - 0.0) / (local_b8 - 0.0);
    if (fVar14 <= 0.0) {
      fVar14 = 0.0;
    }
    if (DAT_00baa454 <= fVar14) {
      fVar14 = DAT_00baa454;
    }
    local_b0 = fVar14 + fVar14 + DAT_00baa630;
    param_1[0x53] = (int)local_b0;
    param_1[0x104] = param_1[0x104] + (int)local_b0;
    iVar9 = param_1[8] * 0x231d + param_1[0x104];
    fVar14 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) / DAT_00baaad4;
    if ((param_1[8] & 1U) == 0) {
      fVar14 = fVar14 * DAT_00baad50;
    }
    fVar14 = fVar14 * DAT_00baa7a8;
    local_b8 = fVar14;
    FUN_0041d540();
    local_c4 = fVar14 * DAT_00baa134;
    fVar14 = local_b8;
    FUN_0041d520();
    if ((NAN(local_ac) || NAN(DAT_00ba9fe4)) == (local_ac == DAT_00ba9fe4)) {
      param_1[0xd9] =
           (int)(((float)param_1[0xe7] * fVar14 * DAT_00baa134 * local_b0) / local_ac +
                (float)param_1[0xd9]);
      param_1[0xd8] =
           (int)(((float)param_1[0xe7] * local_c4 * local_b0) / local_ac + (float)param_1[0xd8]);
    }
    cVar2 = FUN_006ac710(0x78,param_1[8]);
    if (cVar2 != '\0') {
      piVar5 = (int *)FUN_0067f070(local_bc);
      param_1[0x2ec] = *piVar5;
      param_1[0x2ed] = piVar5[1];
    }
    fVar14 = (float)param_1[0xdb];
    fVar15 = (float)param_1[0x2ec] * DAT_00baa120;
    if ((NAN(fVar14) || NAN(DAT_00ba9fe4)) == (fVar14 == DAT_00ba9fe4)) {
      param_1[0xd9] =
           (int)(((float)param_1[0xe7] * (float)param_1[0x2ed] * DAT_00baa120 * local_b0) / fVar14 +
                (float)param_1[0xd9]);
      param_1[0xd8] =
           (int)(((float)param_1[0xe7] * fVar15 * local_b0) / fVar14 + (float)param_1[0xd8]);
    }
    if (*(char *)(param_1 + 100) != '\0') {
      local_c4 = (float)(param_1[0x67] ^ DAT_00bacb70) * DAT_00baa804;
      local_ac = (float)(param_1[0x68] ^ DAT_00bacb70) * DAT_00baa804;
      iVar9 = FUN_006eef60();
      fVar14 = (float)param_1[0xdb];
      fVar15 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4;
      if ((NAN(fVar14) || NAN(DAT_00ba9fe4)) == (fVar14 == DAT_00ba9fe4)) {
        param_1[0xd9] =
             (int)(((float)param_1[0xe7] * local_ac * fVar15) / fVar14 + (float)param_1[0xd9]);
        param_1[0xd8] =
             (int)(((float)param_1[0xe7] * local_c4 * fVar15) / fVar14 + (float)param_1[0xd8]);
      }
    }
    break;
  case 1:
    if (local_b0 * DAT_00baaabc < (float)param_1[0xe9]) {
      pcVar11 = "KeyChange";
LAB_005a4f23:
      param_1[0x2d9] = 4;
      FUN_0040a380(pcVar11,0);
      local_ac = 3.75548e-43;
      FUN_00956780();
      FUN_0092dc30(local_ac,0x3f333333,2,0,0x3f800000,0);
    }
    goto LAB_005a4f7f;
  case 2:
    if ((local_b0 * DAT_00baa950 < (float)param_1[0xe9]) &&
       ((((fVar14 = DAT_00baad50, param_1[0x1f] == 0 ||
          (fVar14 = (float)param_1[0x22], (float)param_1[0x22] < DAT_00baa7b8)) &&
         ((DAT_00baa7b8 <= (float)param_1[0xe7] * (float)param_1[0x53] + fVar14 &&
          (cVar2 = FUN_0040a4d0("SpinningBomb"), cVar2 != '\0')))) ||
        (cVar2 = FUN_0040a4d0("IdleBomb"), cVar2 != '\0')))) {
      FUN_0040a380("PulseBomb",0);
      param_1[0x53] = (int)(DAT_00baa454 / local_b0);
    }
    if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
      ppbVar6 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar6[5]) {
        ppbVar6 = (byte **)*ppbVar6;
      }
      pcVar11 = "PulseBomb";
      do {
        bVar1 = *(byte *)ppbVar6;
        bVar13 = bVar1 < (byte)*pcVar11;
        if (bVar1 != *pcVar11) {
LAB_005a5090:
          uVar3 = -(uint)bVar13 | 1;
          goto LAB_005a5095;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar6 + 1);
        bVar13 = bVar1 < ((byte *)pcVar11)[1];
        if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_005a5090;
        ppbVar6 = (byte **)((int)ppbVar6 + 2);
        pcVar11 = (char *)((byte *)pcVar11 + 2);
      } while (bVar1 != 0);
      uVar3 = 0;
LAB_005a5095:
      if (uVar3 == 0) {
        local_28 = 0;
        uVar4 = 0;
        local_30 = 0x3f000000;
        local_40 = ZEXT816(0);
        local_2c = 0x3e800000;
        local_50 = _DAT_00bac7b0;
        uStack_4c = _UNK_00bac7b4;
        uStack_48 = _UNK_00bac7b8;
        uStack_44 = _UNK_00bac7bc;
        FUN_00700060(param_1 + 0xcf,0x42200000,0,0,0,0,&local_50,param_1,0x3fe66666,1,4,0,0);
        if (param_1[0xc] == 1) {
          uVar4 = FUN_006eef60();
          uVar4 = uVar4 & 1;
        }
        uVar7 = FUN_00407170();
        FUN_00703330(param_1 + 0xcf,0x5f,6,0x41200000,uVar7,0x47c35000,0);
        local_b1 = '\x01';
      }
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    if (uVar4 != 0) {
      piVar5 = param_1 + 0xcf;
      do {
        uVar7 = FUN_006eef60();
        local_b0 = (float)FUN_00428b20(5,0x14,piVar5,&DAT_00c7b640,0,0,uVar7);
        if (local_b0 != 0.0) {
          iVar9 = FUN_006eef60();
          local_c4 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
          local_c4 = local_c4 + local_c4;
          fVar14 = local_c4;
          FUN_0041d520();
          local_ac = fVar14;
          fVar14 = local_c4;
          FUN_0041d540();
          *(float *)((int)local_b0 + 0x360) = fVar14 + fVar14;
          *(float *)((int)local_b0 + 0x364) = local_ac + local_ac;
        }
        uVar4 = uVar4 - 1;
        param_1 = local_c0;
      } while (uVar4 != 0);
    }
    if (local_b1 == '\0') break;
    goto LAB_005a5ac6;
  case 3:
    if ((local_b0 * DAT_00baaa44 < (float)param_1[0xe9]) &&
       ((((fVar14 = DAT_00baad50, param_1[0x1f] == 0 ||
          (fVar14 = (float)param_1[0x22], (float)param_1[0x22] < DAT_00baa7b8)) &&
         (DAT_00baa7b8 <= (float)param_1[0xe7] * (float)param_1[0x53] + fVar14)) &&
        (cVar2 = FUN_0040a4d0("SpinningHeart"), cVar2 != '\0')))) {
      pcVar11 = "HeartChange";
      goto LAB_005a4f23;
    }
LAB_005a4f7f:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  }
switchD_005a4b56_caseD_4:
  if (*(char *)((int)param_1 + 0x173) == '\0') {
    if (param_1[0x2d9] == 0x10) goto LAB_005a5a9f;
  }
  else {
    iVar9 = FUN_006eef60();
    local_ac = 5.983544e-43;
    local_c0 = (int *)((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa1f8 + DAT_00baa4b0);
    FUN_00956780();
    FUN_0092dc30(local_ac,0x3f800000,0x1e,0,local_c0,0);
    *(undefined *)((int)param_1 + 0x173) = 0;
    param_1[0x62] = 0;
    param_1[0x61] = 0;
    FUN_006ae630();
    uStack_70 = _UNK_00bac7bc;
    uStack_74 = _UNK_00bac7b8;
    uStack_78 = _UNK_00bac7b4;
    local_7c = _DAT_00bac7b0;
    param_1[0x5a] = param_1[0x5a] | 1;
    param_1[0x5b] = param_1[0x5b];
    local_6c = ZEXT816(0);
    local_5c = 0;
    local_58 = 0;
    local_54 = 0;
    FUN_00703330(param_1 + 0xcf,0x5f,6,0x40a00000,&local_7c,0x47c35000,0);
    ppbVar6 = (byte **)param_1[0x1f];
    if (ppbVar6 == (byte **)0x0) {
LAB_005a5a4e:
      cVar2 = FUN_0040a5d0("Crumble",1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar10 = ppbVar6;
      if (&DAT_0000000f < ppbVar6[5]) {
        ppbVar10 = (byte **)*ppbVar6;
      }
      pcVar11 = "Crumble";
      do {
        bVar1 = *(byte *)ppbVar10;
        bVar13 = bVar1 < (byte)*pcVar11;
        if (bVar1 != *pcVar11) {
LAB_005a5a30:
          uVar3 = -(uint)bVar13 | 1;
          goto LAB_005a5a35;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar10 + 1);
        bVar13 = bVar1 < ((byte *)pcVar11)[1];
        if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_005a5a30;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pcVar11 = (char *)((byte *)pcVar11 + 2);
      } while (bVar1 != 0);
      uVar3 = 0;
LAB_005a5a35:
      if ((uVar3 != 0) || ((*(byte *)(ppbVar6 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_005a5a4e;
    }
    param_1[0x53] = 0x3f800000;
    param_1[0x2d9] = 0x10;
    param_1[0xd7] = 0;
    param_1[0x57] = 0;
LAB_005a5a9f:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa120);
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
LAB_005a5ac6:
      (**(code **)(*param_1 + 0x28))();
    }
  }
LAB_005a5acd:
  if (local_e4[0] == '\0') {
    if (DAT_00c7de78 == 0) {
      puVar12 = &DAT_00c7f618;
    }
    else {
      puVar12 = (uint *)(DAT_00c7de78 + 0x30);
    }
    if (local_e0 != 0) {
      uVar4 = *(uint *)(local_e0 + -4);
      uVar3 = *puVar12;
      *puVar12 = *puVar12 - uVar4;
      puVar12[1] = puVar12[1] - (uint)(uVar3 < uVar4);
      free((uint *)(local_e0 + -4));
    }
  }
LAB_005a5b10:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

