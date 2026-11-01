/* Local J460 decompiler output.
 * VA: 0x0051e0f0
 * Entry: 0051e0f0
 * Dispatcher: 0x006c2990
 * Types: 271,272
 * Identities: 271.0.0,271.1.0,272.0.0,272.1.0
 * Evidence: dispatcher=0x006c2990; end=0x0051f2f0; instructions=998
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=271,272; identities=271.0.0,271.1.0,272.0.0,272.1.0;
   dispatcher=0x006c2990; end=0x0051f2f0; instructions=998 */

void __fastcall AI_0051e0f0(int param_1)

{
  undefined auVar1 [16];
  char cVar2;
  int *piVar3;
  uint uVar4;
  int iVar5;
  float *pfVar6;
  uint uVar7;
  undefined4 uVar8;
  undefined *puVar9;
  undefined *extraout_ECX;
  undefined4 *extraout_ECX_00;
  int *piVar10;
  undefined *puVar11;
  char *pcVar12;
  bool bVar13;
  float fVar14;
  float fVar15;
  undefined *puVar16;
  undefined4 uVar17;
  undefined **ppuVar18;
  TypeDescriptor *pTVar19;
  TypeDescriptor *pTVar20;
  undefined4 uVar21;
  undefined local_15c [8];
  undefined local_154 [8];
  float local_14c;
  undefined *local_148;
  float local_144;
  undefined *local_140;
  undefined *local_13c;
  float local_138;
  undefined *local_134;
  undefined *local_130;
  undefined *local_12c;
  undefined *local_128;
  undefined local_f8 [4];
  undefined4 local_f4;
  undefined4 local_f0;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [5];
  undefined auStack_3b [11];
  undefined4 local_30;
  uint local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af456d;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar5 = *(int *)(param_1 + 0xb64);
  if (iVar5 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x410) = 0;
    puStack_20 = &stack0xfffffffc;
    if (*(int *)(param_1 + 0x2c) == 1) {
      local_134 = (undefined *)0x0;
      puVar11 = (undefined *)0x0;
      puStack_20 = &stack0xfffffffc;
      puVar16 = &stack0xfffffffc;
      if (*(int *)(param_1 + 200) != 0) {
        do {
          puVar16 = local_134;
          piVar3 = (int *)FUN_0040b220(local_134);
          if (*piVar3 == 0) {
            uVar4 = local_40._0_4_;
            auVar1._8_8_ = 0;
            auVar1._0_8_ = auStack_3b._3_8_;
            _local_40 = auVar1 << 0x40;
            local_2c = 0;
            local_28 = 0xf;
            local_40[4] = 0;
            local_40 = (undefined  [5])CONCAT14(local_40[4],uVar4);
          }
          else {
            FUN_0040cf50(*piVar3 + 0x20);
          }
          local_14 = 0;
          local_12c = local_40 + 4;
          if (0xf < local_28) {
            local_12c = stack0xffffffc4;
          }
          local_128 = stack0xffffffc4;
          puVar11 = stack0xffffffc4;
          if (4 < local_2c) {
            local_13c = local_12c + (local_2c - 4);
            piVar3 = (int *)memchr(local_12c,0x41,(int)local_13c - (int)local_12c);
            puVar11 = local_128;
            while (local_128 = puVar11, piVar3 != (int *)0x0) {
              local_14c = 1.401298e-45;
              pcVar12 = "Angel";
              piVar10 = piVar3;
              if (*piVar3 == s_Angel_00b1ce38._0_4_) {
                piVar10 = piVar3 + 1;
                local_14c = -NAN;
                pcVar12 = "l";
              }
              bVar13 = *(byte *)piVar10 < (byte)*pcVar12;
              if ((*(byte *)piVar10 == *pcVar12) &&
                 ((local_14c == -NAN ||
                  (((bVar13 = *(byte *)((int)piVar10 + 1) < ((byte *)pcVar12)[1],
                    *(byte *)((int)piVar10 + 1) == ((byte *)pcVar12)[1] &&
                    (bVar13 = *(byte *)((int)piVar10 + 2) < ((byte *)pcVar12)[2],
                    *(byte *)((int)piVar10 + 2) == ((byte *)pcVar12)[2])) &&
                   (bVar13 = *(byte *)((int)piVar10 + 3) < ((byte *)pcVar12)[3],
                   *(byte *)((int)piVar10 + 3) == ((byte *)pcVar12)[3])))))) {
                uVar4 = 0;
              }
              else {
                uVar4 = -(uint)bVar13 | 1;
              }
              if (uVar4 == 0) {
                puVar16 = local_134;
                if ((int)piVar3 - (int)local_12c != -1) {
                  uVar4 = local_2c - 4;
                  if (local_2c < uVar4) {
                    FUN_00414870(uVar4 - local_2c,0);
                  }
                  else {
                    puVar16 = local_40 + 4;
                    if (0xf < local_28) {
                      puVar16 = puVar11;
                    }
                    local_2c = uVar4;
                    puVar16[uVar4] = 0;
                  }
                  FUN_004997f0("Black.png",9);
                  puVar16 = local_134;
                  FUN_0040bf30(local_134,local_40 + 4);
                  puVar11 = stack0xffffffc4;
                }
                break;
              }
              piVar3 = (int *)memchr((byte *)((int)piVar3 + 1),0x41,
                                     (int)local_13c - (int)(byte *)((int)piVar3 + 1));
              puVar16 = local_134;
              puVar11 = local_128;
            }
          }
          local_14 = 0xffffffff;
          if (0xf < local_28) {
            uVar4 = local_28 + 1;
            puVar9 = puVar11;
            if (0xfff < uVar4) {
              puVar9 = *(undefined **)(puVar11 + -4);
              uVar4 = local_28 + 0x24;
              if ((undefined *)0x1f < puVar11 + (-4 - (int)puVar9)) {
                    /* WARNING: Subroutine does not return */
                _invalid_parameter_noinfo_noreturn();
              }
            }
            FUN_00aef15c(puVar9,uVar4);
            puVar11 = extraout_ECX;
          }
          local_134 = puVar16 + 1;
          puVar16 = puStack_20;
        } while (local_134 < *(undefined **)(param_1 + 200));
      }
      puStack_20 = puVar16;
      FUN_0040c000(puVar11);
    }
    goto LAB_0051f2c7;
  }
  puVar11 = *(undefined **)(param_1 + 0x410);
  local_14c = DAT_00baa454;
  *(undefined4 *)(param_1 + 0x36c) = 0x3f4ccccd;
  *(undefined **)(param_1 + 0x410) =
       puVar11 + ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
  local_134 = (undefined *)0x0;
  local_12c = puVar11;
  if (iVar5 == 4) {
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380("Float",0);
    iVar5 = FUN_006be840();
    local_128 = (undefined *)(*(float *)(iVar5 + 0x33c) - *(float *)(param_1 + 0x33c));
    local_134 = (undefined *)(*(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340));
    if (((float)((uint)local_134 & DAT_00bacb40) < (float)((uint)local_128 & DAT_00bacb40)) &&
       (local_134 = (undefined *)((float)local_134 * _DAT_00baad54),
       *(int *)(param_1 + 0x28) == 0x10f)) {
      fVar14 = (float)local_128 * (float)local_128 + (float)local_134 * (float)local_134;
      FUN_00435a50();
      local_134 = (undefined *)((uint)fVar14 ^ DAT_00bacb70);
      if (*(float *)(param_1 + 0x340) - *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x18) <
          DAT_00baa8d0) {
        local_134 = (undefined *)0x0;
      }
      if ((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x37) &&
         (*(float *)(param_1 + 0x340) - DAT_00baab14 < DAT_00baa8d0)) {
        local_134 = (undefined *)0x0;
      }
    }
    fVar15 = (float)local_134 * (float)local_134 + (float)local_128 * (float)local_128;
    FUN_00435a50();
    puVar16 = local_134;
    fVar14 = (float)local_128;
    if (DAT_00ba9fe4 < fVar15) {
      puVar16 = (undefined *)((float)local_134 * (DAT_00baa454 / fVar15));
      fVar14 = (float)local_128 * (DAT_00baa454 / fVar15);
    }
    if (*(int *)(param_1 + 0xf1c) != -1) {
      pfVar6 = (float *)FUN_006d82d0(local_154);
      fVar14 = *pfVar6;
      puVar16 = (undefined *)pfVar6[1];
    }
    if (*(int *)(param_1 + 0x28) == 0x10f) {
      fVar14 = fVar14 * DAT_00baa528;
      puVar16 = (undefined *)((float)puVar16 * DAT_00baa528);
    }
    else if (*(int *)(param_1 + 0x28) == 0x110) {
      fVar14 = fVar14 * _DAT_00baa560;
      puVar16 = (undefined *)((float)puVar16 * _DAT_00baa560);
    }
    local_128 = (undefined *)0xffffffff;
    *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x39c) * fVar14 + *(float *)(param_1 + 0x360)
    ;
    *(float *)(param_1 + 0x364) =
         *(float *)(param_1 + 0x39c) * (float)puVar16 + *(float *)(param_1 + 0x364);
    if (*(int *)(param_1 + 0xf1c) == -1) {
LAB_0051e633:
      if ((*(int *)(param_1 + 0x410) / 0x1e <= (int)puVar11 / 0x1e) ||
         (uVar4 = FUN_006eef60(), uVar4 % 3 != 0)) goto LAB_0051f203;
    }
    else {
      pfVar6 = (float *)FUN_006d85a0(local_15c);
      if (((NAN(*pfVar6) || NAN(DAT_00c7b640)) == (*pfVar6 == DAT_00c7b640)) ||
         ((NAN(pfVar6[1]) || NAN((float)DAT_00c7b644)) == (pfVar6[1] == (float)DAT_00c7b644))) {
        puVar16 = (undefined *)0x0;
        local_128 = puVar16;
      }
      else {
        cVar2 = FUN_006d8260(9);
        if (cVar2 == '\0') {
          cVar2 = FUN_006d8260(10);
          if (cVar2 == '\0') {
            cVar2 = FUN_006d8260(8);
            if (((cVar2 == '\0') || (*(int *)(param_1 + 0x28) != 0x110)) ||
               (iVar5 = FUN_006d6c20(), 2 < iVar5)) {
              puVar16 = (undefined *)0xffffffff;
            }
            else {
              puVar16 = (undefined *)0x3;
              local_128 = puVar16;
            }
          }
          else {
            puVar16 = (undefined *)0x2;
            local_128 = puVar16;
          }
        }
        else {
          puVar16 = (undefined *)0x1;
          local_128 = puVar16;
        }
      }
      if (*(int *)(param_1 + 0xf1c) == -1) goto LAB_0051e633;
      if ((int)puVar16 < 0) goto LAB_0051f203;
    }
    uVar4 = 3;
    if ((*(int *)(param_1 + 0x28) == 0x110) && (iVar5 = FUN_006d6c20(), iVar5 < 3)) {
      uVar4 = 4;
    }
    uVar7 = FUN_006eef60();
    puVar11 = (undefined *)(uVar7 % uVar4);
    if ((*(int *)(param_1 + 0x28) == 0x10f) &&
       (((puVar11 == (undefined *)0x1 || (puVar11 == (undefined *)0x2)) &&
        (iVar5 = FUN_006be840(), *(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340) < 0.0)))) {
      puVar11 = (undefined *)0x0;
    }
    puVar16 = local_128;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      *(float *)(param_1 + 0xf20) = DAT_00c7b640;
      puVar16 = DAT_00c7b644;
    }
    else {
      FUN_006d85a0(&local_130);
      *(undefined **)(param_1 + 0xf20) = local_130;
      puVar11 = puVar16;
      puVar16 = local_12c;
    }
    *(undefined **)(param_1 + 0xf24) = puVar16;
    if (puVar11 == (undefined *)0x0) {
      *(undefined4 *)(param_1 + 0xb64) = 8;
      *(undefined4 *)(param_1 + 0xbc0) = 0;
      *(undefined4 *)(param_1 + 0x410) = 0;
    }
    else if (puVar11 == (undefined *)0x1) {
      *(undefined4 *)(param_1 + 0xb64) = 9;
      *(undefined4 *)(param_1 + 0xbc0) = 0;
      *(undefined4 *)(param_1 + 0x410) = 0;
      if (*(int *)(param_1 + 0x28) == 0x10f) {
        uVar8 = FUN_004238f0(0x3f4ccccd);
        puVar11 = DAT_00baa54c;
        FUN_0041d540();
        puVar16 = DAT_00baa54c;
        local_130 = puVar11;
LAB_0051e7cd:
        FUN_0041d520();
        local_140 = (undefined *)0x0;
        local_13c = (undefined *)0xc2200000;
        local_12c = puVar16;
        FUN_0060b890(&local_130,0x20,uVar8,0x40800000);
      }
      else if (*(int *)(param_1 + 0x28) == 0x110) {
        local_128 = (undefined *)0x0;
        do {
          local_30 = 0;
          _local_40 = ZEXT816(0);
          local_2c = 0;
          local_50 = _DAT_00babe40;
          uStack_4c = _UNK_00babe44;
          uStack_48 = _UNK_00babe48;
          uStack_44 = _UNK_00babe4c;
          local_28 = 0;
          puVar11 = (undefined *)((float)local_128 * DAT_00baa088);
          local_12c = puVar11;
          FUN_0041d540();
          local_140 = puVar11;
          FUN_0041d520();
          puVar11 = (undefined *)(((float)local_128 * DAT_00baa708) / DAT_00baaa78);
          local_13c = local_12c;
          local_12c = puVar11;
          FUN_0041d540();
          local_138 = (float)puVar11 * DAT_00baa7b8 + DAT_00ba9fe4;
          puVar11 = local_12c;
          FUN_0041d520();
          local_134 = (undefined *)((float)puVar11 * DAT_00baa7b8 - DAT_00baa924);
          FUN_0060b890(&local_140,0x20,&local_50,0x40800000);
          local_128 = (undefined *)((float)local_128 + DAT_00baa9b4);
        } while ((float)local_128 < DAT_00baab30);
      }
    }
    else if (puVar11 == (undefined *)0x2) {
      *(undefined4 *)(param_1 + 0xb64) = 10;
      *(undefined4 *)(param_1 + 0xbc0) = 0;
      *(undefined4 *)(param_1 + 0x410) = 0;
      if (*(int *)(param_1 + 0x28) == 0x10f) {
        uVar8 = FUN_004238f0(0x3f4ccccd);
        puVar11 = DAT_00baa398;
        FUN_0041d540();
        puVar16 = DAT_00baa398;
        local_130 = puVar11;
        FUN_0041d520();
        local_140 = (undefined *)0x0;
        local_13c = (undefined *)0xc2200000;
        local_12c = puVar16;
        FUN_0060b890(&local_130,0x20,uVar8,0x40800000);
        uVar8 = FUN_004238f0(0x3f4ccccd);
        puVar11 = DAT_00baa6b0;
        FUN_0041d540();
        puVar16 = DAT_00baa6b0;
        local_130 = puVar11;
        goto LAB_0051e7cd;
      }
      if (*(int *)(param_1 + 0x28) == 0x110) {
        local_134 = (undefined *)0x0;
        do {
          local_30 = 0;
          _local_40 = ZEXT816(0);
          local_2c = 0;
          local_50 = _DAT_00babe40;
          uStack_4c = _UNK_00babe44;
          uStack_48 = _UNK_00babe48;
          uStack_44 = _UNK_00babe4c;
          local_28 = 0;
          local_128 = (undefined *)((float)local_134 + DAT_00baa910);
          puVar16 = (undefined *)((float)local_128 * DAT_00baa088);
          local_12c = puVar16;
          FUN_0041d540();
          puVar11 = local_12c;
          local_140 = puVar16;
          FUN_0041d520();
          puVar16 = (undefined *)(((float)local_128 * DAT_00baa708) / DAT_00baaa78);
          local_13c = puVar11;
          local_128 = puVar16;
          FUN_0041d540();
          local_148 = (undefined *)((float)puVar16 * DAT_00baa7b8 + DAT_00ba9fe4);
          puVar11 = local_128;
          FUN_0041d520();
          local_144 = (float)puVar11 * DAT_00baa7b8 - DAT_00baa924;
          FUN_0060b890(&local_140,0x20,&local_50,0x40800000);
          local_134 = (undefined *)((float)local_134 + DAT_00baa9b4);
        } while ((float)local_134 < DAT_00baab30);
      }
    }
    else if (puVar11 == (undefined *)0x3) {
      *(undefined4 *)(param_1 + 0xb64) = 0xd;
      *(undefined4 *)(param_1 + 0xbc0) = 0;
      *(undefined4 *)(param_1 + 0x410) = 0;
    }
  }
  else if (iVar5 == 8) {
    puStack_20 = &stack0xfffffffc;
    FUN_006d9050(0);
    if (*(int *)(param_1 + 0xbc0) == 0) {
      FUN_0040a380("Shield",0);
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(undefined4 *)(param_1 + 0xbc0) = 1;
      }
    }
    else {
      FUN_0040a380("SpreadShot",0);
      if (*(int *)(param_1 + 0x7c) != 0) {
        cVar2 = FUN_0040add0("Shoot");
        if (cVar2 != '\0') {
          AI_0043ef30();
          local_f4 = 0xc1880000;
          local_f0 = 0x3fa66666;
          FUN_006d6ba0(0x10b,0x3f000000,2,0,0x3f800000);
          FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
          if (*(int *)(param_1 + 0x28) == 0x10f) {
            iVar5 = FUN_006be840();
            local_130 = (undefined *)(*(float *)(iVar5 + 0x33c) - *(float *)(param_1 + 0x33c));
            local_12c = (undefined *)(*(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340));
            cVar2 = FUN_00a10630(&DAT_00c7b640);
            if (cVar2 != '\0') {
              local_130 = (undefined *)*extraout_ECX_00;
              local_12c = (undefined *)extraout_ECX_00[1];
            }
            FUN_00a0ffc0();
            local_148 = (undefined *)((float)local_130 * DAT_00baa7e8);
            uVar8 = 5;
            ppuVar18 = &local_148;
            local_144 = (float)local_12c * DAT_00baa7e8;
          }
          else {
            if (*(int *)(param_1 + 0x28) != 0x110) goto LAB_0051ed69;
            local_130 = (undefined *)0x41200000;
            uVar8 = 9;
            ppuVar18 = &local_130;
            local_12c = (undefined *)0x41400000;
          }
          FUN_006cb2e0(param_1 + 0x33c,ppuVar18,uVar8,local_f8);
        }
LAB_0051ed69:
        if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
        goto LAB_0051f203;
      }
      *(undefined4 *)(param_1 + 0xbc0) = 0;
      *(undefined4 *)(param_1 + 0x410) = 0;
LAB_0051f1f9:
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
  }
  else if ((iVar5 == 9) || (iVar5 == 10)) {
    if (*(int *)(param_1 + 0xbc0) == 0) {
      if ((*(int *)(param_1 + 0x28) != 0x110) || (pcVar12 = "Charging2", iVar5 != 10)) {
        pcVar12 = "Charging";
      }
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380(pcVar12,0);
      if (0x19 < *(int *)(param_1 + 0x410)) {
        *(undefined4 *)(param_1 + 0xbc0) = 1;
        *(undefined4 *)(param_1 + 0x410) = 0;
      }
      if (*(int *)(param_1 + 0xf1c) != -1) {
        FUN_006d82d0(&local_130);
        if (*(int *)(param_1 + 0x28) == 0x10f) {
          puVar11 = (undefined *)((float)local_130 * _DAT_00baa260);
          puVar16 = (undefined *)((float)local_12c * _DAT_00baa260);
        }
        else {
          puVar11 = local_130;
          puVar16 = local_12c;
          if (*(int *)(param_1 + 0x28) == 0x110) {
            puVar11 = (undefined *)((float)local_130 * _DAT_00baa28c);
            puVar16 = (undefined *)((float)local_12c * _DAT_00baa28c);
          }
        }
        *(float *)(param_1 + 0x360) =
             (float)puVar11 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             (float)puVar16 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
      }
    }
    else {
      FUN_0040a380("LaserShot",0);
      if ((*(int *)(param_1 + 0x7c) != 0) && (cVar2 = FUN_0040add0("Shoot"), cVar2 != '\0')) {
        if (*(int *)(param_1 + 0x28) == 0x10f) {
          local_130 = (undefined *)(*(float *)(param_1 + 0x33c) + DAT_00ba9fe4);
          local_12c = (undefined *)(*(float *)(param_1 + 0x340) + DAT_00baa784);
          local_148 = (undefined *)0x0;
          local_144 = -50.0;
          if (*(int *)(param_1 + 0xb64) == 9) {
            uVar8 = 0x42b40000;
          }
          else {
            piVar3 = (int *)FUN_0096f310(5,&local_130,0x42340000,0x1e,&local_148,param_1,0);
            piVar3[0x61] = 0;
            (**(code **)(*piVar3 + 0xc))();
            local_130 = (undefined *)(*(float *)(param_1 + 0x33c) + DAT_00ba9fe4);
            local_12c = (undefined *)(*(float *)(param_1 + 0x340) + DAT_00baa784);
            uVar8 = 0x43070000;
          }
          local_144 = -50.0;
          local_148 = (undefined *)0x0;
          piVar3 = (int *)FUN_0096f310(5,&local_130,uVar8,0x1e,&local_148,param_1,0);
          piVar3[0x61] = 0;
          (**(code **)(*piVar3 + 0xc))();
        }
        else if (*(int *)(param_1 + 0x28) == 0x110) {
          local_148 = (undefined *)0x0;
          puVar11 = (undefined *)0x0;
          local_144 = -50.0;
          do {
            if (*(int *)(param_1 + 0xb64) == 10) {
              puVar11 = (undefined *)((float)puVar11 + DAT_00baa910);
            }
            puVar16 = (undefined *)(((float)puVar11 * DAT_00baa708) / DAT_00baaa78);
            local_12c = puVar16;
            local_128 = puVar11;
            FUN_0041d540();
            local_140 = (undefined *)((float)puVar16 * DAT_00baa7b8 + *(float *)(param_1 + 0x33c));
            puVar11 = local_12c;
            FUN_0041d520();
            local_13c = (undefined *)((float)puVar11 * DAT_00baa7b8 + *(float *)(param_1 + 0x340));
            piVar3 = (int *)FUN_0096f310(5,&local_140,local_128,0x1e,&local_148,param_1,0);
            piVar3[0x61] = 0;
            (**(code **)(*piVar3 + 0xc))();
            puVar11 = (undefined *)((float)local_134 + DAT_00baa9b4);
            local_134 = puVar11;
          } while ((float)puVar11 < DAT_00baab30);
        }
      }
      if (0x32 < *(int *)(param_1 + 0x410)) {
        *(undefined4 *)(param_1 + 0xbc0) = 0;
        goto LAB_0051f1f9;
      }
    }
  }
  else {
    puStack_20 = &stack0xfffffffc;
    if (iVar5 == 0xd) {
      if (*(int *)(param_1 + 0xbc0) != 0) {
        puStack_20 = &stack0xfffffffc;
        FUN_0040a380(&DAT_00b60e98,0);
        if ((((int)local_12c / 10 < *(int *)(param_1 + 0x410) / 10) &&
            (*(int *)(param_1 + 0x410) < 0x14)) && (iVar5 = FUN_006d6c20(), iVar5 < 3)) {
          FUN_006d6ba0(0x109,0x3fc00000,2,0,0x3f800000);
          uVar8 = FUN_006eef60();
          uVar21 = 0;
          pTVar20 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
          pTVar19 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar17 = 0;
          uVar8 = FUN_00428b20(0x26,1,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar8);
          __RTDynamicCast(uVar8,uVar17,pTVar19,pTVar20,uVar21);
        }
        goto LAB_0051ed69;
      }
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380("Shield",0);
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(undefined4 *)(param_1 + 0xbc0) = 1;
        *(undefined4 *)(param_1 + 0x410) = 0;
      }
    }
  }
LAB_0051f203:
  if ((*(int *)(param_1 + 0x7c) != 0) && (cVar2 = FUN_0040add0(&DAT_00b1dd68), cVar2 != '\0')) {
    fVar14 = DAT_00baa528;
    if ((*(int *)(param_1 + 0xc64) == 0x12) ||
       (fVar14 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
      local_14c = fVar14;
    }
    local_128 = (undefined *)0x113;
    FUN_00956780();
    FUN_0092dc30(local_128,0x3f266666,2,0,local_14c,0);
  }
  if ((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x37) &&
     (*(float *)(param_1 + 0x340) <= DAT_00baab14 && DAT_00baab14 != *(float *)(param_1 + 0x340))) {
    *(undefined4 *)(param_1 + 0x340) = 0x43a00000;
  }
LAB_0051f2c7:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

