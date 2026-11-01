/* Local J460 decompiler output.
 * VA: 0x00467670
 * Entry: 00467670
 * Dispatcher: 0x006c2990
 * Types: 69
 * Identities: 69.0.0,69.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00468180; instructions=648
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=69; identities=69.0.0,69.1.0; dispatcher=0x006c2990;
   end=0x00468180; instructions=648 */

void __fastcall AI_00467670(int param_1)

{
  bool bVar1;
  undefined *puVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  undefined1 *puVar6;
  undefined4 uVar7;
  float *pfVar8;
  int iVar9;
  undefined4 *extraout_ECX;
  undefined4 extraout_ECX_00;
  int iVar10;
  int iVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  undefined4 uVar15;
  float local_1c4;
  undefined4 local_1c0;
  float local_1bc;
  char local_1b8 [4];
  int local_1b4;
  float local_1b0;
  float local_1ac;
  float local_1a8;
  float local_1a4;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af27b0;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar4;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(float *)(param_1 + 0x334) = DAT_00c7b640;
    fVar12 = DAT_00c7b644;
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 0x80000;
    *(float *)(param_1 + 0x338) = fVar12;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    puStack_20 = &stack0xfffffffc;
    if ((*(int *)(param_1 + 0x2c) == 1) &&
       (puStack_20 = &stack0xfffffffc, *(int *)(param_1 + 0xbc0) == 0)) {
      iVar10 = 0;
      *(undefined4 *)(param_1 + 0xbc0) = 1;
      puStack_20 = &stack0xfffffffc;
      AI_0041af60(local_1b8,*(undefined4 *)(param_1 + 0x28),1,0xffffffff,0,0);
      fVar12 = 0.0;
      local_14 = 0;
      if (local_1ac != 0.0) {
        do {
          iVar5 = __RTDynamicCast(*(undefined4 *)(local_1b4 + (int)fVar12 * 4),0,
                                  &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                  &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0,uVar4);
          if (*(int *)(iVar5 + 0xbc0) == 0) {
            iVar10 = iVar5;
          }
          fVar12 = (float)((int)fVar12 + 1);
        } while ((uint)fVar12 < (uint)local_1ac);
        if (iVar10 != 0) {
          *(undefined4 *)(iVar10 + 0xbc0) = 2;
          *(undefined *)(iVar10 + 0x171) = 0;
          *(undefined *)(iVar10 + 0x148) = 1;
        }
      }
      local_14 = 0xffffffff;
      if (local_1b8[0] == '\0') {
        local_14 = 1;
        FUN_00a648b0(0,0);
      }
    }
    goto switchD_00467969_caseD_4;
  }
  fVar12 = (float)(param_1 + 0x78);
  local_1a8 = fVar12;
  puVar2 = &stack0xfffffffc;
  if (*(int *)(param_1 + 0x7c) != 0) {
    local_1a4 = fVar12;
    cVar3 = FUN_0040add0("Giggle");
    local_1a8 = fVar12;
    if (cVar3 != '\0') {
      local_1a8 = 1.329832e-42;
      FUN_00956780();
      FUN_0092dc30(local_1a8,0x3f800000,2,0,0x3f800000,0);
      local_1a8 = local_1a4;
    }
    puVar2 = puStack_20;
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar3 = FUN_0040add0(&DAT_00b1d560);
      if (cVar3 != '\0') {
        local_1a4 = 1.331234e-42;
        FUN_00956780();
        FUN_0092dc30(local_1a4,0x3f800000,2,0,0x3f800000,0);
      }
      puVar2 = puStack_20;
      if ((*(int *)(param_1 + 0x7c) != 0) &&
         (cVar3 = FUN_0040add0("JumpIn"), puVar2 = puStack_20, cVar3 != '\0')) {
        local_1a4 = 1.332635e-42;
        FUN_00956780();
        FUN_0092dc30(local_1a4,0x3f800000,2,0,0x3f800000,0);
        puVar2 = puStack_20;
      }
    }
  }
  puStack_20 = puVar2;
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) {
    iVar10 = *(int *)(param_1 + 0xb64);
LAB_0046795d:
    switch(iVar10) {
    case 3:
      goto switchD_00467969_caseD_3;
    case 6:
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        FUN_0040a380("TeleportDown",0);
        *(undefined4 *)(param_1 + 0xb64) = 7;
        cVar3 = FUN_00a10630(&DAT_00c7b640);
        if (cVar3 != '\0') {
          *(undefined4 *)(param_1 + 0x33c) = *extraout_ECX;
          *(undefined4 *)(param_1 + 0x340) = extraout_ECX[1];
        }
      }
      else {
        local_1a4 = 7.006492e-45;
        do {
          FUN_0081e9d0(&local_1b0,0x41a00000);
          iVar10 = *(int *)(DAT_00c71678 + 0x18300);
          iVar5 = (int)((local_1b0 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
          iVar11 = (int)((local_1ac - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
          if ((((iVar5 < 0) || (iVar9 = *(int *)(iVar10 + 0xc), iVar9 <= iVar5)) || (iVar11 < 0)) ||
             (*(int *)(iVar10 + 0x10) <= iVar11)) {
            iVar9 = *(int *)(iVar10 + 0xc);
            uVar4 = 0xffffffff;
          }
          else {
            uVar4 = iVar11 * iVar9 + iVar5;
          }
          local_1b0 = (float)((int)uVar4 % iVar9) * DAT_00baa904 + DAT_00baa904;
          local_1bc = (float)((int)uVar4 / iVar9) * DAT_00baa904 + DAT_00baaa00;
          local_1ac = local_1bc;
          local_1a8 = local_1b0;
          iVar10 = FUN_00703950(&local_1b0);
          fVar12 = local_1a8 - *(float *)(iVar10 + 0x33c);
          fVar13 = local_1bc - *(float *)(iVar10 + 0x340);
          fVar14 = fVar13 * fVar13 + fVar12 * fVar12;
          if ((((DAT_00baa87c <= (float)((uint)fVar12 & DAT_00bacb40)) &&
               (DAT_00baa87c <= (float)((uint)fVar13 & DAT_00bacb40))) || (DAT_00baac8c <= fVar14))
             && ((DAT_00baac5c <= fVar14 &&
                 ((0x1bf < uVar4 ||
                  (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x76c + uVar4 * 4) < 500)))))) {
            *(float *)(param_1 + 0x334) = local_1a8;
            *(float *)(param_1 + 0x338) = local_1bc;
          }
          fVar12 = (float)((int)local_1a4 + -1);
          bVar1 = 0 < (int)local_1a4;
          local_1a4 = fVar12;
        } while (((bVar1) &&
                 ((NAN(*(float *)(param_1 + 0x334)) || NAN(DAT_00c7b640)) !=
                  (*(float *)(param_1 + 0x334) == DAT_00c7b640))) &&
                ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) !=
                 (*(float *)(param_1 + 0x338) == DAT_00c7b644)));
      }
      break;
    case 8:
      cVar3 = FUN_0040b030("Shoot");
      if ((cVar3 != '\0') &&
         ((cVar3 = FUN_00417430(0,0x10000000), cVar3 == '\0' ||
          (uVar4 = FUN_006ac7e0(0x19,*(undefined4 *)(param_1 + 0x2c),extraout_ECX_00,0), uVar4 < 3))
         )) {
        FUN_006d6ba0(0x109,0x3f800000,2,0,0x3f800000);
        uVar7 = FUN_006eef60();
        iVar10 = FUN_00428b20(0x19,*(undefined4 *)(param_1 + 0x2c),param_1 + 0x33c,&DAT_00c7b640,
                              param_1,0,uVar7);
        cVar3 = FUN_00417430(0,0x10000000);
        if (cVar3 != '\0') {
          *(undefined4 *)(iVar10 + 0x380) = 0x41200000;
          *(undefined4 *)(iVar10 + 900) = 0x41200000;
        }
      }
      break;
    case 9:
      cVar3 = FUN_0040b030("Shoot");
      if (cVar3 != '\0') {
        FUN_006d6ba0(0x19,0x3f800000,2,0,0x3f800000);
        FUN_006d6ba0(0x3b9,0x3f800000,2,0,0x3f800000);
        uVar7 = FUN_00407170(&DAT_00c7b640);
        FUN_006d7cf0(&DAT_00c7b640,uVar7);
        uVar7 = AI_0043ef30();
        local_1b0 = 12.0;
        local_1ac = 0.0;
        FUN_006cb2e0(param_1 + 0x33c,&local_1b0,8,uVar7);
      }
      break;
    case 10:
      cVar3 = FUN_0040b030("Shoot");
      if (cVar3 == '\0') break;
      iVar10 = *(int *)(param_1 + 0x410);
      if (iVar10 == 0) {
        FUN_006d6ba0(0x19,0x3f800000,2,0,0x3f800000);
        FUN_006d6ba0(0x3b8,0x3f800000,2,0,0x3f800000);
        uVar7 = FUN_00407170(&DAT_00c7b640);
        FUN_006d7cf0(&DAT_00c7b640,uVar7);
        uVar7 = AI_0043ef30();
        local_1b0 = 12.0;
        pfVar8 = &local_1b0;
        local_1ac = 0.0;
LAB_00468130:
        uVar15 = 6;
LAB_00468132:
        FUN_006cb2e0(param_1 + 0x33c,pfVar8,uVar15,uVar7);
      }
      else {
        if (iVar10 == 1) {
          FUN_006d6ba0(0x19,0x3f800000,2,0,0x3f800000);
          FUN_006d6ba0(0x3b8,0x3f800000,2,0,0x3f800000);
          uVar7 = FUN_00407170(&DAT_00c7b640);
          FUN_006d7cf0(&DAT_00c7b640,uVar7);
          uVar7 = AI_0043ef30();
          local_1b0 = 12.0;
          pfVar8 = &local_1b0;
          local_1ac = 0.0;
          uVar15 = 7;
          goto LAB_00468132;
        }
        if (iVar10 == 2) {
          FUN_006d6ba0(0x19,0x3f800000,2,0,0x3f800000);
          FUN_006d6ba0(0x3b8,0x3f800000,2,0,0x3f800000);
          uVar7 = FUN_00407170(&DAT_00c7b640);
          FUN_006d7cf0(&DAT_00c7b640,uVar7);
          uVar7 = AI_0043ef30();
          local_1c4 = 12.0;
          pfVar8 = &local_1c4;
          local_1c0 = 0;
          goto LAB_00468130;
        }
      }
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
    }
    goto switchD_00467969_caseD_4;
  }
  iVar10 = *(int *)(param_1 + 0xb64);
  if (iVar10 == 6) goto LAB_0046795d;
  *(undefined4 *)(param_1 + 0xb64) = 3;
