/* Local J460 decompiler output.
 * VA: 0x004e4970
 * Entry: 004e4970
 * Dispatcher: 0x006c2990
 * Types: 833
 * Identities: 833.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004e50d0; instructions=464
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=833; identities=833.0.0; dispatcher=0x006c2990;
   end=0x004e50d0; instructions=464 */

void __fastcall AI_004e4970(int param_1)

{
  float *pfVar1;
  byte bVar2;
  byte **ppbVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined *puVar7;
  char cVar8;
  uint uVar9;
  undefined4 uVar10;
  int iVar11;
  uint uVar12;
  byte **ppbVar13;
  byte *pbVar14;
  bool bVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  undefined4 local_6c [8];
  undefined4 local_4c;
  undefined4 uStack_48;
  undefined4 local_44;
  char local_40 [4];
  int local_3c;
  float local_38;
  float local_34;
  float local_2c;
  float local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3c4d;
  local_1c = ExceptionList;
  uVar9 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar11 = *(int *)(param_1 + 0xb64);
  local_2c = DAT_00baa454;
  local_24 = uVar9;
  if (iVar11 != 0) {
    if (iVar11 != 3) {
      puStack_20 = &stack0xfffffffc;
      if (iVar11 == 8) {
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
        local_2c = 0.0;
        puStack_20 = &stack0xfffffffc;
        if ((*(int *)(param_1 + 0x7c) != 0) &&
           (puStack_20 = &stack0xfffffffc, cVar8 = FUN_0040add0("Shoot"), cVar8 != '\0')) {
          uVar9 = FUN_006eef60();
          local_28 = ((float)((double)(uVar9 & 3) + DAT_00bacb00) * DAT_00baa9b4 + DAT_00baa910) *
                     DAT_00baa088;
          fVar16 = local_28;
          FUN_0041d540();
          local_34 = fVar16 * DAT_00baa87c;
          fVar16 = local_28;
          FUN_0041d520();
          fVar16 = fVar16 * DAT_00baa87c;
          *(undefined4 *)(param_1 + 0xb64) = 3;
          *(float *)(param_1 + 0x360) = local_34;
          *(float *)(param_1 + 0x364) = fVar16;
          cVar8 = FUN_004e4870();
          if (cVar8 != '\0') {
            FUN_006d6ba0(0x1d7,0x3f800000,10,0,0x3f800000);
            uVar10 = FUN_006eef60();
            iVar11 = FUN_00428b20(0x21,10,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar10);
            *(undefined4 *)(iVar11 + 0x334) = *(undefined4 *)(iVar11 + 0x33c);
            fVar16 = DAT_00baa454;
            *(undefined4 *)(iVar11 + 0x338) = *(undefined4 *)(iVar11 + 0x340);
            if (*(float *)(param_1 + 0xe4) <= fVar16) {
              *(float *)(iVar11 + 0x380) = *(float *)(iVar11 + 0x380) * DAT_00baa330;
            }
          }
          uVar9 = FUN_006eef60();
          uVar12 = FUN_006eef60();
          *(uint *)(param_1 + 0xba4) = uVar9 % 0x1e + 0xf + uVar12 % 0x1e;
        }
      }
      goto LAB_004e4e87;
    }
    if ((*(int *)(param_1 + 0x7c) == 0) ||
       (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) == '\0')) {
      ppbVar3 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar3 != (byte **)0x0) {
        ppbVar13 = ppbVar3;
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar13 = (byte **)*ppbVar3;
        }
        pbVar14 = &DAT_00b1bc54;
        do {
          bVar2 = *(byte *)ppbVar13;
          bVar15 = bVar2 < *pbVar14;
          if (bVar2 != *pbVar14) {
LAB_004e4bb0:
            uVar9 = -(uint)bVar15 | 1;
            goto LAB_004e4bb5;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppbVar13 + 1);
          bVar15 = bVar2 < pbVar14[1];
          if (bVar2 != pbVar14[1]) goto LAB_004e4bb0;
          ppbVar13 = (byte **)((int)ppbVar13 + 2);
          pbVar14 = pbVar14 + 2;
        } while (bVar2 != 0);
        uVar9 = 0;
LAB_004e4bb5:
        if ((uVar9 == 0) &&
           ((puStack_20 = &stack0xfffffffc, *(byte *)(ppbVar3 + 0xd) == 0 ||
            (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) != '\0')))) goto LAB_004e4bec;
      }
      puStack_20 = &stack0xfffffffc;
      cVar8 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar8 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
