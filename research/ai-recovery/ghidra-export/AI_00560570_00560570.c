/* Local J460 decompiler output.
 * VA: 0x00560570
 * Entry: 00560570
 * Dispatcher: 0x006c2990
 * Types: 811
 * Identities: 811.0.0,811.0.1,811.0.2,811.0.3,811.0.4,811.0.5,811.0.6
 * Evidence: dispatcher=0x006c2990; end=0x00560ca0; instructions=437
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=811;
   identities=811.0.0,811.0.1,811.0.2,811.0.3,811.0.4,811.0.5,811.0.6; dispatcher=0x006c2990;
   end=0x00560ca0; instructions=437 */

void __fastcall AI_00560570(int param_1)

{
  char cVar1;
  uint uVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined local_50 [8];
  undefined4 uStack_48;
  int iStack_44;
  undefined4 uStack_40;
  undefined uStack_3c;
  undefined4 uStack_34;
  uint uStack_30;
  uint uStack_2c;
  undefined4 uStack_28;
  uint uStack_24;
  undefined8 uStack_20;
  uint uStack_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 uStack_8;
  
  uStack_8 = -1;
  puStack_c = &LAB_00af4db5;
  local_10 = ExceptionList;
  uVar2 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  local_14 = uVar2;
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    if (*(int *)(param_1 + 0x30) == 0) {
      uStack_24 = *(uint *)(param_1 + 0x3ec);
      uStack_20 = DAT_00b1f4d4;
      uStack_18 = DAT_00b1f4dc;
      iVar4 = FUN_007e9020(3);
      if (iVar4 == 0) {
        iVar4 = FUN_007e9020(6);
        FUN_006c0f30(*(undefined4 *)(param_1 + 0x28),*(undefined4 *)(param_1 + 0x2c),iVar4 + 1,
                     0xffffffff);
      }
    }
    if ((**(char **)(DAT_00c71678 + 0x18300) == '\0') ||
       (*(int *)(DAT_00c71678 + 0x264f8) != *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0)))
    {
      *(undefined4 *)(param_1 + 0xb64) = 4;
      FUN_0040a6e0("WalkVert",0);
      FUN_0040a940(&DAT_00b5fed4,0);
      *(undefined4 *)(param_1 + 0x188) = 4;
    }
    else {
      *(undefined4 *)(param_1 + 0x188) = 0;
      *(undefined *)(param_1 + 0x171) = 0;
      *(undefined *)(param_1 + 0xc3c) = 0;
      *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
      *(undefined4 *)(param_1 + 0xb64) = 3;
      *(undefined *)(param_1 + 0x3b0) = 1;
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb | 0x11;
      *(undefined4 *)(param_1 + 0xbc0) = *(undefined4 *)(param_1 + 0xc64);
      *(undefined4 *)(param_1 + 0xc64) = 0xffffffff;
    }
    break;
  case 3:
    if (*(int *)(param_1 + 0xf1c) != -1) {
      FUN_007e33c0(&DAT_00c7b640,0x3f800000,0,1);
      FUN_006d8b20(2);
    }
    if (*(char *)(param_1 + 0xc3c) == '\0') {
      if ((((*(uint *)(param_1 + 0x168) & 0x20000000) != 0) ||
          ((iVar4 = FUN_006d6c20(uVar2), iVar4 < 1 &&
           (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11ec) < 9)))) ||
         (iVar4 = FUN_00740db0(), (*(uint *)(iVar4 + 0x44) >> 1 & 1) != 0)) {
        *(undefined *)(param_1 + 0xc3c) = 1;
        *(undefined4 *)(param_1 + 0x410) = 0;
      }
      break;
    }
    if (*(int *)(param_1 + 0xf1c) != -1) {
      FUN_006d8e40(1);
    }
    uVar5 = 4;
    cVar1 = FUN_006ac710(4,0);
    if (cVar1 == '\0') {
LAB_00560795:
      if (*(int *)(param_1 + 0xf1c) != -1) {
        uVar9 = 9;
        uVar5 = 0x5607ab;
        cVar1 = FUN_006d8260(9);
        if ((cVar1 != '\0') || (0x5a < *(int *)(param_1 + 0x410))) goto LAB_005607bc;
      }
    }
    else {
      uVar9 = 0x560788;
      uVar2 = FUN_006eef60();
      if (((uVar2 & 7) != 0) && (*(int *)(param_1 + 0x410) < 0x5b)) goto LAB_00560795;
LAB_005607bc:
      cVar1 = FUN_006b9740(param_1 + 0x33c,uVar5,uVar9);
      if (cVar1 == '\0') {
        if (*(char *)(param_1 + 0xef5) != '\0') {
          *(undefined4 *)(param_1 + 0xea0) = 0;
        }
        *(undefined4 *)(param_1 + 0xb64) = 8;
        FUN_0040a380((&PTR_s_Ambush1_00b61908)[*(uint *)(param_1 + 0x3ec) & 1],0);
        *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xffffffee;
        *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
        *(undefined *)(param_1 + 0x171) = 1;
        *(undefined *)(param_1 + 0x3b0) = 0;
        *(undefined4 *)(param_1 + 0xc64) = *(undefined4 *)(param_1 + 0xbc0);
        FUN_007eb870();
      }
    }
    *(int *)(param_1 + 0x410) =
         *(int *)(param_1 + 0x410) +
         ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
    break;
  case 4:
    uStack_30 = 0xf;
    uStack_34 = 8;
    iStack_44 = s_WalkVert_00b1dd18._0_4_;
    uStack_40 = s_WalkVert_00b1dd18._4_4_;
    uStack_3c = 0;
    uStack_18 = 0xf;
    uStack_20 = CONCAT44(8,(undefined4)uStack_20);
    uStack_2c = s_WalkHori_00b1dd30._0_4_;
    uStack_28 = s_WalkHori_00b1dd30._4_4_;
    uStack_24 = uStack_24 & 0xffffff00;
    uStack_8._0_1_ = 1;
    uStack_8._1_3_ = 0;
    FUN_006c1330(&uStack_2c,&iStack_44,0x3dcccccd);
    uStack_8 = (uint)uStack_8._1_3_ << 8;
    if (0xf < uStack_18) {
      uVar6 = uStack_18 + 1;
      uVar2 = uStack_2c;
      if (0xfff < uVar6) {
        uVar2 = *(uint *)(uStack_2c - 4);
        uVar6 = uStack_18 + 0x24;
        if (0x1f < (uStack_2c - uVar2) - 4) goto LAB_00560a99;
      }
      FUN_00aef15c(uVar2,uVar6);
    }
    uStack_8 = -1;
    uStack_20 = uStack_20 & 0xffffffff;
    uStack_18 = 0xf;
    uStack_2c = uStack_2c & 0xffffff00;
    if (0xf < uStack_30) {
      uVar2 = uStack_30 + 1;
      iVar4 = iStack_44;
      if (0xfff < uVar2) {
        iVar4 = *(int *)(iStack_44 + -4);
        uVar2 = uStack_30 + 0x24;
        if (0x1f < (iStack_44 - iVar4) - 4U) {
LAB_00560a99:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar4,uVar2);
    }
    if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
      uVar8 = 1;
      uVar7 = 900;
      uVar9 = 0x3f19999a;
      uVar5 = FUN_006bec40((int)&uStack_20 + 4,0);
      FUN_007e33c0(uVar5,uVar9,uVar7,uVar8);
    }
    else {
      iVar4 = FUN_006be840();
      uStack_18 = *(uint *)(iVar4 + 0x340);
      uStack_20 = CONCAT44(*(undefined4 *)(iVar4 + 0x33c),(undefined4)uStack_20);
      FUN_007e4940((int)&uStack_20 + 4,0);
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar5 = FUN_006be840();
      cVar1 = FUN_006d7d60(uVar5);
      if (((cVar1 == '\0') || (*(char *)(param_1 + 0xb40) == '\0')) ||
         (uVar2 = FUN_006eef60(), uVar2 % 3 != 0)) break;
    }
    else {
      cVar1 = FUN_006d8260(10);
      if (cVar1 == '\0') break;
    }
    uStack_48 = DAT_00baa454;
    uVar5 = DAT_00baa528;
    if ((*(int *)(param_1 + 0xc64) == 0x12) ||
       (uVar5 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
      uStack_48 = uVar5;
    }
    uStack_18 = 0xa5;
    FUN_00956780();
    FUN_0092dc30(uStack_18,0x3f800000,0x28,0,uStack_48,0);
    break;
  case 8:
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar1 = FUN_0040add0("Splash");
      if (cVar1 != '\0') {
        uVar5 = FUN_006eef60();
        piVar3 = (int *)FUN_00428b20(1000,0x84,param_1 + 0x33c,&DAT_00c7b640,0,0,uVar5);
        (**(code **)(*piVar3 + 0xc))();
        uStack_18 = 0x1da;
        FUN_00956780();
        uStack_48 = DAT_00baa454;
        FUN_0092dc30(uStack_18,0x3f800000,10,0,0x3f800000,0);
        uVar5 = DAT_00baa528;
        if ((*(int *)(param_1 + 0xc64) == 0x12) ||
           (uVar5 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
          uStack_48 = uVar5;
        }
        uStack_18 = 0xa5;
        FUN_00956780();
        FUN_0092dc30(uStack_18,0x3f800000,0x28,0,uStack_48,0);
        *(undefined4 *)(param_1 + 0x188) = 4;
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) break;
    }
    *(undefined4 *)(param_1 + 0xb64) = 4;
    FUN_0040a6e0("WalkVert",0);
    FUN_0040a940(&DAT_00b5fed4,0);
  }
  if ((*(char *)(param_1 + 0x173) != '\0') && (*(int *)(param_1 + 0x30) == 6)) {
    uVar9 = 0;
    uVar5 = FUN_00813520(local_50,param_1 + 0x33c,0x42a00000,1,
                         0.0 < *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7240),0);
    FUN_0055c4c0(uVar5,uVar9);
  }
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

