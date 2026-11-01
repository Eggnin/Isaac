/* Local J460 decompiler output.
 * VA: 0x00460780
 * Entry: 00460780
 * Dispatcher: 0x006c2990
 * Types: 264
 * Identities: 264.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00461fc0; instructions=1398
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=264; identities=264.0.0; dispatcher=0x006c2990;
   end=0x00461fc0; instructions=1398 */

void __fastcall AI_00460780(undefined4 *param_1)

{
  int *piVar1;
  byte bVar2;
  byte **ppbVar3;
  undefined4 *puVar4;
  char cVar5;
  uint uVar6;
  int iVar7;
  byte **ppbVar8;
  uint uVar9;
  float *pfVar10;
  undefined4 **ppuVar11;
  undefined4 *puVar12;
  float *pfVar13;
  undefined4 uVar14;
  undefined *puVar15;
  byte *pbVar16;
  char *pcVar17;
  undefined4 **ppuVar18;
  undefined4 extraout_ECX;
  int iVar19;
  bool bVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  undefined4 local_1c8;
  undefined4 local_1c4;
  undefined4 local_1bc;
  undefined4 local_1b8;
  undefined4 local_1b0;
  float local_1ac [2];
  float local_1a4;
  undefined4 *local_1a0;
  undefined4 *local_19c;
  float local_198;
  undefined4 *local_194;
  float local_190;
  undefined4 *local_18c;
  float local_188;
  undefined4 *local_184;
  undefined *local_180;
  float local_17c;
  undefined local_178 [20];
  float local_164;
  undefined4 local_e4;
  undefined local_d0 [4];
  undefined4 local_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  float local_bc;
  float local_b8;
  uint local_78;
  undefined4 local_3c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af26aa;
  local_1c = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_194 = param_1;
  local_24 = uVar6;
  if (param_1[0x2d9] == 0) {
    param_1[0x59] = 0x40a00000;
    param_1[0x2d9] = 3;
    param_1[0x104] = 0;
    param_1[0x2f1] = 0;
    puStack_20 = &stack0xfffffffc;
    if (param_1[0xc] == 1) {
      iVar19 = 2;
      puStack_20 = &stack0xfffffffc;
      do {
        iVar7 = FUN_0040b220(iVar19);
        iVar19 = iVar19 + 1;
        *(undefined *)(iVar7 + 0x74) = 0;
      } while (iVar19 < 8);
    }
    goto LAB_00461cce;
  }
  local_180 = (undefined *)0x0;
  if ((param_1[0xc] == 1) &&
     (puVar12 = (undefined4 *)param_1[2], puVar12 != (undefined4 *)param_1[3])) {
    do {
      if ((puVar12[2] & 0x200) != 0) {
        *puVar12 = 0;
      }
      puVar12 = puVar12 + 0xe;
    } while (puVar12 != (undefined4 *)param_1[3]);
  }
  local_18c = param_1 + 0x1e;
  puVar15 = &stack0xfffffffc;
  if (param_1[0x1f] != 0) {
    cVar5 = FUN_0040add0("EndSucking");
    if (cVar5 != '\0') {
      local_17c = 1.339641e-42;
      FUN_00956780();
      FUN_0092dc30(local_17c,0x3f800000,2,0,0x3f800000,0);
      local_18c = param_1 + 0x1e;
    }
    puVar15 = puStack_20;
    if ((param_1[0x1f] != 0) &&
       (cVar5 = FUN_0040add0("StartSucking"), puVar15 = puStack_20, cVar5 != '\0')) {
      local_17c = 1.341043e-42;
      FUN_00956780();
      FUN_0092dc30(local_17c,0x3f800000,2,0,0x3f800000,0);
      puVar15 = puStack_20;
    }
  }
  puStack_20 = puVar15;
  iVar19 = param_1[0x2d9];
  if (iVar19 == 3) {
    ppbVar3 = (byte **)param_1[0x1f];
    if (ppbVar3 == (byte **)0x0) {
LAB_00460996:
      cVar5 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar8 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar8 = (byte **)*ppbVar3;
      }
      pbVar16 = &DAT_00b1bc54;
      do {
        bVar2 = *(byte *)ppbVar8;
        bVar20 = bVar2 < *pbVar16;
        if (bVar2 != *pbVar16) {
LAB_00460978:
          uVar9 = -(uint)bVar20 | 1;
          goto LAB_0046097d;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppbVar8 + 1);
        bVar20 = bVar2 < pbVar16[1];
        if (bVar2 != pbVar16[1]) goto LAB_00460978;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pbVar16 = pbVar16 + 2;
      } while (bVar2 != 0);
      uVar9 = 0;
LAB_0046097d:
      if ((uVar9 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_00460996;
    }
    if (((((param_1[0x5b] & 0x10000000) == 0) ||
         ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) &&
        (iVar19 = param_1[0x104], param_1[0x104] = iVar19 + 1, 0x1e < iVar19)) &&
       ((uVar6 = FUN_006eef60(uVar6), uVar6 % 0xf == 0 ||
        ((DAT_00ba9fe4 < (float)param_1[5] && (uVar6 = FUN_006eef60(), uVar6 % 5 == 0)))))) {
      iVar7 = FUN_006be840();
      iVar19 = 0x1e;
      local_17c = 4.203895e-44;
      if (param_1[0xc] == 2) {
        local_17c = 0.0;
      }
      fVar21 = *(float *)(iVar7 + 0x33c) * *(float *)(iVar7 + 0x33c) +
               *(float *)(iVar7 + 0x340) * *(float *)(iVar7 + 0x340);
      FUN_00435a50();
      if (fVar21 < DAT_00baaa00) {
        iVar19 = 0x32;
      }
      iVar7 = 0x14;
      if (DAT_00baaad4 < fVar21) {
        iVar7 = 0x28;
      }
      iVar19 = iVar19 + (int)local_17c;
      local_18c = (undefined4 *)(iVar7 + iVar19);
      local_180 = (undefined *)((int)local_18c + (int)local_17c + iVar19);
      if (local_180 == (undefined *)0x0) {
        uVar6 = 0;
      }
      else {
        uVar6 = FUN_006eef60();
        uVar6 = uVar6 % (uint)local_180;
      }
      if ((int)uVar6 < (int)local_17c) {
        param_1[0x2d9] = 0x10;
      }
      else if ((int)uVar6 < iVar19) {
        param_1[0x2d9] = 10;
        FUN_006d6ba0(0x12e,0x3f800000,2,0,0x3f800000);
      }
      else if ((int)uVar6 < (int)local_18c) {
        param_1[0x2d9] = 6;
        pfVar10 = (float *)FUN_006bec40(&local_188,0);
        iVar19 = FUN_006be840();
        fVar23 = *(float *)(iVar19 + 0x364) * DAT_00baa81c;
        fVar21 = pfVar10[1];
        param_1[0xcd] = *(float *)(iVar19 + 0x360) * DAT_00baa81c + *pfVar10;
        param_1[0xce] = fVar23 + fVar21;
        param_1[0x2ec] = 0;
        uVar6 = FUN_006eef60();
        param_1[0x2f0] = uVar6 & 1;
      }
    }
  }
  else if (iVar19 == 0x10) {
    ppbVar3 = (byte **)param_1[0x1f];
    if (ppbVar3 == (byte **)0x0) {
LAB_00460bfe:
      cVar5 = FUN_0040a5d0("Sucking",1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar8 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar8 = (byte **)*ppbVar3;
      }
      pcVar17 = "Sucking";
      do {
        bVar2 = *(byte *)ppbVar8;
        bVar20 = bVar2 < (byte)*pcVar17;
        if (bVar2 != *pcVar17) {
LAB_00460be0:
          uVar6 = -(uint)bVar20 | 1;
          goto LAB_00460be5;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppbVar8 + 1);
        bVar20 = bVar2 < ((byte *)pcVar17)[1];
        if (bVar2 != ((byte *)pcVar17)[1]) goto LAB_00460be0;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pcVar17 = (char *)((byte *)pcVar17 + 2);
      } while (bVar2 != 0);
      uVar6 = 0;
LAB_00460be5:
      if ((uVar6 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_00460bfe;
    }
    if (param_1[0x1f] != 0) {
      cVar5 = FUN_0040ae70("StartSucking");
      if ((cVar5 != '\0') &&
         ((param_1[0x1f] == 0 || (cVar5 = FUN_0040ae70("EndSucking"), cVar5 == '\0')))) {
        local_180 = (undefined *)0x0;
        local_184 = *(undefined4 **)(DAT_00c71678 + 0x18300);
        if (local_184[0x499] != 0) {
          do {
            iVar19 = *(int *)(local_184[0x497] + (int)local_180 * 4);
            if ((*(char *)(iVar19 + 0x173) == '\0') &&
               ((iVar7 = *(int *)(iVar19 + 0x28), iVar7 == 1 ||
                ((((iVar7 - 10U < 0x3de && (iVar7 != 0x21)) || (iVar7 == 2)) ||
                 ((iVar7 == 9 || (iVar7 == 5)))))))) {
              fVar21 = *(float *)(iVar19 + 0x33c);
              local_17c = *(float *)(iVar19 + 0x340);
              if ((iVar7 == 1) && (iVar7 = *(int *)(iVar19 + 0x1e68), iVar7 != 0)) {
                fVar22 = fVar21 - *(float *)(iVar7 + 0x33c);
                fVar23 = local_17c - *(float *)(iVar7 + 0x340);
                if (fVar23 * fVar23 + fVar22 * fVar22 < DAT_00baabf8) {
                  fVar21 = (*(float *)(iVar7 + 0x33c) + fVar21) * DAT_00baa2d0;
                  local_17c = (*(float *)(iVar7 + 0x340) + local_17c) * DAT_00baa2d0;
                }
              }
              local_1a0 = (undefined4 *)param_1[0xd0];
              local_19c = (undefined4 *)param_1[0xcf];
              local_17c = (float)local_1a0 - local_17c;
              local_18c = (undefined4 *)((float)local_19c - fVar21);
              fVar21 = local_17c * local_17c + (float)local_18c * (float)local_18c;
              FUN_00435a50();
              if (DAT_00ba9fe4 < fVar21) {
                local_18c = (undefined4 *)((DAT_00baa454 / fVar21) * (float)local_18c);
                local_17c = local_17c * (DAT_00baa454 / fVar21);
              }
              fVar21 = (float)local_1a0 - *(float *)(iVar19 + 0x340);
              fVar23 = (float)local_19c - *(float *)(iVar19 + 0x33c);
              local_194 = (undefined4 *)0x3f666666;
              fVar23 = fVar21 * fVar21 + fVar23 * fVar23;
              FUN_00435a50();
              fVar21 = *(float *)(iVar19 + 0x36c);
              local_19c = (undefined4 *)0x0;
              local_1a0 = (undefined4 *)(((DAT_00baab98 - fVar23) * DAT_00baa3e0) / DAT_00baab98);
              ppuVar18 = &local_1a0;
              if ((float)local_1a0 <= 0.0) {
                ppuVar18 = &local_19c;
              }
              ppuVar11 = &local_194;
              if ((float)*ppuVar18 <= DAT_00baa3e0 && DAT_00baa3e0 != (float)*ppuVar18) {
                ppuVar11 = ppuVar18;
              }
              puVar12 = *ppuVar11;
              if (NAN(fVar21) == (fVar21 == 0.0)) {
                *(float *)(iVar19 + 0x360) =
                     ((float)local_18c * (float)*ppuVar11 * *(float *)(iVar19 + 0x39c)) / fVar21 +
                     *(float *)(iVar19 + 0x360);
                *(float *)(iVar19 + 0x364) =
                     (local_17c * (float)puVar12 * *(float *)(iVar19 + 0x39c)) / fVar21 +
                     *(float *)(iVar19 + 0x364);
              }
            }
            local_180 = local_180 + 1;
          } while (local_180 < (undefined *)local_184[0x499]);
        }
      }
      if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_00461cb6;
    }
    param_1[0x2d9] = 8;
  }
  else if (iVar19 == 8) {
    ppbVar3 = (byte **)param_1[0x1f];
    if (ppbVar3 == (byte **)0x0) {
LAB_00460f54:
      cVar5 = FUN_0040a5d0("Puking",1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar8 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar8 = (byte **)*ppbVar3;
      }
      pcVar17 = "Puking";
      do {
        bVar2 = *(byte *)ppbVar8;
        bVar20 = bVar2 < (byte)*pcVar17;
        if (bVar2 != *pcVar17) {
LAB_00460f36:
          uVar6 = -(uint)bVar20 | 1;
          goto LAB_00460f3b;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppbVar8 + 1);
        bVar20 = bVar2 < ((byte *)pcVar17)[1];
        if (bVar2 != ((byte *)pcVar17)[1]) goto LAB_00460f36;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pcVar17 = (char *)((byte *)pcVar17 + 2);
      } while (bVar2 != 0);
      uVar6 = 0;
LAB_00460f3b:
      if ((uVar6 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_00460f54;
    }
    if (param_1[0x1f] != 0) {
      cVar5 = FUN_0040add0("Shoot");
      if (cVar5 != '\0') {
        FUN_006d6ba0(0x137,0x3f800000,2,0,0x3f800000);
        local_180 = (undefined *)0x3be;
        FUN_00956780();
        FUN_0092dc30(local_180,0x3f800000,2,0,0x3f800000,0);
      }
      if (param_1[0x1f] != 0) {
        cVar5 = FUN_0040ae70("Shoot");
        if ((cVar5 != '\0') &&
           ((param_1[0x1f] == 0 || (cVar5 = FUN_0040ae70("StopShooting"), cVar5 == '\0')))) {
          iVar19 = FUN_006be840();
          local_19c = (undefined4 *)(*(float *)(iVar19 + 0x33c) - (float)param_1[0xcf]);
          local_17c = *(float *)(iVar19 + 0x340) - (float)param_1[0xd0];
          if (param_1[0xc] == 1) {
            cVar5 = FUN_006ac710(3,param_1[8]);
            if (cVar5 != '\0') {
              AI_0043ef30();
              local_188 = 5.0;
              local_184 = (undefined4 *)0x40800000;
              local_78 = local_78 | 0x200000;
              local_cc = 0xc2200000;
              local_bc = 1.5;
              local_c8 = 0x3fc00000;
              local_b8 = (float)(*(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca]) * DAT_00baa0d0;
              local_3c = 3;
              local_198 = (float)param_1[0xcf] - DAT_00ba9fe4;
              local_194 = (undefined4 *)((float)param_1[0xd0] - DAT_00baa7e8);
              FUN_006cb2e0(&local_198,&local_188,9,local_d0);
            }
          }
          else {
            iVar19 = FUN_0040a780();
            fVar21 = ((float)iVar19 - DAT_00baa81c) / DAT_00baa854;
            if (fVar21 <= DAT_00ba9fe4) {
              fVar21 = DAT_00ba9fe4;
            }
            if (DAT_00baa454 <= fVar21) {
              fVar21 = DAT_00baa454;
            }
            local_1a0 = (undefined4 *)(fVar21 + fVar21 + DAT_00baa454);
            AI_0043ef30();
            local_cc = 0xc3960000;
            local_c8 = 0xc2200000;
            local_c4 = 0x40000000;
            iVar19 = FUN_006eef60();
            local_3c = 3;
            local_bc = (float)((double)iVar19 + (&DAT_00bacb00)[-(iVar19 >> 0x1f)]) * DAT_00ba9ff4 +
                       DAT_00baa2d0;
            puVar12 = (undefined4 *)FUN_0067f070(local_1ac);
            iVar19 = FUN_006eef60();
            local_194 = (undefined4 *)
                        ((float)((double)iVar19 + (&DAT_00bacb00)[-(iVar19 >> 0x1f)]) * DAT_00ba9ff4
                        );
            local_184 = (undefined4 *)*puVar12;
            local_180 = (undefined *)puVar12[1];
            iVar19 = FUN_006be840();
            local_190 = (float)local_184 * (float)local_194 * (float)local_1a0 +
                        (float)local_19c * DAT_00baa09c + *(float *)(iVar19 + 0x360) * DAT_00baa304;
            local_18c = (undefined4 *)
                        ((float)local_180 * (float)local_194 * (float)local_1a0 +
                         local_17c * DAT_00baa09c + *(float *)(iVar19 + 0x364) * DAT_00baa304);
            FUN_006cb2e0(param_1 + 0xcf,&local_190,0,local_d0);
          }
        }
LAB_00461c93:
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_00461cb6;
      }
    }
LAB_00461ca2:
    param_1[0x2d9] = 3;
    param_1[0x104] = 0;
  }
  else if (iVar19 == 6) {
    iVar19 = param_1[0x2f0];
    if (iVar19 < 2) {
      ppbVar3 = (byte **)param_1[0x1f];
      if (ppbVar3 == (byte **)0x0) {
LAB_00461380:
        cVar5 = FUN_0040a5d0("Jumping",1);
        if (cVar5 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppbVar8 = ppbVar3;
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar8 = (byte **)*ppbVar3;
        }
        pcVar17 = "Jumping";
        do {
          bVar2 = *(byte *)ppbVar8;
          bVar20 = bVar2 < (byte)*pcVar17;
          if (bVar2 != *pcVar17) {
LAB_00461362:
            uVar6 = -(uint)bVar20 | 1;
            goto LAB_00461367;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppbVar8 + 1);
          bVar20 = bVar2 < ((byte *)pcVar17)[1];
          if (bVar2 != ((byte *)pcVar17)[1]) goto LAB_00461362;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pcVar17 = (char *)((byte *)pcVar17 + 2);
        } while (bVar2 != 0);
        uVar6 = 0;
LAB_00461367:
        if ((uVar6 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0')))
           ) goto LAB_00461380;
      }
      if (param_1[0x1f] == 0) {
LAB_004613ea:
        param_1[0x2f0] = 2;
        iVar19 = 2;
        goto LAB_004613f9;
      }
      cVar5 = FUN_0040add0("EarlyTransition");
      if ((cVar5 != '\0') && (param_1[0x2f0] == 1)) {
        param_1[0x2f0] = 3;
        iVar19 = 3;
        goto LAB_004613f9;
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_004613ea;
      iVar19 = param_1[0x2f0];
      if (iVar19 != 0) goto LAB_004613f9;
    }
    else {
LAB_004613f9:
      if ((((float)param_1[0xce] - (float)param_1[0xd0]) *
           ((float)param_1[0xce] - (float)param_1[0xd0]) +
           ((float)param_1[0xcd] - (float)param_1[0xcf]) *
           ((float)param_1[0xcd] - (float)param_1[0xcf]) < DAT_00baa630) || (iVar19 == 3)) {
        param_1[0x2d9] = 7;
      }
    }
    if ((param_1[0x1f] != 0) && (cVar5 = FUN_0040add0(&DAT_00b1d560), cVar5 != '\0')) {
      FUN_006d6ba0(0x12f,0x3f800000,2,0,0x3f800000);
    }
    if ((param_1[0x2f0] != 0) ||
       ((param_1[0x1f] != 0 && (cVar5 = FUN_0040ae70(&DAT_00b1d560), cVar5 != '\0')))) {
      fVar21 = DAT_00baa454;
      fVar23 = (float)param_1[0x2ec] + DAT_00baa08c;
      if (DAT_00baa454 <= (float)param_1[0x2ec] + DAT_00baa08c) {
        fVar23 = DAT_00baa454;
      }
      param_1[0x2ec] = fVar23;
      param_1[0xd8] =
           ((float)param_1[0xcf] * (fVar21 - fVar23) + fVar23 * (float)param_1[0xcd]) -
           (float)param_1[0xcf];
      param_1[0xd9] =
           (fVar23 * (float)param_1[0xce] + (float)param_1[0xd0] * (fVar21 - fVar23)) -
           (float)param_1[0xd0];
      param_1[0x62] = 0;
      param_1[0x61] = 0;
    }
  }
  else {
    if (iVar19 == 7) {
      ppbVar3 = (byte **)param_1[0x1f];
      if (ppbVar3 == (byte **)0x0) {
LAB_0046159e:
        cVar5 = FUN_0040a5d0("Landing",1);
        if (cVar5 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppbVar8 = ppbVar3;
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar8 = (byte **)*ppbVar3;
        }
        pcVar17 = "Landing";
        do {
          bVar2 = *(byte *)ppbVar8;
          bVar20 = bVar2 < (byte)*pcVar17;
          if (bVar2 != *pcVar17) {
LAB_00461580:
            uVar6 = -(uint)bVar20 | 1;
            goto LAB_00461585;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppbVar8 + 1);
          bVar20 = bVar2 < ((byte *)pcVar17)[1];
          if (bVar2 != ((byte *)pcVar17)[1]) goto LAB_00461580;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pcVar17 = (char *)((byte *)pcVar17 + 2);
        } while (bVar2 != 0);
        uVar6 = 0;
LAB_00461585:
        if ((uVar6 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0')))
           ) goto LAB_0046159e;
      }
      pfVar10 = (float *)(param_1 + 0xcf);
      if (param_1[0x61] == 0) {
        local_198 = *pfVar10;
        local_194 = (undefined4 *)param_1[0xd0];
        local_184 = *(undefined4 **)(DAT_00c71678 + 0x18300);
        iVar19 = FUN_007f0780(local_198,local_194);
        if (iVar19 != 0) {
          pfVar13 = (float *)FUN_0081e520(local_1ac,pfVar10,0x42a00000);
          *pfVar10 = *pfVar13;
          param_1[0xd0] = pfVar13[1];
        }
        param_1[0x61] = 5;
      }
      if (param_1[0x1f] != 0) {
        cVar5 = FUN_0040add0("Landed");
        if (cVar5 != '\0') {
          param_1[0x62] = 4;
          if (param_1[0xc] == 1) {
            uVar14 = AI_0043ef30();
            local_188 = 10.0;
            local_184 = (undefined4 *)0x40c00000;
            FUN_006cb2e0(param_1 + 0xcf,&local_188,9,uVar14);
            FUN_006b64d0(0x40400000);
          }
          else if ((param_1[0xc] == 2) && (param_1[0x2f0] != 3)) {
            uVar6 = FUN_006eef60();
            local_1a0 = (undefined4 *)
                        (DAT_00baab30 / (float)((double)((uVar6 & 1) + 3) + DAT_00bacb00));
            do {
              uVar14 = FUN_006eef60();
              uVar14 = FUN_006fe410(1000,0x48,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar14,0);
              local_194 = (undefined4 *)
                          __RTDynamicCast(uVar14,0,&IsaacRepentancePlus::Entity::
                                                    RTTI_Type_Descriptor,
                                          &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,
                                          0);
              puVar12 = local_194 + 0xef;
              if (local_194[0xef] != 0) {
                local_184 = puVar12;
                FUN_004cf210(&local_184);
              }
              *puVar12 = param_1;
              FUN_004cdcf0(puVar12);
              fVar21 = DAT_00baab30;
              local_194[0x11d] = local_180;
              local_180 = (undefined *)((float)local_180 + (float)local_1a0);
            } while ((float)local_180 < fVar21);
          }
          else {
            local_18c = (undefined4 *)&DAT_00000005;
            do {
              uVar14 = FUN_006eef60();
              iVar19 = FUN_006eef60();
              fVar21 = (float)((double)iVar19 + (&DAT_00bacb00)[-(iVar19 >> 0x1f)]) * DAT_00ba9ff4 *
                       DAT_00baa704;
              local_180 = (undefined *)(fVar21 + fVar21);
              iVar19 = FUN_006eef60();
              local_17c = (float)((double)iVar19 + (&DAT_00bacb00)[-(iVar19 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa98c;
              puVar15 = local_180;
              FUN_0041d540();
              local_188 = (float)puVar15 * local_17c + (float)param_1[0xcf];
              puVar15 = local_180;
              FUN_0041d520();
              local_184 = (undefined4 *)((float)puVar15 * local_17c + (float)param_1[0xd0]);
              uVar14 = FUN_006fe410(1000,0x16,&local_188,&DAT_00c7b640,param_1,0,uVar14,0);
              iVar19 = __RTDynamicCast(uVar14,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                       &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,0);
              local_18c = (undefined4 *)((int)local_18c + -1);
              fVar21 = DAT_00c37940 * DAT_00baa630;
              *(float *)(iVar19 + 0xe4) = DAT_00c3793c * DAT_00baa630;
              *(float *)(iVar19 + 0xe8) = fVar21;
            } while (local_18c != (undefined4 *)0x0);
          }
          FUN_00703670(10);
          FUN_006d6ba0(0x30,0x3f800000,2,0,0x3f800000);
          FUN_006d6ba0(0x12f,0x3f800000,2,0,0x3f800000);
          FUN_00456570();
          local_1c8 = param_1[0xcf];
          local_1c4 = param_1[0xd0];
          iVar19 = *(int *)(DAT_00c71678 + 0x18300);
          local_1b0 = 0xd;
          local_1b8 = 0x3ccccccd;
          local_1bc = 0x3d23d70a;
          piVar1 = (int *)(iVar19 + 0x70fc);
          *piVar1 = *piVar1 + 1;
          uVar6 = *(uint *)(iVar19 + 0x70fc) & 0x80000001;
          if ((int)uVar6 < 0) {
            uVar6 = (uVar6 - 1 | 0xfffffffe) + 1;
          }
          FUN_0081df10(uVar6,&local_1c8);
        }
        goto LAB_00461c93;
      }
      goto LAB_00461ca2;
    }
    if (iVar19 == 10) {
      FUN_0040a380(&DAT_00b1deb4,0);
      cVar5 = FUN_00417430(0,0x10000000);
      local_184 = (undefined4 *)&DAT_00000008;
      if (cVar5 != '\0') {
        local_184 = (undefined4 *)0x3;
      }
      cVar5 = FUN_0040b030(&DAT_00b1deb4);
      if (cVar5 != '\0') {
        uVar14 = FUN_006eef60();
        puVar12 = param_1 + 0xcf;
        FUN_006fe410(1000,0x22,puVar12,&DAT_00c7b640,param_1,0,uVar14,0);
        pfVar10 = (float *)0x461a67;
        FUN_006d6ba0(0x3ea,0x3f800000,2,0,0x3f800000);
        local_180 = (undefined *)((uint)(param_1[0xc] == 2) * 4 + 4);
        cVar5 = FUN_00417430(0,0x10000000);
        puVar15 = local_180;
        if (cVar5 != '\0') {
          iVar19 = FUN_006ac7e0(0xd9,0,extraout_ECX,0);
          puVar15 = local_180 + -iVar19;
        }
        if (param_1[0xc] == 1) {
LAB_00461cec:
          if ((param_1[0xc] == 1) &&
             (((int)param_1[0x2f1] < (int)local_184 && (uVar6 = FUN_006eef60(), (uVar6 & 1) == 0))))
          {
            pfVar10 = local_1ac;
            uVar14 = FUN_00813520(pfVar10,param_1 + 0xcf,0x42700000,0,0,0);
            puVar15 = (undefined *)FUN_00812c90(uVar14);
            local_17c = *(float *)(DAT_00c71678 + 0x18300);
            local_180 = puVar15;
            if ((((undefined *)0x1bf < puVar15) ||
                (((iVar19 = *(int *)((int)local_17c + 0x24 + (int)puVar15 * 4), iVar19 == 0 ||
                  (iVar19 = *(int *)(iVar19 + 4), iVar19 == 1)) || (iVar19 == 10)))) &&
               (*(int *)((int)local_17c + 8) != 0x10)) {
              local_184 = (undefined4 *)FUN_007e90f0();
              if (((int)puVar15 < 0) || (0x1bf < (int)puVar15)) {
                FUN_00a112c0(0x10,"SpawnGridEntity: Grid index invalid\n");
              }
              if ((puVar15 < (undefined *)0x1c0) &&
                 (*(int *)((int)local_17c + 0x76c + (int)puVar15 * 4) < 0x385)) {
                puVar12 = (undefined4 *)FUN_00a0f4c0(0x19c);
                local_14 = 7;
                local_194 = puVar12;
                if (puVar12 == (undefined4 *)0x0) {
                  puVar12 = (undefined4 *)0x0;
                }
                else {
                  FUN_00709c40();
                  *puVar12 = IsaacRepentancePlus::GridEntity_Poop::vftable;
                  puVar12[0x56] = 0;
                  puVar12[0x5a] = 0;
                  puVar12[0x5b] = 0xf;
                  *(undefined *)(puVar12 + 0x56) = 0;
                  puVar12[0x5d] = 0;
                  puVar12[0x5e] = 0;
                  puVar12[0x5f] = 0;
                  puVar12[0x60] = 0;
                  uVar14 = DAT_00c7b644;
                  puVar12[0x61] = DAT_00c7b640;
                  puVar12[0x62] = uVar14;
                  uVar14 = DAT_00c7b644;
                  puVar12[99] = DAT_00c7b640;
                  puVar12[100] = uVar14;
                  puVar12[0x65] = 0;
                  puVar12[0x66] = 0;
                }
                local_14 = 0xffffffff;
                if (puVar12 != (undefined4 *)0x0) {
                  puVar12[1] = 0xe;
                  puVar12[9] = local_180;
                  puVar4 = *(undefined4 **)((int)local_17c + 0x24 + (int)local_180 * 4);
                  if (puVar4 != (undefined4 *)0x0) {
                    (**(code **)*puVar4)(1);
                  }
                  *(undefined4 **)((int)local_17c + 0x24 + (int)local_180 * 4) = puVar12;
                  puVar12[2] = 1;
                  puVar12[6] = 0;
                  FUN_00709db0(local_184);
                }
              }
              param_1[0x2f1] = param_1[0x2f1] + 1;
            }
LAB_00461c56:
            puVar12 = param_1 + 0xcf;
          }
          else {
            iVar19 = FUN_006be840();
            local_188 = *(float *)(iVar19 + 0x33c);
            local_184 = *(undefined4 **)(iVar19 + 0x340);
            if ((float)(undefined4 *)((float)param_1[0xd0] - DAT_00baa9a0) <
                (float)*(undefined4 **)(iVar19 + 0x340)) {
              local_184 = (undefined4 *)((float)param_1[0xd0] - DAT_00baa9a0);
            }
            AI_0043ef30();
            iVar19 = FUN_006eef60();
            local_e4 = 3;
            local_164 = (float)((double)iVar19 + (&DAT_00bacb00)[-(iVar19 >> 0x1f)]) * DAT_00ba9ff4
                        + DAT_00baa2d0;
            FUN_006ccdd0(0x1e,&local_188,0x41700000,local_178);
          }
        }
        else {
          iVar7 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                  *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
          iVar19 = 0;
          if (0 < iVar7) {
            iVar19 = iVar7;
          }
          if (((int)puVar15 <= iVar19) || (uVar6 = FUN_006eef60(), (uVar6 & 1) != 0))
          goto LAB_00461cec;
          uVar6 = FUN_006eef60();
          local_17c = (float)((uVar6 & 1) + 1);
          if (param_1[0xc] == 2) {
            local_17c = 4.203895e-45;
LAB_00461b20:
            do {
              uVar14 = FUN_006eef60();
              pfVar13 = (float *)FUN_00813520(local_1ac,puVar12,0x42700000,0,0,0);
              iVar19 = FUN_006eef60();
              fVar21 = (float)((double)iVar19 + (&DAT_00bacb00)[-(iVar19 >> 0x1f)]) * DAT_00ba9ff4 *
                       DAT_00baa704;
              local_180 = (undefined *)(fVar21 + fVar21);
              iVar19 = FUN_006eef60();
              local_18c = (undefined4 *)
                          ((float)((double)iVar19 + (&DAT_00bacb00)[-(iVar19 >> 0x1f)]) *
                          DAT_00ba9ff4);
              puVar15 = local_180;
              FUN_0041d520();
              local_184 = (undefined4 *)
                          ((float)puVar15 * (float)local_18c * DAT_00baa81c + pfVar13[1]);
              puVar15 = local_180;
              FUN_0041d540();
              param_1 = local_194;
              pfVar10 = &local_1a4;
              local_1a4 = (float)puVar15 * (float)local_18c * DAT_00baa81c + *pfVar13;
              local_1a0 = local_184;
              FUN_006fe410(0xd9,0,pfVar10,&DAT_00c7b640,local_194,0,uVar14,0);
              local_17c = (float)((int)local_17c + -1);
              puVar12 = param_1 + 0xcf;
            } while (local_17c != 0.0);
            goto LAB_00461c56;
          }
          if (local_17c != 0.0) goto LAB_00461b20;
        }
        FUN_006fed60(puVar12,param_1,0,0,0,pfVar10,0x42480000,DAT_00c34bd0,DAT_00c34bd4,DAT_00c34bd8
                     ,DAT_00c34bdc);
      }
      goto LAB_00461c93;
    }
  }
LAB_00461cb6:
  param_1[0xdb] = (float)param_1[0xdb] * DAT_00baa2d0;
LAB_00461cce:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

