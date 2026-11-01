/* Local J460 decompiler output.
 * VA: 0x0072fd10
 * Entry: 0072fd10
 * Dispatcher: 0x006c2990
 * Types: 1,1000
 * Identities: 1.*,1000.*
 * Evidence: Creep damage/slow player immunity gate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1,1000; identities=1.*,1000.*; Creep damage/slow player
   immunity gate */

undefined4 __thiscall HELPER_ItemConfig_GetCollectible(int *param_1_00,uint param_1)

{
  if (DAT_00c71678 == 0) {
    if ((int)param_1 < 0) {
      return 0;
    }
  }
  else if ((int)param_1 < 0) {
    if (*(int *)(DAT_00c71678 + 0x6775c) - *(int *)(DAT_00c71678 + 0x67758) >> 2 <= (int)~param_1) {
      return 0;
    }
    return **(undefined4 **)(*(int *)(DAT_00c71678 + 0x67758) + ~param_1 * 4);
  }
  if (param_1_00[1] - *param_1_00 >> 2 <= (int)param_1) {
    return 0;
  }
  return *(undefined4 *)(*param_1_00 + param_1 * 4);
}

