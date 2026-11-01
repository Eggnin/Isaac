/* Local J460 decompiler output.
 * VA: 0x00540df0
 * Entry: 00540df0
 * Dispatcher: 0x006c2990
 * Types: 281
 * Identities: 281.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00540e64; instructions=33
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=281; identities=281.0.0; dispatcher=0x006c2990;
   end=0x00540e64; instructions=33 */

void __fastcall AI_00540df0(int *param_1)

{
  byte bVar1;
  int *piVar2;
  byte **ppbVar3;
  code *pcVar4;
  char cVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  int *piVar9;
  int iVar10;
  float *pfVar11;
  byte **ppbVar12;
  byte *pbVar13;
  uint *puVar14;
  bool bVar15;
  float fVar16;
  int **ppiVar17;
  int **ppiVar18;
  float fVar19;
  char local_40 [4];
  int local_3c;
  uint local_34;
  char local_30 [4];
  int local_2c;
  float local_28;
  float local_24;
  int **local_20;
  int **local_1c;
  float local_18;
  float local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af48bd;
  local_10 = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  if (param_1[0x2d9] == 0) {
    if (param_1[0xef] == 0) {
      local_14 = 5.605194e-45;
      do {
        uVar7 = param_1[0xf7];
        if (uVar7 == 0) {
          FUN_00a112c0(0x10,"RNG Seed is zero!\n",uVar6);
          uVar7 = param_1[0xf7];
          if (uVar7 == 0) {
            pcVar4 = (code *)swi(3);
            (*pcVar4)();
            return;
          }
        }
        uVar7 = uVar7 >> ((byte)param_1[0xf8] & 0x1f) ^ uVar7;
        uVar7 = uVar7 << ((byte)param_1[0xf9] & 0x1f) ^ uVar7;
        uVar7 = uVar7 >> ((byte)param_1[0xfa] & 0x1f) ^ uVar7;
        param_1[0xf7] = uVar7;
        iVar10 = param_1[0xc];
        iVar8 = FUN_006eef60();
        fVar16 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa704;
        local_20 = (int **)(fVar16 + fVar16);
        ppiVar17 = local_20;
        FUN_0041d520();
        local_1c = ppiVar17;
        ppiVar17 = local_20;
        FUN_0041d540();
        local_28 = (float)ppiVar17 * DAT_00baa81c + (float)param_1[0xcf];
        local_24 = (float)local_1c * DAT_00baa81c + (float)param_1[0xd0];
        piVar9 = (int *)FUN_00428b20(param_1[10],param_1[0xb],&local_28,&DAT_00c7b640,param_1,iVar10
                                     ,uVar7);
        ppiVar17 = (int **)(piVar9 + 0xef);
        if (piVar9[0xef] != 0) {
          local_20 = ppiVar17;
          FUN_004cf210(&local_20);
        }
        *ppiVar17 = param_1;
        FUN_004cdcf0(ppiVar17);
        (**(code **)(*piVar9 + 0xc))();
        local_14 = (float)((int)local_14 + -1);
      } while (local_14 != 0.0);
    }
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
  }
  if (param_1[0x3c7] != -1) {
    if ((param_1[0xef] != 0) &&
       (iVar10 = __RTDynamicCast(param_1[0xef],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                 &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
       iVar10 == 0)) {
      FUN_00a112c0(0x10,"m_Parent invalid downcast\n");
    }
    if (param_1[0xef] != 0) {
      iVar10 = __RTDynamicCast(param_1[0xef],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                               &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
      if (iVar10 == 0) {
        FUN_00a112c0(0x10,"m_Parent invalid downcast\n");
      }
      FUN_006d88b0(param_1[0xef]);
    }
  }
  iVar10 = FUN_009be530(DAT_00c71678 + 0x1baa8,param_1[0xfb]);
  if ((iVar10 != 0) && (*(char *)((int)param_1 + 0x173) == '\0')) {
    param_1[0x62] = 0;
    FUN_009e5c00(param_1);
    (**(code **)(*param_1 + 0x28))();
    FUN_007599d0(1,param_1 + 0xcf,0);
    ExceptionList = local_10;
    return;
  }
  iVar10 = FUN_009be080(9,DAT_00c71678 + 0x1baa8,1);
  if ((iVar10 != 0) && ((param_1[0x5a] & 0x20000000U) == 0)) {
    FUN_006c0f30(0xd,0,0,0xffffffff);
    iVar10 = DAT_00c7b640;
    param_1[0x2ee] = DAT_00c7b640;
    iVar8 = DAT_00c7b644;
    param_1[0x2ef] = DAT_00c7b644;
    param_1[0x2ec] = iVar10;
    param_1[0x2ed] = iVar8;
    ExceptionList = local_10;
    return;
  }
  if (param_1[0x2d9] == 0) {
    param_1[0x2d9] = 4;
    ExceptionList = local_10;
    return;
  }
  if ((param_1[0x5b] & 0x8000U) != 0) {
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
  }
  if ((param_1[0xef] == 0) && (*(char *)((int)param_1 + 0x173) != '\0')) {
    piVar9 = (int *)0x0;
    AI_0041af60(local_30,param_1[10],param_1[0xb],0xffffffff,1,0);
    fVar16 = 0.0;
    local_8 = 0;
    iVar10 = local_2c;
    if (local_24 != 0.0) {
      do {
        piVar2 = *(int **)(iVar10 + (int)fVar16 * 4);
        if ((piVar2 != param_1) && ((int *)piVar2[0xef] == param_1)) {
          local_1c = (int **)(piVar2 + 0xef);
          if ((int *)piVar2[0xef] != (int *)0x0) {
            local_20 = local_1c;
            FUN_004cf210(&local_20);
            iVar10 = local_2c;
          }
          *local_1c = piVar9;
          if (piVar9 == (int *)0x0) {
            piVar9 = *(int **)(iVar10 + (int)fVar16 * 4);
          }
          else {
            FUN_004cdcf0(local_1c);
            iVar10 = local_2c;
          }
        }
        fVar16 = (float)((int)fVar16 + 1);
      } while ((uint)fVar16 < (uint)local_24);
      if (piVar9 != (int *)0x0) {
        iVar10 = param_1[0xce];
        piVar9[0xcd] = param_1[0xcd];
        piVar9[0xce] = iVar10;
        if (param_1[0x3c7] != -1) {
          FUN_006d88b0(piVar9);
        }
      }
    }
    local_8 = 0xffffffff;
    if (local_30[0] == '\0') {
      local_8 = 1;
      FUN_00a648b0(0,0);
      local_8 = 0xffffffff;
    }
  }
  if (param_1[0x2d9] == 4) {
    param_1[0xd9] = (int)((float)param_1[0xe7] * (float)param_1[0x2ed] + (float)param_1[0xd9]);
    param_1[0xd8] = (int)((float)param_1[0xe7] * (float)param_1[0x2ec] + (float)param_1[0xd8]);
    local_1c = (int **)param_1[0xcd];
    iVar10 = param_1[0xef];
    local_20 = (int **)param_1[0xce];
    if (iVar10 == 0) {
      if (param_1[0x3c7] == -1) {
        pfVar11 = (float *)FUN_006bec40(&local_28,0);
        local_14 = *pfVar11 - (float)param_1[0xcf];
        local_18 = pfVar11[1] - (float)param_1[0xd0];
        fVar19 = local_14 * local_14 + local_18 * local_18;
        FUN_00435a50();
        fVar16 = local_14;
        if (0.0 < fVar19) {
          local_18 = (DAT_00baa784 / fVar19) * local_18;
          fVar16 = (DAT_00baa784 / fVar19) * local_14;
        }
        param_1[0xce] = (int)((float)param_1[0xe7] * local_18 + (float)param_1[0xce]);
        param_1[0xcd] = (int)((float)param_1[0xe7] * fVar16 + (float)param_1[0xcd]);
      }
      else {
        pfVar11 = (float *)FUN_006d82d0(&local_28);
        fVar16 = pfVar11[1] * DAT_00baa7a4;
        param_1[0xcd] = (int)((float)param_1[0xe7] * *pfVar11 * DAT_00baa7a4 + (float)param_1[0xcd])
        ;
        param_1[0xce] = (int)((float)param_1[0xe7] * fVar16 + (float)param_1[0xce]);
      }
    }
    else {
      local_1c = *(int ***)(iVar10 + 0x334);
      local_20 = *(int ***)(iVar10 + 0x338);
    }
    uVar6 = param_1[8];
    fVar16 = DAT_00baad50;
    if ((uVar6 & 1) == 0) {
      fVar16 = DAT_00baa454;
    }
    local_18 = ((float)(*(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca]) * fVar16 * DAT_00baa784 +
               (float)((double)uVar6 + (double)(&DAT_00bacb00)[-((int)uVar6 >> 0x1f)]) *
               DAT_00baa8a0) * DAT_00baa088;
    fVar16 = local_18;
    FUN_0041d520();
    local_24 = fVar16;
    iVar10 = FUN_006eef60();
    local_14 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa3a4;
    fVar16 = local_18;
    FUN_0041d540();
    fVar19 = ((float)local_20 - (float)param_1[0xd0]) * DAT_00baa0a0;
    param_1[0x2ec] =
         (int)(((float)local_1c - (float)param_1[0xcf]) * DAT_00baa0a0 + fVar16 * local_14);
    param_1[0x2ed] = (int)(fVar19 + local_14 * local_24);
    FUN_0041a790(local_40,param_1 + 0xcf,8);
    uVar6 = 0;
    iVar10 = local_3c;
    if (local_34 != 0) {
      do {
        iVar8 = *(int *)(iVar10 + uVar6 * 4);
        if ((uint)param_1[8] <= *(uint *)(iVar8 + 0x20)) {
          local_20 = (int **)((float)param_1[0xcf] - *(float *)(iVar8 + 0x33c));
          local_1c = (int **)((float)param_1[0xd0] - *(float *)(iVar8 + 0x340));
          fVar16 = (float)local_20 * (float)local_20 + (float)local_1c * (float)local_1c;
          FUN_00435a50();
          ppiVar17 = local_20;
          ppiVar18 = local_1c;
          if (0.0 < fVar16) {
            fVar16 = ((DAT_00baa454 - fVar16 / DAT_00baa924) * DAT_00baa380) / fVar16;
            ppiVar17 = (int **)((float)local_20 * fVar16);
            ppiVar18 = (int **)((float)local_1c * fVar16);
          }
          param_1[0xd9] = (int)((float)param_1[0xe7] * (float)ppiVar18 + (float)param_1[0xd9]);
          param_1[0xd8] = (int)((float)param_1[0xe7] * (float)ppiVar17 + (float)param_1[0xd8]);
          *(float *)(iVar8 + 0x360) = *(float *)(iVar8 + 0x360) - (float)ppiVar17;
          *(float *)(iVar8 + 0x364) = *(float *)(iVar8 + 0x364) - (float)ppiVar18;
          iVar10 = local_3c;
        }
        uVar6 = uVar6 + 1;
      } while (uVar6 < local_34);
    }
    if ((param_1[0xef] == 0) && (uVar6 = 0, local_34 != 0)) {
      do {
        iVar10 = *(int *)(local_3c + uVar6 * 4);
        if (*(int *)(iVar10 + 0x3bc) == 0) {
          local_24 = (float)param_1[0xcd];
          local_1c = (int **)((float)param_1[0xce] - *(float *)(iVar10 + 0x338));
          local_20 = (int **)(local_24 - *(float *)(iVar10 + 0x334));
          fVar16 = (float)local_20 * (float)local_20 + (float)local_1c * (float)local_1c;
          if (fVar16 < DAT_00baac34) {
            FUN_00435a50();
            ppiVar17 = local_20;
            ppiVar18 = local_1c;
            if (0.0 < fVar16) {
              fVar16 = ((DAT_00baa454 - fVar16 / DAT_00baa9d0) * DAT_00baa2d0) / fVar16;
              ppiVar17 = (int **)((float)local_20 * fVar16);
              ppiVar18 = (int **)((float)local_1c * fVar16);
            }
            param_1[0xce] = (int)((float)ppiVar18 + (float)param_1[0xce]);
            param_1[0xcd] = (int)(local_24 + (float)ppiVar17);
          }
        }
        uVar6 = uVar6 + 1;
      } while (uVar6 < local_34);
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    if (local_40[0] == '\0') {
      if (DAT_00c7de78 == 0) {
        puVar14 = &DAT_00c7f618;
      }
      else {
        puVar14 = (uint *)(DAT_00c7de78 + 0x30);
      }
      if (local_3c != 0) {
        uVar7 = *(uint *)(local_3c + -4);
        uVar6 = *puVar14;
        *puVar14 = *puVar14 - uVar7;
        puVar14[1] = puVar14[1] - (uint)(uVar6 < uVar7);
        free((void *)(local_3c + -4));
      }
      local_8 = 0xffffffff;
    }
  }
  ppbVar3 = (byte **)param_1[0x1f];
  if (ppbVar3 != (byte **)0x0) {
    ppbVar12 = ppbVar3;
    if (&DAT_0000000f < ppbVar3[5]) {
      ppbVar12 = (byte **)*ppbVar3;
    }
    pbVar13 = &DAT_00b1de04;
    do {
      bVar1 = *(byte *)ppbVar12;
      bVar15 = bVar1 < *pbVar13;
      if (bVar1 != *pbVar13) {
LAB_005417a0:
        uVar6 = -(uint)bVar15 | 1;
        goto LAB_005417a5;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar12 + 1);
      bVar15 = bVar1 < pbVar13[1];
      if (bVar1 != pbVar13[1]) goto LAB_005417a0;
      ppbVar12 = (byte **)((int)ppbVar12 + 2);
      pbVar13 = pbVar13 + 2;
    } while (bVar1 != 0);
    uVar6 = 0;
LAB_005417a5:
    if ((uVar6 == 0) && ((*(byte *)(ppbVar3 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
    goto LAB_005417d8;
  }
  cVar5 = FUN_0040a5d0(&DAT_00b1de04,1);
  if (cVar5 != '\0') {
    FUN_0040a1b0();
    *(undefined *)(param_1 + 0x23) = 1;
  }
LAB_005417d8:
  *(bool *)(param_1 + 0x52) = 0.0 < (float)param_1[0xd8];
  ExceptionList = local_10;
  return;
}

