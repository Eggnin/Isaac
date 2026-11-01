/* Local J460 decompiler output.
 * VA: 0x0054ad80
 * Entry: 0054ad80
 * Dispatcher: 0x006c2990
 * Types: 868
 * Identities: 868.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0054bca0; instructions=980
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=868; identities=868.0.0; dispatcher=0x006c2990;
   end=0x0054bca0; instructions=980 */

void __fastcall AI_0054ad80(int *param_1)

{
  undefined4 uVar1;
  bool bVar2;
  bool bVar3;
  char cVar4;
  uint uVar5;
  float *pfVar6;
  int iVar7;
  int iVar8;
  int *piVar9;
  int *piVar10;
  int iVar11;
  int *piVar12;
  bool bVar13;
  float fVar14;
  int **ppiVar15;
  int **ppiVar16;
  float fVar17;
  undefined8 uVar18;
  char local_38 [4];
  int local_34;
  float local_30;
  int *local_2c;
  int **local_24;
  int **local_20;
  int *local_1c;
  float local_18;
  float local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af4a55;
  local_10 = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  local_14 = *(float *)(DAT_00c71678 + 0x18300);
  iVar8 = DAT_00c71678 + 0x1baa8;
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  iVar8 = FUN_009be080(9,iVar8,1);
  if ((iVar8 != 0) && ((param_1[0x5a] & 0x20000000U) == 0)) {
    FUN_006c0f30(0xd,0,0,0xffffffff);
    fVar14 = DAT_00c7b640;
    param_1[0x2ee] = (int)DAT_00c7b640;
    fVar17 = DAT_00c7b644;
    param_1[0x2ef] = (int)DAT_00c7b644;
    param_1[0x2ec] = (int)fVar14;
    param_1[0x2ed] = (int)fVar17;
    ExceptionList = local_10;
    return;
  }
  iVar8 = FUN_009be530(DAT_00c71678 + 0x1baa8,param_1[0xfb]);
  if ((iVar8 != 0) && (*(char *)((int)param_1 + 0x173) == '\0')) {
    FUN_009e5c00(param_1);
    (**(code **)(*param_1 + 0x28))();
    FUN_007599d0(1,param_1 + 0xcf,0);
    ExceptionList = local_10;
    return;
  }
  if (param_1[0x3c7] != -1) {
    if (param_1[0xef] == 0) {
      if ((*(char *)((int)param_1 + 0x173) != '\0') && (iVar8 = FUN_004567e0(uVar5), iVar8 != 0)) {
        FUN_004567e0(uVar5);
        for (iVar8 = FUN_004567e0(); iVar8 != 0; iVar8 = *(int *)(iVar8 + 0x3c0)) {
          if (*(char *)(iVar8 + 0x173) == '\0') goto LAB_0054af68;
          iVar7 = *(int *)(iVar8 + 0x3c0);
          if ((iVar7 != 0) &&
             (iVar7 = __RTDynamicCast(iVar7,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                      &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
             iVar7 == 0)) {
            FUN_00a112c0(0x10,"m_Child invalid downcast\n");
          }
        }
      }
    }
    else {
      iVar8 = FUN_006a8990();
      if ((iVar8 != 0) &&
         (((1 < *(int *)(DAT_00c71678 + 0x26614) && (*(int *)(iVar8 + 0x28) == 1)) ||
          (*(int *)(iVar8 + 0x28) - 10U < 0x3de)))) {
LAB_0054af68:
        FUN_006d88b0(iVar8);
      }
    }
  }
  if (param_1[0x2d9] == 0) {
    param_1[799] = param_1[8];
    AI_0041af60(local_38,param_1[10],param_1[0xb],0xffffffff,0,0);
    local_8 = 0;
    iVar8 = local_34;
    piVar9 = local_2c;
joined_r0x0054b928:
    piVar9 = (int *)((int)piVar9 + -1);
    local_1c = piVar9;
    if (-1 < (int)piVar9) {
      piVar10 = *(int **)(iVar8 + (int)piVar9 * 4);
      if (((piVar10 != param_1) && ((int *)piVar10[0xef] != param_1)) && (piVar10[0xf0] == 0)) {
        fVar14 = ((float)param_1[0xd0] - (float)piVar10[0xd0]) *
                 ((float)param_1[0xd0] - (float)piVar10[0xd0]) +
                 ((float)param_1[0xcf] - (float)piVar10[0xcf]) *
                 ((float)param_1[0xcf] - (float)piVar10[0xcf]);
        FUN_00435a50();
        iVar8 = local_34;
        if (fVar14 < DAT_00baa908) {
          bVar2 = true;
          piVar12 = piVar10;
          do {
            if (!bVar2) goto joined_r0x0054b928;
            bVar13 = piVar12 != param_1;
            piVar12 = (int *)piVar12[0xef];
            bVar3 = false;
            if (bVar13) {
              bVar3 = bVar2;
            }
            bVar2 = bVar3;
          } while (piVar12 != (int *)0x0);
          if (bVar2) {
            ppiVar16 = (int **)(param_1 + 0xef);
            if (param_1[0xef] != 0) {
              local_24 = ppiVar16;
              FUN_004cf210(&local_24);
            }
            *ppiVar16 = piVar10;
            FUN_004cdcf0(ppiVar16);
            iVar8 = local_34;
            piVar9 = local_1c;
          }
        }
      }
      goto joined_r0x0054b928;
    }
    if (local_38[0] == '\0') {
      local_8 = 1;
      FUN_00a648b0(0,0);
    }
    local_8 = 0xffffffff;
    if (param_1[0xef] != 0) {
      iVar8 = __RTDynamicCast(param_1[0xef],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                              &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
      if (iVar8 == 0) {
        FUN_00a112c0(0x10,"m_Parent invalid downcast\n");
      }
      local_20 = (int **)param_1[0xef];
      ppiVar16 = local_20 + 0xf0;
      if (local_20[0xf0] != (int *)0x0) {
        local_24 = ppiVar16;
        FUN_004cf210(&local_24);
      }
      *ppiVar16 = param_1;
      FUN_004cdcf0(ppiVar16);
      piVar10 = (int *)param_1[0xef];
      piVar9 = param_1;
      while (piVar12 = piVar10, piVar12 != (int *)0x0) {
        piVar9 = piVar12;
        piVar10 = (int *)piVar12[0xef];
      }
      piVar10 = piVar9 + 8;
      do {
        piVar9[799] = *piVar10;
        piVar12 = (int *)piVar9[0xf0];
        if ((piVar12 != (int *)0x0) &&
           (iVar8 = __RTDynamicCast(piVar12,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                    &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
           iVar8 == 0)) {
          FUN_00a112c0(0x10,"m_Child invalid downcast\n");
        }
        piVar9 = (int *)piVar9[0xf0];
      } while (piVar9 != (int *)0x0);
      FUN_00499190(param_1 + 0xcf);
    }
    param_1[0x2d9] = 4;
    param_1[0x2f0] = -1;
    param_1[0x2f1] = 10;
    goto LAB_0054bb27;
  }
  if (param_1[0x2d9] != 4) goto LAB_0054bb27;
  FUN_0040a380(&DAT_00b1de04,0);
  FUN_006d7df0(1);
  piVar9 = param_1 + 0xef;
  if (param_1[0xef] != 0) {
    if ((param_1[0x5a] & 0x220U) == 0) goto LAB_0054bb27;
    piVar10 = (int *)(param_1[0xef] + 0x3c0);
    if (*piVar10 != 0) {
      local_1c = piVar10;
      FUN_004cf210(&local_1c);
    }
    *piVar10 = 0;
    if (*piVar9 != 0) {
      local_1c = piVar9;
      FUN_004cf210(&local_1c);
    }
    *piVar9 = 0;
    piVar10 = param_1;
    do {
      piVar10[799] = param_1[8];
      piVar12 = (int *)piVar10[0xf0];
      if ((piVar12 != (int *)0x0) &&
         (iVar8 = __RTDynamicCast(piVar12,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                  &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
         iVar8 == 0)) {
        FUN_00a112c0(0x10,"m_Child invalid downcast\n");
      }
      piVar10 = (int *)piVar10[0xf0];
    } while (piVar10 != (int *)0x0);
    if (*piVar9 != 0) goto LAB_0054bb27;
  }
  if (param_1[0x2f0] < 0) {
    iVar8 = param_1[0xf0];
    if (iVar8 == 0) {
      uVar5 = FUN_006eef60();
    }
    else {
      local_30 = (float)param_1[0xcf] - *(float *)(iVar8 + 0x33c);
      local_2c = (int *)((float)param_1[0xd0] - *(float *)(iVar8 + 0x340));
      FUN_006eef60();
      uVar18 = FUN_0067f260();
      uVar5 = (int)uVar18 + -1 + (int)((ulonglong)uVar18 >> 0x20);
    }
    param_1[0x2f0] = uVar5 & 3;
  }
  if (((param_1[0x3c7] == -1) && (cVar4 = FUN_006ac710(4,0), cVar4 != '\0')) &&
     (uVar5 = FUN_006eef60(), (uVar5 & 7) == 0)) {
    FUN_0041a790(local_38,param_1 + 0xcf,8);
    local_8 = 2;
    piVar9 = (int *)0x0;
    if (local_2c != (int *)0x0) {
      iVar8 = param_1[0xb];
      do {
        iVar7 = *(int *)(local_34 + (int)piVar9 * 4);
        if ((*(int *)(iVar7 + 0x28) == param_1[10]) &&
           ((iVar8 == -1 || (*(int *)(iVar7 + 0x2c) == iVar8)))) {
          if ((*(int *)(iVar7 + 0xc7c) != param_1[799]) &&
             (piVar10 = param_1, *(int *)(iVar7 + 0x3c0) == 0)) goto LAB_0054b182;
          iVar8 = param_1[0xb];
        }
        piVar9 = (int *)((int)piVar9 + 1);
      } while (piVar9 < local_2c);
    }
    goto LAB_0054b24d;
  }
LAB_0054b2a6:
  if (param_1[0x2f1] < 1) {
    iVar8 = FUN_006be840();
    local_20 = (int **)(*(float *)(iVar8 + 0x340) - (float)param_1[0xd0]);
    local_24 = (int **)(*(float *)(iVar8 + 0x33c) - (float)param_1[0xcf]);
    fVar14 = (float)local_20 * (float)local_20 + (float)local_24 * (float)local_24;
    FUN_00435a50();
    if ((DAT_00baab98 < fVar14) || ((param_1[0x5a] & 0x200U) != 0)) {
      uVar5 = FUN_006eef60();
      if ((uVar5 % 5 == 0) || (cVar4 = FUN_00417430(0x200,0), cVar4 != '\0')) {
        pfVar6 = (float *)FUN_0067f1d0();
        local_2c = (int *)(pfVar6[1] * DAT_00baa904 + (float)param_1[0xd0]);
        local_30 = *pfVar6 * DAT_00baa904 + (float)param_1[0xcf];
        iVar8 = FUN_007f0780(local_30,local_2c);
        pfVar6 = (float *)FUN_0067f1d0();
        local_2c = (int *)(pfVar6[1] * DAT_00baa904 + (float)param_1[0xd0]);
        local_30 = *pfVar6 * DAT_00baa904 + (float)param_1[0xcf];
        local_24 = (int **)FUN_007f0780(local_30,local_2c);
        uVar5 = FUN_006eef60();
        if ((((uVar5 & 1) == 0) || (iVar8 == 4)) && (local_24 != (int **)&DAT_00000004)) {
          uVar5 = param_1[0x2f0] + 3;
        }
        else {
          uVar5 = param_1[0x2f0] + 1;
        }
        uVar5 = uVar5 & 0x80000003;
        if ((int)uVar5 < 0) {
          uVar5 = (uVar5 - 1 | 0xfffffffc) + 1;
        }
        param_1[0x2f0] = uVar5;
        uVar5 = FUN_006eef60();
        param_1[0x2f1] = uVar5 % 0xf + 8;
      }
    }
    else {
      uVar5 = FUN_006eef60();
      if (uVar5 % 3 == 0) {
        iVar8 = 3;
        local_18 = (float)param_1[0x2f0];
        local_1c = DAT_00baaea4;
        do {
          fVar14 = (float)(param_1[0x2f0] + iVar8 & 0x80000003);
          if ((int)fVar14 < 0) {
            fVar14 = (float)(((int)fVar14 - 1U | 0xfffffffc) + 1);
          }
          FUN_0067f1d0();
          fVar17 = ((local_30 * DAT_00baa904 + (float)param_1[0xcf]) - DAT_00baa904) / DAT_00baa904
                   + DAT_00baa2d0;
          iVar11 = (int)fVar17;
          iVar7 = (int)((((float)local_2c * DAT_00baa904 + (float)param_1[0xd0]) - DAT_00baaa00) /
                        DAT_00baa904 + DAT_00baa2d0);
          if (((iVar11 < 0) || (*(int *)((int)local_14 + 0xc) <= iVar11)) ||
             ((iVar7 < 0 || (*(int *)((int)local_14 + 0x10) <= iVar7)))) {
            iVar7 = -1;
          }
          else {
            iVar7 = iVar7 * *(int *)((int)local_14 + 0xc) + (int)fVar17;
          }
          iVar7 = FUN_007f0800(iVar7);
          if ((iVar7 != 4) &&
             (piVar9 = (int *)((float)local_20 * (float)local_2c + (float)local_24 * local_30),
             (float)local_1c < (float)piVar9)) {
            local_1c = piVar9;
            local_18 = fVar14;
          }
          iVar8 = iVar8 + 1;
        } while (iVar8 < 6);
        if (local_18 != (float)param_1[0x2f0]) {
          param_1[0x2f0] = (int)local_18;
          uVar5 = FUN_006eef60();
          iVar8 = uVar5 % 0xf + 8;
          goto LAB_0054b2c4;
        }
      }
    }
  }
  else {
    iVar8 = param_1[0x2f1] - ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
LAB_0054b2c4:
    param_1[0x2f1] = iVar8;
  }
  if (param_1[0x3c7] == -1) {
    uVar5 = param_1[0x2f0];
    fVar14 = DAT_00c7b640;
    fVar17 = DAT_00c7b644;
    if (uVar5 < 4) {
                    /* WARNING: Load size is inaccurate */
      if ((*(int *)(*ThreadLocalStoragePointer + 0xc) < DAT_00c80020) &&
         (FUN_00aef29d(&DAT_00c80020), DAT_00c80020 == -1)) {
        _DAT_00c80024 = _DAT_00bacb90;
        _DAT_00c80028 = _UNK_00bacb94;
        uRam00c8002c = _UNK_00bacb98;
        uRam00c80030 = _UNK_00bacb9c;
        _DAT_00c80034 = _DAT_00babfb0;
        uRam00c80038 = _UNK_00babfb4;
        uRam00c8003c = _UNK_00babfb8;
        uRam00c80040 = _UNK_00babfbc;
        FUN_00aef253(&DAT_00c80020);
      }
      fVar14 = *(float *)(&DAT_00c80024 + uVar5 * 8);
      fVar17 = *(float *)(&DAT_00c80028 + uVar5 * 8);
    }
    local_30 = fVar14 * DAT_00baa904 + (float)param_1[0xcf];
    local_2c = (int *)(fVar17 * DAT_00baa904 + (float)param_1[0xd0]);
    local_18 = fVar14;
    local_14 = fVar17;
    iVar8 = FUN_007f0780(local_30,local_2c);
    if (iVar8 == 4) {
      pfVar6 = (float *)FUN_0067f1d0();
      local_30 = *pfVar6 * DAT_00baa904 + (float)param_1[0xcf];
      local_2c = (int *)(pfVar6[1] * DAT_00baa904 + (float)param_1[0xd0]);
      iVar8 = FUN_007f0780(local_30,local_2c);
      pfVar6 = (float *)FUN_0067f1d0();
      local_30 = *pfVar6 * DAT_00baa904 + (float)param_1[0xcf];
      local_2c = (int *)(pfVar6[1] * DAT_00baa904 + (float)param_1[0xd0]);
      iVar7 = FUN_007f0780(local_30,local_2c);
      uVar5 = FUN_006eef60();
      if ((((uVar5 & 1) == 0) || (iVar8 == 4)) && (iVar7 != 4)) {
        uVar5 = param_1[0x2f0] + 3;
      }
      else {
        uVar5 = param_1[0x2f0] + 1;
      }
      uVar5 = uVar5 & 0x80000003;
      if ((int)uVar5 < 0) {
        uVar5 = (uVar5 - 1 | 0xfffffffc) + 1;
      }
      param_1[0x2f0] = uVar5;
    }
    if ((param_1[0x5a] & 0x200U) == 0) {
      fVar14 = ((float)(*(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca]) * DAT_00baa708) /
               DAT_00baa81c;
      FUN_0041d520();
      ppiVar15 = (int **)(fVar14 * DAT_00baa87c * DAT_00baa088);
      local_24 = ppiVar15;
      FUN_0041d540();
      ppiVar16 = local_24;
      local_20 = ppiVar15;
      FUN_0041d520();
      fVar14 = (local_18 * (float)local_20 - local_14 * (float)ppiVar16) * DAT_00baa554 *
               (float)param_1[0xe7];
      fVar17 = (local_14 * (float)local_20 + local_18 * (float)ppiVar16) * DAT_00baa554 *
               (float)param_1[0xe7];
    }
    else {
      fVar14 = ((float)(*(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca]) * DAT_00baa708) /
               DAT_00baa81c;
      FUN_0041d520();
      ppiVar15 = (int **)(fVar14 * DAT_00baa904 * DAT_00baa088);
      local_24 = ppiVar15;
      FUN_0041d540();
      ppiVar16 = local_24;
      local_20 = ppiVar15;
      FUN_0041d520();
      fVar14 = (local_18 * (float)local_20 - local_14 * (float)ppiVar16) * DAT_00baa554 *
               DAT_00baa304 * (float)param_1[0xe7];
      fVar17 = (local_14 * (float)local_20 + local_18 * (float)ppiVar16) * DAT_00baa554 *
               DAT_00baa304 * (float)param_1[0xe7];
    }
    param_1[0xd8] = (int)(fVar14 + (float)param_1[0xd8]);
    param_1[0xd9] = (int)(fVar17 + (float)param_1[0xd9]);
  }
  else {
    FUN_007e5340(0x3fcccccd,0);
  }
LAB_0054bb27:
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[0xf0] != 0)) {
    iVar8 = __RTDynamicCast(param_1[0xf0],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                            &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
    if (iVar8 == 0) {
      FUN_00a112c0(0x10,"m_Child invalid downcast\n");
    }
    FUN_007e3260();
    if ((param_1[0xf0] != 0) &&
       (iVar8 = __RTDynamicCast(param_1[0xf0],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
       iVar8 == 0)) {
      FUN_00a112c0(0x10,"m_Child invalid downcast\n");
    }
    iVar8 = param_1[0xf0];
    uVar1 = *(undefined4 *)(iVar8 + 0xc7c);
    if ((iVar8 != 0) &&
       (iVar8 = __RTDynamicCast(iVar8,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
       iVar8 == 0)) {
      FUN_00a112c0(0x10,"m_Child invalid downcast\n");
    }
    for (iVar8 = param_1[0xf0]; iVar8 != 0; iVar8 = *(int *)(iVar8 + 0x3c0)) {
      *(undefined4 *)(iVar8 + 0xc7c) = uVar1;
      iVar7 = *(int *)(iVar8 + 0x3c0);
      if ((iVar7 != 0) &&
         (iVar7 = __RTDynamicCast(iVar7,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                  &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
         iVar7 == 0)) {
        FUN_00a112c0(0x10,"m_Child invalid downcast\n");
      }
    }
  }
  ExceptionList = local_10;
  return;
LAB_0054b182:
  do {
    piVar10[799] = *(int *)(iVar7 + 0xc7c);
    piVar9 = (int *)piVar10[0xf0];
    if ((piVar9 != (int *)0x0) &&
       (iVar8 = __RTDynamicCast(piVar9,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
       iVar8 == 0)) {
      FUN_00a112c0(0x10,"m_Child invalid downcast\n");
    }
    piVar10 = (int *)piVar10[0xf0];
  } while (piVar10 != (int *)0x0);
  piVar9 = param_1 + 0xef;
  if (param_1[0xef] != 0) {
    local_1c = piVar9;
    FUN_004cf210(&local_1c);
  }
  *piVar9 = iVar7;
  FUN_004cdcf0(piVar9);
  if (*(int *)(iVar7 + 0x3c0) != 0) {
    local_1c = (int *)(iVar7 + 0x3c0);
    FUN_004cf210(&local_1c);
  }
  *(int **)(iVar7 + 0x3c0) = param_1;
  FUN_004cdcf0((int **)(iVar7 + 0x3c0));
  FUN_00499380();
  FUN_00499190(param_1 + 0xcf);
LAB_0054b24d:
  local_8 = 0xffffffff;
  if (param_1[0xef] != 0) {
    if (local_38[0] == '\0') {
      local_8 = 3;
      FUN_00a648b0(0,0);
      local_8 = 0xffffffff;
    }
    goto LAB_0054bb27;
  }
  if (local_38[0] == '\0') {
    local_8 = 4;
    FUN_00a648b0(0,0);
    local_8 = 0xffffffff;
  }
  goto LAB_0054b2a6;
}

