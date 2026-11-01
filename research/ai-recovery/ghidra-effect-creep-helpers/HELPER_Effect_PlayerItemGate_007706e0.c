/* Local J460 decompiler output.
 * VA: 0x007706e0
 * Entry: 007706e0
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.*
 * Evidence: Effect Update 0x5EB8CC..0x5EBFA6 call site
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.*; Effect Update
   0x5EB8CC..0x5EBFA6 call site */

void __thiscall HELPER_Effect_PlayerItemGate(int param_1_00,int param_1,char param_2)

{
  byte bVar1;
  char cVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 uVar7;
  bool bVar8;
  undefined8 uVar9;
  int local_28;
  int local_24;
  int local_20;
  int *local_1c;
  uint local_18;
  undefined8 local_14;
  undefined4 local_c;
  uint local_8;
  
  local_8 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  local_28 = param_1;
  iVar3 = FUN_0072fd10(param_1);
  do {
    local_20 = iVar3;
    if (iVar3 == 0) {
LAB_0077075a:
      FUN_00aef12b();
      return;
    }
    if ((*(int *)(param_1_00 + 0x2c) != 1) ||
       (((iVar4 = *(int *)(param_1_00 + 0x3bc), iVar4 == 0 || (*(int *)(iVar4 + 0x28) != 1)) &&
        (iVar4 = FUN_00417870(0), iVar4 == 0)))) {
      if (((*(char *)(param_1_00 + 0x20a9) != '\0') && (*(int *)(DAT_00c71678 + 0x26614) < 2)) &&
         ((*(uint *)(iVar3 + 0xb8) & 0x8000) == 0)) goto LAB_0077075a;
      if (((*(int *)(param_1_00 + 0x2ef4) != 0) && (param_1 == *(int *)(param_1_00 + 0x2ef4))) &&
         (*(char *)(param_1_00 + 0x2ef0) != '\0')) goto LAB_00770c29;
      if (param_1 < 0) {
        FUN_009e04b0(param_1);
        FUN_00aef12b();
        return;
      }
      if (param_2 != '\0') goto LAB_00770c3e;
      if (((param_1 == 0x147) || (param_1 == 0x148)) &&
         (cVar2 = HELPER_Effect_PlayerGateD(0x15,0), cVar2 != '\0')) {
        local_1c = (int *)(*(uint *)(DAT_00c71678 + 0x264f8) & 0x80000003);
        if ((int)local_1c < 0) {
          local_1c = (int *)(((int)local_1c - 1U | 0xfffffffc) + 1);
        }
        iVar4 = FUN_007cb6e0(0x15);
        if (iVar4 < 2) {
          if (local_1c == (int *)0x0) {
            bVar8 = param_1 == 0x147;
            goto LAB_00770856;
          }
          if (local_1c == (int *)0x1) goto LAB_00770850;
        }
        else if ((local_1c == (int *)0x0) || (local_1c == (int *)0x1)) {
          if (param_1 == 0x147) goto LAB_00770c29;
LAB_00770850:
          bVar8 = param_1 == 0x148;
LAB_00770856:
          if (bVar8) goto LAB_00770c29;
        }
      }
      if (param_1 == 0x139) {
        if ((*(int *)(param_1_00 + 0x13c0) == 10) ||
           ((cVar2 = FUN_00930680(0x70), cVar2 != '\0' && (*(int *)(param_1_00 + 0x13c0) != 0x1f))))
        {
          local_1c = (int *)(DAT_00c7169c + 0x4b3d8);
          local_24 = DAT_00c7169c + 0x14;
          iVar4 = local_24;
          if (*local_1c != *(int *)(DAT_00c7169c + 0x4b3dc)) {
            uVar9 = FUN_00a23920();
            local_c = (undefined4)((ulonglong)uVar9 >> 0x20);
            local_14 = CONCAT44((int)uVar9,(undefined4)local_14);
            iVar5 = FUN_0090c300((int)&local_14 + 4);
            iVar4 = local_24;
            if (iVar5 != 0) {
              iVar4 = iVar5;
            }
          }
          if (*(char *)(iVar4 + 0x132) != '\0') goto LAB_00770c29;
          if ((*(int *)(DAT_00c7169c + 8) == 2) && (DAT_00c71678 != 0)) {
            if (*(int *)(DAT_00c71678 + 0x26630) != 0) goto LAB_00770c29;
            bVar1 = *(byte *)(DAT_00c71678 + 0x26589);
LAB_00770a3e:
            if (bVar1 != 0) goto LAB_00770c29;
          }
        }
      }
      else if (param_1 == 9) {
        cVar2 = HELPER_Effect_PlayerGateD(0x5d,0);
        if (cVar2 != '\0') {
          local_18 = *(uint *)(*(int *)(DAT_00c71678 + 0x18300) + 4);
          if (local_18 != 0) {
            local_18 = *(uint *)(local_18 + 0x58);
          }
          local_14 = DAT_00b1f4f8;
          local_c = DAT_00b1f500;
          uVar6 = FUN_007e9020(100);
          if (uVar6 < 0x21) goto LAB_00770c29;
          if (1 < *(int *)(DAT_00c71678 + 0x26614)) {
            FUN_00aef12b();
            return;
          }
        }
      }
      else if (param_1 == 0x3b) {
        cVar2 = FUN_007da770();
        if (cVar2 != '\0') {
          FUN_00aef12b();
          return;
        }
      }
      else if (param_1 == 0x131) {
        if ((*(byte *)(param_1_00 + 0x2028) & 0x10) != 0) {
          FUN_00aef12b();
          return;
        }
      }
      else if (param_1 == 0x101) {
        if ((*(byte *)(param_1_00 + 0x2028) & 8) != 0) {
          FUN_00aef12b();
          return;
        }
      }
      else if (param_1 == 0xe7) {
        if ((*(byte *)(param_1_00 + 0x2028) & 0x20) != 0) {
          FUN_00aef12b();
          return;
        }
      }
      else if (param_1 == 0xb6) {
        bVar1 = *(byte *)(param_1_00 + 0x2028) & 0x40;
        goto LAB_00770a3e;
      }
      iVar4 = FUN_007db8d0();
      if (param_1 == 0x14a) {
        if (iVar4 == 1) {
          FUN_00aef12b();
          return;
        }
      }
      else if ((param_1 == 0x99) && (iVar4 == 2)) goto LAB_00770c29;
      iVar4 = FUN_007db860();
      uVar7 = extraout_ECX;
      if (8 < iVar4) {
        iVar3 = FUN_00436140();
        iVar4 = FUN_007db860();
        local_14 = DAT_00b1f528;
        local_18 = 1;
        if (1 < (uint)(iVar4 + iVar3)) {
          local_18 = iVar4 + iVar3;
        }
        local_c = DAT_00b1f530;
        iVar4 = FUN_007e9020(6);
        uVar7 = extraout_ECX_00;
        iVar3 = local_20;
        if (param_1 == *(int *)(&DAT_00b6bcd0 + iVar4 * 4)) goto LAB_00770c29;
      }
      cVar2 = FUN_00771200(param_1,uVar7);
      if (((cVar2 == '\0') && ((param_1 != 0x76 || (cVar2 = FUN_009305f0(0x76), cVar2 == '\0')))) &&
         ((*(char *)(param_1_00 + 0x170) == '\0' ||
          ((((iVar3 == 0 || (cVar2 = FUN_005b1500(0x40000000,0), cVar2 == '\0')) ||
            (*(int *)(param_1_00 + 0x1e6c) == 0)) ||
           (cVar2 = HELPER_Effect_PlayerItemGate(param_1,0), cVar2 == '\0')))))) {
        if (((*(char *)(param_1_00 + 0x202c) != '\0') && (iVar3 != 0)) &&
           ((cVar2 = FUN_005b1500(0x8000,0), cVar2 == '\0' && (param_1 != 0x216))))
        goto LAB_0077075a;
        if ((((((*(int *)(param_1_00 + 0x1f84) == 0) ||
               (FUN_00557b00(&local_24,&local_28), local_24 == *(int *)(param_1_00 + 0x1f80))) ||
              (*(int *)(local_24 + 0x14) < 1)) &&
             (((((*(int *)(param_1_00 + 0x1fb8) == 0 || (*(int *)(param_1_00 + 0x1fb8) != param_1))
                && (iVar3 = FUN_009e0650(param_1), iVar3 < 1)) &&
               (((local_20 == 0 || (cVar2 = FUN_007307b0(), cVar2 == '\0')) ||
                (cVar2 = FUN_009305f0(param_1), cVar2 == '\0')))) &&
              (iVar3 = FUN_007911c0(param_1), iVar3 < 0)))) &&
            (((param_1 == 0xbf || (cVar2 = HELPER_Effect_PlayerItemGate(0xbf,0), cVar2 == '\0')) ||
             (param_1 != *(int *)(param_1_00 + 0x1390))))) &&
           ((cVar2 = FUN_009305f0(0x1e8), cVar2 == '\0' || (param_1 != *(int *)(param_1_00 + 5000)))
           )) {
LAB_00770c3e:
          if ((*(int *)(param_1_00 + 0x2ef4) != 0) &&
             ((param_1 == *(int *)(param_1_00 + 0x2ef4) && (*(char *)(param_1_00 + 0x2ef0) == '\0'))
             )) {
            FUN_00aef12b();
            return;
          }
          FUN_00aef12b();
          return;
        }
      }
LAB_00770c29:
      FUN_00aef12b();
      return;
    }
    iVar3 = FUN_0072fd10(param_1);
    param_1_00 = iVar4;
  } while( true );
}

