/* Local J460 decompiler output.
 * VA: 0x004f7e60
 * Entry: 004f7e60
 * Dispatcher: 0x006c2990
 * Types: 863
 * Identities: 863.0.0,863.0.1,863.0.2
 * Evidence: dispatcher=0x006c2990; end=0x004f832b; instructions=354
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=863; identities=863.0.0,863.0.1,863.0.2;
   dispatcher=0x006c2990; end=0x004f832b; instructions=354 */

uint __fastcall AI_004f7e60(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  code *pcVar3;
  float fVar4;
  int iVar5;
  char cVar6;
  int *piVar7;
  byte **ppbVar8;
  undefined4 uVar9;
  uint uVar10;
  int *piVar11;
  byte *pbVar12;
  int iVar13;
  uint uVar14;
  int **ppiVar15;
  bool bVar16;
  float fVar17;
  undefined4 uVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined8 local_24;
  undefined local_18 [8];
  int local_10;
  undefined4 local_c;
  uint local_8;
  
  ppiVar15 = (int **)(DAT_00c71678 + 0x1baa8);
  local_8 = local_8 & 0xffffff00;
  uVar14 = 0;
  local_10 = param_1;
  if (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0) {
    iVar13 = DAT_00c71678;
    do {
      piVar11 = ppiVar15[1];
      if ((int)piVar11 - (int)*ppiVar15 >> 2 == 0) {
        FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
        piVar11 = ppiVar15[1];
        iVar13 = DAT_00c71678;
      }
      piVar7 = *ppiVar15;
      if (uVar14 < (uint)((int)piVar11 - (int)piVar7 >> 2)) {
        piVar7 = piVar7 + uVar14;
      }
      ppiVar15 = (int **)(iVar13 + 0x1baa8);
      local_8 = local_8 & 0xff;
      if (*(int *)(*piVar7 + 0x1624) != -1) {
        local_8 = 1;
      }
      uVar14 = uVar14 + 1;
    } while (uVar14 < (uint)(*(int *)(iVar13 + 0x1baac) - (int)*ppiVar15 >> 2));
  }
  iVar5 = local_10;
  iVar13 = *(int *)(local_10 + 0xb64);
  if (iVar13 == 0) {
    uVar14 = 0;
    if (*(int *)(local_10 + 0x30) == 0) {
      uVar14 = *(uint *)(local_10 + 0x3ec);
      local_24 = DAT_00b1f4d4;
      if (uVar14 == 0) {
        FUN_00a112c0(0x10,"RNG Seed is zero!\n");
        pcVar3 = (code *)swi(3);
        uVar14 = (*pcVar3)();
        return uVar14;
      }
      uVar14 = uVar14 >> ((byte)DAT_00b1f4d4 & 0x1f) ^ uVar14;
      uVar14 = uVar14 << ((byte)((ulonglong)DAT_00b1f4d4 >> 0x20) & 0x1f) ^ uVar14;
      uVar14 = FUN_006c0f30(*(undefined4 *)(local_10 + 0x28),*(undefined4 *)(local_10 + 0x2c),
                            ((uVar14 >> ((byte)DAT_00b1f4dc & 0x1f) ^ uVar14) & 1) + 1,0xffffffff);
    }
  }
  else {
    if (iVar13 == 3) {
      *(float *)(local_10 + 0x36c) = *(float *)(local_10 + 0x36c) * DAT_00baa3a4;
      if ((*(int *)(local_10 + 0x7c) == 0) || (uVar14 = 0, *(char *)(local_10 + 0x8c) == '\0')) {
        ppbVar2 = *(byte ***)(local_10 + 0x7c);
        if (ppbVar2 != (byte **)0x0) {
          ppbVar8 = ppbVar2;
          if (&DAT_0000000f < ppbVar2[5]) {
            ppbVar8 = (byte **)*ppbVar2;
          }
          pbVar12 = &DAT_00b1bc54;
          do {
            bVar1 = *(byte *)ppbVar8;
            bVar16 = bVar1 < *pbVar12;
            if (bVar1 != *pbVar12) {
LAB_004f8224:
              uVar14 = -(uint)bVar16 | 1;
              goto LAB_004f8229;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar8 + 1);
            bVar16 = bVar1 < pbVar12[1];
            if (bVar1 != pbVar12[1]) goto LAB_004f8224;
            ppbVar8 = (byte **)((int)ppbVar8 + 2);
            pbVar12 = pbVar12 + 2;
          } while (bVar1 != 0);
          uVar14 = 0;
LAB_004f8229:
          if ((uVar14 == 0) &&
             ((uVar14 = 0, *(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(local_10 + 0x8c) != '\0'))))
          goto LAB_004f825c;
        }
        uVar14 = FUN_0040a5d0(&DAT_00b1bc54,1);
        if ((char)uVar14 != '\0') {
          uVar14 = FUN_0040a1b0();
          *(undefined *)(iVar5 + 0x8c) = 1;
        }
      }
LAB_004f825c:
      if ((char)local_8 == '\0') goto LAB_004f8363;
      ppbVar2 = *(byte ***)(iVar5 + 0x7c);
      if (ppbVar2 == (byte **)0x0) {
LAB_004f82b6:
        uVar14 = FUN_0040a5d0(&DAT_00b607ac,1);
        if ((char)uVar14 != '\0') {
          uVar14 = FUN_0040a1b0();
          *(undefined *)(iVar5 + 0x8c) = 1;
        }
      }
      else {
        ppbVar8 = ppbVar2;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar8 = (byte **)*ppbVar2;
        }
        pbVar12 = &DAT_00b607ac;
        do {
          bVar1 = *(byte *)ppbVar8;
          bVar16 = bVar1 < *pbVar12;
          if (bVar1 != *pbVar12) {
LAB_004f82a0:
            uVar14 = -(uint)bVar16 | 1;
            goto LAB_004f82a5;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar8 + 1);
          bVar16 = bVar1 < pbVar12[1];
          if (bVar1 != pbVar12[1]) goto LAB_004f82a0;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pbVar12 = pbVar12 + 2;
        } while (bVar1 != 0);
        uVar14 = 0;
LAB_004f82a5:
        if ((uVar14 != 0) ||
           ((uVar14 = 0, *(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(iVar5 + 0x8c) == '\0'))))
        goto LAB_004f82b6;
      }
      *(undefined4 *)(iVar5 + 0xb64) = 4;
      *(undefined4 *)(iVar5 + 0xbc0) = 10;
      *(undefined4 *)(iVar5 + 0xbb0) = 0x3f333333;
      goto LAB_004f8363;
    }
    uVar14 = iVar13 - 4;
    if (uVar14 != 0) goto LAB_004f8363;
    if ((*(int *)(local_10 + 0x7c) == 0) || (*(char *)(local_10 + 0x8c) == '\0')) {
      ppbVar2 = *(byte ***)(local_10 + 0x7c);
      if (ppbVar2 != (byte **)0x0) {
        ppbVar8 = ppbVar2;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar8 = (byte **)*ppbVar2;
        }
        pbVar12 = &DAT_00b1d6fc;
        do {
          bVar1 = *(byte *)ppbVar8;
          bVar16 = bVar1 < *pbVar12;
          if (bVar1 != *pbVar12) {
LAB_004f7f60:
            uVar14 = -(uint)bVar16 | 1;
            goto LAB_004f7f65;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar8 + 1);
          bVar16 = bVar1 < pbVar12[1];
          if (bVar1 != pbVar12[1]) goto LAB_004f7f60;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pbVar12 = pbVar12 + 2;
        } while (bVar1 != 0);
        uVar14 = 0;
LAB_004f7f65:
        if ((uVar14 == 0) &&
           ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(local_10 + 0x8c) != '\0'))))
        goto LAB_004f7f98;
      }
      cVar6 = FUN_0040a5d0(&DAT_00b1d6fc,1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(iVar5 + 0x8c) = 1;
      }
    }
