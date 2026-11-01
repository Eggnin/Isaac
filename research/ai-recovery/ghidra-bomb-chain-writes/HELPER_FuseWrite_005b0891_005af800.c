/* Local J460 decompiler output.
 * VA: 0x005b0891
 * Entry: 005af800
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Candidate immediate-zero +0x410 write, entity type not yet classified
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Candidate immediate-zero +0x410
   write, entity type not yet classified */

void __fastcall HELPER_FuseWrite_005b0891(int *param_1)

{
  code *pcVar1;
  float *pfVar2;
  char cVar3;
  int iVar4;
  float *pfVar5;
  undefined4 uVar6;
  int *piVar7;
  int *piVar8;
  uint uVar9;
  int iVar10;
  float fVar11;
  int **ppiVar12;
  float fVar13;
  int **ppiVar14;
  int **ppiVar15;
  double dVar16;
  undefined4 uVar17;
  TypeDescriptor *pTVar18;
  undefined8 uVar19;
  float local_110;
  float local_10c;
  undefined local_105;
  float local_104;
  float local_100;
  int *local_fc;
  float local_f8;
  int **local_f4;
  int *local_f0;
  int **local_ec;
  undefined local_e8 [148];
  int local_54;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_f8 = *(float *)(DAT_00c71678 + 0x18300);
  local_f0 = (int *)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  if (param_1[0xc] != 0) {
    if (param_1[0xef] == 0) {
      local_3c = 0;
      local_38 = 0;
      local_34 = 0;
      local_30 = 0;
      local_2c = DAT_00c7b640;
      local_28 = DAT_00c7b644;
      local_24 = DAT_00c7b640;
      local_20 = DAT_00c7b644;
      local_1c = 0;
      local_18 = 0;
      (**(code **)(*param_1 + 0x24))();
      FUN_00aef12b();
      return;
    }
    if (param_1[0x2d9] != 0) {
      FUN_005ae490();
      FUN_005ae840();
      param_1[0xd4] = param_1[0x2ed];
      FUN_00aef12b();
      return;
    }
  }
  switch(param_1[0x2d9]) {
  case 0:
    iVar10 = 0;
    if (param_1[0xc] == 0) {
      piVar7 = (int *)0x0;
      local_f0 = param_1;
      do {
        uVar6 = FUN_006eef60();
        local_fc = (int *)((int)piVar7 + 1);
        piVar7 = (int *)HELPER_Entity_SpawnRelay
                                  (param_1[10],param_1[0xb],param_1 + 0xcf,&DAT_00c7b640,param_1,
                                   local_fc,uVar6);
        if (piVar7[0xef] != 0) {
          local_ec = (int **)(piVar7 + 0xef);
          FUN_004cf210();
        }
        piVar7[0xef] = (int)local_f0;
        if (local_f0 != (int *)0x0) {
          FUN_004cdcf0();
        }
        local_f4 = (int **)(local_f0 + 0xf0);
        if (local_f0[0xf0] != 0) {
          local_ec = local_f4;
          FUN_004cf210();
        }
        *local_f4 = piVar7;
        FUN_004cdcf0();
        local_f0 = piVar7;
        (**(code **)(*piVar7 + 0xc))();
        piVar7 = local_fc;
      } while ((int)local_fc < 6);
      iVar10 = param_1[0x2d9];
      param_1[0x104] = 0x1e;
    }
    param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
    param_1[0x5b] = param_1[0x5b];
    param_1[0x2ec] = 0;
    param_1[0x2ed] = 0x41600000;
    if (iVar10 != 3) {
      param_1[0x2d9] = 3;
      if (param_1[0x2f1] == 1) {
        param_1[0x104] = 0x3c;
        FUN_005ae490();
        FUN_005ae840();
        FUN_00aef12b();
        return;
      }
      uVar9 = FUN_006eef60();
      param_1[0x104] = uVar9 % 0x1e + 0x1e;
    }
    FUN_005ae490();
    FUN_005ae840();
    FUN_00aef12b();
    return;
  case 3:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa428);
    FUN_005ae490();
    FUN_005aef20();
    FUN_005ae840();
    param_1[0x2f0] = 0;
    if (((0 < param_1[0x104]) && (param_1[0x2e8] == 0)) &&
       (iVar10 = param_1[0x104] - (int)local_f0, param_1[0x104] = iVar10, iVar10 < 1)) {
      if (param_1[0x2f1] == 1) {
        param_1[0x2d9] = 0x10;
        local_f0 = (int *)0x34;
        FUN_00956780();
        FUN_0092dc30(local_f0,0x3f800000,2,0,0x3f800000,0);
        FUN_00703670();
        fVar11 = local_f8;
        param_1[0x104] = 0x1e;
        ppiVar12 = (int **)FUN_00812d00();
        local_fc = *ppiVar12;
        iVar10 = FUN_006be840();
        if (*(float *)(iVar10 + 0x33c) <= (float)local_fc) {
          local_f8 = 0.0;
        }
        else {
          local_f8 = (float)(*(int *)((int)fVar11 + 0xc) + -1);
        }
        iVar10 = FUN_006be840();
        local_ec = (int **)((*(float *)(iVar10 + 0x340) - DAT_00baaa00) / DAT_00baa904 +
                           DAT_00baa2d0);
        dVar16 = floor((double)(float)local_ec);
        iVar10 = (int)dVar16;
        if (iVar10 < 1) {
          iVar10 = 1;
        }
        local_ec = (int **)(*(int *)((int)fVar11 + 0x10) + -2);
        local_f0 = (int *)local_ec;
        if (iVar10 <= (int)local_ec) {
          local_f0 = (int *)iVar10;
        }
        iVar4 = FUN_00813420(local_f8,local_f0);
        iVar10 = (int)local_f0;
        if ((iVar4 != 0) && (*(int *)(iVar4 + 4) == 0x10)) {
          if (((int)local_f0 < 2) ||
             (((int **)local_f0 != local_ec && (uVar9 = FUN_006eef60(), (uVar9 & 1) != 0)))) {
            iVar10 = (int)local_f0 + 1;
          }
          else {
            iVar10 = (int)local_f0 + -1;
          }
        }
        iVar10 = FUN_00812e60(local_f8,iVar10);
        fVar13 = (float)(iVar10 % *(int *)((int)fVar11 + 0xc)) * DAT_00baa904 + DAT_00baa904;
        fVar11 = (float)(iVar10 / *(int *)((int)fVar11 + 0xc)) * DAT_00baa904 + DAT_00baaa00;
        param_1[0xcd] = (int)fVar13;
        param_1[0xce] = (int)fVar11;
        local_f0 = DAT_00baa454;
        if ((float)local_fc < fVar13) {
          local_f0 = DAT_00baad50;
        }
        uVar9 = FUN_006eef60();
        local_ec = (int **)((uVar9 & 3) + 3);
        if (local_ec != (int **)0x0) {
          local_f4 = (int **)((uint)local_f0 ^ DAT_00bacb70);
          do {
            uVar6 = FUN_006eef60();
            iVar10 = FUN_006eef60();
            local_fc = (int *)((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)])
                               * DAT_00ba9ff4 * DAT_00baa784);
            iVar10 = FUN_006eef60();
            fVar11 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa784 - DAT_00baa6bc;
            local_110 = (float)local_f0 * (float)local_fc + fVar11 * 0.0;
            local_10c = (float)local_f4 * fVar11 + (float)local_fc * 0.0;
            iVar10 = FUN_006eef60();
            fVar11 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_fc = (int *)(fVar11 + fVar11);
            iVar10 = FUN_006eef60();
            local_f8 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa87c;
            fVar11 = (float)local_fc;
            FUN_0041d540();
            local_104 = fVar11 * local_f8 + (float)param_1[0xcd];
            fVar11 = (float)local_fc;
            FUN_0041d520();
            uVar19 = 0xc5d5ac;
            local_100 = fVar11 * local_f8 + (float)param_1[0xce];
            pTVar18 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar17 = 0;
            uVar6 = HELPER_Entity_SpawnRelay(1000,0x3b,&local_104,&local_110,0,0,uVar6);
            piVar7 = (int *)__RTDynamicCast(uVar6,uVar17,pTVar18,uVar19);
            local_fc = DAT_00baa454;
            if (((float)piVar7[0xd0] - (float)param_1[0xd0]) * (float)local_f4 +
                ((float)piVar7[0xcf] - (float)param_1[0xcf]) * 0.0 < 0.0) {
              local_fc = DAT_00baad50;
            }
            iVar10 = FUN_006eef60();
            piVar7[0x11d] =
                 (int)(((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa630) * (float)local_fc);
            uVar9 = FUN_006eef60();
            iVar10 = uVar9 % 0xf + 0xf;
            piVar7[0x117] = iVar10;
            piVar7[0x118] = iVar10;
            (**(code **)(*piVar7 + 0xc))();
            local_ec = (int **)((int)local_ec + -1);
          } while (local_ec != (int **)0x0);
        }
        uVar6 = FUN_00407170();
        uVar9 = FUN_006eef60();
        FUN_00703330(param_1 + 0xcd,4,uVar9 % 5 + 6,0x41000000,uVar6,0x47c35000,0);
      }
      else {
        FUN_005ae230();
      }
    }
    break;
  case 4:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa418);
    FUN_005ae490();
    FUN_005ae840();
    if ((0 < param_1[0x104]) &&
       ((iVar10 = param_1[0x104] - (int)local_f0, param_1[0x104] = iVar10, iVar10 < 1 ||
        (param_1[0x2f1] == 1)))) {
      FUN_005ae230();
    }
    if (((float)param_1[0x2ed] <= 0.0) || ((float)param_1[0x2ec] < 0.0)) {
      FUN_005aef20();
      break;
    }
    param_1[0x2e9] = -1;
    goto LAB_005b0665;
  case 5:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3c4);
    if (param_1[0x2f0] != 3) {
      param_1[0x2f0] = 3;
      FUN_006d6ba0(0x8e,0x3f800000,2,0,0x3f800000);
      if ((float)param_1[0xd9] < DAT_00ba9fe4) {
        uVar19 = 0xb62a40;
      }
      else {
        uVar19 = 0xb62a50;
      }
      HELPER_0040a380_AnimationActionA(uVar19);
    }
    FUN_005ae840();
    iVar10 = param_1[0x2fb];
    if (iVar10 != 0) {
      *(undefined4 *)(iVar10 + 0x360) = DAT_00c7b640;
      *(undefined4 *)(iVar10 + 0x364) = DAT_00c7b644;
      iVar10 = param_1[0x2fb];
      *(int *)(iVar10 + 0x33c) = param_1[0xcf];
      *(int *)(iVar10 + 0x340) = param_1[0xd0];
      iVar10 = param_1[0x2fb];
      if (iVar10 != 0) {
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
        if (*(int *)(iVar10 + 0x28) == 4) {
          *(undefined4 *)(iVar10 + 0x410) = 0;
          *(undefined4 *)(iVar10 + 0x414) = 0;
          (**(code **)(*(int *)param_1[0x2fb] + 0xc))();
        }
      }
    }
    iVar10 = param_1[0xf0];
    param_1[0x2f0] = 2;
    param_1[0x2d9] = 4;
    if (iVar10 != 0) {
      local_104 = *(float *)(iVar10 + 0x33c) - (float)param_1[0xcf];
      local_100 = *(float *)(iVar10 + 0x340) - (float)param_1[0xd0];
      pfVar5 = (float *)FUN_00a10030();
      uVar9 = FUN_006eef60();
      fVar11 = DAT_00baadd8;
      if ((uVar9 & 1) != 0) {
        fVar11 = DAT_00baa854;
      }
      ppiVar12 = (int **)(fVar11 * DAT_00baa088);
      local_ec = ppiVar12;
      FUN_0041d540();
      local_f4 = ppiVar12;
      ppiVar12 = local_ec;
      FUN_0041d520();
      fVar11 = (pfVar5[1] * (float)local_f4 + *pfVar5 * (float)ppiVar12) * DAT_00baa81c;
      param_1[0xd8] =
           (int)((*pfVar5 * (float)local_f4 - pfVar5[1] * (float)ppiVar12) * DAT_00baa81c);
      param_1[0xd9] = (int)fVar11;
    }
    param_1[0x104] = 1;
    break;
  case 6:
    FUN_005ae490();
    FUN_005ae840();
    fVar11 = (float)param_1[0x2ed];
    if ((fVar11 <= 0.0) || ((float)param_1[0x2ec] <= 0.0)) {
      if ((0xf < param_1[0x104]) && (param_1[0x2f0] == 0)) {
        param_1[0x2f0] = 1;
      }
      iVar10 = param_1[0x104] + (int)local_f0;
      param_1[0x104] = iVar10;
      if ((((0x2d < iVar10) && (fVar11 <= 0.0)) &&
          ((NAN(fVar11) || NAN(DAT_00baadb4)) != (fVar11 == DAT_00baadb4))) &&
         (param_1[0x104] = 0x96, param_1[0x2d9] != 4)) {
        param_1[0x2d9] = 4;
      }
      break;
    }
