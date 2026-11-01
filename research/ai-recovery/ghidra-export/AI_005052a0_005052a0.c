/* Local J460 decompiler output.
 * VA: 0x005052a0
 * Entry: 005052a0
 * Dispatcher: 0x006c2990
 * Types: 828
 * Identities: 828.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00505b40; instructions=509
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=828; identities=828.0.0; dispatcher=0x006c2990;
   end=0x00505b40; instructions=509 */

void __fastcall AI_005052a0(int *param_1)

{
  undefined auVar1 [16];
  char cVar2;
  undefined4 uVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  int **ppiVar7;
  int iVar8;
  int iVar9;
  float *pfVar10;
  int iVar11;
  uint uVar12;
  float fVar13;
  int **ppiVar14;
  int **ppiVar15;
  int **local_9c;
  int local_98;
  int **local_94;
  int **local_90;
  float local_8c;
  float local_88;
  int **local_84;
  undefined4 uStack_80;
  float local_7c;
  float local_78;
  float local_74;
  float local_70;
  undefined4 local_6c;
  undefined4 uStack_68;
  undefined local_64 [8];
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined local_54 [16];
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  uint local_c;
  
  iVar8 = DAT_00c71678;
  local_c = DAT_00bf93b4 ^ (uint)&local_9c;
  local_98 = (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8];
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
  iVar8 = *(int *)(iVar8 + 0x18300);
  iVar6 = param_1[0x2d9];
  if (iVar6 != 0) {
    if (iVar6 == 3) {
      FUN_0040a380("Shake",0);
      if (param_1[0x2e9] < 1) {
        iVar6 = FUN_006be840();
        local_74 = *(float *)(iVar6 + 0x33c);
        local_70 = *(float *)(iVar6 + 0x340);
        local_8c = (float)param_1[0xcf] - local_74;
        local_88 = (float)param_1[0xd0] - local_70;
        fVar13 = local_8c * local_8c + local_88 * local_88;
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar13) {
          local_8c = (DAT_00baa454 / fVar13) * local_8c;
          local_88 = local_88 * (DAT_00baa454 / fVar13);
        }
        if (((NAN(local_8c) || NAN(DAT_00c7b640)) == (local_8c == DAT_00c7b640)) ||
           ((NAN(local_88) || NAN(DAT_00c7b644)) == (local_88 == DAT_00c7b644))) {
          iVar6 = 0;
          do {
            iVar9 = FUN_006eef60();
            ppiVar14 = (int **)(((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)])
                                 * DAT_00ba9ff4 * DAT_00baaaf4 - DAT_00baaa24) * DAT_00baa088);
            local_9c = ppiVar14;
            FUN_0041d540();
            local_84 = ppiVar14;
            FUN_0041d520();
            iVar9 = FUN_006eef60();
            fVar13 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baaa00 + DAT_00baa950;
            local_94 = (int **)(((float)local_84 * local_8c - (float)local_9c * local_88) * fVar13 +
                               (float)param_1[0xcf]);
            local_9c = (int **)(((float)local_9c * local_8c + (float)local_84 * local_88) * fVar13 +
                               (float)param_1[0xd0]);
            local_90 = local_9c;
            local_84 = local_94;
            if (*(int *)(*(int *)(*(int *)(iVar8 + 4) + 0x10) + 0x48) - 9U < 4) {
              FUN_00812f50(&local_7c,&local_94,0,0,0);
              if (((NAN(local_7c) || NAN((float)local_84)) != (local_7c == (float)local_84)) &&
                 ((NAN(local_78) || NAN((float)local_9c)) != (local_78 == (float)local_9c))) {
LAB_005059d2:
                iVar11 = (int)(((float)local_9c - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
                iVar9 = (int)(((float)local_84 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
                if (((iVar9 < 0) || ((*(int *)(iVar8 + 0xc) <= iVar9 || (iVar11 < 0)))) ||
                   (*(int *)(iVar8 + 0x10) <= iVar11)) {
                  iVar9 = -1;
                }
                else {
                  iVar9 = *(int *)(iVar8 + 0xc) * iVar11 + iVar9;
                }
                uVar3 = 0x505a2c;
                iVar11 = FUN_007f0800(iVar9);
                if (iVar11 != 0) {
                  iVar9 = 0;
                  uVar3 = 0;
                  pfVar10 = (float *)FUN_00813520(&local_6c,&local_94,0x41200000,1,0,0);
                  local_94 = (int **)*pfVar10;
                  local_90 = (int **)pfVar10[1];
                }
                cVar2 = FUN_006b9740(&local_94,uVar3,iVar9);
                if ((cVar2 == '\0') &&
                   (cVar2 = FUN_007f0df0(&local_94,&local_74,3,0,0,0,0), ppiVar14 = local_94,
                   ppiVar7 = local_90, cVar2 != '\0')) goto LAB_00505aae;
              }
            }
            else if ((((*(float *)(iVar8 + 0x14) + 0.0 <= (float)local_94) &&
                      ((float)local_94 <= *(float *)(iVar8 + 0x1c) - 0.0)) &&
                     (*(float *)(iVar8 + 0x18) + 0.0 <= (float)local_9c)) &&
                    ((float)local_9c <= *(float *)(iVar8 + 0x20) - 0.0)) goto LAB_005059d2;
            iVar6 = iVar6 + 1;
          } while (iVar6 < 10);
          ppiVar14 = (int **)0x0;
          ppiVar7 = (int **)0x0;
LAB_00505aae:
          if (((NAN((float)ppiVar14) || NAN(DAT_00c7b640)) == ((float)ppiVar14 == DAT_00c7b640)) ||
             ((NAN((float)ppiVar7) || NAN(DAT_00c7b644)) == ((float)ppiVar7 == DAT_00c7b644))) {
            param_1[0xcd] = (int)ppiVar14;
            param_1[0xce] = (int)ppiVar7;
            param_1[0x2d9] = 8;
            FUN_0040a380("Attack",0);
          }
        }
      }
      goto LAB_00505b19;
    }
    if (iVar6 != 8) goto LAB_00505b19;
    if (param_1[0x1f] != 0) {
      cVar2 = FUN_0040add0("Summon");
      if (cVar2 != '\0') {
        uVar3 = FUN_006eef60();
        piVar4 = (int *)FUN_006fe410(9,1,param_1 + 0xcd,&DAT_00c7b640,param_1,0,uVar3,0);
        ppiVar14 = (int **)(piVar4 + 0xef);
        piVar4[0x104] = -0x3f400000;
        piVar4[0x105] = 0;
        piVar4[0x108] = 0x3f800000;
        piVar4[0x10e] = 0;
        piVar4[0x10f] = 0x100;
        if (piVar4[0xef] != 0) {
          local_9c = ppiVar14;
          FUN_004cf210(&local_9c);
        }
        *ppiVar14 = param_1;
        FUN_004cdcf0(ppiVar14);
        FUN_006cb2a0(piVar4);
        local_44 = 0;
        local_40 = 0;
        local_54 = ZEXT816(0);
        local_3c = 0;
        _local_64 = ZEXT816(0);
        (**(code **)(*piVar4 + 0x3c))(local_64,6,1,1,1);
        (**(code **)(*piVar4 + 0xc))();
        uVar3 = FUN_006eef60();
        piVar5 = (int *)FUN_006fe410(1000,0x85,param_1 + 0xcd,&DAT_00c7b640,0,0,uVar3,0);
        local_78 = _DAT_00bac7b0;
        local_74 = _UNK_00bac7b4;
        local_70 = _UNK_00bac7b8;
        local_6c = _UNK_00bac7bc;
        uStack_68 = _DAT_00bac880;
        local_64._4_4_ = _UNK_00bac888;
        local_64._0_4_ = _UNK_00bac884;
        uStack_5c = _UNK_00bac88c;
        uStack_58 = 0;
        auVar1._8_8_ = 0;
        auVar1._0_8_ = local_54._8_8_;
        local_54 = auVar1 << 0x40;
        (**(code **)(*piVar5 + 0x3c))(&local_78,0xffffffff,0xff,0,1);
        local_9c = (int **)0xa2;
        FUN_00956780();
        FUN_0092dc30(local_9c,0x3f000000,2,0,0x3f800000,0);
        ppiVar14 = (int **)(param_1 + 0xf0);
        if (param_1[0xf0] != 0) {
          local_9c = ppiVar14;
          FUN_004cf210(&local_9c);
        }
        *ppiVar14 = piVar4;
        FUN_004cdcf0(ppiVar14);
      }
      if (param_1[0x1f] != 0) {
        cVar2 = FUN_0040add0("Shoot");
        if (cVar2 != '\0') {
          iVar8 = param_1[0xf0];
          ppiVar14 = (int **)(param_1 + 0xf0);
          if ((iVar8 != 0) && (*(int *)(iVar8 + 0x28) == 9)) {
            iVar6 = FUN_006be840();
            local_94 = (int **)(*(float *)(iVar6 + 0x33c) - *(float *)(iVar8 + 0x33c));
            local_90 = (int **)(*(float *)(iVar6 + 0x340) - *(float *)(iVar8 + 0x340));
            FUN_00a10100(&local_84,0x41200000);
            *(uint *)(iVar8 + 0x43c) = *(uint *)(iVar8 + 0x43c) & 0xfffffeff;
            *(int ***)(iVar8 + 0x360) = local_84;
            *(undefined4 *)(iVar8 + 0x438) = *(undefined4 *)(iVar8 + 0x438);
            *(undefined4 *)(iVar8 + 0x364) = uStack_80;
            uVar3 = FUN_00407170();
            local_94 = (int **)(*(float *)(iVar8 + 0x34c) * DAT_00baa324);
            local_84 = *(int ***)(iVar8 + 0x33c);
            uStack_80 = *(undefined4 *)(iVar8 + 0x340);
            local_90 = (int **)(*(float *)(iVar8 + 0x350) * DAT_00baa324);
            ppiVar7 = (int **)FUN_006d7cf0(&local_94,uVar3,&DAT_00c7b640);
            local_44 = 0x3ecccccd;
            local_40 = 0x3e99999a;
            local_64._4_4_ = _UNK_00babf24;
            local_64._0_4_ = _DAT_00babf20;
            uStack_5c = _UNK_00babf28;
            uStack_58 = _UNK_00babf2c;
            local_3c = 0x3f333333;
            ppiVar15 = (int **)0x0;
            *(undefined *)(ppiVar7 + 0x52) = 1;
            ppiVar7[0xd6] = (int *)0x3f800000;
            local_54 = ZEXT816(0);
            local_9c = ppiVar7;
            (*(code *)(*ppiVar7)[0xf])(local_64,0xffffffff,0xff,0,1);
            uVar12 = DAT_00c798e4;
            if (&DAT_00000004 < ppiVar7[0x32]) {
              ppiVar7 = ppiVar15;
              iVar8 = FUN_0040b220(4);
              uVar3 = 1;
              if ((uVar12 & 4) == 0) {
                uVar3 = 6;
              }
              *(undefined4 *)(iVar8 + 0x78) = 0;
              *(undefined4 *)(iVar8 + 0x7c) = uVar3;
              *(undefined4 *)(iVar8 + 0x80) = 1;
              *(undefined4 *)(iVar8 + 0x84) = 1;
              *(undefined4 *)(iVar8 + 0x88) = 1;
            }
            (*(code *)(*ppiVar7)[3])();
            FUN_006d6ba0(0xf9,0x3f800000,2,0,0x3f800000);
            if (*ppiVar14 != (int *)0x0) {
              local_9c = ppiVar14;
              FUN_004cf210(&local_9c);
            }
            *ppiVar14 = (int *)0x0;
          }
        }
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_00505b19;
      }
    }
  }
  param_1[0x2d9] = 3;
  if (param_1[0x3c7] == -1) {
    uVar12 = FUN_006eef60();
    uVar12 = uVar12 % 0x1e;
  }
  else {
    uVar12 = 0;
  }
  param_1[0x2e9] = uVar12;
LAB_00505b19:
  if (0 < param_1[0x2e9]) {
    param_1[0x2e9] = param_1[0x2e9] - local_98;
  }
  FUN_00aef12b();
  return;
}

