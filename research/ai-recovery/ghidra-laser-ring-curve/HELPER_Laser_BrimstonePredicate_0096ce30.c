/* Local J460 decompiler output.
 * VA: 0x0096ce30
 * Entry: 0096ce30
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Ring lifecycle variant predicate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Ring lifecycle variant predicate */

undefined4 __fastcall HELPER_Laser_BrimstonePredicate(int param_1)

{
  switch(*(undefined4 *)(param_1 + 0x2c)) {
  case 1:
  case 3:
  case 6:
  case 9:
  case 0xb:
  case 0xc:
  case 0xd:
  case 0xe:
  case 0xf:
    return 1;
  default:
    return 0;
  }
}

