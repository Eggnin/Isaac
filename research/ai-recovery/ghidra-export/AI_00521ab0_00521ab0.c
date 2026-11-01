/* Local J460 decompiler output.
 * VA: 0x00521ab0
 * Entry: 00521ab0
 * Dispatcher: 0x006c2990
 * Types: 44
 * Identities: 44.0.0,44.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00522430; instructions=520
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=44; identities=44.0.0,44.1.0; dispatcher=0x006c2990;
   end=0x00522430; instructions=520 */

void __fastcall AI_00521ab0(int *param_1)

{
  float fVar1;
  char *pcVar2;
  bool bVar3;
  bool bVar4;
  int iVar5;
  char cVar6;
  int iVar7;
  int *piVar8;
  undefined4 uVar9;
  int iVar10;
  int iVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  
  iVar7 = FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),
                       *(undefined4 *)(DAT_00c71678 + 0x1830c));
  local_50 = (float)(*(uint *)(iVar7 + 0x44) >> 1 & 0xffffff01);
  if (param_1[0x2d9] == 0) {
    param_1[0x5b] = param_1[0x5b] | 8;
    fVar13 = DAT_00baa904;
    param_1[0x2d9] = 4;
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x10001;
    iVar5 = DAT_00c71678;
    iVar7 = *(int *)(DAT_00c71678 + 0x18300);
    local_58 = (float)(int)(((float)param_1[0xcf] - fVar13) / fVar13 + DAT_00baa2d0);
    if (((((int)local_58 < 0) || (iVar10 = *(int *)(iVar7 + 0xc), iVar10 <= (int)local_58)) ||
        (iVar11 = (int)(((float)param_1[0xd0] - DAT_00baaa00) / fVar13 + DAT_00baa2d0), iVar11 < 0))
       || (*(int *)(iVar7 + 0x10) <= iVar11)) {
      iVar10 = *(int *)(iVar7 + 0xc);
      iVar7 = -1;
    }
    else {
      iVar7 = iVar10 * iVar11 + (int)local_58;
    }
    fVar12 = (float)(iVar7 / iVar10) * fVar13 + DAT_00baaa00;
    param_1[0x2ec] = (int)((float)(iVar7 % iVar10) * fVar13 + fVar13);
    param_1[0x2ed] = (int)fVar12;
    pcVar2 = *(char **)(iVar5 + 0x18300);
    if (((*pcVar2 != '\0') && (*(int *)(iVar5 + 0x264f8) == *(int *)(pcVar2 + 0x11f0))) &&
       (local_50._0_1_ != '\0')) {
      (**(code **)(*param_1 + 0x28))();
    }
    piVar8 = (int *)FUN_00407170();
    if (param_1 + 0x79 != piVar8) {
      iVar7 = piVar8[1];
      iVar5 = piVar8[2];
      iVar10 = piVar8[3];
      param_1[0x79] = *piVar8;
      param_1[0x7a] = iVar7;
      param_1[0x7b] = iVar5;
      param_1[0x7c] = iVar10;
      iVar7 = piVar8[5];
      iVar5 = piVar8[6];
      iVar10 = piVar8[7];
      param_1[0x7d] = piVar8[4];
      param_1[0x7e] = iVar7;
      param_1[0x7f] = iVar5;
      param_1[0x80] = iVar10;
      *(undefined8 *)(param_1 + 0x81) = *(undefined8 *)(piVar8 + 8);
      param_1[0x83] = piVar8[10];
    }
    param_1[0x7d] = 0x3f800000;
    param_1[0x7e] = 0x3f800000;
    param_1[0x7f] = 0x3f800000;
    param_1[0x80] = 0x3f800000;
    return;
  }
  FUN_007e6ff0();
  iVar7 = param_1[0x2d9];
  if (iVar7 != 4) {
    if (iVar7 == 8) {
      if ((*(char *)(param_1 + 100) == '\0') && (*(char *)(param_1 + 99) == '\0')) {
        fVar13 = (float)param_1[0xdb] * DAT_00baa3a4;
        bVar3 = NAN(DAT_00ba9fe4);
        bVar4 = fVar13 == DAT_00ba9fe4;
        param_1[0xdb] = (int)fVar13;
        if ((NAN(fVar13) || bVar3) == bVar4) {
          param_1[0xd8] =
               (int)(((float)param_1[0xe7] * (float)param_1[0xcd]) / fVar13 + (float)param_1[0xd8]);
          param_1[0xd9] =
               (int)(((float)param_1[0xe7] * (float)param_1[0xce]) / fVar13 + (float)param_1[0xd9]);
        }
        fVar12 = DAT_00baa2d0;
        fVar13 = (float)param_1[0xe7];
        iVar7 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
        if ((float)(param_1[0xcd] & DAT_00bacb40) <= (float)(param_1[0xce] & DAT_00bacb40)) {
          bVar3 = NAN(DAT_00baa454);
          bVar4 = fVar13 == DAT_00baa454;
          param_1[0xcf] =
               (int)((float)param_1[0xcf] * DAT_00baa2d0 +
                    ((float)(param_1[0x10d] % iVar7) * DAT_00baa904 + DAT_00baa904) * DAT_00baa2d0);
          if ((NAN(fVar13) || bVar3) == bVar4) {
            fVar12 = fVar12 / ((fVar13 + fVar12) - fVar13 * fVar12);
          }
          param_1[0xd8] = (int)(fVar12 * (float)param_1[0xd8]);
        }
        else {
          bVar3 = NAN(DAT_00baa454);
          bVar4 = fVar13 == DAT_00baa454;
          param_1[0xd0] =
               (int)((float)param_1[0xd0] * DAT_00baa2d0 +
                    ((float)(param_1[0x10d] / iVar7) * DAT_00baa904 + DAT_00baaa00) * DAT_00baa2d0);
          if ((NAN(fVar13) || bVar3) == bVar4) {
            fVar12 = fVar12 / ((fVar13 + fVar12) - fVar13 * fVar12);
          }
          param_1[0xd9] = (int)(fVar12 * (float)param_1[0xd9]);
        }
      }
      else {
        param_1[0x106] = (int)DAT_00c7b640;
        param_1[0x107] = (int)DAT_00c7b644;
        param_1[0x108] = (int)DAT_00c7b640;
        param_1[0x109] = (int)DAT_00c7b644;
        param_1[0x2d9] = 4;
        param_1[0xcd] = (int)DAT_00c7b640;
        param_1[0xce] = (int)DAT_00c7b644;
      }
    }
    else if (iVar7 == 0x10) {
      FUN_0040a380("No-Spikes",0);
      fVar13 = (float)param_1[0xdb] * DAT_00baa3e0;
      param_1[0xe2] = 0;
      param_1[0xdb] = (int)fVar13;
    }
    goto LAB_0052232c;
  }
  bVar3 = true;
  if (param_1[0xb] == 0) {
    FUN_007e5340(0x3f800000,0);
  }
  else {
    local_58 = (float)param_1[0xd0] - (float)param_1[0x2ed];
    local_50 = (float)param_1[0xcf] - (float)param_1[0x2ec];
    fVar13 = local_58 * local_58 + local_50 * local_50;
    FUN_00435a50();
    if (NAN(fVar13) != (fVar13 == 0.0)) {
      fVar13 = DAT_00baa020;
    }
    fVar12 = DAT_00baa5b4;
    if (fVar13 / DAT_00baa81c <= DAT_00baa5b4) {
      fVar12 = fVar13 / DAT_00baa81c;
    }
    fVar14 = (float)((uint)local_58 ^ DAT_00bacb70);
    bVar3 = fVar12 < DAT_00baa280;
    fVar1 = (float)param_1[0xdb];
    if (NAN(fVar1) == (fVar1 == 0.0)) {
      param_1[0xd8] =
           (int)(((float)((uint)local_50 ^ DAT_00bacb70) * (fVar12 / fVar13) * (float)param_1[0xe7])
                 / fVar1 + (float)param_1[0xd8]);
      param_1[0xd9] =
           (int)((fVar14 * (fVar12 / fVar13) * (float)param_1[0xe7]) / fVar1 + (float)param_1[0xd9])
      ;
    }
  }
  iVar7 = param_1[0x3c7];
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  if ((((iVar7 == -1) && (cVar6 = FUN_006ac710(3,param_1[8]), cVar6 == '\0')) || (!bVar3)) ||
     (((float)param_1[0xe9] <= DAT_00baa8d0 || (cVar6 = FUN_00417430(0x1000a00,0), cVar6 != '\0'))))
  goto LAB_0052232c;
  if (iVar7 == -1) {
    iVar7 = FUN_006be840();
    local_58 = *(float *)(iVar7 + 0x33c);
    local_44 = *(float *)(iVar7 + 0x340);
    iVar7 = FUN_006be840();
    local_50 = *(float *)(iVar7 + 0x360);
    local_48 = *(float *)(iVar7 + 0x364);
    iVar7 = FUN_006eef60();
    fVar13 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa85c;
    local_4c = fVar13 * local_48 + local_44;
    local_50 = fVar13 * local_50 + local_58;
    FUN_00812f50(&local_58,&local_50,0x41a00000,0x41a00000,0x41a00000);
    iVar7 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
    local_3c = (float)(param_1[0x10d] % iVar7) * DAT_00baa904 + DAT_00baa904;
    local_38 = (float)(param_1[0x10d] / iVar7) * DAT_00baa904 + DAT_00baaa00;
    local_50 = local_3c - local_58;
    local_44 = local_38 - local_54;
    local_48 = (float)((uint)local_50 & DAT_00bacb40);
    if ((local_48 < DAT_00baa87c) || ((float)((uint)local_44 & DAT_00bacb40) < DAT_00baa87c)) {
      fVar13 = local_44 * local_44 + local_50 * local_50;
      FUN_00435a50();
      if ((fVar13 < DAT_00baaa94) &&
         (cVar6 = FUN_007f0df0(&local_3c,&local_58,0,0,0,0,0), cVar6 != '\0')) {
        if (local_48 <= (float)((uint)local_44 & DAT_00bacb40)) {
          param_1[0xcd] = 0;
          fVar13 = DAT_00baad50;
          if (local_44 < 0.0) {
            fVar13 = DAT_00baa454;
          }
          param_1[0xce] = (int)fVar13;
        }
        else {
          param_1[0xce] = 0;
          if (0.0 <= local_50) {
            param_1[0xcd] = (int)DAT_00baad50;
          }
          else {
            param_1[0xcd] = (int)DAT_00baa454;
          }
        }
        goto LAB_00522092;
      }
    }
  }
  else {
    if (param_1[0xb] != 1) goto LAB_0052232c;
    FUN_006d82d0(&local_44);
    if (((NAN(local_44) || NAN(DAT_00c7b640)) == (local_44 == DAT_00c7b640)) ||
       ((NAN(local_40) || NAN(DAT_00c7b644)) == (local_40 == DAT_00c7b644))) {
      piVar8 = (int *)FUN_0067f170();
      param_1[0xcd] = *piVar8;
      param_1[0xce] = piVar8[1];
LAB_00522092:
      param_1[0x2d9] = 8;
    }
  }
  if ((param_1[0xb] == 1) && (param_1[0x2d9] == 8)) {
    param_1[0xcd] = (int)((float)param_1[0xcd] * _DAT_00baa6dc);
    param_1[0xce] = (int)((float)param_1[0xce] * _DAT_00baa6dc);
  }
