/* Local J460 decompiler output.
 * VA: 0x0042f150
 * Entry: 0042f150
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: Bounce contact normal list access
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; Bounce contact normal list access */

int __thiscall HELPER_ContactVectorAt(int *param_1_00,int param_1)

{
  return *param_1_00 + param_1 * 8;
}

