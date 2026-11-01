/* Local J460 decompiler output.
 * VA: 0x0043f0c0
 * Entry: 0043f0c0
 * Dispatcher: 0x006c2990
 * Types: 908
 * Identities: 908.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0043fcd5; instructions=623
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=908; identities=908.0.0; dispatcher=0x006c2990;
   end=0x0043fcd5; instructions=623 */

void __fastcall AI_0043f0c0(int *param_1)

{
  code *pcVar1;
  longlong lVar2;
  longlong lVar3;
  float fVar4;
  int *piVar5;
  char cVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  uint uVar10;
  undefined4 uVar11;
  int *piVar12;
  char *pcVar13;
  undefined4 extraout_ECX;
  uint uVar14;
  bool bVar15;
  float fVar16;
  float fVar17;
  ulonglong uVar18;
  int local_188;
  uint uStack_184;
  uint uStack_180;
  float fStack_17c;
  float fStack_178;
  uint uStack_174;
  float fStack_170;
  int *piStack_16c;
  int *piStack_168;
  uint uStack_15c;
  float fStack_158;
  float fStack_154;
  float fStack_150;
  int iStack_14c;
  undefined4 uStack_148;
  undefined4 uStack_144;
  uint uStack_140;
  int *local_13c;
  undefined4 uStack_138;
  int iStack_130;
  uint uStack_12c;
  int *piStack_128;
  int iStack_124;
  int iStack_120;
  int iStack_11c;
  undefined4 uStack_118;
  undefined8 uStack_110;
  uint uStack_108;
  undefined auStack_104 [4];
  undefined auStack_100 [8];
  int iStack_f8;
  uint uStack_f4;
  undefined8 uStack_f0;
  uint uStack_e8;
  undefined auStack_e4 [16];
  undefined auStack_d4 [16];
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined auStack_b8 [4];
  undefined4 uStack_b4;
  float fStack_ac;
  float fStack_a4;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&local_188;
  iVar9 = *(int *)(DAT_00c71678 + 0x18300);
  local_188 = iVar9;
  local_13c = param_1;
  switch(param_1[0x2d9]) {
  case 0:
    param_1[0x2d9] = 3;
    if ((*(int *)(iVar9 + 8) == 5) && (*(int *)(iVar9 + 0x1bb0) == 0x54)) {
      *(undefined4 *)(iVar9 + 0x73f0) = *(undefined4 *)(DAT_00c71678 + 0x264f8);
    }
    break;
  case 3:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    FUN_0040a380(&DAT_00b1bc54,0);
    iVar9 = FUN_006be840();
    piStack_16c = *(int **)(iVar9 + 0x340);
    fVar16 = (float)(*(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca]);
    fVar16 = (fVar16 + fVar16) * DAT_00baa088;
    fStack_158 = fVar16;
    FUN_0041d540();
    fStack_17c = fVar16 * DAT_00baa9a0 + *(float *)(iVar9 + 0x33c);
    fVar16 = fStack_158;
    FUN_0041d520();
    fStack_178 = fVar16 * DAT_00baa9a0 + (float)piStack_16c;
    FUN_007e33c0(&fStack_17c,0x3f19999a,0,1);
    iVar9 = local_188;
    if ((0 < *(int *)(local_188 + 0x73f0)) &&
       (900 < *(int *)(DAT_00c71678 + 0x264f8) - *(int *)(local_188 + 0x73f0))) {
      param_1[0x2d9] = 0x10;
      param_1[0xcd] = DAT_00c7b640;
      param_1[0xce] = DAT_00c7b644;
      param_1[0x2e8] = -1;
      param_1[0x104] = 0;
      FUN_00aef12b();
      return;
    }
    param_1[0x104] = param_1[0x104] + ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
    if ((0x1e < param_1[0x104]) && (uVar8 = FUN_006eef60(), uVar8 % 0x1e == 0)) {
      uVar8 = FUN_006eef60();
      uVar8 = uVar8 % 3;
      if (uVar8 == 0) {
        param_1[0x2d9] = 8;
        param_1[0x2e8] = -1;
      }
      else if (uVar8 == 1) {
        param_1[0x2d9] = 9;
        param_1[0x2e8] = -1;
      }
      else if (uVar8 == 2) {
        param_1[0x2d9] = 10;
        param_1[0x2e8] = -1;
      }
    }
    break;
  case 8:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    FUN_0040a380(&DAT_00b1d2cc,0);
    if (param_1[0x1f] != 0) {
      cVar6 = FUN_0040add0("Shoot");
      if (cVar6 != '\0') {
        iVar9 = FUN_006be840();
        fStack_17c = *(float *)(iVar9 + 0x33c) - (float)param_1[0xcf];
        fStack_178 = *(float *)(iVar9 + 0x340) - (float)param_1[0xd0];
        FUN_00a10030(&fStack_154);
        fVar17 = fStack_154 * DAT_00baa75c;
        fVar16 = fStack_150 * DAT_00baa75c;
        param_1[0xcd] = (int)fVar17;
        param_1[0xce] = (int)fVar16;
        param_1[0x2e8] = 0;
        *(bool *)(param_1 + 0x52) = fVar17 < 0.0;
      }
      if (param_1[0x1f] != 0) {
        cVar6 = FUN_0040add0("Sound");
        if (cVar6 != '\0') {
          *(undefined *)(param_1 + 0x52) = 0;
        }
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) {
          iVar7 = param_1[0x2e8];
          iVar9 = local_188;
          if (-1 < iVar7) {
            if ((int)(float)param_1[0xe9] != (int)(float)param_1[0xe8] &&
                -1 < (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]) {
              if (iVar7 < 0x169) {
                AI_0043ef30();
                if (*(char *)(param_1 + 0x52) == '\0') {
                  fStack_158 = DAT_00baa9b4 - (float)param_1[0x2e8];
                }
                else {
                  fStack_158 = (float)param_1[0x2e8] + DAT_00baa9b4;
                }
                fStack_ac = fStack_ac - _DAT_00baa114;
                fStack_158 = fStack_158 * DAT_00baa088;
                fVar16 = fStack_158;
                FUN_0041d540();
                fStack_17c = fVar16 * DAT_00baa7b8;
                fVar16 = fStack_158;
                FUN_0041d520();
                fStack_178 = fVar16 * DAT_00baa7b8;
                FUN_006cb2e0(param_1 + 0xcf,&fStack_17c,0,auStack_b8);
                iVar7 = param_1[0x2e8];
              }
              param_1[0x2e8] = iVar7 + 0x1e;
            }
            fVar17 = DAT_00baa400;
            param_1[0xd8] =
                 (int)((float)param_1[0xe7] * (float)param_1[0xcd] + (float)param_1[0xd8]);
            param_1[0xd9] =
                 (int)((float)param_1[0xce] * (float)param_1[0xe7] + (float)param_1[0xd9]);
            fVar16 = (float)param_1[0xe7];
            if ((NAN(fVar16) || NAN(DAT_00baa454)) == (fVar16 == DAT_00baa454)) {
              fVar17 = fVar17 / ((fVar16 + fVar17) - fVar16 * fVar17);
            }
            param_1[0xce] = (int)(fVar17 * (float)param_1[0xce]);
            param_1[0xcd] = (int)(fVar17 * (float)param_1[0xcd]);
            iVar9 = local_188;
          }
          break;
        }
      }
    }
    param_1[0x2d9] = 3;
    param_1[0x104] = 0;
    iVar9 = local_188;
    break;
  case 9:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
    FUN_0040a380(&DAT_00b1d2ec,0);
    param_1[0x61] = 3;
    if (param_1[0x1f] == 0) {
LAB_0043f793:
      iVar9 = local_188;
      if (-1 < param_1[0x2e8]) {
        iVar7 = FUN_007f0780(param_1[0xcf],param_1[0xd0]);
        if (iVar7 == 0) {
          param_1[0x61] = 5;
        }
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa2d0);
      }
    }
    else {
      cVar6 = FUN_0040add0("Shoot");
      if (cVar6 != '\0') {
        FUN_00703670(5);
        uStack_184 = 0x48;
        FUN_00956780();
        FUN_0092dc30(uStack_184,0x3f800000,2,0,0x3f800000,0);
        param_1[0x2e8] = 0;
        uVar11 = FUN_006eef60();
        piVar12 = param_1 + 0xcf;
        iVar9 = FUN_006fe410(1000,0x16,piVar12,&DAT_00c7b640,param_1,0,uVar11,0);
        *(undefined4 *)(iVar9 + 0xe4) = 0x3fc00000;
        *(undefined4 *)(iVar9 + 0xe8) = 0x3fc00000;
        *(undefined4 *)(iVar9 + 0x45c) = 0x5a;
        *(undefined4 *)(iVar9 + 0x460) = 0x5a;
        AI_0043ef30();
        fStack_ac = fStack_ac - _DAT_00baa114;
        fStack_17c = 5.0;
        fStack_178 = 14.0;
        FUN_006cb2e0(piVar12,&fStack_17c,9,auStack_b8);
        fStack_17c = 10.0;
        fStack_178 = 0.0;
        FUN_006cb2e0(piVar12,&fStack_17c,8,auStack_b8);
      }
      if ((param_1[0x1f] == 0) || (cVar6 = FUN_0040add0("Sound"), cVar6 == '\0')) goto LAB_0043f793;
      param_1[0x2e8] = -1;
      iVar9 = local_188;
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 3;
      param_1[0x104] = 0;
    }
    break;
  case 10:
    if (param_1[0x2e8] == -1) {
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
      FUN_0040a380(&DAT_00b1d2e4,0);
      cVar6 = FUN_0040b030("Shoot");
      if (cVar6 != '\0') {
        uVar8 = FUN_006eef60();
        fVar16 = DAT_00baad50;
        if ((uVar8 & 1) == 0) {
          fVar16 = DAT_00baa454;
        }
        param_1[0xcd] = (int)fVar16;
        param_1[0xce] = (int)&DAT_bf800000;
        *(bool *)(param_1 + 0x52) = fVar16 < 0.0;
        FUN_00a0ffc0();
        param_1[0x2e8] = 0;
      }
    }
    else if (param_1[0x2e8] == -2) {
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
      FUN_0040a380("Attack3End",0);
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = 3;
        param_1[0x104] = 0;
      }
    }
    iVar9 = local_188;
    if (-1 < param_1[0x2e8]) {
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_0040a380("Attack3Loop",0);
      }
      param_1[0xdb] = 0x3f7ae148;
      fVar16 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
      fVar17 = DAT_00baa198;
      fVar4 = DAT_00baad0c;
      uVar8 = DAT_00bacb70;
      while (DAT_00baa198 = fVar17, DAT_00baad0c = fVar4, DAT_00bacb70 = uVar8, 0 < (int)fVar16) {
        param_1[0x2e8] = param_1[0x2e8] + 1;
        fStack_158 = (float)((int)fVar16 + -1);
        fVar16 = fStack_158;
        fVar17 = DAT_00baa198;
        fVar4 = DAT_00baad0c;
        uVar8 = DAT_00bacb70;
        if ((*(byte *)(param_1 + 0x2e8) & 1) == 0) {
          uStack_148 = 0xb9;
          FUN_00956780();
          FUN_0092dc30(uStack_148,0x3f800000,2,0,0x3f800000,0);
          AI_0043ef30();
          fStack_ac = fStack_ac - _DAT_00baa114;
          uVar8 = FUN_006eef60();
          uStack_b4 = 0xc1200000;
          fStack_a4 = ((float)((uVar8 & 3) + 4) - DAT_00baa6fc) / DAT_00baa6fc;
          fStack_154 = (float)param_1[0xcd] * DAT_00baada0;
          fStack_150 = (float)param_1[0xce] * DAT_00baada0;
          iVar9 = FUN_006eef60();
          fVar16 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa198 + DAT_00baa3e0;
          fStack_154 = fStack_154 * fVar16;
          fStack_150 = fStack_150 * fVar16;
          iVar9 = FUN_006eef60();
          piStack_16c = (int *)(((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)])
                                 * DAT_00ba9ff4 * DAT_00baa950 - DAT_00baa8d0) * DAT_00baa088);
          fVar16 = (float)piStack_16c;
          FUN_0041d540();
          fStack_170 = fVar16;
          fVar16 = (float)piStack_16c;
          FUN_0041d520();
          fVar17 = fStack_154 * fVar16;
          fStack_154 = fStack_154 * fStack_170 - fStack_150 * fVar16;
          fStack_150 = fVar17 + fStack_150 * fStack_170;
          fStack_17c = (float)param_1[0xcf] - (float)param_1[0xcd] * DAT_00baa834;
          fStack_178 = (float)param_1[0xd0] - DAT_00baa75c;
          FUN_006cb2e0(&fStack_17c,&fStack_154,0,auStack_b8);
          uStack_144 = FUN_006eef60();
          fStack_170 = (float)DAT_00c71678;
          uStack_180 = 0;
          uStack_140 = 0x4f;
          iStack_14c = 1000;
          FUN_008646e0(&iStack_14c,&uStack_140,&fStack_17c,&DAT_00c7b640,0,&uStack_180,&uStack_144);
          uVar8 = uStack_140;
          if (*(int *)(DAT_00c71678 + 0x26614) < 2) {
code_r0x0043fe09:
            uStack_174 = uStack_180;
          }
          else {
            piStack_168 = *(int **)(DAT_00c71678 + 0x26620);
            uVar10 = FUN_006eef60();
            piVar12 = piStack_168;
            uVar14 = uStack_180;
            uStack_110 = DAT_00b1f66c;
            uStack_15c = DAT_00b1f674;
            uStack_108 = DAT_00b1f674;
            uStack_184 = uVar10;
            if (iStack_14c != 5) goto code_r0x0043fe09;
            if (uVar8 < 0x12d) {
              if (uVar8 == 300) {
                while ((uStack_174 = uStack_180, uStack_180 == 0 ||
                       (cVar6 = (**(code **)(*piStack_168 + 0x24))(uStack_180), cVar6 != '\0'))) {
                  if (uVar10 == 0) {
                    FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                    pcVar1 = (code *)swi(3);
                    (*pcVar1)();
                    return;
                  }
                  uVar10 = uVar10 >> ((byte)uStack_110 & 0x1f) ^ uVar10;
                  uVar10 = uVar10 << ((byte)((ulonglong)uStack_110 >> 0x20) & 0x1f) ^ uVar10;
                  uVar10 = uVar10 >> ((byte)uStack_15c & 0x1f) ^ uVar10;
                  uVar11 = FUN_00734180(uVar10,0x19,10,10,1);
                  uStack_f0 = DAT_00b1f66c;
                  uStack_e8 = DAT_00b1f674;
                  uStack_f4 = uVar10;
                  uStack_180 = FUN_00865340(&uStack_f4,uVar11,1,1,0);
                }
              }
              else {
                if (uVar8 == 0x46) {
                  piStack_16c = (int *)(uStack_180 >> 0xb);
                  do {
                    uStack_174 = uStack_180;
                    if (uStack_180 != 0) {
                      pcVar1 = *(code **)(*piStack_168 + 0x28);
                      uVar11 = FUN_00734a80(uStack_180,0);
                      cVar6 = (*pcVar1)(uVar11);
                      uVar10 = uStack_184;
                      if (cVar6 == '\0') goto code_r0x0043fe11;
                    }
                    if (uVar10 == 0) {
                      FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                      pcVar1 = (code *)swi(3);
                      (*pcVar1)();
                      return;
                    }
                    uVar10 = uVar10 >> ((byte)uStack_110 & 0x1f) ^ uVar10;
                    uVar10 = uVar10 << ((byte)((ulonglong)uStack_110 >> 0x20) & 0x1f) ^ uVar10;
                    uVar10 = uVar10 >> ((byte)uStack_15c & 0x1f) ^ uVar10;
                    uStack_184 = uVar10;
                    uStack_180 = FUN_00734900(uVar10);
                    uStack_180 = uStack_180 | ((uint)piStack_16c & 1) << 0xb;
                  } while( true );
                }
                if (uVar8 != 100) goto code_r0x0043fe09;
                uStack_174 = uStack_180;
                if (uStack_180 == 0x19) {
code_r0x0043fc4b:
                  bVar15 = false;
                }
                else {
                  uStack_12c = uStack_180;
                  FUN_004288a0(auStack_100,&uStack_12c);
                  if (((*(char *)(iStack_f8 + 0xd) == '\0') &&
                      (*(int *)(iStack_f8 + 0x10) <= (int)uVar14)) && (iStack_f8 != piVar12[8]))
                  goto code_r0x0043fc4b;
                  bVar15 = true;
                }
                if ((uVar14 == 0) || (bVar15)) {
                  uStack_180 = (**(code **)(*piVar12 + 0x84))(0);
                  uStack_174 = uStack_180;
                }
              }
            }
            else {
              if (uVar8 != 0x15e) goto code_r0x0043fe09;
              while ((uStack_174 = uStack_180, uStack_180 == 0 ||
                     (cVar6 = (**(code **)(*piStack_168 + 0x2c))(uStack_180), cVar6 != '\0'))) {
                uStack_180 = FUN_00733ca0(0);
              }
            }
          }
