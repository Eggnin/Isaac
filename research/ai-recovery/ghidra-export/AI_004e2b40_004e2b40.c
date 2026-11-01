/* Local J460 decompiler output.
 * VA: 0x004e2b40
 * Entry: 004e2b40
 * Dispatcher: 0x006c2990
 * Types: 850
 * Identities: 850.0.0,850.1.0,850.2.0
 * Evidence: dispatcher=0x006c2990; end=0x004e38c0; instructions=828
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=850; identities=850.0.0,850.1.0,850.2.0;
   dispatcher=0x006c2990; end=0x004e38c0; instructions=828 */

void __fastcall AI_004e2b40(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  int *piVar7;
  float *pfVar8;
  undefined4 uVar9;
  float *extraout_ECX;
  uint uVar10;
  int iVar11;
  float fVar12;
  float fVar13;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  float local_5c;
  char local_55;
  int local_54;
  undefined4 local_50;
  undefined local_4c;
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
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af3b95;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_60 = 0.0;
  iVar11 = (int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0);
  iVar5 = *(int *)(param_1 + 0xb64);
  local_24 = uVar4;
  if (*(int *)(param_1 + 0x2c) == 1) {
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa400;
    if (iVar5 == 0) {
      *(undefined4 *)(param_1 + 0xb64) = 4;
      uVar2 = uRam00c5c774;
      uVar1 = uRam00c5c770;
      uVar9 = uRam00c5c76c;
      if ((undefined4 *)(param_1 + 0x1e4) != (undefined4 *)&DAT_00c5c768) {
        *(undefined4 *)(param_1 + 0x1e4) = _DAT_00c5c768;
        *(undefined4 *)(param_1 + 0x1e8) = uVar9;
        *(undefined4 *)(param_1 + 0x1ec) = uVar1;
        *(undefined4 *)(param_1 + 0x1f0) = uVar2;
        uVar2 = uRam00c5c784;
        uVar1 = uRam00c5c780;
        uVar9 = uRam00c5c77c;
        *(undefined4 *)(param_1 + 500) = _DAT_00c5c778;
        *(undefined4 *)(param_1 + 0x1f8) = uVar9;
        *(undefined4 *)(param_1 + 0x1fc) = uVar1;
        *(undefined4 *)(param_1 + 0x200) = uVar2;
        *(undefined8 *)(param_1 + 0x204) = DAT_00c5c788;
        *(undefined4 *)(param_1 + 0x20c) = DAT_00c5c790;
      }
      puStack_20 = &stack0xfffffffc;
      uVar6 = FUN_006eef60(uVar4);
      *(uint *)(param_1 + 0xba0) = uVar6 % 0x1e + 0xf;
    }
    else if (iVar5 == 4) {
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380(&DAT_00b1bc54,0);
      *(int *)(param_1 + 0xba0) = *(int *)(param_1 + 0xba0) - iVar11;
      if (*(int *)(param_1 + 0xba0) < 1) {
        *(undefined4 *)(param_1 + 0xb64) = 8;
        FUN_0040a380("Shoot",0);
      }
      pfVar8 = (float *)FUN_006bec40(&local_64,0);
      local_5c = *pfVar8 - *(float *)(param_1 + 0x33c);
      local_68 = pfVar8[1] - *(float *)(param_1 + 0x340);
      if (*(int *)(param_1 + 0xf1c) != -1) {
        pfVar8 = (float *)FUN_006d82d0(&local_64);
        local_5c = *pfVar8;
        local_68 = pfVar8[1];
      }
      fVar13 = local_5c * local_5c + local_68 * local_68;
      FUN_00435a50();
      if (0.0 < fVar13) {
        fVar13 = DAT_00baa140 / fVar13;
        fVar12 = *(float *)(param_1 + 0x36c);
        if (NAN(fVar12) == (fVar12 == 0.0)) {
          *(float *)(param_1 + 0x360) =
               (local_5c * fVar13 * *(float *)(param_1 + 0x39c)) / fVar12 +
               *(float *)(param_1 + 0x360);
          *(float *)(param_1 + 0x364) =
               (local_68 * fVar13 * *(float *)(param_1 + 0x39c)) / fVar12 +
               *(float *)(param_1 + 0x364);
        }
      }
    }
    else {
      puStack_20 = &stack0xfffffffc;
      if (iVar5 == 8) {
        puStack_20 = &stack0xfffffffc;
        FUN_006d9050(0);
        if ((*(int *)(param_1 + 0x7c) != 0) && (cVar3 = FUN_0040add0("Shoot"), cVar3 != '\0')) {
          FUN_006d6ba0(0x92,0x3f800000,2,0,0x3f666666);
          iVar5 = FUN_006be840();
          fVar13 = *(float *)(iVar5 + 0x33c) - *(float *)(param_1 + 0x33c);
          local_60 = *(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340);
          local_68 = fVar13;
          local_64 = fVar13;
          local_5c = local_60;
          fVar12 = local_60;
          if ((*(int *)(param_1 + 0xf1c) != -1) &&
             (cVar3 = FUN_00a10630(&DAT_00c7b640), cVar3 != '\0')) {
            fVar13 = *extraout_ECX;
            local_60 = extraout_ECX[1];
            local_68 = fVar13;
            local_64 = fVar13;
            local_5c = local_60;
            fVar12 = local_60;
          }
          fVar13 = fVar12 * fVar12 + fVar13 * fVar13;
          FUN_00435a50();
          if (0.0 < fVar13) {
            local_68 = local_68 * (DAT_00baa81c / fVar13);
            local_60 = local_5c * (DAT_00baa81c / fVar13);
            local_64 = local_68;
            local_5c = local_60;
          }
          local_2c = 0.0;
          local_28 = -24.0;
          iVar5 = FUN_006d7cf0(&local_2c,param_1 + 0x1e4,&DAT_00c7b640);
          *(undefined4 *)(iVar5 + 0x358) = 0x3f800000;
          FUN_004564b0(param_1);
          local_2c = local_68 * DAT_00baa1f8;
          *(undefined *)(iVar5 + 0x148) = 1;
          local_2c = local_2c + *(float *)(param_1 + 0x33c);
          local_28 = local_5c * DAT_00baa1f8 + *(float *)(param_1 + 0x340);
          FUN_004d8d10(&local_64,0xc1000000);
        }
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          *(undefined4 *)(param_1 + 0xb64) = 4;
          FUN_0040a380(&DAT_00b1bc54,0);
          *(undefined4 *)(param_1 + 0xba0) = 0x2d;
        }
      }
    }
  }
  else {
    if (*(int *)(param_1 + 0x2c) == 2) {
      if (iVar5 == 0) {
        puStack_20 = &stack0xfffffffc;
        FUN_0040a380("WalkVert",0);
        FUN_0040a940("Blood",0);
        *(undefined *)(param_1 + 0xb8) = 1;
        *(undefined4 *)(param_1 + 0xb64) = 4;
        uVar2 = uRam00c5c774;
        uVar1 = uRam00c5c770;
        uVar9 = uRam00c5c76c;
        if ((undefined4 *)(param_1 + 0x1e4) != (undefined4 *)&DAT_00c5c768) {
          *(undefined4 *)(param_1 + 0x1e4) = _DAT_00c5c768;
          *(undefined4 *)(param_1 + 0x1e8) = uVar9;
          *(undefined4 *)(param_1 + 0x1ec) = uVar1;
          *(undefined4 *)(param_1 + 0x1f0) = uVar2;
          uVar2 = uRam00c5c784;
          uVar1 = uRam00c5c780;
          uVar9 = uRam00c5c77c;
          *(undefined4 *)(param_1 + 500) = _DAT_00c5c778;
          *(undefined4 *)(param_1 + 0x1f8) = uVar9;
          *(undefined4 *)(param_1 + 0x1fc) = uVar1;
          *(undefined4 *)(param_1 + 0x200) = uVar2;
          *(undefined8 *)(param_1 + 0x204) = DAT_00c5c788;
          *(undefined4 *)(param_1 + 0x20c) = DAT_00c5c790;
        }
LAB_004e33bd:
        *(undefined4 *)(param_1 + 0xba0) = 0xf;
      }
      else {
        puStack_20 = &stack0xfffffffc;
        if (iVar5 == 4) {
          local_40 = 0xf;
          local_44 = 8;
          local_54 = s_WalkVert_00b1dd18._0_4_;
          local_50 = s_WalkVert_00b1dd18._4_4_;
          local_4c = 0;
          local_28 = 2.101948e-44;
          local_2c = 1.121039e-44;
          local_3c = s_WalkHori_00b1dd30._0_4_;
          local_38 = s_WalkHori_00b1dd30._4_4_;
          local_34[0] = 0;
          local_14._0_1_ = 1;
          local_14._1_3_ = 0;
          puStack_20 = &stack0xfffffffc;
          FUN_006c1330(&local_3c,&local_54,0);
          local_14 = (uint)local_14._1_3_ << 8;
          if (0xf < (uint)local_28) {
            uVar10 = (int)local_28 + 1;
            uVar6 = local_3c;
            if (0xfff < uVar10) {
              uVar6 = *(uint *)(local_3c - 4);
              uVar10 = (int)local_28 + 0x24;
              if (0x1f < (local_3c - uVar6) - 4) goto LAB_004e30c8;
            }
            FUN_00aef15c(uVar6,uVar10);
          }
          local_14 = -1;
          local_2c = 0.0;
          local_28 = 2.101948e-44;
          local_3c = local_3c & 0xffffff00;
          if (0xf < local_40) {
            uVar6 = local_40 + 1;
            iVar5 = local_54;
            if (0xfff < uVar6) {
              iVar5 = *(int *)(local_54 + -4);
              uVar6 = local_40 + 0x24;
              if (0x1f < (local_54 - iVar5) - 4U) {
LAB_004e30c8:
                    /* WARNING: Subroutine does not return */
                _invalid_parameter_noinfo_noreturn();
              }
            }
            FUN_00aef15c(iVar5,uVar6);
          }
          *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
          iVar5 = FUN_006eef60();
          fVar13 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4
                   - DAT_00baa2d0;
          local_5c = fVar13 + fVar13 + *(float *)(param_1 + 0xbb0);
          *(float *)(param_1 + 0xbb0) = local_5c;
          local_28 = *(float *)(param_1 + 0x360);
          FUN_00499d60();
          FUN_00682a50();
          *(float *)(param_1 + 0xbb0) = local_5c;
          fVar13 = local_5c * DAT_00baa088;
          local_5c = fVar13;
          FUN_0041d540();
          local_68 = fVar13;
          fVar13 = local_5c;
          FUN_0041d520();
          *(float *)(param_1 + 0x360) =
               local_68 * DAT_00baa4b0 * *(float *)(param_1 + 0x39c) + local_28;
          *(float *)(param_1 + 0x364) =
               fVar13 * DAT_00baa4b0 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
          if (*(char *)(param_1 + 400) != '\0') {
            fVar12 = *(float *)(param_1 + 0x1a0);
            fVar13 = fVar13 - (fVar12 + fVar12) *
                              (fVar12 * fVar13 + *(float *)(param_1 + 0x19c) * local_68);
            FUN_00499d60();
            *(float *)(param_1 + 0xbb0) = fVar13 * DAT_00baa948;
          }
          if (*(int *)(param_1 + 0xba0) < 1) {
            uVar6 = FUN_006eef60();
            fVar13 = local_60;
            if ((uVar6 & 3) == 0) {
              iVar5 = FUN_006d0c60(local_34,0x355,0xffffffff);
              fVar13 = 1.401298e-45;
              if (0xf < *(uint *)(iVar5 + 0xc)) goto LAB_004e3287;
              local_55 = '\x01';
            }
            else {
LAB_004e3287:
              local_55 = '\0';
            }
            if (((uint)fVar13 & 1) != 0) {
              FUN_004175b0();
            }
            if (local_55 != '\0') {
              pfVar8 = (float *)FUN_0067f070(&local_2c);
              iVar5 = FUN_006eef60();
              fVar13 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                       DAT_00ba9ff4;
              local_64 = fVar13 + fVar13 + DAT_00baa630;
              local_60 = local_64 * pfVar8[1];
              local_64 = local_64 * *pfVar8;
              FUN_004d8b50(&local_64,0xc1000000);
              local_5c = 2.494311e-43;
              FUN_00956780();
              FUN_0092dc30(local_5c,0x3f800000,2,0,0x3f800000,0);
            }
            goto LAB_004e33bd;
          }
          *(int *)(param_1 + 0xba0) = *(int *)(param_1 + 0xba0) - iVar11;
        }
      }
      uVar4 = FUN_006eef60(uVar4);
      if (uVar4 % 10 == 0) {
        iVar5 = FUN_006eef60();
        piVar7 = (int *)FUN_006b64d0((float)((double)iVar5 +
                                            (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                                     DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa280);
        (**(code **)(*piVar7 + 0x3c))(&DAT_00c5c768,0xffffffff,0xff,0,1);
      }
      uVar4 = FUN_006eef60();
      if ((uVar4 % 0x14 == 0) && (iVar5 = FUN_006ac760(), iVar5 != 0)) {
        uVar9 = FUN_006eef60();
        piVar7 = (int *)FUN_00428b20(1000,0x3f,param_1 + 0x33c,&DAT_00c7b640,0,0,uVar9);
        (**(code **)(*piVar7 + 0xc))();
      }
      goto LAB_004e2e2a;
    }
    if (iVar5 == 0) {
      cVar3 = FUN_0040aaf0(&DAT_00b5fed4,1);
      if ((cVar3 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
        FUN_00408e00();
      }
      cVar3 = FUN_0040a5d0("WalkVert",1);
      if (((cVar3 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
         (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
        *(undefined *)(param_1 + 0x8c) = 0;
      }
      *(undefined4 *)(param_1 + 0xb64) = 4;
      uVar2 = uRam00c5c774;
      uVar1 = uRam00c5c770;
      uVar9 = uRam00c5c76c;
      if ((undefined4 *)(param_1 + 0x1e4) != (undefined4 *)&DAT_00c5c768) {
        *(undefined4 *)(param_1 + 0x1e4) = _DAT_00c5c768;
        *(undefined4 *)(param_1 + 0x1e8) = uVar9;
        *(undefined4 *)(param_1 + 0x1ec) = uVar1;
        *(undefined4 *)(param_1 + 0x1f0) = uVar2;
        uVar2 = uRam00c5c784;
        uVar1 = uRam00c5c780;
        uVar9 = uRam00c5c77c;
        *(undefined4 *)(param_1 + 500) = _DAT_00c5c778;
        *(undefined4 *)(param_1 + 0x1f8) = uVar9;
        *(undefined4 *)(param_1 + 0x1fc) = uVar1;
        *(undefined4 *)(param_1 + 0x200) = uVar2;
        *(undefined8 *)(param_1 + 0x204) = DAT_00c5c788;
        *(undefined4 *)(param_1 + 0x20c) = DAT_00c5c790;
      }
    }
    else {
      puStack_20 = &stack0xfffffffc;
      if (iVar5 == 4) {
        local_40 = 0xf;
        local_44 = 8;
        local_54 = s_WalkVert_00b1dd18._0_4_;
        local_50 = s_WalkVert_00b1dd18._4_4_;
        local_4c = 0;
        local_28 = 2.101948e-44;
        local_2c = 1.121039e-44;
        local_3c = s_WalkHori_00b1dd30._0_4_;
        local_38 = s_WalkHori_00b1dd30._4_4_;
        local_34[0] = 0;
        local_14._0_1_ = 3;
        local_14._1_3_ = 0;
        puStack_20 = &stack0xfffffffc;
        FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
        local_14 = CONCAT31(local_14._1_3_,2);
        if (0xf < (uint)local_28) {
          uVar10 = (int)local_28 + 1;
          uVar6 = local_3c;
          if (0xfff < uVar10) {
            uVar6 = *(uint *)(local_3c - 4);
            uVar10 = (int)local_28 + 0x24;
            if (0x1f < (local_3c - uVar6) - 4) goto LAB_004e3582;
          }
          FUN_00aef15c(uVar6,uVar10);
        }
        local_14 = -1;
        local_2c = 0.0;
        local_28 = 2.101948e-44;
        local_3c = local_3c & 0xffffff00;
        if (0xf < local_40) {
          uVar6 = local_40 + 1;
          iVar5 = local_54;
          if (0xfff < uVar6) {
            iVar5 = *(int *)(local_54 + -4);
            uVar6 = local_40 + 0x24;
            if (0x1f < (local_54 - iVar5) - 4U) {
LAB_004e3582:
                    /* WARNING: Subroutine does not return */
              _invalid_parameter_noinfo_noreturn();
            }
          }
          FUN_00aef15c(iVar5,uVar6);
        }
        if (((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) &&
           (*(int *)(param_1 + 0x9c) != 0)) {
          FUN_00408e00();
        }
        local_55 = *(char *)(param_1 + 0x148);
        iVar5 = FUN_0040b220(1);
        *(char *)(iVar5 + 0x32) = local_55;
        *(undefined4 *)(param_1 + 0xc34) = 0x3f19999a;
        FUN_006bec40(&local_2c,0);
        cVar3 = FUN_00417430(0x1000800,0);
        if (cVar3 == '\0') {
          uVar9 = 900;
          if (*(int *)(param_1 + 0x30) == 2) {
            uVar9 = 0xffffffff;
          }
          FUN_007e33c0(&local_2c,*(undefined4 *)(param_1 + 0xc34),uVar9,1);
        }
        else {
          iVar5 = FUN_006be840();
          local_64 = *(float *)(iVar5 + 0x33c);
          local_60 = *(float *)(iVar5 + 0x340);
          FUN_007e4940(&local_64,0);
          *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
        }
        if (*(int *)(param_1 + 0xf1c) == -1) {
          uVar9 = FUN_006be840();
          cVar3 = FUN_006d7d60(uVar9);
          if (((cVar3 != '\0') && (*(char *)(param_1 + 0xb40) != '\0')) &&
             (uVar6 = FUN_006eef60(), uVar6 % 3 == 0)) goto LAB_004e36d6;
        }
        else {
          cVar3 = FUN_006d8290(10);
          if (cVar3 != '\0') {
LAB_004e36d6:
            FUN_006d6ba0(0xa5,0x3f800000,0x28,0,0x3f666666);
          }
        }
      }
    }
    if ((*(char *)(param_1 + 0x173) != '\0') && (*(int *)(param_1 + 0x2c) == 0)) {
      FUN_006c0f30(*(undefined4 *)(param_1 + 0x28),2,0,0xffffffff);
      FUN_0040a940("Blood",0);
      *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
      *(undefined *)(param_1 + 0xb8) = 1;
      *(undefined *)(param_1 + 0x173) = 0;
      iVar5 = FUN_006bec40(&local_64,0);
      fVar13 = *(float *)(param_1 + 0x340) - *(float *)(iVar5 + 4);
      FUN_00499d60();
      *(float *)(param_1 + 0xbb0) = fVar13 * DAT_00baa948;
      uVar9 = FUN_006eef60();
      local_6c = *(float *)(param_1 + 0x33c) + 0.0;
      local_68 = *(float *)(param_1 + 0x340) - DAT_00baa81c;
      piVar7 = (int *)FUN_00428b20(*(undefined4 *)(param_1 + 0x28),1,&local_6c,&DAT_00c7b640,param_1
                                   ,0,uVar9);
      if (*(char *)(param_1 + 0xc63) != '\0') {
        FUN_006d03e0(*(undefined4 *)(param_1 + 0x3ec),*(undefined4 *)(param_1 + 0xc64),0);
      }
      piVar7[0x5a] = piVar7[0x5a] & 0xfffffffb;
      piVar7[0x5b] = piVar7[0x5b];
      (**(code **)(*piVar7 + 0xc))();
      goto LAB_004e2e2a;
    }
  }
  uVar6 = FUN_006eef60(uVar4);
  if (uVar6 % 10 == 0) {
    iVar5 = FUN_006eef60(uVar4);
    piVar7 = (int *)FUN_006b64d0((float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)])
                                 * DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa280);
    (**(code **)(*piVar7 + 0x3c))(&DAT_00c5c768,0xffffffff,0xff,0,1);
  }
LAB_004e2e2a:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

