/* Local J460 decompiler output.
 * VA: 0x005153b0
 * Entry: 005153b0
 * Dispatcher: 0x006c2990
 * Types: 40,218,862
 * Identities: 218.0.0,40.0.0,40.1.0,40.2.0,862.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00517150; instructions=1702
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=40,218,862;
   identities=218.0.0,40.0.0,40.1.0,40.2.0,862.0.0; dispatcher=0x006c2990; end=0x00517150;
   instructions=1702 */

void __fastcall AI_005153b0(int param_1)

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
  undefined4 uVar11;
  char cVar12;
  int iVar13;
  int iVar14;
  uint3 uVar19;
  byte **ppbVar15;
  float *pfVar16;
  undefined4 uVar17;
  int *piVar18;
  char *pcVar20;
  byte *pbVar21;
  undefined4 *puVar22;
  uint uVar23;
  bool bVar24;
  float fVar25;
  float fVar26;
  undefined4 *puVar27;
  float fVar28;
  undefined auStack_190 [4];
  undefined4 *local_18c;
  char local_185;
  float local_184;
  int *local_180;
  int *local_17c;
  undefined4 *local_174;
  float local_170;
  int *local_16c;
  float local_168;
  float local_164;
  int *local_160;
  float local_15c;
  int *local_158;
  int *local_154;
  int local_150;
  float local_14c;
  undefined4 local_13c [8];
  undefined4 local_11c;
  undefined4 uStack_118;
  undefined4 local_114;
  undefined4 local_110 [8];
  undefined4 local_f0;
  undefined4 uStack_ec;
  undefined4 local_e8;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_190;
  iVar13 = FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),
                        *(undefined4 *)(DAT_00c71678 + 0x1830c));
  iVar14 = *(int *)(param_1 + 0x28);
  local_164 = (float)(*(uint *)(iVar13 + 0x44) >> 1 & 0xffffff01);
  if (iVar14 == 0xda) {
    local_185 = SUB41(local_164,0) == '\0';
    if ((*(char *)(param_1 + 0x173) != '\0') && (-1 < *(int *)(param_1 + 0x32c))) {
      FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),0xffffffff);
      FUN_004e45c0(&local_180,param_1 + 0x32c);
      iVar14 = *(int *)(param_1 + 0x28);
    }
  }
  else {
    local_185 = '\x01';
  }
  if (iVar14 == 0x28) {
    bVar24 = *(int *)(param_1 + 0x2c) == 2;
  }
  else {
    bVar24 = iVar14 == 0x35e;
  }
  if (bVar24) {
    if (*(int *)(param_1 + 0x9c) == 0) {
      iVar14 = *(int *)(param_1 + 200);
    }
    else {
      local_174 = (undefined4 *)FUN_0040ace0("Deform");
      iVar14 = *(int *)(param_1 + 200);
      if (local_174 != (undefined4 *)0x0) {
        uVar23 = 0;
        if (iVar14 != 0) {
          do {
            iVar14 = FUN_0040b220(uVar23);
            *(undefined4 *)(iVar14 + 0x40) = *local_174;
            *(undefined4 *)(iVar14 + 0x44) = local_174[1];
            iVar14 = FUN_0040b220(uVar23);
            *(undefined4 *)(iVar14 + 0x34) = local_174[4];
            *(undefined4 *)(iVar14 + 0x38) = local_174[5];
            local_158 = (int *)local_174[0x11];
            iVar14 = FUN_0040b220(uVar23);
            uVar23 = uVar23 + 1;
            *(int **)(iVar14 + 0x3c) = local_158;
          } while (uVar23 < *(uint *)(param_1 + 200));
        }
        goto LAB_00515571;
      }
    }
    uVar23 = 0;
    if (iVar14 != 0) {
      do {
        iVar14 = FUN_0040b220(uVar23);
        *(float *)(iVar14 + 0x40) = DAT_00c7b640;
        *(int **)(iVar14 + 0x44) = DAT_00c7b644;
        iVar14 = FUN_0040b220(uVar23);
        *(float *)(iVar14 + 0x34) = DAT_00c3793c;
        *(float *)(iVar14 + 0x38) = DAT_00c37940;
        iVar14 = FUN_0040b220(uVar23);
        uVar23 = uVar23 + 1;
        *(undefined4 *)(iVar14 + 0x3c) = 0;
      } while (uVar23 < *(uint *)(param_1 + 200));
    }
  }
