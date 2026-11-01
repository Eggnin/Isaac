/* Local J460 decompiler output.
 * VA: 0x00562f00
 * Entry: 00562f00
 * Dispatcher: 0x006c2990
 * Types: 876
 * Identities: 876.0.0,876.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00563da0; instructions=823
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=876; identities=876.0.0,876.1.0; dispatcher=0x006c2990;
   end=0x00563da0; instructions=823 */

void __fastcall AI_00562f00(int *param_1)

{
  float *pfVar1;
  char cVar2;
  float *pfVar3;
  int **ppiVar4;
  int **ppiVar5;
  undefined4 uVar6;
  int *piVar7;
  uint uVar8;
  undefined4 extraout_EDX;
  int iVar9;
  float fVar10;
  float fVar11;
  undefined auVar12 [16];
  float fVar13;
  int *piVar14;
  undefined auStack_f8 [4];
  int *local_f4 [3];
  undefined4 local_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined auStack_d4 [16];
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined auStack_b8 [148];
  undefined4 uStack_24;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_f8;
  local_f4[0] = (int *)(&PTR_s_HeadWalk0_00b618b4)[(uint)param_1[0xfb] % 3];
  if ((param_1[0xb] == 1) && (param_1[0x27] == 0)) {
    cVar2 = FUN_0040a5d0("Reference",1);
    if ((cVar2 != '\0') && ((param_1[0x1f] != 0 && (FUN_00408e00(), param_1[0x1f] != 0)))) {
      *(undefined *)(param_1 + 0x23) = 0;
    }
    FUN_0040a940("WalkOverlay",0);
  }
  switch(param_1[0x2d9]) {
  case 0:
    auStack_d4 = ZEXT816(0);
    param_1[0x2d9] = 4;
    param_1[0x104] = 0;
    uStack_e4 = _DAT_00babf20;
    uStack_e0 = _UNK_00babf24;
    uStack_dc = _UNK_00babf28;
    uStack_d8 = _UNK_00babf2c;
    uStack_c4 = 0x3e828283;
    uStack_c0 = 0x3e24a4a5;
    uStack_bc = 0x3e0c8c8d;
    FUN_004071f0(&uStack_e4);
    if (param_1[0xb] == 1) {
      FUN_0040a6e0("Reference",0);
      FUN_0040a940("WalkOverlay",0);
      param_1[0x2ec] = 0;
    }
    else {
      cVar2 = FUN_0040aaf0(extraout_EDX,1);
      if ((cVar2 != '\0') && (param_1[0x27] != 0)) {
        FUN_00408e00();
      }
      FUN_0040a6e0(&DAT_00b1dce4,0);
    }
    break;
  case 4:
    if (param_1[0xb] == 1) {
      FUN_0040a940("WalkOverlay",0);
    }
    else {
      FUN_0040a380(&DAT_00b1dce4,0);
      FUN_0040a940(local_f4[0],0);
      *(bool *)(param_1 + 0x52) = (float)param_1[0xd8] <= 0.0 && (float)param_1[0xd8] != 0.0;
      if ((*(char *)(param_1 + 0x2d0) != '\0') && (uVar8 = FUN_006eef60(), uVar8 % 6 == 0)) {
        FUN_006d6ba0(0xa7,0x3f800000,0x5a,0,0x3f800000);
      }
    }
    if ((param_1[0x5a] & 0x1000800U) == 0) {
      FUN_006bec40(local_f4 + 2,0);
      local_f4[1] = (int *)param_1[0xd8];
      local_f4[0] = (int *)param_1[0xd9];
      uVar6 = DAT_00baa280;
      if (param_1[0xb] == 1) {
        uVar6 = DAT_00baa390;
      }
      FUN_007e33c0(local_f4 + 2,uVar6,900,1);
    }
    else {
      iVar9 = FUN_006be840();
      local_f4[1] = (int *)param_1[0xd8];
      local_f4[0] = (int *)param_1[0xd9];
      local_f4[2] = *(int **)(iVar9 + 0x33c);
      local_e8 = *(undefined4 *)(iVar9 + 0x340);
      FUN_007e4940(local_f4 + 2,0);
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    }
    fVar11 = (float)param_1[0xd9] - (float)local_f4[0];
    if ((param_1[0xb] == 1) &&
       (((NAN((float)param_1[0xd8] - (float)local_f4[1]) || NAN(DAT_00c7b640)) ==
         ((float)param_1[0xd8] - (float)local_f4[1] == DAT_00c7b640) ||
        ((NAN(fVar11) || NAN(DAT_00c7b644)) == (fVar11 == DAT_00c7b644))))) {
      FUN_00499d60();
      param_1[0x2ec] = (int)(fVar11 * DAT_00baa948 - DAT_00baa9b4);
    }
    break;
  case 8:
    fVar11 = (float)param_1[0xe7];
    piVar7 = DAT_00baa2d0;
    if ((NAN(fVar11) || NAN((float)DAT_00baa454)) == (fVar11 == (float)DAT_00baa454)) {
      piVar7 = (int *)((float)DAT_00baa2d0 /
                      ((fVar11 + (float)DAT_00baa2d0) - fVar11 * (float)DAT_00baa2d0));
    }
    fVar11 = (float)param_1[0xd8];
    fVar13 = (float)DAT_00baa454 - (float)piVar7;
    param_1[0xd8] = (int)(fVar11 + fVar13 * ((float)param_1[0x2ee] - fVar11));
    param_1[0xd9] =
         (int)((float)param_1[0xd9] + fVar13 * ((float)param_1[0x2ef] - (float)param_1[0xd9]));
    if (*(char *)(param_1 + 100) == '\0') {
      fVar11 = (float)param_1[0x2ef];
    }
    else {
      local_f4[0] = (int *)0x48;
      FUN_00956780();
      FUN_0092dc30(local_f4[0],0x3f800000,2,0,0x3f800000,0);
      fVar13 = (float)param_1[0x68] * DAT_00baa5b4;
      fVar11 = (float)param_1[0x66] * (float)param_1[0x68] +
               (float)param_1[0x65] * (float)param_1[0x67];
      param_1[0xd8] = (int)((float)param_1[0x65] - (float)param_1[0x67] * DAT_00baa5b4 * fVar11);
      param_1[0xd9] = (int)((float)param_1[0x66] - fVar13 * fVar11);
      pfVar3 = (float *)FUN_00a10030(local_f4 + 2);
      fVar10 = (float)param_1[0x2ee] * (float)param_1[0x2ee] +
               (float)param_1[0x2ef] * (float)param_1[0x2ef];
      FUN_00435a50();
      fVar11 = fVar10 * pfVar3[1];
      fVar13 = *pfVar3;
      param_1[0x2ef] = (int)fVar11;
      param_1[0x2ee] = (int)(fVar10 * fVar13);
    }
    local_f4[0] = (int *)param_1[0x2ee];
    fVar13 = (float)local_f4[0] * (float)local_f4[0] + fVar11 * fVar11;
    FUN_00435a50();
    fVar11 = (float)param_1[0xe7];
    piVar7 = (int *)((fVar13 - (float)DAT_00baa454) / DAT_00baa81c);
    if ((float)piVar7 <= (float)DAT_00ba9fe4) {
      piVar7 = DAT_00ba9fe4;
    }
    if ((float)DAT_00baa454 <= (float)piVar7) {
      piVar7 = DAT_00baa454;
    }
    fVar13 = (float)piVar7 * _DAT_00baa190 + DAT_00baa3a4;
    if ((NAN(fVar11) || NAN((float)DAT_00baa454)) == (fVar11 == (float)DAT_00baa454)) {
      fVar13 = fVar13 / ((fVar13 + fVar11) - fVar13 * fVar11);
    }
    local_f4[0] = (int *)((float)local_f4[0] * fVar13);
    param_1[0x2ee] = (int)local_f4[0];
    param_1[0x2ef] = (int)(fVar13 * (float)param_1[0x2ef]);
    fVar11 = (float)param_1[0xd8] * (float)param_1[0xd8] +
             (float)param_1[0xd9] * (float)param_1[0xd9];
    FUN_00435a50();
    fVar11 = fVar11 + (float)param_1[0x2ec];
    if (DAT_00baab30 < (float)((uint)fVar11 & DAT_00bacb40)) {
      FUN_00499d20();
    }
    if (fVar11 <= DAT_00baaa78) {
      if (fVar11 < DAT_00baae7c) {
        fVar11 = fVar11 + DAT_00baab30;
      }
    }
    else {
      fVar11 = fVar11 - DAT_00baab30;
    }
    param_1[0x2ec] = (int)fVar11;
    fVar11 = (float)local_f4[0] * (float)local_f4[0] + (float)param_1[0x2ef] * (float)param_1[0x2ef]
    ;
    FUN_00435a50();
    if (fVar11 < DAT_00baa1d4) {
      param_1[0x2d9] = 4;
    }
    break;
  case 0x10:
    if (param_1[0x27] != 0) {
      FUN_00408830(0);
    }
    if (param_1[0xf0] == 0) {
      uVar6 = FUN_006eef60();
      piVar7 = (int *)FUN_006fe410(1000,0x9b,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar6,0);
      piVar7[0x11e] = 0x3bda740e;
      if (piVar7[0xef] != 0) {
        local_f4[1] = piVar7 + 0xef;
        FUN_004cf210(local_f4 + 1);
      }
      piVar7[0xef] = (int)param_1;
      FUN_004cdcf0(piVar7 + 0xef);
      (**(code **)(*piVar7 + 0xc))();
      if (param_1[0xf0] != 0) {
        local_f4[1] = param_1 + 0xf0;
        FUN_004cf210(local_f4 + 1);
      }
      param_1[0xf0] = (int)piVar7;
      FUN_004cdcf0(param_1 + 0xf0);
    }
    if (param_1[0x62] == 0) {
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        (**(code **)(*param_1 + 0x28))();
        FUN_00aef12b();
        return;
      }
    }
    else {
      local_f4[0] = (int *)0x0;
      local_f4[2] = (int *)&DAT_00000005;
      local_f4[1] = (int *)(int)((((float)param_1[0xe1] - (float)param_1[0xe0]) * DAT_00baa7a4) /
                                (float)param_1[0xe1]);
      ppiVar5 = local_f4 + 1;
      if ((int)local_f4[1] < 1) {
        ppiVar5 = local_f4;
      }
      ppiVar4 = local_f4 + 2;
      if ((int)*ppiVar5 < 5) {
        ppiVar4 = ppiVar5;
      }
      piVar7 = *ppiVar4;
      if (1 < (int)piVar7) {
        *(undefined *)(param_1 + 0x30f) = 0;
      }
      if (4 < (int)piVar7) {
        param_1[0x57] = 0;
      }
      FUN_0040a380((&PTR_s_Spout0_00b618c0)[(int)piVar7],0);
      local_f4[0] = (int *)param_1[0xe1];
      local_f4[2] = (int *)0x0;
      local_f4[1] = (int *)((float)param_1[0xe0] - (float)local_f4[0] / DAT_00baaa44);
      ppiVar5 = local_f4 + 2;
      if (0.0 <= (float)local_f4[1]) {
        ppiVar5 = local_f4 + 1;
      }
      local_f4[1] = *ppiVar5;
      param_1[0xe0] = (int)local_f4[1];
      if (((float)local_f4[1] <= 0.0) || (*(char *)((int)param_1 + 0x173) != '\0')) {
        param_1[0xe0] = 0x3a83126f;
        *(undefined *)((int)param_1 + 0x173) = 0;
        FUN_0040a380(&DAT_00b61844,0);
        local_f4[1] = (int *)param_1[0xe0];
        local_f4[0] = (int *)param_1[0xe1];
        param_1[0x5a] = param_1[0x5a] | 0x10011;
        param_1[0x5b] = param_1[0x5b];
        param_1[0x62] = 0;
      }
      fVar11 = (float)param_1[0xe7] + (float)param_1[0x2ed];
      param_1[0x2ed] = (int)fVar11;
      if (NAN((float)local_f4[0]) != ((float)local_f4[0] == 0.0)) {
        FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
        fVar11 = (float)param_1[0x2ed];
      }
      fVar13 = ((float)local_f4[1] - 0.0) / ((float)local_f4[0] - 0.0);
      auVar12 = ZEXT416((uint)fVar13);
      if (fVar13 <= 0.0) {
        auVar12 = ZEXT816(0) << 0x20;
      }
      if ((float)DAT_00baa454 <= auVar12._0_4_) {
        auVar12._0_4_ = DAT_00baa454;
      }
      local_f4[2] = (int *)(DAT_00baa8d0 / (auVar12._0_4_ * DAT_00baa83c + DAT_00baa630));
      if ((float)local_f4[2] <= fVar11) {
        do {
          param_1[0x2ed] = (int)(fVar11 - (float)local_f4[2]);
          AI_0043ef30();
          uStack_24 = 3;
          iVar9 = FUN_006ccdd0(1,&DAT_00c7b640,0x41200000,auStack_b8);
          piVar7 = DAT_00baa2d0;
          fVar11 = *(float *)(iVar9 + 0x364) * (float)DAT_00baa2d0;
          *(float *)(iVar9 + 0x360) = *(float *)(iVar9 + 0x360) * (float)DAT_00baa2d0;
          local_f4[0] = DAT_00baa454;
          *(float *)(iVar9 + 0x364) = fVar11;
          if (param_1[0x319] == 0x12) {
            local_f4[0] = DAT_00baa528;
          }
          else if (param_1[0x319] == 0x13) {
            local_f4[0] = piVar7;
          }
          local_f4[1] = (int *)0x99;
          FUN_00956780();
          FUN_0092dc30(local_f4[1],0x3f800000,2,0,local_f4[0],0);
          fVar11 = (float)param_1[0x2ed];
        } while ((float)local_f4[2] <= fVar11);
      }
    }
    param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
    param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
    if (0.0 < (float)param_1[5]) {
      param_1[5] = 0;
      fVar11 = DAT_00baa120;
      pfVar1 = (float *)param_1[3];
      for (pfVar3 = (float *)param_1[2]; pfVar3 != pfVar1; pfVar3 = pfVar3 + 0xe) {
        fVar13 = *pfVar3;
        *pfVar3 = fVar13 * fVar11;
        param_1[5] = (int)(fVar13 * fVar11 + (float)param_1[5]);
      }
    }
  }
  iVar9 = 8;
  if (param_1[0x2d9] == 8) {
    iVar9 = 3;
  }
  if ((((param_1[0x5a] & 0x4000U) == 0) && (cVar2 = FUN_006fd350(), cVar2 == '\0')) &&
     ((*(int *)(DAT_00c71678 + 0x264f8) + param_1[8]) % iVar9 == 0)) {
    uVar6 = FUN_006eef60();
    piVar7 = (int *)FUN_006fe410(1000,0x5e,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar6,0);
    iVar9 = FUN_006eef60();
    fVar13 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa1d4 + DAT_00baa380;
    fVar11 = fVar13 * DAT_00c3793c;
    piVar7[0x3a] = (int)(fVar13 * DAT_00c37940);
    piVar7[0x39] = (int)fVar11;
    (**(code **)(*piVar7 + 0xc))();
    uVar8 = FUN_006eef60();
    if (uVar8 % 3 == 0) {
      iVar9 = FUN_006eef60();
      piVar7 = (int *)FUN_006b64d0((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]
                                          ) * DAT_00ba9ff4 * DAT_00baa304 + DAT_00baa1f8);
      (**(code **)(*piVar7 + 0x3c))(&DAT_00c5c898,0xffffffff,0xff,0,1);
    }
  }
  iVar9 = param_1[0xb];
  if (iVar9 == 0) {
    if (((float)param_1[5] <= 0.0) || (param_1[2] == param_1[3])) goto LAB_00563c1e;
    local_f4[0] = (int *)((float)param_1[0xd0] - *(float *)(param_1[3] + -0x14));
    local_f4[1] = (int *)((float)param_1[0xcf] - *(float *)(param_1[3] + -0x18));
    fVar11 = (float)local_f4[0] * (float)local_f4[0] + (float)local_f4[1] * (float)local_f4[1];
    if (fVar11 <= DAT_00baa010) goto LAB_00563c1e;
    FUN_00435a50();
    piVar14 = local_f4[0];
    piVar7 = local_f4[1];
    if ((float)DAT_00ba9fe4 < fVar11) {
      piVar14 = (int *)((float)local_f4[0] * ((float)DAT_00baa454 / fVar11));
      piVar7 = (int *)((float)local_f4[1] * ((float)DAT_00baa454 / fVar11));
    }
    fVar11 = (float)piVar14 * DAT_00baa848;
    param_1[0x2ee] = (int)((float)piVar7 * DAT_00baa848);
    param_1[0x2ef] = (int)fVar11;
    iVar9 = param_1[0xb];
  }
  if ((iVar9 == 1) && (local_f4[1] = (int *)FUN_0040ac70(1), local_f4[1] != (int *)0x0)) {
    iVar9 = FUN_0040b220(0);
    *(int *)(iVar9 + 0x40) = *local_f4[1];
    *(int *)(iVar9 + 0x44) = local_f4[1][1];
    iVar9 = FUN_0040b220(0);
    *(int *)(iVar9 + 0x34) = local_f4[1][4];
    *(int *)(iVar9 + 0x38) = local_f4[1][5];
    local_f4[2] = (int *)local_f4[1][0x11];
    iVar9 = FUN_0040b220(0);
    *(int **)(iVar9 + 0x3c) = local_f4[2];
    if (param_1[0x1f] != 0) {
      FUN_00aefca0();
      FUN_00408e00();
    }
  }
