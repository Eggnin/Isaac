/* Local J460 decompiler output.
 * VA: 0x004878a0
 * Entry: 004878a0
 * Dispatcher: 0x006c2990
 * Types: 265
 * Identities: 265.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004894c6; instructions=1702
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=265; identities=265.0.0; dispatcher=0x006c2990;
   end=0x004894c6; instructions=1702 */

void __fastcall AI_004878a0(int param_1)

{
  int **ppiVar1;
  byte bVar2;
  code *pcVar3;
  longlong lVar4;
  longlong lVar5;
  char cVar6;
  undefined4 uVar7;
  byte **ppbVar8;
  uint uVar9;
  float *pfVar10;
  int iVar11;
  byte **ppbVar12;
  float *pfVar13;
  uint uVar14;
  uint *puVar15;
  int iVar16;
  int *piVar17;
  int *piVar18;
  byte *pbVar19;
  char *pcVar20;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  uint uVar21;
  uint uVar22;
  int iVar23;
  bool bVar24;
  float fVar25;
  float fVar26;
  ulonglong uVar27;
  undefined4 uVar28;
  undefined4 uVar29;
  undefined4 uVar30;
  undefined4 *puVar31;
  int *piStack_318;
  uint local_314;
  int *local_310;
  uint local_30c;
  float local_308;
  undefined4 uStack_304;
  uint uStack_300;
  int *local_2fc;
  float local_2f8;
  int local_2f4;
  int local_2f0;
  float local_2ec;
  int local_2e8;
  undefined4 local_2e4;
  uint local_2e0;
  uint *local_2dc;
  int *local_2d8;
  int local_2d4;
  undefined4 uStack_2d0;
  int local_2cc;
  int *piStack_2c8;
  int **appiStack_2c4 [4];
  int local_2b4;
  undefined4 uStack_2b0;
  int iStack_2ac;
  undefined4 uStack_2a8;
  undefined4 local_2a4;
  undefined4 local_2a0;
  undefined4 local_29c;
  undefined4 local_28c;
  float local_288;
  float local_284;
  float local_280;
  undefined4 local_27c;
  float local_278;
  float local_274;
  float local_270;
  float local_26c;
  int local_268;
  undefined4 local_264;
  float local_260;
  float local_25c;
  undefined8 local_258;
  undefined auStack_24c [4];
  undefined local_248 [28];
  undefined auStack_22c [8];
  int iStack_224;
  undefined4 uStack_220;
  undefined4 uStack_21c;
  undefined4 uStack_218;
  undefined4 uStack_214;
  undefined4 local_204 [8];
  undefined4 local_1e4;
  undefined4 uStack_1e0;
  undefined4 local_1dc;
  undefined local_1d8 [8];
  undefined local_1d0 [8];
  undefined local_1c8 [20];
  undefined auStack_1b4 [40];
  undefined auStack_18c [80];
  uint uStack_13c;
  undefined8 uStack_138;
  undefined4 uStack_130;
  undefined4 local_110;
  undefined4 uStack_10c;
  undefined4 uStack_108;
  undefined4 uStack_104;
  undefined4 local_100;
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined4 local_f0;
  undefined4 local_ec;
  undefined4 local_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined auStack_d4 [16];
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined local_b8 [4];
  undefined4 local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  float local_a4;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  uint local_60;
  undefined4 local_24;
  uint local_c;
  
  uVar30 = _UNK_00bac11c;
  uVar29 = _UNK_00bac118;
  uVar28 = _UNK_00bac114;
  uVar7 = _DAT_00bac110;
  local_c = DAT_00bf93b4 ^ (uint)&piStack_318;
  iVar11 = *(int *)(param_1 + 0xb64);
  local_2cc = param_1;
  if (iVar11 == 0) {
    *(undefined4 *)(param_1 + 0x410) = 0;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x374) = 0x3f99999a;
    *(undefined4 *)(param_1 + 0x378) = 0x3f000000;
    local_1e4 = 0x3ec8c8ca;
    uStack_1e0 = 0x3ec8c8ca;
    local_1dc = 0x3ea0a0a1;
    if ((undefined4 *)(param_1 + 0x1e4) != local_204) {
      *(undefined8 *)(param_1 + 0x204) = 0x3ec8c8ca3ec8c8ca;
      *(undefined4 *)(param_1 + 0x1e4) = uVar7;
      *(undefined4 *)(param_1 + 0x1e8) = uVar28;
      *(undefined4 *)(param_1 + 0x1ec) = uVar29;
      *(undefined4 *)(param_1 + 0x1f0) = uVar30;
      *(undefined4 *)(param_1 + 0x20c) = 0x3ea0a0a1;
      *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
    }
    if (*(int *)(param_1 + 0x30) == 2) {
      if (*(int *)(param_1 + 0x34) != *(int *)(param_1 + 0x28)) {
        uVar7 = FUN_006eef60();
        local_288 = *(float *)(param_1 + 0x33c) + DAT_00baa89c;
        local_284 = *(float *)(param_1 + 0x340) + 0.0;
        FUN_006fe410(*(undefined4 *)(param_1 + 0x28),*(undefined4 *)(param_1 + 0x2c),&local_288,
                     param_1 + 0x360,param_1,*(undefined4 *)(param_1 + 0x30),uVar7,0);
        *(float *)(param_1 + 0x33c) = *(float *)(param_1 + 0x33c) - DAT_00baa89c;
        *(float *)(param_1 + 0x340) = *(float *)(param_1 + 0x340) - 0.0;
      }
      *(float *)(param_1 + 0x370) = *(float *)(*(int *)(param_1 + 0x330) + 0x38) * DAT_00baa33c;
      FUN_00aef12b();
      return;
    }
    goto LAB_00489c6c;
  }
  local_308 = 0.0;
  if ((0.0 < *(float *)(param_1 + 0x14)) &&
     (puVar31 = *(undefined4 **)(param_1 + 8), puVar31 != *(undefined4 **)(param_1 + 0xc))) {
    do {
      local_28c = puVar31[3];
      if ((((puVar31[2] & 8) != 0) && (puVar31[6] == 0x109)) ||
         (((puVar31[2] & 4) != 0 && (puVar31[4] == 0x109)))) {
        *puVar31 = 0;
      }
      puVar31 = puVar31 + 0xe;
    } while (puVar31 != *(undefined4 **)(param_1 + 0xc));
    iVar11 = *(int *)(param_1 + 0xb64);
  }
  local_310 = DAT_00baa454;
  if (iVar11 == 3) {
    ppbVar12 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar12 == (byte **)0x0) {
LAB_00487af0:
      cVar6 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar8 = ppbVar12;
      if (&DAT_0000000f < ppbVar12[5]) {
        ppbVar8 = (byte **)*ppbVar12;
      }
      pbVar19 = &DAT_00b1bc54;
      do {
        bVar2 = *(byte *)ppbVar8;
        bVar24 = bVar2 < *pbVar19;
        if (bVar2 != *pbVar19) {
LAB_00487ad2:
          uVar9 = -(uint)bVar24 | 1;
          goto LAB_00487ad7;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppbVar8 + 1);
        bVar24 = bVar2 < pbVar19[1];
        if (bVar2 != pbVar19[1]) goto LAB_00487ad2;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pbVar19 = pbVar19 + 2;
      } while (bVar2 != 0);
      uVar9 = 0;
LAB_00487ad7:
      if ((uVar9 != 0) || ((*(byte *)(ppbVar12 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_00487af0;
    }
    if (((((*(uint *)(param_1 + 0x16c) & 0x10000000) == 0) ||
         ((*(byte *)(*(int *)(DAT_00c71678[0x60c0] + 4) + 0x44) & 1) == 0)) &&
        (iVar11 = *(int *)(param_1 + 0x410), *(int *)(param_1 + 0x410) = iVar11 + 1, 0x1e < iVar11))
       && (uVar9 = FUN_006eef60(), uVar9 % 0x14 == 0)) {
      uVar9 = FUN_006eef60();
      if (uVar9 % 3 == 0) {
        iVar11 = DAT_00c71678[0x60c0];
        iVar16 = *(int *)(iVar11 + 0x12c8) + *(int *)(iVar11 + 0x12cc);
        iVar23 = *(int *)(iVar11 + 0x12c4) + *(int *)(iVar11 + 0x12c0);
        iVar11 = 0;
        if (0 < iVar16) {
          iVar11 = iVar16;
        }
        iVar16 = 0;
        if (0 < iVar23) {
          iVar16 = iVar23;
        }
        if (((iVar16 - iVar11 < 3) && (iVar11 = FUN_0067f010(), iVar11 != 0)) &&
           (*(int *)(param_1 + 0x30) != 1)) {
          *(undefined4 *)(param_1 + 0xb64) = 0xd;
        }
        else {
          *(undefined4 *)(param_1 + 0xb64) = 9;
          iVar11 = FUN_006eef60();
          *(float *)(param_1 + 0xbb0) =
               (float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baab30 - DAT_00baaa78;
          uVar9 = FUN_006eef60();
          fVar25 = (float)((double)(uVar9 & 1) + DAT_00bacb00);
          *(float *)(param_1 + 0xbb4) = (fVar25 + fVar25) - (float)DAT_00baa454;
        }
      }
      else {
        uVar9 = FUN_006eef60();
        iVar11 = *(int *)(param_1 + 0x30);
        if ((((uVar9 & 1) == 0) || (iVar11 == 2)) &&
           (cVar6 = FUN_00417430(0x1000a00,0), cVar6 == '\0')) {
          *(undefined4 *)(param_1 + 0xb64) = 8;
          *(undefined4 *)(param_1 + 0xbc0) = 0;
          FUN_006d6ba0(0x12f,0x3f800000,2,0,0x3f800000);
        }
        else {
          cVar6 = FUN_00417430(0x200,0);
          if ((cVar6 == '\0') && (iVar11 != 2)) {
            *(undefined4 *)(param_1 + 0xb64) = 6;
            pfVar10 = (float *)FUN_006bec40(local_1d8,0);
            iVar11 = FUN_006be840();
            uVar7 = *(undefined4 *)(param_1 + 0x370);
            fVar26 = *(float *)(iVar11 + 0x364) * DAT_00baa81c;
            fVar25 = pfVar10[1];
            pfVar13 = (float *)(param_1 + 0x334);
            *pfVar13 = *(float *)(iVar11 + 0x360) * DAT_00baa81c + *pfVar10;
            *(float *)(param_1 + 0x338) = fVar26 + fVar25;
            FUN_00812f50(&local_280,pfVar13,uVar7,uVar7,uVar7);
            *pfVar13 = local_280;
            *(undefined4 *)(param_1 + 0x338) = local_27c;
            *(undefined4 *)(param_1 + 0xbb0) = 0;
            *(undefined4 *)(param_1 + 0xbc0) = 0;
          }
        }
      }
    }
  }
  else if (iVar11 == 6) {
    if (*(int *)(param_1 + 0xbc0) == 0) {
      ppbVar12 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar12 == (byte **)0x0) {
LAB_00487e3f:
        ppbVar12 = *(byte ***)(param_1 + 0x7c);
        if (ppbVar12 == (byte **)0x0) {
LAB_00487e93:
          cVar6 = FUN_0040a5d0("Jumping",1);
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
        }
        else {
          ppbVar8 = ppbVar12;
          if (&DAT_0000000f < ppbVar12[5]) {
            ppbVar8 = (byte **)*ppbVar12;
          }
          pcVar20 = "Jumping";
          do {
            bVar2 = *(byte *)ppbVar8;
            bVar24 = bVar2 < (byte)*pcVar20;
            if (bVar2 != *pcVar20) {
LAB_00487e75:
              uVar9 = -(uint)bVar24 | 1;
              goto LAB_00487e7a;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppbVar8 + 1);
            bVar24 = bVar2 < ((byte *)pcVar20)[1];
            if (bVar2 != ((byte *)pcVar20)[1]) goto LAB_00487e75;
            ppbVar8 = (byte **)((int)ppbVar8 + 2);
            pcVar20 = (char *)((byte *)pcVar20 + 2);
          } while (bVar2 != 0);
          uVar9 = 0;
LAB_00487e7a:
          if ((uVar9 != 0) ||
             ((*(byte *)(ppbVar12 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
          goto LAB_00487e93;
        }
        local_2ec = 1.287793e-42;
        FUN_00956780();
        FUN_0092dc30(local_2ec,0x3f800000,2,0,0x3f800000,0);
      }
      else {
        if (*(char *)(param_1 + 0x8c) == '\0') {
          ppbVar12 = *(byte ***)(param_1 + 0x7c);
          if (&DAT_0000000f < ppbVar12[5]) {
            ppbVar12 = (byte **)*ppbVar12;
          }
          pcVar20 = "Jumping";
          do {
            bVar2 = *(byte *)ppbVar12;
            bVar24 = bVar2 < (byte)*pcVar20;
            if (bVar2 != *pcVar20) {
LAB_00487e32:
              uVar9 = -(uint)bVar24 | 1;
              goto joined_r0x00487e39;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppbVar12 + 1);
            bVar24 = bVar2 < ((byte *)pcVar20)[1];
            if (bVar2 != ((byte *)pcVar20)[1]) goto LAB_00487e32;
            ppbVar12 = (byte **)((int)ppbVar12 + 2);
            pcVar20 = (char *)((byte *)pcVar20 + 2);
          } while (bVar2 != 0);
          uVar9 = 0;
        }
        else {
          if (&DAT_0000000f < ppbVar12[5]) {
            ppbVar12 = (byte **)*ppbVar12;
          }
          pcVar20 = "Jumping";
          do {
            bVar2 = *(byte *)ppbVar12;
            bVar24 = bVar2 < (byte)*pcVar20;
            if (bVar2 != *pcVar20) {
LAB_00487df4:
              uVar9 = -(uint)bVar24 | 1;
              goto joined_r0x00487e39;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppbVar12 + 1);
            bVar24 = bVar2 < ((byte *)pcVar20)[1];
            if (bVar2 != ((byte *)pcVar20)[1]) goto LAB_00487df4;
            ppbVar12 = (byte **)((int)ppbVar12 + 2);
            pcVar20 = (char *)((byte *)pcVar20 + 2);
          } while (bVar2 != 0);
          uVar9 = 0;
        }
joined_r0x00487e39:
        if (uVar9 != 0) goto LAB_00487e3f;
      }
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(undefined4 *)(param_1 + 0xbc0) = 1;
      }
    }
    else {
      ppbVar12 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar12 == (byte **)0x0) {
LAB_00487f66:
        cVar6 = FUN_0040a5d0("JumpLoop",1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar8 = ppbVar12;
        if (&DAT_0000000f < ppbVar12[5]) {
          ppbVar8 = (byte **)*ppbVar12;
        }
        pcVar20 = "JumpLoop";
        do {
          bVar2 = *(byte *)ppbVar8;
          bVar24 = bVar2 < (byte)*pcVar20;
          if (bVar2 != *pcVar20) {
LAB_00487f50:
            uVar9 = -(uint)bVar24 | 1;
            goto LAB_00487f55;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppbVar8 + 1);
          bVar24 = bVar2 < ((byte *)pcVar20)[1];
          if (bVar2 != ((byte *)pcVar20)[1]) goto LAB_00487f50;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pcVar20 = (char *)((byte *)pcVar20 + 2);
        } while (bVar2 != 0);
        uVar9 = 0;
LAB_00487f55:
        if ((uVar9 != 0) ||
           ((*(byte *)(ppbVar12 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
        goto LAB_00487f66;
      }
      fVar25 = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
      fVar26 = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
      if (fVar26 * fVar26 + fVar25 * fVar25 < DAT_00baa630) {
        *(undefined4 *)(param_1 + 0xb64) = 7;
      }
    }
    if ((*(int *)(param_1 + 0x7c) != 0) && (cVar6 = FUN_0040add0(&DAT_00b1d560), cVar6 != '\0')) {
      FUN_006d6ba0(0x12f,0x3f800000,2,0,0x3f800000);
    }
    if ((*(int *)(param_1 + 0xbc0) != 0) ||
       ((*(int *)(param_1 + 0x7c) != 0 && (cVar6 = FUN_0040ae70(&DAT_00b1d560), cVar6 != '\0')))) {
      piVar18 = (int *)(*(float *)(param_1 + 0xbb0) + DAT_00baa08c);
      if ((float)DAT_00baa454 <= (float)piVar18) {
        piVar18 = DAT_00baa454;
      }
      fVar25 = (float)DAT_00baa454 - (float)piVar18;
      *(int **)(param_1 + 0xbb0) = piVar18;
      *(float *)(param_1 + 0x340) =
           (float)piVar18 * *(float *)(param_1 + 0x338) + fVar25 * *(float *)(param_1 + 0x340);
      *(float *)(param_1 + 0x33c) =
           fVar25 * *(float *)(param_1 + 0x33c) + (float)piVar18 * *(float *)(param_1 + 0x334);
      *(undefined4 *)(param_1 + 0x188) = 0;
      *(undefined4 *)(param_1 + 0x184) = 0;
    }
  }
  else {
    if (iVar11 == 7) {
      ppbVar12 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar12 == (byte **)0x0) {
LAB_0048810e:
        cVar6 = FUN_0040a5d0("Landing",1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar8 = ppbVar12;
        if (&DAT_0000000f < ppbVar12[5]) {
          ppbVar8 = (byte **)*ppbVar12;
        }
        pcVar20 = "Landing";
        do {
          bVar2 = *(byte *)ppbVar8;
          bVar24 = bVar2 < (byte)*pcVar20;
          if (bVar2 != *pcVar20) {
LAB_004880f0:
            uVar9 = -(uint)bVar24 | 1;
            goto LAB_004880f5;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppbVar8 + 1);
          bVar24 = bVar2 < ((byte *)pcVar20)[1];
          if (bVar2 != ((byte *)pcVar20)[1]) goto LAB_004880f0;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pcVar20 = (char *)((byte *)pcVar20 + 2);
        } while (bVar2 != 0);
        uVar9 = 0;
LAB_004880f5:
        if ((uVar9 != 0) ||
           ((*(byte *)(ppbVar12 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
        goto LAB_0048810e;
      }
      if (*(int *)(param_1 + 0x184) != 5) {
        local_2d8 = *(int **)(param_1 + 0x33c);
        local_2d4 = *(int *)(param_1 + 0x340);
        local_2f4 = DAT_00c71678[0x60c0];
        iVar11 = FUN_007f0780(local_2d8,local_2d4);
        if (iVar11 != 0) {
          puVar31 = (undefined4 *)FUN_0081e520(local_1d0,(undefined4 *)(param_1 + 0x33c),0x42a00000)
          ;
          *(undefined4 *)(param_1 + 0x33c) = *puVar31;
          *(undefined4 *)(param_1 + 0x340) = puVar31[1];
        }
        *(undefined4 *)(param_1 + 0x188) = 4;
        *(undefined4 *)(param_1 + 0x184) = 5;
      }
      if (*(int *)(param_1 + 0x7c) != 0) {
        cVar6 = FUN_0040add0("Landed");
        if (cVar6 != '\0') {
          local_2f0 = 5;
          do {
            uVar7 = FUN_006eef60();
            iVar11 = FUN_006eef60();
            local_2ec = (float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4
                        * DAT_00baa704;
            local_2ec = local_2ec + local_2ec;
            iVar11 = FUN_006eef60();
            local_2f8 = (float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4
                        * DAT_00baa98c;
            fVar25 = local_2ec;
            FUN_0041d540();
            local_278 = fVar25 * local_2f8 + *(float *)(param_1 + 0x33c);
            fVar25 = local_2ec;
            FUN_0041d520();
            local_274 = fVar25 * local_2f8 + *(float *)(param_1 + 0x340);
            uVar7 = FUN_006fe410(1000,0x16,&local_278,&DAT_00c7b640,param_1,0,uVar7,0);
            piVar18 = (int *)__RTDynamicCast(uVar7,0,&IsaacRepentancePlus::Entity::
                                                      RTTI_Type_Descriptor,
                                             &IsaacRepentancePlus::Entity_Effect::
                                              RTTI_Type_Descriptor,0);
            local_f0 = 0;
            local_ec = 0;
            local_110 = _DAT_00bac7b0;
            uStack_10c = _UNK_00bac7b4;
            uStack_108 = _UNK_00bac7b8;
            uStack_104 = _UNK_00bac7bc;
            local_e8 = 0;
            local_100 = _DAT_00bac930;
            uStack_fc = _UNK_00bac934;
            uStack_f8 = _UNK_00bac938;
            uStack_f4 = _UNK_00bac93c;
            (**(code **)(*piVar18 + 0x3c))(&local_110,0xffffffff,0xff,0,1);
            local_2f0 = local_2f0 + -1;
            fVar25 = DAT_00c37940 * DAT_00baa630;
            piVar18[0x39] = (int)(DAT_00c3793c * DAT_00baa630);
            piVar18[0x3a] = (int)fVar25;
          } while (local_2f0 != 0);
          piStack_318 = DAT_00baa454;
          piVar18 = DAT_00baa528;
          if ((*(int *)(param_1 + 0xc64) == 0x12) ||
             (piVar18 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
            piStack_318 = piVar18;
          }
          uStack_2b0 = 0x12f;
          FUN_00956780();
          FUN_0092dc30(uStack_2b0,0x3f800000,2,0,piStack_318,0);
          piStack_318 = DAT_00baa454;
          piVar18 = DAT_00baa528;
          if ((*(int *)(param_1 + 0xc64) == 0x12) ||
             (piVar18 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
            piStack_318 = piVar18;
          }
          iStack_2ac = 0x30;
          FUN_00956780();
          FUN_0092dc30(iStack_2ac,0x3f4ccccd,2,0,piStack_318,0);
          FUN_00703670(10);
          uVar9 = FUN_006eef60();
          local_2fc = (int *)(DAT_00baab30 / (float)((double)((uVar9 & 1) + 4) + DAT_00bacb00));
          do {
            uVar7 = FUN_006eef60();
            uVar7 = FUN_006fe410(1000,0x48,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar7,0);
            local_2f4 = __RTDynamicCast(uVar7,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                        &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,0)
            ;
            piVar18 = (int *)(local_2f4 + 0x3bc);
            if (*(int *)(local_2f4 + 0x3bc) != 0) {
              piStack_2c8 = piVar18;
              FUN_004cf210(&piStack_2c8);
            }
            *piVar18 = param_1;
            FUN_004cdcf0(piVar18);
            fVar25 = DAT_00baab30;
            *(float *)(local_2f4 + 0x474) = local_308;
            local_308 = local_308 + (float)local_2fc;
          } while (local_308 < fVar25);
          piVar18 = DAT_00baa528;
          if ((*(int *)(param_1 + 0xc64) == 0x12) ||
             (piVar18 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
            local_310 = piVar18;
          }
          uStack_2a8 = 0x30;
          FUN_00956780();
          FUN_0092dc30(uStack_2a8,0x3f800000,2,0,local_310,0);
          piStack_2c8 = *(int **)(param_1 + 0x33c);
          local_2f4 = *(int *)(param_1 + 0x340);
          iStack_224 = 0;
          iVar11 = DAT_00c71678[0x60c0];
          uStack_218 = 0;
          uStack_214 = 0xd;
          uStack_21c = 0x3ccccccd;
          *(int *)(iVar11 + 0x70fc) = *(int *)(iVar11 + 0x70fc) + 1;
          uStack_220 = 0x3d23d70a;
          local_2fc = (int *)(*(uint *)(iVar11 + 0x70fc) & 0x80000001);
          if ((int)local_2fc < 0) {
            local_2fc = (int *)(((int)local_2fc - 1U | 0xfffffffe) + 1);
          }
          if ((int *)0x1 < local_2fc) {
            FUN_00a112c0(0x10,"Shockwave id is too large!");
          }
          iVar16 = (int)local_2fc + 0x407;
          *(int **)(iVar11 + iVar16 * 0x1c) = piStack_2c8;
          *(int *)(iVar11 + 4 + iVar16 * 0x1c) = local_2f4;
          *(undefined4 *)(iVar11 + 8 + iVar16 * 0x1c) = 0;
          *(undefined4 *)(iVar11 + 0xc + iVar16 * 0x1c) = 0x3d23d70a;
          *(undefined4 *)(iVar11 + 0x10 + iVar16 * 0x1c) = 0x3ccccccd;
          *(undefined4 *)(iVar11 + 0x14 + iVar16 * 0x1c) = 0;
          *(undefined4 *)(iVar11 + 0x18 + iVar16 * 0x1c) = 0xd;
        }
LAB_00488693:
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0'))
        goto LAB_004886a6;
        goto LAB_004892ac;
      }
LAB_004886a6:
      *(undefined4 *)(param_1 + 0xb64) = 3;
    }
    else {
      if (iVar11 == 9) {
        ppbVar12 = *(byte ***)(param_1 + 0x7c);
        if ((ppbVar12 == (byte **)0x0) || (*(char *)(param_1 + 0x8c) == '\0')) {
LAB_0048870d:
          if ((ppbVar12 != (byte **)0x0) && (*(char *)(param_1 + 0x8c) == '\0')) {
            ppbVar12 = *(byte ***)(param_1 + 0x7c);
            if (&DAT_0000000f < ppbVar12[5]) {
              ppbVar12 = (byte **)*ppbVar12;
            }
            pcVar20 = "Puking";
            do {
              bVar2 = *(byte *)ppbVar12;
              bVar24 = bVar2 < (byte)*pcVar20;
              if (bVar2 != *pcVar20) {
LAB_00488750:
                uVar9 = -(uint)bVar24 | 1;
                goto LAB_00488755;
              }
              if (bVar2 == 0) break;
              bVar2 = *(byte *)((int)ppbVar12 + 1);
              bVar24 = bVar2 < ((byte *)pcVar20)[1];
              if (bVar2 != ((byte *)pcVar20)[1]) goto LAB_00488750;
              ppbVar12 = (byte **)((int)ppbVar12 + 2);
              pcVar20 = (char *)((byte *)pcVar20 + 2);
            } while (bVar2 != 0);
            uVar9 = 0;
LAB_00488755:
            if (uVar9 == 0) goto LAB_004887ae;
          }
          FUN_0040a380("Puking",0);
          local_2dc = (uint *)0x39a;
          FUN_00956780();
          FUN_0092dc30(local_2dc,0x3f800000,2,0,0x3f800000,0);
        }
        else {
          ppbVar8 = ppbVar12;
          if (&DAT_0000000f < ppbVar12[5]) {
            ppbVar8 = (byte **)*ppbVar12;
          }
          pcVar20 = "Puking";
          do {
            bVar2 = *(byte *)ppbVar8;
            bVar24 = bVar2 < (byte)*pcVar20;
            if (bVar2 != *pcVar20) {
LAB_00488700:
              uVar9 = -(uint)bVar24 | 1;
              goto LAB_00488705;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppbVar8 + 1);
            bVar24 = bVar2 < ((byte *)pcVar20)[1];
            if (bVar2 != ((byte *)pcVar20)[1]) goto LAB_00488700;
            ppbVar8 = (byte **)((int)ppbVar8 + 2);
            pcVar20 = (char *)((byte *)pcVar20 + 2);
          } while (bVar2 != 0);
          uVar9 = 0;
LAB_00488705:
          if (uVar9 != 0) goto LAB_0048870d;
        }
LAB_004887ae:
        if (*(int *)(param_1 + 0x7c) != 0) {
          cVar6 = FUN_0040add0("Shoot");
          if (cVar6 != '\0') {
            FUN_006d6ba0(0x137,0x3f800000,2,0,0x3f800000);
          }
          if (*(int *)(param_1 + 0x7c) != 0) {
            cVar6 = FUN_0040ae70("Shoot");
            if ((cVar6 != '\0') &&
               (((*(int *)(param_1 + 0x7c) == 0 ||
                 (cVar6 = FUN_0040ae70("StopShooting"), cVar6 == '\0')) &&
                (cVar6 = FUN_006ac710(3,0), cVar6 != '\0')))) {
              fVar25 = *(float *)(param_1 + 0xbb0);
              local_308 = fVar25;
              if (fVar25 < fVar25 + DAT_00baab30) {
                do {
                  uVar9 = FUN_006eef60();
                  if ((uVar9 & 3) != 0) {
                    local_2dc = (uint *)(local_308 * DAT_00baa088);
                    AI_0043ef30();
                    local_b4 = 0xc1f00000;
                    local_b0 = 0x40400000;
                    local_ac = 0xbd4ccccd;
                    iVar11 = FUN_006eef60();
                    local_60 = local_60 | 0x20000;
                    local_24 = 3;
                    local_7c = _DAT_00bac6b0;
                    uStack_78 = _UNK_00bac6b4;
                    uStack_74 = _UNK_00bac6b8;
                    uStack_70 = _UNK_00bac6bc;
                    local_a4 = (float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                               DAT_00ba9ff4 + (float)DAT_00baa2d0;
                    puVar15 = local_2dc;
                    FUN_0041d540();
                    local_270 = (float)puVar15 * DAT_00baa7e8;
                    puVar15 = local_2dc;
                    FUN_0041d520();
                    local_26c = (float)puVar15 * DAT_00baa7e8;
                    FUN_006cb2e0(param_1 + 0x33c,&local_270,0,local_b8);
                  }
                  fVar25 = *(float *)(param_1 + 0xbb0);
                  local_308 = local_308 + DAT_00baa950;
                } while (local_308 < fVar25 + DAT_00baab30);
              }
              *(float *)(param_1 + 0xbb0) = *(float *)(param_1 + 0xbb4) * DAT_00baa804 + fVar25;
            }
            goto LAB_00488693;
          }
        }
        goto LAB_004886a6;
      }
      if (iVar11 == 0xd) {
        ppbVar12 = *(byte ***)(param_1 + 0x7c);
        if ((ppbVar12 == (byte **)0x0) || (*(char *)(param_1 + 0x8c) == '\0')) {
LAB_00488a10:
          if ((ppbVar12 != (byte **)0x0) && (*(char *)(param_1 + 0x8c) == '\0')) {
            ppbVar12 = *(byte ***)(param_1 + 0x7c);
            if (&DAT_0000000f < ppbVar12[5]) {
              ppbVar12 = (byte **)*ppbVar12;
            }
            pbVar19 = &DAT_00b1d2cc;
            do {
              bVar2 = *(byte *)ppbVar12;
              bVar24 = bVar2 < *pbVar19;
              if (bVar2 != *pbVar19) {
LAB_00488a50:
                uVar9 = -(uint)bVar24 | 1;
                goto LAB_00488a55;
              }
              if (bVar2 == 0) break;
              bVar2 = *(byte *)((int)ppbVar12 + 1);
              bVar24 = bVar2 < pbVar19[1];
              if (bVar2 != pbVar19[1]) goto LAB_00488a50;
              ppbVar12 = (byte **)((int)ppbVar12 + 2);
              pbVar19 = pbVar19 + 2;
            } while (bVar2 != 0);
            uVar9 = 0;
LAB_00488a55:
            if (uVar9 == 0) goto LAB_00488ab1;
          }
          FUN_0040a380(&DAT_00b1d2cc,0);
          local_2a4 = 0x398;
          FUN_00956780();
          FUN_0092dc30(local_2a4,0x3f800000,2,0,0x3f800000,0);
        }
        else {
          ppbVar8 = ppbVar12;
          if (&DAT_0000000f < ppbVar12[5]) {
            ppbVar8 = (byte **)*ppbVar12;
          }
          pbVar19 = &DAT_00b1d2cc;
          do {
            bVar2 = *(byte *)ppbVar8;
            bVar24 = bVar2 < *pbVar19;
            if (bVar2 != *pbVar19) {
LAB_00488a03:
              uVar9 = -(uint)bVar24 | 1;
              goto LAB_00488a08;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppbVar8 + 1);
            bVar24 = bVar2 < pbVar19[1];
            if (bVar2 != pbVar19[1]) goto LAB_00488a03;
            ppbVar8 = (byte **)((int)ppbVar8 + 2);
            pbVar19 = pbVar19 + 2;
          } while (bVar2 != 0);
          uVar9 = 0;
LAB_00488a08:
          if (uVar9 != 0) goto LAB_00488a10;
        }
LAB_00488ab1:
        if (*(int *)(param_1 + 0x7c) == 0) goto LAB_004886a6;
        cVar6 = FUN_0040add0("Shoot");
        if ((cVar6 != '\0') &&
           ((cVar6 = FUN_00417430(0,0x10000000), cVar6 == '\0' ||
            (iVar11 = FUN_006ac7e0(0x27,0,extraout_ECX,0), iVar11 == 0)))) {
          uVar7 = FUN_006eef60();
          local_260 = *(float *)(param_1 + 0x33c) + local_308;
          local_25c = *(float *)(param_1 + 0x340) + DAT_00baa87c;
          local_268 = 0;
          local_264 = 0x40a00000;
          piVar18 = (int *)FUN_006fe410(0x27,0,&local_260,&local_268,param_1,0,uVar7,0);
          (**(code **)(*piVar18 + 0xc))();
          FUN_006d6ba0(0x13a,0x3f800000,2,0,0x3f800000);
          uVar9 = FUN_006eef60();
          piStack_318 = (int *)0x0;
          local_2fc = (int *)(uVar9 % 3 + 2);
          if (local_2fc != (int *)0x0) {
            do {
              iVar11 = FUN_006eef60();
              piVar18 = (int *)FUN_006b64d0((float)((double)iVar11 +
                                                   (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                                            DAT_00ba9ff4 * (float)DAT_00baa2d0 + (float)DAT_00baa2d0
                                           );
              if (piStack_318 == (int *)0x0) {
                fVar26 = *(float *)(param_1 + 0x340) + DAT_00baa87c;
                fVar25 = *(float *)(param_1 + 0x33c) + local_308;
              }
              else {
                iVar11 = FUN_006eef60();
                fVar26 = (float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4
                ;
                fVar25 = fVar26 * local_308 + *(float *)(param_1 + 0x33c);
                fVar26 = fVar26 * DAT_00baa87c + *(float *)(param_1 + 0x340);
              }
              piVar18[0xcf] = (int)fVar25;
              piVar18[0xd0] = (int)fVar26;
              auStack_d4 = ZEXT816(0);
              uStack_e4 = _DAT_00babf20;
              uStack_e0 = _UNK_00babf24;
              uStack_dc = _UNK_00babf28;
              uStack_d8 = _UNK_00babf2c;
              uStack_c4 = 0x3ed70a3d;
              uStack_c0 = 0x3edc28f6;
              uStack_bc = 0x3eb33333;
              (**(code **)(*piVar18 + 0x3c))(&uStack_e4,0xffffffff,0xff,0,1);
              (**(code **)(*piVar18 + 0xc))();
              piStack_318 = (int *)((int)piStack_318 + 1);
            } while ((int)piStack_318 < (int)local_2fc);
          }
        }
        goto LAB_00488693;
      }
      if (iVar11 != 8) {
        if (iVar11 == 10) {
          iVar16 = FUN_0067f260();
          *(bool *)(param_1 + 0x148) = iVar16 == 0;
          iVar11 = *(int *)(param_1 + 0xbc0);
          if (iVar11 == 0) {
            FUN_0040a380((&PTR_s_LaserStartSide_00b1dbf4)[iVar16],0);
            if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
              *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
            }
          }
          else if (iVar11 == 1) {
            FUN_0040a380((&PTR_s_LaserLoopSide_00b1dbe4)[iVar16],0);
            local_2d8 = (int *)0x0;
            local_2d4 = -0x3e100000;
            if (iVar16 == 0) {
              local_2d8 = (int *)0xc20c0000;
            }
            else if (iVar16 == 2) {
              local_2d8 = (int *)0x420c0000;
            }
            fVar25 = (float)iVar16 * DAT_00baa9b4 + DAT_00baaa78;
            FUN_00682740(0x1e,&local_2d8,param_1,0);
            local_2fc = (int *)FUN_0096f310(6,param_1 + 0x33c,fVar25);
            iVar11 = DAT_00baabfc;
            if (iVar16 == 1) {
              iVar11 = DAT_00baadc0;
            }
            local_2fc[0xd6] = iVar11;
            (**(code **)(*local_2fc + 0xc))();
            ppiVar1 = (int **)(param_1 + 0xbec);
            if (*(int *)(param_1 + 0xbec) != 0) {
              appiStack_2c4[0] = ppiVar1;
              FUN_004cf210(appiStack_2c4);
            }
            *ppiVar1 = local_2fc;
            FUN_004cdcf0(ppiVar1);
            *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
          }
          else {
            if (iVar11 != 2) {
              if ((iVar11 != 3) ||
                 ((FUN_0040a380((&PTR_s_LaserEndSide_00b1dbd4)[iVar16],0),
                  *(int *)(param_1 + 0x7c) != 0 && (*(char *)(param_1 + 0x8c) != '\0'))))
              goto LAB_004892ac;
              *(undefined4 *)(param_1 + 0xb64) = 3;
              *(undefined4 *)(param_1 + 0xbc0) = 0;
              goto LAB_004892a2;
            }
            if (*(int *)(param_1 + 0xbec) == 0) {
              *(undefined4 *)(param_1 + 0xbc0) = 3;
            }
          }
        }
        goto LAB_004892ac;
      }
      if (*(int *)(param_1 + 0xbc0) != 0) {
        if (*(int *)(param_1 + 0xbc0) == 1) {
          FUN_0040a380("RollLoop",0);
          cVar6 = FUN_00a10630(&DAT_00c7b640);
          if (cVar6 != '\0') {
            pfVar13 = (float *)FUN_00a10030(local_248);
            fVar25 = pfVar13[1] * DAT_00baa8a0;
            *(float *)(param_1 + 0x360) = *pfVar13 * DAT_00baa8a0;
            *(float *)(param_1 + 0x364) = fVar25;
            if (*(char *)(param_1 + 400) != '\0') {
              local_29c = 0x39c;
              FUN_00956780();
              FUN_0092dc30(local_29c,0x3f800000,2,0,0x3f800000,0);
            }
          }
          iVar11 = *(int *)(param_1 + 0x410);
          *(int *)(param_1 + 0x410) = iVar11 + 1;
          if ((0x96 < iVar11) || (cVar6 = FUN_00417430(0x1000a00,0), cVar6 != '\0')) {
            *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
          }
          iVar11 = FUN_006be840();
          if ((*(int *)(param_1 + 0x28) == 0x19a) &&
             ((((float)((uint)(*(float *)(iVar11 + 0x33c) - *(float *)(param_1 + 0x33c)) &
                       DAT_00bacb40) < DAT_00baa87c ||
               ((float)((uint)(*(float *)(iVar11 + 0x340) - *(float *)(param_1 + 0x340)) &
                       DAT_00bacb40) < DAT_00baa87c)) && (uVar9 = FUN_006eef60(), uVar9 % 3 == 0))))
          {
            *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
            *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
          }
          goto LAB_004892ac;
        }
        ppbVar12 = *(byte ***)(param_1 + 0x7c);
        if (ppbVar12 == (byte **)0x0) {
LAB_00489099:
          FUN_0040a380("Taunt",0);
          local_2e8 = 0x39b;
          FUN_00956780();
          FUN_0092dc30(local_2e8,0x3f800000,2,0,0x3f800000,0);
        }
        else {
          if (*(char *)(param_1 + 0x8c) == '\0') {
            ppbVar12 = *(byte ***)(param_1 + 0x7c);
            if (&DAT_0000000f < ppbVar12[5]) {
              ppbVar12 = (byte **)*ppbVar12;
            }
            pcVar20 = "Taunt";
            do {
              bVar2 = *(byte *)ppbVar12;
              bVar24 = bVar2 < (byte)*pcVar20;
              if (bVar2 != *pcVar20) {
LAB_00489090:
                uVar9 = -(uint)bVar24 | 1;
                goto joined_r0x00489097;
              }
              if (bVar2 == 0) break;
              bVar2 = *(byte *)((int)ppbVar12 + 1);
              bVar24 = bVar2 < ((byte *)pcVar20)[1];
              if (bVar2 != ((byte *)pcVar20)[1]) goto LAB_00489090;
              ppbVar12 = (byte **)((int)ppbVar12 + 2);
              pcVar20 = (char *)((byte *)pcVar20 + 2);
            } while (bVar2 != 0);
            uVar9 = 0;
          }
          else {
            if (&DAT_0000000f < ppbVar12[5]) {
              ppbVar12 = (byte **)*ppbVar12;
            }
            pcVar20 = "Taunt";
            do {
              bVar2 = *(byte *)ppbVar12;
              bVar24 = bVar2 < (byte)*pcVar20;
              if (bVar2 != *pcVar20) {
LAB_00489050:
                uVar9 = -(uint)bVar24 | 1;
                goto joined_r0x00489097;
              }
              if (bVar2 == 0) break;
              bVar2 = *(byte *)((int)ppbVar12 + 1);
              bVar24 = bVar2 < ((byte *)pcVar20)[1];
              if (bVar2 != ((byte *)pcVar20)[1]) goto LAB_00489050;
              ppbVar12 = (byte **)((int)ppbVar12 + 2);
              pcVar20 = (char *)((byte *)pcVar20 + 2);
            } while (bVar2 != 0);
            uVar9 = 0;
          }
joined_r0x00489097:
          if (uVar9 != 0) goto LAB_00489099;
        }
        if (*(int *)(param_1 + 0x7c) != 0) {
          if (*(char *)(param_1 + 0x8c) == '\0') {
            *(undefined4 *)(param_1 + 0xb64) = 3;
          }
          goto LAB_004892a2;
        }
        goto LAB_004886a6;
      }
      ppbVar12 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar12 == (byte **)0x0) {
LAB_00488d89:
        FUN_0040a380("RollStart",0);
        local_2a0 = 0x399;
        FUN_00956780();
        FUN_0092dc30(local_2a0,0x3f800000,2,0,0x3f800000,0);
      }
      else {
        if (*(char *)(param_1 + 0x8c) == '\0') {
          ppbVar12 = *(byte ***)(param_1 + 0x7c);
          if (&DAT_0000000f < ppbVar12[5]) {
            ppbVar12 = (byte **)*ppbVar12;
          }
          pcVar20 = "RollStart";
          do {
            bVar2 = *(byte *)ppbVar12;
            bVar24 = bVar2 < (byte)*pcVar20;
            if (bVar2 != *pcVar20) {
LAB_00488d80:
              uVar9 = -(uint)bVar24 | 1;
              goto joined_r0x00488d87;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppbVar12 + 1);
            bVar24 = bVar2 < ((byte *)pcVar20)[1];
            if (bVar2 != ((byte *)pcVar20)[1]) goto LAB_00488d80;
            ppbVar12 = (byte **)((int)ppbVar12 + 2);
            pcVar20 = (char *)((byte *)pcVar20 + 2);
          } while (bVar2 != 0);
          uVar9 = 0;
        }
        else {
          if (&DAT_0000000f < ppbVar12[5]) {
            ppbVar12 = (byte **)*ppbVar12;
          }
          pcVar20 = "RollStart";
          do {
            bVar2 = *(byte *)ppbVar12;
            bVar24 = bVar2 < (byte)*pcVar20;
            if (bVar2 != *pcVar20) {
LAB_00488d42:
              uVar9 = -(uint)bVar24 | 1;
              goto joined_r0x00488d87;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppbVar12 + 1);
            bVar24 = bVar2 < ((byte *)pcVar20)[1];
            if (bVar2 != ((byte *)pcVar20)[1]) goto LAB_00488d42;
            ppbVar12 = (byte **)((int)ppbVar12 + 2);
            pcVar20 = (char *)((byte *)pcVar20 + 2);
          } while (bVar2 != 0);
          uVar9 = 0;
        }
joined_r0x00488d87:
        if (uVar9 != 0) goto LAB_00488d89;
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_004892ac;
      *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
      iVar11 = FUN_006be840();
      local_258 = CONCAT44(*(float *)(iVar11 + 0x340) - *(float *)(param_1 + 0x340),
                           *(float *)(iVar11 + 0x33c) - *(float *)(param_1 + 0x33c));
      pfVar13 = (float *)FUN_00a10030(local_1c8);
      fVar25 = pfVar13[1] * DAT_00baa8a0;
      *(float *)(param_1 + 0x360) = *pfVar13 * DAT_00baa8a0 + *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) = fVar25 + *(float *)(param_1 + 0x364);
    }
LAB_004892a2:
    *(undefined4 *)(param_1 + 0x410) = 0;
  }
LAB_004892ac:
  piVar18 = DAT_00c71678;
  if ((((*(int *)(param_1 + 0x30) == 1) && ((*(uint *)(param_1 + 0x168) & 0x4000) == 0)) &&
      (cVar6 = FUN_006fd350(), cVar6 == '\0')) &&
     ((piVar18[0x993e] + *(int *)(param_1 + 0x20)) % 0x1e == 0)) {
    local_2e0 = FUN_006eef60();
    local_2b4 = param_1 + 0x33c;
    puVar15 = &local_30c;
    puVar31 = &DAT_00c7b640;
    local_310 = DAT_00c71678;
    local_30c = 0;
    local_314 = 0x17;
    local_2e4 = 1000;
    iVar11 = param_1;
    FUN_008646e0(&local_2e4,&local_314,local_2b4);
    uVar9 = uStack_300;
    if (1 < DAT_00c71678[0x9985]) {
      piVar18 = (int *)DAT_00c71678[0x9988];
      uVar14 = FUN_006eef60();
      local_258 = DAT_00b1f66c;
      uStack_304 = DAT_00b1f674;
      uVar9 = uStack_300;
      uStack_300 = uVar14;
      if (uStack_300 == 5) {
        if (puVar31 < (undefined4 *)0x12d) {
          if (puVar31 == (undefined4 *)0x12c) {
            while ((puVar15 == (uint *)0x0 ||
                   (cVar6 = (**(code **)(*piVar18 + 0x24))(puVar15), cVar6 != '\0'))) {
              if (uVar14 == 0) {
                FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                pcVar3 = (code *)swi(3);
                (*pcVar3)();
                return;
              }
              uVar14 = uVar14 >> ((byte)local_258 & 0x1f) ^ uVar14;
              uVar14 = uVar14 << ((byte)((ulonglong)local_258 >> 0x20) & 0x1f) ^ uVar14;
              uVar14 = uVar14 >> ((byte)uStack_304 & 0x1f) ^ uVar14;
              uVar7 = FUN_00734180(uVar14,0x19,10,10,1);
              uStack_138 = DAT_00b1f66c;
              uStack_130 = DAT_00b1f674;
              uStack_13c = uVar14;
              puVar15 = (uint *)FUN_00865340(&uStack_13c,uVar7,1,1,0);
            }
          }
          else {
            if (puVar31 == (undefined4 *)0x46) {
              local_2e0 = (uint)puVar15 >> 0xb;
              do {
                if (puVar15 != (uint *)0x0) {
                  pcVar3 = *(code **)(*piVar18 + 0x28);
                  uVar7 = FUN_00734a80(puVar15,0);
                  cVar6 = (*pcVar3)(uVar7);
                  uVar14 = uStack_300;
                  if (cVar6 == '\0') goto LAB_00489434;
                }
                local_2dc = (uint *)(DAT_00c71678 + 0x69d0);
                if (uVar14 == 0) {
                  FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                  pcVar3 = (code *)swi(3);
                  (*pcVar3)();
                  return;
                }
                uVar14 = uVar14 >> ((byte)local_258 & 0x1f) ^ uVar14;
                uVar14 = uVar14 << ((byte)((ulonglong)local_258 >> 0x20) & 0x1f) ^ uVar14;
                uVar14 = uVar14 >> ((byte)uStack_304 & 0x1f) ^ uVar14;
                uStack_300 = uVar14;
                uVar22 = FUN_00734900(uVar14);
                puVar15 = (uint *)(uVar22 | (local_2e0 & 1) << 0xb);
              } while( true );
            }
            if (puVar31 == (undefined4 *)0x64) {
              if ((puVar15 == (uint *)0x19) ||
                 (((local_2dc = puVar15, FUN_004288a0(auStack_22c,&local_2dc),
                   *(char *)(iStack_224 + 0xd) == '\0' &&
                   (*(int *)(iStack_224 + 0x10) <= (int)puVar15)) &&
                  (uVar14 = uStack_300, iStack_224 != piVar18[8])))) {
                uStack_300 = uVar14;
                bVar24 = false;
              }
              else {
                bVar24 = true;
              }
              if ((puVar15 == (uint *)0x0) || (bVar24)) {
                puVar15 = (uint *)(**(code **)(*piVar18 + 0x84))(0);
              }
            }
          }
        }
        else if (puVar31 == (undefined4 *)0x15e) {
          while ((puVar15 == (uint *)0x0 ||
                 (cVar6 = (**(code **)(*piVar18 + 0x2c))(puVar15), param_1 = local_2e8,
                 cVar6 != '\0'))) {
            puVar15 = (uint *)FUN_00733ca0(0);
          }
        }
      }
    }
LAB_00489434:
    if ((((*(uint *)(param_1 + 0x168) & 0x20000000) != 0) && (uVar9 == 1000)) &&
       ((int)puVar31 - 0x16U < 5)) {
                    /* WARNING: Could not recover jumptable at 0x00489460. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (*(code *)(&PTR_LAB_00489c80)[(int)puVar31 - 0x16U])();
      return;
    }
    piStack_318 = (int *)FUN_006f0090(uVar9,0);
    lVar4 = CONCAT44(local_2b4,local_2d8);
    if (piStack_318 != (int *)0x0) {
      uVar27 = FUN_00a68490();
      iVar16 = local_2e8;
      piVar18 = piStack_318;
      uVar22 = (uint)(uVar27 >> 0x20);
      lVar4 = (uVar27 & 0xffffffff) * 0x431bde82;
      local_2b4 = (int)((ulonglong)lVar4 >> 0x20);
      uVar27 = (ulonglong)uVar22 * 0xd7b634db + ((uVar27 & 0xffffffff) * 0xd7b634db >> 0x20);
      uVar21 = (uint)(uVar27 >> 0x20);
      uVar14 = (uint)(lVar4 + (uVar27 & 0xffffffff) >> 0x20);
      lVar4 = (ulonglong)uVar22 * 0x431bde82 +
              (ulonglong)CONCAT14(CARRY4(uVar21,uVar14),uVar21 + uVar14);
      local_314 = (uint)((ulonglong)lVar4 >> 0x20);
      local_30c = (uint)lVar4 >> 0x12 | local_314 * 0x4000;
      local_314 = local_314 >> 0x12;
      piStack_318[0xd] = *(int *)(local_2e8 + 0x28);
      piStack_318[0xe] = *(int *)(local_2e8 + 0x2c);
      if (piStack_318[0xf2] != 0) {
        local_2d8 = piStack_318 + 0xf2;
        FUN_004cf210(&local_2d8);
      }
      piVar18[0xf2] = iVar16;
      FUN_004cdcf0(piVar18 + 0xf2);
      piVar18[0xcf] = *(int *)(iVar16 + 0x33c);
      piVar18[0xd0] = *(int *)(iVar16 + 0x340);
      piVar18[0xd8] = DAT_00c7b640;
      piVar18[0xd9] = DAT_00c7b644;
      (**(code **)(*piVar18 + 4))(uVar9,puVar31,puVar15,local_2fc);
      iVar23 = *(int *)(*(int *)(iVar11 + 0x18300) + 0x1214);
      *(int *)(*(int *)(iVar11 + 0x18300) + 0x1214) = iVar23 + 1;
      piVar18[8] = iVar23;
      FUN_00418500(piVar18);
      cVar6 = FUN_006b5b90(1);
      if (cVar6 != '\0') {
        cVar6 = FUN_00417430(0,0x10000000);
        if (cVar6 == '\0') {
          cVar6 = FUN_00417430(0x20000000,0);
          if (cVar6 != '\0') {
            uVar30 = 0;
            uVar29 = 0;
            uVar28 = 0xffffffff;
            uVar7 = FUN_00435c70(0xffffffff,0,0);
            FUN_006ad870(uVar7,uVar28,uVar29,uVar30);
          }
        }
        else {
          uVar14 = piVar18[0x5b];
          iVar23 = piVar18[0x5a];
          piVar18[0x5a] = iVar23;
          piVar18[0x5b] = uVar14 | 0x10000000;
          if ((uVar9 != 9) && (uVar9 != 7)) {
            piVar18[0x5a] = iVar23;
            piVar18[0x5b] = uVar14 | 0x10000020;
          }
          FUN_00431310(*(undefined4 *)(iVar16 + 0x264));
          FUN_006ad870(&local_1dc,0xffffffff,0,0);
          if (uVar9 - 10 < 0x3de) {
            FUN_004a5d10(puVar31,1);
          }
        }
        iVar16 = __RTDynamicCast(iVar16,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                 &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        piVar17 = (int *)__RTDynamicCast(piVar18,0,
                                         &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                         &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        if ((iVar16 != 0) && (piVar17 != (int *)0x0)) {
          cVar6 = FUN_00417430(1,0);
          if (cVar6 == '\0') {
            cVar6 = FUN_00417430(0,0x1000000);
            if (cVar6 != '\0') {
              FUN_00431310(0);
              FUN_006b78d0(auStack_1b4,0x5a);
            }
            cVar6 = FUN_00417430(0x1000000,0);
            if (cVar6 != '\0') {
              FUN_00431310(0);
              FUN_006b5c10(auStack_18c,0x5a,0,0);
              if (0 < piVar17[0x8f]) {
                piVar17[0x5a] = piVar17[0x5a] | 0x1000000;
                piVar17[0x5b] = piVar17[0x5b];
                piVar17[0xed] = piVar17[0xee];
              }
            }
          }
          FUN_006d6610((float)piVar17[0x30e] * *(float *)(iVar16 + 0xf48));
          piVar17[0x3d2] = (int)((float)piVar17[0x3d2] * *(float *)(iVar16 + 0xf48));
          piVar17[0x3d1] = (int)((float)piVar17[0x3d1] * *(float *)(iVar16 + 0xf44));
          piVar17[0xe1] = (int)((float)piVar17[0xe1] * *(float *)(iVar16 + 0xf44));
          piVar17[0xe0] = (int)((float)piVar17[0xe0] * *(float *)(iVar16 + 0xf44));
          cVar6 = (**(code **)(*piVar17 + 0x4c))();
          if (cVar6 != '\0') {
            FUN_0060d140(*(undefined4 *)(iVar16 + 0xf54));
          }
        }
      }
      cVar6 = FUN_007078f0(piVar18);
      if (cVar6 != '\0') {
        FUN_007079c0(piVar18,extraout_ECX_00);
      }
      if ((*(char *)((int)piVar18 + 0x172) != '\0') &&
         (*(int *)(iVar11 + 0x67758) != *(int *)(iVar11 + 0x6775c))) {
        local_268 = piVar18[0xb];
        local_26c = (float)piVar18[10];
        FUN_009e24a0(&local_2d4,&local_26c);
        if (local_2d4 == *(int *)(iVar11 + 0x67780)) {
          iStack_2ac = piVar18[10];
          uStack_2a8 = 0xffffffff;
          piVar17 = (int *)FUN_009e24a0(auStack_24c,&iStack_2ac);
          if (*piVar17 == *(int *)(iVar11 + 0x67780)) goto LAB_00489b0d;
        }
        uVar9 = 0;
        if (DAT_00c71678[0x6eab] - DAT_00c71678[0x6eaa] >> 2 != 0) {
          do {
            FUN_009b92c0(uVar9);
            FUN_009e0680(6,piVar18,uStack_2d0,&DAT_00c7b640);
            uVar9 = uVar9 + 1;
          } while (uVar9 < (uint)(DAT_00c71678[0x6eab] - DAT_00c71678[0x6eaa] >> 2));
        }
      }
LAB_00489b0d:
      uVar27 = FUN_00a68490();
      local_2fc = (int *)(uVar27 >> 0x20);
      lVar5 = (uVar27 & 0xffffffff) * 0x431bde82;
      local_2d4 = (int)((ulonglong)lVar5 >> 0x20);
      uStack_2d0 = (undefined4)(ZEXT48(local_2fc) * 0xd7b634db >> 0x20);
      lVar4 = ZEXT48(local_2fc) * 0x431bde82;
      uVar27 = ZEXT48(local_2fc) * 0xd7b634db + ((uVar27 & 0xffffffff) * 0xd7b634db >> 0x20);
      uVar14 = (uint)(uVar27 >> 0x20);
      lVar5 = lVar5 + (uVar27 & 0xffffffff);
      local_264 = (undefined4)lVar5;
      uVar9 = (uint)((ulonglong)lVar5 >> 0x20);
      lVar5 = lVar4 + (ulonglong)CONCAT14(CARRY4(uVar14,uVar9),uVar14 + uVar9);
      uVar22 = (uint)((ulonglong)lVar5 >> 0x20);
      uVar9 = (uint)lVar5 >> 0x12 | uVar22 * 0x4000;
      uVar14 = uVar9 - local_30c;
      bVar24 = CARRY4(DAT_00c7b630,uVar14);
      DAT_00c7b630 = DAT_00c7b630 + uVar14;
      DAT_00c7b634 = DAT_00c7b634 + (((uVar22 >> 0x12) - local_314) - (uint)(uVar9 < local_30c)) +
                     (uint)bVar24;
      param_1 = local_2e8;
    }
    local_2b4 = (int)((ulonglong)lVar4 >> 0x20);
    local_2d8 = (int *)lVar4;
    piVar18 = (int *)__RTDynamicCast(piStack_318,0,
                                     &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                     &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,0);
    fVar25 = DAT_00c37940 * DAT_00baa6bc;
    piVar18[0x39] = (int)(DAT_00c3793c * DAT_00baa6bc);
    piVar18[0x11e] = 0x3f400000;
    piVar18[0x3a] = (int)fVar25;
    (**(code **)(*piVar18 + 0xc))();
  }
  if (*(char *)(param_1 + 0x173) != '\0') {
    local_2f4 = 0x396;
    FUN_00956780();
    FUN_0092dc30(local_2f4,0x3f800000,2,0,0x3f800000,0);
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * (float)DAT_00baa2d0;
LAB_00489c6c:
  FUN_00aef12b();
  return;
}