LAB_004f7f98:
    if (((*(int *)(iVar5 + 0x7c) == 0) || (cVar6 = FUN_0040ae70("Shoot"), cVar6 == '\0')) &&
       ((*(int *)(iVar5 + 0x7c) == 0 || (*(char *)(*(int *)(iVar5 + 0x7c) + 0x34) == '\0')))) {
      uVar20 = 1;
      uVar19 = 900;
      uVar18 = 0x3e99999a;
      uVar9 = FUN_006bec40((int)&local_24 + 4,0);
      FUN_007e33c0(uVar9,uVar18,uVar19,uVar20);
    }
    else {
      local_10 = *(int *)(iVar5 + 0xbb0);
      uVar9 = FUN_006bec40(local_18,0);
      FUN_007e33c0(uVar9,local_10,900,1);
      fVar17 = *(float *)(iVar5 + 0x39c) * DAT_00baa06c + *(float *)(iVar5 + 0xbb0);
      fVar4 = DAT_00baa630;
      if (fVar17 <= DAT_00baa630) {
        fVar4 = fVar17;
      }
      *(float *)(iVar5 + 0xbb0) = fVar4;
    }
    if (*(int *)(iVar5 + 0xf1c) == -1) {
      uVar9 = FUN_006be840();
      uVar14 = FUN_006d7d60(uVar9);
      if (((char)uVar14 != '\0') && (*(char *)(iVar5 + 0xb40) != '\0')) {
        uVar10 = FUN_006eef60();
        uVar14 = uVar10 / 3;
        if (uVar10 % 3 == 0) goto LAB_004f80bb;
      }
    }
    else {
      uVar14 = FUN_009561e0(10,*(int *)(iVar5 + 0xf1c),iVar5,0);
      if ((char)uVar14 != '\0') {
LAB_004f80bb:
        local_c = DAT_00baa454;
        uVar9 = DAT_00baa528;
        if ((*(int *)(iVar5 + 0xc64) == 0x12) ||
           (uVar9 = DAT_00baa2d0, *(int *)(iVar5 + 0xc64) == 0x13)) {
          local_c = uVar9;
        }
        local_10 = 0x74;
        FUN_00956780();
        uVar14 = FUN_0092dc30(local_10,0x3f800000,0x3c,0,local_c,0);
      }
    }
    if ((0 < *(int *)(iVar5 + 0xbc0)) || ((char)local_8 != '\0')) goto LAB_004f8363;
    ppbVar2 = *(byte ***)(iVar5 + 0x7c);
    if (ppbVar2 == (byte **)0x0) {
LAB_004f8196:
      uVar14 = FUN_0040a5d0(&DAT_00b607b4,1);
      if ((char)uVar14 != '\0') {
        uVar14 = FUN_0040a1b0();
        *(undefined *)(iVar5 + 0x8c) = 1;
      }
    }
    else {
      ppbVar8 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar8 = (byte **)*ppbVar2;
      }
      pbVar12 = &DAT_00b607b4;
      do {
        bVar1 = *(byte *)ppbVar8;
        bVar16 = bVar1 < *pbVar12;
        if (bVar1 != *pbVar12) {
LAB_004f8180:
          uVar14 = -(uint)bVar16 | 1;
          goto LAB_004f8185;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar8 + 1);
        bVar16 = bVar1 < pbVar12[1];
        if (bVar1 != pbVar12[1]) goto LAB_004f8180;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pbVar12 = pbVar12 + 2;
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_004f8185:
      if ((uVar14 != 0) ||
         ((uVar14 = 0, *(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(iVar5 + 0x8c) == '\0'))))
      goto LAB_004f8196;
    }
    *(undefined4 *)(iVar5 + 0xbc0) = 10;
  }
  *(undefined4 *)(iVar5 + 0xb64) = 3;
LAB_004f8363:
  if (0 < *(int *)(iVar5 + 0xbc0)) {
    uVar14 = (uint)*(float *)(iVar5 + 0x3a4);
    *(uint *)(iVar5 + 0xbc0) = ((int)*(float *)(iVar5 + 0x3a0) - uVar14) + *(int *)(iVar5 + 0xbc0);
  }
  return uVar14;
}

