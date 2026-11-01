/* Local J460 decompiler output.
 * VA: 0x0048ee30
 * Entry: 0048ee30
 * Dispatcher: 0x006c2990
 * Types: 295
 * Identities: 295.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0048f110; instructions=191
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=295; identities=295.0.0; dispatcher=0x006c2990;
   end=0x0048f110; instructions=191 */

void __fastcall AI_0048ee30(int *param_1)

{
  int *piVar1;
  byte bVar2;
  byte **ppbVar3;
  char cVar4;
  float *pfVar5;
  int iVar6;
  byte **ppbVar7;
  uint uVar8;
  undefined4 uVar9;
  char *pcVar10;
  bool bVar11;
  float fVar12;
  undefined4 local_e4;
  undefined4 local_e0;
  undefined local_dc [88];
  uint local_84;
  undefined4 local_48;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  uint local_8;
  
  local_8 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  iVar6 = param_1[0x2d9];
  if (iVar6 == 0) {
    param_1[0x5a] = param_1[0x5a] | 0x90001;
    param_1[0x5b] = param_1[0x5b];
    param_1[0x2d9] = 3;
    FUN_00aef12b();
    return;
  }
  if (iVar6 == 3) {
    pfVar5 = (float *)FUN_006bec40(&local_e4,0);
    fVar12 = ((float)param_1[0xd0] - pfVar5[1]) * ((float)param_1[0xd0] - pfVar5[1]) +
             ((float)param_1[0xcf] - *pfVar5) * ((float)param_1[0xcf] - *pfVar5);
    FUN_00435a50();
    if (DAT_00baa950 <= fVar12) {
      iVar6 = param_1[0x2d9];
    }
    else {
      FUN_0040a380("Pulse",0);
      if (param_1[0x1f] != 0) {
        FUN_00408e00();
      }
      param_1[0x2d9] = 8;
      iVar6 = 8;
    }
    param_1[0x104] = param_1[0x104] + 1;
    if (param_1[0x104] < 0xb5) goto LAB_0048ef31;
    param_1[0x2d9] = 8;
  }
  else {
LAB_0048ef31:
    if ((iVar6 != 8) && (*(char *)((int)param_1 + 0x173) == '\0')) goto LAB_0048f0e2;
  }
  ppbVar3 = (byte **)param_1[0x1f];
  if (ppbVar3 == (byte **)0x0) {
LAB_0048ef96:
    cVar4 = FUN_0040a5d0("Pulse",1);
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
  else {
    ppbVar7 = ppbVar3;
    if (&DAT_0000000f < ppbVar3[5]) {
      ppbVar7 = (byte **)*ppbVar3;
    }
    pcVar10 = "Pulse";
    do {
      bVar2 = *(byte *)ppbVar7;
      bVar11 = bVar2 < (byte)*pcVar10;
      if (bVar2 != *pcVar10) {
LAB_0048ef80:
        uVar8 = -(uint)bVar11 | 1;
        goto LAB_0048ef85;
      }
      if (bVar2 == 0) break;
      bVar2 = *(byte *)((int)ppbVar7 + 1);
      bVar11 = bVar2 < ((byte *)pcVar10)[1];
      if (bVar2 != ((byte *)pcVar10)[1]) goto LAB_0048ef80;
      ppbVar7 = (byte **)((int)ppbVar7 + 2);
      pcVar10 = (char *)((byte *)pcVar10 + 2);
    } while (bVar2 != 0);
    uVar8 = 0;
LAB_0048ef85:
    if ((uVar8 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
    goto LAB_0048ef96;
  }
  if (((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) ||
     (*(char *)((int)param_1 + 0x173) != '\0')) {
    local_30 = 0;
    local_2c = 0;
    local_28 = 0;
    local_24 = 0;
    local_20 = DAT_00c7b640;
    local_1c = DAT_00c7b644;
    local_18 = DAT_00c7b640;
    local_14 = DAT_00c7b644;
    local_10 = 0;
    local_c = 0;
    (**(code **)(*param_1 + 0x24))(&local_30);
    uVar9 = FUN_00407170();
    piVar1 = param_1 + 0xcf;
    FUN_00703be0(piVar1,0x42aa0000,param_1,0x3f800000,0,uVar9);
    FUN_006ff2a0(piVar1,0x42200000,param_1[0xdc],0,param_1,DAT_00c79100,DAT_00c79104,DAT_00c79108,
                 DAT_00c7910c,4,0,0);
    AI_0043ef30();
    local_84 = local_84 | 0x80;
    local_48 = 5;
    local_e4 = 0x41200000;
    local_e0 = 0;
    FUN_006cb2e0(piVar1,&local_e4,8,local_dc);
  }
LAB_0048f0e2:
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa120);
  FUN_00aef12b();
  return;
}

