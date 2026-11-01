/* Local J460 decompiler output.
 * VA: 0x00533b80
 * Entry: 00533b80
 * Dispatcher: 0x006c2990
 * Types: 213,287
 * Identities: 213.0.0,287.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00534860; instructions=802
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=213,287; identities=213.0.0,287.0.0;
   dispatcher=0x006c2990; end=0x00534860; instructions=802 */

void __fastcall AI_00533b80(int param_1)

{
  int *piVar1;
  byte bVar2;
  byte **ppbVar3;
  char cVar4;
  uint uVar5;
  uint uVar6;
  float *pfVar7;
  undefined4 uVar8;
  byte **ppbVar9;
  int iVar10;
  undefined4 *puVar11;
  uint uVar12;
  undefined4 extraout_ECX;
  char *pcVar13;
  byte *pbVar14;
  int iVar15;
  bool bVar16;
  float fVar17;
  float fVar18;
  float local_4c;
  int *local_48;
  uint local_44;
  float local_3c;
  undefined local_38 [8];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  uint local_10;
  int local_c;
  
  iVar15 = *(int *)(param_1 + 0xb64);
  if (iVar15 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x184) = 0;
    *(undefined4 *)(param_1 + 0x188) = 0;
    uVar5 = FUN_006eef60();
    *(uint *)(param_1 + 0x410) = -(uVar5 % 0x96);
    cVar4 = FUN_0040a5d0("JumpDown",1);
    if (((cVar4 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
      *(undefined *)(param_1 + 0x8c) = 0;
    }
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb;
    local_4c = DAT_00baa454;
    *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    *(undefined4 *)(param_1 + 0x15c) = 0;
    fVar17 = DAT_00baa528;
    if ((*(int *)(param_1 + 0xc64) == 0x12) ||
       (fVar17 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
      local_4c = fVar17;
    }
    local_48 = (int *)0x54;
    FUN_00956780();
    FUN_0092dc30(local_48,0x3f800000,10,0,local_4c,0);
    FUN_00703670(10);
    return;
  }
  local_3c = 0.0;
  if ((0.0 < *(float *)(param_1 + 0x14)) &&
     (puVar11 = *(undefined4 **)(param_1 + 8), puVar11 != *(undefined4 **)(param_1 + 0xc))) {
    do {
      if (((puVar11[2] & 4) != 0) && (puVar11[4] == 0x11f)) {
        *puVar11 = 0;
      }
      puVar11 = puVar11 + 0xe;
    } while (puVar11 != *(undefined4 **)(param_1 + 0xc));
    iVar15 = *(int *)(param_1 + 0xb64);
  }
  fVar17 = *(float *)(param_1 + 0x36c) * DAT_00baa304;
  *(int *)(param_1 + 0x410) =
       *(int *)(param_1 + 0x410) +
       ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
  *(float *)(param_1 + 0x36c) = fVar17;
  if (((iVar15 == 6) || (iVar15 == 4)) || (iVar15 == 7)) {
    uVar5 = *(uint *)(param_1 + 0x168);
    local_44 = *(uint *)(param_1 + 0x16c);
    if (((uVar5 & 0x100) != 0) && (*(int *)(param_1 + 0x224) < 3)) {
      local_30 = *(undefined4 *)(param_1 + 0x28);
      local_20 = *(undefined4 *)(param_1 + 0x33c);
      local_1c = *(undefined4 *)(param_1 + 0x340);
      local_10 = 3;
      local_2c = *(undefined4 *)(param_1 + 0x2c);
      local_28 = *(undefined4 *)(param_1 + 0x34);
      local_18 = *(undefined4 *)(param_1 + 0x360);
      local_14 = *(undefined4 *)(param_1 + 0x364);
      local_24 = *(undefined4 *)(param_1 + 0x38);
      if ((uVar5 & 0x20000000) == 0) {
        local_10 = 1;
      }
      if ((local_44 & 0x400000) == 0) {
        uVar5 = 0;
      }
      else {
        uVar5 = 4;
      }
      local_10 = local_10 | uVar5;
      local_c = param_1;
      FUN_006ad870(&local_30,1,0,0);
      uVar5 = *(uint *)(param_1 + 0x168);
      local_44 = *(uint *)(param_1 + 0x16c);
    }
    if (((uVar5 & 0x200) != 0) && (*(int *)(param_1 + 0x228) < 3)) {
      local_30 = *(undefined4 *)(param_1 + 0x28);
      local_20 = *(undefined4 *)(param_1 + 0x33c);
      local_1c = *(undefined4 *)(param_1 + 0x340);
      local_2c = *(undefined4 *)(param_1 + 0x2c);
      local_28 = *(undefined4 *)(param_1 + 0x34);
      local_24 = *(undefined4 *)(param_1 + 0x38);
      local_18 = *(undefined4 *)(param_1 + 0x360);
      local_14 = *(undefined4 *)(param_1 + 0x364);
      if ((uVar5 & 0x20000000) == 0) {
        uVar12 = 0;
      }
      else {
        uVar12 = 2;
      }
      if ((local_44 & 0x400000) == 0) {
        uVar6 = 0;
      }
      else {
        uVar6 = 4;
      }
      local_10 = uVar6 | uVar12 | (uint)((uVar5 & 0x100) != 0);
      local_c = param_1;
      FUN_006add70(&local_30,1,0);
      uVar5 = *(uint *)(param_1 + 0x168);
      local_44 = *(uint *)(param_1 + 0x16c);
    }
    if (((uVar5 & 0x800) != 0) && (*(int *)(param_1 + 0x230) < 3)) {
      local_30 = *(undefined4 *)(param_1 + 0x28);
      local_20 = *(undefined4 *)(param_1 + 0x33c);
      local_1c = *(undefined4 *)(param_1 + 0x340);
      local_2c = *(undefined4 *)(param_1 + 0x2c);
      local_28 = *(undefined4 *)(param_1 + 0x34);
      local_24 = *(undefined4 *)(param_1 + 0x38);
      local_18 = *(undefined4 *)(param_1 + 0x360);
      local_14 = *(undefined4 *)(param_1 + 0x364);
      if ((uVar5 & 0x20000000) == 0) {
        uVar12 = 0;
      }
      else {
        uVar12 = 2;
      }
      if ((local_44 & 0x400000) == 0) {
        uVar6 = 0;
      }
      else {
        uVar6 = 4;
      }
      local_10 = uVar6 | uVar12 | (uint)((uVar5 & 0x100) != 0);
      local_c = param_1;
      FUN_006ae0a0(&local_30,1,0);
      uVar5 = *(uint *)(param_1 + 0x168);
      local_44 = *(uint *)(param_1 + 0x16c);
    }
    if (((uVar5 & 0x1000000) != 0) && (*(int *)(param_1 + 0x23c) < 3)) {
      local_30 = *(undefined4 *)(param_1 + 0x28);
      local_20 = *(undefined4 *)(param_1 + 0x33c);
      local_1c = *(undefined4 *)(param_1 + 0x340);
      local_2c = *(undefined4 *)(param_1 + 0x2c);
      local_28 = *(undefined4 *)(param_1 + 0x34);
      local_24 = *(undefined4 *)(param_1 + 0x38);
      local_18 = *(undefined4 *)(param_1 + 0x360);
      local_14 = *(undefined4 *)(param_1 + 0x364);
      if ((uVar5 & 0x20000000) == 0) {
        uVar12 = 0;
      }
      else {
        uVar12 = 2;
      }
      if ((local_44 & 0x400000) == 0) {
        uVar6 = 0;
      }
      else {
        uVar6 = 4;
      }
      local_10 = uVar6 | uVar12 | (uint)((uVar5 & 0x100) != 0);
      local_c = param_1;
      FUN_006b5c10(&local_30,1,0,0);
    }
  }
  fVar17 = _DAT_00baa2a4;
  iVar15 = *(int *)(param_1 + 0xb64);
  if (iVar15 == 4) {
    iVar15 = *(int *)(param_1 + 0x410);
    fVar18 = ((float)iVar15 / DAT_00baa9b4) * _DAT_00baa2a4;
    *(float *)(param_1 + 0x15c) = fVar18;
    if (fVar17 < fVar18) {
      *(undefined4 *)(param_1 + 0x15c) = 0x3eddddde;
    }
    local_4c = DAT_00baa454;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      if (iVar15 < 0x4e) {
        if ((*(uint *)(param_1 + 0x168) & 0x1000a00) == 0) {
          iVar15 = FUN_006be840();
          fVar18 = *(float *)(iVar15 + 0x33c) + DAT_00ba9fe4;
          fVar17 = *(float *)(iVar15 + 0x340) + DAT_00baa454;
        }
        else {
          pfVar7 = (float *)FUN_006bec40(local_38,0);
          local_48 = (int *)(*pfVar7 - *(float *)(param_1 + 0x33c));
          local_3c = pfVar7[1] - *(float *)(param_1 + 0x340);
          fVar18 = (float)local_48 * (float)local_48 + local_3c * local_3c;
          if (fVar18 <= DAT_00ba9fe4) goto LAB_00534257;
          FUN_00435a50();
          fVar17 = local_3c;
          piVar1 = local_48;
          if (DAT_00ba9fe4 < fVar18) {
            fVar17 = (DAT_00baa454 / fVar18) * local_3c;
            piVar1 = (int *)((float)local_48 * (DAT_00baa454 / fVar18));
          }
          fVar18 = (float)piVar1 + *(float *)(param_1 + 0x33c);
          fVar17 = fVar17 + *(float *)(param_1 + 0x340);
        }
        *(float *)(param_1 + 0x340) = fVar17;
        *(float *)(param_1 + 0x33c) = fVar18;
      }
    }
    else {
      uVar8 = DAT_00baa554;
      if (0x59 < iVar15) {
        uVar8 = DAT_00baa120;
      }
      FUN_007e33c0(&DAT_00c7b640,uVar8,0,1);
      if ((*(int *)(param_1 + 0xf1c) != -1) &&
         (cVar4 = FUN_00956110(9,*(int *)(param_1 + 0xf1c),param_1,extraout_ECX), cVar4 != '\0')) {
        *(int *)(param_1 + 0x410) =
             *(int *)(param_1 + 0x410) +
             ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0)) * 2;
      }
    }
LAB_00534257:
    if (0x59 < *(int *)(param_1 + 0x410)) {
      fVar17 = DAT_00baa528;
      if ((*(int *)(param_1 + 0xc64) == 0x12) ||
         (fVar17 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
        local_4c = fVar17;
      }
      local_3c = 2.802597e-45;
      FUN_00956780();
      FUN_0092dc30(local_3c,0x3f800000,2,0,local_4c,0);
      *(undefined4 *)(param_1 + 0xb64) = 7;
      *(undefined4 *)(param_1 + 0x410) = 0;
      cVar4 = FUN_0040a5d0("JumpDown",1);
      if (cVar4 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      *(undefined4 *)(param_1 + 0xb64) = 7;
    }
    goto LAB_0053479c;
  }
  if (iVar15 == 7) {
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar4 = FUN_0040add0(&DAT_00b1d574);
      if ((cVar4 != '\0') &&
         (FUN_006d6ba0(0x30,0x3f800000,2,0,0x3f800000), *(int *)(param_1 + 0x28) == 0x11f)) {
        uVar5 = FUN_006eef60();
        fVar17 = DAT_00baab30 / (float)((double)((uVar5 & 1) + 3) + DAT_00bacb00);
        do {
          uVar8 = FUN_006eef60();
          uVar8 = FUN_006fe410(1000,0x48,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar8,0);
          iVar15 = __RTDynamicCast(uVar8,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                   &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,0);
          piVar1 = (int *)(iVar15 + 0x3bc);
          if (*(int *)(iVar15 + 0x3bc) != 0) {
            local_48 = piVar1;
            FUN_004cf210(&local_48);
          }
          *piVar1 = param_1;
          FUN_004cdcf0(piVar1);
          fVar18 = DAT_00baab30;
          *(float *)(iVar15 + 0x474) = local_3c;
          local_3c = local_3c + fVar17;
        } while (local_3c < fVar18);
      }
      if (*(int *)(param_1 + 0x7c) != 0) {
        cVar4 = FUN_0040ae70(&DAT_00b1d574);
        if (cVar4 != '\0') {
          *(undefined4 *)(param_1 + 0x188) = 4;
        }
        if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
        goto LAB_0053479c;
      }
    }
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x410) = 0;
    ppbVar3 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar3 != (byte **)0x0) {
      ppbVar9 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar9 = (byte **)*ppbVar3;
      }
      pcVar13 = "Stunned";
      do {
        bVar2 = *(byte *)ppbVar9;
        bVar16 = bVar2 < (byte)*pcVar13;
        if (bVar2 != *pcVar13) {
LAB_005344c0:
          uVar5 = -(uint)bVar16 | 1;
          goto LAB_005344c5;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppbVar9 + 1);
        bVar16 = bVar2 < ((byte *)pcVar13)[1];
        if (bVar2 != ((byte *)pcVar13)[1]) goto LAB_005344c0;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pcVar13 = (char *)((byte *)pcVar13 + 2);
      } while (bVar2 != 0);
      uVar5 = 0;
