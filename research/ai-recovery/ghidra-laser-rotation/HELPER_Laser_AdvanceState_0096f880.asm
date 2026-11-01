; J460 NPC AI 0x0096f880 HELPER_Laser_AdvanceState
; types=7
; identities=7.*
; entry=0096f880
0096f880  55                        PUSH EBP
0096f881  8bec                      MOV EBP,ESP
0096f883  51                        PUSH ECX
0096f884  56                        PUSH ESI
0096f885  8bf1                      MOV ESI,ECX
0096f887  80be1805000000            CMP byte ptr [ESI + 0x518],0x0
0096f88e  0f8599030000              JNZ 0x0096fc2d
0096f894  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
0096f89a  85c0                      TEST EAX,EAX
0096f89c  740a                      JZ 0x0096f8a8
0096f89e  83782807                  CMP dword ptr [EAX + 0x28],0x7
0096f8a2  0f8485030000              JZ 0x0096fc2d
0096f8a8  80be7101000000            CMP byte ptr [ESI + 0x171],0x0
0096f8af  0f8478030000              JZ 0x0096fc2d
0096f8b5  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
0096f8b8  48                        DEC EAX
0096f8b9  83f80e                    CMP EAX,0xe
0096f8bc  0f876b030000              JA 0x0096fc2d
0096f8c2  0fb68058fc9600            MOVZX EAX,byte ptr [EAX + 0x96fc58]
0096f8c9  ff248534fc9600            JMP dword ptr [EAX*0x4 + 0x96fc34]
0096f8d0  8b86c8030000              MOV EAX,dword ptr [ESI + 0x3c8]
0096f8d6  85c0                      TEST EAX,EAX
0096f8d8  0f840e030000              JZ 0x0096fbec
0096f8de  f30f108ee0040000          MOVSS XMM1,dword ptr [ESI + 0x4e0]
0096f8e6  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
0096f8e9  f30f114dfc                MOVSS dword ptr [EBP + -0x4],XMM1
0096f8ee  83f83c                    CMP EAX,0x3c
0096f8f1  7f24                      JG 0x0096f917
0096f8f3  7416                      JZ 0x0096f90b
0096f8f5  83f82b                    CMP EAX,0x2b
0096f8f8  7405                      JZ 0x0096f8ff
0096f8fa  83f831                    CMP EAX,0x31
0096f8fd  752c                      JNZ 0x0096f92b
0096f8ff  c745fc07000000            MOV dword ptr [EBP + -0x4],0x7
0096f906  e9e8020000                JMP 0x0096fbf3
0096f90b  c745fc87000000            MOV dword ptr [EBP + -0x4],0x87
0096f912  e9dc020000                JMP 0x0096fbf3
0096f917  83f854                    CMP EAX,0x54
0096f91a  0f84db000000              JZ 0x0096f9fb
0096f920  3d93010000                CMP EAX,0x193
0096f925  0f84a2000000              JZ 0x0096f9cd
0096f92b  8b4630                    MOV EAX,dword ptr [ESI + 0x30]
0096f92e  85c0                      TEST EAX,EAX
0096f930  752f                      JNZ 0x0096f961
0096f932  f30f100580a3ba00          MOVSS XMM0,dword ptr [0x00baa380]
0096f93a  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0096f942  0f2fc1                    COMISS XMM0,XMM1
0096f945  51                        PUSH ECX
0096f946  c704240000803f            MOV dword ptr [ESP],0x3f800000
0096f94d  50                        PUSH EAX
0096f94e  6a02                      PUSH 0x2
0096f950  0f97c0                    SETA AL
0096f953  83c005                    ADD EAX,0x5
0096f956  50                        PUSH EAX
0096f957  e8846ffeff                CALL 0x009568e0
0096f95c  5e                        POP ESI
0096f95d  8be5                      MOV ESP,EBP
0096f95f  5d                        POP EBP
0096f960  c3                        RET
0096f961  83f802                    CMP EAX,0x2
0096f964  0f85c3020000              JNZ 0x0096fc2d
0096f96a  f30f100580a3ba00          MOVSS XMM0,dword ptr [0x00baa380]
0096f972  f30f101504a3ba00          MOVSS XMM2,dword ptr [0x00baa304]
0096f97a  51                        PUSH ECX
0096f97b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0096f982  6a00                      PUSH 0x0
0096f984  50                        PUSH EAX
0096f985  33c0                      XOR EAX,EAX
0096f987  0f2fc1                    COMISS XMM0,XMM1
0096f98a  0f97c0                    SETA AL
0096f98d  83c005                    ADD EAX,0x5
0096f990  50                        PUSH EAX
0096f991  e84a6ffeff                CALL 0x009568e0
0096f996  f30f100580a3ba00          MOVSS XMM0,dword ptr [0x00baa380]
0096f99e  33c0                      XOR EAX,EAX
0096f9a0  0f2f45fc                  COMISS XMM0,dword ptr [EBP + -0x4]
0096f9a4  51                        PUSH ECX
0096f9a5  c704240000803f            MOV dword ptr [ESP],0x3f800000
0096f9ac  6a00                      PUSH 0x0
0096f9ae  6a02                      PUSH 0x2
0096f9b0  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0096f9b8  0f96c0                    SETBE AL
0096f9bb  8d04450f010000            LEA EAX,[EAX*0x2 + 0x10f]
0096f9c2  50                        PUSH EAX
0096f9c3  e8186ffeff                CALL 0x009568e0
0096f9c8  5e                        POP ESI
0096f9c9  8be5                      MOV ESP,EBP
0096f9cb  5d                        POP EBP
0096f9cc  c3                        RET
0096f9cd  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0096f9d3  8d4dfc                    LEA ECX,[EBP + -0x4]
0096f9d6  c745fccb030000            MOV dword ptr [EBP + -0x4],0x3cb
0096f9dd  e89e6dfeff                CALL 0x00956780
0096f9e2  83ec08                    SUB ESP,0x8
0096f9e5  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0096f9ed  c704240000803f            MOV dword ptr [ESP],0x3f800000
0096f9f4  6a01                      PUSH 0x1
0096f9f6  e91a020000                JMP 0x0096fc15
0096f9fb  c745fcd3000000            MOV dword ptr [EBP + -0x4],0xd3
0096fa02  e9ec010000                JMP 0x0096fbf3
0096fa07  8b4630                    MOV EAX,dword ptr [ESI + 0x30]
0096fa0a  83f802                    CMP EAX,0x2
0096fa0d  754d                      JNZ 0x0096fa5c
0096fa0f  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0096fa15  8d4dfc                    LEA ECX,[EBP + -0x4]
0096fa18  c745fc0a000000            MOV dword ptr [EBP + -0x4],0xa
0096fa1f  e85c6dfeff                CALL 0x00956780
0096fa24  83ec08                    SUB ESP,0x8
0096fa27  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0096fa2f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0096fa36  6a00                      PUSH 0x0
0096fa38  6a02                      PUSH 0x2
0096fa3a  51                        PUSH ECX
0096fa3b  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
0096fa42  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0096fa48  ff75fc                    PUSH dword ptr [EBP + -0x4]
0096fa4b  e8e0e1fbff                CALL 0x0092dc30
0096fa50  c745fc11010000            MOV dword ptr [EBP + -0x4],0x111
0096fa57  e997010000                JMP 0x0096fbf3
0096fa5c  83f801                    CMP EAX,0x1
0096fa5f  0f84c8010000              JZ 0x0096fc2d
0096fa65  c745fc0a000000            MOV dword ptr [EBP + -0x4],0xa
0096fa6c  e982010000                JMP 0x0096fbf3
0096fa71  c745fc4d020000            MOV dword ptr [EBP + -0x4],0x24d
0096fa78  e976010000                JMP 0x0096fbf3
0096fa7d  f30f1086e0040000          MOVSS XMM0,dword ptr [ESI + 0x4e0]
0096fa85  f30f1145fc                MOVSS dword ptr [EBP + -0x4],XMM0
0096fa8a  e8d1f4d7ff                CALL 0x006eef60
0096fa8f  f30f101dc4a3ba00          MOVSS XMM3,dword ptr [0x00baa3c4]
0096fa97  f30f104dfc                MOVSS XMM1,dword ptr [EBP + -0x4]
0096fa9c  660f6ec0                  MOVD XMM0,EAX
0096faa0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0096faa4  c1e81f                    SHR EAX,0x1f
0096faa7  837e3002                  CMP dword ptr [ESI + 0x30],0x2
0096faab  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0096fab4  660f5ad0                  CVTPD2PS XMM2,XMM0
0096fab8  f30f100580a3ba00          MOVSS XMM0,dword ptr [0x00baa380]
0096fac0  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0096fac8  f30f5915f8a1ba00          MULSS XMM2,dword ptr [0x00baa1f8]
0096fad0  f30f58d3                  ADDSS XMM2,XMM3
0096fad4  752c                      JNZ 0x0096fb02
0096fad6  0f2fc1                    COMISS XMM0,XMM1
0096fad9  b80f010000                MOV EAX,0x10f
0096fade  760a                      JBE 0x0096faea
0096fae0  b810010000                MOV EAX,0x110
0096fae5  0f28c3                    MOVAPS XMM0,XMM3
0096fae8  eb51                      JMP 0x0096fb3b
0096faea  0f2f0d18a5ba00            COMISS XMM1,dword ptr [0x00baa518]
0096faf1  7640                      JBE 0x0096fb33
0096faf3  f30f100590a4ba00          MOVSS XMM0,dword ptr [0x00baa490]
0096fafb  b811010000                MOV EAX,0x111
0096fb00  eb39                      JMP 0x0096fb3b
0096fb02  0f2fc1                    COMISS XMM0,XMM1
0096fb05  b885000000                MOV EAX,0x85
0096fb0a  760f                      JBE 0x0096fb1b
0096fb0c  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0096fb14  b886000000                MOV EAX,0x86
0096fb19  eb20                      JMP 0x0096fb3b
0096fb1b  0f2f0d18a5ba00            COMISS XMM1,dword ptr [0x00baa518]
0096fb22  760f                      JBE 0x0096fb33
0096fb24  f30f100590a4ba00          MOVSS XMM0,dword ptr [0x00baa490]
0096fb2c  b887000000                MOV EAX,0x87
0096fb31  eb08                      JMP 0x0096fb3b
0096fb33  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0096fb3b  8b8ec8030000              MOV ECX,dword ptr [ESI + 0x3c8]
0096fb41  85c9                      TEST ECX,ECX
0096fb43  7427                      JZ 0x0096fb6c
0096fb45  8b4928                    MOV ECX,dword ptr [ECX + 0x28]
0096fb48  83f901                    CMP ECX,0x1
0096fb4b  7417                      JZ 0x0096fb64
0096fb4d  83f903                    CMP ECX,0x3
0096fb50  7412                      JZ 0x0096fb64
0096fb52  81f9c9000000              CMP ECX,0xc9
0096fb58  7512                      JNZ 0x0096fb6c
0096fb5a  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
0096fb62  eb08                      JMP 0x0096fb6c
0096fb64  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0096fb6c  51                        PUSH ECX
0096fb6d  f30f111424                MOVSS dword ptr [ESP],XMM2
0096fb72  0f28d0                    MOVAPS XMM2,XMM0
0096fb75  6a00                      PUSH 0x0
0096fb77  6a01                      PUSH 0x1
0096fb79  50                        PUSH EAX
0096fb7a  e8616dfeff                CALL 0x009568e0
0096fb7f  5e                        POP ESI
0096fb80  8be5                      MOV ESP,EBP
0096fb82  5d                        POP EBP
0096fb83  c3                        RET
0096fb84  e8d7f3d7ff                CALL 0x006eef60
0096fb89  f30f101504a3ba00          MOVSS XMM2,dword ptr [0x00baa304]
0096fb91  51                        PUSH ECX
0096fb92  660f6ec0                  MOVD XMM0,EAX
0096fb96  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0096fb9a  c1e81f                    SHR EAX,0x1f
0096fb9d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0096fba6  660f5ac0                  CVTPD2PS XMM0,XMM0
0096fbaa  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0096fbb2  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0096fbba  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
0096fbc2  f30f110424                MOVSS dword ptr [ESP],XMM0
0096fbc7  6a00                      PUSH 0x0
0096fbc9  6a02                      PUSH 0x2
0096fbcb  6886000000                PUSH 0x86
0096fbd0  e80b6dfeff                CALL 0x009568e0
0096fbd5  5e                        POP ESI
0096fbd6  8be5                      MOV ESP,EBP
0096fbd8  5d                        POP EBP
0096fbd9  c3                        RET
0096fbda  c745fc14010000            MOV dword ptr [EBP + -0x4],0x114
0096fbe1  eb10                      JMP 0x0096fbf3
0096fbe3  c745fc16010000            MOV dword ptr [EBP + -0x4],0x116
0096fbea  eb07                      JMP 0x0096fbf3
0096fbec  c745fc05000000            MOV dword ptr [EBP + -0x4],0x5
0096fbf3  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0096fbf9  8d4dfc                    LEA ECX,[EBP + -0x4]
0096fbfc  e87f6bfeff                CALL 0x00956780
0096fc01  83ec08                    SUB ESP,0x8
0096fc04  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0096fc0c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0096fc13  6a00                      PUSH 0x0
0096fc15  6a02                      PUSH 0x2
0096fc17  51                        PUSH ECX
0096fc18  c704240000803f            MOV dword ptr [ESP],0x3f800000
0096fc1f  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0096fc25  ff75fc                    PUSH dword ptr [EBP + -0x4]
0096fc28  e803e0fbff                CALL 0x0092dc30
0096fc2d  5e                        POP ESI
0096fc2e  8be5                      MOV ESP,EBP
0096fc30  5d                        POP EBP
0096fc31  c3                        RET
