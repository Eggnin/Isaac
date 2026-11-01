/* Local J460 decompiler output.
 * VA: 0x006b8b20
 * Entry: 006b8b20
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: entity_init
 * Evidence: Initializes +0xC40/+0xC44 and AI fields
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=entity_init; Initializes +0xC40/+0xC44 and
   AI fields */

void __thiscall
HELPER_006b8b20_EntityInitCandidate
          (int param_1_00,undefined4 param_1,undefined4 param_2,undefined4 param_3,
          undefined4 param_4)

{
  int **ppiVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined local_34 [32];
  undefined4 local_14;
  undefined4 uStack_10;
  undefined4 local_c;
  int **local_8;
  
  *(undefined *)(param_1_00 + 0xc63) = 0;
  ppiVar1 = (int **)(param_1_00 + 0xf50);
  *(undefined4 *)(param_1_00 + 0xc64) = 0xffffffff;
  *(undefined4 *)(param_1_00 + 0xc68) = 0;
  *(undefined4 *)(param_1_00 + 0xc6c) = 0;
  *(undefined4 *)(param_1_00 + 0xc70) = 0x3f800000;
  *(undefined4 *)(param_1_00 + 0xbac) = 0x3f800000;
  *(undefined4 *)(param_1_00 + 0xc78) = 0xffffffff;
  *(undefined *)(param_1_00 + 0xc3e) = 0;
  *(undefined4 *)(param_1_00 + 0xc38) = 0x3f800000;
  *(undefined4 *)(param_1_00 + 0xc40) = 0;
  *(undefined4 *)(param_1_00 + 0xc44) = 0x78;
  *(undefined4 *)(param_1_00 + 0xbc8) = 0;
  *(undefined4 *)(param_1_00 + 0xbcc) = 0;
  *(undefined4 *)(param_1_00 + 0xbd0) = 0;
  *(undefined4 *)(param_1_00 + 0xbe8) = 0;
  *(undefined *)(param_1_00 + 0xc60) = 0;
  *(undefined *)(param_1_00 + 0xf5c) = 0;
  *(undefined4 *)(param_1_00 + 0xf18) = 0;
  *(undefined4 *)(param_1_00 + 0xf1c) = 0xffffffff;
  *(undefined *)(param_1_00 + 0xf2c) = 0;
  *(undefined4 *)(param_1_00 + 0xf20) = DAT_00c7b640;
  *(undefined4 *)(param_1_00 + 0xf24) = DAT_00c7b644;
  *(undefined4 *)(param_1_00 + 0xf28) = 0;
  *(undefined4 *)(param_1_00 + 0xf30) = DAT_00c7b640;
  *(undefined4 *)(param_1_00 + 0xf34) = DAT_00c7b644;
  *(undefined4 *)(param_1_00 + 0xf38) = 0;
  *(undefined4 *)(param_1_00 + 0xf3c) = 0;
  *(undefined4 *)(param_1_00 + 0xf40) = 0;
  *(undefined4 *)(param_1_00 + 0xf44) = 0x3f800000;
  *(undefined4 *)(param_1_00 + 0xf48) = 0x3f800000;
  *(undefined4 *)(param_1_00 + 0xf4c) = 0xffffffff;
  if (*ppiVar1 != (int *)0x0) {
    (**(code **)(**ppiVar1 + 0x28))();
    if (*ppiVar1 != (int *)0x0) {
      local_8 = ppiVar1;
      FUN_004cf210(&local_8);
      *ppiVar1 = (int *)0x0;
    }
  }
  ppiVar1 = (int **)(param_1_00 + 0xf58);
  if (*(int **)(param_1_00 + 0xf58) != (int *)0x0) {
    (**(code **)(**(int **)(param_1_00 + 0xf58) + 0x28))();
    if (*ppiVar1 != (int *)0x0) {
      local_8 = ppiVar1;
      FUN_004cf210(&local_8);
      *ppiVar1 = (int *)0x0;
    }
  }
  if (*(int *)(param_1_00 + 0xf54) != 0) {
    local_8 = (int **)(param_1_00 + 0xf54);
    FUN_004cf210(&local_8);
    *(int **)(param_1_00 + 0xf54) = (int *)0x0;
  }
  *(undefined4 *)(param_1_00 + 0xb8c) = *(undefined4 *)(param_1_00 + 0xb88);
  *(undefined4 *)(param_1_00 + 0xb94) = 0;
  *(undefined4 *)(param_1_00 + 0xb98) = 0;
  *(undefined4 *)(param_1_00 + 0xb9c) = 0;
  FUN_006a93a0(param_1,param_2,param_3,param_4);
  *(uint *)(param_1_00 + 0x168) = *(uint *)(param_1_00 + 0x168) | 4;
  *(undefined4 *)(param_1_00 + 0x16c) = *(undefined4 *)(param_1_00 + 0x16c);
  *(undefined4 *)(param_1_00 + 0xb64) = 1;
  *(undefined4 *)(param_1_00 + 0xb68) = 0;
  *(undefined4 *)(param_1_00 + 0xb74) = 0;
  *(undefined4 *)(param_1_00 + 0x410) = 0;
  *(undefined4 *)(param_1_00 + 0xb6c) = 0;
  *(undefined4 *)(param_1_00 + 0xb70) = 0;
  *(undefined4 *)(param_1_00 + 0xb84) = 0;
  *(undefined4 *)(param_1_00 + 0xc7c) = 0xffffffff;
  *(undefined4 *)(param_1_00 + 0x334) = DAT_00c7b640;
  *(undefined4 *)(param_1_00 + 0x338) = DAT_00c7b644;
  *(undefined4 *)(param_1_00 + 0xc2c) = DAT_00c7b640;
  *(undefined4 *)(param_1_00 + 0xc30) = DAT_00c7b644;
  *(undefined4 *)(param_1_00 + 0xc34) = 0x3f800000;
  *(undefined4 *)(param_1_00 + 0xbb0) = DAT_00c7b640;
  *(undefined4 *)(param_1_00 + 0xbb4) = DAT_00c7b644;
  *(undefined4 *)(param_1_00 + 3000) = DAT_00c7b640;
  *(undefined4 *)(param_1_00 + 0xbbc) = DAT_00c7b644;
  *(undefined4 *)(param_1_00 + 0xc74) = 0;
  *(undefined4 *)(param_1_00 + 0x3f0) = 0;
  *(undefined4 *)(param_1_00 + 0xbc0) = 0;
  *(undefined4 *)(param_1_00 + 0xbc4) = 0;
  *(undefined4 *)(param_1_00 + 0xbec) = 0;
  *(undefined4 *)(param_1_00 + 0xba0) = 0;
  *(undefined4 *)(param_1_00 + 0xba4) = 0xffffffff;
  *(undefined4 *)(param_1_00 + 0xba8) = 0;
  *(undefined4 *)(param_1_00 + 0x3f4) = DAT_00c7b640;
  uVar3 = DAT_00c7b644;
  *(undefined2 *)(param_1_00 + 0xc61) = 0;
  local_14 = 0;
  uStack_10 = 0;
  local_c = 0;
  *(undefined4 *)(param_1_00 + 0x3f8) = uVar3;
  if ((undefined (*) [16])(param_1_00 + 0xc80) != (undefined (*) [16])local_34) {
    *(undefined (*) [16])(param_1_00 + 0xc90) = ZEXT416(0);
    *(undefined8 *)(param_1_00 + 0xca0) = 0;
    *(undefined (*) [16])(param_1_00 + 0xc80) = ZEXT816(0);
    *(undefined4 *)(param_1_00 + 0xca8) = 0;
  }
  *(undefined4 *)(param_1_00 + 0xf04) = *(undefined4 *)(param_1_00 + 0xf00);
  *(undefined4 *)(param_1_00 + 0xf10) = *(undefined4 *)(param_1_00 + 0xf0c);
  FUN_007e3260();
  if (*(char *)(param_1_00 + 0xc3d) != '\0') {
    piVar2 = (int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7224);
    *piVar2 = *piVar2 + 1;
  }
  *(undefined4 *)(param_1_00 + 0xc5c) = 0;
  FUN_00860880(param_1_00);
  return;
}

