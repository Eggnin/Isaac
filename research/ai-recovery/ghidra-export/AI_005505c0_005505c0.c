/* Local J460 decompiler output.
 * VA: 0x005505c0
 * Entry: 005505c0
 * Dispatcher: 0x006c2990
 * Types: 884
 * Identities: 884.0.0
 * Evidence: dispatcher=0x006c2990; end=0x005511e9; instructions=799
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=884; identities=884.0.0; dispatcher=0x006c2990;
   end=0x005511e9; instructions=799 */

void __fastcall AI_005505c0(int param_1)

{
  int *piVar1;
  byte bVar2;
  byte **ppbVar3;
  undefined4 uVar4;
  code *pcVar5;
  undefined4 uVar6;
  char cVar7;
  uint uVar8;
  int iVar9;
  byte **ppbVar10;
  float *pfVar11;
  uint uVar12;
  int iVar13;
  byte *pbVar14;
  char *pcVar15;
  undefined4 *puVar16;
  bool bVar17;
  float fVar18;
  float fVar19;
  float local_68;
  float local_64;
  uint local_60;
  undefined8 uStack_5c;
  float fStack_54;
  int local_50;
  char local_49;
  float local_48;
  float local_44;
  float local_40;
  undefined4 local_3c;
  undefined2 local_38;
  undefined local_36;
  char local_34 [4];
  int local_30;
  undefined4 *local_2c;
  undefined4 *local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4aed;
  local_1c = ExceptionList;
  uVar8 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_50 = param_1;
  local_24 = uVar8;
  iVar9 = FUN_009be080(0x179,DAT_00c71678 + 0x1baa8,1);
  if ((iVar9 == 0) || ((*(uint *)(param_1 + 0x168) & 0x20000000) != 0)) {
    local_49 = '\0';
  }
  else {
    local_49 = '\x01';
    if ((*(int *)(param_1 + 0xb64) == 0) ||
       (*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328) == 1)) {
      local_3c._0_1_ = s__inert_00b60f98[0];
      local_3c._1_1_ = s__inert_00b60f98[1];
      local_3c._2_1_ = s__inert_00b60f98[2];
      local_3c._3_1_ = s__inert_00b60f98[3];
      local_28 = (undefined4 *)&DAT_0000000f;
      local_2c = (undefined4 *)0x6;
      local_38._0_1_ = s__inert_00b60f98[4];
      local_38._1_1_ = s__inert_00b60f98[5];
      local_36 = 0;
      local_14 = 0;
      FUN_006baa70(&local_3c);
      local_14 = 0xffffffff;
      if (&DAT_0000000f < local_28) {
        puVar16 = (undefined4 *)((int)local_28 + 1);
        uVar12 = local_3c;
        if ((undefined4 *)0xfff < puVar16) {
          uVar12 = *(uint *)(local_3c - 4);
          puVar16 = local_28 + 9;
          if (0x1f < (local_3c - uVar12) - 4) goto LAB_00551116;
        }
        FUN_00aef15c(uVar12,puVar16,uVar8);
      }
      local_2c = (undefined4 *)0x0;
      local_28 = (undefined4 *)&DAT_0000000f;
      local_3c = local_3c & 0xffffff00;
    }
  }
  iVar9 = *(int *)(param_1 + 0xb64);
  if (iVar9 != 0) {
    if (iVar9 == 3) {
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
      FUN_006bec40((int)&uStack_5c + 4,0);
      if (local_49 == '\0') {
        local_44 = uStack_5c._4_4_;
        local_40 = fStack_54;
      }
      else {
        local_40 = 0.0;
        local_48 = 0.0;
        local_44 = 0.0;
        AI_0041af60(local_34,*(undefined4 *)(param_1 + 0x28),0xffffffff,0xffffffff,0,0);
        puVar16 = (undefined4 *)0x0;
        local_14 = 1;
        iVar9 = local_30;
        if (local_28 == (undefined4 *)0x0) {
LAB_005509e9:
          pfVar11 = (float *)((int)&uStack_5c + 4);
          uStack_5c = CONCAT44(local_48,(undefined4)uStack_5c);
          fStack_54 = local_40;
        }
        else {
          do {
            iVar13 = *(int *)(iVar9 + (int)puVar16 * 4);
            if ((iVar13 != param_1) &&
               (iVar9 = local_30, (*(uint *)(iVar13 + 0x168) & 0x20000000) == 0)) {
              fVar18 = *(float *)(param_1 + 0x340) - *(float *)(iVar13 + 0x340);
              fVar19 = *(float *)(param_1 + 0x33c) - *(float *)(iVar13 + 0x33c);
              fVar18 = fVar18 * fVar18 + fVar19 * fVar19;
              FUN_00435a50();
              iVar9 = local_30;
              if (local_44 < fVar18) {
                local_44 = fVar18;
                iVar13 = *(int *)(local_30 + (int)puVar16 * 4);
                local_48 = *(float *)(iVar13 + 0x33c);
                local_40 = *(float *)(iVar13 + 0x340);
              }
            }
            puVar16 = (undefined4 *)((int)puVar16 + 1);
          } while (puVar16 < local_28);
          if (DAT_00ba9fe4 <= local_44) goto LAB_005509e9;
          pfVar11 = (float *)FUN_0081e9d0((int)&uStack_5c + 4,0);
        }
        local_44 = *pfVar11;
        local_40 = pfVar11[1];
        local_14 = 0xffffffff;
        if (local_34[0] == '\0') {
          local_14 = 2;
          FUN_00a648b0(0,0);
          local_14 = 0xffffffff;
        }
      }
      local_44 = local_44 - *(float *)(param_1 + 0x33c);
      local_40 = local_40 - *(float *)(param_1 + 0x340);
      fVar18 = local_44 * local_44 + local_40 * local_40;
      FUN_00435a50();
      local_48 = fVar18;
      if (local_48 <= DAT_00ba9fe4) goto LAB_00551374;
      uVar8 = 4;
      if (DAT_00baaa94 < local_48) {
        uVar8 = 0x14;
      }
      uVar12 = FUN_006eef60();
      if ((uVar12 % uVar8 == 0) || (local_48 < DAT_00baa9d0)) {
        uVar8 = FUN_006eef60();
        if ((uVar8 & 1) == 0) {
          uVar8 = FUN_006eef60();
          fVar18 = DAT_00baae50;
          if ((uVar8 & 1) == 0) {
            fVar18 = DAT_00baa9b4;
          }
          fVar18 = fVar18 * DAT_00baa088;
          local_64 = fVar18;
          FUN_0041d540();
          fStack_54 = fVar18;
          fVar18 = local_64;
          FUN_0041d520();
          fVar19 = local_44 * fVar18;
          local_44 = local_44 * fStack_54 - local_40 * fVar18;
          local_40 = local_40 * fStack_54 + fVar19;
        }
        else {
          local_44 = (float)((uint)local_44 ^ DAT_00bacb70);
          local_40 = (float)((uint)local_40 ^ DAT_00bacb70);
        }
      }
      local_44 = local_44 / local_48;
      local_30 = 0;
      local_2c = (undefined4 *)0x0;
      local_28 = (undefined4 *)0x0;
      local_40 = local_40 / local_48;
      local_14 = 3;
      iVar9 = 2;
      fStack_54 = 2.802597e-45;
      uStack_5c = uStack_5c & 0xffffffff;
      if (local_48 < DAT_00baa9d0) {
        fStack_54 = 7.006492e-45;
      }
      FUN_004a11c0(0,(int)&uStack_5c + 4);
      uVar8 = 0;
      uVar12 = (int)local_2c - local_30 >> 3;
      if (uVar12 != 0) {
        do {
          if (*(int *)(local_30 + uVar8 * 8) == 1) {
            piVar1 = (int *)(local_30 + 4 + uVar8 * 8);
            *piVar1 = *piVar1 + 3;
            if (*piVar1 < 0) {
              *(undefined4 *)(local_30 + 4 + uVar8 * 8) = 0;
            }
            goto LAB_00550c3d;
          }
          uVar8 = uVar8 + 1;
        } while (uVar8 < uVar12);
      }
      uStack_5c = CONCAT44(1,(undefined4)uStack_5c);
      fStack_54 = 4.203895e-45;
      if (local_2c == local_28) {
        FUN_004a11c0(local_2c,(int)&uStack_5c + 4);
      }
      else {
        *local_2c = 1;
        local_2c[1] = 3;
        local_2c = local_2c + 2;
      }
LAB_00550c3d:
      if (DAT_00baa9d0 < local_48) {
        if (DAT_00baaa94 < local_48) {
          iVar9 = 9;
        }
        uVar12 = (int)local_2c - local_30 >> 3;
        uVar8 = 0;
        if (uVar12 != 0) {
          do {
            if (*(int *)(local_30 + uVar8 * 8) == 2) {
              piVar1 = (int *)(local_30 + 4 + uVar8 * 8);
              *piVar1 = *piVar1 + iVar9;
              if (*piVar1 < 0) {
                *(undefined4 *)(local_30 + 4 + uVar8 * 8) = 0;
              }
              goto LAB_00550caf;
            }
            uVar8 = uVar8 + 1;
          } while (uVar8 < uVar12);
        }
        uStack_5c = CONCAT44(2,(undefined4)uStack_5c);
        fStack_54 = (float)iVar9;
        if (local_2c == local_28) {
          FUN_004a11c0(local_2c,(int)&uStack_5c + 4);
        }
        else {
          *local_2c = 2;
          local_2c[1] = iVar9;
          local_2c = local_2c + 2;
        }
      }
LAB_00550caf:
      local_60 = FUN_006eef60();
      local_60 = local_60 | 1;
      fStack_54 = DAT_00b1f674;
      uStack_5c._0_4_ = (undefined4)DAT_00b1f66c;
      uVar4 = (undefined4)uStack_5c;
      uStack_5c._4_4_ = (float)(DAT_00b1f66c >> 0x20);
      uVar6 = uStack_5c._4_4_;
      uStack_5c = DAT_00b1f66c;
      iVar13 = FUN_0049cbf0(local_60,uVar4,uVar6,DAT_00b1f674);
      iVar9 = local_50;
      if (iVar13 == 0) {
        ppbVar3 = *(byte ***)(local_50 + 0x7c);
        if (ppbVar3 == (byte **)0x0) {
LAB_00550fdf:
          cVar7 = FUN_0040a5d0("HopShort",1);
          if (cVar7 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(iVar9 + 0x8c) = 1;
          }
        }
        else {
          ppbVar10 = ppbVar3;
          if (&DAT_0000000f < ppbVar3[5]) {
            ppbVar10 = (byte **)*ppbVar3;
          }
          pcVar15 = "HopShort";
          do {
            bVar2 = *(byte *)ppbVar10;
            bVar17 = bVar2 < (byte)*pcVar15;
            if (bVar2 != *pcVar15) {
LAB_00550fc1:
              uVar8 = -(uint)bVar17 | 1;
              goto LAB_00550fc6;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppbVar10 + 1);
            bVar17 = bVar2 < ((byte *)pcVar15)[1];
            if (bVar2 != ((byte *)pcVar15)[1]) goto LAB_00550fc1;
            ppbVar10 = (byte **)((int)ppbVar10 + 2);
            pcVar15 = (char *)((byte *)pcVar15 + 2);
          } while (bVar2 != 0);
          uVar8 = 0;
LAB_00550fc6:
          if ((uVar8 != 0) ||
             ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(local_50 + 0x8c) == '\0'))))
          goto LAB_00550fdf;
        }
        iVar13 = FUN_006eef60();
        fVar18 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) * DAT_00ba9ff4
                 + DAT_00baa784;
        local_64 = fVar18 * local_44;
        local_40 = local_40 * fVar18;
        iVar13 = FUN_006eef60();
        fStack_54 = ((float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa9b4 - DAT_00baa910) * DAT_00baa088;
        fVar18 = fStack_54;
        FUN_0041d540();
        local_48 = fVar18;
        fVar19 = fStack_54;
        FUN_0041d520();
        fVar18 = local_64 * local_48 - local_40 * fVar19;
        fVar19 = local_40 * local_48 + local_64 * fVar19;
      }
      else if (iVar13 == 1) {
        ppbVar3 = *(byte ***)(local_50 + 0x7c);
        if (ppbVar3 == (byte **)0x0) {
LAB_00550e9e:
          cVar7 = FUN_0040a5d0(&DAT_00b1de1c,1);
          if (cVar7 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(iVar9 + 0x8c) = 1;
          }
        }
        else {
          ppbVar10 = ppbVar3;
          if (&DAT_0000000f < ppbVar3[5]) {
            ppbVar10 = (byte **)*ppbVar3;
          }
          pbVar14 = &DAT_00b1de1c;
          do {
            bVar2 = *(byte *)ppbVar10;
            bVar17 = bVar2 < *pbVar14;
            if (bVar2 != *pbVar14) {
LAB_00550e80:
              uVar8 = -(uint)bVar17 | 1;
              goto LAB_00550e85;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppbVar10 + 1);
            bVar17 = bVar2 < pbVar14[1];
            if (bVar2 != pbVar14[1]) goto LAB_00550e80;
            ppbVar10 = (byte **)((int)ppbVar10 + 2);
            pbVar14 = pbVar14 + 2;
          } while (bVar2 != 0);
          uVar8 = 0;
LAB_00550e85:
          if ((uVar8 != 0) ||
             ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(local_50 + 0x8c) == '\0'))))
          goto LAB_00550e9e;
        }
        iVar13 = FUN_006eef60();
        fVar18 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) * DAT_00ba9ff4
        ;
        fVar18 = fVar18 + fVar18 + DAT_00baa7e8;
        local_64 = fVar18 * local_44;
        local_40 = local_40 * fVar18;
        iVar13 = FUN_006eef60();
        fStack_54 = ((float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c) * DAT_00baa088;
        fVar18 = fStack_54;
        FUN_0041d540();
        local_48 = fVar18;
        fVar19 = fStack_54;
        FUN_0041d520();
        fVar18 = local_64 * local_48 - local_40 * fVar19;
        fVar19 = local_40 * local_48 + local_64 * fVar19;
      }
      else {
        fVar18 = local_44;
        fVar19 = local_40;
        if (iVar13 == 2) {
          ppbVar3 = *(byte ***)(local_50 + 0x7c);
          if (ppbVar3 == (byte **)0x0) {
LAB_00550d55:
            cVar7 = FUN_0040a5d0("HopLong",1);
            if (cVar7 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(iVar9 + 0x8c) = 1;
            }
          }
          else {
            ppbVar10 = ppbVar3;
            if (&DAT_0000000f < ppbVar3[5]) {
              ppbVar10 = (byte **)*ppbVar3;
            }
            pcVar15 = "HopLong";
            do {
              bVar2 = *(byte *)ppbVar10;
              bVar17 = bVar2 < (byte)*pcVar15;
              if (bVar2 != *pcVar15) {
LAB_00550d37:
                uVar8 = -(uint)bVar17 | 1;
                goto LAB_00550d3c;
              }
              if (bVar2 == 0) break;
              bVar2 = *(byte *)((int)ppbVar10 + 1);
              bVar17 = bVar2 < ((byte *)pcVar15)[1];
              if (bVar2 != ((byte *)pcVar15)[1]) goto LAB_00550d37;
              ppbVar10 = (byte **)((int)ppbVar10 + 2);
              pcVar15 = (char *)((byte *)pcVar15 + 2);
            } while (bVar2 != 0);
            uVar8 = 0;
LAB_00550d3c:
            if ((uVar8 != 0) ||
               ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(local_50 + 0x8c) == '\0'))))
            goto LAB_00550d55;
          }
          iVar13 = FUN_006eef60();
          fVar18 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa6fc + DAT_00baa81c;
          local_64 = fVar18 * local_44;
          local_40 = local_40 * fVar18;
          iVar13 = FUN_006eef60();
          fStack_54 = ((float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa87c - DAT_00baa81c) * DAT_00baa088;
          fVar18 = fStack_54;
          FUN_0041d540();
          local_48 = fVar18;
          fVar19 = fStack_54;
          FUN_0041d520();
          fVar18 = local_64 * local_48 - local_40 * fVar19;
          fVar19 = local_40 * local_48 + local_64 * fVar19;
        }
      }
      *(float *)(iVar9 + 0x334) = fVar18;
      *(float *)(iVar9 + 0x338) = fVar19;
      *(undefined4 *)(iVar9 + 0xb64) = 6;
      if (local_30 != 0) {
        uVar8 = (int)local_28 - local_30 & 0xfffffff8;
        iVar9 = local_30;
        if (0xfff < uVar8) {
          iVar9 = *(int *)(local_30 + -4);
          uVar8 = uVar8 + 0x23;
          if (0x1f < (local_30 - iVar9) - 4U) {
LAB_00551116:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar9,uVar8);
      }
      goto LAB_00551374;
    }
    if (iVar9 != 6) goto LAB_00551374;
    if ((*(uint *)(param_1 + 0x168) & 0x40000000) == 0) {
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
    }
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar7 = FUN_0040add0(&DAT_00b1d560);
      if (cVar7 == '\0') {
        if (*(int *)(param_1 + 0x7c) == 0) goto LAB_0055082f;
        cVar7 = FUN_0040add0(&DAT_00b1d574);
        if (cVar7 != '\0') {
          *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xbfffffff;
          *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
        }
      }
      else {
        *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 0x40000000;
        *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
        *(undefined4 *)(param_1 + 0x360) = *(undefined4 *)(param_1 + 0x334);
        *(undefined4 *)(param_1 + 0x364) = *(undefined4 *)(param_1 + 0x338);
        iVar9 = FUN_006eef60();
        FUN_006d6ba0(0x102,0x3ecccccd,2,0,
                     (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa5b4);
      }
      if (((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) &&
         ((cVar7 = FUN_0040ae70(&DAT_00b1d574), cVar7 == '\0' ||
          (uVar8 = FUN_006eef60(), (uVar8 & 3) != 0)))) goto LAB_00551374;
    }
LAB_0055082f:
    ppbVar3 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar3 == (byte **)0x0) {
LAB_00550883:
      cVar7 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar7 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
        param_1 = local_50;
      }
    }
    else {
      ppbVar10 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar10 = (byte **)*ppbVar3;
      }
      pbVar14 = &DAT_00b1bc54;
      do {
        bVar2 = *(byte *)ppbVar10;
        bVar17 = bVar2 < *pbVar14;
        if (bVar2 != *pbVar14) {
LAB_00550865:
          uVar8 = -(uint)bVar17 | 1;
          goto LAB_0055086a;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppbVar10 + 1);
        bVar17 = bVar2 < pbVar14[1];
        if (bVar2 != pbVar14[1]) goto LAB_00550865;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pbVar14 = pbVar14 + 2;
      } while (bVar2 != 0);
      uVar8 = 0;