LAB_00563c1e:
  if (((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[0xb] == 0)) && (param_1[0x2d9] != 0x10)
     ) {
    param_1[0xe0] = param_1[0xe1];
    param_1[0x2d9] = 0x10;
    *(undefined *)((int)param_1 + 0x173) = 0;
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    param_1[0x62] = 2;
    local_e8 = 0;
    local_f4[2] = (int *)0x0;
    param_1[0xdc] = (int)(*(float *)(param_1[0xcc] + 0x38) * (float)DAT_00baa2d0);
    uVar6 = FUN_007e90f0();
    piVar7 = (int *)FUN_006fe410(param_1[10],param_1[0xb] + 1,param_1 + 0xcf,local_f4 + 2,param_1,0,
                                 uVar6,0);
    if (*(char *)((int)param_1 + 0xc63) != '\0') {
      FUN_006c0f30(piVar7[10],piVar7[0xb],piVar7[0xc],param_1[0x319]);
    }
    piVar7[0x5a] = piVar7[0x5a] & 0xfffffffb;
    piVar7[0x5b] = piVar7[0x5b];
    (**(code **)(*piVar7 + 0xc))();
    piVar7[0x2d9] = 8;
    piVar7[0x2ee] = param_1[0x2ee];
    piVar7[0x2ef] = param_1[0x2ef];
    piVar7[0xd8] = param_1[0x2ee];
    piVar7[0xd9] = param_1[0x2ef];
    FUN_0040a940("FallOverlay",0);
    FUN_006d88b0(piVar7);
  }
  FUN_00aef12b();
  return;
}