LAB_005b0665:
    if (param_1[0x2d9] != 3) {
      param_1[0x2d9] = 3;
      if (param_1[0x2f1] == 1) {
        param_1[0x104] = 0x3c;
      }
      else {
        uVar9 = FUN_006eef60();
        param_1[0x104] = uVar9 % 0x1e + 0x1e;
      }
    }
    break;
  case 8:
    param_1[0x2ed] = (int)&DAT_bf800000;
    param_1[0x2ec] = 0;
    param_1[0x62] = 4;
    HELPER_0040a380_AnimationActionA(&DAT_00b1d2cc,0);
    iVar10 = FUN_0040b220();
    *(undefined4 *)(iVar10 + 0x54) = 0x3f800000;
    fVar11 = (float)param_1[0xdb] * DAT_00baa280;
    param_1[0xdb] = (int)fVar11;
    param_1[0xd8] = (int)(((float)param_1[0xcd] - (float)param_1[0xcf]) / fVar11);
    param_1[0xd9] = (int)(((float)param_1[0xce] - (float)param_1[0xd0]) / fVar11);
    iVar10 = FUN_0040a780();
    if (iVar10 == 2) {
      FUN_005ae140();
    }
    cVar3 = HELPER_0040b030_AnimationEventPredicateD();
    if (cVar3 != '\0') {
      local_ec = (int **)0xd;
      FUN_00956780();
      FUN_0092dc30(local_ec,0x3f800000,2,0,0x3f800000,0);
      AI_0043ef30();
      cVar3 = FUN_005ae1d0();
      if (cVar3 == '\0') {
        iVar10 = FUN_00738470();
        local_54 = (iVar10 != 0x1c) + 3;
      }
      iVar10 = FUN_006be840();
      local_ec = *(int ***)(iVar10 + 0x33c);
      local_f4 = *(int ***)(iVar10 + 0x340);
      iVar10 = FUN_006be840();
      fVar11 = ((float)local_f4 - (float)param_1[0xd0]) * ((float)local_f4 - (float)param_1[0xd0]) +
               ((float)local_ec - (float)param_1[0xcf]) * ((float)local_ec - (float)param_1[0xcf]);
      FUN_00435a50();
      local_104 = *(float *)(iVar10 + 0x360) * fVar11 * DAT_00baa08c + (float)local_ec;
      local_100 = *(float *)(iVar10 + 0x364) * fVar11 * DAT_00baa08c + (float)local_f4;
      HELPER_Entity_NPC_FireBossProjectiles(0xd,&local_104,0,local_e8);
    }
    if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
    FUN_005ae140();
    if (param_1[0x2d9] != 3) {
      param_1[0x2d9] = 3;
      if (param_1[0x2f1] == 1) {
        param_1[0x104] = 0x3c;
      }
      else {
        uVar9 = FUN_006eef60();
        param_1[0x104] = uVar9 % 0x1e + 0x1e;
      }
    }
    param_1[0x2ed] = 0x41600000;
    iVar10 = FUN_0040b220();
    *(undefined4 *)(iVar10 + 0x54) = 0;
    param_1[0x104] = 0xf;
    goto LAB_005b11c4;
  case 9:
    param_1[0x2ed] = (int)&DAT_bf800000;
    param_1[0x2ec] = 0;
    cVar3 = HELPER_0040b090_AnimationEventPredicateE();
    if (cVar3 == '\0') {
      param_1[0x62] = 0;
    }
    HELPER_0040a380_AnimationActionA(&DAT_00b1d2ec,0);
    iVar10 = FUN_0040b220();
    *(undefined4 *)(iVar10 + 0x54) = 0x3f800000;
    fVar11 = (float)param_1[0xdb] * DAT_00baa280;
    param_1[0xdb] = (int)fVar11;
    param_1[0xd8] = (int)(((float)param_1[0xcd] - (float)param_1[0xcf]) / fVar11);
    param_1[0xd9] = (int)(((float)param_1[0xce] - (float)param_1[0xd0]) / fVar11);
    cVar3 = HELPER_0040b030_AnimationEventPredicateD();
    if (cVar3 != '\0') {
      param_1[0x62] = 4;
      FUN_005ae140();
      local_fc = (int *)0x0;
      if (*(int *)((int)local_f8 + 0x1264) != 0) {
        do {
          ppiVar12 = *(int ***)(*(int *)((int)local_f8 + 0x125c) + (int)local_fc * 4);
          local_ec = ppiVar12;
          cVar3 = HELPER_Entity_DamageFilter();
          if ((cVar3 == '\0') || ((ppiVar12[10] == (int *)0x3e && (ppiVar12[0xb] == (int *)0x3)))) {
LAB_005b0de8:
            if (ppiVar12[10] == (int *)0x1) {
              fVar11 = ((float)param_1[0xd0] - (float)ppiVar12[0xd0]) *
                       ((float)param_1[0xd0] - (float)ppiVar12[0xd0]) +
                       ((float)param_1[0xcf] - (float)ppiVar12[0xcf]) *
                       ((float)param_1[0xcf] - (float)ppiVar12[0xcf]);
              FUN_00435a50();
              if (fVar11 < DAT_00baa904) {
                pcVar1 = (code *)(*ppiVar12)[8];
                FUN_00431310();
                (*pcVar1)(0x3f800000,0,0,&local_3c,0x1e);
                ppiVar12 = local_ec;
                goto LAB_005b0e62;
              }
            }
          }
          else {
            fVar11 = ((float)param_1[0xd0] - (float)ppiVar12[0xd0]) *
                     ((float)param_1[0xd0] - (float)ppiVar12[0xd0]) +
                     ((float)param_1[0xcf] - (float)ppiVar12[0xcf]) *
                     ((float)param_1[0xcf] - (float)ppiVar12[0xcf]);
            FUN_00435a50();
            if (DAT_00baa904 <= fVar11) goto LAB_005b0de8;
            local_3c = 0;
            local_38 = 0;
            local_34 = 0;
            local_30 = 0;
            local_2c = DAT_00c7b640;
            local_28 = DAT_00c7b644;
            local_24 = DAT_00c7b640;
            local_20 = DAT_00c7b644;
            local_1c = 0;
            local_18 = 0;
            (*(code *)(*ppiVar12)[8])(0x41c80000,0,0,&local_3c);
LAB_005b0e62:
            local_ec = (int **)((float)ppiVar12[0xcf] - (float)param_1[0xcf]);
            local_f4 = (int **)((float)ppiVar12[0xd0] - (float)param_1[0xd0]);
            fVar11 = (float)local_ec * (float)local_ec + (float)local_f4 * (float)local_f4;
            FUN_00435a50();
            ppiVar14 = local_ec;
            ppiVar15 = local_f4;
            if (0.0 < fVar11) {
              ppiVar14 = (int **)((float)local_ec * ((float)DAT_00baa454 / fVar11));
              ppiVar15 = (int **)((float)local_f4 * ((float)DAT_00baa454 / fVar11));
            }
            piVar7 = ppiVar12[0xdb];
            fVar11 = (float)ppiVar14 * DAT_00baa854;
            if (NAN((float)piVar7) == ((float)piVar7 == 0.0)) {
              ppiVar12[0xd9] =
                   (int *)(((float)ppiVar12[0xe7] * (float)ppiVar15 * DAT_00baa854) / (float)piVar7
                          + (float)ppiVar12[0xd9]);
              ppiVar12[0xd8] =
                   (int *)(((float)ppiVar12[0xe7] * fVar11) / (float)piVar7 + (float)ppiVar12[0xd8])
              ;
            }
          }
          local_fc = (int *)((int)local_fc + 1);
        } while (local_fc < *(int **)((int)local_f8 + 0x1264));
      }
      cVar3 = FUN_005ae0b0();
      if (cVar3 == '\0') {
        local_f4 = (int **)FUN_00456620();
        local_ec = (int **)0x89;
        FUN_00956780();
        FUN_0092dc30(local_ec,0x3f800000,2,0,0x3f800000,0);
        FUN_00703670();
        if (local_f4 != (int **)0x0) {
          pcVar1 = (code *)(*local_f4)[5];
          FUN_00431310();
          (*pcVar1)(1,&local_3c);
        }
      }
      cVar3 = FUN_00589f90(param_1 + 0xcf,0);
      if (cVar3 != '\0') {
        local_f0 = (int *)FUN_00812c90();
        local_fc = (int *)FUN_006eef60();
        if (((-1 < (int)local_f0) && ((int)local_f0 < 0x1c0)) ||
           ((FUN_00a112c0(0x10,"SpawnGridEntity: Grid index invalid\n"), -1 < (int)local_f0 &&
            ((int)local_f0 < 0x1c0)))) {
          if ((*(int *)((int)local_f8 + 0x76c + (int)local_f0 * 4) < 0x385) &&
             (local_ec = (int **)FUN_0070b2e0(), local_ec != (int **)0x0)) {
            local_f4 = *(int ***)((int)local_f8 + 0x24 + (int)local_f0 * 4);
            if (local_f4 != (int **)0x0) {
              (*(code *)**local_f4)();
            }
            *(int ***)((int)local_f8 + 0x24 + (int)local_f0 * 4) = local_ec;
            local_ec[2] = (int *)0x0;
            local_ec[6] = (int *)0x0;
            FUN_00709db0();
          }
          piVar7 = *(int **)((int)local_f8 + 0x24 + (int)local_f0 * 4);
          if ((piVar7 != (int *)0x0) && (piVar7[1] == 7)) {
            (**(code **)(*piVar7 + 4))();
          }
        }
        uVar6 = FUN_00407170();
        FUN_00703330(param_1 + 0xcf,4,4,0x40c00000,uVar6,0x47c35000,0);
      }
    }
    if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
    FUN_005ae140();
    if (param_1[0x2d9] != 3) {
      param_1[0x2d9] = 3;
      if (param_1[0x2f1] == 1) {
        param_1[0x104] = 0x3c;
      }
      else {
        uVar9 = FUN_006eef60();
        param_1[0x104] = uVar9 % 0x1e + 0x1e;
      }
    }
    param_1[0x2ed] = 0x41600000;
    iVar10 = FUN_0040b220();
    *(undefined4 *)(iVar10 + 0x54) = 0;
    param_1[0x104] = 0x1e;
