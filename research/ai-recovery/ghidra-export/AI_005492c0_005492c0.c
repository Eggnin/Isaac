/* Local J460 decompiler output.
 * VA: 0x005492c0
 * Entry: 005492c0
 * Dispatcher: 0x006c2990
 * Types: 311
 * Identities: 311.0.0,311.10.0
 * Evidence: dispatcher=0x006c2990; end=0x0054a350; instructions=946
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=311; identities=311.0.0,311.10.0;
   dispatcher=0x006c2990; end=0x0054a350; instructions=946 */

void __fastcall AI_005492c0(int *param_1)

{
  int iVar1;
  byte bVar2;
  byte **ppbVar3;
  char cVar4;
  undefined4 uVar5;
  int iVar6;
  byte **ppbVar7;
  uint uVar8;
  int *piVar9;
  int iVar10;
  float *pfVar11;
  char *pcVar12;
  float fVar13;
  bool bVar14;
  int **ppiVar15;
  float fVar16;
  float fVar17;
  double dVar18;
  undefined auStack_174 [56];
  float local_13c;
  int **local_138;
  float local_134;
  char *local_130;
  float fStack_12c;
  int **local_128;
  float local_124;
  float local_120;
  float local_11c;
  undefined local_f0 [24];
  undefined4 local_d8;
  uint local_44;
  
  local_44 = DAT_00bf93b4 ^ (uint)auStack_174;
  iVar6 = param_1[0x2d9];
  local_130 = *(char **)(DAT_00c71678 + 0x18300);
  uVar8 = param_1[0xb];
  if (iVar6 != 0) {
    if (9 < uVar8) {
      if (uVar8 != 10) goto LAB_0054975a;
      if ((param_1[0xef] != 0) && (*(int *)(param_1[0xef] + 0x28) == 0x137)) {
        pfVar11 = (float *)FUN_0040b1a0();
        if ((pfVar11 != (float *)0x0) && (*(char *)(pfVar11 + 3) != '\0')) {
          local_128 = (int **)(*pfVar11 / DAT_00baa324);
          local_13c = pfVar11[1];
          fVar13 = DAT_00baa7b8 - (float)param_1[0x2ec];
          *(undefined *)((int)param_1 + 0x171) = 1;
          local_138 = (int **)(fVar13 * DAT_00baa13c);
          iVar6 = FUN_00447770();
          local_134 = *(float *)(iVar6 + 0x33c);
          local_130 = *(char **)(iVar6 + 0x340);
          iVar6 = FUN_00447770();
          local_134 = (local_134 + (float)local_128) - *(float *)(iVar6 + 0x334);
          local_130 = (char *)(((float)local_130 + 0.0) - *(float *)(iVar6 + 0x338));
          iVar6 = FUN_00447770();
          fVar13 = *(float *)(iVar6 + 0x334);
          param_1[0xd9] =
               (int)(((float)local_138 * (float)local_130 + *(float *)(iVar6 + 0x338)) -
                    (float)param_1[0xd0]);
          local_13c = local_13c / DAT_00baa324;
          param_1[0xd8] = (int)(((float)local_138 * local_134 + fVar13) - (float)param_1[0xcf]);
          local_13c = local_13c - DAT_00baa848;
          param_1[0xd4] = (int)(local_13c * (float)local_138 + DAT_00baa848);
          local_128 = (int **)(((float)DAT_00baa454 - (float)local_138) * DAT_00baaea4);
          dVar18 = floor((double)(float)local_128);
          local_128 = (int **)(float)dVar18;
          iVar6 = thunk_FUN_00af0780();
          param_1[0xd5] = iVar6;
          fVar13 = local_13c * local_13c +
                   (float)local_130 * (float)local_130 + local_134 * local_134;
          FUN_00435a50();
          local_128 = (int **)(fVar13 * (float)local_138 * DAT_00baa09c);
          if ((float)local_128 <= 0.0) {
            local_128 = (int **)0x0;
          }
          if ((float)DAT_00baa454 <= (float)local_128) {
            local_128 = DAT_00baa454;
          }
          iVar6 = FUN_0040b220();
          *(int ***)(iVar6 + 0x54) = local_128;
          FUN_00aef12b();
          return;
        }
        iVar6 = FUN_00447770();
        param_1[0xcf] = *(int *)(iVar6 + 0x334);
        param_1[0xd0] = *(int *)(iVar6 + 0x338);
        *(undefined *)((int)param_1 + 0x171) = 0;
        FUN_00aef12b();
        return;
      }
LAB_00549753:
      (**(code **)(*param_1 + 0x28))();
      goto LAB_0054975a;
    }
    if (*(char *)((int)param_1 + 0x173) != '\0') {
      if ((param_1[0x5a] & 0x1000000U) == 0) {
        AI_0043ef30();
        local_d8 = 0;
        local_128 = (int **)0x41000000;
        local_124 = 6.0;
        FUN_006cb2e0(param_1 + 0xcf,&local_128,9,local_f0);
        FUN_006d6ba0(0x92,0x3f800000,2,0,0x3f800000);
        FUN_00aef12b();
        return;
      }
      goto LAB_0054975a;
    }
    if (((*local_130 != '\0') && (*(int *)(DAT_00c71678 + 0x264f8) == *(int *)(local_130 + 0x11f0)))
       && (cVar4 = FUN_00417430(0x20000000,0), cVar4 != '\0')) {
      param_1[0x2d9] = 3;
      FUN_0040a380("DigIn",0);
      FUN_0040a760();
      iVar6 = param_1[0x2d9];
      param_1[0x2f0] = -1;
      param_1[0x2f1] = -1;
      param_1[0x62] = 0;
    }
    iVar10 = param_1[0x2e8];
    if (0 < iVar10) {
      iVar1 = ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + iVar10;
      iVar10 = 0;
      if (0 < iVar1) {
        iVar10 = iVar1;
      }
      param_1[0x2e8] = iVar10;
    }
    if (iVar6 == 3) {
      uVar8 = param_1[0x2f0];
      if ((int)uVar8 < 0) {
LAB_00549638:
        iVar6 = param_1[0x2f1];
        uVar5 = FUN_006bec40(&local_120,0);
        uVar8 = FUN_00548f30(param_1 + 0xcf,uVar5,iVar6);
        param_1[0x2f0] = uVar8;
        if ((int)uVar8 < 0) {
          iVar6 = param_1[0x104] + ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
          param_1[0x104] = iVar6;
          pcVar12 = local_130;
          if ((0x1e < iVar6) &&
             (cVar4 = FUN_00417430(0x20000000,0), pcVar12 = local_130, cVar4 == '\0'))
          goto LAB_00549753;
          goto LAB_00549e6d;
        }
      }
      else {
        if ((((0x1bf < uVar8) || (iVar6 = *(int *)(local_130 + uVar8 * 4 + 0x24), iVar6 == 0)) ||
            (*(int *)(iVar6 + 4) != 7)) || (*(int *)(iVar6 + 0x3c) != 1)) {
          param_1[0x2f0] = -1;
          goto LAB_00549638;
        }
        if ((int)uVar8 < 0) goto LAB_00549638;
      }
      pcVar12 = local_130;
      param_1[0x104] = 0;
      fVar16 = (float)((int)uVar8 % *(int *)(local_130 + 0xc)) * DAT_00baa904 + DAT_00baa904;
      fVar13 = (float)((int)uVar8 / *(int *)(local_130 + 0xc)) * DAT_00baa904 + DAT_00baaa00;
      param_1[0xcd] = (int)fVar16;
      param_1[0xcf] = (int)fVar16;
      param_1[0xce] = (int)fVar13;
      param_1[0xd0] = (int)fVar13;
      param_1[0xd8] = (int)DAT_00c7b640;
      param_1[0xd9] = (int)DAT_00c7b644;
      param_1[0x2d9] = 6;
      FUN_0040a380("DigOut",0);
      param_1[0x2f1] = param_1[0x2f0];
    }
    else if (iVar6 == 6) {
      cVar4 = FUN_0040b030();
      pcVar12 = local_130;
      if (cVar4 != '\0') {
        param_1[0x62] = 4;
        param_1[0x57] = *(int *)(param_1[0xcc] + 0x24);
        if ((DAT_00ba9fe4 < *(float *)(local_130 + 0x7240)) ||
           ((*(uint *)(*(int *)(local_130 + 4) + 0x44) >> 5 & 1) != 0)) {
          uVar5 = FUN_006eef60();
          piVar9 = (int *)FUN_006fe410(1000,99,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar5,0);
          fVar13 = DAT_00c37940 * DAT_00baa528;
          piVar9[0x39] = (int)(DAT_00c3793c * DAT_00baa528);
          piVar9[0x3a] = (int)fVar13;
          (**(code **)(*piVar9 + 0xc))();
          uVar8 = FUN_006eef60();
          for (iVar6 = uVar8 % 6 + 4; iVar6 != 0; iVar6 = iVar6 + -1) {
            iVar10 = FUN_006eef60();
            local_13c = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baa704;
            local_13c = local_13c + local_13c;
            iVar10 = FUN_006eef60();
            local_134 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                        DAT_00ba9ff4;
            fVar13 = local_13c;
            FUN_0041d540();
            local_138 = (int **)(fVar13 * local_134 * DAT_00baa75c);
            local_128 = local_138;
            FUN_0041d520();
            local_13c = local_13c * local_134 * DAT_00baa75c;
            local_124 = local_13c;
            uVar5 = FUN_006eef60();
            local_130 = (char *)((float)local_138 + (float)param_1[0xcf]);
            fStack_12c = local_13c + (float)param_1[0xd0];
            piVar9 = (int *)FUN_006fe410(1000,99,&local_130,&local_128,param_1,1,uVar5,0);
            (**(code **)(*piVar9 + 0xc))();
          }
        }
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2e8] = 0xc;
        FUN_0040a380(&DAT_00b1bc54,0);
        param_1[0x2d9] = 4;
        param_1[0x104] = 0;
      }
    }
    else if (iVar6 == 7) {
      cVar4 = FUN_0040b030();
      pcVar12 = local_130;
      if (cVar4 != '\0') {
        param_1[0x62] = 0;
        param_1[0x57] = 0;
        if ((0.0 < *(float *)(local_130 + 0x7240)) ||
           ((*(uint *)(*(int *)(local_130 + 4) + 0x44) >> 5 & 1) != 0)) {
          uVar8 = FUN_006eef60();
          for (iVar6 = uVar8 % 6 + 4; iVar6 != 0; iVar6 = iVar6 + -1) {
            iVar10 = FUN_006eef60();
            local_13c = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baa704;
            local_13c = local_13c + local_13c;
            iVar10 = FUN_006eef60();
            local_134 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                        DAT_00ba9ff4;
            fVar13 = local_13c;
            FUN_0041d540();
            local_138 = (int **)(fVar13 * local_134 * DAT_00baa75c);
            local_128 = local_138;
            FUN_0041d520();
            local_13c = local_13c * local_134 * DAT_00baa75c;
            local_124 = local_13c;
            uVar5 = FUN_006eef60();
            local_120 = (float)local_138 + (float)param_1[0xcf];
            local_11c = local_13c + (float)param_1[0xd0];
            piVar9 = (int *)FUN_006fe410(1000,99,&local_120,&local_128,param_1,1,uVar5,0);
            (**(code **)(*piVar9 + 0xc))();
            iVar10 = FUN_006eef60();
            fVar16 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                     DAT_00ba9ff4 + (float)DAT_00baa454;
            fVar13 = fVar16 * DAT_00c3793c;
            piVar9[0x3a] = (int)(fVar16 * DAT_00c37940);
            piVar9[0x39] = (int)fVar13;
            pcVar12 = local_130;
          }
        }
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = 3;
        param_1[0x104] = 0;
      }
    }
    else if (iVar6 == 4) {
      if (0 < iVar10) {
        iVar10 = ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + iVar10;
        iVar6 = 0;
        if (0 < iVar10) {
          iVar6 = iVar10;
        }
        param_1[0x2e8] = iVar6;
      }
      iVar6 = FUN_006be840();
      pfVar11 = (float *)(param_1 + 0xcf);
      *(bool *)(param_1 + 0x52) =
           *(float *)(iVar6 + 0x33c) <= (float)param_1[0xcf] &&
           (float)param_1[0xcf] != *(float *)(iVar6 + 0x33c);
      cVar4 = FUN_006ac710(4,0);
      if (((cVar4 != '\0') && (param_1[0x2e8] < 1)) && ((param_1[0x5a] & 0x1000a00U) == 0)) {
        iVar6 = FUN_006be840();
        local_138 = *(int ***)(iVar6 + 0x33c);
        local_13c = *(float *)(iVar6 + 0x340);
        iVar6 = FUN_006be840();
        local_134 = (*(float *)(iVar6 + 0x360) * DAT_00baa6fc + (float)local_138) - *pfVar11;
        local_13c = (*(float *)(iVar6 + 0x364) * DAT_00baa6fc + local_13c) - (float)param_1[0xd0];
        local_138 = (int **)(local_13c * local_13c + local_134 * local_134);
        if ((float)local_138 < DAT_00baac44) {
          iVar6 = FUN_006be840();
          local_120 = *(float *)(iVar6 + 0x33c);
          local_11c = *(float *)(iVar6 + 0x340);
          cVar4 = FUN_007f0df0(pfVar11,&local_120,2,0,0,0,0);
          if (cVar4 != '\0') {
            FUN_006d6ba0(0xe2,0x3f800000,2,0,0x3f800000);
            ppiVar15 = local_138;
            FUN_00435a50();
            fVar13 = DAT_00baa848 / (float)ppiVar15;
            param_1[0xd9] = (int)((fVar13 * local_13c) / (float)param_1[0xdb]);
            param_1[0xd8] = (int)((fVar13 * local_134) / (float)param_1[0xdb]);
            *(bool *)(param_1 + 0x52) = local_134 < 0.0;
            param_1[0x2d9] = 8;
            param_1[0x104] = 0;
            param_1[0x2e8] = 0x1e;
          }
        }
      }
      iVar6 = param_1[0x104];
      if (iVar6 < 0x10) {
LAB_00549db8:
        if ((999 < iVar6) ||
           ((cVar4 = FUN_00417430(0x20000000,0), cVar4 != '\0' &&
            (uVar8 = FUN_006eef60(), uVar8 % 0x32 == 0)))) goto LAB_00549de3;
      }
      else {
        uVar8 = FUN_006eef60();
        if (uVar8 % 0x1e != 0) {
          iVar6 = param_1[0x104];
          goto LAB_00549db8;
        }
LAB_00549de3:
        iVar6 = param_1[0x2f0];
        uVar5 = FUN_006bec40(&local_120,0);
        iVar6 = FUN_00548f30(pfVar11,uVar5,iVar6);
        if (-1 < iVar6) {
          param_1[0x2f0] = iVar6;
          param_1[0x104] = 0;
          FUN_0040a380("DigIn",0);
          param_1[0x2d9] = 7;
        }
      }
      pcVar12 = local_130;
      if ((0 < param_1[0x104]) || (DAT_00ba9fe4 < (float)param_1[5])) {
        param_1[0x104] = ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]) + param_1[0x104];
      }
    }
    else {
      pcVar12 = local_130;
      if (iVar6 == 8) {
        local_13c = (float)param_1[0xce] - (float)param_1[0xd0];
        local_138 = (int **)((float)param_1[0xcd] - (float)param_1[0xcf]);
        fVar13 = local_13c * local_13c + (float)local_138 * (float)local_138;
        FUN_00435a50();
        if ((DAT_00baa784 <= fVar13) || (0xe < iVar10)) {
          fVar16 = (float)param_1[0xdb];
          fVar13 = DAT_00baa354 / fVar13;
          if ((NAN(fVar16) || NAN(DAT_00ba9fe4)) == (fVar16 == DAT_00ba9fe4)) {
            param_1[0xd8] =
                 (int)(((float)local_138 * fVar13 * (float)param_1[0xe7]) / fVar16 +
                      (float)param_1[0xd8]);
            param_1[0xd9] =
                 (int)((local_13c * fVar13 * (float)param_1[0xe7]) / fVar16 + (float)param_1[0xd9]);
            iVar10 = param_1[0x2e8];
            fVar16 = (float)param_1[0xdb];
          }
          fVar13 = (float)param_1[0xe7];
          fVar17 = (float)iVar10 * _DAT_00baa03c + DAT_00baa3e0;
          if ((NAN(fVar13) || NAN((float)DAT_00baa454)) == (fVar13 == (float)DAT_00baa454)) {
            fVar17 = fVar17 / ((fVar17 + fVar13) - fVar17 * fVar13);
          }
          param_1[0xdb] = (int)(fVar16 * fVar17);
        }
        else {
          uVar8 = FUN_006eef60();
          iVar10 = param_1[0x2e8];
          param_1[0x2d9] = 4;
          param_1[0x104] = -(uint)(uVar8 % 5 != 0) & 1000;
        }
        param_1[0x2e8] = ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + iVar10;
        pcVar12 = local_130;
      }
    }
