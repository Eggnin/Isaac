/* Local J460 decompiler output.
 * VA: 0x004b43c0
 * Entry: 004b43c0
 * Dispatcher: 0x006c2990
 * Types: 905
 * Identities: 905.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004b6a90; instructions=2150
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=905; identities=905.0.0; dispatcher=0x006c2990;
   end=0x004b6a90; instructions=2150 */

void __fastcall AI_004b43c0(int **param_1)

{
  float *pfVar1;
  undefined auVar2 [16];
  char cVar3;
  char cVar4;
  char cVar5;
  undefined4 uVar6;
  int iVar7;
  char *pcVar8;
  undefined4 *puVar9;
  int **ppiVar10;
  float *pfVar11;
  short sVar12;
  uint uVar13;
  int **extraout_ECX;
  float *extraout_ECX_00;
  uint uVar14;
  int iVar15;
  int *piVar16;
  int *piVar17;
  float fVar18;
  int **ppiVar19;
  float fVar20;
  int *piVar21;
  int *local_148;
  int *local_144;
  int *local_140;
  int *local_13c;
  int *local_138;
  int **local_134;
  int **ppiStack_130;
  float fStack_12c;
  int *local_128;
  char local_121;
  int **local_120;
  undefined4 uStack_11c;
  float fStack_118;
  int *piStack_114;
  float fStack_110;
  int **ppiStack_10c;
  float fStack_108;
  int **appiStack_104 [2];
  int *piStack_fc;
  int *piStack_f8;
  float fStack_f4;
  int *piStack_f0;
  float fStack_ec;
  float fStack_e8;
  int local_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined local_d4 [4];
  undefined local_d0 [4];
  undefined8 uStack_cc;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined auStack_b8 [4];
  float fStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a4;
  uint uStack_60;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&local_148;
  local_144 = (int *)0x0;
  local_134 = param_1;
  if (param_1[0x2dd] != (int *)0x1) {
    iVar7 = FUN_0040b220(0);
    piVar16 = (int *)0x0;
    local_138 = *(int **)(iVar7 + 0x54);
    piVar21 = (int *)((float)param_1[0xdb] * DAT_00baa3a4);
    local_148 = (int *)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
    param_1[0xdb] = piVar21;
    switch(param_1[0x2d9]) {
    case (int *)0x0:
      if (((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 8) == 5) &&
          (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x51)) &&
         (-1 < (int)param_1[0xcb])) {
        *(undefined *)((int)param_1 + 0x171) = 0;
        param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xfffffffb | 0x11);
        *(undefined *)(param_1 + 0xec) = 1;
        param_1[0x5b] = param_1[0x5b];
        param_1[0x62] = (int *)0x0;
        FUN_004b3f10();
        uVar6 = FUN_006eef60();
        FUN_006fe410(1000,0xa2,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar6,0);
        param_1[0x57] = (int *)0x0;
        param_1[0xcd] = param_1[0xcf];
        param_1[0xce] = param_1[0xd0];
        piVar16 = (int *)0x6;
      }
      else {
        piVar16 = (int *)0x3;
      }
      param_1[0x2d9] = piVar16;
      param_1[0x2e9] = (int *)0x0;
      param_1[0x3c6] = (int *)((uint)param_1[0x3c6] | 1);
      break;
    case (int *)0x3:
      FUN_007e6650(0);
      if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_0040a380(&DAT_00b1bc54,0);
      }
      sVar12 = 0x3c;
      *(short *)((int)param_1 + 0x412) = *(short *)((int)param_1 + 0x412) + (short)local_148;
      if ((float)param_1[0xe0] <= (float)param_1[0xe1] * (float)DAT_00baa2d0 &&
          (float)param_1[0xe1] * (float)DAT_00baa2d0 != (float)param_1[0xe0]) {
        sVar12 = 0x1e;
      }
      if (sVar12 < *(short *)((int)param_1 + 0x412)) {
        FUN_004b40d0();
      }
      break;
    case (int *)0x4:
      FUN_007e6650(0);
      piVar16 = (int *)((float)local_138 - (float)param_1[0xe7] * DAT_00baa0bc);
      local_138 = DAT_00baa280;
      if ((float)DAT_00baa280 <= (float)piVar16) {
        local_138 = piVar16;
      }
      FUN_0040a380("IdleInvis",0);
      piVar16 = (int *)0x0;
      local_128 = (int *)0x0;
      if (param_1[0x300] != (int *)0x0) {
        piVar21 = param_1[0x2ff];
        do {
          fVar20 = (float)((int)local_128 + 1);
          if (*(int *)(param_1[0x2fd]
                       [(int)param_1[0x2fe] - 1U & (uint)((int)piVar21 + (int)piVar16) >> 2] +
                      ((int)piVar21 + (int)piVar16 & 3U) * 4) == 0) {
            fVar20 = (float)local_128;
          }
          piVar16 = (int *)((int)piVar16 + 1);
          piVar21 = param_1[0x2ff];
          local_128 = (int *)fVar20;
        } while (piVar16 < param_1[0x300]);
        if (fVar20 != 0.0) break;
      }
      FUN_006d81c0();
      param_1[0x2d9] = (int *)&DAT_00000005;
      break;
    case (int *)0x5:
      piVar16 = (int *)((float)param_1[0xe7] * DAT_00baa0bc + (float)local_138);
      local_138 = DAT_00baa454;
      if ((float)piVar16 <= (float)DAT_00baa454) {
        local_138 = piVar16;
      }
      FUN_0040a380("InvisEnd",0);
      piVar16 = DAT_00baa454;
      if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xffffffee);
        local_138 = piVar16;
        *(undefined *)(param_1 + 0xec) = 0;
        param_1[0x5b] = param_1[0x5b];
        param_1[0x2d9] = (int *)0x3;
        FUN_0040a380(&DAT_00b1bc54,0);
      }
      break;
    case (int *)0x6:
      *(undefined *)((int)param_1 + 0x171) = 1;
      FUN_0040a380("Summoning",0);
      cVar3 = FUN_0040b030("Sound");
      if (cVar3 != '\0') {
        param_1[0x62] = (int *)&DAT_00000004;
        param_1[0x57] = (int *)param_1[0xcc][9];
      }
      cVar3 = FUN_0040b030("Shoot");
      if (cVar3 != '\0') {
        FUN_006d6ba0(0x131,0x3f800000,2,0,0x3f800000);
        local_144 = (int *)0x0;
        if (param_1[0x300] != (int *)0x0) {
          do {
            iVar7 = *(int *)(param_1[0x2fd]
                             [(uint)((int)param_1[0x2ff] + (int)local_144) >> 2 &
                              (int)param_1[0x2fe] - 1U] +
                            ((int)param_1[0x2ff] + (int)local_144 & 3U) * 4);
            if ((iVar7 != 0) &&
               (((1 < *(int *)(DAT_00c71678 + 0x26614) && (*(int *)(iVar7 + 0x28) == 1)) ||
                (*(int *)(iVar7 + 0x28) - 10U < 0x3de)))) {
              uVar13 = FUN_006eef60();
              *(uint *)(iVar7 + 0x410) = uVar13 % 0xf + 1;
            }
            local_144 = (int *)((int)local_144 + 1);
          } while (local_144 < param_1[0x300]);
        }
      }
      if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = (int *)&DAT_00000004;
        param_1[0xcd] = DAT_00c7b640;
        param_1[0xce] = DAT_00c7b644;
      }
      break;
    case (int *)0x7:
      if (param_1[0xf0] == (int *)0x0) {
LAB_004b4b09:
        cVar3 = FUN_0040b090("Shoot");
        if (cVar3 != '\0') goto LAB_004b5198;
                    /* WARNING: Load size is inaccurate */
        if ((*(int *)(*ThreadLocalStoragePointer + 0xc) < DAT_00c7f738) &&
           (FUN_00aef29d(&DAT_00c7f738), DAT_00c7f738 == -1)) {
          _atexit(FUN_00b15450);
          FUN_00aef253(&DAT_00c7f738);
        }
        uVar13 = 0;
        DAT_00c7f740 = DAT_00c7f73c;
        iVar7 = *(int *)(DAT_00c71678 + 0x18300);
        ppiVar10 = DAT_00c7f73c;
        if (*(int *)(iVar7 + 0x1264) != 0) {
          do {
            local_120 = *(int ***)(*(int *)(iVar7 + 0x125c) + uVar13 * 4);
            if (((local_120[10] == (int *)0x21) && (local_120[0xb] == (int *)0x3)) &&
               ((float)local_120[0xe0] <= (float)DAT_00baa528 &&
                (float)DAT_00baa528 != (float)local_120[0xe0])) {
              if (ppiVar10 == DAT_00c7f744) {
                FUN_0042c920(ppiVar10,&local_120);
                ppiVar10 = DAT_00c7f740;
              }
              else {
                *ppiVar10 = (int *)local_120;
                DAT_00c7f740 = DAT_00c7f740 + 1;
                ppiVar10 = DAT_00c7f740;
              }
            }
            uVar13 = uVar13 + 1;
            param_1 = local_134;
          } while (uVar13 < *(uint *)(iVar7 + 0x1264));
        }
        piVar16 = param_1[0x300];
        local_120 = DAT_00baaed0;
        if (piVar16 == (int *)0x0) {
          piStack_fc = param_1[0xcf];
          local_148 = (int *)0x0;
          piStack_f8 = param_1[0xd0];
          fStack_f4 = 0.0;
        }
        else {
          uVar13 = ((int)piVar16 + (int)param_1[0x2ff]) - 1;
          iVar7 = *(int *)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & uVar13 >> 2] + (uVar13 & 3) * 4
                          );
          local_140 = *(int **)(iVar7 + 0x33c);
          piStack_f8 = *(int **)(iVar7 + 0x340);
          piStack_fc = local_140;
          if (piVar16 == (int *)0x1) {
            iVar7 = *(int *)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)param_1[0x2ff] >> 2] +
                            ((uint)param_1[0x2ff] & 3) * 4);
            local_148 = (int *)(*(float *)(iVar7 + 0x340) - (float)param_1[0xd0]);
            fStack_f4 = *(float *)(iVar7 + 0x33c) - (float)param_1[0xcf];
            local_13c = piStack_f8;
          }
          else {
            local_13c = param_1[0x2ff];
            uVar13 = (int)param_1[0x300] + -1 + (int)local_13c;
            iVar7 = *(int *)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & uVar13 >> 2] +
                            (uVar13 & 3) * 4);
            uVar13 = (int)param_1[0x300] + -2 + (int)local_13c;
            iVar15 = *(int *)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & uVar13 >> 2] +
                             (uVar13 & 3) * 4);
            local_148 = (int *)(*(float *)(iVar7 + 0x340) - *(float *)(iVar15 + 0x340));
            fStack_f4 = *(float *)(iVar7 + 0x33c) - *(float *)(iVar15 + 0x33c);
          }
        }
        iVar7 = FUN_006be840();
        ppiVar10 = DAT_00c7f73c;
        local_144 = *(int **)(iVar7 + 0x33c);
        fStack_118 = *(float *)(iVar7 + 0x340);
        if (DAT_00c7f73c == DAT_00c7f740) {
LAB_004b52e5:
          if (param_1[0x300] == (int *)0x0) {
            *(undefined2 *)((int)param_1 + 0x412) = 0;
            param_1[0x2d9] = (int *)0x3;
          }
          else {
            param_1[0x2d9] = (int *)&DAT_00000008;
          }
          break;
        }
        fStack_108 = DAT_00baa54c;
        FUN_0041d540();
        fStack_e8 = DAT_00baa54c;
        FUN_0041d520();
        piVar16 = (int *)0x0;
        local_144 = (int *)((float)local_144 - (float)piStack_fc);
        fStack_118 = fStack_118 - (float)piStack_f8;
        do {
          local_128 = (int *)0x0;
          local_140 = (int *)(*ppiVar10)[0xcf];
          local_13c = (int *)(*ppiVar10)[0xd0];
          iVar7 = FUN_00703950(&local_140);
          fVar18 = (float)local_140 - *(float *)(iVar7 + 0x33c);
          fVar20 = (float)local_13c - *(float *)(iVar7 + 0x340);
          if (fVar20 * fVar20 + fVar18 * fVar18 <= DAT_00baa8d0) {
            local_128 = (int *)DAT_00baaea4;
          }
          fVar20 = (float)piStack_f8 - (float)(*ppiVar10)[0xd0];
          fVar18 = (float)piStack_fc - (float)(*ppiVar10)[0xcf];
          fVar20 = fVar20 * fVar20 + fVar18 * fVar18;
          FUN_00435a50();
          ppiStack_10c = (int **)fVar20;
          iVar7 = FUN_006eef60();
          fStack_ec = (float)(*ppiVar10)[0xd0] - (float)piStack_f8;
          ppiStack_10c = (int **)((float)ppiStack_10c +
                                  ((float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]
                                          ) * DAT_00ba9ff4 * DAT_00baab7c - DAT_00baaae0) +
                                 (float)local_128);
          piStack_114 = (int *)((float)(*ppiVar10)[0xcf] - (float)piStack_fc);
          appiStack_104[0] =
               (int **)((float)piStack_114 * (float)piStack_114 + fStack_ec * fStack_ec);
          local_128 = (int *)fStack_ec;
          piStack_f0 = piStack_114;
          ppiVar19 = appiStack_104[0];
          FUN_00435a50();
          fVar20 = fStack_ec;
          piVar21 = piStack_114;
          if (DAT_00ba9fe4 < (float)ppiVar19) {
            fVar20 = (float)local_128 * ((float)DAT_00baa454 / (float)ppiVar19);
            piVar21 = (int *)((float)piStack_f0 * ((float)DAT_00baa454 / (float)ppiVar19));
          }
          ppiVar19 = (int **)((float)ppiStack_10c -
                             (float)((uint)(((float)piVar21 * fStack_e8 + fVar20 * fStack_108) *
                                            fStack_118 +
                                           ((float)piVar21 * fStack_108 - fVar20 * fStack_e8) *
                                           (float)local_144) & DAT_00bacb40));
          ppiStack_10c = ppiVar19;
          if (((NAN(fStack_f4) || NAN((float)DAT_00c7b640)) == (fStack_f4 == (float)DAT_00c7b640))
             || ((NAN((float)local_148) || NAN((float)DAT_00c7b644)) ==
                 ((float)local_148 == (float)DAT_00c7b644))) {
            piStack_114 = local_148;
            fStack_ec = fStack_f4;
            fVar20 = (float)local_148 * (float)local_148 + fStack_f4 * fStack_f4;
            FUN_00435a50();
            if (DAT_00ba9fe4 < fVar20) {
              fStack_ec = fStack_f4 * ((float)DAT_00baa454 / fVar20);
              piStack_114 = (int *)((float)local_148 * ((float)DAT_00baa454 / fVar20));
            }
            ppiVar19 = appiStack_104[0];
            FUN_00435a50();
            if (DAT_00ba9fe4 < (float)ppiVar19) {
              piStack_f0 = (int *)((float)piStack_f0 * ((float)DAT_00baa454 / (float)ppiVar19));
              local_128 = (int *)((float)local_128 * ((float)DAT_00baa454 / (float)ppiVar19));
            }
            ppiVar19 = (int **)((float)ppiStack_10c -
                               (float)((uint)(fStack_ec * (float)piStack_f0 +
                                             (float)piStack_114 * (float)local_128) & DAT_00bacb40)
                               * DAT_00baab54);
          }
          param_1 = local_134;
          if ((float)local_120 < (float)ppiVar19) {
            piVar16 = *ppiVar10;
            local_120 = ppiVar19;
          }
          ppiVar10 = ppiVar10 + 1;
        } while (ppiVar10 != DAT_00c7f740);
        piStack_114 = piVar16;
        if (piVar16 == (int *)0x0) goto LAB_004b52e5;
        ppiVar10 = local_134 + 0xf0;
        if (local_134[0xf0] != (int *)0x0) {
          ppiStack_130 = ppiVar10;
          FUN_004cf210(&ppiStack_130);
        }
        *ppiVar10 = piStack_114;
        FUN_004cdcf0(ppiVar10);
        fVar20 = (float)param_1[0xf0][0xcf] - (float)param_1[0xcf];
        if ((float)((uint)fVar20 & DAT_00bacb40) <=
            (float)((uint)((float)param_1[0xf0][0xd0] - (float)param_1[0xd0]) & DAT_00bacb40)) {
          pcVar8 = "PointDown";
        }
        else {
          pcVar8 = "PointLeft";
          if (0.0 <= fVar20) {
            pcVar8 = "PointRight";
          }
        }
        cVar3 = FUN_0040a5d0(pcVar8,1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
        if ((float)param_1[0xe1] * (float)DAT_00baa2d0 < (float)param_1[0xe0] ||
            (float)param_1[0xe1] * (float)DAT_00baa2d0 == (float)param_1[0xe0]) {
          if (param_1[0x300] < (int *)0x3) goto LAB_004b5198;
LAB_004b52cf:
          piVar16 = param_1[0x1f];
        }
        else {
          if (((int *)0x2 < param_1[0x300]) || ('\0' < *(char *)((int)param_1 + 0xba1)))
          goto LAB_004b52cf;
          piVar16 = param_1[0x1f];
        }
        if (piVar16 != (int *)0x0) {
          FUN_00408e00();
          goto LAB_004b5198;
        }
      }
      else {
        if (param_1[0xf0][10] != 0x21) {
          local_120 = param_1 + 0xf0;
          FUN_004cf210(&local_120);
          param_1[0xf0] = (int *)0x0;
          goto LAB_004b4b09;
        }
LAB_004b5198:
        if (param_1[0x1f] != (int *)0x0) {
          cVar3 = FUN_0040add0("Shoot");
          if (cVar3 != '\0') {
            piVar16 = param_1[0xf0];
            if ((piVar16 != (int *)0x0) && (piVar16[10] == 0x21)) {
              piVar16[0x2d9] = 9;
              (**(code **)(*piVar16 + 0xc))();
              ppiStack_130 = (int **)0x0;
              FUN_004b6a90(&ppiStack_130);
              appiStack_104[0] = (int **)param_1[0xf0];
              uVar13 = ((int)param_1[0x300] + (int)param_1[0x2ff]) - 1;
              uVar14 = uVar13 & 3;
              ppiVar10 = (int **)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & uVar13 >> 2] +
                                 uVar14 * 4);
              if (*(int *)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & uVar13 >> 2] + uVar14 * 4) != 0
                 ) {
                ppiStack_130 = ppiVar10;
                FUN_004cf210(&ppiStack_130);
              }
              *ppiVar10 = (int *)appiStack_104[0];
              if (appiStack_104[0] != (int **)0x0) {
                FUN_004cdcf0(ppiVar10);
              }
            }
            ppiVar10 = param_1 + 0xf0;
            if (*ppiVar10 != (int *)0x0) {
              ppiStack_130 = ppiVar10;
              FUN_004cf210(&ppiStack_130);
            }
            *ppiVar10 = (int *)0x0;
          }
          if ((param_1[0x1f] != (int *)0x0) && (*(char *)(param_1 + 0x23) != '\0')) break;
        }
      }
      if ((param_1[0x300] < (int *)(uint)*(byte *)(param_1 + 0x2e8)) &&
         (iVar7 = FUN_004b3ec0(), iVar7 != 0)) {
        FUN_0040a380(&DAT_00b1bc54,0);
      }
      else {
        param_1[0x2d9] = (int *)&DAT_00000008;
      }
      break;
    case (int *)0x8:
      FUN_0040a380(&DAT_00b1d2cc,0);
      cVar3 = FUN_00a10600(&DAT_00c7b640);
      if (cVar3 != '\0') {
        *extraout_ECX = param_1[0xcf];
        extraout_ECX[1] = param_1[0xd0];
      }
      cVar3 = FUN_0040b030("Shoot");
      if (cVar3 != '\0') {
        FUN_006d6ba0(0x131,0x3f800000,2,0,0x3f800000);
        piVar16 = param_1[0xcf];
        piVar21 = param_1[0xd0];
        local_148 = (int *)0x0;
        piStack_114 = (int *)0x0;
        local_140 = piVar16;
        local_13c = piVar21;
        if (param_1[0x300] != (int *)0x0) {
          do {
            piVar17 = *(int **)(param_1[0x2fd]
                                [(int)param_1[0x2fe] - 1U &
                                 (uint)((int)param_1[0x2ff] + (int)piStack_114) >> 2] +
                               ((int)param_1[0x2ff] + (int)piStack_114 & 3U) * 4);
            if ((piVar17 != (int *)0x0) &&
               ((((1 < *(int *)(DAT_00c71678 + 0x26614) && (piVar17[10] == 1)) ||
                 (piVar17[10] - 10U < 0x3de)) && ((float)DAT_00baa528 <= (float)piVar17[0xe0])))) {
              local_134 = (int **)((float)piVar17[0xcf] - (float)piVar16);
              local_120 = (int **)((float)piVar17[0xd0] - (float)piVar21);
              *(undefined *)((int)piVar17 + 0x173) = 1;
              (**(code **)(*piVar17 + 0xc))();
              ppiStack_130 = (int **)0x0;
              fStack_12c = -35.0;
              ppiVar10 = local_120;
              FUN_00499d60(0x28,&ppiStack_130,param_1,0);
              local_148 = (int *)FUN_0096f310(1,&local_140,(float)ppiVar10 * DAT_00baa948);
              fVar20 = (float)local_120 * (float)local_120 + (float)local_134 * (float)local_134;
              FUN_00435a50();
              local_148[0x134] = (int)fVar20;
              (**(code **)(*local_148 + 0x3c))(&DAT_00c34dd0,0xffffffff,0xff,0,1);
              local_148[0xd6] = 0x447a0000;
              piVar16 = (int *)piVar17[0xcf];
              piVar21 = (int *)piVar17[0xd0];
              local_140 = piVar16;
              local_13c = piVar21;
            }
            piStack_114 = (int *)((int)piStack_114 + 1);
          } while (piStack_114 < param_1[0x300]);
          if (local_148 != (int *)0x0) {
            local_148[0x134] = 0;
            goto LAB_004b5593;
          }
        }
        ppiStack_130 = (int **)0x0;
        fStack_12c = -20.0;
        piVar16 = (int *)FUN_0096f310(1,param_1 + 0xcf,0x42b40000,0x28,&ppiStack_130,param_1,0);
        (**(code **)(*piVar16 + 0x3c))(&DAT_00c34dd0,0xffffffff,0xff,0,1);
      }
