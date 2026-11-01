/* Local J460 decompiler output.
 * VA: 0x0045ef20
 * Entry: 0045ef20
 * Dispatcher: 0x006c2990
 * Types: 262
 * Identities: 262.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0045fc00; instructions=773
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=262; identities=262.0.0; dispatcher=0x006c2990;
   end=0x0045fc00; instructions=773 */

void __fastcall AI_0045ef20(int param_1)

{
  float *pfVar1;
  char cVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined4 *puVar7;
  int iVar8;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  int iVar9;
  bool bVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float local_d4;
  float local_d0;
  float local_cc;
  float local_c8;
  float local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  undefined local_b8 [4];
  undefined4 local_b4;
  undefined *local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  float local_a4;
  float fStack_a0;
  undefined4 uStack_98;
  uint local_60;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  int iStack_3c;
  undefined4 local_24;
  undefined4 local_1c;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&local_d4;
  local_c8 = (float)((uint)(*(int *)(param_1 + 0x30) == 2) * 2 + 4);
  if ((*(uint *)(param_1 + 0x16c) & 0x10000000) != 0) {
    local_c8 = 4.203895e-45;
  }
  fVar13 = local_c8;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x410) = 0;
    if (*(int *)(param_1 + 0xbc8) == 0) {
      *(float *)(param_1 + 0x340) = *(float *)(param_1 + 0x340) - DAT_00baa950;
    }
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    FUN_00aef12b();
    return;
  }
  pfVar1 = (float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *pfVar1;
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
  iVar9 = *(int *)(param_1 + 0xb64);
  if (iVar9 == 3) {
    FUN_0040a380(&DAT_00b1bc54,0);
    iVar9 = 0x14;
    if (*(float *)(param_1 + 0x380) / *(float *)(param_1 + 900) < DAT_00baa1f8) {
      iVar9 = 10;
    }
    if (((*(uint *)(param_1 + 0x16c) & 0x10000000) != 0) &&
       ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) != 0))
    goto LAB_0045fbc3;
    if ((*(int *)(param_1 + 0x30) == 1) ||
       (((iVar3 = FUN_006be840(), fVar11 = *(float *)(iVar3 + 0x340) - DAT_00baa904,
         fVar11 < *(float *)(param_1 + 0x340) || fVar11 == *(float *)(param_1 + 0x340) ||
         (cVar2 = FUN_006ac710(iVar9,0), cVar2 == '\0')) ||
        (uVar4 = FUN_006eef60(), (uVar4 & 3) != 0)))) {
      if ((*(int *)(param_1 + 0x30) == 1) ||
         (((*(int *)(param_1 + 0x30) != 2 && (cVar2 = FUN_006ac710(iVar9,0), cVar2 != '\0')) &&
          (uVar4 = FUN_006eef60(), uVar4 % 3 == 0)))) {
        *(undefined4 *)(param_1 + 0xb64) = 9;
      }
      else {
        iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
        iVar3 = 0;
        if (0 < iVar8) {
          iVar3 = iVar8;
        }
        if ((((int)fVar13 < iVar3) || (cVar2 = FUN_006ac710(iVar9 * 2,0), cVar2 == '\0')) ||
           (uVar4 = FUN_006eef60(), (uVar4 & 1) != 0)) goto LAB_0045fbc3;
        iVar3 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
        iVar9 = 0;
        if (0 < iVar3) {
          iVar9 = iVar3;
        }
        bVar10 = iVar9 <= (int)fVar13;
        cVar2 = FUN_00417430(0,0x10000000);
        if (cVar2 != '\0') {
          if (*(int *)(param_1 + 0x30) == 2) {
            iVar3 = FUN_006ac7e0(0x32e,0,extraout_ECX,0);
            iVar8 = FUN_006ac7e0(0x5e,0,extraout_ECX_00,0);
            iVar9 = FUN_006ac7e0(0x55,0,extraout_ECX_01,0);
            iVar9 = iVar9 + iVar3 + iVar8;
            bVar10 = SBORROW4(iVar9,(int)local_c8);
            iVar9 = iVar9 - (int)local_c8;
          }
          else {
            iVar9 = FUN_006ac7e0(0x1d,0,extraout_ECX,0);
            bVar10 = SBORROW4(iVar9,(int)fVar13);
            iVar9 = iVar9 - (int)fVar13;
          }
          bVar10 = bVar10 != iVar9 < 0;
        }
        if (!bVar10) goto LAB_0045fbc3;
        *(undefined4 *)(param_1 + 0xb64) = 0xd;
      }
    }
    else {
      *(undefined4 *)(param_1 + 0xb64) = 8;
    }
