/* Local J460 decompiler output.
 * VA: 0x007d4e01
 * Entry: 007d4390
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Candidate immediate-zero +0x410 write, entity type not yet classified
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Candidate immediate-zero +0x410
   write, entity type not yet classified */

void __fastcall HELPER_FuseWrite_007d4e01(int **param_1)

{
  code *pcVar1;
  undefined auVar2 [12];
  undefined auVar3 [16];
  char cVar4;
  byte bVar5;
  uint uVar6;
  char *pcVar7;
  int ***pppiVar8;
  undefined4 uVar9;
  int iVar10;
  uint uVar11;
  int iVar12;
  int **ppiVar13;
  int iVar14;
  int *piVar15;
  int *piVar16;
  uint uVar17;
  float fVar18;
  int **ppiVar19;
  int *local_7cc;
  int local_7c8;
  int **local_7c4;
  int **local_7c0;
  int **local_7bc;
  int **local_7b8;
  int **local_7b4;
  char local_7ad;
  int **local_7ac [467];
  int local_60 [2];
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined local_48 [8];
  undefined8 uStack_40;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  uint local_2c [2];
  char local_24 [4];
  int local_20;
  int *local_1c;
  int *local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00b00308;
  local_10 = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  local_7bc = param_1;
  piVar16 = param_1[0x7cb];
  if (((piVar16 != (int *)0x0) && (1 < (int)piVar16)) &&
     (param_1[0x62] = (int *)0x0, 2 < (int)piVar16)) {
    param_1[0x61] = (int *)0x0;
  }
  piVar15 = param_1[0x504];
  if ((((piVar15 != (int *)0x0) && (piVar15[10] == 4)) &&
      ((piVar16 == (int *)0x2 || ((piVar16 == (int *)0x3 || (piVar16 == (int *)&DAT_00000004))))))
     && (piVar15[0x104] < 2)) {
    piVar15[0x104] = 10;
    piVar15[0x105] = 10;
    piVar16 = param_1[0x7cb];
  }
  local_14 = uVar6;
  if (0 < (int)param_1[0x7cc]) {
    piVar15 = (int *)((int)param_1[0x7cc] +
                     ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]) * -2);
    param_1[0x7cc] = piVar15;
    if (piVar16 == (int *)&DAT_00000005) {
      param_1[0x7cc] = (int *)0x0;
LAB_007d44b8:
      if (param_1[0x504] == (int *)0x0) {
        param_1[0x55d] = (int *)((uint)param_1[0x55d] | 0x80);
        param_1[0x7cb] = (int *)0x0;
        param_1[0x62] = (int *)&DAT_00000004;
        FUN_00763570(uVar6);
        param_1[0x4ce] = (int *)0x1;
        param_1[0x581] = (int *)&DAT_00000005;
        FUN_007abe90("HideItem");
      }
      else {
        piVar16 = param_1[0x503];
        if (piVar16 == (int *)0x0) {
          local_1c = param_1[0xcf];
          local_18 = param_1[0xd0];
        }
        else {
          local_7cc = (int *)piVar16[0xcf];
          local_7c8 = piVar16[0xd0];
        }
        ppiVar13 = &local_1c;
        if (piVar16 != (int *)0x0) {
          ppiVar13 = &local_7cc;
        }
        param_1[0x7cd] = *ppiVar13;
        param_1[0x7ce] = ppiVar13[1];
        param_1[1999] = param_1[0xcf];
        param_1[2000] = param_1[0xd0];
        pcVar7 = "SuperLeapUp";
        if (param_1[0x7cb] != (int *)&DAT_00000005) {
          pcVar7 = "LeapUp";
        }
        FUN_007abe20(pcVar7);
        param_1[0x7cb] = (int *)0x3;
        local_7ac[0] = (int **)0x408;
        FUN_00956780();
        FUN_0092dc30(local_7ac[0],0x3f800000,2,0,0x3f800000,0);
        cVar4 = FUN_007706e0(0x248,0);
        if (cVar4 != '\0') {
          AI_0041af60(local_24,3,0xce,0x2c5,0,0);
          piVar16 = (int *)0x0;
          local_8 = 0;
          iVar10 = local_20;
          if (local_18 != (int *)0x0) {
            do {
              piVar15 = *(int **)(iVar10 + (int)piVar16 * 4);
              if ((int **)piVar15[0x104] == param_1) {
                auVar2._4_8_ = uStack_40;
                auVar2._0_4_ = DAT_00c7b640;
                local_48 = (undefined  [8])(auVar2._0_8_ << 0x20);
                uStack_40._0_4_ = DAT_00c7b644;
                uStack_40._4_4_ = DAT_00c7b640;
                local_38 = DAT_00c7b644;
                uStack_54 = 0;
                uStack_50 = 0;
                uStack_4c = 0;
                auVar3._12_4_ = 0;
                auVar3._0_12_ = stack0xffffffbc;
                _local_48 = auVar3 << 0x20;
                local_34 = 0;
                local_30 = 0;
                (**(code **)(*piVar15 + 0x24))(&uStack_54);
                iVar10 = local_20;
              }
              piVar16 = (int *)((int)piVar16 + 1);
            } while (piVar16 < local_18);
          }
          local_8 = 0xffffffff;
          if (local_24[0] == '\0') {
            local_8 = 1;
            FUN_00a648b0(0,0);
            local_8 = 0xffffffff;
          }
        }
      }
    }
    else if ((int)piVar15 < 1) {
      param_1[0x7cc] = (int *)0x0;
      if (piVar16 == (int *)0x1) {
        param_1[0x55d] = (int *)((uint)param_1[0x55d] | 0x80);
        param_1[0x7cb] = (int *)0x0;
        param_1[0x62] = (int *)&DAT_00000004;
        FUN_00763570(uVar6);
      }
      else if (piVar16 == (int *)0x2) goto LAB_007d44b8;
    }
  }
  piVar16 = param_1[0x7cb];
  if (piVar16 == (int *)0x3) {
    if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x7cb] = (int *)&DAT_00000004;
      FUN_007cd950(param_1 + 0x7cd,0,0);
      piVar16 = param_1[0x504];
      if (piVar16 != (int *)0x0) {
        piVar16[0xcf] = (int)param_1[0x7cd];
        piVar16[0xd0] = (int)param_1[0x7ce];
      }
      FUN_00452bf0(local_2c);
      local_7ad = FUN_0040cae0("SuperLeapUp",0xb);
      if (&DAT_0000000f < local_18) {
        piVar16 = (int *)((int)local_18 + 1);
        uVar6 = local_2c[0];
        if ((int *)0xfff < piVar16) {
          uVar6 = *(uint *)(local_2c[0] - 4);
          piVar16 = local_18 + 9;
          if (0x1f < (local_2c[0] - uVar6) - 4) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(uVar6,piVar16);
      }
      if (local_7ad == '\0') {
        pcVar7 = "LeapDown";
      }
      else {
        pcVar7 = "SuperLeapDown";
      }
      FUN_007abe20(pcVar7);
    }
  }
  else if (piVar16 == (int *)&DAT_00000004) {
    if (param_1[0x1f] != piVar16 + -1) {
      cVar4 = HELPER_AnimationState_IsEventTriggered(&DAT_00b1d534);
      if (cVar4 != '\0') {
        if (*(int *)(DAT_00c71678 + 0x26614) < 2) {
          local_7b4 = (int **)0x42200000;
          local_7b8 = (int **)((float)param_1[0x53c] * DAT_00baa924);
          pppiVar8 = &local_7b8;
          if ((float)local_7b8 <= DAT_00baa904) {
            pppiVar8 = &local_7b4;
          }
          local_7c0 = *pppiVar8;
        }
        else {
          local_7c0 = DAT_00baa8a0;
        }
        local_7b4 = (int **)((float)param_1[0x53c] * (float)DAT_00baa8a0);
        local_7c4 = (int **)0x41a00000;
        local_7ac[0] = (int **)0x409;
        pppiVar8 = &local_7b4;
        if ((float)local_7b4 <= DAT_00baa87c) {
          pppiVar8 = &local_7c4;
        }
        local_7b8 = *pppiVar8;
        FUN_00956780();
        FUN_0092dc30(local_7ac[0],0x3f800000,2,0,0x3f800000,0);
        FUN_00452bf0(local_2c);
        local_7ad = FUN_0040cae0("SuperLeapDown",0xd);
        if (&DAT_0000000f < local_18) {
          piVar16 = (int *)((int)local_18 + 1);
          uVar17 = local_2c[0];
          if ((int *)0xfff < piVar16) {
            uVar17 = *(uint *)(local_2c[0] - 4);
            piVar16 = local_18 + 9;
            if (0x1f < (local_2c[0] - uVar17) - 4) {
                    /* WARNING: Subroutine does not return */
              _invalid_parameter_noinfo_noreturn();
            }
          }
          FUN_00aef15c(uVar17,piVar16);
        }
        local_1c = (int *)0x0;
        local_18 = (int *)0xf;
        local_2c[0] = local_2c[0] & 0xffffff00;
        if (local_7ad == '\0') {
          FUN_00703670(0xe);
          local_7b4 = (int **)0x34;
          FUN_00956780();
          FUN_0092dc30(local_7b4,0x3f800000,2,0,0x3f800000,0);
          param_1 = local_7bc;
          FUN_00703770(local_7bc + 0xcf,0x3d23d70a,0x3ccccccd,0xd);
          local_7b4 = (int **)0x428c0000;
          local_7c4 = (int **)((float)param_1[0x53c] * DAT_00baa904 + DAT_00baa924);
          pppiVar8 = &local_7c4;
          if ((float)local_7c4 <= DAT_00baa97c) {
            pppiVar8 = &local_7b4;
          }
          local_18 = (int *)((float)*pppiVar8 / DAT_00baa804);
          uVar9 = FUN_006eef60();
          local_7c8 = HELPER_Entity_SpawnRelay
                                (1000,0x3d,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar9);
          local_7bc = (int **)(local_7c8 + 0x3bc);
          if (*(int *)(local_7c8 + 0x3bc) != 0) {
            local_7ac[0] = local_7bc;
            FUN_004cf210(local_7ac);
          }
          *local_7bc = (int *)param_1;
          FUN_004cdcf0(local_7bc);
          *(int **)(local_7c8 + 0x454) = param_1[0xdc];
          *(int ***)(local_7c8 + 0x458) = *pppiVar8;
          *(int *)(local_7c8 + 0x45c) = (int)(float)local_18;
          *(int *)(local_7c8 + 0x460) = (int)(float)local_18;
        }
        else {
          local_7c0 = (int **)((float)local_7c0 * DAT_00baa7a4);
          local_7ac[0] = (int **)0x34;
          local_7b8 = (int **)((float)*pppiVar8 + (float)*pppiVar8);
          FUN_00956780();
          FUN_0092dc30(local_7ac[0],0x3f800000,2,0,0x3f800000,0);
          uVar9 = FUN_006eef60();
          ppiVar19 = local_7bc;
          ppiVar13 = local_7bc + 0xcf;
          piVar15 = (int *)HELPER_Entity_SpawnRelay
                                     (1000,0x7f,ppiVar13,&DAT_00c7b640,local_7bc,0,uVar9);
          piVar16 = ppiVar19[0xd0];
          piVar15[0xcd] = (int)*ppiVar13;
          piVar15[0xce] = (int)piVar16;
          (**(code **)(*piVar15 + 0xc))();
          uVar9 = FUN_006eef60();
          piVar16 = (int *)HELPER_Entity_SpawnRelay(1000,0x12,ppiVar13,&DAT_00c7b640,0,0,uVar9);
          fVar18 = DAT_00c37940 * DAT_00baa630;
          piVar16[0x39] = (int)(DAT_00c3793c * DAT_00baa630);
          piVar16[0x3a] = (int)fVar18;
          (**(code **)(*piVar16 + 0xc))();
          uVar17 = 0;
          do {
            iVar10 = FUN_006eef60();
            local_7c4 = (int **)((((((float)((double)uVar17 +
                                            (double)(&DAT_00bacb00)[-((int)uVar17 >> 0x1f)]) +
                                    (float)((double)iVar10 +
                                           (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                                    DAT_00ba9ff4) - DAT_00baa2d0) * DAT_00baab30) / DAT_00baa854) *
                                DAT_00baa088);
            ppiVar19 = local_7c4;
            FUN_0041d520();
            local_7ac[0] = ppiVar19;
            iVar10 = FUN_006eef60();
            local_7b4 = (int **)((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]
                                        ) * DAT_00ba9ff4 * DAT_00baa784 + DAT_00baa854);
            ppiVar19 = local_7c4;
            FUN_0041d540();
            local_1c = (int *)((float)ppiVar19 * (float)local_7b4);
            local_18 = (int *)((float)local_7b4 * (float)local_7ac[0] * DAT_00baa3c4);
            uVar9 = FUN_006eef60();
            local_7ac[0] = (int **)HELPER_Entity_SpawnRelay(1000,0x3b,ppiVar13,&local_1c,0,0,uVar9);
            uVar11 = FUN_006eef60();
            local_7b4 = DAT_00baad50;
            if ((uVar11 & 1) != 0) {
              local_7b4 = DAT_00baa454;
            }
            iVar10 = FUN_006eef60();
            local_7ac[0][0x11d] =
                 (int *)(((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa630) * (float)local_7b4);
            iVar10 = FUN_006eef60();
            fVar18 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa304 + (float)DAT_00baa454;
            piVar16 = (int *)(fVar18 * DAT_00c3793c);
            local_7ac[0][0x3a] = (int *)(fVar18 * DAT_00c37940);
            local_7ac[0][0x39] = piVar16;
            uVar11 = FUN_006eef60();
            uStack_4c = _UNK_00babdec;
            uStack_50 = _UNK_00babde8;
            uStack_54 = _UNK_00babde4;
            local_58 = _DAT_00babde0;
            local_38 = 0;
            local_34 = 0;
            piVar16 = (int *)(uVar11 % 0x28 + 0x28);
            local_30 = 0;
            _local_48 = ZEXT812(0);
            uStack_40._4_4_ = 0;
            local_7ac[0][0x117] = piVar16;
            local_7ac[0][0x118] = piVar16;
            (*(code *)(*local_7ac[0])[0xf])(&local_58,0xffffffff,0xff,0,1);
            uVar17 = uVar17 + 1;
          } while (uVar17 < 0xf);
          uVar9 = FUN_006eef60();
          param_1 = local_7bc;
          piVar16 = (int *)HELPER_Entity_SpawnRelay
                                     (1000,0x10,ppiVar13,&DAT_00c7b640,local_7bc,1,uVar9);
          fVar18 = DAT_00c37940 * DAT_00baa630;
          piVar16[0x39] = (int)(DAT_00c3793c * DAT_00baa630);
          piVar16[0x3a] = (int)fVar18;
          bVar5 = FUN_006eef60();
          *(byte *)(piVar16 + 0x52) = (bVar5 ^ 0xff) & 1;
          (**(code **)(*piVar16 + 0xc))();
        }
        local_18 = param_1[0x504];
        if (local_18 != (int *)0x0) {
          pcVar1 = *(code **)(*local_18 + 0x20);
          FUN_00431310(param_1);
          (*pcVar1)(local_7c0,0x1000000,0,&uStack_54,0x1e);
          piVar16 = param_1[0x504];
          if (piVar16[10] == 4) {
            piVar16[0x104] = 0;
            piVar16[0x105] = 0;
            (**(code **)(*param_1[0x504] + 0xc))();
          }
        }
        ppiVar13 = param_1 + 0xcf;
        HELPER_ExplosionDamage
                  (ppiVar13,local_7c0,local_7b8,0,param_1,DAT_00c79100,DAT_00c79104,DAT_00c79108,
                   DAT_00c7910c,0x1000000,0,0);
        iVar10 = *(int *)(DAT_00c71678 + 0x18300);
        iVar14 = (int)(((float)*ppiVar13 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
        iVar12 = (int)(((float)param_1[0xd0] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
        if ((((iVar14 < 0) || (*(int *)(iVar10 + 0xc) <= iVar14)) || (iVar12 < 0)) ||
           (*(int *)(iVar10 + 0x10) <= iVar12)) {
          iVar14 = -1;
        }
        else {
          iVar14 = iVar12 * *(int *)(iVar10 + 0xc) + iVar14;
        }
        iVar10 = FUN_007f0800(iVar14);
        if ((iVar10 == 0) || ((*(char *)(param_1 + 0x55c) != '\0' && (iVar10 < 4)))) {
          FUN_007e31a0(param_1);
          local_8 = 2;
          cVar4 = FUN_007e7070(param_1 + 1999,0);
          if (cVar4 != '\0') {
            param_1[1999] = *ppiVar13;
            param_1[2000] = param_1[0xd0];
          }
          local_8 = 0xffffffff;
          FID_conflict__Erase_tree<class_fuzzer::fuzzer_allocator<struct_std::_Tree_node<struct_fuzzer::TracePC::PCTableEntry_const*,void*>_>_>
                    (local_60,*(undefined4 *)(local_60[0] + 4));
          FUN_00aef15c(local_60[0],0x14);
        }
        cVar4 = FUN_007706e0(0x248,0);
        if (cVar4 != '\0') {
          local_7b8 = (int **)0x3;
          do {
            iVar10 = FUN_005c93b0(0x2c5,ppiVar13,0,1);
            if (iVar10 != 0) {
              piVar16 = param_1[0xd0];
              *(int **)(iVar10 + 0x334) = *ppiVar13;
              *(int **)(iVar10 + 0x338) = piVar16;
            }
            local_7b8 = (int **)((int)local_7b8 + -1);
          } while (local_7b8 != (int **)0x0);
        }
      }
      if ((param_1[0x1f] != (int *)0x0) &&
         (cVar4 = HELPER_AnimationState_IsEventTriggered(&DAT_00b1d3b0), cVar4 != '\0')) {
        FUN_007d2470(&DAT_00c7b640);
      }
    }
    if (param_1[0x1f] != (int *)0x0) {
      cVar4 = HELPER_AnimationState_WasEventTriggered(&DAT_00b1d3b0);
      if (cVar4 != '\0') {
        piVar16 = (int *)(((float)param_1[2000] - (float)param_1[0xd0]) * DAT_00baa1f8);
        param_1[0xd8] = (int *)(((float)param_1[1999] - (float)param_1[0xcf]) * DAT_00baa1f8);
        param_1[0xd9] = piVar16;
      }
      if ((param_1[0x1f] != (int *)0x0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_007d514e;
    }
    param_1[0x7cb] = (int *)0x0;
    param_1[0x4ce] = (int *)0x1;
    param_1[0x581] = (int *)&DAT_00000005;
    piVar16 = param_1[0x4ef];
    param_1[0x62] = (int *)&DAT_00000004;
    if ((int)piVar16 < 0xf) {
      piVar16 = (int *)&DAT_0000000f;
    }
    param_1[0x55d] = (int *)((uint)param_1[0x55d] | 0x80);
    param_1[0x4ef] = piVar16;
    FUN_00763570(uVar6);
  }
LAB_007d514e:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

