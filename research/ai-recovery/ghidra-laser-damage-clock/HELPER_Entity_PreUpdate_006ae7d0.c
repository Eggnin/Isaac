/* Local J460 decompiler output.
 * VA: 0x006ae7d0
 * Entry: 006ae7d0
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: Age and time-scale update
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; Age and time-scale update */

void __fastcall HELPER_Entity_PreUpdate(int param_1)

{
  *(undefined4 *)(param_1 + 0x38c) = *(undefined4 *)(param_1 + 0x33c);
  *(undefined4 *)(param_1 + 0x390) = *(undefined4 *)(param_1 + 0x340);
  *(undefined4 *)(param_1 + 0x394) = *(undefined4 *)(param_1 + 0x360);
  *(undefined4 *)(param_1 + 0x398) = *(undefined4 *)(param_1 + 0x364);
  return;
}

