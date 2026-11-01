/* Local J460 decompiler output.
 * VA: 0x00520c60
 * Entry: 00520c60
 * Dispatcher: 0x006c2990
 * Types: 42,203,235,236
 * Identities: 203.0.0,235.0.0,236.0.0,42.0.0,42.1.0,42.2.0
 * Evidence: dispatcher=0x006c2990; end=0x00521ab0; instructions=818
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=42,203,235,236;
   identities=203.0.0,235.0.0,236.0.0,42.0.0,42.1.0,42.2.0; dispatcher=0x006c2990; end=0x00521ab0;
   instructions=818 */

void __fastcall AI_00520c60(int **param_1)

{
  byte bVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  char cVar6;
  int **ppiVar7;
  int iVar8;
  byte **ppbVar9;
  undefined4 uVar10;
  float *pfVar11;
  int *piVar12;
  int ***pppiVar13;
  int ***pppiVar14;
  uint uVar15;
  uint uVar16;
  bool bVar17;
  float fVar18;
  float fVar19;
  int *piVar20;
  float fVar21;
  float fVar22;
  int **ppiVar23;
  char *pcVar24;
  undefined local_114 [4];
  int local_110;
  int **local_10c;
  int **local_108;
  float local_104;
  float local_100;
  int **local_fc;
  float local_f8;
  int **local_f4;
  int **local_f0;
  int **local_ec;
  int **local_e8;
  char local_e1;
  undefined local_b4 [4];
  undefined4 local_b0;
  float local_ac;
  float local_a8;
  int **local_a4;
  undefined4 local_a0;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  uint local_5c;
  uint local_8;
  
  local_8 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  local_ec = param_1;
  if (param_1[0x2dd] == (int *)0x1) {
    if (((param_1[0xf5] == (int *)0x0) && (*(char *)((int)param_1 + 0x173) == '\0')) &&
       (-1 < (int)param_1[0x10d])) {
      FUN_004565e0(param_1[0x10d],3999);
      FUN_00aef12b();
      return;
    }
    goto LAB_00521a9c;
  }
  piVar12 = param_1[0x2d9];
  if (piVar12 == (int *)0x0) {
    FUN_007e6ff0();
    fVar19 = DAT_00baa904;
    iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x3c6] = (int *)0x1;
    piVar20 = (int *)((float)((int)param_1[0x10d] / iVar8) * fVar19 + DAT_00baaa00);
    param_1[0xcd] = (int *)((float)((int)param_1[0x10d] % iVar8) * fVar19 + fVar19);
    param_1[0xce] = piVar20;
    piVar20 = param_1[0x5a];
    piVar2 = param_1[0x5b];
    param_1[0x5a] = (int *)((uint)piVar20 | 0x40000001);
    param_1[0x5b] = (int *)((uint)piVar2 | 8);
    if (param_1[10] != (int *)0x2a) {
      param_1[0x5a] = (int *)((uint)piVar20 | 0x40000001);
      param_1[0x5b] = (int *)((uint)piVar2 | 0x2008);
    }
    param_1[0x2d9] = (int *)0x3;
    if (param_1[10] == (int *)0xeb) {
      FUN_0040a380("Effect",0);
      FUN_0040a940("Sucking",0);
    }
    ppiVar7 = (int **)FUN_00407170();
    if (param_1 + 0x79 != ppiVar7) {
      piVar20 = ppiVar7[1];
      piVar2 = ppiVar7[2];
      piVar5 = ppiVar7[3];
      param_1[0x79] = *ppiVar7;
      param_1[0x7a] = piVar20;
      param_1[0x7b] = piVar2;
      param_1[0x7c] = piVar5;
      piVar20 = ppiVar7[5];
      piVar2 = ppiVar7[6];
      piVar5 = ppiVar7[7];
      param_1[0x7d] = ppiVar7[4];
      param_1[0x7e] = piVar20;
      param_1[0x7f] = piVar2;
      param_1[0x80] = piVar5;
      *(undefined8 *)(param_1 + 0x81) = *(undefined8 *)(ppiVar7 + 8);
      param_1[0x83] = ppiVar7[10];
    }
    param_1[0x7d] = (int *)0x3f800000;
    param_1[0x7e] = (int *)0x3f800000;
    param_1[0x7f] = (int *)0x3f800000;
    param_1[0x80] = (int *)0x3f800000;
  }
  iVar8 = FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),
                       *(undefined4 *)(DAT_00c71678 + 0x1830c));
  local_e1 = '\x01';
  piVar20 = param_1[10];
  uVar16 = *(uint *)(iVar8 + 0x44) >> 1;
  if (piVar20 == (int *)0xeb) {
    if (((uVar16 & 1) == 0) || (local_e1 = '\0', param_1[0x2d9] == (int *)0x10)) goto LAB_005210b1;
    param_1[0x2d9] = (int *)0x10;
    FUN_00408830(0);
    FUN_0040a380("TurnOff",0);
    if (piVar12 == (int *)0x0) {
      param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xfffffffb);
      param_1[0x5b] = param_1[0x5b];
      FUN_0040a760();
      FUN_00aef12b();
      return;
    }
  }
  else {
    if (piVar20 == (int *)0xec) {
      iVar8 = (int)param_1[0x104] % 0xf0;
      if (iVar8 == 0) {
        if ((uVar16 & 1) == 0) {
          FUN_0040a380("TurnOn",0);
        }
        else {
LAB_00520f05:
          if (param_1[0x2d9] != (int *)0x10) {
            if ((uVar16 & 1) != 0) {
              param_1[0x2d9] = (int *)0x10;
            }
            FUN_00408830(0);
            FUN_0040a380("TurnOff",0);
            if (piVar12 == (int *)0x0) {
              param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xfffffffb);
              param_1[0x5b] = param_1[0x5b];
              FUN_0040a760();
            }
          }
        }
      }
      else if (((0x95 < iVar8) || ((uVar16 & 1) != 0)) && ((iVar8 == 0x96 || ((uVar16 & 1) != 0))))
      goto LAB_00520f05;
      if ((param_1[0x1f] != (int *)0x0) && (*(char *)(param_1 + 0x23) == '\0')) {
        ppbVar9 = (byte **)param_1[0x1f];
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pcVar24 = "TurnOn";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar17 = bVar1 < (byte)*pcVar24;
          if (bVar1 != *pcVar24) {
LAB_00520f96:
            uVar15 = -(uint)bVar17 | 1;
            goto LAB_00520f9b;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar17 = bVar1 < ((byte *)pcVar24)[1];
          if (bVar1 != ((byte *)pcVar24)[1]) goto LAB_00520f96;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar24 = (char *)((byte *)pcVar24 + 2);
        } while (bVar1 != 0);
        uVar15 = 0;
LAB_00520f9b:
        if (uVar15 == 0) {
          FUN_0040a380("Effect",0);
          FUN_0040a940("Sucking",0);
        }
      }
      if ((param_1[0x27] != (int *)0x0) && (*(char *)(param_1 + 0x2b) != '\0')) {
        ppbVar9 = (byte **)param_1[0x27];
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pcVar24 = "Sucking";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar17 = bVar1 < (byte)*pcVar24;
          if (bVar1 != *pcVar24) {
LAB_00521010:
            uVar15 = -(uint)bVar17 | 1;
            goto LAB_00521015;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar17 = bVar1 < ((byte *)pcVar24)[1];
          if (bVar1 != ((byte *)pcVar24)[1]) goto LAB_00521010;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar24 = (char *)((byte *)pcVar24 + 2);
        } while (bVar1 != 0);
        uVar15 = 0;
LAB_00521015:
        if (uVar15 == 0) {
          local_e1 = '\x01';
          goto LAB_005210b1;
        }
      }
    }
    else if (piVar20 == (int *)0xcb) {
LAB_00521058:
      if ((uVar16 & 1) == 0) goto LAB_005210b1;
      if (param_1[0x2d9] != (int *)0x10) goto LAB_00521065;
    }
    else if (param_1[0x2d9] != (int *)0x10) {
      iVar8 = FUN_006d6c20();
      if ((0 < iVar8) || (0 < *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11ec)))
      goto LAB_00521058;