LAB_00515571:
  local_150 = 0;
  iVar14 = *(int *)(param_1 + 0x28);
  if (iVar14 == 0x28) {
    if (*(int *)(param_1 + 0x2c) == 2) {
      local_17c = *(int **)(param_1 + 0x16c);
      uVar23 = *(uint *)(param_1 + 0x168);
      if (((((uVar23 & 0x1000a00) == 0) && ((uVar23 & 0x4000) == 0)) &&
          (cVar12 = FUN_006fd350(), cVar12 == '\0')) &&
         ((~*(byte *)(DAT_00c71678 + 0x264f8) & 1) != 0)) {
        if ((uVar23 & 0x100) == 0) {
LAB_00515626:
          uVar23 = *(uint *)(param_1 + 0x168) & 0x20000000;
          uVar19 = (uint3)(uVar23 >> 8);
          if (uVar23 == 0) {
            iVar14 = (uint)uVar19 << 8;
          }
          else {
            iVar14 = CONCAT31(uVar19,1);
          }
          local_150 = FUN_007069a0(iVar14,*(uint *)(param_1 + 0xb84) >> 0x1f ^ 1,FUN_00515290);
        }
        else {
          local_150 = FUN_00707370(FUN_00515290);
          if (local_150 == 0) {
            local_150 = 0;
            goto LAB_00515626;
          }
        }
        piVar18 = (int *)(param_1 + 0x3c4);
        if (*(int *)(param_1 + 0x3c4) != 0) {
          local_158 = piVar18;
          FUN_004cf210(&local_158);
        }
        *piVar18 = local_150;
        if (local_150 == 0) goto LAB_0051569c;
        FUN_004cdcf0(piVar18);
      }
      else {
LAB_0051569c:
        local_150 = FUN_006be840();
      }
      local_184 = *(float *)(local_150 + 0x33c) - *(float *)(param_1 + 0x33c);
      local_18c = (undefined4 *)(*(float *)(local_150 + 0x340) - *(float *)(param_1 + 0x340));
      fVar25 = local_184 * local_184 + (float)local_18c * (float)local_18c;
      FUN_00435a50();
      if (DAT_00ba9fe4 < fVar25) {
        local_184 = local_184 * ((float)DAT_00baa454 / fVar25);
        local_18c = (undefined4 *)((float)local_18c * ((float)DAT_00baa454 / fVar25));
      }
      local_184 = local_184 + local_184;
      local_18c = (undefined4 *)((float)local_18c + (float)local_18c);
      if (*(char *)(param_1 + 0x148) != '\0') {
        local_184 = (float)((uint)local_184 ^ DAT_00bacb70);
      }
      iVar14 = FUN_0040b220(1);
      *(float *)(iVar14 + 0x40) = local_184 + *(float *)(iVar14 + 0x40);
      *(float *)(iVar14 + 0x44) = (float)local_18c + *(float *)(iVar14 + 0x44);
      iVar14 = *(int *)(param_1 + 0x28);
    }
    if (iVar14 != 0x28) goto LAB_0051577b;
LAB_0051590a:
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar2 == (byte **)0x0) {
LAB_0051595e:
      pcVar20 = "Roll";
      goto LAB_00515965;
    }
    ppbVar15 = ppbVar2;
    if (&DAT_0000000f < ppbVar2[5]) {
      ppbVar15 = (byte **)*ppbVar2;
    }
    pbVar21 = &DAT_00b1e758;
    do {
      bVar1 = *(byte *)ppbVar15;
      bVar24 = bVar1 < *pbVar21;
      if (bVar1 != *pbVar21) {
LAB_00515940:
        uVar23 = -(uint)bVar24 | 1;
        goto LAB_00515945;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar15 + 1);
      bVar24 = bVar1 < pbVar21[1];
      if (bVar1 != pbVar21[1]) goto LAB_00515940;
      ppbVar15 = (byte **)((int)ppbVar15 + 2);
      pbVar21 = pbVar21 + 2;
    } while (bVar1 != 0);
    uVar23 = 0;
LAB_00515945:
    if ((uVar23 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
    goto LAB_0051595e;
  }
  else {
LAB_0051577b:
    if (iVar14 == 0x35e) goto LAB_0051590a;
    if (iVar14 != 0xda) goto LAB_0051597c;
    if (((*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328) < 0x1e) ||
        (local_164._0_1_ != '\0')) || (cVar12 = FUN_0044bfb0(0x97), cVar12 != '\0')) {
      ppbVar2 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar2 == (byte **)0x0) {
LAB_005158e0:
        cVar12 = FUN_0040a5d0("No-Spikes",1);
        if (cVar12 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar15 = ppbVar2;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar15 = (byte **)*ppbVar2;
        }
        pcVar20 = "No-Spikes";
        do {
          bVar1 = *(byte *)ppbVar15;
          bVar24 = bVar1 < (byte)*pcVar20;
          if (bVar1 != *pcVar20) {
LAB_005158c2:
            uVar23 = -(uint)bVar24 | 1;
            goto LAB_005158c7;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar15 + 1);
          bVar24 = bVar1 < ((byte *)pcVar20)[1];
          if (bVar1 != ((byte *)pcVar20)[1]) goto LAB_005158c2;
          ppbVar15 = (byte **)((int)ppbVar15 + 2);
          pcVar20 = (char *)((byte *)pcVar20 + 2);
        } while (bVar1 != 0);
        uVar23 = 0;
LAB_005158c7:
        if ((uVar23 != 0) ||
           ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
        goto LAB_005158e0;
      }
      *(undefined4 *)(param_1 + 0x388) = 0;
      goto LAB_0051597c;
    }
    if (*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328) == 0x1e) {
      FUN_006d6ba0(0xcd,0x3fc00000,2,0,0x3f800000);
      *(undefined4 *)(param_1 + 0x388) = *(undefined4 *)(*(int *)(param_1 + 0x330) + 0x28);
    }
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar2 == (byte **)0x0) {
LAB_0051587d:
      pcVar20 = "Spikes";
    }
    else {
      ppbVar15 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar15 = (byte **)*ppbVar2;
      }
      pcVar20 = "Spikes";
      do {
        bVar1 = *(byte *)ppbVar15;
        bVar24 = bVar1 < (byte)*pcVar20;
        if (bVar1 != *pcVar20) {
LAB_00515850:
          uVar23 = -(uint)bVar24 | 1;
          goto LAB_00515855;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar15 + 1);
        bVar24 = bVar1 < ((byte *)pcVar20)[1];
        if (bVar1 != ((byte *)pcVar20)[1]) goto LAB_00515850;
        ppbVar15 = (byte **)((int)ppbVar15 + 2);
        pcVar20 = (char *)((byte *)pcVar20 + 2);
      } while (bVar1 != 0);
      uVar23 = 0;
