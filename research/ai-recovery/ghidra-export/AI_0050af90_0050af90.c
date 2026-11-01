/* Local J460 decompiler output.
 * VA: 0x0050af90
 * Entry: 0050af90
 * Dispatcher: 0x006c2990
 * Types: 11,210,211,238,280
 * Identities: 11.0.0,11.1.0,210.0.0,211.0.0,238.0.0,280.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0050bbe0; instructions=772
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=11,210,211,238,280;
   identities=11.0.0,11.1.0,210.0.0,211.0.0,238.0.0,280.0.0; dispatcher=0x006c2990; end=0x0050bbe0;
   instructions=772 */

void __fastcall AI_0050af90(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined auVar6 [16];
  char cVar7;
  uint uVar8;
  undefined4 *puVar9;
  byte **ppbVar10;
  float *pfVar11;
  int iVar12;
  undefined4 uVar13;
  int *piVar14;
  char *pcVar15;
  uint uVar16;
  bool bVar17;
  float fVar18;
  undefined4 local_164 [8];
  undefined4 local_144;
  undefined4 uStack_140;
  undefined4 local_13c;
  float local_138;
  float local_134;
  float local_130;
  float local_12c;
  undefined local_128 [4];
  float local_124;
  undefined4 local_120;
  undefined4 local_11c;
  undefined4 local_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  uint local_d0;
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 local_94;
  undefined4 local_68;
  undefined4 local_64;
  undefined local_60;
  undefined4 local_58;
  uint local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [5];
  undefined uStack_3b;
  undefined2 uStack_3a;
  undefined4 uStack_38;
  undefined uStack_34;
  undefined3 uStack_33;
  undefined4 local_30;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  auVar6 = _local_40;
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af4205;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    uVar5 = _UNK_00bac4bc;
    uVar4 = _UNK_00bac4b8;
    uVar3 = _UNK_00bac4b4;
    uVar13 = _DAT_00bac4b0;
    if (*(int *)(param_1 + 0x28) == 0xee) {
      local_144 = 0xbe48c8ca;
      uStack_140 = 0x3f028283;
      local_13c = 0x3e48c8ca;
      if ((undefined4 *)(param_1 + 0x1e4) != local_164) {
        *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
        *(undefined8 *)(param_1 + 0x204) = 0x3f028283be48c8ca;
        *(undefined4 *)(param_1 + 0x1e4) = uVar13;
        *(undefined4 *)(param_1 + 0x1e8) = uVar3;
        *(undefined4 *)(param_1 + 0x1ec) = uVar4;
        *(undefined4 *)(param_1 + 0x1f0) = uVar5;
        *(undefined4 *)(param_1 + 0x20c) = 0x3e48c8ca;
      }
    }
    puStack_20 = &stack0xfffffffc;
    uVar8 = FUN_006eef60(local_24);
    *(uint *)(param_1 + 0xba0) = uVar8 % 0x14 + 0x14;
    if (((*(int *)(param_1 + 0x2c) == 0) && (*(int *)(param_1 + 0x28) == 0xb)) ||
       (*(int *)(param_1 + 0x28) == 0xee)) {
      FUN_0040a940("Blood",0);
    }
    goto LAB_0050bb98;
  }
  if ((*(char *)(param_1 + 0x173) != '\0') && (*(int *)(param_1 + 0x28) == 0xd2)) {
    puStack_20 = &stack0xfffffffc;
    if ((DAT_00baae00 < *(float *)(param_1 + 0x380)) &&
       (puStack_20 = &stack0xfffffffc, uVar8 = FUN_006eef60(local_24), (uVar8 & 1) == 0)) {
      FUN_006c0f30(0xd3,0,0,0xffffffff);
      *(undefined *)(param_1 + 0x173) = 0;
      *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
    }
    goto LAB_0050bb98;
  }
  if (((*(int *)(param_1 + 0x28) == 0xee) && (0.0 < *(float *)(param_1 + 0x14))) &&
     (puVar9 = *(undefined4 **)(param_1 + 8), puVar9 != *(undefined4 **)(param_1 + 0xc))) {
    do {
      local_12c = (float)puVar9[3];
      if ((((((puVar9[2] & 4) != 0) && (((uint)puVar9[0xc] >> 1 & 1) == 0)) && (puVar9[4] != 1)) &&
          ((puVar9[6] != 1 && (puVar9[6] != 3)))) && ((puVar9[2] & 0x1000) == 0)) {
        *puVar9 = 0;
      }
      puVar9 = puVar9 + 0xe;
    } while (puVar9 != *(undefined4 **)(param_1 + 0xc));
  }
  local_28 = 0xf;
  local_2c = 8;
  local_40[4] = s_WalkVert_00b1dd18[0];
  uStack_3b = s_WalkVert_00b1dd18[1];
  uStack_3a._0_1_ = s_WalkVert_00b1dd18[2];
  uStack_3a._1_1_ = s_WalkVert_00b1dd18[3];
  uStack_38._0_1_ = s_WalkVert_00b1dd18[4];
  uStack_38._1_1_ = s_WalkVert_00b1dd18[5];
  uStack_38._2_1_ = s_WalkVert_00b1dd18[6];
  uStack_38._3_1_ = s_WalkVert_00b1dd18[7];
  uStack_33 = auVar6._13_3_;
  uStack_34 = 0;
  local_54 = 0xf;
  local_58 = 8;
  local_68._0_1_ = s_WalkHori_00b1dd30[0];
  local_68._1_1_ = s_WalkHori_00b1dd30[1];
  local_68._2_1_ = s_WalkHori_00b1dd30[2];
  local_68._3_1_ = s_WalkHori_00b1dd30[3];
  local_64._0_1_ = s_WalkHori_00b1dd30[4];
  local_64._1_1_ = s_WalkHori_00b1dd30[5];
  local_64._2_1_ = s_WalkHori_00b1dd30[6];
  local_64._3_1_ = s_WalkHori_00b1dd30[7];
  local_60 = 0;
  local_14._0_1_ = 1;
  local_14._1_3_ = 0;
  FUN_006c1330(&local_68,local_40 + 4,0x3dcccccd);
  local_14 = (uint)local_14._1_3_ << 8;
  if (0xf < local_54) {
    uVar16 = local_54 + 1;
    uVar8 = local_68;
    if (0xfff < uVar16) {
      uVar8 = *(uint *)(local_68 - 4);
      uVar16 = local_54 + 0x24;
      if (0x1f < (local_68 - uVar8) - 4) goto LAB_0050b233;
    }
    FUN_00aef15c(uVar8,uVar16);
  }
  local_14 = -1;
  local_58 = 0;
  local_54 = 0xf;
  local_68 = local_68 & 0xffffff00;
  if (0xf < local_28) {
    uVar8 = local_28 + 1;
    iVar12 = stack0xffffffc4;
    if (0xfff < uVar8) {
      iVar12 = *(int *)(stack0xffffffc4 + -4);
      uVar8 = local_28 + 0x24;
      if (0x1f < (stack0xffffffc4 - iVar12) - 4U) {
LAB_0050b233:
                    /* WARNING: Subroutine does not return */
        _invalid_parameter_noinfo_noreturn();
      }
    }
    FUN_00aef15c(iVar12,uVar8);
  }
  iVar12 = *(int *)(param_1 + 0x28);
  if (((*(int *)(param_1 + 0x2c) == 0) && (iVar12 == 0xb)) || (iVar12 == 0xee)) {
    ppbVar2 = *(byte ***)(param_1 + 0x9c);
    if (ppbVar2 == (byte **)0x0) {
LAB_0050b2be:
      cVar7 = FUN_0040aaf0("Blood",1);
      if (cVar7 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0xac) = 1;
      }
    }
    else {
      ppbVar10 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar10 = (byte **)*ppbVar2;
      }
      pcVar15 = "Blood";
      do {
        bVar1 = *(byte *)ppbVar10;
        bVar17 = bVar1 < (byte)*pcVar15;
        if (bVar1 != *pcVar15) {
LAB_0050b2a0:
          uVar8 = -(uint)bVar17 | 1;
          goto LAB_0050b2a5;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar10 + 1);
        bVar17 = bVar1 < ((byte *)pcVar15)[1];
        if (bVar1 != ((byte *)pcVar15)[1]) goto LAB_0050b2a0;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pcVar15 = (char *)((byte *)pcVar15 + 2);
      } while (bVar1 != 0);
      uVar8 = 0;
