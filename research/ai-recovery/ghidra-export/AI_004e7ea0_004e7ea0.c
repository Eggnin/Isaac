/* Local J460 decompiler output.
 * VA: 0x004e7ea0
 * Entry: 004e7ea0
 * Dispatcher: 0x006c2990
 * Types: 805
 * Identities: 805.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004e8380; instructions=321
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=805; identities=805.0.0; dispatcher=0x006c2990;
   end=0x004e8380; instructions=321 */

void __fastcall AI_004e7ea0(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  char cVar11;
  byte **ppbVar12;
  int iVar13;
  byte *pbVar14;
  char *pcVar15;
  int iVar16;
  int iVar17;
  uint uVar18;
  bool bVar19;
  float fVar20;
  undefined4 local_118 [8];
  undefined4 local_f8;
  undefined4 uStack_f4;
  undefined4 local_f0;
  undefined4 local_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  undefined4 local_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 local_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  int local_b8;
  undefined local_b4 [172];
  uint local_8;
  
  local_8 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  local_b8 = *(int *)(param_1 + 0x3d4);
  iVar16 = *(int *)(param_1 + 0xb64);
  if (iVar16 == 0) {
    iVar16 = (int)((*(float *)(param_1 + 0x33c) - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
    if ((((-1 < iVar16) &&
         (iVar13 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc), iVar16 < iVar13)) &&
        (iVar17 = (int)((*(float *)(param_1 + 0x340) - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0),
        -1 < iVar17)) &&
       ((iVar17 < *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x10) &&
        (iVar16 = iVar13 * iVar17 + iVar16, -1 < iVar16)))) {
      fVar20 = (float)(iVar16 / iVar13) * DAT_00baa904 + DAT_00baaa00;
      *(float *)(param_1 + 0x334) = (float)(iVar16 % iVar13) * DAT_00baa904 + DAT_00baa904;
      *(float *)(param_1 + 0x338) = fVar20;
    }
    uVar10 = _UNK_00bac7bc;
    uVar9 = _UNK_00bac7b8;
    uVar8 = _UNK_00bac7b4;
    uVar7 = _DAT_00bac7b0;
    uVar6 = _UNK_00bac5fc;
    uVar5 = _UNK_00bac5f8;
    uVar4 = _UNK_00bac5f4;
    uVar3 = _DAT_00bac5f0;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    local_f8 = 0;
    uStack_f4 = 0;
    local_f0 = 0;
    if ((undefined4 *)(param_1 + 0x1e4) != local_118) {
      *(undefined8 *)(param_1 + 0x204) = 0;
      *(undefined4 *)(param_1 + 0x1e4) = uVar7;
      *(undefined4 *)(param_1 + 0x1e8) = uVar8;
      *(undefined4 *)(param_1 + 0x1ec) = uVar9;
      *(undefined4 *)(param_1 + 0x1f0) = uVar10;
      *(undefined4 *)(param_1 + 0x20c) = 0;
      *(undefined4 *)(param_1 + 500) = uVar3;
      *(undefined4 *)(param_1 + 0x1f8) = uVar4;
      *(undefined4 *)(param_1 + 0x1fc) = uVar5;
      *(undefined4 *)(param_1 + 0x200) = uVar6;
    }
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar2 != (byte **)0x0) {
      ppbVar12 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar12 = (byte **)*ppbVar2;
      }
      pbVar14 = &DAT_00b607f4;
      do {
        bVar1 = *(byte *)ppbVar12;
        bVar19 = bVar1 < *pbVar14;
        if (bVar1 != *pbVar14) {
LAB_004e8230:
          uVar18 = -(uint)bVar19 | 1;
          goto LAB_004e8235;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar12 + 1);
        bVar19 = bVar1 < pbVar14[1];
        if (bVar1 != pbVar14[1]) goto LAB_004e8230;
        ppbVar12 = (byte **)((int)ppbVar12 + 2);
        pbVar14 = pbVar14 + 2;
      } while (bVar1 != 0);
      uVar18 = 0;
LAB_004e8235:
      if ((uVar18 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
      goto LAB_004e8268;
    }
    cVar11 = FUN_0040a5d0(&DAT_00b607f4,1);
    if (cVar11 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
    goto LAB_004e8268;
  }
  if (iVar16 != 3) {
    if (iVar16 == 8) {
      if (*(int *)(param_1 + 0x7c) != 0) {
        cVar11 = FUN_0040add0("Shoot");
        if (cVar11 != '\0') {
          AI_0043ef30();
          local_ec = _DAT_00bac7a0;
          uStack_e8 = _UNK_00bac7a4;
          uStack_e4 = _UNK_00bac7a8;
          uStack_e0 = _UNK_00bac7ac;
          local_cc = 0x3e19999a;
          local_dc = _DAT_00bac9c0;
          uStack_d8 = _UNK_00bac9c4;
          uStack_d4 = _UNK_00bac9c8;
          uStack_d0 = _UNK_00bac9cc;
          local_c8 = 0x3e19999a;
          local_c4 = 0x3e4ccccd;
          FUN_004071f0(&local_ec);
          local_c0 = 0x41400000;
          local_bc = 0;
          FUN_006cb2e0(param_1 + 0x33c,&local_c0,6,local_b4);
          FUN_006d6ba0(0x106,0x3f800000,2,0,0x3f800000);
        }
        if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
        goto LAB_004e8268;
      }
      *(undefined4 *)(param_1 + 0xb64) = 3;
    }
    goto LAB_004e8268;
  }
  if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar2 != (byte **)0x0) {
      ppbVar12 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar12 = (byte **)*ppbVar2;
      }
      pbVar14 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar12;
        bVar19 = bVar1 < *pbVar14;
        if (bVar1 != *pbVar14) {
LAB_004e8036:
          uVar18 = -(uint)bVar19 | 1;
          goto LAB_004e803b;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar12 + 1);
        bVar19 = bVar1 < pbVar14[1];
        if (bVar1 != pbVar14[1]) goto LAB_004e8036;
        ppbVar12 = (byte **)((int)ppbVar12 + 2);
        pbVar14 = pbVar14 + 2;
      } while (bVar1 != 0);
      uVar18 = 0;
LAB_004e803b:
      if ((uVar18 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
      goto LAB_004e806e;
    }
    cVar11 = FUN_0040a5d0(&DAT_00b1bc54,1);
    if (cVar11 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
  }
LAB_004e806e:
  if (*(float *)(param_1 + 0x14) <= DAT_00ba9fe4) goto LAB_004e8268;
  uVar18 = FUN_006eef60();
  if (uVar18 % 3 == 0) goto LAB_004e8268;
  ppbVar2 = *(byte ***)(param_1 + 0x7c);
  if (ppbVar2 == (byte **)0x0) {
LAB_004e80e6:
    cVar11 = FUN_0040a5d0("Shoot",1);
    if (cVar11 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
  }
  else {
    ppbVar12 = ppbVar2;
    if (&DAT_0000000f < ppbVar2[5]) {
      ppbVar12 = (byte **)*ppbVar2;
    }
    pcVar15 = "Shoot";
    do {
      bVar1 = *(byte *)ppbVar12;
      bVar19 = bVar1 < (byte)*pcVar15;
      if (bVar1 != *pcVar15) {
LAB_004e80d0:
        uVar18 = -(uint)bVar19 | 1;
        goto LAB_004e80d5;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar12 + 1);
      bVar19 = bVar1 < ((byte *)pcVar15)[1];
      if (bVar1 != ((byte *)pcVar15)[1]) goto LAB_004e80d0;
      ppbVar12 = (byte **)((int)ppbVar12 + 2);
      pcVar15 = (char *)((byte *)pcVar15 + 2);
    } while (bVar1 != 0);
    uVar18 = 0;
LAB_004e80d5:
    if ((uVar18 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
    goto LAB_004e80e6;
  }
  *(undefined4 *)(param_1 + 0xb64) = 8;
LAB_004e8268:
  fVar20 = *(float *)(param_1 + 0x334);
  if (((NAN(fVar20) || NAN(DAT_00c7b640)) == (fVar20 == DAT_00c7b640)) ||
     ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) ==
      (*(float *)(param_1 + 0x338) == DAT_00c7b644))) {
    *(float *)(param_1 + 0x360) =
         (fVar20 - *(float *)(param_1 + 0x33c)) / *(float *)(param_1 + 0x36c);
    *(float *)(param_1 + 0x364) =
         (*(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340)) / *(float *)(param_1 + 0x36c);
  }
  if (local_b8 == 0) {
    iVar16 = *(int *)(DAT_00c71678 + 0x18300);
    iVar13 = (int)((*(float *)(param_1 + 0x334) - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
    if ((((-1 < iVar13) && (iVar13 < *(int *)(iVar16 + 0xc))) &&
        (iVar17 = (int)((*(float *)(param_1 + 0x338) - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0),
        -1 < iVar17)) &&
       ((iVar17 < *(int *)(iVar16 + 0x10) &&
        (uVar18 = iVar17 * *(int *)(iVar16 + 0xc) + iVar13, uVar18 < 0x1c0)))) {
      iVar13 = *(int *)(iVar16 + 0x76c + uVar18 * 4);
      iVar17 = iVar13 % 1000;
      if (iVar17 < 900) {
        *(int *)(iVar16 + 0x76c + uVar18 * 4) = (iVar13 - iVar17) + 900;
      }
    }
  }
  FUN_00aef12b();
  return;
}

