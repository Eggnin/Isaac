/* Local J460 decompiler output.
 * VA: 0x0054d250
 * Entry: 0054d250
 * Dispatcher: 0x006c2990
 * Types: 878
 * Identities: 878.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0054eb70; instructions=1488
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=878; identities=878.0.0; dispatcher=0x006c2990;
   end=0x0054eb70; instructions=1488 */

void __fastcall AI_0054d250(int **param_1)

{
  byte bVar1;
  int iVar2;
  undefined *puVar3;
  char cVar4;
  byte **ppbVar5;
  uint uVar6;
  int iVar7;
  float *pfVar8;
  byte **ppbVar9;
  int iVar10;
  int ***pppiVar11;
  int **ppiVar12;
  undefined4 uVar13;
  int *piVar14;
  char *pcVar15;
  int iVar16;
  byte *pbVar17;
  int **ppiVar18;
  int *piVar19;
  byte *pbVar20;
  uint uVar21;
  bool bVar22;
  int **ppiVar23;
  int *piVar24;
  float fVar25;
  float fVar26;
  int **ppiVar27;
  float fVar28;
  undefined4 uVar29;
  undefined4 uVar30;
  undefined4 uVar31;
  undefined local_16c [40];
  int *local_144;
  uint local_140;
  int *local_13c;
  float local_138;
  float local_134;
  uint local_130;
  int **local_12c;
  undefined4 local_128;
  int *local_124;
  char local_120 [4];
  int local_11c;
  int **local_118;
  int **local_114 [2];
  float local_10c;
  int *local_108;
  int *local_104;
  int local_100;
  uint local_fc;
  uint local_f8;
  int local_f4;
  int *local_f0;
  int **local_ec;
  char local_e5;
  int **local_e4;
  int **local_e0;
  int **local_dc;
  int **local_d8;
  int **local_d4;
  undefined local_d0 [44];
  undefined4 local_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 local_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined8 local_84;
  undefined4 local_7c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4a9b;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_12c = param_1;
  if (param_1[0x2d9] != (int *)0x0) {
    puVar3 = &stack0xfffffffc;
    if (param_1[0x2d9] != (int *)0x4) goto LAB_0054e549;
    local_e5 = ((uint)param_1[0x5a] & 0x20000000) != 0;
    local_130 = (uint)(byte)local_e5;
    puVar3 = &stack0xfffffffc;
    if ((param_1[0xef] == (int *)0x0) &&
       (uVar6 = FUN_006eef60(local_24), puVar3 = puStack_20, uVar6 % 0x78 != 0)) {
      FUN_006d6ba0(0x43d,0x3f800000,0x78,0,0x3f800000);
      puVar3 = puStack_20;
    }
    puStack_20 = puVar3;
    if (0 < (int)param_1[0x2e8]) {
      cVar4 = FUN_006ac710(2,0);
      if ((cVar4 != '\0') && (uVar6 = FUN_006eef60(), uVar6 % 3 == 0)) {
        uVar13 = FUN_006eef60();
        piVar14 = (int *)FUN_00428b20(1000,0x1a,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar13);
        if ((piVar14 == (int *)0x0) || (piVar14[10] != 1000)) {
          piVar14 = (int *)0x0;
        }
        if (piVar14[0xef] != 0) {
          local_dc = (int **)(piVar14 + 0xef);
          FUN_004cf210(&local_dc);
        }
        piVar14[0xef] = (int)param_1;
        FUN_004cdcf0(piVar14 + 0xef);
        fVar25 = DAT_00c3793c * DAT_00baa3a4;
        fVar26 = DAT_00c37940 * DAT_00baa3a4;
        piVar14[0x117] = 0x5a;
        piVar14[0x39] = (int)fVar25;
        piVar14[0x118] = 0x5a;
        piVar14[0x3a] = (int)fVar26;
        (**(code **)(*piVar14 + 0xc))();
      }
      uVar6 = FUN_006eef60();
      if (uVar6 % 0xf == 0) {
        iVar7 = FUN_006eef60();
        piVar14 = (int *)FUN_006b64d0((float)((double)iVar7 +
                                             (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                                      DAT_00ba9ff4 * DAT_00baa304 + DAT_00baa1f8);
        (**(code **)(*piVar14 + 0x3c))(param_1 + 0x79,0xffffffff,0xff,0,1);
      }
    }
    if ((int)param_1[0x2f1] < 1) {
      if ((int)param_1[0x2e8] < 1) {
        cVar4 = FUN_006ac710(3,0);
        if ((cVar4 != '\0') && (FUN_0041a790(local_120,param_1 + 0xcf,8), local_120[0] == '\0')) {
          local_14 = 0;
          FUN_00a648b0(0,0);
          local_14 = 0xffffffff;
        }
      }
      else {
        param_1[0xcd] = DAT_00c7b640;
        param_1[0xce] = DAT_00c7b644;
      }
      if (((NAN((float)param_1[0xcd]) || NAN((float)DAT_00c7b640)) ==
           ((float)param_1[0xcd] == (float)DAT_00c7b640)) ||
         ((NAN((float)param_1[0xce]) || NAN((float)DAT_00c7b644)) ==
          ((float)param_1[0xce] == (float)DAT_00c7b644))) {
        FUN_007e33c0(param_1 + 0xcd,0x40000000,0,1);
        fVar26 = (float)param_1[0xcf] - (float)param_1[0xcd];
        fVar26 = ((float)param_1[0xd0] - (float)param_1[0xce]) *
                 ((float)param_1[0xd0] - (float)param_1[0xce]) + fVar26 * fVar26;
        FUN_00435a50();
        if (DAT_00baa87c < fVar26) {
          pfVar8 = (float *)FUN_0067f170();
          fVar25 = (float)param_1[0xd8] * (float)param_1[0xd8] +
                   (float)param_1[0xd9] * (float)param_1[0xd9];
          FUN_00435a50();
          fVar26 = *pfVar8;
          param_1[0xd9] = (int *)(fVar25 * pfVar8[1]);
          param_1[0xd8] = (int *)(fVar25 * fVar26);
          param_1 = local_12c;
        }
      }
      else {
        FUN_007e5340(0x40000000,0);
      }
      if ((float)((uint)param_1[0xd8] & DAT_00bacb40) <= (float)((uint)param_1[0xd9] & DAT_00bacb40)
         ) {
        if (0.0 <= (float)param_1[0xd9]) {
          local_d4 = (int **)0x3;
          pbVar20 = (byte *)"WalkDown";
        }
        else {
          local_d4 = (int **)0x1;
          pbVar20 = PTR_DAT_00b1dc70;
        }
      }
      else if (0.0 <= (float)param_1[0xd8]) {
        local_d4 = (int **)0x2;
        pbVar20 = PTR_s_WalkHori_00b1dc74;
      }
      else {
        local_d4 = (int **)0x0;
        pbVar20 = PTR_s_WalkHori_00b1dc6c;
      }
      ppbVar9 = (byte **)param_1[0x1f];
      if (ppbVar9 == (byte **)0x0) {
LAB_0054d8ac:
        cVar4 = FUN_0040a5d0(pbVar20,1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        pbVar17 = pbVar20;
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar22 = bVar1 < *pbVar17;
          if (bVar1 != *pbVar17) {
LAB_0054d891:
            uVar6 = -(uint)bVar22 | 1;
            goto LAB_0054d896;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar22 = bVar1 < pbVar17[1];
          if (bVar1 != pbVar17[1]) goto LAB_0054d891;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pbVar17 = pbVar17 + 2;
        } while (bVar1 != 0);
        uVar6 = 0;
LAB_0054d896:
        if ((uVar6 != 0) ||
           ((*(char *)(param_1[0x1f] + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_0054d8ac;
      }
      *(bool *)(param_1 + 0x52) = local_d4 == (int **)0x0;
      local_e0 = (int **)param_1[0xd8];
      local_e4 = (int **)param_1[0xd9];
      fVar26 = (float)local_e0 * (float)local_e0 + (float)local_e4 * (float)local_e4;
      FUN_00435a50();
      iVar7 = DAT_00c71678;
      ppiVar27 = local_e0;
      ppiVar12 = local_e4;
      if (DAT_00ba9fe4 < fVar26) {
        ppiVar27 = (int **)((float)local_e0 * (DAT_00baa454 / fVar26));
        ppiVar12 = (int **)((DAT_00baa454 / fVar26) * (float)local_e4);
      }
      local_dc = *(int ***)(DAT_00c71678 + 0x18300);
      fVar28 = (float)ppiVar27 * DAT_00baa904 + (float)param_1[0xcf];
      fVar25 = (float)ppiVar12 * DAT_00baa904 + (float)param_1[0xd0];
      fVar26 = DAT_00baa904;
      FUN_00431310(param_1);
      iVar10 = (int)((fVar25 - DAT_00baaa00) / fVar26 + DAT_00baa2d0);
      iVar16 = (int)((fVar28 - fVar26) / fVar26 + DAT_00baa2d0);
      if (((((-1 < iVar16) && (iVar2 = *(int *)(*(int *)(iVar7 + 0x18300) + 0xc), iVar16 < iVar2))
           && (-1 < iVar10)) &&
          ((iVar10 < *(int *)(*(int *)(iVar7 + 0x18300) + 0x10) &&
           (uVar6 = iVar10 * iVar2 + iVar16, uVar6 < 0x1c0)))) &&
         (local_dc[uVar6 + 9] != (int *)0x0)) {
        (**(code **)(*local_dc[uVar6 + 9] + 0x10))(1,local_16c);
      }
      param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa3a4);
    }
    else {
      iVar7 = FUN_00447770();
      local_e0 = (int **)0x0;
      do {
        if (iVar7 == 0) break;
        piVar14 = (int *)(iVar7 + 0x3bc);
        if ((*piVar14 != 0) &&
           (iVar7 = __RTDynamicCast(*piVar14,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                    &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
           iVar7 == 0)) {
          FUN_00a112c0(0x10,"m_Parent invalid downcast\n");
        }
        if (*piVar14 == 0) break;
        iVar7 = __RTDynamicCast(*piVar14,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        if (iVar7 == 0) {
          FUN_00a112c0(0x10,"m_Parent invalid downcast\n");
        }
        iVar7 = *piVar14;
        local_e0 = (int **)((int)local_e0 + 1);
      } while (local_e0 < (int **)0x14);
      local_dc = (int **)param_1[0xd8];
      local_f0 = param_1[0xd9];
      iVar7 = FUN_006be840();
      local_118 = *(int ***)(iVar7 + 0x33c);
      local_114[0] = *(int ***)(iVar7 + 0x340);
      local_d8 = local_118;
      local_d4 = local_114[0];
      cVar4 = FUN_007f0df0(param_1 + 0xcf,&local_118,0,0,0,0,0);
      if (cVar4 == '\0') {
        uVar31 = 1;
        uVar30 = 0;
        uVar29 = 0x3f666666;
        uVar13 = FUN_006bec40(&local_118,0);
        FUN_007e33c0(uVar13,uVar29,uVar30,uVar31);
        piVar14 = param_1[0xd9];
      }
      else {
        param_1[0xdb] = (int *)0x3f666666;
        local_d4 = (int **)((float)local_d4 - (float)param_1[0xd0]);
        local_d8 = (int **)((float)local_d8 - (float)param_1[0xcf]);
        fVar26 = (float)local_d4 * (float)local_d4 + (float)local_d8 * (float)local_d8;
        FUN_00435a50();
        ppiVar12 = local_d8;
        if (0.0 < fVar26) {
          ppiVar12 = (int **)((float)local_d8 * (DAT_00baa454 / fVar26));
          local_d4 = (int **)((float)local_d4 * (DAT_00baa454 / fVar26));
        }
        piVar14 = (int *)(((float)local_d4 * DAT_00baa324 * (float)param_1[0xe7]) / DAT_00baa3e0 +
                         (float)param_1[0xd9]);
        param_1[0xd8] =
             (int *)(((float)ppiVar12 * DAT_00baa324 * (float)param_1[0xe7]) / DAT_00baa3e0 +
                    (float)param_1[0xd8]);
        param_1[0xd9] = piVar14;
      }
      param_1[0x2ed] = (int *)(((float)piVar14 - (float)local_f0) / (float)param_1[0xe7]);
      param_1[0x2ec] = (int *)(((float)param_1[0xd8] - (float)local_dc) / (float)param_1[0xe7]);
      if ((float)((uint)param_1[0xd8] & DAT_00bacb40) <= (float)((uint)param_1[0xd9] & DAT_00bacb40)
         ) {
        if (0.0 <= (float)param_1[0xd9]) {
          local_d4 = (int **)0x3;
          pbVar20 = (byte *)"WalkDown";
        }
        else {
          local_d4 = (int **)0x1;
          pbVar20 = PTR_DAT_00b1dc70;
        }
      }
      else if (0.0 <= (float)param_1[0xd8]) {
        local_d4 = (int **)0x2;
        pbVar20 = PTR_s_WalkHori_00b1dc74;
      }
      else {
        local_d4 = (int **)0x0;
        pbVar20 = PTR_s_WalkHori_00b1dc6c;
      }
      ppbVar9 = (byte **)param_1[0x1f];
      if (ppbVar9 == (byte **)0x0) {
LAB_0054dd2b:
        cVar4 = FUN_0040a5d0(pbVar20,1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        pbVar17 = pbVar20;
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar22 = bVar1 < *pbVar17;
          if (bVar1 != *pbVar17) {
LAB_0054dd10:
            uVar6 = -(uint)bVar22 | 1;
            goto LAB_0054dd15;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar22 = bVar1 < pbVar17[1];
          if (bVar1 != pbVar17[1]) goto LAB_0054dd10;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pbVar17 = pbVar17 + 2;
        } while (bVar1 != 0);
        uVar6 = 0;
LAB_0054dd15:
        if ((uVar6 != 0) ||
           ((*(char *)(param_1[0x1f] + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_0054dd2b;
      }
      *(bool *)(param_1 + 0x52) = local_d4 == (int **)0x0;
    }
    cVar4 = FUN_006ac710(2,0);
    if (((cVar4 != '\0') && ((int)param_1[0x2e8] < 1)) && (param_1[0x2f1] < (int *)0x8)) {
      FUN_0041a790(local_120,param_1 + 0xcf,8);
      local_14 = 1;
      local_d4 = DAT_00baabc4;
      local_e0 = DAT_00baabc4;
      local_e4 = (int **)0x0;
      local_d8 = (int **)0x0;
      local_ec = (int **)0x0;
      if (local_114[0] != (int **)0x0) {
        do {
          ppiVar12 = *(int ***)(local_11c + (int)local_ec * 4);
          ppiVar27 = local_d4;
          if ((ppiVar12 == (int **)0x0) ||
             (((*(int *)(DAT_00c71678 + 0x26614) < 2 || (ppiVar12[10] != (int *)0x1)) &&
              (0x3dd < (int)ppiVar12[10] - 10U)))) {
            ppiVar12 = (int **)0x0;
LAB_0054de47:
            uVar6 = 0;
            if (ppiVar12 != (int **)0x0) goto LAB_0054de51;
          }
          else {
            if (((uint)ppiVar12[0x5a] & 0x20000000) == 0) goto LAB_0054de47;
            uVar6 = 1;
LAB_0054de51:
            if (((ppiVar12 != param_1) && (ppiVar12[10] == param_1[10])) &&
               ((*(char *)((int)ppiVar12 + 0x173) == '\0' &&
                ((local_130 == uVar6 && (ppiVar12[0x2f1] < &DAT_00000008)))))) {
              ppiVar23 = (int **)(((float)ppiVar12[0xd0] - (float)param_1[0xd0]) *
                                  ((float)ppiVar12[0xd0] - (float)param_1[0xd0]) +
                                 ((float)ppiVar12[0xcf] - (float)param_1[0xcf]) *
                                 ((float)ppiVar12[0xcf] - (float)param_1[0xcf]));
              FUN_00435a50();
              local_dc = ppiVar23;
              pppiVar11 = &local_dc;
              if ((float)local_d4 <= (float)ppiVar23) {
                pppiVar11 = &local_e0;
              }
              local_e0 = *pppiVar11;
              local_d4 = local_e0;
              ppiVar27 = local_e0;
              iVar7 = FUN_0054d1b0(ppiVar12);
              if (((iVar7 == 0) &&
                  (ppiVar27 = local_d4,
                  (float)ppiVar23 <= (float)ppiVar12[0xdc] + (float)param_1[0xdc])) &&
                 ((float)local_e4 < (float)ppiVar23)) {
                local_e4 = ppiVar23;
                local_d8 = ppiVar12;
              }
            }
          }
          local_ec = (int **)((int)local_ec + 1);
        } while (local_ec < local_114[0]);
        if ((local_d8 != (int **)0x0) &&
           ((float)param_1[0xdc] <= (float)ppiVar27 && (float)ppiVar27 != (float)param_1[0xdc])) {
          local_e0 = (int **)FUN_0054d1b0(0);
          ppiVar12 = (int **)FUN_0054d1b0(0);
          if ((local_e0 != (int **)0x0) && (ppiVar12 != (int **)0x0)) {
            if (*local_e0 != (int *)0x0) {
              local_dc = local_e0;
              FUN_004cf210(&local_dc);
            }
            *local_e0 = (int *)local_d8;
            FUN_004cdcf0(local_e0);
            if (*ppiVar12 != (int *)0x0) {
              local_dc = ppiVar12;
              FUN_004cf210(&local_dc);
            }
            *ppiVar12 = (int *)param_1;
            FUN_004cdcf0(ppiVar12);
          }
        }
      }
      local_14 = 0xffffffff;
      if (local_120[0] == '\0') {
        local_14 = 2;
        FUN_00a648b0(0,0);
        local_14 = 0xffffffff;
      }
    }
    param_1[0x2f1] = (int *)0x0;
    local_ec = (int **)param_1[0x2fc];
    local_f0 = param_1[0x2ff];
    local_e0 = (int **)0x0;
    local_e4 = (int **)0x0;
    local_dc = (int **)0x0;
    local_d4 = (int **)0x0;
    local_13c = param_1[0x2f0];
    while (local_f0 != (int *)((int)param_1[0x300] + (int)param_1[0x2ff])) {
      if (local_ec == (int **)0x0) {
        iVar7 = 0;
      }
      else {
        iVar7 = (int)*local_ec;
      }
      local_140 = (uint)local_f0 >> 2;
      local_124 = (int *)(((uint)local_f0 & 3) * 4);
      ppiVar12 = *(int ***)((int)local_124 +
                           *(int *)(*(int *)(iVar7 + 4) + (*(int *)(iVar7 + 8) - 1U & local_140) * 4
                                   ));
      if (ppiVar12 == (int **)0x0) {
LAB_0054e429:
        local_f0 = (int *)((int)local_f0 + 1);
        local_d4 = (int **)((int)local_d4 + 1);
      }
      else {
        if (((ppiVar12[10] != param_1[10]) || (*(char *)((int)ppiVar12 + 0x173) != '\0')) ||
           ((((uint)ppiVar12[0x5a] & 0x20000000) != 0) != local_130)) {
          if (local_ec == (int **)0x0) {
            iVar7 = 0;
          }
          else {
            iVar7 = (int)*local_ec;
          }
          iVar7 = *(int *)(*(int *)(iVar7 + 4) + (*(int *)(iVar7 + 8) - 1U & local_140) * 4);
          ppiVar12 = (int **)(iVar7 + (int)local_124);
          if (*(int *)(iVar7 + (int)local_124) != 0) {
            local_114[0] = ppiVar12;
            FUN_004cf210(local_114);
          }
          *ppiVar12 = (int *)0x0;
          goto LAB_0054e429;
        }
        local_138 = (float)ppiVar12[0xe4] - (float)param_1[0xe4];
        local_134 = (float)ppiVar12[0xe3] - (float)param_1[0xe3];
        local_114[0] = (int **)(local_138 * local_138 + local_134 * local_134);
        ppiVar27 = local_114[0];
        FUN_00435a50();
        local_d8 = ppiVar27;
        piVar14 = param_1[0x304];
        uVar6 = (int)local_d4 + (int)piVar14;
        fVar26 = (float)param_1[0xdc] + (float)ppiVar12[0xdc] + DAT_00baa904;
        if ((float)local_d8 <= fVar26) {
          *(undefined4 *)(param_1[0x302][uVar6 >> 1 & (int)param_1[0x303] - 1U] + (uVar6 & 1) * 8) =
               0;
          local_124 = piVar14;
        }
        else {
          *(float *)(param_1[0x302][uVar6 >> 1 & (int)param_1[0x303] - 1U] + (uVar6 & 1) * 8) =
               ((float)local_d8 - fVar26) * (float)param_1[0xe7] +
               *(float *)(param_1[0x302][uVar6 >> 1 & (int)param_1[0x303] - 1U] + (uVar6 & 1) * 8);
          local_108 = param_1[0x304];
          if (DAT_00baa8d0 <
              *(float *)(param_1[0x302]
                         [(uint)((int)local_d4 + (int)local_108) >> 1 & (int)param_1[0x303] - 1U] +
                        ((int)local_d4 + (int)local_108 & 1U) * 8)) {
            local_108 = (int *)FUN_0054d1b0(param_1);
            if (local_108 != (int *)0x0) {
              if (*local_108 != 0) {
                local_144 = local_108;
                FUN_004cf210(&local_144);
              }
              *local_108 = 0;
            }
            if (local_ec == (int **)0x0) {
              iVar7 = 0;
            }
            else {
              iVar7 = (int)*local_ec;
            }
            local_108 = (int *)(*(int *)(*(int *)(iVar7 + 4) +
                                        (*(int *)(iVar7 + 8) - 1U & local_140) * 4) + (int)local_124
                               );
            if (*local_108 != 0) {
              local_124 = local_108;
              FUN_004cf210(&local_124);
            }
            *local_108 = 0;
          }
        }
        local_d8 = (int **)(((float)local_d8 - ((float)param_1[0xdc] + (float)ppiVar12[0xdc])) *
                           DAT_00baa0d0);
        if ((float)local_d8 < 0.0) {
          local_d8 = (int **)((float)local_d8 + (float)local_d8);
        }
        ppiVar27 = local_114[0];
        FUN_00435a50();
        fVar26 = local_134;
        fVar25 = local_138;
        if (DAT_00ba9fe4 < (float)ppiVar27) {
          fVar25 = local_138 * (DAT_00baa454 / (float)ppiVar27);
          fVar26 = local_134 * (DAT_00baa454 / (float)ppiVar27);
        }
        param_1[0x2f1] = (int *)((int)param_1[0x2f1] + 1);
        piVar14 = ppiVar12[0x2f0];
        local_e4 = (int **)(fVar26 * (float)local_d8 + (float)local_e4);
        local_e0 = (int **)(fVar25 * (float)local_d8 + (float)local_e0);
        if ((int)piVar14 <= (int)local_13c) goto LAB_0054e429;
        ppiVar27 = (int **)ppiVar12[0xef];
        ppiVar23 = ppiVar27;
        ppiVar18 = ppiVar12;
        if (ppiVar27 != (int **)0x0) {
          do {
            ppiVar18 = ppiVar23;
            ppiVar23 = (int **)ppiVar18[0xef];
          } while ((int **)ppiVar18[0xef] != (int **)0x0);
          piVar14 = ppiVar12[0x2f0];
        }
        if (((ppiVar18 == param_1) || (ppiVar27 == param_1)) || (ppiVar12 == param_1))
        goto LAB_0054e429;
        local_f0 = (int *)((int)local_f0 + 1);
        local_d4 = (int **)((int)local_d4 + 1);
        local_13c = piVar14;
        local_dc = ppiVar12;
      }
    }
    if (param_1[0xef] != (int *)0x0) {
      local_114[0] = param_1 + 0xef;
      FUN_004cf210(local_114);
    }
    param_1[0xef] = (int *)local_dc;
    if (local_dc != (int **)0x0) {
      FUN_004cdcf0(param_1 + 0xef);
    }
    cVar4 = FUN_006ac710(10,0);
    if (cVar4 != '\0') {
      iVar7 = FUN_006be840();
      fVar26 = (float)param_1[0xe4] - *(float *)(iVar7 + 0x340);
      fVar25 = (float)param_1[0xe3] - *(float *)(iVar7 + 0x33c);
      fVar26 = fVar26 * fVar26 + fVar25 * fVar25;
      FUN_00435a50();
      param_1[0x2f0] = (int *)(10000 - (int)(fVar26 + fVar26));
      if ((local_e5 == '\0') && (((uint)param_1[0x5a] & 0x1000b00) != 0)) {
        uVar6 = FUN_006eef60();
        param_1[0x2f0] = (int *)((int)param_1[0x2f0] - (uVar6 % 200 + 200));
      }
    }
    param_1[0xd9] = (int *)((float)param_1[0xe7] * (float)local_e0 + (float)param_1[0xd9]);
    param_1[0xd8] = (int *)((float)param_1[0xe7] * (float)local_e4 + (float)param_1[0xd8]);
    puVar3 = puStack_20;
    goto LAB_0054e549;
  }
  param_1[0x61] = (int *)0x5;
  param_1[0x62] = (int *)0x4;
  piVar24 = piRam00c5c878;
  piVar19 = piRam00c5c874;
  piVar14 = piRam00c5c870;
  if (param_1 + 0x79 != (int **)&DAT_00c5c86c) {
    param_1[0x79] = _DAT_00c5c86c;
    param_1[0x7a] = piVar14;
    param_1[0x7b] = piVar19;
    param_1[0x7c] = piVar24;
    piVar24 = piRam00c5c888;
    piVar19 = piRam00c5c884;
    piVar14 = piRam00c5c880;
    param_1[0x7d] = _DAT_00c5c87c;
    param_1[0x7e] = piVar14;
    param_1[0x7f] = piVar19;
    param_1[0x80] = piVar24;
    *(undefined8 *)(param_1 + 0x81) = DAT_00c5c88c;
    param_1[0x83] = DAT_00c5c894;
  }
  ppbVar9 = (byte **)param_1[0x1f];
  if (ppbVar9 == (byte **)0x0) {
LAB_0054d34e:
    puStack_20 = &stack0xfffffffc;
    cVar4 = FUN_0040a5d0("WalkDown",1);
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
  else {
    ppbVar5 = ppbVar9;
    if (&DAT_0000000f < ppbVar9[5]) {
      ppbVar5 = (byte **)*ppbVar9;
    }
    pcVar15 = "WalkDown";
    do {
      bVar1 = *(byte *)ppbVar5;
      bVar22 = bVar1 < (byte)*pcVar15;
      if (bVar1 != *pcVar15) {
LAB_0054d330:
        uVar6 = -(uint)bVar22 | 1;
        goto LAB_0054d335;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar5 + 1);
      bVar22 = bVar1 < ((byte *)pcVar15)[1];
      if (bVar1 != ((byte *)pcVar15)[1]) goto LAB_0054d330;
      ppbVar5 = (byte **)((int)ppbVar5 + 2);
      pcVar15 = (char *)((byte *)pcVar15 + 2);
    } while (bVar1 != 0);
    uVar6 = 0;
LAB_0054d335:
    if ((uVar6 != 0) ||
       ((puStack_20 = &stack0xfffffffc, *(byte *)(ppbVar9 + 0xd) != 0 &&
        (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')))) goto LAB_0054d34e;
  }
  param_1[0x2d9] = (int *)0x4;
  local_dc = (int **)0x0;
  FUN_0044bcc0(8,&local_dc);
  piVar14 = param_1[0x305];
  bVar22 = piVar14 < (int *)0x8;
  if (bVar22) {
    do {
      piVar19 = param_1[0x304];
      local_d4 = (int **)piVar14;
      if ((((int)piVar19 + (int)piVar14 & 1U) == 0) &&
         (param_1[0x303] <= (int *)((int)piVar14 + 2U >> 1))) {
        FUN_00499410(piVar14);
        local_d4 = (int **)param_1[0x305];
        piVar19 = param_1[0x304];
      }
      piVar19 = (int *)((uint)piVar19 & (int)param_1[0x303] * 2 - 1U);
      param_1[0x304] = piVar19;
      local_f0 = (int *)((int)piVar19 + (int)local_d4);
      local_dc = (int **)((uint)local_f0 >> 1 & (int)param_1[0x303] - 1U);
      piVar14 = param_1[0x302];
      if (piVar14[(int)local_dc] == 0) {
        iVar7 = FUN_00a0f4c0(0x10);
        param_1[0x302][(int)local_dc] = iVar7;
        piVar14 = param_1[0x302];
      }
      iVar7 = piVar14[(int)local_dc];
      *(undefined4 *)(iVar7 + ((uint)local_f0 & 1) * 8) = 0;
      *(undefined4 *)(iVar7 + 4 + ((uint)local_f0 & 1) * 8) = 0;
      local_d4 = (int **)((int)param_1[0x305] + 1);
      param_1[0x305] = (int *)local_d4;
      piVar14 = (int *)local_d4;
    } while (local_d4 < (int *)0x8);
    piVar14 = param_1[0x305];
    bVar22 = piVar14 < (int *)0x8;
  }
  puVar3 = puStack_20;
  if (!bVar22 && piVar14 != (int *)0x8) {
    do {
      piVar14 = (int *)((int)piVar14 - 1);
      param_1[0x305] = piVar14;
      if (piVar14 == (int *)0x0) {
        param_1[0x304] = (int *)0x0;
        break;
      }
    } while ((int *)0x8 < piVar14);
  }
LAB_0054e549:
  puStack_20 = puVar3;
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    local_104 = (int *)0x0;
    local_100 = 0;
    local_fc = 0;
    local_f8 = 0;
    local_f4 = 0;
    local_104 = (int *)FUN_00a0f4c0(8);
    local_104[1] = 0;
    *local_104 = (int)&local_104;
    local_14 = 3;
    if (((local_f8 + local_f4 & 3) == 0) && (local_fc <= local_f4 + 4U >> 2)) {
      FUN_0044be50(local_f8);
    }
    local_f8 = local_f8 & local_fc * 4 - 1;
    local_114[0] = (int **)(local_f8 + local_f4);
    uVar6 = (uint)local_114[0] >> 2 & local_fc - 1;
    if (*(int *)(local_100 + uVar6 * 4) == 0) {
      uVar13 = FUN_00a0f4c0(0x10);
      *(undefined4 *)(local_100 + uVar6 * 4) = uVar13;
    }
    local_ec = (int **)0x0;
    *(int ***)(*(int *)(local_100 + uVar6 * 4) + ((uint)local_114[0] & 3) * 4) = param_1;
    local_f4 = local_f4 + 1;
    local_108 = (int *)0x0;
    local_10c = 0.0;
    if (local_f4 != 0) {
      do {
        uVar6 = (local_f8 + local_f4) - 1;
        iVar7 = local_f4 + -1;
        local_e4 = *(int ***)(*(int *)(local_100 + (uVar6 >> 2 & local_fc - 1) * 4) +
                             (uVar6 & 3) * 4);
        uVar6 = local_f8;
        if (iVar7 == 0) {
          uVar6 = 0;
        }
        local_114[0] = (int **)local_e4[0x2fc];
        local_f8 = uVar6;
        local_f4 = iVar7;
        for (local_e0 = (int **)local_e4[0x2ff];
            local_e0 != (int **)((int)local_e4[0x2ff] + (int)local_e4[0x300]);
            local_e0 = (int **)((int)local_e0 + 1)) {
          if (local_114[0] == (int **)0x0) {
            piVar14 = (int *)0x0;
          }
          else {
            piVar14 = *local_114[0];
          }
          local_dc = *(int ***)(*(int *)(piVar14[1] + ((uint)local_e0 >> 2 & piVar14[2] - 1U) * 4) +
                               ((uint)local_e0 & 3) * 4);
          if (local_dc != (int **)0x0) {
            if (((uVar6 + iVar7 & 3) == 0) && (local_fc <= iVar7 + 4U >> 2)) {
              FUN_0044be50(local_fc);
              iVar7 = local_f4;
              uVar6 = local_f8;
            }
            local_f8 = uVar6 & local_fc * 4 - 1;
            uVar21 = local_f8 + iVar7;
            uVar6 = local_fc - 1 & uVar21 >> 2;
            if (*(int *)(local_100 + uVar6 * 4) == 0) {
              uVar13 = FUN_00a0f4c0(0x10);
              *(undefined4 *)(local_100 + uVar6 * 4) = uVar13;
            }
            ppiVar12 = local_e4;
            *(int ***)(*(int *)(local_100 + uVar6 * 4) + (uVar21 & 3) * 4) = local_dc;
            iVar7 = local_f4 + 1;
            local_f4 = iVar7;
            local_f0 = (int *)FUN_0054d1b0(local_dc);
            piVar14 = (int *)FUN_0054d1b0(ppiVar12);
            if (local_f0 != (int *)0x0) {
              if (*local_f0 != 0) {
                local_124 = local_f0;
                FUN_004cf210(&local_124);
              }
              *local_f0 = 0;
              iVar7 = local_f4;
            }
            uVar6 = local_f8;
            if (piVar14 != (int *)0x0) {
              if (*piVar14 != 0) {
                local_124 = piVar14;
                FUN_004cf210(&local_124);
              }
              *piVar14 = 0;
              iVar7 = local_f4;
              uVar6 = local_f8;
            }
          }
        }
        local_10c = (float)local_e4[0xcf] + local_10c;
        local_108 = (int *)((float)local_e4[0xd0] + (float)local_108);
        local_ec = (int **)((int)local_ec + 1);
        local_e4[0x2f1] = (int *)0x0;
        uVar6 = FUN_006eef60();
        piVar14 = (int *)local_ec;
        ppiVar12 = local_12c;
        local_e4[0x2e8] = (int *)(uVar6 % 0x3c + 0x1e);
        if (local_e4 != local_12c) {
          piVar19 = local_e4[0xe1];
          piVar24 = (int *)((float)piVar19 * DAT_00baa1d4 + (float)local_e4[0xe0]);
          if ((float)piVar24 <= (float)piVar19) {
            piVar19 = piVar24;
          }
          local_e4[0xe0] = piVar19;
        }
      } while (local_f4 != 0);
      param_1 = local_12c;
      if (1 < (int)local_ec) {
        local_d4 = (int **)(float)(int)local_ec;
        local_10c = local_10c / (float)local_d4;
        local_108 = (int *)((float)local_108 / (float)local_d4);
        AI_0043ef30();
        local_7c = DAT_00c34e7c;
        local_d4 = (int **)((float)local_d4 * DAT_00baa1d4 + DAT_00baa454);
        local_128 = 0x41200000;
        local_124 = (int *)0x0;
        local_a4 = _DAT_00c34e54;
        uStack_a0 = uRam00c34e58;
        uStack_9c = uRam00c34e5c;
        uStack_98 = uRam00c34e60;
        local_94 = _DAT_00c34e64;
        uStack_90 = uRam00c34e68;
        uStack_8c = uRam00c34e6c;
        uStack_88 = uRam00c34e70;
        local_84 = DAT_00c34e74;
        FUN_006cb2e0(&local_10c,&local_128,(3 < (int)piVar14) * '\x02' + '\x06',local_d0);
        uVar13 = FUN_006eef60();
        piVar14 = (int *)FUN_00428b20(1000,0x1a,ppiVar12 + 0xcf,&DAT_00c7b640,ppiVar12,0,uVar13);
        fVar26 = (float)local_d4 * DAT_00c3793c;
        piVar14[0x3a] = (int)((float)local_d4 * DAT_00c37940);
        piVar14[0x117] = 300;
        piVar14[0x39] = (int)fVar26;
        piVar14[0x118] = 300;
        (**(code **)(*piVar14 + 0xc))();
        uVar13 = FUN_006eef60();
        piVar14 = (int *)FUN_00428b20(1000,2,ppiVar12 + 0xcf,&DAT_00c7b640,0,2,uVar13);
        (**(code **)(*piVar14 + 0x3c))(ppiVar12 + 0x79,0xffffffff,0xff,0,1);
        piVar14[0x37] = (int)DAT_00c7b640;
        piVar14[0x38] = (int)DAT_00c7b644;
        piVar14[0xd6] = -0x3ee00000;
        iVar7 = FUN_006eef60();
        piVar14 = (int *)FUN_006b64d0(((float)((double)iVar7 +
                                              (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                                       DAT_00ba9ff4 * DAT_00baa304 + DAT_00baa304) * (float)local_d4
                                     );
        (**(code **)(*piVar14 + 0x3c))(ppiVar12 + 0x79,0xffffffff,0xff,0,1);
        param_1 = local_12c;
      }
    }
    FUN_00557a60();
  }
  if (0 < (int)param_1[0x2e8]) {
    param_1[0x2e8] = (int *)((int)param_1[0x2e8] + -1);
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