LAB_004b5593:
      if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        fVar20 = (float)param_1[0xe1] * (float)DAT_00baa2d0;
        cVar3 = *(char *)((int)param_1 + 0xba1) + '\x01';
        *(char *)((int)param_1 + 0xba1) = cVar3;
        if ((fVar20 < (float)param_1[0xe0] || fVar20 == (float)param_1[0xe0]) || (cVar3 != '\x01'))
        {
          param_1[0xcd] = DAT_00c7b640;
          param_1[0xce] = DAT_00c7b644;
          FUN_006d81c0();
          *(undefined *)((int)param_1 + 0xba7) = 0xc;
          *(undefined2 *)((int)param_1 + 0x412) = 0;
          param_1[0x2d9] = (int *)0x3;
        }
        else {
          FUN_006d81c0();
          param_1[0x2d9] = (int *)0x7;
        }
      }
      break;
    case (int *)0x9:
      if (*(short *)(param_1 + 0x104) == -1) {
        fVar20 = (*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) +
                 *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14)) * (float)DAT_00baa2d0;
        cVar3 = fVar20 < (float)param_1[0xcf] || fVar20 == (float)param_1[0xcf];
        *(char *)((int)param_1 + 0xba2) = cVar3;
      }
      else {
        cVar3 = *(char *)((int)param_1 + 0xba2);
      }
      param_1[0x61] = (int *)0x0;
      pcVar8 = "ExitRight";
      if (cVar3 == '\0') {
        pcVar8 = "ExitLeft";
      }
      FUN_0040a380(pcVar8,0);
      piVar16 = param_1[0xe7];
      piVar21 = (int *)((float)local_138 - (float)piVar16 * DAT_00baa0bc);
      local_138 = (int *)0x0;
      if (0.0 <= (float)piVar21) {
        local_138 = piVar21;
      }
      if ((float)local_138 < (float)DAT_00baa2d0) {
        param_1[0x62] = (int *)0x0;
      }
      piVar21 = (int *)((float)(int)*(short *)(param_1 + 0x104) / DAT_00baa854);
      if ((float)piVar21 <= 0.0) {
        piVar21 = (int *)0x0;
      }
      if ((float)DAT_00baa454 <= (float)piVar21) {
        piVar21 = DAT_00baa454;
      }
      piVar17 = DAT_00baa454;
      if (*(char *)((int)param_1 + 0xba2) == '\0') {
        piVar17 = DAT_00baad50;
      }
      fVar20 = (float)piVar21 * (float)piVar21 * DAT_00baa6b4 + DAT_00baa120;
      param_1[0xd8] = (int *)((float)piVar17 * fVar20 * (float)piVar16 + (float)param_1[0xd8]);
      param_1[0xd9] = (int *)(fVar20 * 0.0 * (float)piVar16 + (float)param_1[0xd9]);
      if (((float)local_138 <= 0.0) &&
         (cVar3 = FUN_00813360(param_1 + 0xcf,0xc2a00000), cVar3 == '\0')) {
        (*(code *)(*param_1)[0x10])(0x40000000);
        *(undefined *)((int)param_1 + 0xba1) = 0;
        FUN_004b3d50();
      }
      *(short *)(param_1 + 0x104) = *(short *)(param_1 + 0x104) + (short)local_148;
      break;
    case (int *)0xa:
      iVar7 = FUN_006be840();
      local_134 = *(int ***)(iVar7 + 0x33c);
      ppiStack_130 = *(int ***)(iVar7 + 0x340);
      pcVar8 = "ChargeRight";
      if (*(char *)((int)param_1 + 0xba2) == '\0') {
        pcVar8 = "ChargeLeft";
      }
      FUN_0040a380(pcVar8,0);
      piVar16 = DAT_00baa454;
      piVar21 = DAT_00baad50;
      if (*(char *)((int)param_1 + 0xba2) != '\0') {
        piVar21 = DAT_00baa454;
      }
      piVar21 = (int *)((float)piVar21 * DAT_00baa7a4 * (float)param_1[0xe7] + (float)param_1[0xd8])
      ;
      param_1[0xd8] = piVar21;
      param_1[0xd9] = (int *)((float)param_1[0xe7] * 0.0 + (float)param_1[0xd9]);
      if (DAT_00baa854 < (float)((uint)((float)ppiStack_130 - (float)param_1[0xd0]) & DAT_00bacb40))
      {
        fVar20 = DAT_00baad14;
        if ((float)param_1[0xd0] < (float)ppiStack_130) {
          fVar20 = DAT_00baa1f8;
        }
        param_1[0xd9] = (int *)(fVar20 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        param_1[0xd8] = (int *)((float)param_1[0xe7] * 0.0 + (float)piVar21);
      }
      fVar20 = DAT_00baa108;
      if (*(char *)((int)param_1 + 0xba1) == '\x05') {
        fVar20 = DAT_00baa164;
      }
      piVar21 = (int *)(fVar20 * (float)param_1[0xe7] + (float)local_138);
      local_138 = piVar16;
      if ((float)piVar21 <= (float)piVar16) {
        local_138 = piVar21;
      }
      if (*(char *)((int)param_1 + 0xba2) == '\0') {
        if ((float)param_1[0xcf] < (float)local_134 + DAT_00baaa00) goto LAB_004b5919;
      }
      else if ((float)local_134 - DAT_00baaa00 < (float)param_1[0xcf]) {
LAB_004b5919:
        pcVar8 = "ChargeEndRight";
        if (*(char *)((int)param_1 + 0xba2) == '\0') {
          pcVar8 = "ChargeEndLeft";
        }
        FUN_0040a380(pcVar8,0);
        param_1[0x2d9] = (int *)0xc;
        *(undefined2 *)(param_1 + 0x104) = 0;
      }
      break;
    case (int *)0xb:
      FUN_006be840();
      pcVar8 = "ChargeRight";
      if (*(char *)((int)param_1 + 0xba2) == '\0') {
        pcVar8 = "ChargeLeft";
      }
      FUN_0040a380(pcVar8,0);
      piVar16 = DAT_00baad50;
      if (*(char *)((int)param_1 + 0xba2) != '\0') {
        piVar16 = DAT_00baa454;
      }
      param_1[0xd8] =
           (int *)((float)piVar16 * DAT_00baa7a4 * (float)param_1[0xe7] + (float)param_1[0xd8]);
      param_1[0xd9] = (int *)((float)param_1[0xe7] * 0.0 + (float)param_1[0xd9]);
      piVar16 = DAT_00baa2d0;
      sVar12 = *(short *)(param_1 + 0x104);
      if (sVar12 < 0xb) {
        fVar20 = (float)param_1[0xe7] * DAT_00baa134;
        *(short *)(param_1 + 0x104) = (short)local_148 + sVar12;
        piVar21 = (int *)(fVar20 + (float)local_138);
        local_138 = piVar16;
        if ((float)piVar21 <= (float)piVar16) {
          local_138 = piVar21;
        }
      }
      else {
        piVar16 = (int *)((float)local_138 - (float)param_1[0xe7] * DAT_00baa0dc);
        local_138 = (int *)0x0;
        if (0.0 <= (float)piVar16) {
          local_138 = piVar16;
        }
        if (0x1e < sVar12) {
          FUN_004b3af0();
          *(char *)((int)param_1 + 0xba2) = '\x01' - *(char *)((int)param_1 + 0xba2);
          FUN_004b3d50();
          sVar12 = *(short *)(param_1 + 0x104);
        }
        *(short *)(param_1 + 0x104) = (short)local_148 + sVar12;
      }
      break;
    case (int *)0xc:
      cVar3 = FUN_0040b030("Shoot");
      if (cVar3 != '\0') {
        FUN_006d6ba0(0x132,0x3f800000,2,0,0x3f800000);
        FUN_00703670(8);
      }
      cVar3 = FUN_0040b090("Shoot");
      if (cVar3 == '\0') {
        piVar16 = DAT_00baad50;
        if (*(char *)((int)param_1 + 0xba2) != '\0') {
          piVar16 = DAT_00baa454;
        }
        fVar20 = (float)param_1[0xe7] * DAT_00ba9fe4;
        param_1[0xd8] =
             (int *)((float)piVar16 * DAT_00baa7b0 * (float)param_1[0xe7] + (float)param_1[0xd8]);
        param_1[0xd9] = (int *)(fVar20 + (float)param_1[0xd9]);
      }
      else {
        local_138 = DAT_00baa454;
        piVar16 = DAT_00baa454;
        if (*(char *)((int)param_1 + 0xba2) == '\0') {
          piVar16 = DAT_00baad50;
        }
        fVar18 = (float)piVar16 * DAT_00baa1f8;
        *(short *)(param_1 + 0x104) = *(short *)(param_1 + 0x104) + (short)local_148;
        fVar20 = (float)param_1[0xe7] * DAT_00ba9fe4;
        param_1[0xd8] = (int *)(fVar18 * (float)param_1[0xe7] + (float)param_1[0xd8]);
        param_1[0xd9] = (int *)(fVar20 + (float)param_1[0xd9]);
        if (10 < *(short *)(param_1 + 0x104)) {
          if (*(char *)((int)param_1 + 0xba1) < '\x04') {
            FUN_004b3af0();
            *(char *)((int)param_1 + 0xba2) = '\x01' - *(char *)((int)param_1 + 0xba2);
            FUN_004b3d50();
          }
          else {
            pcVar8 = "ChargeFinishRight";
            if (*(char *)((int)param_1 + 0xba2) == '\0') {
              pcVar8 = "ChargeFinishLeft";
            }
            FUN_0040a380(pcVar8,0);
            *(undefined *)((int)param_1 + 0xba1) = 0;
            *(undefined2 *)((int)param_1 + 0x412) = 0;
            param_1[0x2d9] = (int *)0x3;
            *(undefined *)((int)param_1 + 0xba6) = 9;
            param_1[0x61] = (int *)0x3;
            (*(code *)(*param_1)[0x10])(0x3f800000);
          }
        }
      }
      break;
    case (int *)0xd:
      if (param_1[0xc] == (int *)0x2) {
        piVar16 = DAT_00baad50;
        if (*(char *)((int)param_1 + 0xba2) != '\0') {
          piVar16 = DAT_00baa454;
        }
        param_1[0xd8] =
             (int *)((float)piVar16 * DAT_00baa7a4 * (float)param_1[0xe7] + (float)param_1[0xd8]);
        param_1[0xd9] = (int *)((float)param_1[0xe7] * 0.0 + (float)param_1[0xd9]);
      }
      else {
        piVar16 = param_1[0xe7];
        piVar21 = (int *)((float)local_138 - (float)piVar16 * DAT_00baa0bc);
        local_138 = (int *)0x0;
        if (0.0 <= (float)piVar21) {
          local_138 = piVar21;
        }
        piVar21 = (int *)((float)(int)*(short *)(param_1 + 0x104) / DAT_00baa854);
        if ((float)piVar21 <= 0.0) {
          piVar21 = (int *)0x0;
        }
        if ((float)DAT_00baa454 <= (float)piVar21) {
          piVar21 = DAT_00baa454;
        }
        piVar17 = DAT_00baa454;
        if (*(char *)((int)param_1 + 0xba2) == '\0') {
          piVar17 = DAT_00baad50;
        }
        fVar20 = (float)piVar21 * (float)piVar21 + (float)piVar21 * (float)piVar21 +
                 (float)DAT_00baa2d0;
        param_1[0xd9] = (int *)(fVar20 * 0.0 * (float)piVar16 + (float)param_1[0xd9]);
        param_1[0xd8] = (int *)(fVar20 * (float)piVar17 * (float)piVar16 + (float)param_1[0xd8]);
      }
      if (((float)local_138 <= 0.0) &&
         (cVar3 = FUN_00813360(param_1 + 0xcf,0xc2a00000), cVar3 == '\0')) {
        (*(code *)(*param_1)[10])();
      }
      *(short *)(param_1 + 0x104) = *(short *)(param_1 + 0x104) + (short)local_148;
      iVar7 = FUN_0040b220(0);
      *(int **)(iVar7 + 0x54) = local_138;
      if (-1 < (int)param_1[0x55]) {
        iVar7 = FUN_0040b220(param_1[0x55]);
        *(int **)(iVar7 + 0x54) = local_138;
        FUN_00aef12b();
        return;
      }
      goto LAB_004b6999;
    case (int *)0xe:
      FUN_0040a380(&DAT_00b1d2ec,0);
      cVar3 = FUN_0040b030("Shoot");
      if (cVar3 != '\0') {
        FUN_006d6ba0((~*(byte *)((int)param_1 + 0xba1) & 1) * '\x02' + 'j',0x3f800000,2,0,0x3f800000
                    );
        iVar7 = FUN_006be840();
        local_140 = *(int **)(iVar7 + 0x33c);
        local_13c = *(int **)(iVar7 + 0x340);
        AI_0043ef30();
        fStack_b4 = fStack_b4 + DAT_00baa8a0;
        uStack_a4 = 0x40000000;
        uStack_ac = 0x3fc00000;
        uStack_b0 = 0xc2700000;
        local_e4 = _DAT_00bac7b0;
        uStack_e0 = _UNK_00bac7b4;
        uStack_dc = _UNK_00bac7b8;
        uStack_d8 = _UNK_00bac7bc;
        uStack_c4 = 0x3e4ccccd;
        _local_d4 = ZEXT816(0);
        uStack_c0 = 0x3e99999a;
        uStack_bc = 0x3f800000;
        FUN_004071f0(&local_e4);
        uStack_60 = uStack_60 | 2;
        local_120 = (int **)0x0;
        uStack_11c = 0;
        fStack_118 = (float)FUN_006cb2e0(param_1 + 0xcf,&local_120,0,auStack_b8);
        local_134 = DAT_00baa75c;
        if (fStack_118 != 0.0) {
          piStack_114 = (int *)((float)local_140 - (float)param_1[0xcf]);
          fStack_110 = (float)local_13c - (float)param_1[0xd0];
          fStack_e8 = fStack_110 * fStack_110 + (float)piStack_114 * (float)piStack_114;
          FUN_00435a50();
          iVar7 = 0;
          fStack_108 = DAT_00baada0 - *(float *)((int)fStack_118 + 0x410);
          appiStack_104[0] =
               (int **)(*(float *)((int)fStack_118 + 0x418) * DAT_00baa81c + (float)DAT_00baa454);
          local_144 = DAT_00baa6fc;
          do {
            ppiStack_130 = (int **)(fStack_e8 / (float)local_144);
            fVar20 = DAT_00baa3e0;
            FUN_004e4690();
            fVar20 = (fVar20 - (float)DAT_00baa454) * _DAT_00baadbc;
            if (fVar20 <= DAT_00baa06c) {
              fVar20 = DAT_00baa06c;
            }
            ppiStack_130 = (int **)((fStack_108 -
                                    ((float)ppiStack_130 - fVar20) * (float)appiStack_104[0]) /
                                   fVar20);
            if ((((0.0 < (float)local_134) && (DAT_00baae3c < (float)ppiStack_130)) ||
                (((float)local_134 < 0.0 && ((float)ppiStack_130 < DAT_00baae3c)))) &&
               (local_134 = (int **)((float)local_134 * DAT_00baad2c),
               (double)(float)((uint)local_134 & DAT_00bacb40) < DAT_00baa4f8)) break;
            iVar7 = iVar7 + 1;
            local_144 = (int *)((float)local_144 + (float)local_134);
          } while (iVar7 < 0x14);
          puVar9 = (undefined4 *)FUN_00a10100(appiStack_104,local_144);
          *(undefined4 *)((int)fStack_118 + 0x360) = *puVar9;
          *(undefined4 *)((int)fStack_118 + 0x364) = puVar9[1];
          *(int ***)((int)fStack_118 + 0x414) = ppiStack_130;
          uVar6 = FUN_006eef60();
          piVar16 = (int *)FUN_006fe410(1000,0x99,&local_140,&DAT_00c7b640,0,10,uVar6,0);
          FUN_006a92a0(fStack_118);
          uVar6 = FUN_00435a80();
          FUN_004073d0(uVar6);
          (**(code **)(*piVar16 + 0xc))();
        }
        uVar6 = FUN_006eef60();
        piVar16 = (int *)FUN_006fe410(1000,0xb,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar6,0);
        piVar16[0x37] = 0;
        piVar16[0x38] = (int)&DAT_c1c80000;
        piVar16[0xd6] = 0x40800000;
        (**(code **)(*piVar16 + 0x3c))(&DAT_00c34dfc,0xffffffff,0xff,0,1);
      }
      if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        if (*(char *)((int)param_1 + 0xba1) == '\x06') {
          iVar7 = FUN_006be840();
          ppiStack_130 = *(int ***)(iVar7 + 0x33c);
          fStack_12c = *(float *)(iVar7 + 0x340);
          local_13c = (int *)(fStack_12c - (float)param_1[0xd0]);
          local_140 = (int *)((float)ppiStack_130 - (float)param_1[0xcf]);
          fVar20 = (float)local_13c * (float)local_13c + (float)local_140 * (float)local_140;
          FUN_00435a50();
          if (DAT_00baab08 < fVar20) {
            FUN_00a0ffc0();
            ppiStack_130 = (int **)((float)local_140 * DAT_00baab08 + (float)param_1[0xcf]);
            fStack_12c = (float)local_13c * DAT_00baab08 + (float)param_1[0xd0];
          }
          ppiVar10 = (int **)FUN_00812f50(&local_140,&ppiStack_130,0x41200000,0x41200000,0x41200000)
          ;
          param_1[0x2ee] = *ppiVar10;
          param_1[0x2ef] = ppiVar10[1];
          param_1[0x2ec] = (int *)0x0;
          FUN_0040a380("Divebomb",0);
          param_1[0x2d9] = (int *)&DAT_0000000f;
          *(undefined2 *)(param_1 + 0x104) = 0;
        }
        else {
          *(char *)((int)param_1 + 0xba1) = *(char *)((int)param_1 + 0xba1) + '\x01';
          FUN_0040a380(&DAT_00b1d2ec,1);
        }
      }
      break;
    case (int *)0xf:
      cVar3 = FUN_00a10630(&DAT_00c7b640);
      if ((cVar3 != '\0') && (0x12 < *(short *)(param_1 + 0x104))) {
        piVar17 = (int *)((float)param_1[0xe7] * _DAT_00baa070 + (float)param_1[0x2ec]);
        param_1[0xdb] = (int *)((float)piVar21 * (float)DAT_00baa2d0);
        if ((float)piVar17 <= (float)piVar16) {
          piVar17 = piVar16;
        }
        if ((float)DAT_00baa454 <= (float)piVar17) {
          piVar17 = DAT_00baa454;
        }
        param_1[0x2ec] = piVar17;
        fVar20 = *extraout_ECX_00;
        piVar16 = (int *)((extraout_ECX_00[1] - (float)param_1[0xd0]) * (float)piVar17);
        param_1[0xd9] = piVar16;
        param_1[0xd8] =
             (int *)(((fVar20 - (float)param_1[0xcf]) * (float)piVar17) / (float)param_1[0xdb]);
        param_1[0xd9] = (int *)((float)piVar16 / (float)param_1[0xdb]);
      }
      if ((0x20 < *(short *)(param_1 + 0x104)) && (cVar3 = FUN_0040b090("Shoot"), cVar3 == '\0')) {
        param_1[0x62] = (int *)0x0;
      }
      cVar3 = FUN_0040b030("Shoot");
      if (cVar3 != '\0') {
        param_1[0x62] = (int *)&DAT_00000004;
        FUN_00703670(0xc);
        FUN_006d6ba0(0x30,0x3f800000,2,0,0x3f800000);
        uVar6 = FUN_004238f0(0x3f4ccccd);
        FUN_006b66a0(uVar6);
        FUN_006d6ba0(0x1e3,0x3f800000,0x2d,0,0x3f800000);
        iVar7 = 0;
        do {
          uVar6 = FUN_006eef60();
          fStack_108 = (float)FUN_006fe410(1000,0x94,param_1 + 0xcf,&DAT_00c7b640,param_1,1,uVar6,0)
          ;
          appiStack_104[0] = (int **)((int)fStack_108 + 0x3bc);
          if (*(int *)((int)fStack_108 + 0x3bc) != 0) {
            ppiStack_130 = appiStack_104[0];
            FUN_004cf210(&ppiStack_130);
          }
          *appiStack_104[0] = (int *)param_1;
          FUN_004cdcf0(appiStack_104[0]);
          iVar15 = iVar7 + 1;
          *(float *)((int)fStack_108 + 0x474) = (float)iVar7 * DAT_00baa910;
          iVar7 = iVar15;
        } while (iVar15 < 8);
        param_1[0x2ee] = DAT_00c7b640;
        param_1[0x2ef] = DAT_00c7b644;
      }
      cVar3 = FUN_0040b090("Shoot");
      if (cVar3 != '\0') {
        param_1[0xdb] = (int *)((float)param_1[0xdb] * (float)DAT_00baa280);
      }
      cVar3 = FUN_0040b030("Sound");
      if (cVar3 != '\0') {
        FUN_00703670(4);
        FUN_006d6ba0(0x1eb,0x3f800000,2,0,0x3f800000);
      }
      if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        *(undefined *)((int)param_1 + 0xba1) = 0;
        *(undefined2 *)((int)param_1 + 0x412) = 0;
        param_1[0x2d9] = (int *)0x3;
        *(undefined *)((int)param_1 + 0xba5) = 0x1e;
      }
      *(short *)(param_1 + 0x104) = *(short *)(param_1 + 0x104) + (short)local_148;
      break;
    case (int *)0x64:
      cVar3 = FUN_0040b030("Shoot");
      if (cVar3 != '\0') {
        pfVar11 = (float *)FUN_0067f070(&ppiStack_130);
        iVar7 = FUN_006eef60();
        fVar20 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4;
        local_13c = (int *)(fVar20 * pfVar11[1] * DAT_00baa9a0 + (float)param_1[0xd0]);
        local_140 = (int *)(fVar20 * *pfVar11 * DAT_00baa9a0 + (float)param_1[0xcf]);
        uVar6 = FUN_006eef60();
        piVar16 = (int *)FUN_006fe410(1000,1,&local_140,&DAT_00c7b640,0,0,uVar6,0);
        local_e4 = _DAT_00bac7b0;
        uStack_e0 = _UNK_00bac7b4;
        uStack_dc = _UNK_00bac7b8;
        uStack_d8 = _UNK_00bac7bc;
        uStack_c4 = 0;
        uStack_c0 = 0;
        local_d0 = (undefined  [4])_UNK_00bac714;
        local_d4 = (undefined  [4])_DAT_00bac710;
        uStack_cc._0_4_ = _UNK_00bac718;
        uStack_cc._4_4_ = _UNK_00bac71c;
        uStack_bc = 0;
        FUN_004073d0(&local_e4);
        (**(code **)(*piVar16 + 0xc))();
        FUN_006ff2a0(&local_140,0x42200000,0x42700000,0,param_1,0,0,0,0,4,0,0);
        FUN_00703670(8);
      }
      cVar3 = FUN_0040b030("Sound");
      if (cVar3 != '\0') {
        FUN_007fec00(param_1);
        FUN_00703670(0x28);
      }
      cVar3 = FUN_0040b090("Sound");
      if ((cVar3 != '\0') && (iVar7 = FUN_006ac760(), iVar7 != 0)) {
        FUN_006d6ba0(0x1e3,0x3f800000,0x2d,0,0x3f800000);
        local_134 = (int **)0x2;
        do {
          uVar6 = FUN_006eef60();
          appiStack_104[0] =
               (int **)FUN_006fe410(1000,0x94,param_1 + 0xcf,&DAT_00c7b640,param_1,1,uVar6,0);
          ppiVar10 = appiStack_104[0] + 0xef;
          if (appiStack_104[0][0xef] != (int *)0x0) {
            ppiStack_130 = ppiVar10;
            FUN_004cf210(&ppiStack_130);
          }
          *ppiVar10 = (int *)param_1;
          FUN_004cdcf0(ppiVar10);
          iVar7 = FUN_006eef60();
          local_134 = (int **)((int)local_134 + -1);
          appiStack_104[0][0x11d] =
               (int *)((float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baab30);
        } while (local_134 != (int **)0x0);
      }
      if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        (*(code *)(*param_1)[10])();
      }
    }
    iVar7 = FUN_006ac760();
    if (0 < iVar7) {
      cVar3 = *(char *)(param_1 + 0x2e9);
      cVar5 = (char)iVar7;
      if ('\0' < cVar3) {
        cVar4 = cVar3 - cVar5;
        if (cVar3 <= iVar7) {
          cVar4 = '\0';
        }
        *(char *)(param_1 + 0x2e9) = cVar4;
      }
      cVar3 = *(char *)((int)param_1 + 0xba5);
      if ('\0' < cVar3) {
        cVar4 = cVar3 - cVar5;
        if (cVar3 <= iVar7) {
          cVar4 = '\0';
        }
        *(char *)((int)param_1 + 0xba5) = cVar4;
      }
      cVar3 = *(char *)((int)param_1 + 0xba6);
      if ('\0' < cVar3) {
        cVar4 = cVar3 - cVar5;
        if (cVar3 <= iVar7) {
          cVar4 = '\0';
        }
        *(char *)((int)param_1 + 0xba6) = cVar4;
      }
      cVar3 = *(char *)((int)param_1 + 0xba7);
      if ('\0' < cVar3) {
        cVar5 = cVar3 - cVar5;
        if (cVar3 <= iVar7) {
          cVar5 = '\0';
        }
        *(char *)((int)param_1 + 0xba7) = cVar5;
      }
    }
    iVar7 = FUN_0040b220(0);
    *(int **)(iVar7 + 0x54) = local_138;
    if (-1 < (int)param_1[0x55]) {
      iVar7 = FUN_0040b220(param_1[0x55]);
      *(int **)(iVar7 + 0x54) = local_138;
    }
    piVar16 = param_1[0xcd];
    if (((NAN((float)piVar16) || NAN((float)DAT_00c7b640)) ==
         ((float)piVar16 == (float)DAT_00c7b640)) ||
       ((NAN((float)param_1[0xce]) || NAN((float)DAT_00c7b644)) ==
        ((float)param_1[0xce] == (float)DAT_00c7b644))) {
      param_1[0xd8] = (int *)(((float)piVar16 - (float)param_1[0xcf]) / (float)param_1[0xdb]);
      param_1[0xd9] = (int *)(((float)param_1[0xce] - (float)param_1[0xd0]) / (float)param_1[0xdb]);
    }
    if ((*(char *)((int)param_1 + 0x173) != '\0') &&
       (piVar16 = (int *)0x0, param_1[0x300] != (int *)0x0)) {
      do {
        piVar21 = *(int **)(param_1[0x2fd]
                            [(int)param_1[0x2fe] - 1U &
                             (uint)((int)piVar16 + (int)param_1[0x2ff]) >> 2] +
                           ((int)piVar16 + (int)param_1[0x2ff] & 3U) * 4);
        if ((piVar21 != (int *)0x0) &&
           ((piVar21[10] == 0x21 && ((float)DAT_00baa528 <= (float)piVar21[0xe0])))) {
          *(undefined *)((int)piVar21 + 0x173) = 1;
          (**(code **)(*piVar21 + 0xc))();
        }
        piVar16 = (int *)((int)piVar16 + 1);
      } while (piVar16 < param_1[0x300]);
    }
    goto LAB_004b6999;
  }
  if ((0.0 < (float)param_1[5]) && (((uint)param_1[6] & 2) != 0)) {
    param_1[5] = (int *)0x0;
    param_1[6] = (int *)0x0;
    param_1[7] = (int *)0x0;
    pfVar11 = (float *)param_1[2];
    if (pfVar11 != (float *)param_1[3]) {
      do {
        if ((((uint)pfVar11[2] & 6) != 0) && (pfVar11[6] != 1.401298e-45)) {
          *pfVar11 = 0.0;
          pfVar11[2] = 0.0;
          pfVar11[3] = 0.0;
        }
        param_1[5] = (int *)(*pfVar11 + (float)param_1[5]);
        param_1[6] = (int *)((uint)param_1[6] | (uint)pfVar11[2]);
        pfVar1 = pfVar11 + 3;
        pfVar11 = pfVar11 + 0xe;
        param_1[7] = (int *)((uint)param_1[7] | (uint)*pfVar1);
      } while (pfVar11 != (float *)param_1[3]);
    }
  }
  iVar7 = local_e4;
  if (param_1[0x2d9] == (int *)0x12) {
    if (param_1[0x1f] == (int *)0x0) {
      local_e4 = 0;
      _local_d4 = 0xf00000000;
      auVar2._12_4_ = 0;
      auVar2._0_12_ = _local_d0;
      _local_d4 = auVar2 << 0x20;
    }
    else {
      FUN_0040cf50(param_1[0x1f]);
    }
    iVar7 = local_e4;
    local_144 = (int *)0x3;
    cVar3 = FUN_0040cae0("Death",5);
    if ((cVar3 == '\0') || ((param_1[0x1f] != (int *)0x0 && (*(char *)(param_1 + 0x23) != '\0'))))
    goto LAB_004b44f9;
    local_121 = '\x01';
  }
  else {
LAB_004b44f9:
    local_121 = '\0';
  }
  if ((((uint)local_144 & 1) != 0) && (0xf < (uint)local_d0)) {
    uVar13 = (int)local_d0 + 1;
    iVar15 = iVar7;
    if (0xfff < uVar13) {
      iVar15 = *(int *)(iVar7 + -4);
      uVar13 = (int)local_d0 + 0x24;
      if (0x1f < (iVar7 - iVar15) - 4U) {
                    /* WARNING: Subroutine does not return */
        _invalid_parameter_noinfo_noreturn();
      }
    }
    FUN_00aef15c(iVar15,uVar13);
  }
  if (local_121 != '\0') {
    local_128 = DAT_00baa454;
    piVar16 = DAT_00baa528;
    if ((param_1[0x319] == (int *)0x12) || (piVar16 = DAT_00baa2d0, param_1[0x319] == (int *)0x13))
    {
      local_128 = piVar16;
    }
    local_144 = (int *)0x1e3;
    FUN_00956780();
    FUN_0092dc30(local_144,0x3f800000,0x2d,0,local_128,0);
    local_144 = (int *)0x0;
    do {
      uVar6 = FUN_006eef60();
      local_140 = (int *)((float)param_1[0xcf] + _DAT_00baa8c4);
      local_13c = (int *)((float)param_1[0xd0] + 0.0);
      local_120 = (int **)FUN_006fe410(1000,0x94,&local_140,&DAT_00c7b640,param_1,1,uVar6,0);
      ppiVar10 = local_120 + 0xef;
      if (local_120[0xef] != (int *)0x0) {
        local_134 = ppiVar10;
        FUN_004cf210(&local_134);
      }
      *ppiVar10 = (int *)param_1;
      FUN_004cdcf0(ppiVar10);
      iVar7 = (int)local_144 + 1;
      local_120[0x11d] = (int *)((float)(int)local_144 * DAT_00baa9b4);
      local_144 = (int *)iVar7;
    } while (iVar7 < 4);
    FUN_00aef12b();
    return;
  }
LAB_004b6999:
  FUN_00aef12b();
  return;
}

