/* Local J460 decompiler output.
 * VA: 0x004f76f0
 * Entry: 004f76f0
 * Dispatcher: 0x006c2990
 * Types: 864
 * Identities: 864.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004f7e60; instructions=502
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=864; identities=864.0.0; dispatcher=0x006c2990;
   end=0x004f7e60; instructions=502 */

void __fastcall AI_004f76f0(int *param_1)

{
  byte bVar1;
  byte **ppbVar2;
  char cVar3;
  int iVar4;
  float *pfVar5;
  float fVar6;
  byte **ppbVar7;
  float *pfVar8;
  byte *pbVar9;
  char *pcVar10;
  uint uVar11;
  float **ppfVar12;
  bool bVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  char local_5;
  
  iVar4 = FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),
                       *(undefined4 *)(DAT_00c71678 + 0x1830c));
  if (((*(uint *)(iVar4 + 0x44) >> 1 & 1) == 0) &&
     ((iVar4 = FUN_006d6c20(), 0 < iVar4 ||
      (8 < *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11ec))))) {
    local_5 = '\0';
  }
  else {
    local_5 = '\x01';
  }
  ppfVar12 = (float **)(DAT_00c71678 + 0x1baa8);
  uVar11 = 0;
  local_c = (float)((uint)local_c & 0xffffff00);
  local_14 = 0.0;
  local_10 = DAT_00baac7c;
  iVar4 = DAT_00c71678;
  fVar15 = DAT_00baac7c;
  if (*(int *)(DAT_00c71678 + 0x1baac) - (int)*ppfVar12 >> 2 != 0) {
    do {
      pfVar8 = ppfVar12[1];
      local_18 = fVar15;
      if ((int)pfVar8 - (int)*ppfVar12 >> 2 == 0) {
        FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
        pfVar8 = ppfVar12[1];
        iVar4 = DAT_00c71678;
        fVar15 = local_10;
      }
      pfVar5 = *ppfVar12;
      if (uVar11 < (uint)((int)pfVar8 - (int)pfVar5 >> 2)) {
        pfVar5 = pfVar5 + uVar11;
      }
      fVar6 = *pfVar5;
      fVar16 = (float)param_1[0xd0] - *(float *)((int)fVar6 + 0x340);
      fVar14 = (float)param_1[0xcf] - *(float *)((int)fVar6 + 0x33c);
      local_c = (float)((uint)local_c & 0xff);
      if (*(int *)((int)fVar6 + 0x162c) != -1) {
        local_c = 1.401298e-45;
      }
      fVar14 = fVar16 * fVar16 + fVar14 * fVar14;
      if (fVar14 < fVar15) {
        fVar15 = fVar14;
        local_10 = fVar14;
      }
      ppfVar12 = (float **)(iVar4 + 0x1baa8);
      if (local_18 <= fVar14) {
        fVar6 = local_14;
      }
      uVar11 = uVar11 + 1;
      local_14 = fVar6;
    } while (uVar11 < (uint)(*(int *)(iVar4 + 0x1baac) - (int)*ppfVar12 >> 2));
  }
  iVar4 = param_1[0x2d9];
  local_10 = 0.0;
  if (iVar4 == 0) {
    param_1[0x5a] = param_1[0x5a] | 1;
    param_1[0x5b] = param_1[0x5b] | 8;
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x61] = 3;
    param_1[0x2d9] = 3;
    ppbVar2 = (byte **)param_1[0x1f];
    if (ppbVar2 != (byte **)0x0) {
      ppbVar7 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar7 = (byte **)*ppbVar2;
      }
      pcVar10 = "CloseIdle";
      do {
        bVar1 = *(byte *)ppbVar7;
        bVar13 = bVar1 < (byte)*pcVar10;
        if (bVar1 != *pcVar10) {
LAB_004f7c28:
          uVar11 = -(uint)bVar13 | 1;
          goto LAB_004f7c2d;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar7 + 1);
        bVar13 = bVar1 < ((byte *)pcVar10)[1];
        if (bVar1 != ((byte *)pcVar10)[1]) goto LAB_004f7c28;
        ppbVar7 = (byte **)((int)ppbVar7 + 2);
        pcVar10 = (char *)((byte *)pcVar10 + 2);
      } while (bVar1 != 0);
      uVar11 = 0;
