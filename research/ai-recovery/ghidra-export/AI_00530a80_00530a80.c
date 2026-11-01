/* Local J460 decompiler output.
 * VA: 0x00530a80
 * Entry: 00530a80
 * Dispatcher: 0x006c2990
 * Types: 209
 * Identities: 209.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00531350; instructions=499
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=209; identities=209.0.0; dispatcher=0x006c2990;
   end=0x00531350; instructions=499 */

void __fastcall AI_00530a80(int param_1)

{
  undefined *puVar1;
  char cVar2;
  uint uVar3;
  uint uVar4;
  float *pfVar5;
  int iVar6;
  undefined4 uVar7;
  int iVar8;
  float *pfVar9;
  float fVar10;
  float fVar11;
  undefined4 uVar12;
  TypeDescriptor *pTVar13;
  TypeDescriptor *pTVar14;
  undefined4 uVar15;
  float local_11c;
  float local_118;
  float local_114;
  float local_110;
  float local_10c;
  undefined4 local_108;
  float local_104 [44];
  undefined4 local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined local_34;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af4745;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar3;
  puVar1 = &stack0xfffffffc;
  if (*(int *)(param_1 + 0xb64) != 0) {
    if (*(char *)(param_1 + 0x173) != '\0') {
      puStack_20 = &stack0xfffffffc;
      if (DAT_00baae00 < *(float *)(param_1 + 0x380)) {
        puStack_20 = &stack0xfffffffc;
        uVar4 = FUN_006eef60(uVar3);
        if (uVar4 % 3 == 0) {
          *(undefined4 *)(param_1 + 0x188) = 4;
          *(undefined4 *)(param_1 + 0x184) = 5;
          FUN_006c0f30(0xd2,0,0,0xffffffff);
          *(undefined *)(param_1 + 0x173) = 0;
          *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
          uVar3 = FUN_006eef60(uVar3);
          *(uint *)(param_1 + 0xba0) = uVar3 % 0x14 + 0x14;
        }
      }
      goto LAB_0053132b;
    }
    fVar11 = DAT_00baa454;
    puVar1 = &stack0xfffffffc;
    if (*(int *)(param_1 + 0xf1c) != -1) {
      pfVar5 = (float *)FUN_006d82d0(&local_108);
      fVar11 = DAT_00baa454;
      puVar1 = puStack_20;
      if (((NAN(*pfVar5) || NAN(DAT_00c7b640)) == (*pfVar5 == DAT_00c7b640)) ||
         ((NAN(pfVar5[1]) || NAN(DAT_00c7b644)) == (pfVar5[1] == DAT_00c7b644))) {
        local_10c = *(float *)(param_1 + 3000) + DAT_00baa454;
        local_104[0] = 30.0;
        pfVar5 = local_104;
        if (local_10c <= DAT_00baa8d0) {
          pfVar5 = &local_10c;
        }
        *(float *)(param_1 + 3000) = *pfVar5;
      }
      else {
        *(undefined4 *)(param_1 + 3000) = 0;
      }
    }
    puStack_20 = puVar1;
    if (*(int *)(param_1 + 0xb64) == 4) {
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
      local_28 = 0xf;
      local_2c = 8;
      local_3c._0_1_ = s_WalkHori_00b1dd30[0];
      local_3c._1_1_ = s_WalkHori_00b1dd30[1];
      local_3c._2_1_ = s_WalkHori_00b1dd30[2];
      local_3c._3_1_ = s_WalkHori_00b1dd30[3];
      local_38._0_1_ = s_WalkHori_00b1dd30[4];
      local_38._1_1_ = s_WalkHori_00b1dd30[5];
      local_38._2_1_ = s_WalkHori_00b1dd30[6];
      local_38._3_1_ = s_WalkHori_00b1dd30[7];
      local_34 = 0;
      local_14._0_1_ = 1;
      local_14._1_3_ = 0;
      FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
      local_14 = (uint)local_14._1_3_ << 8;
      if (0xf < local_28) {
        uVar4 = local_28 + 1;
        uVar3 = local_3c;
        if (0xfff < uVar4) {
          uVar3 = *(uint *)(local_3c - 4);
          uVar4 = local_28 + 0x24;
          if (0x1f < (local_3c - uVar3) - 4) goto LAB_00530ce4;
        }
        FUN_00aef15c(uVar3,uVar4);
      }
      local_14 = -1;
      local_2c = 0;
      local_28 = 0xf;
      local_3c = local_3c & 0xffffff00;
      if (0xf < local_40) {
        uVar3 = local_40 + 1;
        iVar6 = local_54;
        if (0xfff < uVar3) {
          iVar6 = *(int *)(local_54 + -4);
          uVar3 = local_40 + 0x24;
          if (0x1f < (local_54 - iVar6) - 4U) {
LAB_00530ce4:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar6,uVar3);
      }
      *(undefined4 *)(param_1 + 0xc34) = 0x3e99999a;
      if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
        uVar7 = FUN_006bec40(&local_108,0);
        FUN_007e33c0(uVar7,0x3e99999a,900,1);
      }
      else {
        iVar6 = FUN_006be840();
        local_108 = *(undefined4 *)(iVar6 + 0x33c);
        local_104[0] = *(float *)(iVar6 + 0x340);
        FUN_007e4940(&local_108,0);
        fVar11 = DAT_00baa3a4;
        fVar10 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
        *(float *)(param_1 + 0x36c) = fVar10;
        if (0 < *(int *)(param_1 + 0xb50)) {
          *(float *)(param_1 + 0x36c) = fVar10 * fVar11;
        }
      }
      uVar3 = FUN_006eef60();
      if (uVar3 % 0x32 == 0) {
        FUN_006d6ba0(0x74,0x3f4ccccd,0x28,0,0x3f800000);
      }
      if (*(int *)(param_1 + 0xf1c) == -1) {
        uVar3 = FUN_006eef60();
        cVar2 = uVar3 % 0x32 == 0;
      }
      else {
        cVar2 = FUN_006d8260(9);
      }
      if (cVar2 != '\0') {
        cVar2 = FUN_00417430(0x1000a00,0);
        if (cVar2 == '\0') {
          FUN_006d6ba0(0x26,0x3f800000,2,0,0x3f800000);
          *(undefined4 *)(param_1 + 0xb64) = 6;
          iVar6 = FUN_006be840();
          local_104[0] = *(float *)(iVar6 + 0x33c);
          local_10c = *(float *)(iVar6 + 0x340);
          iVar8 = FUN_006be840();
          iVar6 = DAT_00c71678;
          pfVar5 = (float *)(param_1 + 0x334);
          local_10c = *(float *)(iVar8 + 0x364) * DAT_00baa81c + local_10c;
          local_110 = *(float *)(iVar8 + 0x360) * DAT_00baa81c + local_104[0];
          *pfVar5 = local_110;
          *(float *)(param_1 + 0x338) = local_10c;
          local_104[0] = *(float *)(iVar6 + 0x18300);
          iVar6 = FUN_007f0780(local_110,local_10c);
          if (iVar6 != 0) {
            pfVar9 = (float *)FUN_00813520(&local_110,pfVar5,0x42f00000,0,0,0);
            *pfVar5 = *pfVar9;
            *(float *)(param_1 + 0x338) = pfVar9[1];
          }
          *(undefined4 *)(param_1 + 0xbb0) = 0;
          *(undefined4 *)(param_1 + 0x410) = 0;
        }
      }
      goto LAB_0053132b;
    }
    if (10 < *(int *)(param_1 + 0x410)) {
      fVar10 = *(float *)(param_1 + 0xbb0) + DAT_00baa08c;
      if (fVar11 <= fVar10) {
        fVar10 = fVar11;
      }
      *(float *)(param_1 + 0xbb0) = fVar10;
      if (*(int *)(param_1 + 0xf1c) == -1) {
        *(float *)(param_1 + 0x340) =
             (fVar11 - fVar10) * *(float *)(param_1 + 0x340) + fVar10 * *(float *)(param_1 + 0x338);
        *(float *)(param_1 + 0x33c) =
             fVar10 * *(float *)(param_1 + 0x334) + (fVar11 - fVar10) * *(float *)(param_1 + 0x33c);
      }
      else {
        cVar2 = FUN_0040b090(&DAT_00b1d3b0);
        if (cVar2 == '\0') {
          FUN_006d9320();
        }
        else {
          pfVar5 = (float *)FUN_006d82d0(&local_108);
          fVar11 = pfVar5[1] * DAT_00baa120;
          *(float *)(param_1 + 0x360) =
               *pfVar5 * DAT_00baa120 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360);
          *(float *)(param_1 + 0x364) =
               fVar11 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
        }
        *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
        *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
      }
    }
    *(int *)(param_1 + 0x410) =
         *(int *)(param_1 + 0x410) +
         ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
    if (*(int *)(param_1 + 0xb64) == 6) {
      FUN_0040a380(&DAT_00b1d560,0);
      fVar11 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
      *(undefined4 *)(param_1 + 0x188) = 0;
      *(undefined4 *)(param_1 + 0x184) = 3;
      *(float *)(param_1 + 0x36c) = fVar11;
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 7;
      }
      goto LAB_0053132b;
    }
    if (*(int *)(param_1 + 0xb64) != 7) goto LAB_0053132b;
    FUN_0040a380(&DAT_00b1d574,0);
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
    cVar2 = FUN_0040b030("Splash");
    if (cVar2 != '\0') {
      FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
      AI_0043ef30();
      FUN_006eef60();
      uVar7 = AI_0043ef30();
      local_108 = 0x41400000;
      local_104[0] = 6.0;
      FUN_006cb2e0(param_1 + 0x33c,&local_108,9,uVar7);
      local_104[0] = 7.006492e-45;
      do {
        uVar7 = FUN_006eef60();
        iVar6 = FUN_006eef60();
        local_114 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa704;
        local_114 = local_114 + local_114;
        iVar6 = FUN_006eef60();
        local_10c = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa924;
        fVar11 = local_114;
        FUN_0041d540();
        local_11c = fVar11 * local_10c + *(float *)(param_1 + 0x33c);
        fVar11 = local_114;
        FUN_0041d520();
        uVar15 = 0;
        pTVar14 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
        local_118 = fVar11 * local_10c + *(float *)(param_1 + 0x340);
        pTVar13 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar12 = 0;
        uVar7 = FUN_00428b20(1000,0x16,&local_11c,&DAT_00c7b640,param_1,0,uVar7);
        iVar6 = __RTDynamicCast(uVar7,uVar12,pTVar13,pTVar14,uVar15);
        local_104[0] = (float)((int)local_104[0] + -1);
        fVar11 = DAT_00c37940 * DAT_00baa630;
        *(float *)(iVar6 + 0xe4) = DAT_00c3793c * DAT_00baa630;
        *(float *)(iVar6 + 0xe8) = fVar11;
      } while (local_104[0] != 0.0);
    }
    puVar1 = puStack_20;
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040add0(&DAT_00b1d3b0);
      if (cVar2 != '\0') {
        *(undefined4 *)(param_1 + 0x188) = 4;
        *(undefined4 *)(param_1 + 0x184) = 5;
        FUN_006d6ba0(0x48,0x40000000,2,0,0x3f800000);
      }
      puVar1 = puStack_20;
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_0053132b;
    }
  }
  puStack_20 = puVar1;
  *(undefined4 *)(param_1 + 0xb64) = 4;
LAB_0053132b:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

