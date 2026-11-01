/* Local J460 decompiler output.
 * VA: 0x00503300
 * Entry: 00503300
 * Dispatcher: 0x006c2990
 * Types: 844
 * Identities: 844.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00503af0; instructions=488
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=844; identities=844.0.0; dispatcher=0x006c2990;
   end=0x00503af0; instructions=488 */

void __fastcall AI_00503300(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  uint uVar5;
  float *pfVar6;
  int iVar7;
  uint uVar8;
  int *piVar9;
  undefined4 uVar10;
  uint uVar11;
  float fVar12;
  float fVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  float local_9c;
  float local_98;
  float local_94;
  float local_90;
  float local_8c;
  float local_88;
  float local_84;
  float local_80;
  float local_7c;
  float *local_78;
  float local_74;
  float local_70;
  float local_6c;
  int local_68 [5];
  undefined4 local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 local_48;
  undefined4 uStack_44;
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
  puStack_18 = &LAB_00af2a25;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar7 = *(int *)(param_1 + 0xb64);
  local_24 = uVar5;
  if (iVar7 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0xbc4) = 0;
    puStack_20 = &stack0xfffffffc;
    goto LAB_00503acd;
  }
  if (iVar7 == 4) {
    iVar7 = *(int *)(param_1 + 0x3c0);
    if (iVar7 == 0) {
      FUN_007e6300(0);
    }
    else {
      local_74 = *(float *)(iVar7 + 0x33c);
      local_70 = *(float *)(iVar7 + 0x340);
      puStack_20 = &stack0xfffffffc;
      FUN_007e4940(&local_74,1);
    }
    local_40 = 0xf;
    uStack_44 = 8;
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
      uVar11 = local_28 + 1;
      uVar8 = local_3c;
      if (0xfff < uVar11) {
        uVar8 = *(uint *)(local_3c - 4);
        uVar11 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar8) - 4) goto LAB_005038c6;
      }
      FUN_00aef15c(uVar8,uVar11);
    }
    local_14 = -1;
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar8 = local_40 + 1;
      iVar7 = local_54;
      if (0xfff < uVar8) {
        iVar7 = *(int *)(local_54 + -4);
        uVar8 = local_40 + 0x24;
        if (0x1f < (local_54 - iVar7) - 4U) {
LAB_005038c6:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar7,uVar8);
    }
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    if (*(int *)(param_1 + 0x3c0) == 0) {
      if ((*(uint *)(param_1 + 0x168) & 0x20000000) != 0) {
        FUN_006be840();
        cVar4 = FUN_006ac530();
        if ((cVar4 == '\0') || (4 < *(int *)(param_1 + 0xbc4))) goto LAB_00503a6d;
      }
      if (*(int *)(param_1 + 0xba0) < 1) {
        uVar8 = FUN_006eef60();
        if (uVar8 % 5 == 0) {
          iVar7 = FUN_006be840();
          fVar13 = *(float *)(iVar7 + 0x340) - *(float *)(param_1 + 0x340);
          fVar12 = *(float *)(iVar7 + 0x33c) - *(float *)(param_1 + 0x33c);
          fVar13 = fVar13 * fVar13 + fVar12 * fVar12;
          FUN_00435a50();
          if (fVar13 < DAT_00baab08) {
            cVar4 = FUN_00417430(0x1000a00,0);
            if (cVar4 == '\0') {
              iVar7 = FUN_006be840();
              local_74 = *(float *)(iVar7 + 0x33c);
              local_70 = *(float *)(iVar7 + 0x340);
              cVar4 = FUN_007f0df0(&local_74,param_1 + 0x33c,2,0,0,0,0);
              if (cVar4 == '\0') {
                *(undefined4 *)(param_1 + 0xba0) = 7;
              }
              else {
                *(undefined4 *)(param_1 + 0xba0) = 0x4b;
                cVar4 = FUN_0040a5d0("AttackStart",1);
                if (cVar4 != '\0') {
                  FUN_0040a1b0();
                  *(undefined *)(param_1 + 0x8c) = 1;
                }
                *(undefined4 *)(param_1 + 0xb64) = 8;
                *(undefined *)(param_1 + 0x148) = 0;
                *(undefined4 *)(param_1 + 0x410) = 0;
              }
              goto LAB_00503a6d;
            }
          }
          *(undefined4 *)(param_1 + 0xba0) = 3;
          goto LAB_00503a6d;
        }
      }
      *(int *)(param_1 + 0xba0) =
           *(int *)(param_1 + 0xba0) +
           ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
    }
  }
  else {
    puStack_20 = &stack0xfffffffc;
    if (iVar7 == 8) {
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
      if (*(int *)(param_1 + 0x410) == 0) {
        puStack_20 = &stack0xfffffffc;
        if (*(int *)(param_1 + 0x7c) != 0) {
          puStack_20 = &stack0xfffffffc;
          cVar4 = FUN_0040add0("Sound1");
          if (cVar4 != '\0') {
            FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
          }
        }
        if (*(int *)(param_1 + 0x7c) != 0) {
          cVar4 = FUN_0040add0("Sound2");
          if (cVar4 != '\0') {
            FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
            FUN_006d6ba0(0x13a,0x3f800000,2,0,0x3f800000);
          }
          if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
          goto LAB_00503a6d;
        }
        *(undefined4 *)(param_1 + 0x410) = 1;
        pfVar6 = (float *)FUN_006bec40(&local_74,0);
        local_88 = *pfVar6 - *(float *)(param_1 + 0x33c);
        local_84 = pfVar6[1] - *(float *)(param_1 + 0x340);
        iVar7 = FUN_0067f260();
        FUN_0040a380((&PTR_s_AttackLeft_00b60af0)[iVar7],0);
        *(int *)(param_1 + 0xbc0) = iVar7;
      }
      else {
        puStack_20 = &stack0xfffffffc;
        if (*(int *)(param_1 + 0x7c) != 0) {
          puStack_20 = &stack0xfffffffc;
          cVar4 = FUN_0040add0("Shoot");
          if (cVar4 != '\0') {
            uVar16 = 0x3f800000;
            uVar15 = 0;
            uVar14 = 2;
            uVar10 = 0x3f800000;
            uVar8 = FUN_006eef60(0x3f800000,2,0,0x3f800000);
            FUN_006d6ba0((uVar8 & 1) + 0xb,uVar10,uVar14,uVar15,uVar16);
            pfVar6 = (float *)FUN_0067f1d0();
            local_88 = *pfVar6 * DAT_00baa81c;
            local_84 = pfVar6[1] * DAT_00baa81c;
            local_80 = local_84;
            local_7c = local_88;
            uVar10 = FUN_006eef60();
            local_90 = local_7c + *(float *)(param_1 + 0x33c);
            local_8c = local_80 + *(float *)(param_1 + 0x340);
            local_6c = (float)FUN_00428b20(4,0x11,&local_90,&local_88,param_1,0,uVar10);
            pfVar6 = (float *)(param_1 + 0x3c0);
            if (*(int *)(param_1 + 0x3c0) != 0) {
              local_78 = pfVar6;
              FUN_004cf210(&local_78);
            }
            *pfVar6 = local_6c;
            if (local_6c != 0.0) {
              FUN_004cdcf0(pfVar6);
            }
            local_8c = local_7c * DAT_00baa280;
            local_78 = (float *)0x6;
            local_84 = local_80 * DAT_00baa280;
            do {
              uVar10 = FUN_006eef60();
              iVar7 = FUN_006eef60();
              local_6c = ((float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c) * DAT_00baa088;
              fVar13 = local_6c;
              FUN_0041d540();
              local_94 = fVar13;
              FUN_0041d520();
              iVar7 = FUN_006eef60();
              fVar13 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                       DAT_00ba9ff4;
              local_98 = fVar13 + fVar13 + DAT_00baa304;
              local_9c = (local_7c * local_94 - local_80 * local_6c) * local_98;
              local_74 = local_8c + *(float *)(param_1 + 0x33c);
              local_98 = (local_7c * local_6c + local_80 * local_94) * local_98;
              local_70 = local_84 + *(float *)(param_1 + 0x340);
              piVar9 = (int *)FUN_00428b20(1000,99,&local_74,&local_9c,0,1,uVar10);
              iVar7 = FUN_006eef60();
              local_48 = 0;
              uStack_44 = 0;
              local_40 = 0;
              fVar13 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa528 + DAT_00baa454;
              piVar9[0x3a] = (int)(fVar13 * (float)piVar9[0x3a]);
              iVar3 = _UNK_00bac33c;
              iVar2 = _UNK_00bac338;
              iVar1 = _UNK_00bac334;
              iVar7 = _DAT_00bac330;
              piVar9[0x39] = (int)(fVar13 * (float)piVar9[0x39]);
              if (piVar9 + 0x3c != local_68) {
                *(undefined (*) [16])(piVar9 + 0x40) = ZEXT416(0);
                *(undefined8 *)(piVar9 + 0x44) = 0;
                piVar9[0x3c] = iVar7;
                piVar9[0x3d] = iVar1;
                piVar9[0x3e] = iVar2;
                piVar9[0x3f] = iVar3;
                piVar9[0x46] = 0;
              }
              (**(code **)(*piVar9 + 0xc))();
              local_78 = (float *)((int)local_78 + -1);
            } while (local_78 != (float *)0x0);
            *(int *)(param_1 + 0xbc4) = *(int *)(param_1 + 0xbc4) + 1;
            local_78 = (float *)0x0;
          }
        }
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          *(undefined4 *)(param_1 + 0xb64) = 4;
        }
      }
    }
  }
LAB_00503a6d:
  if ((*(char *)(param_1 + 0x173) != '\0') && (*(int *)(param_1 + 0x7c) != 0)) {
    iVar7 = FUN_0040ace0(&DAT_00b1ce1c);
    if ((iVar7 != 0) && (*(char *)(iVar7 + 0xc) != '\0')) {
      uVar10 = FUN_006eef60(uVar5);
      FUN_00428b20(4,0x11,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar10);
    }
  }
LAB_00503acd:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

