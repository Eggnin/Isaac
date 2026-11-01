/* Local J460 decompiler output.
 * VA: 0x0050a8a0
 * Entry: 0050a8a0
 * Dispatcher: 0x006c2990
 * Types: 96
 * Identities: 96.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0050af90; instructions=395
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=96; identities=96.0.0; dispatcher=0x006c2990;
   end=0x0050af90; instructions=395 */

void __fastcall AI_0050a8a0(int *param_1)

{
  char cVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  int iVar7;
  bool bVar8;
  float fVar9;
  float local_40;
  float local_3c;
  int *local_38;
  float local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  uint local_10;
  int local_c;
  
  if (param_1[0x2d9] == 0) {
    param_1[0x5a] = param_1[0x5a] | 1;
    param_1[0x5b] = param_1[0x5b] | 8;
    param_1[0x62] = 2;
    param_1[0x61] = 0;
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x2d9] = 4;
    uVar2 = FUN_006eef60();
    param_1[0x2f0] = 0;
    param_1[0x2e9] = 0;
    param_1[0x2f1] = 0;
    param_1[0x104] = uVar2 % 10;
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
    param_1[0x5b] = param_1[0x5b];
  }
  iVar3 = param_1[0xef];
  piVar5 = param_1 + 0xef;
  if (((iVar3 != 0) && (uVar2 = *(uint *)(iVar3 + 0x168), (uVar2 & 0x1000000) != 0)) &&
     ((param_1[0x5a] & 0x1000000U) == 0)) {
    local_30 = *(undefined4 *)(iVar3 + 0x28);
    local_20 = *(undefined4 *)(iVar3 + 0x33c);
    local_1c = *(undefined4 *)(iVar3 + 0x340);
    local_2c = *(undefined4 *)(iVar3 + 0x2c);
    local_28 = *(undefined4 *)(iVar3 + 0x34);
    local_24 = *(undefined4 *)(iVar3 + 0x38);
    local_18 = *(undefined4 *)(iVar3 + 0x360);
    local_14 = *(undefined4 *)(iVar3 + 0x364);
    local_3c = (float)(uint)((uVar2 & 0x100) != 0);
    local_40 = 2.802597e-45;
    if ((uVar2 & 0x20000000) == 0) {
      local_40 = 0.0;
    }
    if ((*(uint *)(iVar3 + 0x16c) & 0x400000) == 0) {
      uVar2 = 0;
    }
    else {
      uVar2 = 4;
    }
    local_10 = uVar2 | (uint)local_40 | (uint)local_3c;
    local_c = iVar3;
    FUN_006b5c10(&local_30,*(undefined4 *)(iVar3 + 0x23c),1,1);
    if (0 < param_1[0x8f]) {
      param_1[0x5a] = param_1[0x5a] | 0x1000000;
      param_1[0x5b] = param_1[0x5b];
      param_1[0xed] = param_1[0xee];
    }
  }
  bVar8 = param_1[0x2d9] == 0x10;
  iVar3 = *piVar5;
  if (iVar3 == 0) {
    iVar3 = 0;
    if (param_1[0x2e9] == 1) {
      bVar8 = true;
    }
    else {
      iVar4 = *(int *)(DAT_00c71678 + 0x18300);
      iVar6 = (int)(((float)param_1[0xcd] - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
      if ((-1 < iVar6) && (iVar6 < *(int *)(iVar4 + 0xc))) {
        fVar9 = ((float)param_1[0xce] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0;
        iVar7 = (int)fVar9;
        if ((-1 < iVar7) && (iVar3 = param_1[0xef], (int)fVar9 < *(int *)(iVar4 + 0x10))) {
          iVar6 = *(int *)(iVar4 + 0xc) * iVar7 + iVar6;
          if ((iVar6 < 0) ||
             (((iVar6 < 0x1c0 && (iVar4 = *(int *)(iVar4 + 0x24 + iVar6 * 4), iVar4 != 0)) &&
              ((*(int *)(iVar4 + 4) != 0xe || (*(int *)(iVar4 + 0x3c) != 0)))))) goto LAB_0050ab0a;
          bVar8 = true;
        }
      }
    }
LAB_0050ab3e:
    local_3c = DAT_00baa08c;
    local_40 = DAT_00baa950;
    local_38 = DAT_00baa924;
  }
  else {
    iVar4 = *(int *)(iVar3 + 0x340);
    param_1[0xcd] = *(int *)(iVar3 + 0x33c);
    param_1[0xce] = iVar4;
    param_1[0x2e9] = 1;
    if ((*piVar5 != 0) &&
       (iVar3 = __RTDynamicCast(*piVar5,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
       iVar3 == 0)) {
      FUN_00a112c0(0x10,"m_Parent invalid downcast\n");
    }
    iVar3 = *piVar5;
    if (*(char *)(iVar3 + 0x173) != '\0') {
      bVar8 = true;
    }
LAB_0050ab0a:
    local_40 = DAT_00baa8a0;
    local_38 = DAT_00baa87c;
    local_3c = DAT_00baa0bc;
    if ((iVar3 == 0) || (*(int *)(iVar3 + 0x28) == 0x5a)) goto LAB_0050ab3e;
  }
  piVar5 = param_1 + 0xef;
  if (bVar8) {
    if ((0 < param_1[0x2f0]) && (cVar1 = FUN_00813360(param_1 + 0xcd,0xc1200000), cVar1 != '\0')) {
      param_1[0x61] = 3;
      FUN_006c0f30(0x12,0,0,0xffffffff);
      if (*piVar5 != 0) {
        local_38 = piVar5;
        FUN_004cf210(&local_38);
      }
      param_1[0x5a] = param_1[0x5a] & 0xfffffffe;
      param_1[0x5b] = param_1[0x5b] & 0xfffffff7;
      *piVar5 = 0;
      *(undefined *)(param_1 + 0xec) = 0;
      param_1[0x62] = 4;
      return;
    }
    (**(code **)(*param_1 + 0x28))();
    return;
  }
  if (iVar3 != 0) {
    if (*(int *)(iVar3 + 0x7c) == 0) {
      iVar4 = 0;
    }
    else {
      iVar4 = FUN_0040ace0("OverlayEffect");
      iVar3 = *piVar5;
    }
    if ((iVar3 != 0) && ((iVar4 == 0 || (*(char *)(iVar4 + 0xc) == '\0')))) {
      bVar8 = true;
      goto LAB_0050ad2e;
    }
  }
  bVar8 = false;
LAB_0050ad2e:
  iVar3 = param_1[0x2d9];
  if (iVar3 == 4) {
    FUN_0040a380(&DAT_00b1de04,0);
    if (bVar8) {
      param_1[0x62] = 0;
      param_1[0x2d9] = 6;
      param_1[0x2f0] = 0;
    }
    else {
      local_3c = (float)*(int *)(DAT_00c71678 + 0x264f8) * local_3c * DAT_00baa708 +
                 ((float)param_1[0x104] * DAT_00baa708) / DAT_00baa81c;
      if ((param_1[0x104] & 1U) == 0) {
        local_3c = (float)((uint)local_3c ^ DAT_00bacb70);
      }
      local_34 = local_3c;
      FUN_0041d540();
      FUN_0041d520();
      iVar3 = *piVar5;
      iVar4 = 0x5a;
      if ((iVar3 != 0) && (*(int *)(iVar3 + 0x28) == 0x5a)) {
        iVar4 = 0x1e;
      }
      iVar6 = param_1[0x2f0];
      iVar7 = iVar4;
      if (iVar6 < iVar4) {
        iVar7 = iVar6;
      }
      param_1[0x2f0] = iVar6 + 1;
      fVar9 = DAT_00baa2d0;
      if ((iVar3 != 0) && (*(int *)(iVar3 + 0x28) == 0x66)) {
        fVar9 = DAT_00baa454;
      }
      param_1[0xcf] =
           (int)(((local_34 * local_40 * ((float)iVar7 / (float)iVar4) + (float)param_1[0xcd]) -
                 (float)param_1[0xcf]) * fVar9 + (float)param_1[0xcf]);
      param_1[0xd0] =
           (int)(((local_3c * (float)local_38 * ((float)iVar7 / (float)iVar4) + (float)param_1[0xce]
                  ) - (float)param_1[0xd0]) * fVar9 + (float)param_1[0xd0]);
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
  }
  else if (iVar3 == 6) {
    FUN_0040a380("TeleportOut",0);
    param_1[0xcf] = param_1[0xcd];
    param_1[0xd0] = param_1[0xce];
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x57] = 0;
    }
    if (!bVar8) {
      param_1[0x2d9] = 7;
      param_1[0x57] = *(int *)(param_1[0xcc] + 0x24);
      return;
    }
  }
  else if (iVar3 == 7) {
    FUN_0040a380("TeleportIn",0);
    param_1[0xcf] = param_1[0xcd];
    param_1[0xd0] = param_1[0xce];
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x62] = 2;
      param_1[0x2d9] = 4;
      return;
    }
  }
  return;
}

