/* Local J460 decompiler output.
 * VA: 0x00813360
 * Entry: 00813360
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: HomingType 2 40-pixel walk continues while inside room
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; HomingType 2 40-pixel walk continues
   while inside room */

undefined4 __thiscall HELPER_Room_IsPositionInRoom(int param_1_00,float *param_1,float param_2)

{
  float local_10;
  float local_c;
  
  if (*(int *)(*(int *)(*(int *)(param_1_00 + 4) + 0x10) + 0x48) - 9U < 4) {
    HELPER_RoomClampedPoint(&local_10,param_1,param_2,param_2,param_2);
    if (((NAN(local_10) || NAN(*param_1)) != (local_10 == *param_1)) &&
       ((NAN(local_c) || NAN(param_1[1])) != (local_c == param_1[1]))) {
      return 1;
    }
  }
  else if ((((param_2 + *(float *)(param_1_00 + 0x14) <= *param_1) &&
            (*param_1 <= *(float *)(param_1_00 + 0x1c) - param_2)) &&
           (param_2 + *(float *)(param_1_00 + 0x18) <= param_1[1])) &&
          (param_1[1] <= *(float *)(param_1_00 + 0x20) - param_2)) {
    return 1;
  }
  return 0;
}