LAB_004f7c2d:
      if ((uVar11 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
      goto LAB_004f7c60;
    }
    cVar3 = FUN_0040a5d0("CloseIdle",1);
    if (cVar3 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
    goto LAB_004f7c60;
  }
  if (iVar4 == 3) {
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      ppbVar2 = (byte **)param_1[0x1f];
      if (ppbVar2 != (byte **)0x0) {
        ppbVar7 = ppbVar2;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar7 = (byte **)*ppbVar2;
        }
        pcVar10 = "CloseIdle";
        do {
          bVar1 = *(byte *)ppbVar7;
          bVar13 = bVar1 < (byte)*pcVar10;
          if (bVar1 != *pcVar10) {
LAB_004f7ad0:
            uVar11 = -(uint)bVar13 | 1;
            goto LAB_004f7ad5;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar7 + 1);
          bVar13 = bVar1 < ((byte *)pcVar10)[1];
          if (bVar1 != ((byte *)pcVar10)[1]) goto LAB_004f7ad0;
          ppbVar7 = (byte **)((int)ppbVar7 + 2);
          pcVar10 = (char *)((byte *)pcVar10 + 2);
        } while (bVar1 != 0);
        uVar11 = 0;
LAB_004f7ad5:
        if ((uVar11 == 0) &&
           ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
        goto LAB_004f7b08;
      }
      cVar3 = FUN_0040a5d0("CloseIdle",1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
LAB_004f7b08:
    if (local_c._0_1_ == '\0') goto LAB_004f7c60;
    ppbVar2 = (byte **)param_1[0x1f];
    if (ppbVar2 == (byte **)0x0) {
LAB_004f7b5e:
      cVar3 = FUN_0040a5d0(&DAT_00b1d644,1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar7 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar7 = (byte **)*ppbVar2;
      }
      pbVar9 = &DAT_00b1d644;
      do {
        bVar1 = *(byte *)ppbVar7;
        bVar13 = bVar1 < *pbVar9;
        if (bVar1 != *pbVar9) {
LAB_004f7b48:
          uVar11 = -(uint)bVar13 | 1;
          goto LAB_004f7b4d;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar7 + 1);
        bVar13 = bVar1 < pbVar9[1];
        if (bVar1 != pbVar9[1]) goto LAB_004f7b48;
        ppbVar7 = (byte **)((int)ppbVar7 + 2);
        pbVar9 = pbVar9 + 2;
      } while (bVar1 != 0);
      uVar11 = 0;
LAB_004f7b4d:
      if ((uVar11 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_004f7b5e;
    }
    param_1[0x2d9] = 4;
    param_1[0x2f0] = 10;
    param_1[0xd8] = (int)((float)param_1[0xd8] + (float)param_1[0x2ee]);
    param_1[0xd9] = (int)((float)param_1[0x2ef] + (float)param_1[0xd9]);
    goto LAB_004f7c60;
  }
  if (iVar4 != 4) goto LAB_004f7c60;
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
  if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
    ppbVar2 = (byte **)param_1[0x1f];
    if (ppbVar2 != (byte **)0x0) {
      ppbVar7 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar7 = (byte **)*ppbVar2;
      }
      pbVar9 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar7;
        bVar13 = bVar1 < *pbVar9;
        if (bVar1 != *pbVar9) {
LAB_004f78c3:
          uVar11 = -(uint)bVar13 | 1;
          goto LAB_004f78c8;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar7 + 1);
        bVar13 = bVar1 < pbVar9[1];
        if (bVar1 != pbVar9[1]) goto LAB_004f78c3;
        ppbVar7 = (byte **)((int)ppbVar7 + 2);
        pbVar9 = pbVar9 + 2;
      } while (bVar1 != 0);
      uVar11 = 0;
LAB_004f78c8:
      if ((uVar11 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
      goto LAB_004f78fb;
    }
    cVar3 = FUN_0040a5d0(&DAT_00b1bc54,1);
    if (cVar3 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
LAB_004f78fb:
  uVar11 = FUN_006eef60();
  if ((uVar11 & 3) == 0) {
    iVar4 = FUN_006eef60();
    FUN_006b64d0((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa1f8 + DAT_00baa1f8);
  }
  fVar15 = DAT_00baa454;
  if ((float)param_1[0xd8] < 0.0) {
    fVar15 = DAT_00baad50;
  }
  fVar6 = DAT_00baa454;
  if ((float)param_1[0xd9] <= 0.0 && (float)param_1[0xd9] != 0.0) {
    fVar6 = DAT_00baad50;
  }
  fVar14 = (float)param_1[0xdb];
  if (NAN(fVar14) == (fVar14 == 0.0)) {
    param_1[0xd9] = (int)(((float)param_1[0xe7] * fVar6) / fVar14 + (float)param_1[0xd9]);
    param_1[0xd8] = (int)(((float)param_1[0xe7] * fVar15) / fVar14 + (float)param_1[0xd8]);
  }
  param_1[0x2ee] = (int)fVar15;
  param_1[0x2ef] = (int)fVar6;
  if ((0 < param_1[0x2f0]) || (local_c._0_1_ != '\0')) goto LAB_004f7c60;
  ppbVar2 = (byte **)param_1[0x1f];
  if (ppbVar2 == (byte **)0x0) {
LAB_004f7a36:
    cVar3 = FUN_0040a5d0("Close",1);
    if (cVar3 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
  else {
    ppbVar7 = ppbVar2;
    if (&DAT_0000000f < ppbVar2[5]) {
      ppbVar7 = (byte **)*ppbVar2;
    }
    pcVar10 = "Close";
    do {
      bVar1 = *(byte *)ppbVar7;
      bVar13 = bVar1 < (byte)*pcVar10;
      if (bVar1 != *pcVar10) {
LAB_004f7a20:
        uVar11 = -(uint)bVar13 | 1;
        goto LAB_004f7a25;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar7 + 1);
      bVar13 = bVar1 < ((byte *)pcVar10)[1];
      if (bVar1 != ((byte *)pcVar10)[1]) goto LAB_004f7a20;
      ppbVar7 = (byte **)((int)ppbVar7 + 2);
      pcVar10 = (char *)((byte *)pcVar10 + 2);
    } while (bVar1 != 0);
    uVar11 = 0;
LAB_004f7a25:
    if ((uVar11 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
    goto LAB_004f7a36;
  }
  param_1[0x2d9] = 3;
  param_1[0x2f0] = 10;
LAB_004f7c60:
  local_c = 0.0;
  if (local_14 != 0.0) {
    local_c = *(float *)((int)local_14 + 0x33c) - (float)param_1[0xcf];
    local_14 = *(float *)((int)local_14 + 0x340) - (float)param_1[0xd0];
    fVar15 = local_c * local_c + local_14 * local_14;
    FUN_00435a50();
    local_10 = local_14;
    if (DAT_00ba9fe4 < fVar15) {
      local_10 = local_14 * (DAT_00baa454 / fVar15);
      local_c = local_c * (DAT_00baa454 / fVar15);
    }
    local_c = local_c * DAT_00baa75c;
    local_10 = local_10 * DAT_00baa75c;
  }
  iVar4 = FUN_0040b220(2);
  if (((NAN(*(float *)(iVar4 + 0x40)) || NAN(local_c)) == (*(float *)(iVar4 + 0x40) == local_c)) ||
     ((NAN(*(float *)(iVar4 + 0x44)) || NAN(local_10)) == (*(float *)(iVar4 + 0x44) == local_10))) {
    iVar4 = FUN_0040b220(2);
    local_18 = (float)param_1[0xe7] * DAT_00baa6fc;
    local_10 = local_10 - *(float *)(iVar4 + 0x44);
    local_c = local_c - *(float *)(iVar4 + 0x40);
    fVar15 = local_10 * local_10 + local_c * local_c;
    FUN_00435a50();
    if (local_18 < fVar15) {
      local_c = (local_18 / fVar15) * local_c;
      local_10 = local_10 * (local_18 / fVar15);
    }
    iVar4 = FUN_0040b220(2);
    *(float *)(iVar4 + 0x40) = local_c + *(float *)(iVar4 + 0x40);
    *(float *)(iVar4 + 0x44) = local_10 + *(float *)(iVar4 + 0x44);
  }
  if (0 < param_1[0x2f0]) {
    param_1[0x2f0] = ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + param_1[0x2f0];
  }
  if (local_5 != '\0') {
    local_40 = 0;
    local_3c = 0;
    local_38 = 0;
    local_34 = 0;
    local_30 = DAT_00c7b640;
    local_2c = DAT_00c7b644;
    local_28 = DAT_00c7b640;
    local_24 = DAT_00c7b644;
    local_20 = 0;
    local_1c = 0;
    (**(code **)(*param_1 + 0x24))(&local_40);
  }
  return;
}

