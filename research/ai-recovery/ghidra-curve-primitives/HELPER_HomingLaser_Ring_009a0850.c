/* Local J460 decompiler output.
 * VA: 0x009a0850
 * Entry: 009a0850
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Circle ring primitive
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Circle ring primitive */

void __thiscall HELPER_HomingLaser_Ring(int param_1_00,float *param_1,int param_2,float param_3)

{
  void *_Src;
  void *_Dst;
  bool bVar1;
  char cVar2;
  uint uVar3;
  undefined4 *puVar4;
  int *piVar5;
  int iVar6;
  float *pfVar7;
  float fVar8;
  undefined auVar9 [16];
  float in_XMM2_Da;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float *local_50;
  float *pfStack_4c;
  int *local_48;
  undefined4 local_44;
  float local_40;
  float *local_3c;
  float local_38;
  float local_34;
  int local_30;
  float local_2c;
  float local_28;
  char local_21;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00b0da0d;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_2c = in_XMM2_Da * _DAT_00baa23c;
  iVar6 = 0;
  local_48 = (int *)(param_1_00 + 0x48);
  local_3c = (float *)in_XMM2_Da;
  local_30 = param_1_00;
  do {
    fVar8 = ((float)iVar6 / DAT_00baa7a4) * DAT_00baa708;
    local_34 = 0.0 - (fVar8 + fVar8);
    fVar8 = local_34;
    FUN_0041d520(uVar3);
    local_38 = fVar8 * (float)local_3c;
    fVar8 = local_34;
    FUN_0041d540();
    local_60 = fVar8 * (float)local_3c + *param_1;
    fStack_5c = local_38 + param_1[1];
    local_34 = local_34 - DAT_00baa54c;
    local_38 = fStack_5c;
    local_28 = local_60;
    fVar8 = local_34;
    FUN_0041d520();
    local_40 = fVar8 * local_2c;
    auVar9 = ZEXT416((uint)local_34);
    FUN_0041d540();
    fVar8 = auVar9._0_4_ * local_2c;
    fStack_58 = local_28 - fVar8;
    auVar9._0_4_ = fVar8 + local_28;
    pfVar7 = *(float **)(local_30 + 0x4c);
    fStack_54 = local_38 - local_40;
    pfStack_4c = (float *)(local_40 + local_38);
    local_50 = (float *)auVar9._0_4_;
    if (pfVar7 == *(float **)(local_30 + 0x50)) {
      FUN_009a17b0(pfVar7,&local_60);
    }
    else {
      *pfVar7 = local_60;
      pfVar7[1] = fStack_5c;
      pfVar7[2] = fStack_58;
      pfVar7[3] = fStack_54;
      auVar9._8_8_ = 0;
      auVar9._0_8_ = CONCAT44(pfStack_4c,auVar9._0_4_);
      *(ulonglong *)(pfVar7 + 4) = CONCAT44(pfStack_4c,auVar9._0_4_);
      *(int *)(param_1_00 + 0x4c) = *(int *)(param_1_00 + 0x4c) + 0x18;
    }
    iVar6 = iVar6 + 1;
  } while (iVar6 < 7);
  if (param_2 == 1) {
    pfVar7 = (float *)0x0;
    local_34 = 0.0;
    fStack_54 = 0.0;
    local_50 = (float *)0x0;
    local_3c = (float *)0x0;
    pfStack_4c = (float *)0x0;
    local_14 = 0;
    local_38 = 0.0;
    local_2c = *(float *)(DAT_00c71678 + 0x18300);
    piVar5 = (int *)(param_1_00 + 0x48);
    if (*(int *)((int)local_2c + 0x1264) != 0) {
      do {
        fVar8 = *(float *)(*(int *)((int)local_2c + 0x125c) + (int)local_38 * 4);
        local_40 = fVar8;
        cVar2 = HELPER_Entity_DamageFilter(0);
        if (((cVar2 == '\0') || ((*(uint *)((int)fVar8 + 0x168) & 0x20000010) != 0)) ||
           (local_21 = '\x01', fVar8 == param_3)) {
          local_21 = '\0';
        }
        if (((*(int *)(DAT_00c71678 + 0x26614) < 2) || (*(int *)((int)fVar8 + 0x28) != 3)) ||
           ((*(int *)((int)fVar8 + 0x2c) != 0x43 ||
            (cVar2 = FUN_006a8fa0(*(undefined4 *)((int)param_3 + 0x3c8)), cVar2 != '\0')))) {
          bVar1 = false;
        }
        else {
          bVar1 = true;
        }
        if ((local_21 != '\0') || (bVar1)) {
          if (pfVar7 == local_3c) {
            FUN_0042c920(pfVar7,&local_40);
            local_3c = pfStack_4c;
            pfVar7 = local_50;
          }
          else {
            *pfVar7 = fVar8;
            local_50 = pfVar7 + 1;
            pfVar7 = local_50;
          }
        }
        local_38 = (float)((int)local_38 + 1);
      } while ((uint)local_38 < *(uint *)((int)local_2c + 0x1264));
      local_34 = fStack_54;
      piVar5 = local_48;
    }
    local_38 = -NAN;
    local_2c = 1.401298e-45;
    fStack_54 = local_34;
    if (1 < (piVar5[1] - *piVar5) / 0x18 - 1U) {
      local_28 = 3.363116e-44;
      do {
        piVar5 = (int *)0x0;
        local_48 = (int *)((int)pfVar7 - (int)local_34 >> 2);
        if (local_48 != (int *)0x0) {
          do {
            iVar6 = *(int *)((int)local_34 + (int)piVar5 * 4);
            local_44 = *(undefined4 *)(iVar6 + 0x33c);
            local_40 = *(float *)(iVar6 + 0x340);
            FUN_0099c430((int)local_28 + *(int *)(local_30 + 0x48) + 0x18,0,local_30);
            if (auVar9._0_4_ < *(float *)(local_30 + 0x14) * *(float *)(local_30 + 0x14)) {
              puVar4 = (undefined4 *)(*(int *)(local_30 + 0x48) + (int)local_28);
              *puVar4 = local_44;
              auVar9 = ZEXT416((uint)local_40);
              puVar4[1] = local_40;
              _Dst = (void *)((int)local_34 + (int)piVar5 * 4);
              _Src = (void *)((int)_Dst + 4);
              memmove(_Dst,_Src,(int)pfVar7 - (int)_Src);
              pfVar7 = pfVar7 + -1;
              local_50 = pfVar7;
              if (local_38 == -NAN) {
                local_38 = local_2c;
              }
              break;
            }
            piVar5 = (int *)((int)piVar5 + 1);
          } while (piVar5 < local_48);
        }
        local_2c = (float)((int)local_2c + 1);
        local_28 = (float)((int)local_28 + 0x18);
      } while ((uint)local_2c < (*(int *)(local_30 + 0x4c) - *(int *)(local_30 + 0x48)) / 0x18 - 1U)
      ;
      if (-1 < (int)local_38) {
        FUN_0099e160();
      }
    }
    if (local_34 != 0.0) {
      uVar3 = (int)local_3c - (int)local_34 & 0xfffffffc;
      iVar6 = (int)local_34;
      if (0xfff < uVar3) {
        iVar6 = *(int *)((int)local_34 + -4);
        uVar3 = uVar3 + 0x23;
        if (0x1f < ((int)local_34 - iVar6) - 4U) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar6,uVar3);
    }
  }
  ExceptionList = local_1c;
  return;
}

