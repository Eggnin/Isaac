/* Local J460 decompiler output.
 * VA: 0x004f8df0
 * Entry: 004f8df0
 * Dispatcher: 0x006c2990
 * Types: 809
 * Identities: 809.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004f9230; instructions=275
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=809; identities=809.0.0; dispatcher=0x006c2990;
   end=0x004f9230; instructions=275 */

void __fastcall AI_004f8df0(int *****param_1)

{
  code *pcVar1;
  longlong lVar2;
  int ****ppppiVar3;
  int ****ppppiVar4;
  int *piVar5;
  char cVar6;
  undefined4 uVar7;
  int ****ppppiVar8;
  uint uVar9;
  int *****pppppiVar10;
  int *piVar11;
  int iVar12;
  int iVar13;
  undefined4 extraout_ECX;
  int *****unaff_EBX;
  uint uVar14;
  uint uVar15;
  int ******ppppppiVar16;
  uint uVar17;
  bool bVar18;
  float fVar19;
  ulonglong uVar20;
  ulonglong uVar21;
  int *****local_dc;
  int iStack_cc;
  undefined4 uStack_c8;
  int ****local_c4;
  int *piStack_c0;
  int iStack_bc;
  int *****pppppiStack_b8;
  int *****local_b4;
  int ****local_b0;
  float local_ac;
  uint uStack_a4;
  int local_a0;
  int *****local_98;
  undefined4 local_94;
  undefined4 local_90;
  int ******local_8c;
  int local_88;
  int ****local_84;
  int *****local_80;
  undefined8 local_7c;
  int *local_74;
  float local_70 [2];
  int iStack_68;
  uint uStack_38;
  undefined8 uStack_34;
  int *piStack_2c;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&iStack_cc;
  pppppiVar10 = (int *****)param_1[0xf5];
  local_b4 = param_1;
  local_98 = pppppiVar10;
  if (param_1[0x2dd] == (int ****)0x1) {
    if (((pppppiVar10 == (int *****)0x0) && (*(char *)((int)param_1 + 0x173) == '\0')) &&
       (-1 < (int)param_1[0x10d])) {
      local_dc = (int *****)0xf9f;
      FUN_004565e0(param_1[0x10d]);
      FUN_00aef12b();
      return;
    }
    goto LAB_004f9909;
  }
  iVar12 = *(int *)(DAT_00c71678 + 0x18300);
  local_dc = (int *****)0x4f8e8a;
  local_88 = iVar12;
  cVar6 = FUN_0074efd0();
  if ((cVar6 == '\0') || (*(int *)(DAT_00c71678 + 0x1830c) != 1)) {
LAB_004f8ead:
    uStack_c8 = uStack_c8 & 0xffffff;
  }
  else {
    uStack_c8 = CONCAT13(1,(undefined3)uStack_c8);
    if ((*(uint *)(DAT_00c71678 + 0x1839c) & 0x400000) != 0) goto LAB_004f8ead;
  }
  ppppiVar8 = param_1[0x2d9];
  if (ppppiVar8 == (int ****)0x0) {
    param_1[0x5a] = (int ****)((uint)param_1[0x5a] | 0x40000001);
    param_1[0x5b] = (int ****)((uint)param_1[0x5b] | 0x2008);
    fVar19 = DAT_00baa904;
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x3c6] = (int ****)0x1;
    param_1[0x2d9] = (int ****)0x3;
    if (pppppiVar10 == (int *****)0x0) {
      local_dc = param_1 + 0xcf;
      iVar12 = FUN_00812c90();
      local_dc = (int *****)0x4f9728;
      FUN_007e6ff0();
      fVar19 = DAT_00baa904;
      ppppiVar8 = (int ****)
                  ((float)(iVar12 / *(int *)(local_88 + 0xc)) * DAT_00baa904 + DAT_00baaa00);
      param_1[0xcd] =
           (int ****)((float)(iVar12 % *(int *)(local_88 + 0xc)) * DAT_00baa904 + DAT_00baa904);
      param_1[0xce] = ppppiVar8;
      iVar12 = local_88;
    }
    if (uStack_c8._3_1_ != '\0') {
      param_1[0x5a] = (int ****)((uint)param_1[0x5a] & 0xfffffffb);
      param_1[0x5b] = param_1[0x5b];
    }
    pppppiVar10 = param_1 + 0xf0;
    if ((param_1[0xf0] == (int ****)0x0) && (uStack_c8._3_1_ == '\0')) {
      local_dc = &local_b0;
      local_b0 = (int ****)((float)param_1[0xcf] + DAT_00ba9fe4);
      local_ac = (float)param_1[0xd0] + fVar19;
      iVar13 = FUN_00812c90();
      local_b0 = (int ****)((float)(iVar13 % *(int *)(iVar12 + 0xc)) * DAT_00baa904 + DAT_00baa904);
      local_ac = (float)(iVar13 / *(int *)(iVar12 + 0xc)) * DAT_00baa904 + DAT_00baaa00;
      local_dc = (int *****)0x4f9819;
      uVar7 = FUN_006eef60();
      local_dc = (int *****)0x0;
      ppppiVar8 = (int ****)FUN_006fe410(5,0x29,&local_b0,&DAT_00c7b640,param_1,0,uVar7);
      if (*pppppiVar10 != (int ****)0x0) {
        local_dc = (int *****)&local_98;
        local_98 = pppppiVar10;
        FUN_004cf210();
      }
      *pppppiVar10 = ppppiVar8;
      if (ppppiVar8 != (int ****)0x0) {
        local_dc = pppppiVar10;
        FUN_004cdcf0();
      }
      pppppiVar10 = (int *****)(ppppiVar8 + 0xef);
      if (ppppiVar8[0xef] != (int ***)0x0) {
        local_dc = (int *****)&local_98;
        local_98 = pppppiVar10;
        FUN_004cf210();
      }
      *pppppiVar10 = (int ****)param_1;
      local_dc = pppppiVar10;
      FUN_004cdcf0();
      local_dc = (int *****)0x4f9897;
      (*(code *)(*ppppiVar8)[3])();
      if (ppppiVar8[0x1f] != (int ***)0x0) {
        local_dc = (int *****)((int)ppppiVar8[0x1f][0xc] + -1);
        FUN_00408d00();
      }
    }
    local_dc = (int *****)0x4f98b9;
    pppppiVar10 = (int *****)FUN_00407170();
    if (param_1 + 0x79 != pppppiVar10) {
      ppppiVar8 = pppppiVar10[1];
      ppppiVar3 = pppppiVar10[2];
      ppppiVar4 = pppppiVar10[3];
      param_1[0x79] = *pppppiVar10;
      param_1[0x7a] = ppppiVar8;
      param_1[0x7b] = ppppiVar3;
      param_1[0x7c] = ppppiVar4;
      ppppiVar8 = pppppiVar10[5];
      ppppiVar3 = pppppiVar10[6];
      ppppiVar4 = pppppiVar10[7];
      param_1[0x7d] = pppppiVar10[4];
      param_1[0x7e] = ppppiVar8;
      param_1[0x7f] = ppppiVar3;
      param_1[0x80] = ppppiVar4;
      *(undefined8 *)(param_1 + 0x81) = *(undefined8 *)(pppppiVar10 + 8);
      param_1[0x83] = pppppiVar10[10];
    }
    param_1[0x7d] = (int ****)0x3f800000;
    param_1[0x7e] = (int ****)0x3f800000;
    param_1[0x7f] = (int ****)0x3f800000;
    param_1[0x80] = (int ****)0x3f800000;
    goto LAB_004f9909;
  }
  if (ppppiVar8 == (int ****)0x3) {
    local_dc = (int *****)0x0;
    FUN_0040a380(&DAT_00b1bc54);
    if (((int)param_1[0x104] < 1) || (uStack_c8._3_1_ != '\0')) {
      if (param_1[0xf0] != (int ****)0x0) {
        if (*(char *)((int)param_1[0xf0] + 0x173) == '\0') goto LAB_004f907a;
        local_dc = (int *****)&local_8c;
        local_8c = (int ******)(param_1 + 0xf0);
        FUN_004cf210();
      }
      param_1[0xf0] = (int ****)0x0;
      param_1[0x104] = (int ****)0x1e;
    }
    else {
      ppppiVar8 = (int ****)((int)param_1[0x104] + -1);
      param_1[0x104] = ppppiVar8;
      if (ppppiVar8 == (int ****)0x0) {
        param_1[0x2d9] = (int ****)0x8;
      }
    }
  }
  else if (ppppiVar8 == (int ****)0x8) {
    local_dc = (int *****)0x0;
    FUN_0040a380("Shoot");
    if (param_1[0x1f] != (int ****)0x0) {
      local_dc = (int *****)0xb1d2dc;
      cVar6 = FUN_0040add0();
      if (cVar6 != '\0') {
        local_dc = (int *****)0x3f800000;
        FUN_006d6ba0(0x106,0x3f800000,2,0);
        local_dc = (int *****)0x4f8f25;
        uVar7 = FUN_006eef60();
        local_74 = (int *)((float)param_1[0xcf] + 0.0);
        local_dc = (int *****)0x0;
        local_70[0] = (float)param_1[0xd0] + DAT_00baa7a4;
        local_7c = 0x3fa0000000000000;
        ppppiVar8 = (int ****)FUN_006fe410(5,0x29,&local_74,&local_7c,param_1,0,uVar7);
        pppppiVar10 = param_1 + 0xf0;
        if (param_1[0xf0] != (int ****)0x0) {
          local_dc = (int *****)&local_80;
          local_80 = pppppiVar10;
          FUN_004cf210();
        }
        *pppppiVar10 = ppppiVar8;
        if (ppppiVar8 != (int ****)0x0) {
          local_dc = pppppiVar10;
          FUN_004cdcf0();
        }
        ppppppiVar16 = (int ******)(ppppiVar8 + 0xef);
        if (ppppiVar8[0xef] != (int ***)0x0) {
          local_dc = (int *****)&local_8c;
          local_8c = ppppppiVar16;
          FUN_004cf210();
        }
        *ppppppiVar16 = param_1;
        local_dc = (int *****)ppppppiVar16;
        FUN_004cdcf0();
      }
      if ((param_1[0x1f] != (int ****)0x0) && (*(char *)(param_1 + 0x23) != '\0'))
      goto LAB_004f907a;
    }
    param_1[0x2d9] = (int ****)0x3;
  }
