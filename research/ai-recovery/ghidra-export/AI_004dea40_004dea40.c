/* Local J460 decompiler output.
 * VA: 0x004dea40
 * Entry: 004dea40
 * Dispatcher: 0x006c2990
 * Types: 861
 * Identities: 861.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004df3f0; instructions=619
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=861; identities=861.0.0; dispatcher=0x006c2990;
   end=0x004df3f0; instructions=619 */

void __fastcall AI_004dea40(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined *puVar6;
  char cVar7;
  uint uVar8;
  byte **ppbVar9;
  uint uVar10;
  int iVar11;
  undefined4 uVar12;
  int *piVar13;
  float *pfVar14;
  byte *pbVar15;
  undefined4 *puVar16;
  int iVar17;
  uint *puVar18;
  bool bVar19;
  float fVar20;
  float fVar21;
  undefined8 uVar22;
  char local_68 [4];
  int local_64;
  uint local_5c;
  undefined local_58 [8];
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  float *local_3c;
  int local_38;
  float local_34;
  int local_30;
  byte *local_2c;
  float local_28;
  char local_21;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3aa0;
  local_1c = ExceptionList;
  uVar8 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_30 = *(int *)(DAT_00c71678 + 0x18300);
  local_28 = (float)((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
  if (*(int *)(param_1 + 0xb64) != 0) {
    puStack_20 = &stack0xfffffffc;
    if (*(int *)(param_1 + 0xb64) != 3) goto LAB_004ded67;
    if ((*(int *)(param_1 + 0x7c) == 0) ||
       (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) == '\0')) {
      iVar11 = *(int *)(param_1 + 0xbc0);
      if (iVar11 == 5) {
        *(undefined4 *)(param_1 + 0xbc0) = 6;
        puStack_20 = &stack0xfffffffc;
        uVar22 = FUN_00435c70();
        (*(code *)((ulonglong)uVar22 >> 0x20))((int)uVar22);
        goto LAB_004ded67;
      }
      local_2c = (&PTR_DAT_00b606ac)[iVar11];
      *(int *)(param_1 + 0xbc0) = iVar11 + 1;
      ppbVar2 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar2 != (byte **)0x0) {
        ppbVar9 = ppbVar2;
        pbVar15 = local_2c;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar9 = (byte **)*ppbVar2;
        }
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar19 = bVar1 < *pbVar15;
          if (bVar1 != *pbVar15) {
LAB_004deb40:
            uVar10 = -(uint)bVar19 | 1;
            goto LAB_004deb45;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar19 = bVar1 < pbVar15[1];
          if (bVar1 != pbVar15[1]) goto LAB_004deb40;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pbVar15 = pbVar15 + 2;
        } while (bVar1 != 0);
        uVar10 = 0;
LAB_004deb45:
        if ((uVar10 == 0) &&
           ((puStack_20 = &stack0xfffffffc, *(byte *)(ppbVar2 + 0xd) == 0 ||
            (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) != '\0')))) goto LAB_004deb7a;
      }
      puStack_20 = &stack0xfffffffc;
      cVar7 = FUN_0040a5d0(local_2c,1);
      if (cVar7 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
LAB_004deb7a:
    iVar11 = 0;
    if (0 < (int)local_28) {
      iVar17 = *(int *)(param_1 + 0x410);
      do {
        *(int *)(param_1 + 0x410) = iVar17 + 1;
        uVar10 = FUN_006eef60(uVar8);
        iVar17 = *(int *)(param_1 + 0x410);
        if (uVar10 % 3 == 0) {
          iVar17 = iVar17 + 1;
          *(int *)(param_1 + 0x410) = iVar17;
        }
        if ((0x23 < iVar17) && (*(int *)(param_1 + 0xbc0) < 5)) {
          local_2c = (&PTR_s_Transition0_00b6065c)[*(int *)(param_1 + 0xbc0)];
          *(undefined4 *)(param_1 + 0x410) = 0;
          ppbVar2 = *(byte ***)(param_1 + 0x7c);
          if (ppbVar2 == (byte **)0x0) goto LAB_004dec44;
          ppbVar9 = ppbVar2;
          pbVar15 = local_2c;
          if (&DAT_0000000f < ppbVar2[5]) {
            ppbVar9 = (byte **)*ppbVar2;
          }
          goto LAB_004dec00;
        }
        iVar11 = iVar11 + 1;
      } while (iVar11 < (int)local_28);
    }
    goto LAB_004ded67;
  }
  *(undefined4 *)(param_1 + 0xbc0) = 0;
  *(undefined4 *)(param_1 + 0x410) = 0;
  *(undefined4 *)(param_1 + 0xb64) = 3;
  *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
  *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
  ppbVar2 = *(byte ***)(param_1 + 0x7c);
  if (ppbVar2 == (byte **)0x0) {
LAB_004decfe:
    cVar7 = FUN_0040a5d0(&DAT_00b604e8,1);
    puVar6 = puStack_20;
    if (cVar7 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
      puVar6 = puStack_20;
    }
  }
  else {
    ppbVar9 = ppbVar2;
    if (&DAT_0000000f < ppbVar2[5]) {
      ppbVar9 = (byte **)*ppbVar2;
    }
    puVar16 = &DAT_00b604e8;
    do {
      bVar1 = *(byte *)ppbVar9;
      bVar19 = bVar1 < *(byte *)puVar16;
      if (bVar1 != *(byte *)puVar16) {
LAB_004dece0:
        uVar10 = -(uint)bVar19 | 1;
        goto LAB_004dece5;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar9 + 1);
      bVar19 = bVar1 < *(byte *)((int)puVar16 + 1);
      if (bVar1 != *(byte *)((int)puVar16 + 1)) goto LAB_004dece0;
      ppbVar9 = (byte **)((int)ppbVar9 + 2);
      puVar16 = (undefined4 *)((int)puVar16 + 2);
    } while (bVar1 != 0);
    uVar10 = 0;
LAB_004dece5:
    if ((uVar10 != 0) ||
       ((puVar6 = &stack0xfffffffc, *(byte *)(ppbVar2 + 0xd) != 0 &&
        (puVar6 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) == '\0')))) goto LAB_004decfe;
  }
  puStack_20 = puVar6;
  uVar5 = uRam00c34e8c;
  uVar4 = uRam00c34e88;
  uVar12 = uRam00c34e84;
  if ((undefined4 *)(param_1 + 0x1e4) != (undefined4 *)&DAT_00c34e80) {
    *(undefined4 *)(param_1 + 0x1e4) = _DAT_00c34e80;
    *(undefined4 *)(param_1 + 0x1e8) = uVar12;
    *(undefined4 *)(param_1 + 0x1ec) = uVar4;
    *(undefined4 *)(param_1 + 0x1f0) = uVar5;
    uVar5 = uRam00c34e9c;
    uVar4 = uRam00c34e98;
    uVar12 = uRam00c34e94;
    *(undefined4 *)(param_1 + 500) = _DAT_00c34e90;
    *(undefined4 *)(param_1 + 0x1f8) = uVar12;
    *(undefined4 *)(param_1 + 0x1fc) = uVar4;
    *(undefined4 *)(param_1 + 0x200) = uVar5;
    *(undefined8 *)(param_1 + 0x204) = DAT_00c34ea0;
    *(undefined4 *)(param_1 + 0x20c) = DAT_00c34ea8;
  }
  *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb;
  *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