LAB_00515855:
      if (uVar23 != 0) goto LAB_0051587d;
      if ((*(byte *)(ppbVar2 + 0xd) == 0) || (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_0051597c;
      pcVar20 = "Spikes";
    }
LAB_00515965:
    cVar12 = FUN_0040a5d0(pcVar20,1);
    if (cVar12 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
  }
LAB_0051597c:
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xbc0) = 0xffffffff;
    *(undefined *)(param_1 + 0xbc4) = 0;
    *(undefined4 *)(param_1 + 0xba0) = 0x3c;
    *(float *)(param_1 + 0x334) = DAT_00c7b640;
    *(int **)(param_1 + 0x338) = DAT_00c7b644;
    *(undefined *)(param_1 + 0x148) = 1;
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0xc34) = 0x3f800000;
    uVar11 = uRam00c34e8c;
    uVar10 = uRam00c34e88;
    uVar9 = uRam00c34e84;
    uVar8 = _UNK_00bac7bc;
    uVar7 = _UNK_00bac7b8;
    uVar6 = _UNK_00bac7b4;
    uVar5 = _UNK_00bac28c;
    uVar4 = _UNK_00bac288;
    uVar3 = _UNK_00bac284;
    uVar17 = _DAT_00bac280;
    if (*(int *)(param_1 + 0x28) == 0x28) {
      if (*(int *)(param_1 + 0x2c) != 2) goto LAB_00515a85;
      local_11c = 0;
      uStack_118 = 0;
      local_114 = 0;
      if ((undefined4 *)(param_1 + 0x1e4) == local_13c) goto LAB_00515a85;
      *(undefined4 *)(param_1 + 0x1e4) = _DAT_00bac7b0;
      *(undefined4 *)(param_1 + 0x1e8) = uVar6;
      *(undefined4 *)(param_1 + 0x1ec) = uVar7;
      *(undefined4 *)(param_1 + 0x1f0) = uVar8;
      *(undefined4 *)(param_1 + 500) = uVar17;
      *(undefined4 *)(param_1 + 0x1f8) = uVar3;
      *(undefined4 *)(param_1 + 0x1fc) = uVar4;
      *(undefined4 *)(param_1 + 0x200) = uVar5;
      *(undefined8 *)(param_1 + 0x204) = 0;
      uVar17 = 0;
    }
    else {
      if ((*(int *)(param_1 + 0x28) != 0x35e) ||
         ((undefined4 *)(param_1 + 0x1e4) == (undefined4 *)&DAT_00c34e80)) goto LAB_00515a85;
      *(undefined4 *)(param_1 + 0x1e4) = _DAT_00c34e80;
      *(undefined4 *)(param_1 + 0x1e8) = uVar9;
      *(undefined4 *)(param_1 + 0x1ec) = uVar10;
      *(undefined4 *)(param_1 + 0x1f0) = uVar11;
      uVar4 = uRam00c34e9c;
      uVar3 = uRam00c34e98;
      uVar17 = uRam00c34e94;
      *(undefined4 *)(param_1 + 500) = _DAT_00c34e90;
      *(undefined4 *)(param_1 + 0x1f8) = uVar17;
      *(undefined4 *)(param_1 + 0x1fc) = uVar3;
      *(undefined4 *)(param_1 + 0x200) = uVar4;
      *(undefined8 *)(param_1 + 0x204) = DAT_00c34ea0;
      uVar17 = DAT_00c34ea8;
    }
    *(undefined4 *)(param_1 + 0x20c) = uVar17;
