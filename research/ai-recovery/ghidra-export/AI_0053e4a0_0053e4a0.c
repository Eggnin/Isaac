/* Local J460 decompiler output.
 * VA: 0x0053e4a0
 * Entry: 0053e4a0
 * Dispatcher: 0x006c2990
 * Types: 244,255,276,289
 * Identities: 244.0.0,244.1.0,244.2.0,244.2.1,244.3.0,255.0.0,276.0.0,289.0.0
 * Evidence: dispatcher=0x006c2990; end=0x005400d0; instructions=1552
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=244,255,276,289;
   identities=244.0.0,244.1.0,244.2.0,244.2.1,244.3.0,255.0.0,276.0.0,289.0.0;
   dispatcher=0x006c2990; end=0x005400d0; instructions=1552 */

void __fastcall AI_0053e4a0(int *param_1)

{
  char cVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  int *piVar5;
  float *pfVar6;
  float **ppfVar7;
  uint uVar8;
  float *pfVar9;
  int *piVar10;
  int iVar11;
  undefined4 extraout_ECX;
  int *extraout_EDX;
  float fVar12;
  float fVar13;
  float fVar14;
  int **ppiVar15;
  undefined auStack_138 [4];
  int **local_134;
  float *local_130;
  int **local_12c;
  float *local_124;
  float *local_120;
  float *local_11c;
  float *local_118;
  float *local_114;
  int **local_110;
  float *local_10c;
  float *local_108;
  float *local_104;
  float *local_100;
  char local_f9;
  undefined local_f8 [4];
  undefined4 local_f4;
  int *local_ec;
  float local_e8;
  undefined4 local_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  float local_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined local_b8 [4];
  float local_b4;
  float local_b0;
  undefined4 local_ac;
  float local_a4;
  undefined local_8c [16];
  float local_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  uint local_60;
  undefined4 local_5c;
  int local_50;
  int local_4c;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_138;
  if (param_1[0x2dd] == 1) {
    iVar4 = param_1[10];
    iVar11 = iVar4;
    if (((iVar4 == 0x114) && (iVar11 = 0x114, 0.0 < (float)param_1[5])) &&
       (puVar2 = (undefined4 *)param_1[2], puVar2 != (undefined4 *)param_1[3])) {
      do {
        if (((*(byte *)(puVar2 + 0xc) & 1) == 0) &&
           ((puVar2[4] == param_1[10] || (puVar2[6] == param_1[10])))) {
          *puVar2 = 0;
        }
        puVar2 = puVar2 + 0xe;
      } while (puVar2 != (undefined4 *)param_1[3]);
      iVar4 = param_1[10];
      iVar11 = iVar4;
    }
    if (iVar11 == 0xf4) {
      if (((param_1[0xb] == 3) && (0.0 < (float)param_1[5])) &&
         (puVar2 = (undefined4 *)param_1[2], puVar2 != (undefined4 *)param_1[3])) {
        do {
          local_f4 = puVar2[3];
          if ((((((puVar2[2] & 6) != 0) && (((uint)puVar2[0xc] >> 1 & 1) == 0)) && (puVar2[4] != 1))
              && ((puVar2[6] != 1 && (puVar2[6] != 3)))) && ((puVar2[2] & 0x1000) == 0)) {
            *puVar2 = 0;
          }
          puVar2 = puVar2 + 0xe;
        } while (puVar2 != (undefined4 *)param_1[3]);
        iVar4 = param_1[10];
        if (iVar4 != 0xf4) goto LAB_005400b4;
      }
      if (param_1[0xb] == 2) {
        if (param_1[0xc] == 1) {
          piVar5 = (int *)param_1[0xef];
          piVar10 = param_1;
          if ((int *)param_1[0xef] != (int *)0x0) {
            do {
              piVar10 = piVar5;
              piVar5 = (int *)piVar10[0xef];
            } while ((int *)piVar10[0xef] != (int *)0x0);
            iVar4 = param_1[10];
          }
          if (((piVar10[10] != iVar4) || (piVar10[0xb] != 2)) || (piVar10[0xc] != 0)) {
            uVar3 = FUN_00435c70();
            (**(code **)(*param_1 + 0x24))(uVar3);
          }
        }
        fVar12 = 0.0;
        piVar5 = param_1;
        fVar13 = DAT_00baacc4;
        if (param_1[0xc] == 0) {
          do {
            fVar14 = (float)piVar5[0xe0];
            if (fVar13 <= (float)piVar5[0xe0]) {
              fVar14 = fVar13;
            }
            ppiVar15 = (int **)(piVar5 + 0xf0);
            fVar13 = (float)piVar5[5];
            if ((float)piVar5[5] <= fVar12) {
              fVar13 = fVar12;
            }
            fVar12 = fVar13;
            piVar5 = *ppiVar15;
            fVar13 = fVar14;
          } while (*ppiVar15 != (int *)0x0);
          local_10c = (float *)(fVar12 + fVar14);
          piVar5 = param_1;
          local_118 = (float *)fVar12;
          do {
            piVar5[0xe0] = (int)local_10c;
            local_e4 = 0;
            uStack_e0 = 0;
            uStack_dc = 0;
            uStack_d8 = 0;
            local_d4 = DAT_00c7b640;
            fStack_d0 = DAT_00c7b644;
            fStack_cc = DAT_00c7b640;
            fStack_c8 = DAT_00c7b644;
            uStack_c4 = 0;
            uStack_c0 = 0;
            (**(code **)(*piVar5 + 0x20))(local_118,0x2000,0,&local_e4,0x1e);
            piVar5 = (int *)piVar5[0xf0];
          } while (piVar5 != (int *)0x0);
        }
        if (*(char *)((int)param_1 + 0x173) != '\0') {
          piVar5 = (int *)param_1[0xef];
          while (piVar10 = piVar5, piVar10 != (int *)0x0) {
            param_1 = piVar10;
            piVar5 = (int *)piVar10[0xef];
          }
          do {
            local_e4 = 0;
            uStack_e0 = 0;
            uStack_dc = 0;
            uStack_d8 = 0;
            local_d4 = DAT_00c7b640;
            fStack_d0 = DAT_00c7b644;
            fStack_cc = DAT_00c7b640;
            fStack_c8 = DAT_00c7b644;
            uStack_c4 = 0;
            uStack_c0 = 0;
            (**(code **)(*param_1 + 0x24))(&local_e4);
            param_1 = (int *)param_1[0xf0];
          } while (param_1 != (int *)0x0);
          FUN_00aef12b();
          return;
        }
      }
    }
    goto LAB_005400b4;
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    param_1[0xd8] = (int)DAT_00c7b640;
    param_1[0xd9] = (int)DAT_00c7b644;
    FUN_00aef12b();
    return;
  }
  FUN_006d8e40(1);
  iVar4 = param_1[0x2d9];
  if (iVar4 == 0) {
    param_1[0x2d9] = 6;
    local_100 = (float *)(param_1 + 0xcf);
    param_1[0xcd] = (int)*local_100;
    param_1[0xce] = param_1[0xd0];
    FUN_006c04b0(1);
    local_108 = (float *)(param_1 + 10);
    param_1[0x3c6] = 1;
    if (((param_1[10] == 0xf4) && (local_ec = param_1 + 0xb, param_1[0xb] == 2)) &&
       (param_1[0xc] == 0)) {
      FUN_004cdd80(local_100,900);
      local_118 = (float *)(param_1 + 0xd0);
      local_10c = (float *)0x5;
      local_114 = (float *)0x3e8;
      do {
        iVar4 = FUN_006eef60();
        fVar12 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa704;
        local_11c = (float *)(fVar12 + fVar12);
        iVar4 = FUN_006eef60();
        local_134 = (int **)((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baa9a0 + DAT_00baa87c);
        fVar12 = (float)local_11c;
        FUN_0041d540();
        local_124 = (float *)(fVar12 * (float)local_134 + *local_100);
        fVar12 = (float)local_11c;
        FUN_0041d520();
        local_120 = (float *)(fVar12 * (float)local_134 + *local_118);
        FUN_00812f50(local_f8,&local_124,0x41200000,0x41200000,0x41200000);
        FUN_00813520(&local_130,local_f8,0,1,0,0);
        iVar4 = FUN_006eef60();
        fVar12 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa704;
        local_134 = (int **)(fVar12 + fVar12);
        iVar4 = FUN_006eef60();
        local_11c = (float *)((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                             DAT_00ba9ff4);
        ppiVar15 = local_134;
        FUN_0041d540();
        local_130 = (float *)((float)ppiVar15 * DAT_00baa854 * (float)local_11c + (float)local_130);
        ppiVar15 = local_134;
        FUN_0041d520();
        local_12c = (int **)((float)ppiVar15 * DAT_00baa854 * (float)local_11c + (float)local_12c);
        uVar3 = FUN_006eef60();
        piVar5 = (int *)FUN_006fe410(*local_108,*local_ec,&local_130,&DAT_00c7b640,0,1,uVar3,0);
        if (piVar5[0xef] != 0) {
          local_134 = (int **)(piVar5 + 0xef);
          FUN_004cf210(&local_134);
        }
        piVar5[0xef] = (int)param_1;
        if (param_1 != (int *)0x0) {
          FUN_004cdcf0(piVar5 + 0xef);
        }
        ppiVar15 = (int **)(param_1 + 0xf0);
        if (param_1[0xf0] != 0) {
          local_134 = ppiVar15;
          FUN_004cf210(&local_134);
        }
        *ppiVar15 = piVar5;
        FUN_004cdcf0(ppiVar15);
        (**(code **)(*piVar5 + 0xc))();
        local_11c = (float *)(DAT_00c71678 + 0x18300);
        fVar12 = *local_11c;
        iVar11 = (int)(((float)piVar5[0xcf] - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
        iVar4 = (int)(((float)piVar5[0xd0] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
        if (((-1 < iVar11) && (iVar11 < *(int *)((int)fVar12 + 0xc))) &&
           ((-1 < iVar4 &&
            ((iVar4 < *(int *)((int)fVar12 + 0x10) &&
             (local_134 = (int **)(iVar4 * *(int *)((int)fVar12 + 0xc) + iVar11),
             local_134 < (int **)0x1c0)))))) {
          iVar4 = *(int *)((int)fVar12 + 0x76c + (int)local_134 * 4);
          iVar11 = iVar4 % (int)local_114;
          if (iVar11 < 900) {
            *(int *)((int)fVar12 + 0x76c + (int)local_134 * 4) = (iVar4 - iVar11) + 900;
          }
        }
        local_10c = (float *)((int)local_10c + -1);
        param_1 = piVar5;
      } while (local_10c != (float *)0x0);
      FUN_00aef12b();
      return;
    }
    goto LAB_005400b4;
  }
  if (iVar4 == 6) {
    FUN_0040a380("DigIn",0);
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      if ((float)param_1[5] < (float)param_1[0xe0]) {
        param_1[0x2d9] = 4;
        param_1[0xcd] = (int)DAT_00c7b640;
        param_1[0xce] = (int)DAT_00c7b644;
        param_1[0x62] = 0;
        *(undefined *)((int)param_1 + 0x171) = 0;
      }
      else {
        param_1[0x2d9] = 8;
        param_1[0x2f0] = 0;
      }
    }
  }
  else if (iVar4 == 4) {
    if (((param_1[10] != 0xf4) || (param_1[0xb] != 2)) || (param_1[0xc] != 1)) {
      if (param_1[0x3c7] == -1) {
        if (param_1[0x104] < 1) {
          iVar4 = *(int *)(DAT_00c71678 + 0x18300);
          local_108 = *(float **)(iVar4 + 0x14);
          local_114 = *(float **)(iVar4 + 0x1c);
          local_118 = *(float **)(iVar4 + 0x18);
          local_ec = *(int **)(iVar4 + 0x20);
          pfVar6 = (float *)FUN_0067f070(local_f8);
          iVar4 = FUN_006eef60();
          fVar12 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baaae0 + DAT_00baa950;
          local_114 = (float *)(((float)local_114 + (float)local_108) * DAT_00baa2d0 +
                               fVar12 * *pfVar6);
          local_110 = (int **)(((float)local_ec + (float)local_118) * DAT_00baa2d0 +
                              fVar12 * pfVar6[1]);
          FUN_00812f50(&local_124,&local_114,0x41a00000,0x41a00000,0x41a00000);
          local_114 = local_124;
          local_110 = (int **)local_120;
          ppfVar7 = (float **)FUN_00813520(local_f8,&local_114,0,1,0,0);
          local_114 = *ppfVar7;
          local_134 = (int **)ppfVar7[1];
          local_110 = local_134;
          local_10c = local_114;
          iVar4 = FUN_00703950(&local_114);
          fVar13 = (float)local_134 - *(float *)(iVar4 + 0x340);
          fVar12 = (float)local_10c - *(float *)(iVar4 + 0x33c);
          local_114 = (float *)(fVar13 * fVar13 + fVar12 * fVar12);
          uVar8 = FUN_006eef60();
          if ((((uVar8 & 1) == 0) && (DAT_00baac34 < (float)local_114)) &&
             ((float)local_114 < DAT_00baaca4)) {
            param_1[0xcd] = (int)local_10c;
            param_1[0xce] = (int)local_134;
            param_1[0xcf] = (int)local_10c;
            param_1[0xd0] = (int)local_134;
          }
        }
      }
      else {
        param_1[0x2f1] = param_1[0x2f1] + ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
        FUN_007e33c0(&DAT_00c7b640,0x40400000,0,1);
        cVar1 = FUN_006cae60(0,7);
        if ((cVar1 != '\0') || (0x59 < param_1[0x2f1])) {
          pfVar6 = (float *)param_1[0xcf];
          ppfVar7 = (float **)(param_1 + 0xcf);
          ppiVar15 = (int **)param_1[0xd0];
          local_130 = pfVar6;
          local_12c = ppiVar15;
          iVar4 = FUN_007f0780(pfVar6,ppiVar15);
          if ((iVar4 != 0) || (cVar1 = FUN_006b9740(ppfVar7,pfVar6,ppiVar15), cVar1 != '\0')) {
            FUN_00813520(&local_130,ppfVar7,0,1,0,0);
            fVar12 = ((float)param_1[0xd0] - (float)local_12c) *
                     ((float)param_1[0xd0] - (float)local_12c) +
                     ((float)*ppfVar7 - (float)local_130) * ((float)*ppfVar7 - (float)local_130);
            FUN_00435a50();
            if (DAT_00baa8d0 <= fVar12) {
              if (0x77 < param_1[0x2f1]) {
                param_1[0x2f1] = 0x5a;
                uVar3 = FUN_00435c70();
                (**(code **)(*param_1 + 0x20))(0x40600000,0,0,uVar3,0x1e);
              }
              goto LAB_0053efd1;
            }
            *ppfVar7 = local_130;
            param_1[0xd0] = (int)local_12c;
          }
          param_1[0xcd] = (int)*ppfVar7;
          param_1[0xce] = param_1[0xd0];
        }
      }
LAB_0053efd1:
      if (0 < param_1[0x104]) {
        param_1[0x104] = ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + param_1[0x104];
      }
      cVar1 = FUN_00a10630(&DAT_00c7b640);
      if (cVar1 != '\0') {
        param_1[0x2d9] = 8;
        param_1[0x2f0] = 0;
        *(undefined *)((int)param_1 + 0x171) = 1;
        FUN_006c04b0(1);
        param_1[0x2f1] = 0;
      }
    }
  }
  else if (iVar4 == 8) {
    FUN_006d8b20(0);
    FUN_0040a380("DigOut",0);
    iVar4 = param_1[0xb];
    param_1[0x62] = 4;
    if ((iVar4 == 1) || (iVar4 == 3)) {
      cVar1 = FUN_0040b030("PreShoot");
      if ((cVar1 != '\0') &&
         ((param_1[0x3c7] == -1 && (cVar1 = FUN_00944a40(param_1 + 0xcf), cVar1 == '\0')))) {
        param_1[0x2d9] = 6;
      }
      cVar1 = FUN_0040b030("Shoot");
      if (cVar1 != '\0') {
        iVar4 = 1;
        if (param_1[0xb] != 3) {
          iVar4 = 10;
        }
        param_1[0x2f0] = iVar4;
        FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
      }
      fVar12 = DAT_00baa8d0;
      if (0 < param_1[0x2f0]) {
        param_1[0x2f0] = param_1[0x2f0] + -1;
        local_118 = (float *)fVar12;
        if (param_1[0xb] == 3) {
          local_118 = (float *)DAT_00baa9a0;
        }
        iVar4 = FUN_006be840();
        local_114 = *(float **)(iVar4 + 0x33c);
        local_108 = *(float **)(iVar4 + 0x340);
        fVar12 = ((float)param_1[0xd0] - (float)local_108) *
                 ((float)param_1[0xd0] - (float)local_108) +
                 ((float)param_1[0xcf] - (float)local_114) *
                 ((float)param_1[0xcf] - (float)local_114);
        FUN_00435a50();
        local_124 = (float *)(*(float *)(iVar4 + 0x360) * DAT_00baa198 * fVar12 + (float)local_114);
        local_120 = (float *)(*(float *)(iVar4 + 0x364) * DAT_00baa198 * fVar12 + (float)local_108);
        FUN_00812f50(&local_130,&local_124,0x40800000,0x40800000,0x40800000);
        pfVar6 = (float *)FUN_0067f070(local_f8);
        iVar4 = FUN_006eef60();
        fVar12 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4;
        fVar13 = fVar12 * pfVar6[1] * (float)local_118 + (float)local_12c;
        fVar12 = fVar12 * *pfVar6 * (float)local_118 + (float)local_130;
        if (param_1[0x3c7] != -1) {
          pfVar6 = (float *)FUN_006d8d30(local_f8);
          fVar12 = *pfVar6;
          fVar13 = pfVar6[1];
        }
        local_ec = (int *)((fVar12 - (float)param_1[0xcf]) * DAT_00baa09c);
        local_e8 = (fVar13 - (float)param_1[0xd0]) * DAT_00baa09c;
        AI_0043ef30();
        iVar4 = FUN_006eef60();
        local_b4 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa8a0;
        iVar4 = FUN_006eef60();
        local_ac = 0x3fc00000;
        local_b0 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa7e8 - _DAT_00baa940;
        iVar4 = FUN_006eef60();
        local_a4 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4
                   + DAT_00baa2d0;
        if (param_1[0xb] == 3) {
          local_60 = 2;
          local_5c = 0;
          local_a4 = 1.6;
          local_7c = _DAT_00bac500;
          fStack_78 = _UNK_00bac504;
          fStack_74 = _UNK_00bac508;
          fStack_70 = _UNK_00bac50c;
          local_124 = (float *)0x0;
          iVar4 = FUN_006eef60();
          local_130 = (float *)0x0;
          local_12c = (int **)0xc1f00000;
          local_120 = (float *)((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                                DAT_00ba9ff4 * DAT_00baad74);
          FUN_006d7cf0(&local_130,local_8c,&local_124);
        }
        FUN_006cb2e0(param_1 + 0xcf,&local_ec,0,local_b8);
        if (((float *)(param_1[0x2f0] % 6) == (float *)0x0) && (param_1[0xb] != 3)) {
          local_124 = (float *)(param_1[0x2f0] % 6);
          iVar4 = FUN_006eef60();
          local_120 = (float *)((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                                DAT_00ba9ff4 * DAT_00baad74);
          uVar3 = FUN_00407170();
          local_130 = (float *)0x0;
          local_12c = (int **)0xc1f00000;
          iVar4 = FUN_006d7cf0(&local_130,uVar3,&local_124);
          iVar11 = FUN_006eef60();
          *(float *)(iVar4 + 0xec) =
               (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baab30;
          iVar11 = FUN_006eef60();
          fVar12 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa280 + DAT_00baa3a4;
          fVar13 = fVar12 * DAT_00c37940;
          fVar12 = fVar12 * DAT_00c3793c;
          *(undefined4 *)(iVar4 + 0x354) = 100;
          *(float *)(iVar4 + 0xe8) = fVar13;
          *(float *)(iVar4 + 0xe4) = fVar12;
        }
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = 6;
      }
    }
    else {
      if ((((param_1[10] == 0xf4) && (iVar4 == 2)) && (param_1[0xf0] != 0)) &&
         (cVar1 = FUN_0040b030(&DAT_00b61210), cVar1 != '\0')) {
        local_118 = (float *)FUN_004567e0();
        local_11c = (float *)0x0;
        do {
          iVar4 = FUN_006eef60();
          fVar12 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa704;
          local_10c = (float *)(fVar12 + fVar12);
          iVar4 = FUN_006eef60();
          local_134 = (int **)((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                               DAT_00ba9ff4 * DAT_00baaae0 + DAT_00baa950);
          fVar12 = (float)local_10c;
          FUN_0041d540();
          local_108 = (float *)(fVar12 * (float)local_134 + (float)param_1[0xcf]);
          fVar12 = (float)local_10c;
          FUN_0041d520();
          local_104 = (float *)(fVar12 * (float)local_134 + (float)param_1[0xd0]);
          FUN_00812f50(&local_124,&local_108,0x41a00000,0x41a00000,0x41a00000);
          local_108 = local_124;
          local_104 = local_120;
          pfVar9 = (float *)FUN_00813520(local_f8,&local_108,0,1,0,0);
          iVar4 = FUN_006eef60();
          fVar12 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa704;
          local_10c = (float *)(fVar12 + fVar12);
          iVar4 = FUN_006eef60();
          local_134 = (int **)((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                              DAT_00ba9ff4);
          pfVar6 = local_10c;
          FUN_0041d540();
          local_100 = (float *)((float)pfVar6 * DAT_00baa854 * (float)local_134 + *pfVar9);
          pfVar6 = local_10c;
          FUN_0041d520();
          local_108 = local_100;
          local_114 = (float *)((float)pfVar6 * DAT_00baa854 * (float)local_134 + pfVar9[1]);
          local_104 = local_114;
          iVar4 = FUN_00703950(&local_108);
          fVar13 = (float)local_114 - *(float *)(iVar4 + 0x340);
          fVar12 = (float)local_100 - *(float *)(iVar4 + 0x33c);
          fVar12 = fVar13 * fVar13 + fVar12 * fVar12;
          if ((DAT_00baac34 < fVar12) &&
             ((pfVar6 = local_114, pfVar9 = local_100, (int)local_11c < 2 || (fVar12 < DAT_00baaca4)
              ))) goto LAB_0053f35a;
          local_11c = (float *)((int)local_11c + 1);
        } while ((int)local_11c < 10);
        pfVar9 = (float *)FUN_0067f070(local_f8);
        pfVar6 = (float *)(pfVar9[1] * DAT_00baa8b8 + (float)param_1[0xd0]);
        pfVar9 = (float *)(*pfVar9 * DAT_00baa8b8 + (float)param_1[0xcf]);
LAB_0053f35a:
        iVar4 = (int)local_118;
        *(float **)((int)local_118 + 0x334) = pfVar9;
        *(float **)((int)local_118 + 0x338) = pfVar6;
        *(float **)((int)local_118 + 0x33c) = pfVar9;
        *(float **)((int)local_118 + 0x340) = pfVar6;
        *(undefined4 *)((int)local_118 + 0xb64) = 8;
        *(undefined *)((int)local_118 + 0x171) = 1;
        local_118 = (float *)((int)local_118 + 0x334);
        FUN_006c04b0(1);
        *(undefined4 *)(iVar4 + 0xbc4) = 0;
      }
      cVar1 = FUN_0040b030("Shoot");
      if (cVar1 != '\0') {
        iVar4 = FUN_006be840();
        local_120 = (float *)(*(float *)(iVar4 + 0x364) * DAT_00baa81c);
        local_124 = (float *)(*(float *)(iVar4 + 0x360) * DAT_00baa81c);
        local_114 = (float *)((float)local_120 * (float)local_120 +
                             (float)local_124 * (float)local_124);
        local_11c = local_124;
        local_100 = local_120;
        if (DAT_00baa9d0 < (float)local_114) {
          local_130 = *(float **)(iVar4 + 0x33c);
          local_12c = *(int ***)(iVar4 + 0x340);
          pfVar6 = (float *)FUN_007f0b40(local_f8,&local_130,&local_124);
          fVar12 = *(float *)(iVar4 + 0x340) - pfVar6[1];
          fVar13 = *(float *)(iVar4 + 0x33c) - *pfVar6;
          fVar12 = fVar12 * fVar12 + fVar13 * fVar13;
          FUN_00435a50();
          local_108 = (float *)(fVar12 - DAT_00baa7e8);
          pfVar6 = local_114;
          FUN_00435a50();
          if ((float)local_108 < (float)pfVar6) {
            local_11c = (float *)((float)local_11c * ((float)local_108 / (float)pfVar6));
            local_100 = (float *)((float)local_100 * ((float)local_108 / (float)pfVar6));
          }
        }
        iVar11 = FUN_006be840();
        local_124 = (float *)(*(float *)(iVar4 + 0x33c) + (float)local_11c);
        local_130 = *(float **)(iVar11 + 0x33c);
        local_12c = *(int ***)(iVar11 + 0x340);
        local_120 = (float *)((float)local_100 + *(float *)(iVar4 + 0x340));
        FUN_00812f50(&local_114,&local_124,0x41a00000,0x41a00000,0x41a00000);
        if (param_1[0x3c7] != -1) {
          ppfVar7 = (float **)FUN_006d8d30(local_f8);
          local_130 = *ppfVar7;
          local_12c = (int **)ppfVar7[1];
          local_114 = local_130;
          local_110 = local_12c;
        }
        local_108 = (float *)((float)local_114 - (float)param_1[0xcf]);
        local_104 = (float *)((float)local_110 - (float)param_1[0xd0]);
        piVar5 = param_1 + 0xcf;
        cVar1 = FUN_00417430(0x1000a00,0);
        if (cVar1 == '\0') {
          iVar4 = param_1[10];
          if (iVar4 == 0xff) {
            AI_0043ef30();
            local_50 = *piVar5;
            local_60 = local_60 | 0x800;
            local_4c = param_1[0xd0];
            local_124 = (float *)0x41200000;
            local_120 = (float *)0x40a00000;
            FUN_006cb2e0(piVar5,&local_124,6,local_b8);
            FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
          }
          else if (iVar4 == 0x114) {
            uVar3 = AI_0043ef30();
            fVar12 = DAT_00baa81c;
            if (param_1[10] == 0x121) {
              fVar12 = DAT_00baa7e8;
            }
            iVar4 = FUN_006ccdd0(1,&local_130,fVar12,uVar3);
            fVar12 = *(float *)(iVar4 + 0x418) - DAT_00baa1f8;
            fVar13 = *(float *)(iVar4 + 0x360) * DAT_00baa2e4;
            fVar14 = *(float *)(iVar4 + 0x364) * DAT_00baa2e4;
            *(uint *)(iVar4 + 0x438) = *(uint *)(iVar4 + 0x438) | 2;
            *(float *)(iVar4 + 0x418) = fVar12;
            fVar12 = *(float *)(iVar4 + 0x414) * DAT_00baa354;
            *(undefined4 *)(iVar4 + 0x43c) = *(undefined4 *)(iVar4 + 0x43c);
            *(undefined4 *)(iVar4 + 0x420) = 0x3fcccccd;
            *(float *)(iVar4 + 0x414) = fVar12 - DAT_00baa83c;
            *(float *)(iVar4 + 0x410) = *(float *)(iVar4 + 0x410) - DAT_00baa87c;
            *(float *)(iVar4 + 0x360) = fVar13;
            *(float *)(iVar4 + 0x364) = fVar14;
            FUN_00435a80();
            local_d4 = _DAT_00bac500;
            fStack_d0 = _UNK_00bac504;
            fStack_cc = _UNK_00bac508;
            fStack_c8 = _UNK_00bac50c;
            (**(code **)(*extraout_EDX + 0x3c))(extraout_ECX,0xffffffff,0xff,0,1);
            FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
          }
          else if (iVar4 == 0x121) {
            if ((param_1[0x3c7] != -1) || (cVar1 = FUN_00944a40(piVar5), cVar1 != '\0')) {
              local_f9 = FUN_007f0df0(piVar5,&local_114,3,999,0,0,0);
              uVar8 = FUN_006eef60();
              if (((uVar8 % 100 < 0x4b) || (local_f9 == '\0')) &&
                 (iVar4 = FUN_006d6c20(), iVar4 < 7)) {
                uVar3 = FUN_006eef60();
                iVar4 = FUN_006fe410(0x100,0,piVar5,&DAT_00c7b640,param_1,0,uVar3,0);
                *(uint *)(iVar4 + 0x168) = *(uint *)(iVar4 + 0x168) & 0xfffffffb;
                *(undefined4 *)(iVar4 + 0x16c) = *(undefined4 *)(iVar4 + 0x16c);
                FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
              }
              else {
                uVar3 = AI_0043ef30();
                fVar12 = DAT_00baa81c;
                if (param_1[10] == 0x121) {
                  fVar12 = DAT_00baa7e8;
                }
                iVar4 = FUN_006ccdd0(1,&local_130,fVar12,uVar3);
                *(undefined4 *)(iVar4 + 0x420) = 0x3f800000;
                FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
              }
            }
          }
          else if (((iVar4 == 0xf4) && (param_1[0xb] == 2)) && (param_1[0xc] == 0)) {
            AI_0043ef30();
            local_60 = 0;
            local_5c = 0x40;
            local_a4 = 2.0;
            pfVar6 = (float *)FUN_00a10030(local_f8);
            local_120 = (float *)(pfVar6[1] * DAT_00baa81c);
            local_124 = (float *)(*pfVar6 * DAT_00baa81c);
            FUN_006cb2e0(piVar5,&local_124,0,local_b8);
            FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
          }
          else if ((param_1[0x3c7] != -1) ||
                  (cVar1 = FUN_007f0df0(piVar5,&local_114,3,999,0,0,0), cVar1 != '\0')) {
            uVar3 = AI_0043ef30();
            pfVar6 = (float *)FUN_00a10030(local_f8);
            local_120 = (float *)(pfVar6[1] * DAT_00baa81c);
            local_124 = (float *)(*pfVar6 * DAT_00baa81c);
            FUN_006cb2e0(param_1 + 0xcf,&local_124,0,uVar3);
            FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
          }
        }
      }
    }
    if ((param_1[10] == 0x114) &&
       ((NAN((float)param_1[0x22]) || NAN(DAT_00ba9fe4)) != ((float)param_1[0x22] == DAT_00ba9fe4)))
    {
      uVar3 = FUN_006eef60();
      iVar4 = FUN_006fe410(1000,0x3d,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar3,0);
      if (*(int *)(iVar4 + 0x3bc) != 0) {
        local_114 = (float *)(iVar4 + 0x3bc);
        FUN_004cf210(&local_114);
      }
      *(int **)(iVar4 + 0x3bc) = param_1;
      FUN_004cdcf0((int **)(iVar4 + 0x3bc));
      *(int *)(iVar4 + 0x454) = param_1[0xdc];
      *(undefined4 *)(iVar4 + 0x458) = 0x42480000;
      *(undefined4 *)(iVar4 + 0x45c) = 5;
      *(undefined4 *)(iVar4 + 0x460) = 5;
      FUN_006d6ba0(0x34,0x3f800000,2,0,0x3f800000);
    }
    if ((((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) &&
        (param_1[0x2d9] = 6, param_1[10] == 0xf4)) && (param_1[0xb] == 2)) {
      param_1[0x104] = 0x2d;
    }
  }
  fVar12 = (float)param_1[0xcd];
  if (((NAN(fVar12) || NAN(DAT_00c7b640)) == (fVar12 == DAT_00c7b640)) ||
     ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) == ((float)param_1[0xce] == DAT_00c7b644))) {
    param_1[0xd8] = (int)(fVar12 - (float)param_1[0xcf]);
    param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
  }
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
LAB_005400b4:
  FUN_00aef12b();
  return;
}