LAB_0050b2a5:
      if ((uVar8 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0xac) == '\0'))))
      goto LAB_0050b2be;
    }
    if ((*(int *)(param_1 + 0xba0) < 1) && ((*(uint *)(param_1 + 0x168) & 0x1000a00) == 0)) {
      if ((*(int *)(param_1 + 0xf1c) == -1) || (cVar7 = FUN_006cae60(0,7), cVar7 != '\0')) {
        local_134 = DAT_00c7b640;
        local_12c = DAT_00c7b644;
        if (*(int *)(param_1 + 0xf1c) == -1) {
          fVar18 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
                   *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
          FUN_00435a50();
          if (0.0 < fVar18) {
            local_134 = *(float *)(param_1 + 0x360) / fVar18;
            local_12c = *(float *)(param_1 + 0x364) / fVar18;
          }
        }
        else {
          pfVar11 = (float *)FUN_006d85a0(&local_130);
          local_134 = *pfVar11;
          local_12c = pfVar11[1];
        }
        if (((NAN(local_134) || NAN(DAT_00c7b640)) == (local_134 == DAT_00c7b640)) ||
           ((NAN(local_12c) || NAN(DAT_00c7b644)) == (local_12c == DAT_00c7b644))) {
          if (*(int *)(param_1 + 0x28) == 0xb) {
            if (*(int *)(param_1 + 0xf1c) == -1) {
              uVar8 = FUN_006eef60();
              uVar8 = uVar8 % 0x14;
            }
            else {
              uVar8 = 0;
            }
            *(uint *)(param_1 + 0xba0) = uVar8 + 0x28;
          }
          AI_0043ef30();
          local_11c = 0x3e99999a;
          local_120 = 0xc0a00000;
          if (*(int *)(param_1 + 0x28) == 0xee) {
            if (*(int *)(param_1 + 0xf1c) == -1) {
              uVar8 = FUN_006eef60();
              uVar8 = uVar8 % 0x1e;
            }
            else {
              uVar8 = 0;
            }
            uStack_e0 = _UNK_00bac50c;
            uStack_e4 = _UNK_00bac508;
            uStack_e8 = _UNK_00bac504;
            local_ec = _DAT_00bac500;
            local_d0 = local_d0 | 2;
            *(uint *)(param_1 + 0xba0) = uVar8 + 0x3c;
          }
          iVar12 = FUN_006b9bb0();
          if ((iVar12 == 6) || (iVar12 == 0x1b)) {
            local_94 = 4;
          }
          else if (iVar12 == 0x1c) {
            local_94 = 3;
          }
          local_138 = local_134 * DAT_00baa784;
          local_134 = local_12c * DAT_00baa784;
          FUN_006cb2e0(param_1 + 0x33c,&local_138,0,local_128);
          FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
        }
      }
    }
    else {
      *(int *)(param_1 + 0xba0) =
           ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
           *(int *)(param_1 + 0xba0);
    }
  }
  else if (iVar12 == 0xd2) {
    if (((*(int *)(param_1 + 0xba0) < 1) && ((*(uint *)(param_1 + 0x168) & 0x1000a00) == 0)) &&
       ((*(int *)(param_1 + 0xf1c) == -1 ||
        ((cVar7 = FUN_006cae60(0,7), cVar7 != '\0' || (cVar7 = FUN_006d8260(9), cVar7 != '\0'))))))
    {
      fVar18 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
               *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
      FUN_00435a50();
      if (0.0 < fVar18) {
        if (*(int *)(param_1 + 0xf1c) == -1) {
          uVar8 = FUN_006eef60();
          uVar8 = uVar8 % 0x1e;
        }
        else {
          uVar8 = 0;
        }
        *(uint *)(param_1 + 0xba0) = uVar8 + 0x1e;
        AI_0043ef30();
        local_124 = local_124 - DAT_00baa854;
        local_120 = 0x40a00000;
        local_c8 = 0;
        local_c4 = 0x40a00000;
        uVar8 = FUN_006eef60();
        FUN_006ccdd0(uVar8 % 3 + 3,&DAT_00c7b640,0x41200000,local_128);
        FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
      }
    }
    else {
      *(int *)(param_1 + 0xba0) =
           *(int *)(param_1 + 0xba0) +
           ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
    }
  }
  else if (iVar12 == 0x118) {
    ppbVar2 = *(byte ***)(param_1 + 0x9c);
    if (ppbVar2 != (byte **)0x0) {
      ppbVar10 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar10 = (byte **)*ppbVar2;
      }
      pcVar15 = "Spiders";
      do {
        bVar1 = *(byte *)ppbVar10;
        bVar17 = bVar1 < (byte)*pcVar15;
        if (bVar1 != *pcVar15) {
LAB_0050b6f0:
          uVar8 = -(uint)bVar17 | 1;
          goto LAB_0050b6f5;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar10 + 1);
        bVar17 = bVar1 < ((byte *)pcVar15)[1];
        if (bVar1 != ((byte *)pcVar15)[1]) goto LAB_0050b6f0;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pcVar15 = (char *)((byte *)pcVar15 + 2);
      } while (bVar1 != 0);
      uVar8 = 0;
LAB_0050b6f5:
      if ((uVar8 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0xac) != '\0'))))
      goto LAB_0050b72c;
    }
    cVar7 = FUN_0040aaf0("Spiders",1);
    if (cVar7 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0xac) = 1;
    }
  }
