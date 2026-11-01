/* Local J460 decompiler output.
 * VA: 0x004a8680
 * Entry: 004a8680
 * Dispatcher: 0x006c2990
 * Types: 412
 * Identities: delirium.state_setup
 * Evidence: Called at 0x004a6f99
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=412; identities=delirium.state_setup; Called at
   0x004a6f99 */

void __fastcall HELPER_Delirium_StateSetupB(int *param_1)

{
  byte bVar1;
  int iVar2;
  int *piVar3;
  byte **ppbVar4;
  char cVar5;
  uint uVar6;
  int iVar7;
  undefined4 uVar8;
  int *piVar9;
  byte **ppbVar10;
  uint uVar11;
  char *pcVar12;
  bool bVar13;
  float fVar14;
  int **ppiVar15;
  int in_XMM1_Da;
  float local_30;
  float local_2c;
  float local_28;
  int *local_24;
  int local_20;
  int *local_1c;
  int local_18;
  int **local_14;
  int **local_10;
  float local_c;
  float local_8;
  
  local_1c = param_1;
  if (param_1[10] == 0x13) {
    local_20 = in_XMM1_Da;
    uVar6 = FUN_006eef60();
    local_18 = uVar6 % 6 + 4;
    iVar7 = FUN_006be840();
    local_8 = (float)param_1[0xcf] - *(float *)(iVar7 + 0x33c);
    local_c = (float)param_1[0xd0] - *(float *)(iVar7 + 0x340);
    fVar14 = local_8 * local_8 + local_c * local_c;
    FUN_00435a50();
    if (DAT_00ba9fe4 < fVar14) {
      local_8 = local_8 * (DAT_00baa454 / fVar14);
      local_c = local_c * (DAT_00baa454 / fVar14);
    }
    uVar6 = FUN_006eef60();
    ppiVar15 = (int **)((float)(uVar6 % 0x5a - 0x2d) * DAT_00baa088);
    local_14 = ppiVar15;
    FUN_0041d540();
    local_10 = ppiVar15;
    ppiVar15 = local_14;
    FUN_0041d520();
    local_14 = (int **)0x1;
    local_28 = local_8 * (float)local_10 - local_c * (float)ppiVar15;
    local_8 = local_8 * (float)ppiVar15 + local_c * (float)local_10;
    piVar9 = param_1;
    if (0 < local_18) {
      do {
        iVar7 = (int)local_14;
        local_2c = (float)(int)local_14 * DAT_00baa87c * local_8 + (float)piVar9[0xd0];
        local_30 = (float)(int)local_14 * DAT_00baa87c * local_28 + (float)piVar9[0xcf];
        uVar6 = FUN_006eef60();
        local_10 = (int **)((float)((double)(uVar6 % 5000) + DAT_00bacb00) / DAT_00baabc4);
        uVar6 = FUN_006eef60();
        local_30 = (float)((double)(uVar6 % 5000) + DAT_00bacb00) / DAT_00baabc4 + local_30;
        local_2c = local_2c + (float)local_10;
        uVar8 = FUN_006eef60();
        piVar9 = (int *)HELPER_Entity_SpawnRelay
                                  (piVar9[10],piVar9[0xb],&local_30,&DAT_00c7b640,piVar9,0,uVar8);
        if (iVar7 == 1) {
          piVar9[0xe0] = local_20;
          piVar9[0xe1] = local_20;
          *(undefined *)(piVar9 + 0xec) = 1;
        }
        ppiVar15 = (int **)(piVar9 + 0xef);
        if (piVar9[0xef] != 0) {
          local_10 = ppiVar15;
          FUN_004cf210(&local_10);
        }
        *ppiVar15 = param_1;
        if (param_1 != (int *)0x0) {
          FUN_004cdcf0(ppiVar15);
        }
        ppiVar15 = (int **)(param_1 + 0xf0);
        if (param_1[0xf0] != 0) {
          local_10 = ppiVar15;
          FUN_004cf210(&local_10);
        }
        *ppiVar15 = piVar9;
        FUN_004cdcf0(ppiVar15);
        uVar11 = piVar9[0x5a] & 0xfffffffbU | 0x80040000;
        piVar9[0x5b] = piVar9[0x5b];
        piVar9[0x5a] = uVar11;
        piVar9[0x2d9] = 4;
        uVar6 = piVar9[0x304];
        if (((uVar6 & 1) == 0) && ((uint)piVar9[0x303] <= piVar9[0x305] + 2U >> 1)) {
          FUN_00499410(uVar11);
          uVar6 = piVar9[0x304];
        }
        uVar11 = piVar9[0x303] * 2;
        uVar6 = uVar11 - 1 & uVar6;
        piVar9[0x304] = uVar6;
        if (uVar6 == 0) {
          uVar6 = uVar11;
        }
        uVar6 = uVar6 - 1;
        local_c = (float)(piVar9[0x303] - 1U & uVar6 >> 1);
        local_10 = (int **)piVar9[0x302];
        local_24 = (int *)uVar6;
        if (local_10[(int)local_c] == (int *)0x0) {
          uVar8 = FUN_00a0f4c0(0x10);
          *(undefined4 *)(piVar9[0x302] + (int)local_c * 4) = uVar8;
          local_10 = (int **)piVar9[0x302];
        }
        iVar7 = piVar9[0xd0];
        iVar2 = piVar9[0xcf];
        piVar3 = local_10[(int)local_c];
        piVar3[(uVar6 & 1) * 2] = iVar2;
        piVar3[(uVar6 & 1) * 2 + 1] = iVar7;
        piVar9[0x305] = piVar9[0x305] + 1;
        piVar9[0x304] = (int)local_24;
        uVar6 = piVar9[0x309];
        if (((uVar6 & 1) == 0) && ((uint)piVar9[0x308] <= piVar9[0x30a] + 2U >> 1)) {
          FUN_00499410(iVar2);
          uVar6 = piVar9[0x309];
        }
        uVar11 = piVar9[0x308] * 2;
        uVar6 = uVar11 - 1 & uVar6;
        piVar9[0x309] = uVar6;
        if (uVar6 == 0) {
          uVar6 = uVar11;
        }
        uVar6 = uVar6 - 1;
        local_10 = (int **)(piVar9[0x308] - 1U & uVar6 >> 1);
        local_c = (float)piVar9[0x307];
        local_24 = (int *)uVar6;
        if (*(int *)((int)local_c + (int)local_10 * 4) == 0) {
          uVar8 = FUN_00a0f4c0(0x10);
          *(undefined4 *)(piVar9[0x307] + (int)local_10 * 4) = uVar8;
          local_c = (float)piVar9[0x307];
        }
        iVar7 = piVar9[0xd8];
        iVar2 = *(int *)((int)local_c + (int)local_10 * 4);
        *(int *)(iVar2 + 4 + (uVar6 & 1) * 8) = piVar9[0xd9];
        *(int *)(iVar2 + (uVar6 & 1) * 8) = iVar7;
        piVar9[0x30a] = piVar9[0x30a] + 1;
        piVar9[0x309] = (int)local_24;
        piVar9[799] = local_1c[799];
        HELPER_Delirium_ApplyFormAndState(local_1c[0xb],1);
        ppbVar4 = (byte **)piVar9[0x1f];
        local_24 = piVar9;
        if (ppbVar4 == (byte **)0x0) {
LAB_004a8acc:
          cVar5 = HELPER_0040a5d0_AnimationPredicateC("WalkBodyHori",1);
          if (cVar5 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(piVar9 + 0x23) = 1;
          }
        }
        else {
          ppbVar10 = ppbVar4;
          if (&DAT_0000000f < ppbVar4[5]) {
            ppbVar10 = (byte **)*ppbVar4;
          }
          pcVar12 = "WalkBodyHori";
          do {
            bVar1 = *(byte *)ppbVar10;
            bVar13 = bVar1 < (byte)*pcVar12;
            if (bVar1 != *pcVar12) {
LAB_004a8ab6:
              uVar6 = -(uint)bVar13 | 1;
              goto LAB_004a8abb;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar10 + 1);
            bVar13 = bVar1 < ((byte *)pcVar12)[1];
            if (bVar1 != ((byte *)pcVar12)[1]) goto LAB_004a8ab6;
            ppbVar10 = (byte **)((int)ppbVar10 + 2);
            pcVar12 = (char *)((byte *)pcVar12 + 2);
          } while (bVar1 != 0);
          uVar6 = 0;
LAB_004a8abb:
          if ((uVar6 != 0) ||
             ((*(byte *)(ppbVar4 + 0xd) != 0 && (*(char *)(piVar9 + 0x23) == '\0'))))
          goto LAB_004a8acc;
        }
        (**(code **)(*piVar9 + 0xc))();
        local_14 = (int **)((int)local_14 + 1);
        param_1 = local_24;
        piVar9 = local_1c;
        if (local_18 < (int)local_14) {
          return;
        }
      } while( true );
    }
  }
  else if (param_1[10] == 0x10a) {
    uVar8 = FUN_006eef60();
    HELPER_Entity_SpawnRelay(param_1[10],1,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar8);
    uVar8 = FUN_006eef60();
    HELPER_Entity_SpawnRelay(param_1[10],2,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar8);
  }
  return;
}

