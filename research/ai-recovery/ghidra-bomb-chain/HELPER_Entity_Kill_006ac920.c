/* Local J460 decompiler output.
 * VA: 0x006ac920
 * Entry: 006ac920
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Bomb vtable slot +0x24
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Bomb vtable slot +0x24 */

void __thiscall HELPER_Entity_Kill(int *param_1_00,int param_1)

{
  int iVar1;
  char cVar2;
  int iVar3;
  undefined4 uVar4;
  undefined local_38 [44];
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)local_38;
  if (*(char *)((int)param_1_00 + 0x173) == '\0') {
    *(undefined *)((int)param_1_00 + 0x173) = 1;
    if (*(int *)(param_1 + 0x24) != 0) {
      iVar3 = FUN_006a9140();
      if ((((((iVar3 != 0) && (iVar1 = param_1_00[10], iVar1 != 0)) && (iVar1 != 1)) &&
           (((iVar1 != 2 && (iVar1 != 3)) && ((iVar1 != 4 && ((iVar1 != 5 && (iVar1 != 6)))))))) &&
          (iVar1 != 7)) && ((iVar1 != 8 && (iVar1 != 9)))) {
        if (iVar1 == 0x21) {
          cVar2 = FUN_007706e0(0x1a4,0);
          if ((cVar2 != '\0') &&
             (((iVar1 = param_1_00[0xb], iVar1 == 0 || (iVar1 == 1)) || (iVar1 == 10)))) {
            uVar4 = FUN_00407170();
            HELPER_Explosion(param_1_00 + 0xcf,0x41a00000,0,0,0,0,uVar4,iVar3,0x3f800000,1,4,0,0);
          }
        }
        else if (iVar1 != 1000) {
          FUN_00425ac0(0x11,iVar3);
          cVar2 = (**(code **)(*param_1_00 + 0x4c))();
          if (cVar2 != '\0') {
            FUN_00425ac0(0x14,iVar3);
            if (*(char *)(iVar3 + 0x20a9) != '\0') {
              FUN_00425ac0(0x15,iVar3);
            }
          }
        }
      }
    }
    cVar2 = (**(code **)(*param_1_00 + 0x4c))();
    if ((cVar2 == '\0') && (param_1_00[10] != 3)) {
      FUN_006b45c0();
    }
    FUN_00866140(param_1_00);
  }
  FUN_00aef12b();
  return;
}

