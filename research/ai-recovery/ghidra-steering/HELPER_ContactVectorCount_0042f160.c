/* Local J460 decompiler output.
 * VA: 0x0042f160
 * Entry: 0042f160
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: Bounce contact normal list count
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; Bounce contact normal list count */

int __fastcall HELPER_ContactVectorCount(int *param_1)

{
  return param_1[1] - *param_1 >> 3;
}