LAB_004ded67:
  pfVar14 = (float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *pfVar14;
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
  if (*(char *)(param_1 + 0x173) != '\0') {
    iVar11 = *(int *)(param_1 + 0xbc0);
    local_3c = pfVar14;
    if ((0.0 < *(float *)(&UNK_00b60640 + iVar11 * 4)) &&
       ((*(uint *)(param_1 + 0x168) & 0x1000000) == 0)) {
      iVar11 = FUN_006eef60(uVar8);
      fVar20 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa1f8 + DAT_00baa500;
      local_28 = *(float *)(&UNK_00b60640 + *(int *)(param_1 + 0xbc0) * 4) * fVar20 * DAT_00c37940;
      local_2c = (byte *)(*(float *)(&UNK_00b60640 + *(int *)(param_1 + 0xbc0) * 4) *
                         fVar20 * DAT_00c3793c);
      uVar12 = FUN_006eef60();
      iVar11 = FUN_006fe410(1000,0x16,pfVar14,&DAT_00c7b640,param_1,0,uVar12,0);
      *(byte **)(iVar11 + 0xe4) = local_2c;
      *(float *)(iVar11 + 0xe8) = local_28;
      uVar12 = *(undefined4 *)(&UNK_00b6068c + *(int *)(param_1 + 0xbc0) * 4);
      *(undefined4 *)(iVar11 + 0x45c) = uVar12;
      *(undefined4 *)(iVar11 + 0x460) = uVar12;
      uVar12 = FUN_006eef60();
      piVar13 = (int *)FUN_006fe410(1000,7,pfVar14,&DAT_00c7b640,0,0,uVar12,0);
      iVar11 = FUN_006eef60();
      fVar21 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa2d0 + DAT_00baa2d0;
      fVar20 = fVar21 * DAT_00c3793c;
      piVar13[0x3a] = (int)(fVar21 * DAT_00c37940 * local_28);
      piVar13[0x39] = (int)(fVar20 * (float)local_2c);
      (**(code **)(*piVar13 + 0xc))();
      iVar11 = *(int *)(param_1 + 0xbc0);
    }
    pfVar14 = (float *)(param_1 + 0x33c);
    local_38 = 0;
    if (0 < *(int *)(&UNK_00b60670 + iVar11 * 4)) {
      do {
        AI_0041af60(local_68,0x355,0xffffffff,0xffffffff,0,0);
        local_21 = 0x1f < local_5c;
        if (local_68[0] == '\0') {
          if (DAT_00c7de78 == 0) {
            puVar18 = &DAT_00c7f618;
          }
          else {
            puVar18 = (uint *)(DAT_00c7de78 + 0x30);
          }
          if (local_64 != 0) {
            uVar3 = *(uint *)(local_64 + -4);
            uVar10 = *puVar18;
            *puVar18 = *puVar18 - uVar3;
            puVar18[1] = puVar18[1] - (uint)(uVar10 < uVar3);
            free((void *)(local_64 + -4));
          }
          local_14 = 0xffffffff;
        }
        if (local_21 != '\0') break;
        iVar11 = FUN_006eef60();
        local_28 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa704;
        local_28 = local_28 + local_28;
        iVar11 = FUN_006eef60();
        local_34 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                   DAT_00ba9ff4;
        fVar20 = local_28;
        FUN_0041d540();
        local_48 = fVar20 * local_34 * DAT_00baa9a0 + *pfVar14;
        local_40 = pfVar14[1];
        local_2c = (byte *)local_48;
        FUN_0041d520();
        local_44 = local_28 * local_34 * DAT_00baa9a0 + pfVar14[1];
        iVar11 = (int)(((float)local_2c - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
        iVar17 = (int)((local_44 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
        if ((((iVar11 < 0) || (*(int *)(local_30 + 0xc) <= iVar11)) || (iVar17 < 0)) ||
           (pfVar14 = (float *)(param_1 + 0x33c), *(int *)(local_30 + 0x10) <= iVar17)) {
          iVar11 = -1;
        }
        else {
          iVar11 = *(int *)(local_30 + 0xc) * iVar17 + iVar11;
        }
        local_28 = local_44;
        iVar11 = FUN_007f0800(iVar11);
        fVar20 = local_40;
        if (0 < iVar11) {
          pfVar14 = (float *)FUN_0081e520(local_58,&local_48,0x42800000);
          iVar11 = FUN_006eef60();
          local_28 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa8fc - DAT_00baa870;
          iVar11 = FUN_006eef60();
          local_28 = local_28 + pfVar14[1];
          local_2c = (byte *)(((float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)])
                               * DAT_00ba9ff4 * DAT_00baa8fc - DAT_00baa870) + *pfVar14);
          pfVar14 = local_3c;
          fVar20 = local_3c[1];
          local_48 = (float)local_2c;
          local_44 = local_28;
        }
        local_2c = (byte *)((float)local_2c - *pfVar14);
        local_28 = local_28 - fVar20;
        fVar20 = (float)local_2c * (float)local_2c + local_28 * local_28;
        FUN_00435a50();
        if (0.0 < fVar20) {
          local_2c = (byte *)((DAT_00baa454 / fVar20) * (float)local_2c);
          local_28 = local_28 * (DAT_00baa454 / fVar20);
        }
        iVar11 = FUN_006eef60();
        local_40 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa854 - DAT_00baa8d0;
        iVar11 = FUN_006eef60();
        fVar20 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa854;
        local_4c = fVar20 * local_28 + pfVar14[1];
        local_50 = fVar20 * (float)local_2c + *pfVar14;
        FUN_004d8910(&local_48);
        local_38 = local_38 + 1;
      } while (local_38 < *(int *)(&UNK_00b60670 + *(int *)(param_1 + 0xbc0) * 4));
    }
    if (3 < *(int *)(param_1 + 0xbc0)) {
      iVar11 = FUN_006eef60(uVar8);
      local_40 = DAT_00baadc0 -
                 (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa950;
      uVar8 = FUN_006eef60();
      uVar12 = FUN_006eef60();
      piVar13 = (int *)FUN_00428b20(1000,2,param_1 + 0x33c,&DAT_00c7b640,0,(uVar8 & 1 ^ 1) + 3,
                                    uVar12);
      (**(code **)(*piVar13 + 0x3c))(param_1 + 0x1e4,0xffffffff,0xff,0,1);
      piVar13[0x37] = 0;
      piVar13[0x38] = (int)local_40;
      piVar13[0xd6] = 0x41200000;
      if (*(int *)(param_1 + 0xbc0) == 6) {
        uVar12 = FUN_006eef60();
        piVar13 = (int *)FUN_006fe410(0x3d,6,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar12,0);
        piVar13[0x5a] = piVar13[0x5a] & 0xfffffffb;
        piVar13[0x5b] = piVar13[0x5b] | 0x400;
        (**(code **)(*piVar13 + 0xc))();
      }
    }
  }
  ExceptionList = local_1c;
  return;
  while( true ) {
    bVar1 = *(byte *)((int)ppbVar9 + 1);
    bVar19 = bVar1 < pbVar15[1];
    if (bVar1 != pbVar15[1]) goto LAB_004dec20;
    ppbVar9 = (byte **)((int)ppbVar9 + 2);
    pbVar15 = pbVar15 + 2;
    if (bVar1 == 0) break;
LAB_004dec00:
    bVar1 = *(byte *)ppbVar9;
    bVar19 = bVar1 < *pbVar15;
    if (bVar1 != *pbVar15) {
LAB_004dec20:
      uVar10 = -(uint)bVar19 | 1;
      goto LAB_004dec25;
    }
    if (bVar1 == 0) break;
  }
  uVar10 = 0;
LAB_004dec25:
  if ((uVar10 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0')))) {
LAB_004dec44:
    cVar7 = FUN_0040a5d0(local_2c,1);
    if (cVar7 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
  }
  goto LAB_004ded67;
}

