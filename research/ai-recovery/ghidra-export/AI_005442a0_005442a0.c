/* Local J460 decompiler output.
 * VA: 0x005442a0
 * Entry: 005442a0
 * Dispatcher: 0x006c2990
 * Types: 307
 * Identities: 307.0.0,307.0.1
 * Evidence: dispatcher=0x006c2990; end=0x00545814; instructions=1233
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=307; identities=307.0.0,307.0.1; dispatcher=0x006c2990;
   end=0x00545814; instructions=1233 */

void __fastcall AI_005442a0(int **param_1)

{
  code *pcVar1;
  longlong lVar2;
  longlong lVar3;
  int *piVar4;
  int *piVar5;
  int **ppiVar6;
  int **ppiVar7;
  int **ppiVar8;
  char cVar9;
  int *piVar10;
  uint uVar11;
  int **ppiVar12;
  float *pfVar13;
  undefined4 uVar14;
  int *piVar15;
  undefined4 extraout_ECX;
  int **ppiVar16;
  int iVar17;
  uint uVar18;
  int iVar19;
  uint uVar20;
  undefined4 unaff_EDI;
  bool bVar21;
  float fVar22;
  float fVar23;
  ulonglong uVar24;
  undefined4 uVar25;
  undefined4 uVar26;
  undefined4 uVar27;
  undefined4 in_stack_fffffd38;
  int ***pppiVar28;
  int iStack_2a8;
  int **local_2a4;
  int *local_2a0;
  int **local_29c;
  int **local_298;
  int **local_294;
  int *local_290;
  int **local_28c;
  int **local_288;
  int **local_284;
  char local_27d;
  int **local_27c;
  int *piStack_278;
  int **local_274 [3];
  float local_268;
  int *local_264;
  int **local_260;
  int *local_258;
  int *local_254;
  int **local_250;
  int **local_24c;
  undefined8 uStack_244;
  int local_23c;
  undefined local_238 [28];
  undefined4 local_21c;
  undefined4 local_218;
  undefined4 local_214;
  undefined4 local_210;
  int **local_20c;
  int **local_208;
  int **local_204;
  int **local_200;
  undefined4 local_1fc;
  undefined4 local_1f8;
  int *local_1e4 [8];
  int *local_1c4;
  int *piStack_1c0;
  int *local_1bc;
  undefined local_1b8 [8];
  undefined local_1b0 [4];
  undefined auStack_1ac [4];
  undefined local_1a8 [8];
  undefined local_1a0 [8];
  undefined auStack_198 [20];
  undefined auStack_184 [40];
  undefined auStack_15c [120];
  uint uStack_e4;
  undefined8 uStack_e0;
  int iStack_d8;
  undefined local_b8 [20];
  undefined4 local_a4;
  undefined4 local_60;
  undefined4 local_5c;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&iStack_2a8;
  local_260 = param_1;
  if (param_1[0xc] == (int *)0x1) {
    param_1[0x62] = (int *)0x0;
    if ((param_1[0xef] == (int *)0x0) || (*(char *)((int)param_1[0xef] + 0x172) == '\0')) {
      local_21c = 0;
      local_218 = 0;
      local_214 = 0;
      local_210 = 0;
      local_20c = DAT_00c7b640;
      local_208 = DAT_00c7b644;
      local_204 = DAT_00c7b640;
      local_200 = DAT_00c7b644;
      local_1fc = 0;
      local_1f8 = 0;
      (*(code *)(*param_1)[9])(&local_21c);
      FUN_00aef12b();
      return;
    }
    goto LAB_00545f40;
  }
  ppiVar16 = param_1 + 0xcf;
  piVar15 = DAT_00c71678[0x60c0];
  local_290 = (int *)(int)(((float)*ppiVar16 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
  iVar17 = (int)(((float)param_1[0xd0] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
  if ((((((-1 < (int)local_290) && ((int)local_290 < piVar15[3])) && (-1 < iVar17)) &&
       ((iVar17 < piVar15[4] &&
        (piVar10 = (int *)(piVar15[3] * iVar17 + (int)local_290), -1 < (int)piVar10)))) &&
      ((int)piVar10 < 0x1c0)) && (piVar15[(int)piVar10 + 0x1db] < 0x3b7)) {
    piVar15[(int)piVar10 + 0x1db] = 900;
  }
  local_2a4 = (int **)FUN_006be840();
  FUN_006d8e40(1);
  local_1c4 = param_1[0x2d9];
  param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa3a4);
  piVar5 = _UNK_00babf2c;
  piVar4 = _UNK_00babf28;
  piVar10 = _UNK_00babf24;
  piVar15 = _DAT_00babf20;
  if (local_1c4 == (int *)0x0) {
    if (param_1 + 0x79 != local_1e4) {
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
      *(undefined8 *)(param_1 + 0x81) = 0;
      param_1[0x79] = piVar15;
      param_1[0x7a] = piVar10;
      param_1[0x7b] = piVar4;
      param_1[0x7c] = piVar5;
      param_1[0x83] = (int *)0x0;
    }
    param_1[0x2d9] = (int *)0x3;
    piStack_1c0 = local_1c4;
    local_1bc = local_1c4;
    FUN_0040a380(&DAT_00b1bc54,0);
    param_1[0xcd] = *ppiVar16;
    param_1[0xce] = param_1[0xd0];
    if (param_1[0x3c7] == (int *)0xffffffff) {
      uVar11 = FUN_006eef60();
      param_1[0x2f0] = (int *)(uVar11 % 0x28 + 0x14);
      FUN_00aef12b();
      return;
    }
    param_1[0x2f0] = (int *)0x2;
    FUN_00aef12b();
    return;
  }
  if (local_1c4 == (int *)0x3) {
    if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_0040a380(&DAT_00b1bc54,0);
    }
    FUN_006d8b20(0);
    if (param_1[0x2f0] != (int *)0x0) goto LAB_00545594;
    if (param_1[0x3c7] == (int *)0xffffffff) {
      uVar11 = FUN_006eef60();
      if ((uVar11 & 7) != 0) goto LAB_005445a6;
    }
    else {
      cVar9 = FUN_006d8260(9);
      if ((cVar9 == '\0') && (cVar9 = FUN_006d8260(8), cVar9 == '\0')) {
LAB_005445a6:
        if (param_1[0x3c7] != (int *)0xffffffff) {
          FUN_006d82d0(local_1b0);
          cVar9 = FUN_00a10630(&DAT_00c7b640);
          if (cVar9 == '\0') goto LAB_00545594;
        }
        local_288 = DAT_00c7b640;
        local_294 = DAT_00c7b644;
        fVar22 = ((float)local_2a4[0xd0] - (float)param_1[0xd0]) *
                 ((float)local_2a4[0xd0] - (float)param_1[0xd0]) +
                 ((float)local_2a4[0xcf] - (float)*ppiVar16) *
                 ((float)local_2a4[0xcf] - (float)*ppiVar16);
        FUN_00435a50();
        if (fVar22 <= DAT_00baaa00) {
          uVar11 = FUN_006eef60();
          if ((uVar11 & 0xf) == 0) {
            ppiVar12 = (int **)FUN_0081e9d0(local_1a0,0x41a00000);
            goto LAB_00544648;
          }
        }
        else {
          ppiVar12 = (int **)FUN_006bec40(local_1a8,0);
LAB_00544648:
          local_288 = (int **)*ppiVar12;
          local_294 = (int **)ppiVar12[1];
        }
        if (param_1[0x3c7] == (int *)0xffffffff) {
          if (((NAN((float)local_288) || NAN((float)DAT_00c7b640)) ==
               ((float)local_288 == (float)DAT_00c7b640)) ||
             ((NAN((float)local_294) || NAN((float)DAT_00c7b644)) ==
              ((float)local_294 == (float)DAT_00c7b644))) {
            local_29c = DAT_00c7b640;
            local_2a4 = DAT_00c7b644;
            local_28c = (int **)DAT_00c71678[0x60c0];
            local_290 = DAT_00baacc4;
            local_2a0 = local_28c[0x499];
            ppiVar16 = DAT_00c7b640;
            ppiVar12 = DAT_00c7b644;
            if (local_2a0 != (int *)0x0) {
              local_298 = (int **)local_28c[0x497];
              do {
                piVar15 = *local_298;
                if (((piVar15 != (int *)0x0) && (piVar15[10] == 1000)) &&
                   ((piVar15[0xb] == 0x1a ||
                    ((((uint)param_1[0x5a] & 0x20000000) != 0 && (piVar15[0xb] == 0x2d)))))) {
                  local_250 = (int **)piVar15[0xcf];
                  local_27c = (int **)piVar15[0xd0];
                  iVar17 = (int)(((float)local_250 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
                  iVar19 = (int)(((float)local_27c - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
                  ppiVar16 = local_29c;
                  ppiVar12 = local_2a4;
                  if ((-1 < iVar17) &&
                     ((((piVar15 = local_28c[3], iVar17 < (int)piVar15 && (-1 < iVar19)) &&
                       (iVar19 < (int)local_28c[4])) &&
                      (iVar17 = iVar19 * (int)piVar15 + iVar17, -1 < iVar17)))) {
                    local_274[0] = (int **)((float)(iVar17 % (int)piVar15) * DAT_00baa904 +
                                           DAT_00baa904);
                    local_284 = (int **)((float)(iVar17 / (int)piVar15) * DAT_00baa904 +
                                        DAT_00baaa00);
                    iVar19 = FUN_007f0800(iVar17);
                    ppiVar16 = local_29c;
                    ppiVar12 = local_2a4;
                    if ((((iVar19 == 0) &&
                         (((float)local_27c - (float)local_284) *
                          ((float)local_27c - (float)local_284) +
                          ((float)local_250 - (float)local_274[0]) *
                          ((float)local_250 - (float)local_274[0]) < DAT_00baa9d0)) &&
                        ((0x14 < (*local_298)[0x117] &&
                         ((0x1bf < iVar17 || ((int)local_28c[iVar17 + 0x1db] < 400)))))) &&
                       ((DAT_00baaa00 <
                         ((float)param_1[0xd0] - (float)local_284) *
                         ((float)param_1[0xd0] - (float)local_284) +
                         ((float)param_1[0xcf] - (float)local_274[0]) *
                         ((float)param_1[0xcf] - (float)local_274[0]) &&
                        (piVar15 = (int *)(((float)local_288 - (float)local_274[0]) *
                                           ((float)local_288 - (float)local_274[0]) +
                                          ((float)local_294 - (float)local_284) *
                                          ((float)local_294 - (float)local_284)),
                        (float)piVar15 < (float)local_290)))) {
                      local_29c = local_274[0];
                      local_2a4 = local_284;
                      ppiVar16 = local_274[0];
                      local_290 = piVar15;
                      ppiVar12 = local_284;
                    }
                  }
                }
                local_298 = local_298 + 1;
                local_2a0 = (int *)((int)local_2a0 - 1);
              } while (local_2a0 != (int *)0x0);
              local_2a0 = (int *)0x0;
            }
            if (((NAN((float)ppiVar16) || NAN((float)DAT_00c7b640)) ==
                 ((float)ppiVar16 == (float)DAT_00c7b640)) ||
               ((NAN((float)ppiVar12) || NAN((float)DAT_00c7b644)) ==
                ((float)ppiVar12 == (float)DAT_00c7b644))) {
              FUN_0040a380("Teleport",0);
              param_1[0x2d9] = (int *)&DAT_00000004;
              param_1[0x2ec] = (int *)local_29c;
              param_1[0x2ed] = (int *)local_2a4;
            }
          }
        }
        else {
          FUN_0040a380("Teleport",0);
          if (param_1[0x1f] != (int *)0x0) {
            FUN_00408e00();
          }
          param_1[0x2d9] = (int *)&DAT_00000004;
          param_1[0x2ec] = *ppiVar16;
          param_1[0x2ed] = param_1[0xd0];
        }
        goto LAB_00545594;
      }
    }
    local_27c = (int **)local_2a4[0xcf];
    local_290 = local_2a4[0xd0];
    local_28c = (int **)(((float)param_1[0xd0] - (float)local_290) *
                         ((float)param_1[0xd0] - (float)local_290) +
                        ((float)*ppiVar16 - (float)local_27c) *
                        ((float)*ppiVar16 - (float)local_27c));
    ppiVar12 = local_28c;
    FUN_00435a50();
    local_268 = (float)local_2a4[0xd8] * DAT_00baa120 * (float)ppiVar12 + (float)local_27c;
    local_264 = (int *)((float)local_2a4[0xd9] * DAT_00baa120 * (float)ppiVar12 + (float)local_290);
    ppiVar12 = local_28c;
    FUN_00435a50();
    if (param_1[0x3c7] == (int *)0xffffffff) {
      local_27d = FUN_005441e0();
      if ((DAT_00baa950 < (float)ppiVar12) && ((float)ppiVar12 < DAT_00baaaf8)) {
        uVar11 = FUN_006eef60();
        uVar11 = uVar11 % 5;
        goto LAB_00544793;
      }
    }
    else {
      pfVar13 = (float *)FUN_006d8d30(local_1b8);
      local_268 = *pfVar13;
      local_264 = (int *)pfVar13[1];
      local_27d = FUN_005441e0();
      uVar11 = FUN_006d8260(8);
      uVar11 = uVar11 & 0xff;
LAB_00544793:
      if (((uVar11 != 0) && (iVar17 = FUN_007f0780(local_268,local_264), iVar17 == 0)) &&
         (local_27d != '\0')) {
        FUN_0040a380(&DAT_00b1d2ec,0);
        param_1[0x2d9] = (int *)0x9;
        *(bool *)(param_1 + 0x52) = local_268 < (float)*ppiVar16;
        piVar15 = param_1[0xf0];
        if ((piVar15 != (int *)0x0) && (*(char *)((int)piVar15 + 0x172) != '\0')) {
          (**(code **)(*piVar15 + 0x28))();
        }
        uVar14 = FUN_007e90f0();
        uVar14 = FUN_006fe410(param_1[10],param_1[0xb],&local_268,&DAT_00c7b640,param_1,1,uVar14,0);
        local_294 = (int **)__RTDynamicCast(uVar14,0,&IsaacRepentancePlus::Entity::
                                                      RTTI_Type_Descriptor,
                                            &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0
                                           );
        local_294[0x5b] = (int *)((uint)local_294[0x5b] | 0x2008);
        local_294[0x5a] = (int *)((uint)local_294[0x5a] & 0xfffffffb | 1);
        local_27c = local_294 + 0xef;
        if (local_294[0xef] != (int *)0x0) {
          local_250 = local_27c;
          FUN_004cf210(&local_250);
        }
        *local_27c = (int *)param_1;
        FUN_004cdcf0(local_27c);
        local_294[0x62] = (int *)0x0;
        FUN_00456380(param_1 + 0x79);
        if (param_1[0xf0] != (int *)0x0) {
          local_274[0] = param_1 + 0xf0;
          FUN_004cf210(local_274);
        }
        param_1[0xf0] = (int *)local_294;
        FUN_004cdcf0(param_1 + 0xf0);
        local_294[0x2d9] = (int *)0x3;
        FUN_0040a6e0("Mouth",0);
        goto LAB_00545594;
      }
    }
    if ((param_1[0x3c7] == (int *)0xffffffff) || (cVar9 = FUN_006d8260(9), cVar9 != '\0')) {
      FUN_0040a380("Attack",0);
      param_1[0x2d9] = (int *)&DAT_00000008;
      *(bool *)(param_1 + 0x52) = local_268 < (float)*ppiVar16;
    }
LAB_00545594:
    param_1[0xd8] = (int *)((float)param_1[0xcd] - (float)param_1[0xcf]);
    param_1[0xd9] = (int *)((float)param_1[0xce] - (float)param_1[0xd0]);
  }
  else {
    if (local_1c4 != (int *)&DAT_00000004) {
      if (local_1c4 == (int *)0x6) {
        cVar9 = FUN_0040b030("Shoot");
        if (cVar9 != '\0') {
          param_1[0x62] = (int *)&DAT_00000004;
          param_1[0x61] = (int *)&DAT_00000005;
          FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
        }
        if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          param_1[0x2d9] = (int *)0x3;
          if (param_1[0x3c7] == (int *)0xffffffff) {
            uVar11 = FUN_006eef60();
            piVar15 = (int *)(uVar11 % 0x28 + 0x14);
          }
          else {
            piVar15 = (int *)0x2;
          }
LAB_0054558e:
          param_1[0x2f0] = piVar15;
        }
      }
      else if (local_1c4 == (int *)&DAT_00000008) {
        FUN_006d8b20(0);
        cVar9 = FUN_0040b030("Shoot");
        if (cVar9 != '\0') {
          local_284 = (int **)local_2a4[0xd0];
          fVar22 = ((float)param_1[0xd0] - (float)local_284) *
                   ((float)param_1[0xd0] - (float)local_284) +
                   ((float)*ppiVar16 - (float)local_2a4[0xcf]) *
                   ((float)*ppiVar16 - (float)local_2a4[0xcf]);
          FUN_00435a50();
          local_258 = (int *)((float)local_2a4[0xd8] * DAT_00baa120 * fVar22 +
                             (float)local_2a4[0xcf]);
          local_254 = (int *)((float)local_2a4[0xd9] * DAT_00baa120 * fVar22 + (float)local_284);
          if (param_1[0x3c7] != (int *)0xffffffff) {
            ppiVar12 = (int **)FUN_006d8d30(local_238);
            local_258 = *ppiVar12;
            local_254 = ppiVar12[1];
          }
          *(bool *)(param_1 + 0x52) = (float)local_258 < (float)*ppiVar16;
          AI_0043ef30();
          local_60 = 8;
          local_5c = 0;
          FUN_004071f0(&DAT_00c34e54);
          local_a4 = 0x3f333333;
          FUN_006ccdd0(6,&local_258,0x41200000,local_b8);
          FUN_006d6ba0(0xe2,0x3f800000,0xf,0,0x3f800000);
        }
        if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
LAB_00545563:
          param_1[0x2d9] = (int *)0x3;
          if (param_1[0x3c7] == (int *)0xffffffff) {
            uVar11 = FUN_006eef60();
            piVar15 = (int *)(uVar11 % 0x28 + 0xf);
          }
          else {
            piVar15 = (int *)0x2;
          }
          goto LAB_0054558e;
        }
      }
      else if (local_1c4 == (int *)0x9) {
        FUN_006d8b20(0);
        if ((param_1[0xf0] != (int *)0x0) && (FUN_0040a780(), param_1[0xf0][0x1f] != 0)) {
          FUN_00408e00();
        }
        cVar9 = FUN_0040b030("Shoot");
        if (cVar9 != '\0') {
          in_stack_fffffd38 = 0x545490;
          FUN_006d6ba0(0x107,0x3f800000,2,0,0x3f800000);
        }
        cVar9 = FUN_0040b090("Shoot");
        if ((((cVar9 != '\0') && (cVar9 = FUN_0040b090("ShootEnd"), cVar9 == '\0')) &&
            (param_1[0xf0] != (int *)0x0)) &&
           ((*(char *)((int)param_1[0xf0] + 0x172) != '\0' && (iVar17 = FUN_006ac760(), iVar17 != 0)
            ))) {
          local_23c = param_1[0xf0][0xd0];
          uStack_244 = CONCAT44(param_1[0xf0][0xcf],(undefined4)uStack_244);
          FUN_006fed60((int)&uStack_244 + 4,param_1,0,0,0,in_stack_fffffd38,0x42480000,DAT_00c79100,
                       DAT_00c79104,DAT_00c79108,DAT_00c7910c);
        }
        if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          if (param_1[0xf0] != (int *)0x0) {
            (**(code **)(*param_1[0xf0] + 0x28))();
          }
          goto LAB_00545563;
        }
      }
      goto LAB_00545594;
    }
    if ((param_1[0x1f] != (int *)0x0) && (cVar9 = FUN_0040add0("Shoot"), cVar9 != '\0')) {
      param_1[0x62] = (int *)0x0;
      param_1[0x61] = (int *)0x3;
      FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
    }
    if (param_1[0x3c7] == (int *)0xffffffff) {
      local_284 = (int **)DAT_00c71678[0x60c0];
      iVar17 = FUN_00812c90(param_1 + 0x2ec);
      if (-1 < iVar17) {
        FUN_004565e0(iVar17,900);
      }
      if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        *ppiVar16 = param_1[0x2ec];
        param_1[0xd0] = param_1[0x2ed];
        param_1[0xcd] = param_1[0x2ec];
        param_1[0xce] = param_1[0x2ed];
        FUN_0040a380("TeleportEnd",0);
        param_1[0x2d9] = (int *)0x6;
        *(bool *)(param_1 + 0x52) =
             (float)local_2a4[0xcf] <= (float)*ppiVar16 &&
             (float)*ppiVar16 != (float)local_2a4[0xcf];
      }
      goto LAB_00545594;
    }
    if (param_1[0x62] != (int *)0x0) goto LAB_00545594;
    param_1[0x2f1] =
         (int *)((int)param_1[0x2f1] + ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]));
    if (0x78 < (int)param_1[0x2f1]) {
      param_1[0x2f1] = (int *)0x5a;
      uVar14 = FUN_00435c70();
      (*(code *)(*param_1)[8])(0x41200000,0,0,uVar14,0x1e);
      local_284 = (int **)0x1;
      FUN_006b31b0(&local_284,param_1,param_1 + 0x79,&DAT_00c7b640,0x3f800000);
      FUN_006d6ba0(0x4d,0x3f000000,2,0,0x40000000);
    }
    FUN_007e33c0(&DAT_00c7b640,0x40000000,0,1);
    piVar15 = param_1[0xd8];
    if (NAN((float)piVar15) == ((float)piVar15 == 0.0)) {
      *(bool *)(param_1 + 0x52) = 0.0 < (float)piVar15;
    }
    if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_006d82d0(auStack_198);
      cVar9 = FUN_00a10600(&DAT_00c7b640);
      if (((cVar9 != '\0') &&
          ((float)param_1[0xd8] * (float)param_1[0xd8] + (float)param_1[0xd9] * (float)param_1[0xd9]
           < DAT_00baa454)) || (0x59 < (int)param_1[0x2f1])) {
        local_258 = *ppiVar16;
        local_254 = param_1[0xd0];
        local_294 = (int **)DAT_00c71678[0x60c0];
        iVar17 = FUN_007f0780(local_258,local_254);
        if (iVar17 == 0) {
          cVar9 = FUN_005441e0();
          if (cVar9 == '\0') {
            local_2a4 = (int **)local_294[0x499];
            local_298 = DAT_00c7b640;
            local_29c = DAT_00c7b644;
            local_290 = DAT_00baabe0;
            ppiVar16 = DAT_00c7b640;
            ppiVar12 = DAT_00c7b644;
            if (local_2a4 != (int **)0x0) {
              local_28c = (int **)local_294[0x497];
              do {
                piVar15 = *local_28c;
                if (((piVar15 != (int *)0x0) && (piVar15[10] == 1000)) &&
                   ((piVar15[0xb] == 0x1a ||
                    ((((uint)param_1[0x5a] & 0x20000000) != 0 && (piVar15[0xb] == 0x2d)))))) {
                  iVar19 = (int)(((float)piVar15[0xcf] - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0
                                );
                  iVar17 = (int)(((float)piVar15[0xd0] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0
                                );
                  ppiVar16 = local_298;
                  ppiVar12 = local_29c;
                  if (((-1 < iVar19) &&
                      (((local_284 = (int **)local_294[3], iVar19 < (int)local_284 && (-1 < iVar17))
                       && (iVar17 < (int)local_294[4])))) &&
                     (iVar19 = (int)local_284 * iVar17 + iVar19, -1 < iVar19)) {
                    iVar17 = iVar19 / (int)local_284;
                    local_284 = (int **)((float)(iVar19 % (int)local_284) * DAT_00baa904 +
                                        DAT_00baa904);
                    local_274[0] = (int **)((float)iVar17 * DAT_00baa904 + DAT_00baaa00);
                    iVar17 = FUN_007f0800(iVar19);
                    ppiVar16 = local_298;
                    ppiVar12 = local_29c;
                    if ((iVar17 == 0) &&
                       (piVar15 = (int *)(((float)param_1[0xd0] - (float)local_274[0]) *
                                          ((float)param_1[0xd0] - (float)local_274[0]) +
                                         ((float)param_1[0xcf] - (float)local_284) *
                                         ((float)param_1[0xcf] - (float)local_284)),
                       (float)piVar15 < (float)local_290)) {
                      local_298 = local_284;
                      local_29c = local_274[0];
                      ppiVar16 = local_284;
                      local_290 = piVar15;
                      ppiVar12 = local_274[0];
                    }
                  }
                }
                local_28c = local_28c + 1;
                local_2a4 = (int **)((int)local_2a4 + -1);
              } while (local_2a4 != (int **)0x0);
              local_2a4 = (int **)0x0;
            }
            if (((NAN((float)ppiVar16) || NAN((float)DAT_00c7b640)) !=
                 ((float)ppiVar16 == (float)DAT_00c7b640)) &&
               ((NAN((float)ppiVar12) || NAN((float)DAT_00c7b644)) !=
                ((float)ppiVar12 == (float)DAT_00c7b644))) goto LAB_005455bd;
            param_1[0xcf] = (int *)ppiVar16;
            param_1[0xd0] = (int *)ppiVar12;
          }
          param_1[0xcd] = param_1[0xcf];
          param_1[0xce] = param_1[0xd0];
          FUN_0040a380("TeleportEnd",0);
          param_1[0x2d9] = (int *)0x6;
          param_1[0x2f1] = (int *)0x0;
        }
      }
    }
  }
LAB_005455bd:
  if (0 < (int)param_1[0x2f0]) {
    param_1[0x2f0] =
         (int *)(((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + (int)param_1[0x2f0]);
  }
  piVar15 = param_1[0x2d9];
  if (piVar15 != (int *)0x0) {
    if ((((uint)param_1[0x5a] & 0x4000) != 0) || (cVar9 = FUN_006fd350(), cVar9 != '\0'))
    goto LAB_00545f40;
    uVar11 = (int)DAT_00c71678[0x993e] + (int)param_1[8] & 0x80000007;
    bVar21 = uVar11 == 0;
    if ((int)uVar11 < 0) {
      bVar21 = (uVar11 - 1 | 0xfffffff8) == 0xffffffff;
    }
    if ((!bVar21) || ((param_1[0x3c7] == (int *)0xffffffff && (piVar15 == (int *)&DAT_00000004))))
    goto LAB_00545f40;
  }
  local_294 = (int **)FUN_006eef60();
  local_24c = param_1 + 0xcd;
  pppiVar28 = &local_2a4;
  ppiVar12 = (int **)&DAT_00c7b640;
  local_29c = DAT_00c71678;
  local_2a4 = (int **)0x0;
  local_2a0 = (int *)0x1a;
  local_28c = (int **)0x3e8;
  ppiVar16 = param_1;
  FUN_008646e0(&local_28c,&local_2a0,local_24c);
  iVar17 = iStack_2a8;
  if (1 < (int)DAT_00c71678[0x9985]) {
    local_2a4 = (int **)DAT_00c71678[0x9988];
    uVar11 = FUN_006eef60();
    ppiVar6 = local_2a4;
    uStack_244 = DAT_00b1f66c;
    iStack_2a8 = DAT_00b1f674;
    if (iVar17 == 5) {
      if (ppiVar16 < (int **)0x12d) {
        if (ppiVar16 == (int **)0x12c) {
          while ((ppiVar12 == (int **)0x0 ||
                 (cVar9 = (*(code *)(*local_2a4)[9])(ppiVar12), cVar9 != '\0'))) {
            if (uVar11 == 0) {
              FUN_00a112c0(0x10,"RNG Seed is zero!\n");
              pcVar1 = (code *)swi(3);
              (*pcVar1)();
              return;
            }
            uVar11 = uVar11 >> ((byte)uStack_244 & 0x1f) ^ uVar11;
            uVar11 = uVar11 << ((byte)((ulonglong)uStack_244 >> 0x20) & 0x1f) ^ uVar11;
            uVar11 = uVar11 >> ((byte)iStack_2a8 & 0x1f) ^ uVar11;
            uVar14 = FUN_00734180(uVar11,0x19,10,10,1);
            uStack_e0 = DAT_00b1f66c;
            iStack_d8 = DAT_00b1f674;
            uStack_e4 = uVar11;
            ppiVar12 = (int **)FUN_00865340(&uStack_e4,uVar14,1,1,0);
          }
        }
        else {
          if (ppiVar16 == (int **)0x46) {
            local_2a0 = (int *)((uint)ppiVar12 >> 0xb);
            do {
              if (ppiVar12 != (int **)0x0) {
                pcVar1 = (code *)(*local_2a4)[10];
                uVar14 = FUN_00734a80(ppiVar12,0);
                cVar9 = (*pcVar1)(uVar14);
                if (cVar9 == '\0') goto LAB_00545782;
              }
              local_28c = DAT_00c71678 + 0x69d0;
              if (uVar11 == 0) {
                FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                pcVar1 = (code *)swi(3);
                (*pcVar1)();
                return;
              }
              uVar11 = uVar11 >> ((byte)uStack_244 & 0x1f) ^ uVar11;
              uVar11 = uVar11 << ((byte)((ulonglong)uStack_244 >> 0x20) & 0x1f) ^ uVar11;
              uVar11 = uVar11 >> ((byte)iStack_2a8 & 0x1f) ^ uVar11;
              uVar20 = FUN_00734900(uVar11);
              ppiVar12 = (int **)(uVar20 | ((uint)local_2a0 & 1) << 0xb);
            } while( true );
          }
          if (ppiVar16 == (int **)0x64) {
            if ((ppiVar12 == (int **)0x19) ||
               (((local_28c = ppiVar12, FUN_004288a0(&local_20c,&local_28c),
                 *(char *)((int)local_204 + 0xd) == '\0' && ((int)local_204[4] <= (int)ppiVar12)) &&
                (local_204 != (int **)ppiVar6[8])))) {
              bVar21 = false;
            }
            else {
              bVar21 = true;
            }
            if ((ppiVar12 == (int **)0x0) || (bVar21)) {
              ppiVar12 = (int **)(*(code *)(*ppiVar6)[0x21])(0);
            }
          }
        }
      }
      else if (ppiVar16 == (int **)0x15e) {
        while ((ppiVar12 == (int **)0x0 ||
               (cVar9 = (*(code *)(*ppiVar6)[0xb])(ppiVar12), param_1 = local_27c, cVar9 != '\0')))
        {
          ppiVar12 = (int **)FUN_00733ca0(0);
        }
      }
    }
  }
LAB_00545782:
  if ((((uint)param_1[0x5a] & 0x20000000) != 0) && (iVar17 == 1000)) {
    switch(ppiVar16) {
    case (int **)0x16:
      ppiVar16 = (int **)0x2e;
      break;
    case (int **)0x17:
      ppiVar16 = (int **)0x35;
      break;
    case (int **)0x18:
      ppiVar16 = (int **)0xcc;
      break;
    case (int **)0x19:
      ppiVar16 = (int **)0x2c;
      break;
    case (int **)0x1a:
      ppiVar16 = (int **)0x2d;
    }
  }
  local_298 = (int **)FUN_006f0090(iVar17,0);
  lVar2 = CONCAT44(local_28c,local_288);
  if (local_298 != (int **)0x0) {
    uVar24 = FUN_00a68490();
    ppiVar7 = local_27c;
    ppiVar6 = local_298;
    uVar20 = (uint)(uVar24 >> 0x20);
    lVar2 = (uVar24 & 0xffffffff) * 0x431bde82;
    lVar3 = (ulonglong)uVar20 * 0xd7b634db;
    local_288 = (int **)((ulonglong)lVar3 >> 0x20);
    uVar24 = lVar3 + ((uVar24 & 0xffffffff) * 0xd7b634db >> 0x20);
    uVar18 = (uint)(uVar24 >> 0x20);
    lVar3 = lVar2 + (uVar24 & 0xffffffff);
    local_264 = (int *)lVar3;
    uVar11 = (uint)((ulonglong)lVar3 >> 0x20);
    lVar3 = (ulonglong)uVar20 * 0x431bde82 +
            (ulonglong)CONCAT14(CARRY4(uVar18,uVar11),uVar18 + uVar11);
    uVar11 = (uint)((ulonglong)lVar3 >> 0x20);
    local_2a4 = (int **)((uint)lVar3 >> 0x12 | uVar11 * 0x4000);
    local_298[0xd] = local_27c[10];
    local_298[0xe] = local_27c[0xb];
    local_294 = local_298 + 0xf2;
    ppiVar8 = (int **)((ulonglong)lVar2 >> 0x20);
    if (*local_294 != (int *)0x0) {
      FUN_004cf210(&local_294);
      ppiVar8 = local_294;
    }
    local_294 = ppiVar8;
    ppiVar6[0xf2] = (int *)ppiVar7;
    FUN_004cdcf0(ppiVar6 + 0xf2);
    ppiVar6[0xcf] = ppiVar7[0xcd];
    ppiVar6[0xd0] = ppiVar7[0xce];
    ppiVar6[0xd8] = (int *)DAT_00c7b640;
    ppiVar6[0xd9] = (int *)DAT_00c7b644;
    (*(code *)(*ppiVar6)[1])(iVar17,ppiVar16,ppiVar12,unaff_EDI);
    piVar15 = pppiVar28[0x60c0][0x485];
    pppiVar28[0x60c0][0x485] = (int *)((int)piVar15 + 1);
    ppiVar6[8] = piVar15;
    FUN_00418500(ppiVar6);
    cVar9 = FUN_006b5b90(1);
    if (cVar9 != '\0') {
      if (((uint)ppiVar7[0x5b] & 0x10000000) == 0) {
        cVar9 = FUN_00417430(0x20000000,0);
        if (cVar9 != '\0') {
          uVar27 = 0;
          uVar26 = 0;
          uVar25 = 0xffffffff;
          uVar14 = FUN_00435c70(0xffffffff,0,0);
          FUN_006ad870(uVar14,uVar25,uVar26,uVar27);
        }
      }
      else {
        piVar15 = ppiVar6[0x5b];
        piVar10 = ppiVar6[0x5a];
        ppiVar6[0x5a] = piVar10;
        ppiVar6[0x5b] = (int *)((uint)piVar15 | 0x10000000);
        if ((iVar17 != 9) && (iVar17 != 7)) {
          ppiVar6[0x5a] = piVar10;
          ppiVar6[0x5b] = (int *)((uint)piVar15 | 0x10000020);
        }
        FUN_00431310(ppiVar7[0x99]);
        FUN_006ad870(auStack_1ac,0xffffffff,0,0);
        if (iVar17 - 10U < 0x3de) {
          FUN_004a5d10(ppiVar16,1);
        }
      }
      iStack_2a8 = __RTDynamicCast(ppiVar7,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                   &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
      piVar15 = (int *)__RTDynamicCast(ppiVar6,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                       &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
      if ((iStack_2a8 != 0) && (piVar15 != (int *)0x0)) {
        cVar9 = FUN_00417430(1,0);
        if (cVar9 == '\0') {
          cVar9 = FUN_00417430(0,0x1000000);
          if (cVar9 != '\0') {
            FUN_00431310(0);
            FUN_006b78d0(auStack_184,0x5a);
          }
          cVar9 = FUN_00417430(0x1000000,0);
          if (cVar9 != '\0') {
            FUN_00431310(0);
            FUN_006b5c10(auStack_15c,0x5a,0,0);
            if (0 < piVar15[0x8f]) {
              piVar15[0x5a] = piVar15[0x5a] | 0x1000000;
              piVar15[0x5b] = piVar15[0x5b];
              piVar15[0xed] = piVar15[0xee];
            }
          }
        }
        fVar23 = (float)piVar15[0x30e] * *(float *)(iStack_2a8 + 0xf48);
        piVar15[0x30e] = (int)fVar23;
        fVar23 = fVar23 * (float)piVar15[0xed];
        fVar22 = fVar23 * DAT_00c3793c;
        piVar15[0x3a] = (int)(fVar23 * DAT_00c37940);
        piVar15[0x39] = (int)fVar22;
        piVar15[0x3d2] = (int)((float)piVar15[0x3d2] * *(float *)(iStack_2a8 + 0xf48));
        piVar15[0x3d1] = (int)((float)piVar15[0x3d1] * *(float *)(iStack_2a8 + 0xf44));
        piVar15[0xe1] = (int)((float)piVar15[0xe1] * *(float *)(iStack_2a8 + 0xf44));
        piVar15[0xe0] = (int)((float)piVar15[0xe0] * *(float *)(iStack_2a8 + 0xf44));
        cVar9 = (**(code **)(*piVar15 + 0x4c))();
        if (cVar9 != '\0') {
          FUN_0060d140(*(undefined4 *)(iStack_2a8 + 0xf54));
        }
      }
    }
    cVar9 = FUN_007078f0(ppiVar6);
    if (cVar9 != '\0') {
      FUN_007079c0(ppiVar6,extraout_ECX);
    }
    if ((*(char *)((int)ppiVar6 + 0x172) != '\0') && (pppiVar28[0x19dd6] != pppiVar28[0x19dd7])) {
      piStack_278 = ppiVar6[0xb];
      local_27c = (int **)ppiVar6[10];
      FUN_009e24a0(&local_288,&local_27c);
      if (local_288 == pppiVar28[0x19de0]) {
        local_264 = ppiVar6[10];
        local_260 = (int **)0xffffffff;
        piVar15 = (int *)FUN_009e24a0(&local_210,&local_264);
        if ((int **)*piVar15 == pppiVar28[0x19de0]) goto LAB_00545e4c;
      }
      uVar20 = 0;
      if ((int)DAT_00c71678[0x6eab] - (int)DAT_00c71678[0x6eaa] >> 2 != 0) {
        do {
          FUN_009b92c0(uVar20);
          FUN_009e0680(6,ppiVar6,local_268,&DAT_00c7b640);
          uVar20 = uVar20 + 1;
        } while (uVar20 < (uint)((int)DAT_00c71678[0x6eab] - (int)DAT_00c71678[0x6eaa] >> 2));
      }
    }
LAB_00545e4c:
    uVar24 = FUN_00a68490();
    local_27c = (int **)(uVar24 >> 0x20);
    lVar3 = (uVar24 & 0xffffffff) * 0x431bde82;
    local_294 = (int **)((ulonglong)lVar3 >> 0x20);
    local_268 = (float)(ZEXT48(local_27c) * 0xd7b634db >> 0x20);
    lVar2 = ZEXT48(local_27c) * 0x431bde82;
    uVar24 = ZEXT48(local_27c) * 0xd7b634db + ((uVar24 & 0xffffffff) * 0xd7b634db >> 0x20);
    uVar18 = (uint)(uVar24 >> 0x20);
    lVar3 = lVar3 + (uVar24 & 0xffffffff);
    local_254 = (int *)lVar3;
    uVar20 = (uint)((ulonglong)lVar3 >> 0x20);
    lVar3 = lVar2 + (ulonglong)CONCAT14(CARRY4(uVar18,uVar20),uVar18 + uVar20);
    uVar18 = (uint)((ulonglong)lVar3 >> 0x20);
    ppiVar16 = (int **)((uint)lVar3 >> 0x12 | uVar18 * 0x4000);
    uVar20 = (int)ppiVar16 - (int)local_2a4;
    bVar21 = CARRY4(DAT_00c7b630,uVar20);
    DAT_00c7b630 = DAT_00c7b630 + uVar20;
    DAT_00c7b634 = DAT_00c7b634 +
                   (((uVar18 >> 0x12) - (uVar11 >> 0x12)) - (uint)(ppiVar16 < local_2a4)) +
                   (uint)bVar21;
  }
  local_28c = (int **)((ulonglong)lVar2 >> 0x20);
  local_288 = (int **)lVar2;
  piVar15 = (int *)__RTDynamicCast(local_298,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                   &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,0);
  piVar15[0x117] = 0x1e;
  piVar15[0x118] = 0x1e;
  fVar22 = DAT_00c3793c * DAT_00baa630;
  piVar15[0x3a] = (int)(DAT_00c37940 * DAT_00baa630);
  piVar15[0x39] = (int)fVar22;
  (**(code **)(*piVar15 + 0xc))();
LAB_00545f40:
  FUN_00aef12b();
  return;
}

