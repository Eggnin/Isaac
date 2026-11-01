/* Local J460 decompiler output.
 * VA: 0x00431450
 * Entry: 00431450
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: Entity velocity mutation used by ACCELERATE_TO_POSITION
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; Entity velocity mutation used by
   ACCELERATE_TO_POSITION */

void __thiscall HELPER_Entity_AddVelocity(int param_1_00,float *param_1,char param_2)

{
  float fVar1;
  float fVar2;
  
  fVar2 = DAT_00baa454;
  if (param_2 == '\0') {
    fVar2 = *(float *)(param_1_00 + 0x39c);
  }
  fVar1 = param_1[1];
  *(float *)(param_1_00 + 0x360) = fVar2 * *param_1 + *(float *)(param_1_00 + 0x360);
  *(float *)(param_1_00 + 0x364) = fVar1 * fVar2 + *(float *)(param_1_00 + 0x364);
  return;
}

