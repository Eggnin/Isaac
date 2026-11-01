/* Local J460 decompiler output.
 * VA: 0x007dba30
 * Entry: 007dba30
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.*
 * Evidence: Effect Update 0x5EB8CC..0x5EBFA6 call site
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.*; Effect Update
   0x5EB8CC..0x5EBFA6 call site */

undefined4 __thiscall HELPER_Effect_PlayerDamageImmunity(int param_1_00,int param_1,int param_2)

{
  char cVar1;
  bool bVar2;
  
  bVar2 = false;
  cVar1 = HELPER_Effect_PlayerItemGate(0x278,0);
  if ((cVar1 == '\0') && (cVar1 = FUN_009305f0(0x278), cVar1 == '\0')) {
    return 0;
  }
  if (param_1 < 0x22) {
    if (param_1 == 0x21) {
      return 1;
    }
    if (param_1 == 0) {
      bVar2 = param_2 == 10000;
    }
    else if ((param_1 == 9) && (param_2 == 2)) {
switchD_007dbabc_caseD_16:
      bVar2 = true;
    }
  }
  else if (param_1 == 1000) {
    switch(param_2) {
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1a:
    case 0x20:
    case 0x25:
    case 0x2c:
    case 0x2d:
    case 0x2e:
    case 0x35:
    case 0x36:
    case 0x38:
    case 0x4e:
    case 0x5a:
    case 0x5e:
    case 0x8d:
    case 0x93:
    case 0x9b:
    case 0xa9:
    case 0xcc:
      goto switchD_007dbabc_caseD_16;
    default:
      break;
    }
  }
  if ((*(char *)(param_1_00 + 0x26d4) != '\0') || (bVar2)) {
    *(undefined *)(param_1_00 + 0x26d4) = 1;
    if ((bVar2) && (*(int *)(param_1_00 + 0x26d0) < 0x1e)) {
      return 1;
    }
  }
  else {
    *(undefined *)(param_1_00 + 0x26d4) = 0;
  }
  return 0;
}