LAB_00515a85:
    if (*(int *)(param_1 + 0x28) == 0xda) {
      *(uint *)(param_1 + 0x16c) = *(uint *)(param_1 + 0x16c) | 8;
      uVar5 = _UNK_00bac7bc;
      uVar4 = _UNK_00bac7b8;
      uVar3 = _UNK_00bac7b4;
      uVar17 = _DAT_00bac7b0;
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb | 1;
      *(undefined *)(param_1 + 0x3b0) = 1;
      local_f0 = 0;
      uStack_ec = 0;
      local_e8 = 0;
      if ((undefined4 *)(param_1 + 0x1e4) != local_110) {
        *(undefined4 *)(param_1 + 0x1e4) = uVar17;
        *(undefined4 *)(param_1 + 0x1e8) = uVar3;
        *(undefined4 *)(param_1 + 0x1ec) = uVar4;
        *(undefined4 *)(param_1 + 0x1f0) = uVar5;
        *(undefined8 *)(param_1 + 0x204) = 0;
        *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
        *(undefined4 *)(param_1 + 0x20c) = 0;
      }
      *(undefined4 *)(param_1 + 500) = 0x3f800000;
      *(undefined4 *)(param_1 + 0x1f8) = 0x3f800000;
      *(undefined4 *)(param_1 + 0x1fc) = 0x3f800000;
      *(undefined4 *)(param_1 + 0x200) = 0x3f800000;
    }
    uVar23 = *(uint *)(param_1 + 0x30);
    if (uVar23 != 0) {
      if (4 < uVar23) {
        uVar23 = 4;
      }
      *(uint *)(param_1 + 0xbc0) = 4 - uVar23;
    }
    *(float *)(param_1 + 0xbb0) = DAT_00c7b640;
    *(int **)(param_1 + 0xbb4) = DAT_00c7b644;
    FUN_00aef12b();
    return;
  }
  if ((local_185 != '\0') && (*(int *)(DAT_00c71678 + 0x264f8) == *(int *)(param_1 + 0x328))) {
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
    FUN_00aef12b();
    return;
  }
  puVar22 = *(undefined4 **)(param_1 + 0xbc0);
  if (((int)puVar22 < 0) && (local_185 != '\0')) {
    *(undefined4 *)(param_1 + 0xbc0) = 0;
    local_174 = (undefined4 *)0x0;
    do {
      puVar27 = local_174;
      local_16c = (int *)((float)((&DAT_00b61590)[(int)local_174 * 2] * 0x28) +
                         *(float *)(param_1 + 0x33c));
      local_168 = (float)((&DAT_00b61594)[(int)local_174 * 2] * 0x28) + *(float *)(param_1 + 0x340);
      iVar14 = FUN_00515010();
      puVar22 = local_174;
      if (iVar14 != 0) goto LAB_00515c77;
      local_174 = (undefined4 *)((int)puVar27 + 1);
      *(undefined4 **)(param_1 + 0xbc0) = local_174;
    } while ((int)local_174 < 4);
    uVar23 = FUN_006eef60();
    *(undefined4 **)(param_1 + 0xbc0) = (undefined4 *)(uVar23 & 3);
    puVar22 = (undefined4 *)(uVar23 & 3);
LAB_00515c77:
    fVar25 = *(float *)(param_1 + 0x36c) * DAT_00baa304;
  }
  else if (local_185 == '\0') {
    fVar25 = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
    *(undefined4 *)(param_1 + 0x184) = 5;
  }
  else {
    fVar25 = *(float *)(param_1 + 0x36c) * DAT_00baa304;
  }
  *(float *)(param_1 + 0x36c) = fVar25;
  fVar25 = *(float *)(param_1 + 0x334);
  local_18c = puVar22;
  if (((((NAN(fVar25) || NAN(DAT_00c7b640)) == (fVar25 == DAT_00c7b640)) ||
       ((NAN(*(float *)(param_1 + 0x338)) || NAN((float)DAT_00c7b644)) ==
        (*(float *)(param_1 + 0x338) == (float)DAT_00c7b644))) && (local_185 != '\0')) &&
     ((*(int *)(param_1 + 0xba0) != -1 &&
      (DAT_00baadc0 <
       (*(float *)(param_1 + 0x340) - *(float *)(param_1 + 0x338)) *
       (float)(&DAT_00b61594)[(int)puVar22 * 2] +
       (float)(&DAT_00b61590)[(int)puVar22 * 2] * (*(float *)(param_1 + 0x33c) - fVar25))))) {
    *(float *)(param_1 + 0x334) = DAT_00c7b640;
    *(int **)(param_1 + 0x338) = DAT_00c7b644;
    local_18c = *(undefined4 **)(param_1 + 0xbc0);
  }
  puVar22 = local_18c;
  if ((((NAN(*(float *)(param_1 + 0x334)) || NAN(DAT_00c7b640)) !=
        (*(float *)(param_1 + 0x334) == DAT_00c7b640)) &&
      ((NAN(*(float *)(param_1 + 0x338)) || NAN((float)DAT_00c7b644)) !=
       (*(float *)(param_1 + 0x338) == (float)DAT_00c7b644))) && (local_185 != '\0')) {
    puVar22 = (undefined4 *)((int)local_18c * 2);
    iVar14 = (&DAT_00b61590)[(int)local_18c * 2];
    iVar13 = (&DAT_00b61590)[(uint)(*(char *)(param_1 + 0xbc5) != '\0') * 2 + 1 + (int)puVar22];
    local_16c = (int *)((float)((iVar14 + iVar13) * -0x28) + *(float *)(param_1 + 0x33c));
    local_168 = (float)((iVar14 - iVar13) * 0x28) + *(float *)(param_1 + 0x340);
    local_160 = (int *)(*(float *)(param_1 + 0x33c) - (float)(iVar13 * 0x28));
    local_15c = (float)(iVar14 * 0x28) + *(float *)(param_1 + 0x340);
    local_174 = puVar22;
    local_16c = (int *)FUN_00515010();
    local_184 = (float)FUN_00515010();
    local_18c = (undefined4 *)0xffffffff;
    if (((*(int *)(param_1 + 0xf1c) != -1) && (-1 < *(int *)(param_1 + 0xba0))) &&
       ((FUN_006d82d0(&local_160),
        (NAN((float)local_160) || NAN(DAT_00c7b640)) == ((float)local_160 == DAT_00c7b640) ||
        ((NAN(local_15c) || NAN((float)DAT_00c7b644)) == (local_15c == (float)DAT_00c7b644))))) {
      pfVar16 = (float *)FUN_0067f170();
      local_18c = (undefined4 *)0x0;
      if ((float)((uint)*pfVar16 & DAT_00bacb40) <= (float)((uint)pfVar16[1] & DAT_00bacb40)) {
        if (pfVar16[1] < 0.0) {
          local_18c = (undefined4 *)0x2;
        }
      }
      else {
        local_18c = (undefined4 *)((uint)(*pfVar16 < 0.0) * 2 + 1);
      }
      fVar25 = DAT_00baa54c;
      FUN_0041d540();
      local_164 = fVar25;
      fVar28 = DAT_00baa54c;
      FUN_0041d520();
      fVar25 = *pfVar16;
      fVar26 = pfVar16[1];
      local_158 = (int *)(local_164 * fVar25 - fVar28 * fVar26);
      local_164 = local_164 * fVar26 + fVar28 * fVar25;
      uVar23 = (int)local_18c + (4 - *(int *)(param_1 + 0xbc0)) & 0x80000001;
      if ((int)uVar23 < 0) {
        uVar23 = (uVar23 - 1 | 0xfffffffe) + 1;
      }
      puVar22 = local_174;
      if (uVar23 == 1) {
        local_14c = *(float *)(param_1 + 0x33c);
        local_160 = *(int **)(param_1 + 0x340);
        local_180 = (int *)(fVar25 * DAT_00baa904 + local_14c);
        local_17c = (int *)(fVar26 * DAT_00baa904 + (float)local_160);
        iVar14 = FUN_00515010();
        puVar22 = local_174;
        if (iVar14 == 0) {
          local_180 = (int *)(((float)local_158 + *pfVar16) * DAT_00baa904 +
                             *(float *)(param_1 + 0x33c));
          local_17c = (int *)((local_164 + pfVar16[1]) * DAT_00baa904 + *(float *)(param_1 + 0x340))
          ;
          iVar14 = FUN_00515010();
          if (iVar14 == 0) {
            local_180 = (int *)((*pfVar16 - (float)local_158) * DAT_00baa904 + local_14c);
            local_17c = (int *)((pfVar16[1] - local_164) * DAT_00baa904 + (float)local_160);
            iVar14 = FUN_00515010();
            puVar22 = local_174;
            if (iVar14 == 0) goto LAB_005160bd;
          }
          puVar22 = local_174;
          if (local_18c != *(undefined4 **)(param_1 + 0xbc0)) {
            *(undefined4 **)(param_1 + 0xbc0) = local_18c;
            *(undefined *)(param_1 + 0xbc4) = 1;
            puVar22 = (undefined4 *)((int)local_18c * 2);
          }
        }
      }
    }
LAB_005160bd:
    if ((((local_16c == (int *)0x0) || (local_184 != 0.0)) || (*(char *)(param_1 + 0xbc4) != '\0'))
       || ((*(int *)(param_1 + 0xba0) < 0 || (*(undefined4 **)(param_1 + 0xbc0) == local_18c)))) {
      local_174 = *(undefined4 **)(DAT_00c71678 + 0x18300);
      iVar13 = (int)((((float)((&DAT_00b61590)[(int)puVar22] * 0x28) + *(float *)(param_1 + 0x33c))
                     - DAT_00baa904) / DAT_00baa904 + (float)DAT_00baa2d0);
      iVar14 = (int)((((float)((&DAT_00b61594)[(int)puVar22] * 0x28) + *(float *)(param_1 + 0x340))
                     - DAT_00baaa00) / DAT_00baa904 + (float)DAT_00baa2d0);
      if (((iVar13 < 0) || (((int)local_174[3] <= iVar13 || (iVar14 < 0)))) ||
         ((int)local_174[4] <= iVar14)) {
        uVar23 = 0xffffffff;
        iVar14 = FUN_007f0800(0xffffffff);
LAB_00516240:
        if (iVar14 == 0) {
          fVar25 = (float)((int)uVar23 / (int)local_174[3]) * DAT_00baa904 + DAT_00baaa00;
          *(float *)(param_1 + 0x334) =
               (float)((int)uVar23 % (int)local_174[3]) * DAT_00baa904 + DAT_00baa904;
          *(float *)(param_1 + 0x338) = fVar25;
          *(undefined *)(param_1 + 0xbc4) = 0;
          puVar22 = *(undefined4 **)(param_1 + 0xbc0);
          goto LAB_0051634c;
        }
      }
      else {
        uVar23 = local_174[3] * iVar14 + iVar13;
        iVar14 = FUN_007f0800(uVar23);
        if ((0x1bf < uVar23) || (local_174[uVar23 + 0x1db] != 0x3b6)) goto LAB_00516240;
      }
      if (*(int *)(param_1 + 0xba0) == -2) {
        *(undefined4 *)(param_1 + 0xba0) = 0x3c;
        if ((*(int *)(param_1 + 0xbc0) == 0) ||
           (pcVar20 = "HitHori", *(int *)(param_1 + 0xbc0) == 2)) {
          pcVar20 = "HitVert";
        }
        FUN_0040a940(pcVar20,0);
        local_174 = DAT_00baa454;
        puVar22 = DAT_00baa528;
        if ((*(int *)(param_1 + 0xc64) == 0x12) ||
           (puVar22 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
          local_174 = puVar22;
        }
        local_158 = (int *)0x48;
        FUN_00956780();
        FUN_0092dc30(local_158,0x3f800000,2,0,local_174,0);
        *(undefined4 *)(param_1 + 0xc34) = 0x3dcccccd;
      }
      if (-1 < (int)local_18c) {
        uVar23 = (int)local_18c + (4 - *(int *)(param_1 + 0xbc0)) & 0x80000001;
        if ((int)uVar23 < 0) {
          uVar23 = (uVar23 - 1 | 0xfffffffe) + 1;
        }
        if (uVar23 == 1) {
          *(undefined4 **)(param_1 + 0xbc0) = local_18c;
          puVar22 = local_18c;
          goto LAB_0051634c;
        }
      }
      puVar22 = (undefined4 *)
                (*(int *)(param_1 + 0xbc0) + 1 + (uint)(*(char *)(param_1 + 0xbc5) != '\0') * 2);
      *(undefined4 **)(param_1 + 0xbc0) = puVar22;
    }
    else {
      puVar22 = (undefined4 *)
                ((int)*(undefined4 **)(param_1 + 0xbc0) +
                (uint)(*(char *)(param_1 + 0xbc5) == '\0') * 2 + 1);
      *(undefined4 **)(param_1 + 0xbc0) = puVar22;
      *(undefined *)(param_1 + 0xbc4) = 1;
    }
  }
LAB_0051634c:
  if ((int)puVar22 < 4) {
    if ((int)puVar22 < 0) {
      puVar22 = puVar22 + 1;
      goto LAB_0051635d;
    }
  }
  else {
    puVar22 = puVar22 + -1;
LAB_0051635d:
    *(undefined4 **)(param_1 + 0xbc0) = puVar22;
  }
  fVar25 = *(float *)(param_1 + 0x334);
  if ((((NAN(fVar25) || NAN(DAT_00c7b640)) != (fVar25 == DAT_00c7b640)) &&
      ((NAN(*(float *)(param_1 + 0x338)) || NAN((float)DAT_00c7b644)) !=
       (*(float *)(param_1 + 0x338) == (float)DAT_00c7b644))) || (local_185 == '\0'))
  goto LAB_00516602;
  local_16c = (int *)(*(float *)(param_1 + 0x33c) - fVar25);
  local_160 = (int *)(*(float *)(param_1 + 0x340) - *(float *)(param_1 + 0x338));
  fVar25 = (float)local_160 * (float)local_160 + (float)local_16c * (float)local_16c;
  FUN_00435a50();
  uVar23 = DAT_00bacb40;
  if (*(int *)(param_1 + 0xba0) != -1) {
    if (fVar25 < DAT_00baa81c) {
LAB_00516438:
      *(float *)(param_1 + 0x334) = DAT_00c7b640;
      *(int **)(param_1 + 0x338) = DAT_00c7b644;
    }
    else if (DAT_00baa630 <= (float)((uint)(fVar25 - *(float *)(param_1 + 0xbb0)) & DAT_00bacb40)) {
      *(float *)(param_1 + 0xbb0) = fVar25;
      *(undefined4 *)(param_1 + 0xbb4) = 0;
    }
    else {
      fVar26 = *(float *)(param_1 + 0xbb4) + DAT_00baa0b4;
      bVar24 = DAT_00baa1d4 <= fVar26;
      *(float *)(param_1 + 0xbb4) = fVar26;
      if (bVar24) goto LAB_00516438;
    }
  }
  fVar26 = DAT_00baa6fc;
  if (((*(int *)(param_1 + 0x28) == 0x28) && (fVar26 = DAT_00baa710, *(int *)(param_1 + 0x2c) != 1))
     && (fVar26 = DAT_00baa6fc, *(int *)(param_1 + 0x2c) == 2)) {
    fVar26 = DAT_00baa6b8;
  }
  fVar28 = *(float *)(param_1 + 0x36c);
  fVar25 = (fVar26 * *(float *)(param_1 + 0xc34)) / fVar25;
  fVar26 = (float)((uint)local_160 ^ DAT_00bacb70);
  if (NAN(fVar28) == (fVar28 == 0.0)) {
    *(float *)(param_1 + 0x360) =
         ((float)((uint)local_16c ^ DAT_00bacb70) * fVar25 * *(float *)(param_1 + 0x39c)) / fVar28 +
         *(float *)(param_1 + 0x360);
    *(float *)(param_1 + 0x364) =
         (fVar26 * fVar25 * *(float *)(param_1 + 0x39c)) / fVar28 + *(float *)(param_1 + 0x364);
  }
  fVar25 = *(float *)(param_1 + 0x334);
  if (((NAN(fVar25) || NAN(DAT_00c7b640)) == (fVar25 == DAT_00c7b640)) ||
     ((NAN(*(float *)(param_1 + 0x338)) || NAN((float)DAT_00c7b644)) ==
      (*(float *)(param_1 + 0x338) == (float)DAT_00c7b644))) {
    fVar26 = *(float *)(param_1 + 0x39c);
    if ((float)((uint)local_160 & uVar23) <= (float)((uint)local_16c & uVar23)) {
      fVar25 = DAT_00baa304;
      if ((NAN(fVar26) || NAN((float)DAT_00baa454)) == (fVar26 == (float)DAT_00baa454)) {
        fVar25 = DAT_00baa304 / ((fVar26 + DAT_00baa304) - fVar26 * DAT_00baa304);
      }
      *(float *)(param_1 + 0x364) =
           (*(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340)) * DAT_00baa280 * fVar26 +
           fVar25 * *(float *)(param_1 + 0x364);
    }
    else {
      fVar28 = DAT_00baa304;
      if ((NAN(fVar26) || NAN((float)DAT_00baa454)) == (fVar26 == (float)DAT_00baa454)) {
        fVar28 = DAT_00baa304 / ((fVar26 + DAT_00baa304) - fVar26 * DAT_00baa304);
      }
      *(float *)(param_1 + 0x360) =
           (fVar25 - *(float *)(param_1 + 0x33c)) * DAT_00baa280 * fVar26 +
           fVar28 * *(float *)(param_1 + 0x360);
    }
  }
LAB_00516602:
  if ((*(int *)(param_1 + 0x28) == 0x28) && (*(int *)(param_1 + 0x2c) == 2)) {
    iVar14 = *(int *)(param_1 + 0xba0);
    if (iVar14 == 0) {
      local_18c = (undefined4 *)0x0;
      local_184 = 0.0;
      if (*(int *)(param_1 + 0xf1c) == -1) {
        if (local_150 != 0) {
          local_160 = *(int **)(local_150 + 0x33c);
          local_180 = (int *)(*(float *)(local_150 + 0x360) * DAT_00baa784 +
                             *(float *)(local_150 + 0x33c));
          local_17c = (int *)(*(float *)(local_150 + 0x364) * DAT_00baa784 +
                             *(float *)(local_150 + 0x340));
          local_15c = *(float *)(local_150 + 0x340);
          local_168 = 0.0;
          local_16c = (int *)0x0;
          FUN_007f0df0(&local_160,&local_180,1,0,0,0,&local_16c);
          pfVar16 = (float *)FUN_005150b0(&local_16c);
          local_184 = *pfVar16;
          local_18c = (undefined4 *)pfVar16[1];
        }
      }
      else {
        FUN_006d85a0(&local_16c);
        if (((NAN((float)local_16c) || NAN(DAT_00c7b640)) == ((float)local_16c == DAT_00c7b640)) ||
           ((NAN(local_168) || NAN((float)DAT_00c7b644)) == (local_168 == (float)DAT_00c7b644))) {
          pfVar16 = (float *)FUN_0067f170();
          local_14c = *(float *)(DAT_00c71678 + 0x18300);
          local_160 = (int *)(pfVar16[1] * DAT_00baa904 + *(float *)(param_1 + 0x340));
          local_16c = (int *)(*pfVar16 * DAT_00baa904 + *(float *)(param_1 + 0x33c));
          local_158 = local_16c;
          local_154 = local_160;
          iVar14 = FUN_007f0780(local_16c,local_160);
          if (iVar14 == 0) {
            local_180 = local_16c;
            local_17c = local_160;
            iVar14 = FUN_00812c10(&local_180);
            if (iVar14 < 0x3b6) {
              local_184 = *pfVar16;
              local_18c = (undefined4 *)pfVar16[1];
            }
          }
        }
      }
      if (((NAN(local_184) || NAN(DAT_00c7b640)) == (local_184 == DAT_00c7b640)) ||
         ((NAN((float)local_18c) || NAN((float)DAT_00c7b644)) ==
          ((float)local_18c == (float)DAT_00c7b644))) {
        FUN_0040a940("ChargeStart",0);
        iVar14 = *(int *)(DAT_00c71678 + 0x18300);
        iVar13 = FUN_00812c90(param_1 + 0x33c);
        iVar14 = *(int *)(iVar14 + 0xc);
        uVar17 = 0;
        fVar26 = (float)(iVar13 % iVar14) * DAT_00baa904 + DAT_00baa904;
        *(float *)(param_1 + 0x338) = (float)(iVar13 / iVar14) * DAT_00baa904 + DAT_00baaa00;
        fVar25 = (float)((uint)local_18c & DAT_00bacb40);
        *(float *)(param_1 + 0x334) = fVar26;
        fVar26 = (float)((uint)local_184 & DAT_00bacb40);
        *(undefined4 *)(param_1 + 0xba0) = 0xffffffff;
        *(float *)(param_1 + 3000) = local_184;
        *(undefined4 **)(param_1 + 0xbbc) = local_18c;
        *(undefined4 *)(param_1 + 0xc34) = 0x3f800000;
        if (fVar26 <= fVar25) {
          if ((float)local_18c < 0.0) {
            uVar17 = 2;
          }
          *(undefined4 *)(param_1 + 0xbc0) = uVar17;
        }
        else {
          *(uint *)(param_1 + 0xbc0) = (uint)(local_184 < 0.0) * 2 + 1;
        }
      }
    }
    else if (iVar14 == -1) {
      fVar25 = *(float *)(param_1 + 0xc34) - *(float *)(param_1 + 0x39c) * DAT_00baa120;
      if (fVar25 <= DAT_00baa120) {
        fVar25 = DAT_00baa120;
      }
      *(float *)(param_1 + 0xc34) = fVar25;
      if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
        FUN_0040a940("ChargeLoop",0);
        local_180 = (int *)(*(float *)(param_1 + 3000) * DAT_00baa904 + *(float *)(param_1 + 0x334))
        ;
        iVar14 = *(int *)(DAT_00c71678 + 0x18300);
        local_17c = (int *)(*(float *)(param_1 + 0xbbc) * DAT_00baa904 + *(float *)(param_1 + 0x338)
                           );
        iVar13 = FUN_00812c90(&local_180);
        iVar14 = *(int *)(iVar14 + 0xc);
        fVar25 = (float)(iVar13 / iVar14) * DAT_00baa904 + DAT_00baaa00;
        *(float *)(param_1 + 0x334) = (float)(iVar13 % iVar14) * DAT_00baa904 + DAT_00baa904;
        *(float *)(param_1 + 0x338) = fVar25;
        *(undefined4 *)(param_1 + 0xba0) = 0xfffffffe;
        *(undefined4 *)(param_1 + 0xc34) = 0x3fe66666;
      }
    }
    else if ((iVar14 == -2) && (iVar14 = FUN_006ac760(), iVar14 != 0)) {
      FUN_006d6ba0(0xb9,0x3ecccccd,2,0,0x3f333333);
    }
    iVar14 = *(int *)(param_1 + 0xba0);
    if (-1 < iVar14) {
      if (*(float *)(param_1 + 0xc34) < (float)DAT_00baa454) {
        puVar27 = (undefined4 *)
                  (*(float *)(param_1 + 0x39c) * DAT_00baa0d0 + *(float *)(param_1 + 0xc34));
        puVar22 = DAT_00baa454;
        if ((float)puVar27 <= (float)DAT_00baa454) {
          puVar22 = puVar27;
        }
        *(undefined4 **)(param_1 + 0xc34) = puVar22;
      }
      if (0 < iVar14) {
        iVar14 = ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) + iVar14;
        iVar13 = 0;
        if (0 < iVar14) {
          iVar13 = iVar14;
        }
        *(int *)(param_1 + 0xba0) = iVar13;
      }
    }
  }
  if (*(int *)(param_1 + 0x28) == 0x35e) {
    if (*(int *)(param_1 + 0xba4) < 0x1e) {
      *(int *)(param_1 + 0xba4) =
           ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0)) +
           *(int *)(param_1 + 0xba4);
    }
    else if ((*(int *)(param_1 + 0xf1c) == -1) || (cVar12 = FUN_006cae60(0,7), cVar12 != '\0')) {
      uVar17 = FUN_006eef60();
      iVar14 = FUN_006fe410(1000,0xb,param_1 + 0x33c,&DAT_00c7b640,0,0,uVar17,0);
      *(undefined4 *)(iVar14 + 0x34c) = 0;
      *(undefined4 *)(iVar14 + 0x350) = 0xc1600000;
      if (*(int *)(iVar14 + 0x3bc) != 0) {
        local_16c = (int *)(iVar14 + 0x3bc);
        FUN_004cf210(&local_16c);
      }
      *(int *)(iVar14 + 0x3bc) = param_1;
      FUN_004cdcf0((int *)(iVar14 + 0x3bc));
      *(undefined4 *)(iVar14 + 0x450) = 1;
      *(undefined4 *)(iVar14 + 0x358) = 0x40a00000;
      iVar14 = FUN_006be840();
      local_174 = (undefined4 *)(*(float *)(iVar14 + 0x33c) - *(float *)(param_1 + 0x33c));
      local_164 = *(float *)(iVar14 + 0x340) - *(float *)(param_1 + 0x340);
      fVar25 = (float)local_174 * (float)local_174 + local_164 * local_164;
      FUN_00435a50();
      if (DAT_00ba9fe4 < fVar25) {
        local_174 = (undefined4 *)((float)local_174 * ((float)DAT_00baa454 / fVar25));
        local_164 = local_164 * ((float)DAT_00baa454 / fVar25);
      }
      if (*(int *)(param_1 + 0xf1c) == -1) {
        *(float *)(param_1 + 0xf20) = DAT_00c7b640;
        piVar18 = DAT_00c7b644;
      }
      else {
        FUN_006d85a0(&local_180);
        *(int **)(param_1 + 0xf20) = local_180;
        piVar18 = local_17c;
      }
      *(int **)(param_1 + 0xf24) = piVar18;
      puVar22 = *(undefined4 **)(param_1 + 0xf20);
      if (((NAN((float)puVar22) || NAN(DAT_00c7b640)) == ((float)puVar22 == DAT_00c7b640)) ||
         ((NAN((float)piVar18) || NAN((float)DAT_00c7b644)) ==
          ((float)piVar18 == (float)DAT_00c7b644))) {
        local_164 = *(float *)(param_1 + 0xf24);
        local_174 = puVar22;
      }
      uVar17 = AI_0043ef30();
      local_180 = (int *)((float)local_174 * DAT_00baa81c);
      local_17c = (int *)(local_164 * DAT_00baa81c);
      FUN_006cb2e0((float *)(param_1 + 0x33c),&local_180,0,uVar17);
      FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
      cVar12 = FUN_0040aaf0("Shoot",1);
      if (cVar12 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0xac) = 1;
      }
      *(undefined4 *)(param_1 + 0xba4) = 0;
    }
  }
  iVar14 = 5;
  if (*(int *)(param_1 + 0x2c) == 1) {
    iVar14 = 2;
  }
  if ((*(int *)(param_1 + 0x2c) == 2) && (iVar14 = 4, *(int *)(param_1 + 0xba0) == -2)) {
    iVar14 = 1;
  }
  if ((((*(int *)(param_1 + 0x28) == 0x28) || (*(int *)(param_1 + 0x28) == 0x35e)) &&
      ((*(uint *)(param_1 + 0x168) & 0x4000) == 0)) &&
     ((cVar12 = FUN_006fd350(), cVar12 == '\0' &&
      ((*(int *)(DAT_00c71678 + 0x264f8) + *(int *)(param_1 + 0x20)) % iVar14 == 0)))) {
    if (*(int *)(param_1 + 0x2c) == 1) {
      uVar17 = FUN_006eef60();
      uVar17 = FUN_006fe410(1000,0x16,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar17,0);
      iVar14 = __RTDynamicCast(uVar17,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                               &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,0);
      fVar25 = DAT_00c37940;
      fVar26 = DAT_00c3793c * DAT_00baa120;
      *(undefined4 *)(iVar14 + 0x478) = 0x3f400000;
      fVar25 = fVar25 * DAT_00baa120;
      *(undefined4 *)(iVar14 + 0x45c) = 0x14;
      *(float *)(iVar14 + 0xe4) = fVar26;
      *(undefined4 *)(iVar14 + 0x460) = 0x14;
      *(float *)(iVar14 + 0xe8) = fVar25;
      FUN_00aef12b();
      return;
    }
    if (*(int *)(param_1 + 0x2c) == 2) {
      if (iVar14 == 1) {
        local_14c = (float)(*(uint *)(param_1 + 3000) ^ DAT_00bacb70);
        local_158 = (int *)(*(uint *)(param_1 + 0xbbc) ^ DAT_00bacb70);
        uVar17 = FUN_006eef60();
        iVar14 = FUN_006eef60();
        local_16c = (int *)(((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c) * DAT_00baa088);
        piVar18 = local_16c;
        FUN_0041d540();
        local_160 = piVar18;
        FUN_0041d520();
        iVar14 = FUN_006eef60();
        local_170 = (float)local_158 * DAT_00baa75c + *(float *)(param_1 + 0x340);
        fVar25 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa7e8 + DAT_00baa630;
        local_174 = (undefined4 *)(local_14c * DAT_00baa75c + *(float *)(param_1 + 0x33c));
        local_17c = (int *)(((float)local_160 * (float)local_158 + (float)local_16c * local_14c) *
                           fVar25);
        local_180 = (int *)(((float)local_160 * local_14c - (float)local_16c * (float)local_158) *
                           fVar25);
        piVar18 = (int *)FUN_006fe410(1000,99,&local_174,&local_180,0,1,uVar17,0);
        iVar14 = FUN_006eef60();
        fVar25 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) * DAT_00ba9ff4
                 * (float)DAT_00baa528 + (float)DAT_00baa454;
        piVar18[0x39] = (int)(fVar25 * (float)piVar18[0x39]);
        piVar18[0x3a] = (int)(fVar25 * (float)piVar18[0x3a]);
        uVar17 = FUN_004238f0(0x3f800000);
        FUN_004073d0(uVar17);
        (**(code **)(*piVar18 + 0xc))();
      }
      uVar17 = FUN_006eef60();
      uVar17 = FUN_006fe410(1000,0x1a,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar17,0);
      iVar14 = __RTDynamicCast(uVar17,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                               &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,0);
      fVar25 = DAT_00c37940;
      fVar26 = DAT_00c3793c * DAT_00baa120;
      *(undefined4 *)(iVar14 + 0x478) = 0x3f400000;
      fVar25 = fVar25 * DAT_00baa120;
      *(undefined4 *)(iVar14 + 0x45c) = 0x96;
      *(float *)(iVar14 + 0xe4) = fVar26;
      *(undefined4 *)(iVar14 + 0x460) = 0x96;
      *(float *)(iVar14 + 0xe8) = fVar25;
    }
    iVar14 = FUN_006eef60();
    piVar18 = (int *)FUN_006b64d0((float)((double)iVar14 +
                                         (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) * DAT_00ba9ff4
                                  * DAT_00baa354);
    (**(code **)(*piVar18 + 0x3c))(param_1 + 0x1e4,0xffffffff,0xff,0,1);
  }
  FUN_00aef12b();
  return;
}