LAB_004e4bec:
    iVar11 = *(int *)(param_1 + 0xba4);
    if (0 < iVar11) {
      iVar11 = iVar11 + -1;
      *(int *)(param_1 + 0xba4) = iVar11;
    }
    if (((iVar11 != 0) || ((*(uint *)(param_1 + 0x168) & 0x1000a00) != 0)) ||
       (cVar8 = FUN_004e4870(), cVar8 == '\0')) goto LAB_004e4e87;
    FUN_006d0c60(local_40,0x21,10);
    local_14 = 0;
    if ((int)local_34 <
        ((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x10) + -2) *
        (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc) + -2)) / 5) {
      fVar16 = 0.0;
      if (local_34 != 0.0) {
        fVar17 = DAT_00baacc4;
        do {
          iVar11 = *(int *)(local_3c + (int)fVar16 * 4);
          fVar16 = (float)((int)fVar16 + 1);
          fVar18 = *(float *)(param_1 + 0x340) - *(float *)(iVar11 + 0x340);
          fVar20 = *(float *)(param_1 + 0x33c) - *(float *)(iVar11 + 0x33c);
          fVar20 = fVar18 * fVar18 + fVar20 * fVar20;
          if (fVar17 <= fVar20) {
            fVar20 = fVar17;
          }
          fVar17 = fVar20;
        } while ((uint)fVar16 < (uint)local_34);
        if (fVar20 <= DAT_00baab54) goto LAB_004e4d09;
      }
      cVar8 = FUN_0040a5d0("Attack",1);
      if (cVar8 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      *(undefined4 *)(param_1 + 0xb64) = 8;
    }
LAB_004e4d09:
    local_14 = 0xffffffff;
    if (local_40[0] == '\0') {
      local_14 = 1;
      FUN_00a648b0(0,0);
      local_14 = 0xffffffff;
    }
    goto LAB_004e4e87;
  }
  *(undefined4 *)(param_1 + 0xb64) = 3;
  ppbVar3 = *(byte ***)(param_1 + 0x7c);
  if (ppbVar3 == (byte **)0x0) {
LAB_004e4d9e:
    cVar8 = FUN_0040a5d0(&DAT_00b1bc54,1);
    puVar7 = puStack_20;
    if (cVar8 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
      puVar7 = puStack_20;
    }
  }
  else {
    ppbVar13 = ppbVar3;
    if (&DAT_0000000f < ppbVar3[5]) {
      ppbVar13 = (byte **)*ppbVar3;
    }
    pbVar14 = &DAT_00b1bc54;
    do {
      bVar2 = *(byte *)ppbVar13;
      bVar15 = bVar2 < *pbVar14;
      if (bVar2 != *pbVar14) {
LAB_004e4d80:
        uVar12 = -(uint)bVar15 | 1;
        goto LAB_004e4d85;
      }
      if (bVar2 == 0) break;
      bVar2 = *(byte *)((int)ppbVar13 + 1);
      bVar15 = bVar2 < pbVar14[1];
      if (bVar2 != pbVar14[1]) goto LAB_004e4d80;
      ppbVar13 = (byte **)((int)ppbVar13 + 2);
      pbVar14 = pbVar14 + 2;
    } while (bVar2 != 0);
    uVar12 = 0;
LAB_004e4d85:
    if ((uVar12 != 0) ||
       ((puVar7 = &stack0xfffffffc, *(byte *)(ppbVar3 + 0xd) != 0 &&
        (puVar7 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) == '\0')))) goto LAB_004e4d9e;
  }
  puStack_20 = puVar7;
  uVar9 = FUN_006eef60(uVar9);
  uVar12 = FUN_006eef60();
  *(uint *)(param_1 + 0xba4) = uVar12 % 0x1e + 0xf + uVar9 % 0x1e;
  iVar11 = FUN_006eef60();
  local_34 = (float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa704;
  local_34 = local_34 + local_34;
  local_28 = local_34;
  FUN_0041d540();
  fVar16 = local_34;
  FUN_0041d520();
  *(float *)(param_1 + 0x360) = local_28;
  uVar6 = _UNK_00babaec;
  uVar5 = _UNK_00babae8;
  uVar4 = _UNK_00babae4;
  uVar10 = _DAT_00babae0;
  *(float *)(param_1 + 0x364) = fVar16;
  local_4c = 0x3f4ccccd;
  uStack_48 = 0x3f4ccccd;
  local_44 = 0x3f4ccccd;
  if ((undefined4 *)(param_1 + 0x1e4) != local_6c) {
    *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
    *(undefined8 *)(param_1 + 0x204) = 0x3f4ccccd3f4ccccd;
    *(undefined4 *)(param_1 + 0x1e4) = uVar10;
    *(undefined4 *)(param_1 + 0x1e8) = uVar4;
    *(undefined4 *)(param_1 + 0x1ec) = uVar5;
    *(undefined4 *)(param_1 + 0x1f0) = uVar6;
    *(undefined4 *)(param_1 + 0x20c) = 0x3f4ccccd;
  }
LAB_004e4e87:
  pfVar1 = (float *)(param_1 + 0x33c);
  FUN_00812f50(&local_38,pfVar1,0,0,0);
  *pfVar1 = local_38;
  *(float *)(param_1 + 0x340) = local_34;
  uVar9 = *(uint *)(param_1 + 0x168);
  if (((uVar9 & 0x200) == 0) || ((uVar9 & 0x100) != 0)) {
    fVar16 = DAT_00baa454;
    if (*(float *)(param_1 + 0x364) <= DAT_00baa120 && DAT_00baa120 != *(float *)(param_1 + 0x364))
    {
      fVar16 = DAT_00baad50;
    }
    fVar17 = DAT_00baad50;
    if (0.0 <= *(float *)(param_1 + 0x360)) {
      fVar17 = DAT_00baa454;
    }
    fVar20 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    *(float *)(param_1 + 0x36c) = fVar20;
    if (NAN(fVar20) == (fVar20 == 0.0)) {
      *(float *)(param_1 + 0x364) =
           (*(float *)(param_1 + 0x39c) * fVar16 * local_2c) / fVar20 + *(float *)(param_1 + 0x364);
      *(float *)(param_1 + 0x360) =
           (*(float *)(param_1 + 0x39c) * fVar17 * local_2c) / fVar20 + *(float *)(param_1 + 0x360);
    }
    if ((uVar9 & 0x1000800) != 0) {
      iVar11 = FUN_006be840();
      local_28 = *(float *)(param_1 + 0x340) - *(float *)(iVar11 + 0x340);
      local_2c = *pfVar1 - *(float *)(iVar11 + 0x33c);
      fVar17 = local_28 * local_28 + local_2c * local_2c;
      FUN_00435a50();
      fVar16 = (DAT_00baaa78 - fVar17) * DAT_00baa08c;
      if (fVar16 <= 0.0) {
        fVar16 = 0.0;
      }
      if (DAT_00baa454 <= fVar16) {
        fVar16 = DAT_00baa454;
      }
      if ((0.0 < fVar16) && (fVar20 = *(float *)(param_1 + 0x36c), NAN(fVar20) == (fVar20 == 0.0)))
      {
        fVar18 = local_2c;
        fVar19 = local_28;
        if (0.0 < fVar17) {
          fVar18 = local_2c * (DAT_00baa454 / fVar17);
          fVar19 = local_28 * (DAT_00baa454 / fVar17);
        }
        *(float *)(param_1 + 0x360) =
             (fVar18 * fVar16 * *(float *)(param_1 + 0x39c)) / fVar20 + *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             (fVar19 * fVar16 * *(float *)(param_1 + 0x39c)) / fVar20 + *(float *)(param_1 + 0x364);
      }
    }
  }
  else {
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    FUN_007e6300(0);
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

