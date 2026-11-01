/* Local J460 decompiler output.
 * VA: 0x0045cd60
 * Entry: 0045cd60
 * Dispatcher: 0x006c2990
 * Types: 82,83
 * Identities: 82.0.0,83.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0045d7d0; instructions=628
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=82,83; identities=82.0.0,83.0.0; dispatcher=0x006c2990;
   end=0x0045d7d0; instructions=628 */

void __fastcall AI_0045cd60(int param_1)

{
  byte bVar1;
  int iVar2;
  undefined *puVar3;
  undefined *puVar4;
  char cVar5;
  uint uVar6;
  undefined4 uVar7;
  int iVar8;
  int *piVar9;
  undefined4 *puVar10;
  float *pfVar11;
  byte **ppbVar12;
  byte **ppbVar13;
  char *pcVar14;
  uint uVar15;
  bool bVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float local_1c8;
  float local_1c4;
  float local_1c0;
  float local_1bc;
  float local_1b8;
  float local_1b4;
  float local_1b0;
  float local_1ac;
  uint local_54;
  undefined local_50;
  undefined4 local_44;
  uint local_40;
  uint local_3c;
  undefined local_38;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af2665;
  local_1c = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar8 = *(int *)(param_1 + 0xb64);
  local_24 = uVar6;
  puVar3 = &stack0xfffffffc;
  if (iVar8 != 0) {
    if (*(int *)(param_1 + 0x28) == 0x52) {
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
      if (iVar8 == 4) {
        puStack_20 = &stack0xfffffffc;
        FUN_007e5340(0x3f800000,0);
        local_28 = 0xf;
        local_2c = 4;
        local_3c = 0x6b6c6157;
        local_38 = 0;
        local_40 = 0xf;
        local_44 = 4;
        local_54 = 0x6b6c6157;
        local_50 = 0;
        local_14._0_1_ = 1;
        local_14._1_3_ = 0;
        FUN_006c1330(&local_54,&local_3c,0x40400000);
        local_14 = (uint)local_14._1_3_ << 8;
        if (0xf < local_40) {
          uVar15 = local_40 + 1;
          uVar6 = local_54;
          if (0xfff < uVar15) {
            uVar6 = *(uint *)(local_54 - 4);
            uVar15 = local_40 + 0x24;
            if (0x1f < (local_54 - uVar6) - 4) goto LAB_0045ceba;
          }
          FUN_00aef15c(uVar6,uVar15);
        }
        local_14 = -1;
        local_44 = 0;
        local_40 = 0xf;
        local_54 = local_54 & 0xffffff00;
        if (0xf < local_28) {
          uVar15 = local_28 + 1;
          uVar6 = local_3c;
          if (0xfff < uVar15) {
            uVar6 = *(uint *)(local_3c - 4);
            uVar15 = local_28 + 0x24;
            if (0x1f < (local_3c - uVar6) - 4) {
LAB_0045ceba:
                    /* WARNING: Subroutine does not return */
              _invalid_parameter_noinfo_noreturn();
            }
          }
          FUN_00aef15c(uVar6,uVar15);
        }
        local_2c = 0;
        local_28 = 0xf;
        local_3c = local_3c & 0xffffff00;
        if ((((*(uint *)(param_1 + 0x16c) & 0x10000000) == 0) ||
            (puVar4 = puStack_20,
            (*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) &&
           (uVar6 = FUN_006eef60(), puVar4 = puStack_20, uVar6 % 0x28 == 0)) {
          *(undefined4 *)(param_1 + 0xb64) = 8;
          *(undefined4 *)(param_1 + 0x410) = 0;
          cVar5 = FUN_0040a5d0("Attack",1);
          puVar4 = puStack_20;
          if (cVar5 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
            puVar4 = puStack_20;
          }
        }
        goto LAB_0045d7b1;
      }
      puVar4 = &stack0xfffffffc;
      if (iVar8 != 8) goto LAB_0045d7b1;
      iVar2 = *(int *)(param_1 + 0x410);
      iVar8 = iVar2 + 1;
      *(int *)(param_1 + 0x410) = iVar8;
      if (iVar2 == 9) {
        puStack_20 = &stack0xfffffffc;
        FUN_006d6ba0(0xd5,0x3f800000,2,0,0x3f800000);
        uVar7 = AI_0043ef30();
        iVar8 = FUN_006be840();
        local_1b0 = *(float *)(iVar8 + 0x33c);
        local_1ac = *(float *)(iVar8 + 0x340);
        piVar9 = (int *)FUN_006ccdd0(1,&local_1b0,0x41200000,uVar7);
        fVar17 = (float)piVar9[0x106] - DAT_00baa1f8;
        fVar18 = (float)piVar9[0xd8] * DAT_00baa2e4;
        fVar20 = (float)piVar9[0xd9] * DAT_00baa2e4;
        piVar9[0x10e] = piVar9[0x10e] | 0x102;
        piVar9[0x106] = (int)fVar17;
        fVar17 = (float)piVar9[0x105] * DAT_00baa354;
        piVar9[0x10f] = piVar9[0x10f];
        piVar9[0x108] = 0x3fcccccd;
        piVar9[0x105] = (int)(fVar17 - DAT_00baa83c);
        piVar9[0x104] = (int)((float)piVar9[0x104] - _DAT_00baa8c0);
        piVar9[0xd8] = (int)fVar18;
        piVar9[0xd9] = (int)fVar20;
        if (*(char *)(param_1 + 0x148) == '\0') {
          local_1b0 = 10.0;
          local_1ac = 0.0;
        }
        else {
          local_1c0 = -10.0;
          local_1bc = 0.0;
        }
        pfVar11 = &local_1b0;
        if (*(char *)(param_1 + 0x148) != '\0') {
          pfVar11 = &local_1c0;
        }
        fVar17 = pfVar11[1];
        piVar9[0xcf] = (int)((float)piVar9[0xcf] + *pfVar11);
        piVar9[0xd0] = (int)((float)piVar9[0xd0] + fVar17);
        (**(code **)(*piVar9 + 0xc))();
        puVar4 = puStack_20;
        goto LAB_0045d7b1;
      }
LAB_0045d512:
      puVar3 = &stack0xfffffffc;
      puVar4 = &stack0xfffffffc;
      if (iVar8 < 0x1f) goto LAB_0045d7b1;
    }
    else {
      puVar4 = &stack0xfffffffc;
      if (*(int *)(param_1 + 0x28) != 0x53) goto LAB_0045d7b1;
      if ((0.0 < *(float *)(param_1 + 0x14)) &&
         (puVar10 = *(undefined4 **)(param_1 + 8), puVar10 != *(undefined4 **)(param_1 + 0xc))) {
        do {
          if (puVar10[4] == 0x52) {
            *puVar10 = 0;
          }
          puVar10 = puVar10 + 0xe;
        } while (puVar10 != *(undefined4 **)(param_1 + 0xc));
        iVar8 = *(int *)(param_1 + 0xb64);
      }
      fVar17 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
      *(undefined4 *)(param_1 + 0x184) = 2;
      *(float *)(param_1 + 0x36c) = fVar17;
      if (iVar8 != 8) {
        *(undefined4 *)(param_1 + 0x184) = 3;
        if (iVar8 == 4) {
          puStack_20 = &stack0xfffffffc;
          FUN_007e6650(0);
          local_40 = 0xf;
          local_44 = 4;
          local_54 = 0x6b6c6157;
          local_50 = 0;
          local_28 = 0xf;
          local_2c = 4;
          local_3c = 0x6b6c6157;
          local_38 = 0;
          local_14._0_1_ = 3;
          local_14._1_3_ = 0;
          FUN_006c1330(&local_3c,&local_54,0x40000000);
          local_14 = CONCAT31(local_14._1_3_,2);
          if (0xf < local_28) {
            uVar15 = local_28 + 1;
            uVar6 = local_3c;
            if (0xfff < uVar15) {
              uVar6 = *(uint *)(local_3c - 4);
              uVar15 = local_28 + 0x24;
              if (0x1f < (local_3c - uVar6) - 4) goto LAB_0045d243;
            }
            FUN_00aef15c(uVar6,uVar15);
          }
          local_14 = -1;
          local_2c = 0;
          local_28 = 0xf;
          local_3c = local_3c & 0xffffff00;
          if (0xf < local_40) {
            uVar15 = local_40 + 1;
            uVar6 = local_54;
            if (0xfff < uVar15) {
              uVar6 = *(uint *)(local_54 - 4);
              uVar15 = local_40 + 0x24;
              if (0x1f < (local_54 - uVar6) - 4) {
LAB_0045d243:
                    /* WARNING: Subroutine does not return */
                _invalid_parameter_noinfo_noreturn();
              }
            }
            FUN_00aef15c(uVar6,uVar15);
          }
          pfVar11 = (float *)FUN_006bec40(&local_1b0,0);
          local_1b8 = *pfVar11 - *(float *)(param_1 + 0x33c);
          local_1b4 = pfVar11[1] - *(float *)(param_1 + 0x340);
          uVar6 = FUN_006eef60();
          if (uVar6 % 0x1e == 0) {
            fVar17 = local_1b8 * local_1b8 + local_1b4 * local_1b4;
            FUN_00435a50();
            if (fVar17 < DAT_00baaa94) {
              *(undefined4 *)(param_1 + 0xb64) = 9;
              *(undefined4 *)(param_1 + 0x410) = 0;
              cVar5 = FUN_0040a5d0("Attack",1);
              puVar4 = puStack_20;
              if (cVar5 != '\0') {
                FUN_0040a1b0();
                *(undefined *)(param_1 + 0x8c) = 1;
                puVar4 = puStack_20;
              }
              goto LAB_0045d7b1;
            }
          }
          uVar6 = FUN_006eef60();
          if (((uVar6 % 0x78 == 0) ||
              ((puVar4 = puStack_20, (float)((uint)local_1b4 & DAT_00bacb40) < DAT_00baa87c &&
               (uVar6 = FUN_006eef60(), puVar4 = puStack_20, uVar6 % 0x50 == 0)))) &&
             (puVar4 = puStack_20, (*(uint *)(param_1 + 0x168) & 0x1000a00) == 0)) {
            FUN_006d6ba0(0x77,0x3f800000,2,0,0x3f800000);
            *(bool *)(param_1 + 0x148) = local_1b8 < 0.0;
            *(undefined4 *)(param_1 + 0xb64) = 8;
            *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
            *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
            cVar5 = FUN_0040a5d0("Charge",1);
            if (cVar5 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x8c) = 1;
            }
            uVar6 = FUN_006eef60();
            *(uint *)(param_1 + 0x410) = uVar6 % 3 + 1;
            puVar4 = puStack_20;
          }
          goto LAB_0045d7b1;
        }
        puVar4 = &stack0xfffffffc;
        if (iVar8 != 9) goto LAB_0045d7b1;
        iVar2 = *(int *)(param_1 + 0x410);
        iVar8 = iVar2 + 1;
        *(int *)(param_1 + 0x410) = iVar8;
        if (iVar2 == 0xd) {
          puStack_20 = &stack0xfffffffc;
          FUN_006d6ba0(0x6c,0x3f800000,2,0,0x3f800000);
          iVar8 = FUN_006be840();
          local_1ac = *(float *)(iVar8 + 0x33c);
          local_1bc = *(float *)(iVar8 + 0x340);
          iVar8 = FUN_006be840();
          local_1b0 = (*(float *)(iVar8 + 0x360) * DAT_00baa81c + local_1ac) -
                      *(float *)(param_1 + 0x33c);
          local_1ac = (*(float *)(iVar8 + 0x364) * DAT_00baa81c + local_1bc) -
                      *(float *)(param_1 + 0x340);
          pfVar11 = (float *)FUN_00a10030(&local_1c0);
          local_1c4 = pfVar11[1] * _DAT_00baa808;
          local_1c8 = *pfVar11 * _DAT_00baa808;
          uVar7 = AI_0043ef30();
          FUN_006cb2e0((float *)(param_1 + 0x33c),&local_1c8,2,uVar7);
          puVar4 = puStack_20;
          goto LAB_0045d7b1;
        }
        goto LAB_0045d512;
      }
      iVar8 = *(int *)(DAT_00c71678 + 0x18300);
      local_1b8 = *(float *)(iVar8 + 0x14);
      local_1ac = *(float *)(iVar8 + 0x18);
      local_1bc = *(float *)(iVar8 + 0x1c);
      local_1b4 = *(float *)(iVar8 + 0x20);
      puVar4 = &stack0xfffffffc;
      if (*(int *)(param_1 + 0x7c) == 0) goto LAB_0045d7b1;
      puVar3 = &stack0xfffffffc;
      if (*(char *)(param_1 + 0x8c) == '\0') {
        ppbVar12 = *(byte ***)(param_1 + 0x7c);
        if (&DAT_0000000f < ppbVar12[5]) {
          ppbVar12 = (byte **)*ppbVar12;
        }
        pcVar14 = "Charge";
        do {
          bVar1 = *(byte *)ppbVar12;
          bVar16 = bVar1 < (byte)*pcVar14;
          if (bVar1 != *pcVar14) {
LAB_0045d5a6:
            uVar15 = -(uint)bVar16 | 1;
            goto LAB_0045d5ab;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar12 + 1);
          bVar16 = bVar1 < ((byte *)pcVar14)[1];
          if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_0045d5a6;
          ppbVar12 = (byte **)((int)ppbVar12 + 2);
          pcVar14 = (char *)((byte *)pcVar14 + 2);
        } while (bVar1 != 0);
        uVar15 = 0;
LAB_0045d5ab:
        puVar3 = &stack0xfffffffc;
        if (uVar15 == 0) {
          ppbVar12 = *(byte ***)(param_1 + 0x7c);
          if (ppbVar12 != (byte **)0x0) {
            ppbVar13 = ppbVar12;
            if (&DAT_0000000f < ppbVar12[5]) {
              ppbVar13 = (byte **)*ppbVar12;
            }
            pcVar14 = "Charge Shake";
            do {
              bVar1 = *(byte *)ppbVar13;
              bVar16 = bVar1 < (byte)*pcVar14;
              if (bVar1 != *pcVar14) {
LAB_0045d5f0:
                uVar15 = -(uint)bVar16 | 1;
                goto LAB_0045d5f5;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar13 + 1);
              bVar16 = bVar1 < ((byte *)pcVar14)[1];
              if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_0045d5f0;
              ppbVar13 = (byte **)((int)ppbVar13 + 2);
              pcVar14 = (char *)((byte *)pcVar14 + 2);
            } while (bVar1 != 0);
            uVar15 = 0;
LAB_0045d5f5:
            if ((uVar15 == 0) &&
               ((puVar3 = &stack0xfffffffc, *(byte *)(ppbVar12 + 0xd) == 0 ||
                (puVar3 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) != '\0')))) goto LAB_0045d647;
          }
          cVar5 = FUN_0040a5d0("Charge Shake",1);
          puVar3 = puStack_20;
          if (cVar5 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
            puVar3 = puStack_20;
          }
        }
      }
LAB_0045d647:
      puStack_20 = puVar3;
      fVar17 = 0.0;
      puVar4 = puStack_20;
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) goto LAB_0045d7b1;
      ppbVar12 = *(byte ***)(param_1 + 0x7c);
      if (&DAT_0000000f < ppbVar12[5]) {
        ppbVar12 = (byte **)*ppbVar12;
      }
      pcVar14 = "Charge Shake";
      do {
        bVar1 = *(byte *)ppbVar12;
        bVar16 = bVar1 < (byte)*pcVar14;
        if (bVar1 != *pcVar14) {
LAB_0045d690:
          uVar15 = -(uint)bVar16 | 1;
          goto LAB_0045d695;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar12 + 1);
        bVar16 = bVar1 < ((byte *)pcVar14)[1];
        if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_0045d690;
        ppbVar12 = (byte **)((int)ppbVar12 + 2);
        pcVar14 = (char *)((byte *)pcVar14 + 2);
      } while (bVar1 != 0);
      uVar15 = 0;
LAB_0045d695:
      if (uVar15 != 0) goto LAB_0045d7b1;
      fVar18 = DAT_00baa868;
      if (*(char *)(param_1 + 0x148) != '\0') {
        fVar18 = DAT_00baade4;
      }
      *(float *)(param_1 + 0x360) = fVar18;
      fVar20 = local_1b8;
      fVar19 = local_1b4;
      fVar21 = local_1bc;
      iVar8 = FUN_006d8240(uVar6);
      if (0 < iVar8) {
        fVar18 = fVar18 * DAT_00baa4c0;
        *(float *)(param_1 + 0x360) = fVar18;
      }
      if ((fVar18 <= fVar17) || (*(float *)(param_1 + 0x33c) <= fVar21 + DAT_00baaa94)) {
        if ((fVar18 < fVar17) &&
           (*(float *)(param_1 + 0x33c) <= fVar20 - DAT_00baaa94 &&
            fVar20 - DAT_00baaa94 != *(float *)(param_1 + 0x33c))) {
          *(float *)(param_1 + 0x33c) = fVar21 + DAT_00baaa94;
          goto LAB_0045d725;
        }
      }
      else {
        *(float *)(param_1 + 0x33c) = fVar20 - DAT_00baaa94;
LAB_0045d725:
        *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + -1;
        fVar21 = fVar19 - DAT_00baa904;
        fVar20 = (fVar19 - local_1ac) * DAT_00baa1f8;
        fVar19 = fVar20 + *(float *)(param_1 + 0x340);
        *(float *)(param_1 + 0x340) = fVar19;
        if (fVar21 < fVar19) {
          *(float *)(param_1 + 0x340) = fVar19 - fVar20 * DAT_00baa6fc;
        }
      }
      puVar4 = puStack_20;
      if ((0 < *(int *)(param_1 + 0x410)) ||
         (((puVar3 = puStack_20, fVar17 <= fVar18 ||
           (*(float *)(param_1 + 0x334) < *(float *)(param_1 + 0x33c) ||
            *(float *)(param_1 + 0x334) == *(float *)(param_1 + 0x33c))) &&
          ((fVar18 <= fVar17 ||
           (*(float *)(param_1 + 0x33c) < *(float *)(param_1 + 0x334) ||
            *(float *)(param_1 + 0x33c) == *(float *)(param_1 + 0x334))))))) goto LAB_0045d7b1;
    }
  }
  puStack_20 = puVar3;
  *(undefined4 *)(param_1 + 0xb64) = 4;
  puVar4 = puStack_20;
LAB_0045d7b1:
  puStack_20 = puVar4;
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

