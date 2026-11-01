/* Local J460 decompiler output.
 * VA: 0x0096fc70
 * Entry: 0096fc70
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Reverse beam endpoint for boomerang primitive
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Reverse beam endpoint for boomerang
   primitive */

undefined4 __thiscall
HELPER_Laser_WallEndpoint(int param_1_00,undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  
  if (((*(uint *)(param_1_00 + 0x428) & _DAT_00c348d0 |
       *(uint *)(param_1_00 + 0x42c) & _DAT_00c348d4) != 0) ||
     (uVar1 = DAT_00baa87c,
     (*(uint *)(param_1_00 + 0x430) & _DAT_00c348d8 | *(uint *)(param_1_00 + 0x434) & _DAT_00c348dc)
     != 0)) {
    uVar1 = DAT_00baaa30;
  }
  if (((*(uint *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) >> 0xf & 1) != 0) ||
     (*(int *)(param_1_00 + 0x2c) == 5)) {
    uVar1 = DAT_00baa9d0;
    if (((*(uint *)(param_1_00 + 0x428) & DAT_00c34b70 |
         *(uint *)(param_1_00 + 0x42c) & DAT_00c34b74) == 0) &&
       ((*(uint *)(param_1_00 + 0x430) & DAT_00c34b78 | *(uint *)(param_1_00 + 0x434) & DAT_00c34b7c
        ) == 0)) {
      uVar1 = DAT_00baacd0;
    }
  }
  HELPER_Laser_RoomRay
            (param_1,param_2,param_3,param_1_00 + 0x34c,*(undefined4 *)(param_1_00 + 0x3bc),uVar1);
  return param_1;
}

