/* Local J460 decompiler output.
 * VA: 0x005522d0
 * Entry: 005522d0
 * Dispatcher: 0x006c2990
 * Types: 888
 * Identities: 888.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00552d30; instructions=596
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=888; identities=888.0.0; dispatcher=0x006c2990;
   end=0x00552d30; instructions=596 */

void __fastcall AI_005522d0(int param_1)

{
  int *piVar1;
  undefined auVar2 [16];
  char cVar3;
  float *pfVar4;
  int iVar5;
  float *pfVar6;
  undefined4 uVar7;
  uint uVar8;
  int iVar9;
  float fVar10;
  float fVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  float fStack_120;
  float fStack_11c;
  float fStack_118;
  undefined4 uStack_114;
  int *piStack_110;
  float fStack_10c;
  float fStack_108;
  undefined auStack_104 [12];
  undefined4 uStack_f8;
  undefined4 uStack_f0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined auStack_48 [4];
  undefined8 uStack_44;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  uint uStack_30;
  ulonglong uStack_2c;
  ushort uStack_24;
  undefined uStack_22;
  undefined4 uStack_1c;
  uint uStack_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 uStack_8;
  
  auVar2 = _auStack_48;
  uStack_8 = -1;
  puStack_c = &LAB_00af4b85;
  local_10 = ExceptionList;
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)(param_1 + 0xb64) = 4;
    FUN_0040a380("WalkVert",0);
    uStack_58 = _DAT_00babf20;
    uStack_54 = _UNK_00babf24;
    uStack_50 = _UNK_00babf28;
    uStack_4c = _UNK_00babf2c;
    uStack_38 = 0;
    _auStack_48 = ZEXT816(0);
    uStack_34 = 0;
    uStack_30 = 0;
    FUN_004071f0(&uStack_58);
    break;
  case 4:
    uStack_30 = 0xf;
    uStack_34 = 8;
    uStack_44._0_4_ = s_WalkVert_00b1dd18._0_4_;
    uStack_44._4_4_ = s_WalkVert_00b1dd18._4_4_;
    uStack_3c._1_3_ = auVar2._13_3_;
    uStack_3c._0_1_ = 0;
    uStack_18 = 0xf;
    uStack_1c = 8;
    uStack_2c = CONCAT44(s_WalkHori_00b1dd30._4_4_,s_WalkHori_00b1dd30._0_4_);
    uStack_24 = uStack_24 & 0xff00;
    uStack_8._0_1_ = 1;
    uStack_8._1_3_ = 0;
    FUN_006c1330(&uStack_2c,auStack_48 + 4,0x3dcccccd);
    uStack_8 = (uint)uStack_8._1_3_ << 8;
    if (0xf < uStack_18) {
      uVar8 = uStack_18 + 1;
      iVar5 = (int)uStack_2c;
      if (0xfff < uVar8) {
        iVar5 = *(int *)((int)uStack_2c + -4);
        uVar8 = uStack_18 + 0x24;
        if (0x1f < ((int)uStack_2c - iVar5) - 4U) goto LAB_0055244c;
      }
      FUN_00aef15c(iVar5,uVar8);
    }
    uStack_8 = -1;
    uStack_1c = 0;
    uStack_18 = 0xf;
    uStack_2c = uStack_2c & 0xffffffffffffff00;
    if (0xf < uStack_30) {
      uVar8 = uStack_30 + 1;
      iVar5 = (int)uStack_44;
      if (0xfff < uVar8) {
        iVar5 = *(int *)((int)uStack_44 + -4);
        uVar8 = uStack_30 + 0x24;
        if (0x1f < ((int)uStack_44 - iVar5) - 4U) {
LAB_0055244c:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar5,uVar8);
    }
    if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
      uVar14 = 1;
      uVar13 = 900;
      uVar12 = 0x3e99999a;
      uVar7 = FUN_006bec40(&fStack_10c,0);
      FUN_007e33c0(uVar7,uVar12,uVar13,uVar14);
      if (0 < *(int *)(param_1 + 0xba0)) {
        *(int *)(param_1 + 0xba0) =
             *(int *)(param_1 + 0xba0) -
             ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
      }
      if (0 < *(int *)(param_1 + 0xba4)) {
        *(int *)(param_1 + 0xba4) =
             *(int *)(param_1 + 0xba4) -
             ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
      }
      iVar5 = FUN_006be840();
      piStack_110 = *(int **)(iVar5 + 0x33c);
      fStack_118 = *(float *)(iVar5 + 0x340);
      if (*(int *)(param_1 + 0xba0) < 1) {
        if (*(int *)(param_1 + 0xf1c) == -1) {
          fVar10 = *(float *)(param_1 + 0x33c) - (float)piStack_110;
          fVar11 = *(float *)(param_1 + 0x340) - fStack_118;
          fVar11 = fVar11 * fVar11 + fVar10 * fVar10;
          FUN_00435a50();
          if (((fVar11 < DAT_00baaa00) && (uVar8 = FUN_006eef60(), uVar8 % 10 == 0)) ||
             (uVar8 = FUN_006eef60(), uVar8 % 0x28 == 0)) goto LAB_0055263d;
        }
        else {
          cVar3 = FUN_006d8260(9);
          if (cVar3 != '\0') {
LAB_0055263d:
            FUN_0040a380(&DAT_00b1d560,0);
            *(undefined4 *)(param_1 + 0xb64) = 8;
            fStack_10c = (float)piStack_110 - *(float *)(param_1 + 0x33c);
            fStack_108 = fStack_118 - *(float *)(param_1 + 0x340);
            pfVar4 = (float *)FUN_00a10030(&fStack_120);
            pfVar6 = (float *)(param_1 + 0x334);
            fVar11 = pfVar4[1] * DAT_00baa834;
            *pfVar6 = *pfVar4 * DAT_00baa834;
            *(float *)(param_1 + 0x338) = fVar11;
            if (*(int *)(param_1 + 0xf1c) != -1) {
              pfVar4 = (float *)FUN_006d85a0(&fStack_10c);
              fVar11 = *pfVar4 * DAT_00baa834;
              *(float *)(param_1 + 0x338) = pfVar4[1] * DAT_00baa834;
              *pfVar6 = fVar11;
              cVar3 = FUN_00a10600(&DAT_00c7b640);
              if (cVar3 != '\0') {
                pfVar4 = (float *)FUN_006d82d0(&fStack_10c);
                fVar11 = pfVar4[1] * DAT_00baa834;
                *pfVar6 = *pfVar4 * DAT_00baa834;
                *(float *)(param_1 + 0x338) = fVar11;
              }
            }
            *(undefined4 *)(param_1 + 0xba0) = 0x78;
            goto LAB_0055286f;
          }
        }
      }
      if (*(int *)(param_1 + 0xba4) < 1) {
        if (*(int *)(param_1 + 0xf1c) == -1) {
          uVar8 = FUN_006eef60();
          cVar3 = uVar8 % 10 == 0;
        }
        else {
          cVar3 = FUN_006cae60(0,7);
        }
        auVar2 = _auStack_48;
        if (cVar3 != '\0') {
          uStack_30 = 0xf;
          uStack_34 = 10;
          uStack_44._0_1_ = s_AttackVert_00b60808[0];
          uStack_44._1_1_ = s_AttackVert_00b60808[1];
          uStack_44._2_1_ = s_AttackVert_00b60808[2];
          uStack_44._3_1_ = s_AttackVert_00b60808[3];
          uStack_44._4_1_ = s_AttackVert_00b60808[4];
          uStack_44._5_1_ = s_AttackVert_00b60808[5];
          uStack_44._6_1_ = s_AttackVert_00b60808[6];
          uStack_44._7_1_ = s_AttackVert_00b60808[7];
          uStack_3c._0_1_ = s_AttackVert_00b60808[8];
          uStack_3c._1_1_ = s_AttackVert_00b60808[9];
          uStack_3c._3_1_ = auVar2[0xf];
          uStack_3c._2_1_ = 0;
          uStack_24._0_1_ = s_AttackHori_00b60744[8];
          uStack_24._1_1_ = s_AttackHori_00b60744[9];
          uStack_18 = 0xf;
          uStack_1c = 10;
          uStack_2c._0_1_ = s_AttackHori_00b60744[0];
          uStack_2c._1_1_ = s_AttackHori_00b60744[1];
          uStack_2c._2_1_ = s_AttackHori_00b60744[2];
          uStack_2c._3_1_ = s_AttackHori_00b60744[3];
          uStack_2c._4_1_ = s_AttackHori_00b60744[4];
          uStack_2c._5_1_ = s_AttackHori_00b60744[5];
          uStack_2c._6_1_ = s_AttackHori_00b60744[6];
          uStack_2c._7_1_ = s_AttackHori_00b60744[7];
          uStack_22 = 0;
          uStack_8._0_1_ = 3;
          uStack_8._1_3_ = 0;
          FUN_006c1330(&uStack_2c,auStack_48 + 4,0);
          uStack_8 = CONCAT31(uStack_8._1_3_,2);
          if (0xf < uStack_18) {
            uVar8 = uStack_18 + 1;
            iVar5 = (int)uStack_2c;
            if (0xfff < uVar8) {
              iVar5 = *(int *)((int)uStack_2c + -4);
              uVar8 = uStack_18 + 0x24;
              if (0x1f < ((int)uStack_2c - iVar5) - 4U) goto LAB_0055284b;
            }
            FUN_00aef15c(iVar5,uVar8);
          }
          uStack_8 = -1;
          uStack_1c = 0;
          uStack_18 = 0xf;
          uStack_2c = uStack_2c & 0xffffffffffffff00;
          if (0xf < uStack_30) {
            uVar8 = uStack_30 + 1;
            iVar5 = (int)uStack_44;
            if (0xfff < uVar8) {
              iVar5 = *(int *)((int)uStack_44 + -4);
              uVar8 = uStack_30 + 0x24;
              if (0x1f < ((int)uStack_44 - iVar5) - 4U) {
LAB_0055284b:
                    /* WARNING: Subroutine does not return */
                _invalid_parameter_noinfo_noreturn();
              }
            }
            FUN_00aef15c(iVar5,uVar8);
          }
          *(undefined4 *)(param_1 + 0xb64) = 9;
          *(undefined4 *)(param_1 + 0xba4) = 100;
        }
      }
    }
    else {
      iVar5 = FUN_006be840();
      fStack_10c = *(float *)(iVar5 + 0x33c);
      fStack_108 = *(float *)(iVar5 + 0x340);
      FUN_007e4940(&fStack_10c,0);
      fVar11 = DAT_00baa3a4;
      fVar10 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
      *(float *)(param_1 + 0x36c) = fVar10;
      if (0 < *(int *)(param_1 + 0xb50)) {
        *(float *)(param_1 + 0x36c) = fVar10 * fVar11;
      }
    }
