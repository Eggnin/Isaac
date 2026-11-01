/* Local J460 decompiler output.
 * VA: 0x004efb90
 * Entry: 004efb90
 * Dispatcher: 0x006c2990
 * Types: 889
 * Identities: 889.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004f1ec0; instructions=1947
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=889; identities=889.0.0; dispatcher=0x006c2990;
   end=0x004f1ec0; instructions=1947 */

void __fastcall AI_004efb90(float **param_1)

{
  byte bVar1;
  char cVar2;
  uint uVar3;
  float ***pppfVar4;
  float **ppfVar5;
  int iVar6;
  undefined4 uVar7;
  int *piVar8;
  undefined4 extraout_ECX;
  byte *pbVar9;
  undefined4 extraout_ECX_00;
  int iVar10;
  float *pfVar11;
  bool bVar12;
  float fVar13;
  undefined auVar14 [16];
  float **ppfVar15;
  float fVar16;
  float *pfVar17;
  float **ppfVar18;
  undefined8 uVar19;
  undefined4 uVar20;
  undefined *puVar21;
  undefined4 uVar22;
  float local_198;
  float *local_190;
  float *local_18c;
  float *local_188;
  float *local_184;
  float **local_180;
  float **local_17c;
  float local_178;
  float **local_174;
  float *local_170;
  undefined local_169;
  float **local_168;
  float *local_164;
  undefined local_160 [4];
  int local_15c;
  float **local_158;
  float *local_154;
  float **local_14c;
  float **local_148;
  float **local_144 [2];
  float *local_13c;
  float **local_138;
  float **local_134;
  undefined local_130 [148];
  undefined4 local_9c;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined local_48 [8];
  undefined4 uStack_40;
  undefined4 uStack_3c;
  int local_38;
  undefined4 local_34;
  uint local_30;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3e98;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar10 = (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8];
  local_24 = uVar3;
  puVar21 = &stack0xfffffffc;
  switch(param_1[0x2d9]) {
  case (float *)0x0:
    param_1[0x5a] = (float *)((uint)param_1[0x5a] | 0x10000);
    param_1[0x2d9] = (float *)&DAT_00000004;
    param_1[0x5b] = param_1[0x5b];
    param_1[0x2e9] = (float *)0xffffffe2;
    param_1[0x2f1] = (float *)0x0;
    puVar21 = &stack0xfffffffc;
    if ((float *)0x2 < param_1[0x32]) {
      puVar21 = &DAT_00c34e28;
      puStack_20 = &stack0xfffffffc;
      FUN_0040b220(2);
      FUN_004071f0(puVar21);
      puVar21 = puStack_20;
    }
    break;
  case (float *)0x3:
    local_14c = (float **)0xffffffff;
    puStack_20 = &stack0xfffffffc;
    cVar2 = FUN_00417430(0x1000800,0);
    if ((cVar2 == '\0') || (param_1[0x3c7] != (float *)0xffffffff)) {
      FUN_006bec40(&local_158,0);
      if ((int)param_1[0x2e9] < 1) {
        pfVar17 = param_1[0xf0];
        if ((pfVar17 == (float *)0x0) ||
           ((cVar2 = FUN_006ac530(), cVar2 != '\0' && (pfVar17[0x2d9] != 2.242078e-44)))) {
          if (pfVar17 == (float *)0x0) goto LAB_004f030a;
        }
        else {
          local_138 = param_1 + 0xf0;
          FUN_004cf210(&local_138);
          param_1[0xf0] = (float *)0x0;
LAB_004f030a:
          local_134 = (float **)0x0;
          local_170 = (float *)0x0;
          FUN_006d0c60(local_48 + 0xc,0x379,0xffffffff);
          local_14 = 1;
          local_13c = (float *)0x0;
          iVar6 = local_38;
          if (local_30 != 0) {
            do {
              ppfVar15 = *(float ***)(iVar6 + (int)local_13c * 4);
              if ((((ppfVar15 != (float **)0x0) &&
                   (((iVar6 = local_38, 1 < *(int *)(DAT_00c71678 + 0x26614) &&
                     (ppfVar15[10] == (float *)0x1)) || ((int)ppfVar15[10] - 10U < 0x3de)))) &&
                  (((ppfVar15 != param_1 &&
                    (local_144[0] = (float **)ppfVar15[0x5b],
                    (((uint)ppfVar15[0x5a] & 0x20000000) != 0) ==
                    (((uint)param_1[0x5a] & 0x20000000) != 0))) && (ppfVar15[0xef] == param_1[0xef])
                   ))) && (ppfVar15[0x2d9] != (float *)0x10)) {
                auVar14 = ZEXT416((uint)(((float)param_1[0xd0] - (float)ppfVar15[0xd0]) *
                                         ((float)param_1[0xd0] - (float)ppfVar15[0xd0]) +
                                        ((float)param_1[0xcf] - (float)ppfVar15[0xcf]) *
                                        ((float)param_1[0xcf] - (float)ppfVar15[0xcf])));
                FUN_00435a50();
                if (((uint)ppfVar15[0x5a] & 0x10) != 0) {
                  auVar14._0_4_ = auVar14._0_4_ * DAT_00baa020;
                }
                iVar6 = local_38;
                if ((float)local_170 < (float)auVar14._0_4_) {
                  local_170 = auVar14._0_4_;
                  local_134 = ppfVar15;
                }
              }
              local_13c = (float *)((int)local_13c + 1);
            } while (local_13c < local_30);
            if (local_134 != (float **)0x0) {
              ppfVar15 = param_1 + 0xf0;
              if (param_1[0xf0] != (float *)0x0) {
                local_138 = ppfVar15;
                FUN_004cf210(&local_138);
              }
              *ppfVar15 = (float *)local_134;
              FUN_004cdcf0(ppfVar15);
            }
          }
          local_14 = 0xffffffff;
          FUN_004175b0();
          pfVar17 = param_1[0xf0];
          if (pfVar17 == (float *)0x0) {
            local_184 = DAT_00baa9d0;
            local_18c = DAT_00baa9d0;
            fVar13 = ((float)(*(int *)(DAT_00c71678 + 0x264f8) - (int)param_1[0xca]) * DAT_00baa708)
                     / DAT_00baa854;
            FUN_0041d520();
            local_190 = (float *)(fVar13 * (float)DAT_00baa904 + (float)DAT_00baa9d0);
            pfVar17 = DAT_00baa9d0;
            goto LAB_004f0585;
          }
        }
        local_158 = (float **)pfVar17[0xcf];
        local_154 = (float *)pfVar17[0xd0];
        local_184 = DAT_00baa87c;
        local_18c = DAT_00baa87c;
        local_190 = DAT_00baa87c;
        pfVar17 = DAT_00baa87c;
      }
      else {
        local_184 = DAT_00baa904;
        local_18c = DAT_00baa904;
        fVar13 = ((float)(*(int *)(DAT_00c71678 + 0x264f8) - (int)param_1[0xca]) * DAT_00baa708) /
                 DAT_00baa854;
        FUN_0041d520();
        ppfVar15 = param_1 + 0xf0;
        local_190 = (float *)(fVar13 * DAT_00baa9a0 + DAT_00baaa00);
        if (*ppfVar15 != (float *)0x0) {
          local_138 = ppfVar15;
          FUN_004cf210(&local_138);
        }
        pfVar17 = DAT_00baa904;
        *ppfVar15 = (float *)0x0;
      }
LAB_004f0585:
      local_174 = (float **)((float)param_1[0xcf] - (float)local_158);
      local_144[0] = (float **)((float)param_1[0xd0] - (float)local_154);
      local_198 = DAT_00baac34;
      local_164 = (float *)0x0;
      local_168 = (float **)0x0;
      local_180 = (float **)&DAT_00c5c794;
      local_138 = (float **)0x4;
      local_17c = local_158;
      local_13c = local_154;
      do {
        local_188 = (float *)((float)local_144[0] * (float)local_180[1] +
                             (float)local_174 * (float)*local_180);
        ppfVar15 = &local_18c;
        if ((float)pfVar17 <= (float)local_188) {
          ppfVar15 = &local_188;
        }
        pfVar17 = (float *)FUN_007f0b40(&local_34,&local_158,local_180);
        local_134 = (float **)(*pfVar17 - (float)local_17c);
        local_170 = (float *)(pfVar17[1] - (float)local_13c);
        fVar13 = (float)local_134 * (float)local_134 + (float)local_170 * (float)local_170;
        FUN_00435a50();
        if ((float)local_184 <= fVar13) {
          fVar16 = ((float)local_190 - (float)*ppfVar15) * DAT_00baa198 + (float)*ppfVar15;
          local_188 = local_170;
          if ((fVar16 < fVar13) && (DAT_00ba9fe4 < fVar13)) {
            fVar16 = fVar16 / fVar13;
            local_134 = (float **)(fVar16 * (float)local_134);
            local_188 = (float *)((float)local_170 * fVar16);
          }
          local_134 = (float **)((float)local_134 + (float)local_17c);
          local_188 = (float *)((float)local_13c + (float)local_188);
          fVar13 = ((float)param_1[0xd0] - (float)local_188) *
                   ((float)param_1[0xd0] - (float)local_188) +
                   ((float)param_1[0xcf] - (float)local_134) *
                   ((float)param_1[0xcf] - (float)local_134);
          FUN_00435a50();
          if (fVar13 < local_198) {
            local_168 = local_134;
            local_164 = local_188;
            local_198 = fVar13;
          }
        }
        local_180 = local_180 + 2;
        local_138 = (float **)((int)local_138 + -1);
        pfVar17 = local_184;
      } while (local_138 != (float **)0x0);
      if (((NAN((float)local_168) || NAN((float)DAT_00c7b640)) ==
           ((float)local_168 == (float)DAT_00c7b640)) ||
         ((NAN((float)local_164) || NAN((float)DAT_00c7b644)) ==
          ((float)local_164 == (float)DAT_00c7b644))) {
        local_17c = (float **)((float)local_17c - (float)param_1[0xcf]);
        local_154 = (float *)((float)local_13c - (float)param_1[0xd0]);
        if ((float)((uint)local_17c & DAT_00bacb40) <= (float)((uint)local_154 & DAT_00bacb40)) {
          local_138 = (float **)((uint)(0.0 <= (float)local_154) * 2 + 1);
        }
        else {
          local_138 = (float **)0x2;
          if ((float)local_17c < 0.0) {
            local_138 = (float **)0x0;
          }
        }
        local_158 = local_17c;
        local_13c = local_154;
        FUN_0067f1d0();
        ppfVar15 = local_138;
        if ((int)param_1[0x2e9] < 0) {
          local_134 = (float **)FUN_0067f260();
        }
        else {
          local_134 = local_138;
          if (0 < (int)param_1[0x2e9]) {
            pfVar17 = (float *)FUN_00a10030(&local_34);
            local_134 = ppfVar15;
            if (DAT_00baa3f4 < (float)local_144[0] * pfVar17[1] + (float)local_148 * *pfVar17) {
              fVar13 = (float)local_13c * (float)local_13c + (float)local_17c * (float)local_17c;
              FUN_00435a50();
              if (fVar13 < DAT_00baaa94) {
                local_134 = ppfVar15;
                cVar2 = FUN_007f0df0(param_1 + 0xcf,&local_168,3,0,0,0,0);
                if (cVar2 != '\0') {
                  local_14c = ppfVar15;
                  local_134 = ppfVar15;
                }
              }
            }
          }
        }
      }
      else {
        local_168 = local_17c;
        local_164 = local_13c;
        local_138 = (float **)0x0;
        if ((float)((uint)((float)local_17c - (float)param_1[0xcf]) & DAT_00bacb40) <=
            (float)((uint)((float)local_13c - (float)param_1[0xd0]) & DAT_00bacb40)) {
          local_134 = (float **)((uint)(0.0 <= (float)local_13c - (float)param_1[0xd0]) * 2 + 1);
        }
        else {
          local_134 = (float **)0x2;
          if ((float)local_17c - (float)param_1[0xcf] < 0.0) {
            local_134 = (float **)0x0;
          }
        }
      }
      cVar2 = FUN_007f0df0(param_1 + 0xcf,&local_168,0,0,0,0,0);
      if (cVar2 == '\0') {
        FUN_007e33c0(&local_168,0x3f666666,0,1);
        param_1[0x2ec] = param_1[0xd8];
        param_1[0x2ed] = param_1[0xd9];
      }
      else {
        param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa354);
        local_180 = (float **)((float)local_168 - (float)param_1[0xcf]);
        local_138 = (float **)((float)local_164 - (float)param_1[0xd0]);
        fVar13 = (float)local_180 * (float)local_180 + (float)local_138 * (float)local_138;
        FUN_00435a50();
        ppfVar15 = local_180;
        ppfVar5 = local_138;
        if (DAT_00ba9fe4 < fVar13) {
          ppfVar15 = (float **)((float)local_180 * ((float)DAT_00baa454 / fVar13));
          ppfVar5 = (float **)((float)local_138 * ((float)DAT_00baa454 / fVar13));
        }
        local_144[0] = (float **)0x40000000;
        local_174 = (float **)(fVar13 * DAT_00baa120);
        pppfVar4 = local_144;
        if ((float)(float **)(fVar13 * DAT_00baa120) <= DAT_00baa630) {
          pppfVar4 = &local_174;
        }
        pfVar11 = (float *)((float)ppfVar5 * DAT_00baa3e0 * (float)*pppfVar4);
        pfVar17 = (float *)((float)*pppfVar4 * (float)ppfVar15 * DAT_00baa3e0);
        param_1[0x2ed] = pfVar11;
        param_1[0x2ec] = pfVar17;
        param_1[0xd8] =
             (float *)(((float)pfVar17 / (float)param_1[0xdb]) * (float)param_1[0xe7] +
                      (float)param_1[0xd8]);
        param_1[0xd9] =
             (float *)(((float)pfVar11 / (float)param_1[0xdb]) * (float)param_1[0xe7] +
                      (float)param_1[0xd9]);
      }
      iVar6 = FUN_006ac760();
      if (((iVar6 != 0) && (uVar3 = FUN_006eef60(), (uVar3 & 0xf) == 0)) &&
         (param_1[0xef] != (float *)0x0)) {
        FUN_006d0c60(local_48 + 0xc,0x379,0xffffffff);
        local_14 = 2;
        ppfVar15 = (float **)0x0;
        local_138 = DAT_00baaec8;
        iVar6 = FUN_006be840();
        local_188 = param_1[0xcf];
        local_174 = (float **)(*(float *)(iVar6 + 0x340) - (float)param_1[0xd0]);
        local_144[0] = (float **)(*(float *)(iVar6 + 0x33c) - (float)local_188);
        fVar13 = (float)local_174 * (float)local_174 + (float)local_144[0] * (float)local_144[0];
        FUN_00435a50();
        uVar3 = 0;
        if (local_30 != 0) {
          do {
            ppfVar5 = *(float ***)(local_38 + uVar3 * 4);
            if (((ppfVar5 != (float **)0x0) &&
                (((1 < *(int *)(DAT_00c71678 + 0x26614) && (ppfVar5[10] == (float *)0x1)) ||
                 ((int)ppfVar5[10] - 10U < 0x3de)))) &&
               (((ppfVar5 != param_1 && (ppfVar5[0xef] == param_1[0xef])) &&
                ((ppfVar5[0x2d9] != (float *)0x10 &&
                 ((ppfVar18 = (float **)
                              (((float)ppfVar5[0xcf] - (float)local_188) *
                               ((float)local_144[0] / fVar13) +
                              ((float)ppfVar5[0xd0] - (float)param_1[0xd0]) *
                              ((float)local_174 / fVar13)), (float)local_138 < (float)ppfVar18 ||
                  (ppfVar15 == (float **)0x0)))))))) {
              ppfVar15 = ppfVar5;
              local_138 = ppfVar18;
            }
            uVar3 = uVar3 + 1;
          } while (uVar3 < local_30);
          local_180 = ppfVar15;
          if (ppfVar15 != (float **)0x0) {
            local_174 = (float **)(param_1[0xef] + 0xef);
            if (*local_174 != (float *)0x0) {
              local_144[0] = local_174;
              FUN_004cf210(local_144);
            }
            *local_174 = (float *)ppfVar15;
            FUN_004cdcf0(local_174);
            param_1[0x2d9] = (float *)&DAT_0000000e;
            FUN_0040a380("QuickRevert",0);
            param_1[0xcd] = param_1[0xcf];
            param_1[0xce] = param_1[0xd0];
            local_138 = (float **)0x13c;
            FUN_00956780();
            FUN_0092dc30(local_138,0x3f800000,2,0,0x3fc00000,0);
            iVar10 = FUN_00447770();
            if (*(int *)(iVar10 + 0xbec) != 0) {
              iVar10 = FUN_00447770();
              (**(code **)(**(int **)(iVar10 + 0xbec) + 0x28))();
            }
            uVar7 = FUN_006eef60();
            ppfVar15 = local_180;
            local_158 = (float **)local_180[0xcf];
            local_154 = local_180[0xd0];
            local_170 = (float *)FUN_00428b20(1000,0xaf,&local_158,&DAT_00c7b640,param_1,0,uVar7);
            uVar19 = FUN_004238f0(0x3f4ccccd);
            (*(code *)((ulonglong)uVar19 >> 0x20))((int)uVar19,0xffffffff,0xff,0,1);
            local_174 = (float **)(local_170 + 0xf1);
            if (*local_174 != (float *)0x0) {
              local_144[0] = local_174;
              FUN_004cf210(local_144);
            }
            *local_174 = (float *)ppfVar15;
            FUN_004cdcf0(local_174);
            pfVar17 = local_170;
            local_174 = (float **)param_1[0xef];
            if (local_170[0xef] != 0.0) {
              local_144[0] = (float **)(local_170 + 0xef);
              FUN_004cf210(local_144);
            }
            pfVar17[0xef] = (float)local_174;
            if (local_174 != (float **)0x0) {
              FUN_004cdcf0(pfVar17 + 0xef);
            }
            (**(code **)((int)*pfVar17 + 0xc))();
            iVar10 = FUN_00447770();
            local_174 = (float **)(iVar10 + 0xbec);
            if (*(int *)(iVar10 + 0xbec) != 0) {
              local_144[0] = local_174;
              FUN_004cf210(local_144);
            }
            *local_174 = pfVar17;
            FUN_004cdcf0(local_174);
            local_14 = 0xffffffff;
            FUN_004175b0();
            puVar21 = puStack_20;
            break;
          }
        }
        local_14 = 0xffffffff;
        FUN_004175b0();
      }
      param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa438);
      ppfVar15 = local_134;
      if ((local_14c != (float **)0xffffffff) && ((int)param_1[0x2e8] < 1)) {
        FUN_0067f1d0();
        local_148 = (float **)((float)local_158 * DAT_00baa804);
        local_144[0] = (float **)((float)local_154 * DAT_00baa804);
        AI_0043ef30();
        local_9c = 1;
        FUN_006cb2e0(param_1 + 0xcf,&local_148,0,local_130);
        iVar6 = FUN_00447770();
        if (iVar6 == 0) {
LAB_004f100d:
          pfVar17 = (float *)&DAT_0000000f;
        }
        else {
          iVar6 = FUN_00447770();
          pfVar17 = (float *)0xa;
          if (*(int *)(iVar6 + 0xbc0) != 1) goto LAB_004f100d;
        }
        param_1[0x2e8] = pfVar17;
        pfVar17 = (float *)((int)param_1[0x2e9] + -1);
        local_14c = (float **)0xf9;
        if ((int)pfVar17 < 1) {
          pfVar17 = (float *)0xffffffc4;
        }
        param_1[0x2e9] = pfVar17;
        FUN_00956780();
        FUN_0092dc30(local_14c,0x3f800000,2,0,0x3f800000,0);
        ppfVar15 = local_134;
        FUN_0040a940((&PTR_s_HeadLeft_00b60b30)[(int)local_134],1);
      }
    }
    else {
      iVar6 = FUN_006be840();
      local_158 = *(float ***)(iVar6 + 0x33c);
      local_154 = *(float **)(iVar6 + 0x340);
      FUN_007e4940(&local_158,0);
      pfVar17 = (float *)((float)param_1[0xdb] * DAT_00baa3a4);
      param_1[0xdb] = pfVar17;
      param_1[0xdb] = (float *)((float)pfVar17 * DAT_00baa438);
      ppfVar15 = (float **)0x3;
    }
    if (0 < (int)param_1[0x2e8]) {
      pfVar11 = (float *)((int)param_1[0x2e8] - iVar10);
      pfVar17 = (float *)0x0;
      if (0 < (int)pfVar11) {
        pfVar17 = pfVar11;
      }
      param_1[0x2e8] = pfVar17;
    }
    if ((int)param_1[0x2e9] < 0) {
      pfVar11 = (float *)((int)param_1[0x2e9] + iVar10);
      pfVar17 = (float *)0x0;
      if ((int)pfVar11 < 0) {
        pfVar17 = pfVar11;
      }
      if (-1 < (int)pfVar17) {
        pfVar17 = (float *)&DAT_00000005;
      }
      param_1[0x2e9] = pfVar17;
    }
    ppfVar5 = (float **)param_1[0x27];
    if (ppfVar5 == (float **)0x0) {
      cVar2 = FUN_0040aaf0((&PTR_s_HeadLeft_00b60b30)[(int)ppfVar15],1);
      if ((cVar2 != '\0') && (param_1[0x27] != (float *)0x0)) {
        FUN_00408e00();
      }
    }
    else {
      if (&DAT_0000000f < ppfVar5[5]) {
        ppfVar5 = (float **)*ppfVar5;
      }
      pbVar9 = (&PTR_s_HeadLeft_00b60b30)[(int)ppfVar15];
      do {
        bVar1 = *(byte *)ppfVar5;
        bVar12 = bVar1 < *pbVar9;
        if (bVar1 != *pbVar9) {
LAB_004f1111:
          uVar3 = -(uint)bVar12 | 1;
          goto LAB_004f1116;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppfVar5 + 1);
        bVar12 = bVar1 < pbVar9[1];
        if (bVar1 != pbVar9[1]) goto LAB_004f1111;
        ppfVar5 = (float **)((int)ppfVar5 + 2);
        pbVar9 = pbVar9 + 2;
      } while (bVar1 != 0);
      uVar3 = 0;
LAB_004f1116:
      if (uVar3 != 0) {
        FUN_0040aaf0((&PTR_s_HeadLeft_00b60b30)[(int)ppfVar15],0);
      }
    }
    fVar13 = (float)param_1[0xd8] * (float)param_1[0xd8] +
             (float)param_1[0xd9] * (float)param_1[0xd9];
    FUN_00435a50();
    if (DAT_00baa120 <= fVar13) {
      iVar10 = FUN_0067f260();
      FUN_0040a380((&PTR_s_WalkLeft2_00b60b20)[iVar10],0);
      puVar21 = puStack_20;
    }
    else {
      FUN_0040a6e0(PTR_s_WalkDown2_00b60b2c,0);
      puVar21 = puStack_20;
    }
    break;
  case (float *)0x4:
    puStack_20 = &stack0xfffffffc;
    cVar2 = FUN_00417430(0x1000800,0);
    if ((cVar2 == '\0') || (param_1[0x3c7] != (float *)0xffffffff)) {
      FUN_006bec40(&local_158,0);
      if (((int)param_1[0x2f0] < 1) ||
         (pfVar17 = (float *)((int)param_1[0x2f0] -
                             ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8])),
         param_1[0x2f0] = pfVar17, (int)pfVar17 < 1)) {
        if (param_1[0x2fb] != (float *)0x0) {
          local_14c = param_1 + 0x2fb;
          FUN_004cf210(&local_14c);
        }
        param_1[0x2fb] = (float *)0x0;
      }
      iVar10 = FUN_00447770();
      if ((iVar10 == 0) || (param_1[0x2f1] != (float *)0x1)) {
        iVar10 = FUN_00447770();
        if ((iVar10 != 0) && (param_1[0x2f1] == (float *)0x2)) goto LAB_004efc82;
        pfVar17 = param_1[0x2fb];
        if ((pfVar17 == (float *)0x0) || (cVar2 = FUN_006ac530(), cVar2 != '\0')) {
          if (pfVar17 == (float *)0x0) goto LAB_004efee4;
        }
        else {
          local_14c = param_1 + 0x2fb;
          FUN_004cf210(&local_14c);
          param_1[0x2fb] = (float *)0x0;
LAB_004efee4:
          pfVar17 = (float *)0x0;
          fVar13 = (float)local_158 - (float)param_1[0xcf];
          if (DAT_00baac24 <
              ((float)local_154 - (float)param_1[0xd0]) * ((float)local_154 - (float)param_1[0xd0])
              + fVar13 * fVar13) {
            FUN_0041a790(local_48 + 0xc,param_1 + 0xcf,8);
            local_14 = 0;
            uVar3 = 0;
            if (local_30 != 0) {
              do {
                ppfVar15 = *(float ***)(local_38 + uVar3 * 4);
                if (((ppfVar15 != (float **)0x0) &&
                    (((1 < *(int *)(DAT_00c71678 + 0x26614) && (ppfVar15[10] == (float *)0x1)) ||
                     ((int)ppfVar15[10] - 10U < 0x3de)))) && (ppfVar15 != param_1)) {
                  local_154 = ppfVar15[0x5b];
                  local_169 = ((uint)ppfVar15[0x5a] & 0x20000000) != 0;
                  if (((bool)local_169 == (((uint)param_1[0x5a] & 0x20000000) != 0)) &&
                     (((uint)ppfVar15[0x5a] & 0x10) == 0)) {
                    if (param_1[0x2fb] != (float *)0x0) {
                      local_14c = param_1 + 0x2fb;
                      FUN_004cf210(&local_14c);
                    }
                    param_1[0x2fb] = (float *)ppfVar15;
                    FUN_004cdcf0(param_1 + 0x2fb);
                    uVar3 = FUN_006eef60();
                    param_1[0x2f0] = (float *)(uVar3 % 0xf + 0x1e);
                    break;
                  }
                }
                uVar3 = uVar3 + 1;
              } while (uVar3 < local_30);
            }
            local_14 = 0xffffffff;
            FUN_004175b0();
            pfVar17 = param_1[0x2fb];
          }
        }
        if (pfVar17 != (float *)0x0) {
          local_158 = (float **)pfVar17[0xcf];
          local_154 = (float *)pfVar17[0xd0];
          goto LAB_004f007d;
        }
        uVar22 = 1;
        uVar20 = 900;
        uVar7 = 0x3f400000;
        pppfVar4 = (float ***)FUN_006bec40(&local_158,0);
      }
      else {
        FUN_00447770();
        iVar10 = FUN_006be840();
        local_14c = *(float ***)(iVar10 + 0x33c);
        local_144[0] = *(float ***)(iVar10 + 0x340);
        local_148 = local_14c;
        local_138 = local_144[0];
        iVar10 = FUN_00447770();
        local_154 = (float *)0x0;
        local_178 = (float)local_14c - *(float *)(iVar10 + 0x33c);
        local_174 = (float **)((float)local_138 - *(float *)(iVar10 + 0x340));
        local_158 = (float **)0x0;
        local_168 = (float **)(local_178 + local_178 + (float)local_14c);
        local_164 = (float *)((float)local_174 + (float)local_174 + (float)local_138);
        FUN_007f0870(&local_148,&local_168,param_1[0x61],0,extraout_ECX,&local_158);
        pfVar17 = (float *)FUN_00a10030(&local_148);
        uVar22 = 1;
        uVar20 = 900;
        pppfVar4 = &local_168;
        uVar7 = 0x3f400000;
        local_168 = (float **)((float)local_158 - *pfVar17 * (float)DAT_00baa87c);
        local_164 = (float *)((float)local_154 - pfVar17[1] * (float)DAT_00baa87c);
      }
      FUN_007e33c0(pppfVar4,uVar7,uVar20,uVar22);
    }
    else {
LAB_004efc82:
      iVar10 = FUN_006be840();
      local_158 = *(float ***)(iVar10 + 0x33c);
      local_154 = *(float **)(iVar10 + 0x340);
LAB_004f007d:
      FUN_007e4940(&local_158,0);
      param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa3a4);
    }
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa438);
    fVar13 = (float)param_1[0xd8] * (float)param_1[0xd8] +
             (float)param_1[0xd9] * (float)param_1[0xd9];
    FUN_00435a50();
    if (DAT_00baa120 <= fVar13) {
      iVar10 = FUN_0067f260();
      FUN_0040a380((&PTR_s_WalkLeft_00b60b00)[iVar10],0);
    }
    else {
      FUN_0040a6e0(PTR_s_WalkDown_00b60b0c,0);
    }
    puVar21 = puStack_20;
    if (param_1[0x1f] != (float *)0x0) {
      FUN_0040add0("Footstep");
      puVar21 = puStack_20;
    }
    break;
  case (float *)0x5:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa2d0);
    puStack_20 = &stack0xfffffffc;
    cVar2 = FUN_0040b030("Shoot");
    if (cVar2 != '\0') {
      FUN_006b6470(0x73,2,0,0x3f800000);
      FUN_006b6470(0x50,2,0,0x3f800000);
      uVar7 = FUN_00407170();
      FUN_006b66a0(uVar7);
      AI_0043ef30();
      local_9c = 1;
      local_158 = (float **)0x41200000;
      local_154 = (float *)0x0;
      FUN_006cb2e0(param_1 + 0xcf,&local_158,8,local_130);
      param_1[0x2e9] = (float *)0xffffffe2;
      param_1[0x2e8] = (float *)0x0;
    }
    if ((param_1[0x1f] == (float *)0x0) || (puVar21 = puStack_20, *(char *)(param_1 + 0x23) == '\0')
       ) {
      ppfVar15 = param_1 + 0x2fb;
      param_1[0x5a] = (float *)((uint)param_1[0x5a] & 0xffffffee);
      param_1[0x5b] = (float *)((uint)param_1[0x5b] & 0xfffffff7);
      *(undefined *)(param_1 + 0xec) = 0;
      param_1[0xdf] = (float *)param_1[0xcc][0x11];
      param_1[0x2d9] = (float *)0x3;
      if (*ppfVar15 != (float *)0x0) {
        local_144[0] = ppfVar15;
        FUN_004cf210(local_144);
      }
      *ppfVar15 = (float *)0x0;
      param_1[0x2f0] = (float *)0x0;
      puVar21 = puStack_20;
    }
    break;
  case (float *)0x7:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa1f8);
    if ((param_1[0x1f] == (float *)0x0) ||
       (puVar21 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')) {
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380("StunnedLoop",0);
      puVar21 = puStack_20;
    }
    break;
  case (float *)0xd:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa2d0);
    puStack_20 = &stack0xfffffffc;
    cVar2 = FUN_0040b030("Shoot");
    if (cVar2 != '\0') {
      param_1[0x5a] = (float *)((uint)param_1[0x5a] & 0xffffffee);
      param_1[0x5b] = (float *)((uint)param_1[0x5b] & 0xfffffff7);
      *(undefined *)(param_1 + 0xec) = 0;
      param_1[0xdf] = (float *)param_1[0xcc][0x11];
    }
    goto LAB_004f1aa3;
  case (float *)0xe:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa1f8);
    puStack_20 = &stack0xfffffffc;
    cVar2 = FUN_0040b030("Shoot");
    if ((((cVar2 != '\0') && (iVar10 = FUN_00447770(), iVar10 != 0)) &&
        (iVar10 = FUN_00447770(), *(int *)(iVar10 + 0x28) == 0x399)) &&
       (iVar10 = FUN_00447770(), *(int *)(iVar10 + 0xb64) == 6)) {
      iVar10 = FUN_00447770();
      *(undefined4 *)(iVar10 + 0xb64) = 3;
      iVar10 = FUN_00447770();
      *(undefined4 *)(iVar10 + 0x410) = 0xfffffc18;
    }