LAB_0055086a:
      if ((uVar8 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_00550883;
    }
    *(undefined4 *)(param_1 + 0xb64) = 3;
    goto LAB_00551374;
  }
  ppbVar3 = *(byte ***)(param_1 + 0x7c);
  if (ppbVar3 == (byte **)0x0) {
LAB_0055117f:
    cVar7 = FUN_0040a5d0(&DAT_00b1bc54,1);
    if (cVar7 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
      param_1 = local_50;
    }
  }
  else {
    ppbVar10 = ppbVar3;
    if (&DAT_0000000f < ppbVar3[5]) {
      ppbVar10 = (byte **)*ppbVar3;
    }
    pbVar14 = &DAT_00b1bc54;
    do {
      bVar2 = *(byte *)ppbVar10;
      bVar17 = bVar2 < *pbVar14;
      if (bVar2 != *pbVar14) {
LAB_00551161:
        uVar8 = -(uint)bVar17 | 1;
        goto LAB_00551166;
      }
      if (bVar2 == 0) break;
      bVar2 = *(byte *)((int)ppbVar10 + 1);
      bVar17 = bVar2 < pbVar14[1];
      if (bVar2 != pbVar14[1]) goto LAB_00551161;
      ppbVar10 = (byte **)((int)ppbVar10 + 2);
      pbVar14 = pbVar14 + 2;
    } while (bVar2 != 0);
    uVar8 = 0;
LAB_00551166:
    if ((uVar8 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
    goto LAB_0055117f;
  }
  *(undefined4 *)(param_1 + 0xb64) = 3;
  *(undefined4 *)(param_1 + 0x188) = 2;
  if (*(int *)(param_1 + 0x30) != 0) {
    local_48 = 0.0;
    do {
      uVar8 = *(uint *)(param_1 + 0x3dc);
      if (uVar8 == 0) {
        FUN_00a112c0(0x10,"RNG Seed is zero!\n");
        uVar8 = *(uint *)(param_1 + 0x3dc);
        if (uVar8 == 0) {
          pcVar5 = (code *)swi(3);
          (*pcVar5)();
          return;
        }
      }
      uVar8 = uVar8 >> ((byte)*(undefined4 *)(param_1 + 0x3e0) & 0x1f) ^ uVar8;
      uVar8 = uVar8 << ((byte)*(undefined4 *)(param_1 + 0x3e4) & 0x1f) ^ uVar8;
      uVar8 = uVar8 >> ((byte)*(undefined4 *)(param_1 + 1000) & 0x1f) ^ uVar8;
      *(uint *)(param_1 + 0x3dc) = uVar8;
      uVar4 = *(undefined4 *)(param_1 + 0x3c8);
      iVar9 = FUN_006eef60();
      fStack_54 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa904 - DAT_00baa87c;
      iVar9 = FUN_006eef60();
      param_1 = local_50;
      local_68 = ((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa904 - DAT_00baa87c) + *(float *)(local_50 + 0x33c);
      local_64 = fStack_54 + *(float *)(local_50 + 0x340);
      FUN_00428b20(*(undefined4 *)(local_50 + 0x28),*(undefined4 *)(local_50 + 0x2c),&local_68,
                   &DAT_00c7b640,uVar4,0,uVar8);
      local_48 = (float)((int)local_48 + 1);
    } while ((uint)local_48 < (uint)*(float *)(param_1 + 0x30));
    iVar9 = FUN_006eef60();
    fStack_54 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                DAT_00baa904 - DAT_00baa87c;
    iVar9 = FUN_006eef60();
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(float *)(param_1 + 0x33c) =
         ((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
          DAT_00baa904 - DAT_00baa87c) + *(float *)(param_1 + 0x33c);
    *(float *)(param_1 + 0x340) = fStack_54 + *(float *)(param_1 + 0x340);
  }
LAB_00551374:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