LAB_00549e6d:
    if ((param_1[0x2d9] != 8) &&
       ((fVar13 = (float)param_1[0xcd],
        (NAN(fVar13) || NAN(DAT_00c7b640)) == (fVar13 == DAT_00c7b640) ||
        ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) == ((float)param_1[0xce] == DAT_00c7b644))
        ))) {
      param_1[0xd8] = (int)(fVar13 - (float)param_1[0xcf]);
      param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
    }
    uVar8 = param_1[0x2f0];
    if ((((-1 < (int)uVar8) && (param_1[0x2d9] != 3)) && (uVar8 < 0x1c0)) &&
       ((*(int *)(pcVar12 + uVar8 * 4 + 0x24) != 0 &&
        (*(int *)(*(int *)(pcVar12 + uVar8 * 4 + 0x24) + 4) == 7)))) {
      *(undefined2 *)(pcVar12 + uVar8 * 2 + 0xe6c) = 5;
    }
    if (((param_1[0x62] != 0) &&
        (((NAN((float)param_1[0xcd]) || NAN(DAT_00c7b640)) == ((float)param_1[0xcd] == DAT_00c7b640)
         || ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) ==
             ((float)param_1[0xce] == DAT_00c7b644))))) &&
       (iVar6 = FUN_007f0780(param_1[0xcd],param_1[0xce]), iVar6 != 1)) {
      FUN_00435c70();
      (**(code **)(*param_1 + 0x24))();
      FUN_00aef12b();
      return;
    }