LAB_0050b72c:
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa380;
  if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
    FUN_007e6300(0);
  }
  else {
    iVar12 = FUN_006be840();
    local_130 = *(float *)(iVar12 + 0x33c);
    local_12c = *(float *)(iVar12 + 0x340);
    FUN_007e4940(&local_130,0);
    if (0 < *(int *)(param_1 + 0xb50)) {
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    }
  }
  iVar12 = FUN_006ac760();
  if (iVar12 != 0) {
    iVar12 = *(int *)(param_1 + 0x28);
    if (iVar12 == 0xd3) {
      if ((*(uint *)(param_1 + 0x168) & 0x1000000) == 0) {
        uVar13 = FUN_006eef60();
        piVar14 = (int *)FUN_00428b20(1000,0x16,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar13);
        iVar12 = FUN_006eef60();
        fVar18 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa1f8 + DAT_00baa198;
        piVar14[0x39] = (int)fVar18;
        piVar14[0x3a] = (int)fVar18;
        (**(code **)(*piVar14 + 0xc))();
      }
    }
    else {
      if (iVar12 == 0xd2) {
        iVar12 = FUN_006eef60();
        FUN_006b64d0((float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa280 + DAT_00baa280);
        iVar12 = *(int *)(param_1 + 0x28);
      }
      if (iVar12 == 0xee) {
        iVar12 = FUN_006eef60();
        piVar14 = (int *)FUN_006b64d0((float)((double)iVar12 +
                                             (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                                      DAT_00ba9ff4 * DAT_00baa1f8 + DAT_00baa198);
        local_30 = 0;
        _local_40 = ZEXT816(0);
        local_2c = 0x3f000000;
        local_50 = _DAT_00bac030;
        uStack_4c = _UNK_00bac034;
        uStack_48 = _UNK_00bac038;
        uStack_44 = _UNK_00bac03c;
        local_28 = 0;
        (**(code **)(*piVar14 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
      }
      else {
        iVar12 = FUN_006eef60();
        FUN_006b64d0((float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa1f8 + DAT_00baa198);
      }
    }
  }
  iVar12 = *(int *)(param_1 + 0x28);
  if (iVar12 == 0x118) {
    if (0 < *(int *)(param_1 + 0xba0)) {
      *(int *)(param_1 + 0xba0) =
           ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
           *(int *)(param_1 + 0xba0);
      goto LAB_0050bb98;
    }
    iVar12 = FUN_006d6c20();
    if ((iVar12 < 5) &&
       ((*(int *)(param_1 + 0xf1c) == -1 || (cVar7 = FUN_006cae60(0,7), cVar7 != '\0')))) {
      local_130 = DAT_00c7b640;
      local_12c = DAT_00c7b644;
      if ((*(int *)(param_1 + 0xf1c) != -1) &&
         ((FUN_006d85a0(&local_138),
          (NAN(local_138) || NAN(DAT_00c7b640)) == (local_138 == DAT_00c7b640) ||
          ((NAN(local_134) || NAN(DAT_00c7b644)) == (local_134 == DAT_00c7b644))))) {
        local_130 = local_138 * DAT_00baa9a0 + *(float *)(param_1 + 0x33c);
        local_12c = local_134 * DAT_00baa9a0 + *(float *)(param_1 + 0x340);
      }
      FUN_006c2750(param_1 + 0x33c,param_1,local_130,local_12c,0,0xc1f00000);
      FUN_006d6ba0(0xb5,0x3f000000,2,0,0x3f800000);
      uVar13 = FUN_00407170();
      local_130 = 0.0;
      local_12c = -10.0;
      iVar12 = FUN_006d7cf0(&local_130,uVar13,&DAT_00c7b640);
      *(undefined4 *)(iVar12 + 0x358) = 0x3f800000;
      FUN_004564b0(param_1);
      if (*(int *)(param_1 + 0xf1c) == -1) {
        uVar8 = FUN_006eef60();
        iVar12 = ((uVar8 & 1) + 1) * 0x5a;
      }
      else {
        iVar12 = 0x5a;
      }
      *(int *)(param_1 + 0xba0) = iVar12;
    }
    iVar12 = *(int *)(param_1 + 0x28);
  }
  if ((((iVar12 == 0xd2) || (iVar12 == 0xd3)) && (iVar12 = FUN_006ac760(), iVar12 != 0)) &&
     (uVar8 = FUN_006eef60(), (uVar8 & 1) == 0)) {
    FUN_006d6ba0(3,0x3f333333,2,0,0x3f800000);
  }
LAB_0050bb98:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