LAB_00521065:
      param_1[0x2d9] = (int *)0x10;
      FUN_00408830(0);
      FUN_0040a380("CloseEyes",0);
      if (piVar12 == (int *)0x0) {
        param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xfffffffb);
        param_1[0x5b] = param_1[0x5b];
        FUN_0040a760();
      }
    }
    local_e1 = '\0';
LAB_005210b1:
    if (piVar12 == (int *)0x0) goto LAB_00521a9c;
  }
  local_fc = param_1 + 0xcf;
  param_1[0xd8] = (int *)((float)param_1[0xcd] - (float)*local_fc);
  param_1[0xd9] = (int *)((float)param_1[0xce] - (float)param_1[0xd0]);
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (-1 < (int)param_1[0xcb])) {
    FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),0xffffffff);
    FUN_004e45c0(local_114,param_1 + 0xcb);
  }
  piVar12 = param_1[10];
  if (local_e1 == '\0') {
    if ((piVar12 == (int *)0xcb) && ((uVar16 & 1) != 0)) {
      pcVar24 = "CloseEyes";
LAB_00521a91:
      FUN_0040a380(pcVar24,0);
    }
  }
  else if (piVar12 == (int *)0x2a) {
    if (0 < (int)param_1[0x2e8]) {
      param_1[0x2e8] =
           (int *)(((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + (int)param_1[0x2e8]);
    }
    FUN_006d8b20(0);
    if ((int)param_1[0x2e8] < 1) {
      if (param_1[0x3c7] == (int *)0xffffffff) {
        cVar6 = FUN_006cae60(0,7);
      }
      else {
        cVar6 = FUN_006d8260(9);
        if (cVar6 == '\0') goto LAB_0052176b;
        FUN_006d8d30(&local_f0);
        cVar6 = FUN_00a10630(&DAT_00c7b640);
      }
      if (cVar6 != '\0') {
        param_1[0x2e8] = (int *)0x54;
        cVar6 = FUN_0040a5d0("Shoot",1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
    }
LAB_0052176b:
    if ((param_1[0x1f] != (int *)0x0) && (cVar6 = FUN_0040add0("Shoot"), cVar6 != '\0')) {
      FUN_006d6ba0(0x106,0x3f800000,2,0,0x3f800000);
      AI_0043ef30();
      local_a8 = local_a8 - _DAT_00baa128;
      local_b0 = 0x41500000;
      local_e8 = DAT_00baa81c;
      if (param_1[0xb] == (int *)0x1) {
        local_ec = (int **)((float)local_a4 * DAT_00baa2e4);
        local_5c = local_5c | 2;
        local_a0 = 0x3fcccccd;
        local_ac = -30.5;
        local_a8 = 0.92;
        local_78 = _DAT_00bac500;
        uStack_74 = _UNK_00bac504;
        uStack_70 = _UNK_00bac508;
        uStack_6c = _UNK_00bac50c;
        local_a4 = local_ec;
        if (param_1[0x3c7] != (int *)0xffffffff) {
          pfVar11 = (float *)FUN_006d8d30(local_114);
          fVar19 = ((float)param_1[0xd0] - pfVar11[1]) * ((float)param_1[0xd0] - pfVar11[1]) +
                   ((float)param_1[0xcf] - *pfVar11) * ((float)param_1[0xcf] - *pfVar11);
          FUN_00435a50();
          local_ec = (int **)(fVar19 / ((float)local_ec * (float)DAT_00baa81c));
          fVar19 = DAT_00baa3e0;
          FUN_004e4690();
          local_ac = (fVar19 - DAT_00baa454) * _DAT_00baadbc;
          if (local_ac <= DAT_00baa06c) {
            local_ac = DAT_00baa06c;
          }
          local_ac = (DAT_00baa784 - ((float)local_ec - local_ac) * _DAT_00baa820) / local_ac;
          if (local_ac <= DAT_00baae24) {
            local_ac = DAT_00baae24;
          }
          if (DAT_00baada0 <= local_ac) {
            local_ac = -5.0;
          }
        }
      }
      ppiVar7 = param_1 + 0xcf;
      uVar10 = 3;
      if (param_1[0xb] != (int *)0x2) {
        uVar10 = 0;
      }
      iVar8 = FUN_006be840();
      piVar12 = *ppiVar7;
      piVar20 = param_1[0xd0];
      local_100 = *(float *)(iVar8 + 0x33c) - (float)piVar12;
      local_fc = (int **)(*(float *)(iVar8 + 0x340) - (float)piVar20);
      local_f8 = local_100;
      local_f4 = local_fc;
      ppiVar23 = local_fc;
      fVar19 = local_100;
      if (param_1[0x3c7] != (int *)0xffffffff) {
        FUN_006d8d30(&local_f0);
        cVar6 = FUN_00a10630(ppiVar7);
        if (cVar6 != '\0') {
          pfVar11 = (float *)FUN_006d8d30(&local_f0);
          local_fc = (int **)(pfVar11[1] - (float)piVar20);
          local_100 = *pfVar11 - (float)piVar12;
          local_f8 = local_100;
          local_f4 = local_fc;
          ppiVar23 = local_fc;
          fVar19 = local_100;
        }
      }
      iVar8 = FUN_006d8240();
      if (iVar8 < 1) {
        local_e8 = DAT_00baa7b8;
      }
      fVar19 = (float)ppiVar23 * (float)ppiVar23 + fVar19 * fVar19;
      FUN_00435a50();
      if (DAT_00ba9fe4 < fVar19) {
        local_100 = local_f8 * ((float)local_e8 / fVar19);
        local_fc = (int **)((float)local_f4 * ((float)local_e8 / fVar19));
      }
      FUN_006cb2e0(ppiVar7,&local_100,uVar10,local_b4);
    }
    if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
      pcVar24 = "Idle";
      goto LAB_00521a91;
    }
  }
  else if ((piVar12 == (int *)0xeb) || (piVar12 == (int *)0xec)) {
    local_110 = *(int *)(DAT_00c71678 + 0x18300);
    if (*(int *)(local_110 + 0x1264) != 0) {
      uVar16 = 0;
      ppiVar7 = param_1 + 0xcf;
      fVar19 = DAT_00baa2d0;
      do {
        iVar8 = *(int *)(*(int *)(local_110 + 0x125c) + uVar16 * 4);
        if ((*(char *)(iVar8 + 0x173) == '\0') &&
           (((iVar3 = *(int *)(iVar8 + 0x28), iVar3 == 1 || (iVar3 == 2)) || (iVar3 == 9)))) {
          local_104 = *(float *)(iVar8 + 0x33c);
          fVar22 = *(float *)(iVar8 + 0x340);
          if ((iVar3 == 1) && (iVar4 = *(int *)(iVar8 + 0x1e68), iVar4 != 0)) {
            fVar21 = local_104 - *(float *)(iVar4 + 0x33c);
            fVar18 = fVar22 - *(float *)(iVar4 + 0x340);
            if (fVar18 * fVar18 + fVar21 * fVar21 < DAT_00baabf8) {
              local_104 = (local_104 + *(float *)(iVar4 + 0x33c)) * fVar19;
              fVar22 = (fVar22 + *(float *)(iVar4 + 0x340)) * fVar19;
            }
          }
          local_108 = (int **)*ppiVar7;
          local_10c = (int **)ppiVar7[1];
          local_104 = (float)local_108 - local_104;
          local_f4 = (int **)((float)local_10c - fVar22);
          fVar19 = (float)local_f4 * (float)local_f4 + local_104 * local_104;
          FUN_00435a50();
          if (0.0 < fVar19) {
            local_104 = (DAT_00baa454 / fVar19) * local_104;
            local_f4 = (int **)((float)local_f4 * (DAT_00baa454 / fVar19));
          }
          local_e8 = (int **)0x3f666666;
          local_f8 = DAT_00baa3e0;
          if (iVar3 == 1) {
            local_e8 = (int **)0x3f19999a;
            local_f8 = DAT_00baa304;
          }
          fVar19 = (float)local_10c - *(float *)(iVar8 + 0x340);
          fVar22 = (float)local_108 - *(float *)(iVar8 + 0x33c);
          fVar18 = fVar19 * fVar19 + fVar22 * fVar22;
          FUN_00435a50();
          fVar19 = DAT_00baa2d0;
          fVar22 = *(float *)(iVar8 + 0x36c);
          local_108 = (int **)0x0;
          local_10c = (int **)(((DAT_00baab08 - fVar18) * local_f8) / DAT_00baab08);
          pppiVar14 = &local_10c;
          if ((float)local_10c <= 0.0) {
            pppiVar14 = &local_108;
          }
          pppiVar13 = &local_e8;
          if ((float)*pppiVar14 <= local_f8 && local_f8 != (float)*pppiVar14) {
            pppiVar13 = pppiVar14;
          }
          ppiVar7 = *pppiVar13;
          if (NAN(fVar22) == (fVar22 == 0.0)) {
            *(float *)(iVar8 + 0x364) =
                 (*(float *)(iVar8 + 0x39c) * (float)ppiVar7 * (float)local_f4) / fVar22 +
                 *(float *)(iVar8 + 0x364);
            *(float *)(iVar8 + 0x360) =
                 (*(float *)(iVar8 + 0x39c) * (float)ppiVar7 * local_104) / fVar22 +
                 *(float *)(iVar8 + 0x360);
          }
        }
        uVar16 = uVar16 + 1;
        ppiVar7 = local_fc;
        param_1 = local_ec;
      } while (uVar16 < *(uint *)(local_110 + 0x1264));
    }
  }
  else if (piVar12 == (int *)0xcb) {
    if ((int *)0x3 < param_1[0xc]) {
      FUN_00a112c0(0x10,"Brimstone Head can only have 0-3 subtypes!");
    }
    if (param_1[0x2d9] == (int *)0x3) {
      uVar15 = -(uint)(param_1[0xc] != (int *)0x0) & (uint)param_1[0xc];
      uVar16 = 3;
      if (uVar15 < 3) {
        uVar16 = uVar15;
      }
      FUN_0040a380((&PTR_s_IdleLeft_00b61560)[uVar16],0);
      if (((**(char **)(DAT_00c71678 + 0x18300) != '\0') &&
          (iVar8 = *(int *)(DAT_00c71678 + 0x264f8) -
                   *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0), 0x1e < iVar8)) &&
         (iVar8 % 0x5a == 0)) {
        param_1[0x2d9] = (int *)&DAT_00000008;
        uVar10 = FUN_004238f0(0x3f4ccccd);
        local_e8 = (int **)(((float)((double)(int)param_1[0xc] +
                                    (double)(&DAT_00bacb00)[-((int)param_1[0xc] >> 0x1f)]) *
                             DAT_00baa9b4 - DAT_00baaa78) * DAT_00baa088);
        local_f0 = local_e8;
        FUN_0041d540();
        ppiVar7 = local_e8;
        FUN_0041d520();
        local_100 = 0.0;
        local_fc = (int **)0xc0c00000;
        local_ec = ppiVar7;
        FUN_0060b890(&local_f0,0x1a,uVar10,0x40800000);
      }
    }
    else if (param_1[0x2d9] == (int *)&DAT_00000008) {
      uVar15 = -(uint)(param_1[0xc] != (int *)0x0) & (uint)param_1[0xc];
      uVar16 = 3;
      if (uVar15 < 3) {
        uVar16 = uVar15;
      }
      FUN_0040a380((&PTR_s_ShootLeft_00b61540)[uVar16],0);
      cVar6 = FUN_0040b030("Shoot");
      if (cVar6 != '\0') {
        pfVar11 = (float *)FUN_0040b1d0("LaserPos");
        local_f0 = (int **)(*pfVar11 / DAT_00baa324);
        local_ec = (int **)(pfVar11[1] / DAT_00baa324);
        piVar12 = (int *)FUN_0096f310(1,param_1 + 0xcf,
                                      (float)((double)(int)param_1[0xc] +
                                             (double)(&DAT_00bacb00)[-((int)param_1[0xc] >> 0x1f)])
                                      * DAT_00baa9b4 - DAT_00baaa78,0xf,&local_f0,param_1,0);
        ppiVar7 = DAT_00baa81c;
        if (param_1[0xc] == (int *)0x1) {
          ppiVar7 = DAT_00baadc0;
        }
        piVar12[0xd6] = (int)ppiVar7;
        (**(code **)(*piVar12 + 0xc))();
        ppiVar7 = param_1 + 0xf1;
        if (param_1[0xf1] != (int *)0x0) {
          local_e8 = ppiVar7;
          FUN_004cf210(&local_e8);
        }
        *ppiVar7 = piVar12;
        FUN_004cdcf0(ppiVar7);
      }
      if (((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) &&
         (param_1[0xf1] == (int *)0x0)) {
        param_1[0x2d9] = (int *)0x3;
      }
    }
  }
  param_1[0x104] = (int *)((int)param_1[0x104] + 1);
LAB_00521a9c:
  FUN_00aef12b();
  return;
}

