/* Local J460 decompiler output.
 * VA: 0x006bb790
 * Entry: 006bb790
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: entity_init
 * Evidence: Copies shield values from EntityConfig into entity fields
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=entity_init; Copies shield values from
   EntityConfig into entity fields */

void __fastcall HELPER_006bb790_ConfigCopyCandidate(int *param_1)

{
  char *pcVar1;
  uint uVar2;
  char cVar3;
  int *piVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  float10 fVar8;
  int iVar9;
  undefined8 uVar10;
  undefined4 uVar11;
  undefined8 local_a8;
  int local_a0;
  float local_9c;
  char local_95;
  float local_94;
  float local_1c;
  float local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  uVar11 = DAT_00b1f4dc;
  uVar10 = DAT_00b1f4d4;
  local_8 = 0xffffffff;
  puStack_c = &LAB_00afa7e0;
  local_10 = ExceptionList;
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  iVar9 = param_1[0xfb];
  *(undefined *)((int)param_1 + 0xc3d) = 0;
  FUN_006a98b0(local_14);
  if (param_1[0xcc] == 0) {
    FUN_00a112c0(1,"[warn] No entity config for NPC %d.%d\n",param_1[10],param_1[0xb]);
    goto LAB_006bbda3;
  }
  FUN_006baf40(1);
  piVar4 = param_1 + 0x18;
  param_1[0x39] = DAT_00c3793c;
  param_1[0x3a] = DAT_00c37940;
  if (0xf < (uint)param_1[0x1d]) {
    piVar4 = (int *)param_1[0x18];
  }
  cVar3 = HELPER_0040a5d0_AnimationPredicateC(piVar4,1);
  if (((cVar3 != '\0') && (param_1[0x1f] != 0)) && (FUN_00408e00(), param_1[0x1f] != 0)) {
    *(undefined *)(param_1 + 0x23) = 0;
  }
  iVar5 = param_1[0xcc];
  local_94 = DAT_00baa0d0;
  *(undefined *)(param_1 + 0x30f) = *(undefined *)(iVar5 + 0x58);
  *(undefined *)((int)param_1 + 0xc3d) = *(undefined *)(iVar5 + 0x2c);
  param_1[0x310] = *(int *)(iVar5 + 0xe0);
  piVar4 = DAT_00c71678 + 0x6eaa;
  param_1[0x311] = *(int *)(iVar5 + 0xe4);
  iVar5 = FUN_009be080(0xd0,piVar4,1);
  if (iVar5 != 0) {
    local_94 = DAT_00baa198;
  }
  if (*DAT_00c71678 == 0xc) {
    local_94 = DAT_00baa380;
  }
  cVar3 = FUN_0044bfb0(5);
  if (cVar3 != '\0') {
    iVar5 = FUN_009bea80(5);
    local_94 = (float)iVar5 * DAT_00baa6fc * local_94;
  }
  piVar4 = DAT_00c71678;
  pcVar1 = (char *)DAT_00c71678[0x60c0];
  local_95 = *pcVar1;
  if (local_95 != '\0') {
    local_94 = local_94 * DAT_00baa198;
  }
  local_9c = 1.821688e-44;
  FUN_004288a0(&local_a8,&local_9c);
  if (((*(char *)(local_a0 + 0xd) == '\0') && (*(int *)(local_a0 + 0x10) < 0xe)) &&
     (local_a0 != piVar4[0x6ef6])) {
    local_94 = DAT_00baa454;
  }
  iVar5 = param_1[0xcc];
  if (*(char *)((int)param_1 + 0xc3d) == '\0') {
    if (((*(char *)(iVar5 + 0x34) != '\0') && (*(char *)((int)param_1 + 0xc63) == '\0')) &&
       (((local_95 == '\0' && (cVar3 = FUN_006b8410(4), cVar3 == '\0')) &&
        ((*(int *)(pcVar1 + 8) != 5 || (param_1[10] != 0x379)))))) {
      fVar8 = (float10)FUN_007e9080();
      local_9c = (float)fVar8;
      if ((local_9c < local_94) || (DAT_00c71678[0x9961] == 0x22)) {
LAB_006bbd47:
        *(undefined *)((int)param_1 + 0xc63) = 1;
      }
      else if (0 < DAT_00c71678[0x99dd]) {
        fVar8 = (float10)FUN_007e9080();
        local_9c = (float)fVar8;
        if (local_9c < DAT_00baa1d4) goto LAB_006bbd47;
      }
    }
  }
  else {
    uVar7 = (*(int *)(iVar5 + 0x6c) - *(int *)(iVar5 + 0x68)) / 0x7c;
    if ((param_1[0xf2] != 0) && (*(int *)(param_1[0xf2] + 0x28) == 0x19b)) {
      uVar7 = 0;
    }
    if (DAT_00c71670 == '\0') {
      if (((0 < (int)uVar7) && (param_1[0xc] == 0)) &&
         ((*(char *)(DAT_00c7169c + 0x4f) != '\0' ||
          ((*(int *)(DAT_00c7169c + 8) == 2 &&
           ((piVar4[0x998c] != 0 || (*(char *)((int)piVar4 + 0x26589) != '\0')))))))) {
        local_94 = DAT_00baa120;
        if ((*(char *)(DAT_00c7169c + 0x6d) != '\0') ||
           ((*(int *)(DAT_00c7169c + 8) == 2 &&
            ((piVar4[0x998c] != 0 || (*(char *)((int)piVar4 + 0x26589) != '\0')))))) {
          local_94 = DAT_00baa1f8;
        }
        if (piVar4[0x9a72] == 3) {
          local_94 = DAT_00baa304;
        }
        cVar3 = FUN_0044bfb0(5);
        if (cVar3 != '\0') {
          iVar5 = FUN_009bea80(5);
          local_94 = ((float)iVar5 + (float)iVar5) * local_94;
        }
        if ((DAT_00c71678[0x9961] == 0x22) || (0 < DAT_00c71678[0x99dd])) {
          local_94 = DAT_00baa454;
        }
        local_a8 = DAT_00b1f504;
        local_a0 = DAT_00b1f50c;
        fVar8 = (float10)FUN_007e9080();
        local_9c = (float)fVar8;
        if (local_9c < local_94) {
          iVar5 = FUN_007e9020(uVar7);
          param_1[0xc] = iVar5 + 1;
        }
        piVar4 = DAT_00c71678;
        if (((*(int *)param_1[0xcc] == 0x2d) && (param_1[0xc] == 2)) &&
           (DAT_00c71678[0x9961] == 0x1e)) {
          param_1[0xc] = 0;
        }
      }
    }
    else {
      uVar7 = 0;
      DAT_00c71670 = '\0';
    }
    if ((piVar4[1] == 4) || (piVar4[1] == 5)) {
      if (*(int *)param_1[0xcc] == 0x2d) {
        param_1[0xc] = 3;
      }
      else if (*(int *)param_1[0xcc] == 0x4e) {
        param_1[0xc] = 1;
      }
    }
    uVar2 = param_1[0xc];
    if ((uVar2 != 0) && (uVar2 <= uVar7)) {
      FUN_0069f990(*(int *)(param_1[0xcc] + 0x68) + uVar2 * 0x7c + -0x7c);
      local_8 = 0;
      iVar5 = param_1[0xc] + -1;
      param_1[0x31e] = iVar5;
      if ((iVar5 < 0) || ((int)uVar7 <= iVar5)) {
        FUN_00a112c0(1,"Invalid boss color idx: %d\n",iVar5);
        param_1[0x31e] = -1;
      }
      else {
        param_1[0x3a] = (int)(local_1c * (float)param_1[0x3a]);
        param_1[0x39] = (int)(local_1c * (float)param_1[0x39]);
        param_1[0x30e] = (int)local_1c;
        param_1[0xe1] = (int)(local_18 * (float)param_1[0xe1]);
      }
      (**(code **)(*param_1 + 0x60))();
      FUN_006baf40(1);
      FUN_0040a690(param_1 + 0x18,0);
      local_8 = 0xffffffff;
      FUN_0040d040();
      FUN_0040d040();
      FUN_0040d040();
    }
  }
  if (DAT_00c71670 == '\0') {
    if (*(char *)((int)param_1 + 0xc63) != '\0') {
      iVar5 = param_1[0x319];
      uVar6 = FUN_007e90f0();
      FUN_006d03e0(uVar6,iVar5,1);
    }
  }
  else {
    *(undefined *)((int)param_1 + 0xc63) = 0;
    DAT_00c71670 = '\0';
  }
LAB_006bbda3:
  ExceptionList = local_10;
  FUN_00aef12b(iVar9,uVar10,uVar11);
  return;
}

