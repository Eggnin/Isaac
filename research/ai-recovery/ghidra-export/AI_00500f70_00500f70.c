/* Local J460 decompiler output.
 * VA: 0x00500f70
 * Entry: 00500f70
 * Dispatcher: 0x006c2990
 * Types: 826
 * Identities: 826.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00501e10; instructions=816
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=826; identities=826.0.0; dispatcher=0x006c2990;
   end=0x00501e10; instructions=816 */

void __fastcall AI_00500f70(int *param_1)

{
  float *pfVar1;
  char cVar2;
  uint uVar3;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  float *pfVar7;
  undefined4 uVar8;
  int iVar9;
  float fVar10;
  int *piVar11;
  float fVar12;
  undefined auStack_138 [4];
  int *piStack_134;
  float local_130;
  float fStack_12c;
  float fStack_128;
  int *piStack_124;
  float fStack_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  int iStack_104;
  int iStack_100;
  int iStack_fc;
  int iStack_f8;
  undefined auStack_f4 [12];
  undefined4 uStack_e8;
  uint uStack_e4;
  int *piStack_e0;
  undefined4 uStack_dc;
  undefined auStack_d8 [20];
  float fStack_c4;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_44;
  undefined auStack_2c [32];
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_138;
  local_130 = *(float *)(DAT_00c71678 + 0x18300);
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa418);
  switch(param_1[0x2d9]) {
  case 0:
    iStack_104 = _DAT_00babf20;
    iStack_100 = _UNK_00babf24;
    iStack_fc = _UNK_00babf28;
    iStack_f8 = _UNK_00babf2c;
    param_1[0x104] = 0;
    _auStack_f4 = ZEXT816(0);
    param_1[0x2d9] = 3;
    uStack_e4 = 0x3df0f0f1;
    piStack_e0 = (int *)0x3df0f0f1;
    uStack_dc = 0x3df0f0f1;
    FUN_004071f0(&iStack_104);
    break;
  case 3:
    FUN_00420a80(auStack_2c,"Idle%d",param_1[0xc] + 1);
    FUN_0040a380(auStack_2c,0);
    if (0 < param_1[0x104]) {
      param_1[0x104] = param_1[0x104] + -1;
    }
    uVar3 = FUN_006eef60();
    if (((uVar3 % 5 == 0) && (cVar2 = FUN_006ac710(5,param_1[8]), cVar2 != '\0')) &&
       (param_1[0x104] < 1)) {
      param_1[0x2f1] = 0;
      cVar2 = FUN_00417430(0x1000800,0);
      if (cVar2 == '\0') {
        cVar2 = FUN_00417430(0x200,0);
        if (cVar2 == '\0') {
          param_1[0x2d9] = 8;
        }
        else {
          param_1[0x2f0] = 0;
          param_1[0x2d9] = 6;
          FUN_00420a80(auStack_2c,"Slide%d",param_1[0xc] + 1);
          FUN_0040a380(auStack_2c,0);
          piVar4 = (int *)FUN_0067f070(&fStack_114);
          param_1[0xd8] = *piVar4;
          param_1[0xd9] = piVar4[1];
        }
      }
      else {
        param_1[0x2f0] = 0;
        param_1[0x2d9] = 6;
        FUN_00420a80(auStack_2c,"Slide%d",param_1[0xc] + 1);
        FUN_0040a380(auStack_2c,0);
        pfVar7 = (float *)FUN_006bec40(&fStack_114,0x3f800000);
        fVar10 = pfVar7[1];
        param_1[0xd8] = (int)(*pfVar7 - (float)param_1[0xcf]);
        param_1[0xd9] = (int)(fVar10 - (float)param_1[0xd0]);
      }
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa2d0);
    break;
  case 4:
  case 6:
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_00420a80(auStack_2c,"Slide%d",param_1[0xc] + 1);
    }
    FUN_0040a380(auStack_2c,0);
    iVar9 = param_1[0x2f0];
    param_1[0x2f0] = iVar9 + 1;
    if ((param_1[0x2f1] < 1) || (iVar9 + 1 < 0x1e)) {
      piStack_134 = (int *)param_1[0xd8];
      piStack_124 = (int *)param_1[0xd9];
      fVar10 = (float)piStack_134 * (float)piStack_134 + (float)piStack_124 * (float)piStack_124;
      FUN_00435a50();
      piVar4 = piStack_124;
      piVar11 = piStack_134;
      if (0.0 < fVar10) {
        piVar4 = (int *)((float)piStack_124 * (DAT_00baa454 / fVar10));
        piVar11 = (int *)((float)piStack_134 * (DAT_00baa454 / fVar10));
      }
      fVar10 = (float)param_1[0xdb];
      fVar12 = (float)piVar11 * DAT_00baa354;
      if (NAN(fVar10) == (fVar10 == 0.0)) {
        param_1[0xd9] =
             (int)(((float)param_1[0xe7] * (float)piVar4 * DAT_00baa354) / fVar10 +
                  (float)param_1[0xd9]);
        param_1[0xd8] = (int)(((float)param_1[0xe7] * fVar12) / fVar10 + (float)param_1[0xd8]);
      }
    }
    else {
      fVar10 = (float)param_1[0xd8] * (float)param_1[0xd8] +
               (float)param_1[0xd9] * (float)param_1[0xd9];
      FUN_00435a50();
      if (fVar10 < DAT_00baa454) {
        param_1[0x2d9] = 3;
      }
      else if (fVar10 < DAT_00baa804) {
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
      }
    }
    uVar3 = FUN_006eef60();
    if ((uVar3 & 1) == 0) {
      _auStack_f4 = ZEXT816(0);
      uStack_e4 = 0;
      piStack_e0 = (int *)0x0;
      uStack_dc = 0;
      iStack_104 = _DAT_00bac480;
      iStack_100 = _UNK_00bac484;
      iStack_fc = _UNK_00bac488;
      iStack_f8 = _UNK_00bac48c;
      FUN_0067f070(&fStack_12c);
      iVar9 = FUN_006eef60();
      fVar10 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4;
      piStack_134 = (int *)(fVar10 + fVar10 + DAT_00baa454);
      iVar9 = FUN_006eef60();
      fVar10 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4;
      piStack_124 = (int *)(fStack_12c * fVar10 * (float)param_1[0xdc] + (float)param_1[0xcf]);
      fStack_120 = fStack_128 * fVar10 * (float)param_1[0xdc] + (float)param_1[0xd0];
      uVar8 = FUN_006eef60();
      fStack_11c = fStack_12c * (float)piStack_134;
      fStack_118 = fStack_128 * (float)piStack_134;
      piVar4 = (int *)FUN_006fe410(1000,0x23,&piStack_124,&fStack_11c,0,0,uVar8,0);
      piVar4[0xd3] = param_1[0xd3];
      piVar4[0xd4] = param_1[0xd4];
      (**(code **)(*piVar4 + 0x3c))(&iStack_104,0xffffffff,0xff,0,1);
      (**(code **)(*piVar4 + 0xc))();
    }
    if (*(char *)(param_1 + 100) != '\0') {
      fStack_12c = (float)param_1[0x67] * (float)param_1[0xdc] +
                   (float)param_1[0x65] + (float)param_1[0xcf];
      fStack_128 = (float)param_1[0x66] + (float)param_1[0xd0] +
                   (float)param_1[0x68] * (float)param_1[0xdc];
      piStack_134 = (int *)FUN_007f0780(fStack_12c,fStack_128);
      if (((param_1[0x2d9] != 6) &&
          (pfVar7 = (float *)FUN_00a10030(&fStack_114),
          DAT_00baa2d0 < (float)param_1[0x68] * pfVar7[1] + (float)param_1[0x67] * *pfVar7)) &&
         ((piStack_134 == (int *)0x3 || (piStack_134 == (int *)&DAT_00000004)))) {
        piStack_134 = (int *)0x34;
        FUN_00956780();
        FUN_0092dc30(piStack_134,0x3f800000,0x1e,0,0x3f800000,0);
        FUN_00703670(0xc);
        piVar4 = (int *)FUN_00456620(&fStack_12c);
        if (piVar4 != (int *)0x0) {
          piStack_134 = *(int **)(*piVar4 + 0x14);
          iStack_104 = param_1[10];
          iStack_fc = param_1[0xd];
          iStack_f8 = param_1[0xe];
          iStack_100 = param_1[0xb];
          auStack_f4._8_4_ = param_1[0xd8];
          auStack_f4._0_8_ = *(undefined8 *)(param_1 + 0xcf);
          uStack_e8 = param_1[0xd9];
          local_130 = (float)(uint)((param_1[0x5a] & 0x100U) != 0);
          if ((param_1[0x5a] & 0x20000000U) == 0) {
            uVar3 = 0;
          }
          else {
            uVar3 = 2;
          }
          if ((param_1[0x5b] & 0x400000U) == 0) {
            uVar5 = 0;
          }
          else {
            uVar5 = 4;
          }
          uStack_e4 = uVar5 | uVar3 | (uint)local_130;
          piStack_e0 = param_1;
          (*(code *)piStack_134)(0,&iStack_104);
        }
        iVar9 = FUN_006be840();
        fStack_12c = *(float *)(iVar9 + 0x33c);
        fStack_128 = *(float *)(iVar9 + 0x340);
        cVar2 = FUN_004567b0();
        if ((cVar2 == '\0') &&
           (uVar3 = 0, *(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0
           )) {
          do {
            piStack_124 = (int *)FUN_00417870(uVar3);
            piStack_134 = (int *)((float)piStack_124[0xd0] - (float)param_1[0xd0]);
            local_130 = (float)piStack_124[0xcf] - (float)param_1[0xcf];
            fVar12 = (float)piStack_134 * (float)piStack_134 + local_130 * local_130;
            FUN_00435a50();
            fVar10 = local_130;
            piVar4 = piStack_134;
            if (DAT_00ba9fe4 < fVar12) {
              fVar10 = local_130 * (DAT_00baa454 / fVar12);
              piVar4 = (int *)((float)piStack_134 * (DAT_00baa454 / fVar12));
            }
            if (fVar12 < DAT_00baa9b4) {
              fStack_118 = (float)piVar4 * DAT_00baa6fc;
              fStack_11c = fVar10 * DAT_00baa6fc;
              piStack_134 = *(int **)(*piStack_124 + 0x54);
              iStack_104 = param_1[10];
              iStack_100 = param_1[0xb];
              iStack_fc = param_1[0xd];
              iStack_f8 = param_1[0xe];
              auStack_f4._8_4_ = param_1[0xd8];
              auStack_f4._0_8_ = *(undefined8 *)(param_1 + 0xcf);
              uStack_e8 = param_1[0xd9];
              local_130 = (float)(uint)((param_1[0x5a] & 0x100U) != 0);
              if ((param_1[0x5a] & 0x20000000U) == 0) {
                uVar5 = 0;
              }
              else {
                uVar5 = 2;
              }
              if ((param_1[0x5b] & 0x400000U) == 0) {
                uVar6 = 0;
              }
              else {
                uVar6 = 4;
              }
              uStack_e4 = uVar6 | uVar5 | (uint)local_130;
              piStack_e0 = param_1;
              (*(code *)piStack_134)(&iStack_104,&fStack_11c,0x40c00000);
            }
            uVar3 = uVar3 + 1;
          } while (uVar3 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) -
                                  *(int *)(DAT_00c71678 + 0x1baa8) >> 2));
        }
        if (param_1[0xc] == 0) {
          param_1[0xc] = 1;
          AI_0043ef30();
          uStack_44 = 9;
          fStack_12c = 10.0;
          fStack_128 = 0.0;
          FUN_006cb2e0(param_1 + 0xcf,&fStack_12c,8,auStack_d8);
        }
        else if (param_1[0xc] == 1) {
          param_1[0xc] = 2;
          AI_0043ef30();
          uStack_44 = 9;
          fStack_11c = 10.0;
          fStack_118 = 0.0;
          FUN_006cb2e0(param_1 + 0xcf,&fStack_11c,8,auStack_d8);
          FUN_006ccdd0(6,&fStack_12c,0,auStack_d8);
        }
        else {
          uVar8 = FUN_00435c70();
          (**(code **)(*param_1 + 0x24))(uVar8);
          AI_0043ef30();
          fStack_c4 = fStack_c4 * DAT_00baa4b0;
          uStack_44 = 9;
          uStack_80 = 0x10000;
          uStack_7c = 0;
          FUN_006ccdd0(8,&fStack_12c,0,auStack_d8);
          uVar3 = FUN_006eef60();
          local_130 = (float)((uVar3 & 1) + 2);
          do {
            fStack_11c = (float)(param_1[0x67] ^ DAT_00bacb70);
            fStack_12c = (float)(param_1[0x68] ^ DAT_00bacb70);
            iVar9 = FUN_006eef60();
            piStack_134 = (int *)(((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]
                                          ) * DAT_00ba9ff4 - DAT_00baa2d0) * DAT_00baaa00 *
                                 DAT_00baa088);
            piVar4 = piStack_134;
            FUN_0041d540();
            piStack_124 = piVar4;
            piVar4 = piStack_134;
            FUN_0041d520();
            fVar10 = (float)piStack_124 * fStack_12c;
            fStack_12c = (float)piStack_124 * fStack_11c - (float)piVar4 * fStack_12c;
            piStack_124 = (int *)(fVar10 + (float)piVar4 * fStack_11c);
            fStack_114 = fStack_12c * DAT_00baa87c + (float)param_1[0xcf];
            fStack_110 = (float)piStack_124 * DAT_00baa87c + (float)param_1[0xd0];
            iVar9 = FUN_006eef60();
            fVar10 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4;
            fStack_108 = fVar10 + fVar10 + DAT_00baa454;
            fStack_10c = fStack_12c * fStack_108;
            fStack_108 = (float)piStack_124 * fStack_108;
            FUN_004f9920(param_1,0);
            local_130 = (float)((int)local_130 - 1);
          } while (local_130 != 0.0);
        }
        param_1[0x2d9] = 0x10;
      }
      param_1[0x2f1] = param_1[0x2f1] + 1;
    }
    if (4 < param_1[0x2f1]) {
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
    }
    break;
  case 8:
    FUN_00420a80(auStack_2c,"Attack%d",param_1[0xc] + 1);
    FUN_0040a380(auStack_2c,0);
    if ((param_1[0x1f] != 0) && (cVar2 = FUN_0040add0("Slide"), cVar2 != '\0')) {
      iVar9 = FUN_006be840();
      fStack_114 = *(float *)(iVar9 + 0x33c) - (float)param_1[0xcf];
      fStack_110 = *(float *)(iVar9 + 0x340) - (float)param_1[0xd0];
      pfVar7 = (float *)FUN_00a10030(&fStack_10c);
      fVar10 = (float)param_1[0xdb];
      fVar12 = *pfVar7 * DAT_00baa87c;
      if ((NAN(fVar10) || NAN(DAT_00ba9fe4)) == (fVar10 == DAT_00ba9fe4)) {
        param_1[0xd9] =
             (int)(((float)param_1[0xe7] * pfVar7[1] * DAT_00baa87c) / fVar10 + (float)param_1[0xd9]
                  );
        param_1[0xd8] = (int)(((float)param_1[0xe7] * fVar12) / fVar10 + (float)param_1[0xd8]);
      }
      FUN_006d6ba0(0x73,0x3f800000,2,0,0x3f8ccccd);
      param_1[0x2f0] = 0;
      param_1[0x2d9] = 4;
    }
    break;
  case 0x10:
    FUN_00420a80(auStack_2c,"Hit%d",param_1[0xc] + 1);
    FUN_0040a380(auStack_2c,0);
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x104] = 0x3c;
      param_1[0x2d9] = 3;
    }
  }
  fVar10 = DAT_00baa6bc;
  pfVar1 = (float *)param_1[3];
  for (pfVar7 = (float *)param_1[2]; pfVar7 != pfVar1; pfVar7 = pfVar7 + 0xe) {
    if (((uint)pfVar7[2] & 0x1000004) != 0) {
      param_1[5] = (int)((float)param_1[5] - *pfVar7);
      fVar12 = *pfVar7;
      *pfVar7 = fVar12 * fVar10;
      param_1[5] = (int)(fVar12 * fVar10 + (float)param_1[5]);
    }
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    uVar8 = FUN_006eef60();
    iVar9 = FUN_006fe410(0xd9,0,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar8,0);
    fVar10 = *(float *)(iVar9 + 900) + *(float *)(iVar9 + 900);
    *(float *)(iVar9 + 900) = fVar10;
    *(float *)(iVar9 + 0x380) = fVar10;
  }
  if (param_1[0x2d9] != 0x10) {
    *(bool *)(param_1 + 0x52) = (float)param_1[0xd8] <= 0.0 && (float)param_1[0xd8] != 0.0;
  }
  FUN_00aef12b();
  return;
}

