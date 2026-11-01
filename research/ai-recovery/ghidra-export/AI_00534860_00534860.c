/* Local J460 decompiler output.
 * VA: 0x00534860
 * Entry: 00534860
 * Dispatcher: 0x006c2990
 * Types: 217,870
 * Identities: 217.0.0,217.1.0,217.2.0,217.3.0,870.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00535280; instructions=566
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=217,870;
   identities=217.0.0,217.1.0,217.2.0,217.3.0,870.0.0; dispatcher=0x006c2990; end=0x00535280;
   instructions=566 */

void __fastcall AI_00534860(int *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  int *piVar8;
  undefined4 uVar9;
  float *pfVar10;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  bool bVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  int local_128 [8];
  undefined4 local_108;
  undefined4 uStack_104;
  undefined4 local_100;
  int local_fc [8];
  undefined4 local_dc;
  undefined4 uStack_d8;
  undefined4 local_d4;
  undefined local_d0 [8];
  float local_c8;
  float local_c4;
  float local_c0;
  float local_bc;
  float local_b8;
  undefined local_b4 [148];
  undefined4 local_20;
  uint local_8;
  
  local_8 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  if (((*(char *)((int)param_1 + 0x173) == '\0') &&
      ((iVar5 = FUN_009be080(0x240,DAT_00c71678 + 0x1baa8,1), iVar5 != 0 ||
       (cVar4 = FUN_0044bfb0(0xa3), cVar4 != '\0')))) &&
     ((iVar5 = FUN_009be140(0x240,param_1[0xfb],0), iVar5 != 0 ||
      (iVar5 = FUN_009be3e0(0xa3,param_1[0xfb],0), iVar5 != 0)))) {
    param_1[0x62] = 0;
    (**(code **)(*param_1 + 0x28))();
    if ((((param_1[10] == 0xd9) && (iVar6 = param_1[0xb], iVar6 != 1)) && (iVar6 != 3)) &&
       (iVar6 == 2)) {
      FUN_00639000(iVar5);
      FUN_00aef12b();
      return;
    }
    FUN_00639000(iVar5);
    FUN_00aef12b();
    return;
  }
  iVar3 = _UNK_00babf2c;
  iVar2 = _UNK_00babf28;
  iVar1 = _UNK_00babf24;
  iVar6 = _DAT_00babf20;
  iVar5 = param_1[0x2d9];
  if (iVar5 == 0) {
    piVar8 = param_1 + 0x79;
    param_1[0x2d9] = 3;
    local_dc = 0x3e828283;
    uStack_d8 = 0x3e24a4a5;
    local_d4 = 0x3e0c8c8d;
    if (piVar8 != local_fc) {
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
      *(undefined8 *)(param_1 + 0x81) = 0x3e24a4a53e828283;
      *piVar8 = iVar6;
      param_1[0x7a] = iVar1;
      param_1[0x7b] = iVar2;
      param_1[0x7c] = iVar3;
      param_1[0x83] = 0x3e0c8c8d;
    }
    iVar2 = _UNK_00babf2c;
    iVar1 = _UNK_00babf28;
    iVar6 = _UNK_00babf24;
    iVar5 = _DAT_00babf20;
    if (param_1[0xb] == 2) {
      local_108 = 0x3f19999a;
      uStack_104 = 0x3ecccccd;
      local_100 = 0;
      if (piVar8 != local_128) {
        *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
        *(undefined8 *)(param_1 + 0x81) = 0x3ecccccd3f19999a;
        *piVar8 = iVar5;
        param_1[0x7a] = iVar6;
        param_1[0x7b] = iVar1;
        param_1[0x7c] = iVar2;
        param_1[0x83] = 0;
        FUN_00aef12b();
        return;
      }
    }
    goto LAB_0053526f;
  }
  if (((param_1[10] != 0x366) && ((param_1[10] != 0xd9 || (param_1[0xb] != 3)))) ||
     (iVar6 = 6, *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7240) <= DAT_00ba9fe4)) {
    iVar6 = 5;
  }
  param_1[0x61] = iVar6;
  if ((iVar5 == 3) || (iVar5 == 0x10)) {
    FUN_0040a380(&DAT_00b1bc54,0);
    if (param_1[0x2d9] == 0x10) {
LAB_00534bfc:
      param_1[0x2d9] = 4;
      if (((param_1[0x5a] & 0x1000800U) == 0) || (param_1[0x3c7] != -1)) {
        if (param_1[10] == 0x366) {
          uVar7 = FUN_006eef60();
          if (uVar7 % 3 == 0) {
            iVar5 = FUN_006be840();
            local_bc = *(float *)(iVar5 + 0x33c) - (float)param_1[0xcf];
            local_b8 = *(float *)(iVar5 + 0x340) - (float)param_1[0xd0];
            pfVar10 = (float *)FUN_00a10030(&local_c8);
          }
          else {
            pfVar10 = (float *)FUN_0067f070(local_d0);
          }
          local_c0 = *pfVar10;
          local_b8 = pfVar10[1];
          if (param_1[0x3c7] != -1) {
            pfVar10 = (float *)FUN_006d82d0(local_d0);
            local_c0 = *pfVar10;
            local_b8 = pfVar10[1];
          }
          iVar5 = FUN_006eef60();
          fVar12 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7460);
          fVar15 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7464);
          fVar13 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa6fc + DAT_00baa784;
          fVar14 = fVar13 * local_b8;
          fVar13 = fVar13 * local_c0;
          if (((NAN(fVar12) || NAN(DAT_00c7b640)) == (fVar12 == DAT_00c7b640)) ||
             ((NAN(fVar15) || NAN(DAT_00c7b644)) == (fVar15 == DAT_00c7b644))) {
            fVar13 = fVar13 - fVar12 * DAT_00baa7e8;
            fVar14 = fVar14 - fVar15 * DAT_00baa7e8;
          }
          goto LAB_00534cc0;
        }
        FUN_0067f070(&local_bc);
        if (param_1[0x3c7] == -1) {
          local_c0 = local_b8;
          local_b8 = local_bc;
        }
        else {
          pfVar10 = (float *)FUN_006d82d0(local_d0);
          local_b8 = *pfVar10;
          local_c0 = pfVar10[1];
        }
        iVar5 = FUN_006eef60();
        bVar11 = param_1[0xb] == 1;
        fVar12 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa784 + DAT_00baa784;
        fVar15 = fVar12 * local_c0;
        fVar12 = fVar12 * local_b8;
LAB_00534fb7:
        if (bVar11) goto LAB_00534fb9;
LAB_00534fc7:
        fVar13 = (float)param_1[0xdb];
        if ((NAN(fVar13) || NAN(DAT_00ba9fe4)) != (fVar13 == DAT_00ba9fe4)) goto LAB_00535017;
        fVar15 = ((float)param_1[0xe7] * fVar15) / fVar13;
        param_1[0xd8] = (int)(((float)param_1[0xe7] * fVar12) / fVar13 + (float)param_1[0xd8]);
      }
      else {
        if (param_1[10] != 0x366) {
          iVar5 = FUN_006be840();
          local_bc = (float)param_1[0xcf] - *(float *)(iVar5 + 0x33c);
          local_b8 = (float)param_1[0xd0] - *(float *)(iVar5 + 0x340);
          pfVar10 = (float *)FUN_00a10030(&local_c8);
          iVar5 = FUN_006eef60();
          fVar12 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa784 + DAT_00baa784;
          fVar15 = fVar12 * pfVar10[1];
          fVar12 = fVar12 * *pfVar10;
          if (param_1[0xb] != 1) {
            bVar11 = param_1[0xb] == 2;
            goto LAB_00534fb7;
          }
LAB_00534fb9:
          fVar12 = fVar12 + fVar12;
          fVar15 = fVar15 + fVar15;
          goto LAB_00534fc7;
        }
        iVar5 = FUN_006be840();
        local_bc = (float)param_1[0xcf] - *(float *)(iVar5 + 0x33c);
        local_b8 = (float)param_1[0xd0] - *(float *)(iVar5 + 0x340);
        pfVar10 = (float *)FUN_00a10030(&local_c8);
        iVar5 = FUN_006eef60();
        fVar13 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa6fc + DAT_00baa784;
        fVar14 = fVar13 * pfVar10[1];
        fVar13 = fVar13 * *pfVar10;
LAB_00534cc0:
        fVar12 = (float)param_1[0xdb];
        if ((NAN(fVar12) || NAN(DAT_00ba9fe4)) != (fVar12 == DAT_00ba9fe4)) goto LAB_00535017;
        fVar15 = (fVar14 * (float)param_1[0xe7]) / fVar12;
        param_1[0xd8] = (int)((fVar13 * (float)param_1[0xe7]) / fVar12 + (float)param_1[0xd8]);
      }
      param_1[0xd9] = (int)(fVar15 + (float)param_1[0xd9]);
    }
    else {
      if (param_1[0x3c7] == -1) {
        uVar7 = FUN_006eef60();
        bVar11 = uVar7 % 10 == 0;
      }
      else {
        pfVar10 = (float *)FUN_006d82d0(&local_c8);
        if (((NAN(*pfVar10) || NAN(DAT_00c7b640)) == (*pfVar10 == DAT_00c7b640)) ||
           ((NAN(pfVar10[1]) || NAN(DAT_00c7b644)) == (pfVar10[1] == DAT_00c7b644))) {
          bVar11 = true;
        }
        else {
          bVar11 = false;
        }
      }
      if (bVar11) goto LAB_00534bfc;
    }
