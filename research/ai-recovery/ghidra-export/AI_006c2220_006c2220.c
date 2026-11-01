/* Local J460 decompiler output.
 * VA: 0x006c2220
 * Entry: 006c2220
 * Dispatcher: 0x006c2990
 * Types: 17
 * Identities: 17.0.0,17.1.0,17.2.0,17.3.0,17.4.0
 * Evidence: dispatcher=0x006c2990; end=0x006c2750; instructions=377
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=17; identities=17.0.0,17.1.0,17.2.0,17.3.0,17.4.0;
   dispatcher=0x006c2990; end=0x006c2750; instructions=377 */

void __fastcall AI_006c2220(int param_1)

{
  uint *puVar1;
  int *piVar2;
  byte bVar3;
  byte **ppbVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined *puVar9;
  char cVar10;
  uint uVar11;
  byte **ppbVar12;
  undefined4 *puVar13;
  int *piVar14;
  byte *pbVar15;
  int iVar16;
  bool bVar17;
  float fVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined4 local_80 [8];
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_58;
  int *local_54 [3];
  uint local_48;
  uint local_44;
  undefined local_40 [8];
  int local_38;
  int local_34;
  int local_30;
  int *local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00afa96d;
  local_1c = ExceptionList;
  uVar11 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_30 = param_1;
  puVar9 = &stack0xfffffffc;
  if (*(int *)(param_1 + 0xb64) != 0) goto LAB_006c241e;
  *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
  *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb | 0x11;
  iVar16 = *(uint *)(param_1 + 0x3ec) % 9 + 1;
  *(undefined4 *)(param_1 + 0x188) = 1;
  *(undefined4 *)(param_1 + 0x184) = 0;
  *(int *)(param_1 + 0x30) = iVar16;
  puVar9 = &stack0xfffffffc;
  switch(*(undefined4 *)(param_1 + 0x2c)) {
  case 0:
  case 3:
    puStack_20 = &stack0xfffffffc;
    FUN_0041e420(&DAT_00c80dd0,0x40,"Shopkeeper %u",iVar16);
    puVar9 = puStack_20;
    break;
  case 1:
  case 4:
    puStack_20 = &stack0xfffffffc;
    FUN_0041e420(&DAT_00c80dd0,0x40,"Guy%u",iVar16);
    puVar9 = puStack_20;
    break;
  case 2:
    FUN_0041e420(&DAT_00c80dd0,0x40,&DAT_00b1bc54,uVar11);
    puVar9 = puStack_20;
  }
  puStack_20 = puVar9;
  ppbVar4 = *(byte ***)(param_1 + 0x7c);
  if (ppbVar4 == (byte **)0x0) {
LAB_006c235e:
    cVar10 = FUN_0040a5d0(&DAT_00c80dd0,1);
    if (cVar10 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
  }
  else {
    ppbVar12 = ppbVar4;
    if (&DAT_0000000f < ppbVar4[5]) {
      ppbVar12 = (byte **)*ppbVar4;
    }
    pbVar15 = &DAT_00c80dd0;
    do {
      bVar3 = *(byte *)ppbVar12;
      bVar17 = bVar3 < *pbVar15;
      if (bVar3 != *pbVar15) {
LAB_006c2340:
        uVar11 = -(uint)bVar17 | 1;
        goto LAB_006c2345;
      }
      if (bVar3 == 0) break;
      bVar3 = *(byte *)((int)ppbVar12 + 1);
      bVar17 = bVar3 < pbVar15[1];
      if (bVar3 != pbVar15[1]) goto LAB_006c2340;
      ppbVar12 = (byte **)((int)ppbVar12 + 2);
      pbVar15 = pbVar15 + 2;
    } while (bVar3 != 0);
    uVar11 = 0;
LAB_006c2345:
    if ((uVar11 != 0) || ((*(byte *)(ppbVar4 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
    goto LAB_006c235e;
  }
  uVar8 = _UNK_00bac28c;
  uVar7 = _UNK_00bac288;
  uVar20 = _UNK_00bac284;
  uVar19 = _DAT_00bac280;
  local_60 = 0x3e4ccccd;
  uStack_5c = 0x3e4ccccd;
  local_58 = 0x3e4ccccd;
  if ((undefined4 *)(param_1 + 0x1e4) != local_80) {
    *(undefined8 *)(param_1 + 0x204) = 0x3e4ccccd3e4ccccd;
    *(undefined4 *)(param_1 + 0x1e4) = uVar19;
    *(undefined4 *)(param_1 + 0x1e8) = uVar20;
    *(undefined4 *)(param_1 + 0x1ec) = uVar7;
    *(undefined4 *)(param_1 + 0x1f0) = uVar8;
    *(undefined4 *)(param_1 + 0x20c) = 0x3e4ccccd;
    *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
  }
  iVar16 = *(int *)(param_1 + 0x2c);
  if ((((iVar16 == 0) || (iVar16 == 3)) || (iVar16 == 2)) &&
     (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 8) == 0x10)) {
    *(undefined4 *)(param_1 + 0xdc) = 0;
    *(undefined4 *)(param_1 + 0xe0) = 0x41000000;
  }
  *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
  *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
  *(undefined4 *)(param_1 + 0xb64) = 3;
  FUN_006da530();
  puVar9 = puStack_20;
LAB_006c241e:
  puStack_20 = puVar9;
  fVar18 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  *(undefined4 *)(param_1 + 0x33c) = *(undefined4 *)(param_1 + 0x334);
  *(undefined4 *)(param_1 + 0x340) = *(undefined4 *)(param_1 + 0x338);
  *(float *)(param_1 + 0x36c) = fVar18;
  if (*(char *)(param_1 + 0x173) != '\0') {
    FUN_00929b40(0xc,1);
    iVar16 = DAT_00c71678;
    puVar13 = (undefined4 *)(DAT_00c71678 + 0x2654c);
    *(uint *)(DAT_00c71678 + 0x26548) = *(uint *)(DAT_00c71678 + 0x26548) | 0x80000000;
    *(undefined4 *)(iVar16 + 0x2654c) = *puVar13;
    puVar1 = (uint *)(iVar16 + 0x1839c);
    *puVar1 = *puVar1 | 0x40;
    FUN_006c1ac0(local_54,1);
    local_14 = 0;
    local_28 = local_48;
    local_2c = local_54[0];
    while (uVar11 = local_28, local_28 != local_44 + local_48) {
      if (local_2c == (int *)0x0) {
        iVar16 = 0;
      }
      else {
        iVar16 = *local_2c;
      }
      if (**(int **)(*(int *)(iVar16 + 4) + (*(int *)(iVar16 + 8) - 1U & local_28) * 4) == 0x55) {
        uVar19 = DAT_00c7b640;
        uVar20 = DAT_00c7b644;
        if (local_28 == local_48) {
          puVar13 = (undefined4 *)FUN_00813520(local_40,param_1 + 0x33c,0x428c0000,0,0,0);
          uVar19 = *puVar13;
          uVar20 = puVar13[1];
        }
        FUN_006c2750(param_1 + 0x33c,param_1,uVar19,uVar20,0,0xc1f00000);
        local_28 = uVar11 + 1;
      }
      else {
        piVar14 = (int *)FUN_0085bed0(param_1 + 0x33c,&DAT_00c7b640,0);
        if (piVar14[10] == 0x32) {
          iVar16 = *(int *)(DAT_00c71678 + 0x18300);
          cVar10 = (**(code **)(*piVar14 + 0x48))();
          if ((cVar10 != '\0') && (piVar14[10] != 0x362)) {
            piVar2 = (int *)(iVar16 + 0x12c0);
            *piVar2 = *piVar2 + 1;
            cVar10 = (**(code **)(*piVar14 + 0x4c))();
            if (cVar10 != '\0') {
              piVar2 = (int *)(iVar16 + 0x12c8);
              *piVar2 = *piVar2 + 1;
            }
          }
          (**(code **)(*piVar14 + 0xc))();
          FUN_007ebc40();
          iVar16 = 0x724;
          *(undefined *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7228) = 1;
          local_24 = 0;
          do {
            local_24 = local_24 + 1;
            if (((local_24 < 9) &&
                (iVar5 = *(int *)(iVar16 + *(int *)(DAT_00c71678 + 0x18300)), iVar5 != 0)) &&
               (*(int *)(iVar5 + 0xc) != 1)) {
              *(undefined4 *)(iVar5 + 0xc) = 1;
              FUN_0070ee40();
              iVar6 = *(int *)(iVar5 + 0x15c);
              if ((((iVar6 == 7) || (iVar5 = *(int *)(iVar5 + 0x160), iVar5 == 7)) ||
                  ((iVar6 == 8 || ((iVar5 == 8 || (iVar6 == 0x1d)))))) || (iVar5 == 0x1d)) {
                FUN_0040ccd0(&DAT_00b1d644,4);
              }
            }
            iVar16 = iVar16 + 4;
          } while (iVar16 < 0x744);
          puVar1 = (uint *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44);
          *puVar1 = *puVar1 & 0xfffffffe;
          local_28 = local_28 + 1;
          param_1 = local_30;
        }
        else {
          if ((1 < local_44) && (piVar14[10] == 5)) {
            FUN_006ee440(0,0);
            piVar14[0xd8] = local_38;
            piVar14[0xd9] = local_34;
          }
          (**(code **)(*piVar14 + 0xc))();
          local_28 = local_28 + 1;
        }
      }
    }
    if (local_44 != 0) {
      *(undefined *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7894) = 1;
    }
    FUN_006da530();
    FUN_006da850();
    piVar14 = local_54[0];
    local_54[0] = (int *)0x0;
    FUN_00aef15c(piVar14,8);
  }
  ExceptionList = local_1c;
  return;
}

