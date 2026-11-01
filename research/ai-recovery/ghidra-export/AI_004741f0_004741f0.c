/* Local J460 decompiler output.
 * VA: 0x004741f0
 * Entry: 004741f0
 * Dispatcher: 0x006c2990
 * Types: 46
 * Identities: 46.0.0,46.1.0,46.2.0
 * Evidence: dispatcher=0x006c2990; end=0x00474e00; instructions=687
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=46; identities=46.0.0,46.1.0,46.2.0;
   dispatcher=0x006c2990; end=0x00474e00; instructions=687 */

void __fastcall AI_004741f0(int param_1)

{
  float *pfVar1;
  undefined auVar2 [16];
  char cVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  int **ppiVar7;
  int *piVar8;
  int iVar9;
  uint uVar10;
  int *piVar11;
  float fVar12;
  float fVar13;
  undefined4 uVar14;
  TypeDescriptor *pTVar15;
  TypeDescriptor *pTVar16;
  undefined4 uVar17;
  float local_140;
  float local_13c;
  int *local_138;
  float local_134;
  float local_130;
  float local_12c;
  float local_128;
  int *local_124;
  undefined4 local_120;
  int *local_11c;
  float local_118;
  int *local_114;
  undefined local_110 [20];
  undefined4 local_fc;
  uint local_b8;
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
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af29a5;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar4;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x1e4) = 0;
    *(undefined4 *)(param_1 + 0x1e8) = 0x3f800000;
    *(undefined4 *)(param_1 + 0x1ec) = 0;
    *(undefined4 *)(param_1 + 0x1f0) = 0x3f800000;
    *(undefined4 *)(param_1 + 0x204) = 0;
    *(undefined4 *)(param_1 + 0x208) = 0x3e99999a;
    *(undefined4 *)(param_1 + 0x20c) = 0;
    puStack_20 = &stack0xfffffffc;
    goto LAB_00474dd4;
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa380;
  iVar5 = FUN_006be840(uVar4);
  auVar2 = _local_40;
  pfVar1 = (float *)(param_1 + 0x33c);
  local_11c = (int *)(*(float *)(iVar5 + 0x33c) - *pfVar1);
  local_114 = (int *)(*(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340));
  iVar5 = *(int *)(param_1 + 0xb64);
  if (iVar5 == 4) {
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
    uStack_34._1_3_ = auVar2._13_3_;
    uStack_34._0_1_ = 0;
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
      uVar10 = local_54 + 1;
      uVar4 = local_68;
      if (0xfff < uVar10) {
        uVar4 = *(uint *)(local_68 - 4);
        uVar10 = local_54 + 0x24;
        if (0x1f < (local_68 - uVar4) - 4) goto LAB_004743c7;
      }
      FUN_00aef15c(uVar4,uVar10);
    }
    local_14 = -1;
    local_58 = 0;
    local_54 = 0xf;
    local_68 = local_68 & 0xffffff00;
    if (0xf < local_28) {
      uVar4 = local_28 + 1;
      iVar5 = stack0xffffffc4;
      if (0xfff < uVar4) {
        iVar5 = *(int *)(stack0xffffffc4 + -4);
        uVar4 = local_28 + 0x24;
        if (0x1f < (stack0xffffffc4 - iVar5) - 4U) {
LAB_004743c7:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar5,uVar4);
    }
    FUN_007e5340(0x3f800000,0);
    uVar4 = FUN_006eef60();
    if (((uVar4 % 0x32 == 0) && ((*(uint *)(param_1 + 0x168) & 0x200) == 0)) &&
       ((cVar3 = FUN_00417430(0x1000800,0), cVar3 == '\0' ||
        (uVar4 = FUN_006eef60(), uVar4 % 10 == 0)))) {
      *(undefined4 *)(param_1 + 0x410) = 0;
      *(bool *)(param_1 + 0x148) = (float)local_11c < 0.0;
      cVar3 = FUN_0040a5d0("Attack",1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      uVar4 = FUN_006eef60();
      if ((uVar4 & 1) == 0) {
        iVar9 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
        iVar5 = 0;
        if (0 < iVar9) {
          iVar5 = iVar9;
        }
        if (3 < iVar5) goto LAB_004744a9;
      }
      else {
LAB_004744a9:
        if (((float)((uint)local_114 & DAT_00bacb40) <= DAT_00baa950) ||
           (*(int *)(param_1 + 0x2c) != 2)) {
          *(undefined4 *)(param_1 + 0xb64) = 9;
          goto LAB_00474dce;
        }
      }
      *(undefined4 *)(param_1 + 0xb64) = 8;
    }
  }
  else {
    if (iVar5 == 8) {
      if (*(int *)(param_1 + 0x410) == 5) {
        if (*(int *)(param_1 + 0x2c) == 2) {
          FUN_006d6ba0(0xd5,0x3f333333,2,0,0x3f800000);
          AI_0043ef30();
          local_b8 = local_b8 | 1;
          local_fc = 0x3f99999a;
          iVar5 = FUN_006be840(uVar4);
          local_128 = *(float *)(iVar5 + 0x33c);
          local_124 = *(int **)(iVar5 + 0x340);
          FUN_006ccdd0(3,&local_128,0x41200000,local_110);
        }
        else if (*(int *)(param_1 + 0x2c) == 1) {
          FUN_006d6ba0(0x9f,0x3f800000,2,0,0x3f800000);
          uVar10 = FUN_006eef60();
          if ((uVar10 & 1) == 0) {
            iVar5 = FUN_006be840(uVar4);
            local_128 = *(float *)(iVar5 + 0x33c) * DAT_00baa2d0 +
                        *(float *)(param_1 + 0x33c) * DAT_00baa2d0;
            local_124 = (int *)(*(float *)(param_1 + 0x340) * DAT_00baa2d0 +
                               *(float *)(iVar5 + 0x340) * DAT_00baa2d0);
            FUN_00813520(&local_120,&local_128,0x428c0000,0,0,0);
            FUN_006c2750(param_1 + 0x33c,param_1,local_120,local_11c,1,0xc1f00000);
          }
          else {
            local_114 = (int *)0x2;
            do {
              iVar5 = FUN_006be840(uVar4);
              local_128 = *(float *)(iVar5 + 0x33c) * DAT_00baa2d0 +
                          *(float *)(param_1 + 0x33c) * DAT_00baa2d0;
              local_124 = (int *)(*(float *)(iVar5 + 0x340) * DAT_00baa2d0 +
                                 *(float *)(param_1 + 0x340) * DAT_00baa2d0);
              FUN_00813520(&local_120,&local_128,0x428c0000,0,0,0);
              FUN_006c2750(param_1 + 0x33c,param_1,local_120,local_11c,0,0xc1f00000);
              local_114 = (int *)((int)local_114 + -1);
            } while (local_114 != (int *)0x0);
            local_114 = (int *)0x0;
          }
        }
        else {
          FUN_006d6ba0(0x109,0x3f4ccccd,2,0,0x3f800000);
          FUN_006d6ba0(0x6c,0x3f800000,2,0,0x3f800000);
          uVar6 = FUN_006eef60();
          if (*(char *)(param_1 + 0x148) == '\0') {
            local_120 = 0x41f00000;
            local_11c = (int *)0x0;
            local_130 = DAT_00baa8d0;
          }
          else {
            local_118 = -30.0;
            local_114 = (int *)0x0;
            local_130 = DAT_00baae14;
          }
          local_130 = local_130 + *pfVar1;
          uVar17 = 0;
          pTVar16 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
          pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar14 = 0;
          ppiVar7 = &local_11c;
          if (*(char *)(param_1 + 0x148) != '\0') {
            ppiVar7 = &local_114;
          }
          local_12c = (float)*ppiVar7 + *(float *)(param_1 + 0x340);
          uVar6 = FUN_00428b20(0x17,0,&local_130,&DAT_00c7b640,param_1,0,uVar6);
          iVar5 = __RTDynamicCast(uVar6,uVar14,pTVar15,pTVar16,uVar17);
          *(undefined4 *)(iVar5 + 0xb64) = 8;
          fVar12 = DAT_00baa454;
          if (*(char *)(param_1 + 0x148) != '\0') {
            fVar12 = DAT_00baad50;
          }
          *(float *)(iVar5 + 0xbb0) = fVar12;
          *(undefined4 *)(iVar5 + 0xbb4) = 0;
          *(undefined4 *)(param_1 + 0x188) = 2;
        }
      }
    }
    else {
      if (iVar5 != 9) goto LAB_00474dce;
      iVar5 = *(int *)(param_1 + 0x410);
      if (*(int *)(param_1 + 0x2c) == 2) {
        if (iVar5 - 6U < 9) {
          fVar12 = DAT_00baa454;
          if ((float)local_11c < 0.0) {
            fVar12 = DAT_00baad50;
          }
          local_114 = (int *)((float)(iVar5 + -5) * fVar12);
          uVar6 = FUN_006eef60();
          uVar17 = 0;
          pTVar16 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
          local_130 = (float)local_114 * DAT_00baa8a0 + *pfVar1;
          pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar14 = 0;
          local_12c = *(float *)(param_1 + 0x340) + DAT_00ba9fe4;
          uVar6 = FUN_00428b20(1000,0x17,&local_130,&DAT_00c7b640,param_1,0,uVar6);
          piVar8 = (int *)__RTDynamicCast(uVar6,uVar14,pTVar15,pTVar16,uVar17);
          local_124 = (int *)((float)local_114 * DAT_00baa0f4 + DAT_00baa554);
          piVar8[0x39] = (int)local_124;
          piVar8[0x3a] = (int)local_124;
          local_11c = piVar8;
          (**(code **)(*piVar8 + 0xc))();
          local_134 = (float)piVar8[0xd0];
          local_138 = (int *)piVar8[0xcf];
          cVar3 = FUN_00813360(&local_138,0);
          if (cVar3 != '\0') {
            local_138 = local_114;
            local_134 = 0.0;
            FUN_00a10030(&local_118);
            uVar6 = FUN_006eef60();
            iVar5 = FUN_006eef60();
            fVar12 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                     DAT_00ba9ff4;
            local_134 = fVar12 * (float)local_114 * DAT_00baa81c;
            local_138 = (int *)(fVar12 * local_118 * DAT_00baa81c);
            local_140 = (float)local_11c[0xcf] - local_118 * DAT_00baa784;
            local_13c = (float)local_11c[0xd0] - (float)local_114 * DAT_00baa784;
            piVar8 = (int *)FUN_00428b20(1000,2,&local_140,&local_138,0,2,uVar6);
            iVar5 = FUN_006eef60();
            piVar8[0x3b] = (int)((float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)])
                                 * DAT_00ba9ff4 * DAT_00baab30);
            iVar5 = FUN_006eef60();
            piVar8[0xd3] = 0;
            local_30 = 0x3da3d70a;
            local_2c = 0x3f000000;
            local_28 = 0x3c23d70a;
            piVar8[0xd4] = (int)((float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)])
                                 * DAT_00ba9ff4 * DAT_00baaddc);
            _local_40 = ZEXT816(0);
            local_50 = _DAT_00babf20;
            uStack_4c = _UNK_00babf24;
            uStack_48 = _UNK_00babf28;
            uStack_44 = _UNK_00babf2c;
            (**(code **)(*piVar8 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
            uVar6 = FUN_006eef60();
            local_140 = (float)local_11c[0xcf];
            local_13c = (float)local_11c[0xd0];
            piVar8 = (int *)FUN_00428b20(1000,7,&local_140,&DAT_00c7b640,0,0,uVar6);
            local_30 = 0x3da3d70a;
            piVar8[0xdd] = (int)local_124;
            piVar8[0xde] = (int)local_124;
            _local_40 = ZEXT816(0);
            local_50 = _DAT_00babbb0;
            uStack_4c = _UNK_00babbb4;
            uStack_48 = _UNK_00babbb8;
            uStack_44 = _UNK_00babbbc;
            local_2c = 0x3f000000;
            local_28 = 0x3c23d70a;
            (**(code **)(*piVar8 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
            (**(code **)(*piVar8 + 0xc))();
          }
        }
        else if (iVar5 == 5) {
          local_11c = (int *)0xd4;
          FUN_00956780();
          FUN_0092dc30(local_11c,0x3f333333,2,0,0x3f800000,0);
        }
      }
      else if (iVar5 == 5) {
        FUN_006d6ba0(0xd5,0x3f333333,2,0,0x3f800000);
        local_114 = (int *)(2 - (uint)(*(int *)(param_1 + 0x2c) != 1));
        do {
          uVar6 = AI_0043ef30();
          iVar5 = FUN_006be840(uVar4);
          local_130 = *(float *)(iVar5 + 0x33c);
          local_12c = *(float *)(iVar5 + 0x340);
          piVar8 = (int *)FUN_006ccdd0(1,&local_130,0x41200000,uVar6);
          fVar12 = (float)piVar8[0x106] - DAT_00baa1f8;
          piVar8[0x10e] = piVar8[0x10e] | 2;
          fVar13 = (float)piVar8[0xd9] * DAT_00baa2e4;
          piVar8[0x10f] = piVar8[0x10f];
          piVar8[0x106] = (int)fVar12;
          piVar8[0x105] = (int)((float)piVar8[0x105] * DAT_00baa354 - DAT_00baa83c);
          fVar12 = (float)piVar8[0xd8] * DAT_00baa2e4;
          piVar8[0xd9] = (int)fVar13;
          piVar8[0xd8] = (int)fVar12;
          local_50 = _DAT_00bac7b0;
          uStack_4c = _UNK_00bac7b4;
          uStack_48 = _UNK_00bac7b8;
          uStack_44 = _UNK_00bac7bc;
          local_30 = 0;
          local_2c = 0;
          local_28 = 0;
          stack0xffffffc4 = _UNK_00bac504;
          local_40._0_4_ = _DAT_00bac500;
          uStack_38 = _UNK_00bac508;
          uStack_34 = _UNK_00bac50c;
          (**(code **)(*piVar8 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
          piVar8[0x108] = 0x3fcccccd;
          piVar11 = piVar8 + 0xef;
          if (piVar8[0xef] != 0) {
            local_124 = piVar11;
            FUN_004cf210(&local_124);
          }
          *piVar11 = param_1;
          FUN_004cdcf0(piVar11);
          local_114 = (int *)((int)local_114 + -1);
        } while (local_114 != (int *)0x0);
        local_114 = (int *)0x0;
      }
    }
    if (0x1d < *(int *)(param_1 + 0x410)) {
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
  }
LAB_00474dce:
  *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
LAB_00474dd4:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

