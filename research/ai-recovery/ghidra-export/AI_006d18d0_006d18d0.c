/* Local J460 decompiler output.
 * VA: 0x006d18d0
 * Entry: 006d18d0
 * Dispatcher: 0x006c2990
 * Types: 33
 * Identities: 33.0.0,33.1.0,33.10.0,33.11.0,33.11.1,33.11.2,33.11.3,33.12.0,33.13.0,33.2.0,33.3.0,33.4.0
 * Evidence: dispatcher=0x006c2990; end=0x006d2b50; instructions=1064
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=33;
   identities=33.0.0,33.1.0,33.10.0,33.11.0,33.11.1,33.11.2,33.11.3,33.12.0,33.13.0,33.2.0,33.3.0,33.4.0;
   dispatcher=0x006c2990; end=0x006d2b50; instructions=1064 */

void __fastcall AI_006d18d0(int *param_1)

{
  char cVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  float *pfVar5;
  int *piVar6;
  float *pfVar7;
  uint uVar8;
  int iVar9;
  undefined4 *puVar10;
  float fVar11;
  undefined4 uVar12;
  undefined8 uVar13;
  undefined4 uVar14;
  TypeDescriptor *pTVar15;
  TypeDescriptor *pTVar16;
  undefined4 uVar17;
  int local_fc [3];
  int local_f0;
  int local_ec;
  float local_e8;
  float local_e4;
  float *local_e0;
  int *local_dc;
  int local_d8;
  undefined8 local_d4;
  int *local_cc;
  int local_c8;
  float *local_c4;
  float local_c0;
  int *local_bc;
  float local_b8;
  float local_b4;
  float local_b0;
  char local_a9;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 local_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00afabb0;
  local_1c = ExceptionList;
  puStack_20 = &stack0xfffffffc;
  uVar2 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_24 = uVar2;
  ExceptionList = &local_1c;
  iVar3 = param_1[0xb];
  local_bc = param_1;
  if (((iVar3 == 2) || (iVar3 == 3)) || (iVar3 == 4)) {
    local_a9 = '\x01';
  }
  else {
    local_a9 = '\0';
    if ((DAT_00baa198 < *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7240)) &&
       (cVar1 = FUN_006ac710(5,param_1[8]), cVar1 != '\0')) {
      uVar13 = FUN_00435c70();
      (*(code *)((ulonglong)uVar13 >> 0x20))(0x3f800000,0,0,(int)uVar13,0x1e);
      iVar3 = param_1[0xb];
    }
  }
  if (iVar3 == 0xb) {
    AI_004f9ad0();
    goto LAB_006d2b26;
  }
  if (((iVar3 == 10) || (iVar3 == 0xc)) || (iVar3 == 0xd)) {
    FUN_006d0ec0(uVar2);
    goto LAB_006d2b26;
  }
  local_c8 = param_1[0xf5];
  iVar9 = param_1[0x2d9];
  if (iVar9 == 0) {
    param_1[0x5a] = param_1[0x5a] | 0x40000;
    local_d4 = DAT_00b1f66c;
    param_1[0x5b] = param_1[0x5b];
    local_d8 = param_1[0xfb];
    local_cc = DAT_00b1f674;
    if ((**(char **)(DAT_00c71678 + 0x18300) != '\0') &&
       (*(int *)(DAT_00c71678 + 0x264f8) == *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0)))
    {
      if ((iVar3 == 2) && (iVar3 = FUN_007e9020(100), iVar3 == 0)) {
        FUN_006c0f30(param_1[10],3,param_1[0xc],0xffffffff);
      }
      iVar3 = FUN_007e9020(3);
      param_1[0xc] = iVar3;
    }
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    uVar2 = FUN_006eef60();
    fVar11 = DAT_00baa528;
    param_1[0x5b] = param_1[0x5b];
    param_1[0x2e8] = uVar2 % 0x1e + 0x3c;
    param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x42050011;
    if ((fVar11 < (float)param_1[0xe0]) &&
       ((((DAT_00ba9fe4 < *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7240) &&
          (local_a9 == '\0')) && (local_c8 == 0)) ||
        (cVar1 = FUN_0074e9b0(), fVar11 = DAT_00baa528, cVar1 != '\0')))) {
      param_1[0xe0] = 0x3f800000;
    }
    if ((float)param_1[0xe0] <= fVar11) {
      if (local_c8 == 0) {
        uVar4 = FUN_00812c90(param_1 + 0xcf);
        FUN_004565e0(uVar4,900);
      }
      param_1[0x2d9] = 3;
      param_1[0x62] = 0;
      param_1[0x61] = 0;
      uVar8 = -(uint)(param_1[0xc] != 0) & param_1[0xc];
      uVar2 = 2;
      if (uVar8 < 2) {
        uVar2 = uVar8;
      }
      FUN_0040a380((&PTR_s_NoFire_00b64fdc)[uVar2],0);
      param_1[0xd5] = -1000;
      FUN_006da530();
    }
    else {
      if (local_c8 == 0) {
        uVar4 = FUN_00812c90(param_1 + 0xcf);
        FUN_004565e0(uVar4,0x3b6);
      }
      param_1[0x2d9] = 8;
      uVar8 = -(uint)(param_1[0xc] != 0) & param_1[0xc];
      uVar2 = 2;
      if (uVar8 < 2) {
        uVar2 = uVar8;
      }
      FUN_0040a380((&PTR_s_Flickering_00b64fd0)[uVar2],0);
      if ((param_1[0x1f] != 0) && (0 < *(int *)(param_1[0x1f] + 0x30))) {
        FUN_00408e00();
      }
      local_b8 = ((float)param_1[0xe0] / (float)param_1[0xe1]) * DAT_00c37940;
      local_b0 = ((float)param_1[0xe0] / (float)param_1[0xe1]) * DAT_00c3793c;
      iVar3 = FUN_0040b220(1);
      *(float *)(iVar3 + 0x34) = local_b0;
      *(float *)(iVar3 + 0x38) = local_b8;
      FUN_006da530();
    }
    goto LAB_006d2b26;
  }
  if (iVar9 == 9) {
    param_1[0xe0] = param_1[0xe1];
    param_1[0x2d9] = 8;
    uVar8 = -(uint)(param_1[0xc] != 0) & param_1[0xc];
    uVar2 = 2;
    if (uVar8 < 2) {
      uVar2 = uVar8;
    }
    FUN_0040a380((&PTR_s_Flickering_00b64fd0)[uVar2],0);
    if ((param_1[0x1f] != 0) && (0 < *(int *)(param_1[0x1f] + 0x30))) {
      FUN_00408e00();
    }
    local_b8 = ((float)param_1[0xe0] / (float)param_1[0xe1]) * DAT_00c37940;
    local_b0 = ((float)param_1[0xe0] / (float)param_1[0xe1]) * DAT_00c3793c;
    iVar3 = FUN_0040b220(1);
    *(float *)(iVar3 + 0x34) = local_b0;
    *(float *)(iVar3 + 0x38) = local_b8;
    param_1[0x62] = 4;
    param_1[0xd5] = 0;
    if (local_c8 == 0) {
      uVar4 = FUN_00812c90(param_1 + 0xcf);
      FUN_004565e0(uVar4,0x3b6);
    }
    uVar4 = FUN_006eef60();
    iVar3 = FUN_00428b20(1000,0xf,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar4);
    *(undefined4 *)(iVar3 + 0x34c) = 0;
    *(undefined4 *)(iVar3 + 0x350) = 0xc0c00000;
    uVar4 = DAT_00baa244;
    uVar14 = DAT_00baa2d0;
    if (param_1[0xb] == 1) {
      uVar4 = DAT_00baa304;
      uVar14 = 0;
    }
    *(undefined4 *)(iVar3 + 0x110) = uVar4;
    *(undefined4 *)(iVar3 + 0x114) = 0;
    *(undefined4 *)(iVar3 + 0x118) = uVar14;
    FUN_006d6ba0(0x1d7,0x3f800000,2,0,0x3f800000);
    uVar2 = FUN_006eef60();
    iVar9 = param_1[0x2d9];
    param_1[0x2e8] = uVar2 % 0x3c + 0x5a;
  }
  if ((iVar9 == 8) && ((param_1[0x1f] == 0 || (*(char *)(param_1 + 0x23) == '\0')))) {
    uVar8 = -(uint)(param_1[0xc] != 0) & param_1[0xc];
    uVar2 = 2;
    if (uVar8 < 2) {
      uVar2 = uVar8;
    }
    FUN_0040a380((&PTR_s_Flickering_00b64fd0)[uVar2],0);
  }
  pfVar7 = (float *)(param_1 + 0xcf);
  param_1[0xd8] = (int)((float)param_1[0xcd] - *pfVar7);
  param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
  local_c4 = pfVar7;
  if ((0.0 < (float)param_1[5]) || (*(char *)((int)param_1 + 0x173) != '\0')) {
    iVar3 = param_1[0xb];
    if ((iVar3 == 0) || (iVar3 == 1)) {
      local_a9 = '\0';
      if (((*(char *)((int)param_1 + 0x173) != '\0') || ((param_1[6] & 4U) != 0)) ||
         (DAT_00baabc4 <= (float)param_1[5])) {
        local_a9 = '\x01';
      }
      if (param_1[0x2d9] == 8) {
        iVar3 = param_1[2];
        local_b8 = 0.0;
        iVar9 = param_1[3] - iVar3 >> 0x1f;
        if ((param_1[3] - iVar3) / 0x38 + iVar9 != iVar9) {
          local_b0 = 0.0;
          do {
            if (*(float *)(iVar3 + (int)local_b0) <= DAT_00baa81c) {
              if (0.0 < *(float *)(iVar3 + (int)local_b0)) {
                uVar2 = FUN_006eef60();
                fVar11 = DAT_00baa454;
                if (uVar2 % 3 == 0) goto LAB_006d20d1;
                goto LAB_006d20e3;
              }
            }
            else {
              uVar2 = FUN_006eef60();
              fVar11 = DAT_00baa6fc;
              if (uVar2 % 3 != 0) {
LAB_006d20d1:
                fVar11 = DAT_00baa630;
              }
LAB_006d20e3:
              param_1[0xe0] = (int)((float)param_1[0xe0] - fVar11);
            }
            iVar3 = param_1[2];
            local_b0 = (float)((int)local_b0 + 0x38);
            local_b8 = (float)((int)local_b8 + 1);
          } while ((uint)local_b8 < (uint)((param_1[3] - iVar3) / 0x38));
        }
        pfVar7 = (float *)(param_1 + 0xe0);
        local_b0 = 1.0;
        pfVar5 = &local_b0;
        if (DAT_00baa454 < (float)param_1[0xe0]) {
          pfVar5 = pfVar7;
        }
        local_b0 = *pfVar5;
        *pfVar7 = local_b0;
        local_b0 = local_b0 / (float)param_1[0xe1];
        local_b8 = local_b0 * DAT_00c37940;
        local_b0 = local_b0 * DAT_00c3793c;
        iVar3 = FUN_0040b220(1);
        *(float *)(iVar3 + 0x34) = local_b0;
        *(float *)(iVar3 + 0x38) = local_b8;
        if ((*pfVar7 <= DAT_00baa528 && DAT_00baa528 != *pfVar7) || (local_a9 != '\0')) {
          if (local_c8 == 0) {
            uVar4 = FUN_00812c90(param_1 + 0xcf);
            FUN_004565e0(uVar4,900);
          }
          param_1[0xe0] = 0x3f800000;
          param_1[0x2d9] = 3;
          uVar8 = -(uint)(param_1[0xc] != 0) & param_1[0xc];
          param_1[0x62] = 0;
          param_1[0x61] = 0;
          uVar2 = 2;
          if (uVar8 < 2) {
            uVar2 = uVar8;
          }
          FUN_0040a380((&PTR_s_NoFire_00b64fdc)[uVar2],0);
          param_1[0xd5] = -1000;
          FUN_006d6ba0(0x105,0x3f59999a,2,0,0x3f800000);
          uVar8 = -(uint)(param_1[0xc] != 0) & param_1[0xc];
          uVar2 = 2;
          if (uVar8 < 2) {
            uVar2 = uVar8;
          }
          FUN_0040a380((&PTR_s_Dissapear_00b67374)[uVar2],0);
          iVar9 = param_1[3] - param_1[2];
          iVar3 = iVar9 >> 0x1f;
          if (((iVar9 / 0x38 + iVar3 != iVar3) && (*(int *)(param_1[3] + -4) != 0)) &&
             (iVar3 = FUN_006a9140(), iVar3 != 0)) {
            FUN_00425ac0(0xe,iVar3);
            cVar1 = FUN_007706e0(0x1a4,0);
            if (cVar1 != '\0') {
              uVar4 = FUN_00407170();
              FUN_00700060(param_1 + 0xcf,0x41a00000,0,0,0,0,uVar4,iVar3,0x3f800000,1,4,0,0);
            }
          }
          goto LAB_006d236b;
        }
LAB_006d2424:
        pfVar7 = (float *)(param_1 + 0xcf);
      }
    }
    else if (((local_a9 != '\0') && (iVar3 != 4)) && (param_1[0x2d9] == 8)) {
      if (((param_1[6] & 4U) != 0) || (*(char *)((int)param_1 + 0x173) != '\0')) {
        param_1[0xe0] = 0x3f800000;
        param_1[0x2d9] = 3;
        param_1[0x62] = 0;
        uVar8 = -(uint)(param_1[0xc] != 0) & param_1[0xc];
        param_1[0x61] = 0;
        uVar2 = 2;
        if (uVar8 < 2) {
          uVar2 = uVar8;
        }
        FUN_0040a380((&PTR_s_NoFire_00b64fdc)[uVar2],0);
        param_1[0xd5] = -1000;
        FUN_006d6ba0(0x105,0x3f59999a,2,0,0x3f800000);
        uVar4 = FUN_006eef60();
        FUN_00428b20(1000,0xf,pfVar7,&DAT_00c7b640,0,0,uVar4);
        iVar9 = param_1[3] - param_1[2];
        iVar3 = iVar9 >> 0x1f;
        if (((iVar9 / 0x38 + iVar3 != iVar3) && (*(int *)(param_1[3] + -4) != 0)) &&
           (iVar3 = FUN_006a9140(), iVar3 != 0)) {
          FUN_00425ac0(0xe,iVar3);
        }
LAB_006d236b:
        FUN_006d1580(local_fc,1);
        local_14 = 0;
        for (iVar3 = local_f0; param_1 = local_bc, iVar3 != local_f0 + local_ec; iVar3 = iVar3 + 1)
        {
          piVar6 = (int *)FUN_0085bed0(local_c4,&DAT_00c7b640,0);
          (**(code **)(*piVar6 + 0xc))();
        }
        if (local_ec != 0) {
          *(undefined *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7894) = 1;
        }
        FUN_006da530();
        local_14 = 0xffffffff;
        FUN_006da850();
        iVar3 = local_fc[0];
        local_fc[0] = 0;
        FUN_00aef15c(iVar3,8);
        goto LAB_006d2424;
      }
      goto LAB_006d2444;
    }
    if (*(char *)((int)param_1 + 0x173) != '\0') {
      param_1[0xe0] = 0x3f800000;
      *(undefined *)((int)param_1 + 0x173) = 0;
    }
  }
