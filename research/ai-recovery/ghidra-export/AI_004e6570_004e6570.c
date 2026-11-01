/* Local J460 decompiler output.
 * VA: 0x004e6570
 * Entry: 004e6570
 * Dispatcher: 0x006c2990
 * Types: 877
 * Identities: 877.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004e7d10; instructions=1282
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=877; identities=877.0.0; dispatcher=0x006c2990;
   end=0x004e7d10; instructions=1282 */

void __fastcall AI_004e6570(float *param_1)

{
  byte bVar1;
  int iVar2;
  code *pcVar3;
  char cVar4;
  uint uVar5;
  int iVar6;
  int *piVar7;
  float **ppfVar8;
  undefined4 uVar9;
  int iVar10;
  uint uVar11;
  float fVar12;
  byte **ppbVar13;
  float fVar14;
  float **ppfVar15;
  char *pcVar16;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  int iVar17;
  uint uVar18;
  char *pcVar19;
  float *pfVar20;
  bool bVar21;
  float *pfVar22;
  float fVar23;
  float *pfVar24;
  float fVar25;
  undefined8 uVar26;
  undefined local_134 [44];
  float local_108;
  float local_104;
  undefined local_e0 [8];
  int local_d8;
  undefined4 local_d4;
  undefined4 local_d0;
  float local_cc;
  float local_c8;
  float *local_c4;
  float *local_c0;
  float *local_bc;
  float *local_b8;
  float *local_b4;
  float *local_b0;
  float local_ac;
  float local_a8;
  int local_a4;
  float *local_a0;
  float *local_9c;
  float *local_98;
  undefined local_94 [12];
  float local_88;
  undefined4 local_68;
  float fStack_64;
  float fStack_60;
  undefined4 uStack_5c;
  undefined local_58 [16];
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  int local_3c [2];
  char local_34 [4];
  int local_30;
  undefined4 local_2c;
  float *local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3cd5;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  fVar23 = param_1[0xe9];
  local_a4 = *(int *)(DAT_00c71678 + 0x18300);
  fVar14 = param_1[0xe8];
  local_bc = param_1;
  local_24 = uVar5;
  FUN_006be840(uVar5);
  iVar6 = FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),
                       *(undefined4 *)(DAT_00c71678 + 0x1830c));
  fVar12 = DAT_00baa75c;
  local_b8 = (float *)(*(uint *)(iVar6 + 0x44) >> 1 & 0xffffff01);
  switch(param_1[0x2d9]) {
  case 0.0:
    FUN_0040a380("No-Spikes",0);
    param_1[0x104] = 7.006492e-45;
    param_1[0x2d9] = 4.203895e-45;
    FUN_007e6ff0();
    fVar23 = (float)((int)param_1[0x10d] / *(int *)(local_a4 + 0xc)) * DAT_00baa904 + DAT_00baaa00;
    param_1[0xcd] =
         (float)((int)param_1[0x10d] % *(int *)(local_a4 + 0xc)) * DAT_00baa904 + DAT_00baa904;
    param_1[0xce] = fVar23;
    FUN_004565e0(param_1[0x10d],900);
    param_1[0x5b] = (float)((uint)param_1[0x5b] | 8);
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x5a] = (float)((uint)param_1[0x5a] & 0xfffffffb | 0x40010001);
    uVar9 = FUN_00407170();
    FUN_004071f0(uVar9);
    iVar6 = DAT_00c71678;
    param_1[0x7d] = 1.0;
    param_1[0x7e] = 1.0;
    param_1[0x7f] = 1.0;
    param_1[0x80] = 1.0;
    pcVar19 = *(char **)(iVar6 + 0x18300);
    if (((*pcVar19 != '\0') && (*(int *)(iVar6 + 0x264f8) == *(int *)(pcVar19 + 0x11f0))) &&
       ((char)local_b8 != '\0')) {
      (**(code **)((int)*param_1 + 0x28))();
    }
    param_1[0xe2] = 0.0;
    param_1[0x2f0] = 0.0;
    param_1[0x2f1] = 0.0;
    break;
  case 4.203895e-45:
    if ((int)param_1[0x104] < 1) {
      FUN_0040a380(&DAT_00b607ac,0);
      cVar4 = FUN_0040b030("Sound");
      if (cVar4 != '\0') {
        FUN_006d6ba0(0xcd,0x3f800000,2,0,0x3f800000);
        pfVar20 = DAT_00baa454;
        if (param_1[0x2f1] != 0.0) {
          pfVar20 = (float *)0x0;
        }
        param_1[0xe2] = (float)pfVar20;
      }
      if ((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = 5.605194e-45;
        param_1[0x104] = 5.605194e-45;
      }
    }
    else {
      param_1[0x104] = (float)((int)param_1[0x104] - ((int)fVar23 - (int)fVar14));
    }
    break;
  case 5.605194e-45:
    if (((*(char *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7229) != '\0') && ((char)local_b8 != '\0'))
       && (iVar6 = FUN_006d6c20(), iVar6 < 1)) {
      FUN_0040a380(&DAT_00b607b4,0);
      fVar23 = param_1[0xdb] * DAT_00baa3a4;
      param_1[0x5a] = (float)((uint)param_1[0x5a] & 0xbfffffff);
      param_1[0x2d9] = 2.242078e-44;
      param_1[0xe2] = 0.0;
      param_1[0xdb] = fVar23;
      param_1[0x5b] = param_1[0x5b];
      goto LAB_004e7c85;
    }
    fVar14 = (float)((int)param_1[0x104] - ((int)fVar23 - (int)fVar14));
    fVar23 = 0.0;
    if (0 < (int)fVar14) {
      fVar23 = fVar14;
    }
    param_1[0x104] = fVar23;
    if (((int)fVar23 < 1) &&
       (uVar11 = 0, *(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0))
    {
      do {
        iVar6 = FUN_00417870(uVar11);
        pfVar20 = local_bc;
        if ((*(char *)(iVar6 + 0x173) == '\0') && (*(int *)(iVar6 + 0x188) != 0)) {
          local_a0 = (float *)(*(float *)(iVar6 + 0x33c) - param_1[0xcf]);
          local_9c = (float *)(*(float *)(iVar6 + 0x340) - param_1[0xd0]);
          local_c0 = (float *)((uint)local_a0 & DAT_00bacb40);
          local_c4 = (float *)((uint)local_9c & DAT_00bacb40);
          local_b4 = local_c0;
          local_98 = local_c0;
          ppfVar8 = &local_b8;
          if ((float)local_c0 <= (float)local_c4) {
            ppfVar8 = &local_b4;
          }
          local_b8 = local_c4;
          ppfVar15 = &local_b0;
          if ((float)local_c4 <= (float)local_c0) {
            ppfVar15 = &local_98;
          }
          local_b0 = local_c4;
          param_1 = pfVar20;
          if (((float)*ppfVar8 <= DAT_00baa89c) && (DAT_00baa89c < (float)*ppfVar15)) {
            local_ac = *(float *)(iVar6 + 0x33c);
            local_a8 = *(float *)(iVar6 + 0x340);
            cVar4 = FUN_007f0df0(local_bc + 0xcf,&local_ac,1,999,0,0,0);
            if (cVar4 != '\0') {
              if ((float)local_c0 <= (float)local_c4) {
                pfVar22 = (float *)0x0;
                pfVar24 = DAT_00baa454;
                if ((float)local_9c < 0.0) {
                  pfVar24 = DAT_00baad50;
                }
              }
              else {
                pfVar24 = (float *)0x0;
                pfVar22 = DAT_00baa454;
                if ((float)local_a0 < 0.0) {
                  pfVar22 = DAT_00baad50;
                }
              }
              pfVar20[0x2ec] = (float)pfVar22;
              pfVar20[0x2ed] = (float)pfVar24;
              pfVar20[0x2d9] = 1.121039e-44;
              pfVar20[0x2ee] = 0.0;
            }
          }
        }
        uVar11 = uVar11 + 1;
      } while (uVar11 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8)
                              >> 2));
    }
    break;
  case 1.121039e-44:
    fVar23 = param_1[0xe7];
    fVar14 = param_1[0xdb] * DAT_00baa3a4;
    local_a0 = (float *)0x40800000;
    local_9c = (float *)(fVar23 + param_1[0x2ee]);
    param_1[0xdb] = fVar14;
    ppfVar8 = &local_9c;
    if (fVar12 <= (float)(float *)(fVar23 + param_1[0x2ee])) {
      ppfVar8 = &local_a0;
    }
    pfVar20 = *ppfVar8;
    param_1[0x2ee] = (float)pfVar20;
    fVar25 = param_1[0x2ec];
    if (NAN(fVar14) == (fVar14 == 0.0)) {
      param_1[0xd9] = (fVar23 * (float)pfVar20 * param_1[0x2ed]) / fVar14 + param_1[0xd9];
      param_1[0xd8] = (fVar23 * fVar25 * (float)pfVar20) / fVar14 + param_1[0xd8];
      fVar25 = param_1[0x2ec];
    }
    if ((float)((uint)fVar25 & DAT_00bacb40) <= (float)((uint)param_1[0x2ed] & DAT_00bacb40)) {
      param_1[0xd8] = param_1[0xcd] - param_1[0xcf];
    }
    else {
      param_1[0xd9] = param_1[0xce] - param_1[0xd0];
    }
    if (fVar12 <= param_1[0x2ee]) {
      fVar23 = DAT_00baa630;
      if (param_1[0x2f1] != 0.0) {
        fVar23 = 0.0;
      }
      param_1[0xe2] = fVar23;
    }
    local_98 = (float *)param_1[0x2ef];
    if (0.0 < (float)local_98) {
      iVar6 = FUN_006ac760();
      pfVar20 = local_98;
      if (iVar6 != 0) {
        pfVar20 = (float *)((float)local_98 / DAT_00baa8d0);
        if ((float)(float *)((float)local_98 / DAT_00baa8d0) <= (float)DAT_00ba9fe4) {
          pfVar20 = DAT_00ba9fe4;
        }
        local_98 = pfVar20;
        if ((float)DAT_00baa454 <= (float)pfVar20) {
          local_98 = DAT_00baa454;
        }
        iVar6 = FUN_006eef60();
        piVar7 = (int *)FUN_006b64d0((float)((double)iVar6 +
                                            (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                                     DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa198 +
                                     (float)local_98 * DAT_00baa198);
        FUN_004071c0(param_1 + 0x79);
        local_88 = local_88 * (float)local_98;
        (**(code **)(*piVar7 + 0x3c))(local_94,0xffffffff,0xff,0,1);
        pfVar20 = (float *)param_1[0x2ef];
      }
      local_a0 = (float *)0x0;
      local_9c = (float *)((float)pfVar20 - param_1[0xe7]);
      ppfVar8 = &local_9c;
      if ((float)(float *)((float)pfVar20 - param_1[0xe7]) <= 0.0) {
        ppfVar8 = &local_a0;
      }
      param_1[0x2ef] = (float)*ppfVar8;
    }
    iVar6 = FUN_006ac760();
    if (iVar6 != 0) {
      uVar9 = FUN_006eef60();
      local_9c = (float *)(param_1[0xd8] * DAT_00baa198);
      local_a0 = (float *)(param_1[0xd9] * DAT_00baa198);
      pfVar20 = (float *)FUN_0067f070(&local_cc);
      local_ac = *pfVar20 + (float)local_9c;
      local_a8 = pfVar20[1] + (float)local_a0;
      iVar6 = FUN_00428b20(1000,0x3b,param_1 + 0xcf,&local_ac,param_1,0,uVar9);
      iVar10 = FUN_006eef60();
      *(float *)(iVar6 + 0x474) =
           (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4 *
           DAT_00baa81c + DAT_00baa630;
      uVar11 = FUN_006eef60();
      iVar10 = uVar11 % 0xf + 0xf;
      *(int *)(iVar6 + 0x45c) = iVar10;
      *(int *)(iVar6 + 0x460) = iVar10;
      uVar26 = FUN_004238f0(0x3f000000);
      (*(code *)((ulonglong)uVar26 >> 0x20))((int)uVar26,0xffffffff,0xff,0,1);
      iVar10 = FUN_006eef60();
      fVar14 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa1f8 + DAT_00baa1f8;
      fVar23 = fVar14 * DAT_00c3793c;
      *(float *)(iVar6 + 0xe8) = fVar14 * DAT_00c37940;
      *(float *)(iVar6 + 0xe4) = fVar23;
    }
    iVar6 = local_a4;
    if (*(char *)(param_1 + 100) != '\0') {
      local_a8 = (param_1[0xdc] + DAT_00baa630) * param_1[0x2ed] + param_1[0xd0];
      local_ac = (param_1[0xdc] + DAT_00baa630) * param_1[0x2ec] + param_1[0xcf];
      iVar10 = FUN_007f0780(local_ac,local_a8);
      if (iVar10 != 0) {
        FUN_00703670(6);
        FUN_006d6ba0(0x1e7,0x3f800000,2,0,0x3f800000);
        param_1[0x2d9] = 5.605194e-45;
        pfVar20 = DAT_00baa454;
        if (param_1[0x2f1] != 0.0) {
          pfVar20 = (float *)0x0;
        }
        param_1[0xe2] = (float)pfVar20;
        FUN_007e6ff0();
        fVar23 = (float)((int)param_1[0x10d] / *(int *)(iVar6 + 0xc)) * DAT_00baa904 + DAT_00baaa00;
        param_1[0xcd] =
             (float)((int)param_1[0x10d] % *(int *)(iVar6 + 0xc)) * DAT_00baa904 + DAT_00baa904;
        param_1[0xce] = fVar23;
        FUN_004565e0(param_1[0x10d],900);
        param_1[0x104] = 2.101948e-44;
      }
    }
    local_ac = param_1[0xe7] * param_1[0xd8] + param_1[0xcf];
    local_a8 = param_1[0xe7] * param_1[0xd9] + param_1[0xd0];
    FUN_00945190(&local_ac,param_1 + 0xdd,0);
    FUN_0041a790(local_34,&local_108,0x28);
    local_14 = 0;
                    /* WARNING: Load size is inaccurate */
    if ((*(int *)(*ThreadLocalStoragePointer + 0xc) < DAT_00c7f748) &&
       (FUN_00aef29d(&DAT_00c7f748), DAT_00c7f748 == -1)) {
      _atexit(FUN_00b15460);
      FUN_00aef253(&DAT_00c7f748);
    }
    pfVar20 = (float *)0x0;
    DAT_00c7f750 = DAT_00c7f74c;
    ppfVar8 = DAT_00c7f74c;
    if (local_28 != (float *)0x0) {
      do {
        local_9c = *(float **)(local_30 + (int)pfVar20 * 4);
        if ((local_9c[10] == 1.228939e-42) && (local_9c != param_1)) {
          if (ppfVar8 == DAT_00c7f754) {
            FUN_0042c920(ppfVar8,&local_9c);
            ppfVar8 = DAT_00c7f750;
          }
          else {
            *ppfVar8 = local_9c;
            DAT_00c7f750 = DAT_00c7f750 + 1;
            ppfVar8 = DAT_00c7f750;
          }
        }
        pfVar20 = (float *)((int)pfVar20 + 1);
      } while (pfVar20 < local_28);
    }
    local_d0 = 0;
    local_d4 = 0;
    local_b8 = (float *)0x0;
    if (local_28 != (float *)0x0) {
LAB_004e7100:
      pfVar20 = *(float **)(local_30 + (int)local_b8 * 4);
      local_98 = pfVar20;
      if ((pfVar20 != param_1) &&
         (((pfVar20[0x62] == 5.605194e-45 || (pfVar20[0x62] == 4.203895e-45)) &&
          ((float)DAT_00ba9fe4 <
           (pfVar20[0xd0] - param_1[0xd0]) * param_1[0x2ed] +
           (pfVar20[0xcf] - param_1[0xcf]) * param_1[0x2ec])))) {
        FUN_006a9ba0(&fStack_64,&DAT_00c7b640);
        local_9c = (float *)pfVar20[0xd8];
        local_a0 = (float *)pfVar20[0xd9];
        fStack_64 = (float)local_9c * pfVar20[0xe7] + fStack_64;
        fStack_60 = (float)local_a0 * pfVar20[0xe7] + fStack_60;
        cVar4 = FUN_00945470(&local_d4);
        iVar6 = DAT_00c71678;
        if (cVar4 != '\0') {
          fVar23 = pfVar20[10];
          if (fVar23 == 1.228939e-42) {
            FUN_00703670(6);
            local_98 = DAT_00baa454;
            pfVar20 = DAT_00baa528;
            if ((param_1[0x319] == 2.522337e-44) ||
               (pfVar20 = DAT_00baa2d0, param_1[0x319] == 2.662467e-44)) {
              local_98 = pfVar20;
            }
            local_b0 = (float *)0x1e7;
            FUN_00956780();
            FUN_0092dc30(local_b0,0x3f800000,2,0,local_98,0);
            param_1[0x2d9] = 5.605194e-45;
            iVar6 = DAT_00c71678;
            fVar14 = DAT_00baaa00;
            fVar23 = DAT_00baa904;
            pfVar20 = DAT_00baa454;
            if (param_1[0x2f1] != 0.0) {
              pfVar20 = (float *)0x0;
            }
            param_1[0xe2] = (float)pfVar20;
            iVar17 = (int)((*(float *)((int)param_1[0x105] + 0x33c) - fVar23) / fVar23 +
                          (float)DAT_00baa2d0);
            iVar10 = (int)((*(float *)((int)param_1[0x105] + 0x340) - fVar14) / fVar23 +
                          (float)DAT_00baa2d0);
            if ((((iVar17 < 0) ||
                 (iVar2 = *(int *)(*(int *)(iVar6 + 0x18300) + 0xc), iVar2 <= iVar17)) ||
                (iVar10 < 0)) || (*(int *)(*(int *)(iVar6 + 0x18300) + 0x10) <= iVar10)) {
              fVar12 = -NAN;
            }
            else {
              fVar12 = (float)(iVar2 * iVar10 + iVar17);
            }
            param_1[0x10d] = fVar12;
            iVar6 = *(int *)(local_a4 + 0xc);
            param_1[0xcd] = (float)((int)fVar12 % iVar6) * fVar23 + fVar23;
            param_1[0xce] = (float)((int)fVar12 / iVar6) * fVar23 + fVar14;
            fVar23 = param_1[0x10d];
            if (((uint)fVar23 < 0x1c0) && (*(int *)(local_a4 + 0x76c + (int)fVar23 * 4) < 0x3b7)) {
              *(undefined4 *)(local_a4 + 0x76c + (int)fVar23 * 4) = 900;
            }
            param_1[0x104] = 2.101948e-44;
          }
          else {
            if (fVar23 == 4.624285e-44) {
              fVar23 = pfVar20[0xb];
              if (fVar23 != 1.541428e-44) {
                if ((fVar23 != 2.802597e-45) && (fVar23 != 4.203895e-45)) {
                  pfVar20[0xe0] = 1.0;
                  pcVar3 = *(code **)((int)*pfVar20 + 0x20);
                  FUN_00431310(param_1);
                  (*pcVar3)(0x447a0000,0,0,local_134,0x1e);
                }
                goto LAB_004e7a16;
              }
LAB_004e7409:
              bVar21 = false;
              fVar23 = DAT_00baa304;
            }
            else {
              if ((fVar23 != 1.401298e-45) || (*(char *)((int)pfVar20 + 0x173) == '\0'))
              goto LAB_004e7409;
              bVar21 = true;
              fVar23 = DAT_00baa3a4;
            }
            fVar14 = param_1[0xe7];
            fVar12 = fVar23;
            if ((NAN(fVar14) || NAN((float)DAT_00baa454)) == (fVar14 == (float)DAT_00baa454)) {
              fVar12 = fVar23 / ((fVar23 + fVar14) - fVar23 * fVar14);
            }
            fVar25 = (float)local_9c + (param_1[0xd8] - (float)local_9c) * fVar12;
            fVar14 = (float)local_a0 + (param_1[0xd9] - (float)local_a0) * fVar12;
            pfVar20[0xd8] = fVar25;
            pfVar20[0xd9] = fVar14;
            if ((((1 < *(int *)(iVar6 + 0x26614)) && (pfVar20[10] == 1.401298e-45)) ||
                ((int)pfVar20[10] - 10U < 0x3de)) || ((pfVar20[10] == 5.605194e-45 || (bVar21)))) {
              fVar12 = pfVar20[0xdb];
              if ((NAN(fVar12) || NAN((float)DAT_00ba9fe4)) == (fVar12 == (float)DAT_00ba9fe4)) {
                fVar14 = (fVar23 * ((local_104 + pfVar20[0xdc] * param_1[0x2ed]) - pfVar20[0xd0]) *
                         pfVar20[0xe7]) / fVar12 + pfVar20[0xd9];
                pfVar20[0xd8] =
                     (fVar23 * ((local_108 + pfVar20[0xdc] * param_1[0x2ec]) - pfVar20[0xcf]) *
                     pfVar20[0xe7]) / fVar12 + fVar25;
                pfVar20[0xd9] = fVar14;
              }
              if (pfVar20[0x61] != 0.0) {
                local_b4 = (float *)pfVar20[0x5e];
                local_c0 = (float *)((int)pfVar20[0x5f] - (int)local_b4 >> 3);
                local_b0 = (float *)0x0;
                local_a8 = pfVar20[0xd0] + pfVar20[0xe7] * fVar14 * pfVar20[0xdb];
                local_bc = (float *)(pfVar20[0xcf] + pfVar20[0xe7] * pfVar20[0xd8] * pfVar20[0xdb]);
                if (local_c0 != (float *)0x0) {
                  do {
                    local_9c = (float *)((float)local_bc + *local_b4);
                    local_a0 = (float *)(local_a8 + local_b4[1]);
                    iVar6 = (int)(((float)local_9c - DAT_00baa904) / DAT_00baa904 +
                                 (float)DAT_00baa2d0);
                    iVar10 = (int)(((float)local_a0 - DAT_00baaa00) / DAT_00baa904 +
                                  (float)DAT_00baa2d0);
                    if (((iVar6 < 0) || (*(int *)(local_a4 + 0xc) <= iVar6)) ||
                       ((iVar10 < 0 || (pfVar20 = local_98, *(int *)(local_a4 + 0x10) <= iVar10))))
                    {
                      iVar6 = -1;
                    }
                    else {
                      iVar6 = *(int *)(local_a4 + 0xc) * iVar10 + iVar6;
                    }
                    local_c4 = (float *)FUN_007f0800(iVar6);
                    if (local_c4 == (float *)&DAT_00000004) {
LAB_004e776b:
                      if (pfVar20[10] == 5.605194e-45) {
                        pfVar20[0x104] = 0.0;
                        pfVar20[0x105] = 0.0;
                      }
                      else if (pfVar20[10] == 1.401298e-45) {
                        if ((pfVar20[0x1f] != 0.0) && (*(char *)(pfVar20 + 0x23) != '\0')) {
                          ppbVar13 = (byte **)pfVar20[0x1f];
                          if (&DAT_0000000f < ppbVar13[5]) {
                            ppbVar13 = (byte **)*ppbVar13;
                          }
                          pcVar19 = "Death";
                          goto LAB_004e77c0;
                        }
                      }
                      else {
                        uVar26 = FUN_00435c70();
                        (*(code *)((ulonglong)uVar26 >> 0x20))((int)uVar26);
                        if ((*(byte *)((int)pfVar20[0xcc] + 0x60) & 1) != 0) {
                          iVar6 = FUN_006eef60();
                          pfVar20 = pfVar20 + 0x79;
                          param_1[0x2ef] =
                               (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                               DAT_00ba9ff4 * DAT_00baa8d0 + DAT_00baa8d0;
                          goto LAB_004e79ee;
                        }
                      }
                      break;
                    }
                    if (DAT_00c7f74c != DAT_00c7f750) {
                      uVar11 = 0;
                      uVar18 = (int)DAT_00c7f750 - (int)DAT_00c7f74c >> 2;
                      if (uVar18 != 0) {
                        do {
                          pfVar22 = DAT_00c7f74c[uVar11];
                          if ((pfVar22[0xd0] - (float)local_a0) * (pfVar22[0xd0] - (float)local_a0)
                              + (pfVar22[0xcf] - (float)local_9c) *
                                (pfVar22[0xcf] - (float)local_9c) <= pfVar22[0xdc] * pfVar22[0xdc])
                          goto LAB_004e776b;
                          uVar11 = uVar11 + 1;
                        } while (uVar11 < uVar18);
                      }
                    }
                    if (local_c4 == (float *)0x1) {
                      bVar21 = pfVar20[0x61] == 7.006492e-45;
                    }
                    else {
                      if (((local_c4 == (float *)0x2) || (local_c4 == (float *)0x3)) &&
                         (pfVar20[0x61] != 4.203895e-45)) goto LAB_004e776b;
                      bVar21 = local_c4 == (float *)&DAT_00000004;
                    }
                    if (bVar21) goto LAB_004e776b;
                    local_b0 = (float *)((int)local_b0 + 1);
                    local_b4 = local_b4 + 2;
                  } while (local_b0 < local_c0);
                }
              }
            }
          }
        }
      }
      goto LAB_004e7a16;
    }
LAB_004e7a2c:
    local_14 = 0xffffffff;
    if (local_34[0] == '\0') {
      local_14 = 1;
      FUN_00a648b0(0,0);
      local_14 = 0xffffffff;
    }
    break;
  case 2.242078e-44:
    fVar23 = param_1[0xdb] * DAT_00baa3a4;
    param_1[0xe2] = 0.0;
    param_1[0xdb] = fVar23;
    goto LAB_004e7c85;
  }
  if ((param_1[0x2d9] == 5.605194e-45) || (param_1[0x2d9] == 1.121039e-44)) {
    iVar6 = FUN_006be840(uVar5);
    fVar23 = *(float *)(iVar6 + 0x340) - param_1[0xd0];
    FUN_00499d60();
    local_a8 = (float)((int)((fVar23 * DAT_00baa948) / DAT_00baa910 + _DAT_00baa7fc) & 0x80000007);
    if ((int)local_a8 < 0) {
      local_a8 = (float)(((int)local_a8 - 1U | 0xfffffff8) + 1);
    }
    cVar4 = FUN_0040a5d0(&DAT_00b60774,1);
    if (((cVar4 != '\0') && (param_1[0x1f] != 0.0)) && (FUN_00408e00(), param_1[0x1f] != 0.0)) {
      *(undefined *)(param_1 + 0x23) = 0;
    }
  }
  if (param_1[0x2d9] != 1.121039e-44) {
    fVar23 = param_1[0x10d];
    if (((uint)fVar23 < 0x1c0) && (*(int *)(local_a4 + 0x76c + (int)fVar23 * 4) < 0x3b7)) {
      *(undefined4 *)(local_a4 + 0x76c + (int)fVar23 * 4) = 900;
    }
    param_1[0xdb] = param_1[0xdb] * DAT_00baa3a4;
    param_1[0xd8] = param_1[0xcd] - param_1[0xcf];
    param_1[0xd9] = param_1[0xce] - param_1[0xd0];
  }
  iVar6 = FUN_009be6b0(0x97);
  if ((iVar6 == 0) || (iVar6 = FUN_007cb6e0(0x97), iVar6 < 2)) {
    bVar21 = false;
  }
  else {
    bVar21 = true;
  }
  if ((param_1[0x2f1] != 0.0) != bVar21) {
    fVar14 = (float)(1 - (int)param_1[0x2f1]);
    param_1[0x2f1] = fVar14;
    fVar23 = DAT_00baa630;
    if (fVar14 != 0.0) {
      fVar23 = 0.0;
    }
    param_1[0xe2] = fVar23;
    pcVar19 = "gfx/Monsters/repentance/grudge_retracted.png";
    local_2c = 0;
    if (fVar14 == 0.0) {
      pcVar19 = "gfx/Monsters/repentance/grudge.png";
    }
    local_28 = (float *)&DAT_0000000f;
    local_3c[0] = 0;
    pcVar16 = pcVar19;
    do {
      cVar4 = *pcVar16;
      pcVar16 = pcVar16 + 1;
    } while (cVar4 != '\0');
    FUN_0040ccd0(pcVar19,(int)pcVar16 - (int)(pcVar19 + 1));
    local_14 = 2;
    FUN_0040bf30(0,local_3c);
    local_14 = 0xffffffff;
    uVar9 = extraout_ECX;
    if (&DAT_0000000f < local_28) {
      pfVar20 = (float *)((int)local_28 + 1);
      iVar6 = local_3c[0];
      if ((float *)0xfff < pfVar20) {
        iVar6 = *(int *)(local_3c[0] + -4);
        pfVar20 = local_28 + 9;
        if (0x1f < (local_3c[0] - iVar6) - 4U) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar6,pfVar20);
      uVar9 = extraout_ECX_00;
    }
    FUN_0040c000(uVar9);
  }
LAB_004e7c85:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
  while( true ) {
    bVar1 = *(byte *)((int)ppbVar13 + 1);
    bVar21 = bVar1 < ((byte *)pcVar19)[1];
    if (bVar1 != ((byte *)pcVar19)[1]) goto LAB_004e77e0;
    ppbVar13 = (byte **)((int)ppbVar13 + 2);
    pcVar19 = (char *)((byte *)pcVar19 + 2);
    if (bVar1 == 0) break;
LAB_004e77c0:
    bVar1 = *(byte *)ppbVar13;
    bVar21 = bVar1 < (byte)*pcVar19;
    if (bVar1 != *pcVar19) {
LAB_004e77e0:
      uVar11 = -(uint)bVar21 | 1;
      goto LAB_004e77e5;
    }
    if (bVar1 == 0) break;
  }
  uVar11 = 0;
LAB_004e77e5:
  if ((uVar11 == 0) && (iVar6 = FUN_0040b220(0xc), *(char *)(iVar6 + 0x74) != '\0')) {
    iVar6 = FUN_0040b220(0xc);
    *(undefined *)(iVar6 + 0x74) = 0;
    uVar9 = FUN_006eef60();
    FUN_00428b20(1000,2,param_1 + 0xcf,&DAT_00c7b640,0,3,uVar9);
    local_b4 = (float *)0x1e;
    FUN_00956780();
    FUN_0092dc30(local_b4,0x3f800000,2,0,0x3f800000,0);
    iVar6 = DAT_00c7169c;
    local_68 = _DAT_00bac7b0;
    fStack_64 = _UNK_00bac7b4;
    fStack_60 = _UNK_00bac7b8;
    uStack_5c = _UNK_00bac7bc;
    local_48 = 0;
    local_58 = ZEXT816(0);
    local_44 = 0;
    local_40 = 0;
    local_a8 = 1.469368e-38;
    _Find_lower_bound<>(local_e0,&local_a8);
    if ((*(char *)(local_d8 + 0xd) != '\0') ||
       ((0xa00000 < *(uint *)(local_d8 + 0x10) ||
        (iVar10 = local_d8 + 0x78, local_d8 == *(int *)(iVar6 + 0x2a670))))) {
      iVar10 = 0x60;
    }
    local_cc = local_98[0xcf];
    local_c8 = local_98[0xd0];
    FUN_006b31b0(iVar10,0,&local_68,&DAT_00c7b640,0x3f800000);
    iVar6 = FUN_006eef60();
    param_1[0x2ef] =
         (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
         DAT_00baa8d0 + DAT_00baa8d0;
    pfVar20 = (float *)FUN_00407170();
LAB_004e79ee:
    if (param_1 + 0x79 != pfVar20) {
      fVar23 = pfVar20[1];
      fVar14 = pfVar20[2];
      fVar12 = pfVar20[3];
      param_1[0x79] = *pfVar20;
      param_1[0x7a] = fVar23;
      param_1[0x7b] = fVar14;
      param_1[0x7c] = fVar12;
      fVar23 = pfVar20[5];
      fVar14 = pfVar20[6];
      fVar12 = pfVar20[7];
      param_1[0x7d] = pfVar20[4];
      param_1[0x7e] = fVar23;
      param_1[0x7f] = fVar14;
      param_1[0x80] = fVar12;
      *(undefined8 *)(param_1 + 0x81) = *(undefined8 *)(pfVar20 + 8);
      param_1[0x83] = pfVar20[10];
    }
  }
LAB_004e7a16:
  local_b8 = (float *)((int)local_b8 + 1);
  if (local_28 <= local_b8) goto LAB_004e7a2c;
  goto LAB_004e7100;
}

