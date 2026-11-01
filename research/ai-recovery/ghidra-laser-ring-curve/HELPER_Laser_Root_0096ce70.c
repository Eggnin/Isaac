/* Local J460 decompiler output.
 * VA: 0x0096ce70
 * Entry: 0096ce70
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: CanDamageEntity chained root resolution
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; CanDamageEntity chained root
   resolution */

int __fastcall HELPER_Laser_Root(int param_1)

{
  int iVar1;
  
  do {
    iVar1 = param_1;
    param_1 = *(int *)(iVar1 + 0x52c);
  } while (param_1 != 0);
  return iVar1 + 0x520;
}

