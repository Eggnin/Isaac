/* Local J460 decompiler output.
 * VA: 0x004fdf80
 * Entry: 004fdf80
 * Dispatcher: 0x006c2990
 * Types: 829
 * Identities: 829.0.0,829.1.0
 * Evidence: dispatcher=0x006c2990; end=0x004ff620; instructions=1256
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=829; identities=829.0.0,829.1.0; dispatcher=0x006c2990;
   end=0x004ff620; instructions=1256 */

void __fastcall AI_004fdf80(float param_1)

{
  byte bVar1;
  uint uVar2;
  int *piVar3;
  float fVar4;
  char cVar5;
  uint uVar6;
  uint uVar7;
  undefined4 *puVar8;
  char *pcVar9;
  byte **ppbVar10;
  undefined4 uVar11;
  uint uVar12;
  undefined4 *puVar13;
  float *pfVar14;
  int iVar15;
  int iVar16;
  bool bVar17;
  float10 fVar18;
  float fVar19;
  byte *pbVar20;
  float fVar21;
  undefined8 uVar22;
  double dVar23;
  undefined local_13c [16];
  int local_12c;
  float local_128;
  float local_124;
  float local_120;
  byte *local_11c;
  float local_118;
  float local_114;
  int local_110;
  char *local_10c;
  byte *local_108;
  char local_101;
  float local_100;
  float local_fc;
  undefined local_f8 [20];
  undefined4 local_e4;
  undefined4 local_d0;
  undefined4 local_44 [2];
  int local_3c;
  int local_34;
  undefined8 local_30;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af408d;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_30 = DAT_00b1f66c;
  local_12c = *(int *)(DAT_00c71678 + 0x18300);
  uVar12 = *(uint *)(DAT_00c71678 + 0x26550);
  uVar2 = *(uint *)(DAT_00c71678 + 0xc);
  local_34 = *(int *)((int)param_1 + 0x3ec) + *(int *)((int)param_1 + 0x20);
  local_28 = DAT_00b1f674;
  local_fc = param_1;
  uVar6 = FUN_006f9400(local_24);
  uVar7 = FUN_006f95a0();
  fVar4 = local_fc;
  iVar15 = local_12c;
  pbVar20 = DAT_00baa454;
  if ((~uVar7 & (uVar6 | uVar12 | uVar2) & 1) == 0) {
    pbVar20 = (byte *)(*(float *)(DAT_00c71678 + 0x2651c) * *(float *)(DAT_00c71678 + 0x26518));
  }
  if (((*(uint *)(*(int *)(local_12c + 4) + 0x44) >> 9 & 1) != 0) ||
     (local_101 = '\0', DAT_00baa3a4 < (float)pbVar20)) {
    local_101 = '\x01';
  }
  local_110 = *(int *)((int)local_fc + 0x2c);
  if (((*(int *)((int)local_fc + 0x28) == 0x33d) &&
      ((float)DAT_00ba9fe4 < *(float *)((int)local_fc + 0x14))) &&
     (puVar8 = *(undefined4 **)((int)local_fc + 8), puVar8 != *(undefined4 **)((int)local_fc + 0xc))
     ) {
    do {
      if (((*(byte *)(puVar8 + 0xc) & 1) == 0) &&
         ((puVar8[4] == *(int *)((int)local_fc + 0x28) ||
          (puVar8[6] == *(int *)((int)local_fc + 0x28))))) {
        *puVar8 = 0;
      }
      puVar8 = puVar8 + 0xe;
    } while (puVar8 != *(undefined4 **)((int)local_fc + 0xc));
  }
  FUN_006d8e40();
  *(undefined4 *)((int)fVar4 + 0xf30) = 0;
  *(undefined4 *)((int)fVar4 + 0xf34) = 0x3f800000;
  switch(*(undefined4 *)((int)fVar4 + 0xb64)) {
  case 0:
    *(undefined4 *)((int)fVar4 + 0xb64) = 4;
    *(undefined4 *)((int)fVar4 + 0x188) = 0;
    *(undefined4 *)((int)fVar4 + 0x15c) = 0;
    *(float *)((int)fVar4 + 3000) = DAT_00c7b640;
    *(float *)((int)fVar4 + 0xbbc) = DAT_00c7b644;
    break;
  case 3:
    if ((*(int *)((int)fVar4 + 0x7c) == 0) ||
       (local_108 = (byte *)((int)fVar4 + 0x78), cVar5 = FUN_0040ae70(), cVar5 == '\0')) {
      local_fc = (float)((int)fVar4 + 0x78);
      iVar16 = FUN_00812c90();
      local_108 = (byte *)local_fc;
      if ((-1 < iVar16) && (iVar16 < 0x1c0)) {
        *(undefined4 *)(iVar15 + 0x76c + iVar16 * 4) = 900;
      }
    }
    if ((*(int *)((int)fVar4 + 0x7c) != 0) && (cVar5 = FUN_0040add0(), cVar5 != '\0')) {
      *(undefined4 *)((int)fVar4 + 0x15c) = *(undefined4 *)(*(int *)((int)fVar4 + 0x330) + 0x24);
      *(float *)((int)fVar4 + 0x334) = DAT_00c7b640;
      *(float *)((int)fVar4 + 0x338) = DAT_00c7b644;
      local_fc = 0.0;
      local_11c = (byte *)FUN_00812c90();
      local_110 = 0;
      local_10c = (char *)local_11c;
      do {
        if (*(int *)((int)fVar4 + 0xf1c) == -1) {
          uVar12 = FUN_006eef60();
          if ((uVar12 & 3) == 0) {
            pfVar14 = (float *)FUN_006bec40(local_13c,0);
            local_128 = *pfVar14;
            local_120 = pfVar14[1];
            local_124 = local_128;
          }
          else {
            iVar16 = FUN_006eef60();
            local_114 = (float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baa704;
            local_114 = local_114 + local_114;
            fVar19 = local_114;
            FUN_0041d540();
            local_128 = fVar19 * DAT_00baa9b4 + *(float *)((int)fVar4 + 0x33c);
            local_124 = local_128;
            FUN_0041d520();
            local_120 = local_114 * DAT_00baa9b4 + *(float *)((int)fVar4 + 0x340);
          }
        }
        else {
          pfVar14 = (float *)FUN_006d82d0();
          fVar19 = DAT_00baaa00 - (float)local_110 * DAT_00baa784;
          local_120 = fVar19 * pfVar14[1] + *(float *)((int)fVar4 + 0x340);
          local_128 = fVar19 * *pfVar14 + *(float *)((int)fVar4 + 0x33c);
          local_124 = local_128;
        }
        if ((*(int *)((int)fVar4 + 0xf1c) == -1) || (3 < local_110)) {
          local_114 = local_120;
          pfVar14 = (float *)FUN_0081e520((int)&local_30 + 4,&local_124,0x42800000);
          local_128 = *pfVar14;
          local_120 = pfVar14[1];
          local_124 = local_128;
        }
        fVar21 = *(float *)((int)fVar4 + 0x33c) - local_128;
        fVar19 = *(float *)((int)fVar4 + 0x340) - local_120;
        local_114 = local_120;
        fVar19 = fVar19 * fVar19 + fVar21 * fVar21;
        FUN_00435a50();
        local_100 = fVar19;
        local_128 = (float)(int)((local_128 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
        local_114 = (float)(int)((local_114 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
        if (((((((int)local_128 < 0) || (*(int *)(iVar15 + 0xc) <= (int)local_128)) ||
              ((int)local_114 < 0)) ||
             ((*(int *)(iVar15 + 0x10) <= (int)local_114 ||
              (uVar12 = (int)local_114 * *(int *)(iVar15 + 0xc) + (int)local_128, 0x1bf < uVar12))))
            || (*(int *)(iVar15 + 0x76c + uVar12 * 4) < 500)) &&
           (((cVar5 = FUN_007e7070(&local_124,0), cVar5 != '\0' && (local_100 < DAT_00baaa00)) &&
            (local_fc < local_100)))) {
          local_fc = local_100;
          if (((((int)local_128 < 0) || (*(int *)(iVar15 + 0xc) <= (int)local_128)) ||
              ((int)local_114 < 0)) || (*(int *)(iVar15 + 0x10) <= (int)local_114)) {
            local_11c = (byte *)0xffffffff;
          }
          else {
            local_11c = (byte *)((int)local_114 * *(int *)(iVar15 + 0xc) + (int)local_128);
          }
          if (*(int *)((int)fVar4 + 0xf1c) != -1) break;
        }
        local_110 = local_110 + 1;
      } while (local_110 < 10);
      if (((byte *)local_10c != local_11c) && (cVar5 = FUN_00822820(local_10c,0), cVar5 != '\0')) {
        local_fc = 1.919779e-43;
        FUN_00956780();
        FUN_0092dc30(local_fc,0x3f800000,2,0,0x3f800000,0);
        FUN_004f88a0();
        local_44[0] = 0xe;
        uVar12 = FUN_006eef60();
        local_3c = ((uVar12 & 1) + 1) * 0x7d;
        local_34 = FUN_006eef60();
        local_28 = FUN_006eef60();
        iVar15 = local_12c;
        FUN_007ebd50(local_10c,local_44);
        if ((local_10c < (byte *)0x1c0) &&
           ((piVar3 = *(int **)(iVar15 + 0x24 + (int)local_10c * 4), piVar3 != (int *)0x0 &&
            (piVar3[1] == 0xe)))) {
          piVar3[6] = 1;
          (**(code **)(*piVar3 + 4))();
        }
        uVar11 = FUN_00407170();
        FUN_00703330((int)fVar4 + 0x33c,4,4,0x40a00000,uVar11,0x47c35000,0);
      }
      fVar19 = (float)((int)local_11c % *(int *)(iVar15 + 0xc)) * DAT_00baa904 + DAT_00baa904;
      *(float *)((int)fVar4 + 0x338) =
           (float)((int)local_11c / *(int *)(iVar15 + 0xc)) * DAT_00baa904 + DAT_00baaa00;
      *(float *)((int)fVar4 + 0x334) = fVar19;
      *(undefined4 *)((int)fVar4 + 0xbb0) = 0;
      if (*(float *)((int)fVar4 + 0x340) < *(float *)((int)fVar4 + 0x338) ||
          *(float *)((int)fVar4 + 0x340) == *(float *)((int)fVar4 + 0x338)) {
        *(undefined4 *)((int)fVar4 + 0x184) = 0;
      }
      else {
        if (*(int *)((int)fVar4 + 0x7c) == 0) {
          local_fc = -NAN;
LAB_004fec25:
          cVar5 = FUN_0040a5d0("JumpBack",1);
          if (cVar5 != '\0') {
            FUN_0040a1b0();
            *(undefined *)((int)fVar4 + 0x8c) = 1;
          }
        }
        else {
          dVar23 = floor((double)*(float *)((int)fVar4 + 0x88));
          local_100 = (float)dVar23;
          puVar8 = *(undefined4 **)((int)fVar4 + 0x7c);
          local_fc = (float)(int)dVar23;
          if (puVar8 == (undefined4 *)0x0) {
            puVar13 = (undefined4 *)&DAT_00b1a4ec;
          }
          else {
            puVar13 = puVar8;
            if (&DAT_0000000f < (undefined *)puVar8[5]) {
              puVar13 = (undefined4 *)*puVar8;
            }
          }
          pcVar9 = "JumpBack";
          do {
            bVar1 = *(byte *)puVar13;
            bVar17 = bVar1 < (byte)*pcVar9;
            if (bVar1 != *pcVar9) {
LAB_004fec03:
              uVar12 = -(uint)bVar17 | 1;
              goto LAB_004fec08;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)puVar13 + 1);
            bVar17 = bVar1 < ((byte *)pcVar9)[1];
            if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_004fec03;
            puVar13 = (undefined4 *)((int)puVar13 + 2);
            pcVar9 = (char *)((byte *)pcVar9 + 2);
          } while (bVar1 != 0);
          uVar12 = 0;
LAB_004fec08:
          if ((uVar12 != 0) ||
             (((puVar8 != (undefined4 *)0x0 && (*(char *)(puVar8 + 0xd) != '\0')) &&
              (*(char *)((int)fVar4 + 0x8c) == '\0')))) goto LAB_004fec25;
        }
        if (*(int *)((int)fVar4 + 0x7c) != 0) {
          FUN_00408e00();
        }
        *(undefined4 *)((int)fVar4 + 0xf30) = 0;
        *(undefined **)((int)fVar4 + 0xf34) = &DAT_bf800000;
        *(undefined4 *)((int)fVar4 + 0x184) = 0;
      }
    }
    if (*(int *)((int)fVar4 + 0x7c) != 0) {
      cVar5 = FUN_0040add0();
      if (cVar5 != '\0') {
        *(undefined4 *)((int)fVar4 + 0x15c) = 0;
        *(undefined4 *)((int)fVar4 + 0x188) = 0;
        *(undefined4 *)((int)fVar4 + 0x184) = 5;
      }
      if ((*(int *)((int)fVar4 + 0x7c) != 0) && (*(char *)((int)fVar4 + 0x8c) != '\0')) break;
    }
    *(undefined4 *)((int)fVar4 + 0xb64) = 4;
    *(float *)((int)fVar4 + 0x334) = DAT_00c7b640;
    *(float *)((int)fVar4 + 0x338) = DAT_00c7b644;
    break;
  case 4:
    FUN_006bec40(&local_118,0);
    local_100 = (float)FUN_006be840();
    cVar5 = FUN_006ac710(0x1e,*(undefined4 *)((int)fVar4 + 0x20));
    if (cVar5 != '\0') {
      uVar11 = *(undefined4 *)((int)local_100 + 0x364);
      *(undefined4 *)((int)fVar4 + 3000) = *(undefined4 *)((int)local_100 + 0x360);
      *(undefined4 *)((int)fVar4 + 0xbbc) = uVar11;
    }
    if ((*(int *)((int)fVar4 + 0xf1c) == -1) &&
       (cVar5 = FUN_007f0df0((int)fVar4 + 0x33c,&local_118,0,0,0,0,0), cVar5 != '\0')) {
      fVar19 = *(float *)((int)fVar4 + 0x340) - local_114;
      fVar21 = *(float *)((int)fVar4 + 0x33c) - local_118;
      fVar19 = fVar19 * fVar19 + fVar21 * fVar21;
      FUN_00435a50();
      local_fc = fVar19;
      local_10c = *(char **)((int)fVar4 + 3000);
      local_11c = *(byte **)((int)fVar4 + 0xbbc);
      fVar18 = (float10)FUN_007e9080();
      local_100 = (float)fVar18;
      fVar19 = local_100 * DAT_00baa280 + (float)DAT_00ba9fe4;
      local_118 = (float)local_10c * local_fc * fVar19 + local_118;
      local_114 = (float)local_11c * local_fc * fVar19 + local_114;
      fVar21 = *(float *)((int)fVar4 + 0x33c) - local_118;
      fVar19 = *(float *)((int)fVar4 + 0x340) - local_114;
      fVar19 = fVar19 * fVar19 + fVar21 * fVar21;
      FUN_00435a50();
      local_10c = (char *)DAT_00baaa14;
      if ((float)DAT_00baaa14 <= (float)(byte *)(fVar19 * DAT_00baa2d0)) {
        local_10c = (char *)(byte *)(fVar19 * DAT_00baa2d0);
      }
      iVar15 = *(int *)(DAT_00c71678 + 0x264f8);
      iVar16 = *(int *)((int)fVar4 + 0x328);
      if ((float)DAT_00ba9fe4 <= (float)local_10c) {
        local_10c = (char *)DAT_00ba9fe4;
      }
      fVar18 = (float10)FUN_007e9080();
      local_100 = (float)(fVar18 * (float10)(iVar15 - iVar16));
      fVar18 = (float10)FUN_007e9080();
      local_100 = (float)(fVar18 * (float10)DAT_00baab30 + (float10)(local_100 + local_100)) *
                  DAT_00baa088;
      fVar19 = local_100;
      FUN_0041d540();
      local_fc = fVar19;
      FUN_0041d520();
      local_118 = (local_fc * (float)local_10c - local_100 * 0.0) + local_118;
      local_114 = local_114 + local_100 * (float)local_10c + local_fc * 0.0;
      local_100 = *(float *)((int)fVar4 + 0x36c) * DAT_00baa3a4;
      *(float *)((int)fVar4 + 0x36c) = local_100;
      local_124 = local_118 - *(float *)((int)fVar4 + 0x33c);
      local_120 = local_114 - *(float *)((int)fVar4 + 0x340);
      pfVar14 = (float *)FUN_00a10030();
      fVar19 = *pfVar14 * DAT_00baa3a4;
      iVar15 = local_12c;
      if ((NAN(local_100) || NAN((float)DAT_00ba9fe4)) == (local_100 == (float)DAT_00ba9fe4)) {
        *(float *)((int)fVar4 + 0x364) =
             (*(float *)((int)fVar4 + 0x39c) * pfVar14[1] * DAT_00baa3a4) / local_100 +
             *(float *)((int)fVar4 + 0x364);
        *(float *)((int)fVar4 + 0x360) =
             (*(float *)((int)fVar4 + 0x39c) * fVar19) / local_100 + *(float *)((int)fVar4 + 0x360);
      }
    }
    else {
      FUN_007e33c0(&local_118,0x3f4ccccd,499,1);
    }
    pfVar14 = (float *)FUN_006bec40((int)&local_30 + 4,0);
    fVar21 = *pfVar14 - *(float *)((int)fVar4 + 0x33c);
    fVar19 = pfVar14[1] - *(float *)((int)fVar4 + 0x340);
    local_100 = fVar21 * fVar21 + fVar19 * fVar19;
    if (*(int *)((int)fVar4 + 0xf1c) == -1) {
      uVar12 = FUN_006eef60();
      if ((uVar12 % 10 == 0) &&
         ((local_100 < DAT_00baac2c ||
          ((0x5a < *(int *)((int)fVar4 + 0x410) && (local_100 < DAT_00baac5c))))))
      goto LAB_004ff144;
    }
    else {
      cVar5 = FUN_006d8260();
      if ((cVar5 != '\0') ||
         ((cVar5 = FUN_006cae60(0,7), cVar5 != '\0' || (0x96 < *(int *)((int)fVar4 + 0x410))))) {
LAB_004ff144:
        local_fc = (float)FUN_00812c90();
        if (((-1 < (int)local_fc) &&
            (iVar16 = FUN_007f0780(*(undefined4 *)((int)fVar4 + 0x33c),
                                   *(undefined4 *)((int)fVar4 + 0x340)), iVar16 == 0)) &&
           (((*(int *)((int)fVar4 + 0xf1c) != -1 || (0x1bf < (int)local_fc)) ||
            (*(int *)(iVar15 + 0x76c + (int)local_fc * 4) < 500)))) {
          fVar21 = (float)((int)local_fc % *(int *)(iVar15 + 0xc)) * DAT_00baa904 + DAT_00baa904;
          fVar19 = (float)((int)local_fc / *(int *)(iVar15 + 0xc)) * DAT_00baa904 + DAT_00baaa00;
          *(float *)((int)fVar4 + 0x33c) = fVar21;
          *(float *)((int)fVar4 + 0x340) = fVar19;
          *(undefined4 *)((int)fVar4 + 0xb64) = 6;
          *(float *)((int)fVar4 + 0x334) = fVar21;
          *(undefined4 *)((int)fVar4 + 0x338) = *(undefined4 *)((int)fVar4 + 0x340);
          pcVar9 = "DigOut2";
          if (local_101 == '\0') {
            pcVar9 = "DigOut";
          }
          *(undefined4 *)((int)fVar4 + 0x410) = 0;
          FUN_0040a380(pcVar9,0);
          FUN_006c04b0();
          break;
        }
        if (((0x96 < *(int *)((int)fVar4 + 0x410)) && (*(int *)((int)fVar4 + 0xf1c) != -1)) &&
           (iVar15 = (int)((ulonglong)((longlong)*(int *)((int)fVar4 + 0x410) * -0x77777777) >> 0x20
                          ) + *(int *)((int)fVar4 + 0x410),
           (iVar15 >> 4) - (iVar15 >> 0x1f) <
           (((int)*(float *)((int)fVar4 + 0x3a4) - (int)*(float *)((int)fVar4 + 0x3a0)) +
           *(int *)((int)fVar4 + 0x410)) / 0x1e)) {
          uVar22 = FUN_00435c70();
          (*(code *)((ulonglong)uVar22 >> 0x20))(0x40a00000,0,0,(int)uVar22,0x1e);
        }
      }
    }
    *(int *)((int)fVar4 + 0x410) =
         *(int *)((int)fVar4 + 0x410) +
         ((int)*(float *)((int)fVar4 + 0x3a4) - (int)*(float *)((int)fVar4 + 0x3a0));
    AI_0041af60(&local_34,1000,0x92,0xffffffff,0,0);
    local_14 = 0;
    pfVar14 = (float *)((int)fVar4 + 0x33c);
    uVar12 = 0;
    if (local_28 != 0) {
      do {
        iVar15 = *(int *)((int)local_30 + uVar12 * 4);
        fVar19 = *(float *)((int)fVar4 + 0x340) - *(float *)(iVar15 + 0x340);
        fVar21 = *pfVar14 - *(float *)(iVar15 + 0x33c);
        if (fVar19 * fVar19 + fVar21 * fVar21 < DAT_00baaa38) goto LAB_004ff42c;
        uVar12 = uVar12 + 1;
      } while (uVar12 < local_28);
    }
    uVar11 = FUN_006eef60();
    FUN_00428b20(1000,0x92,pfVar14,&DAT_00c7b640,0,0,uVar11);
    if (local_110 == 1) {
      uVar11 = FUN_006eef60();
      iVar15 = FUN_00428b20(1000,0x3e,pfVar14,&DAT_00c7b640,0,0,uVar11);
      *(undefined4 *)(iVar15 + 0x358) = 0x41200000;
      FUN_006ff2a0(pfVar14,0x41200000,0x41a00000,0,*(undefined4 *)((int)fVar4 + 0x3bc),DAT_00c79100,
                   DAT_00c79104,DAT_00c79108,DAT_00c7910c,0x1000000,0,0);
      local_fc = 1.919779e-43;
      FUN_00956780();
      FUN_0092dc30(local_fc,0x3f800000,2,0,0x3f800000,0);
    }
LAB_004ff42c:
    local_14 = 0xffffffff;
    if ((char)local_34 == '\0') {
      local_14 = 1;
      FUN_00a648b0(0,0);
      local_14 = 0xffffffff;
    }
    break;
  case 6:
    FUN_006d8b20();
    if (*(int *)((int)fVar4 + 0x7c) != 0) {
      cVar5 = FUN_0040add0();
      if ((cVar5 != '\0') && (*(undefined4 *)((int)fVar4 + 0x188) = 4, local_110 == 1)) {
        uVar11 = FUN_006eef60();
        iVar15 = FUN_00428b20(1000,0x3d,(int)fVar4 + 0x33c,&DAT_00c7b640,fVar4,0,uVar11);
        if (*(int *)(iVar15 + 0x3bc) != 0) {
          local_fc = (float)(iVar15 + 0x3bc);
          FUN_004cf210();
        }
        *(float *)(iVar15 + 0x3bc) = fVar4;
        FUN_004cdcf0();
        *(undefined4 *)(iVar15 + 0x454) = *(undefined4 *)((int)fVar4 + 0x370);
        *(undefined4 *)(iVar15 + 0x458) = 0x42480000;
        *(undefined4 *)(iVar15 + 0x45c) = 5;
        *(undefined4 *)(iVar15 + 0x460) = 5;
        FUN_006d6ba0(0x34,0x3f800000,2,0,0x3f800000);
        FUN_00703670();
        uVar11 = FUN_004238f0();
        FUN_006b6550((int)fVar4 + 0x33c,uVar11);
      }
      if ((*(int *)((int)fVar4 + 0x7c) != 0) && (*(char *)((int)fVar4 + 0x8c) != '\0')) break;
    }
    if (*(int *)((int)fVar4 + 0xf1c) == -1) {
      uVar12 = FUN_006eef60();
      cVar5 = uVar12 % 10 == 0;
    }
    else {
      FUN_006d8d30();
      cVar5 = FUN_00a10630();
    }
    if (cVar5 == '\0') {
      if (*(int *)((int)fVar4 + 0xf1c) != -1) {
        pcVar9 = "Jump2";
        *(undefined4 *)((int)fVar4 + 0xb64) = 3;
        if (local_101 == '\0') {
          pcVar9 = "Jump";
        }
        FUN_0040a380(pcVar9,0);
      }
    }
    else {
      *(undefined4 *)((int)fVar4 + 0xb64) = 8;
      *(undefined4 *)((int)fVar4 + 0xbc4) = 0;
    }
    break;
  case 8:
    FUN_006d8b20();
    FUN_0040a380("Shoot",0);
    if ((*(int *)((int)fVar4 + 0x7c) != 0) && (cVar5 = FUN_0040add0(), cVar5 != '\0')) {
      iVar15 = FUN_006be840();
      local_11c = *(byte **)(iVar15 + 0x33c);
      local_108 = *(byte **)(iVar15 + 0x340);
      if (*(int *)((int)fVar4 + 0xf1c) != -1) {
        ppbVar10 = (byte **)FUN_006d8d30();
        local_11c = *ppbVar10;
        local_108 = ppbVar10[1];
      }
      AI_0043ef30();
      if (local_110 == 1) {
        local_e4 = 0x3fb33333;
      }
      else {
        local_d0 = 0x3ecccccd;
      }
      local_10c = (char *)((float)local_11c - *(float *)((int)fVar4 + 0x33c));
      local_108 = (byte *)((float)local_108 - *(float *)((int)fVar4 + 0x340));
      fVar19 = (float)local_10c * (float)local_10c + (float)local_108 * (float)local_108;
      FUN_00435a50();
      pbVar20 = (byte *)local_10c;
      local_120 = (float)local_108;
      if ((float)DAT_00ba9fe4 < fVar19) {
        pbVar20 = (byte *)((float)local_10c * ((float)DAT_00baa454 / fVar19));
        local_120 = ((float)DAT_00baa454 / fVar19) * (float)local_108;
      }
      local_124 = (float)pbVar20 * DAT_00baa7e8;
      local_120 = local_120 * DAT_00baa7e8;
      FUN_006cb2e0((int)fVar4 + 0x33c,&local_124,2,local_f8);
      uVar11 = FUN_00407170();
      local_124 = *(float *)((int)fVar4 + 0xe4) * (float)DAT_00ba9fe4;
      local_120 = *(float *)((int)fVar4 + 0xe8) * DAT_00baadec;
      FUN_006d7cf0(&local_124,uVar11,&DAT_00c7b640);
      pbVar20 = DAT_00baa4b0;
      if (local_110 == 1) {
        pbVar20 = DAT_00baa454;
      }
      uVar11 = 0x6c;
      if (local_110 != 1) {
        uVar11 = 0x9e;
      }
      FUN_006d6ba0(uVar11,0x3f800000,2,0,pbVar20);
      *(bool *)((int)fVar4 + 0x148) = (float)local_11c < *(float *)((int)fVar4 + 0x33c);
    }
    if (local_110 == 1) {
      if (*(int *)((int)fVar4 + 0x7c) != 0) {
        cVar5 = FUN_0040add0();
        if ((cVar5 != '\0') && (*(int *)((int)fVar4 + 0xbc4) < 3)) {
          cVar5 = FUN_0040a5d0("Shoot",1);
          if (cVar5 != '\0') {
            FUN_0040a1b0();
            *(undefined *)((int)fVar4 + 0x8c) = 1;
          }
          *(int *)((int)fVar4 + 0xbc4) = *(int *)((int)fVar4 + 0xbc4) + 1;
        }
        goto LAB_004fe597;
      }
    }
    else {
LAB_004fe597:
      if ((*(int *)((int)fVar4 + 0x7c) != 0) && (*(char *)((int)fVar4 + 0x8c) != '\0')) break;
    }
    local_10c = "Jump2";
    *(undefined4 *)((int)fVar4 + 0xb64) = 3;
    if (local_101 == '\0') {
      local_10c = &DAT_00b1d560;
    }
    ppbVar10 = *(byte ***)((int)fVar4 + 0x7c);
    if (ppbVar10 != (byte **)0x0) {
      pbVar20 = (byte *)local_10c;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar10 = (byte **)*ppbVar10;
      }
      do {
        bVar1 = *(byte *)ppbVar10;
        bVar17 = bVar1 < *pbVar20;
        if (bVar1 != *pbVar20) {
LAB_004fe605:
          uVar12 = -(uint)bVar17 | 1;
          goto LAB_004fe60a;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar10 + 1);
        bVar17 = bVar1 < pbVar20[1];
        if (bVar1 != pbVar20[1]) goto LAB_004fe605;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pbVar20 = pbVar20 + 2;
      } while (bVar1 != 0);
      uVar12 = 0;
LAB_004fe60a:
      if ((uVar12 == 0) &&
         ((*(char *)(*(int *)((int)fVar4 + 0x7c) + 0x34) == '\0' ||
          (*(char *)((int)fVar4 + 0x8c) != '\0')))) break;
    }
    cVar5 = FUN_0040a5d0(local_10c,1);
    if (cVar5 != '\0') {
      FUN_0040a1b0();
      *(undefined *)((int)fVar4 + 0x8c) = 1;
    }
  }
  FUN_006c04b0();
  fVar19 = *(float *)((int)fVar4 + 0x334);
  if (((NAN(fVar19) || NAN(DAT_00c7b640)) == (fVar19 == DAT_00c7b640)) ||
     ((NAN(*(float *)((int)fVar4 + 0x338)) || NAN(DAT_00c7b644)) ==
      (*(float *)((int)fVar4 + 0x338) == DAT_00c7b644))) {
    if (*(int *)((int)fVar4 + 0xb64) == 3) {
      pbVar20 = (byte *)(*(float *)((int)fVar4 + 0xbb0) + DAT_00baa0bc);
      if ((float)pbVar20 <= (float)DAT_00ba9fe4) {
        pbVar20 = DAT_00ba9fe4;
      }
      *(float *)((int)fVar4 + 0x36c) = *(float *)((int)fVar4 + 0x36c) * DAT_00baa280;
      if ((float)DAT_00baa454 <= (float)pbVar20) {
        pbVar20 = DAT_00baa454;
      }
      *(byte **)((int)fVar4 + 0xbb0) = pbVar20;
      fVar21 = (*(float *)((int)fVar4 + 0x338) - *(float *)((int)fVar4 + 0x340)) * (float)pbVar20;
      *(float *)((int)fVar4 + 0x364) = fVar21;
      *(float *)((int)fVar4 + 0x360) =
           ((fVar19 - *(float *)((int)fVar4 + 0x33c)) * (float)pbVar20) /
           *(float *)((int)fVar4 + 0x36c);
      *(float *)((int)fVar4 + 0x364) = fVar21 / *(float *)((int)fVar4 + 0x36c);
    }
    else {
      *(float *)((int)fVar4 + 0x36c) = *(float *)((int)fVar4 + 0x36c) * DAT_00baa3a4;
      fVar21 = DAT_00baa904;
      *(float *)((int)fVar4 + 0x364) =
           *(float *)((int)fVar4 + 0x338) - *(float *)((int)fVar4 + 0x340);
      *(float *)((int)fVar4 + 0x360) = fVar19 - *(float *)((int)fVar4 + 0x33c);
      iVar16 = (int)((*(float *)((int)fVar4 + 0x33c) - fVar21) / fVar21 + DAT_00baa2d0);
      iVar15 = (int)((*(float *)((int)fVar4 + 0x340) - DAT_00baaa00) / fVar21 + DAT_00baa2d0);
      if (((((-1 < iVar16) && (iVar16 < *(int *)(local_12c + 0xc))) && (-1 < iVar15)) &&
          ((iVar15 < *(int *)(local_12c + 0x10) &&
           (iVar16 = iVar15 * *(int *)(local_12c + 0xc) + iVar16, -1 < iVar16)))) &&
         (iVar16 < 0x1c0)) {
        *(undefined4 *)(local_12c + 0x76c + iVar16 * 4) = 900;
      }
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

