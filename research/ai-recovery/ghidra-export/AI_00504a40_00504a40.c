/* Local J460 decompiler output.
 * VA: 0x00504a40
 * Entry: 00504a40
 * Dispatcher: 0x006c2990
 * Types: 887
 * Identities: 887.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00504ab6; instructions=34
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=887; identities=887.0.0; dispatcher=0x006c2990;
   end=0x00504ab6; instructions=34 */

void __fastcall AI_00504a40(int *param_1)

{
  float *pfVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  char cVar8;
  undefined4 uVar9;
  int *piVar10;
  int iVar11;
  int iVar12;
  byte **ppbVar13;
  byte bVar14;
  byte *pbVar15;
  uint uVar16;
  bool bVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  int local_98 [8];
  undefined4 local_78;
  undefined4 uStack_74;
  undefined4 local_70;
  float local_6c;
  float local_68;
  undefined8 local_60;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  int *local_48;
  int *local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  float local_34;
  undefined local_30 [16];
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  uint local_14;
  
  iVar12 = DAT_00c71678;
  fVar21 = DAT_00baaa00;
  fVar19 = DAT_00baa708;
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_48 = DAT_00baa454;
  if (param_1[0xc] == 0) {
    local_48 = DAT_00baad50;
  }
  uVar16 = param_1[0xfb];
  local_60 = DAT_00b1f6d8;
  local_44 = (int *)DAT_00b1f6e0;
  if (uVar16 == 0) {
    FUN_00a112c0(0x10,"RNG Seed is zero!\n");
    pcVar2 = (code *)swi(3);
    (*pcVar2)();
    return;
  }
  uVar16 = uVar16 >> ((byte)DAT_00b1f6d8 & 0x1f) ^ uVar16;
  bVar14 = (byte)((ulonglong)DAT_00b1f6d8 >> 0x20);
  uVar16 = uVar16 << (bVar14 & 0x1f) ^ uVar16;
  uVar16 = uVar16 >> ((byte)DAT_00b1f6e0 & 0x1f) ^ uVar16;
  local_4c = (float)((double)uVar16 + (double)(&DAT_00bacb00)[-((int)uVar16 >> 0x1f)]) *
             DAT_00ba9ff0 * DAT_00baa708;
  local_4c = local_4c + local_4c;
  if (uVar16 == 0) {
    FUN_00a112c0(0x10,"RNG Seed is zero!\n");
    pcVar2 = (code *)swi(3);
    (*pcVar2)();
    return;
  }
  uVar16 = uVar16 >> ((byte)DAT_00b1f6d8 & 0x1f) ^ uVar16;
  uVar16 = uVar16 << (bVar14 & 0x1f) ^ uVar16;
  uVar16 = uVar16 >> ((byte)DAT_00b1f6e0 & 0x1f) ^ uVar16;
  local_44 = (int *)((float)((double)uVar16 + (double)(&DAT_00bacb00)[-((int)uVar16 >> 0x1f)]) *
                     DAT_00ba9ff0 * DAT_00baa6fc + DAT_00baa784);
  fVar20 = (*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) + DAT_00baaa00) -
           (float)param_1[0xcf];
  fVar18 = ((float)param_1[0xcf] - *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14)) +
           DAT_00baaa00;
  if (fVar18 <= fVar20) {
    fVar20 = fVar18;
  }
  piVar10 = (int *)(fVar20 / DAT_00baa9d0);
  if ((float)(int *)(fVar20 / DAT_00baa9d0) <= 0.0) {
    piVar10 = (int *)0x0;
  }
  if ((float)DAT_00baa454 <= (float)piVar10) {
    piVar10 = DAT_00baa454;
  }
  param_1[0x3f] = (int)piVar10;
  if (param_1[0x2d9] != 0) {
    if (param_1[0x2d9] == 4) {
      fVar20 = (float)param_1[0xdb] * DAT_00baa304;
      fVar21 = (float)local_48 * DAT_00baa554;
      param_1[0xdb] = (int)fVar20;
      if (NAN(fVar20) == (fVar20 == 0.0)) {
        fVar18 = (float)param_1[0xe7] * DAT_00ba9fe4;
        param_1[0xd8] = (int)((fVar21 * (float)param_1[0xe7]) / fVar20 + (float)param_1[0xd8]);
        param_1[0xd9] = (int)(fVar18 / fVar20 + (float)param_1[0xd9]);
      }
      fVar19 = ((float)param_1[0xe9] * fVar19) / DAT_00baa8d0 + local_4c;
      FUN_0041d520();
      param_1[0xd9] = (int)(fVar19 * (float)local_44);
      fVar21 = DAT_00baaa00;
      if ((param_1[0x2f0] == 0) && (DAT_00baaa44 <= (float)param_1[0xe9])) {
        param_1[0x2f0] = 1;
        uVar9 = FUN_007e90f0();
        piVar10 = (int *)FUN_00428b20(param_1[10],param_1[0xb],param_1 + 0xcd,&DAT_00c7b640,param_1,
                                      param_1[0xc],uVar9);
        (**(code **)(*piVar10 + 0xc))();
        iVar12 = DAT_00c71678;
        fVar21 = DAT_00baaa00;
      }
    }
    if (param_1[0xc] == 0) {
      if ((float)param_1[0xcf] < *(float *)(*(int *)(iVar12 + 0x18300) + 0x14) - fVar21) {
LAB_005050d3:
        (**(code **)(*param_1 + 0x28))();
        FUN_00aef12b();
        return;
      }
    }
    else if (*(float *)(*(int *)(iVar12 + 0x18300) + 0x1c) + fVar21 < (float)param_1[0xcf])
    goto LAB_005050d3;
    if ((((1 < *(int *)(iVar12 + 0x264f8) - param_1[0xca]) && (iVar11 = FUN_006d6c20(), iVar11 < 1))
        && ((*(char *)(*(int *)(iVar12 + 0x18300) + 0x7229) == '\0' ||
            (*(int *)(*(int *)(iVar12 + 0x18300) + 0x11ec) < 9)))) &&
       (*(char *)((int)param_1 + 0x173) == '\0')) {
      param_1[0x2d9] = 0x12;
      param_1[0x104] = 0;
      FUN_006d6ba0(0x13c,0x3f800000,0x3c,0,0x3f800000);
      param_1[0x62] = 0;
      param_1[0x57] = 0;
      cVar8 = FUN_00813360(param_1 + 0xcf,0);
      if (cVar8 != '\0') {
        uVar16 = FUN_006eef60();
        local_4c = (float)(uVar16 % 3 + 2);
        if (local_4c != 0.0) {
          do {
            iVar12 = FUN_006eef60();
            fVar19 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_44 = (int *)(fVar19 + fVar19);
            iVar12 = FUN_006eef60();
            local_48 = (int *)((float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)])
                               * DAT_00ba9ff4 * DAT_00baa784);
            fVar19 = (float)local_44;
            FUN_0041d540();
            local_6c = fVar19 * (float)local_48;
            local_50 = local_6c;
            fVar19 = (float)local_44;
            FUN_0041d520();
            local_68 = fVar19 * (float)local_48;
            local_54 = local_68;
            uVar9 = FUN_006eef60();
            iVar12 = FUN_006eef60();
            fVar19 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_44 = (int *)(fVar19 + fVar19);
            iVar12 = FUN_006eef60();
            local_48 = (int *)((float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)])
                               * DAT_00ba9ff4 * DAT_00baa87c);
            fVar19 = (float)local_44;
            FUN_0041d540();
            local_60 = CONCAT44(fVar19 * (float)local_48 + (float)param_1[0xcf],(undefined4)local_60
                               );
            fVar19 = (float)local_44;
            FUN_0041d520();
            local_58 = fVar19 * (float)local_48 + (float)param_1[0xd0];
            piVar10 = (int *)FUN_00428b20(1000,0x3b,(int)&local_60 + 4,&local_6c,param_1,0,uVar9);
            local_44 = DAT_00baa454;
            if (((float)piVar10[0xd0] - (float)param_1[0xd0]) *
                (float)((uint)local_50 ^ DAT_00bacb70) +
                ((float)piVar10[0xcf] - (float)param_1[0xcf]) * local_54 < 0.0) {
              local_44 = DAT_00baad50;
            }
            piVar10[0x37] = 0;
            piVar10[0x38] = -0x3e600000;
            local_48 = piVar10;
            iVar12 = FUN_006eef60();
            piVar10[0x11d] =
                 (int)(((float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa630) * (float)local_44);
            uVar16 = FUN_006eef60();
            iVar12 = uVar16 % 0xf + 0xf;
            piVar10[0x117] = iVar12;
            piVar10[0x118] = iVar12;
            pcVar2 = *(code **)(*piVar10 + 0x3c);
            iVar12 = FUN_006eef60();
            local_40 = 0x3f800000;
            local_3c = 0x3f800000;
            local_38 = 0x3f800000;
            local_20 = 0;
            local_1c = 0;
            local_18 = 0;
            local_30 = ZEXT816(0);
            local_34 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa198;
            (*pcVar2)(&local_40,0xffffffff,0xff,0,1);
            (**(code **)(*local_48 + 0xc))();
            local_4c = (float)((int)local_4c + -1);
          } while (local_4c != 0.0);
          FUN_00aef12b();
          return;
        }
      }
    }
    goto LAB_00505285;
  }
  param_1[0x2d9] = 4;
  ppbVar13 = (byte **)param_1[0x1f];
  if (ppbVar13 == (byte **)0x0) {
LAB_0050514b:
    cVar8 = FUN_0040a5d0(&DAT_00b1bc54,1);
    iVar12 = DAT_00c71678;
    if (cVar8 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
      iVar12 = DAT_00c71678;
    }
  }
  else {
    if (&DAT_0000000f < ppbVar13[5]) {
      ppbVar13 = (byte **)*ppbVar13;
    }
    pbVar15 = &DAT_00b1bc54;
    do {
      bVar14 = *(byte *)ppbVar13;
      bVar17 = bVar14 < *pbVar15;
      if (bVar14 != *pbVar15) {
LAB_00505130:
        uVar16 = -(uint)bVar17 | 1;
        goto LAB_00505135;
      }
      if (bVar14 == 0) break;
      bVar14 = *(byte *)((int)ppbVar13 + 1);
      bVar17 = bVar14 < pbVar15[1];
      if (bVar14 != pbVar15[1]) goto LAB_00505130;
      ppbVar13 = (byte **)((int)ppbVar13 + 2);
      pbVar15 = pbVar15 + 2;
    } while (bVar14 != 0);
    uVar16 = 0;
LAB_00505135:
    if ((uVar16 != 0) ||
       ((*(char *)(param_1[0x1f] + 0x34) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
    goto LAB_0050514b;
  }
  pfVar1 = (float *)(param_1 + 0xcf);
  param_1[0x61] = 0;
  *(bool *)(param_1 + 0x52) = param_1[0xc] != 0;
  param_1[0x62] = 2;
  param_1[0xcd] = (int)*pfVar1;
  param_1[0xce] = param_1[0xd0];
  local_78 = 0;
  uStack_74 = 0;
  local_70 = 0;
  iVar12 = *(int *)(*(int *)(iVar12 + 0x18300) + 0xc);
  param_1[0x5b] = param_1[0x5b] | 8;
  *(undefined *)(param_1 + 0xec) = 1;
  fVar19 = (float)(iVar12 * 0x28);
  fVar21 = fVar19 * DAT_00ba9fe4;
  *pfVar1 = *pfVar1 - (float)local_48 * fVar19;
  iVar12 = ram0x00bac5bc;
  uVar4 = s_333_333_333__00bac5b0._8_4_;
  uVar3 = s_333_333_333__00bac5b0._4_4_;
  uVar9 = s_333_333_333__00bac5b0._0_4_;
  param_1[0xd0] = (int)((float)param_1[0xd0] - fVar21);
  iVar7 = _UNK_00bac7bc;
  iVar6 = _UNK_00bac7b8;
  iVar5 = _UNK_00bac7b4;
  iVar11 = _DAT_00bac7b0;
  param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 1;
  if (param_1 + 0x79 != local_98) {
    param_1[0x7d] = uVar9;
    param_1[0x7e] = uVar3;
    param_1[0x7f] = uVar4;
    param_1[0x80] = iVar12;
    *(undefined8 *)(param_1 + 0x81) = 0;
    param_1[0x79] = iVar11;
    param_1[0x7a] = iVar5;
    param_1[0x7b] = iVar6;
    param_1[0x7c] = iVar7;
    param_1[0x83] = 0;
  }
  fVar19 = local_4c;
  FUN_0041d540();
  param_1[0xd0] = (int)((float)param_1[0xd0] - fVar19 * (float)local_44 * _DAT_00baa810);
LAB_00505285:
  FUN_00aef12b();
  return;
}

