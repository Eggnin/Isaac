/* Local J460 decompiler output.
 * VA: 0x006d7010
 * Entry: 006d7010
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: common_damage_path
 * Evidence: Called immediately before shield absorption at 0x006c507e
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=common_damage_path; Called immediately
   before shield absorption at 0x006c507e */

void __fastcall HELPER_006d7010_DamageQueuePreprocessCandidate(int param_1)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  float *pfVar5;
  float fVar6;
  double dVar7;
  undefined4 local_50;
  float local_4c;
  float local_48;
  float local_44;
  
  if (*(int *)(param_1 + 0x28) != 0x3c4) {
    iVar2 = FUN_009be080(0x193,DAT_00c71678 + 0x1baa8,1);
    if (iVar2 == 0) {
      return;
    }
    cVar1 = FUN_006b5b90();
    if (cVar1 == '\0') {
      return;
    }
  }
  if ((((*(char *)(param_1 + 0x171) != '\0') && (fVar6 = 0.0, 0.0 < *(float *)(param_1 + 0xfc))) &&
      (0.0 < *(float *)(param_1 + 0x380))) &&
     (((iVar2 = FUN_006a89f0(), iVar2 == param_1 && (*(char *)(param_1 + 0x3b0) == '\0')) &&
      (pfVar5 = *(float **)(param_1 + 8), pfVar5 != *(float **)(param_1 + 0xc))))) {
    do {
      if (fVar6 < *pfVar5) {
        uVar3 = FUN_006eef60();
        local_50 = 0;
        iVar2 = FUN_006eef60();
        fVar6 = (float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4;
        local_4c = DAT_00baad84 - (fVar6 + fVar6);
        local_48 = *(float *)(param_1 + 0x33c) - DAT_00ba9fe4;
        local_44 = *(float *)(param_1 + 0x340) - DAT_00baa87c;
        piVar4 = (int *)HELPER_Entity_CreateDispatcher(0x2329,1,&local_48,&local_50,0,0,uVar3,0);
        dVar7 = floor((double)(*pfVar5 * DAT_00baa81c + DAT_00baa2d0));
        fVar6 = DAT_00baac30;
        if ((float)dVar7 / DAT_00baa81c <= DAT_00baac30) {
          fVar6 = (float)dVar7 / DAT_00baa81c;
        }
        if (fVar6 <= 0.0) {
          fVar6 = DAT_00baa120;
        }
        iVar2 = *(int *)(param_1 + 900);
        piVar4[0xcd] = (int)fVar6;
        piVar4[0xce] = iVar2;
        if (piVar4[0xef] != 0) {
          FUN_004cf210();
        }
        piVar4[0xef] = param_1;
        FUN_004cdcf0();
        (**(code **)(*piVar4 + 0xc))();
        fVar6 = 0.0;
      }
      pfVar5 = pfVar5 + 0xe;
    } while (pfVar5 != *(float **)(param_1 + 0xc));
  }
  return;
}