switchD_00467969_caseD_3:
  FUN_007e6300(0);
  puVar6 = &DAT_00b1bc54;
  if (DAT_00baa454 <
      *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
      *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364)) {
    puVar6 = &DAT_00b1dce4;
  }
  FUN_0040a380(puVar6,0);
  cVar3 = FUN_00417430(0,0x10000000);
  if ((cVar3 == '\0') ||
     ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
    iVar10 = FUN_006be840();
    local_1a4 = *(float *)(param_1 + 0x33c) - *(float *)(iVar10 + 0x33c);
    local_1a8 = *(float *)(param_1 + 0x340) - *(float *)(iVar10 + 0x340);
    uVar4 = FUN_006eef60();
    if ((uVar4 % 0x28 == 0) && (local_1a4 * local_1a4 + local_1a8 * local_1a8 < DAT_00baac78)) {
      FUN_0040a380("TeleportUp",0);
      *(float *)(param_1 + 0x334) = DAT_00c7b640;
      *(float *)(param_1 + 0x338) = DAT_00c7b644;
      *(undefined4 *)(param_1 + 0xb64) = 6;
      *(undefined4 *)(param_1 + 0x410) = 0;
      goto switchD_00467969_caseD_4;
    }
    uVar4 = FUN_006eef60();
    if (uVar4 % 0x8c == 0) {
      FUN_0040a380(&DAT_00b1d548,0);
      *(undefined4 *)(param_1 + 0xb64) = 9;
      *(undefined4 *)(param_1 + 0x410) = 0;
      goto switchD_00467969_caseD_4;
    }
    uVar4 = FUN_006eef60();
    if (uVar4 % 100 == 0) {
      FUN_0040a380(&DAT_00b1d53c,0);
      *(undefined4 *)(param_1 + 0xb64) = 10;
      *(undefined4 *)(param_1 + 0x410) = 0;
      goto switchD_00467969_caseD_4;
    }
    uVar4 = FUN_006eef60();
    if (uVar4 % 0x46 == 0) {
      iVar5 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
              *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
      uVar4 = FUN_006eef60();
      iVar10 = 0;
      if (0 < iVar5) {
        iVar10 = iVar5;
      }
      if ((iVar10 < (int)(uVar4 % 3 + 3)) &&
         ((uVar4 = FUN_006eef60(), uVar4 % 3 == 0 || (*(int *)(param_1 + 0x2c) == 0)))) {
        FUN_0040a380(&DAT_00b1d554,0);
        *(undefined4 *)(param_1 + 0xb64) = 8;
      }
    }
  }
  *(undefined4 *)(param_1 + 0x410) = 0;
switchD_00467969_caseD_4:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

