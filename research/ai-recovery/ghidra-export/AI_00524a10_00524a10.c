/* Local J460 decompiler output.
 * VA: 0x00524a10
 * Entry: 00524a10
 * Dispatcher: 0x006c2990
 * Types: 59
 * Identities: 59.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00525650; instructions=764
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=59; identities=59.0.0; dispatcher=0x006c2990;
   end=0x00525650; instructions=764 */

void __fastcall AI_00524a10(int param_1)

{
  byte bVar1;
  int iVar2;
  char cVar3;
  byte **ppbVar4;
  uint uVar5;
  float *pfVar6;
  float *pfVar7;
  undefined4 *puVar8;
  byte **ppbVar9;
  undefined4 uVar10;
  byte *pbVar11;
  char *pcVar12;
  float *extraout_ECX;
  int iVar13;
  bool bVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined local_e0 [8];
  float local_d8;
  float local_d4;
  float local_d0;
  float local_cc;
  float local_c8;
  float local_c4;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  iVar13 = *(int *)(param_1 + 0xb64);
  if (iVar13 == 0) {
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    *(undefined4 *)(param_1 + 0xb64) = 0x10;
    cVar3 = FUN_0040a5d0("Appear",1);
    if (cVar3 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
    FUN_006c04b0(1);
    *(undefined4 *)(param_1 + 0x15c) = 0;
    FUN_00aef12b();
    return;
  }
  if ((0.0 < *(float *)(param_1 + 0x14)) &&
     (puVar8 = *(undefined4 **)(param_1 + 8), puVar8 != *(undefined4 **)(param_1 + 0xc))) {
    do {
      local_c4 = (float)puVar8[3];
      if (((puVar8[2] & 4) != 0) &&
         ((((((uint)puVar8[0xc] >> 1 & 1) == 0 && (puVar8[4] != 1)) && (puVar8[6] != 1)) &&
          ((puVar8[6] != 3 && ((puVar8[2] & 0x1000) == 0)))))) {
        *puVar8 = 0;
      }
      puVar8 = puVar8 + 0xe;
    } while (puVar8 != *(undefined4 **)(param_1 + 0xc));
    iVar13 = *(int *)(param_1 + 0xb64);
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa324;
  if (((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) &&
     ((*(undefined4 *)(param_1 + 0xb64) = 3, iVar13 != 3 && (iVar13 == 6)))) {
    *(undefined4 *)(param_1 + 0xb64) = 0x10;
    ppbVar9 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar9 == (byte **)0x0) {
LAB_00524bb6:
      cVar3 = FUN_0040a5d0(&DAT_00b60f4c,1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar4 = ppbVar9;
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar4 = (byte **)*ppbVar9;
      }
      pbVar11 = &DAT_00b60f4c;
      do {
        bVar1 = *(byte *)ppbVar4;
        bVar14 = bVar1 < *pbVar11;
        if (bVar1 != *pbVar11) {
LAB_00524b98:
          uVar5 = -(uint)bVar14 | 1;
          goto LAB_00524b9d;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar4 + 1);
        bVar14 = bVar1 < pbVar11[1];
        if (bVar1 != pbVar11[1]) goto LAB_00524b98;
        ppbVar4 = (byte **)((int)ppbVar4 + 2);
        pbVar11 = pbVar11 + 2;
      } while (bVar1 != 0);
      uVar5 = 0;
LAB_00524b9d:
      if ((uVar5 != 0) || ((*(byte *)(ppbVar9 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_00524bb6;
    }
    FUN_006c04b0(1);
  }
  FUN_006bec40(&local_c8,0);
  pfVar7 = (float *)(param_1 + 0x33c);
  local_c4 = *(float *)(param_1 + 0x340) - local_c4;
  local_d4 = *pfVar7 - local_c8;
  fVar15 = local_c4 * local_c4 + local_d4 * local_d4;
  FUN_00435a50();
  iVar13 = *(int *)(param_1 + 0xba0);
  if (0 < iVar13) {
    iVar13 = iVar13 + ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
    *(int *)(param_1 + 0xba0) = iVar13;
  }
  iVar2 = *(int *)(param_1 + 0xb64);
  local_cc = fVar15;
  if (iVar2 == 3) {
    if (((*(uint *)(param_1 + 0x16c) & 0x10000000) == 0) ||
       ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        uVar5 = FUN_006eef60();
        if (uVar5 % 0x1e == 0) goto LAB_00524ce8;
      }
      else if ((iVar13 < 1) && (cVar3 = FUN_006cae60(0,7), cVar3 != '\0')) {
LAB_00524ce8:
        if ((*(uint *)(param_1 + 0x168) & 0x1000a00) == 0) {
          if (*(int *)(param_1 + 0xf1c) == -1) {
            iVar13 = -1;
          }
          else {
            FUN_006d9050(1);
            local_c4 = *(float *)(param_1 + 0xf24) * DAT_00baa9d0;
            local_d4 = *(float *)(param_1 + 0xf20) * DAT_00baa9d0;
            fVar15 = local_c4 * local_c4 + local_d4 * local_d4;
            FUN_00435a50();
            iVar13 = *(int *)(param_1 + 0xf1c);
            local_cc = fVar15;
          }
          if (local_cc < DAT_00baaa94) {
            FUN_0040a380("Attack",iVar13 != -1);
            *(undefined4 *)(param_1 + 0xb64) = 8;
            *(undefined4 *)(param_1 + 0xba0) = 0x3c;
          }
        }
      }
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar5 = FUN_006eef60();
      bVar14 = uVar5 % 0x14 == 0;
    }
    else {
      pfVar6 = (float *)FUN_006d82d0(local_e0);
      if (((NAN(*pfVar6) || NAN(DAT_00c7b640)) == (*pfVar6 == DAT_00c7b640)) ||
         ((NAN(pfVar6[1]) || NAN(DAT_00c7b644)) == (pfVar6[1] == DAT_00c7b644))) {
        bVar14 = true;
      }
      else {
        bVar14 = false;
      }
    }
    if (bVar14) {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        local_d8 = *(float *)(param_1 + 0x33c) - local_d4 * (DAT_00baa9d0 / local_cc);
        local_d4 = *(float *)(param_1 + 0x340) - local_c4 * (DAT_00baa9d0 / local_cc);
        puVar8 = (undefined4 *)FUN_00813520(&local_c8,&local_d8,0,0,0,0);
        *(undefined4 *)(param_1 + 0x334) = *puVar8;
        fVar15 = (float)puVar8[1];
      }
      else {
        pfVar7 = (float *)FUN_006d82d0(local_e0);
        fVar15 = pfVar7[1] * DAT_00baa9d0;
        *(float *)(param_1 + 0x334) = *pfVar7 * DAT_00baa9d0 + *(float *)(param_1 + 0x33c);
        fVar15 = fVar15 + *(float *)(param_1 + 0x340);
      }
      *(float *)(param_1 + 0x338) = fVar15;
      ppbVar9 = *(byte ***)(param_1 + 0x7c);
      if (*(float *)(param_1 + 0x340) <= fVar15) {
        if (ppbVar9 != (byte **)0x0) {
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar9 = (byte **)*ppbVar9;
          }
          pcVar12 = "JumpDownHead";
          do {
            bVar1 = *(byte *)ppbVar9;
            bVar14 = bVar1 < (byte)*pcVar12;
            if (bVar1 != *pcVar12) {
LAB_00524fa0:
              uVar5 = -(uint)bVar14 | 1;
              goto LAB_00524fa5;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar9 + 1);
            bVar14 = bVar1 < ((byte *)pcVar12)[1];
            if (bVar1 != ((byte *)pcVar12)[1]) goto LAB_00524fa0;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pcVar12 = (char *)((byte *)pcVar12 + 2);
          } while (bVar1 != 0);
          uVar5 = 0;
LAB_00524fa5:
          if ((uVar5 == 0) &&
             ((*(char *)(*(int *)(param_1 + 0x7c) + 0x34) == '\0' ||
              (*(char *)(param_1 + 0x8c) != '\0')))) goto LAB_00524fdd;
        }
        pcVar12 = "JumpDownHead";
LAB_00524fc2:
        cVar3 = FUN_0040a5d0(pcVar12,1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        if (ppbVar9 == (byte **)0x0) {
LAB_00524f5f:
          pcVar12 = "JumpUpHead";
          goto LAB_00524fc2;
        }
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pcVar12 = "JumpUpHead";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar14 = bVar1 < (byte)*pcVar12;
          if (bVar1 != *pcVar12) {
LAB_00524f40:
            uVar5 = -(uint)bVar14 | 1;
            goto LAB_00524f45;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar14 = bVar1 < ((byte *)pcVar12)[1];
          if (bVar1 != ((byte *)pcVar12)[1]) goto LAB_00524f40;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar12 = (char *)((byte *)pcVar12 + 2);
        } while (bVar1 != 0);
        uVar5 = 0;
LAB_00524f45:
        if ((uVar5 != 0) ||
           ((*(char *)(*(int *)(param_1 + 0x7c) + 0x34) != '\0' &&
            (*(char *)(param_1 + 0x8c) == '\0')))) goto LAB_00524f5f;
      }
LAB_00524fdd:
      *(undefined4 *)(param_1 + 0xbb0) = 0;
      *(undefined4 *)(param_1 + 0xb64) = 6;
      goto LAB_00525619;
    }
LAB_00525589:
    if ((((*(int *)(param_1 + 0xb64) == 6) && (*(int *)(param_1 + 0x7c) != 0)) &&
        (cVar3 = FUN_0040ae70(&DAT_00b1d574), cVar3 != '\0')) ||
       ((*(int *)(param_1 + 0xb64) == 0x10 &&
        ((*(int *)(param_1 + 0x7c) == 0 || (cVar3 = FUN_0040ae70(&DAT_00b1d560), cVar3 == '\0'))))))
    {
      *(undefined4 *)(param_1 + 0x188) = 0;
      *pfVar7 = *(float *)(param_1 + 0x334);
      *(undefined4 *)(param_1 + 0x340) = *(undefined4 *)(param_1 + 0x338);
      goto LAB_00525619;
    }
    *(undefined4 *)(param_1 + 0x188) = 4;
    fVar16 = *(float *)(param_1 + 0x334) - *pfVar7;
    fVar15 = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
  }
  else {
    if (iVar2 != 6) {
      if (iVar2 == 0x10) {
        if ((*(int *)(param_1 + 0x7c) != 0) && (cVar3 = FUN_0040add0(&DAT_00b1d560), cVar3 != '\0'))
        {
          FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
        }
      }
      else {
        if (iVar2 != 8) goto LAB_00525619;
        FUN_006d9050(0);
        if ((*(int *)(param_1 + 0x7c) != 0) && (cVar3 = FUN_0040add0("Shoot"), cVar3 != '\0')) {
          iVar13 = FUN_006be840();
          local_c8 = *(float *)(iVar13 + 0x33c);
          local_c4 = *(float *)(iVar13 + 0x340);
          if ((*(int *)(param_1 + 0xf1c) != -1) &&
             (cVar3 = FUN_00a10630(&DAT_00c7b640), cVar3 != '\0')) {
            local_c8 = *extraout_ECX * DAT_00baa9d0 + *pfVar7;
            local_c4 = extraout_ECX[1] * DAT_00baa9d0 + *(float *)(param_1 + 0x340);
          }
          FUN_006d6ba0(0xd5,0x3f333333,2,0,0x3f800000);
          uVar10 = AI_0043ef30();
          iVar13 = FUN_006ccdd0(1,&local_c8,0x41200000,uVar10);
          fVar15 = *(float *)(iVar13 + 0x418) - DAT_00baa1f8;
          fVar16 = *(float *)(iVar13 + 0x360) * DAT_00baa2e4;
          fVar17 = *(float *)(iVar13 + 0x364) * DAT_00baa2e4;
          *(uint *)(iVar13 + 0x438) = *(uint *)(iVar13 + 0x438) | 2;
          *(float *)(iVar13 + 0x418) = fVar15;
          fVar15 = *(float *)(iVar13 + 0x414) * DAT_00baa354;
          *(undefined4 *)(iVar13 + 0x43c) = *(undefined4 *)(iVar13 + 0x43c);
          *(undefined4 *)(iVar13 + 0x420) = 0x3fcccccd;
          *(float *)(iVar13 + 0x414) = fVar15 - DAT_00baa83c;
          *(float *)(iVar13 + 0x360) = fVar16;
          *(float *)(iVar13 + 0x364) = fVar17;
        }
      }
      goto LAB_00525589;
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (cVar3 = FUN_0040ae70(&DAT_00b1d560), cVar3 == '\0'))
    goto LAB_00525619;
    *(undefined4 *)(param_1 + 0x188) = 4;
    *(undefined4 *)(param_1 + 0x15c) = *(undefined4 *)(*(int *)(param_1 + 0x330) + 0x24);
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar3 = FUN_0040add0(&DAT_00b1d574);
      if (cVar3 != '\0') {
        FUN_006c04b0(1);
        *(undefined4 *)(param_1 + 0x15c) = 0;
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (cVar3 = FUN_0040ae70(&DAT_00b1d574), cVar3 != '\0')) {
        if (((*(int *)(param_1 + 0x7c) != 0) && (cVar3 = FUN_0040add0("Shoot"), cVar3 != '\0')) &&
           ((cVar3 = FUN_00417430(0,0x10000000), cVar3 == '\0' ||
            ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)))) {
          FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
          cVar3 = FUN_00417430(0x1000a00,0);
          if (cVar3 == '\0') {
            FUN_006d6ba0(0xe2,0x3f800000,2,0,0x3f800000);
            uVar10 = AI_0043ef30();
            local_d8 = 7.0;
            local_d4 = 0.0;
            FUN_006cb2e0(pfVar7,&local_d8,6,uVar10);
          }
        }
        if (*(int *)(param_1 + 0xf1c) == -1) {
          FUN_0081e9d0(&local_c8,0x41a00000);
          iVar13 = FUN_00703950(&local_c8);
          fVar16 = local_c4 - *(float *)(iVar13 + 0x340);
          fVar15 = local_c8 - *(float *)(iVar13 + 0x33c);
          fVar15 = fVar16 * fVar16 + fVar15 * fVar15;
          if ((DAT_00baac44 < fVar15) && (fVar15 < DAT_00baaca4)) {
            iVar13 = *(int *)(DAT_00c71678 + 0x18300);
            uVar5 = FUN_00812c90(&local_c8);
            if ((0x1bf < uVar5) || (*(int *)(iVar13 + 0x76c + uVar5 * 4) < 500)) {
              iVar13 = *(int *)(iVar13 + 0xc);
              fVar15 = (float)((int)uVar5 / iVar13) * DAT_00baa904 + DAT_00baaa00;
              *(float *)(param_1 + 0x334) =
                   (float)((int)uVar5 % iVar13) * DAT_00baa904 + DAT_00baa904;
              *(float *)(param_1 + 0x338) = fVar15;
            }
          }
        }
        else {
          FUN_006d8b20(2);
          FUN_007e33c0(&DAT_00c7b640,0x40400000,0,1);
          FUN_006d8d30(&local_d0);
          fVar15 = local_d0;
          fVar16 = local_cc;
          iVar13 = FUN_007f0780(local_d0,local_cc);
          if (iVar13 != 0) {
            fVar16 = 0.0;
            fVar15 = 0.0;
            pfVar7 = (float *)FUN_00813520(local_e0,&local_d0,0x42200000,1,0,0);
            local_d0 = *pfVar7;
            local_cc = pfVar7[1];
          }
          local_d4 = local_cc;
          local_c4 = local_d0;
          cVar3 = FUN_006b9740(&local_d0,fVar15,fVar16);
          if (cVar3 == '\0') {
            *(float *)(param_1 + 0x334) = local_c4;
            *(float *)(param_1 + 0x338) = local_d4;
          }
        }
        goto LAB_00525619;
      }
    }
    if (*(int *)(param_1 + 0xf1c) != -1) {
      FUN_007e33c0(&DAT_00c7b640,0x3f800000,0,1);
      goto LAB_00525619;
    }
    fVar15 = *(float *)(param_1 + 0xbb0) * _DAT_00baa488 + DAT_00baa054;
    if (DAT_00baa454 <= fVar15) {
      fVar15 = DAT_00baa454;
    }
    *(float *)(param_1 + 0xbb0) = fVar15;
    fVar16 = (*(float *)(param_1 + 0x334) - *pfVar7) * fVar15;
    fVar15 = (*(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340)) * fVar15;
  }
  *(float *)(param_1 + 0x364) = fVar15;
  *(float *)(param_1 + 0x360) = fVar16;
LAB_00525619:
  FUN_006c04b0(0);
  FUN_00aef12b();
  return;
}

