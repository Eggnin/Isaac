/* Local J460 decompiler output.
 * VA: 0x00456c40
 * Entry: 00456c40
 * Dispatcher: 0x006c2990
 * Types: 63
 * Identities: 63.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00457840; instructions=745
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=63; identities=63.0.0; dispatcher=0x006c2990;
   end=0x00457840; instructions=745 */

void __fastcall AI_00456c40(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  char cVar3;
  float *pfVar4;
  int iVar5;
  undefined4 uVar6;
  byte **ppbVar7;
  uint uVar8;
  float *pfVar9;
  undefined4 *puVar10;
  char *pcVar11;
  int iVar12;
  undefined4 extraout_ECX;
  bool bVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  undefined local_120 [4];
  float local_11c;
  float local_118;
  float local_114;
  float local_110;
  float local_10c;
  float local_108;
  float local_104;
  ulonglong local_54;
  char local_4c;
  undefined local_4b;
  undefined4 local_44;
  uint local_40;
  undefined8 local_3c;
  char local_34;
  undefined local_33;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  local_14 = -1;
  puStack_18 = &LAB_00af24e5;
  local_1c = ExceptionList;
  puStack_20 = &stack0xfffffffc;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  pfVar9 = (float *)(param_1 + 0x340);
  *(undefined4 *)(param_1 + 0x184) = 3;
  local_114 = 170.0;
  pfVar4 = &local_114;
  if (DAT_00baaa68 < *pfVar9) {
    pfVar4 = pfVar9;
  }
  *pfVar9 = *pfVar4;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    goto LAB_0045781a;
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  iVar5 = FUN_006be840(local_24);
  local_110 = *(float *)(iVar5 + 0x33c) - *(float *)(param_1 + 0x33c);
  local_10c = *(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340);
  if ((*(float *)(param_1 + 0x380) / *(float *)(param_1 + 900) < DAT_00baa220) &&
     (*(int *)(param_1 + 0xb64) != 9)) {
    *(undefined4 *)(param_1 + 0xb64) = 9;
    uVar6 = FUN_006eef60();
    FUN_00428b20(1000,2,(float *)(param_1 + 0x33c),&DAT_00c7b640,param_1,0,uVar6);
    FUN_006b45c0();
    FUN_0040a380("HeadWalk",0);
    FUN_0040a940("Blood",0);
    *(undefined *)(param_1 + 0xb8) = 1;
  }
  pfVar9 = (float *)(param_1 + 0x33c);
  iVar5 = *(int *)(param_1 + 0xb64);
  if (iVar5 == 9) {
    uVar6 = *(undefined4 *)(param_1 + 0x370);
    FUN_00812f50(&local_108,pfVar9,uVar6,uVar6,uVar6);
    *pfVar9 = local_108;
    *(float *)(param_1 + 0x340) = local_104;
    iVar5 = *(int *)(param_1 + 0xb64);
    if (iVar5 != 9) goto LAB_00457181;
    *(undefined4 *)(param_1 + 0x184) = 3;
    cVar3 = FUN_0040add0("Shoot");
    if (cVar3 != '\0') {
      iVar5 = FUN_006eef60();
      FUN_006b64d0((float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa1f8 + DAT_00baa1f8);
    }
    iVar5 = FUN_006ac760();
    if (iVar5 != 0) {
      if (*(int *)(param_1 + 0xba0) < 1) {
        cVar3 = FUN_006cae60(0,0);
        if (cVar3 != '\0') {
          *(undefined4 *)(param_1 + 0xba0) = 8;
          cVar3 = FUN_0040a5d0("HeadAttack",1);
          if (cVar3 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
        }
      }
      else {
        *(int *)(param_1 + 0xba0) = *(int *)(param_1 + 0xba0) + -1;
      }
    }
    if (*(int *)(param_1 + 0x7c) == 0) {
LAB_00457050:
      ppbVar2 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar2 != (byte **)0x0) {
        ppbVar7 = ppbVar2;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar7 = (byte **)*ppbVar2;
        }
        pcVar11 = "HeadWalk";
        do {
          bVar1 = *(byte *)ppbVar7;
          bVar13 = bVar1 < (byte)*pcVar11;
          if (bVar1 != *pcVar11) {
LAB_00457086:
            uVar8 = -(uint)bVar13 | 1;
            goto LAB_0045708b;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar7 + 1);
          bVar13 = bVar1 < ((byte *)pcVar11)[1];
          if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00457086;
          ppbVar7 = (byte **)((int)ppbVar7 + 2);
          pcVar11 = (char *)((byte *)pcVar11 + 2);
        } while (bVar1 != 0);
        uVar8 = 0;
LAB_0045708b:
        if ((uVar8 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0')))
           ) goto LAB_004570c2;
      }
      cVar3 = FUN_0040a5d0("HeadWalk",1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      cVar3 = FUN_0040add0("Shoot");
      if (cVar3 != '\0') {
        FUN_006d6ba0(0x68,0x3f800000,2,0,0x3f800000);
        if (*(int *)(param_1 + 0x30) == 1) {
          uVar6 = AI_0043ef30();
          iVar5 = FUN_006be840();
          local_108 = *(float *)(iVar5 + 0x33c);
          local_104 = *(float *)(iVar5 + 0x340);
          FUN_006ccdd0(10,&local_108,0,uVar6);
        }
        else {
          uVar6 = AI_0043ef30();
          iVar5 = FUN_006be840();
          local_114 = *(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340);
          local_11c = *(float *)(iVar5 + 0x33c) - *(float *)(param_1 + 0x33c);
          fVar15 = local_114 * local_114 + local_11c * local_11c;
          FUN_00435a50();
          if (fVar15 <= 0.0) {
            local_108 = local_11c;
            local_104 = local_114;
          }
          else {
            local_104 = (DAT_00baa81c / fVar15) * local_114;
            local_108 = (DAT_00baa81c / fVar15) * local_11c;
          }
          FUN_006cb2e0((float *)(param_1 + 0x33c),&local_108,2,uVar6);
        }
      }
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) goto LAB_00457050;
    }
LAB_004570c2:
    if (*(int *)(param_1 + 0xba0) < 1) {
      fVar14 = local_110 * local_110 + local_10c * local_10c;
      FUN_00435a50();
      fVar15 = local_10c;
      fVar16 = local_110;
      if (0.0 < fVar14) {
        fVar15 = local_10c * (DAT_00baa454 / fVar14);
        fVar16 = local_110 * (DAT_00baa454 / fVar14);
      }
      fVar14 = *(float *)(param_1 + 0x36c);
      fVar15 = fVar15 * DAT_00baa2d0;
      if (NAN(fVar14) == (fVar14 == 0.0)) {
        *(float *)(param_1 + 0x360) =
             (fVar16 * DAT_00baa2d0 * *(float *)(param_1 + 0x39c)) / fVar14 +
             *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             (fVar15 * *(float *)(param_1 + 0x39c)) / fVar14 + *(float *)(param_1 + 0x364);
      }
    }
  }
  else {
LAB_00457181:
    if (iVar5 == 4) {
      FUN_007e6650(0);
      local_40 = 0xf;
      local_44 = 9;
      local_54._0_1_ = s_FullFloat_00b1dcd8[0];
      local_54._1_1_ = s_FullFloat_00b1dcd8[1];
      local_54._2_1_ = s_FullFloat_00b1dcd8[2];
      local_54._3_1_ = s_FullFloat_00b1dcd8[3];
      local_54._4_1_ = s_FullFloat_00b1dcd8[4];
      local_54._5_1_ = s_FullFloat_00b1dcd8[5];
      local_54._6_1_ = s_FullFloat_00b1dcd8[6];
      local_54._7_1_ = s_FullFloat_00b1dcd8[7];
      local_4c = s_FullFloat_00b1dcd8[8];
      local_4b = 0;
      local_28 = 0xf;
      local_2c = 9;
      local_3c._0_1_ = s_FullFloat_00b1dcd8[0];
      local_3c._1_1_ = s_FullFloat_00b1dcd8[1];
      local_3c._2_1_ = s_FullFloat_00b1dcd8[2];
      local_3c._3_1_ = s_FullFloat_00b1dcd8[3];
      local_3c._4_1_ = s_FullFloat_00b1dcd8[4];
      local_3c._5_1_ = s_FullFloat_00b1dcd8[5];
      local_3c._6_1_ = s_FullFloat_00b1dcd8[6];
      local_3c._7_1_ = s_FullFloat_00b1dcd8[7];
      local_34 = s_FullFloat_00b1dcd8[8];
      local_33 = 0;
      local_14._0_1_ = 1;
      local_14._1_3_ = 0;
      FUN_006c1330(&local_3c,&local_54,0x3f800000);
      local_14 = (uint)local_14._1_3_ << 8;
      if (0xf < local_28) {
        uVar8 = local_28 + 1;
        iVar5 = (int)local_3c;
        if (0xfff < uVar8) {
          iVar5 = *(int *)((int)local_3c + -4);
          uVar8 = local_28 + 0x24;
          if (0x1f < ((int)local_3c - iVar5) - 4U) goto LAB_0045726d;
        }
        FUN_00aef15c(iVar5,uVar8);
      }
      local_14 = -1;
      local_2c = 0;
      local_28 = 0xf;
      local_3c = local_3c & 0xffffffffffffff00;
      if (0xf < local_40) {
        uVar8 = local_40 + 1;
        iVar5 = (int)local_54;
        if (0xfff < uVar8) {
          iVar5 = *(int *)((int)local_54 + -4);
          uVar8 = local_40 + 0x24;
          if (0x1f < ((int)local_54 - iVar5) - 4U) {
LAB_0045726d:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar5,uVar8);
      }
      local_44 = 0;
      local_40 = 0xf;
      local_54 = local_54 & 0xffffffffffffff00;
      if (((*(uint *)(param_1 + 0x16c) & 0x10000000) == 0) ||
         ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
        uVar8 = FUN_006eef60();
        if (uVar8 % 0x28 == 0) {
          iVar12 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                   *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
          iVar5 = 0;
          if (0 < iVar12) {
            iVar5 = iVar12;
          }
          if (iVar5 < 3) {
            *(undefined4 *)(param_1 + 0xb64) = 0xd;
            cVar3 = FUN_0040a5d0(&DAT_00b1d2cc,1);
            if (cVar3 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x8c) = 1;
            }
            *(undefined4 *)(param_1 + 0x410) = 0;
            goto LAB_004577cd;
          }
        }
        if (((((float)((uint)local_10c & DAT_00bacb40) < DAT_00baa87c) ||
             ((*(int *)(param_1 + 0x30) == 1 && (uVar8 = FUN_006eef60(), (uVar8 & 3) == 0)))) &&
            (uVar8 = FUN_006eef60(), uVar8 % 5 == 0)) &&
           (cVar3 = FUN_00417430(0x1000a00,0), cVar3 == '\0')) {
          FUN_006d6ba0(0x77,0x3f800000,2,0,0x3f800000);
          *(bool *)(param_1 + 0x148) = local_110 < 0.0;
          cVar3 = FUN_0040a5d0("AttackDashStart",1);
          if (cVar3 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
          *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
          *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
          *(undefined4 *)(param_1 + 0xb64) = 8;
          *(undefined4 *)(param_1 + 0x410) = 0;
        }
      }
    }
    else {
      if (iVar5 == 0xd) {
        if (*(int *)(param_1 + 0x7c) != 0) {
          cVar3 = FUN_0040add0("Shoot");
          if (cVar3 == '\0') {
            if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0'))
            goto LAB_004577c3;
          }
          else {
            FUN_006d6ba0(0x72,0x3f800000,2,0,0x3f800000);
            if (*(int *)(param_1 + 0x30) == 1) {
              uVar6 = AI_0043ef30();
              local_108 = 8.0;
              local_104 = 6.0;
              FUN_006cb2e0(pfVar9,&local_108,9,uVar6);
            }
            else {
              cVar3 = FUN_00417430(0,0x10000000);
              if ((cVar3 == '\0') || (uVar8 = FUN_006ac7e0(0xe,0,extraout_ECX,0), uVar8 < 3)) {
                FUN_006d6ba0(0x109,0x3f4ccccd,2,0,0x3f800000);
                uVar6 = FUN_006eef60();
                pfVar9 = (float *)FUN_0067f070(local_120);
                local_118 = *pfVar9 * DAT_00baa924 + *(float *)(param_1 + 0x33c);
                local_114 = pfVar9[1] * DAT_00baa924 + *(float *)(param_1 + 0x340);
                FUN_00428b20(0xe,0,&local_118,&DAT_00c7b640,param_1,0,uVar6);
              }
            }
          }
          goto LAB_004577cd;
        }
      }
      else {
        if (iVar5 != 8) goto LAB_004577cd;
        *(undefined4 *)(param_1 + 0x184) = 2;
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          FUN_0040a380("AttackDash",0);
          if (*(int *)(param_1 + 0x7c) != 0) {
            if (*(char *)(param_1 + 0x8c) != '\0') goto LAB_004575a9;
            goto LAB_004575ed;
          }
        }
        else {
LAB_004575a9:
          puVar10 = *(undefined4 **)(param_1 + 0x7c);
          if (puVar10 == (undefined4 *)0x0) {
            puVar10 = (undefined4 *)&DAT_00b1a4ec;
          }
          else if (&DAT_0000000f < (undefined *)puVar10[5]) {
            puVar10 = (undefined4 *)*puVar10;
          }
          pcVar11 = "AttackDash";
          do {
            bVar1 = *(byte *)puVar10;
            bVar13 = bVar1 < (byte)*pcVar11;
            if (bVar1 != *pcVar11) {
LAB_004575e4:
              uVar8 = -(uint)bVar13 | 1;
              goto LAB_004575e9;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)puVar10 + 1);
            bVar13 = bVar1 < ((byte *)pcVar11)[1];
            if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_004575e4;
            puVar10 = (undefined4 *)((int)puVar10 + 2);
            pcVar11 = (char *)((byte *)pcVar11 + 2);
          } while (bVar1 != 0);
          uVar8 = 0;
LAB_004575e9:
          if (uVar8 == 0) {
LAB_00457662:
            fVar15 = DAT_00baa868;
            if (*(char *)(param_1 + 0x148) != '\0') {
              fVar15 = DAT_00baade4;
            }
            *(float *)(param_1 + 0x360) = fVar15;
            iVar5 = FUN_006d8240();
            if (0 < iVar5) {
              *(float *)(param_1 + 0x360) = fVar15 * DAT_00baa4c0;
            }
            if (*(int *)(param_1 + 0x30) == 1) {
              fVar16 = (float)((uint)local_10c ^ DAT_00bacb70) / DAT_00baa9d0;
              fVar15 = DAT_00baa280;
              if ((DAT_00baa280 < fVar16) || (fVar15 = fVar16, DAT_00baad24 <= fVar16)) {
                *(float *)(param_1 + 0x364) =
                     *(float *)(param_1 + 0x364) -
                     (*(float *)(param_1 + 0x39c) * fVar15) / *(float *)(param_1 + 0x36c);
              }
              else {
                *(float *)(param_1 + 0x364) =
                     (*(float *)(param_1 + 0x39c) * DAT_00baa280) / *(float *)(param_1 + 0x36c) +
                     *(float *)(param_1 + 0x364);
              }
            }
          }
          else {
LAB_004575ed:
            if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) {
              puVar10 = *(undefined4 **)(param_1 + 0x7c);
              if (puVar10 == (undefined4 *)0x0) {
                puVar10 = (undefined4 *)&DAT_00b1a4ec;
              }
              else if (&DAT_0000000f < (undefined *)puVar10[5]) {
                puVar10 = (undefined4 *)*puVar10;
              }
              pcVar11 = "AttackDashStart";
              do {
                bVar1 = *(byte *)puVar10;
                bVar13 = bVar1 < (byte)*pcVar11;
                if (bVar1 != *pcVar11) {
LAB_00457640:
                  uVar8 = -(uint)bVar13 | 1;
                  goto LAB_00457645;
                }
                if (bVar1 == 0) break;
                bVar1 = *(byte *)((int)puVar10 + 1);
                bVar13 = bVar1 < ((byte *)pcVar11)[1];
                if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00457640;
                puVar10 = (undefined4 *)((int)puVar10 + 2);
                pcVar11 = (char *)((byte *)pcVar11 + 2);
              } while (bVar1 != 0);
              uVar8 = 0;
LAB_00457645:
              if ((uVar8 == 0) && (cVar3 = FUN_0040b090("Shoot"), cVar3 != '\0')) goto LAB_00457662;
            }
          }
        }
        fVar15 = *(float *)(param_1 + 0x360);
        if ((fVar15 <= 0.0) ||
           (*pfVar9 <= *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) + DAT_00baaa94)) {
          if ((fVar15 < 0.0) &&
             (fVar16 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14) - DAT_00baaa94,
             *pfVar9 <= fVar16 && fVar16 != *pfVar9)) {
            fVar16 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) + DAT_00baa9a0;
            goto LAB_0045778c;
          }
        }
        else {
          fVar16 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14) - DAT_00baa9a0;
LAB_0045778c:
          *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
          *pfVar9 = fVar16;
        }
        if ((*(int *)(param_1 + 0x410) < 1) ||
           (((0.0 <= fVar15 ||
             (*(float *)(param_1 + 0x334) < *pfVar9 || *(float *)(param_1 + 0x334) == *pfVar9)) &&
            ((fVar15 <= 0.0 ||
             (*pfVar9 < *(float *)(param_1 + 0x334) || *pfVar9 == *(float *)(param_1 + 0x334)))))))
        goto LAB_004577cd;
      }
LAB_004577c3:
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
  }
LAB_004577cd:
  if ((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x37) &&
     (*(float *)(param_1 + 0x340) < DAT_00baab14)) {
    *(float *)(param_1 + 0x364) =
         ((DAT_00baab14 - *(float *)(param_1 + 0x340)) - *(float *)(param_1 + 0x364)) * DAT_00baa2d0
         + *(float *)(param_1 + 0x364);
  }
LAB_0045781a:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

