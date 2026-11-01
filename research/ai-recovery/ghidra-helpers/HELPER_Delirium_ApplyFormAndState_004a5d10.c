/* Local J460 decompiler output.
 * VA: 0x004a5d10
 * Entry: 004a5d10
 * Dispatcher: 0x006c2990
 * Types: 412
 * Identities: delirium.form_transition
 * Evidence: Called by Delirium attack/state setup
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=412; identities=delirium.form_transition; Called by
   Delirium attack/state setup */

void __fastcall
HELPER_Delirium_ApplyFormAndState(int param_1_00,int param_2_00,undefined4 param_1,char param_2)

{
  uint uVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined *puVar6;
  char cVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  int *****pppppiVar11;
  int *****pppppiVar12;
  int *piVar13;
  int extraout_ECX;
  int extraout_ECX_00;
  int extraout_ECX_01;
  int extraout_ECX_02;
  uint uVar14;
  undefined4 extraout_ECX_03;
  undefined3 uVar15;
  undefined4 extraout_ECX_04;
  int extraout_ECX_05;
  int extraout_ECX_06;
  undefined4 extraout_ECX_07;
  undefined4 extraout_ECX_08;
  int extraout_ECX_09;
  int extraout_ECX_10;
  char *_Src;
  uint uVar16;
  char *_Size;
  size_t sVar17;
  int *****pppppiVar18;
  uint uVar19;
  int **_Src_00;
  uint uVar20;
  uint uVar21;
  uint local_4c;
  int *****local_3c;
  int *piStack_38;
  int *piStack_34;
  int *piStack_30;
  uint local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af305d;
  local_1c = ExceptionList;
  uVar8 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar10 = param_1_00;
  local_24 = uVar8;
  puVar6 = &stack0xfffffffc;
  if ((param_2 != '\0') &&
     (iVar9 = FUN_00694fb0(param_2_00,param_1,0), iVar10 = extraout_ECX, puVar6 = puStack_20,
     iVar9 != 0)) {
    FUN_0040bd50(iVar9 + 0x74,0);
    iVar10 = extraout_ECX_00;
    puVar6 = puStack_20;
  }
  puStack_20 = puVar6;
  local_4c = 0;
  if (*(int *)(param_1_00 + 0x80) != 0) {
    do {
      iVar10 = FUN_0040b220(local_4c);
      local_3c = (int *****)0x0;
      local_2c = 0;
      local_28 = 0;
      _Src_00 = (int **)(iVar10 + 8);
      uVar19 = *(uint *)(iVar10 + 0x18);
      if (0xf < *(uint *)(iVar10 + 0x1c)) {
        _Src_00 = (int **)*_Src_00;
      }
      if (uVar19 < 0x10) {
        local_3c = (int *****)*_Src_00;
        piStack_38 = _Src_00[1];
        piStack_34 = _Src_00[2];
        piStack_30 = _Src_00[3];
        uVar16 = 0xf;
        iVar10 = extraout_ECX_01;
      }
      else {
        uVar16 = uVar19 | 0xf;
        if (0x7fffffff < uVar16) {
          uVar16 = 0x7fffffff;
        }
        local_3c = (int *****)FUN_0040cf00();
        memcpy(local_3c,_Src_00,uVar19 + 1);
        iVar10 = extraout_ECX_02;
      }
      local_14 = 0;
      local_2c = uVar19;
      local_28 = uVar16;
      if (param_2_00 != 0x19c) {
        pppppiVar11 = (int *****)&local_3c;
        if (0xf < uVar16) {
          pppppiVar11 = local_3c;
        }
        iVar10 = _strnicmp((char *)(pppppiVar11 + 1),"bosses",6);
        uVar16 = local_28;
        uVar19 = local_2c;
        if (iVar10 == 0) {
          if (local_2c < 4) {
LAB_004a6238:
            FUN_00499950();
            pcVar2 = (code *)swi(3);
            (*pcVar2)();
            return;
          }
          uVar20 = 6;
          if (local_2c - 4 < 6) {
            uVar20 = local_2c - 4;
          }
          if (uVar20 == 0x23) {
            pppppiVar11 = (int *****)&local_3c;
            if (0xf < local_28) {
              pppppiVar11 = local_3c;
            }
            memmove(pppppiVar11 + 1,"Bosses/AfterbirthPlus/DeliriumForms",0x23);
          }
          else {
            sVar17 = (local_2c - uVar20) - 3;
            if (uVar20 < 0x24) {
              uVar14 = -uVar20 + 0x23;
              if (local_28 - local_2c < uVar14) {
                if (0x7fffffff - local_2c < uVar14) {
                  FUN_0040ccc0();
                  goto LAB_004a6238;
                }
                uVar14 = uVar14 + local_2c;
                uVar21 = uVar14 | 0xf;
                if (uVar21 < 0x80000000) {
                  if (0x7fffffff - (local_28 >> 1) < local_28) {
                    uVar21 = 0x7fffffff;
                  }
                  else {
                    uVar1 = local_28 + (local_28 >> 1);
                    if (uVar21 < uVar1) {
                      uVar21 = uVar1;
                    }
                  }
                }
                else {
                  uVar21 = 0x7fffffff;
                }
                pppppiVar12 = (int *****)FUN_0040cf00();
                pppppiVar11 = local_3c;
                sVar17 = (uVar19 - uVar20) - 3;
                local_2c = uVar14;
                local_28 = uVar21;
                if (uVar16 < 0x10) {
                  *pppppiVar12 = (int ****)local_3c;
                  uVar5 = s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._12_4_;
                  uVar4 = s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._8_4_;
                  uVar3 = s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._4_4_;
                  pppppiVar12[1] = (int ****)s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._0_4_;
                  pppppiVar12[2] = (int ****)uVar3;
                  pppppiVar12[3] = (int ****)uVar4;
                  pppppiVar12[4] = (int ****)uVar5;
                  uVar5 = s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._28_4_;
                  uVar4 = s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._24_4_;
                  uVar3 = s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._20_4_;
                  pppppiVar12[5] = (int ****)s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._16_4_;
                  pppppiVar12[6] = (int ****)uVar3;
                  pppppiVar12[7] = (int ****)uVar4;
                  pppppiVar12[8] = (int ****)uVar5;
                  *(undefined2 *)(pppppiVar12 + 9) =
                       s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._32_2_;
                  *(char *)((int)pppppiVar12 + 0x26) =
                       s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c[0x22];
                  memcpy((void *)((int)pppppiVar12 + 0x27),(void *)((int)&piStack_38 + uVar20),
                         sVar17);
                  local_3c = pppppiVar12;
                }
                else {
                  *pppppiVar12 = *local_3c;
                  uVar5 = s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._12_4_;
                  uVar4 = s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._8_4_;
                  uVar3 = s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._4_4_;
                  pppppiVar12[1] = (int ****)s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._0_4_;
                  pppppiVar12[2] = (int ****)uVar3;
                  pppppiVar12[3] = (int ****)uVar4;
                  pppppiVar12[4] = (int ****)uVar5;
                  uVar5 = s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._28_4_;
                  uVar4 = s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._24_4_;
                  uVar3 = s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._20_4_;
                  pppppiVar12[5] = (int ****)s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._16_4_;
                  pppppiVar12[6] = (int ****)uVar3;
                  pppppiVar12[7] = (int ****)uVar4;
                  pppppiVar12[8] = (int ****)uVar5;
                  *(undefined2 *)(pppppiVar12 + 9) =
                       s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c._32_2_;
                  *(char *)((int)pppppiVar12 + 0x26) =
                       s_Bosses_AfterbirthPlus_DeliriumFo_00b1e23c[0x22];
                  memcpy((void *)((int)pppppiVar12 + 0x27),(void *)(uVar20 + 4 + (int)local_3c),
                         sVar17);
                  uVar19 = uVar16 + 1;
                  pppppiVar18 = pppppiVar11;
                  if (0xfff < uVar19) {
                    pppppiVar18 = (int *****)pppppiVar11[-1];
                    uVar19 = uVar16 + 0x24;
                    if (0x1f < (uint)((int)pppppiVar11 + (-4 - (int)pppppiVar18)))
                    goto LAB_004a622d;
                  }
                  FUN_00aef15c(pppppiVar18,uVar19);
                  local_3c = pppppiVar12;
                }
              }
              else {
                pppppiVar11 = (int *****)&local_3c;
                if (0xf < local_28) {
                  pppppiVar11 = local_3c;
                }
                _Src = (char *)((int)pppppiVar11 + uVar20 + 4);
                pppppiVar12 = pppppiVar11 + 1;
                if (((int *****)0xb1e25e < pppppiVar12) ||
                   ((char *)((int)pppppiVar11 + local_2c) < "Bosses/AfterbirthPlus/DeliriumForms"))
                {
                  _Size = (char *)0x23;
                }
                else if ("Bosses/AfterbirthPlus/DeliriumForms" < _Src) {
                  _Size = _Src + -0xb1e23c;
                }
                else {
                  _Size = (char *)0x0;
                }
                local_2c = local_2c + uVar14;
                memmove(_Src + uVar14,_Src,sVar17);
                memmove(pppppiVar12,"Bosses/AfterbirthPlus/DeliriumForms",(size_t)_Size);
                memcpy(_Size + (int)pppppiVar12,
                       "Bosses/AfterbirthPlus/DeliriumForms" + (int)(_Size + -uVar20 + 0x23),
                       0x23 - (int)_Size);
              }
            }
            else {
              local_2c = (local_2c - uVar20) + 0x23;
              pppppiVar11 = (int *****)&local_3c;
              if (0xf < local_28) {
                pppppiVar11 = local_3c;
              }
              memmove(pppppiVar11 + 1,"Bosses/AfterbirthPlus/DeliriumForms",0x23);
              memmove((void *)((int)pppppiVar11 + 0x27),(void *)((int)(pppppiVar11 + 1) + uVar20),
                      sVar17);
            }
          }
          pppppiVar11 = (int *****)&local_3c;
          if (0xf < local_28) {
            pppppiVar11 = local_3c;
          }
          iVar9 = FUN_00a17180(pppppiVar11);
          uVar15 = (undefined3)((uint)extraout_ECX_03 >> 8);
          if (iVar9 != 0) {
            local_14._0_1_ = 1;
            FUN_00a648b0(0,0);
            uVar15 = (undefined3)((uint)extraout_ECX_04 >> 8);
            local_14 = (uint)local_14._1_3_ << 8;
          }
          iVar10 = CONCAT31(uVar15,iVar9 != 0);
          if (iVar9 != 0) {
            FUN_0040bf30(local_4c,&local_3c);
            iVar10 = extraout_ECX_05;
          }
        }
        else {
          pppppiVar11 = (int *****)&local_3c;
          if (0xf < local_28) {
            pppppiVar11 = local_3c;
          }
          iVar9 = _strnicmp((char *)(pppppiVar11 + 1),"monsters",8);
          iVar10 = extraout_ECX_06;
          if (iVar9 == 0) {
            FUN_00499580(4,8,"Bosses/AfterbirthPlus/DeliriumForms",0x23);
            pppppiVar11 = (int *****)&local_3c;
            if (0xf < local_28) {
              pppppiVar11 = local_3c;
            }
            iVar9 = FUN_00a17180(pppppiVar11);
            uVar15 = (undefined3)((uint)extraout_ECX_07 >> 8);
            if (iVar9 != 0) {
              local_14._0_1_ = 2;
              FUN_00a648b0(0,0);
              uVar15 = (undefined3)((uint)extraout_ECX_08 >> 8);
              local_14 = (uint)local_14._1_3_ << 8;
            }
            iVar10 = CONCAT31(uVar15,iVar9 != 0);
            if (iVar9 != 0) {
              FUN_0040bf30(local_4c,&local_3c);
              iVar10 = extraout_ECX_09;
            }
          }
        }
      }
      local_14 = -1;
      if (0xf < local_28) {
        uVar19 = local_28 + 1;
        pppppiVar11 = local_3c;
        if (0xfff < uVar19) {
          pppppiVar11 = (int *****)local_3c[-1];
          uVar19 = local_28 + 0x24;
          if (0x1f < (uint)((int)local_3c + (-4 - (int)pppppiVar11))) {
LAB_004a622d:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(pppppiVar11,uVar19);
        iVar10 = extraout_ECX_10;
      }
      local_4c = local_4c + 1;
    } while (local_4c < *(uint *)(param_1_00 + 0x80));
  }
  FUN_0040c000(iVar10);
  piVar13 = (int *)(param_1_00 + 0x18);
  if (0xf < *(uint *)(param_1_00 + 0x2c)) {
    piVar13 = (int *)*piVar13;
  }
  cVar7 = HELPER_0040a5d0_AnimationPredicateC(piVar13,1);
  if (((cVar7 != '\0') && (*(int *)(param_1_00 + 0x34) != 0)) &&
     (FUN_00408e00(uVar8), *(int *)(param_1_00 + 0x34) != 0)) {
    *(undefined *)(param_1_00 + 0x44) = 0;
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

