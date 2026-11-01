/* Local J460 decompiler output.
 * VA: 0x0041cb70
 * Entry: 0041cb70
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: Perfect homing minimum speed
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; Perfect homing minimum speed */

float * __fastcall HELPER_FloatBound(float *param_1,float *param_2)

{
  if (*param_1 <= *param_2 && *param_2 != *param_1) {
    param_1 = param_2;
  }
  return param_1;
}