LAB_004f1aa3:
    puVar21 = puStack_20;
    if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x5a] = (float *)((uint)param_1[0x5a] & 0xffffffee);
      param_1[0x5b] = (float *)((uint)param_1[0x5b] & 0xfffffff7);
      *(undefined *)(param_1 + 0xec) = 0;
      param_1[0xdf] = (float *)param_1[0xcc][0x11];
      param_1[0x2d9] = (float *)&DAT_00000004;
      param_1[0xcd] = DAT_00c7b640;
      param_1[0xce] = DAT_00c7b644;
    }
    break;
  case (float *)0x10:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa2d0);
    puVar21 = &stack0xfffffffc;
    if ((((param_1[0x2f1] == (float *)0x63) &&
         ((((param_1[0x1f] != (float *)0x0 &&
            (puVar21 = &stack0xfffffffc, *(char *)(param_1 + 0x23) != '\0')) ||
           (FUN_0040a380("FlameIdle",0), puVar21 = puStack_20, param_1[0x2f1] == (float *)0x63)) &&
          ((puStack_20 = puVar21, cVar2 = FUN_004073b0(uVar3), puVar21 = puStack_20, cVar2 != '\0'
           && ((int)param_1[0x2e8] < 1)))))) &&
        (iVar6 = FUN_006ac760(), puVar21 = puStack_20, iVar6 != 0)) &&
       (((iVar6 = FUN_00447770(), puVar21 = puStack_20, iVar6 != 0 &&
         (iVar6 = FUN_00447770(), puVar21 = puStack_20, *(int *)(iVar6 + 0xb64) == 6)) &&
        (iVar6 = FUN_006be840(), fVar13 = (float)param_1[0xcf] - *(float *)(iVar6 + 0x33c),
        fVar16 = (float)param_1[0xd0] - *(float *)(iVar6 + 0x340), puVar21 = puStack_20,
        fVar16 * fVar16 + fVar13 * fVar13 < DAT_00baac40)))) {
      FUN_0040a380("FlameShoot",0);
      param_1[0x2e8] = (float *)0x2d;
      puVar21 = puStack_20;
    }
    puStack_20 = puVar21;
    if (0 < (int)param_1[0x2e8]) {
      pfVar17 = (float *)((int)param_1[0x2e8] - iVar10);
      if ((int)pfVar17 < 0) {
        pfVar17 = (float *)0x0;
      }
      param_1[0x2e8] = pfVar17;
    }
    if (param_1[0xef] == (float *)0x0) {
      cVar2 = FUN_0040b030("Shoot");
      if ((cVar2 != '\0') && (cVar2 = FUN_004567b0(), cVar2 == '\0')) {
        FUN_006d0c60(local_160,param_1[10],0xffffffff);
        local_14 = 3;
        pfVar17 = (float *)0x0;
        if (local_154 != (float *)0x0) {
          do {
            iVar6 = *(int *)(local_15c + (int)pfVar17 * 4);
            if ((iVar6 != 0) &&
               (((1 < *(int *)(DAT_00c71678 + 0x26614) && (*(int *)(iVar6 + 0x28) == 1)) ||
                (*(int *)(iVar6 + 0x28) - 10U < 0x3de)))) {
              local_34 = *(undefined4 *)(iVar6 + 0x16c);
              if (((*(uint *)(iVar6 + 0x168) & 0x20000000) == 0) &&
                 ((*(uint *)(iVar6 + 0x168) & 0x20000010) == 0)) {
                local_14 = 0xffffffff;
                FUN_004175b0();
                goto LAB_004f1615;
              }
            }
            pfVar17 = (float *)((int)pfVar17 + 1);
          } while (pfVar17 < local_154);
        }
        pfVar11 = (float *)0x0;
        iVar10 = local_15c;
        pfVar17 = local_154;
        if (local_154 != (float *)0x0) {
          do {
            piVar8 = *(int **)(iVar10 + (int)pfVar11 * 4);
            if ((piVar8 != (int *)0x0) &&
               ((((iVar10 = local_15c, 1 < *(int *)(DAT_00c71678 + 0x26614) && (piVar8[10] == 1)) ||
                 (piVar8[10] - 10U < 0x3de)) && ((piVar8[0x5a] & 0x20000000U) == 0)))) {
              uVar7 = FUN_00435c70();
              (**(code **)(*piVar8 + 0x24))(uVar7);
              iVar10 = local_15c;
              pfVar17 = local_154;
            }
            pfVar11 = (float *)((int)pfVar11 + 1);
          } while (pfVar11 < pfVar17);
        }
        FUN_004175b0();
        goto LAB_004f1e63;
      }
LAB_004f1615:
      param_1[0x104] = (float *)((int)param_1[0x104] - iVar10);
      puVar21 = puStack_20;
      if ((int)param_1[0x104] < 1) {
        FUN_0040a380("Regen",0);
        param_1[0x2d9] = (float *)0xd;
        puVar21 = puStack_20;
      }
    }
    else {
      if (((param_1[0x2f1] == (float *)0x63) && (cVar2 = FUN_0040b030("Shoot"), cVar2 != '\0')) &&
         (cVar2 = FUN_0040a4d0("FlameShoot"), cVar2 != '\0')) {
        uVar7 = FUN_006eef60();
        pfVar17 = (float *)FUN_00428b20(9,1,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar7);
        pfVar17[0x104] = -6.0;
        pfVar17[0x105] = 0.0;
        pfVar17[0x108] = 1.0;
        pfVar17[0x10e] = 0.0;
        pfVar17[0x10f] = 3.587324e-43;
        FUN_006a92a0(param_1);
        uVar7 = FUN_004238f0(0);
        (**(code **)((int)*pfVar17 + 0x3c))(uVar7,6,1,1,1);
        (**(code **)((int)*pfVar17 + 0xc))();
        uVar7 = FUN_006eef60();
        piVar8 = (int *)FUN_00428b20(1000,0x85,param_1 + 0xcd,&DAT_00c7b640,0,0,uVar7);
        local_38 = 0;
        local_58 = _DAT_00bac7b0;
        uStack_54 = _UNK_00bac7b4;
        uStack_50 = _UNK_00bac7b8;
        uStack_4c = _UNK_00bac7bc;
        local_48._4_4_ = _UNK_00bac884;
        local_48._0_4_ = _DAT_00bac880;
        uStack_40 = _UNK_00bac888;
        uStack_3c = _UNK_00bac88c;
        local_34 = 0;
        local_30 = 0;
        (**(code **)(*piVar8 + 0x3c))(&local_58,0xffffffff,0xff,0,1);
        FUN_009568e0(0xa2,2,0,0x3f800000);
        if (param_1[0x2fb] != (float *)0x0) {
          local_144[0] = param_1 + 0x2fb;
          FUN_004cf210(local_144);
        }
        param_1[0x2fb] = pfVar17;
        FUN_004cdcf0(param_1 + 0x2fb);
      }
      pfVar17 = param_1[0x2fb];
      if (((pfVar17 != (float *)0x0) && (pfVar17[10] == 1.261169e-44)) &&
         (DAT_00baa854 < pfVar17[0xe9])) {
        iVar10 = FUN_006be840();
        local_158 = (float **)(*(float *)(iVar10 + 0x33c) - pfVar17[0xcf]);
        local_154 = (float *)(*(float *)(iVar10 + 0x340) - pfVar17[0xd0]);
        FUN_00a10100(&local_168,0x41200000);
        pfVar17[0x10f] = (float)((uint)pfVar17[0x10f] & 0xfffffeff);
        pfVar17[0xd8] = (float)local_168;
        pfVar17[0x10e] = pfVar17[0x10e];
        pfVar17[0xd9] = (float)local_164;
        uVar7 = FUN_00407170();
        local_158 = (float **)(pfVar17[0xd3] * DAT_00baa324);
        local_168 = (float **)pfVar17[0xcf];
        local_164 = (float *)pfVar17[0xd0];
        local_154 = (float *)(pfVar17[0xd4] * DAT_00baa324);
        piVar8 = (int *)FUN_006d7cf0(&local_158,uVar7,&DAT_00c7b640);
        local_38 = 0x3ecccccd;
        local_34 = 0x3e99999a;
        local_58 = _DAT_00babf20;
        uStack_54 = _UNK_00babf24;
        uStack_50 = _UNK_00babf28;
        uStack_4c = _UNK_00babf2c;
        local_30 = 0x3f333333;
        _local_48 = ZEXT816(0);
        *(undefined *)(piVar8 + 0x52) = 1;
        piVar8[0xd6] = 0x3f800000;
        (**(code **)(*piVar8 + 0x3c))(&local_58,0xffffffff,0xff,0,1);
        if (4 < (uint)piVar8[0x32]) {
          FUN_00a114d0(2,extraout_ECX_00);
          puVar21 = local_48 + 8;
          FUN_0040b220(4);
          FUN_00a115c0(puVar21);
        }
        (**(code **)(*piVar8 + 0xc))();
        FUN_006d6ba0(0xf9,0x3f800000,2,0,0x3f800000);
        if (param_1[0x2fb] != (float *)0x0) {
          local_144[0] = param_1 + 0x2fb;
          FUN_004cf210(local_144);
        }
        param_1[0x2fb] = (float *)0x0;
      }
      iVar10 = FUN_00447770();
      puVar21 = puStack_20;
      if ((iVar10 != 0) && (*(int *)(iVar10 + 0xb64) == 0xd)) {
        param_1[0x104] = (float *)0x0;
        FUN_0040a380("Regen",0);
        FUN_0040a720(0xf);
        param_1[0x2d9] = (float *)0xd;
        puVar21 = puStack_20;
      }
    }
  }
  puStack_20 = puVar21;
  if (param_1[0x2d9] == (float *)0x3) {
    if ((param_1[0x1f] == (float *)0x0) ||
       (local_14c = (float **)FUN_0040ace0("HeadOffset"), local_14c == (float **)0x0)) {
      iVar10 = FUN_0040b220(1);
      *(float **)(iVar10 + 0x40) = DAT_00c7b640;
      *(float **)(iVar10 + 0x44) = DAT_00c7b644;
      iVar10 = FUN_0040b220(1);
      *(undefined4 *)(iVar10 + 0x34) = DAT_00c3793c;
      *(undefined4 *)(iVar10 + 0x38) = DAT_00c37940;
      iVar10 = FUN_0040b220(1);
      *(undefined4 *)(iVar10 + 0x3c) = 0;
    }
    else {
      iVar10 = FUN_0040b220(1);
      *(float **)(iVar10 + 0x40) = *local_14c;
      *(float **)(iVar10 + 0x44) = local_14c[1];
      iVar10 = FUN_0040b220(1);
      *(float **)(iVar10 + 0x34) = local_14c[4];
      *(float **)(iVar10 + 0x38) = local_14c[5];
      local_144[0] = (float **)local_14c[0x11];
      iVar10 = FUN_0040b220(1);
      *(float ***)(iVar10 + 0x3c) = local_144[0];
    }
  }
  else if (param_1[0x27] != (float *)0x0) {
    FUN_00408830(0);
    iVar10 = FUN_0040b220(1);
    *(float **)(iVar10 + 0x40) = DAT_00c7b640;
    *(float **)(iVar10 + 0x44) = DAT_00c7b644;
    iVar10 = FUN_0040b220(1);
    *(undefined4 *)(iVar10 + 0x3c) = 0;
    iVar10 = FUN_0040b220(1);
    *(undefined4 *)(iVar10 + 0x34) = DAT_00c3793c;
    *(undefined4 *)(iVar10 + 0x38) = DAT_00c37940;
  }
  FUN_004cdd80(param_1 + 0xcf,900);
  pfVar17 = param_1[0xcd];
  if (((NAN((float)pfVar17) || NAN((float)DAT_00c7b640)) == ((float)pfVar17 == (float)DAT_00c7b640))
     || ((NAN((float)param_1[0xce]) || NAN((float)DAT_00c7b644)) ==
         ((float)param_1[0xce] == (float)DAT_00c7b644))) {
    param_1[0xd8] = (float *)((float)pfVar17 - (float)param_1[0xcf]);
    param_1[0xd9] = (float *)((float)param_1[0xce] - (float)param_1[0xd0]);
  }
  if (((((*(char *)((int)param_1 + 0x173) != '\0') || (param_1[0x2d9] != (float *)0x10)) ||
       (iVar10 = FUN_00447770(), iVar10 == 0)) ||
      (iVar10 = FUN_00447770(), *(int *)(iVar10 + 0xb64) == 7)) &&
     ((pfVar17 = param_1[0x2fb], pfVar17 != (float *)0x0 && (pfVar17[10] == 1.261169e-44)))) {
    *(undefined *)((int)pfVar17 + 0x173) = 1;
  }
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (((uint)param_1[0x5a] & 0x10) == 0)) {
    if (param_1[0xef] == (float *)0x0) {
      local_174 = (float **)0x0;
      fVar13 = (float)((double)((int)param_1[0xc] + -1) +
                      (double)(&DAT_00bacb00)[-((int)param_1[0xc] + -1 >> 0x1f)]);
      local_144[0] = (float **)(fVar13 + fVar13);
      pppfVar4 = local_144;
      if ((float)local_144[0] <= DAT_00ba9fe4) {
        pppfVar4 = &local_174;
      }
      ppfVar15 = *pppfVar4;
      if ((float)DAT_00baa454 <= (float)ppfVar15) {
        ppfVar15 = DAT_00baa454;
      }
      pfVar17 = (float *)(DAT_00baa81c - (float)ppfVar15);
    }
    else {
      pfVar17 = (float *)param_1[0xcc][0x14];
    }
    param_1[0xe0] = pfVar17;
    param_1[0x5b] = (float *)((uint)param_1[0x5b] | 8);
    param_1[0x5a] = (float *)((uint)param_1[0x5a] | 0x11);
    *(undefined *)((int)param_1 + 0x173) = 0;
    FUN_006ae630();
    param_1[0xdf] = (float *)0x43480000;
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x2d9] = (float *)0x10;
    param_1[0x2e8] = (float *)0x1e;
    param_1[0x2e9] = (float *)0xffffffc4;
    if ((param_1[0xef] == (float *)0x0) || ((float **)param_1[0xef][0xf0] != param_1)) {
      FUN_0040a380("Collapse",0);
    }
    else {
      FUN_0040a380("FlameCollapse",0);
      param_1[0x2f1] = (float *)0x63;
    }
    param_1[0x104] = (float *)0x96;
    if (param_1[0xef] == (float *)0x0) {
      param_1[0xc] = (float *)((int)param_1[0xc] + 1);
    }
  }
LAB_004f1e63:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

