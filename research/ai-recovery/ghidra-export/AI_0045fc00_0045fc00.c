/* Local J460 decompiler output.
 * VA: 0x0045fc00
 * Entry: 0045fc00
 * Dispatcher: 0x006c2990
 * Types: 263
 * Identities: 263.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00460780; instructions=659
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=263; identities=263.0.0; dispatcher=0x006c2990;
   end=0x00460780; instructions=659 */

void __fastcall AI_0045fc00(int param_1)

{
  float *pfVar1;
  char cVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  float fVar7;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  uint uVar8;
  bool bVar9;
  undefined4 uVar10;
  int local_d8;
  undefined4 local_d4;
  float local_d0;
  float local_cc;
  float local_c8;
  float local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  undefined local_b8 [4];
  undefined4 local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  float fStack_a0;
  undefined4 uStack_9c;
  uint local_60;
  undefined4 local_5c;
  float local_50;
  undefined4 local_4c;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&local_d8;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x410) = 0;
    if (*(int *)(param_1 + 0xbc8) == 0) {
      *(float *)(param_1 + 0x340) = *(float *)(param_1 + 0x340) - DAT_00baa904;
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
  iVar4 = *(int *)(param_1 + 0xb64);
  if (iVar4 != 3) {
    if (iVar4 == 8) {
      if (*(int *)(param_1 + 0xbc0) != 0) {
        if (*(int *)(param_1 + 0xbc0) == 1) {
          FUN_0040a380("Shooting",0);
          cVar2 = FUN_0040b030("Shoot");
          if (cVar2 != '\0') {
            FUN_006d6ba0(0x131,0x3f800000,2,0,0x3f800000);
            local_d8 = 0;
            local_d4 = 0xc1f00000;
            piVar6 = (int *)FUN_0096f310(1,param_1 + 0x33c,0x42b40000,10,&local_d8,param_1,0);
            piVar6[0xd6] = 0x42c80000;
            piVar6[0x135] = 1;
            (**(code **)(*piVar6 + 0xc))();
          }
          if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
            *(undefined4 *)(param_1 + 0xb64) = 3;
            FUN_00aef12b();
            return;
          }
        }
        goto LAB_0046072a;
      }
      FUN_0040a380("Charging",0);
      uVar10 = 0x138;
    }
    else {
      if (iVar4 != 9) {
        if (iVar4 == 0xd) {
          FUN_0040a380(&DAT_00b1de50,0);
          FUN_006d6ba0(0x70,0x3f800000,0x3c,0,0x3f800000);
          cVar2 = FUN_0040b030("Shoot");
          if (cVar2 != '\0') {
            FUN_006d6ba0(0x72,0x3f800000,2,0,0x3f800000);
            if (*(int *)(param_1 + 0x30) == 2) {
              iVar4 = FUN_006be840();
              local_d8 = *(int *)(iVar4 + 0x33c);
              local_d4 = *(undefined4 *)(iVar4 + 0x340);
              local_d0 = *(float *)(param_1 + 0x33c) + DAT_00ba9fe4;
              local_cc = *(float *)(param_1 + 0x340) + DAT_00baa2d0;
              FUN_006c2750(&local_d0,param_1,local_d8,local_d4,1,0xc2c80000);
            }
            else {
              uVar10 = FUN_006eef60();
              local_c8 = *(float *)(param_1 + 0x33c) + DAT_00ba9fe4;
              local_c4 = *(float *)(param_1 + 0x340) - DAT_00baa950;
              uVar10 = FUN_006fe410(0x22,0,&local_c8,&DAT_00c7b640,param_1,0,uVar10,0);
              fVar7 = (float)__RTDynamicCast(uVar10,0,&IsaacRepentancePlus::Entity::
                                                       RTTI_Type_Descriptor,
                                             &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,
                                             0);
              local_d0 = fVar7;
              FUN_00813520(&local_c0,param_1 + 0x33c,0x43160000,0,0,0);
              local_d8 = (int)fVar7 + 0x48;
              *(undefined4 *)((int)fVar7 + 0x334) = local_c0;
              *(undefined4 *)((int)fVar7 + 0x338) = local_bc;
              *(undefined4 *)((int)fVar7 + 0xb64) = 6;
              *(undefined4 *)((int)fVar7 + 0x410) = 5;
              cVar2 = FUN_0040a5d0("BigJumpUp",1);
              iVar4 = local_d8;
              if (cVar2 != '\0') {
                FUN_0040a1b0();
                *(undefined *)(iVar4 + 0x44) = 1;
                fVar7 = local_d0;
              }
              if (*(int *)((int)fVar7 + 0x7c) != 0) {
                FUN_00408e00();
              }
              *(undefined4 *)((int)fVar7 + 0x354) = 100000;
              cVar2 = FUN_00417430(0,0x10000000);
              if (cVar2 != '\0') {
                *(undefined4 *)((int)fVar7 + 0x380) = 0x41200000;
                *(undefined4 *)((int)fVar7 + 900) = 0x41200000;
              }
            }
          }
          if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
            *(undefined4 *)(param_1 + 0xb64) = 3;
            *(undefined4 *)(param_1 + 0xbc0) = 0;
          }
        }
        goto LAB_0046072a;
      }
      if (*(int *)(param_1 + 0xbc0) != 0) {
        if (*(int *)(param_1 + 0xbc0) != 1) goto LAB_0046072a;
        FUN_0040a380("Shooting",0);
        if (*(int *)(param_1 + 0x30) == 1) {
          cVar2 = FUN_0040b090("Shoot");
          if (cVar2 != '\0') {
            AI_0043ef30();
            local_50 = *pfVar1;
            local_4c = *(undefined4 *)(param_1 + 0x340);
            local_b4 = 0x41940000;
            local_ac = 0xbd75c28f;
            local_b0 = 0xc0000000;
            local_a4 = 0x3fe00000;
            switch(*(undefined4 *)(param_1 + 0xbc4)) {
            case 0:
              cVar2 = FUN_006ac710(3,*(undefined4 *)(param_1 + 0x20));
              if (cVar2 != '\0') {
                fStack_a0 = *(float *)(param_1 + 0xbb0);
                local_60 = 0x2000000;
                local_5c = 0;
                local_d4 = 0x41000000;
LAB_00460494:
                local_d8 = 0x41200000;
LAB_0046049c:
                FUN_006cb2e0(pfVar1,&local_d8,9,local_b8);
              }
              break;
            case 1:
              cVar2 = FUN_006ac710(3,*(undefined4 *)(param_1 + 0x20));
              if (cVar2 != '\0') {
                fStack_a0 = *(float *)(param_1 + 0xbb0);
                uVar8 = 0x40000;
                if (0.0 < *(float *)(param_1 + 0xbb4) || *(float *)(param_1 + 0xbb4) == 0.0) {
                  uVar8 = 0x80000;
                }
                local_ac = 0xbd4ccccd;
                local_60 = local_60 | uVar8 | 0x2000;
                local_d4 = 0x41000000;
                goto LAB_00460494;
              }
              break;
            case 2:
              cVar2 = FUN_006ac710(3,*(undefined4 *)(param_1 + 0x20));
              if (cVar2 != '\0') {
                fVar7 = (float)(*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328)) *
                        DAT_00baa154;
                FUN_0041d520();
                local_60 = local_60 | 0x240000;
                fStack_a0 = fVar7 * DAT_00baa198 + *(float *)(param_1 + 0xbb0);
                local_d8 = 0x40a00000;
                local_d4 = 0x40e00000;
                goto LAB_0046049c;
              }
              break;
            case 3:
              cVar2 = FUN_006ac710(10,*(undefined4 *)(param_1 + 0x20));
              if (cVar2 != '\0') {
                local_d8 = 0x40a00000;
                local_d4 = 0x40a00000;
                local_60 = local_60 | 1;
                uStack_9c = 0x3e99999a;
                fStack_a0 = (float)(*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328)) *
                            DAT_00baa528 + *(float *)(param_1 + 0xbb0);
                goto LAB_0046049c;
              }
            }
          }
        }
        else {
          cVar2 = FUN_0040b030("Shoot");
          if (cVar2 != '\0') {
            FUN_006d6ba0(0x130,0x3f800000,2,0,0x3f800000);
            AI_0043ef30();
            local_50 = *pfVar1;
            local_60 = local_60 | 0x2080;
            local_4c = *(undefined4 *)(param_1 + 0x340);
            local_b4 = 0x41940000;
            local_ac = 0xbd75c28f;
            local_b0 = 0xc0000000;
            local_b8[0] = 0;
            local_a8 = 0x3f866666;
            local_a4 = 0x3fe66666;
            uVar8 = FUN_006eef60();
            switch(uVar8 & 3) {
            case 0:
              local_60 = local_60 | 0x800;
              break;
            case 1:
              local_60 = local_60 | 0x1000;
              break;
            case 2:
              local_60 = local_60 | 0x800;
              local_d8 = 0x41200000;
              local_d4 = 0x40c00000;
              FUN_006cb2e0(pfVar1,&local_d8,9,local_b8);
              local_60 = local_60 | 0x1000;
              local_d8 = 0x40e00000;
              local_d4 = 0x40c00000;
              goto LAB_0046049c;
            case 3:
              local_d4 = 0x41300000;
              goto LAB_00460494;
            }
            local_d4 = 0x41100000;
            goto LAB_00460494;
          }
        }
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          *(undefined4 *)(param_1 + 0xb64) = 3;
          *(undefined4 *)(param_1 + 0x410) = 0x1e;
          FUN_00aef12b();
          return;
        }
        goto LAB_0046072a;
      }
      FUN_0040a380("Charging",0);
      uVar10 = 0x136;
    }
    FUN_006d6ba0(uVar10,0x3f800000,0x3c,0,0x3f800000);
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      *(undefined4 *)(param_1 + 0xbc0) = 1;
      FUN_00aef12b();
      return;
    }
    goto LAB_0046072a;
  }
  FUN_0040a380(&DAT_00b1bc54,0);
  uVar8 = *(uint *)(param_1 + 0x16c) & 0x10000000;
  if ((uVar8 != 0) && ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) != 0))
  goto LAB_0046072a;
  local_d8 = 0x14;
  if (*(float *)(param_1 + 0x380) / *(float *)(param_1 + 900) < DAT_00baa1f8) {
    local_d8 = 10;
  }
  iVar3 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
          *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
  iVar4 = 0;
  if (0 < iVar3) {
    iVar4 = iVar3;
  }
  local_d0 = DAT_00baa454;
  switch(iVar4) {
  case 2:
    local_d0 = DAT_00baa2d0;
    break;
  case 3:
    local_d0 = DAT_00baa1d4;
    break;
  case 4:
    local_d0 = DAT_00baa13c;
    break;
  case 5:
    local_d0 = DAT_00baa0e4;
    break;
  case 6:
    local_d0 = 0.0;
  }
  bVar9 = iVar4 < 5;
  if (uVar8 != 0) {
    if (*(int *)(param_1 + 0x30) == 2) {
      iVar4 = FUN_006ac7e0(0x32e,0,iVar4,0);
      iVar3 = FUN_006ac7e0(0x5e,0,extraout_ECX,0);
      iVar5 = FUN_006ac7e0(0x55,0,extraout_ECX_00,0);
      bVar9 = iVar5 + iVar4 + iVar3 < 3;
    }
    else {
      uVar8 = FUN_006ac7e0(0x22,0,iVar4,0);
      bVar9 = uVar8 < 3;
    }
  }
  if (((!bVar9) || (cVar2 = FUN_006ac710(local_d8,0), cVar2 == '\0')) ||
     (iVar4 = FUN_006eef60(),
     local_d0 <= (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4))
  {
    if (*(int *)(param_1 + 0x30) != 2) {
      iVar3 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
              *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
      iVar4 = 0;
      if (0 < iVar3) {
        iVar4 = iVar3;
      }
      if (((2 < iVar4) && (cVar2 = FUN_006ac710(local_d8,0), cVar2 != '\0')) &&
         ((iVar4 = FUN_0067f010(), iVar4 == 0 && (cVar2 = FUN_00417430(0x1000a00,0), cVar2 == '\0'))
         )) {
        *(undefined4 *)(param_1 + 0xb64) = 8;
        goto LAB_0045fee9;
      }
    }
    cVar2 = FUN_006ac710(local_d8,0);
    if ((cVar2 != '\0') && (uVar8 = FUN_006eef60(), (uVar8 & 1) == 0)) {
      *(undefined4 *)(param_1 + 0xb64) = 9;
      goto LAB_0045fee9;
    }
  }
  else {
    *(undefined4 *)(param_1 + 0xb64) = 0xd;
LAB_0045fee9:
    *(undefined4 *)(param_1 + 0xbc0) = 0;
  }
  if (*(int *)(param_1 + 0x30) == 1) {
    *(undefined4 *)(param_1 + 0xb64) = 9;
    *(undefined4 *)(param_1 + 0xbc0) = 0;
    uVar8 = FUN_006eef60();
    *(uint *)(param_1 + 0xbc4) = uVar8 & 3;
    iVar4 = FUN_006eef60();
    *(float *)(param_1 + 0xbb0) =
         (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4 *
         DAT_00baab30 - DAT_00baaa78;
    uVar8 = FUN_006eef60();
    fVar7 = DAT_00baa454;
    if ((uVar8 & 1) == 0) {
      fVar7 = DAT_00baad50;
    }
    *(float *)(param_1 + 0xbb4) = fVar7;
    iVar4 = *(int *)(param_1 + 0x410);
    *(int *)(param_1 + 0x410) = iVar4 + -1;
    if (0 < iVar4) {
      *(undefined4 *)(param_1 + 0xb64) = 3;
      FUN_00aef12b();
      return;
    }
  }
LAB_0046072a:
  FUN_00aef12b();
  return;
}