LAB_00535017:
    fVar12 = DAT_00baa3a4;
    if (param_1[10] == 0x366) {
      fVar12 = DAT_00baa3e0;
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * fVar12);
  }
  else if (iVar5 == 4) {
    FUN_0040a380(&DAT_00b1d6fc,0);
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa418);
    if (param_1[10] == 0x366) {
      iVar5 = FUN_0040a780();
      if ((iVar5 == 10) && ((uVar7 = FUN_006eef60(), uVar7 % 3 == 0 || (param_1[0x3c7] != -1)))) {
        param_1[0x2d9] = 0x10;
      }
      else if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = 3;
      }
    }
    else if ((float)param_1[0xd8] * (float)param_1[0xd8] +
             (float)param_1[0xd9] * (float)param_1[0xd9] < DAT_00baa454) {
      param_1[0x2d9] = 3;
    }
  }
  *(bool *)(param_1 + 0x52) = (float)param_1[0xd8] <= 0.0 && (float)param_1[0xd8] != 0.0;
  uVar7 = FUN_006eef60();
  uVar9 = extraout_ECX;
  if (uVar7 % 10 == 0) {
    iVar5 = FUN_006eef60();
    piVar8 = (int *)FUN_006b64d0((float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)])
                                 * DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa198);
    (**(code **)(*piVar8 + 0x3c))(param_1 + 0x79,0xffffffff,0xff,0,1);
    uVar9 = extraout_ECX_00;
  }
  if ((DAT_00ba9fe4 < (float)param_1[5]) &&
     (uVar7 = FUN_006eef60(), uVar9 = extraout_ECX_01, (uVar7 & 1) == 0)) {
    FUN_006d6ba0(0x3c,0x3f4ccccd,0xf,0,0x3f800000);
    uVar9 = extraout_ECX_02;
  }
  if ((((param_1[10] == 0xd9) && (param_1[0xb] == 3)) && (param_1[0x3c7] != -1)) &&
     (cVar4 = FUN_00956110(9,param_1[0x3c7],param_1,uVar9), cVar4 != '\0')) {
    uVar9 = FUN_00435c70();
    (**(code **)(*param_1 + 0x24))(uVar9);
  }
  if (((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[10] == 0xd9)) &&
     ((param_1[0xb] == 3 && ((param_1[0x5a] & 0x1000000U) == 0)))) {
    iVar5 = FUN_006be840();
    local_b8 = *(float *)(iVar5 + 0x33c);
    local_c0 = *(float *)(iVar5 + 0x340);
    fVar12 = ((float)param_1[0xd0] - local_c0) * ((float)param_1[0xd0] - local_c0) +
             ((float)param_1[0xcf] - local_b8) * ((float)param_1[0xcf] - local_b8);
    FUN_00435a50();
    local_bc = (*(float *)(iVar5 + 0x360) * DAT_00baa120 * fVar12 + local_b8) - (float)param_1[0xcf]
    ;
    local_b8 = (*(float *)(iVar5 + 0x364) * DAT_00baa120 * fVar12 + local_c0) - (float)param_1[0xd0]
    ;
    pfVar10 = (float *)FUN_00a10030(local_d0);
    local_c4 = pfVar10[1] * DAT_00baa81c;
    local_c8 = *pfVar10 * DAT_00baa81c;
    AI_0043ef30();
    local_20 = 5;
    FUN_006cb2e0(param_1 + 0xcf,&local_c8,0,local_b4);
  }
LAB_0053526f:
  FUN_00aef12b();
  return;
}