LAB_0054975a:
    FUN_00aef12b();
    return;
  }
  if (9 < uVar8) goto LAB_0054949f;
  local_13c = 0.0;
  do {
    uVar5 = FUN_006eef60();
    uVar5 = FUN_006fe410(0x137,10,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar5,0);
    iVar6 = __RTDynamicCast(uVar5,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                            &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor);
    if (*(int *)(iVar6 + 0x3bc) != 0) {
      local_138 = (int **)(iVar6 + 0x3bc);
      FUN_004cf210();
    }
    *(int **)(iVar6 + 0x3bc) = param_1;
    FUN_004cdcf0();
    *(undefined4 *)(iVar6 + 0x188) = 0;
    fVar13 = (float)((int)local_13c + 1);
    *(undefined4 *)(iVar6 + 0x15c) = 0;
    *(undefined4 *)(iVar6 + 0x354) = 0xffffff9c;
    *(uint *)(iVar6 + 0x168) = *(uint *)(iVar6 + 0x168) & 0xfffffffb | 0x40000;
    *(undefined4 *)(iVar6 + 0x16c) = *(undefined4 *)(iVar6 + 0x16c);
    *(undefined *)(iVar6 + 0x171) = 0;
    *(float *)(iVar6 + 0xbb0) = (float)(int)local_13c;
    local_13c = fVar13;
  } while ((int)fVar13 < 8);
  param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
  param_1[0x62] = 0;
  param_1[0x2f0] = -1;
  param_1[0x2f1] = -1;
  param_1[0x5b] = param_1[0x5b];
  ppbVar3 = (byte **)param_1[0x1f];
  if (ppbVar3 == (byte **)0x0) {
LAB_00549467:
    cVar4 = FUN_0040a5d0("DigIn",1);
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
  else {
    ppbVar7 = ppbVar3;
    if (&DAT_0000000f < ppbVar3[5]) {
      ppbVar7 = (byte **)*ppbVar3;
    }
    pcVar12 = "DigIn";
    do {
      bVar2 = *(byte *)ppbVar7;
      bVar14 = bVar2 < (byte)*pcVar12;
      if (bVar2 != *pcVar12) {
LAB_00549451:
        uVar8 = -(uint)bVar14 | 1;
        goto LAB_00549456;
      }
      if (bVar2 == 0) break;
      bVar2 = *(byte *)((int)ppbVar7 + 1);
      bVar14 = bVar2 < ((byte *)pcVar12)[1];
      if (bVar2 != ((byte *)pcVar12)[1]) goto LAB_00549451;
      ppbVar7 = (byte **)((int)ppbVar7 + 2);
      pcVar12 = (char *)((byte *)pcVar12 + 2);
    } while (bVar2 != 0);
    uVar8 = 0;
LAB_00549456:
    if ((uVar8 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
    goto LAB_00549467;
  }
  if (param_1[0x1f] != 0) {
    FUN_00408d00();
  }
LAB_0054949f:
  param_1[0x2d9] = 3;
  FUN_00aef12b();
  return;
}

