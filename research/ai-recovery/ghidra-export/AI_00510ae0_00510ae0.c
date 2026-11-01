/* Local J460 decompiler output.
 * VA: 0x00510ae0
 * Entry: 00510ae0
 * Dispatcher: 0x006c2990
 * Types: 26
 * Identities: 26.0.0,26.1.0,26.2.0
 * Evidence: dispatcher=0x006c2990; end=0x005111b0; instructions=432
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=26; identities=26.0.0,26.1.0,26.2.0;
   dispatcher=0x006c2990; end=0x005111b0; instructions=432 */

void __fastcall AI_00510ae0(int param_1)

{
  float *pfVar1;
  byte bVar2;
  byte **ppbVar3;
  char cVar4;
  undefined4 uVar5;
  int iVar6;
  float *pfVar7;
  uint uVar8;
  int *piVar9;
  byte **ppbVar10;
  float *extraout_ECX;
  byte *pbVar11;
  bool bVar12;
  float fVar13;
  float fVar14;
  float local_124;
  float local_120;
  float local_11c;
  float local_118;
  int *local_114;
  undefined4 local_110;
  undefined4 local_10c;
  undefined4 uStack_108;
  undefined4 uStack_104;
  undefined4 uStack_100;
  undefined local_fc [16];
  undefined4 local_ec;
  undefined4 local_e8;
  undefined4 local_e4;
  undefined local_e0 [20];
  undefined4 local_cc;
  uint local_88;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&local_124;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    if (*(int *)(param_1 + 0x2c) == 2) {
      uVar5 = FUN_006eef60();
      uVar5 = FUN_006fe410(0x60,0,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar5,0);
      iVar6 = __RTDynamicCast(uVar5,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                              &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
      piVar9 = (int *)(iVar6 + 0x3bc);
      if (*(int *)(iVar6 + 0x3bc) != 0) {
        local_114 = piVar9;
        FUN_004cf210(&local_114);
      }
      *piVar9 = param_1;
      FUN_004cdcf0(piVar9);
      FUN_00aef12b();
      return;
    }
    goto LAB_00511192;
  }
  pfVar1 = (float *)(param_1 + 0x33c);
  local_114 = DAT_00baa81c;
  pfVar7 = (float *)FUN_00812f50(&local_11c,pfVar1,0x41f00000,0,0x41200000);
  *pfVar1 = *pfVar7;
  *(float *)(param_1 + 0x340) = pfVar7[1];
  uVar8 = FUN_006eef60();
  if (uVar8 % 10 == 0) {
    iVar6 = FUN_006eef60();
    FUN_006b64d0((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa2d0 + DAT_00baa280);
  }
  pfVar7 = (float *)FUN_006bec40(&local_11c,0);
  local_124 = *pfVar7 - *pfVar1;
  local_120 = pfVar7[1] - *(float *)(param_1 + 0x340);
  if (*(int *)(param_1 + 0xf1c) != -1) {
    pfVar7 = (float *)FUN_006d82d0(&local_11c);
    local_124 = *pfVar7;
    local_120 = pfVar7[1];
  }
  if (*(int *)(param_1 + 0xb64) == 4) {
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(*(int *)(param_1 + 0x7c) + 0x34) == '\0')) {
      FUN_0040a380(&DAT_00b1bc54,0);
    }
    if (((*(int *)(param_1 + 0x2c) != 1) && (*(int *)(param_1 + 0xba0) < 1)) &&
       (cVar4 = FUN_006cae60(0,7), cVar4 != '\0')) {
      *(undefined4 *)(param_1 + 0xb64) = 8;
      cVar4 = FUN_0040a5d0("Shoot",1);
      if (cVar4 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      *(undefined4 *)(param_1 + 0xba0) = 0x1c;
      FUN_006d9050(1);
      if (*(int *)(param_1 + 0xf1c) == -1) {
        *(bool *)(param_1 + 0x148) = local_124 < 0.0;
      }
      else {
        *(bool *)(param_1 + 0x148) =
             *(float *)(param_1 + 0xf20) <= 0.0 && *(float *)(param_1 + 0xf20) != 0.0;
      }
    }
    fVar13 = local_124 * local_124 + local_120 * local_120;
    FUN_00435a50();
    if (0.0 < fVar13) {
      fVar13 = DAT_00baa140 / fVar13;
      if (*(int *)(param_1 + 0x2c) == 1) {
        fVar13 = fVar13 * DAT_00baa6fc;
      }
      fVar14 = *(float *)(param_1 + 0x36c);
      if (NAN(fVar14) == (fVar14 == 0.0)) {
        *(float *)(param_1 + 0x364) =
             (*(float *)(param_1 + 0x39c) * local_120 * fVar13) / fVar14 +
             *(float *)(param_1 + 0x364);
        *(float *)(param_1 + 0x360) =
             (*(float *)(param_1 + 0x39c) * local_124 * fVar13) / fVar14 +
             *(float *)(param_1 + 0x360);
      }
    }
  }
  else if (*(int *)(param_1 + 0xb64) == 8) {
    FUN_006d9050(0);
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar4 = FUN_0040add0("Shoot");
      if (cVar4 != '\0') {
        uVar5 = 0xb2;
        if (*(int *)(param_1 + 0x2c) != 2) {
          uVar5 = 0x92;
        }
        FUN_006d6ba0(uVar5,0x3f800000,2,0,0x3f800000);
        iVar6 = FUN_006be840();
        fVar13 = *(float *)(iVar6 + 0x33c) - *pfVar1;
        fVar14 = *(float *)(iVar6 + 0x340) - *(float *)(param_1 + 0x340);
        local_124 = fVar14;
        local_120 = fVar13;
        local_11c = fVar13;
        local_118 = fVar14;
        if ((*(int *)(param_1 + 0xf1c) != -1) &&
           (cVar4 = FUN_00a10630(&DAT_00c7b640), cVar4 != '\0')) {
          fVar13 = *extraout_ECX;
          fVar14 = extraout_ECX[1];
          local_124 = fVar14;
          local_120 = fVar13;
          local_11c = fVar13;
          local_118 = fVar14;
        }
        iVar6 = FUN_006d8240();
        if (iVar6 < 1) {
          local_114 = DAT_00baa7b8;
        }
        fVar13 = fVar14 * fVar14 + fVar13 * fVar13;
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar13) {
          local_11c = local_120 * ((float)local_114 / fVar13);
          local_118 = local_124 * ((float)local_114 / fVar13);
        }
        uVar5 = FUN_00407170();
        local_114 = (int *)0x0;
        local_110 = 0xc1c00000;
        piVar9 = (int *)FUN_006d7cf0(&local_114,uVar5,&DAT_00c7b640);
        piVar9[0xd6] = 0x3f800000;
        FUN_004564b0(param_1);
        *(undefined *)(piVar9 + 0x52) = 1;
        AI_0043ef30();
        if (*(int *)(param_1 + 0x2c) == 2) {
          local_88 = local_88 | 1;
          local_10c = _DAT_00babd20;
          uStack_108 = _UNK_00babd24;
          uStack_104 = _UNK_00babd28;
          uStack_100 = _UNK_00babd2c;
          local_cc = 0x3fc00000;
          local_ec = 0x3e851eb8;
          local_e8 = 0x3d4ccccd;
          local_e4 = 0x3ecccccd;
          local_fc = _DAT_00bac700;
        }
        else {
          local_10c = _DAT_00babba0;
          uStack_108 = _UNK_00babba4;
          uStack_104 = _UNK_00babba8;
          uStack_100 = _UNK_00babbac;
          local_ec = 0x3f19999a;
          local_fc = ZEXT816(0);
          local_e8 = 0x3dcccccd;
          local_e4 = 0x3dcccccd;
        }
        (**(code **)(*piVar9 + 0x3c))(&local_10c,0xffffffff,0xff,0,1);
        FUN_006cb2e0(pfVar1,&local_11c,0,local_e0);
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_005110ee;
    }
    *(undefined4 *)(param_1 + 0xb64) = 4;
    ppbVar3 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar3 != (byte **)0x0) {
      ppbVar10 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar10 = (byte **)*ppbVar3;
      }
      pbVar11 = &DAT_00b1bc54;
      do {
        bVar2 = *(byte *)ppbVar10;
        bVar12 = bVar2 < *pbVar11;
        if (bVar2 != *pbVar11) {
LAB_005110b0:
          uVar8 = -(uint)bVar12 | 1;
          goto LAB_005110b5;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppbVar10 + 1);
        bVar12 = bVar2 < pbVar11[1];
        if (bVar2 != pbVar11[1]) goto LAB_005110b0;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pbVar11 = pbVar11 + 2;
      } while (bVar2 != 0);
      uVar8 = 0;
LAB_005110b5:
      if ((uVar8 == 0) && ((*(byte *)(ppbVar3 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
      goto LAB_005110ee;
    }
    cVar4 = FUN_0040a5d0(&DAT_00b1bc54,1);
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
  }
LAB_005110ee:
  if (0 < *(int *)(param_1 + 0xba0)) {
    *(int *)(param_1 + 0xba0) =
         ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
         *(int *)(param_1 + 0xba0);
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa400;
  if (((*(char *)(param_1 + 0x173) != '\0') && (*(int *)(param_1 + 0x2c) == 1)) &&
     ((*(uint *)(param_1 + 0x168) & 0x1000000) == 0)) {
    uVar5 = AI_0043ef30();
    local_11c = 8.0;
    local_118 = 0.0;
    FUN_006cb2e0(param_1 + 0x33c,&local_11c,6,uVar5);
    FUN_006d6ba0(0x92,0x3f800000,2,0,0x3f800000);
  }
LAB_00511192:
  FUN_00aef12b();
  return;
}

