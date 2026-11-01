; J460 NPC AI 0x00652b90 HELPER_Projectile_Init
; types=9
; identities=9.*
; entry=00652b90
00652b90  55                        PUSH EBP
00652b91  8bec                      MOV EBP,ESP
00652b93  83e4f8                    AND ESP,0xfffffff8
00652b96  51                        PUSH ECX
00652b97  53                        PUSH EBX
00652b98  56                        PUSH ESI
00652b99  57                        PUSH EDI
00652b9a  ff7514                    PUSH dword ptr [EBP + 0x14]
00652b9d  8bf9                      MOV EDI,ECX
00652b9f  ff7510                    PUSH dword ptr [EBP + 0x10]
00652ba2  ff750c                    PUSH dword ptr [EBP + 0xc]
00652ba5  ff7508                    PUSH dword ptr [EBP + 0x8]
00652ba8  e8f3670500                CALL 0x006a93a0
00652bad  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00652bb3  c7878401000004000000      MOV dword ptr [EDI + 0x184],0x4
00652bbd  85c0                      TEST EAX,EAX
00652bbf  740e                      JZ 0x00652bcf
00652bc1  6a01                      PUSH 0x1
00652bc3  83c074                    ADD EAX,0x74
00652bc6  8d4f48                    LEA ECX,[EDI + 0x48]
00652bc9  50                        PUSH EAX
00652bca  e88191dbff                CALL 0x0040bd50
00652bcf  c787100400000000b8c1      MOV dword ptr [EDI + 0x410],0xc1b80000
00652bd9  e882c30900                CALL 0x006eef60
00652bde  c7871804000000000000      MOV dword ptr [EDI + 0x418],0x0
00652be8  c787200400000000803f      MOV dword ptr [EDI + 0x420],0x3f800000
00652bf2  c7873804000000000000      MOV dword ptr [EDI + 0x438],0x0
00652bfc  660f6ec0                  MOVD XMM0,EAX
00652c00  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00652c04  c1e81f                    SHR EAX,0x1f
00652c07  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00652c0b  c7873c04000000000000      MOV dword ptr [EDI + 0x43c],0x0
00652c15  c787240400000000803f      MOV dword ptr [EDI + 0x424],0x3f800000
00652c1f  c787280400008fc2753c      MOV dword ptr [EDI + 0x428],0x3c75c28f
00652c29  c7872c040000ae47813f      MOV dword ptr [EDI + 0x42c],0x3f8147ae
00652c33  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00652c3c  c7873004000000000000      MOV dword ptr [EDI + 0x430],0x0
00652c46  c78744040000ffffffff      MOV dword ptr [EDI + 0x444],0xffffffff
00652c50  c787880300000000803f      MOV dword ptr [EDI + 0x388],0x3f800000
00652c5a  c6874004000000            MOV byte ptr [EDI + 0x440],0x0
00652c61  660f5ac0                  CVTPD2PS XMM0,XMM0
00652c65  c7875004000000000000      MOV dword ptr [EDI + 0x450],0x0
00652c6f  c7875404000000000000      MOV dword ptr [EDI + 0x454],0x0
00652c79  c7875804000000000000      MOV dword ptr [EDI + 0x458],0x0
00652c83  c7875c0400001e000000      MOV dword ptr [EDI + 0x45c],0x1e
00652c8d  c7878403000000000000      MOV dword ptr [EDI + 0x384],0x0
00652c97  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00652c9f  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
00652ca7  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00652caf  f30f118714040000          MOVSS dword ptr [EDI + 0x414],XMM0
00652cb7  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00652cbf  f30f118760040000          MOVSS dword ptr [EDI + 0x460],XMM0
00652cc7  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00652ccf  f30f118764040000          MOVSS dword ptr [EDI + 0x464],XMM0
00652cd7  c7877004000000000000      MOV dword ptr [EDI + 0x470],0x0
00652ce1  7571                      JNZ 0x00652d54
00652ce3  8b35e498c700              MOV ESI,dword ptr [0x00c798e4]
00652ce9  8d4f48                    LEA ECX,[EDI + 0x48]
00652cec  6a00                      PUSH 0x0
00652cee  e82d85dbff                CALL 0x0040b220
00652cf3  83e604                    AND ESI,0x4
00652cf6  b901000000                MOV ECX,0x1
00652cfb  ba06000000                MOV EDX,0x6
00652d00  0f44ca                    CMOVZ ECX,EDX
00652d03  c7407800000000            MOV dword ptr [EAX + 0x78],0x0
00652d0a  89487c                    MOV dword ptr [EAX + 0x7c],ECX
00652d0d  c7808000000001000000      MOV dword ptr [EAX + 0x80],0x1
00652d17  c7808400000001000000      MOV dword ptr [EAX + 0x84],0x1
00652d21  c7808800000001000000      MOV dword ptr [EAX + 0x88],0x1
00652d2b  a17816c700                MOV EAX,[0x00c71678]
00652d30  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00652d36  83780810                  CMP dword ptr [EAX + 0x8],0x10
00652d3a  7518                      JNZ 0x00652d54
00652d3c  6a00                      PUSH 0x0
00652d3e  8d4f48                    LEA ECX,[EDI + 0x48]
00652d41  e8da84dbff                CALL 0x0040b220
00652d46  c7404000000000            MOV dword ptr [EAX + 0x40],0x0
00652d4d  c7404400000041            MOV dword ptr [EAX + 0x44],0x41000000
00652d54  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
00652d5a  85c9                      TEST ECX,ECX
00652d5c  7458                      JZ 0x00652db6
00652d5e  8b896c010000              MOV ECX,dword ptr [ECX + 0x16c]
00652d64  33c0                      XOR EAX,EAX
00652d66  81e100004000              AND ECX,0x400000
00652d6c  0bc1                      OR EAX,ECX
00652d6e  7446                      JZ 0x00652db6
00652d70  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00652d78  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00652d80  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00652d86  818f6c01000000004000      OR dword ptr [EDI + 0x16c],0x400000
00652d90  898768010000              MOV dword ptr [EDI + 0x168],EAX
00652d96  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00652d9e  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00652da6  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00652dae  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00652db6  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00652dbe  f30f118768040000          MOVSS dword ptr [EDI + 0x468],XMM0
00652dc6  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00652dce  57                        PUSH EDI
00652dcf  f30f11876c040000          MOVSS dword ptr [EDI + 0x46c],XMM0
00652dd7  e8d4f62000                CALL 0x008624b0
00652ddc  5f                        POP EDI
00652ddd  5e                        POP ESI
00652dde  5b                        POP EBX
00652ddf  8be5                      MOV ESP,EBP
00652de1  5d                        POP EBP
00652de2  c21000                    RET 0x10