LAB_006d2444:
  param_1[3] = param_1[2];
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  if ((((((param_1[0xb] == 1) || (param_1[0xb] == 3)) && (param_1[0xd] != 0x389)) &&
       ((param_1[0xd] != 0x397 && (param_1[0x2e8] < 1)))) && (param_1[0x2d9] == 8)) &&
     (uVar2 = FUN_006eef60(), uVar2 % 5 == 0)) {
    local_b0 = *pfVar7 + DAT_00ba9fe4;
    local_b8 = pfVar7[1] - DAT_00baa854;
    iVar3 = FUN_00703950(pfVar7);
    local_cc = *(int **)(iVar3 + 0x340);
    local_d4 = CONCAT44(*(float *)(iVar3 + 0x33c),(undefined4)local_d4);
    local_e0 = (float *)(*(float *)(iVar3 + 0x33c) - local_b0);
    local_dc = (int *)((float)local_cc - local_b8);
    local_c4 = local_e0;
    local_bc = local_dc;
    pfVar7 = (float *)FUN_00a10030(&local_e8);
    local_e0 = (float *)(*pfVar7 * DAT_00baa8a0 + local_b0);
    local_dc = (int *)(pfVar7[1] * DAT_00baa8a0 + local_b8);
    fVar11 = (float)local_bc * (float)local_bc + (float)local_c4 * (float)local_c4;
    FUN_00435a50();
    if (((fVar11 < DAT_00baaa5c) &&
        (cVar1 = FUN_007f0df0(&local_e0,(int)&local_d4 + 4,3,0,0,0,0), cVar1 != '\0')) &&
       (uVar2 = FUN_006eef60(), uVar2 % 0xf == 0)) {
      FUN_0040a940("Shoot",0);
      param_1[0x2e8] = 0x54;
    }
  }
  else if (0 < param_1[0x2e8]) {
    param_1[0x2e8] = param_1[0x2e8] + -1;
  }
  if (*(char *)(param_1 + 0x2b) != '\0') {
    local_bc = (int *)FUN_0040ac70(0);
    if (local_bc != (int *)0x0) {
      iVar3 = FUN_0040b220(1);
      *(int *)(iVar3 + 0x40) = *local_bc;
      *(int *)(iVar3 + 0x44) = local_bc[1];
      local_c4 = (float *)((float)param_1[0xe0] / (float)param_1[0xe1]);
      local_b0 = (float)local_bc[5];
      local_bc = (int *)local_bc[4];
      iVar3 = FUN_0040b220(1);
      *(float *)(iVar3 + 0x34) = (float)local_bc * (float)local_c4;
      *(float *)(iVar3 + 0x38) = (float)local_c4 * local_b0;
    }
    cVar1 = FUN_0040add0("Shoot");
    if (((cVar1 != '\0') && (param_1[0xd] != 0x389)) && (param_1[0xd] != 0x397)) {
      local_b4 = (float)param_1[0xcf] + DAT_00ba9fe4;
      local_b0 = (float)param_1[0xd0] - DAT_00baa854;
      iVar3 = FUN_00703950(param_1 + 0xcf);
      local_c0 = *(float *)(iVar3 + 0x33c) - local_b4;
      local_bc = (int *)(*(float *)(iVar3 + 0x340) - local_b0);
      pfVar7 = (float *)FUN_00a10030((int)&local_d4 + 4);
      local_b4 = *pfVar7 * DAT_00baa8a0 + local_b4;
      local_b0 = pfVar7[1] * DAT_00baa8a0 + local_b0;
      uVar4 = FUN_006eef60();
      pfVar7 = (float *)FUN_00a10030(&local_e0);
      uVar17 = 0;
      pTVar16 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
      pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar14 = 0;
      local_d4 = CONCAT44(*pfVar7 * DAT_00baa784,(undefined4)local_d4);
      local_cc = (int *)(pfVar7[1] * DAT_00baa784);
      uVar4 = FUN_00428b20(9,0,&local_b4,(int)&local_d4 + 4,param_1,0,uVar4);
      iVar3 = __RTDynamicCast(uVar4,uVar14,pTVar15,pTVar16,uVar17);
      if (param_1[0xb] == 3) {
        *(uint *)(iVar3 + 0x438) = *(uint *)(iVar3 + 0x438) | 1;
        *(undefined4 *)(iVar3 + 0x43c) = *(undefined4 *)(iVar3 + 0x43c);
        *(undefined4 *)(iVar3 + 0x420) = 0x3fc00000;
      }
    }
  }
  if ((param_1[0x2d9] == 8) && (uVar2 = FUN_006eef60(), uVar2 % 7 == 0)) {
    iVar3 = FUN_006eef60();
    local_c4 = (float *)((float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) *
                        DAT_00ba9ff4);
    local_bc = (int *)param_1[0xe0];
    iVar3 = FUN_006eef60();
    local_e8 = ((float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4 *
                DAT_00baa85c - DAT_00baa7e8) + (float)param_1[0xcf];
    local_e4 = ((DAT_00baadd8 - ((float)local_bc * DAT_00baa854) / DAT_00baa7a4) -
               (float)local_c4 * DAT_00baa854) + (float)param_1[0xd0];
    iVar3 = FUN_006eef60();
    local_bc = (int *)((float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) *
                       DAT_00ba9ff4 * _DAT_00baad64 - DAT_00baa3a4);
    iVar3 = FUN_006eef60();
    local_d4 = CONCAT44((float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baa280 - DAT_00baa198,(undefined4)local_d4);
    local_cc = local_bc;
    uVar4 = FUN_006eef60();
    piVar6 = (int *)FUN_00428b20(1000,0x42,&local_e8,(int)&local_d4 + 4,param_1,0,uVar4);
    iVar3 = param_1[0xb];
    if (iVar3 == 1) {
      uVar4 = FUN_00435a80();
      (**(code **)(*piVar6 + 0x3c))(uVar4,0xffffffff,0xff,0,1);
    }
    else {
      uVar4 = _DAT_00bac8a0;
      uVar14 = _UNK_00bac8a4;
      uVar17 = _UNK_00bac8a8;
      uVar12 = _UNK_00bac8ac;
      if ((iVar3 == 2) ||
         (uVar4 = _DAT_00bac720, uVar14 = _UNK_00bac724, uVar17 = _UNK_00bac728,
         uVar12 = _UNK_00bac72c, iVar3 == 3)) {
        uStack_44 = _UNK_00bac7bc;
        uStack_48 = _UNK_00bac7b8;
        uStack_4c = _UNK_00bac7b4;
        local_50 = _DAT_00bac7b0;
        local_30 = 0;
        puVar10 = &local_50;
        local_2c = 0;
        local_28 = 0;
        local_40 = uVar4;
        uStack_3c = uVar14;
        uStack_38 = uVar17;
        uStack_34 = uVar12;
      }
      else {
        if (iVar3 != 4) goto LAB_006d2ac3;
        puVar10 = &local_7c;
        local_7c = _DAT_00bac7b0;
        uStack_78 = _UNK_00bac7b4;
        uStack_74 = _UNK_00bac7b8;
        uStack_70 = _UNK_00bac7bc;
        local_5c = 0;
        local_6c = _DAT_00bac8b0;
        uStack_68 = _UNK_00bac8b4;
        uStack_64 = _UNK_00bac8b8;
        uStack_60 = _UNK_00bac8bc;
        local_58 = 0;
        local_54 = 0;
      }
      (**(code **)(*piVar6 + 0x3c))(puVar10,0xffffffff,0xff,0,1);
    }
  }
LAB_006d2ac3:
  if (param_1[0x2d9] == 3) {
    local_c0 = (float)param_1[0xcf];
    local_bc = (int *)param_1[0xd0];
    iVar3 = FUN_007f0780(local_c0,local_bc);
    if ((iVar3 != 0) && (local_c8 == 0)) {
      (**(code **)(*param_1 + 0x28))();
    }
  }
LAB_006d2b26:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

