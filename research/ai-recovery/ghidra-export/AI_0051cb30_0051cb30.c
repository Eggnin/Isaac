/* Local J460 decompiler output.
 * VA: 0x0051cb30
 * Entry: 0051cb30
 * Dispatcher: 0x006c2990
 * Types: 90
 * Identities: 90.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0051cc68; instructions=77
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=90; identities=90.0.0; dispatcher=0x006c2990;
   end=0x0051cc68; instructions=77 */

void __fastcall AI_0051cb30(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  code *pcVar3;
  undefined4 uVar4;
  char cVar5;
  undefined4 uVar6;
  int iVar7;
  byte **ppbVar8;
  float *pfVar9;
  float *pfVar10;
  int *piVar11;
  uint uVar12;
  bool bVar13;
  float fVar14;
  float fVar15;
  undefined4 uVar16;
  TypeDescriptor *pTVar17;
  TypeDescriptor *pTVar18;
  undefined4 uVar19;
  undefined4 local_104 [8];
  undefined4 local_e4;
  undefined4 uStack_e0;
  undefined4 local_dc;
  undefined8 local_d4;
  float local_cc;
  float local_c8;
  int *local_c4;
  undefined local_c0 [4];
  float local_bc;
  float local_b8;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    uVar6 = FUN_006eef60();
    uVar19 = 0;
    pTVar18 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
    pTVar17 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar16 = 0;
    uVar6 = FUN_00428b20(0x60,0,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar6);
    iVar7 = __RTDynamicCast(uVar6,uVar16,pTVar17,pTVar18,uVar19);
    piVar11 = (int *)(iVar7 + 0x3bc);
    if (*(int *)(iVar7 + 0x3bc) != 0) {
      local_c4 = piVar11;
      FUN_004cf210(&local_c4);
    }
    *piVar11 = param_1;
    FUN_004cdcf0(piVar11);
    uVar4 = _UNK_00bac29c;
    uVar19 = _UNK_00bac298;
    uVar16 = _UNK_00bac294;
    uVar6 = _DAT_00bac290;
    local_e4 = 0;
    uStack_e0 = 0;
    local_dc = 0;
    if ((undefined4 *)(param_1 + 0x1e4) != local_104) {
      *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
      *(undefined8 *)(param_1 + 0x204) = 0;
      *(undefined4 *)(param_1 + 0x1e4) = uVar6;
      *(undefined4 *)(param_1 + 0x1e8) = uVar16;
      *(undefined4 *)(param_1 + 0x1ec) = uVar19;
      *(undefined4 *)(param_1 + 0x1f0) = uVar4;
      *(undefined4 *)(param_1 + 0x20c) = 0;
    }
    uVar12 = *(uint *)(param_1 + 0x3ec);
    local_d4 = DAT_00b1f66c;
    local_c4 = DAT_00b1f674;
    if (uVar12 == 0) {
      FUN_00a112c0(0x10,"RNG Seed is zero!\n");
      pcVar3 = (code *)swi(3);
      (*pcVar3)();
      return;
    }
    uVar12 = uVar12 >> ((byte)DAT_00b1f66c & 0x1f) ^ uVar12;
    uVar12 = uVar12 << ((byte)((ulonglong)DAT_00b1f66c >> 0x20) & 0x1f) ^ uVar12;
    uVar12 = (uVar12 >> ((byte)DAT_00b1f674 & 0x1f) ^ uVar12) & 3;
    *(uint *)(param_1 + 0xbc0) = uVar12;
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    local_c4 = (int *)(&PTR_s_Head01_00b61570)[uVar12];
    if (ppbVar2 != (byte **)0x0) {
      ppbVar8 = ppbVar2;
      piVar11 = local_c4;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar8 = (byte **)*ppbVar2;
      }
      do {
        bVar1 = *(byte *)ppbVar8;
        bVar13 = bVar1 < *(byte *)piVar11;
        if (bVar1 != *(byte *)piVar11) {
LAB_0051ccd7:
          uVar12 = -(uint)bVar13 | 1;
          goto LAB_0051ccdc;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar8 + 1);
        bVar13 = bVar1 < *(byte *)((int)piVar11 + 1);
        if (bVar1 != *(byte *)((int)piVar11 + 1)) goto LAB_0051ccd7;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        piVar11 = (int *)((int)piVar11 + 2);
      } while (bVar1 != 0);
      uVar12 = 0;
LAB_0051ccdc:
      if ((uVar12 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
      goto LAB_0051cd14;
    }
    cVar5 = FUN_0040a5d0(local_c4,1);
    if (cVar5 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
  }
LAB_0051cd14:
  pfVar10 = (float *)(param_1 + 0x33c);
  pfVar9 = (float *)FUN_00812f50((int)&local_d4 + 4,pfVar10,0x41f00000,0,0x41200000);
  *pfVar10 = *pfVar9;
  *(float *)(param_1 + 0x340) = pfVar9[1];
  uVar12 = FUN_006eef60();
  if (uVar12 % 10 == 0) {
    iVar7 = FUN_006eef60();
    FUN_006b64d0((float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa2d0 + DAT_00baa280);
  }
  if (*(int *)(param_1 + 0xb64) != 8) {
    pfVar9 = (float *)FUN_006bec40((int)&local_d4 + 4,0x41200000);
    local_c8 = *pfVar9 - *pfVar10;
    local_c4 = (int *)(pfVar9[1] - *(float *)(param_1 + 0x340));
    if (*(int *)(param_1 + 0xf1c) != -1) {
      pfVar10 = (float *)FUN_006d82d0((int)&local_d4 + 4);
      local_c8 = *pfVar10 * DAT_00baa9d0;
      local_c4 = (int *)(pfVar10[1] * DAT_00baa9d0);
    }
    if (((*(int *)(param_1 + 0xba0) < 1) ||
        (iVar7 = *(int *)(param_1 + 0xba0) +
                 ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)),
        *(int *)(param_1 + 0xba0) = iVar7, iVar7 < 1)) && (cVar5 = FUN_006cae60(0,7), cVar5 != '\0')
       ) {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        *(float *)(param_1 + 0xf20) = DAT_00c7b640;
        local_cc = DAT_00c7b644;
      }
      else {
        FUN_006d85a0((int)&local_d4 + 4);
        *(float *)(param_1 + 0xf20) = local_d4._4_4_;
      }
      *(float *)(param_1 + 0xf24) = local_cc;
      cVar5 = FUN_0040a5d0((&PTR_s_AttackHead01_00b61580)[*(int *)(param_1 + 0xbc0)],1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      fVar15 = local_c8;
      if (*(int *)(param_1 + 0xf1c) != -1) {
        fVar15 = *(float *)(param_1 + 0xf20);
      }
      *(bool *)(param_1 + 0x148) = 0.0 < fVar15;
      uVar12 = FUN_006eef60();
      *(undefined4 *)(param_1 + 0xb64) = 8;
      *(uint *)(param_1 + 0xba0) = ((uVar12 & 1) + 6) * 7;
    }
    local_cc = *(float *)(param_1 + 0x36c);
    if (DAT_00baa06c < (float)((uint)local_cc & DAT_00bacb40)) {
      fVar15 = local_c8 * local_c8 + (float)local_c4 * (float)local_c4;
      FUN_00435a50();
      if ((float)((uint)fVar15 & DAT_00bacb40) <= DAT_00baa120) {
        fVar15 = 0.0;
      }
      else {
        fVar15 = DAT_00baa140 / fVar15;
      }
      if (NAN(local_cc) == (local_cc == 0.0)) {
        *(float *)(param_1 + 0x360) =
             (local_c8 * fVar15 * *(float *)(param_1 + 0x39c)) / local_cc +
             *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             ((float)local_c4 * fVar15 * *(float *)(param_1 + 0x39c)) / local_cc +
             *(float *)(param_1 + 0x364);
      }
    }
    goto LAB_0051d2c9;
  }
  if (*(int *)(param_1 + 0xf1c) == -1) {
    *(float *)(param_1 + 0xf20) = DAT_00c7b640;
    fVar15 = DAT_00c7b644;
LAB_0051ce35:
    *(float *)(param_1 + 0xf24) = fVar15;
  }
  else {
    FUN_006d85a0((int)&local_d4 + 4);
    if (((NAN(local_d4._4_4_) || NAN(DAT_00c7b640)) == (local_d4._4_4_ == DAT_00c7b640)) ||
       ((NAN(local_cc) || NAN(DAT_00c7b644)) == (local_cc == DAT_00c7b644))) {
      *(float *)(param_1 + 0xf20) = local_d4._4_4_;
      fVar15 = local_cc;
      goto LAB_0051ce35;
    }
  }
  if (*(int *)(param_1 + 0x7c) != 0) {
    cVar5 = FUN_0040add0("Shoot");
    if (cVar5 != '\0') {
      local_c8 = DAT_00baa454;
      fVar15 = DAT_00baa528;
      if ((*(int *)(param_1 + 0xc64) == 0x12) ||
         (fVar15 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
        local_c8 = fVar15;
      }
      local_c4 = (int *)0xb2;
      FUN_00956780();
      FUN_0092dc30(local_c4,0x3f800000,2,0,local_c8,0);
      AI_0043ef30();
      local_bc = local_bc - DAT_00baa87c;
      local_b8 = local_b8 + DAT_00baa630;
      iVar7 = FUN_006be840();
      local_c8 = *(float *)(iVar7 + 0x33c) - *(float *)(param_1 + 0x33c);
      local_c4 = (int *)(*(float *)(iVar7 + 0x340) - *(float *)(param_1 + 0x340));
      if (*(int *)(param_1 + 0xf1c) != -1) {
        local_c8 = *(float *)(param_1 + 0xf20) * DAT_00baa9d0;
        local_c4 = (int *)(*(float *)(param_1 + 0xf24) * DAT_00baa9d0);
      }
      fVar14 = local_c8 * local_c8 + (float)local_c4 * (float)local_c4;
      FUN_00435a50();
      fVar15 = local_c8;
      piVar11 = local_c4;
      if (0.0 < fVar14) {
        fVar15 = local_c8 * (DAT_00baa454 / fVar14);
        piVar11 = (int *)((float)local_c4 * (DAT_00baa454 / fVar14));
      }
      local_cc = (float)piVar11 * DAT_00baa7b8;
      local_d4 = CONCAT44(fVar15 * DAT_00baa7b8,(undefined4)local_d4);
      FUN_006cb2e0((float *)(param_1 + 0x33c),(int)&local_d4 + 4,2,local_c0);
    }
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_0051d2c9;
  }
  cVar5 = FUN_0040a5d0((&PTR_s_Head01_00b61570)[*(int *)(param_1 + 0xbc0)],1);
  if (cVar5 != '\0') {
    FUN_0040a1b0();
    *(undefined *)(param_1 + 0x8c) = 1;
  }
  *(undefined4 *)(param_1 + 0xb64) = 4;
LAB_0051d2c9:
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa400;
  FUN_00aef12b();
  return;
}

