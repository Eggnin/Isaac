; J460 NPC AI 0x006d7010 HELPER_006d7010_DamageQueuePreprocessCandidate
; types=
; identities=common_damage_path
; entry=006d7010
006d7010  55                        PUSH EBP
006d7011  8bec                      MOV EBP,ESP
006d7013  83e4c0                    AND ESP,0xffffffc0
006d7016  83ec34                    SUB ESP,0x34
006d7019  53                        PUSH EBX
006d701a  8bd9                      MOV EBX,ECX
006d701c  56                        PUSH ESI
006d701d  57                        PUSH EDI
006d701e  817b28c4030000            CMP dword ptr [EBX + 0x28],0x3c4
006d7025  7432                      JZ 0x006d7059
006d7027  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d702d  6a01                      PUSH 0x1
006d702f  81c1a8ba0100              ADD ECX,0x1baa8
006d7035  51                        PUSH ECX
006d7036  6893010000                PUSH 0x193
006d703b  e840702e00                CALL 0x009be080
006d7040  85c0                      TEST EAX,EAX
006d7042  0f84d3010000              JZ 0x006d721b
006d7048  6a00                      PUSH 0x0
006d704a  8bcb                      MOV ECX,EBX
006d704c  e83febfdff                CALL 0x006b5b90
006d7051  84c0                      TEST AL,AL
006d7053  0f84c2010000              JZ 0x006d721b
006d7059  80bb7101000000            CMP byte ptr [EBX + 0x171],0x0
006d7060  0f84b5010000              JZ 0x006d721b
006d7066  f30f1083fc000000          MOVSS XMM0,dword ptr [EBX + 0xfc]
006d706e  0f57c9                    XORPS XMM1,XMM1
006d7071  0f2fc1                    COMISS XMM0,XMM1
006d7074  0f86a1010000              JBE 0x006d721b
006d707a  f30f108380030000          MOVSS XMM0,dword ptr [EBX + 0x380]
006d7082  0f2fc1                    COMISS XMM0,XMM1
006d7085  0f8690010000              JBE 0x006d721b
006d708b  8bcb                      MOV ECX,EBX
006d708d  e85e19fdff                CALL 0x006a89f0
006d7092  3bc3                      CMP EAX,EBX
006d7094  0f8581010000              JNZ 0x006d721b
006d709a  80bbb003000000            CMP byte ptr [EBX + 0x3b0],0x0
006d70a1  0f8574010000              JNZ 0x006d721b
006d70a7  8b7308                    MOV ESI,dword ptr [EBX + 0x8]
006d70aa  3b730c                    CMP ESI,dword ptr [EBX + 0xc]
006d70ad  0f8468010000              JZ 0x006d721b
006d70b3  f30f1006                  MOVSS XMM0,dword ptr [ESI]
006d70b7  0f2fc1                    COMISS XMM0,XMM1
006d70ba  0f864f010000              JBE 0x006d720f
006d70c0  e89b7e0100                CALL 0x006eef60
006d70c5  8bf8                      MOV EDI,EAX
006d70c7  c744243000000000          MOV dword ptr [ESP + 0x30],0x0
006d70cf  e88c7e0100                CALL 0x006eef60
006d70d4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d70da  6a00                      PUSH 0x0
006d70dc  57                        PUSH EDI
006d70dd  660f6ec0                  MOVD XMM0,EAX
006d70e1  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006d70e5  c1e81f                    SHR EAX,0x1f
006d70e8  6a00                      PUSH 0x0
006d70ea  6a00                      PUSH 0x0
006d70ec  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006d70f5  8d442440                  LEA EAX,[ESP + 0x40]
006d70f9  50                        PUSH EAX
006d70fa  8d44244c                  LEA EAX,[ESP + 0x4c]
006d70fe  50                        PUSH EAX
006d70ff  660f5ac8                  CVTPD2PS XMM1,XMM0
006d7103  6a01                      PUSH 0x1
006d7105  6829230000                PUSH 0x2329
006d710a  f30f100584adba00          MOVSS XMM0,dword ptr [0x00baad84]
006d7112  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
006d711a  f30f58c9                  ADDSS XMM1,XMM1
006d711e  f30f5cc1                  SUBSS XMM0,XMM1
006d7122  f30f11442454              MOVSS dword ptr [ESP + 0x54],XMM0
006d7128  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
006d7130  f30f5c05e49fba00          SUBSS XMM0,dword ptr [0x00ba9fe4]
006d7138  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
006d713e  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
006d7146  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
006d714e  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
006d7154  e8b7720200                CALL 0x006fe410
006d7159  f30f1006                  MOVSS XMM0,dword ptr [ESI]
006d715d  83ec08                    SUB ESP,0x8
006d7160  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
006d7168  8bf8                      MOV EDI,EAX
006d716a  897c2434                  MOV dword ptr [ESP + 0x34],EDI
006d716e  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006d7176  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
006d717c  d9442430                  FLD dword ptr [ESP + 0x30]
006d7180  dd1c24                    FSTP qword ptr [ESP]
006d7183  e88f974100                CALL 0x00af0917
006d7188  d95c2430                  FSTP dword ptr [ESP + 0x30]
006d718c  d9442430                  FLD dword ptr [ESP + 0x30]
006d7190  83c408                    ADD ESP,0x8
006d7193  d95c2428                  FSTP dword ptr [ESP + 0x28]
006d7197  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
006d719d  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
006d71a5  f30f100d30acba00          MOVSS XMM1,dword ptr [0x00baac30]
006d71ad  f30f5dc8                  MINSS XMM1,XMM0
006d71b1  0f57c0                    XORPS XMM0,XMM0
006d71b4  0f2fc1                    COMISS XMM0,XMM1
006d71b7  7208                      JC 0x006d71c1
006d71b9  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
006d71c1  f30f108384030000          MOVSS XMM0,dword ptr [EBX + 0x384]
006d71c9  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
006d71d1  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
006d71d9  81c7bc030000              ADD EDI,0x3bc
006d71df  8b0f                      MOV ECX,dword ptr [EDI]
006d71e1  85c9                      TEST ECX,ECX
006d71e3  7414                      JZ 0x006d71f9
006d71e5  8d442428                  LEA EAX,[ESP + 0x28]
006d71e9  897c2428                  MOV dword ptr [ESP + 0x28],EDI
006d71ed  50                        PUSH EAX
006d71ee  81c1cc030000              ADD ECX,0x3cc
006d71f4  e81780dfff                CALL 0x004cf210
006d71f9  57                        PUSH EDI
006d71fa  8bcb                      MOV ECX,EBX
006d71fc  891f                      MOV dword ptr [EDI],EBX
006d71fe  e8ed6adfff                CALL 0x004cdcf0
006d7203  8b4c242c                  MOV ECX,dword ptr [ESP + 0x2c]
006d7207  8b01                      MOV EAX,dword ptr [ECX]
006d7209  ff500c                    CALL dword ptr [EAX + 0xc]
006d720c  0f57c9                    XORPS XMM1,XMM1
006d720f  83c638                    ADD ESI,0x38
006d7212  3b730c                    CMP ESI,dword ptr [EBX + 0xc]
006d7215  0f8598feffff              JNZ 0x006d70b3
006d721b  5f                        POP EDI
006d721c  5e                        POP ESI
006d721d  5b                        POP EBX
006d721e  8be5                      MOV ESP,EBP
006d7220  5d                        POP EBP
006d7221  c3                        RET
