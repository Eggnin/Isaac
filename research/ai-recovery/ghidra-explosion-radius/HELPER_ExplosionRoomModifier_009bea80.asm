; J460 NPC AI 0x009bea80 HELPER_ExplosionRoomModifier
; types=4
; identities=4.*
; entry=009bea80
009bea80  55                        PUSH EBP
009bea81  8bec                      MOV EBP,ESP
009bea83  83e4f8                    AND ESP,0xfffffff8
009bea86  83ec0c                    SUB ESP,0xc
009bea89  a19c16c700                MOV EAX,[0x00c7169c]
009bea8e  53                        PUSH EBX
009bea8f  56                        PUSH ESI
009bea90  8bd9                      MOV EBX,ECX
009bea92  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
009bea95  8bb010a40200              MOV ESI,dword ptr [EAX + 0x2a410]
009bea9b  8bd1                      MOV EDX,ECX
009bea9d  8b8014a40200              MOV EAX,dword ptr [EAX + 0x2a414]
009beaa3  81e2ff7f0000              AND EDX,0x7fff
009beaa9  2bc6                      SUB EAX,ESI
009beaab  895c2410                  MOV dword ptr [ESP + 0x10],EBX
009beaaf  c1f802                    SAR EAX,0x2
009beab2  57                        PUSH EDI
009beab3  3bd0                      CMP EDX,EAX
009beab5  7d1c                      JGE 0x009bead3
009beab7  8b0496                    MOV EAX,dword ptr [ESI + EDX*0x4]
009beaba  85c0                      TEST EAX,EAX
009beabc  7415                      JZ 0x009bead3
009beabe  8b80b8000000              MOV EAX,dword ptr [EAX + 0xb8]
009beac4  2500000080                AND EAX,0x80000000
009beac9  c644241301                MOV byte ptr [ESP + 0x13],0x1
009beace  83c800                    OR EAX,0x0
009bead1  7505                      JNZ 0x009bead8
009bead3  c644241300                MOV byte ptr [ESP + 0x13],0x0
009bead8  8b33                      MOV ESI,dword ptr [EBX]
009beada  33ff                      XOR EDI,EDI
009beadc  3b7304                    CMP ESI,dword ptr [EBX + 0x4]
009beadf  743e                      JZ 0x009beb1f
009beae1  8bc3                      MOV EAX,EBX
009beae3  8b1e                      MOV EBX,dword ptr [ESI]
009beae5  837b2c00                  CMP dword ptr [EBX + 0x2c],0x0
009beae9  752c                      JNZ 0x009beb17
009beaeb  51                        PUSH ECX
009beaec  8bcb                      MOV ECX,EBX
009beaee  e8edcbe0ff                CALL 0x007cb6e0
009beaf3  03f8                      ADD EDI,EAX
009beaf5  807c241300                CMP byte ptr [ESP + 0x13],0x0
009beafa  7414                      JZ 0x009beb10
009beafc  8b8b6c1e0000              MOV ECX,dword ptr [EBX + 0x1e6c]
009beb02  85c9                      TEST ECX,ECX
009beb04  740a                      JZ 0x009beb10
009beb06  ff7508                    PUSH dword ptr [EBP + 0x8]
009beb09  e8d2cbe0ff                CALL 0x007cb6e0
009beb0e  03f8                      ADD EDI,EAX
009beb10  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
009beb13  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
009beb17  83c604                    ADD ESI,0x4
009beb1a  3b7004                    CMP ESI,dword ptr [EAX + 0x4]
009beb1d  75c4                      JNZ 0x009beae3
009beb1f  8bc7                      MOV EAX,EDI
009beb21  5f                        POP EDI
009beb22  5e                        POP ESI
009beb23  5b                        POP EBX
009beb24  8be5                      MOV ESP,EBP
009beb26  5d                        POP EBP
009beb27  c20400                    RET 0x4
