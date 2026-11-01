/* Local J460 decompiler output.
 * VA: 0x004faad0
 * Entry: 004faad0
 * Dispatcher: 0x006c2990
 * Types: 827
 * Identities: 827.0.0,827.1.0
 * Evidence: dispatcher=0x006c2990; end=0x004fbd10; instructions=1019
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=827; identities=827.0.0,827.1.0; dispatcher=0x006c2990;
   end=0x004fbd10; instructions=1019 */

void __fastcall AI_004faad0(int param_1)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  char cVar4;
  int iVar5;
  float *pfVar6;
  undefined4 uVar7;
  int *piVar8;
  int iVar9;
  uint uVar10;
  uint uVar11;
  float10 fVar12;
  float fVar13;
  float fVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  undefined8 uVar17;
  undefined4 uVar18;
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
  undefined local_110 [12];
  undefined4 local_104;
  undefined4 local_fc;
  undefined4 local_f8;
  uint local_b8;
  undefined4 local_a8;
  undefined4 local_a4;
  int local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 local_44;
  uint local_40;
  uint local_3c;
  undefined4 local_38;
  undefined local_34;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  uVar18 = DAT_00b1f674;
  uVar17 = DAT_00b1f66c;
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af4015;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  fVar14 = *(float *)(DAT_00c71678 + 0x18300);
  iVar5 = *(int *)(param_1 + 0x3ec) + *(int *)(param_1 + 0x20);
  local_128 = fVar14;
  puVar3 = &stack0xfffffffc;
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0xbc0) = 0;
    *(undefined4 *)(param_1 + 0xbb0) = 0;
    *(undefined4 *)(param_1 + 0x410) = 0;
    puStack_20 = &stack0xfffffffc;
    cVar4 = FUN_0040a5d0("WalkVert",1);
    if (((cVar4 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
      *(undefined *)(param_1 + 0x8c) = 0;
    }
    cVar4 = FUN_0040aaf0(&DAT_00b5fed4,1);
    puVar3 = puStack_20;
    if ((cVar4 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
      FUN_00408e00();
      puVar3 = puStack_20;
    }
    break;
  case 3:
  case 8:
    local_40 = 0xf;
    local_44 = 8;
    local_54 = s_WalkVert_00b1dd18._0_4_;
    local_50 = s_WalkVert_00b1dd18._4_4_;
    local_4c = 0;
    local_28 = 0xf;
    local_2c = 8;
    local_3c = s_WalkHori_00b1dd30._0_4_;
    local_38 = s_WalkHori_00b1dd30._4_4_;
    local_34 = 0;
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    puStack_20 = &stack0xfffffffc;
    FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < local_28) {
      uVar11 = local_28 + 1;
      uVar10 = local_3c;
      if (0xfff < uVar11) {
        uVar10 = *(uint *)(local_3c - 4);
        uVar11 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar10) - 4) goto LAB_004facd8;
      }
      FUN_00aef15c(uVar10,uVar11);
    }
    local_14 = -1;
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar10 = local_40 + 1;
      iVar9 = local_54;
      if (0xfff < uVar10) {
        iVar9 = *(int *)(local_54 + -4);
        uVar10 = local_40 + 0x24;
        if (0x1f < (local_54 - iVar9) - 4U) {
LAB_004facd8:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar9,uVar10);
    }
    if (*(int *)(param_1 + 0xb64) == 8) {
      FUN_006d9050(0);
      cVar4 = FUN_0040add0("Shoot");
      if (cVar4 != '\0') {
        if (*(int *)(param_1 + 0x28) == 0x340) {
          iVar9 = FUN_006be840();
          local_130 = *(float *)(iVar9 + 0x33c) - *(float *)(param_1 + 0x33c);
          local_12c = *(float *)(iVar9 + 0x340) - *(float *)(param_1 + 0x340);
          FUN_00a10030(&local_124);
          cVar4 = FUN_00a10630(&DAT_00c7b640);
          if (cVar4 == '\0') {
            local_114 = local_120;
            local_120 = local_124;
          }
          else {
            pfVar6 = (float *)FUN_00a10030(&local_138);
            local_120 = *pfVar6;
            local_114 = pfVar6[1];
          }
          AI_0043ef30();
          local_b8 = local_b8 | 0x2800;
          uVar7 = FUN_00435a80();
          FUN_004071f0(uVar7);
          local_a8 = *(undefined4 *)(param_1 + 0x33c);
          iVar9 = param_1 + 0x33c;
          local_a4 = *(undefined4 *)(param_1 + 0x340);
          local_11c = local_120 * DAT_00baa7b8;
          local_110[0] = 0;
          local_118 = local_114 * DAT_00baa7b8;
          FUN_006cb2e0(iVar9,&local_11c,0,local_110);
          local_130 = (float)((uint)local_11c ^ DAT_00bacb70);
          local_12c = (float)((uint)local_118 ^ DAT_00bacb70);
          FUN_006cb2e0(iVar9,&local_130,0,local_110);
          uVar7 = FUN_006eef60();
          piVar8 = (int *)FUN_00428b20(1000,0xb,iVar9,&DAT_00c7b640,0,0,uVar7);
          piVar8[0x37] = 0;
          piVar8[0x38] = -0x3ea00000;
          piVar8[0xd6] = 0x40800000;
          (**(code **)(*piVar8 + 0x3c))(&DAT_00c34dfc,0xffffffff,0xff,0,1);
          fVar14 = local_128;
        }
        else {
          if (*(int *)(param_1 + 0x2c) == 1) {
            AI_0043ef30();
            local_f8 = 0;
            local_fc = 0x3fa66666;
            local_104 = 0xbd75c28f;
            local_11c = 8.0;
            local_118 = 6.0;
            FUN_006cb2e0(param_1 + 0x33c,&local_11c,9,local_110);
            uVar7 = FUN_006eef60();
            iVar9 = FUN_00428b20(1000,0xb,param_1 + 0x33c,&DAT_00c7b640,0,0,uVar7);
            *(undefined4 *)(iVar9 + 0xe0) = 0xc1800000;
          }
          else {
            AI_0043ef30();
            local_f8 = 0;
            local_11c = 7.0;
            local_118 = 6.0;
            FUN_006cb2e0(param_1 + 0x33c,&local_11c,9,local_110);
            uVar7 = FUN_006eef60();
            iVar9 = FUN_00428b20(1000,0xb,param_1 + 0x33c,&DAT_00c7b640,0,0,uVar7);
            *(undefined4 *)(iVar9 + 0xe0) = 0xc1600000;
          }
          *(undefined4 *)(iVar9 + 0x358) = 0x40800000;
          *(undefined4 *)(iVar9 + 0xdc) = 0;
        }
        FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
        fVar13 = *(float *)(param_1 + 0xbb0) - DAT_00baa7b8;
        if (fVar13 <= 0.0) {
          fVar13 = 0.0;
        }
        *(float *)(param_1 + 0xbb0) = fVar13;
      }
      if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
        cVar4 = FUN_0040aaf0(&DAT_00b5fed4,1);
        if ((cVar4 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
          FUN_00408e00();
        }
        *(undefined4 *)(param_1 + 0xb64) = 3;
      }
    }
    else if (*(int *)(param_1 + 0x9c) != 0) {
      FUN_0040a780();
      FUN_00408e00();
    }
    if (*(int *)(param_1 + 0x410) == 0) {
      if ((*(int *)(param_1 + 0xf1c) != -1) ||
         (*(float *)(param_1 + 0x380) <= *(float *)(param_1 + 900) &&
          *(float *)(param_1 + 900) != *(float *)(param_1 + 0x380))) {
LAB_004fb22f:
        *(undefined4 *)(param_1 + 0x410) = 1;
      }
      else {
        local_120 = 0.0;
        if (*(int *)((int)fVar14 + 0x1264) != 0) {
          do {
            iVar9 = *(int *)(*(int *)((int)fVar14 + 0x125c) + (int)local_120 * 4);
            if ((*(uint *)(param_1 + 0x168) & 0x100) == 0) {
              if ((*(int *)(iVar9 + 0x28) == 1) && (cVar4 = FUN_007c32c0(), cVar4 == '\0'))
              goto LAB_004fb17a;
            }
            else {
              cVar4 = FUN_006ac560(0);
              if ((cVar4 != '\0') && ((*(uint *)(iVar9 + 0x168) & 0x20000000) == 0)) {
LAB_004fb17a:
                fVar14 = *(float *)(param_1 + 0x340) - *(float *)(iVar9 + 0x340);
                fVar13 = *(float *)(param_1 + 0x33c) - *(float *)(iVar9 + 0x33c);
                fVar14 = fVar14 * fVar14 + fVar13 * fVar13;
                FUN_00435a50();
                if (fVar14 < DAT_00baa9a0) goto LAB_004fb22f;
              }
            }
            if ((*(int *)(iVar9 + 0x28) == 0x33b) && (*(int *)(iVar9 + 0x410) != 0)) {
              fVar14 = *(float *)(param_1 + 0x340) - *(float *)(iVar9 + 0x340);
              fVar13 = *(float *)(param_1 + 0x33c) - *(float *)(iVar9 + 0x33c);
              fVar14 = fVar14 * fVar14 + fVar13 * fVar13;
              FUN_00435a50();
              if (fVar14 < DAT_00baa9a0) goto LAB_004fb22f;
            }
            local_120 = (float)((int)local_120 + 1);
            fVar14 = local_128;
          } while ((uint)local_120 < (uint)*(float *)((int)local_128 + 0x1264));
        }
      }
    }
    uVar10 = FUN_006eef60();
    if (uVar10 % 6 == 0) {
      iVar9 = FUN_006eef60();
      FUN_006b64d0((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa2d0 + DAT_00baa198);
    }
    if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
      if (*(int *)(param_1 + 0x410) == 0) {
        FUN_007e6300(0);
        goto LAB_004fb2f1;
      }
      if ((*(int *)(param_1 + 0x28) == 0x340) && (*(int *)(param_1 + 0xf1c) == -1)) {
        FUN_006bec40(&local_11c,0);
        iVar9 = FUN_006be840();
        cVar4 = FUN_006ac710(0x1e,*(undefined4 *)(param_1 + 0x20));
        if (cVar4 != '\0') {
          uVar7 = *(undefined4 *)(iVar9 + 0x364);
          *(undefined4 *)(param_1 + 3000) = *(undefined4 *)(iVar9 + 0x360);
          *(undefined4 *)(param_1 + 0xbbc) = uVar7;
        }
        cVar4 = FUN_007f0df0((float *)(param_1 + 0x33c),&local_11c,0,0,0,0,0);
        if (cVar4 == '\0') {
          uVar16 = 1;
          uVar15 = 900;
          uVar7 = 0x3f19999a;
          pfVar6 = &local_11c;
          goto LAB_004fb5ae;
        }
        local_12c = *(float *)(param_1 + 0x33c) - local_11c;
        local_120 = *(float *)(param_1 + 0x340) - local_118;
        iVar9 = *(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328);
        fVar12 = (float10)FUN_007e9080();
        local_114 = (float)iVar9;
        local_128 = (float)(fVar12 * (float10)iVar9);
        fVar12 = (float10)FUN_007e9080();
        local_114 = ((float)fVar12 * DAT_00baab30 + local_128 + local_128) * DAT_00baa088;
        fVar14 = local_114;
        FUN_0041d540();
        local_128 = fVar14;
        FUN_0041d520();
        fVar14 = local_120 * local_120 + local_12c * local_12c;
        FUN_00435a50();
        fVar14 = fVar14 * DAT_00baa2d0;
        if (fVar14 <= 0.0) {
          fVar14 = 0.0;
        }
        if (DAT_00baa960 <= fVar14) {
          fVar14 = DAT_00baa960;
        }
        local_11c = (local_128 * fVar14 - local_114 * 0.0) + local_11c;
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
        local_118 = local_114 * fVar14 + local_128 * 0.0 + local_118;
        local_130 = local_11c - *(float *)(param_1 + 0x33c);
        local_12c = local_118 - *(float *)(param_1 + 0x340);
        pfVar6 = (float *)FUN_00a10030(&local_138);
        local_130 = *pfVar6 * DAT_00baa3a4;
        local_12c = pfVar6[1] * DAT_00baa3a4;
        FUN_004314b0(&local_130,0);
      }
      else {
        uVar16 = 1;
        uVar15 = 900;
        uVar7 = 0x3f19999a;
        pfVar6 = (float *)FUN_006bec40(&local_138,0);
LAB_004fb5ae:
        FUN_007e33c0(pfVar6,uVar7,uVar15,uVar16);
      }
    }
    else {
      iVar9 = FUN_006be840();
      local_11c = *(float *)(iVar9 + 0x33c);
      local_118 = *(float *)(iVar9 + 0x340);
      FUN_007e4940(&local_11c,0);
LAB_004fb2f1:
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    }
    if (*(int *)(param_1 + 0xb64) != 8) {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        if (*(int *)(param_1 + 0x34) != 0x38a) {
          fVar14 = *(float *)(param_1 + 0xbb0);
          FUN_00435a50();
          local_120 = fVar14 * DAT_00baa108 + DAT_00baa068;
          if (*(int *)(param_1 + 0x28) == 0x340) {
            local_120 = local_120 * DAT_00baa220;
          }
          if (*(int *)(param_1 + 0x3d4) != 0) {
            local_120 = local_120 * DAT_00baa324;
          }
          if (((*(int *)(param_1 + 0x28) == 0x33b) && (*(int *)(param_1 + 0x2c) == 1)) &&
             (0 < *(int *)(param_1 + 0x410))) {
            local_120 = DAT_00baa454;
          }
          iVar9 = FUN_006eef60();
          if ((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 <=
              local_120) goto LAB_004fb6b6;
        }
      }
      else {
        cVar4 = FUN_006cae60(0,7);
        if (cVar4 != '\0') {
          FUN_006d9050(1);
LAB_004fb6b6:
          FUN_0040a940("Attack",0);
          *(undefined4 *)(param_1 + 0xb64) = 8;
        }
      }
    }
    puVar3 = puStack_20;
    if (((*(int *)(param_1 + 0x28) == 0x33b) && (*(int *)(param_1 + 0x2c) == 1)) &&
       ((iVar9 = FUN_006ac760(), puVar3 = puStack_20, iVar9 != 0 &&
        (uVar10 = FUN_006eef60(), puVar3 = puStack_20, (uVar10 & 1) == 0)))) {
      FUN_006d6ba0(3,0x3f333333,2,0,0x3f800000);
      puVar3 = puStack_20;
    }
    break;
  case 5:
    puStack_20 = &stack0xfffffffc;
    FUN_0040a940("Transition",0);
    cVar4 = FUN_0040add0("Shoot");
    if (cVar4 != '\0') {
      FUN_009568e0(0x1e,2,0,0x3f800000);
      uVar7 = FUN_006eef60();
      piVar8 = (int *)FUN_00428b20(1000,0x93,param_1 + 0x33c,&DAT_00c7b640,0,1,uVar7);
      (**(code **)(*piVar8 + 0xc))();
      piVar8[0x37] = 0;
      piVar8[0x38] = -0x3e600000;
      (**(code **)(*piVar8 + 0x40))(0);
      uVar7 = FUN_006eef60();
      piVar8 = (int *)FUN_00428b20(1000,2,param_1 + 0x33c,&DAT_00c7b640,0,3,uVar7);
      (**(code **)(*piVar8 + 0x3c))(&DAT_00c34da4,0xffffffff,0xff,0,1);
      uVar7 = FUN_006eef60();
      piVar8 = (int *)FUN_00428b20(1000,7,param_1 + 0x33c,&DAT_00c7b640,0,0,uVar7);
      (**(code **)(*piVar8 + 0x3c))(&DAT_00c34da4,0xffffffff,0xff,0,1);
      (**(code **)(*piVar8 + 0xc))();
      uVar10 = FUN_006eef60();
      for (local_120 = (float)(uVar10 % 5 + 3); local_120 != 0.0;
          local_120 = (float)((int)local_120 - 1)) {
        iVar9 = FUN_006eef60();
        local_12c = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa704;
        local_12c = local_12c + local_12c;
        fVar14 = local_12c;
        FUN_0041d540();
        local_138 = fVar14 * *(float *)(param_1 + 0x370) * DAT_00baa2d0 +
                    *(float *)(param_1 + 0x33c);
        fVar14 = local_12c;
        FUN_0041d520();
        local_134 = fVar14 * *(float *)(param_1 + 0x370) * DAT_00baa2d0 +
                    *(float *)(param_1 + 0x340);
        iVar9 = FUN_006eef60();
        local_114 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa704;
        local_114 = local_114 + local_114;
        iVar9 = FUN_006eef60();
        local_128 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa75c + DAT_00baa630;
        fVar14 = local_114;
        FUN_0041d540();
        local_11c = fVar14 * local_128;
        fVar14 = local_114;
        FUN_0041d520();
        local_118 = fVar14 * local_128;
        uVar7 = FUN_006eef60();
        piVar8 = (int *)FUN_00428b20(1000,5,&local_138,&local_11c,0,0,uVar7);
        (**(code **)(*piVar8 + 0x3c))(&DAT_00c34dfc,0xffffffff,0xff,0,1);
        iVar2 = iRam00c34e08;
        iVar1 = iRam00c34e04;
        iVar9 = iRam00c34e00;
        if (piVar8 + 0x79 != (int *)&DAT_00c34dfc) {
          piVar8[0x79] = _DAT_00c34dfc;
          piVar8[0x7a] = iVar9;
          piVar8[0x7b] = iVar1;
          piVar8[0x7c] = iVar2;
          iVar2 = iRam00c34e18;
          iVar1 = iRam00c34e14;
          iVar9 = iRam00c34e10;
          piVar8[0x7d] = _DAT_00c34e0c;
          piVar8[0x7e] = iVar9;
          piVar8[0x7f] = iVar1;
          piVar8[0x80] = iVar2;
          *(undefined8 *)(piVar8 + 0x81) = DAT_00c34e1c;
          piVar8[0x83] = DAT_00c34e24;
        }
        (**(code **)(*piVar8 + 0xc))();
      }
    }
    if ((*(int *)(param_1 + 0x9c) == 0) || (puVar3 = puStack_20, *(char *)(param_1 + 0xac) == '\0'))
    {
      iVar9 = FUN_0040b220(0);
      *(undefined *)(iVar9 + 0x74) = 1;
      *(undefined4 *)(param_1 + 0xb64) = 3;
      *(float *)(param_1 + 0x334) = DAT_00c7b640;
      *(float *)(param_1 + 0x338) = DAT_00c7b644;
      FUN_0040a6e0("WalkVert",0);
      cVar4 = FUN_0040aaf0(&DAT_00b5fed4,1);
      if ((cVar4 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
        FUN_00408e00();
      }
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffe;
      *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
      *(undefined4 *)(param_1 + 0x410) = 1;
      puVar3 = puStack_20;
    }
    break;
  case 0x10:
    puVar3 = &stack0xfffffffc;
    if ((*(int *)(param_1 + 0x9c) == 0) ||
       (cVar4 = FUN_004073b0(local_24), puVar3 = puStack_20, cVar4 == '\0')) {
      puStack_20 = puVar3;
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 1;
      *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
      iVar9 = FUN_0040b220(0);
      *(undefined *)(iVar9 + 0x74) = 0;
      if (*(int *)(param_1 + 0x30) - 1U < 5) {
        iVar9 = *(int *)(param_1 + 0x30) + -1;
      }
      else {
        iVar9 = 1;
      }
      FUN_0040a940((&PTR_s_Summon1_00b60b40)[iVar9],0);
      if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
        FUN_0040a940((&PTR_s_SummonLoop1_00b60b54)[iVar9],0);
      }
    }
    puVar3 = puStack_20;
    if ((0 < *(int *)(param_1 + 0x410)) &&
       (iVar9 = ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
                *(int *)(param_1 + 0x410), *(int *)(param_1 + 0x410) = iVar9, iVar9 < 1)) {
      *(undefined4 *)(param_1 + 0xb64) = 5;
    }
  }
  puStack_20 = puVar3;
  if ((((*(char *)(param_1 + 0x173) != '\0') && (DAT_00baae00 < *(float *)(param_1 + 0x380))) &&
      (uVar10 = FUN_006eef60(), (uVar10 & 1) == 0)) &&
     ((*(int *)(param_1 + 0x28) != 0x33b || (*(int *)(param_1 + 0x2c) != 1)))) {
    uVar10 = FUN_006eef60();
    FUN_006c0f30(0xb,uVar10 % 3 == 0,0,0xffffffff);
    *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
    *(undefined *)(param_1 + 0x173) = 0;
  }
  fVar14 = *(float *)(param_1 + 0xbb0);
  if (0.0 < *(float *)(param_1 + 0x14)) {
    fVar14 = fVar14 + *(float *)(param_1 + 0x14);
    *(float *)(param_1 + 0xbb0) = fVar14;
  }
  if (0.0 < fVar14) {
    fVar13 = fVar14 - DAT_00baa12c;
    if (fVar14 - DAT_00baa12c <= 0.0) {
      fVar13 = 0.0;
    }
    *(float *)(param_1 + 0xbb0) = fVar13;
  }
  fVar14 = *(float *)(param_1 + 0x334);
  if (((NAN(fVar14) || NAN(DAT_00c7b640)) == (fVar14 == DAT_00c7b640)) ||
     ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) ==
      (*(float *)(param_1 + 0x338) == DAT_00c7b644))) {
    *(float *)(param_1 + 0x360) =
         (fVar14 - *(float *)(param_1 + 0x33c)) / *(float *)(param_1 + 0x36c);
    *(float *)(param_1 + 0x364) =
         (*(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340)) / *(float *)(param_1 + 0x36c);
  }
  ExceptionList = local_1c;
  FUN_00aef12b(iVar5,uVar17,uVar18);
  return;
}

