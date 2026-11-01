/* Local J460 decompiler output.
 * VA: 0x004db6a0
 * Entry: 004db6a0
 * Dispatcher: 0x006c2990
 * Types: 851
 * Identities: 851.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004dc490; instructions=844
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=851; identities=851.0.0; dispatcher=0x006c2990;
   end=0x004dc490; instructions=844 */

void __fastcall AI_004db6a0(float param_1)

{
  byte bVar1;
  float fVar2;
  int iVar3;
  undefined4 uVar4;
  char cVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  byte **ppbVar8;
  char *pcVar9;
  uint uVar10;
  int iVar11;
  byte **ppbVar12;
  byte *pbVar13;
  uint uVar14;
  float *pfVar15;
  int iVar16;
  bool bVar17;
  float *pfVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  double dVar24;
  undefined4 uVar25;
  undefined8 uVar26;
  float local_84;
  float local_80;
  float local_7c;
  float local_78;
  float *local_74;
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  float local_5c;
  float *local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
  undefined4 local_38;
  char local_34 [4];
  int local_30;
  undefined4 local_2c;
  float local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af39fd;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  pfVar15 = (float *)((int)*(float *)((int)param_1 + 0x3a4) - (int)*(float *)((int)param_1 + 0x3a0))
  ;
  iVar16 = *(int *)((int)param_1 + 0xb64);
  local_64 = param_1;
  local_58 = pfVar15;
  if (iVar16 == 0) {
    *(undefined4 *)((int)param_1 + 0xb64) = 4;
    cVar5 = FUN_0040a5d0("WalkVert",1);
    if (((cVar5 != '\0') && (*(int *)((int)param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(), *(int *)((int)param_1 + 0x7c) != 0)) {
      *(undefined *)((int)param_1 + 0x8c) = 0;
    }
    cVar5 = FUN_0040aaf0(&DAT_00b5fed4,1);
    if ((cVar5 != '\0') && (*(int *)((int)param_1 + 0x9c) != 0)) {
      FUN_00408e00();
    }
    uVar4 = uRam00c34e8c;
    uVar25 = uRam00c34e88;
    uVar7 = uRam00c34e84;
    if ((undefined4 *)((int)param_1 + 0x1e4) != (undefined4 *)&DAT_00c34e80) {
      *(undefined4 *)((int)param_1 + 0x1e4) = _DAT_00c34e80;
      *(undefined4 *)((int)param_1 + 0x1e8) = uVar7;
      *(undefined4 *)((int)param_1 + 0x1ec) = uVar25;
      *(undefined4 *)((int)param_1 + 0x1f0) = uVar4;
      uVar4 = uRam00c34e9c;
      uVar25 = uRam00c34e98;
      uVar7 = uRam00c34e94;
      *(undefined4 *)((int)param_1 + 500) = _DAT_00c34e90;
      *(undefined4 *)((int)param_1 + 0x1f8) = uVar7;
      *(undefined4 *)((int)param_1 + 0x1fc) = uVar25;
      *(undefined4 *)((int)param_1 + 0x200) = uVar4;
      *(undefined8 *)((int)param_1 + 0x204) = DAT_00c34ea0;
      *(undefined4 *)((int)param_1 + 0x20c) = DAT_00c34ea8;
    }
    *(undefined4 *)((int)param_1 + 0xba0) = 0;
    *(undefined4 *)((int)param_1 + 0x410) = 0;
    *(undefined4 *)((int)param_1 + 0xbb0) = 0;
    *(undefined4 *)((int)param_1 + 0xbc0) = 0;
  }
  else {
    if (iVar16 == 4) {
      if ((*(uint *)((int)param_1 + 0x168) & 0x1000800) == 0) {
        uVar26 = 0x100000000;
        uVar25 = 0x3f19999a;
        puStack_20 = &stack0xfffffffc;
        uVar7 = FUN_006bec40(&local_84,0);
        FUN_007e33c0(uVar7,uVar25,uVar26);
      }
      else {
        puStack_20 = &stack0xfffffffc;
        iVar16 = FUN_006be840(local_24);
        local_7c = *(float *)(iVar16 + 0x33c);
        local_78 = *(float *)(iVar16 + 0x340);
        FUN_007e4940(&local_7c,0);
        *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
      }
      if ((*(char *)((int)param_1 + 0xb40) != '\0') && (uVar10 = FUN_006eef60(), uVar10 % 3 == 0)) {
        local_5c = 2.340168e-43;
        FUN_00956780();
        FUN_0092dc30(local_5c,0x3f4ccccd,0x78,0,0x3f800000,0);
        pfVar15 = local_58;
      }
      uVar10 = FUN_006eef60();
      if ((((int)((ulonglong)uVar10 % 0x46) == 0) && (*(int *)((int)param_1 + 0x9c) != 0)) &&
         (*(char *)((int)param_1 + 0xac) != (char)((ulonglong)uVar10 % 0x46))) {
        ppbVar8 = *(byte ***)((int)param_1 + 0x9c);
        if (&DAT_0000000f < ppbVar8[5]) {
          ppbVar8 = (byte **)*ppbVar8;
        }
        pbVar13 = &DAT_00b5fed4;
        do {
          bVar1 = *(byte *)ppbVar8;
          bVar17 = bVar1 < *pbVar13;
          if (bVar1 != *pbVar13) {
LAB_004dbb56:
            uVar10 = -(uint)bVar17 | 1;
            goto LAB_004dbb5b;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar8 + 1);
          bVar17 = bVar1 < pbVar13[1];
          if (bVar1 != pbVar13[1]) goto LAB_004dbb56;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pbVar13 = pbVar13 + 2;
        } while (bVar1 != 0);
        uVar10 = 0;
LAB_004dbb5b:
        if (uVar10 == 0) {
          uVar10 = FUN_006eef60();
          pcVar9 = "HeadTwitch";
          if ((uVar10 & 1) == 0) {
            pcVar9 = "HeadTwitch2";
          }
          FUN_0040a940(pcVar9,0);
        }
      }
      iVar16 = *(int *)((int)param_1 + 0xba0);
      if (0 < iVar16) {
        iVar16 = iVar16 - (int)pfVar15;
        *(int *)((int)param_1 + 0xba0) = iVar16;
      }
      if (0 < *(int *)((int)param_1 + 0xbc4)) {
        *(int *)((int)param_1 + 0xbc4) = *(int *)((int)param_1 + 0xbc4) - (int)pfVar15;
      }
      if (((iVar16 < 1) && (uVar10 = FUN_006eef60(), uVar10 % 0x1e == 0)) &&
         (cVar5 = FUN_00417430(0x1000a00,0), cVar5 == '\0')) {
        FUN_004db3c0();
        fVar20 = *(float *)((int)param_1 + 0x340) - local_78;
        fVar23 = *(float *)((int)param_1 + 0x33c) - local_7c;
        fVar20 = fVar20 * fVar20 + fVar23 * fVar23;
        FUN_00435a50();
        if ((fVar20 < DAT_00baaaec) || (uVar10 = FUN_006eef60(), uVar10 % 10 == 0)) {
          FUN_00408830();
          FUN_0040a380(&DAT_00b1d560,0);
          *(undefined4 *)((int)param_1 + 0xb64) = 6;
          *(float *)((int)param_1 + 0x334) = local_7c;
          *(float *)((int)param_1 + 0x338) = local_78;
          *(undefined4 *)((int)param_1 + 0xbb0) = 0;
          *(undefined4 *)((int)param_1 + 0x184) = 3;
          uVar10 = FUN_006eef60();
          *(uint *)((int)param_1 + 0xbc0) = uVar10 % 3 + 1;
          goto LAB_004dbe52;
        }
      }
    }
    else {
      puStack_20 = &stack0xfffffffc;
      if (iVar16 != 6) goto LAB_004dbe52;
      if (((NAN(*(float *)((int)param_1 + 0x334)) || NAN((float)DAT_00c7b640)) ==
           (*(float *)((int)param_1 + 0x334) == (float)DAT_00c7b640)) ||
         (puStack_20 = &stack0xfffffffc,
         (NAN(*(float *)((int)param_1 + 0x338)) || NAN(DAT_00c7b644)) ==
         (*(float *)((int)param_1 + 0x338) == DAT_00c7b644))) {
        puStack_20 = &stack0xfffffffc;
        if ((*(int *)((int)param_1 + 0x7c) == 0) ||
           (puStack_20 = &stack0xfffffffc, cVar5 = FUN_0040ae70(), cVar5 == '\0')) {
          *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa304;
        }
        else {
          fVar22 = *(float *)((int)param_1 + 0x39c) * DAT_00baa0a0 +
                   *(float *)((int)param_1 + 0xbb0);
          *(float *)((int)param_1 + 0xbb0) = fVar22;
          fVar20 = *(float *)((int)param_1 + 0x340);
          fVar23 = *(float *)((int)param_1 + 0x33c);
          *(float *)((int)param_1 + 0x360) =
               (((*(float *)((int)param_1 + 0x334) - fVar23) * fVar22 + fVar23) - fVar23) /
               *(float *)((int)param_1 + 0x36c);
          *(float *)((int)param_1 + 0x364) =
               (((*(float *)((int)param_1 + 0x338) - fVar20) * fVar22 + fVar20) - fVar20) /
               *(float *)((int)param_1 + 0x36c);
          if (DAT_00baa454 <= *(float *)((int)param_1 + 0xbb0)) {
            *(float **)((int)param_1 + 0x334) = DAT_00c7b640;
            *(float *)((int)param_1 + 0x338) = DAT_00c7b644;
          }
        }
      }
      if (*(int *)((int)param_1 + 0x7c) != 0) {
        cVar5 = FUN_0040add0();
        if (cVar5 != '\0') {
          local_5c = 9.668959e-44;
          FUN_00956780();
          FUN_0092dc30(local_5c,0x3f800000,2,0,0x3f800000,0);
          *(undefined4 *)((int)param_1 + 0x184) = 5;
          *(int *)((int)param_1 + 0xbc0) = *(int *)((int)param_1 + 0xbc0) + -1;
          if (0 < *(int *)((int)param_1 + 0xbc0)) {
            cVar5 = FUN_0040a5d0(&DAT_00b1d560,1);
            if (cVar5 != '\0') {
              FUN_0040a1b0();
              *(undefined *)((int)param_1 + 0x8c) = 1;
            }
            if (*(int *)((int)param_1 + 0x7c) != 0) {
              FUN_00408e00();
            }
            puVar6 = (undefined4 *)FUN_004db3c0();
            *(undefined4 *)((int)param_1 + 0x334) = *puVar6;
            *(undefined4 *)((int)param_1 + 0x338) = puVar6[1];
            *(undefined4 *)((int)param_1 + 0xbb0) = 0;
            *(undefined4 *)((int)param_1 + 0x184) = 3;
          }
        }
        if ((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0'))
        goto LAB_004dbe52;
      }
      *(undefined4 *)((int)param_1 + 0xb64) = 4;
      *(undefined4 *)((int)param_1 + 0xba0) = 5;
    }
    local_40 = 0xf;
    local_44 = 8;
    local_54._0_1_ = s_WalkVert_00b1dd18[0];
    local_54._1_1_ = s_WalkVert_00b1dd18[1];
    local_54._2_1_ = s_WalkVert_00b1dd18[2];
    local_54._3_1_ = s_WalkVert_00b1dd18[3];
    local_50._0_1_ = s_WalkVert_00b1dd18[4];
    local_50._1_1_ = s_WalkVert_00b1dd18[5];
    local_50._2_1_ = s_WalkVert_00b1dd18[6];
    local_50._3_1_ = s_WalkVert_00b1dd18[7];
    local_4c = 0;
    local_28 = 2.101948e-44;
    local_2c = 8;
    local_3c._0_1_ = s_WalkHori_00b1dd30[0];
    local_3c._1_1_ = s_WalkHori_00b1dd30[1];
    local_3c._2_1_ = s_WalkHori_00b1dd30[2];
    local_3c._3_1_ = s_WalkHori_00b1dd30[3];
    local_38._0_1_ = s_WalkHori_00b1dd30[4];
    local_38._1_1_ = s_WalkHori_00b1dd30[5];
    local_38._2_1_ = s_WalkHori_00b1dd30[6];
    local_38._3_1_ = s_WalkHori_00b1dd30[7];
    local_34[0] = '\0';
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < (uint)local_28) {
      uVar14 = (int)local_28 + 1;
      uVar10 = local_3c;
      if (0xfff < uVar14) {
        uVar10 = *(uint *)(local_3c - 4);
        uVar14 = (int)local_28 + 0x24;
        if (0x1f < (local_3c - uVar10) - 4) goto LAB_004dba1f;
      }
      FUN_00aef15c(uVar10,uVar14);
    }
    local_14 = -1;
    local_2c = 0;
    local_28 = 2.101948e-44;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar14 = local_40 + 1;
      uVar10 = local_54;
      if (0xfff < uVar14) {
        uVar10 = *(uint *)(local_54 - 4);
        uVar14 = local_40 + 0x24;
        if (0x1f < (local_54 - uVar10) - 4) {
LAB_004dba1f:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(uVar10,uVar14);
    }
    local_44 = 0;
    local_40 = 0xf;
    local_54 = local_54 & 0xffffff00;
    if (((*(int *)((int)param_1 + 0x9c) != 0) && (*(char *)((int)param_1 + 0xac) != '\0')) ||
       ((FUN_0040a940(&DAT_00b5fed4,0), *(int *)((int)param_1 + 0x9c) != 0 &&
        (*(char *)((int)param_1 + 0xac) != '\0')))) {
      puVar6 = *(undefined4 **)((int)param_1 + 0x9c);
      if (puVar6 == (undefined4 *)0x0) {
        puVar6 = (undefined4 *)&DAT_00b1a4ec;
      }
      else if (&DAT_0000000f < (undefined *)puVar6[5]) {
        puVar6 = (undefined4 *)*puVar6;
      }
      pbVar13 = &DAT_00b5fed4;
      do {
        bVar1 = *(byte *)puVar6;
        bVar17 = bVar1 < *pbVar13;
        if (bVar1 != *pbVar13) {
LAB_004dbd37:
          uVar10 = -(uint)bVar17 | 1;
          goto LAB_004dbd3c;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)puVar6 + 1);
        bVar17 = bVar1 < pbVar13[1];
        if (bVar1 != pbVar13[1]) goto LAB_004dbd37;
        puVar6 = (undefined4 *)((int)puVar6 + 2);
        pbVar13 = pbVar13 + 2;
      } while (bVar1 != 0);
      uVar10 = 0;
LAB_004dbd3c:
      if (uVar10 == 0) {
        if (*(int *)((int)param_1 + 0x7c) != 0) {
          local_58 = *(float **)((int)param_1 + 0x88);
          dVar24 = floor((double)(float)local_58);
          local_58 = (float *)(float)dVar24;
        }
        FUN_00408e00();
      }
    }
  }
LAB_004dbe52:
  if ((*(int *)((int)param_1 + 0xb64) != 4) || (0 < *(int *)((int)param_1 + 0xbc4)))
  goto LAB_004dc414;
  local_58 = (float *)((int)param_1 + 0x33c);
  FUN_0041a790(local_34,local_58,0xc);
  pfVar15 = local_58;
  local_14 = 2;
  if (local_28 != 0.0) {
    local_6c = 0.0;
    local_60 = DAT_00baacb4;
    local_5c = 0.0;
    fVar20 = local_28;
    fVar23 = DAT_00baacb4;
    fVar22 = DAT_00baa75c;
    if (local_28 != 0.0) {
      do {
        fVar2 = *(float *)(local_30 + (int)local_5c * 4);
        iVar16 = *(int *)((int)fVar2 + 0x28);
        if (((iVar16 == 2) || (iVar16 == 8)) || (iVar16 == 4)) {
          local_68 = *(float *)((int)fVar2 + 0x33c);
          local_70 = *(float *)((int)fVar2 + 0x340);
          if (iVar16 == 8) {
            local_58 = (float *)(*(float *)((int)fVar2 + 0x438) * DAT_00baa088);
            pfVar18 = local_58;
            FUN_0041d520();
            local_74 = pfVar18;
            pfVar18 = local_58;
            FUN_0041d540();
            iVar16 = *(int *)((int)fVar2 + 0x28);
            fVar19 = (float)pfVar18 * *(float *)((int)fVar2 + 0x448);
            fVar21 = *(float *)((int)fVar2 + 0x448) * (float)local_74;
            fVar20 = local_28;
            fVar23 = local_60;
            fVar22 = DAT_00baa75c;
          }
          else {
            fVar19 = *(float *)((int)fVar2 + 0x360);
            fVar21 = *(float *)((int)fVar2 + 0x364);
          }
          fVar21 = pfVar15[1] - (local_70 + fVar21 * fVar22);
          fVar19 = *pfVar15 - (local_68 + fVar19 * fVar22);
          fVar19 = fVar21 * fVar21 + fVar19 * fVar19;
          if (iVar16 == 4) {
            fVar23 = fVar23 * DAT_00baa1d4;
            local_60 = fVar23;
          }
          fVar21 = fVar19;
          if (fVar23 <= fVar19) goto LAB_004dbfda;
        }
        else {
LAB_004dbfda:
          fVar19 = fVar23;
          fVar2 = local_6c;
          fVar21 = local_60;
        }
        local_60 = fVar21;
        local_6c = fVar2;
        fVar2 = local_64;
        local_5c = (float)((int)local_5c + 1);
        fVar23 = fVar19;
      } while ((uint)local_5c < (uint)fVar20);
      if ((local_6c != 0.0) && (fVar19 < DAT_00baabe0)) {
        local_70 = *(float *)((int)local_6c + 0x340) - *(float *)((int)local_64 + 0x340);
        local_68 = *(float *)((int)local_6c + 0x33c) - *(float *)((int)local_64 + 0x33c);
        fVar20 = DAT_00baa54c;
        FUN_0041d540();
        local_64 = fVar20;
        fVar20 = DAT_00baa54c;
        FUN_0041d520();
        local_6c = local_68 * local_64 - fVar20 * local_70;
        local_68 = local_68 * fVar20 + local_64 * local_70;
        fVar20 = local_68 * local_68 + local_6c * local_6c;
        FUN_00435a50();
        if (0.0 < fVar20) {
          local_6c = (DAT_00baa454 / fVar20) * local_6c;
          local_68 = local_68 * (DAT_00baa454 / fVar20);
        }
        iVar16 = 0;
        local_74 = DAT_00c7b640;
        local_5c = DAT_00c7b644;
        do {
          uVar10 = FUN_006eef60();
          if ((uVar10 & 1) == 0) {
            local_58 = (float *)local_6c;
            local_60 = local_68;
          }
          else {
            local_58 = (float *)((uint)local_6c ^ DAT_00bacb70);
            local_60 = (float)((uint)local_68 ^ DAT_00bacb70);
          }
          iVar11 = FUN_006eef60();
          local_64 = ((float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c) * DAT_00baa088;
          fVar20 = local_64;
          FUN_0041d540();
          local_70 = fVar20;
          FUN_0041d520();
          fVar20 = (float)local_58 * local_64;
          local_64 = (float)local_58 * local_70 - local_60 * local_64;
          local_60 = local_60 * local_70 + fVar20;
          iVar11 = FUN_006eef60();
          local_78 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa9d0 + DAT_00baa950;
          local_60 = local_78 * local_60;
          local_78 = local_78 * local_64;
          local_70 = local_60 + *(float *)((int)fVar2 + 0x340);
          local_64 = local_78 + *(float *)((int)fVar2 + 0x33c);
          local_58 = (float *)(int)((local_64 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
          iVar11 = (int)((local_70 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
          if ((((int)local_58 < 0) ||
              (iVar3 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc), iVar3 <= (int)local_58)) ||
             ((iVar11 < 0 || (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x10) <= iVar11)))) {
            pfVar15 = (float *)0xffffffff;
          }
          else {
            pfVar15 = (float *)(iVar11 * iVar3 + (int)local_58);
          }
          uVar26 = CONCAT44(pfVar15,0x4dc27a);
          iVar11 = FUN_007f0800();
          if (iVar11 == 0) {
            local_84 = local_64;
            local_80 = local_70;
            cVar5 = FUN_006b9740(&local_84,uVar26);
            if (cVar5 == '\0') {
              local_74 = (float *)(local_78 + *(float *)((int)fVar2 + 0x33c));
              local_5c = local_60 + *(float *)((int)fVar2 + 0x340);
              break;
            }
          }
          iVar16 = iVar16 + 1;
        } while (iVar16 < 10);
        if (((NAN((float)local_74) || NAN((float)DAT_00c7b640)) ==
             ((float)local_74 == (float)DAT_00c7b640)) ||
           ((NAN(local_5c) || NAN(DAT_00c7b644)) == (local_5c == DAT_00c7b644))) {
          FUN_00408830();
          ppbVar8 = *(byte ***)((int)fVar2 + 0x7c);
          if (ppbVar8 == (byte **)0x0) {
LAB_004dc368:
            cVar5 = FUN_0040a5d0(&DAT_00b1d560,1);
            if (cVar5 != '\0') {
              FUN_0040a1b0();
              *(undefined *)((int)fVar2 + 0x8c) = 1;
            }
          }
          else {
            ppbVar12 = ppbVar8;
            if (&DAT_0000000f < ppbVar8[5]) {
              ppbVar12 = (byte **)*ppbVar8;
            }
            pbVar13 = &DAT_00b1d560;
            do {
              bVar1 = *(byte *)ppbVar12;
              bVar17 = bVar1 < *pbVar13;
              if (bVar1 != *pbVar13) {
LAB_004dc34a:
                uVar10 = -(uint)bVar17 | 1;
                goto LAB_004dc34f;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar12 + 1);
              bVar17 = bVar1 < pbVar13[1];
              if (bVar1 != pbVar13[1]) goto LAB_004dc34a;
              ppbVar12 = (byte **)((int)ppbVar12 + 2);
              pbVar13 = pbVar13 + 2;
            } while (bVar1 != 0);
            uVar10 = 0;
LAB_004dc34f:
            if ((uVar10 != 0) ||
               ((*(byte *)(ppbVar8 + 0xd) != 0 && (*(char *)((int)fVar2 + 0x8c) == '\0'))))
            goto LAB_004dc368;
          }
          if (*(int *)((int)fVar2 + 0x7c) != 0) {
            FUN_00408e00();
          }
          *(float **)((int)fVar2 + 0x334) = local_74;
          *(undefined4 *)((int)fVar2 + 0xb64) = 6;
          *(float *)((int)fVar2 + 0x338) = local_5c;
          *(undefined4 *)((int)fVar2 + 0xbb0) = 0;
          *(undefined4 *)((int)fVar2 + 0x184) = 3;
          *(undefined4 *)((int)fVar2 + 0xbc0) = 1;
          *(undefined4 *)((int)fVar2 + 0xbc4) = 2;
        }
      }
    }
  }
  local_14 = -1;
  if (local_34[0] == '\0') {
    local_14 = 3;
    FUN_00a648b0(0,0);
    local_14 = -1;
  }
LAB_004dc414:
  uVar10 = FUN_006eef60();
  if (uVar10 % 6 == 0) {
    FUN_006eef60();
    FUN_006b64d0();
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

