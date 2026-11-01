/* Local J460 decompiler output.
 * VA: 0x005a6b80
 * Entry: 005a6b80
 * Dispatcher: 0x006c2990
 * Types: 299
 * Identities: 299.0.0
 * Evidence: dispatcher=0x006c2990; end=0x005a6fb0; instructions=307
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=299; identities=299.0.0; dispatcher=0x006c2990;
   end=0x005a6fb0; instructions=307 */

void __fastcall AI_005a6b80(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  char cVar3;
  uint uVar4;
  undefined4 *puVar5;
  byte **ppbVar6;
  int iVar7;
  undefined4 uVar8;
  byte *pbVar9;
  uint uVar10;
  uint uVar11;
  bool bVar12;
  undefined4 local_50;
  undefined4 local_4c;
  byte *local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined local_3c;
  undefined4 local_34;
  uint local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined local_24;
  undefined4 local_1c;
  uint local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = -1;
  puStack_c = &LAB_00af3555;
  local_10 = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  if ((0.0 < *(float *)(param_1 + 0x14)) &&
     (puVar5 = *(undefined4 **)(param_1 + 8), puVar5 != *(undefined4 **)(param_1 + 0xc))) {
    do {
      if (puVar5[6] == *(int *)(param_1 + 0x28)) {
        *puVar5 = 0;
      }
      puVar5 = puVar5 + 0xe;
    } while (puVar5 != *(undefined4 **)(param_1 + 0xc));
  }
  local_14 = uVar4;
  if (*(int *)(param_1 + 0xb64) == 0) {
    uVar11 = *(uint *)(param_1 + 0x20) & 3;
    if ((**(char **)(DAT_00c71678 + 0x18300) == '\0') ||
       (*(int *)(DAT_00c71678 + 0x264f8) != *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0)))
    {
      local_48 = (&PTR_s_Head1_00b62838)[uVar11];
      ppbVar2 = *(byte ***)(param_1 + 0x9c);
      if (ppbVar2 == (byte **)0x0) {
LAB_005a6d29:
        cVar3 = FUN_0040aaf0(local_48,1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0xac) = 1;
        }
      }
      else {
        ppbVar6 = ppbVar2;
        pbVar9 = local_48;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar6 = (byte **)*ppbVar2;
        }
        do {
          bVar1 = *(byte *)ppbVar6;
          bVar12 = bVar1 < *pbVar9;
          if (bVar1 != *pbVar9) {
LAB_005a6d10:
            uVar11 = -(uint)bVar12 | 1;
            goto LAB_005a6d15;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar6 + 1);
          bVar12 = bVar1 < pbVar9[1];
          if (bVar1 != pbVar9[1]) goto LAB_005a6d10;
          ppbVar6 = (byte **)((int)ppbVar6 + 2);
          pbVar9 = pbVar9 + 2;
        } while (bVar1 != 0);
        uVar11 = 0;
LAB_005a6d15:
        if ((uVar11 != 0) ||
           ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0xac) == '\0'))))
        goto LAB_005a6d29;
      }
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb;
      *(undefined4 *)(param_1 + 0x188) = 4;
      *(undefined4 *)(param_1 + 0xb64) = 4;
      *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    }
    else {
      cVar3 = FUN_0040a5d0("WalkVert",1);
      if (((cVar3 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
         (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
        *(undefined *)(param_1 + 0x8c) = 0;
      }
      ppbVar2 = *(byte ***)(param_1 + 0x9c);
      local_48 = (&PTR_s_Head1_00b62838)[uVar11];
      if (ppbVar2 == (byte **)0x0) {
LAB_005a6c9c:
        cVar3 = FUN_0040aaf0(local_48,1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0xac) = 1;
        }
      }
      else {
        ppbVar6 = ppbVar2;
        pbVar9 = local_48;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar6 = (byte **)*ppbVar2;
        }
        do {
          bVar1 = *(byte *)ppbVar6;
          bVar12 = bVar1 < *pbVar9;
          if (bVar1 != *pbVar9) {
LAB_005a6c83:
            uVar11 = -(uint)bVar12 | 1;
            goto LAB_005a6c88;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar6 + 1);
          bVar12 = bVar1 < pbVar9[1];
          if (bVar1 != pbVar9[1]) goto LAB_005a6c83;
          ppbVar6 = (byte **)((int)ppbVar6 + 2);
          pbVar9 = pbVar9 + 2;
        } while (bVar1 != 0);
        uVar11 = 0;
LAB_005a6c88:
        if ((uVar11 != 0) ||
           ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0xac) == '\0'))))
        goto LAB_005a6c9c;
      }
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
  }
  else if (*(int *)(param_1 + 0xb64) != 4) goto LAB_005a6f8a;
  local_30 = 0xf;
  local_34 = 8;
  local_44._0_1_ = s_WalkVert_00b1dd18[0];
  local_44._1_1_ = s_WalkVert_00b1dd18[1];
  local_44._2_1_ = s_WalkVert_00b1dd18[2];
  local_44._3_1_ = s_WalkVert_00b1dd18[3];
  local_40._0_1_ = s_WalkVert_00b1dd18[4];
  local_40._1_1_ = s_WalkVert_00b1dd18[5];
  local_40._2_1_ = s_WalkVert_00b1dd18[6];
  local_40._3_1_ = s_WalkVert_00b1dd18[7];
  local_3c = 0;
  local_18 = 0xf;
  local_1c = 8;
  local_2c._0_1_ = s_WalkHori_00b1dd30[0];
  local_2c._1_1_ = s_WalkHori_00b1dd30[1];
  local_2c._2_1_ = s_WalkHori_00b1dd30[2];
  local_2c._3_1_ = s_WalkHori_00b1dd30[3];
  local_28._0_1_ = s_WalkHori_00b1dd30[4];
  local_28._1_1_ = s_WalkHori_00b1dd30[5];
  local_28._2_1_ = s_WalkHori_00b1dd30[6];
  local_28._3_1_ = s_WalkHori_00b1dd30[7];
  local_24 = 0;
  local_8._0_1_ = 1;
  local_8._1_3_ = 0;
  FUN_006c1330(&local_2c,&local_44,0x3dcccccd);
  local_8 = (uint)local_8._1_3_ << 8;
  if (0xf < local_18) {
    uVar10 = local_18 + 1;
    uVar11 = local_2c;
    if (0xfff < uVar10) {
      uVar11 = *(uint *)(local_2c - 4);
      uVar10 = local_18 + 0x24;
      if (0x1f < (local_2c - uVar11) - 4) goto LAB_005a6e57;
    }
    FUN_00aef15c(uVar11,uVar10,uVar4);
  }
  local_8 = -1;
  local_1c = 0;
  local_18 = 0xf;
  local_2c = local_2c & 0xffffff00;
  if (0xf < local_30) {
    uVar11 = local_30 + 1;
    iVar7 = local_44;
    if (0xfff < uVar11) {
      iVar7 = *(int *)(local_44 + -4);
      uVar11 = local_30 + 0x24;
      if (0x1f < (local_44 - iVar7) - 4U) {
LAB_005a6e57:
                    /* WARNING: Subroutine does not return */
        _invalid_parameter_noinfo_noreturn();
      }
    }
    FUN_00aef15c(iVar7,uVar11,uVar4);
  }
  *(undefined4 *)(param_1 + 0xc34) = 0x3f19999a;
  if ((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) {
    uVar8 = FUN_006bec40(&local_50,0);
    FUN_007e33c0(uVar8,0x3f19999a,900,1);
  }
  else {
    iVar7 = FUN_006be840();
    local_50 = *(undefined4 *)(iVar7 + 0x33c);
    local_4c = *(undefined4 *)(iVar7 + 0x340);
    FUN_007e4940(&local_50,0);
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  }
  if ((*(char *)(param_1 + 0xb40) != '\0') && (uVar4 = FUN_006eef60(), uVar4 % 0x1e == 0)) {
    local_48 = DAT_00baa454;
    pbVar9 = DAT_00baa528;
    if ((*(int *)(param_1 + 0xc64) == 0x12) ||
       (pbVar9 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
      local_48 = pbVar9;
    }
    local_4c = 0xa5;
    FUN_00956780();
    FUN_0092dc30(local_4c,0x3f800000,0x78,0,local_48,0);
  }
LAB_005a6f8a:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

