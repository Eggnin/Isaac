/* Local J460 decompiler output.
 * VA: 0x0046a0f0
 * Entry: 0046a0f0
 * Dispatcher: 0x006c2990
 * Types: 19,89,239
 * Identities: 19.0.0,19.1.0,19.2.0,19.3.0,239.0.0,239.100.0,239.101.0,89.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0046c0a0; instructions=1867
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=19,89,239;
   identities=19.0.0,19.1.0,19.2.0,19.3.0,239.0.0,239.100.0,239.101.0,89.0.0; dispatcher=0x006c2990;
   end=0x0046c0a0; instructions=1867 */

void __fastcall AI_0046a0f0(float **param_1)

{
  code *pcVar1;
  undefined *puVar2;
  char cVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  float **ppfVar7;
  float **ppfVar8;
  char *pcVar9;
  float *pfVar10;
  float ***pppfVar11;
  int iVar12;
  float **ppfVar13;
  float **ppfVar14;
  float fVar15;
  float *pfVar16;
  float fVar17;
  float *pfVar18;
  float *pfVar19;
  undefined8 uVar20;
  undefined4 uVar21;
  undefined4 uVar22;
  undefined4 uVar23;
  undefined4 local_12c;
  undefined4 local_128;
  undefined4 local_124;
  undefined4 local_120;
  float *local_11c;
  float *local_118;
  float *local_114;
  float *local_110;
  undefined4 local_10c;
  undefined4 local_108;
  char local_101;
  undefined local_100 [4];
  float **local_fc;
  float *local_f8;
  float **local_f4;
  float *local_f0;
  float **local_ec [2];
  float **local_e4;
  undefined local_e0 [8];
  undefined4 local_d8;
  undefined4 local_d4;
  char *local_34 [4];
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af280a;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_fc = param_1;
  if ((param_1[10] == (float *)0x13) &&
     ((param_1[0xb] == (float *)0x2 || (param_1[0xb] == (float *)0x3)))) {
    puStack_20 = &stack0xfffffffc;
    FUN_0059a2d0();
    goto LAB_0046c079;
  }
  puVar2 = &stack0xfffffffc;
  if ((((param_1[0x3c7] != (float *)0xffffffff) &&
       (puVar2 = &stack0xfffffffc, param_1[0xef] != (float *)0x0)) &&
      (iVar4 = FUN_006a8990(local_24), puVar2 = puStack_20, iVar4 != 0)) &&
     (((1 < *(int *)(DAT_00c71678 + 0x26614) && (*(int *)(iVar4 + 0x28) == 1)) ||
      (*(int *)(iVar4 + 0x28) - 10U < 0x3de)))) {
    FUN_006d88b0(iVar4);
    puVar2 = puStack_20;
  }
  puStack_20 = puVar2;
  if (*(char *)((int)param_1 + 0x173) == '\0') {
    if (param_1[0x2d9] == (float *)0x0) {
      param_1[0x2f0] = (float *)0x0;
      param_1[0x2f1] = (float *)0x0;
      param_1[0x104] = (float *)0x0;
      if ((param_1[10] != (float *)0x13) || (param_1[0xb] != (float *)0x1)) {
        param_1[0x61] = (float *)&DAT_00000005;
      }
      param_1[0x62] = (float *)&DAT_00000004;
      AI_0041af60(local_34,param_1[10],0xffffffff,0xffffffff,0,0);
      local_14 = 1;
      pfVar16 = param_1[0xef];
      if (pfVar16 == (float *)0x0) {
        if ((param_1[0x3d5] == (float *)0x0) &&
           (local_f4 = (float **)((int)local_34[3] + -1), -1 < (int)local_f4)) {
          do {
            ppfVar7 = (float **)
                      __RTDynamicCast(*(float **)((int)local_34[1] + local_f4 * 4),0,
                                      &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                      &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
            if ((ppfVar7 != (float **)0x0) &&
               (((ppfVar7 != param_1 && ((float **)ppfVar7[0xef] != param_1)) &&
                (ppfVar7[0xf0] == (float *)0x0)))) {
              fVar15 = ((float)ppfVar7[0xd0] - (float)param_1[0xd0]) *
                       ((float)ppfVar7[0xd0] - (float)param_1[0xd0]) +
                       ((float)ppfVar7[0xcf] - (float)param_1[0xcf]) *
                       ((float)ppfVar7[0xcf] - (float)param_1[0xcf]);
              FUN_00435a50();
              ppfVar8 = ppfVar7;
              if (fVar15 < DAT_00baa908) {
                do {
                  if (ppfVar8 == param_1) goto LAB_0046a9d1;
                  ppfVar8 = (float **)ppfVar8[0xef];
                } while ((ppfVar8 != (float **)0x0) && (ppfVar8 != ppfVar7));
                if (param_1[0xef] != (float *)0x0) {
                  local_ec[0] = param_1 + 0xef;
                  FUN_004cf210(local_ec);
                }
                param_1[0xef] = (float *)ppfVar7;
                FUN_004cdcf0(param_1 + 0xef);
              }
            }
LAB_0046a9d1:
            local_f4 = (float **)((int)local_f4 + -1);
          } while (-1 < (int)local_f4);
          pfVar16 = param_1[0xef];
          if (pfVar16 != (float *)0x0) goto LAB_0046a9fa;
        }
        pcVar9 = "WalkHeadDown";
        if (param_1[10] == (float *)0x59) {
          pcVar9 = "WalkDown";
        }
        FUN_0040a380(pcVar9,0);
        for (local_f4 = (float **)param_1[0xf0]; local_f4 != (float **)0x0;
            local_f4 = (float **)local_f4[0xf0]) {
          pfVar16 = param_1[8];
          iVar4 = __RTDynamicCast(local_f4,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                  &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
          *(float **)(iVar4 + 0xc7c) = pfVar16;
        }
        param_1[799] = param_1[8];
        local_f4 = (float **)0x0;
      }
      else {
LAB_0046a9fa:
        local_f4 = (float **)(pfVar16 + 0xf0);
        if (pfVar16[0xf0] != 0.0) {
          local_ec[0] = local_f4;
          FUN_004cf210(local_ec);
        }
        *local_f4 = (float *)param_1;
        FUN_004cdcf0(local_f4);
        pcVar9 = "WalkBodyHori";
        if (param_1[10] == (float *)0x59) {
          pcVar9 = "WalkHori";
        }
        FUN_0040a380(pcVar9,0);
        if (param_1[10] == (float *)0xef) {
          pfVar16 = param_1[0xf0];
          if (pfVar16 == (float *)0x0) {
            local_ec[0] = (float **)0x0;
          }
          else {
            local_ec[0] = (float **)pfVar16[0xe0];
          }
          pfVar10 = param_1[0xef];
          local_f4 = (float **)pfVar10[0xe0];
          pppfVar11 = local_ec;
          if ((float)local_ec[0] <= (float)(float **)pfVar10[0xe0]) {
            pppfVar11 = &local_f4;
          }
          fVar15 = param_1[0xcc][0x14];
          ppfVar7 = *pppfVar11;
          param_1[0xe0] = (float *)(fVar15 + (float)ppfVar7);
          param_1[0xe1] = (float *)(fVar15 + (float)ppfVar7);
          if (pfVar10 != (float *)0x0) {
            do {
              pfVar10[0xe0] = (float)param_1[0xe0];
              pfVar10[0xe1] = (float)param_1[0xe0];
              pfVar10 = (float *)pfVar10[0xef];
            } while (pfVar10 != (float *)0x0);
            pfVar16 = param_1[0xf0];
          }
          for (; pfVar16 != (float *)0x0; pfVar16 = (float *)pfVar16[0xf0]) {
            pfVar16[0xe0] = (float)param_1[0xe0];
            pfVar16[0xe1] = (float)param_1[0xe0];
          }
        }
      }
      FUN_00499190(param_1 + 0xcf);
      FUN_00499190(param_1 + 0xd8);
      local_14 = 0xffffffff;
      param_1[0x2d9] = (float *)&DAT_00000004;
      if ((char)local_34[0] == '\0') {
        local_14 = 2;
        FUN_00a648b0(0,0);
      }
      goto LAB_0046c079;
    }
    if (param_1[0x2d9] != (float *)&DAT_00000004) goto LAB_0046c079;
    pfVar16 = param_1[10];
    if (pfVar16 == (float *)0x13) {
      if (param_1[0xc] == (float *)0x2) {
        param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa428);
      }
      cVar3 = FUN_006ac710(10,param_1[8]);
      if (cVar3 != '\0') {
        iVar4 = FUN_006eef60();
        FUN_006b64d0((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa280 + DAT_00baa1f8);
        pfVar16 = param_1[10];
      }
    }
    if (param_1[0xef] == (float *)0x0) {
      if (pfVar16 == (float *)0x13) {
        if (param_1[0xb] == (float *)0x0) {
          if ((param_1[0xf0] != (float *)0x0) && (uVar5 = FUN_006eef60(), uVar5 % 0x78 != 0)) {
            uVar23 = 0x3e9;
LAB_0046ad2d:
            FUN_006d6ba0(uVar23,0x3f800000,0x78,0,0x3f800000);
          }
        }
        else if (((param_1[0xb] == (float *)0x1) && (param_1[0xf0] != (float *)0x0)) &&
                (uVar5 = FUN_006eef60(), uVar5 % 0x78 != 0)) {
          uVar23 = 0x3ed;
          goto LAB_0046ad2d;
        }
      }
      else if ((pfVar16 == (float *)0x59) && (uVar5 = FUN_006eef60(), uVar5 % 0x78 != 0)) {
        uVar23 = 0x43d;
        goto LAB_0046ad2d;
      }
      if (param_1[10] == (float *)0xef) {
        ppfVar7 = param_1;
        ppfVar8 = (float **)((float)param_1[0xe0] - (float)param_1[5]);
        while( true ) {
          pfVar16 = ppfVar7[0xf0];
          local_e4 = ppfVar8;
          if ((pfVar16 != (float *)0x0) &&
             (iVar4 = __RTDynamicCast(pfVar16,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                      &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
             iVar4 == 0)) {
            FUN_00a112c0(0x10,"m_Child invalid downcast\n");
          }
          ppfVar7 = (float **)ppfVar7[0xf0];
          ppfVar8 = param_1;
          if (ppfVar7 == (float **)0x0) break;
          ppfVar8 = (float **)((float)ppfVar7[0xe0] - (float)ppfVar7[5]);
          if ((float)local_e4 <= (float)(float **)((float)ppfVar7[0xe0] - (float)ppfVar7[5])) {
            ppfVar8 = local_e4;
          }
        }
        do {
          local_fc = ppfVar8;
          if ((float)local_e4 < (float)local_fc[0xe0] - (float)local_fc[5]) {
            pcVar1 = (code *)(*local_fc)[8];
            ppfVar7 = local_e4;
            FUN_00431310(param_1);
            (*pcVar1)((float)local_fc[0xe0] - (float)ppfVar7,0,0,&local_12c,0x1e);
          }
          ppfVar7 = local_fc + 0xf0;
          pfVar16 = *ppfVar7;
          if ((pfVar16 != (float *)0x0) &&
             (iVar4 = __RTDynamicCast(pfVar16,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                      &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
             iVar4 == 0)) {
            FUN_00a112c0(0x10,"m_Child invalid downcast\n");
          }
          local_fc = (float **)*ppfVar7;
          ppfVar8 = local_fc;
        } while (local_fc != (float **)0x0);
      }
      pfVar16 = param_1[0x2e8];
      if ((int)pfVar16 < 0x1f) {
        if (param_1[0xb] == (float *)0x0) {
          if (param_1[10] == (float *)0xef) goto LAB_0046b3bb;
LAB_0046b4ae:
          FUN_007e5340(0x40000000,0);
          if ((param_1[10] == (float *)0xef) && (cVar3 = FUN_00417430(0x1000a00,0), cVar3 == '\0'))
          {
            if ((int)param_1[0x104] < 0x33) {
              param_1[0x104] =
                   (float *)((int)param_1[0x104] +
                            ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]));
            }
            else {
              iVar4 = FUN_006be840();
              local_fc = *(float ***)(iVar4 + 0x33c);
              local_e4 = *(float ***)(iVar4 + 0x340);
              iVar4 = FUN_006be840();
              local_ec[0] = *(float ***)(iVar4 + 0x360);
              local_f4 = *(float ***)(iVar4 + 0x364);
              iVar4 = FUN_006eef60();
              fVar15 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                       DAT_00ba9ff4;
              fVar17 = fVar15 * (float)local_ec[0];
              local_ec[0] = (float **)
                            ((fVar15 * (float)local_f4 * DAT_00baa85c + (float)local_e4) -
                            (float)param_1[0xd0]);
              local_f0 = (float *)((fVar17 * DAT_00baa85c + (float)local_fc) - (float)param_1[0xcf])
              ;
              if (param_1[0x3c7] == (float *)0xffffffff) {
                if (((float)((uint)local_ec[0] & DAT_00bacb40) < DAT_00baa87c) ||
                   ((float)((uint)local_f0 & DAT_00bacb40) < DAT_00baa87c)) {
                  local_f8 = (float *)((float)param_1[0xcf] + (float)local_f0);
                  local_f4 = (float **)((float)param_1[0xd0] + (float)local_ec[0]);
                  cVar3 = FUN_007f0df0(param_1 + 0xcf,&local_f8,0,0,0,0,0);
                  goto LAB_0046b668;
                }
              }
              else {
                cVar3 = FUN_006d8260(9);
                if (cVar3 != '\0') {
                  FUN_006d82d0(local_100);
                  cVar3 = FUN_00a10630(&DAT_00c7b640);
LAB_0046b668:
                  if (cVar3 != '\0') {
                    FUN_006d6ba0(0x73,0x3f800000,2,0,0x3f800000);
                    if (param_1[0x3c7] != (float *)0xffffffff) {
                      ppfVar7 = (float **)FUN_006d82d0(&local_f8);
                      local_f0 = *ppfVar7;
                      local_ec[0] = (float **)ppfVar7[1];
                    }
                    ppfVar7 = (float **)FUN_0067f170();
                    param_1[0xcd] = *ppfVar7;
                    param_1[0xce] = ppfVar7[1];
                    param_1[0x104] = (float *)0x0;
                    param_1[0x2f0] = (float *)0x1;
                    param_1[0x106] = DAT_00c7b640;
                    param_1[0x107] = DAT_00c7b644;
                    param_1[0x108] = DAT_00c7b640;
                    param_1[0x109] = DAT_00c7b644;
                  }
                }
              }
            }
          }
        }
        else if (param_1[10] == (float *)0xef) {
LAB_0046b3bb:
          if (param_1[0x2f0] == (float *)0x0) goto LAB_0046b4ae;
          if ((*(char *)(param_1 + 100) == '\0') &&
             (cVar3 = FUN_00417430(0x1000a00,0), cVar3 == '\0')) {
            pfVar16 = (float *)((float)param_1[0xdb] * DAT_00baa3e0);
            param_1[0xdb] = pfVar16;
            fVar15 = DAT_00baa740;
            if (param_1[0x3c7] != (float *)0xffffffff) {
              fVar15 = DAT_00baa790;
            }
            if ((NAN((float)pfVar16) || NAN(DAT_00ba9fe4)) == ((float)pfVar16 == DAT_00ba9fe4)) {
              fVar17 = (fVar15 * (float)param_1[0xce] * (float)param_1[0xe7]) / (float)pfVar16;
              param_1[0xd8] =
                   (float *)((fVar15 * (float)param_1[0xcd] * (float)param_1[0xe7]) / (float)pfVar16
                            + (float)param_1[0xd8]);
              goto LAB_0046b46a;
            }
          }
          else {
            param_1[0x2f0] = (float *)0x0;
            param_1[0xcd] = DAT_00c7b640;
            param_1[0xce] = DAT_00c7b644;
          }
        }
        else {
          if ((float)param_1[0xd8] * (float)param_1[0xd8] +
              (float)param_1[0xd9] * (float)param_1[0xd9] < DAT_00baa168) {
            pfVar10 = (float *)FUN_0067f070(&local_f0);
            pfVar16 = param_1[0xdb];
            fVar15 = pfVar10[1] * DAT_00baa120;
            if (NAN((float)pfVar16) == ((float)pfVar16 == 0.0)) {
              param_1[0xd8] =
                   (float *)((*pfVar10 * DAT_00baa120 * (float)param_1[0xe7]) / (float)pfVar16 +
                            (float)param_1[0xd8]);
              param_1[0xd9] =
                   (float *)((fVar15 * (float)param_1[0xe7]) / (float)pfVar16 + (float)param_1[0xd9]
                            );
            }
          }
          pfVar16 = param_1[0xd9];
          if ((float)pfVar16 <= 0.0) {
            local_fc = DAT_00baad50;
          }
          else {
            local_fc = DAT_00baa454;
          }
          if ((float)param_1[0xd8] <= 0.0) {
            local_e4 = DAT_00baad50;
          }
          else {
            local_e4 = DAT_00baa454;
          }
          if (((float)((uint)param_1[0xd8] & DAT_00bacb40) < (float)((uint)pfVar16 & DAT_00bacb40))
             || ((float)pfVar16 <= 0.0)) {
            iVar4 = FUN_0040b220(0);
            *(undefined4 *)(iVar4 + 0x3c) = 0;
          }
          else {
            iVar4 = FUN_0040b220(0);
            *(undefined4 *)(iVar4 + 0x3c) = 0x41700000;
          }
          iVar4 = DAT_00c71678;
          ppfVar7 = DAT_00baa454;
          param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa3c4);
          iVar4 = *(int *)(iVar4 + 0x18300);
          local_ec[0] = (float **)(*(float *)(iVar4 + 0x20) - DAT_00baa81c);
          pfVar16 = (float *)(*(float *)(iVar4 + 0x14) + (float)ppfVar7);
          pfVar10 = (float *)(*(float *)(iVar4 + 0x1c) - (float)ppfVar7);
          ppfVar8 = (float **)(*(float *)(iVar4 + 0x18) + DAT_00baa87c);
          if (*(int *)(iVar4 + 0x1bb0) == 0x37) {
            ppfVar8 = DAT_00baab14;
          }
          ppfVar14 = param_1 + 0xcf;
          pfVar18 = param_1[0xcf];
          if ((float)param_1[0xcf] <= (float)pfVar16) {
            pfVar18 = pfVar16;
          }
          local_f4 = (float **)param_1[0xd0];
          ppfVar13 = (float **)param_1[0xd0];
          if ((float)param_1[0xd0] <= (float)ppfVar8) {
            ppfVar13 = ppfVar8;
          }
          local_f8 = *ppfVar14;
          if ((float)pfVar10 <= (float)pfVar18) {
            pfVar18 = pfVar10;
          }
          if ((float)local_ec[0] <= (float)ppfVar13) {
            ppfVar13 = local_ec[0];
          }
          *ppfVar14 = pfVar18;
          param_1[0xd0] = (float *)ppfVar13;
          local_101 = FUN_00a10630(ppfVar14);
          uVar5 = DAT_00bacb70;
          if (local_101 != '\0') {
            pfVar19 = param_1[0xd8];
            if ((((NAN((float)pfVar18) || NAN((float)pfVar16)) != ((float)pfVar18 == (float)pfVar16)
                 ) && ((float)pfVar19 < 0.0)) ||
               (((NAN((float)pfVar18) || NAN((float)pfVar10)) != ((float)pfVar18 == (float)pfVar10)
                && (0.0 < (float)pfVar19)))) {
              pfVar19 = (float *)((uint)pfVar19 ^ DAT_00bacb70);
              param_1[0xd8] = pfVar19;
            }
            pfVar16 = param_1[0xd0];
            pfVar10 = param_1[0xd9];
            if ((((NAN((float)pfVar16) || NAN((float)ppfVar8)) != ((float)pfVar16 == (float)ppfVar8)
                 ) && ((float)pfVar10 < 0.0)) ||
               (((NAN((float)pfVar16) || NAN((float)local_ec[0])) !=
                 ((float)pfVar16 == (float)local_ec[0]) && (0.0 < (float)pfVar10)))) {
              pfVar10 = (float *)((uint)pfVar10 ^ uVar5);
              param_1[0xd9] = pfVar10;
            }
            local_e4 = ppfVar7;
            if ((float)pfVar19 <= 0.0) {
              local_e4 = DAT_00baad50;
            }
            local_fc = DAT_00baad50;
            if (0.0 < (float)pfVar10) {
              local_fc = ppfVar7;
            }
          }
          cVar3 = FUN_00a10600(&DAT_00c7b640);
          if ((cVar3 != '\0') || ((local_101 != '\0' && (uVar5 = FUN_006eef60(), uVar5 % 10 == 0))))
          {
            uVar5 = FUN_006eef60();
            if ((uVar5 & 1) == 0) {
              local_f8 = (float *)0x40400000;
              local_f4 = (float **)0x3fcccccd;
              pfVar16 = DAT_00baa6fc;
            }
            else {
              local_f0 = (float *)0x3fe66666;
              local_ec[0] = (float **)0x40400000;
              pfVar16 = DAT_00baa5b4;
            }
            param_1[0x2ec] = pfVar16;
            pppfVar11 = local_ec;
            if ((uVar5 & 1) == 0) {
              pppfVar11 = &local_f4;
            }
            param_1[0x2ed] = (float *)*pppfVar11;
          }
          if ((((uint)param_1[0x5a] & 0x200) == 0) || (param_1[0x3c7] != (float *)0xffffffff)) {
            pfVar16 = param_1[0xdb];
            if ((NAN((float)pfVar16) || NAN(DAT_00ba9fe4)) == ((float)pfVar16 == DAT_00ba9fe4)) {
              param_1[0xd8] =
                   (float *)(((float)local_e4 * (float)param_1[0x2ec] * (float)param_1[0xe7]) /
                             (float)pfVar16 + (float)param_1[0xd8]);
              param_1[0xd9] =
                   (float *)(((float)local_fc * (float)param_1[0x2ed] * (float)param_1[0xe7]) /
                             (float)pfVar16 + (float)param_1[0xd9]);
            }
            cVar3 = FUN_00417430(0x1000800,0);
            if ((cVar3 != '\0') && (param_1[0x3c7] == (float *)0xffffffff)) {
              iVar4 = FUN_006be840();
              local_ec[0] = (float **)
                            ((uint)(*(float *)(iVar4 + 0x340) - (float)param_1[0xd0]) ^ DAT_00bacb70
                            );
              local_f0 = (float *)((uint)(*(float *)(iVar4 + 0x33c) - (float)param_1[0xcf]) ^
                                  DAT_00bacb70);
              fVar15 = (float)local_ec[0] * (float)local_ec[0] + (float)local_f0 * (float)local_f0;
              FUN_00435a50();
              fVar15 = (DAT_00baaa5c - fVar15) * DAT_00baa0a0;
              if (fVar15 <= DAT_00ba9fe4) {
                fVar15 = DAT_00ba9fe4;
              }
              if (DAT_00baa630 <= fVar15) {
                fVar15 = DAT_00baa630;
              }
              pfVar10 = (float *)FUN_00a10100(&local_f8,fVar15);
              pfVar16 = param_1[0xdb];
              if ((NAN((float)pfVar16) || NAN(DAT_00ba9fe4)) == ((float)pfVar16 == DAT_00ba9fe4)) {
                fVar17 = ((float)param_1[0xe7] * pfVar10[1]) / (float)pfVar16;
                param_1[0xd8] =
                     (float *)(((float)param_1[0xe7] * *pfVar10) / (float)pfVar16 +
                              (float)param_1[0xd8]);
LAB_0046b46a:
                param_1[0xd9] = (float *)(fVar17 + (float)param_1[0xd9]);
              }
            }
          }
          else {
            param_1[0xdb] = (float *)0x3f733333;
            FUN_007e6650(0);
            FUN_007e6650(0);
            FUN_007e6650(0);
          }
        }
        if ((param_1[10] == (float *)0x13) && (param_1[0xc] == (float *)0x1)) {
          if (param_1[0x3c7] == (float *)0xffffffff) {
            uVar5 = FUN_006eef60();
            cVar3 = uVar5 % 3 == 0;
          }
          else {
            cVar3 = FUN_006cae60(0,7);
          }
          if (cVar3 != '\0') {
            pfVar16 = param_1[0x2e8];
            if (0 < (int)pfVar16) goto LAB_0046b893;
            FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
            if (param_1[0x3c7] == (float *)0xffffffff) {
              uVar5 = FUN_006eef60();
              pfVar16 = (float *)(uVar5 % 0x14 + 0x28);
            }
            else {
              pfVar16 = (float *)0x28;
            }
            param_1[0x2e8] = pfVar16;
            AI_0043ef30();
            local_d4 = 0x3e99999a;
            if (param_1[0xb] == (float *)0x0) {
              local_d8 = 0xc0a00000;
              pfVar16 = (float *)FUN_00a10030(&local_f8);
              fVar15 = *pfVar16;
              fVar17 = pfVar16[1];
              uVar23 = 0;
            }
            else {
              pfVar16 = (float *)FUN_00a10030(&local_f8);
              fVar15 = *pfVar16;
              fVar17 = pfVar16[1];
              uVar23 = 2;
            }
            local_ec[0] = (float **)(fVar17 * DAT_00baa7c8);
            local_f0 = (float *)(fVar15 * DAT_00baa7c8);
            FUN_006cb2e0(param_1 + 0xcf,&local_f0,uVar23,local_e0);
          }
        }
      }
      else {
LAB_0046b893:
        param_1[0x2e8] =
             (float *)((int)pfVar16 - ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]));
      }
      iVar4 = FUN_006ac8d0();
      pfVar16 = param_1[10];
      if ((pfVar16 == (float *)0x13) || (pfVar16 == (float *)0xef)) {
        local_34[0] = "WalkHeadHori";
        local_34[1] = "WalkHeadUp";
        local_34[2] = "WalkHeadHori";
        local_34[3] = "WalkHeadDown";
        if ((pfVar16 == (float *)0xef) && (param_1[0x2f0] != (float *)0x0)) {
          pcVar9 = (&PTR_s_AttackHeadHori_00b1dc7c)[iVar4];
        }
        else {
          pcVar9 = local_34[iVar4];
        }
LAB_0046b911:
        FUN_0040a380(pcVar9,0);
        *(bool *)(param_1 + 0x52) = iVar4 == 0;
      }
      else if (pfVar16 == (float *)0x59) {
        pcVar9 = (&PTR_s_WalkHori_00b1dc6c)[iVar4];
        goto LAB_0046b911;
      }
      if ((param_1[10] == (float *)0x13) &&
         ((param_1[0xf0] == (float *)0x0 || (*(char *)((int)param_1[0xf0] + 0x173) != '\0')))) {
        uVar20 = FUN_00435c70();
        (*(code *)((ulonglong)uVar20 >> 0x20))((int)uVar20);
        FUN_006d0dd0(local_34,param_1[799]);
        ppfVar7 = (float **)0x0;
        if ((float **)local_34[3] != (float **)0x0) {
          do {
            if (*(char *)((int)*(float **)((int)local_34[1] + ppfVar7 * 4) + 0x173) == '\0')
            goto LAB_0046b9af;
            ppfVar7 = (float **)((int)ppfVar7 + 1);
          } while (ppfVar7 < local_34[3]);
          if (((float **)local_34[3] != (float **)0x0) && (*(float ***)local_34[1] == param_1)) {
            param_1[0x5a] = (float *)((uint)param_1[0x5a] & 0xfffbffff);
            param_1[0x5b] = param_1[0x5b];
          }
        }
LAB_0046b9af:
        if ((char)local_34[0] == '\0') {
          local_14 = 3;
          FUN_00a648b0(0,0);
          local_14 = 0xffffffff;
        }
      }
      local_ec[0] = (float **)param_1[0xd8];
      local_f4 = (float **)param_1[0xd9];
      fVar15 = (float)local_ec[0] * (float)local_ec[0] + (float)local_f4 * (float)local_f4;
      FUN_00435a50();
      if (DAT_00ba9fe4 < fVar15) {
        local_ec[0] = (float **)((float)param_1[0xd8] * ((float)DAT_00baa454 / fVar15));
        local_f4 = (float **)((float)param_1[0xd9] * ((float)DAT_00baa454 / fVar15));
      }
      local_f8 = (float *)((float)local_ec[0] * DAT_00baa904 + (float)param_1[0xcf]);
      local_ec[0] = *(float ***)(DAT_00c71678 + 0x18300);
      local_f4 = (float **)((float)local_f4 * DAT_00baa904 + (float)param_1[0xd0]);
      FUN_00431310(param_1);
      uVar5 = FUN_00812c90(&local_f8);
      if ((uVar5 < 0x1c0) && (local_ec[0][uVar5 + 9] != (float *)0x0)) {
        (**(code **)((int)*local_ec[0][uVar5 + 9] + 0x10))(1,&local_12c);
      }
    }
    else {
      if ((pfVar16 == (float *)0x13) && (param_1[0xc] == (float *)0x2)) {
        iVar4 = FUN_00447770();
        pfVar16 = param_1[0xe0];
        if ((float)DAT_00baa454 <
            (float)((uint)((float)pfVar16 - *(float *)(iVar4 + 0x380)) & DAT_00bacb40)) {
          local_ec[0] = (float **)((param_1[0xef][0xe0] - (float)pfVar16) * DAT_00baa2d0);
          param_1[0xe0] = (float *)((float)local_ec[0] + (float)pfVar16);
          iVar4 = FUN_00447770();
          *(float *)(iVar4 + 0x380) = *(float *)(iVar4 + 0x380) - (float)local_ec[0];
        }
      }
      iVar4 = FUN_00447770();
      if (1 < *(int *)(iVar4 + 0xc14)) {
        iVar4 = FUN_00447770();
        local_f0 = (float *)(*(float *)(iVar4 + 0x33c) - (float)param_1[0xcf]);
        local_ec[0] = (float **)(*(float *)(iVar4 + 0x340) - (float)param_1[0xd0]);
        if ((param_1[0xb] == (float *)0x1) &&
           (((NAN((float)local_f0) || NAN((float)DAT_00c7b640)) ==
             ((float)local_f0 == (float)DAT_00c7b640) ||
            ((NAN((float)local_ec[0]) || NAN((float)DAT_00c7b644)) ==
             ((float)local_ec[0] == (float)DAT_00c7b644))))) {
          if ((float)local_f0 < 0.0 == (float)local_ec[0] < 0.0) {
            iVar4 = FUN_0040b220(0);
            *(undefined4 *)(iVar4 + 0x3c) = 0x41700000;
          }
          else {
            iVar4 = FUN_0040b220(0);
            *(undefined4 *)(iVar4 + 0x3c) = 0xc1700000;
          }
          if (*(char *)(param_1 + 0x52) != '\0') {
            iVar4 = FUN_0040b220(0);
            *(float *)(iVar4 + 0x3c) = *(float *)(iVar4 + 0x3c) * (float)DAT_00baad50;
          }
        }
        local_34[0] = "WalkBodyHori";
        local_34[1] = "WalkBodyUp";
        local_34[2] = "WalkBodyHori";
        local_34[3] = "WalkBodyDown";
        if ((param_1[0xf0] == (float *)0x0) &&
           (local_34[1] = &DAT_00b1e0d4, param_1[10] == (float *)0xef)) {
          local_34[1] = "WalkBodyUp";
        }
        iVar4 = FUN_0067f260();
        if (param_1[10] == (float *)0x59) {
          pcVar9 = (&PTR_s_WalkHori_00b1dc6c)[iVar4];
        }
        else {
          pcVar9 = local_34[iVar4];
        }
        FUN_0040a380(pcVar9,0);
        *(bool *)(param_1 + 0x52) = iVar4 == 0;
        iVar4 = FUN_006a8990();
        if ((iVar4 == 0) ||
           (((*(int *)(DAT_00c71678 + 0x26614) < 2 || (*(int *)(iVar4 + 0x28) != 1)) &&
            (0x3dd < *(int *)(iVar4 + 0x28) - 10U)))) {
          iVar4 = 0;
        }
        if (0.0 < (float)param_1[0x2ec]) {
          local_ec[0] = (float **)((float)param_1[0x2ec] - (float)param_1[0xe7]);
          local_f4 = (float **)0x0;
          pppfVar11 = local_ec;
          if ((float)local_ec[0] <= 0.0) {
            pppfVar11 = &local_f4;
          }
          param_1[0x2ec] = (float *)*pppfVar11;
        }
        if (((param_1[10] == (float *)0x13) && (param_1[0xf0] == (float *)0x0)) &&
           (param_1[0xc] != (float *)0x2)) {
          if ((iVar4 == 0) || (*(int *)(iVar4 + 0xf1c) == -1)) {
            if ((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 8) != 0xb) &&
               ((uVar5 = FUN_006eef60(), uVar5 % 100 == 0 ||
                ((0.0 < (float)param_1[5] && (uVar5 = FUN_006eef60(), uVar5 % 0x14 == 0))))))
            goto LAB_0046bd9e;
          }
          else {
            cVar3 = FUN_006d8260(8);
            if ((cVar3 != '\0') && ((float)param_1[0x2ec] <= 0.0)) {
LAB_0046bd9e:
              cVar3 = FUN_00417430(0,0x10000000);
              if ((cVar3 == '\0') ||
                 ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
                local_ec[0] = *(float ***)(DAT_00c71678 + 0x18300);
                pfVar16 = (float *)FUN_00812c90(param_1 + 0xcf);
                if (((float *)0x1bf < pfVar16) ||
                   ((((local_ec[0][(int)pfVar16 + 9] == (float *)0x0 ||
                      (fVar15 = local_ec[0][(int)pfVar16 + 9][1], fVar15 == 1.961818e-44)) ||
                     (fVar15 == 1.401298e-45)) || (fVar15 == 1.401298e-44)))) {
                  local_fc = (float **)pfVar16;
                  FUN_006d6ba0(0x3de,0x3f800000,2,0,0x3f800000);
                  local_e4 = *(float ***)(DAT_00c71678 + 0x18300);
                  local_ec[0] = (float **)FUN_007e90f0();
                  if (((-1 < (int)pfVar16) && ((int)pfVar16 < 0x1c0)) ||
                     ((FUN_00a112c0(0x10,"SpawnGridEntity: Grid index invalid\n"), -1 < (int)pfVar16
                      && ((int)pfVar16 < 0x1c0)))) {
                    if ((int)local_e4[(int)pfVar16 + 0x1db] < 0x385) {
                      ppfVar7 = (float **)FUN_00a0f4c0(0x19c);
                      local_14 = 0xb;
                      local_f4 = ppfVar7;
                      if (ppfVar7 == (float **)0x0) {
                        ppfVar7 = (float **)0x0;
                      }
                      else {
                        FUN_00709c40();
                        *ppfVar7 = (float *)IsaacRepentancePlus::GridEntity_Poop::vftable;
                        ppfVar7[0x56] = (float *)0x0;
                        ppfVar7[0x5a] = (float *)0x0;
                        ppfVar7[0x5b] = (float *)&DAT_0000000f;
                        *(undefined *)(ppfVar7 + 0x56) = 0;
                        FUN_00435c70();
                      }
                      local_14 = 0xffffffff;
                      pfVar16 = (float *)local_fc;
                      if (ppfVar7 != (float **)0x0) {
                        ppfVar7[1] = (float *)&DAT_0000000e;
                        ppfVar7[9] = (float *)local_fc;
                        if (local_e4[(int)local_fc + 9] != (float *)0x0) {
                          (**(code **)*local_e4[(int)local_fc + 9])(1);
                        }
                        local_e4[(int)local_fc + 9] = (float *)ppfVar7;
                        ppfVar7[2] = (float *)0x0;
                        ppfVar7[6] = (float *)0x0;
                        FUN_00709db0(local_ec[0]);
                        pfVar16 = (float *)local_fc;
                      }
                    }
                    iVar4 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x24 + (int)pfVar16 * 4);
                    if ((iVar4 != 0) && (*(int *)(iVar4 + 4) == 0xe)) {
                      iVar4 = __RTDynamicCast(iVar4,0,&IsaacRepentancePlus::GridEntity::
                                                       RTTI_Type_Descriptor,
                                              &IsaacRepentancePlus::GridEntity_Poop::
                                               RTTI_Type_Descriptor,0);
                      *(undefined4 *)(iVar4 + 0x18) = 1;
                      param_1[0x2ec] = (float *)0x41f00000;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    local_fc = DAT_00baa89c;
    if (param_1[0xb] == (float *)0x1) {
      local_fc = DAT_00baa868;
    }
    if ((param_1[0xc] == (float *)0x2) && (param_1[10] == (float *)0x13)) {
      local_fc = (float **)((float)local_fc + DAT_00baa834);
    }
    else if (param_1[10] == (float *)0x59) {
      local_fc = DAT_00baa868;
    }
    FUN_006a8990();
    FUN_006d7df0(1);
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa3a4);
    goto LAB_0046c079;
  }
  if (param_1[10] == (float *)0x13) {
    if (((param_1[0xef] == (float *)0x0) && (pfVar16 = param_1[0xf0], pfVar16 != (float *)0x0)) &&
       ((DAT_00ba9fe4 < pfVar16[0xe0] && (param_1[0xc] != (float *)0x2)))) {
      fVar15 = pfVar16[0xe0] + DAT_00baa8a0;
      if (pfVar16[0xe1] <= fVar15) {
        fVar15 = pfVar16[0xe1];
      }
      pfVar16[0xe0] = fVar15;
    }
  }
  else if ((param_1[10] == (float *)0xef) && (param_1[0x2f1] == (float *)0x0)) {
    local_34[1] = (char *)0x0;
    local_34[2] = (char *)0x0;
    local_34[3] = (char *)0x0;
    local_14 = 0;
    FUN_0042f430(0,param_1 + 0xcf);
    param_1[0x2f1] = (float *)0x1;
    ppfVar7 = (float **)local_34[2];
    local_f4 = param_1;
    while( true ) {
      if ((param_1[0xf0] != (float *)0x0) &&
         (iVar4 = __RTDynamicCast(param_1[0xf0],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor
                                  ,&IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
         iVar4 == 0)) {
        FUN_00a112c0(0x10,"m_Child invalid downcast\n");
      }
      param_1 = (float **)param_1[0xf0];
      ppfVar8 = local_fc;
      if (param_1 == (float **)0x0) break;
      if (ppfVar7 == (float **)local_34[3]) {
        FUN_0042f430(ppfVar7,param_1 + 0xcf);
      }
      else {
        pfVar16 = param_1[0xd0];
        *ppfVar7 = param_1[0xcf];
        ppfVar7[1] = pfVar16;
        local_34[2] = (char *)(ppfVar7 + 2);
      }
      ppfVar7 = (float **)local_34[2];
      param_1[0x2f1] = (float *)0x1;
      local_12c = 0;
      local_128 = 0;
      local_124 = 0;
      local_120 = 0;
      local_11c = DAT_00c7b640;
      local_118 = DAT_00c7b644;
      local_114 = DAT_00c7b640;
      local_110 = DAT_00c7b644;
      local_10c = 0;
      local_108 = 0;
      (*(code *)(*param_1)[9])(&local_12c);
    }
    while( true ) {
      if ((ppfVar8[0xef] != (float *)0x0) &&
         (iVar4 = __RTDynamicCast(ppfVar8[0xef],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor
                                  ,&IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
         iVar4 == 0)) {
        FUN_00a112c0(0x10,"m_Parent invalid downcast\n");
      }
      param_1 = local_fc;
      ppfVar8 = (float **)ppfVar8[0xef];
      if (ppfVar8 == (float **)0x0) break;
      if (ppfVar7 == (float **)local_34[3]) {
        FUN_0042f430(ppfVar7,ppfVar8 + 0xcf);
      }
      else {
        pfVar16 = ppfVar8[0xd0];
        *ppfVar7 = ppfVar8[0xcf];
        ppfVar7[1] = pfVar16;
        local_34[2] = (char *)(ppfVar7 + 2);
      }
      ppfVar7 = (float **)local_34[2];
      ppfVar8[0x2f1] = (float *)0x1;
      local_12c = 0;
      local_128 = 0;
      local_124 = 0;
      local_120 = 0;
      local_11c = DAT_00c7b640;
      local_118 = DAT_00c7b644;
      local_114 = DAT_00c7b640;
      local_110 = DAT_00c7b644;
      local_10c = 0;
      local_108 = 0;
      (*(code *)(*ppfVar8)[9])(&local_12c);
    }
    ppfVar14 = (float **)((int)ppfVar7 - (int)local_34[1] >> 3);
    ppfVar8 = ppfVar14;
    ppfVar7 = (float **)local_34[1];
    local_f4 = ppfVar14;
    while (ppfVar13 = ppfVar8, local_f4 = (float **)((int)local_f4 + -1), 0 < (int)local_f4) {
      local_e4 = ppfVar13;
      if (ppfVar13 != (float **)0x0) {
        uVar5 = FUN_006eef60();
        ppfVar13 = (float **)(uVar5 % (uint)local_e4);
        ppfVar7 = (float **)local_34[1];
      }
      pfVar16 = ppfVar7[(int)local_f4 * 2];
      pfVar10 = ppfVar7[(int)local_f4 * 2 + 1];
      ppfVar7[(int)local_f4 * 2] = ppfVar7[(int)ppfVar13 * 2];
      ppfVar7[(int)local_f4 * 2 + 1] = ppfVar7[(int)ppfVar13 * 2 + 1];
      ppfVar7[(int)ppfVar13 * 2] = pfVar16;
      ppfVar7[(int)ppfVar13 * 2 + 1] = pfVar10;
      local_e4 = (float **)((int)local_e4 + -1);
      ppfVar8 = local_e4;
      local_fc = ppfVar13;
    }
    uVar5 = FUN_006eef60();
    local_ec[0] = (float **)((uVar5 & 3) + 2);
    local_f4 = (float **)0x0;
    if (ppfVar14 != (float **)0x0) {
      local_fc = (float **)0x3;
      local_e4 = (float **)local_34[1];
      do {
        if (local_ec[0] <= local_f4) break;
        iVar4 = *(int *)(DAT_00c71678 + 0x18300);
        iVar12 = (int)(((float)*local_e4 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
        iVar6 = (int)(((float)local_e4[1] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
        if ((((iVar12 < 0) || (*(int *)(iVar4 + 0xc) <= iVar12)) || (iVar6 < 0)) ||
           (*(int *)(iVar4 + 0x10) <= iVar6)) {
          iVar12 = -1;
        }
        else {
          iVar12 = iVar6 * *(int *)(iVar4 + 0xc) + iVar12;
        }
        iVar4 = FUN_007f0800(iVar12);
        if (iVar4 == 0) {
          uVar5 = FUN_006eef60();
          uVar5 = uVar5 % (uint)local_fc;
          iVar4 = 0;
          if (uVar5 == 0) {
            uVar23 = FUN_006eef60();
            uVar21 = 0x17;
LAB_0046a616:
            iVar4 = FUN_00428b20(uVar21,0,local_e4,&DAT_00c7b640,param_1,0,uVar23);
          }
          else {
            if (uVar5 == 1) {
              uVar23 = FUN_006eef60();
              uVar21 = 0x1f;
              goto LAB_0046a616;
            }
            if (uVar5 == 2) {
              uVar23 = FUN_006eef60();
              uVar21 = 0x15;
              goto LAB_0046a616;
            }
          }
          if ((param_1[0x3c7] != (float *)0xffffffff) && (iVar4 != 0)) {
            FUN_006d88b0(iVar4);
          }
        }
        local_f4 = (float **)((int)local_f4 + 1);
        local_e4 = local_e4 + 2;
      } while (local_f4 < ppfVar14);
    }
    param_1[0x5a] = (float *)((uint)param_1[0x5a] & 0xfffbffff);
    local_14 = 0xffffffff;
    param_1[0x5b] = param_1[0x5b];
    if ((float **)local_34[1] != (float **)0x0) {
      uVar5 = (int)local_34[3] - (int)local_34[1] & 0xfffffff8;
      ppfVar7 = (float **)local_34[1];
      if (0xfff < uVar5) {
        ppfVar7 = *(float ***)((int)local_34[1] + -4);
        uVar5 = uVar5 + 0x23;
        if ((undefined *)0x1f < (undefined *)((int)local_34[1] + (-4 - (int)ppfVar7))) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(ppfVar7,uVar5);
    }
  }
  if (param_1[10] == (float *)0x13) {
    if ((param_1[0xb] == (float *)0x0) && (param_1[0xef] == (float *)0x0)) {
      DAT_00c7e844 = DAT_00c7e844 + 1;
      if ((DAT_00c7e844 & 1) == 0) {
        uVar23 = 999;
      }
      else {
        uVar23 = 1000;
      }
      FUN_006d6ba0(uVar23,0x3f800000,2,0,0x3f800000);
    }
    if ((param_1[10] == (float *)0x13) && (param_1[0xb] == (float *)0x1)) {
      pfVar16 = param_1[0xc];
      if (pfVar16 == (float *)0x1) {
        local_f0 = param_1[0xcf];
        local_ec[0] = (float **)param_1[0xd0];
        iVar4 = FUN_007f0780(local_f0,local_ec[0]);
        if (iVar4 == 0) {
LAB_0046a775:
          uVar23 = FUN_006eef60();
          uVar22 = 0;
          uVar21 = 0x17;
          goto LAB_0046a788;
        }
      }
      else {
        if (pfVar16 == (float *)0x1) goto LAB_0046a775;
        if (pfVar16 == (float *)0x2) {
          uVar23 = FUN_006eef60();
          uVar22 = 0;
          uVar21 = 0x19;
        }
        else {
          if (pfVar16 != (float *)0x3) goto LAB_0046a793;
          uVar23 = FUN_006eef60();
          uVar22 = 0x14;
          uVar21 = 5;
        }
LAB_0046a788:
        FUN_00428b20(uVar21,uVar22,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar23);
      }
LAB_0046a793:
      if (param_1[0xef] == (float *)0x0) {
        DAT_00c7e840 = DAT_00c7e840 + 1;
        if ((DAT_00c7e840 & 1) == 0) {
          uVar23 = 0x3eb;
        }
        else {
          uVar23 = 0x3ec;
        }
        FUN_006d6ba0(uVar23,0x3f800000,2,0,0x3f800000);
      }
    }
  }
  if (((param_1[0x3c7] != (float *)0xffffffff) && (param_1[10] != (float *)0xef)) &&
     (((pfVar16 = param_1[0xf0], 1 < *(int *)(DAT_00c71678 + 0x26614) &&
       (pfVar16[10] == 1.401298e-45)) || ((int)pfVar16[10] - 10U < 0x3de)))) {
    FUN_006d88b0(pfVar16);
  }
LAB_0046c079:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

