/* Local J460 decompiler output.
 * VA: 0x00a101c0
 * Entry: 00a101c0
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: STASIS velocity blend helper
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; STASIS velocity blend helper */

float * __fastcall
HELPER_Vector_Interpolate(float *param_1_00,float *param_2_00,float *param_1,char param_2)

{
  float in_XMM3_Da;
  
  if (param_2 != '\0') {
    if (in_XMM3_Da <= DAT_00ba9fe4) {
      in_XMM3_Da = DAT_00ba9fe4;
    }
    if (DAT_00baa454 <= in_XMM3_Da) {
      in_XMM3_Da = DAT_00baa454;
    }
  }
  *param_1_00 = (*param_1 - *param_2_00) * in_XMM3_Da + *param_2_00;
  param_1_00[1] = (param_1[1] - param_2_00[1]) * in_XMM3_Da + param_2_00[1];
  return param_1_00;
}