LAB_005b11c4:
    param_1[0x62] = 0;
    break;
  case 0x10:
    FUN_005ae490();
    FUN_005ae840();
    iVar10 = param_1[0x104];
    param_1[0x2f0] = 0;
    param_1[0x104] = iVar10 - (int)local_f0;
    if (iVar10 - (int)local_f0 < 1) {
      param_1[0xcf] = param_1[0xcd];
      param_1[0xd0] = param_1[0xce];
      param_1[0x2ed] = -0x3ea00000;
      param_1[0x2ec] = -0x3f800000;
      FUN_00499380();
      FUN_00499380();
      local_f4 = (int **)FUN_00812d00();
      local_ec = (int **)param_1[0xcd];
      local_f4 = (int **)*local_f4;
      pfVar5 = (float *)FUN_00812d00();
      fVar11 = DAT_00baadec;
      if ((float)local_ec < *pfVar5) {
        fVar11 = DAT_00baa87c;
      }
      param_1[0xd8] = (int)fVar11;
      param_1[0xd9] = 0;
      for (iVar10 = param_1[0xf0]; iVar10 != 0; iVar10 = *(int *)(iVar10 + 0x3c0)) {
        *(int *)(iVar10 + 0x33c) = param_1[0xcf];
        *(int *)(iVar10 + 0x340) = param_1[0xd0];
        *(int *)(iVar10 + 0xbb4) = param_1[0x2ed];
        *(int *)(iVar10 + 0xbb0) = param_1[0x2ec];
        FUN_00499380();
        FUN_00499380();
      }
      uVar6 = FUN_006eef60();
      piVar7 = (int *)HELPER_Entity_SpawnRelay(1000,0x89,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar6);
      local_105 = (float)local_f4 <= (float)local_ec;
      *(undefined *)(piVar7 + 0x52) = local_105;
      (**(code **)(*piVar7 + 0xc))();
      uVar6 = FUN_006eef60();
      piVar7 = (int *)HELPER_Entity_SpawnRelay(1000,0x89,param_1 + 0xcf,&DAT_00c7b640,0,1,uVar6);
      *(undefined *)(piVar7 + 0x52) = local_105;
      (**(code **)(*piVar7 + 0xc))();
      uVar9 = FUN_006eef60();
      local_f0 = (int *)0x0;
      local_fc = (int *)(uVar9 % 3 + 3);
      if (local_fc != (int *)0x0) {
        do {
          iVar10 = FUN_006eef60();
          local_ec = (int **)((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                              DAT_00ba9ff4 * DAT_00baa784 - DAT_00baa6bc);
          iVar10 = FUN_006eef60();
          local_10c = (float)local_ec;
          local_110 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa784;
          if (local_f0 != (int *)0x0) {
            local_110 = local_110 * (float)DAT_00baad50;
          }
          uVar6 = FUN_006eef60();
          iVar10 = FUN_006eef60();
          fVar11 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa704;
          local_ec = (int **)(fVar11 + fVar11);
          iVar10 = FUN_006eef60();
          local_f4 = (int **)((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                             DAT_00ba9ff4);
          fVar11 = (float)local_ec;
          FUN_0041d540();
          local_104 = fVar11 * DAT_00baa87c * (float)local_f4 + (float)param_1[0xcf];
          fVar11 = (float)local_ec;
          FUN_0041d520();
          local_100 = fVar11 * DAT_00baa87c * (float)local_f4 + (float)param_1[0xd0];
          piVar8 = (int *)HELPER_Entity_SpawnRelay(1000,0x3b,&local_104,&local_110,0,0,uVar6);
          iVar10 = FUN_006eef60();
          fVar11 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa630;
          piVar8[0x11d] = (int)fVar11;
          piVar7 = DAT_00baad50;
          if (local_f0 == (int *)0x0) {
            piVar7 = DAT_00baa454;
          }
          if ((float)piVar7 * ((float)piVar8[0xcf] - (float)param_1[0xcf]) +
              ((float)piVar8[0xd0] - (float)param_1[0xd0]) * 0.0 < 0.0) {
            piVar8[0x11d] = (uint)fVar11 ^ DAT_00bacb70;
          }
          uVar9 = FUN_006eef60();
          iVar10 = uVar9 % 0xf + 0xf;
          piVar8[0x117] = iVar10;
          piVar8[0x118] = iVar10;
          (**(code **)(*piVar8 + 0xc))();
          local_f0 = (int *)((int)local_f0 + 1);
        } while ((int)local_f0 < (int)local_fc);
      }
      local_ec = (int **)0x3;
      do {
        pfVar5 = (float *)FUN_00813520(&local_110,param_1 + 0xcf,0x42a00000,1,
                                       DAT_00ba9fe4 <
                                       *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7240),0);
        iVar10 = FUN_006eef60();
        fVar11 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa704;
        local_f4 = (int **)(fVar11 + fVar11);
        ppiVar12 = local_f4;
        FUN_0041d540();
        local_104 = (float)ppiVar12 * DAT_00baa81c + *pfVar5;
        ppiVar12 = local_f4;
        FUN_0041d520();
        local_100 = (float)ppiVar12 * DAT_00baa81c + pfVar5[1];
        FUN_0055c4c0();
        local_ec = (int **)((int)local_ec + -1);
      } while (local_ec != (int **)0x0);
      local_ec = (int **)0x34;
      FUN_00956780();
      FUN_0092dc30(local_ec,0x3f800000,2,0,0x3f800000,0);
      local_ec = (int **)0x1db;
      FUN_00956780();
      FUN_0092dc30(local_ec,0x3f800000,2,0,0x3f800000,0);
      FUN_00703670();
      param_1[0x2f0] = 2;
      if (param_1[0x2d9] != 6) {
        param_1[0x2d9] = 6;
      }
      param_1[0x104] = 0;
      param_1[0x2f1] = 2;
      FUN_005ae840();
    }
  }
  param_1[0xd4] = param_1[0x2ed];
  if (((param_1[0x2f1] == 0) && ((float)param_1[0xe0] / (float)param_1[0xe1] < DAT_00baa220)) &&
     (cVar3 = FUN_005ae1d0(), cVar3 == '\0')) {
    param_1[0x2f1] = 1;
    if (param_1[0x2d9] == 4) {
      param_1[0x104] = 1;
    }
    uVar9 = FUN_006eef60();
    param_1[0x2e8] = (uVar9 & 3) + 3;
  }
  fVar13 = DAT_00baa198;
  piVar7 = param_1;
  piVar8 = param_1;
  fVar11 = DAT_00baacc4;
  if (param_1[0x2f1] == 1) {
    do {
      piVar8[5] = 0;
      pfVar2 = (float *)piVar8[3];
      fVar11 = DAT_00baacc4;
      for (pfVar5 = (float *)piVar8[2]; DAT_00baacc4 = fVar11, pfVar5 != pfVar2;
          pfVar5 = pfVar5 + 0xe) {
        fVar11 = *pfVar5;
        *pfVar5 = fVar11 * fVar13;
        piVar8[5] = (int)(fVar11 * fVar13 + (float)piVar8[5]);
        fVar11 = DAT_00baacc4;
      }
      ppiVar12 = (int **)(piVar8 + 0xf0);
      piVar8 = *ppiVar12;
    } while (*ppiVar12 != (int *)0x0);
  }
  do {
    ppiVar12 = (int **)(piVar7 + 0xf0);
    fVar13 = (float)piVar7[0xe0] - (float)piVar7[5];
    if (fVar11 <= (float)piVar7[0xe0] - (float)piVar7[5]) {
      fVar13 = fVar11;
    }
    piVar7 = *ppiVar12;
    piVar8 = param_1;
    fVar11 = fVar13;
    local_ec = (int **)fVar13;
  } while (*ppiVar12 != (int *)0x0);
  do {
    if (fVar13 < (float)piVar8[0xe0] - (float)piVar8[5]) {
      local_3c = 0;
      local_38 = 0;
      local_34 = 0;
      local_30 = 0;
      local_2c = DAT_00c7b640;
      local_28 = DAT_00c7b644;
      local_24 = DAT_00c7b640;
      local_20 = DAT_00c7b644;
      local_1c = 0;
      local_18 = 0;
      (**(code **)(*piVar8 + 0x20))
                (((float)piVar8[0xe0] - (float)piVar8[5]) - fVar13,0x2000,0,&local_3c,0x1e);
      fVar13 = (float)local_ec;
    }
    ppiVar12 = (int **)(piVar8 + 0xf0);
    piVar8 = *ppiVar12;
  } while (*ppiVar12 != (int *)0x0);
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    for (piVar7 = (int *)param_1[0xf0]; piVar7 != (int *)0x0; piVar7 = (int *)piVar7[0xf0]) {
      local_3c = 0;
      local_38 = 0;
      local_34 = 0;
      local_30 = 0;
      local_1c = 0;
      local_18 = 0;
      local_2c = DAT_00c7b640;
      local_28 = DAT_00c7b644;
      local_24 = DAT_00c7b640;
      local_20 = DAT_00c7b644;
      (**(code **)(*piVar7 + 0x24))();
    }
  }
  if (((param_1[0x2d9] == 4) && (iVar10 = param_1[0x104], 0 < iVar10)) &&
     (fVar11 = (float)param_1[5], DAT_00ba9fe4 < fVar11)) {
    local_ec = (int **)(fVar11 + fVar11);
    dVar16 = ceil((double)(float)local_ec);
    local_ec = (int **)(float)dVar16;
    iVar10 = iVar10 - (int)dVar16;
    iVar4 = 1;
    if (1 < iVar10) {
      iVar4 = iVar10;
    }
    param_1[0x104] = iVar4;
  }
  FUN_00aef12b();
  return;
}

