/* Local J460 decompiler output.
 * VA: 0x005321d0
 * Entry: 005321d0
 * Dispatcher: 0x006c2990
 * Types: 204,247
 * Identities: 204.0.0,247.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00532cf0; instructions=648
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=204,247; identities=204.0.0,247.0.0;
   dispatcher=0x006c2990; end=0x00532cf0; instructions=648 */

void __fastcall AI_005321d0(int param_1)

{
  byte bVar1;
  bool bVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  byte **ppbVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  float *pfVar9;
  int iVar10;
  char *pcVar11;
  uint uVar12;
  uint uVar13;
  bool bVar14;
  float fVar15;
  float fVar16;
  float local_114;
  float local_110;
  float local_10c;
  float local_108;
  undefined4 local_44;
  undefined4 local_40;
  undefined local_3c;
  undefined4 local_34;
  uint local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined local_24;
  undefined4 local_1c;
  uint local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = -1;
  puStack_c = &LAB_00af4785;
  local_10 = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  if ((*(int *)(param_1 + 0x28) == 0xcc) && (*(int *)(param_1 + 0x30) != 99)) {
    bVar2 = true;
  }
  else {
    bVar2 = false;
  }
  local_14 = uVar4;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x410) = 0;
    if (bVar2) {
      *(undefined *)(param_1 + 0x3b0) = 1;
    }
    goto LAB_00532cd1;
  }
  *(undefined *)(param_1 + 0x3b0) = 0;
  if (*(int *)(param_1 + 0x9c) == 0) {
    FUN_0040a940(&DAT_00b1bc54,0);
  }
  local_30 = 0xf;
  local_34 = 8;
  local_44._0_1_ = s_WalkVert_00b1dd18[0];
  local_44._1_1_ = s_WalkVert_00b1dd18[1];
  local_44._2_1_ = s_WalkVert_00b1dd18[2];
  local_44._3_1_ = s_WalkVert_00b1dd18[3];
  local_40._0_1_ = s_WalkVert_00b1dd18[4];
  local_40._1_1_ = s_WalkVert_00b1dd18[5];
  local_40._2_1_ = s_WalkVert_00b1dd18[6];
  local_40._3_1_ = s_WalkVert_00b1dd18[7];
  local_3c = 0;
  local_18 = 0xf;
  local_1c = 8;
  local_2c._0_1_ = s_WalkHori_00b1dd30[0];
  local_2c._1_1_ = s_WalkHori_00b1dd30[1];
  local_2c._2_1_ = s_WalkHori_00b1dd30[2];
  local_2c._3_1_ = s_WalkHori_00b1dd30[3];
  local_28._0_1_ = s_WalkHori_00b1dd30[4];
  local_28._1_1_ = s_WalkHori_00b1dd30[5];
  local_28._2_1_ = s_WalkHori_00b1dd30[6];
  local_28._3_1_ = s_WalkHori_00b1dd30[7];
  local_24 = 0;
  local_8._0_1_ = 1;
  local_8._1_3_ = 0;
  FUN_006c1330(&local_2c,&local_44,0x3dcccccd);
  local_8 = (uint)local_8._1_3_ << 8;
  if (0xf < local_18) {
    uVar12 = local_18 + 1;
    uVar13 = local_2c;
    if (0xfff < uVar12) {
      uVar13 = *(uint *)(local_2c - 4);
      uVar12 = local_18 + 0x24;
      if (0x1f < (local_2c - uVar13) - 4) goto LAB_00532340;
    }
    FUN_00aef15c(uVar13,uVar12,uVar4);
  }
  local_8 = -1;
  local_1c = 0;
  local_18 = 0xf;
  local_2c = local_2c & 0xffffff00;
  if (0xf < local_30) {
    uVar13 = local_30 + 1;
    iVar10 = local_44;
    if (0xfff < uVar13) {
      iVar10 = *(int *)(local_44 + -4);
      uVar13 = local_30 + 0x24;
      if (0x1f < (local_44 - iVar10) - 4U) {
LAB_00532340:
                    /* WARNING: Subroutine does not return */
        _invalid_parameter_noinfo_noreturn();
      }
    }
    FUN_00aef15c(iVar10,uVar13,uVar4);
  }
  if ((bVar2) && (0.0 < *(float *)(param_1 + 0x14))) {
    local_108 = 0.0;
    if (((*(int *)(param_1 + 0xb64) == 4) ||
        ((*(int *)(param_1 + 0xb64) == 8 &&
         ((cVar3 = FUN_0040ae70("Invincible"), cVar3 != '\0' ||
          (cVar3 = FUN_0040ae70("Destructible"), cVar3 == '\0')))))) &&
       (pfVar9 = *(float **)(param_1 + 8), pfVar9 != *(float **)(param_1 + 0xc))) {
      do {
        local_110 = pfVar9[3];
        if (((uint)pfVar9[2] & 0x8000) == 0) {
          if (((uint)pfVar9[2] & 0x408000) == 0) {
            local_108 = local_108 + *pfVar9;
          }
          *pfVar9 = 0.0;
        }
        pfVar9 = pfVar9 + 0xe;
      } while (pfVar9 != *(float **)(param_1 + 0xc));
    }
    fVar16 = DAT_00baa87c;
    if ((*(int *)(param_1 + 0xb64) == 4) && (0.0 < local_108)) {
      fVar15 = *(float *)(param_1 + 3000) - *(float *)(param_1 + 0x14) * DAT_00baa0d0;
      iVar10 = *(int *)(param_1 + 0x410) + (int)(*(float *)(param_1 + 0x14) + DAT_00baa2d0) / 2;
      if (fVar15 <= 0.0) {
        fVar15 = 0.0;
      }
      iVar5 = 10;
      if (iVar10 < 10) {
        iVar5 = iVar10;
      }
      *(int *)(param_1 + 0x410) = iVar5;
      *(float *)(param_1 + 3000) = fVar15;
      if (fVar16 < local_108) {
        FUN_0040a940("Bombed",0);
        *(undefined4 *)(param_1 + 3000) = 0;
      }
    }
  }
  if (*(int *)(param_1 + 0xf1c) != -1) {
    if ((*(uint *)(param_1 + 0x168) & 0x10) == 0) {
LAB_00532567:
      fVar16 = *(float *)(param_1 + 0xbbc) -
               (*(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x39c)) / DAT_00baa9b4;
      if (fVar16 <= 0.0) {
        fVar16 = 0.0;
      }
      *(float *)(param_1 + 0xbbc) = fVar16;
      if (!bVar2) {
        *(undefined4 *)(param_1 + 0xbbc) = 0;
      }
    }
    else {
      if ((*(int *)(param_1 + 0x9c) != 0) && (*(char *)(param_1 + 0xac) != '\0')) {
        ppbVar6 = *(byte ***)(param_1 + 0x9c);
        if (&DAT_0000000f < ppbVar6[5]) {
          ppbVar6 = (byte **)*ppbVar6;
        }
        pcVar11 = "Bombed";
        do {
          bVar1 = *(byte *)ppbVar6;
          bVar14 = bVar1 < (byte)*pcVar11;
          if (bVar1 != *pcVar11) {
LAB_00532500:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_00532505;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar6 + 1);
          bVar14 = bVar1 < ((byte *)pcVar11)[1];
          if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00532500;
          ppbVar6 = (byte **)((int)ppbVar6 + 2);
          pcVar11 = (char *)((byte *)pcVar11 + 2);
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_00532505:
        if (uVar4 == 0) goto LAB_00532567;
      }
      if (!bVar2) goto LAB_00532567;
      local_108 = DAT_00baa454;
      cVar3 = FUN_00417430(0x1000a00,0);
      fVar16 = local_108;
      if (cVar3 != '\0') {
        fVar16 = DAT_00baa630;
      }
      fVar16 = (fVar16 * *(float *)(param_1 + 0x39c)) / DAT_00baa9b4 + *(float *)(param_1 + 0xbbc);
      if (DAT_00baa454 <= fVar16) {
        fVar16 = DAT_00baa454;
      }
      *(float *)(param_1 + 0xbbc) = fVar16;
    }
    FUN_006d8e40(1);
  }
  iVar10 = *(int *)(param_1 + 0xb64);
  if (iVar10 == 4) {
    local_110 = *(float *)(param_1 + 0x16c);
    if (bVar2) {
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 0x10;
      *(float *)(param_1 + 0x16c) = local_110;
    }
    if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
      iVar10 = FUN_006be840();
      local_10c = *(float *)(iVar10 + 0x33c);
      local_108 = *(float *)(iVar10 + 0x340);
      FUN_007e33c0(&local_10c,0x3f000000,300,1);
    }
    else {
      iVar10 = FUN_006be840();
      local_10c = *(float *)(iVar10 + 0x33c);
      local_108 = *(float *)(iVar10 + 0x340);
      FUN_007e4940(&local_10c,0);
      if (0 < *(int *)(param_1 + 0xb50)) {
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
      }
    }
    if (*(int *)(param_1 + 0x410) < 1) {
      FUN_0040a940(&DAT_00b1bc54,0);
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      if (*(int *)(param_1 + 0x410) < 1) {
        if ((((*(uint *)(param_1 + 0x168) & 0x200) != 0) ||
            (cVar3 = FUN_00417430(0x1000800,0), cVar3 != '\0')) &&
           (uVar4 = FUN_006eef60(), uVar4 % 0x32 == 0)) {
          *(undefined4 *)(param_1 + 0xb64) = 9;
          *(undefined4 *)(param_1 + 0x410) = 0;
        }
        if ((((*(int *)(param_1 + 0x410) < 1) && (uVar4 = FUN_006eef60(), uVar4 % 3 == 0)) &&
            ((*(int *)(param_1 + 0xba0) < 1 ||
             (iVar10 = *(int *)(param_1 + 0xba0) +
                       ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)),
             *(int *)(param_1 + 0xba0) = iVar10, iVar10 < 1)))) &&
           (cVar3 = FUN_006cae60(0,7), cVar3 != '\0')) goto LAB_005327b6;
      }
    }
    else if ((DAT_00baa454 <= *(float *)(param_1 + 0xbbc)) ||
            (cVar3 = FUN_006cae60(0,7), cVar3 != '\0')) {
      *(float *)(param_1 + 0xf20) = DAT_00c7b640;
      *(float *)(param_1 + 0xf24) = DAT_00c7b644;
LAB_005327b6:
      *(undefined4 *)(param_1 + 0xba0) = 0x46;
      *(undefined4 *)(param_1 + 0x410) = 0;
      *(undefined4 *)(param_1 + 0xb64) = 8;
    }
    if (((*(int *)(param_1 + 0xb64) != 8) && (iVar10 = FUN_006ac760(), iVar10 != 0)) &&
       (0 < *(int *)(param_1 + 0x410))) {
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + -1;
    }
    fVar16 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  }
  else {
    if (iVar10 == 9) {
      cVar3 = FUN_0040add0("Destructible");
      if (cVar3 != '\0') {
        FUN_006d6ba0(0xa6,0x3f800000,2,0,0x3f800000);
      }
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
      if (bVar2) {
        *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xffffffef;
        *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
      }
      FUN_0040a940("Shoot",0);
      iVar10 = FUN_006be840();
      *(bool *)(param_1 + 0x148) = *(float *)(iVar10 + 0x33c) - *(float *)(param_1 + 0x33c) < 0.0;
      if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 4;
        *(undefined4 *)(param_1 + 0x410) = 0;
        FUN_0040a940(&DAT_00b1bc54,0);
      }
    }
    else {
      if (iVar10 != 8) goto LAB_00532cd1;
      cVar3 = FUN_0040add0("Destructible");
      if (cVar3 != '\0') {
        FUN_006d6ba0(0xa6,0x3f800000,2,0,0x3f800000);
      }
      if ((*(int *)(param_1 + 0xf1c) != -1) && (cVar3 = FUN_0040ae70("Shoot"), cVar3 == '\0')) {
        cVar3 = FUN_00417430(0x1000a00,0);
        if (cVar3 == '\0') {
          FUN_006d8b20(0);
          pfVar9 = (float *)FUN_006d8d30(&local_114);
          fVar16 = pfVar9[1] - *(float *)(param_1 + 0x340);
          *(float *)(param_1 + 0xf20) = *pfVar9 - *(float *)(param_1 + 0x33c);
        }
        else {
          *(float *)(param_1 + 0xf20) = DAT_00c7b640;
          fVar16 = DAT_00c7b644;
        }
        *(float *)(param_1 + 0xf24) = fVar16;
      }
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
      if (bVar2) {
        *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xffffffef;
        *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
      }
      FUN_0040a940("Shoot",0);
      if (*(int *)(param_1 + 0xf1c) == -1) {
        iVar10 = FUN_006be840();
        fVar16 = *(float *)(iVar10 + 0x33c) - *(float *)(param_1 + 0x33c);
      }
      else {
        fVar16 = *(float *)(param_1 + 0xf20);
      }
      *(bool *)(param_1 + 0x148) = fVar16 < 0.0;
      if (0 < *(int *)(param_1 + 0xba0)) {
        *(int *)(param_1 + 0xba0) =
             ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
             *(int *)(param_1 + 0xba0);
      }
      cVar3 = FUN_0040add0("Shoot");
      if (cVar3 != '\0') {
        iVar10 = FUN_006be840();
        local_10c = *(float *)(iVar10 + 0x33c) - *(float *)(param_1 + 0x33c);
        local_108 = *(float *)(iVar10 + 0x340) - *(float *)(param_1 + 0x340);
        if (*(int *)(param_1 + 0xf1c) != -1) {
          local_10c = *(float *)(param_1 + 0xf20);
          local_108 = *(float *)(param_1 + 0xf24);
        }
        if (((NAN(local_10c) || NAN(DAT_00c7b640)) == (local_10c == DAT_00c7b640)) ||
           ((NAN(local_108) || NAN(DAT_00c7b644)) == (local_108 == DAT_00c7b644))) {
          FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
          fVar16 = local_108 * local_108 + local_10c * local_10c;
          FUN_00435a50();
          if (DAT_00ba9fe4 < fVar16) {
            local_10c = local_10c * (DAT_00baa7b8 / fVar16);
            local_108 = local_108 * (DAT_00baa7b8 / fVar16);
          }
          uVar7 = AI_0043ef30();
          uVar8 = 5;
          if (*(int *)(param_1 + 0x28) == 0xcc) {
            uVar8 = 2;
          }
          FUN_006cb2e0((float *)(param_1 + 0x33c),&local_10c,uVar8,uVar7);
        }
      }
      cVar3 = FUN_0040add0(&DAT_00b1d534);
      if ((cVar3 != '\0') &&
         ((*(int *)(param_1 + 0xf1c) == -1 || (cVar3 = FUN_00a10630(&DAT_00c7b640), cVar3 != '\0')))
         ) {
        pfVar9 = (float *)FUN_0040ace0("PoofPos");
        fVar16 = DAT_00c7b640;
        fVar15 = DAT_00c7b644;
        if (pfVar9 != (float *)0x0) {
          fVar16 = *pfVar9;
          fVar15 = pfVar9[1];
        }
        uVar7 = FUN_00407170();
        local_10c = 0.0;
        local_108 = -6.0;
        local_114 = fVar16 / DAT_00baa324 + *(float *)(param_1 + 0x33c);
        local_110 = fVar15 / DAT_00baa324 + *(float *)(param_1 + 0x340);
        iVar10 = FUN_006d7cf0(&local_10c,uVar7,&DAT_00c7b640);
        *(undefined4 *)(iVar10 + 0xe4) = 0x3f400000;
        *(undefined4 *)(iVar10 + 0xe8) = 0x3f400000;
        *(undefined4 *)(iVar10 + 0x358) = 0x42c80000;
      }
      if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 4;
        *(undefined4 *)(param_1 + 0x410) = 0;
        FUN_0040a940(&DAT_00b1bc54,0);
        *(undefined4 *)(param_1 + 0xbbc) = 0;
      }
    }
    fVar16 = *(float *)(param_1 + 0x36c) * DAT_00baa2d0;
  }
  *(float *)(param_1 + 0x36c) = fVar16;
LAB_00532cd1:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

