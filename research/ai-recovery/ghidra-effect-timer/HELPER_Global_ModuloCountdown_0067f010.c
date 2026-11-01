/* Local J460 decompiler output.
 * VA: 0x0067f010
 * Entry: 0067f010
 * Dispatcher: 0x006c2990
 * Types: 1,1000
 * Identities: 1.*,1000.*
 * Evidence: Creep timeout initial value
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1,1000; identities=1.*,1000.*; Creep timeout initial
   value */

uint __fastcall HELPER_Global_ModuloCountdown(uint param_1)

{
  uint uVar1;
  
  if (param_1 == 0) {
    return 0;
  }
  uVar1 = FUN_006eef60();
  return uVar1 % param_1;
}

