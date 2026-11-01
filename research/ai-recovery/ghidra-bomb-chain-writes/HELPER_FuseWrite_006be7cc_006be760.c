/* Local J460 decompiler output.
 * VA: 0x006be7cc
 * Entry: 006be760
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Candidate immediate-zero +0x410 write, entity type not yet classified
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Candidate immediate-zero +0x410
   write, entity type not yet classified */

void __fastcall HELPER_FuseWrite_006be7cc(int *param_1)

{
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  
  local_2c = 0;
  local_28 = 0;
  local_24 = 0;
  local_20 = 0;
  local_1c = DAT_00c7b640;
  local_18 = DAT_00c7b644;
  local_14 = DAT_00c7b640;
  local_10 = DAT_00c7b644;
  local_c = 0;
  local_8 = 0;
  (**(code **)(*param_1 + 0x24))(&local_2c);
  param_1[0x2d9] = 0x11;
  param_1[0x104] = 0;
  return;
}

