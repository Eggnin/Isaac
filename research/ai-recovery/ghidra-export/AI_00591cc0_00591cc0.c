/* Local J460 decompiler output.
 * VA: 0x00591cc0
 * Entry: 00591cc0
 * Dispatcher: 0x006c2990
 * Types: 966
 * Identities: 966.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00592050; instructions=242
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=966; identities=966.0.0; dispatcher=0x006c2990;
   end=0x00592050; instructions=242 */

void __fastcall AI_00591cc0(int *param_1)

{
  bool bVar1;
  char cVar2;
  int *piVar3;
  int iVar4;
  int *piVar5;
  int *local_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined local_30 [16];
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  piVar3 = (int *)param_1[0xf1];
  if ((piVar3 == (int *)0x0) || (piVar5 = piVar3, piVar3[10] != 3)) {
    piVar5 = (int *)0x0;
  }
  if (param_1[0x2dd] != 1) {
    if (param_1[0x2d9] == 0) {
      param_1[0x3c6] = param_1[0x3c6] | 1;
      param_1[0x5a] = param_1[0x5a] | 1;
      param_1[0x2d9] = 3;
      param_1[0xe2] = 0x3f800000;
      param_1[0x5b] = param_1[0x5b];
      cVar2 = FUN_0040a5d0(&DAT_00b1de04,1);
      if (((cVar2 != '\0') && (param_1[0x1f] != 0)) && (FUN_00408e00(), param_1[0x1f] != 0)) {
        *(undefined *)(param_1 + 0x23) = 0;
      }
      iVar4 = FUN_0040b220(0);
      *(undefined *)(iVar4 + 0x74) = 0;
      if (piVar5 != (int *)0x0) {
        if ((int *)piVar5[0x3bb] != param_1) {
          if ((int *)piVar5[0x3bb] != (int *)0x0) {
            local_44 = piVar5 + 0x3bb;
            FUN_004cf210(&local_44);
          }
          piVar5[0x3bb] = (int)param_1;
          FUN_004cdcf0(piVar5 + 0x3bb);
        }
        iVar4 = piVar5[0xcc];
        local_44 = *(int **)(iVar4 + 0x40);
        FUN_006ac2a0(piVar5[0xdc],*(undefined4 *)(iVar4 + 0x3c),local_44,
                     *(undefined4 *)(iVar4 + 0x48));
      }
    }
    goto LAB_0059202e;
  }
  if (((param_1[0xef] == 0) || (piVar5 == (int *)0x0)) || ((param_1[0x5a] & 0x100U) != 0)) {
    (**(code **)(*param_1 + 0x28))();
    FUN_00aef12b();
    return;
  }
  iVar4 = piVar3[0xd0];
  param_1[0xcf] = piVar3[0xcf];
  param_1[0xd0] = iVar4;
  iVar4 = piVar3[0xd9];
  param_1[0xd8] = piVar3[0xd8];
  param_1[0xd9] = iVar4;
  param_1[0xdb] = piVar3[0xdb];
  param_1[0x62] = -(uint)(piVar3[0x62] != 0) & 2;
  param_1[0x61] = piVar3[0x61];
  if (piVar5[0x89] < 2) {
    piVar5[0x5a] = piVar5[0x5a] | 0x100;
    piVar5[0x89] = 2;
    piVar5[0x5b] = piVar5[0x5b];
    if (piVar5[0xb] != 0xdc) {
      bVar1 = false;
      piVar3 = (int *)piVar5[0x6b];
      local_40 = _DAT_00bac400;
      uStack_3c = _UNK_00bac404;
      uStack_38 = _UNK_00bac408;
      uStack_34 = _UNK_00bac40c;
      local_20 = 0x3e3851ec;
      local_1c = 0x3d23d70a;
      local_30 = ZEXT816(0);
      local_18 = 0x3d23d70a;
      if (piVar3 != (int *)piVar5[0x6c]) {
        do {
          if (*piVar3 == 0x105) {
            piVar3[0xd] = piVar5[0x89];
            piVar3[0xc] = piVar5[0x89];
            bVar1 = true;
          }
          piVar3 = piVar3 + 0xf;
        } while (piVar3 != (int *)piVar5[0x6c]);
        if (bVar1) goto LAB_00591e56;
      }
      (**(code **)(*piVar5 + 0x3c))(&local_40,piVar5[0x89],0x105,0,1);
    }
  }
LAB_00591e56:
  if (0.0 < (float)param_1[5]) {
    local_40 = _DAT_00bac4b0;
    uStack_3c = _UNK_00bac4b4;
    uStack_38 = _UNK_00bac4b8;
    uStack_34 = _UNK_00bac4bc;
    local_20 = 0x3f48b439;
    local_1c = 0;
    local_18 = 0;
    local_30 = ZEXT816(0);
    (**(code **)(*piVar5 + 0x3c))(&local_40,1,0,0,1);
  }
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (piVar5[0xb] == 0xce)) {
    uStack_3c = 0;
    uStack_38 = 0;
    uStack_34 = 0;
    local_30._4_4_ = DAT_00c7b644;
    local_30._0_4_ = DAT_00c7b640;
    local_30._8_4_ = DAT_00c7b640;
    local_30._12_4_ = 0;
    local_30 = local_30 << 0x20;
    local_20 = DAT_00c7b644;
    local_1c = 0;
    local_18 = 0;
    (**(code **)(*piVar5 + 0x24))(&uStack_3c);
    FUN_00aef12b();
    return;
  }
LAB_0059202e:
  FUN_00aef12b();
  return;
}

