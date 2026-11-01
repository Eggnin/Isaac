/* Local J460 decompiler output.
 * VA: 0x004bb9b0
 * Entry: 004bb9b0
 * Dispatcher: 0x006c2990
 * Types: 967
 * Identities: 967.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004bbe30; instructions=292
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=967; identities=967.0.0; dispatcher=0x006c2990;
   end=0x004bbe30; instructions=292 */

void __fastcall AI_004bb9b0(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  char cVar3;
  int iVar4;
  byte **ppbVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  char *pcVar9;
  int iVar10;
  int iVar11;
  bool bVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  uint local_18;
  float local_14;
  float local_10;
  int local_c;
  
  iVar4 = *(int *)(param_1 + 0xb64);
  if (iVar4 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb | 0x11;
    *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    *(undefined4 *)(param_1 + 0x188) = 0;
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    *(undefined4 *)(param_1 + 0x35c) = 1;
    FUN_0040a380("Closed",0);
    goto LAB_004bbdf0;
  }
  if (iVar4 == 3) {
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      FUN_0040a380("Closed",0);
    }
    iVar4 = *(int *)(DAT_00c71678 + 0x18300);
    local_c = (int)((*(float *)(param_1 + 0x334) - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
    iVar7 = (int)((*(float *)(param_1 + 0x338) - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
    if ((((local_c < 0) || (*(int *)(iVar4 + 0xc) <= local_c)) || (iVar7 < 0)) ||
       (*(int *)(iVar4 + 0x10) <= iVar7)) {
      local_c = -1;
    }
    else {
      local_c = *(int *)(iVar4 + 0xc) * iVar7 + local_c;
    }
    local_18 = 0;
    fVar13 = DAT_00baa2d0;
    fVar15 = DAT_00baa904;
    fVar17 = DAT_00baaa00;
    if (*(int *)(iVar4 + 0x1264) != 0) {
      do {
        iVar7 = *(int *)(*(int *)(iVar4 + 0x125c) + local_18 * 4);
        if ((*(int *)(iVar7 + 0x28) == 0x3c5) && (*(int *)(iVar7 + 0xb64) == 4)) {
          iVar10 = (int)((*(float *)(iVar7 + 0x33c) - fVar15) / fVar15 + fVar13);
          iVar8 = (int)((*(float *)(iVar7 + 0x340) - fVar17) / fVar15 + fVar13);
          if (((iVar10 < 0) || ((iVar11 = *(int *)(iVar4 + 0xc), iVar11 <= iVar10 || (iVar8 < 0))))
             || (*(int *)(iVar4 + 0x10) <= iVar8)) {
            iVar11 = *(int *)(iVar4 + 0xc);
            iVar10 = -1;
          }
          else {
            iVar10 = iVar11 * iVar8 + iVar10;
          }
          local_10 = ((float)(local_c % iVar11) * fVar15 + fVar15) -
                     ((float)(iVar10 % iVar11) * fVar15 + fVar15);
          local_14 = ((float)(local_c / iVar11) * fVar15 + fVar17) -
                     ((float)(iVar10 / iVar11) * fVar15 + fVar17);
          fVar13 = local_10 * local_10 + local_14 * local_14;
          FUN_00435a50();
          if (0.0 < fVar13) {
            local_10 = local_10 * (DAT_00baa454 / fVar13);
            local_14 = local_14 * (DAT_00baa454 / fVar13);
          }
          fVar14 = *(float *)(iVar7 + 0x360);
          fVar16 = *(float *)(iVar7 + 0x364);
          fVar13 = fVar14 * fVar14 + fVar16 * fVar16;
          FUN_00435a50();
          if (0.0 < fVar13) {
            fVar16 = fVar16 * (DAT_00baa454 / fVar13);
            fVar14 = fVar14 * (DAT_00baa454 / fVar13);
          }
          if ((iVar10 == local_c) ||
             ((cVar3 = FUN_009e3450(iVar10,local_c), fVar13 = DAT_00baa2d0, fVar15 = DAT_00baa904,
              fVar17 = DAT_00baaa00, cVar3 != '\0' &&
              (DAT_00baa198 < local_10 * fVar14 + local_14 * fVar16)))) {
            FUN_004bb830(0xf);
            fVar13 = DAT_00baa2d0;
            fVar15 = DAT_00baa904;
            fVar17 = DAT_00baaa00;
          }
        }
        local_18 = local_18 + 1;
      } while (local_18 < *(uint *)(iVar4 + 0x1264));
    }
    goto LAB_004bbdf0;
  }
  if (iVar4 != 4) goto LAB_004bbdf0;
  if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
    FUN_0040a380("Opened",0);
  }
  if ((*(int *)(param_1 + 0x410) < 1) ||
     (iVar4 = *(int *)(param_1 + 0x410) + -1, *(int *)(param_1 + 0x410) = iVar4, iVar4 != 0))
  goto LAB_004bbdf0;
  if (*(int *)(param_1 + 0xb64) == 4) {
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar2 == (byte **)0x0) {
LAB_004bba6e:
      cVar3 = FUN_0040a5d0("Close",1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar5 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar5 = (byte **)*ppbVar2;
      }
      pcVar9 = "Close";
      do {
        bVar1 = *(byte *)ppbVar5;
        bVar12 = bVar1 < (byte)*pcVar9;
        if (bVar1 != *pcVar9) {
LAB_004bba58:
          uVar6 = -(uint)bVar12 | 1;
          goto LAB_004bba5d;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar5 + 1);
        bVar12 = bVar1 < ((byte *)pcVar9)[1];
        if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_004bba58;
        ppbVar5 = (byte **)((int)ppbVar5 + 2);
        pcVar9 = (char *)((byte *)pcVar9 + 2);
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_004bba5d:
      if ((uVar6 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_004bba6e;
    }
    FUN_00956780();
    FUN_0092dc30(0x23,0x3f000000,10,0,0x3fa66666,0);
    *(undefined4 *)(param_1 + 0xb64) = 3;
  }
  *(undefined4 *)(param_1 + 0x410) = 0;
LAB_004bbdf0:
  *(undefined4 *)(param_1 + 0x33c) = *(undefined4 *)(param_1 + 0x334);
  *(undefined4 *)(param_1 + 0x340) = *(undefined4 *)(param_1 + 0x338);
  *(undefined4 *)(param_1 + 0x360) = DAT_00c7b640;
  *(undefined4 *)(param_1 + 0x364) = DAT_00c7b644;
  return;
}

