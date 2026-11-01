/* Local J460 decompiler output.
 * VA: 0x00512110
 * Entry: 00512110
 * Dispatcher: 0x006c2990
 * Types: 32,279,301
 * Identities: 279.0.0,301.0.0,32.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00513080; instructions=848
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=32,279,301; identities=279.0.0,301.0.0,32.0.0;
   dispatcher=0x006c2990; end=0x00513080; instructions=848 */

void __fastcall AI_00512110(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  bool bVar3;
  char cVar4;
  int iVar5;
  int *piVar6;
  int iVar7;
  uint uVar8;
  byte **ppbVar9;
  undefined4 uVar10;
  float *pfVar11;
  undefined4 *puVar12;
  byte *pbVar13;
  int iVar14;
  bool bVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  undefined auStack_98 [4];
  float local_94;
  float local_90;
  float local_8c;
  float local_88;
  char local_81;
  float local_80;
  float local_7c;
  float local_78;
  float local_74;
  float local_70;
  undefined local_6c [8];
  undefined4 local_64 [8];
  undefined4 local_44;
  undefined4 uStack_40;
  undefined4 local_3c;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_98;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    uVar21 = _UNK_00bac03c;
    uVar20 = _UNK_00bac038;
    uVar19 = _UNK_00bac034;
    uVar10 = _DAT_00bac030;
    if (*(int *)(param_1 + 0x28) == 0x12d) {
      local_44 = 0;
      uStack_40 = 0x3e48c8ca;
      local_3c = 0;
      if ((undefined4 *)(param_1 + 0x1e4) != local_64) {
        *(undefined8 *)(param_1 + 0x204) = 0x3e48c8ca00000000;
        *(undefined4 *)(param_1 + 0x1e4) = uVar10;
        *(undefined4 *)(param_1 + 0x1e8) = uVar19;
        *(undefined4 *)(param_1 + 0x1ec) = uVar20;
        *(undefined4 *)(param_1 + 0x1f0) = uVar21;
        *(undefined4 *)(param_1 + 0x20c) = 0;
        *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
      }
      *(undefined4 *)(param_1 + 0x184) = 3;
      FUN_00aef12b();
      return;
    }
    goto LAB_0051306c;
  }
  if ((((*(uint *)(param_1 + 0x168) & 0x4000) == 0) && (cVar4 = FUN_006fd350(), cVar4 == '\0')) &&
     ((int)((*(float *)(param_1 + 0x3a0) + 0.0) / DAT_00baad84) !=
      (int)((*(float *)(param_1 + 0x3a4) + 0.0) / DAT_00baad84))) {
    iVar5 = FUN_006eef60();
    piVar6 = (int *)FUN_006b64d0((float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)])
                                 * DAT_00ba9ff4 * _DAT_00baa270 + DAT_00baa198);
    (**(code **)(*piVar6 + 0x3c))(param_1 + 0x1e4,0xffffffff,0xff,0,1);
  }
  iVar5 = *(int *)(DAT_00c71678 + 0x18300);
  iVar14 = (int)((*(float *)(param_1 + 0x33c) - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
  if ((((-1 < iVar14) && (iVar14 < *(int *)(iVar5 + 0xc))) &&
      ((iVar7 = (int)((*(float *)(param_1 + 0x340) - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0),
       -1 < iVar7 &&
       ((iVar7 < *(int *)(iVar5 + 0x10) &&
        (uVar8 = iVar7 * *(int *)(iVar5 + 0xc) + iVar14, uVar8 < 0x1c0)))))) &&
     (*(int *)(iVar5 + 0x76c + uVar8 * 4) < 0x3b7)) {
    *(undefined4 *)(iVar5 + 0x76c + uVar8 * 4) = 900;
  }
  ppbVar2 = *(byte ***)(param_1 + 0x7c);
  if (ppbVar2 == (byte **)0x0) {
LAB_0051234e:
    cVar4 = FUN_0040a5d0(&DAT_00b1dce4,1);
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
  }
  else {
    ppbVar9 = ppbVar2;
    if (&DAT_0000000f < ppbVar2[5]) {
      ppbVar9 = (byte **)*ppbVar2;
    }
    pbVar13 = &DAT_00b1dce4;
    do {
      bVar1 = *(byte *)ppbVar9;
      bVar15 = bVar1 < *pbVar13;
      if (bVar1 != *pbVar13) {
LAB_00512330:
        uVar8 = -(uint)bVar15 | 1;
        goto LAB_00512335;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar9 + 1);
      bVar15 = bVar1 < pbVar13[1];
      if (bVar1 != pbVar13[1]) goto LAB_00512330;
      ppbVar9 = (byte **)((int)ppbVar9 + 2);
      pbVar13 = pbVar13 + 2;
    } while (bVar1 != 0);
    uVar8 = 0;
LAB_00512335:
    if ((uVar8 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
    goto LAB_0051234e;
  }
  FUN_007e6ff0();
  if (*(int *)(param_1 + 0xb64) == 4) {
    if (*(int *)(param_1 + 0x28) == 0x117) {
      uVar21 = 1;
      uVar20 = 900;
      uVar19 = 0x3f000000;
      uVar10 = FUN_006bec40(&local_94,0);
      FUN_007e33c0(uVar10,uVar19,uVar20,uVar21);
      *(bool *)(param_1 + 0x148) = 0.0 < *(float *)(param_1 + 0x360);
    }
    else if (*(int *)(param_1 + 0x28) == 0x12d) {
      fVar18 = *(float *)(param_1 + 0x39c);
      fVar16 = DAT_00baa3a4;
      if ((NAN(fVar18) || NAN(DAT_00baa454)) == (fVar18 == DAT_00baa454)) {
        fVar16 = DAT_00baa3a4 / ((fVar18 + DAT_00baa3a4) - fVar18 * DAT_00baa3a4);
      }
      *(float *)(param_1 + 0x364) = fVar16 * *(float *)(param_1 + 0x364);
      *(float *)(param_1 + 0x360) = fVar16 * *(float *)(param_1 + 0x360);
      piVar6 = (int *)(param_1 + 0x410);
      *piVar6 = *piVar6 + ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
      if ((*piVar6 < 0) || (*(char *)(param_1 + 400) != '\0')) {
        uVar8 = FUN_006eef60();
        *(uint *)(param_1 + 0x410) = uVar8 % 0x5a;
        FUN_006eef60();
        pfVar11 = (float *)FUN_0067f1d0();
        local_8c = DAT_00baa398;
        FUN_0041d540();
        fVar17 = DAT_00baa398;
        FUN_0041d520();
        fVar18 = *pfVar11;
        fVar16 = pfVar11[1];
        *(float *)(param_1 + 0x334) = local_8c * *pfVar11 - fVar17 * pfVar11[1];
        *(float *)(param_1 + 0x338) = fVar17 * fVar18 + local_8c * fVar16;
      }
      if (*(int *)(param_1 + 0xf1c) != -1) {
        pfVar11 = (float *)FUN_006d82d0(&local_94);
        local_8c = *pfVar11;
        *(float *)(param_1 + 0x334) = local_8c;
        local_74 = pfVar11[1];
        *(float *)(param_1 + 0x338) = local_74;
        cVar4 = FUN_00a10630(&DAT_00c7b640);
        if (cVar4 != '\0') {
          local_80 = DAT_00baad48;
          FUN_0041d540();
          fVar18 = DAT_00baad48;
          FUN_0041d520();
          local_94 = local_80 * local_8c - local_74 * fVar18;
          local_90 = local_8c * fVar18 + local_74 * local_80;
          pfVar11 = (float *)FUN_0067f170();
          fVar18 = DAT_00baa398;
          FUN_0041d540();
          local_80 = fVar18;
          fVar18 = DAT_00baa398;
          FUN_0041d520();
          local_94 = fVar18;
          local_7c = pfVar11[1];
          fVar16 = local_74 * local_74 + local_8c * local_8c;
          FUN_00435a50();
          fVar18 = *pfVar11;
          *(float *)(param_1 + 0x334) = (fVar18 * local_80 - local_7c * local_94) * fVar16;
          *(float *)(param_1 + 0x338) = (local_7c * local_80 + fVar18 * local_94) * fVar16;
        }
      }
      fVar18 = *(float *)(param_1 + 0x338) * DAT_00baa2d0;
      *(float *)(param_1 + 0x360) =
           *(float *)(param_1 + 0x334) * DAT_00baa2d0 * *(float *)(param_1 + 0x39c) +
           *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           fVar18 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
      iVar5 = FUN_006ac760();
      if (((iVar5 != 0) && (*(int *)(param_1 + 0xf1c) == -1)) &&
         (cVar4 = FUN_00417430(0x1000a00,0), cVar4 == '\0')) {
        iVar5 = FUN_006be840();
        local_7c = *(float *)(iVar5 + 0x33c);
        local_8c = *(float *)(iVar5 + 0x340);
        iVar5 = FUN_006be840();
        local_94 = *(float *)(iVar5 + 0x360);
        local_80 = *(float *)(iVar5 + 0x364);
        iVar5 = FUN_006eef60();
        fVar18 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa85c;
        local_94 = local_94 * fVar18 + local_7c;
        local_90 = local_80 * fVar18 + local_8c;
        FUN_00812f50(&local_7c,&local_94,0x41a00000,0x41a00000,0x41a00000);
        local_8c = *(float *)(param_1 + 0x33c) - local_7c;
        local_88 = *(float *)(param_1 + 0x340) - local_78;
        local_80 = local_8c;
        local_7c = local_88;
        fVar18 = DAT_00baa398;
        FUN_0041d540();
        local_94 = fVar18;
        fVar18 = DAT_00baa398;
        FUN_0041d520();
        if (((float)((uint)(local_94 * local_80 - local_7c * fVar18) & DAT_00bacb40) < DAT_00baa87c)
           || ((float)((uint)(local_94 * local_7c + local_80 * fVar18) & DAT_00bacb40) <
               DAT_00baa87c)) {
          fVar18 = local_7c * local_7c + local_80 * local_80;
          FUN_00435a50();
          if (fVar18 < DAT_00baaa94) {
            puVar12 = (undefined4 *)FUN_00a10100(local_6c,&DAT_bf800000);
            local_8c = 1.514804e-42;
            *(undefined4 *)(param_1 + 0x334) = *puVar12;
            *(undefined4 *)(param_1 + 0x338) = puVar12[1];
            *(undefined4 *)(param_1 + 0xb64) = 8;
            FUN_00956780();
            uVar10 = 2;
LAB_00512caa:
            FUN_0092dc30(local_8c,0x3f800000,uVar10,0,0x3f800000,0);
          }
        }
      }
    }
    else {
      local_90 = *(float *)(param_1 + 0x41c);
      local_94 = *(float *)(param_1 + 0x418);
      FUN_007e5340(0x3f400000,0);
      fVar17 = DAT_00baa3a4;
      fVar18 = *(float *)(param_1 + 0x39c);
      fVar16 = DAT_00baa3c4;
      if ((NAN(fVar18) || NAN(DAT_00baa454)) == (fVar18 == DAT_00baa454)) {
        fVar16 = DAT_00baa3c4 / ((fVar18 + DAT_00baa3c4) - fVar18 * DAT_00baa3c4);
      }
      bVar15 = NAN(DAT_00baa454);
      bVar3 = fVar18 == DAT_00baa454;
      *(float *)(param_1 + 0x360) = fVar16 * *(float *)(param_1 + 0x360);
      if ((NAN(fVar18) || bVar15) == bVar3) {
        fVar17 = fVar17 / ((fVar18 + fVar17) - fVar18 * fVar17);
      }
      *(float *)(param_1 + 0x364) = fVar17 * *(float *)(param_1 + 0x364);
      if ((*(int *)(param_1 + 0x28) == 0x20) &&
         (cVar4 = FUN_00a10630(param_1 + 0x418), cVar4 != '\0')) {
        local_8c = 1.513402e-42;
        FUN_00956780();
        FUN_0092dc30(local_8c,0x3f800000,0x1e,0,0x3f800000,0);
      }
      cVar4 = FUN_006ac710(7,*(undefined4 *)(param_1 + 0x20));
      if (((cVar4 != '\0') && (*(int *)(param_1 + 0xf1c) == -1)) &&
         (cVar4 = FUN_00417430(0x1000a00,0), cVar4 == '\0')) {
        iVar5 = FUN_006be840();
        local_7c = *(float *)(iVar5 + 0x33c);
        local_8c = *(float *)(iVar5 + 0x340);
        iVar5 = FUN_006be840();
        local_94 = *(float *)(iVar5 + 0x360);
        local_80 = *(float *)(iVar5 + 0x364);
        iVar5 = FUN_006eef60();
        fVar18 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa85c;
        local_94 = local_94 * fVar18 + local_7c;
        local_90 = local_80 * fVar18 + local_8c;
        FUN_00812f50(&local_8c,&local_94,0x41a00000,0x41a00000,0x41a00000);
        iVar5 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
        local_74 = (float)(*(int *)(param_1 + 0x434) % iVar5) * DAT_00baa904 + DAT_00baa904;
        local_70 = (float)(*(int *)(param_1 + 0x434) / iVar5) * DAT_00baa904 + DAT_00baaa00;
        local_80 = local_74 - local_8c;
        local_94 = local_70 - local_88;
        local_7c = (float)((uint)local_80 & DAT_00bacb40);
        if ((local_7c < DAT_00baa87c) || ((float)((uint)local_94 & DAT_00bacb40) < DAT_00baa87c)) {
          fVar18 = local_94 * local_94 + local_80 * local_80;
          FUN_00435a50();
          if ((fVar18 < DAT_00baaa94) &&
             (cVar4 = FUN_007f0df0(&local_74,&local_8c,0,0,0,0,0), cVar4 != '\0')) {
            if (local_7c <= (float)((uint)local_94 & DAT_00bacb40)) {
              *(undefined4 *)(param_1 + 0x334) = 0;
              fVar18 = DAT_00baad50;
              if (local_94 < 0.0) {
                fVar18 = DAT_00baa454;
              }
              *(float *)(param_1 + 0x338) = fVar18;
            }
            else {
              *(undefined4 *)(param_1 + 0x338) = 0;
              if (0.0 <= local_80) {
                *(float *)(param_1 + 0x334) = DAT_00baad50;
              }
              else {
                *(float *)(param_1 + 0x334) = DAT_00baa454;
              }
            }
            *(undefined4 *)(param_1 + 0xb64) = 8;
            if (*(int *)(param_1 + 0x28) == 0x20) {
              local_8c = 1.513402e-42;
              FUN_00956780();
              uVar10 = 0x1e;
              goto LAB_00512caa;
            }
          }
        }
      }
    }
  }
  else if ((((*(char *)(param_1 + 400) == '\0') && ((*(uint *)(param_1 + 0x168) & 0x1000b00) == 0))
           && (*(int *)(param_1 + 0xf38) == 0)) && (*(int *)(param_1 + 0xf1c) == -1)) {
    fVar18 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    *(float *)(param_1 + 0x36c) = fVar18;
    if (NAN(fVar18) == (fVar18 == 0.0)) {
      *(float *)(param_1 + 0x360) =
           (*(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0x334)) / fVar18 +
           *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           (*(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0x338)) / fVar18 +
           *(float *)(param_1 + 0x364);
    }
    if (*(int *)(param_1 + 0x28) != 0x12d) {
      iVar5 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
      if ((float)(*(uint *)(param_1 + 0x360) & DAT_00bacb40) <=
          (float)(*(uint *)(param_1 + 0x364) & DAT_00bacb40)) {
        *(float *)(param_1 + 0x33c) =
             ((float)(*(int *)(param_1 + 0x434) % iVar5) * DAT_00baa904 + DAT_00baa904) *
             DAT_00baa120 + *(float *)(param_1 + 0x33c) * DAT_00baa3e0;
      }
      else {
        *(float *)(param_1 + 0x340) =
             *(float *)(param_1 + 0x340) * DAT_00baa3e0 +
             ((float)(*(int *)(param_1 + 0x434) / iVar5) * DAT_00baa904 + DAT_00baaa00) *
             DAT_00baa120;
      }
    }
  }
  else {
    *(undefined4 *)(param_1 + 0x418) = DAT_00c7b640;
    *(undefined4 *)(param_1 + 0x41c) = DAT_00c7b644;
    *(undefined4 *)(param_1 + 0x420) = DAT_00c7b640;
    *(undefined4 *)(param_1 + 0x424) = DAT_00c7b644;
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x334) = DAT_00c7b640;
    *(undefined4 *)(param_1 + 0x338) = DAT_00c7b644;
  }
  iVar5 = FUN_006d6c20();
  if (iVar5 < 5) {
    iVar5 = FUN_006ac760();
  }
  else {
    iVar5 = FUN_006ac760();
  }
  local_81 = 0 < iVar5;
  iVar5 = FUN_006ac760();
  if (((*(uint *)(param_1 + 0x168) & 0x1000000) == 0) &&
     ((local_81 != '\0' ||
      ((DAT_00baa804 <
        *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
        *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364) && (0 < iVar5)))))) {
    uVar10 = FUN_006eef60();
    uVar10 = FUN_006fe410(1000,(*(int *)(param_1 + 0x28) == 0x12d) + '\x16',param_1 + 0x33c,
                          &DAT_00c7b640,param_1,0,uVar10,0);
    piVar6 = (int *)__RTDynamicCast(uVar10,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                    &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,0);
    piVar6[0x39] = 0x3f9d70a4;
    piVar6[0x3a] = 0x3f9d70a4;
    piVar6[0x11d] = 0;
    (**(code **)(*piVar6 + 0xc))();
  }
  if (((*(char *)(param_1 + 0x173) != '\0') && (*(int *)(param_1 + 0x28) == 0x12d)) &&
     ((*(uint *)(param_1 + 0x168) & 0x1000000) == 0)) {
    uVar10 = FUN_00407170();
    FUN_00700060(param_1 + 0x33c,0x42200000,DAT_00c34bd0,DAT_00c34bd4,DAT_00c34bd8,DAT_00c34bdc,
                 uVar10,param_1,0x3f800000,1,4,0,0);
  }
LAB_0051306c:
  FUN_00aef12b();
  return;
}

