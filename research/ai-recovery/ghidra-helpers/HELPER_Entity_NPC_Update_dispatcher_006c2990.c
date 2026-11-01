/* Local J460 decompiler output.
 * VA: 0x006c2990
 * Entry: 006c2990
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: dispatcher
 * Evidence: Type-10 table dispatch at 0x006c45a4 and cases at 0x006c41dc
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=dispatcher; Type-10 table dispatch at
   0x006c45a4 and cases at 0x006c41dc */

void __fastcall HELPER_Entity_NPC_Update_dispatcher(int *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined *puVar4;
  char cVar5;
  uint uVar6;
  int *piVar7;
  int **ppiVar8;
  int **ppiVar9;
  undefined4 uVar10;
  uint uVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  undefined4 *puVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  char local_114 [4];
  float local_110;
  int **local_108;
  float local_104;
  float local_100;
  float local_fc;
  float local_f8;
  float local_f4;
  float local_f0;
  undefined4 local_ec;
  float local_e8;
  int **local_e4;
  undefined4 local_e0;
  int **local_dc;
  int *local_d8;
  char local_d1;
  undefined local_d0 [12];
  undefined4 local_c4;
  undefined4 local_bc;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_3c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00afa9a0;
  local_1c = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar6;
  puVar4 = &stack0xfffffffc;
  if ((param_1[0x2dd] == 0) && (cVar5 = FUN_00860960(param_1), puVar4 = puStack_20, cVar5 != '\0'))
  goto LAB_006c41be;
  puStack_20 = puVar4;
  iVar3 = iRam00c34e8c;
  iVar2 = iRam00c34e88;
  iVar1 = iRam00c34e84;
  switch(param_1[10]) {
  case 10:
  case 0xd0:
  case 0xfc:
  case 0x101:
  case 0x11c:
  case 0x12e:
  case 0x327:
    AI_00508f40();
    break;
  case 0xb:
  case 0xd2:
  case 0xd3:
  case 0xee:
  case 0x118:
    AI_0050af90();
    break;
  case 0xc:
  case 0xf8:
    AI_00513080();
    break;
  case 0xd:
  case 0xe:
  case 0x12:
  case 0x3d:
  case 0x50:
  case 0xd6:
  case 0xf9:
  case 0x333:
    AI_00506bd0();
    break;
  case 0xf:
  case 0x11a:
  case 0x368:
    AI_0050d370();
    break;
  case 0x10:
    AI_0050bbe0();
    break;
  case 0x11:
    AI_006c2220();
    break;
  case 0x13:
  case 0x59:
  case 0xef:
    AI_0046a0f0();
    break;
  case 0x14:
  case 0x2b:
    AI_0046c0a0();
    break;
  case 0x15:
  case 0x17:
  case 0x1f:
  case 0x37:
  case 0xed:
  case 0xf3:
    AI_0052db50();
    break;
  case 0x16:
  case 0xcd:
  case 0x331:
    AI_0050c370();
    break;
  case 0x18:
  case 0x116:
    AI_0050e4d0();
    break;
  case 0x19:
    AI_0050f280();
    break;
  case 0x1a:
    AI_00510ae0();
    break;
  case 0x1b:
  case 0x35b:
    AI_005111b0();
    break;
  case 0x1c:
    AI_0047a360();
    break;
  case 0x1d:
  case 0x22:
  case 0x36:
  case 0x56:
  case 0xf6:
  case 0x131:
  case 0x348:
    AI_00526470();
    break;
  case 0x1e:
    AI_00517150();
    break;
  case 0x20:
  case 0x117:
  case 0x12d:
    AI_00512110();
    break;
  case 0x21:
    AI_006d18d0();
    break;
  case 0x23:
    AI_00517de0();
    break;
  case 0x24:
    AI_0047c850();
    break;
  case 0x26:
  case 0x103:
    AI_0052ae30();
    break;
  case 0x27:
  case 0x31:
  case 0x344:
    AI_0052c720();
    break;
  case 0x28:
  case 0xda:
  case 0x35e:
    AI_005153b0();
    break;
  case 0x29:
  case 0xfe:
  case 0x11b:
    AI_005135d0();
    break;
  case 0x2a:
  case 0xcb:
  case 0xeb:
  case 0xec:
    AI_00520c60();
    break;
  case 0x2c:
    AI_00521ab0();
    break;
  case 0x2d:
    AI_004d1290();
    break;
  case 0x2e:
    AI_004741f0();
    break;
  case 0x2f:
    AI_00474e00();
    break;
  case 0x30:
    AI_00475110();
    break;
  case 0x32:
    AI_00475a30();
    break;
  case 0x33:
    AI_004760a0();
    break;
  case 0x34:
    AI_00479d80();
    break;
  case 0x35:
    AI_00525650();
    break;
  case 0x38:
    AI_00522430();
    break;
  case 0x39:
  case 0xdf:
    AI_0051c040();
    break;
  case 0x3a:
    AI_005240a0();
    break;
  case 0x3b:
    AI_00524a10();
    break;
  case 0x3c:
    AI_00522ef0();
    break;
  case 0x3e:
    AI_00476860();
    break;
  case 0x3f:
    AI_00456c40();
    break;
  case 0x40:
    AI_00457840();
    break;
  case 0x41:
    AI_00458870();
    break;
  case 0x42:
    AI_00459d20();
    break;
  case 0x43:
    AI_0046e290();
    break;
  case 0x44:
    AI_0047d8a0();
    break;
  case 0x45:
    AI_00467670();
    break;
  case 0x47:
  case 0x48:
  case 0x49:
    AI_00466600();
    break;
  case 0x4a:
  case 0x4b:
  case 0x4c:
    AI_00472c40();
    break;
  case 0x4d:
    AI_0050a6b0();
    break;
  case 0x4e:
    AI_004d48b0();
    break;
  case 0x4f:
    fVar12 = (float)param_1[0xdb] * DAT_00baa3a4;
    uVar6 = param_1[0xb];
    param_1[0xdb] = (int)fVar12;
    if ((uVar6 < 10) && (param_1[0xc] != 0)) {
      param_1[0xdb] = (int)(fVar12 * DAT_00baa3f4);
    }
    if ((*(char *)((int)param_1 + 0x173) != '\0') && ((uVar6 == 0xb || (uVar6 == 1)))) {
      AI_0043ef30();
      local_3c = 0xc;
      if (param_1[0xb] == 1) {
        local_d8 = (int *)0x3c1;
        FUN_00956780();
        FUN_0092dc30(local_d8,0x3f800000,2,0,0x3f800000,0);
        local_c4 = 0xbda3d70a;
        local_bc = 0x40000000;
        local_78 = 0x2000;
        local_74 = 0;
        local_f4 = 8.0;
        local_f0 = 0.0;
        HELPER_Entity_NPC_FireProjectiles(param_1 + 0xcf,&local_f4,8,local_d0);
        local_ec = 0x40800000;
        puVar15 = &local_ec;
        local_e8 = 0.0;
      }
      else {
        local_d8 = (int *)0x3c2;
        FUN_00956780();
        FUN_0092dc30(local_d8,0x3f800000,2,0,0x3f800000,0);
        local_c4 = 0xbd75c28f;
        puVar15 = &local_e0;
        local_e0 = 0x41200000;
        local_dc = (int **)0x0;
      }
      HELPER_Entity_NPC_FireProjectiles(param_1 + 0xcf,puVar15,8,local_d0);
    }
    if ((uint)param_1[0xb] < 10) {
      FUN_00471050();
    }
    else if ((uint)param_1[0xb] < 0x14) {
      FUN_00471cc0();
    }
    else {
      param_1[0x5b] = param_1[0x5b];
      param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x40000;
    }
    break;
  case 0x51:
    AI_0045b830();
    break;
  case 0x52:
  case 0x53:
    AI_0045cd60();
    break;
  case 0x54:
    AI_0047f640();
    break;
  case 0x55:
  case 0x5e:
  case 0xd7:
  case 0xfa:
  case 0x365:
    AI_00529da0();
    break;
  case 0x57:
    AI_0051aaa0();
    break;
  case 0x58:
    AI_0051b570();
    break;
  case 0x5a:
    AI_0051cb30();
    break;
  case 0x5b:
  case 0xe5:
  case 0xe6:
  case 0xfd:
    AI_00518e20();
    break;
  case 0x5c:
switchD_006c2a02_caseD_5c:
    AI_0051f2f0();
    break;
  case 0x5d:
    if (param_1[0x2d9] != 0) goto switchD_006c2a02_caseD_61;
    if (param_1[0xef] == 0) {
      local_d1 = (param_1[0x5a] & 0x20000000U) != 0;
      AI_0041af60(local_114,0x5c,param_1[0xb],0xffffffff,0,0);
      local_14 = 0;
      local_d8 = (int *)0x0;
      local_e4 = DAT_00baaec8;
      local_dc = (int **)0x0;
      local_e8 = local_110;
      if (local_108 != (int **)0x0) {
        do {
          piVar7 = (int *)__RTDynamicCast(*(undefined4 *)((int)local_e8 + (int)local_dc * 4),0,
                                          &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                          &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
          if (((piVar7 != (int *)0x0) && (piVar7[0xf0] == 0)) &&
             (((piVar7[0x5a] & 0x20000000U) != 0) == (bool)local_d1)) {
            fVar12 = ((float)param_1[0xd0] - (float)piVar7[0xd0]) *
                     ((float)param_1[0xd0] - (float)piVar7[0xd0]) +
                     ((float)param_1[0xcf] - (float)piVar7[0xcf]) *
                     ((float)param_1[0xcf] - (float)piVar7[0xcf]);
            FUN_00435a50();
            if ((local_d8 == (int *)0x0) ||
               ((float)local_e4 < (float)(int **)(DAT_00baabc4 - fVar12))) {
              local_e4 = (int **)(DAT_00baabc4 - fVar12);
              local_d8 = piVar7;
            }
          }
          local_dc = (int **)((int)local_dc + 1);
        } while (local_dc < local_108);
        if (local_d8 != (int *)0x0) {
          ppiVar9 = (int **)(local_d8 + 0xf0);
          if (*ppiVar9 != (int *)0x0) {
            local_dc = ppiVar9;
            FUN_004cf210(&local_dc);
          }
          *ppiVar9 = param_1;
          FUN_004cdcf0(ppiVar9);
          ppiVar9 = (int **)(param_1 + 0xef);
          if (param_1[0xef] != 0) {
            local_dc = ppiVar9;
            FUN_004cf210(&local_dc);
          }
          *ppiVar9 = local_d8;
          FUN_004cdcf0(ppiVar9);
          local_e4 = (int **)local_d8[0xef];
          if (local_e4 != (int **)0x0) {
            local_dc = (int **)(param_1 + 0x2fb);
            if (param_1[0x2fb] != 0) {
              FUN_004cf210(&local_dc);
            }
            local_dc = (int **)(param_1 + 0x2fb);
            *local_dc = (int *)local_e4;
            FUN_004cdcf0(local_dc);
          }
        }
      }
      if (param_1[0xef] == 0) {
        FUN_00813520(&local_f4,param_1 + 0xcf,0x42200000,0,0,0);
        if (param_1[0xb] == 1) {
          uVar10 = FUN_006eef60();
          local_104 = local_f4 - DAT_00baa854;
          local_100 = local_f0 - 0.0;
          piVar7 = (int *)HELPER_Entity_SpawnRelay
                                    (0x5c,param_1[0xb],&local_104,&DAT_00c7b640,param_1,0,uVar10);
          local_d8 = piVar7;
          if (local_d1 != '\0') {
            uVar18 = 0;
            uVar17 = 0;
            uVar16 = 0xffffffff;
            uVar10 = FUN_00435c70(0xffffffff,0,0);
            FUN_006ad870(uVar10,uVar16,uVar17,uVar18);
          }
          if (piVar7[0xf0] != 0) {
            local_dc = (int **)(piVar7 + 0xf0);
            FUN_004cf210(&local_dc);
          }
          piVar7[0xf0] = (int)param_1;
          FUN_004cdcf0(piVar7 + 0xf0);
          if (param_1[0xef] != 0) {
            local_dc = (int **)(param_1 + 0xef);
            FUN_004cf210(&local_dc);
          }
          param_1[0xef] = (int)piVar7;
          FUN_004cdcf0(param_1 + 0xef);
          uVar10 = FUN_006eef60();
          local_fc = local_f4 + DAT_00baa854;
          local_f8 = local_f0 + 0.0;
          ppiVar8 = (int **)HELPER_Entity_SpawnRelay
                                      (0x5c,param_1[0xb],&local_fc,&DAT_00c7b640,param_1,1,uVar10);
          if (local_d1 != '\0') {
            uVar18 = 0;
            uVar17 = 0;
            uVar16 = 0xffffffff;
            uVar10 = FUN_00435c70(0xffffffff,0,0);
            FUN_006ad870(uVar10,uVar16,uVar17,uVar18);
          }
          if (ppiVar8[0xf0] != (int *)0x0) {
            local_dc = ppiVar8 + 0xf0;
            FUN_004cf210(&local_dc);
          }
          ppiVar8[0xf0] = local_d8;
          FUN_004cdcf0(ppiVar8 + 0xf0);
          local_e4 = (int **)(local_d8 + 0xef);
          if (*local_e4 != (int *)0x0) {
            local_dc = local_e4;
            FUN_004cf210(&local_dc);
          }
          *local_e4 = (int *)ppiVar8;
          FUN_004cdcf0(local_e4);
          if (param_1[0x2fb] != 0) {
            local_dc = (int **)(param_1 + 0x2fb);
            FUN_004cf210(&local_dc);
          }
          param_1[0x2fb] = (int)ppiVar8;
          FUN_004cdcf0(param_1 + 0x2fb);
          local_e4 = (int **)(local_d8 + 0x2fb);
          if (*local_e4 != (int *)0x0) {
            local_dc = local_e4;
            FUN_004cf210(&local_dc);
          }
          *local_e4 = (int *)ppiVar8;
          FUN_004cdcf0(local_e4);
          if (ppiVar8[0x2fb] != (int *)0x0) {
            local_dc = ppiVar8 + 0x2fb;
            FUN_004cf210(&local_dc);
          }
          ppiVar8[0x2fb] = local_d8;
          FUN_004cdcf0(ppiVar8 + 0x2fb);
          (**(code **)(*local_d8 + 0xc))();
        }
        else {
          uVar10 = FUN_006eef60();
          uVar16 = FUN_00813520(&local_fc,param_1 + 0xcf,0x42200000,0,0,0);
          ppiVar9 = (int **)HELPER_Entity_SpawnRelay
                                      (0x5c,param_1[0xb],uVar16,&DAT_00c7b640,param_1,0,uVar10);
          local_dc = ppiVar9;
          if (local_d1 != '\0') {
            uVar18 = 0;
            uVar17 = 0;
            uVar16 = 0xffffffff;
            uVar10 = FUN_00435c70(0xffffffff,0,0);
            FUN_006ad870(uVar10,uVar16,uVar17,uVar18);
          }
          ppiVar9 = ppiVar9 + 0xf0;
          if (ppiVar9[0xf0] != (int *)0x0) {
            local_e4 = ppiVar9;
            FUN_004cf210(&local_e4);
          }
          *ppiVar9 = param_1;
          FUN_004cdcf0(ppiVar9);
          ppiVar9 = (int **)(param_1 + 0xef);
          if (param_1[0xef] != 0) {
            local_e4 = ppiVar9;
            FUN_004cf210(&local_e4);
          }
          ppiVar8 = local_dc;
          *ppiVar9 = (int *)local_dc;
          FUN_004cdcf0(ppiVar9);
        }
        (*(code *)(*ppiVar8)[3])();
      }
      local_14 = 0xffffffff;
      if (local_114[0] == '\0') {
        local_14 = 1;
        FUN_00a648b0(0,0);
        local_14 = 0xffffffff;
      }
    }
    param_1[0x5a] = param_1[0x5a] | 1;
    param_1[0x5b] = param_1[0x5b] | 8;
    param_1[0x2d9] = 4;
    *(undefined *)(param_1 + 0xec) = 1;
    break;
  case 0x60:
    AI_0050a8a0();
    break;
  case 0x61:
switchD_006c2a02_caseD_61:
    AI_00461fc0();
    break;
  case 0x62:
    if (param_1[0x2d9] != 0) goto switchD_006c2a02_caseD_5c;
    param_1[0x2d9] = 4;
    break;
  case 99:
    AI_0051d300();
    break;
  case 100:
    AI_0046fbe0();
    break;
  case 0x65:
    AI_00468180();
    break;
  case 0x66:
    AI_00463100();
    break;
  case 0xc9:
    AI_00505d00();
    break;
  case 0xca:
    AI_00506320();
    break;
  case 0xcc:
  case 0xf7:
    AI_005321d0();
    break;
  case 0xce:
  case 0xcf:
    AI_00531ab0();
    break;
  case 0xd1:
    AI_00530a80();
    break;
  case 0xd4:
  case 0x11e:
    AI_00532cf0();
    break;
  case 0xd5:
  case 0x11f:
    AI_00533b80();
    break;
  case 0xd8:
    AI_00536d00();
    break;
  case 0xd9:
  case 0x366:
    AI_00534860();
    break;
  case 0xdb:
  case 0x11d:
    AI_005374a0();
    break;
  case 0xdc:
  case 0x367:
    AI_00535280();
    break;
  case 0xdd:
    AI_00531350();
    break;
  case 0xde:
    AI_0053bae0();
    break;
  case 0xe0:
    AI_0053ab40();
    break;
  case 0xe1:
    AI_0053b2f0();
    break;
  case 0xe2:
  case 0xe3:
  case 0x115:
    AI_00538b70();
    break;
  case 0xe4:
  case 0xfb:
    AI_00539b90();
    break;
  case 0xe7:
  case 0x3c4:
    AI_00537e20();
    break;
  case 0xe8:
  case 0xea:
    AI_005381c0();
    break;
  case 0xf0:
  case 0xf1:
  case 0xf2:
  case 0x130:
    AI_0053c0d0();
    break;
  case 0xf4:
  case 0xff:
  case 0x114:
  case 0x121:
    AI_0053e4a0();
    break;
  case 0xf5:
    AI_00571280();
    break;
  case 0x100:
    AI_005400d0();
    break;
  case 0x102:
    AI_00540510();
    break;
  case 0x104:
    AI_00481410();
    break;
  case 0x105:
    AI_004855b0();
    break;
  case 0x106:
    AI_0045ef20();
    break;
  case 0x107:
    AI_0045fc00();
    break;
  case 0x108:
    AI_00460780();
    break;
  case 0x109:
    AI_004878a0();
    break;
  case 0x10a:
    AI_0048ae30();
    break;
  case 0x10b:
    AI_0045d7d0();
    break;
  case 0x10c:
    AI_0045e050();
    break;
  case 0x10d:
  case 0x191:
    AI_00489ca0();
    break;
  case 0x10e:
    AI_00486db0();
    break;
  case 0x10f:
  case 0x110:
    AI_0051e0f0();
    break;
  case 0x111:
    AI_00483710();
    break;
  case 0x112:
  case 0x113:
    if (param_1[0xb] == 0) {
      AI_004c8090();
      if (*(char *)((int)param_1 + 0x173) != '\0') {
        param_1[0x5a] = param_1[0x5a] & 0xfffbffff;
        param_1[0x5b] = param_1[0x5b];
      }
    }
    else {
      FUN_004cca10();
    }
    break;
  case 0x119:
    AI_00540df0();
    break;
  case 0x120:
    AI_00541810();
    break;
  case 0x122:
    AI_00541ce0();
    break;
  case 0x123:
    AI_00492550();
    break;
  case 0x124:
    AI_006d6690();
    break;
  case 0x125:
    AI_005a4820();
    break;
  case 0x126:
    AI_005a5b60();
    break;
  case 0x127:
    AI_0048ee30();
    break;
  case 0x128:
    AI_004bf310();
    break;
  case 0x129:
    AI_004bee40();
    break;
  case 0x12a:
    AI_004be6f0();
    break;
  case 299:
    AI_005a6b80();
    break;
  case 300:
    AI_00542be0();
    break;
  case 0x12f:
    AI_005430d0();
    break;
  case 0x132:
    AI_00543720();
    break;
  case 0x133:
    AI_005442a0();
    break;
  case 0x134:
    AI_00545f70();
    break;
  case 0x135:
    AI_00547330();
    break;
  case 0x136:
    AI_00547b60();
    break;
  case 0x137:
    AI_005492c0();
    break;
  case 0x192:
    AI_0048c3b0();
    break;
  case 0x193:
    AI_0048f110();
    break;
  case 0x194:
    AI_00490680();
    break;
  case 0x195:
    AI_00493200();
    break;
  case 0x196:
    AI_0059edb0();
    break;
  case 0x197:
    AI_004bfd30();
    break;
  case 0x199:
    AI_00495610();
    break;
  case 0x19a:
    AI_00496fb0();
    break;
  case 0x19b:
    REFERENCE_BigHorn_AI();
    break;
  case 0x19c:
    REFERENCE_Delirium_AI();
    break;
  case 0x19d:
    REFERENCE_Matriarch_AI();
    break;
  case 0x322:
    AI_00552d30();
    break;
  case 0x324:
    AI_004f8960();
    break;
  case 0x325:
    AI_004e7ea0();
    break;
  case 0x326:
    AI_0055ad20();
    break;
  case 0x328:
    AI_005586b0();
    break;
  case 0x329:
    AI_004f8df0();
    break;
  case 0x32a:
    AI_0055b740();
    break;
  case 0x32b:
    AI_00560570();
    break;
  case 0x32c:
    AI_0055fb60();
    break;
  case 0x32d:
    AI_0055a010();
    break;
  case 0x32e:
    AI_0055c810();
    break;
  case 0x32f:
    AI_00564f30();
    break;
  case 0x330:
    AI_0055d230();
    break;
  case 0x332:
    AI_004f9ad0();
    break;
  case 0x334:
    AI_004fbd10();
    break;
  case 0x335:
    AI_004fcc20();
    break;
  case 0x336:
    AI_00501f30();
    break;
  case 0x337:
    AI_004fd540();
    break;
  case 0x338:
    AI_004ff620();
    break;
  case 0x339:
    AI_00500990();
    break;
  case 0x33a:
    AI_00500f70();
    break;
  case 0x33b:
    AI_004faad0();
    break;
  case 0x33c:
    AI_005052a0();
    break;
  case 0x33d:
    AI_004fdf80();
    break;
  case 0x33e:
    AI_005041d0();
    break;
  case 0x33f:
    AI_004e0dd0();
    break;
  case 0x340:
    AI_004ec240();
    break;
  case 0x341:
    AI_004e4970();
    break;
  case 0x342:
    AI_004e5170();
    break;
  case 0x343:
    AI_005562b0();
    break;
  case 0x345:
    AI_00565bc0();
    break;
  case 0x346:
    AI_005593c0();
    break;
  case 0x349:
    AI_004ecc10();
    break;
  case 0x34c:
    AI_00503300();
    break;
  case 0x352:
    AI_004e2b40();
    break;
  case 0x353:
    AI_004db6a0();
    break;
  case 0x354:
    AI_004dc490();
    break;
  case 0x355:
    AI_004d77b0();
    break;
  case 0x356:
    AI_004d9000();
    break;
  case 0x357:
    AI_004e38c0();
    break;
  case 0x358:
    AI_004dd7f0();
    break;
  case 0x359:
    AI_005513a0();
    break;
  case 0x35c:
    AI_004dca90();
    break;
  case 0x35d:
    AI_004dea40();
    break;
  case 0x35f:
    AI_004f7e60();
    break;
  case 0x360:
    AI_004f76f0();
    break;
  case 0x361:
    AI_004df3f0();
    break;
  case 0x362:
    AI_005542e0();
    break;
  case 0x363:
    AI_0056ffa0();
    break;
  case 0x364:
    AI_0054ad80();
    break;
  case 0x369:
    AI_00560ca0();
    break;
  case 0x36a:
    AI_00561a20();
    break;
  case 0x36b:
    AI_00562290();
    break;
  case 0x36c:
    AI_00562f00();
    break;
  case 0x36d:
    AI_004e6570();
    break;
  case 0x36e:
    AI_0054d250();
    break;
  case 0x36f:
    AI_00563da0();
    break;
  case 0x370:
    AI_00502980();
    break;
  case 0x371:
    AI_0054eb80();
    break;
  case 0x372:
    AI_00503af0();
    break;
  case 0x373:
    AI_004e8380();
    break;
  case 0x374:
    AI_005505c0();
    break;
  case 0x375:
    AI_004ed840();
    break;
  case 0x376:
    REFERENCE_VisFatty_AI();
    break;
  case 0x377:
    AI_00504a40();
    break;
  case 0x378:
    AI_005522d0();
    break;
  case 0x379:
    AI_004efb90();
    break;
  case 0x37a:
    AI_004f1ec0();
    break;
  case 0x37b:
    AI_004f2c20();
    break;
  case 0x37c:
    AI_004f64e0();
    break;
  case 0x37d:
    AI_004f4730();
    break;
  case 900:
    AI_00579890();
    break;
  case 0x385:
    AI_00450da0();
    break;
  case 0x386:
    AI_00578a70();
    break;
  case 0x387:
    iVar1 = param_1[0xb];
    if (iVar1 == 0) {
      AI_005a7b20();
    }
    else if (iVar1 == 1) {
      FUN_005ab4d0();
    }
    else if (iVar1 == 10) {
      FUN_005ad250();
    }
    else if (iVar1 == 0x14) {
      FUN_005ad8a0();
    }
    break;
  case 0x388:
    AI_00591460();
    break;
  case 0x389:
    AI_004b43c0();
    break;
  case 0x38a:
    AI_004b92e0();
    break;
  case 0x38b:
    AI_004b1ee0();
    break;
  case 0x38c:
    AI_0043f0c0();
    break;
  case 0x38d:
    if (param_1[0xb] == 10) {
      AI_00584140();
    }
    else {
      FUN_00587aa0();
    }
    break;
  case 0x38e:
    if (param_1[0xb] == 2) {
      AI_0049fa10();
    }
    else {
      FUN_0049d130();
    }
    break;
  case 0x38f:
    if (param_1[0xb] == 2) {
      AI_00581730();
    }
    else if (param_1[0xb] == 1) {
      FUN_0057e4a0();
    }
    else {
      FUN_0057bec0();
    }
    break;
  case 0x390:
    switch(param_1[0xb]) {
    case 0:
      AI_00569170();
      break;
    case 10:
      FUN_0056cd60();
      break;
    case 0x14:
      FUN_004da590();
      break;
    case 0x1e:
      FUN_00565e00();
      break;
    case 100:
      FUN_00566810();
    }
    break;
  case 0x391:
    AI_004cf690();
    break;
  case 0x392:
    AI_004a12f0();
    break;
  case 0x393:
    if (param_1[0xb] == 1) {
      AI_0058d8b0();
    }
    else {
      FUN_0058aed0();
    }
    break;
  case 0x394:
    AI_00499de0();
    break;
  case 0x395:
    AI_004a3040();
    break;
  case 0x396:
    AI_0059c830();
    break;
  case 0x397:
    AI_005769b0();
    break;
  case 0x398:
    AI_004bd2a0();
    break;
  case 0x399:
    if (param_1[0xb] == 0) {
      AI_00573030();
    }
    else if (param_1[0x2d9] == 0) {
      uVar11 = FUN_006eef60();
      uVar11 = uVar11 & 7;
      param_1[0xc] = uVar11;
      uVar11 = -(uint)(uVar11 != 0) & uVar11;
      uVar6 = 7;
      if (uVar11 < 7) {
        uVar6 = uVar11;
      }
      HELPER_0040a380_AnimationActionA((&PTR_DAT_00b61c60)[uVar6],0);
      param_1[0x5a] = param_1[0x5a] | 0x10000;
      param_1[0x62] = 2;
      param_1[0x2d9] = 3;
      param_1[0x5b] = param_1[0x5b];
    }
    else if (param_1[0x2d9] == 3) {
      iVar1 = param_1[0xef];
      if ((iVar1 == 0) || (*(char *)(iVar1 + 0x173) != '\0')) {
        uVar10 = FUN_00435c70();
        (**(code **)(*param_1 + 0x24))(uVar10);
      }
      else {
        local_dc = (int **)((float)param_1[0x2ec] * DAT_00baa088);
        ppiVar9 = local_dc;
        FUN_0041d540();
        local_e8 = ((float)ppiVar9 * DAT_00baa924 + *(float *)(iVar1 + 0x33c)) -
                   (float)param_1[0xcf];
        FUN_0041d520();
        local_dc = (int **)(((float)local_dc * DAT_00baa924 + *(float *)(iVar1 + 0x340)) -
                           (float)param_1[0xd0]);
        fVar12 = (float)local_dc * (float)local_dc + local_e8 * local_e8;
        FUN_00435a50();
        if (fVar12 < DAT_00baa120) {
          fVar14 = 0.0;
        }
        else {
          fVar14 = fVar12 * DAT_00baa154;
          if (DAT_00baa630 <= fVar12 * DAT_00baa154) {
            fVar14 = DAT_00baa630;
          }
          fVar14 = fVar14 / fVar12;
        }
        fVar12 = (float)param_1[0xe7];
        param_1[0xd8] = (int)(local_e8 * fVar14 * fVar12 + (float)param_1[0xd8]);
        fVar13 = fVar12 * DAT_00baa784;
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
        param_1[0xd9] = (int)((float)local_dc * fVar14 * fVar12 + (float)param_1[0xd9]);
        fVar13 = fVar13 + (float)param_1[0x2ec];
        FUN_00682740();
        param_1[0x2ec] = (int)fVar13;
      }
    }
    break;
  case 0x39a:
    if (param_1[0x2d9] == 0) {
      if (param_1 + 0x79 != (int *)&DAT_00c34e80) {
        param_1[0x79] = _DAT_00c34e80;
        param_1[0x7a] = iVar1;
        param_1[0x7b] = iVar2;
        param_1[0x7c] = iVar3;
        iVar3 = iRam00c34e9c;
        iVar2 = iRam00c34e98;
        iVar1 = iRam00c34e94;
        param_1[0x7d] = _DAT_00c34e90;
        param_1[0x7e] = iVar1;
        param_1[0x7f] = iVar2;
        param_1[0x80] = iVar3;
        *(undefined8 *)(param_1 + 0x81) = DAT_00c34ea0;
        param_1[0x83] = DAT_00c34ea8;
      }
      param_1[0x2d9] = 3;
    }
    break;
  case 0x3b6:
    iVar1 = param_1[0xb];
    if (iVar1 == 1) {
      FUN_004b0a30();
    }
    else if (iVar1 == 2) {
      FUN_004ae4d0();
    }
    else if (iVar1 == 10) {
      FUN_004b0200();
    }
    else {
      AI_004aafa0();
    }
    break;
  case 0x3b7:
    switch(param_1[0xb]) {
    case 1:
      AI_00596120();
      break;
    case 2:
      FUN_00596c60();
      break;
    case 3:
      FUN_005971e0();
      break;
    default:
      FUN_00592460();
      break;
    case 10:
      FUN_00444cc0();
      break;
    case 0xb:
      FUN_00447180();
      break;
    case 0x14:
      FUN_004477b0();
      break;
    case 0x15:
      FUN_0044a040();
      break;
    case 0x16:
      FUN_0044b6f0();
      break;
    case 0x17:
      FUN_0044aad0();
      break;
    case 0x1e:
      FUN_0044c070();
      break;
    case 0x1f:
      FUN_0044f2b0();
      break;
    case 0x28:
      FUN_00440f00();
      break;
    case 0x29:
      FUN_00443e50();
      break;
    case 0x2a:
      FUN_00444900();
      break;
    case 100:
    case 0x65:
    case 0x66:
    case 0x67:
    case 0x68:
      FUN_00440630();
    }
    break;
  case 0x3c0:
    AI_00551d30();
    break;
  case 0x3c5:
    AI_004ce8a0();
    break;
  case 0x3c6:
    AI_00591cc0();
    break;
  case 0x3c7:
    AI_004bb9b0(uVar6);
  }
  if (param_1[0x2dd] == 0) {
    AI_00860ac0(param_1);
  }
LAB_006c41be:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

