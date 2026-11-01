/* Local J460 decompiler output.
 * VA: 0x004bf310
 * Entry: 004bf310
 * Dispatcher: 0x006c2990
 * Types: 296
 * Identities: 296.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004bfd20; instructions=588
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=296; identities=296.0.0; dispatcher=0x006c2990;
   end=0x004bfd20; instructions=588 */

void __fastcall AI_004bf310(int param_1)

{
  byte bVar1;
  char *pcVar2;
  uint uVar3;
  byte **ppbVar4;
  bool bVar5;
  char cVar6;
  uint uVar7;
  int iVar8;
  undefined4 *puVar9;
  int iVar10;
  int *piVar11;
  undefined4 uVar12;
  int *piVar13;
  float *pfVar14;
  byte **ppbVar15;
  char *pcVar16;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  byte *pbVar17;
  uint *puVar18;
  bool bVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  undefined4 uVar23;
  TypeDescriptor *pTVar24;
  TypeDescriptor *pTVar25;
  undefined4 uVar26;
  undefined local_80 [24];
  char local_68 [4];
  int local_64;
  float local_5c;
  float local_58;
  undefined local_54 [4];
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  int local_38 [4];
  undefined4 local_28;
  uint local_24;
  char *local_20 [3];
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af35a5;
  local_10 = ExceptionList;
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0x184) = 0;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    local_20[0] = "gfx/Monsters/Afterbirth/Monster_010_Fly_Hush_1.png";
    local_20[1] = "gfx/Monsters/Afterbirth/Monster_010_Fly_Hush_2.png";
    local_20[2] = "gfx/Monsters/Afterbirth/Monster_010_Fly_Hush_3.png";
    uVar7 = FUN_006eef60(local_14);
    local_28 = 0;
    local_24 = 0xf;
    local_38[0] = 0;
    pcVar2 = local_20[uVar7 % 3];
    pcVar16 = pcVar2;
    do {
      cVar6 = *pcVar16;
      pcVar16 = pcVar16 + 1;
    } while (cVar6 != '\0');
    FUN_0040ccd0(pcVar2,(int)pcVar16 - (int)(pcVar2 + 1));
    local_8 = 0;
    FUN_0040bf30(0,local_38);
    local_8 = 0xffffffff;
    uVar12 = extraout_ECX;
    if (0xf < local_24) {
      uVar7 = local_24 + 1;
      iVar10 = local_38[0];
      if (0xfff < uVar7) {
        iVar10 = *(int *)(local_38[0] + -4);
        uVar7 = local_24 + 0x24;
        if (0x1f < (local_38[0] - iVar10) - 4U) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar10,uVar7);
      uVar12 = extraout_ECX_00;
    }
    FUN_0040c000(uVar12);
    iVar8 = FUN_006eef60();
    iVar10 = DAT_00c71678;
    *(int *)(param_1 + 0xbc0) =
         (int)((float)((double)iVar8 + (&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
              DAT_00baabc4);
    *(undefined4 *)(param_1 + 0xc7c) = *(undefined4 *)(iVar10 + 0x264f8);
    puVar9 = (undefined4 *)FUN_00812d00(local_54);
    *(undefined4 *)(param_1 + 0xbb0) = *puVar9;
    *(undefined4 *)(param_1 + 0xbb4) = puVar9[1];
    uVar7 = FUN_006eef60();
    *(char *)(param_1 + 0xbc4) = (char)((ulonglong)uVar7 % 6) + '\x01';
    uVar7 = FUN_006eef60();
    *(char *)(param_1 + 0xbc5) = (char)((ulonglong)uVar7 % 6) + '\x01';
    *(undefined2 *)(param_1 + 0xbc6) = 0x50;
    uVar7 = FUN_006eef60();
    *(float *)(param_1 + 0x380) =
         (float)((double)(uVar7 % 200 + 400) + DAT_00bacb00) + *(float *)(param_1 + 0x380);
  }
  fVar20 = *(float *)(param_1 + 900);
  if (fVar20 < *(float *)(param_1 + 0x380)) {
    local_44 = *(float *)(param_1 + 0x380) - DAT_00baa75c;
    pfVar14 = &local_44;
    if (local_44 <= fVar20) {
      pfVar14 = (float *)(param_1 + 900);
    }
    *(float *)(param_1 + 0x380) = *pfVar14;
  }
  iVar10 = __RTDynamicCast(*(undefined4 *)(param_1 + 0x3bc),0,
                           &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                           &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
  if (((NAN(*(float *)(param_1 + 0x334)) || NAN(DAT_00c7b640)) !=
       (*(float *)(param_1 + 0x334) == DAT_00c7b640)) &&
     ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) !=
      (*(float *)(param_1 + 0x338) == DAT_00c7b644))) {
    local_50 = (float)iVar10;
    FUN_006d0dd0(local_68,*(undefined4 *)(param_1 + 0xc7c));
    local_8 = 1;
    FUN_009bfd40(*(undefined *)(param_1 + 0xbc4));
    local_8._0_1_ = 2;
    FUN_009bfd40(*(undefined *)(param_1 + 0xbc5));
    local_8 = CONCAT31(local_8._1_3_,3);
    local_58 = (float)*(int *)(DAT_00c71678 + 0x264f8);
    *(float *)(param_1 + 0xbb0) =
         *(float *)(param_1 + 0x39c) * *(float *)(param_1 + 3000) + *(float *)(param_1 + 0xbb0);
    *(float *)(param_1 + 0xbb4) =
         *(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0xbbc) + *(float *)(param_1 + 0xbb4);
    if (*(char *)(param_1 + 0xbc7) == '\x01') {
      fVar20 = *(float *)(param_1 + 3000) * *(float *)(param_1 + 3000) +
               *(float *)(param_1 + 0xbbc) * *(float *)(param_1 + 0xbbc);
      FUN_00435a50();
      local_44 = fVar20;
      iVar8 = FUN_006be840();
      local_3c = *(float *)(iVar8 + 0x33c) - *(float *)(param_1 + 0xbb0);
      local_40 = *(float *)(iVar8 + 0x340) - *(float *)(param_1 + 0xbb4);
      fVar20 = local_3c * local_3c + local_40 * local_40;
      FUN_00435a50();
      if (0.0 < fVar20) {
        local_40 = (local_44 / fVar20) * local_40;
        local_3c = (local_44 / fVar20) * local_3c;
      }
      fVar20 = local_40 - *(float *)(param_1 + 0xbbc);
      local_40 = *(float *)(param_1 + 3000) + (local_3c - *(float *)(param_1 + 3000)) * DAT_00baa120
      ;
      local_3c = *(float *)(param_1 + 0xbbc) + fVar20 * DAT_00baa120;
      fVar21 = local_40 * local_40 + local_3c * local_3c;
      FUN_00435a50();
      fVar20 = local_3c;
      fVar22 = local_40;
      if (0.0 < fVar21) {
        fVar20 = (local_44 / fVar21) * local_3c;
        fVar22 = (local_44 / fVar21) * local_40;
      }
      *(float *)(param_1 + 3000) = fVar22;
      *(float *)(param_1 + 0xbbc) = fVar20;
    }
    if ((*(int *)(param_1 + 0xc7c) == 1) && (iVar10 != 0)) {
      uVar12 = *(undefined4 *)(iVar10 + 0x340);
      *(undefined4 *)(param_1 + 0xbb0) = *(undefined4 *)(iVar10 + 0x33c);
      *(undefined4 *)(param_1 + 0xbb4) = uVar12;
    }
    local_44 = 0.0;
    if (local_5c != 0.0) {
      do {
        piVar11 = (int *)__RTDynamicCast(*(undefined4 *)(local_64 + (int)local_44 * 4),0,
                                         &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                         &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        if ((piVar11 != (int *)0x0) && (piVar11[10] == 0x128)) {
          piVar11[0x2f0] = piVar11[0x2f0] + 10;
          uVar26 = 0;
          pTVar25 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
          pTVar24 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar23 = 0;
          uVar12 = FUN_004be670(piVar11,piVar11[0xcf],piVar11[0xd0]);
          piVar13 = (int *)__RTDynamicCast(uVar12,uVar23,pTVar24,pTVar25,uVar26);
          if ((piVar13 != (int *)0x0) && (piVar13 != piVar11)) {
            iVar10 = piVar11[0x2f0];
            fVar20 = ((float)piVar13[0x2f0] - (float)iVar10) * _DAT_00baa05c;
            local_40 = fVar20;
            FUN_0041d540();
            local_3c = fVar20;
            fVar20 = local_40;
            FUN_0041d520();
            FUN_00499d60();
            iVar8 = 0;
            if (fVar20 * _DAT_00baaa58 < DAT_00baacd4) {
              iVar8 = 2;
            }
            if (0.0 < fVar20 * _DAT_00baaa58) {
              iVar8 = -2;
            }
            piVar11[0x2f0] = iVar8 + iVar10;
          }
          local_48 = (float)piVar11[0x2f0] * DAT_00baa020;
          pfVar14 = (float *)FUN_009bffb0(local_80);
          local_3c = local_58 * DAT_00baa088;
          fVar20 = local_3c;
          FUN_0041d540();
          local_40 = fVar20;
          fVar20 = local_3c;
          FUN_0041d520();
          fVar22 = pfVar14[1] * local_40;
          local_40 = (*pfVar14 * local_40 - pfVar14[1] * fVar20) + *(float *)(param_1 + 0xbb0);
          local_4c = (fVar22 + *pfVar14 * fVar20) * DAT_00baa354 + *(float *)(param_1 + 0xbb4);
          pfVar14 = (float *)FUN_009bffb0(local_20 + 1);
          fVar20 = local_3c;
          FUN_0041d540();
          local_48 = fVar20;
          FUN_0041d520();
          fVar22 = pfVar14[1] * local_48;
          fVar20 = *(float *)(param_1 + 0x3a4) * DAT_00baa120;
          local_48 = *pfVar14 * local_48 - pfVar14[1] * local_3c;
          local_3c = (fVar22 + *pfVar14 * local_3c) * DAT_00baa354;
          FUN_0041d520();
          fVar22 = (fVar20 + DAT_00baa2d0) * DAT_00baa354;
          fVar20 = 0.0;
          if (0.0 <= fVar22) {
            fVar20 = fVar22;
          }
          fVar22 = DAT_00baa454;
          if (fVar20 <= DAT_00baa454) {
            fVar22 = fVar20;
          }
          fVar20 = *(float *)(param_1 + 0xbb4);
          piVar11[0xcd] =
               (int)(local_40 + ((local_48 + *(float *)(param_1 + 0xbb0)) - local_40) * fVar22);
          piVar11[0xce] = (int)(local_4c + ((local_3c + fVar20) - local_4c) * fVar22);
          piVar11[0x2ec] = *(int *)(param_1 + 0xbb0);
          piVar11[0x2ed] = *(int *)(param_1 + 0xbb4);
          piVar11[0x2ee] = *(int *)(param_1 + 3000);
          piVar11[0x2ef] = *(int *)(param_1 + 0xbbc);
          piVar11[0x2f1] = *(int *)(param_1 + 0xbc4);
          cVar6 = FUN_00813360(piVar11 + 0xcf,0xc3480000);
          if (cVar6 == '\0') {
            (**(code **)(*piVar11 + 0x28))();
          }
        }
        local_44 = (float)((int)local_44 + 1);
        iVar10 = (int)local_50;
      } while ((uint)local_44 < (uint)local_5c);
    }
    FUN_004b3950();
    FUN_004b3950();
    local_8 = 0xffffffff;
    if (local_68[0] == '\0') {
      if (DAT_00c7de78 == 0) {
        puVar18 = &DAT_00c7f618;
      }
      else {
        puVar18 = (uint *)(DAT_00c7de78 + 0x30);
      }
      if (local_64 != 0) {
        uVar3 = *(uint *)(local_64 + -4);
        uVar7 = *puVar18;
        *puVar18 = *puVar18 - uVar3;
        puVar18[1] = puVar18[1] - (uint)(uVar7 < uVar3);
        free((void *)(local_64 + -4));
      }
      local_8 = 0xffffffff;
    }
  }
  local_50 = (((*(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c)) +
              *(float *)(param_1 + 3000)) - *(float *)(param_1 + 0x360)) * DAT_00baa1f8 +
             *(float *)(param_1 + 0x360);
  *(float *)(param_1 + 0x360) = local_50;
  local_4c = (((*(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340)) +
              *(float *)(param_1 + 0xbbc)) - *(float *)(param_1 + 0x364)) * DAT_00baa1f8 +
             *(float *)(param_1 + 0x364);
  *(float *)(param_1 + 0x364) = local_4c;
  fVar20 = local_4c * local_4c + local_50 * local_50;
  if ((DAT_00baa9d0 < fVar20) && (FUN_00435a50(), 0.0 < fVar20)) {
    fVar20 = DAT_00baa81c / fVar20;
    *(float *)(param_1 + 0x364) = fVar20 * local_4c;
    *(float *)(param_1 + 0x360) = fVar20 * local_50;
  }
  fVar22 = DAT_00baa454;
  fVar20 = *(float *)(param_1 + 0x39c);
  bVar19 = NAN(DAT_00baa454);
  bVar5 = fVar20 == DAT_00baa454;
  fVar21 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  *(float *)(param_1 + 0x36c) = fVar21;
  fVar22 = fVar22 / fVar21;
  if ((NAN(fVar20) || bVar19) == bVar5) {
    fVar22 = fVar22 / ((fVar20 + fVar22) - fVar20 * fVar22);
  }
  *(float *)(param_1 + 0x364) = fVar22 * *(float *)(param_1 + 0x364);
  *(float *)(param_1 + 0x360) = fVar22 * *(float *)(param_1 + 0x360);
  ppbVar4 = *(byte ***)(param_1 + 0x7c);
  if (ppbVar4 != (byte **)0x0) {
    ppbVar15 = ppbVar4;
    if (&DAT_0000000f < ppbVar4[5]) {
      ppbVar15 = (byte **)*ppbVar4;
    }
    pbVar17 = &DAT_00b1de04;
    do {
      bVar1 = *(byte *)ppbVar15;
      bVar19 = bVar1 < *pbVar17;
      if (bVar1 != *pbVar17) {
LAB_004bfc45:
        uVar7 = -(uint)bVar19 | 1;
        goto LAB_004bfc4a;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar15 + 1);
      bVar19 = bVar1 < pbVar17[1];
      if (bVar1 != pbVar17[1]) goto LAB_004bfc45;
      ppbVar15 = (byte **)((int)ppbVar15 + 2);
      pbVar17 = pbVar17 + 2;
    } while (bVar1 != 0);
    uVar7 = 0;
LAB_004bfc4a:
    if ((uVar7 == 0) && ((*(byte *)(ppbVar4 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
    goto LAB_004bfc81;
  }
  cVar6 = FUN_0040a5d0(&DAT_00b1de04,1);
  if (cVar6 != '\0') {
    FUN_0040a1b0();
    *(undefined *)(param_1 + 0x8c) = 1;
  }
LAB_004bfc81:
  *(float *)(param_1 + 0x334) = DAT_00c7b640;
  *(float *)(param_1 + 0x338) = DAT_00c7b644;
  if ((*(int *)(param_1 + 0x188) == 2) &&
     ((iVar10 == 0 ||
      (fVar21 = *(float *)(iVar10 + 0x340) - *(float *)(param_1 + 0x340),
      fVar22 = *(float *)(iVar10 + 0x33c) - *(float *)(param_1 + 0x33c),
      fVar20 = *(float *)(param_1 + 0x370) + *(float *)(iVar10 + 0x370),
      fVar20 * fVar20 < fVar21 * fVar21 + fVar22 * fVar22)))) {
    *(undefined4 *)(param_1 + 0x188) = 4;
  }
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

