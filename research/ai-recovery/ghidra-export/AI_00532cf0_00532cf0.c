/* Local J460 decompiler output.
 * VA: 0x00532cf0
 * Entry: 00532cf0
 * Dispatcher: 0x006c2990
 * Types: 212,286
 * Identities: 212.0.0,212.1.0,212.2.0,212.3.0,212.4.0,286.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00533b80; instructions=785
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=212,286;
   identities=212.0.0,212.1.0,212.2.0,212.3.0,212.4.0,286.0.0; dispatcher=0x006c2990;
   end=0x00533b80; instructions=785 */

void __fastcall AI_00532cf0(int *param_1)

{
  float fVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  char cVar6;
  int iVar7;
  undefined4 uVar8;
  float *pfVar9;
  uint uVar10;
  int *piVar11;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  int *piVar12;
  uint uVar13;
  float fVar14;
  float fVar15;
  undefined auStack_148 [4];
  float local_144;
  float local_140;
  int *local_13c;
  float local_138;
  float local_134;
  int *local_130;
  float local_12c;
  float local_128;
  float local_124;
  int local_120;
  int *local_11c;
  float local_118;
  float local_114;
  int local_110 [8];
  undefined4 local_f0;
  undefined4 uStack_ec;
  undefined4 local_e8;
  int local_e4;
  int iStack_e0;
  int iStack_dc;
  int iStack_d8;
  undefined local_d4 [8];
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  uint local_c4;
  int *local_c0;
  undefined4 local_bc;
  undefined local_b8 [24];
  float local_a0;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_148;
  piVar12 = (int *)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  iVar7 = param_1[0x2d9];
  local_11c = piVar12;
  if (iVar7 == 0) {
    param_1[0x2d9] = 4;
    param_1[0x61] = 3;
    if (((param_1[10] == 0xd4) && (param_1[0xb] != 1)) && (param_1[0xb] != 4)) {
      param_1[0x5a] = param_1[0x5a] | 1;
      param_1[0x5b] = param_1[0x5b] | 8;
      *(undefined *)(param_1 + 0xec) = 1;
    }
    iVar7 = FUN_006eef60();
    fVar14 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa704;
    local_13c = (int *)(fVar14 + fVar14);
    local_130 = local_13c;
    FUN_0041d540();
    piVar12 = local_13c;
    FUN_0041d520();
    param_1[0xd8] = (int)local_130;
    param_1[0xd9] = (int)piVar12;
    iVar5 = _UNK_00babf5c;
    iVar4 = _UNK_00babf58;
    iVar3 = _UNK_00babf54;
    iVar2 = _DAT_00babf50;
    iVar7 = param_1[10];
    if (iVar7 != 0x11e) {
      local_f0 = 0x3dcccccd;
      uStack_ec = 0x3dcccccd;
      local_e8 = 0x3dcccccd;
      if (param_1 + 0x79 != local_110) {
        *(undefined8 *)(param_1 + 0x81) = 0x3dcccccd3dcccccd;
        param_1[0x79] = iVar2;
        param_1[0x7a] = iVar3;
        param_1[0x7b] = iVar4;
        param_1[0x7c] = iVar5;
        param_1[0x83] = 0x3dcccccd;
        *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
        iVar7 = param_1[10];
      }
    }
    if ((iVar7 == 0xd4) && (param_1[0xb] == 2)) {
      uVar8 = FUN_006eef60();
      iVar7 = FUN_006fe410(1000,0x7b,param_1 + 0xcf,&DAT_00c7b640,param_1,3,uVar8,0);
      *(undefined4 *)(iVar7 + 0xdc) = 0;
      *(undefined4 *)(iVar7 + 0xe0) = 0xc1700000;
      if (*(int *)(iVar7 + 0x3bc) != 0) {
        local_13c = (int *)(iVar7 + 0x3bc);
        FUN_004cf210(&local_13c);
      }
      *(int **)(iVar7 + 0x3bc) = param_1;
      FUN_004cdcf0((int **)(iVar7 + 0x3bc));
      fVar14 = (float)param_1[0xcf];
      fVar15 = (float)param_1[0xd0];
      param_1 = param_1 + 0xf0;
      *(undefined *)(iVar7 + 0x464) = 1;
      *(float *)(iVar7 + 0x468) = *(float *)(iVar7 + 0x33c) - fVar14;
      *(float *)(iVar7 + 0x46c) = *(float *)(iVar7 + 0x340) - fVar15;
      if (*param_1 != 0) {
        local_13c = param_1;
        FUN_004cf210(&local_13c);
      }
      *param_1 = iVar7;
      FUN_004cdcf0(param_1);
      FUN_00aef12b();
      return;
    }
    goto LAB_00533b67;
  }
  fVar14 = (float)param_1[0xdb] * DAT_00baa3e0;
  param_1[0xdb] = (int)fVar14;
  if (iVar7 == 4) {
    FUN_0040a380(&DAT_00b1bc54,0);
    if (((param_1[0x5a] & 0x200U) == 0) || (param_1[0x3c7] != -1)) {
      local_144 = DAT_00baa2b8;
      if ((param_1[10] == 0xd4) && (param_1[0xb] == 4)) {
        local_144 = DAT_00baa254;
      }
      fVar14 = local_144;
      if ((float)param_1[0xd8] <= 0.0 && (float)param_1[0xd8] != 0.0) {
        fVar14 = (float)((uint)local_144 ^ DAT_00bacb70);
      }
      if ((float)param_1[0xd9] <= 0.0 && (float)param_1[0xd9] != 0.0) {
        local_144 = (float)((uint)local_144 ^ DAT_00bacb70);
      }
      fVar15 = local_144;
      local_140 = fVar14;
      if (param_1[0x3c7] != -1) {
        pfVar9 = (float *)FUN_006d82d0(&local_12c);
        fVar14 = local_140 * local_140 + local_144 * local_144;
        FUN_00435a50();
        fVar15 = local_144 + fVar14 * DAT_00baa2d0 * pfVar9[1];
        fVar14 = fVar14 * DAT_00baa2d0 * *pfVar9 + local_140;
      }
      fVar1 = (float)param_1[0xdb];
      if (NAN(fVar1) == (fVar1 == 0.0)) {
        param_1[0xd9] = (int)(((float)param_1[0xe7] * fVar15) / fVar1 + (float)param_1[0xd9]);
        param_1[0xd8] = (int)(((float)param_1[0xe7] * fVar14) / fVar1 + (float)param_1[0xd8]);
      }
    }
    else {
      FUN_007e6300(0);
    }
    if (param_1[10] == 0xd4) {
      if (param_1[0xb] == 2) {
        uVar13 = 0;
        if (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0) {
          do {
            iVar7 = FUN_00417870(uVar13);
            if ((*(int *)(iVar7 + 0x188) != 0) &&
               (fVar15 = (float)param_1[0xcf] - *(float *)(iVar7 + 0x33c),
               fVar14 = (float)param_1[0xd0] - *(float *)(iVar7 + 0x340),
               fVar14 * fVar14 + fVar15 * fVar15 < DAT_00baac18)) {
              local_e4 = param_1[10];
              iStack_e0 = param_1[0xb];
              iStack_dc = param_1[0xd];
              iStack_d8 = param_1[0xe];
              uStack_cc = param_1[0xd8];
              local_d4 = (undefined  [8])*(undefined8 *)(param_1 + 0xcf);
              uStack_c8 = param_1[0xd9];
              local_144 = (float)(uint)((param_1[0x5a] & 0x100U) != 0);
              local_140 = 2.802597e-45;
              if ((param_1[0x5a] & 0x20000000U) == 0) {
                local_140 = 0.0;
              }
              if ((param_1[0x5b] & 0x400000U) == 0) {
                uVar10 = 0;
              }
              else {
                uVar10 = 4;
              }
              local_c4 = uVar10 | (uint)local_140 | (uint)local_144;
              local_c0 = param_1;
              FUN_006ae0a0(&local_e4,0xffffffd3,0);
            }
            uVar13 = uVar13 + 1;
          } while (uVar13 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) -
                                   *(int *)(DAT_00c71678 + 0x1baa8) >> 2));
        }
      }
      else if (param_1[0xb] == 3) {
        if (param_1[0x3c7] == -1) {
          cVar6 = FUN_00944a40(param_1 + 0xcf);
          if ((cVar6 != '\0') &&
             (uVar13 = 0,
             *(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0)) {
            do {
              iVar7 = FUN_00417870(uVar13);
              if (*(int *)(iVar7 + 0x188) != 0) {
                local_138 = (*(float *)(iVar7 + 0x360) * DAT_00baa784 + *(float *)(iVar7 + 0x33c)) -
                            (float)param_1[0xcf];
                local_134 = (*(float *)(iVar7 + 0x364) * DAT_00baa784 + *(float *)(iVar7 + 0x340)) -
                            (float)param_1[0xd0];
                if (((float)((uint)local_138 & DAT_00bacb40) <= DAT_00baa89c) ||
                   ((float)((uint)local_134 & DAT_00bacb40) <= DAT_00baa89c)) {
                  iVar7 = FUN_0067f260();
                  if (iVar7 != -1) {
                    param_1[0x2f0] = iVar7;
                    param_1[0x2d9] = 8;
                    param_1[0x2ec] = param_1[0xd8];
                    param_1[0x2ed] = param_1[0xd9];
                    cVar6 = FUN_0040a5d0((&PTR_s_AttackLeft_00b60af0)[param_1[0x2f0]],1);
                    if (cVar6 != '\0') {
                      FUN_0040a1b0();
                      *(undefined *)(param_1 + 0x23) = 1;
                    }
                    uVar8 = FUN_006eef60();
                    local_138 = (float)param_1[0xcf] + DAT_00ba9fe4;
                    local_134 = (float)param_1[0xd0] - DAT_00baa87c;
                    piVar12 = (int *)FUN_006fe410(1000,0xc6,&local_138,&DAT_00c7b640,0,0,uVar8,0);
                    FUN_004564b0(param_1);
                    _local_d4 = ZEXT816(0);
                    local_c4 = 0;
                    local_c0 = (int *)0x0;
                    local_bc = 0;
                    local_e4 = _DAT_00babcc0;
                    iStack_e0 = _UNK_00babcc4;
                    iStack_dc = _UNK_00babcc8;
                    iStack_d8 = _UNK_00babccc;
                    FUN_004073d0(&local_e4);
                    fVar14 = DAT_00c3793c * DAT_00baa75c;
                    piVar12[0x3a] = (int)(DAT_00c37940 * DAT_00baa75c);
                    piVar12[0x39] = (int)fVar14;
                    piVar11 = (int *)FUN_0067f1d0();
                    iVar7 = piVar11[1];
                    piVar12[0xcd] = *piVar11;
                    piVar12[0xce] = iVar7;
                    piVar12[0x117] = 0x17;
                    piVar12[0x118] = 0x17;
                    (**(code **)(*piVar12 + 0xc))();
                  }
                  break;
                }
              }
              uVar13 = uVar13 + 1;
            } while (uVar13 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) -
                                     *(int *)(DAT_00c71678 + 0x1baa8) >> 2));
          }
        }
        else if ((param_1[0x2e8] < 1) &&
                ((FUN_006d85a0(&local_138),
                 (NAN(local_138) || NAN(DAT_00c7b640)) == (local_138 == DAT_00c7b640) ||
                 ((NAN(local_134) || NAN(DAT_00c7b644)) == (local_134 == DAT_00c7b644))))) {
          param_1[0x2d9] = 8;
          iVar7 = FUN_0067f260();
          param_1[0x2f0] = iVar7;
          param_1[0x2ec] = param_1[0xd8];
          param_1[0x2ed] = param_1[0xd9];
          cVar6 = FUN_0040a5d0((&PTR_s_AttackLeft_00b60af0)[param_1[0x2f0]],1);
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
        }
      }
      else if (((param_1[0xb] == 4) && (cVar6 = FUN_00417430(0x1000000,0), cVar6 == '\0')) &&
              (param_1[0x2e8] < 1)) {
        if (param_1[0x3c7] == -1) {
          cVar6 = FUN_006ac710(6,0);
          if (cVar6 != '\0') {
            iVar7 = FUN_006be840();
            fVar14 = (float)param_1[0xd0] - *(float *)(iVar7 + 0x340);
            fVar15 = (float)param_1[0xcf] - *(float *)(iVar7 + 0x33c);
            fVar14 = fVar14 * fVar14 + fVar15 * fVar15;
            FUN_00435a50();
            fVar15 = (float)param_1[0xcf] -
                     (fVar14 * DAT_00baa120 * *(float *)(iVar7 + 0x360) + *(float *)(iVar7 + 0x33c))
            ;
            fVar14 = (float)param_1[0xd0] -
                     (fVar14 * DAT_00baa120 * *(float *)(iVar7 + 0x364) + *(float *)(iVar7 + 0x340))
            ;
            if (fVar14 * fVar14 + fVar15 * fVar15 < DAT_00baac34) goto LAB_00533665;
          }
        }
        else {
          cVar6 = FUN_006cae60(0,7);
          if ((cVar6 != '\0') || (cVar6 = FUN_006d8260(9), cVar6 != '\0')) {
LAB_00533665:
            param_1[0x2d9] = 8;
            cVar6 = FUN_0040a5d0("Attack",1);
            if (cVar6 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x23) = 1;
            }
            param_1[0x2e8] = 0;
          }
        }
      }
    }
  }
  else if ((iVar7 == 8) && (param_1[0xdb] = (int)(fVar14 * DAT_00baa304), param_1[10] == 0xd4)) {
    if (param_1[0xb] == 3) {
      if (param_1[0x1f] != 0) {
        cVar6 = FUN_0040add0("Shoot");
        if (cVar6 != '\0') {
          FUN_006b6af0(&local_138,"LaserPos");
          local_120 = param_1[0xd0];
          local_124 = (float)param_1[0xcf] + local_138;
          local_138 = 0.0;
          iVar7 = FUN_0096f310(1,&local_124,(float)param_1[0x2f0] * DAT_00baa9b4 + DAT_00baaa78,0x10
                               ,&local_138,param_1,0);
          uVar8 = DAT_00baadc0;
          if (param_1[0x2f0] != 1) {
            uVar8 = DAT_00baabfc;
          }
          *(undefined4 *)(iVar7 + 0x358) = uVar8;
        }
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_0053398b;
      }
      param_1[0x2e8] = 0x3c;
    }
    else {
      if (param_1[0xb] != 4) goto LAB_0053398b;
      cVar6 = FUN_0040b030("Shoot");
      if (cVar6 == '\0') {
        iVar7 = param_1[0x2e8];
        if (iVar7 + 6U < 6) goto LAB_00533802;
      }
      else {
        FUN_006d6ba0(0x6a,0x3f800000,2,0,0x3f800000);
        param_1[0x2e8] = -1;
        iVar7 = -1;
LAB_00533802:
        if (0 < (int)piVar12) {
          do {
            local_13c = piVar12;
            if (iVar7 == -1) {
              local_130 = (int *)&DAT_00000004;
              local_140 = DAT_00baa904;
LAB_00533838:
              iVar7 = 0;
              local_138 = (float)(int)local_130;
              do {
                fVar14 = (((float)iVar7 * DAT_00baab30) / local_138) * DAT_00baa088;
                local_124 = fVar14;
                FUN_0041d540();
                local_144 = fVar14 * local_140;
                FUN_0041d520();
                local_118 = local_144 + (float)param_1[0xcf];
                local_124 = local_124 * local_140;
                local_114 = local_124 + (float)param_1[0xd0];
                cVar6 = FUN_00813360(&local_118,0x41200000);
                if (cVar6 != '\0') {
                  uVar8 = FUN_006eef60();
                  local_12c = local_144 + (float)param_1[0xcf];
                  local_128 = local_124 + (float)param_1[0xd0];
                  piVar12 = (int *)FUN_006fe410(1000,0x93,&local_12c,&DAT_00c7b640,param_1,0,uVar8,0
                                               );
                  (**(code **)(*piVar12 + 0xc))();
                }
                iVar7 = iVar7 + 1;
              } while (iVar7 < (int)local_130);
              iVar7 = param_1[0x2e8];
            }
            else if (iVar7 == -6) {
              local_130 = (int *)&DAT_00000008;
              local_140 = DAT_00baa9a0;
              goto LAB_00533838;
            }
            iVar7 = iVar7 + -1;
            local_13c = (int *)((int)local_13c + -1);
            param_1[0x2e8] = iVar7;
            piVar12 = local_13c;
          } while (local_13c != (int *)0x0);
        }
      }
      if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_0053398b;
      param_1[0x2e8] = 0x1e;
    }
    param_1[0x2d9] = 4;
  }
