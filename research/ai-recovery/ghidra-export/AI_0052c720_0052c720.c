/* Local J460 decompiler output.
 * VA: 0x0052c720
 * Entry: 0052c720
 * Dispatcher: 0x006c2990
 * Types: 39,49,836
 * Identities: 39.0.0,39.1.0,39.2.0,39.22.0,39.3.0,49.0.0,49.1.0,836.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0052db50; instructions=1140
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=39,49,836;
   identities=39.0.0,39.1.0,39.2.0,39.22.0,39.3.0,49.0.0,49.1.0,836.0.0; dispatcher=0x006c2990;
   end=0x0052db50; instructions=1140 */

void __fastcall AI_0052c720(int param_1)

{
  int iVar1;
  undefined *puVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  uint uVar8;
  undefined4 *puVar9;
  int *piVar10;
  float *pfVar11;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 *extraout_ECX_03;
  float fVar12;
  float fVar13;
  float fVar14;
  undefined4 uVar15;
  TypeDescriptor *pTVar16;
  char *pcVar17;
  TypeDescriptor *pTVar18;
  undefined4 uVar19;
  float local_134;
  float *local_130;
  float local_12c;
  float *local_128;
  float local_124;
  float local_120;
  float local_11c;
  float local_118;
  float local_114;
  undefined4 *local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined local_34;
  undefined local_30 [4];
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af46bd;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar4;
  if (*(int *)(param_1 + 0x2c) == 0x16) {
    puStack_20 = &stack0xfffffffc;
    FUN_0052c2f0();
    goto LAB_0052db32;
  }
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    iVar5 = DAT_00c7169c;
    if (*(int *)(param_1 + 0x34) == 0x109) {
      puStack_20 = &stack0xfffffffc;
      if ((*(int *)(param_1 + 0x28) == 0x27) &&
         (puStack_20 = &stack0xfffffffc, *(int *)(param_1 + 0x2c) == 0)) {
        puStack_20 = &stack0xfffffffc;
        local_54 = (undefined4 *)FUN_0040cf00();
        uVar19 = s_gfx_Monsters_Classic_Monster_176_00b60fb4._12_4_;
        uVar15 = s_gfx_Monsters_Classic_Monster_176_00b60fb4._8_4_;
        uVar6 = s_gfx_Monsters_Classic_Monster_176_00b60fb4._4_4_;
        local_44 = 0x2c;
        local_40 = 0x2f;
        *local_54 = s_gfx_Monsters_Classic_Monster_176_00b60fb4._0_4_;
        local_54[1] = uVar6;
        local_54[2] = uVar15;
        local_54[3] = uVar19;
        uVar19 = s_gfx_Monsters_Classic_Monster_176_00b60fb4._28_4_;
        uVar15 = s_gfx_Monsters_Classic_Monster_176_00b60fb4._24_4_;
        uVar6 = s_gfx_Monsters_Classic_Monster_176_00b60fb4._20_4_;
        local_54[4] = s_gfx_Monsters_Classic_Monster_176_00b60fb4._16_4_;
        local_54[5] = uVar6;
        local_54[6] = uVar15;
        local_54[7] = uVar19;
        *(undefined8 *)(local_54 + 8) = s_gfx_Monsters_Classic_Monster_176_00b60fb4._32_8_;
        local_54[10] = s_gfx_Monsters_Classic_Monster_176_00b60fb4._40_4_;
        *(undefined *)(local_54 + 0xb) = 0;
        local_14 = 0;
        FUN_0040bf30(1,&local_54);
        local_14 = 0xffffffff;
        uVar6 = extraout_ECX;
        if (0xf < local_40) {
          uVar4 = local_40 + 1;
          puVar9 = local_54;
          if (0xfff < uVar4) {
            puVar9 = (undefined4 *)local_54[-1];
            uVar4 = local_40 + 0x24;
            if (0x1f < (uint)((int)local_54 + (-4 - (int)puVar9))) {
                    /* WARNING: Subroutine does not return */
              _invalid_parameter_noinfo_noreturn();
            }
          }
          FUN_00aef15c(puVar9,uVar4);
          uVar6 = extraout_ECX_00;
        }
        FUN_0040c000(uVar6);
        iVar5 = FUN_0040b220(0);
        *(undefined4 *)(iVar5 + 0x48) = 0x3ef0f0f2;
        *(undefined4 *)(iVar5 + 0x4c) = 0x3f028283;
        *(undefined4 *)(iVar5 + 0x50) = 0x3f028283;
        *(undefined4 *)(iVar5 + 0x54) = 0x3f800000;
        uVar6 = FUN_00456240(10,0x50,10,0xff,100,100,0x50);
        FUN_004071f0(uVar6);
        iVar5 = FUN_00694fb0(1000,0x32,2);
        if (iVar5 != 0) {
          FUN_0069ba90(iVar5);
        }
        FUN_0040ea10("gfx/Effects/Effect_018_CageLaserEffects.png");
      }
    }
    else {
      puStack_20 = &stack0xfffffffc;
      iVar7 = FUN_00694fb0(1000,0x32,1);
      if (iVar7 != 0) {
        FUN_0069ba90(iVar7);
        iVar5 = DAT_00c7169c;
      }
      local_11c = 1.028593e-38;
      _Find_lower_bound<>(local_30,&local_11c);
      if (((*(char *)(local_28 + 0xd) == '\0') && (*(uint *)(local_28 + 0x10) < 0x700101)) &&
         (local_28 != *(uint *)(iVar5 + 0x2a670))) {
        iVar5 = local_28 + 0x18;
      }
      else {
        iVar5 = FUN_00694fb0(7,0,0);
      }
      if (iVar5 != 0) {
        FUN_0069ba90(iVar5);
      }
    }
    goto LAB_0052db32;
  }
  puVar2 = &stack0xfffffffc;
  if (*(int *)(param_1 + 0xf1c) == -1) {
    iVar5 = *(int *)(DAT_00c71678 + 0x18300);
    uVar8 = FUN_00812c90(param_1 + 0x33c);
    puVar2 = puStack_20;
    if ((uVar8 < 0x1c0) && (*(int *)(iVar5 + 0x76c + uVar8 * 4) < 0x3b7)) {
      *(undefined4 *)(iVar5 + 0x76c + uVar8 * 4) = 900;
    }
  }
  puStack_20 = puVar2;
  iVar5 = FUN_006be840(uVar4);
  pfVar11 = (float *)(param_1 + 0x33c);
  local_11c = *(float *)(iVar5 + 0x33c) - *pfVar11;
  local_12c = *(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340);
  iVar5 = *(int *)(param_1 + 0xb64);
  local_118 = local_11c;
  local_114 = local_12c;
  if (iVar5 == 4) {
    local_40 = 0xf;
    local_44 = 8;
    local_54 = (undefined4 *)s_WalkHori_00b1dd30._0_4_;
    local_50._0_1_ = s_WalkHori_00b1dd30[4];
    local_50._1_1_ = s_WalkHori_00b1dd30[5];
    local_50._2_1_ = s_WalkHori_00b1dd30[6];
    local_50._3_1_ = s_WalkHori_00b1dd30[7];
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
    local_14._0_1_ = 2;
    local_14._1_3_ = 0;
    FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
    local_14 = CONCAT31(local_14._1_3_,1);
    if (0xf < local_28) {
      uVar8 = local_28 + 1;
      uVar4 = local_3c;
      if (0xfff < uVar8) {
        uVar4 = *(uint *)(local_3c - 4);
        uVar8 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar4) - 4) goto LAB_0052cad0;
      }
      FUN_00aef15c(uVar4,uVar8);
    }
    local_14 = 0xffffffff;
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar4 = local_40 + 1;
      puVar9 = local_54;
      if (0xfff < uVar4) {
        puVar9 = (undefined4 *)local_54[-1];
        uVar4 = local_40 + 0x24;
        if (0x1f < (uint)((int)local_54 + (-4 - (int)puVar9))) {
LAB_0052cad0:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(puVar9,uVar4);
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      FUN_007e5340(0x3f333333,0);
    }
    else {
      FUN_007e33c0(&DAT_00c7b640,0x3f333333,0,1);
    }
    iVar5 = *(int *)(param_1 + 0xf1c);
    if ((iVar5 != -1) || (cVar3 = FUN_006ac710(3,*(undefined4 *)(param_1 + 0x20)), cVar3 != '\0')) {
      if (*(int *)(param_1 + 0x28) == 0x31) {
        if (iVar5 == -1) {
          uVar4 = FUN_006eef60();
          uVar8 = FUN_006eef60();
          if (uVar8 % 7 == 0) {
            local_128 = (float *)(local_11c * local_11c + local_12c * local_12c);
            FUN_00435a50();
            iVar5 = FUN_006eef60();
            if ((float)local_128 <
                (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
                DAT_00baaa1c + DAT_00baa97c) goto LAB_0052cbe2;
          }
          else if (uVar4 % 10 != 0) goto LAB_0052d8a5;
        }
        else {
          cVar3 = FUN_006d8260(9);
          if (cVar3 != '\0') {
LAB_0052cbe2:
            *(undefined4 *)(param_1 + 0xb64) = 8;
            *(undefined4 *)(param_1 + 0x410) = 0;
            goto LAB_0052d8a5;
          }
        }
      }
      cVar3 = FUN_00417430(0x1000a00,0);
      if (cVar3 == '\0') {
        if (*(int *)(param_1 + 0xf1c) == -1) {
          if (((float)((uint)local_11c & DAT_00bacb40) < DAT_00baa87c) ||
             ((float)((uint)local_12c & DAT_00bacb40) < DAT_00baa87c)) {
            fVar14 = local_12c * local_12c + local_11c * local_11c;
            FUN_00435a50();
            if (fVar14 < DAT_00baab54) {
              cVar3 = FUN_00944a40(param_1 + 0x33c);
              goto LAB_0052ccb7;
            }
          }
        }
        else {
          cVar3 = FUN_006cae60(0,7);
LAB_0052ccb7:
          if (cVar3 != '\0') {
            if (*(int *)(param_1 + 0xf1c) != -1) {
              FUN_006d85a0(&local_134);
            }
            puVar9 = (undefined4 *)FUN_0067f170();
            *(undefined4 *)(param_1 + 0xbb0) = *puVar9;
            *(undefined4 *)(param_1 + 0xbb4) = puVar9[1];
            iVar5 = *(int *)(param_1 + 0x2c);
            *(uint *)(param_1 + 0xb64) = (iVar5 == 2) + 9;
            if (iVar5 != 2) {
              if (*(int *)(param_1 + 0x28) == 0x344) {
                FUN_00738470(iVar5);
              }
              uVar6 = FUN_004238f0(0x3f4ccccd);
              local_118 = 0.0;
              local_114 = -20.0;
              FUN_0060b890((undefined4 *)(param_1 + 0xbb0),0x1c,uVar6,0x40800000);
              if (*(int *)(param_1 + 0x28) == 0x27) {
                if ((*(int *)(param_1 + 0x2c) == 1) || (*(int *)(param_1 + 0x2c) == 3)) {
LAB_0052ce0e:
                  uVar4 = DAT_00bacb70;
                  uVar6 = FUN_004238f0(0x3f4ccccd);
                  local_118 = (float)(*(uint *)(param_1 + 0xbb0) ^ uVar4);
                  local_114 = (float)(*(uint *)(param_1 + 0xbb4) ^ uVar4);
                  local_124 = 0.0;
                  local_120 = -20.0;
                  FUN_0060b890(&local_118,0x1c,uVar6,0x40800000);
                  if (*(int *)(param_1 + 0x28) != 0x27) goto LAB_0052cfa4;
                }
                if (*(int *)(param_1 + 0x2c) == 3) {
                  uVar4 = DAT_00bacb70;
                  uVar6 = FUN_004238f0(0x3f4ccccd);
                  local_118 = (float)(*(uint *)(param_1 + 0xbb4) ^ uVar4);
                  local_114 = *(float *)(param_1 + 0xbb0);
                  local_124 = 0.0;
                  local_120 = -20.0;
                  FUN_0060b890(&local_118,0x1c,uVar6,0x40800000);
                  uVar6 = FUN_004238f0(0x3f4ccccd);
                  local_118 = *(float *)(param_1 + 0xbb4);
                  local_114 = (float)(*(uint *)(param_1 + 0xbb0) ^ DAT_00bacb70);
                  local_124 = 0.0;
                  local_120 = -20.0;
                  FUN_0060b890(&local_118,0x1c,uVar6,0x40800000);
                }
              }
              else if ((*(int *)(param_1 + 0x28) == 0x31) && (*(int *)(param_1 + 0x2c) == 1))
              goto LAB_0052ce0e;
            }
LAB_0052cfa4:
            *(undefined4 *)(param_1 + 0x410) = 0;
            *(undefined4 *)(param_1 + 0x334) = DAT_00c7b640;
            *(undefined4 *)(param_1 + 0x338) = DAT_00c7b644;
            if (*(int *)(param_1 + 0xb64) == 10) {
              if (0.0 < (float)(*(uint *)(param_1 + 0xbb0) & DAT_00bacb40)) {
                pcVar17 = "Attack03Horiz";
                goto LAB_0052cffc;
              }
              if (0.0 < *(float *)(param_1 + 0xbb4) || *(float *)(param_1 + 0xbb4) == 0.0) {
                pcVar17 = "Attack03Down";
              }
              else {
                pcVar17 = "Attack03Up";
              }
LAB_0052d02b:
              FUN_0040a380(pcVar17,0);
            }
            else {
              FUN_0041e420(&DAT_00c7f778,0x40,"Attack%02uUp",*(int *)(param_1 + 0x2c) + 1);
              FUN_0041e420(&DAT_00c7f7b8,0x40,"Attack%02uDown",*(int *)(param_1 + 0x2c) + 1);
              FUN_0041e420(&DAT_00c7f7f8,0x40,"Attack%02uHoriz",*(int *)(param_1 + 0x2c) + 1);
              if ((float)(*(uint *)(param_1 + 0xbb0) & DAT_00bacb40) <= 0.0) {
                if (0.0 < *(float *)(param_1 + 0xbb4) || *(float *)(param_1 + 0xbb4) == 0.0) {
                  pcVar17 = &DAT_00c7f7b8;
                }
                else {
                  pcVar17 = &DAT_00c7f778;
                }
                goto LAB_0052d02b;
              }
              pcVar17 = &DAT_00c7f7f8;
LAB_0052cffc:
              FUN_0040a380(pcVar17,0);
              *(bool *)(param_1 + 0x148) =
                   *(float *)(param_1 + 0xbb0) <= 0.0 && *(float *)(param_1 + 0xbb0) != 0.0;
            }
            if ((*(int *)(param_1 + 0xf1c) != -1) && (*(int *)(param_1 + 0x7c) != 0)) {
              FUN_00408e00();
            }
          }
        }
      }
    }
  }
  else if (iVar5 == 8) {
    FUN_0040a380("FatAttack",0);
    if (*(int *)(param_1 + 0x7c) == 0) {
LAB_0052d893:
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
    else {
      cVar3 = FUN_0040add0("Shoot");
      if (cVar3 == '\0') goto LAB_0052d884;
      AI_0043ef30();
      iVar5 = FUN_006d8240();
      local_118 = DAT_00baa7e8;
      if (0 < iVar5) {
        local_118 = DAT_00baa834;
      }
      local_114 = 0.0;
      FUN_006cb2e0(pfVar11,&local_118,8,extraout_ECX_01);
      if (*(int *)(param_1 + 0x2c) == 1) {
        uVar6 = AI_0043ef30();
        iVar5 = FUN_006be840();
        local_118 = *(float *)(iVar5 + 0x33c);
        local_114 = *(float *)(iVar5 + 0x340);
        FUN_006ccdd0(5,&local_118,0,uVar6);
      }
    }
  }
  else if (iVar5 == 9) {
    if (*(int *)(param_1 + 0x28) == 0x344) {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        if ((5 < *(int *)(param_1 + 0x410)) && (cVar3 = FUN_00a10600(&DAT_00c7b640), cVar3 != '\0'))
        {
          local_11c = (float)FUN_006be840();
          pfVar11 = (float *)(param_1 + 0x3c4);
          uVar6 = *(undefined4 *)((int)local_11c + 0x340);
          *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)((int)local_11c + 0x33c);
          *(undefined4 *)(param_1 + 0x338) = uVar6;
          if (*pfVar11 != 0.0) {
            local_128 = pfVar11;
            FUN_004cf210(&local_128);
          }
          *pfVar11 = local_11c;
          FUN_004cdcf0(pfVar11);
        }
      }
      else {
        FUN_006d8b20(0);
        cVar3 = FUN_00a10600(&DAT_00c7b640);
        if (cVar3 == '\0') {
          fVar14 = *(float *)(param_1 + 0x39c);
          fVar12 = DAT_00baa3e0;
          if ((NAN(fVar14) || NAN(DAT_00baa454)) == (fVar14 == DAT_00baa454)) {
            fVar12 = DAT_00baa3e0 / ((fVar14 + DAT_00baa3e0) - fVar14 * DAT_00baa3e0);
          }
          fVar12 = DAT_00baa454 - fVar12;
          pfVar11 = (float *)FUN_006d8d30(&local_134);
          fVar14 = *pfVar11;
          *(float *)(param_1 + 0x338) =
               (pfVar11[1] - *(float *)(param_1 + 0x338)) * fVar12 + *(float *)(param_1 + 0x338);
          *(float *)(param_1 + 0x334) =
               (fVar14 - *(float *)(param_1 + 0x334)) * fVar12 + *(float *)(param_1 + 0x334);
        }
        else {
          puVar9 = (undefined4 *)FUN_006d8d30(&local_134);
          *(undefined4 *)(param_1 + 0x334) = *puVar9;
          *(undefined4 *)(param_1 + 0x338) = puVar9[1];
        }
      }
    }
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 == '\0') {
LAB_0052d884:
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) goto LAB_0052d893;
    }
    else {
      fVar14 = *(float *)(param_1 + 0xbb4);
      local_11c = DAT_00baabfc;
      if (fVar14 < DAT_00baad2c) {
        local_11c = DAT_00baadc0;
      }
      local_120 = *(float *)(param_1 + 0x340) + DAT_00ba9fe4;
      local_124 = *(float *)(param_1 + 0xbb0) * DAT_00baa7a4 + *(float *)(param_1 + 0x33c);
      local_118 = 0.0;
      local_114 = -20.0;
      FUN_00499d60(0x20,&local_118,param_1,0);
      piVar10 = (int *)FUN_0096f310(1,&local_124,fVar14 * DAT_00baa948);
      piVar10[0xd6] = (int)local_11c;
      if (*(int *)(param_1 + 0x28) == 0x344) {
        if (*(int *)(param_1 + 0x3c0) != 0) {
          local_128 = (float *)(param_1 + 0x3c0);
          FUN_004cf210(&local_128);
        }
        *(int **)(param_1 + 0x3c0) = piVar10;
        FUN_004cdcf0((int **)(param_1 + 0x3c0));
        iVar5 = *(int *)(param_1 + 0x338);
        piVar10[0xcd] = *(int *)(param_1 + 0x334);
        piVar10[0xce] = iVar5;
        iVar5 = FUN_00738470(extraout_ECX_02);
        if (iVar5 != 0x20) {
          (**(code **)(*piVar10 + 0x3c))(&DAT_00c34dd0,0xffffffff,0xff,0,1);
        }
        iVar1 = DAT_00c34b7c;
        iVar7 = DAT_00c34b78;
        iVar5 = DAT_00c34b74;
        piVar10[0x10a] = DAT_00c34b70;
        piVar10[0x10b] = iVar5;
        piVar10[0x10c] = iVar7;
        piVar10[0x10d] = iVar1;
      }
      (**(code **)(*piVar10 + 0xc))();
      if (*(int *)(param_1 + 0x28) == 0x27) {
        if ((*(int *)(param_1 + 0x2c) == 1) || (*(int *)(param_1 + 0x2c) == 3)) goto LAB_0052d4e8;
      }
      else {
        if ((*(int *)(param_1 + 0x28) != 0x31) || (*(int *)(param_1 + 0x2c) != 1))
        goto LAB_0052d8a5;
LAB_0052d4e8:
        local_128 = (float *)(*(uint *)(param_1 + 0xbb0) ^ DAT_00bacb70);
        fVar14 = (float)(*(uint *)(param_1 + 0xbb4) ^ DAT_00bacb70);
        local_118 = 0.0;
        local_114 = -20.0;
        FUN_00499d60();
        local_120 = *(float *)(param_1 + 0x340) + DAT_00ba9fe4;
        local_124 = (float)local_128 * DAT_00baa7a4 + *(float *)(param_1 + 0x33c);
        piVar10 = (int *)FUN_0096f310(1,&local_124,fVar14 * DAT_00baa948,0x20,&local_118,param_1,0);
        fVar14 = DAT_00baadc0;
        if (*(float *)(param_1 + 0xbb4) <= DAT_00baad2c &&
            DAT_00baad2c != *(float *)(param_1 + 0xbb4)) {
          fVar14 = DAT_00baabfc;
        }
        piVar10[0xd6] = (int)fVar14;
        (**(code **)(*piVar10 + 0xc))();
        if (*(int *)(param_1 + 0x28) != 0x27) goto LAB_0052d8a5;
      }
      if (*(int *)(param_1 + 0x2c) == 3) {
        fVar14 = (float)(*(uint *)(param_1 + 0xbb0) ^ DAT_00bacb70);
        local_118 = 0.0;
        local_114 = -20.0;
        FUN_00499d60();
        local_124 = *(float *)(param_1 + 0x33c) - *(float *)(param_1 + 0xbb4) * DAT_00baa7a4;
        local_120 = *(float *)(param_1 + 0x340) + DAT_00ba9fe4;
        piVar10 = (int *)FUN_0096f310(1,&local_124,fVar14 * DAT_00baa948,0x20,&local_118,param_1,0);
        fVar14 = DAT_00baadc0;
        if ((DAT_00baad2c < *(float *)(param_1 + 0xbb4) ||
             DAT_00baad2c == *(float *)(param_1 + 0xbb4)) &&
           (*(float *)(param_1 + 0xbb0) <= DAT_00baa2d0)) {
          fVar14 = DAT_00baabfc;
        }
        piVar10[0xd6] = (int)fVar14;
        (**(code **)(*piVar10 + 0xc))();
        fVar14 = *(float *)(param_1 + 0xbb0);
        local_118 = 0.0;
        local_114 = -20.0;
        FUN_00499d60();
        local_120 = *(float *)(param_1 + 0x340) + DAT_00ba9fe4;
        local_124 = *(float *)(param_1 + 0xbb4) * DAT_00baa7a4 + *(float *)(param_1 + 0x33c);
        piVar10 = (int *)FUN_0096f310(1,&local_124,fVar14 * DAT_00baa948,0x20,&local_118,param_1,0);
        if ((*(float *)(param_1 + 0xbb4) <= DAT_00baad2c &&
             DAT_00baad2c != *(float *)(param_1 + 0xbb4)) ||
           (*(float *)(param_1 + 0xbb0) <= DAT_00baad2c &&
            DAT_00baad2c != *(float *)(param_1 + 0xbb0))) {
          piVar10[0xd6] = (int)DAT_00baadc0;
          (**(code **)(*piVar10 + 0xc))();
        }
        else {
          piVar10[0xd6] = (int)DAT_00baabfc;
          (**(code **)(*piVar10 + 0xc))();
        }
      }
    }
  }
  else if (iVar5 == 10) {
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 == '\0') goto LAB_0052d884;
    local_114 = *(float *)(param_1 + 0xbb4) * DAT_00baa85c;
    local_118 = *(float *)(param_1 + 0xbb0) * DAT_00baa85c * DAT_00baa500;
    uVar6 = FUN_006eef60();
    uVar19 = 0;
    pTVar18 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
    pTVar16 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar15 = 0;
    uVar6 = FUN_00428b20(*(undefined4 *)(param_1 + 0x28),0x16,pfVar11,&local_118,param_1,0,uVar6);
    piVar10 = (int *)__RTDynamicCast(uVar6,uVar15,pTVar16,pTVar18,uVar19);
    piVar10[0x2d9] = 0;
    FUN_006a92a0(param_1);
    if ((float)(*(uint *)(param_1 + 0xbb4) & DAT_00bacb40) <
        (float)(*(uint *)(param_1 + 0xbb0) & DAT_00bacb40)) {
      fVar14 = (float)piVar10[0xd0] + DAT_00baa120;
      piVar10[0xcf] = (int)((float)piVar10[0xcf] + DAT_00ba9fe4);
      piVar10[0xd0] = (int)fVar14;
    }
    (**(code **)(*piVar10 + 0xc))();
  }
