/* Local J460 decompiler output.
 * VA: 0x0050a6b0
 * Entry: 0050a6b0
 * Dispatcher: 0x006c2990
 * Types: 77
 * Identities: 77.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0050a8a0; instructions=147
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=77; identities=77.0.0; dispatcher=0x006c2990;
   end=0x0050a8a0; instructions=147 */

void __fastcall AI_0050a6b0(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  char cVar3;
  int iVar4;
  byte **ppbVar5;
  uint uVar6;
  char *pcVar7;
  bool bVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 local_c;
  undefined4 local_8;
  
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 3;
    return;
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  if (*(int *)(param_1 + 0x7c) == 0) {
LAB_0050a704:
    if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
      FUN_007e6300(0);
    }
    else {
      iVar4 = FUN_006be840();
      local_c = *(undefined4 *)(iVar4 + 0x33c);
      local_8 = *(undefined4 *)(iVar4 + 0x340);
      FUN_007e4940(&local_c,0);
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    }
  }
  else {
    cVar3 = FUN_0040ae70("Landed");
    if (cVar3 == '\0') goto LAB_0050a704;
  }
  if (*(int *)(param_1 + 0x7c) != 0) {
    cVar3 = FUN_0040add0("Landed");
    if (cVar3 != '\0') {
      uVar11 = 0x3f800000;
      uVar10 = 0;
      uVar9 = 2;
      iVar4 = FUN_006eef60(2,0,0x3f800000);
      FUN_006d6ba0(0xcd,(float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baa1f8 + DAT_00baa280,uVar9,uVar10,uVar11);
    }
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar3 = FUN_0040ae70("Landed");
      if (cVar3 != '\0') {
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
      }
    }
  }
  ppbVar2 = *(byte ***)(param_1 + 0x7c);
  if (ppbVar2 != (byte **)0x0) {
    ppbVar5 = ppbVar2;
    if (&DAT_0000000f < ppbVar2[5]) {
      ppbVar5 = (byte **)*ppbVar2;
    }
    pcVar7 = "Walk Sad";
    do {
      bVar1 = *(byte *)ppbVar5;
      bVar8 = bVar1 < (byte)*pcVar7;
      if (bVar1 != *pcVar7) {
LAB_0050a842:
        uVar6 = -(uint)bVar8 | 1;
        goto LAB_0050a847;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar5 + 1);
      bVar8 = bVar1 < ((byte *)pcVar7)[1];
      if (bVar1 != ((byte *)pcVar7)[1]) goto LAB_0050a842;
      ppbVar5 = (byte **)((int)ppbVar5 + 2);
      pcVar7 = (char *)((byte *)pcVar7 + 2);
    } while (bVar1 != 0);
    uVar6 = 0;
LAB_0050a847:
    if ((uVar6 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
    goto LAB_0050a87a;
  }
  cVar3 = FUN_0040a5d0("Walk Sad",1);
  if (cVar3 != '\0') {
    FUN_0040a1b0();
    *(undefined *)(param_1 + 0x8c) = 1;
  }
LAB_0050a87a:
  *(bool *)(param_1 + 0x148) =
       *(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0;
  return;
}