LAB_004f907a:
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    local_dc = (int *****)0x4f908c;
    local_84 = (int ****)FUN_006eef60();
    local_dc = &local_84;
    pppppiVar10 = &local_c4;
    local_a0 = DAT_00c71678;
    local_c4 = (int ****)0x0;
    local_90 = 0x77;
    local_94 = 1000;
    FUN_008646e0(&local_94,&local_90,&DAT_00c7b640,&DAT_00c7b640,0);
    if (1 < *(int *)(DAT_00c71678 + 0x26614)) {
      piVar11 = *(int **)(DAT_00c71678 + 0x26620);
      uVar9 = FUN_006eef60();
      local_7c = DAT_00b1f66c;
      piStack_c0 = DAT_00b1f674;
      local_74 = DAT_00b1f674;
      if (local_b0 == (int ****)0x5) {
        if ((uint)local_ac < 0x12d) {
          if (local_ac == 4.203895e-43) {
            while ((local_dc = pppppiVar10, pppppiVar10 == (int *****)0x0 ||
                   (cVar6 = (**(code **)(*piVar11 + 0x24))(pppppiVar10), param_1 = unaff_EBX,
                   pppppiVar10 = local_dc, cVar6 != '\0'))) {
              if (uVar9 == 0) {
                FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                pcVar1 = (code *)swi(3);
                (*pcVar1)();
                return;
              }
              uVar9 = uVar9 >> ((byte)local_7c & 0x1f) ^ uVar9;
              uVar9 = uVar9 << ((byte)((ulonglong)local_7c >> 0x20) & 0x1f) ^ uVar9;
              uVar9 = uVar9 >> ((byte)piStack_c0 & 0x1f) ^ uVar9;
              uVar7 = FUN_00734180(uVar9,0x19,10,10,1);
              uStack_34 = DAT_00b1f66c;
              piStack_2c = DAT_00b1f674;
              uStack_38 = uVar9;
              pppppiVar10 = (int *****)FUN_00865340(&uStack_38,uVar7,1,1,0);
            }
          }
          else {
            if (local_ac == 9.809089e-44) {
              pppppiStack_b8 = (int *****)((uint)pppppiVar10 >> 0xb);
              do {
                local_dc = pppppiVar10;
                if (pppppiVar10 != (int *****)0x0) {
                  pcVar1 = *(code **)(*piVar11 + 0x28);
                  uVar7 = FUN_00734a80(pppppiVar10,0);
                  cVar6 = (*pcVar1)(uVar7);
                  param_1 = unaff_EBX;
                  pppppiVar10 = local_dc;
                  if (cVar6 == '\0') goto LAB_004f91b1;
                }
                if (uVar9 == 0) {
                  FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                  pcVar1 = (code *)swi(3);
                  (*pcVar1)();
                  return;
                }
                uVar9 = uVar9 >> ((byte)local_7c & 0x1f) ^ uVar9;
                uVar9 = uVar9 << ((byte)((ulonglong)local_7c >> 0x20) & 0x1f) ^ uVar9;
                uVar9 = uVar9 >> ((byte)piStack_c0 & 0x1f) ^ uVar9;
                uVar17 = FUN_00734900(uVar9);
                pppppiVar10 = (int *****)(uVar17 | ((uint)pppppiStack_b8 & 1) << 0xb);
              } while( true );
            }
            if (local_ac == 1.401298e-43) {
              local_dc = pppppiVar10;
              if ((pppppiVar10 == (int *****)0x19) ||
                 (((pppppiStack_b8 = pppppiVar10, FUN_004288a0(local_70,&pppppiStack_b8),
                   *(char *)(iStack_68 + 0xd) == '\0' &&
                   (*(int *)(iStack_68 + 0x10) <= (int)pppppiVar10)) && (iStack_68 != piVar11[8]))))
              {
                bVar18 = false;
              }
              else {
                bVar18 = true;
              }
              if ((pppppiVar10 == (int *****)0x0) ||
                 (param_1 = unaff_EBX, pppppiVar10 = local_dc, bVar18)) {
                pppppiVar10 = (int *****)(**(code **)(*piVar11 + 0x84))(0);
                param_1 = unaff_EBX;
              }
            }
          }
        }
        else if (local_ac == 4.904545e-43) {
          while ((local_dc = pppppiVar10, pppppiVar10 == (int *****)0x0 ||
                 (cVar6 = (**(code **)(*piVar11 + 0x2c))(pppppiVar10), param_1 = unaff_EBX,
                 pppppiVar10 = local_dc, cVar6 != '\0'))) {
            pppppiVar10 = (int *****)FUN_00733ca0(0);
          }
        }
      }
    }