LAB_0052d8a5:
  if (*(int *)(param_1 + 0x28) == 0x344) {
    if (((*(int *)(param_1 + 0x3c0) == 0) || (*(int *)(*(int *)(param_1 + 0x3c0) + 0x28) != 7)) &&
       (*(int *)(param_1 + 0xb64) != 9)) {
      cVar3 = FUN_00a10630(&DAT_00c7b640);
      if (cVar3 != '\0') {
        *extraout_ECX_03 = DAT_00c7b640;
        extraout_ECX_03[1] = DAT_00c7b644;
        FUN_006a9320(0);
      }
    }
    else {
      iVar5 = *(int *)(param_1 + 0x3c4);
      fVar14 = DAT_00baa280;
      if (iVar5 == 0) {
        if (*(int *)(param_1 + 0xf1c) != -1) {
          iVar7 = *(int *)(param_1 + 0xf1c);
          pfVar11 = (float *)FUN_006d8d30(&local_134);
          goto LAB_0052d935;
        }
      }
      else {
        iVar7 = *(int *)(param_1 + 0xf1c);
        if (iVar7 == -1) {
          local_118 = *(float *)(iVar5 + 0x33c);
          pfVar11 = &local_118;
          local_114 = (float)*(undefined4 *)(iVar5 + 0x340);
        }
        else {
          pfVar11 = (float *)FUN_006d8d30(&local_134);
        }
LAB_0052d935:
        fVar12 = *pfVar11;
        local_114 = *(float *)(param_1 + 0x334);
        local_120 = pfVar11[1];
        local_134 = fVar12 - local_114;
        local_130 = (float *)(local_120 - *(float *)(param_1 + 0x338));
        local_12c = DAT_00baa630;
        if (iVar7 != -1) {
          local_12c = fVar14;
        }
        local_128 = local_130;
        local_11c = local_134;
        pfVar11 = (float *)FUN_00a10030(&local_2c);
        fVar13 = *(float *)(param_1 + 0xbb4) * pfVar11[1] + *pfVar11 * *(float *)(param_1 + 0xbb0);
        fVar14 = local_12c;
        if (fVar13 < 0.0) {
          fVar14 = local_12c * (fVar13 + DAT_00baa454);
        }
        if (DAT_00baa06c < (float)local_128 * (float)local_128 + local_11c * local_11c) {
          pfVar11 = (float *)FUN_00a10100(&local_2c,fVar14);
          *(float *)(param_1 + 0x334) = local_114 + *pfVar11;
          fVar14 = pfVar11[1] + *(float *)(param_1 + 0x338);
        }
        else {
          *(float *)(param_1 + 0x334) = fVar12;
          fVar14 = local_120;
        }
        *(float *)(param_1 + 0x338) = fVar14;
      }
      iVar5 = *(int *)(param_1 + 0x3c0);
      if ((iVar5 != 0) && (*(int *)(iVar5 + 0x28) == 7)) {
        uVar6 = *(undefined4 *)(param_1 + 0x338);
        *(undefined4 *)(iVar5 + 0x334) = *(undefined4 *)(param_1 + 0x334);
        *(undefined4 *)(iVar5 + 0x338) = uVar6;
      }
    }
  }
  fVar14 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  *(int *)(param_1 + 0x410) =
       *(int *)(param_1 + 0x410) +
       ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
  *(float *)(param_1 + 0x36c) = fVar14;
LAB_0052db32:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

