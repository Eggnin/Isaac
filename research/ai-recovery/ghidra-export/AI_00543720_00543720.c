/* Local J460 decompiler output.
 * VA: 0x00543720
 * Entry: 00543720
 * Dispatcher: 0x006c2990
 * Types: 306
 * Identities: 306.0.0,306.1.0
 * Evidence: dispatcher=0x006c2990; end=0x0054381c; instructions=53
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=306; identities=306.0.0,306.1.0; dispatcher=0x006c2990;
   end=0x0054381c; instructions=53 */

void __fastcall AI_00543720(int *param_1)

{
  code *pcVar1;
  char cVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  int *piVar7;
  int *piVar8;
  float fVar9;
  float fVar10;
  double dVar11;
  undefined4 uVar12;
  undefined8 uVar13;
  float local_80;
  float local_7c;
  byte local_75;
  float fStack_74;
  int *local_70;
  float fStack_6c;
  float fStack_68;
  float local_64 [8];
  undefined4 local_44;
  undefined4 uStack_40;
  undefined4 local_3c;
  float fStack_38;
  float fStack_34;
  int iStack_30;
  int iStack_2c;
  undefined auStack_28 [8];
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&local_80;
  local_70 = param_1;
  if (param_1[0x2d9] == 0) {
    param_1[0x2d9] = 3;
    param_1[0x62] = 2;
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    param_1[0x5b] = param_1[0x5b] | 0x2000;
    param_1[0x5a] = param_1[0x5a];
    if (param_1[0xb] == 0) {
      param_1[0xd3] = 0;
      param_1[0xd4] = -0x3e100000;
    }
    iVar5 = _UNK_00babf2c;
    iVar4 = _UNK_00babf28;
    fVar9 = _UNK_00babf24;
    fVar10 = _DAT_00babf20;
    param_1[0xd5] = 0x28;
    local_44 = 0x3f1c9c9d;
    uStack_40 = 0x3e8c8c8d;
    local_3c = 0x3f3bbbbc;
    if ((float *)(param_1 + 0x79) != local_64) {
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
      *(undefined8 *)(param_1 + 0x81) = 0x3e8c8c8d3f1c9c9d;
      param_1[0x79] = (int)fVar10;
      param_1[0x7a] = (int)fVar9;
      param_1[0x7b] = iVar4;
      param_1[0x7c] = iVar5;
      param_1[0x83] = 0x3f3bbbbc;
    }
    uVar3 = param_1[0xf7];
    if (uVar3 == 0) {
      FUN_00a112c0(0x10,"RNG Seed is zero!\n");
      uVar3 = param_1[0xf7];
      if (uVar3 == 0) {
        pcVar1 = (code *)swi(3);
        (*pcVar1)();
        return;
      }
    }
    uVar3 = uVar3 >> ((byte)param_1[0xf8] & 0x1f) ^ uVar3;
    uVar3 = uVar3 << ((byte)param_1[0xf9] & 0x1f) ^ uVar3;
    uVar3 = uVar3 >> ((byte)param_1[0xfa] & 0x1f) ^ uVar3;
    param_1[0xf7] = uVar3;
    param_1[0x2f1] = 0xf;
    param_1[0x2f0] = uVar3 % 5 + 1;
    FUN_00aef12b();
    return;
  }
  iVar4 = param_1[0xb];
  if (iVar4 == 0) {
    iVar4 = *DAT_00c71678;
    if (iVar4 < 0xb) {
      if (iVar4 == 9) goto LAB_00543939;
    }
    else if (iVar4 != 0xc) {
LAB_00543939:
      (**(code **)(*param_1 + 0x28))();
      iVar4 = param_1[0xb];
      goto LAB_00543941;
    }
  }
  else {
LAB_00543941:
    piVar7 = DAT_00c71678;
    if (iVar4 == 1) {
      fStack_68 = DAT_00bf941c * DAT_00bf93e8;
      local_7c = DAT_00c78dc4;
      iVar4 = DAT_00c71678[0x60c0];
      local_80 = ((DAT_00c78dc4 - DAT_00baab20) * DAT_00baa2d0 +
                 ((float)local_70[0xcf] - DAT_00baa950) * DAT_00baa324) * fStack_68 + DAT_00baa2d0;
      dVar11 = floor((double)local_80);
      fStack_6c = (float)dVar11 / fStack_68;
      local_80 = DAT_00c78edc;
      fStack_74 = ((DAT_00c78edc - DAT_00baaa7c) * DAT_00baa2d0 +
                  ((float)local_70[0xd0] - DAT_00baaa30) * DAT_00baa324) * fStack_68 + DAT_00baa2d0;
      dVar11 = floor((double)fStack_74);
      fStack_74 = (float)dVar11;
      local_7c = (local_7c * DAT_00baa2d0 -
                 (fStack_6c + *(float *)(iVar4 + 0x1204) + (float)piVar7[0x9943])) /
                 (DAT_00bf93e8 * DAT_00baa8d0);
      local_80 = (local_80 * DAT_00baa2d0 -
                 (fStack_74 / fStack_68 + *(float *)(iVar4 + 0x1208) + (float)piVar7[0x9944])) /
                 (DAT_00bf93e8 * DAT_00baa8d0);
      fVar10 = local_80 * local_80 + local_7c * local_7c;
      FUN_00435a50();
      param_1 = local_70;
      if ((DAT_00baa528 < fVar10) && (0.0 < fVar10)) {
        local_7c = (DAT_00baa528 / fVar10) * local_7c;
        local_80 = local_80 * (DAT_00baa528 / fVar10);
      }
      iVar4 = FUN_0040b220();
      *(float *)(iVar4 + 0x40) = local_7c;
      *(float *)(iVar4 + 0x44) = local_80;
      iVar4 = FUN_0040b220();
      *(float *)(iVar4 + 0x40) = local_7c + local_7c;
      *(float *)(iVar4 + 0x44) = local_80 + local_80;
      iVar4 = FUN_0040b220();
      *(float *)(iVar4 + 0x40) = local_7c * DAT_00baa6fc;
      *(float *)(iVar4 + 0x44) = local_80 * DAT_00baa6fc;
    }
  }
  if (param_1[0x2d9] == 3) {
    FUN_0040a380(&DAT_00b1bc54,0);
    if (param_1[0x2f1] < 1) {
      local_80 = 0.0;
      iVar4 = *(int *)(DAT_00c71678[0x60c0] + 0x1264);
      if (iVar4 != 0) {
        piVar7 = *(int **)(DAT_00c71678[0x60c0] + 0x125c);
        do {
          iVar5 = *piVar7;
          if ((((1 < DAT_00c71678[0x9985]) && (*(int *)(iVar5 + 0x28) == 1)) ||
              (*(int *)(iVar5 + 0x28) - 10U < 0x3de)) && (*(int **)(iVar5 + 0x3c8) == local_70)) {
            local_80 = (float)((int)local_80 + 1);
          }
          piVar7 = piVar7 + 1;
          iVar4 = iVar4 + -1;
          param_1 = local_70;
        } while (iVar4 != 0);
      }
      if ((int)local_80 < (int)(4 - (uint)(param_1[0xb] != 1))) {
        param_1[0x2d9] = 8;
        if (param_1[0xb] == 1) {
          uVar3 = FUN_006eef60();
          param_1[0x2f1] = uVar3 % 0x1e + 0x3c;
          cVar2 = FUN_0040aaf0("SpawnOverlay",1);
          if (cVar2 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x2b) = 1;
          }
          FUN_006d6ba0(0xa2,0x3f800000,2,0,0x3f800000);
          goto LAB_00544123;
        }
        uVar3 = FUN_006eef60();
        iVar4 = uVar3 % 0x3c + 0x5a;
      }
      else {
        uVar3 = FUN_006eef60();
        iVar4 = uVar3 % 0x1e + 0x3c;
      }
      param_1[0x2f1] = iVar4;
    }
    goto LAB_00544123;
  }
  if (param_1[0x2d9] != 8) goto LAB_00544123;
  if ((param_1[0xb] == 0) || (cVar2 = FUN_0040add0(), cVar2 != '\0')) {
    local_80 = 0.0;
    local_7c = 0.0;
    if (param_1[0xb] == 1) {
      iVar4 = FUN_007e9020();
      local_80 = *(float *)(&DAT_00b614d8 + iVar4 * 8);
      local_7c = *(float *)(&DAT_00b614dc + iVar4 * 8);
    }
    else {
      local_75 = DAT_00c71678[1] != 0;
      iVar4 = *DAT_00c71678;
      if (iVar4 == 0xc) {
        iVar5 = FUN_007eece0();
        iVar4 = 1;
        if (2 < iVar5 - 1U) {
          if (iVar5 - 4U < 3) {
            iVar4 = 3;
          }
          else if (iVar5 - 7U < 3) {
            iVar4 = 5;
          }
          else if (iVar5 - 10U < 3) {
            iVar4 = 7;
          }
          else {
            if (iVar5 == 0xf) {
              local_75 = 1;
            }
            else {
              if (iVar5 != 0xe) goto LAB_00543c18;
              local_75 = 0;
            }
            iVar4 = 10;
          }
        }
      }
LAB_00543c18:
      cVar2 = FUN_006f8120();
      if (cVar2 == '\0') {
        switch(iVar4 + -1) {
        case 0:
        case 1:
          uVar3 = 0;
          if (DAT_00c71678[1] == 4) {
            uVar3 = 6;
          }
          else if (DAT_00c71678[1] == 5) {
            uVar3 = 7;
          }
          break;
        case 2:
        case 3:
          goto LAB_00543c3a;
        case 4:
        case 5:
          goto LAB_00543c41;
        case 6:
        case 7:
          goto LAB_00543c48;
        default:
          goto LAB_00543c96;
        case 9:
          uVar3 = (local_75 ^ 1) + 4;
          if (7 < uVar3) goto LAB_00543d30;
        }
      }
      else {
        switch(iVar4 + -1) {
        case 0:
          uVar3 = 0;
          break;
        case 1:
LAB_00543c3a:
          uVar3 = 1;
          break;
        case 2:
LAB_00543c41:
          uVar3 = 2;
          break;
        case 3:
LAB_00543c48:
          uVar3 = 3;
          break;
        case 4:
          uVar3 = 5;
          break;
        default:
LAB_00543c96:
          uVar3 = 4;
        }
      }
      iVar4 = FUN_007e9020();
      local_7c = 0.0;
      local_80 = *(float *)(&DAT_00b613e0 + (iVar4 + uVar3 * 7) * 4);
      if (local_80 == 7.707142e-44) {
        if (uVar3 == 4) {
          local_7c = 2.802597e-45;
        }
        else if (uVar3 == 5) {
          local_7c = 1.401298e-45;
        }
      }
      else if (local_80 == 2.914701e-43) {
        local_7c = 1.401298e-45;
      }
      else if (local_80 == 3.643376e-43) {
        local_7c = 1.401298e-44;
      }
      else if (local_80 == 2.970753e-43) {
        cVar2 = FUN_00417430(0x100,0);
        local_7c = (float)(uint)(cVar2 != '\0');
      }
    }
LAB_00543d30:
    uVar6 = FUN_007e90f0();
    piVar7 = (int *)FUN_006fe410(local_80,local_7c,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar6,0);
    iVar4 = FUN_00694fb0(local_80,local_7c,0);
    if ((iVar4 != 0) && (*(char *)(iVar4 + 0x34) != '\0')) {
      *(undefined *)((int)piVar7 + 0xc63) = *(undefined *)((int)param_1 + 0xc63);
      piVar7[0x319] = param_1[0x319];
    }
    (**(code **)(*piVar7 + 100))();
    piVar8 = piVar7 + 0xe1;
    if ((float)piVar7[0xe0] <= (float)piVar7[0xe1] && (float)piVar7[0xe1] != (float)piVar7[0xe0]) {
      piVar8 = piVar7 + 0xe0;
    }
    piVar7[0xe0] = *piVar8;
    if ((param_1[0x5a] & 0x100U) != 0) {
      uVar13 = 0;
      uVar12 = 0xffffffff;
      uVar6 = FUN_00435c70(0xffffffff,0,0);
      FUN_006ad870(uVar6,uVar12,uVar13);
    }
    if (param_1[0xb] == 1) {
      piVar7[0x5a] = piVar7[0x5a] & 0xfffffffb;
      piVar7[0x5b] = piVar7[0x5b] | 0x400;
      iVar4 = FUN_006eef60();
      fStack_6c = ((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa904 - DAT_00baa87c) * DAT_00baa088;
      fVar10 = fStack_6c;
      FUN_0041d540();
      fStack_74 = fVar10;
      fVar10 = fStack_6c;
      FUN_0041d520();
      uStack_18 = 0x3f21a1a2;
      fVar9 = fStack_74 * DAT_00baa75c;
      uStack_14 = 0x3ec4c4c5;
      uStack_10 = 0x3f6feff0;
      uVar6 = 0x1e;
      piVar7[0xd8] = (int)(fStack_74 * 0.0 - fVar10 * DAT_00baa75c);
      piVar7[0xd9] = (int)(fVar10 * 0.0 + fVar9);
    }
    else {
      uStack_18 = 0;
      uStack_14 = 0;
      uStack_10 = 0;
      uVar6 = 0x32;
    }
    _auStack_28 = ZEXT816(0);
    fStack_38 = _DAT_00babf20;
    fStack_34 = _UNK_00babf24;
    iStack_30 = _UNK_00babf28;
    iStack_2c = _UNK_00babf2c;
    (**(code **)(*piVar7 + 0x3c))(&fStack_38,uVar6,0x14,0x100000001);
    (**(code **)(*piVar7 + 0xc))();
    if (param_1[0xb] == 0) {
      FUN_006d6ba0(0x1c,0x3f800000,2,0,0x3f800000);
      param_1[0x2f0] = param_1[0x2f0] + -1;
      FUN_00456570();
      fStack_38 = (float)param_1[0xcf] + (float)param_1[0xd3];
      iVar4 = DAT_00c71678[0x60c0];
      fStack_34 = (float)param_1[0xd0] + (float)param_1[0xd4];
      uStack_20 = 10;
      auStack_28._0_4_ = 0x3c75c28f;
      piVar7 = (int *)(iVar4 + 0x70fc);
      *piVar7 = *piVar7 + 1;
      iStack_2c = 0x3cf5c28f;
      uVar3 = *(uint *)(iVar4 + 0x70fc) & 0x80000001;
      if ((int)uVar3 < 0) {
        uVar3 = (uVar3 - 1 | 0xfffffffe) + 1;
      }
      FUN_0081df10(uVar3,&fStack_38);
      goto LAB_00543fc2;
    }
LAB_00543fc8:
    if ((param_1[0x27] != 0) && (*(char *)(param_1 + 0x2b) != '\0')) goto LAB_00544123;
  }
  else {
LAB_00543fc2:
    if (param_1[0xb] != 0) goto LAB_00543fc8;
  }
  param_1[0x2d9] = 3;
LAB_00544123:
  if (0 < param_1[0x2f1]) {
    param_1[0x2f1] = ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + param_1[0x2f1];
  }
  if (param_1[0x2f0] < 1) {
    (**(code **)(*param_1 + 0x28))();
  }
  fVar10 = (float)param_1[0xdb] * DAT_00baa354;
  param_1[0xcf] = param_1[0xcd];
  param_1[0xd0] = param_1[0xce];
  param_1[0xdb] = (int)fVar10;
  FUN_00aef12b();
  return;
}