LAB_004f91b1:
    local_dc = pppppiVar10;
    piStack_c0 = (int *)FUN_006f0090(local_b0,0);
    if (piStack_c0 != (int *)0x0) {
      uVar20 = FUN_00a68490();
      piVar5 = piStack_c0;
      uVar17 = (uint)(uVar20 >> 0x20);
      uVar21 = (ulonglong)uVar17 * 0xd7b634db + ((uVar20 & 0xffffffff) * 0xd7b634db >> 0x20);
      uVar14 = (uint)(uVar21 >> 0x20);
      lVar2 = (uVar20 & 0xffffffff) * 0x431bde82 + (uVar21 & 0xffffffff);
      iStack_cc = (int)lVar2;
      uVar9 = (uint)((ulonglong)lVar2 >> 0x20);
      lVar2 = (ulonglong)uVar17 * 0x431bde82 +
              (ulonglong)CONCAT14(CARRY4(uVar14,uVar9),uVar14 + uVar9);
      uStack_a4 = (uint)((ulonglong)lVar2 >> 0x20);
      piVar11 = piStack_c0 + 0xf2;
      uVar9 = (uint)lVar2 >> 0x12 | uStack_a4 * 0x4000;
      uStack_a4 = uStack_a4 >> 0x12;
      piStack_c0[0xd] = 0;
      piStack_c0[0xe] = 0;
      if (*piVar11 != 0) {
        FUN_004cf210(&stack0xffffff2c);
      }
      iVar12 = *piVar5;
      *piVar11 = 0;
      piVar5[0xcf] = DAT_00c7b640;
      piVar5[0xd0] = DAT_00c7b644;
      piVar5[0xd8] = DAT_00c7b640;
      piVar5[0xd9] = DAT_00c7b644;
      (**(code **)(iVar12 + 4))(local_b0,local_ac,local_dc,local_a0);
      iVar13 = iStack_bc;
      iVar12 = *(int *)(*(int *)(iStack_bc + 0x18300) + 0x1214);
      *(int *)(*(int *)(iStack_bc + 0x18300) + 0x1214) = iVar12 + 1;
      piVar5[8] = iVar12;
      FUN_00418500(piVar5);
      cVar6 = FUN_007078f0(piVar5);
      if (cVar6 != '\0') {
        FUN_007079c0(piVar5,extraout_ECX);
      }
      if ((*(char *)((int)piVar5 + 0x172) != '\0') &&
         (*(int *)(iVar13 + 0x67758) != *(int *)(iVar13 + 0x6775c))) {
        local_84 = (int ****)piVar5[0xb];
        local_88 = piVar5[10];
        FUN_009e24a0(&iStack_bc,&local_88);
        iVar12 = *(int *)(iVar13 + 0x67780);
        if (iStack_bc == iVar12) {
          iStack_cc = piVar5[10];
          uStack_c8 = 0xffffffff;
          piVar11 = (int *)FUN_009e24a0(&local_dc,&iStack_cc);
          iStack_bc = *piVar11;
          if (iStack_bc == iVar12) goto LAB_004f9595;
        }
        uVar17 = 0;
        piVar11 = (int *)(DAT_00c71678 + 0x1baa8);
        if (*(int *)(DAT_00c71678 + 0x1baac) - *piVar11 >> 2 != 0) {
          do {
            if (piVar11[1] - *piVar11 >> 2 == 0) {
              FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
            }
            FUN_009e0680(6,piVar5,&DAT_00c7b640,&DAT_00c7b640);
            uVar17 = uVar17 + 1;
            piVar11 = (int *)(DAT_00c71678 + 0x1baa8);
          } while (uVar17 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *piVar11 >> 2));
        }
      }
