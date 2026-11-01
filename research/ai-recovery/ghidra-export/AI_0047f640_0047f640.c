/* Local J460 decompiler output.
 * VA: 0x0047f640
 * Entry: 0047f640
 * Dispatcher: 0x006c2990
 * Types: 84
 * Identities: 84.0.0,84.10.0
 * Evidence: dispatcher=0x006c2990; end=0x00481410; instructions=1707
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=84; identities=84.0.0,84.10.0; dispatcher=0x006c2990;
   end=0x00481410; instructions=1707 */

void __fastcall AI_0047f640(int *param_1)

{
  int *piVar1;
  char cVar2;
  byte bVar3;
  byte **ppbVar4;
  int ***pppiVar5;
  float *pfVar6;
  uint uVar7;
  int iVar8;
  undefined4 uVar9;
  float *pfVar10;
  char *pcVar11;
  int iVar12;
  int *piVar13;
  bool bVar14;
  float fVar15;
  int **ppiVar16;
  int **ppiVar17;
  float fVar18;
  float fVar19;
  undefined8 uVar20;
  undefined1 *puVar21;
  int **local_168;
  float fStack_164;
  int **local_160;
  undefined4 uStack_15c;
  int **ppiStack_158;
  float fStack_154;
  int **local_150;
  float fStack_14c;
  int **local_148;
  int **ppiStack_144;
  char cStack_13d;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  int iStack_130;
  undefined4 uStack_128;
  undefined4 uStack_124;
  undefined4 uStack_11c;
  undefined4 uStack_10c;
  undefined4 uStack_108;
  undefined4 uStack_104;
  undefined4 uStack_100;
  undefined auStack_fc [16];
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined auStack_e0 [4];
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_cc;
  undefined4 uStack_b8;
  int **ppiStack_70;
  int **ppiStack_6c;
  undefined4 uStack_68;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&local_168;
  if ((0.0 < (float)param_1[5]) && (pfVar6 = (float *)param_1[2], pfVar6 != (float *)param_1[3])) {
    do {
      if ((((uint)pfVar6[2] & 0x1000004) != 0) &&
         (((pfVar6[4] != 1.401298e-45 && (pfVar6[6] != 1.401298e-45)) && (pfVar6[6] != 4.203895e-45)
          ))) {
        param_1[5] = (int)((float)param_1[5] - *pfVar6);
        *pfVar6 = 0.0;
      }
      pfVar6 = pfVar6 + 0xe;
    } while (pfVar6 != (float *)param_1[3]);
  }
  ppiVar17 = DAT_00baa454;
  local_150 = DAT_00baa454;
  if ((param_1[0x2f0] == 2) && ((float)param_1[0xe0] - (float)param_1[5] < 0.0)) {
    param_1[3] = param_1[2];
    param_1[5] = 0;
    param_1[6] = 0;
    param_1[7] = 0;
    param_1[0x104] = 0;
    param_1[0xe0] = 0;
    param_1[0x2d9] = 4;
    *(undefined *)((int)param_1 + 0x173) = 0;
    param_1[0x2f0] = 3;
    local_160 = ppiVar17;
    ppiVar17 = DAT_00baa528;
    if ((param_1[0x319] == 0x12) || (ppiVar17 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
      local_160 = ppiVar17;
    }
    local_148 = (int **)0xf2;
    FUN_00956780();
    FUN_0092dc30(local_148,0x3f800000,2,0,local_160,0);
    cVar2 = FUN_0040a5d0("Death",1);
    if (cVar2 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
    FUN_006ae630();
  }
  ppiVar16 = DAT_00baa904;
  ppiVar17 = DAT_00baa2d0;
  if (param_1[0x2d9] == 0) {
    param_1[0x2d9] = 3;
    param_1[0x62] = 0;
    if (param_1[0xb] != 10) {
      param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
      param_1[0x5b] = param_1[0x5b];
      param_1[0xe1] = 0;
      param_1[0xe0] = 0;
      param_1[3] = param_1[2];
      param_1[5] = 0;
      param_1[6] = 0;
      param_1[7] = 0;
      fVar15 = (float)param_1[0xd0] + DAT_00baa9a0;
      param_1[0x57] = 0;
      param_1[0xd0] = (int)fVar15;
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = param_1[0xd0];
      FUN_00aef12b();
      return;
    }
    ppiVar17 = DAT_00baa528;
    if ((param_1[0x319] == 0x12) || (ppiVar17 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
      local_150 = ppiVar17;
    }
    local_160 = (int **)0xf6;
    FUN_00956780();
    FUN_0092dc30(local_160,0x3f800000,4,0,local_150,0);
    param_1[0x2f0] = 4;
    param_1[0x104] = 0;
    *(undefined *)((int)param_1 + 0x171) = 0;
    param_1[0x57] = 0;
    FUN_00aef12b();
    return;
  }
  pfVar6 = (float *)(param_1 + 0xcf);
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  fVar15 = _UNK_00baaadc;
  local_148 = (int **)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  iVar8 = *(int *)(DAT_00c71678 + 0x18300);
  local_160 = (int **)(int)((((float)param_1[0xd3] + *pfVar6) - (float)ppiVar16) / (float)ppiVar16 +
                           (float)ppiVar17);
  if (((int)local_160 < 0) || (*(int *)(iVar8 + 0xc) <= (int)local_160)) {
LAB_0047f9ed:
    local_168 = (int **)0xffffffff;
  }
  else {
    fVar18 = (((float)param_1[0xd0] + (float)param_1[0xd4]) - DAT_00baaa00) / (float)ppiVar16 +
             (float)ppiVar17;
    iVar12 = (int)fVar18;
    if ((iVar12 < 0) || (*(int *)(iVar8 + 0x10) <= (int)fVar18)) goto LAB_0047f9ed;
    local_168 = (int **)(*(int *)(iVar8 + 0xc) * iVar12 + (int)local_160);
  }
  switch(param_1[0x2f0]) {
  case 0:
    param_1[0x61] = 0;
    if (local_168 < (int **)0x1c0) {
      *(undefined4 *)(*(int *)(DAT_00c71678 + 0x18300) + 0x76c + (int)local_168 * 4) = 2000;
    }
    if (0 < (int)local_148) {
      do {
        param_1[0x104] = param_1[0x104] + 1;
        if (param_1[0x104] == 2) {
          if (param_1[0x319] == 0x12) {
            local_160 = DAT_00baa528;
          }
          else {
            local_160 = local_150;
            if (param_1[0x319] == 0x13) {
              local_160 = ppiVar17;
            }
          }
          ppiStack_158 = (int **)0xee;
          FUN_00956780();
          FUN_0092dc30(ppiStack_158,0x3f800000,2,0,local_160,0);
          ppiVar17 = DAT_00baa2d0;
        }
        local_148 = (int **)((int)local_148 + -1);
      } while (local_148 != (int **)0x0);
      local_148 = (int **)0x0;
    }
    if (0x82 < param_1[0x104]) {
      local_160 = local_150;
      if (param_1[0x319] == 0x12) {
        local_160 = DAT_00baa528;
      }
      else if (param_1[0x319] == 0x13) {
        local_160 = ppiVar17;
      }
      ppiStack_158 = (int **)0xef;
      FUN_00956780();
      FUN_0092dc30(ppiStack_158,0x3f800000,2,0,local_160,0);
      ppiVar17 = DAT_00baa528;
      if ((param_1[0x319] == 0x12) || (ppiVar17 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
        local_150 = ppiVar17;
      }
      ppiStack_158 = (int **)0x109;
      FUN_00956780();
      FUN_0092dc30(ppiStack_158,0x40000000,2,0,local_150,0);
      param_1[0x104] = 0;
      param_1[0x2f0] = param_1[0x2f0] + 1;
      uVar9 = FUN_006eef60();
      local_168 = (int **)((float)param_1[0xcf] + 0.0);
      fStack_164 = (float)param_1[0xd0] + DAT_00baa8d0;
      piVar13 = (int *)FUN_006fe410(0x51,0,&local_168,&DAT_00c7b640,param_1,0,uVar9,0);
      (**(code **)(*piVar13 + 0xc))();
      uVar9 = FUN_006eef60();
      local_168 = (int **)((float)param_1[0xcf] + DAT_00baa924);
      fStack_164 = (float)param_1[0xd0] + DAT_00baa8d0;
      piVar13 = (int *)FUN_006fe410(0x37,1,&local_168,&DAT_00c7b640,param_1,0,uVar9,0);
      (**(code **)(*piVar13 + 0xc))();
      uVar9 = FUN_006eef60();
      local_168 = (int **)((float)param_1[0xcf] - DAT_00baa924);
      fStack_164 = (float)param_1[0xd0] + DAT_00baa8d0;
      piVar13 = (int *)FUN_006fe410(0x37,1,&local_168,&DAT_00c7b640,param_1,0,uVar9,0);
      (**(code **)(*piVar13 + 0xc))();
      FUN_007ebc40();
    }
    ppbVar4 = (byte **)param_1[0x1f];
    if (ppbVar4 != (byte **)0x0) {
      if (*(char *)(param_1 + 0x23) != '\0') goto code_r0x0047fd9b;
      local_160 = (int **)(param_1 + 0x12);
      if (&DAT_0000000f < ppbVar4[5]) {
        ppbVar4 = (byte **)*ppbVar4;
      }
      pcVar11 = "SmallIdle";
      do {
        bVar3 = *(byte *)ppbVar4;
        bVar14 = bVar3 < (byte)*pcVar11;
        if (bVar3 != *pcVar11) {
code_r0x0047fd55:
          uVar7 = -(uint)bVar14 | 1;
          goto code_r0x0047fd5a;
        }
        if (bVar3 == 0) break;
        bVar3 = *(byte *)((int)ppbVar4 + 1);
        bVar14 = bVar3 < ((byte *)pcVar11)[1];
        if (bVar3 != ((byte *)pcVar11)[1]) goto code_r0x0047fd55;
        ppbVar4 = (byte **)((int)ppbVar4 + 2);
        pcVar11 = (char *)((byte *)pcVar11 + 2);
      } while (bVar3 != 0);
      uVar7 = 0;
code_r0x0047fd5a:
      if ((uVar7 == 0) && (*(char *)(param_1[0x1f] + 0x34) == '\0')) goto code_r0x0047fd9b;
    }
    local_160 = (int **)(param_1 + 0x12);
    cVar2 = FUN_0040a5d0("SmallIdle",1);
    ppiVar17 = local_160;
    if (cVar2 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(ppiVar17 + 0x11) = 1;
    }
code_r0x0047fd9b:
    param_1[0xcf] = param_1[0xcd];
    param_1[0xd0] = param_1[0xce];
    param_1[0x5a] = param_1[0x5a] | 0x40000000;
    param_1[0x5b] = param_1[0x5b];
    FUN_00aef12b();
    return;
  case 1:
    if (local_168 < (int **)0x1c0) {
      *(undefined4 *)(iVar8 + 0x76c + (int)local_168 * 4) = 1000;
      iVar8 = *(int *)(DAT_00c71678 + 0x18300);
    }
    iVar12 = *(int *)(iVar8 + 0x12cc) + *(int *)(iVar8 + 0x12c8);
    iVar8 = 0;
    if (0 < iVar12) {
      iVar8 = iVar12;
    }
    if (iVar8 == 1) {
      if (0 < (int)local_148) {
        do {
          param_1[0x104] = param_1[0x104] + 1;
          if (param_1[0x104] == 0x19) {
            *(undefined4 *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12d0) = 0;
            iVar8 = *(int *)(param_1[0xcc] + 0x50);
            param_1[0xe1] = iVar8;
            param_1[0xe0] = iVar8;
            if (param_1[0x319] == 0x12) {
              local_160 = DAT_00baa528;
            }
            else {
              local_160 = local_150;
              if (param_1[0x319] == 0x13) {
                local_160 = ppiVar17;
              }
            }
            ppiStack_158 = (int **)0xf3;
            FUN_00956780();
            FUN_0092dc30(ppiStack_158,0x3f800000,2,0,local_160,0);
            cVar2 = FUN_0040a5d0("Change",1);
            if (cVar2 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x23) = 1;
            }
            param_1[0x57] = *(int *)(param_1[0xcc] + 0x24);
            FUN_007e1e70(0x17,0x3da3d70a);
            ppiVar17 = DAT_00baa2d0;
          }
          local_148 = (int **)((int)local_148 + -1);
        } while (local_148 != (int **)0x0);
        local_148 = (int **)0x0;
      }
      if ((param_1[0x1f] != 0) && (cVar2 = FUN_0040add0("Shoot"), cVar2 != '\0')) {
        FUN_006d6ba0(0xef,0x3f800000,2,0,0x3f800000);
      }
      if ((0x19 < param_1[0x104]) && ((param_1[0x1f] == 0 || (*(char *)(param_1 + 0x23) == '\0'))))
      {
        param_1[0x2f0] = param_1[0x2f0] + 1;
        param_1[0x2d9] = 4;
        param_1[0x104] = 0;
        if (local_168 < (int **)0x1c0) {
          *(undefined4 *)(*(int *)(DAT_00c71678 + 0x18300) + 0x76c + (int)local_168 * 4) = 0;
        }
        param_1[0x5a] = param_1[0x5a] & 0xbfffffff;
        param_1[0x5b] = param_1[0x5b];
      }
    }
    param_1[0xcf] = param_1[0xcd];
    param_1[0xd0] = param_1[0xce];
    FUN_00aef12b();
    return;
  case 2:
    param_1[0xd5] = 0;
    param_1[0x62] = 4;
    param_1[0x61] = 1;
    fVar18 = (float)param_1[0xd0];
    if (fVar18 <= fVar15) {
      fVar18 = fVar15;
    }
    param_1[0xd0] = (int)fVar18;
    iVar8 = FUN_006be840();
    local_168 = *(int ***)(iVar8 + 0x33c);
    local_150 = *(int ***)(iVar8 + 0x340);
    iVar8 = FUN_006be840();
    local_160 = (int **)(*(float *)(iVar8 + 0x360) + *(float *)(iVar8 + 0x360));
    switch(param_1[0x2d9]) {
    case 4:
      FUN_0040a380(&DAT_00b1dce4,0);
      fVar18 = (float)local_160 * DAT_00baa8a0 + (float)local_168;
      fVar15 = (float)local_150 * DAT_00baa400;
      if ((float)local_150 * DAT_00baa400 <= DAT_00baab0c) {
        fVar15 = DAT_00baab0c;
      }
      local_168 = (int **)((float)local_168 - *pfVar6);
      local_160 = (int **)(fVar18 - *pfVar6);
      local_150 = (int **)((fVar15 - (float)param_1[0xd0]) - DAT_00baa950);
      local_148 = local_168;
      ppiStack_144 = local_150;
      if (((((float)local_160 * (float)local_168 < 0.0) && (DAT_00baae44 < (float)local_150)) &&
          ((param_1[0x2f1] != 9 || (uVar7 = FUN_006eef60(), uVar7 % 10 == 0)))) ||
         (((param_1[0x2f1] == 10 && ((float)((uint)local_168 & DAT_00bacb40) < (float)DAT_00baa904))
          && (uVar7 = FUN_006eef60(), uVar7 % 3 == 0)))) {
        FUN_006d6ba0(0xf0,0x3f800000,2,0,0x3f800000);
        param_1[0x104] = 0;
        param_1[0x2d9] = 9;
        param_1[0x2f1] = 9;
        puVar21 = &DAT_00b1d554;
      }
      else {
        uVar7 = FUN_006eef60();
        if ((uVar7 % 0xf == 0) ||
           (((uVar7 = FUN_006eef60(), ppiVar17 = local_168, uVar7 % 3 == 0 && (param_1[0x2f1] != 8))
            && (param_1[0x2f1] != 0xb)))) {
          param_1[0x104] = 0;
          uVar7 = FUN_006eef60();
          if (uVar7 % 10 < 3) {
            param_1[0x2d9] = 8;
            param_1[0x2f1] = 8;
            puVar21 = &DAT_00b1d53c;
            goto LAB_004803f2;
          }
          param_1[0x2d9] = 0xb;
          param_1[0x2f1] = 0xb;
        }
        else {
          if (((float)DAT_00baa9d0 < (float)((uint)local_168 & DAT_00bacb40)) ||
             ((float)local_150 < 0.0)) {
            local_168 = (int **)0x41700000;
            ppiStack_158 = (int **)0x40e00000;
            pppiVar5 = &local_148;
            if (DAT_00baa854 <= (float)ppiVar17) {
              pppiVar5 = &local_168;
            }
            ppiVar17 = *pppiVar5;
            if ((float)ppiVar17 <= (float)DAT_00baadd8) {
              ppiVar17 = DAT_00baadd8;
            }
            pppiVar5 = &ppiStack_144;
            if (DAT_00baa7b8 <= (float)local_150) {
              pppiVar5 = &ppiStack_158;
            }
            ppiVar16 = *pppiVar5;
            if ((float)ppiVar16 <= (float)DAT_00baadac) {
              ppiVar16 = DAT_00baadac;
            }
            fVar15 = (float)param_1[0xdb];
            fVar18 = (float)ppiVar16 * DAT_00baa120;
            if ((NAN(fVar15) || NAN(DAT_00ba9fe4)) == (fVar15 == DAT_00ba9fe4)) {
              param_1[0xd8] =
                   (int)(((float)ppiVar17 * DAT_00baa120 * (float)param_1[0xe7]) / fVar15 +
                        (float)param_1[0xd8]);
              param_1[0xd9] = (int)((fVar18 * (float)param_1[0xe7]) / fVar15 + (float)param_1[0xd9])
              ;
            }
            goto LAB_00480413;
          }
          if ((((float)((uint)local_168 & DAT_00bacb40) <= (float)DAT_00baa904) ||
              (DAT_00baaa94 <= (float)((uint)local_160 & DAT_00bacb40))) || ((float)local_150 < 0.0)
             ) goto LAB_00480413;
          FUN_006d6ba0(0xf0,0x3f800000,2,0,0x3f800000);
          param_1[0x104] = 0;
          param_1[0x2d9] = 10;
          param_1[0x2f1] = 10;
        }
        puVar21 = &DAT_00b1d548;
      }
LAB_004803f2:
      cVar2 = FUN_0040a5d0(puVar21,1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
LAB_00480413:
      local_168 = (int **)((float)param_1[0xcf] + (float)param_1[0xd8]);
      fStack_164 = (float)param_1[0xd9] + (float)param_1[0xd0];
      FUN_00812f50(&ppiStack_158,&local_168,0,0x42f00000,0);
      param_1[0xd8] = (int)((float)ppiStack_158 - (float)param_1[0xcf]);
      param_1[0xd9] = (int)(fStack_154 - (float)param_1[0xd0]);
      FUN_00aef12b();
      return;
    default:
      goto LAB_004813c2;
    case 8:
      local_160 = (int **)(((float)local_160 * DAT_00baa784 + (float)local_168) - *pfVar6);
      ppiStack_158 = (int **)(((*(float *)(iVar8 + 0x364) + *(float *)(iVar8 + 0x364)) *
                               DAT_00baa784 + (float)local_150) - (float)param_1[0xd0]);
      local_148 = local_160;
      ppiStack_144 = ppiStack_158;
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        fVar15 = (float)local_160 * (float)local_160 + (float)ppiStack_158 * (float)ppiStack_158;
        FUN_00435a50();
        if ((DAT_00baab08 <= fVar15) || (uVar7 = FUN_006eef60(), uVar7 % 3 == 0)) {
          param_1[0x2d9] = 4;
        }
        else {
          cVar2 = FUN_0040a5d0(&DAT_00b1d53c,1);
          if (cVar2 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
          if (param_1[0x1f] != 0) {
            FUN_00408e00();
          }
        }
      }
      cStack_13d = FUN_0040b030("Shoot2");
      cVar2 = FUN_0040b030("Shoot");
      if ((cVar2 != '\0') || (cStack_13d != '\0')) {
        AI_0043ef30();
        uStack_cc = 0x3fb33333;
        uStack_b8 = 0x3f933333;
        uStack_d4 = 0xbd8f5c29;
        local_168 = (int **)0x5;
        FUN_006d6ba0(0xf5,0x3f800000,2,0,0x3f800000);
        if (cStack_13d == '\0') {
          uStack_dc = 0xc2200000;
          uStack_d8 = 0x40b00000;
        }
        else {
          local_168 = (int **)0x4;
        }
        fVar18 = (float)ppiStack_158 * (float)ppiStack_158 + (float)local_160 * (float)local_160;
        FUN_00435a50();
        fVar15 = DAT_00baa7ec;
        if (DAT_00baab08 < fVar18) {
          fVar15 = DAT_00baa81c;
        }
        ppiStack_158 = (int **)(fVar15 * DAT_00baa3c4);
        pfVar6 = (float *)FUN_00a10030(&fStack_13c);
        fStack_154 = (float)ppiStack_158 * pfVar6[1];
        ppiStack_158 = (int **)((float)ppiStack_158 * *pfVar6);
        FUN_006cb2e0(param_1 + 0xcf,&ppiStack_158,local_168,auStack_e0);
        FUN_00aef12b();
        return;
      }
      goto LAB_004813c2;
    case 9:
      cVar2 = FUN_0040b030("Shoot");
      if (cVar2 != '\0') {
        local_168 = (int **)(*pfVar6 + 0.0);
        fStack_164 = (float)param_1[0xd0] - DAT_00baa950;
        piVar13 = (int *)FUN_0096f310(1,&local_168,0x42b40000,0x10,&DAT_00c7b640,param_1,0);
        piVar13[0xd6] = 0x453b8000;
        piVar13[0x138] = 0x3f99999a;
        FUN_0097fc10();
        (**(code **)(*piVar13 + 0xc))();
        param_1[0xcf] = (int)((float)param_1[0xcf] - DAT_00baa784);
      }
      cVar2 = FUN_0040b090("Shoot");
      if (((cVar2 != '\0') && (cVar2 = FUN_0040b090("Shoot2"), cVar2 == '\0')) &&
         (0 < (int)local_148)) {
        uVar7 = (int)(float)param_1[0xe9] & 0x80000001;
        if ((int)uVar7 < 0) {
          uVar7 = (uVar7 - 1 | 0xfffffffe) + 1;
        }
        if (uVar7 == 1) {
          fVar15 = (float)param_1[0xcf] + DAT_00baa81c;
        }
        else {
          fVar15 = (float)param_1[0xcf] - DAT_00baa81c;
        }
LAB_00480ab0:
        param_1[0xcf] = (int)fVar15;
      }
      break;
    case 10:
      cVar2 = FUN_0040b030("Shoot");
      if (cVar2 == '\0') {
LAB_00480a54:
        cVar2 = FUN_0040b090("Shoot");
        if (((cVar2 != '\0') && (cVar2 = FUN_0040b090("Shoot2"), cVar2 == '\0')) &&
           (0 < (int)local_148)) {
          uVar7 = (int)(float)param_1[0xe9] & 0x80000001;
          if ((int)uVar7 < 0) {
            uVar7 = (uVar7 - 1 | 0xfffffffe) + 1;
          }
          if (uVar7 == 1) {
            fVar15 = (float)param_1[0xcf] + DAT_00baa784;
          }
          else {
            fVar15 = (float)param_1[0xcf] - DAT_00baa784;
          }
          goto LAB_00480ab0;
        }
      }
      else {
        fVar15 = (float)param_1[0xcf];
        local_160 = (int **)0x0;
        fVar18 = DAT_00baae3c;
        do {
          if (local_160 == (int **)0x0) {
            local_168 = DAT_00baae28;
            ppiStack_158 = DAT_00baad5c;
            fVar19 = DAT_00baaa00;
            local_150 = DAT_00baae5c;
          }
          else {
            local_168 = DAT_00baa904;
            ppiStack_158 = DAT_00baa528;
            fVar19 = DAT_00baa950;
            local_150 = DAT_00baa9d0;
          }
          fStack_14c = fVar18 + (float)param_1[0xd0];
          local_150 = (int **)((float)local_150 + fVar15);
          piVar13 = (int *)FUN_0096f310(1,&local_150,fVar19,0xe,&DAT_00c7b640,param_1,0);
          piVar13[0x132] = (int)local_168;
          piVar13[0xd6] = 0x453b8000;
          *(undefined *)(piVar13 + 0x130) = 1;
          piVar13[0x131] = 0;
          piVar13[0x133] = (int)ppiStack_158;
          (**(code **)(*piVar13 + 0xc))();
          fVar18 = DAT_00baae3c;
          fVar15 = *pfVar6 - DAT_00baa6bc;
          local_160 = (int **)((int)local_160 + 1);
          *pfVar6 = fVar15;
        } while ((int)local_160 < 2);
      }
      break;
    case 0xb:
      cVar2 = FUN_0040b030("Shoot");
      if (cVar2 == '\0') goto LAB_00480a54;
      FUN_006d6ba0(0xf5,0x3f800000,2,0,0x3f800000);
      ppiStack_158 = (int **)0x0;
      do {
        if (ppiStack_158 == (int **)0x0) {
          local_150 = (int **)&DAT_bf800000;
          fStack_14c = 0.0;
          local_168 = DAT_00baae5c;
        }
        else {
          local_160 = (int **)0x3f800000;
          uStack_15c = 0;
          local_168 = DAT_00baa9d0;
        }
        pppiVar5 = &local_160;
        if (ppiStack_158 == (int **)0x0) {
          pppiVar5 = &local_150;
        }
        AI_0043ef30();
        ppiStack_70 = *pppiVar5;
        ppiStack_6c = pppiVar5[1];
        fStack_13c = (float)local_168 + (float)param_1[0xcf];
        uStack_cc = 0x3fb33333;
        uStack_dc = 0xc2200000;
        fStack_138 = (float)param_1[0xd0] + 0.0;
        uStack_d8 = 0x40200000;
        uStack_68 = 0xbec28f5c;
        local_148 = (int **)0x40f00000;
        ppiStack_144 = (int **)0x41600000;
        FUN_006cb2e0(&fStack_13c,&local_148,9,auStack_e0);
        ppiStack_158 = (int **)((int)ppiStack_158 + 1);
        param_1[0xcf] = (int)((float)param_1[0xcf] - DAT_00baa6bc);
      } while ((int)ppiStack_158 < 2);
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 4;
      FUN_00aef12b();
      return;
    }
    break;
  case 3:
    param_1[0x104] = param_1[0x104] + 1;
    param_1[0x62] = 0;
    *(undefined *)(param_1 + 0xec) = 1;
    FUN_006d7520(0);
    if (param_1[0x1f] == 0) {
      local_160 = (int **)(param_1 + 0x1e);
    }
    else {
      local_160 = (int **)(param_1 + 0x1e);
      cVar2 = FUN_0040add0("Sound");
      if (cVar2 != '\0') {
        FUN_006d6ba0(0xf1,0x3f800000,2,0,0x3f800000);
        local_160 = (int **)(param_1 + 0x1e);
      }
    }
    if (param_1[0x1f] != 0) {
      cVar2 = FUN_0040add0("Shoot");
      if (cVar2 != '\0') {
        auStack_fc = ZEXT816(0);
        uStack_ec = 0;
        uStack_e8 = 0;
        uStack_e4 = 0;
        uStack_10c = _DAT_00babe90;
        uStack_108 = _UNK_00babe94;
        uStack_104 = _UNK_00babe98;
        uStack_100 = _UNK_00babe9c;
        FUN_006b6550(pfVar6,&uStack_10c);
        FUN_00703670(0xc);
      }
      if (param_1[0x1f] != 0) {
        cVar2 = FUN_0040add0("Shoot2");
        if (cVar2 != '\0') {
          ppiStack_158 = (int **)0x0;
          do {
            ppiVar17 = ppiStack_158;
            iVar8 = FUN_006eef60();
            fVar15 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_168 = (int **)(fVar15 + fVar15);
            local_160 = (int **)ppiVar17[0x317173];
            local_150 = (int **)ppiVar17[0x317174];
            uVar9 = FUN_006eef60();
            ppiVar17 = local_168;
            FUN_0041d540();
            fStack_13c = (float)ppiVar17 * DAT_00baa81c + (float)local_160 + (float)param_1[0xcf];
            ppiVar17 = local_168;
            FUN_0041d520();
            fStack_138 = (float)ppiVar17 * DAT_00baa81c + (float)local_150 + (float)param_1[0xd0];
            piVar13 = (int *)FUN_006fe410(1000,0x10,&fStack_13c,&DAT_00c7b640,param_1,2,uVar9,0);
            uStack_ec = 0;
            auStack_fc._0_12_ = ZEXT812(0);
            auStack_fc._12_4_ = 0;
            uStack_e8 = 0;
            uStack_e4 = 0;
            uStack_10c = _DAT_00babe70;
            uStack_108 = _UNK_00babe74;
            uStack_104 = _UNK_00babe78;
            uStack_100 = _UNK_00babe7c;
            (**(code **)(*piVar13 + 0x3c))(&uStack_10c,0xffffffff,0xff,0,1);
            bVar3 = FUN_006eef60();
            *(byte *)(piVar13 + 0x52) = ~bVar3 & 1;
            (**(code **)(*piVar13 + 0xc))();
            ppiStack_158 = ppiStack_158 + 2;
          } while (ppiStack_158 < (int **)0x18);
        }
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
      }
    }
    uVar9 = FUN_006eef60();
    uVar9 = FUN_006fe410(param_1[10],param_1[0xb] + 10,&DAT_00c7b640,&DAT_00c7b640,param_1,0,uVar9,0
                        );
    piVar13 = (int *)__RTDynamicCast(uVar9,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                     &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
    uVar9 = FUN_006eef60();
    uVar9 = FUN_006fe410(param_1[10],param_1[0xb] + 10,&DAT_00c7b640,&DAT_00c7b640,param_1,0,uVar9,0
                        );
    local_160 = (int **)__RTDynamicCast(uVar9,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                        &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
    ppiStack_158 = local_160 + 0xef;
    if (local_160[0xef] != (int *)0x0) {
      local_168 = ppiStack_158;
      FUN_004cf210(&local_168);
    }
    *ppiStack_158 = piVar13;
    if (piVar13 != (int *)0x0) {
      FUN_004cdcf0(ppiStack_158);
    }
    if (piVar13[0xf0] != 0) {
      local_168 = (int **)(piVar13 + 0xf0);
      FUN_004cf210(&local_168);
    }
    piVar13[0xf0] = (int)local_160;
    FUN_004cdcf0(piVar13 + 0xf0);
    local_160[0x2d9] = (int *)0x0;
    piVar13[0x2d9] = 0;
    (**(code **)(*piVar13 + 0xc))();
    (*(code *)(*local_160)[3])();
    (**(code **)(*param_1 + 0x28))();
    FUN_00aef12b();
    return;
  case 4:
    if (param_1[0x2d9] == 3) {
      *(undefined *)((int)param_1 + 0x171) = 0;
      param_1[0x62] = 0;
      param_1[0x61] = 5;
      uVar7 = FUN_006eef60();
      if ((uVar7 % 9 == 0) &&
         ((((param_1[0xef] == 0 || (param_1[0x104] == 0)) ||
           (iVar8 = FUN_00447770(), 0x14 < *(int *)(iVar8 + 0x410))) &&
          ((param_1[0xf0] == 0 || (iVar8 = FUN_004567e0(), 0x14 < *(int *)(iVar8 + 0x410))))))) {
        param_1[0x2d9] = 7;
        param_1[0x104] = 0;
        cVar2 = FUN_0040a5d0("Stomp",1);
        if (cVar2 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
        ppiVar17 = (int **)(param_1 + 0xcf);
        *(undefined *)((int)param_1 + 0x171) = 1;
        iVar12 = FUN_006be840();
        iVar8 = *(int *)(iVar12 + 0x340);
        *ppiVar17 = *(int **)(iVar12 + 0x33c);
        param_1[0xd0] = iVar8;
        if (param_1[0xef] != 0) {
          iVar8 = FUN_00447770();
          ppiStack_158 = (int **)*ppiVar17;
          local_160 = (int **)(*(float *)(iVar8 + 0x340) - (float)param_1[0xd0]);
          local_168 = (int **)(*(float *)(iVar8 + 0x33c) - (float)ppiStack_158);
          fVar15 = (float)local_160 * (float)local_160 + (float)local_168 * (float)local_168;
          FUN_00435a50();
          if ((fVar15 < DAT_00baa9f0) && (DAT_00ba9fe4 < fVar15)) {
            fVar15 = (DAT_00baa9f0 - fVar15) / fVar15;
            *ppiVar17 = (int *)((float)ppiStack_158 - fVar15 * (float)local_168);
            param_1[0xd0] = (int)((float)param_1[0xd0] - (float)local_160 * fVar15);
          }
        }
        if (param_1[0xf0] != 0) {
          iVar8 = FUN_004567e0();
          ppiStack_158 = (int **)*ppiVar17;
          local_160 = (int **)(*(float *)(iVar8 + 0x340) - (float)param_1[0xd0]);
          local_168 = (int **)(*(float *)(iVar8 + 0x33c) - (float)ppiStack_158);
          fVar15 = (float)local_160 * (float)local_160 + (float)local_168 * (float)local_168;
          FUN_00435a50();
          if ((fVar15 < DAT_00baa9f0) && (DAT_00ba9fe4 < fVar15)) {
            fVar15 = (DAT_00baa9f0 - fVar15) / fVar15;
            *ppiVar17 = (int *)((float)ppiStack_158 - fVar15 * (float)local_168);
            param_1[0xd0] = (int)((float)param_1[0xd0] - (float)local_160 * fVar15);
          }
        }
        iVar12 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                 *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
        iVar8 = 0;
        if (0 < iVar12) {
          iVar8 = iVar12;
        }
        if ((iVar8 < 4) && (uVar7 = FUN_006eef60(), (uVar7 & 1) == 0)) {
          iVar8 = FUN_006be840();
          fStack_13c = *(float *)(iVar8 + 0x33c);
          fStack_138 = *(float *)(iVar8 + 0x340);
          FUN_00813520(&local_168,&fStack_13c,0x43480000,1,0,0);
          uVar9 = FUN_006eef60();
          FUN_006fe410(0x37,1,&local_168,&DAT_00c7b640,param_1,0,uVar9,0);
          FUN_00aef12b();
          return;
        }
      }
    }
    else {
      if (param_1[0x2d9] == 7) {
        param_1[0x104] = param_1[0x104] + 1;
        cVar2 = FUN_0040b090("Stomp");
        if ((cVar2 == '\0') || (cVar2 = FUN_0040b090(&DAT_00b1e554), cVar2 != '\0')) {
          iVar8 = 0;
        }
        else {
          iVar8 = 4;
        }
        param_1[0x62] = iVar8;
        cVar2 = FUN_0040b030("Stomp");
        if (cVar2 != '\0') {
          FUN_006d6ba0(0x34,0x3f800000,2,0,0x3f800000);
          FUN_006ff2a0(pfVar6,0x43960000,0x428c0000,0,param_1,DAT_00c79100,DAT_00c79104,DAT_00c79108
                       ,DAT_00c7910c,0x1000000,0,0);
          FUN_00456570();
          fStack_134 = *pfVar6;
          iStack_130 = param_1[0xd0];
          iVar8 = *(int *)(DAT_00c71678 + 0x18300);
          uStack_11c = 0xd;
          uStack_124 = 0x3ccccccd;
          uStack_128 = 0x3d23d70a;
          piVar13 = (int *)(iVar8 + 0x70fc);
          *piVar13 = *piVar13 + 1;
          uVar7 = *(uint *)(iVar8 + 0x70fc) & 0x80000001;
          if ((int)uVar7 < 0) {
            uVar7 = (uVar7 - 1 | 0xfffffffe) + 1;
          }
          FUN_0081df10(uVar7,&fStack_134);
          uVar9 = FUN_004238f0(0x3f4ccccd);
          FUN_006b66a0(uVar9);
        }
        if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
          *(undefined *)((int)param_1 + 0x171) = 0;
          param_1[0x2d9] = 3;
        }
      }
      if (param_1[0xef] != 0) {
        iVar8 = FUN_00447770();
        pfVar10 = (float *)(iVar8 + 0x380);
        pfVar6 = (float *)(param_1 + 0xe0);
        if (*pfVar10 <= (float)param_1[0xe0] && (float)param_1[0xe0] != *pfVar10) {
          pfVar6 = pfVar10;
        }
        local_168 = (int **)*pfVar6;
        iVar8 = FUN_00447770();
        *(int ***)(iVar8 + 0x380) = local_168;
        param_1[0xe0] = (int)local_168;
      }
      if (*(char *)((int)param_1 + 0x173) != '\0') {
        if (param_1[0xf0] != 0) {
          uVar20 = FUN_00435c70();
          (*(code *)((ulonglong)uVar20 >> 0x20))((int)uVar20);
        }
        if (param_1[0xef] != 0) {
          uVar20 = FUN_00435c70();
          (*(code *)((ulonglong)uVar20 >> 0x20))((int)uVar20);
        }
        piVar13 = (int *)0x0;
        local_168 = *(int ***)(DAT_00c71678 + 0x18300);
        if (local_168[0x499] != (int *)0x0) {
          do {
            piVar1 = (int *)local_168[0x497][(int)piVar13];
            cVar2 = (**(code **)(*piVar1 + 0x48))();
            if (cVar2 != '\0') {
              uVar9 = FUN_00435c70();
              (**(code **)(*piVar1 + 0x20))(0x42c80000,0,0,uVar9,0x1e);
            }
            piVar13 = (int *)((int)piVar13 + 1);
          } while (piVar13 < local_168[0x499]);
        }
      }
    }
  }
LAB_004813c2:
  FUN_00aef12b();
  return;
}

