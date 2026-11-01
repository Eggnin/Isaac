/* Local J460 decompiler output.
 * VA: 0x006fd350
 * Entry: 006fd350
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: Timeout crossing suppression predicate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; Timeout crossing suppression
   predicate */

undefined4 __fastcall HELPER_Entity_TimeGate(int param_1)

{
  int iVar1;
  char cVar2;
  undefined8 uVar3;
  
  iVar1 = DAT_00c7169c;
  if (*(int *)(param_1 + 0x68d78) != 0) {
    if (*(int *)(DAT_00c7169c + 0x4b3d8) == *(int *)(DAT_00c7169c + 0x4b3dc)) {
      return 1;
    }
    if ((*(int *)(DAT_00c7169c + 0x4b3dc) - *(int *)(DAT_00c7169c + 0x4b3d8) & 0xfffffffcU) == 4) {
      return 1;
    }
  }
  if ((((((*(int *)(param_1 + 0x264f4) < 1) && (*(int *)(param_1 + 0x1d520) == 0)) &&
        (*(int *)(param_1 + 0x1d654) == 0)) &&
       ((*(int *)(param_1 + 0x1ba78) == 0 && (*(int *)(param_1 + 0x1b83c) == 0)))) &&
      ((*(int *)(param_1 + 0x1c034) == 0 || (*(int *)(param_1 + 0x1c034) != 2)))) &&
     ((cVar2 = FUN_009b7650(), cVar2 == '\0' && (*(int *)(iVar1 + 8) == 2)))) {
    uVar3 = FUN_00838210();
    if (((char)uVar3 == '\0') && (*(char *)((int)((ulonglong)uVar3 >> 0x20) + 0x25954) == '\0')) {
      return (int)uVar3;
    }
  }
  return 1;
}

