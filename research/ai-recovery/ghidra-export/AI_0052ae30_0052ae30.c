/* Local J460 decompiler output.
 * VA: 0x0052ae30
 * Entry: 0052ae30
 * Dispatcher: 0x006c2990
 * Types: 38,259
 * Identities: 259.0.0,38.0.0,38.1.0,38.1.1,38.2.0,38.3.0
 * Evidence: dispatcher=0x006c2990; end=0x0052c2f0; instructions=1093
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=38,259;
   identities=259.0.0,38.0.0,38.1.0,38.1.1,38.2.0,38.3.0; dispatcher=0x006c2990; end=0x0052c2f0;
   instructions=1093 */

void __fastcall AI_0052ae30(int param_1)

{
  float fVar1;
  byte bVar2;
  byte **ppbVar3;
  char cVar4;
  int iVar5;
  uint uVar6;
  float *pfVar7;
  undefined4 uVar8;
  byte **ppbVar9;
  float *pfVar10;
  int extraout_ECX;
  float *extraout_ECX_00;
  byte *pbVar11;
  int iVar12;
  int iVar13;
  bool bVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float local_114;
  undefined4 local_110;
  char local_10c [4];
  int local_108;
  float local_104;
  float local_100;
  float local_fc;
  float local_f8;
  int local_f4;
  float local_f0;
  float local_ec;
  float local_e8;
  float local_e4;
  float local_e0;
  float local_dc;
  float local_d8;
  float local_d4;
  undefined local_d0 [12];
  undefined4 local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  uint local_78;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4670;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  if ((*(int *)(param_1 + 0x28) == 0x26) && (*(int *)(param_1 + 0x2c) == 3)) {
    puStack_20 = &stack0xfffffffc;
    FUN_0054fa80(local_24);
    goto LAB_0052c2d0;
  }
  if (*(int *)(param_1 + 0xb64) == 0) {
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380(&DAT_00b1d6fc,0);
    *(undefined4 *)(param_1 + 0xb64) = 4;
    goto LAB_0052c2d0;
  }
  pfVar10 = (float *)(param_1 + 0x33c);
  local_f4 = (int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0);
  iVar12 = (int)((*pfVar10 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
  iVar13 = *(int *)(DAT_00c71678 + 0x18300);
  iVar5 = (int)((*(float *)(param_1 + 0x340) - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
  if (((((-1 < iVar12) && (iVar12 < *(int *)(iVar13 + 0xc))) && (-1 < iVar5)) &&
      ((iVar5 < *(int *)(iVar13 + 0x10) &&
       (uVar6 = iVar5 * *(int *)(iVar13 + 0xc) + iVar12, uVar6 < 0x1c0)))) &&
     (*(int *)(iVar13 + 0x76c + uVar6 * 4) < 0x3b7)) {
    *(undefined4 *)(iVar13 + 0x76c + uVar6 * 4) = 900;
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
  FUN_006bec40(&local_f0,0);
  local_e8 = local_f0 - *pfVar10;
  local_e4 = local_ec - *(float *)(param_1 + 0x340);
  local_fc = local_e8;
  local_f8 = local_e4;
  if (*(int *)(param_1 + 0xf1c) != -1) {
    pfVar7 = (float *)FUN_006d82d0(&local_104);
    local_e8 = *pfVar7 * DAT_00baa9d0;
    local_e4 = pfVar7[1] * DAT_00baa9d0;
    local_fc = local_e8;
    local_f8 = local_e4;
  }
  iVar13 = *(int *)(param_1 + 0xb64);
  local_fc = local_e8;
  local_f8 = local_e4;
  if (iVar13 == 4) {
    *(undefined4 *)(param_1 + 0x188) = 4;
    if (*(int *)(param_1 + 0x28) == 0x103) {
      uVar6 = FUN_006eef60();
      if (uVar6 % 0x5a == 0) {
        local_d8 = 1.507797e-42;
        FUN_00956780();
        FUN_0092dc30(local_d8,0x3f800000,0x3c,0,0x3f800000,0);
      }
      if (*(int *)(param_1 + 0xba4) < 1) {
        if (*(int *)(param_1 + 0xf1c) == -1) {
          uVar6 = FUN_006eef60();
          if (uVar6 % 0x14 != 0) goto LAB_0052b128;
          uVar8 = FUN_006be840();
          cVar4 = FUN_006d7d60(uVar8);
        }
        else {
          cVar4 = FUN_006cae60(0,7);
        }
        if (cVar4 != '\0') {
          *(undefined4 *)(param_1 + 0xb64) = 8;
          if (*(int *)(param_1 + 0xf1c) == -1) {
            uVar6 = FUN_006eef60();
            iVar13 = uVar6 % 0x1e + 0x14;
          }
          else {
            iVar13 = 0x32;
          }
          *(int *)(param_1 + 0xba0) = iVar13;
          FUN_006d8b20(0);
        }
      }
LAB_0052b128:
      if (0 < *(int *)(param_1 + 0xba4)) {
        *(int *)(param_1 + 0xba4) = *(int *)(param_1 + 0xba4) - local_f4;
      }
    }
    else {
      uVar6 = FUN_006eef60();
      if (uVar6 % 10 == 0) {
        iVar13 = FUN_006eef60();
        FUN_006b64d0((float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa1f8 + DAT_00baa198);
      }
      if ((*(int *)(param_1 + 0xba0) < 1) && (cVar4 = FUN_006cae60(0,7), cVar4 != '\0')) {
        *(undefined4 *)(param_1 + 0xba0) = 0x23;
        cVar4 = FUN_0040a5d0("Attack",1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
        FUN_006d9050(1);
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (cVar4 = FUN_0040add0("Shoot"), cVar4 != '\0')) {
        FUN_006d9050(0);
        FUN_006d6ba0(0x2c,0x3f59999a,2,0,0x3f800000);
        AI_0043ef30();
        local_c4 = 0xbd4ccccd;
        local_c0 = 0x3f88f5c3;
        if (*(int *)(param_1 + 0x2c) == 2) {
          local_78 = local_78 | 1;
          local_bc = 0x3fc00000;
LAB_0052b276:
          local_d4 = 0.0;
        }
        else {
          if ((*(int *)(param_1 + 0x2c) != 1) || (*(int *)(param_1 + 0x30) == 1)) goto LAB_0052b276;
          local_d4 = 2.802597e-45;
        }
        iVar13 = FUN_006d8240();
        local_d8 = DAT_00baa7e8;
        if ((0 < iVar13) && (extraout_ECX == 0)) {
          local_d8 = DAT_00baa81c;
        }
        iVar13 = FUN_006be840();
        local_f0 = *(float *)(iVar13 + 0x33c) - *(float *)(param_1 + 0x33c);
        local_ec = *(float *)(iVar13 + 0x340) - *(float *)(param_1 + 0x340);
        if ((*(int *)(param_1 + 0xf1c) != -1) &&
           (cVar4 = FUN_00a10630(&DAT_00c7b640), cVar4 != '\0')) {
          local_f0 = *extraout_ECX_00;
          local_ec = extraout_ECX_00[1];
        }
        FUN_00a0ffc0();
        local_f0 = local_f0 * local_d8;
        local_ec = local_ec * local_d8;
        FUN_006cb2e0((float *)(param_1 + 0x33c),&local_f0,local_d4,local_d0);
      }
      if (0 < *(int *)(param_1 + 0xba0)) {
        *(int *)(param_1 + 0xba0) = *(int *)(param_1 + 0xba0) - local_f4;
      }
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      ppbVar3 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar3 != (byte **)0x0) {
        ppbVar9 = ppbVar3;
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar9 = (byte **)*ppbVar3;
        }
        pbVar11 = &DAT_00b1d6fc;
        do {
          bVar2 = *(byte *)ppbVar9;
          bVar14 = bVar2 < *pbVar11;
          if (bVar2 != *pbVar11) {
LAB_0052b3d0:
            uVar6 = -(uint)bVar14 | 1;
            goto LAB_0052b3d5;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppbVar9 + 1);
          bVar14 = bVar2 < pbVar11[1];
          if (bVar2 != pbVar11[1]) goto LAB_0052b3d0;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pbVar11 = pbVar11 + 2;
        } while (bVar2 != 0);
        uVar6 = 0;
LAB_0052b3d5:
        if ((uVar6 == 0) && ((*(byte *)(ppbVar3 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0')))
           ) goto LAB_0052b40c;
      }
      cVar4 = FUN_0040a5d0(&DAT_00b1d6fc,1);
      if (cVar4 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
LAB_0052b40c:
    if (DAT_00ba9fe4 < *(float *)(param_1 + 0x14)) {
      *(undefined4 *)(param_1 + 0xbb0) = 0x41a00000;
    }
    if (((float)((uint)local_e8 & DAT_00bacb40) < DAT_00baa87c) ||
       ((float)((uint)local_e4 & DAT_00bacb40) < DAT_00baa87c)) {
      fVar15 = local_e4 * local_e4 + local_e8 * local_e8;
      FUN_00435a50();
      if (fVar15 < DAT_00baab54) {
        *(float *)(param_1 + 0xbb0) = *(float *)(param_1 + 0xbb0) + DAT_00baa454;
      }
    }
    iVar13 = FUN_006eef60();
    fVar15 = DAT_00baa120;
    fVar16 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa120 + *(float *)(param_1 + 0xbb0);
    *(float *)(param_1 + 0xbb0) = fVar16;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      if (DAT_00baa87c < fVar16) {
        fVar16 = 0.0;
        do {
          do {
            do {
              while( true ) {
                fVar15 = DAT_00baa120;
                if ((((NAN(*(float *)(param_1 + 0x334)) || NAN(DAT_00c7b640)) ==
                      (*(float *)(param_1 + 0x334) == DAT_00c7b640)) ||
                    ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) ==
                     (*(float *)(param_1 + 0x338) == DAT_00c7b644))) ||
                   (local_d4 = (float)((int)fVar16 + 1), 1 < (int)fVar16)) goto LAB_0052b839;
                iVar13 = FUN_006eef60();
                local_d8 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa704;
                local_d8 = local_d8 + local_d8;
                iVar13 = FUN_006eef60();
                local_e0 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baaae0 + DAT_00baa950;
                fVar15 = local_d8;
                FUN_0041d540();
                local_dc = fVar15 * local_e0 + *(float *)(param_1 + 0x33c);
                fVar15 = local_d8;
                FUN_0041d520();
                local_e0 = fVar15 * local_e0 + *(float *)(param_1 + 0x340);
                iVar13 = FUN_006be840();
                fVar17 = *(float *)(iVar13 + 0x33c) - local_dc;
                fVar15 = *(float *)(iVar13 + 0x340) - local_e0;
                if (*(int *)(param_1 + 0x2c) != 1) break;
                fVar15 = fVar15 * fVar15 + fVar17 * fVar17;
                FUN_00435a50();
                fVar16 = local_d4;
                if ((DAT_00baa924 < fVar15) && (fVar15 < DAT_00baaa00)) goto LAB_0052b723;
              }
              fVar16 = local_d4;
            } while (((float)((uint)fVar17 & DAT_00bacb40) <= DAT_00baa87c) ||
                    ((float)((uint)fVar15 & DAT_00bacb40) <= DAT_00baa87c));
            fVar15 = fVar15 * fVar15 + fVar17 * fVar17;
            FUN_00435a50();
            fVar16 = local_d4;
          } while (fVar15 <= DAT_00baaa94);
LAB_0052b723:
          iVar13 = *(int *)(DAT_00c71678 + 0x18300);
          local_d8 = (float)(int)((local_dc - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
          iVar5 = (int)((local_e0 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
          fVar16 = local_d4;
          if ((-1 < (int)local_d8) &&
             ((((int)local_d8 < *(int *)(iVar13 + 0xc) && (-1 < iVar5)) &&
              (iVar5 < *(int *)(iVar13 + 0x10))))) {
            local_dc = (float)(*(int *)(iVar13 + 0xc) * iVar5);
            iVar5 = (int)local_dc + (int)local_d8;
            if ((-1 < iVar5) &&
               (((0x1bf < iVar5 || (*(int *)(iVar13 + 0x76c + iVar5 * 4) < 500)) &&
                (iVar5 = FUN_007f0800(iVar5), fVar16 = local_d4, iVar5 == 0)))) {
              fVar15 = (float)(((int)local_dc + (int)local_d8) / *(int *)(iVar13 + 0xc)) *
                       DAT_00baa904 + DAT_00baaa00;
              *(float *)(param_1 + 0x334) =
                   (float)(((int)local_dc + (int)local_d8) % *(int *)(iVar13 + 0xc)) * DAT_00baa904
                   + DAT_00baa904;
              *(float *)(param_1 + 0x338) = fVar15;
            }
          }
        } while( true );
      }
LAB_0052b839:
      if ((DAT_00baa904 < *(float *)(param_1 + 0xbb0)) &&
         (cVar4 = FUN_00a10630(&DAT_00c7b640), cVar4 != '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 6;
        *(undefined4 *)(param_1 + 0x410) = 0;
        cVar4 = FUN_0040a5d0("Vanish",1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
        *(undefined4 *)(param_1 + 0x15c) = 0;
        fVar15 = DAT_00baa120;
        if (*(int *)(param_1 + 0x28) == 0x103) {
          local_dc = 1.5106e-42;
LAB_0052b8bd:
          FUN_00956780();
          FUN_0092dc30(local_dc,0x3f800000,2,0,0x3f800000,0);
          fVar15 = DAT_00baa120;
        }
      }
    }
    else {
      cVar4 = FUN_006d8260(9);
      fVar15 = DAT_00baa120;
      if (cVar4 != '\0') {
        *(undefined4 *)(param_1 + 0xb64) = 6;
        *(undefined4 *)(param_1 + 0x410) = 0;
        cVar4 = FUN_0040a5d0("Vanish",1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
        fVar15 = DAT_00baa120;
        *(undefined4 *)(param_1 + 0x15c) = 0;
        *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
        *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
      }
    }
  }
  else if (iVar13 == 6) {
    if ((*(int *)(param_1 + 0xf1c) != -1) && (cVar4 = FUN_00a10630(&DAT_00c7b640), cVar4 != '\0')) {
      FUN_006d8b20(2);
      FUN_007e33c0(&DAT_00c7b640,0x40800000,0,1);
      *(float *)(param_1 + 0x334) = *pfVar10;
      *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    }
    *(undefined4 *)(param_1 + 0x188) = 0;
    if ((*(int *)(param_1 + 0x410) < 0x19) || (cVar4 = FUN_00a10630(&DAT_00c7b640), cVar4 == '\0'))
    {
      if (((*(int *)(param_1 + 0x7c) == 0) ||
          (fVar15 = DAT_00baa120, *(char *)(param_1 + 0x8c) == '\0')) &&
         (cVar4 = FUN_00a10600(&DAT_00c7b640), fVar15 = DAT_00baa120, cVar4 != '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 4;
      }
    }
    else {
      *(undefined4 *)(param_1 + 0x15c) = *(undefined4 *)(*(int *)(param_1 + 0x330) + 0x24);
      cVar4 = FUN_0040a5d0("Vanish2",1);
      if (cVar4 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      *(undefined4 *)(param_1 + 0x410) = 0;
      *(undefined4 *)(param_1 + 0x33c) = *(undefined4 *)(param_1 + 0x334);
      *(undefined4 *)(param_1 + 0x340) = *(undefined4 *)(param_1 + 0x338);
      *(float *)(param_1 + 0x334) = DAT_00c7b640;
      *(float *)(param_1 + 0x338) = DAT_00c7b644;
      *(undefined4 *)(param_1 + 0xbb0) = 0;
      FUN_006d8cf0();
      fVar15 = DAT_00baa120;
      if (*(int *)(param_1 + 0x28) == 0x103) {
        local_dc = 1.512001e-42;
        goto LAB_0052b8bd;
      }
    }
  }
  else {
    fVar15 = DAT_00baa120;
    if (iVar13 == 8) {
      FUN_006d8b20(0);
      local_e0 = 0.0;
      fVar15 = DAT_00baa120;
      if (0 < local_f4) {
        do {
          if (*(int *)(param_1 + 0xba0) < 1) {
            *(undefined4 *)(param_1 + 0xb64) = 4;
            *(undefined4 *)(param_1 + 0xba4) = 0x1e;
            fVar15 = DAT_00baa120;
            break;
          }
          iVar13 = *(int *)(param_1 + 0xba0) + -1;
          *(int *)(param_1 + 0xba0) = iVar13;
          if (iVar13 % 10 == 0) {
            cVar4 = FUN_0040a5d0("Attack",1);
            if (cVar4 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x8c) = 1;
            }
            iVar13 = FUN_006be840();
            local_d4 = *(float *)(iVar13 + 0x33c);
            local_d8 = *(float *)(iVar13 + 0x340);
            iVar13 = FUN_006be840();
            pfVar10 = (float *)(param_1 + 0x33c);
            local_d4 = local_d4 + *(float *)(iVar13 + 0x360) * DAT_00baa784;
            local_d8 = local_d8 + *(float *)(iVar13 + 0x364) * DAT_00baa784;
            if (*(int *)(param_1 + 0xf1c) != -1) {
              iVar13 = *(int *)(param_1 + 0xf28);
              if (iVar13 == 0) {
                local_114 = *pfVar10;
                pfVar7 = &local_114;
                local_110 = *(undefined4 *)(param_1 + 0x340);
              }
              else {
                local_f0 = *(float *)(iVar13 + 0x33c);
                pfVar7 = &local_f0;
                local_ec = *(float *)(iVar13 + 0x340);
              }
              local_d4 = *pfVar7;
              local_d8 = pfVar7[1];
            }
            local_d4 = local_d4 - *pfVar10;
            local_d8 = local_d8 - *(float *)(param_1 + 0x340);
            local_dc = (float)AI_0043ef30();
            fVar15 = local_d4 * local_d4 + local_d8 * local_d8;
            FUN_00435a50();
            local_100 = local_d8;
            local_104 = local_d4;
            if (DAT_00ba9fe4 < fVar15) {
              local_100 = local_d8 * (DAT_00baa454 / fVar15);
              local_104 = local_d4 * (DAT_00baa454 / fVar15);
            }
            local_104 = local_104 * DAT_00baa81c;
            local_100 = local_100 * DAT_00baa81c;
            FUN_006cb2e0(pfVar10,&local_104,0,local_dc);
            if (*(int *)(param_1 + 0x28) == 0x103) {
              local_dc = 1.509198e-42;
              FUN_00956780();
              FUN_0092dc30(local_dc,0x3f800000,2,0,0x3f800000,0);
            }
          }
          local_e0 = (float)((int)local_e0 + 1);
          fVar15 = DAT_00baa120;
        } while ((int)local_e0 < local_f4);
      }
    }
  }
  if ((*(int *)(param_1 + 0x28) == 0x103) && (*(float *)(param_1 + 3000) < 0.0)) {
    local_e0 = 0.0;
    local_dc = *(float *)(param_1 + 0x39c) * fVar15 + *(float *)(param_1 + 3000);
    pfVar10 = &local_dc;
    if (0.0 <= local_dc) {
      pfVar10 = &local_e0;
    }
    *(float *)(param_1 + 3000) = *pfVar10;
  }
  if (*(int *)(param_1 + 0xba0) < 1) {
    local_d4 = local_e4 * local_e4 + local_e8 * local_e8;
    fVar17 = local_d4;
    FUN_00435a50();
    fVar15 = local_e4;
    fVar16 = local_e8;
    if (0.0 < fVar17) {
      fVar15 = local_e4 * (DAT_00baa454 / fVar17);
      fVar16 = local_e8 * (DAT_00baa454 / fVar17);
    }
    fVar17 = *(float *)(param_1 + 0x36c);
    fVar16 = fVar16 * DAT_00baa220;
    if (NAN(fVar17) == (fVar17 == 0.0)) {
      *(float *)(param_1 + 0x364) =
           (*(float *)(param_1 + 0x39c) * fVar15 * DAT_00baa220) / fVar17 +
           *(float *)(param_1 + 0x364);
      *(float *)(param_1 + 0x360) =
           (*(float *)(param_1 + 0x39c) * fVar16) / fVar17 + *(float *)(param_1 + 0x360);
    }
    if (*(int *)(param_1 + 0x28) == 0x103) {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        FUN_0041a790(local_10c,param_1 + 0x33c,4);
        local_14 = 0;
        if (local_100 != 0.0) {
          fVar15 = 0.0;
          local_dc = DAT_00c7b640;
          local_e0 = DAT_00c7b644;
          local_e4 = 0.0;
          if (local_d4 <= DAT_00ba9fe4) {
            local_d4 = DAT_00ba9fe4;
          }
          if (DAT_00baac34 <= local_d4) {
            local_d4 = DAT_00baac34;
          }
          local_d4 = local_d4 / DAT_00baac34;
          fVar18 = local_100;
          fVar17 = DAT_00c7b640;
          fVar16 = DAT_00c7b644;
          if (local_100 != 0.0) {
            do {
              iVar13 = *(int *)(local_108 + (int)fVar15 * 4);
              fVar20 = *(float *)(param_1 + 0x33c) - *(float *)(iVar13 + 0x33c);
              fVar19 = *(float *)(param_1 + 0x340) - *(float *)(iVar13 + 0x340);
              local_d8 = *(float *)(iVar13 + 0x364);
              fVar1 = *(float *)(iVar13 + 0x360);
              if (DAT_00ba9fe4 < fVar20 * fVar1 + fVar19 * local_d8) {
                local_ec = DAT_00baa454 - (fVar19 * fVar19 + fVar20 * fVar20) / DAT_00baac34;
                local_e8 = (float)((uint)fVar1 ^ DAT_00bacb70);
                if (fVar19 * (float)((uint)fVar1 ^ DAT_00bacb70) + fVar20 * local_d8 < 0.0) {
                  local_d8 = (float)((uint)local_d8 ^ DAT_00bacb70);
                  local_e8 = fVar1;
                }
                iVar13 = FUN_006eef60();
                local_f8 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                           DAT_00ba9ff4;
                fVar18 = local_d8 * local_d8 + local_e8 * local_e8;
                FUN_00435a50();
                fVar16 = local_e8;
                fVar17 = local_d8;
                if (DAT_00ba9fe4 < fVar18) {
                  fVar18 = ((local_f8 + local_f8 + DAT_00baa630) * local_ec * local_d4) / fVar18;
                  fVar16 = local_e8 * fVar18;
                  fVar17 = local_d8 * fVar18;
                }
                fVar17 = fVar17 + local_dc;
                fVar16 = fVar16 + local_e0;
                local_e4 = (float)((int)local_e4 + 1);
                fVar18 = local_100;
                local_e0 = fVar16;
                local_dc = fVar17;
              }
              fVar15 = (float)((int)fVar15 + 1);
            } while ((uint)fVar15 < (uint)fVar18);
            if (0 < (int)local_e4) {
              *(float *)(param_1 + 0x360) =
                   (fVar17 / (float)(int)local_e4) * *(float *)(param_1 + 0x39c) +
                   *(float *)(param_1 + 0x360);
              *(float *)(param_1 + 0x364) =
                   (fVar16 / (float)(int)local_e4) * *(float *)(param_1 + 0x39c) +
                   *(float *)(param_1 + 0x364);
            }
          }
        }
        local_14 = 0xffffffff;
        if (local_10c[0] == '\0') {
          local_14 = 1;
          FUN_00a648b0(0,0);
        }
      }
      else {
        cVar4 = FUN_006d8260(8);
        fVar15 = *(float *)(param_1 + 3000);
        if (cVar4 == '\0') {
          if (DAT_00ba9fe4 < fVar15) {
            *(undefined **)(param_1 + 3000) = &DAT_bf800000;
          }
        }
        else if (DAT_00ba9fe4 <= fVar15) {
          local_e0 = *(float *)(param_1 + 0x39c);
          local_dc = local_e0 * DAT_00baa0d0 + fVar15;
          if (DAT_00baa454 <= local_dc) {
            local_dc = DAT_00baa454;
          }
          *(float *)(param_1 + 3000) = local_dc;
          pfVar10 = (float *)FUN_00a10030(&local_104);
          fVar17 = *(float *)(param_1 + 0x36c);
          if ((NAN(fVar17) || NAN(DAT_00ba9fe4)) == (fVar17 == DAT_00ba9fe4)) {
            fVar15 = (local_e0 * pfVar10[1] * DAT_00baa554 * (DAT_00baa454 - local_dc)) / fVar17;
            fVar17 = (local_e0 * *pfVar10 * DAT_00baa554 * (DAT_00baa454 - local_dc)) / fVar17;
            goto LAB_0052c2a4;
          }
        }
      }
    }
  }
  else if (*(int *)(param_1 + 0xf1c) != -1) {
    fVar17 = local_e4 * local_e4 + local_e8 * local_e8;
    FUN_00435a50();
    fVar15 = local_e4;
    fVar16 = local_e8;
    if (0.0 < fVar17) {
      fVar15 = local_e4 * (DAT_00baa454 / fVar17);
      fVar16 = local_e8 * (DAT_00baa454 / fVar17);
    }
    fVar17 = *(float *)(param_1 + 0x36c);
    if (NAN(fVar17) == (fVar17 == 0.0)) {
      fVar15 = (*(float *)(param_1 + 0x39c) * fVar15 * DAT_00baa120) / fVar17;
      fVar17 = (*(float *)(param_1 + 0x39c) * fVar16 * DAT_00baa120) / fVar17;
LAB_0052c2a4:
      *(float *)(param_1 + 0x364) = fVar15 + *(float *)(param_1 + 0x364);
      *(float *)(param_1 + 0x360) = fVar17 + *(float *)(param_1 + 0x360);
    }
  }
  *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + local_f4;
LAB_0052c2d0:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