LAB_005344c5:
      if ((uVar5 == 0) && ((*(byte *)(ppbVar3 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
      goto LAB_0053479c;
    }
    pcVar13 = "Stunned";
  }
  else {
    if (iVar15 != 3) {
      if (iVar15 == 6) {
        if ((*(int *)(param_1 + 0x7c) != 0) && (cVar4 = FUN_0040ae70(&DAT_00b1d560), cVar4 != '\0'))
        {
          fVar17 = *(float *)(param_1 + 0x15c) * DAT_00baa354;
          *(undefined4 *)(param_1 + 0x188) = 0;
          *(float *)(param_1 + 0x15c) = fVar17;
        }
        if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
        goto LAB_0053479c;
      }
      else {
        if (iVar15 != 0x10) goto LAB_0053479c;
        *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 1;
        *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
        *(undefined *)(param_1 + 0x3b0) = 1;
        *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
        ppbVar3 = *(byte ***)(param_1 + 0x7c);
        if (ppbVar3 == (byte **)0x0) {
LAB_00534676:
          cVar4 = FUN_0040a5d0(&DAT_00b60954,1);
          if (cVar4 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
        }
        else {
          ppbVar9 = ppbVar3;
          if (&DAT_0000000f < ppbVar3[5]) {
            ppbVar9 = (byte **)*ppbVar3;
          }
          pbVar14 = &DAT_00b60954;
          do {
            bVar2 = *(byte *)ppbVar9;
            bVar16 = bVar2 < *pbVar14;
            if (bVar2 != *pbVar14) {
LAB_00534660:
              uVar5 = -(uint)bVar16 | 1;
              goto LAB_00534665;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppbVar9 + 1);
            bVar16 = bVar2 < pbVar14[1];
            if (bVar2 != pbVar14[1]) goto LAB_00534660;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pbVar14 = pbVar14 + 2;
          } while (bVar2 != 0);
          uVar5 = 0;
LAB_00534665:
          if ((uVar5 != 0) ||
             ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
          goto LAB_00534676;
        }
        if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
        goto LAB_0053479c;
        *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffe;
        *(undefined *)(param_1 + 0x3b0) = 0;
        *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
        if ((*(int *)(param_1 + 0xbc0) == 1) && (*(int *)(param_1 + 0xbc4) == 0)) {
          uVar5 = 0;
          if (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0) {
            do {
              iVar15 = FUN_00417870(uVar5);
              if (0 < *(int *)(iVar15 + 0x189c)) {
                *(undefined *)(iVar15 + 0x410) = 1;
                *(undefined4 *)(iVar15 + 0x188) = 4;
                *(undefined4 *)(iVar15 + 0x189c) = 0;
              }
              uVar5 = uVar5 + 1;
            } while (uVar5 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) -
                                    *(int *)(DAT_00c71678 + 0x1baa8) >> 2));
          }
          puVar11 = (undefined4 *)(DAT_00c71678 + 0x182d0);
          *(undefined4 *)(DAT_00c71678 + 0x18318) = 0xffffffff;
          FUN_006fd7c0(*puVar11,0xffffffff,1,0,0xffffffff);
        }
        fVar17 = *(float *)(param_1 + 0x15c) * DAT_00baa354;
        *(undefined4 *)(param_1 + 0x188) = 0;
        *(float *)(param_1 + 0x15c) = fVar17;
      }
      *(undefined4 *)(param_1 + 0xb64) = 4;
      *(undefined4 *)(param_1 + 0x410) = 0;
      FUN_0040a6e0("JumpDown",0);
      goto LAB_0053479c;
    }
    if (*(int *)(param_1 + 0x410) < 0x33) goto LAB_0053479c;
    *(undefined4 *)(param_1 + 0xb64) = 6;
    *(undefined4 *)(param_1 + 0x410) = 0;
    ppbVar3 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar3 != (byte **)0x0) {
      ppbVar9 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar9 = (byte **)*ppbVar3;
      }
      pbVar14 = &DAT_00b1e0e4;
      do {
        bVar2 = *(byte *)ppbVar9;
        bVar16 = bVar2 < *pbVar14;
        if (bVar2 != *pbVar14) {
LAB_00534550:
          uVar5 = -(uint)bVar16 | 1;
          goto LAB_00534555;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppbVar9 + 1);
        bVar16 = bVar2 < pbVar14[1];
        if (bVar2 != pbVar14[1]) goto LAB_00534550;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pbVar14 = pbVar14 + 2;
      } while (bVar2 != 0);
      uVar5 = 0;
LAB_00534555:
      if ((uVar5 == 0) && ((*(byte *)(ppbVar3 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
      goto LAB_0053479c;
    }
    pcVar13 = "JumpUp";
  }
  cVar4 = FUN_0040a5d0(pcVar13,1);
  if (cVar4 != '\0') {
    FUN_0040a1b0();
    *(undefined *)(param_1 + 0x8c) = 1;
  }
LAB_0053479c:
  if ((*(char *)(param_1 + 0x173) != '\0') && (*(int *)(param_1 + 0x28) == 0x11f)) {
    uVar5 = FUN_006eef60();
    iVar15 = (uVar5 & 1) + 2;
    do {
      iVar10 = FUN_006eef60();
      puVar11 = (undefined4 *)
                FUN_00813520(local_38,param_1 + 0x33c,
                             (float)((double)iVar10 + (&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baa9a0,0,0,0);
      FUN_006c2750(param_1 + 0x33c,param_1,*puVar11,puVar11[1],0,0xc1f00000);
      iVar15 = iVar15 + -1;
    } while (iVar15 != 0);
  }
  return;
}