LAB_0055286f:
    if ((*(char *)(param_1 + 0xb40) != '\0') && (uVar8 = FUN_006eef60(), uVar8 % 3 == 0)) {
      FUN_006d6ba0(0x74,0x3f800000,0x3c,0,0x3f800000);
    }
    break;
  case 8:
    fVar11 = (float)(param_1 + 0x78);
    fStack_118 = fVar11;
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar3 = FUN_0040add0(&DAT_00b1d560);
      if (cVar3 != '\0') {
        FUN_006d6ba0(0xf9,0x3f800000,10,0,0x3f800000);
        *(float *)(param_1 + 0x360) =
             *(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0x334) + *(float *)(param_1 + 0x360)
        ;
        *(float *)(param_1 + 0x364) =
             *(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0x338) + *(float *)(param_1 + 0x364)
        ;
        *(float *)(param_1 + 0x334) = DAT_00c7b640;
        *(float *)(param_1 + 0x338) = DAT_00c7b644;
        fStack_118 = fVar11;
      }
      if (*(int *)(param_1 + 0x7c) != 0) {
        cVar3 = FUN_0040add0("Shoot");
        if (cVar3 != '\0') {
          piStack_110 = (int *)0x34;
          FUN_00956780();
          FUN_0092dc30(piStack_110,0x3f800000,0x14,0,0x3f800000,0);
          FUN_00703670(0xe);
          FUN_00703770(param_1 + 0x33c,0x3d0f5c29,0x3cf5c28f,10);
          uVar7 = FUN_00407170();
          FUN_006b66c0(param_1 + 0x33c,uVar7);
          iVar5 = 0;
          do {
            uVar7 = FUN_006eef60();
            fStack_108 = (float)FUN_00428b20(1000,0x48,param_1 + 0x33c,&DAT_00c7b640,param_1,10,
                                             uVar7);
            piVar1 = (int *)((int)fStack_108 + 0x3bc);
            if (*(int *)((int)fStack_108 + 0x3bc) != 0) {
              piStack_110 = piVar1;
              FUN_004cf210(&piStack_110);
            }
            *piVar1 = param_1;
            FUN_004cdcf0(piVar1);
            iVar9 = iVar5 + 1;
            *(float *)((int)fStack_108 + 0x474) = (float)iVar5 * DAT_00baa9b4;
            iVar5 = iVar9;
          } while (iVar9 < 4);
        }
        if ((*(int *)(param_1 + 0x7c) != 0) && (cVar3 = FUN_0040ae70("Shoot"), cVar3 != '\0'))
        goto LAB_00552cbe;
      }
    }
    if (((NAN(*(float *)(param_1 + 0x334)) || NAN(DAT_00c7b640)) ==
         (*(float *)(param_1 + 0x334) == DAT_00c7b640)) ||
       ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) ==
        (*(float *)(param_1 + 0x338) == DAT_00c7b644))) {
      fVar11 = DAT_00baa304 * *(float *)(param_1 + 0x36c);
    }
    else {
      fVar11 = DAT_00baa3e0 * *(float *)(param_1 + 0x36c);
    }
    goto LAB_00552cce;
  case 9:
    if ((*(int *)(param_1 + 0x7c) != 0) && (cVar3 = FUN_0040add0("Shoot"), cVar3 != '\0')) {
      piStack_110 = (int *)0xd5;
      FUN_00956780();
      FUN_0092dc30(piStack_110,0x3f800000,2,0,0x3f800000,0);
      iVar5 = FUN_006be840();
      fStack_10c = *(float *)(iVar5 + 0x33c) - *(float *)(param_1 + 0x33c);
      fStack_108 = *(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340);
      pfVar6 = (float *)FUN_00a10030(&uStack_114);
      fStack_11c = pfVar6[1] * DAT_00baa81c;
      fStack_120 = *pfVar6 * DAT_00baa81c;
      fStack_108 = fStack_11c * DAT_00baa280;
      fStack_10c = fStack_120 * DAT_00baa280;
      uVar7 = FUN_00407170();
      uStack_114 = 0;
      piStack_110 = (int *)&DAT_c1c80000;
      FUN_006d7cf0(&uStack_114,uVar7,&fStack_10c);
      AI_0043ef30();
      _auStack_48 = ZEXT816(0);
      uStack_f0 = 0x40000000;
      uStack_f8 = 0xbda3d70a;
      uStack_ac = 0;
      uStack_a8 = 0x800000;
      uStack_58 = _DAT_00baca00;
      uStack_54 = _UNK_00baca04;
      uStack_50 = _UNK_00baca08;
      uStack_4c = _UNK_00baca0c;
      uStack_38 = 0x3f800000;
      uStack_34 = 0;
      uStack_30 = 0;
      FUN_004071f0(&uStack_58);
      FUN_006cb2e0((float *)(param_1 + 0x33c),&fStack_120,0,auStack_104);
    }
LAB_00552cbe:
    fVar11 = *(float *)(param_1 + 0x36c) * DAT_00baa304;
LAB_00552cce:
    *(float *)(param_1 + 0x36c) = fVar11;
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
  }
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

