/* Local J460 decompiler output.
 * VA: 0x004be6f0
 * Entry: 004be6f0
 * Dispatcher: 0x006c2990
 * Types: 298
 * Identities: 298.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004bee40; instructions=453
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=298; identities=298.0.0; dispatcher=0x006c2990;
   end=0x004bee40; instructions=453 */

void __fastcall AI_004be6f0(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  char cVar3;
  float *pfVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  byte **ppbVar8;
  char *pcVar9;
  bool bVar10;
  float fVar11;
  undefined auVar12 [16];
  float fVar13;
  float fVar14;
  undefined *puVar15;
  float local_cc;
  float local_c8;
  float local_c0;
  float local_bc;
  float local_b8;
  undefined local_b4 [12];
  undefined4 local_a8;
  undefined4 local_a0;
  undefined4 local_98;
  undefined4 local_90;
  uint local_8;
  
  local_8 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xbb0) = 0;
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    FUN_00aefca0();
    cVar3 = FUN_0040a5d0("Shrink",1);
    if (((cVar3 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
      *(undefined *)(param_1 + 0x8c) = 0;
      FUN_00aef12b();
      return;
    }
    goto LAB_004bee21;
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  if (0.0 < *(float *)(param_1 + 0x14)) {
    pfVar4 = *(float **)(param_1 + 8);
    auVar12 = ZEXT816(0);
    if (pfVar4 != *(float **)(param_1 + 0xc)) {
      do {
        local_c8 = pfVar4[3];
        if (((((uint)pfVar4[2] & 4) == 0) || (pfVar4[4] == 1.401298e-45)) ||
           ((pfVar4[6] == 1.401298e-45 ||
            ((pfVar4[6] == 4.203895e-45 || (((uint)pfVar4[2] & 0x1000) != 0)))))) {
          auVar12._0_4_ = auVar12._0_4_ + *pfVar4;
        }
        else {
          *pfVar4 = 0.0;
        }
        pfVar4 = pfVar4 + 0xe;
      } while (pfVar4 != *(float **)(param_1 + 0xc));
      if (0.0 < auVar12._0_4_) {
        *(undefined4 *)(param_1 + 0xbb0) = 0;
      }
    }
  }
  iVar5 = FUN_006be840();
  fVar11 = *(float *)(iVar5 + 0x33c) - *(float *)(param_1 + 0x33c);
  fVar13 = *(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340);
  local_b8 = fVar11 * fVar11 + fVar13 * fVar13;
  FUN_00435a50();
  fVar13 = DAT_00baa454;
  fVar11 = DAT_00baa104;
  if (*(int *)(param_1 + 0xb64) == 3) {
    if ((*(uint *)(param_1 + 0x168) & 0x1000a00) == 0) {
      fVar11 = *(float *)(param_1 + 0xbb4) - DAT_00baa104;
      *(float *)(param_1 + 0xbb4) = fVar11;
      if (fVar11 < 0.0) {
        *(undefined4 *)(param_1 + 0xbb4) = 0;
      }
      uVar6 = FUN_006eef60();
      if (uVar6 % 0x32 == 0) {
        if ((local_b8 < DAT_00baab60) || (uVar6 = FUN_006eef60(), uVar6 % 6 == 0)) {
          if (*(int *)(param_1 + 0x2c) == 2) {
            iVar7 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                    *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
            iVar5 = 0;
            if (0 < iVar7) {
              iVar5 = iVar7;
            }
            if ((7 < iVar5) || (iVar5 = FUN_0067f010(), iVar5 != 0)) goto LAB_004be955;
          }
          *(undefined4 *)(param_1 + 0xb64) = 8;
        }
        else {
LAB_004be955:
          *(undefined4 *)(param_1 + 0xb64) = 9;
        }
      }
      FUN_00aefca0();
      cVar3 = FUN_0040a5d0("Shrink",1);
      if (((cVar3 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
         (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
        *(undefined *)(param_1 + 0x8c) = 0;
      }
    }
    else {
LAB_004bed6b:
      ppbVar2 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar2 == (byte **)0x0) {
LAB_004bedb7:
        cVar3 = FUN_0040a5d0("Shake",1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar8 = ppbVar2;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar8 = (byte **)*ppbVar2;
        }
        pcVar9 = "Shake";
        do {
          bVar1 = *(byte *)ppbVar8;
          bVar10 = bVar1 < (byte)*pcVar9;
          if (bVar1 != *pcVar9) {
LAB_004beda1:
            uVar6 = -(uint)bVar10 | 1;
            goto LAB_004beda6;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar8 + 1);
          bVar10 = bVar1 < ((byte *)pcVar9)[1];
          if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_004beda1;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pcVar9 = (char *)((byte *)pcVar9 + 2);
        } while (bVar1 != 0);
        uVar6 = 0;
LAB_004beda6:
        if ((uVar6 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0')))
           ) goto LAB_004bedb7;
      }
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 3;
      }
    }
  }
  else {
    if (*(int *)(param_1 + 0xb64) != 8) goto LAB_004bed6b;
    fVar14 = *(float *)(param_1 + 0xbb4) + DAT_00baa104;
    *(float *)(param_1 + 0xbb4) = fVar14;
    if (fVar14 < fVar13) {
      *(float *)(param_1 + 0xbb4) = fVar14 + fVar11;
      if (fVar13 < fVar14 + fVar11) {
        *(undefined4 *)(param_1 + 0xbb4) = 0x3f800000;
      }
      FUN_00aefca0();
      cVar3 = FUN_0040a5d0("Shrink",1);
      if (((cVar3 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
         (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
        *(undefined *)(param_1 + 0x8c) = 0;
      }
      goto LAB_004bedf8;
    }
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar2 == (byte **)0x0) {
LAB_004beb19:
      cVar3 = FUN_0040a5d0("Shoot",1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar8 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar8 = (byte **)*ppbVar2;
      }
      pcVar9 = "Shoot";
      do {
        bVar1 = *(byte *)ppbVar8;
        bVar10 = bVar1 < (byte)*pcVar9;
        if (bVar1 != *pcVar9) {
LAB_004beb03:
          uVar6 = -(uint)bVar10 | 1;
          goto LAB_004beb08;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar8 + 1);
        bVar10 = bVar1 < ((byte *)pcVar9)[1];
        if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_004beb03;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pcVar9 = (char *)((byte *)pcVar9 + 2);
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_004beb08:
      if ((uVar6 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_004beb19;
    }
    if ((*(int *)(param_1 + 0x7c) != 0) && (cVar3 = FUN_0040add0("Shoot"), cVar3 != '\0')) {
      FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
      FUN_006eef60();
      AI_0043ef30();
      local_a0 = 0x3fcccccd;
      local_90 = 0x3c23d70a;
      local_a8 = 0xbdf5c28f;
      local_98 = 0x3f8ccccd;
      iVar5 = FUN_006be840();
      local_bc = *(float *)(iVar5 + 0x33c);
      fVar11 = *(float *)(iVar5 + 0x340);
      iVar5 = FUN_006eef60();
      local_c0 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa704;
      local_c0 = local_c0 + local_c0;
      iVar5 = FUN_006eef60();
      local_b8 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4;
      fVar13 = local_c0;
      FUN_0041d540();
      local_bc = (fVar13 * local_b8 * DAT_00baa904 + local_bc) - *(float *)(param_1 + 0x33c);
      fVar13 = local_c0;
      FUN_0041d520();
      local_b8 = (fVar13 * local_b8 * DAT_00baa904 + fVar11) - *(float *)(param_1 + 0x340);
      fVar11 = local_b8 * local_b8 + local_bc * local_bc;
      FUN_00435a50();
      if (fVar11 <= 0.0) {
        local_cc = local_bc;
        local_c8 = local_b8;
      }
      else {
        local_c8 = (DAT_00baa7c8 / fVar11) * local_b8;
        local_cc = (DAT_00baa7c8 / fVar11) * local_bc;
      }
      puVar15 = local_b4;
      uVar6 = FUN_006eef60(puVar15);
      FUN_006cb2e0((float *)(param_1 + 0x33c),&local_cc,(uVar6 & 1) * 2,puVar15);
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      *(undefined4 *)(param_1 + 0xb64) = 3;
    }
  }
LAB_004bedf8:
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
LAB_004bee21:
  FUN_00aef12b();
  return;
}

