/* Local J460 decompiler output.
 * VA: 0x004fbd10
 * Entry: 004fbd10
 * Dispatcher: 0x006c2990
 * Types: 820
 * Identities: 820.0.0,820.1.0
 * Evidence: dispatcher=0x006c2990; end=0x004fcc20; instructions=838
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=820; identities=820.0.0,820.1.0; dispatcher=0x006c2990;
   end=0x004fcc20; instructions=838 */

void __fastcall AI_004fbd10(int param_1)

{
  undefined4 *puVar1;
  byte bVar2;
  byte **ppbVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined auVar9 [16];
  undefined *puVar10;
  char cVar11;
  uint uVar12;
  int iVar13;
  int iVar14;
  undefined4 uVar15;
  int *piVar16;
  byte **ppbVar17;
  undefined4 uVar18;
  int iVar19;
  char *pcVar20;
  uint uVar21;
  bool bVar22;
  float fVar23;
  float fVar24;
  undefined4 uVar25;
  undefined4 uVar26;
  undefined4 uVar27;
  undefined4 local_168 [8];
  undefined4 local_148;
  undefined4 uStack_144;
  undefined4 local_140;
  float local_13c;
  float local_138;
  float local_134;
  float local_130;
  float local_12c;
  float local_128;
  float local_124;
  float local_120;
  float local_11c;
  float local_118;
  float local_114;
  undefined local_110 [148];
  undefined4 local_7c;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined local_58 [8];
  undefined4 uStack_50;
  undefined uStack_4c;
  undefined3 uStack_4b;
  undefined4 local_48;
  undefined4 local_44;
  uint local_40;
  uint local_3c;
  undefined4 local_38;
  undefined local_34 [8];
  float local_2c;
  float local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  auVar9 = _local_58;
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af4055;
  local_1c = ExceptionList;
  uVar12 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar13 = *(int *)(DAT_00c71678 + 0x18300);
  iVar14 = *(int *)(param_1 + 0xb64);
  local_24 = uVar12;
  if (iVar14 != 0) {
    if (iVar14 != 4) {
      puStack_20 = &stack0xfffffffc;
      if (iVar14 == 8) {
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
        puStack_20 = &stack0xfffffffc;
        if (*(int *)(param_1 + 0x7c) != 0) {
          puStack_20 = &stack0xfffffffc;
          cVar11 = FUN_0040add0("Shoot");
          if (cVar11 != '\0') {
            _local_58 = ZEXT816(0);
            local_48 = 0;
            local_44 = 0;
            local_40 = 0;
            local_68 = _DAT_00bac480;
            uStack_64 = _UNK_00bac484;
            uStack_60 = _UNK_00bac488;
            uStack_5c = _UNK_00bac48c;
            FUN_006d6ba0(0x6c,0x3f800000,10,0,0x3f8ccccd);
            iVar13 = FUN_006be840();
            local_120 = *(float *)(iVar13 + 0x33c);
            local_11c = *(float *)(iVar13 + 0x340);
            local_118 = local_11c;
            local_114 = local_120;
            FUN_006d9050(0);
            local_128 = local_114;
            local_124 = local_118;
            if (*(int *)(param_1 + 0xf1c) != -1) {
              local_120 = *(float *)(param_1 + 0xf20) * DAT_00baa9d0 + *(float *)(param_1 + 0x33c);
              local_11c = *(float *)(param_1 + 0xf24) * DAT_00baa9d0 + *(float *)(param_1 + 0x340);
              local_128 = local_120;
              local_124 = local_11c;
            }
            local_128 = local_128 - *(float *)(param_1 + 0x33c);
            local_124 = local_124 - *(float *)(param_1 + 0x340);
            FUN_00a10030(&local_134);
            if (*(int *)(param_1 + 0x2c) == 1) {
              iVar13 = FUN_006d0dd0(local_34,*(undefined4 *)(param_1 + 0x20));
              uVar12 = 1 - *(int *)(iVar13 + 0xc);
              local_12c = (float)(-(uint)(uVar12 != 0) & uVar12);
              FUN_004175b0();
              iVar13 = 0;
              do {
                iVar14 = FUN_006eef60();
                local_114 = ((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                             DAT_00ba9ff4 - DAT_00baa2d0) * DAT_00baa8d0 * DAT_00baa088;
                fVar24 = local_114;
                FUN_0041d540();
                local_118 = fVar24;
                FUN_0041d520();
                fVar24 = local_114 * local_134;
                local_114 = local_118 * local_134 - local_114 * local_130;
                local_118 = fVar24 + local_118 * local_130;
                local_128 = local_114 * DAT_00baa75c + *(float *)(param_1 + 0x33c);
                local_124 = local_118 * DAT_00baa75c + *(float *)(param_1 + 0x340);
                iVar14 = FUN_006eef60();
                local_120 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                            DAT_00ba9ff4 * DAT_00baa804 + DAT_00baa454;
                local_11c = local_120 * local_118;
                local_120 = local_120 * local_114;
                if (iVar13 < (int)local_12c) {
                  iVar14 = FUN_004f9920(param_1,2);
                  *(undefined4 *)(iVar14 + 0xc7c) = *(undefined4 *)(param_1 + 0x20);
                }
                else {
                  FUN_004f9920(param_1,3);
                }
                iVar13 = iVar13 + 1;
              } while (iVar13 < 4);
              iVar13 = 6;
              do {
                iVar14 = FUN_006eef60();
                local_114 = ((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                             DAT_00ba9ff4 - DAT_00baa2d0) * DAT_00baa8d0 * DAT_00baa088;
                fVar24 = local_114;
                FUN_0041d540();
                local_118 = fVar24;
                fVar24 = local_114;
                FUN_0041d520();
                local_12c = local_118 * local_134 - fVar24 * local_130;
                local_118 = fVar24 * local_134 + local_118 * local_130;
                iVar14 = FUN_006eef60();
                local_124 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                            DAT_00ba9ff4 * DAT_00baa75c + DAT_00baa630;
                local_114 = *(float *)(param_1 + 0x370);
                iVar14 = FUN_006eef60();
                fVar24 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                         DAT_00ba9ff4;
                local_138 = local_114 * local_118 * fVar24 + *(float *)(param_1 + 0x340);
                local_13c = local_114 * local_12c * fVar24 + *(float *)(param_1 + 0x33c);
                uVar15 = FUN_006eef60();
                local_120 = local_124 * local_12c;
                local_11c = local_124 * local_118;
                piVar16 = (int *)FUN_00428b20(1000,0x42,&local_13c,&local_120,0,0,uVar15);
                fVar24 = (float)piVar16[0xd4] - DAT_00baa848;
                piVar16[0xd3] = (int)((float)piVar16[0xd3] + 0.0);
                piVar16[0xd4] = (int)fVar24;
                (**(code **)(*piVar16 + 0xc))();
                iVar13 = iVar13 + -1;
              } while (iVar13 != 0);
            }
            else {
              AI_0043ef30();
              local_7c = 9;
              iVar13 = FUN_006d0dd0(local_34,*(undefined4 *)(param_1 + 0x20));
              uVar12 = 2 - *(int *)(iVar13 + 0xc);
              uVar12 = -(uint)(uVar12 != 0) & uVar12;
              FUN_004175b0();
              FUN_006ccdd0(6 - uVar12,&local_120,0x3f800000,local_110);
              if (0 < (int)uVar12) {
                do {
                  iVar13 = FUN_006eef60();
                  local_124 = ((float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)])
                               * DAT_00ba9ff4 - DAT_00baa2d0) * DAT_00baa8d0 * DAT_00baa088;
                  fVar24 = local_124;
                  FUN_0041d540();
                  local_114 = fVar24;
                  FUN_0041d520();
                  fVar24 = local_124 * local_134;
                  local_124 = local_114 * local_134 - local_124 * local_130;
                  local_114 = fVar24 + local_114 * local_130;
                  local_120 = local_124 * DAT_00baa75c + *(float *)(param_1 + 0x33c);
                  local_11c = local_114 * DAT_00baa75c + *(float *)(param_1 + 0x340);
                  iVar13 = FUN_006eef60();
                  local_13c = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                              DAT_00ba9ff4 * DAT_00baa6fc + DAT_00baa454;
                  local_138 = local_13c * local_114;
                  local_13c = local_13c * local_124;
                  iVar13 = FUN_004f9920(param_1,0);
                  *(undefined4 *)(iVar13 + 0xc7c) = *(undefined4 *)(param_1 + 0x20);
                  uVar12 = uVar12 - 1;
                } while (uVar12 != 0);
              }
              local_114 = 7.006492e-45;
              do {
                iVar13 = FUN_006eef60();
                local_124 = ((float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                             DAT_00ba9ff4 - DAT_00baa2d0) * DAT_00baa8d0 * DAT_00baa088;
                fVar24 = local_124;
                FUN_0041d540();
                local_118 = fVar24;
                fVar24 = local_124;
                FUN_0041d520();
                local_12c = local_118 * local_130;
                local_118 = local_118 * local_134 - fVar24 * local_130;
                local_12c = fVar24 * local_134 + local_12c;
                iVar13 = FUN_006eef60();
                local_11c = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                            DAT_00ba9ff4 * DAT_00baa75c + DAT_00baa630;
                local_124 = *(float *)(param_1 + 0x370);
                iVar13 = FUN_006eef60();
                fVar24 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                         DAT_00ba9ff4;
                local_28 = local_124 * local_12c * fVar24 + *(float *)(param_1 + 0x340);
                local_2c = local_124 * local_118 * fVar24 + *(float *)(param_1 + 0x33c);
                uVar15 = FUN_006eef60();
                local_13c = local_11c * local_118;
                local_138 = local_11c * local_12c;
                piVar16 = (int *)FUN_00428b20(1000,0x23,&local_2c,&local_13c,0,99,uVar15);
                fVar24 = (float)piVar16[0xd4] - DAT_00baa848;
                piVar16[0xd3] = (int)((float)piVar16[0xd3] + 0.0);
                piVar16[0xd4] = (int)fVar24;
                (**(code **)(*piVar16 + 0x3c))(&local_68,0xffffffff,0xff,0,1);
                (**(code **)(*piVar16 + 0xc))();
                local_114 = (float)((int)local_114 + -1);
              } while (local_114 != 0.0);
            }
          }
          if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
          goto LAB_004fcbaa;
        }
        *(undefined4 *)(param_1 + 0xb64) = 4;
      }
      goto LAB_004fcbaa;
    }
    local_40 = 0xf;
    local_44 = 8;
    local_58._4_4_ = s_WalkVert_00b1dd18._0_4_;
    uStack_50 = s_WalkVert_00b1dd18._4_4_;
    uStack_4b = auVar9._13_3_;
    uStack_4c = 0;
    local_28 = 2.101948e-44;
    local_2c = 1.121039e-44;
    local_3c = s_WalkHori_00b1dd30._0_4_;
    local_38 = s_WalkHori_00b1dd30._4_4_;
    local_34[0] = 0;
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    puStack_20 = &stack0xfffffffc;
    FUN_006c1330(&local_3c,local_58 + 4,0x3dcccccd);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < (uint)local_28) {
      uVar21 = (int)local_28 + 1;
      uVar12 = local_3c;
      if (0xfff < uVar21) {
        uVar12 = *(uint *)(local_3c - 4);
        uVar21 = (int)local_28 + 0x24;
        if (0x1f < (local_3c - uVar12) - 4) goto LAB_004fc752;
      }
      FUN_00aef15c(uVar12,uVar21);
    }
    local_14 = -1;
    local_2c = 0.0;
    local_28 = 2.101948e-44;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar12 = local_40 + 1;
      iVar14 = local_58._4_4_;
      if (0xfff < uVar12) {
        iVar14 = *(int *)(local_58._4_4_ + -4);
        uVar12 = local_40 + 0x24;
        if (0x1f < (local_58._4_4_ - iVar14) - 4U) {
LAB_004fc752:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar14,uVar12);
    }
    if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) || (*(int *)(param_1 + 0xf1c) == -1)) {
      uVar27 = 1;
      uVar26 = 0;
      uVar25 = 0x3f19999a;
      uVar15 = FUN_006bec40(&local_2c,0);
      FUN_007e33c0(uVar15,uVar25,uVar26,uVar27);
    }
    else {
      iVar14 = FUN_006be840();
      local_2c = *(float *)(iVar14 + 0x33c);
      local_28 = *(float *)(iVar14 + 0x340);
      FUN_007e4940(&local_2c,0);
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    }
    if ((*(char *)(param_1 + 0xb40) != '\0') && (uVar12 = FUN_006eef60(), uVar12 % 3 == 0)) {
      FUN_006d6ba0(0xa7,0x3f4ccccd,0x78,0,0x3f800000);
    }
    FUN_006d8e40(1);
    iVar14 = *(int *)(param_1 + 0x410);
    if (0 < iVar14) {
      iVar14 = iVar14 + ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
      *(int *)(param_1 + 0x410) = iVar14;
    }
    if (*(float *)(param_1 + 0xbb0) <= DAT_00baa7a4) {
LAB_004fc898:
      if (0 < iVar14) goto LAB_004fcbaa;
    }
    else if (0 < iVar14) {
      iVar14 = iVar14 + ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
      *(int *)(param_1 + 0x410) = iVar14;
      goto LAB_004fc898;
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar12 = FUN_006eef60();
      if ((uVar12 % 0x3c != 0) &&
         ((*(float *)(param_1 + 0xbb0) <= DAT_00baa7a4 ||
          (uVar12 = FUN_006eef60(), uVar12 % 0x14 != 0)))) goto LAB_004fcbaa;
    }
    else {
      cVar11 = FUN_006cae60(0,7);
      if (cVar11 == '\0') goto LAB_004fcbaa;
    }
    cVar11 = FUN_00417430(0x1000a00,0);
    if ((cVar11 != '\0') || (*(int *)(param_1 + 0x34) == 0x38a)) goto LAB_004fcbaa;
    iVar14 = FUN_006be840();
    local_11c = *(float *)(iVar14 + 0x33c);
    fVar23 = *(float *)(param_1 + 0x33c) - local_11c;
    fVar24 = *(float *)(param_1 + 0x340) - *(float *)(iVar14 + 0x340);
    fVar24 = fVar24 * fVar24 + fVar23 * fVar23;
    FUN_00435a50();
    if ((DAT_00baaa94 <= fVar24) &&
       (((DAT_00baab54 <= fVar24 || (uVar12 = FUN_006eef60(), uVar12 % 10 != 0)) &&
        (*(int *)(param_1 + 0xf1c) == -1)))) goto LAB_004fcbaa;
    iVar14 = *(int *)(iVar13 + 0x1264);
    iVar19 = 0;
    if (*(int *)(param_1 + 0x2c) == 1) {
      if (iVar14 != 0) {
        piVar16 = *(int **)(iVar13 + 0x125c);
        do {
          if ((*(int *)(*piVar16 + 0x28) == 0x21) && (*(int *)(*piVar16 + 0x2c) == 2)) {
            iVar19 = iVar19 + 1;
          }
          piVar16 = piVar16 + 1;
          iVar14 = iVar14 + -1;
        } while (iVar14 != 0);
LAB_004fca03:
        if (8 < iVar19) goto LAB_004fcbaa;
      }
    }
    else if (iVar14 != 0) {
      piVar16 = *(int **)(iVar13 + 0x125c);
      do {
        iVar13 = *piVar16;
        if (*(int *)(iVar13 + 0x28) == 0x55) {
          bVar22 = *(int *)(iVar13 + 0x2c) == 0;
        }
        else {
          bVar22 = *(int *)(iVar13 + 0x28) == 0x332;
        }
        if (bVar22) {
          iVar19 = iVar19 + 1;
        }
        piVar16 = piVar16 + 1;
        iVar14 = iVar14 + -1;
      } while (iVar14 != 0);
      goto LAB_004fca03;
    }
    FUN_006d9050(1);
    fVar24 = local_11c;
    if (*(int *)(param_1 + 0xf1c) != -1) {
      fVar24 = *(float *)(param_1 + 0xf20) * DAT_00baa9d0 + *(float *)(param_1 + 0x33c);
    }
    *(bool *)(param_1 + 0x148) = fVar24 < *(float *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0xb64) = 8;
    FUN_0040a380("Attack",0);
    *(undefined4 *)(param_1 + 0x410) = 0x96;
    goto LAB_004fcbaa;
  }
  *(undefined4 *)(param_1 + 0xb64) = 4;
  ppbVar3 = *(byte ***)(param_1 + 0x7c);
  if (ppbVar3 == (byte **)0x0) {
LAB_004fcad6:
    cVar11 = FUN_0040a5d0("WalkVert",1);
    puVar10 = puStack_20;
    if (cVar11 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
      puVar10 = puStack_20;
    }
  }
  else {
    ppbVar17 = ppbVar3;
    if (&DAT_0000000f < ppbVar3[5]) {
      ppbVar17 = (byte **)*ppbVar3;
    }
    pcVar20 = "WalkVert";
    do {
      bVar2 = *(byte *)ppbVar17;
      bVar22 = bVar2 < (byte)*pcVar20;
      if (bVar2 != *pcVar20) {
LAB_004fcab8:
        uVar21 = -(uint)bVar22 | 1;
        goto LAB_004fcabd;
      }
      if (bVar2 == 0) break;
      bVar2 = *(byte *)((int)ppbVar17 + 1);
      bVar22 = bVar2 < ((byte *)pcVar20)[1];
      if (bVar2 != ((byte *)pcVar20)[1]) goto LAB_004fcab8;
      ppbVar17 = (byte **)((int)ppbVar17 + 2);
      pcVar20 = (char *)((byte *)pcVar20 + 2);
    } while (bVar2 != 0);
    uVar21 = 0;
LAB_004fcabd:
    if ((uVar21 != 0) ||
       ((puVar10 = &stack0xfffffffc, *(byte *)(ppbVar3 + 0xd) != 0 &&
        (puVar10 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) == '\0')))) goto LAB_004fcad6;
  }
  puStack_20 = puVar10;
  uVar8 = uRam00c34d58;
  uVar7 = uRam00c34d54;
  uVar18 = uRam00c34d50;
  uVar6 = _UNK_00bac7bc;
  uVar5 = _UNK_00bac7b8;
  uVar4 = _UNK_00bac7b4;
  uVar27 = _UNK_00baba9c;
  uVar26 = _UNK_00baba98;
  uVar25 = _UNK_00baba94;
  uVar15 = _DAT_00baba90;
  puVar1 = (undefined4 *)(param_1 + 0x1e4);
  if (*(int *)(param_1 + 0x2c) == 1) {
    if (puVar1 != (undefined4 *)&DAT_00c34d4c) {
      *puVar1 = _DAT_00c34d4c;
      *(undefined4 *)(param_1 + 0x1e8) = uVar18;
      *(undefined4 *)(param_1 + 0x1ec) = uVar7;
      *(undefined4 *)(param_1 + 0x1f0) = uVar8;
      uVar26 = uRam00c34d68;
      uVar25 = uRam00c34d64;
      uVar15 = uRam00c34d60;
      *(undefined4 *)(param_1 + 500) = _DAT_00c34d5c;
      *(undefined4 *)(param_1 + 0x1f8) = uVar15;
      *(undefined4 *)(param_1 + 0x1fc) = uVar25;
      *(undefined4 *)(param_1 + 0x200) = uVar26;
      *(undefined8 *)(param_1 + 0x204) = DAT_00c34d6c;
      uVar18 = DAT_00c34d74;
LAB_004fcb81:
      *(undefined4 *)(param_1 + 0x20c) = uVar18;
    }
  }
  else {
    local_148 = 0;
    uStack_144 = 0;
    local_140 = 0;
    if (puVar1 != local_168) {
      uVar18 = 0;
      *puVar1 = _DAT_00bac7b0;
      *(undefined4 *)(param_1 + 0x1e8) = uVar4;
      *(undefined4 *)(param_1 + 0x1ec) = uVar5;
      *(undefined4 *)(param_1 + 0x1f0) = uVar6;
      *(undefined4 *)(param_1 + 500) = uVar15;
      *(undefined4 *)(param_1 + 0x1f8) = uVar25;
      *(undefined4 *)(param_1 + 0x1fc) = uVar26;
      *(undefined4 *)(param_1 + 0x200) = uVar27;
      *(undefined8 *)(param_1 + 0x204) = 0;
      goto LAB_004fcb81;
    }
  }
  if (*(int *)(param_1 + 0xf1c) == -1) {
    uVar12 = FUN_006eef60(uVar12);
    iVar13 = uVar12 % 10 + 10;
  }
  else {
    iVar13 = 10;
  }
  *(int *)(param_1 + 0x410) = iVar13;
LAB_004fcbaa:
  fVar24 = *(float *)(param_1 + 0xbb0);
  if (0.0 < *(float *)(param_1 + 0x14)) {
    fVar24 = *(float *)(param_1 + 0x14) + fVar24;
    *(float *)(param_1 + 0xbb0) = fVar24;
  }
  if (0.0 < fVar24) {
    fVar24 = fVar24 - *(float *)(param_1 + 0x39c) * DAT_00baa12c;
    if (fVar24 <= 0.0) {
      fVar24 = 0.0;
    }
    *(float *)(param_1 + 0xbb0) = fVar24;
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