LAB_0053398b:
  if (0 < param_1[0x2e8]) {
    param_1[0x2e8] = param_1[0x2e8] - (int)local_11c;
  }
  iVar7 = FUN_006d6c20();
  uVar8 = extraout_ECX;
  if ((iVar7 < 1) &&
     ((((*(char *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7229) == '\0' ||
        (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11ec) < 9)) && (param_1[0x2d9] != 0x12)) &&
      ((param_1[10] != 0xd4 || (param_1[0xb] != 1)))))) {
    param_1[0x2d9] = 0x12;
    param_1[0x104] = 0;
    FUN_006d6ba0(0x13c,0x3f800000,0x3c,0,0x3f800000);
    param_1[0x62] = 0;
    uVar8 = extraout_ECX_00;
  }
  if (((param_1[10] == 0x11e) && (param_1[0x3c7] != -1)) &&
     (cVar6 = FUN_00956110(9,param_1[0x3c7],param_1,uVar8), cVar6 != '\0')) {
    local_e4 = 0;
    iStack_e0 = 0;
    iStack_dc = 0;
    iStack_d8 = 0;
    local_d4._4_4_ = DAT_00c7b644;
    local_d4._0_4_ = DAT_00c7b640;
    uStack_cc = DAT_00c7b640;
    uStack_c8 = DAT_00c7b644;
    local_c4 = 0;
    local_c0 = (int *)0x0;
    (**(code **)(*param_1 + 0x24))(&local_e4);
  }
  if ((((*(char *)((int)param_1 + 0x173) != '\0') || (param_1[0x2d9] == 0x12)) &&
      (param_1[10] == 0x11e)) && ((param_1[0x5a] & 0x1000000U) == 0)) {
    AI_0043ef30();
    iVar7 = FUN_006eef60();
    local_12c = 7.0;
    local_128 = 6.0;
    local_a0 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baab30 - DAT_00baaa78;
    FUN_006cb2e0(param_1 + 0xcf,&local_12c,9,local_b8);
  }
LAB_00533b67:
  FUN_00aef12b();
  return;
}