LAB_0045fbb9:
    *(undefined4 *)(param_1 + 0xbc0) = 0;
    goto LAB_0045fbc3;
  }
  if (iVar9 == 8) {
    FUN_0040a380(&DAT_00b1d47c,0);
    FUN_006d6ba0(0x136,0x3f800000,0x3c,0,0x3f800000);
    if (*(int *)(param_1 + 0x7c) == 0) goto LAB_0045f862;
    cVar2 = FUN_0040add0("Shoot");
    if (cVar2 != '\0') {
      iVar9 = FUN_006be840();
      local_d0 = *(float *)(iVar9 + 0x340);
      local_d4 = *(float *)(iVar9 + 0x33c);
      local_cc = local_d0 - *(float *)(param_1 + 0x340);
      local_c8 = local_d4 - *pfVar1;
      fVar12 = local_cc * local_cc + local_c8 * local_c8;
      FUN_00435a50();
      fVar11 = local_c8;
      fVar13 = local_cc;
      if (0.0 < fVar12) {
        fVar11 = local_c8 * (DAT_00baa454 / fVar12);
        fVar13 = local_cc * (DAT_00baa454 / fVar12);
      }
      if (fVar11 * 0.0 + fVar13 < DAT_00baa1f8) {
        local_d0 = *(float *)(iVar9 + 0x340) + DAT_00baa9d0;
      }
      uVar5 = AI_0043ef30();
      FUN_006ccdd0(0xf,&local_d4,0,uVar5);
      FUN_006d6ba0(0x72,0x3f800000,2,0,0x3f800000);
    }
    goto LAB_0045f84f;
  }
  if (iVar9 != 9) {
    if (iVar9 != 0xd) goto LAB_0045fbc3;
    if (*(int *)(param_1 + 0xbc0) == 0) {
      FUN_0040a380("SummonTell",0);
      FUN_006d6ba0(0x138,0x3f800000,0x3c,0,0x3f800000);
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(undefined4 *)(param_1 + 0xbc0) = 1;
        FUN_00aef12b();
        return;
      }
      goto LAB_0045fbc3;
    }
    if (*(int *)(param_1 + 0xbc0) != 1) goto LAB_0045fbc3;
    FUN_0040a380("Summon",0);
    cVar2 = FUN_0040b030("Shoot");
    if (cVar2 != '\0') {
      if (*(int *)(param_1 + 0x30) == 2) {
        iVar9 = FUN_006be840();
        local_d4 = *(float *)(iVar9 + 0x33c);
        local_d0 = *(float *)(iVar9 + 0x340);
        puVar7 = (undefined4 *)FUN_00813520(&local_c0,&local_d4,0,0,0,0);
        FUN_006c2750(pfVar1,param_1,*puVar7,puVar7[1],0,0xc1f00000);
        uVar4 = FUN_006eef60();
        if ((uVar4 & 1) == 0) {
          iVar9 = FUN_006be840();
          local_d4 = *(float *)(iVar9 + 0x33c);
          local_d0 = *(float *)(iVar9 + 0x340);
          puVar7 = (undefined4 *)FUN_00813520(&local_c0,&local_d4,0,0,0,0);
          FUN_006c2750(pfVar1,param_1,*puVar7,puVar7[1],0,0xc1f00000);
        }
      }
      else {
        uVar5 = FUN_006eef60();
        local_d4 = *pfVar1 + 0.0;
        local_d0 = *(float *)(param_1 + 0x340) + 0.0;
        uVar5 = FUN_006fe410(0x1d,0,&local_d4,&DAT_00c7b640,param_1,0,uVar5,0);
        iVar9 = __RTDynamicCast(uVar5,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        local_c8 = *pfVar1 + 0.0;
        local_c4 = *(float *)(param_1 + 0x340) + DAT_00baaa44;
        FUN_00813520(&local_c0,&local_c8,0x42200000,0,0,0);
        *(undefined4 *)(iVar9 + 0x334) = local_c0;
        *(undefined4 *)(iVar9 + 0x338) = local_bc;
        *(undefined4 *)(iVar9 + 0xb64) = 4;
        *(undefined4 *)(iVar9 + 0x410) = 5;
        cVar2 = FUN_0040a5d0(&DAT_00b1de1c,1);
        if (cVar2 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(iVar9 + 0x8c) = 1;
        }
        if (*(int *)(iVar9 + 0x7c) != 0) {
          FUN_00408e00();
        }
      }
      FUN_006d6ba0(0x72,0x3f800000,2,0,0x3f800000);
    }
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_0045fbc3;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    goto LAB_0045fbb9;
  }
  FUN_0040a380("FireRing",0);
  if (*(int *)(param_1 + 0x7c) == 0) goto LAB_0045f862;
  cVar2 = FUN_0040add0("Shoot");
  if (cVar2 != '\0') {
    puVar7 = (undefined4 *)(param_1 + 0x33c);
    if (*(int *)(param_1 + 0x30) == 1) {
      AI_0043ef30();
      local_50 = *puVar7;
      local_4c = *(undefined4 *)(param_1 + 0x340);
      local_a4 = local_a4 * DAT_00baa528;
      local_b0 = &DAT_bf800000;
      uVar4 = FUN_006eef60();
      switch(uVar4 & 3) {
      case 0:
        uVar4 = FUN_006eef60();
        uVar6 = 0x800;
        if ((uVar4 & 1) != 0) {
          uVar6 = 0x1000;
        }
        local_60 = local_60 | uVar6 | 0x2000;
        cVar2 = FUN_00417430(0,0x10000000);
        if (cVar2 != '\0') {
          local_1c = 0x40e00000;
        }
        local_d4 = 15.0;
        goto LAB_0045f833;
      case 1:
        local_60 = local_60 | 0x40;
        iVar9 = FUN_006eef60();
        fVar13 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baab30;
        FUN_00682740();
        fStack_a0 = fVar13;
        cVar2 = FUN_00417430(0,0x10000000);
        if (cVar2 != '\0') {
          local_1c = 0x40e00000;
        }
        local_d4 = 12.0;
        local_d0 = 10.0;
        FUN_006cb2e0(puVar7,&local_d4,9,local_b8);
        local_d4 = 10.0;
        local_d0 = 10.0;
        FUN_006cb2e0(puVar7,&local_d4,9,local_b8);
        local_d4 = 8.0;
        local_d0 = 10.0;
        FUN_006cb2e0(puVar7,&local_d4,9,local_b8);
        local_d4 = 6.0;
        local_d0 = 10.0;
        break;
      case 2:
        local_60 = local_60 | 0x402000;
        iVar9 = FUN_006be840();
        local_d4 = *(float *)(iVar9 + 0x33c) - *pfVar1;
        local_d0 = *(float *)(iVar9 + 0x340) - *(float *)(param_1 + 0x340);
        puVar7 = (undefined4 *)FUN_00a10030(&local_c0);
        uStack_48 = *puVar7;
        uStack_44 = puVar7[1];
        uStack_40 = 0x3e99999a;
        cVar2 = FUN_00417430(0,0x10000000);
        local_cc = DAT_00baa75c;
        if (cVar2 != '\0') {
          local_1c = 0x40e00000;
        }
        do {
          local_d0 = 10.0;
          local_d4 = local_cc;
          FUN_006cb2e0(pfVar1,&local_d4,9,local_b8);
          local_cc = local_cc + DAT_00baa454;
          iStack_3c = iStack_3c + 2;
        } while (local_cc <= DAT_00baa81c);
        goto LAB_0045f84f;
      case 3:
        uVar4 = FUN_006eef60();
        uVar6 = 0x40000;
        if ((uVar4 & 1) != 0) {
          uVar6 = 0x80000;
        }
        local_60 = local_60 | uVar6 | 0x2000;
        iVar9 = FUN_006be840();
        local_d4 = *(float *)(iVar9 + 0x33c) - *pfVar1;
        local_d0 = *(float *)(iVar9 + 0x340) - *(float *)(param_1 + 0x340);
        puVar7 = (undefined4 *)FUN_00a10030(&local_c0);
        uStack_48 = *puVar7;
        uStack_44 = puVar7[1];
        uStack_40 = 0x3e800000;
        uStack_98 = 0x3ba3d70a;
        local_ac = 0xbb449ba6;
        cVar2 = FUN_00417430(0,0x10000000);
        if (cVar2 != '\0') {
          local_1c = 0x40e00000;
        }
        local_d4 = 12.0;
        local_d0 = 10.0;
        FUN_006cb2e0(pfVar1,&local_d4,9,local_b8);
        local_d4 = 10.0;
        local_d0 = 10.0;
        FUN_006cb2e0(pfVar1,&local_d4,9,local_b8);
        local_d4 = 8.0;
        local_d0 = 10.0;
        FUN_006cb2e0(pfVar1,&local_d4,9,local_b8);
        local_d4 = 6.0;
        local_d0 = 10.0;
      }
    }
    else {
      FUN_006d6ba0(0x130,0x3f800000,2,0,0x3f800000);
      AI_0043ef30();
      local_24 = 2;
      FUN_004071f0(&DAT_00c34e28);
      local_50 = *puVar7;
      local_60 = local_60 | 0x2080;
      local_4c = *(undefined4 *)(param_1 + 0x340);
      local_b4 = 0x41940000;
      local_ac = 0xbd75c28f;
      local_b0 = (undefined *)0xc0000000;
      local_b8[0] = 0;
      local_a8 = 0x3f866666;
      cVar2 = FUN_00417430(0,0x10000000);
      if (cVar2 != '\0') {
        local_1c = 0x40e00000;
      }
      uVar4 = FUN_006eef60();
      switch(uVar4 & 3) {
      case 0:
        local_60 = local_60 | 0x800;
        break;
      case 1:
        local_60 = local_60 | 0x1000;
        break;
      case 2:
        local_60 = local_60 | 0x800;
        local_d4 = 10.0;
        local_d0 = 5.0;
        FUN_006cb2e0(puVar7,&local_d4,9,local_b8);
        local_60 = local_60 | 0x1000;
        local_d4 = 7.0;
        local_d0 = 5.0;
        goto LAB_0045f848;
      }
      local_d4 = 10.0;
LAB_0045f833:
      local_d0 = 9.0;
    }
LAB_0045f848:
    FUN_006cb2e0(param_1 + 0x33c,&local_d4,9,local_b8);
  }
LAB_0045f84f:
  if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
LAB_0045f862:
    *(undefined4 *)(param_1 + 0xb64) = 3;
    FUN_00aef12b();
    return;
  }
LAB_0045fbc3:
  FUN_00aef12b();
  return;
}