code_r0x0043fe11:
          piStack_16c = (int *)FUN_006f0090(iStack_14c,0);
          lVar2 = CONCAT44(uStack_148,fStack_170);
          if (piStack_16c != (int *)0x0) {
            uVar18 = FUN_00a68490();
            piVar5 = piStack_16c;
            uVar14 = (uint)(uVar18 >> 0x20);
            lVar2 = (uVar18 & 0xffffffff) * 0x431bde82;
            uStack_138 = (undefined4)((ulonglong)lVar2 >> 0x20);
            uVar18 = (ulonglong)uVar14 * 0xd7b634db + ((uVar18 & 0xffffffff) * 0xd7b634db >> 0x20);
            uVar10 = (uint)(uVar18 >> 0x20);
            lVar2 = lVar2 + (uVar18 & 0xffffffff);
            piStack_168 = (int *)lVar2;
            uVar8 = (uint)((ulonglong)lVar2 >> 0x20);
            lVar2 = (ulonglong)uVar14 * 0x431bde82 +
                    (ulonglong)CONCAT14(CARRY4(uVar10,uVar8),uVar10 + uVar8);
            piStack_16c[0xd] = 0;
            uStack_184 = (uint)((ulonglong)lVar2 >> 0x20);
            piStack_16c[0xe] = 0;
            uStack_15c = (uint)lVar2 >> 0x12 | uStack_184 * 0x4000;
            uStack_184 = uStack_184 >> 0x12;
            piVar12 = piStack_16c + 0xf2;
            if (*piVar12 != 0) {
              piStack_128 = piVar12;
              FUN_004cf210(&piStack_128);
            }
            iVar9 = *piVar5;
            *piVar12 = 0;
            piVar5[0xcf] = (int)fStack_17c;
            piVar5[0xd0] = (int)fStack_178;
            piVar5[0xd8] = DAT_00c7b640;
            piVar5[0xd9] = DAT_00c7b644;
            (**(code **)(iVar9 + 4))(iStack_14c,uStack_140,uStack_174,uStack_144);
            iVar7 = (int)fStack_170;
            iVar9 = *(int *)(*(int *)((int)fStack_170 + 0x18300) + 0x1214);
            *(int *)(*(int *)((int)fStack_170 + 0x18300) + 0x1214) = iVar9 + 1;
            piVar5[8] = iVar9;
            FUN_00418500(piVar5);
            cVar6 = FUN_007078f0(piVar5);
            if (cVar6 != '\0') {
              FUN_007079c0(piVar5,extraout_ECX);
            }
            if ((*(char *)((int)piVar5 + 0x172) != '\0') &&
               (*(int *)(iVar7 + 0x67758) != *(int *)(iVar7 + 0x6775c))) {
              iStack_124 = piVar5[10];
              iStack_120 = piVar5[0xb];
              FUN_009e24a0(&iStack_130,&iStack_124);
              if (iStack_130 == *(int *)(iVar7 + 0x67780)) {
                iStack_11c = piVar5[10];
                uStack_118 = 0xffffffff;
                piVar12 = (int *)FUN_009e24a0(auStack_104,&iStack_11c);
                iStack_130 = *piVar12;
                if (iStack_130 == *(int *)(iVar7 + 0x67780)) goto code_r0x0044008d;
              }
              piVar12 = (int *)(DAT_00c71678 + 0x1baa8);
              piStack_168 = (int *)0x0;
              if (*(int *)(DAT_00c71678 + 0x1baac) - *piVar12 >> 2 != 0) {
                do {
                  if (piVar12[1] - *piVar12 >> 2 == 0) {
                    FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
                  }
                  FUN_009e0680(6,piVar5,&fStack_17c,&DAT_00c7b640);
                  piVar12 = (int *)(DAT_00c71678 + 0x1baa8);
                  piStack_168 = (int *)((int)piStack_168 + 1);
                } while (piStack_168 < (int *)(*(int *)(DAT_00c71678 + 0x1baac) - *piVar12 >> 2));
              }
            }
code_r0x0044008d:
            uVar18 = FUN_00a68490();
            uVar8 = (uint)(uVar18 >> 0x20);
            lVar3 = (uVar18 & 0xffffffff) * 0x431bde82;
            uStack_144 = (undefined4)((ulonglong)lVar3 >> 0x20);
            lVar2 = (ulonglong)uVar8 * 0x431bde82;
            uVar18 = (ulonglong)uVar8 * 0xd7b634db + ((uVar18 & 0xffffffff) * 0xd7b634db >> 0x20);
            uVar14 = (uint)(uVar18 >> 0x20);
            lVar3 = lVar3 + (uVar18 & 0xffffffff);
            uStack_138 = (undefined4)lVar3;
            uVar8 = (uint)((ulonglong)lVar3 >> 0x20);
            lVar3 = lVar2 + (ulonglong)CONCAT14(CARRY4(uVar14,uVar8),uVar14 + uVar8);
            uVar10 = (uint)((ulonglong)lVar3 >> 0x20);
            uVar8 = (uint)lVar3 >> 0x12 | uVar10 * 0x4000;
            uVar14 = uVar8 - uStack_15c;
            bVar15 = CARRY4(DAT_00c7b630,uVar14);
            DAT_00c7b630 = DAT_00c7b630 + uVar14;
            DAT_00c7b634 = DAT_00c7b634 +
                           (((uVar10 >> 0x12) - uStack_184) - (uint)(uVar8 < uStack_15c)) +
                           (uint)bVar15;
          }
          piVar12 = piStack_16c;
          uStack_148 = (undefined4)((ulonglong)lVar2 >> 0x20);
          fStack_170 = (float)lVar2;
          iVar9 = FUN_006eef60();
          piVar12[0x3b] =
               (int)((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baab30);
          iVar9 = FUN_006eef60();
          uStack_c4 = 0x3f0c8c8d;
          uStack_c0 = 0x3d30b0b1;
          uStack_bc = 0x3d70f0f2;
          fVar17 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa1f8 + DAT_00baa3a4;
          fVar16 = fVar17 * DAT_00c3793c;
          piVar12[0x3a] = (int)(fVar17 * DAT_00c37940);
          auStack_e4 = _DAT_00babf20;
          piVar12[0x39] = (int)fVar16;
          auStack_d4 = ZEXT416(0);
          if ((undefined (*) [16])(piVar12 + 0x3c) != &auStack_e4) {
            *(undefined (*) [16])(piVar12 + 0x40) = auStack_d4;
            *(undefined8 *)(piVar12 + 0x44) = 0x3d30b0b13f0c8c8d;
            *(undefined (*) [16])(piVar12 + 0x3c) = auStack_e4;
            piVar12[0x46] = 0x3d70f0f2;
          }
          piVar12[0xd3] = 0;
          piVar12[0xd4] = -0x3dfc0000;
          fVar16 = fStack_158;
          param_1 = local_13c;
          fVar17 = DAT_00baa198;
          fVar4 = DAT_00baad0c;
          uVar8 = DAT_00bacb70;
          if ((float)local_13c[0xce] <= 0.0 && (float)local_13c[0xce] != 0.0) {
            piVar12[0xd6] = 0x41200000;
            fVar17 = DAT_00baa198;
            fVar4 = DAT_00baad0c;
            uVar8 = DAT_00bacb70;
          }
        }
      }
      if (*(char *)(param_1 + 100) != '\0') {
        fVar16 = (float)param_1[0xcd];
        if (((0.0 < fVar16) && (fVar17 < (float)param_1[0x67])) ||
           ((fVar16 < 0.0 && ((float)param_1[0x67] <= fVar4 && fVar4 != (float)param_1[0x67])))) {
          param_1[0xcd] = (uint)fVar16 ^ uVar8;
        }
        fVar16 = (float)param_1[0xce];
        if (((0.0 < fVar16) && (fVar17 < (float)param_1[0x68])) ||
           ((fVar16 < 0.0 && ((float)param_1[0x68] <= fVar4 && fVar4 != (float)param_1[0x68])))) {
          param_1[0xce] = (uint)fVar16 ^ uVar8;
        }
        piVar12 = (int *)((float)param_1[0xd8] * (float)param_1[0xd8] +
                         (float)param_1[0xd9] * (float)param_1[0xd9]);
        FUN_00435a50();
        local_13c = piVar12;
        if (0.0 < (float)local_13c) {
          fVar16 = (float)param_1[0x65] * (float)param_1[0x65] +
                   (float)param_1[0x66] * (float)param_1[0x66];
          FUN_00435a50();
          param_1[0xd9] = (int)((fVar16 / (float)local_13c) * (float)param_1[0xd9]);
          param_1[0xd8] = (int)((fVar16 / (float)local_13c) * (float)param_1[0xd8]);
        }
      }
      pcVar13 = "Attack3Loop";
      if (0.0 < (float)param_1[0xce]) {
        pcVar13 = "Attack3BackLoop";
      }
      FUN_0040a380(pcVar13,0);
      fVar17 = (float)param_1[0xcd] * DAT_00baa280;
      *(bool *)(param_1 + 0x52) = (float)param_1[0xcd] < 0.0;
      fVar16 = (float)param_1[0xce] * DAT_00baa280;
      param_1[0xd8] = (int)(fVar17 * (float)param_1[0xe7] + (float)param_1[0xd8]);
      param_1[0xd9] = (int)(fVar16 * (float)param_1[0xe7] + (float)param_1[0xd9]);
      iVar9 = local_188;
      if ((0x6e < param_1[0x2e8]) && ((float)param_1[0xce] <= 0.0 && (float)param_1[0xce] != 0.0)) {
        *(undefined *)(param_1 + 0x52) = 0;
        param_1[0x2e8] = -2;
      }
    }
    break;
  case 0x10:
    FUN_0040a380("Leave",0);
    param_1[0x62] = 0;
    param_1[0x61] = 0;
    if (param_1[0x2e8] == -2) {
      fVar16 = (float)param_1[0xce] * DAT_00baa380;
      param_1[0xd8] =
           (int)((float)param_1[0xcd] * DAT_00baa380 * (float)param_1[0xe7] + (float)param_1[0xd8]);
      param_1[0xd9] = (int)(fVar16 * (float)param_1[0xe7] + (float)param_1[0xd9]);
      fVar16 = (float)param_1[0xdb] * DAT_00baa444;
    }
    else {
      cVar6 = FUN_0040b030("Shoot");
      iVar9 = DAT_00c71678;
      if (cVar6 != '\0') {
        param_1[0x2e8] = -2;
        iVar9 = *(int *)(iVar9 + 0x18300);
        fVar16 = (*(float *)(iVar9 + 0x1c) - *(float *)(iVar9 + 0x14)) * DAT_00baa2d0 +
                 *(float *)(iVar9 + 0x14);
        param_1[0xce] = 0;
        if (fVar16 < (float)param_1[0xcf] || fVar16 == (float)param_1[0xcf]) {
          param_1[0xcd] = 0x3f800000;
          *(undefined *)(param_1 + 0x52) = 0;
        }
        else {
          param_1[0xcd] = (int)&DAT_bf800000;
          *(undefined *)(param_1 + 0x52) = 1;
        }
      }
      fVar16 = (float)param_1[0xdb] * DAT_00baa3a4;
    }
    iVar9 = local_188;
    param_1[0xdb] = (int)fVar16;
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      *(undefined4 *)(local_188 + 0x73f0) = 0xffffffff;
      (**(code **)(*param_1 + 0x28))();
      FUN_007fec00(param_1);
    }
  }
  if ((0 < *(int *)(iVar9 + 0x73f0)) && (DAT_00ba9fe4 < (float)param_1[5])) {
    *(undefined4 *)(iVar9 + 0x73f0) = *(undefined4 *)(DAT_00c71678 + 0x264f8);
  }
  FUN_00aef12b();
  return;
}

