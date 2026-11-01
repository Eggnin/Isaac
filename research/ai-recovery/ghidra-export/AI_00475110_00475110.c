/* Local J460 decompiler output.
 * VA: 0x00475110
 * Entry: 00475110
 * Dispatcher: 0x006c2990
 * Types: 48
 * Identities: 48.0.0,48.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00475a30; instructions=545
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=48; identities=48.0.0,48.1.0; dispatcher=0x006c2990;
   end=0x00475a30; instructions=545 */

void __fastcall AI_00475110(float param_1)

{
  bool bVar1;
  bool bVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined *puVar5;
  char cVar6;
  undefined4 *puVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  uint uVar13;
  uint uVar14;
  float *pfVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  undefined4 local_a0 [8];
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  float local_74;
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  float local_5c;
  float local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined local_34;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2a25;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar8 = *(int *)((int)param_1 + 0xb64);
  local_58 = param_1;
  if (iVar8 == 0) {
    *(undefined4 *)((int)param_1 + 0xb64) = 4;
    uVar4 = _UNK_00babf3c;
    uVar3 = _UNK_00babf38;
    uVar12 = _UNK_00babf34;
    uVar11 = _DAT_00babf30;
    puStack_20 = &stack0xfffffffc;
    if (*(int *)((int)param_1 + 0x2c) == 1) {
      local_80 = 0x3e4ccccd;
      uStack_7c = 0x3e4ccccd;
      local_78 = 0x3e4ccccd;
      puStack_20 = &stack0xfffffffc;
      if ((undefined4 *)((int)param_1 + 0x1e4) != local_a0) {
        *(undefined8 *)((int)param_1 + 0x204) = 0x3e4ccccd3e4ccccd;
        *(undefined4 *)((int)param_1 + 0x1e4) = uVar11;
        *(undefined4 *)((int)param_1 + 0x1e8) = uVar12;
        *(undefined4 *)((int)param_1 + 0x1ec) = uVar3;
        *(undefined4 *)((int)param_1 + 0x1f0) = uVar4;
        *(undefined4 *)((int)param_1 + 0x20c) = 0x3e4ccccd;
        *(undefined (*) [16])((int)param_1 + 500) = ZEXT816(0);
        puStack_20 = &stack0xfffffffc;
      }
    }
  }
  else {
    puVar7 = *(undefined4 **)((int)param_1 + 8);
    if (puVar7 != *(undefined4 **)((int)param_1 + 0xc)) {
      do {
        if ((puVar7[2] & 4) != 0) {
          if (puVar7[6] == *(int *)((int)param_1 + 0x28)) {
            *puVar7 = 0x41a00000;
          }
          else if (puVar7[6] == 1) {
            *puVar7 = 0x43480000;
          }
        }
        puVar7 = puVar7 + 0xe;
      } while (puVar7 != *(undefined4 **)((int)param_1 + 0xc));
      iVar8 = *(int *)((int)param_1 + 0xb64);
    }
    fVar18 = DAT_00baa120;
    fVar16 = *(float *)((int)param_1 + 0x36c) * DAT_00baa3c4;
    *(float *)((int)param_1 + 0x36c) = fVar16;
    if (iVar8 == 8) {
      if ((*(char *)((int)param_1 + 400) == '\0') && (*(char *)((int)param_1 + 0x18c) == '\0')) {
        fVar16 = fVar16 * DAT_00baa3a4;
        bVar1 = NAN(DAT_00ba9fe4);
        bVar2 = fVar16 == DAT_00ba9fe4;
        *(float *)((int)param_1 + 0x36c) = fVar16;
        fVar19 = *(float *)((int)param_1 + 0xbbc) * DAT_00baa528;
        if ((NAN(fVar16) || bVar1) == bVar2) {
          fVar17 = (*(float *)((int)param_1 + 3000) * DAT_00baa528 *
                   *(float *)((int)param_1 + 0x39c)) / fVar16 + *(float *)((int)param_1 + 0x360);
          *(float *)((int)param_1 + 0x360) = fVar17;
          *(float *)((int)param_1 + 0x364) =
               (fVar19 * *(float *)((int)param_1 + 0x39c)) / fVar16 +
               *(float *)((int)param_1 + 0x364);
        }
        else {
          fVar17 = *(float *)((int)param_1 + 0x360);
        }
        iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
        if ((float)((uint)fVar17 & DAT_00bacb40) <=
            (float)(*(uint *)((int)param_1 + 0x364) & DAT_00bacb40)) {
          *(float *)((int)param_1 + 0x33c) =
               *(float *)((int)param_1 + 0x33c) * DAT_00baa3e0 +
               ((float)(*(int *)((int)param_1 + 0x434) % iVar8) * DAT_00baa904 + DAT_00baa904) *
               fVar18;
          puVar5 = &stack0xfffffffc;
        }
        else {
          *(float *)((int)param_1 + 0x340) =
               ((float)(*(int *)((int)param_1 + 0x434) / iVar8) * DAT_00baa904 + DAT_00baaa00) *
               fVar18 + *(float *)((int)param_1 + 0x340) * DAT_00baa3e0;
          puVar5 = &stack0xfffffffc;
        }
      }
      else {
        *(undefined4 *)((int)param_1 + 0xb64) = 4;
        puVar5 = &stack0xfffffffc;
      }
    }
    else if (iVar8 == 4) {
      fVar18 = *(float *)((int)param_1 + 0xbb0);
      if ((((NAN(fVar18) || NAN(DAT_00c7b640)) == (fVar18 == DAT_00c7b640)) ||
          ((NAN(*(float *)((int)param_1 + 0xbb4)) || NAN(DAT_00c7b644)) ==
           (*(float *)((int)param_1 + 0xbb4) == DAT_00c7b644))) &&
         (0 < *(int *)((int)param_1 + 0x410))) {
        *(int *)((int)param_1 + 0x410) = *(int *)((int)param_1 + 0x410) + -1;
        fVar18 = fVar18 - *(float *)((int)param_1 + 0x33c);
        fVar16 = *(float *)((int)param_1 + 0xbb4) - *(float *)((int)param_1 + 0x340);
        fVar18 = fVar18 * fVar18 + fVar16 * fVar16;
        puStack_20 = &stack0xfffffffc;
        FUN_00435a50(local_24);
        puVar5 = puStack_20;
        if (fVar18 < DAT_00baaa1c) {
          FUN_007e5340(0x3f800000,0);
          fVar18 = *(float *)((int)param_1 + 0x334);
          puVar5 = puStack_20;
          if ((((NAN(fVar18) || NAN(DAT_00c7b640)) == (fVar18 == DAT_00c7b640)) ||
              ((NAN(*(float *)((int)param_1 + 0x338)) || NAN(DAT_00c7b644)) ==
               (*(float *)((int)param_1 + 0x338) == DAT_00c7b644))) &&
             ((DAT_00baa924 <
               (fVar18 - *(float *)((int)param_1 + 0x33c)) *
               (*(float *)((int)param_1 + 0xbb0) - *(float *)((int)param_1 + 0x33c)) ||
              (DAT_00baa924 <
               (*(float *)((int)param_1 + 0xbb4) - *(float *)((int)param_1 + 0x340)) *
               (*(float *)((int)param_1 + 0x338) - *(float *)((int)param_1 + 0x340)))))) {
            FUN_00a112c0(1,"Wrath: Evade own bomb.\n");
            *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa2d0;
            *(float *)((int)param_1 + 0x334) = DAT_00c7b640;
            *(float *)((int)param_1 + 0x338) = DAT_00c7b644;
            puVar5 = puStack_20;
          }
        }
      }
      else {
        puStack_20 = &stack0xfffffffc;
        FUN_007e5340(0x3f800000,0);
        FUN_006bec40(&local_64,0);
        fVar18 = local_60 - *(float *)((int)param_1 + 0x340);
        fVar16 = local_64 - *(float *)((int)param_1 + 0x33c);
        fVar18 = fVar18 * fVar18 + fVar16 * fVar16;
        FUN_00435a50();
        uVar14 = 0x3c;
        if (0x3c < (int)fVar18) {
          uVar14 = (int)fVar18;
        }
        if ((uVar14 == 0) || (uVar13 = FUN_006eef60(), uVar13 % uVar14 == 0)) {
          *(undefined4 *)((int)param_1 + 0xb64) = 9;
          cVar6 = FUN_0040a5d0("Attack",1);
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)((int)param_1 + 0x8c) = 1;
          }
          *(float *)((int)param_1 + 3000) = DAT_00c7b640;
          *(float *)((int)param_1 + 0xbbc) = DAT_00c7b644;
          puVar5 = puStack_20;
        }
        else {
          FUN_007e6ff0();
          iVar8 = FUN_006be840();
          local_58 = *(float *)(iVar8 + 0x360);
          local_5c = *(float *)(iVar8 + 0x364);
          iVar9 = FUN_006eef60();
          iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
          fVar18 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
          ;
          local_70 = local_60 + fVar18 * local_5c * DAT_00baa85c;
          local_74 = local_64 + fVar18 * local_58 * DAT_00baa85c;
          local_6c = (float)(*(int *)((int)param_1 + 0x434) % iVar8) * DAT_00baa904 + DAT_00baa904;
          local_68 = (float)(*(int *)((int)param_1 + 0x434) / iVar8) * DAT_00baa904 + DAT_00baaa00;
          local_60 = local_74 - local_6c;
          local_5c = local_70 - local_68;
          local_58 = (float)((uint)local_60 & DAT_00bacb40);
          if ((local_58 < DAT_00baa87c) ||
             (puVar5 = puStack_20, (float)((uint)local_5c & DAT_00bacb40) < DAT_00baa87c)) {
            fVar18 = local_5c * local_5c + local_60 * local_60;
            FUN_00435a50();
            puVar5 = puStack_20;
            if ((fVar18 < DAT_00baaa94) &&
               (cVar6 = FUN_007f0df0(&local_6c,&local_74,0,0,0,0,0), puVar5 = puStack_20,
               cVar6 != '\0')) {
              if (local_58 <= (float)((uint)local_5c & DAT_00bacb40)) {
                *(undefined4 *)((int)param_1 + 3000) = 0;
                uVar11 = DAT_00baa454;
                if (local_5c < 0.0) {
                  uVar11 = DAT_00baad50;
                }
                *(undefined4 *)((int)param_1 + 0xbbc) = uVar11;
              }
              else {
                *(undefined4 *)((int)param_1 + 0xbbc) = 0;
                if (0.0 <= local_60) {
                  *(undefined4 *)((int)param_1 + 3000) = DAT_00baa454;
                }
                else {
                  *(undefined4 *)((int)param_1 + 3000) = DAT_00baad50;
                }
              }
              *(undefined4 *)((int)param_1 + 0x410) = 0;
              uVar14 = FUN_006eef60();
              if ((uVar14 & 1) == 0) {
                *(undefined4 *)((int)param_1 + 0xb64) = 9;
                cVar6 = FUN_0040a5d0("Attack",1);
                puVar5 = puStack_20;
                if (cVar6 != '\0') {
                  FUN_0040a1b0();
                  *(undefined *)((int)param_1 + 0x8c) = 1;
                  puVar5 = puStack_20;
                }
              }
              else {
                *(undefined4 *)((int)param_1 + 0xb64) = 8;
                puVar5 = puStack_20;
              }
            }
          }
        }
      }
    }
    else {
      puVar5 = &stack0xfffffffc;
      if (iVar8 == 9) {
        iVar8 = *(int *)((int)param_1 + 0x410);
        puVar5 = &stack0xfffffffc;
        if (4 < iVar8) {
          iVar8 = *(int *)((int)param_1 + 0x2c);
          iVar9 = *(int *)(DAT_00c71678 + 0x18300);
          iVar10 = FUN_00812c90((int)param_1 + 0x33c);
          iVar9 = *(int *)(iVar9 + 0xc);
          pfVar15 = (float *)((int)local_58 + 0xbb0);
          fVar18 = (float)(iVar10 / iVar9) * DAT_00baa904 + DAT_00baaa00;
          *pfVar15 = (float)(iVar10 % iVar9) * DAT_00baa904 + DAT_00baa904;
          *(float *)((int)local_58 + 0xbb4) = fVar18;
          uVar11 = FUN_006eef60();
          local_6c = *(float *)((int)local_58 + 3000) * DAT_00baa81c;
          local_68 = *(float *)((int)local_58 + 0xbbc) * DAT_00baa81c;
          uVar12 = 4;
          if (iVar8 != 1) {
            uVar12 = 0;
          }
          iVar8 = FUN_00428b20(4,uVar12,pfVar15,&local_6c,local_58,0,uVar11);
          if (((NAN(*(float *)((int)local_58 + 3000)) || NAN(DAT_00c7b640)) ==
               (*(float *)((int)local_58 + 3000) == DAT_00c7b640)) ||
             ((NAN(*(float *)((int)local_58 + 0xbbc)) || NAN(DAT_00c7b644)) ==
              (*(float *)((int)local_58 + 0xbbc) == DAT_00c7b644))) {
            uVar11 = 1;
          }
          else {
            uVar11 = 0;
          }
          *(undefined4 *)(iVar8 + 0x188) = uVar11;
          iVar8 = 0x3c;
          *(undefined4 *)((int)local_58 + 0xb64) = 4;
          puVar5 = puStack_20;
        }
        puStack_20 = puVar5;
        *(int *)((int)local_58 + 0x410) = iVar8 + 1;
        param_1 = local_58;
        puVar5 = puStack_20;
      }
    }
    puStack_20 = puVar5;
    if ((*(int *)((int)param_1 + 0xb64) != 4) && (*(int *)((int)param_1 + 0xb64) != 8))
    goto LAB_004759f9;
    local_40 = 0xf;
    local_44 = 8;
    local_54._0_1_ = s_WalkVert_00b1dd18[0];
    local_54._1_1_ = s_WalkVert_00b1dd18[1];
    local_54._2_1_ = s_WalkVert_00b1dd18[2];
    local_54._3_1_ = s_WalkVert_00b1dd18[3];
    local_50._0_1_ = s_WalkVert_00b1dd18[4];
    local_50._1_1_ = s_WalkVert_00b1dd18[5];
    local_50._2_1_ = s_WalkVert_00b1dd18[6];
    local_50._3_1_ = s_WalkVert_00b1dd18[7];
    local_4c = 0;
    local_28 = 0xf;
    local_2c = 8;
    local_3c._0_1_ = s_WalkHori_00b1dd30[0];
    local_3c._1_1_ = s_WalkHori_00b1dd30[1];
    local_3c._2_1_ = s_WalkHori_00b1dd30[2];
    local_3c._3_1_ = s_WalkHori_00b1dd30[3];
    local_38._0_1_ = s_WalkHori_00b1dd30[4];
    local_38._1_1_ = s_WalkHori_00b1dd30[5];
    local_38._2_1_ = s_WalkHori_00b1dd30[6];
    local_38._3_1_ = s_WalkHori_00b1dd30[7];
    local_34 = 0;
    local_14 = 1;
    FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
    if (0xf < local_28) {
      uVar13 = local_28 + 1;
      uVar14 = local_3c;
      if (0xfff < uVar13) {
        uVar14 = *(uint *)(local_3c - 4);
        uVar13 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar14) - 4) goto LAB_004759e9;
      }
      FUN_00aef15c(uVar14,uVar13);
    }
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar14 = local_40 + 1;
      iVar8 = local_54;
      if (0xfff < uVar14) {
        iVar8 = *(int *)(local_54 + -4);
        uVar14 = local_40 + 0x24;
        if (0x1f < (local_54 - iVar8) - 4U) {
LAB_004759e9:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar8,uVar14);
    }
  }
LAB_004759f9:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

