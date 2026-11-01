/* Local J460 decompiler output.
 * VA: 0x0058d8b0
 * Entry: 0058d8b0
 * Dispatcher: 0x006c2990
 * Types: 915
 * Identities: 915.0.0,915.1.0
 * Evidence: dispatcher=0x006c2990; end=0x0058d95b; instructions=46
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=915; identities=915.0.0,915.1.0; dispatcher=0x006c2990;
   end=0x0058d95b; instructions=46 */

void __fastcall AI_0058d8b0(int *param_1)

{
  code *pcVar1;
  undefined *puVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  char *pcVar7;
  int iVar8;
  char *pcVar9;
  float fVar10;
  float fVar11;
  undefined auVar12 [16];
  float fVar13;
  float fVar14;
  double dVar15;
  int local_3c [3];
  ulonglong local_30;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af556d;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  puVar2 = &stack0xfffffffc;
  if (param_1[0x2d9] == 0) {
    param_1[0x5a] = param_1[0x5a] | 0x50011;
    local_30 = DAT_00b1f534;
    uVar4 = param_1[0xfb];
    param_1[0x5b] = param_1[0x5b];
    uVar6 = DAT_00b1f53c;
    *(undefined *)(param_1 + 0xec) = 1;
    if (uVar4 == 0) {
      puStack_20 = &stack0xfffffffc;
      FUN_00a112c0(0x10,"RNG Seed is zero!\n",local_24);
      pcVar1 = (code *)swi(3);
      (*pcVar1)();
      return;
    }
    uVar4 = uVar4 >> ((byte)local_30 & 0x1f) ^ uVar4;
    param_1[0x2ed] = 0;
    uVar4 = uVar4 << ((byte)(local_30 >> 0x20) & 0x1f) ^ uVar4;
    param_1[0x2ef] = 0;
    uVar4 = uVar4 >> ((byte)uVar6 & 0x1f) ^ uVar4;
    param_1[0x2f0] = 0;
    param_1[0x2f1] = 0;
    param_1[0x2ec] =
         (int)((float)((double)uVar4 + (double)(&DAT_00bacb00)[-((int)uVar4 >> 0x1f)]) *
              DAT_00ba9ff0);
    cVar3 = FUN_0040a5d0("RollVert",1);
    if (((cVar3 != '\0') && (param_1[0x1f] != 0)) && (FUN_00408e00(), param_1[0x1f] != 0)) {
      *(undefined *)(param_1 + 0x23) = 0;
    }
    if (param_1[0x1f] != 0) {
      FUN_00408e00();
    }
    param_1[0x2d9] = 3;
    puVar2 = puStack_20;
  }
  puStack_20 = puVar2;
  iVar5 = FUN_009be6b0();
  if ((iVar5 != 0) && (iVar5 = FUN_007cb6e0(), 1 < iVar5 != (param_1[0x2f1] != 0))) {
    iVar5 = FUN_007cb6e0();
    local_30 = local_30 & 0xffffffff;
    pcVar9 = "gfx/Bosses/repentance/singe_ball_retracted.png";
    local_28 = 0xf;
    local_3c[0] = 0;
    param_1[0x2f1] = (uint)(1 < iVar5);
    if (iVar5 < 2) {
      pcVar9 = "gfx/Bosses/repentance/singe_ball.png";
    }
    pcVar7 = pcVar9;
    do {
      cVar3 = *pcVar7;
      pcVar7 = pcVar7 + 1;
    } while (cVar3 != '\0');
    FUN_0040ccd0(pcVar9,(int)pcVar7 - (int)(pcVar9 + 1));
    local_14 = 0;
    FUN_0040bf30(0,local_3c);
    local_14 = 0xffffffff;
    if (0xf < local_28) {
      uVar4 = local_28 + 1;
      iVar5 = local_3c[0];
      if (0xfff < uVar4) {
        iVar5 = *(int *)(local_3c[0] + -4);
        uVar4 = local_28 + 0x24;
        if (0x1f < (local_3c[0] - iVar5) - 4U) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar5,uVar4);
    }
    FUN_0040c000();
    fVar11 = DAT_00baa454;
    if (param_1[0x2f1] != 0) {
      fVar11 = 0.0;
    }
    param_1[0xe2] = (int)fVar11;
  }
  if ((((param_1[0xc] == 0) && (iVar5 = FUN_006d6c20(), iVar5 < 1)) &&
      ((*(char *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7229) == '\0' ||
       (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11ec) < 9)))) &&
     (*(char *)((int)param_1 + 0x173) == '\0')) {
    FUN_00435c70();
    (**(code **)(*param_1 + 0x24))();
  }
  fVar11 = DAT_00baad50;
  if (param_1[0x61] == 7) {
    param_1[0x62] = 0;
  }
  else {
    iVar5 = 0;
    if (DAT_00baae30 < (float)param_1[0x2ef]) {
      iVar5 = 4;
    }
    param_1[0x62] = iVar5;
    if (((float)param_1[0x2ef] <= fVar11) || (iVar5 = 5, (float)param_1[0x2ed] < DAT_00ba9fe4)) {
      iVar5 = 6;
    }
    param_1[0x61] = iVar5;
  }
  if ((param_1[6] & 4U) != 0) {
    iVar8 = param_1[3];
    for (iVar5 = param_1[2]; iVar5 != iVar8; iVar5 = iVar5 + 0x38) {
      if (((*(uint *)(iVar5 + 8) & 4) != 0) &&
         ((fVar11 = *(float *)(iVar5 + 0x20),
          (NAN(fVar11) || NAN(DAT_00c7b640)) == (fVar11 == DAT_00c7b640) ||
          ((NAN(*(float *)(iVar5 + 0x24)) || NAN(DAT_00c7b644)) ==
           (*(float *)(iVar5 + 0x24) == DAT_00c7b644))))) {
        fVar11 = (float)param_1[0xcf] - fVar11;
        fVar13 = (float)param_1[0xd0] - *(float *)(iVar5 + 0x24);
        fVar10 = fVar11 * fVar11 + fVar13 * fVar13;
        FUN_00435a50();
        if (0.0 < fVar10) {
          fVar13 = fVar13 * (DAT_00baa454 / fVar10);
          fVar11 = fVar11 * (DAT_00baa454 / fVar10);
        }
        fVar10 = ((fVar13 * (float)param_1[0xd9] + (float)param_1[0xd8] * fVar11) - DAT_00baadec) /
                 DAT_00baa904;
        auVar12 = ZEXT416((uint)fVar10);
        if (fVar10 <= 0.0) {
          auVar12 = ZEXT816(0) << 0x20;
        }
        if (DAT_00baa454 <= auVar12._0_4_) {
          auVar12._0_4_ = DAT_00baa454;
        }
        fVar10 = DAT_00baa630 - (auVar12._0_4_ + auVar12._0_4_);
        fVar11 = fVar10 * fVar11 * DAT_00baa87c;
        param_1[0xd9] =
             (int)(fVar10 * fVar13 * DAT_00baa87c * (float)param_1[0xe7] + (float)param_1[0xd9]);
        param_1[0xd8] = (int)(fVar11 * (float)param_1[0xe7] + (float)param_1[0xd8]);
        if ((0.0 <= (float)param_1[0x2ef]) && (0.0 <= (float)param_1[0x2ed])) {
          param_1[0x2ed] = -0x3f400000;
        }
      }
    }
  }
  fVar11 = (float)param_1[0x2ef];
  if (((fVar11 < 0.0) || ((float)param_1[0x2ed] <= 0.0 && (float)param_1[0x2ed] != 0.0)) ||
     (param_1[0x61] == 7)) {
    fVar10 = (float)param_1[0xe7] * DAT_00baa3a4 + (float)param_1[0x2ed];
    fVar11 = fVar11 + (float)param_1[0xe7] * (float)param_1[0x2ed];
    param_1[0x2ed] = (int)fVar10;
    param_1[0x2ef] = (int)fVar11;
    if (param_1[0x61] == 7) {
      if (DAT_00baa81c < fVar11) {
        uVar6 = FUN_006eef60();
        FUN_00428b20(1000,0xf,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar6);
        (**(code **)(*param_1 + 0x28))();
        goto LAB_0058e1e8;
      }
    }
    else if (0.0 < fVar11) {
      iVar5 = FUN_007f0800();
      if (iVar5 == 1) {
        param_1[0x61] = 7;
      }
      else {
        param_1[0x2ef] = 0;
        fVar11 = 0.0;
        if (0.0 < fVar10) {
          if (fVar10 <= DAT_00baa75c) {
            param_1[0x2ed] = 0;
          }
          else {
            iVar5 = FUN_006eef60();
            fVar10 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa3e0;
            fVar11 = (float)param_1[0x2ed];
            FUN_00956780();
            fVar11 = fVar11 * DAT_00baa120 + DAT_00baa198;
            if (DAT_00baa4b0 <= fVar11) {
              fVar11 = DAT_00baa4b0;
            }
            FUN_0092dc30(0x1e7,fVar11,2,0,fVar10,0);
            fVar11 = (float)param_1[0x2ef];
            param_1[0x2ed] = (int)((float)param_1[0x2ed] * _DAT_00baad20);
          }
        }
      }
    }
  }
  fVar10 = (float)param_1[0xd8];
  param_1[0xd4] = (int)fVar11;
  fVar11 = (float)param_1[0xd9];
  fVar13 = fVar10 * fVar10 + fVar11 * fVar11;
  if ((DAT_00baa75c < fVar13) &&
     (uVar4 = (uint)((float)((uint)fVar11 & DAT_00bacb40) < (float)((uint)fVar10 & DAT_00bacb40)),
     uVar4 != param_1[0x2f0])) {
    param_1[0x2f0] = uVar4;
    pcVar9 = "RollHori";
    if (uVar4 != 1) {
      pcVar9 = "RollVert";
    }
    cVar3 = FUN_0040a5d0(pcVar9,1);
    if (((cVar3 != '\0') && (param_1[0x1f] != 0)) && (FUN_00408e00(), param_1[0x1f] != 0)) {
      *(undefined *)(param_1 + 0x23) = 0;
    }
    if (param_1[0x1f] != 0) {
      FUN_00408e00();
    }
  }
  fVar13 = (float)param_1[0x2ed] * (float)param_1[0x2ed] + fVar13;
  FUN_00435a50();
  fVar10 = DAT_00baa454;
  fVar11 = fVar13 * DAT_00baa08c;
  if (param_1[0x2f0] == 1) {
    fVar14 = (float)param_1[0xd8];
  }
  else {
    fVar14 = (float)param_1[0xd9];
  }
  if (fVar14 < 0.0) {
    fVar11 = (float)((uint)fVar11 ^ DAT_00bacb70);
  }
  fVar11 = fVar11 + (float)param_1[0x2ec];
  fVar13 = (fVar13 - DAT_00baa2d0) / DAT_00baa730;
  if (fVar13 <= 0.0) {
    fVar13 = 0.0;
  }
  param_1[0x2ec] = (int)fVar11;
  if (fVar10 <= fVar13) {
    fVar13 = fVar10;
  }
  param_1[0xdb] = (int)((fVar13 * _DAT_00baa1f4 + DAT_00baa354) * (float)param_1[0xdb]);
  while (fVar11 < 0.0) {
    fVar11 = (float)param_1[0x2ec] + fVar10;
    param_1[0x2ec] = (int)fVar11;
  }
  while (fVar10 <= fVar11) {
    fVar11 = (float)param_1[0x2ec] - fVar10;
    param_1[0x2ec] = (int)fVar11;
  }
  iVar5 = param_1[0x1f];
  if (iVar5 == 0) {
    iVar8 = -1;
    fVar11 = fVar11 * 0.0;
  }
  else {
    dVar15 = floor((double)(float)param_1[0x22]);
    fVar11 = (float)*(int *)(iVar5 + 0x30) * fVar11;
    iVar8 = (int)dVar15;
  }
  if (((int)fVar11 != iVar8) && (iVar5 != 0)) {
    FUN_00408e00();
  }
LAB_0058e1e8:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