LAB_0052232c:
  iVar7 = FUN_006d6c20();
  if (((((iVar7 < 1) && (pcVar2 = *(char **)(DAT_00c71678 + 0x18300), *pcVar2 != '\0')) &&
       (0x50 < *(int *)(DAT_00c71678 + 0x264f8) - *(int *)(pcVar2 + 0x11f0))) &&
      ((param_1[0xb] != 1 && (pcVar2[0x7229] == '\0')))) ||
     ((iVar7 = FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),
                            *(undefined4 *)(DAT_00c71678 + 0x1830c)),
      (*(uint *)(iVar7 + 0x44) >> 1 & 1) != 0 || (cVar6 = FUN_0044bfb0(0x97), cVar6 != '\0')))) {
    param_1[0x2d9] = 0x10;
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    if (-1 < param_1[0xcb]) {
      FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),0xffffffff);
      FUN_004e45c0(&local_3c,param_1 + 0xcb);
      if (*(char *)((int)param_1 + 0x173) == '\0') {
        return;
      }
    }
    if (param_1[0xb] == 0) {
      uVar9 = FUN_006eef60();
      FUN_006fe410(1000,0xf,param_1 + 0xcf,&DAT_00c7b640,param_1,2,uVar9,0);
    }
  }
  return;
}

