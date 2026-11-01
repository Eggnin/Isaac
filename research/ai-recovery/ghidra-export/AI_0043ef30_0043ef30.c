/* Local J460 decompiler output.
 * VA: 0x0043ef30
 * Entry: 0043ef30
 * Dispatcher: 0x006c2990
 * Types: 79
 * Identities: 79.0.0,79.1.0,79.10.0,79.11.0,79.12.0,79.2.0,79.20.0
 * Evidence: dispatcher=0x006c2990; end=0x0043f0c0; instructions=61
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=79;
   identities=79.0.0,79.1.0,79.10.0,79.11.0,79.12.0,79.2.0,79.20.0; dispatcher=0x006c2990;
   end=0x0043f0c0; instructions=61 */

undefined * __fastcall AI_0043ef30(undefined *param_1)

{
  int iVar1;
  
  *param_1 = 1;
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(param_1 + 0x10) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x14) = 0x3f800000;
  iVar1 = FUN_006eef60();
  *(undefined4 *)(param_1 + 0x1c) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x20) = 0x3ba3d70a;
  *(undefined4 *)(param_1 + 0x24) = 0x3f8147ae;
  *(undefined4 *)(param_1 + 0x28) = 0x3f800000;
  *(float *)(param_1 + 0x18) =
       (float)((double)iVar1 + (double)(&DAT_00bacb00)[-(iVar1 >> 0x1f)]) * DAT_00ba9ff4 *
       DAT_00baa708;
  *(undefined4 *)(param_1 + 0x2c) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x30) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x34) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x38) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x3c) = 0;
  *(undefined4 *)(param_1 + 0x40) = 0;
  *(undefined4 *)(param_1 + 0x44) = 0;
  *(undefined4 *)(param_1 + 0x48) = 0;
  *(undefined4 *)(param_1 + 0x4c) = 0;
  *(undefined4 *)(param_1 + 0x50) = 0;
  *(undefined4 *)(param_1 + 0x54) = 0;
  *(undefined4 *)(param_1 + 0x58) = 0;
  *(undefined4 *)(param_1 + 0x5c) = 0;
  *(undefined4 *)(param_1 + 0x60) = DAT_00c7b640;
  *(undefined4 *)(param_1 + 100) = DAT_00c7b644;
  *(undefined4 *)(param_1 + 0x68) = DAT_00c7b640;
  *(undefined4 *)(param_1 + 0x6c) = DAT_00c7b644;
  *(undefined4 *)(param_1 + 0x70) = DAT_00c7b640;
  *(undefined4 *)(param_1 + 0x74) = DAT_00c7b644;
  *(undefined4 *)(param_1 + 0x78) = 0xc47a0000;
  *(undefined4 *)(param_1 + 0x7c) = 0;
  *(undefined4 *)(param_1 + 0x80) = 0;
  *(undefined4 *)(param_1 + 0x84) = 0;
  *(undefined4 *)(param_1 + 0x88) = 0;
  *(undefined4 *)(param_1 + 0x8c) = 0x1e;
  *(undefined4 *)(param_1 + 0x90) = 0;
  *(undefined4 *)(param_1 + 0x94) = 0;
  param_1[0x98] = 0;
  *(undefined **)(param_1 + 0x9c) = &DAT_bf800000;
  *(undefined4 *)(param_1 + 0xa0) = 0;
  param_1[0xa4] = 0;
  return param_1;
}