LAB_004f9595:
      uVar21 = FUN_00a68490();
      uVar14 = (uint)(uVar21 >> 0x20);
      lVar2 = (uVar21 & 0xffffffff) * 0x431bde82;
      pppppiStack_b8 = (int *****)((ulonglong)lVar2 >> 0x20);
      uVar21 = (ulonglong)uVar14 * 0xd7b634db + ((uVar21 & 0xffffffff) * 0xd7b634db >> 0x20);
      uVar15 = (uint)(uVar21 >> 0x20);
      lVar2 = lVar2 + (uVar21 & 0xffffffff);
      iStack_cc = (int)lVar2;
      uVar17 = (uint)((ulonglong)lVar2 >> 0x20);
      lVar2 = (ulonglong)uVar14 * 0x431bde82 +
              (ulonglong)CONCAT14(CARRY4(uVar15,uVar17),uVar15 + uVar17);
      uVar15 = (uint)((ulonglong)lVar2 >> 0x20);
      uVar17 = (uint)lVar2 >> 0x12 | uVar15 * 0x4000;
      uVar14 = uVar17 - uVar9;
      bVar18 = CARRY4(DAT_00c7b630,uVar14);
      DAT_00c7b630 = DAT_00c7b630 + uVar14;
      DAT_00c7b634 = DAT_00c7b634 + (((uVar15 >> 0x12) - uStack_a4) - (uint)(uVar17 < uVar9)) +
                     (uint)bVar18;
      param_1 = unaff_EBX;
    }
    piStack_c0[0x108] = (int)FUN_004f8cc0;
    piStack_c0[0x109] = 1;
    piStack_c0[0x10a] = 10;
    piStack_c0[0xcf] = (int)param_1[0xcf];
    piStack_c0[0xd0] = (int)param_1[0xd0];
    (**(code **)(*piStack_c0 + 0xc))();
    local_dc = (int *****)0xffffffff;
    FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304));
    local_dc = param_1 + 0xcb;
    FUN_004e45c0(&local_b0);
  }
  if (local_98 == (int *****)0x0) {
    param_1[0xd8] = (int ****)((float)param_1[0xcd] - (float)param_1[0xcf]);
    param_1[0xd9] = (int ****)((float)param_1[0xce] - (float)param_1[0xd0]);
    FUN_00aef12b();
    return;
  }
LAB_004f9909:
  FUN_00aef12b();
  return;
}

