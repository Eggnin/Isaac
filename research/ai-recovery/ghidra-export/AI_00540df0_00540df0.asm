; J460 NPC AI 0x00540df0 AI_00540df0
; types=281
; identities=281.0.0
; entry=00540df0
00540df0  55                        PUSH EBP
00540df1  8bec                      MOV EBP,ESP
00540df3  6aff                      PUSH -0x1
00540df5  68bd48af00                PUSH 0xaf48bd
00540dfa  64a100000000              MOV EAX,FS:[0x0]
00540e00  50                        PUSH EAX
00540e01  83ec34                    SUB ESP,0x34
00540e04  53                        PUSH EBX
00540e05  56                        PUSH ESI
00540e06  57                        PUSH EDI
00540e07  a1b493bf00                MOV EAX,[0x00bf93b4]
00540e0c  33c5                      XOR EAX,EBP
00540e0e  50                        PUSH EAX
00540e0f  8d45f4                    LEA EAX,[EBP + -0xc]
00540e12  64a300000000              MOV FS:[0x0],EAX
00540e18  8bd9                      MOV EBX,ECX
00540e1a  83bb640b000000            CMP dword ptr [EBX + 0xb64],0x0
00540e21  0f855c010000              JNZ 0x00540f83
00540e27  83bbbc03000000            CMP dword ptr [EBX + 0x3bc],0x0
00540e2e  0f8532010000              JNZ 0x00540f66
00540e34  c745f004000000            MOV dword ptr [EBP + -0x10],0x4
00540e3b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00540e40  8b93dc030000              MOV EDX,dword ptr [EBX + 0x3dc]
00540e46  85d2                      TEST EDX,EDX
00540e48  751a                      JNZ 0x00540e64
00540e4a  6854bfb600                PUSH 0xb6bf54
00540e4f  6a10                      PUSH 0x10
00540e51  e86a044d00                CALL 0x00a112c0
00540e56  8b93dc030000              MOV EDX,dword ptr [EBX + 0x3dc]
00540e5c  83c408                    ADD ESP,0x8
00540e5f  85d2                      TEST EDX,EDX
00540e61  7501                      JNZ 0x00540e64
00540e63  cc                        INT3
00540e64  8b8be0030000              MOV ECX,dword ptr [EBX + 0x3e0]
00540e6a  8bc2                      MOV EAX,EDX
00540e6c  d3e8                      SHR EAX,CL
00540e6e  8b8be4030000              MOV ECX,dword ptr [EBX + 0x3e4]
00540e74  33c2                      XOR EAX,EDX
00540e76  8bd0                      MOV EDX,EAX
00540e78  d3e2                      SHL EDX,CL
00540e7a  8b8be8030000              MOV ECX,dword ptr [EBX + 0x3e8]
00540e80  33d0                      XOR EDX,EAX
00540e82  8bfa                      MOV EDI,EDX
00540e84  d3ef                      SHR EDI,CL
00540e86  33fa                      XOR EDI,EDX
00540e88  89bbdc030000              MOV dword ptr [EBX + 0x3dc],EDI
00540e8e  8b7330                    MOV ESI,dword ptr [EBX + 0x30]
00540e91  e8cae01a00                CALL 0x006eef60
00540e96  660f6ec0                  MOVD XMM0,EAX
00540e9a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00540e9e  c1e81f                    SHR EAX,0x1f
00540ea1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00540eaa  660f5ac0                  CVTPD2PS XMM0,XMM0
00540eae  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00540eb6  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00540ebe  f30f58c0                  ADDSS XMM0,XMM0
00540ec2  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00540ec7  e854c6edff                CALL 0x0041d520
00540ecc  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
00540ed1  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
00540ed6  e865c6edff                CALL 0x0041d540
00540edb  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
00540ee0  8d45dc                    LEA EAX,[EBP + -0x24]
00540ee3  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00540eeb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00540ef1  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00540ef9  57                        PUSH EDI
00540efa  f30f58833c030000          ADDSS XMM0,dword ptr [EBX + 0x33c]
00540f02  56                        PUSH ESI
00540f03  f30f588b40030000          ADDSS XMM1,dword ptr [EBX + 0x340]
00540f0b  53                        PUSH EBX
00540f0c  6840b6c700                PUSH 0xc7b640
00540f11  50                        PUSH EAX
00540f12  ff732c                    PUSH dword ptr [EBX + 0x2c]
00540f15  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
00540f1a  ff7328                    PUSH dword ptr [EBX + 0x28]
00540f1d  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
00540f22  e8f97beeff                CALL 0x00428b20
00540f27  8bf8                      MOV EDI,EAX
00540f29  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00540f2f  8db7bc030000              LEA ESI,[EDI + 0x3bc]
00540f35  85c9                      TEST ECX,ECX
00540f37  7412                      JZ 0x00540f4b
00540f39  8d45e4                    LEA EAX,[EBP + -0x1c]
00540f3c  8975e4                    MOV dword ptr [EBP + -0x1c],ESI
00540f3f  81c1cc030000              ADD ECX,0x3cc
00540f45  50                        PUSH EAX
00540f46  e8c5e2f8ff                CALL 0x004cf210
00540f4b  56                        PUSH ESI
00540f4c  8bcb                      MOV ECX,EBX
00540f4e  891e                      MOV dword ptr [ESI],EBX
00540f50  e89bcdf8ff                CALL 0x004cdcf0
00540f55  8b07                      MOV EAX,dword ptr [EDI]
00540f57  8bcf                      MOV ECX,EDI
00540f59  ff500c                    CALL dword ptr [EAX + 0xc]
00540f5c  836df001                  SUB dword ptr [EBP + -0x10],0x1
00540f60  0f85dafeffff              JNZ 0x00540e40
00540f66  8b833c030000              MOV EAX,dword ptr [EBX + 0x33c]
00540f6c  8db33c030000              LEA ESI,[EBX + 0x33c]
00540f72  898334030000              MOV dword ptr [EBX + 0x334],EAX
00540f78  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00540f7b  898338030000              MOV dword ptr [EBX + 0x338],EAX
00540f81  eb06                      JMP 0x00540f89
00540f83  8db33c030000              LEA ESI,[EBX + 0x33c]
00540f89  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00540f90  7475                      JZ 0x00541007
00540f92  8b83bc030000              MOV EAX,dword ptr [EBX + 0x3bc]
00540f98  85c0                      TEST EAX,EAX
00540f9a  742a                      JZ 0x00540fc6
00540f9c  6a00                      PUSH 0x0
00540f9e  68acd6c500                PUSH 0xc5d6ac
00540fa3  68dcd5c500                PUSH 0xc5d5dc
00540fa8  6a00                      PUSH 0x0
00540faa  50                        PUSH EAX
00540fab  e801f95a00                CALL 0x00af08b1
00540fb0  83c414                    ADD ESP,0x14
00540fb3  85c0                      TEST EAX,EAX
00540fb5  750f                      JNZ 0x00540fc6
00540fb7  6850d4b100                PUSH 0xb1d450
00540fbc  6a10                      PUSH 0x10
00540fbe  e8fd024d00                CALL 0x00a112c0
00540fc3  83c408                    ADD ESP,0x8
00540fc6  8b83bc030000              MOV EAX,dword ptr [EBX + 0x3bc]
00540fcc  85c0                      TEST EAX,EAX
00540fce  7437                      JZ 0x00541007
00540fd0  6a00                      PUSH 0x0
00540fd2  68acd6c500                PUSH 0xc5d6ac
00540fd7  68dcd5c500                PUSH 0xc5d5dc
00540fdc  6a00                      PUSH 0x0
00540fde  50                        PUSH EAX
00540fdf  e8cdf85a00                CALL 0x00af08b1
00540fe4  83c414                    ADD ESP,0x14
00540fe7  85c0                      TEST EAX,EAX
00540fe9  750f                      JNZ 0x00540ffa
00540feb  6850d4b100                PUSH 0xb1d450
00540ff0  6a10                      PUSH 0x10
00540ff2  e8c9024d00                CALL 0x00a112c0
00540ff7  83c408                    ADD ESP,0x8
00540ffa  ffb3bc030000              PUSH dword ptr [EBX + 0x3bc]
00541000  8bcb                      MOV ECX,EBX
00541002  e8a9781900                CALL 0x006d88b0
00541007  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054100d  ffb3ec030000              PUSH dword ptr [EBX + 0x3ec]
00541013  81c1a8ba0100              ADD ECX,0x1baa8
00541019  51                        PUSH ECX
0054101a  e811d54700                CALL 0x009be530
0054101f  8bf8                      MOV EDI,EAX
00541021  85ff                      TEST EDI,EDI
00541023  744a                      JZ 0x0054106f
00541025  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
0054102c  7541                      JNZ 0x0054106f
0054102e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00541034  53                        PUSH EBX
00541035  81c1e4660200              ADD ECX,0x266e4
0054103b  c7838801000000000000      MOV dword ptr [EBX + 0x188],0x0
00541045  e8b64b4a00                CALL 0x009e5c00
0054104a  8b03                      MOV EAX,dword ptr [EBX]
0054104c  8bcb                      MOV ECX,EBX
0054104e  ff5028                    CALL dword ptr [EAX + 0x28]
00541051  6a00                      PUSH 0x0
00541053  56                        PUSH ESI
00541054  6a01                      PUSH 0x1
00541056  8bcf                      MOV ECX,EDI
00541058  e873892100                CALL 0x007599d0
0054105d  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00541060  64890d00000000            MOV dword ptr FS:[0x0],ECX
00541067  59                        POP ECX
00541068  5f                        POP EDI
00541069  5e                        POP ESI
0054106a  5b                        POP EBX
0054106b  8be5                      MOV ESP,EBP
0054106d  5d                        POP EBP
0054106e  c3                        RET
0054106f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00541075  6a01                      PUSH 0x1
00541077  81c1a8ba0100              ADD ECX,0x1baa8
0054107d  51                        PUSH ECX
0054107e  6a09                      PUSH 0x9
00541080  e8fbcf4700                CALL 0x009be080
00541085  85c0                      TEST EAX,EAX
00541087  745f                      JZ 0x005410e8
00541089  8b8368010000              MOV EAX,dword ptr [EBX + 0x168]
0054108f  2500000020                AND EAX,0x20000000
00541094  83c800                    OR EAX,0x0
00541097  754f                      JNZ 0x005410e8
00541099  6aff                      PUSH -0x1
0054109b  50                        PUSH EAX
0054109c  50                        PUSH EAX
0054109d  6a0d                      PUSH 0xd
0054109f  8bcb                      MOV ECX,EBX
005410a1  e88afe1700                CALL 0x006c0f30
005410a6  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
005410ae  f30f118bb80b0000          MOVSS dword ptr [EBX + 0xbb8],XMM1
005410b6  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005410be  f30f1183bc0b0000          MOVSS dword ptr [EBX + 0xbbc],XMM0
005410c6  f30f118bb00b0000          MOVSS dword ptr [EBX + 0xbb0],XMM1
005410ce  f30f1183b40b0000          MOVSS dword ptr [EBX + 0xbb4],XMM0
005410d6  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
005410d9  64890d00000000            MOV dword ptr FS:[0x0],ECX
005410e0  59                        POP ECX
005410e1  5f                        POP EDI
005410e2  5e                        POP ESI
005410e3  5b                        POP EBX
005410e4  8be5                      MOV ESP,EBP
005410e6  5d                        POP EBP
005410e7  c3                        RET
005410e8  83bb640b000000            CMP dword ptr [EBX + 0xb64],0x0
005410ef  751c                      JNZ 0x0054110d
005410f1  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
005410fb  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
005410fe  64890d00000000            MOV dword ptr FS:[0x0],ECX
00541105  59                        POP ECX
00541106  5f                        POP EDI
00541107  5e                        POP ESI
00541108  5b                        POP EBX
00541109  8be5                      MOV ESP,EBP
0054110b  5d                        POP EBP
0054110c  c3                        RET
0054110d  8b8b6c010000              MOV ECX,dword ptr [EBX + 0x16c]
00541113  33c0                      XOR EAX,EAX
00541115  81e100800000              AND ECX,0x8000
0054111b  0bc1                      OR EAX,ECX
0054111d  7419                      JZ 0x00541138
0054111f  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00541123  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
00541128  f30f118334030000          MOVSS dword ptr [EBX + 0x334],XMM0
00541130  f30f118b38030000          MOVSS dword ptr [EBX + 0x338],XMM1
00541138  83bbbc03000000            CMP dword ptr [EBX + 0x3bc],0x0
0054113f  0f85fd000000              JNZ 0x00541242
00541145  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
0054114c  0f84f0000000              JZ 0x00541242
00541152  a17816c700                MOV EAX,[0x00c71678]
00541157  33ff                      XOR EDI,EDI
00541159  57                        PUSH EDI
0054115a  6a01                      PUSH 0x1
0054115c  6aff                      PUSH -0x1
0054115e  ff732c                    PUSH dword ptr [EBX + 0x2c]
00541161  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00541167  8d45d4                    LEA EAX,[EBP + -0x2c]
0054116a  ff7328                    PUSH dword ptr [EBX + 0x28]
0054116d  81c118120000              ADD ECX,0x1218
00541173  50                        PUSH EAX
00541174  e8e79dedff                CALL 0x0041af60
00541179  33f6                      XOR ESI,ESI
0054117b  897dfc                    MOV dword ptr [EBP + -0x4],EDI
0054117e  3975e0                    CMP dword ptr [EBP + -0x20],ESI
00541181  0f868f000000              JBE 0x00541216
00541187  8b55d8                    MOV EDX,dword ptr [EBP + -0x28]
0054118a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00541190  8b04b2                    MOV EAX,dword ptr [EDX + ESI*0x4]
00541193  3bc3                      CMP EAX,EBX
00541195  7444                      JZ 0x005411db
00541197  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
0054119d  3bcb                      CMP ECX,EBX
0054119f  753a                      JNZ 0x005411db
005411a1  05bc030000                ADD EAX,0x3bc
005411a6  8945e8                    MOV dword ptr [EBP + -0x18],EAX
005411a9  85c9                      TEST ECX,ECX
005411ab  7418                      JZ 0x005411c5
005411ad  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
005411b0  81c1cc030000              ADD ECX,0x3cc
005411b6  8d45e4                    LEA EAX,[EBP + -0x1c]
005411b9  50                        PUSH EAX
005411ba  e851e0f8ff                CALL 0x004cf210
005411bf  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
005411c2  8b55d8                    MOV EDX,dword ptr [EBP + -0x28]
005411c5  8938                      MOV dword ptr [EAX],EDI
005411c7  85ff                      TEST EDI,EDI
005411c9  740d                      JZ 0x005411d8
005411cb  50                        PUSH EAX
005411cc  8bcf                      MOV ECX,EDI
005411ce  e81dcbf8ff                CALL 0x004cdcf0
005411d3  8b55d8                    MOV EDX,dword ptr [EBP + -0x28]
005411d6  eb03                      JMP 0x005411db
005411d8  8b3cb2                    MOV EDI,dword ptr [EDX + ESI*0x4]
005411db  46                        INC ESI
005411dc  3b75e0                    CMP ESI,dword ptr [EBP + -0x20]
005411df  72af                      JC 0x00541190
005411e1  85ff                      TEST EDI,EDI
005411e3  7431                      JZ 0x00541216
005411e5  f30f108334030000          MOVSS XMM0,dword ptr [EBX + 0x334]
005411ed  f30f108b38030000          MOVSS XMM1,dword ptr [EBX + 0x338]
005411f5  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005411fd  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
00541205  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
0054120c  7408                      JZ 0x00541216
0054120e  57                        PUSH EDI
0054120f  8bcb                      MOV ECX,EBX
00541211  e89a761900                CALL 0x006d88b0
00541216  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0054121d  807dd400                  CMP byte ptr [EBP + -0x2c],0x0
00541221  751f                      JNZ 0x00541242
00541223  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0054122a  b101                      MOV CL,0x1
0054122c  8b55d8                    MOV EDX,dword ptr [EBP + -0x28]
0054122f  6a00                      PUSH 0x0
00541231  6a00                      PUSH 0x0
00541233  e878365200                CALL 0x00a648b0
00541238  83c408                    ADD ESP,0x8
0054123b  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00541242  83bb640b000004            CMP dword ptr [EBX + 0xb64],0x4
00541249  0f8519050000              JNZ 0x00541768
0054124f  f30f108b9c030000          MOVSS XMM1,dword ptr [EBX + 0x39c]
00541257  0f28c1                    MOVAPS XMM0,XMM1
0054125a  f30f598bb40b0000          MULSS XMM1,dword ptr [EBX + 0xbb4]
00541262  f30f5983b00b0000          MULSS XMM0,dword ptr [EBX + 0xbb0]
0054126a  f30f588b64030000          ADDSS XMM1,dword ptr [EBX + 0x364]
00541272  f30f588360030000          ADDSS XMM0,dword ptr [EBX + 0x360]
0054127a  f30f118b64030000          MOVSS dword ptr [EBX + 0x364],XMM1
00541282  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
0054128a  f30f108334030000          MOVSS XMM0,dword ptr [EBX + 0x334]
00541292  8b83bc030000              MOV EAX,dword ptr [EBX + 0x3bc]
00541298  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0054129d  f30f108338030000          MOVSS XMM0,dword ptr [EBX + 0x338]
005412a5  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
005412aa  85c0                      TEST EAX,EAX
005412ac  0f8516010000              JNZ 0x005413c8
005412b2  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
005412b9  8d45dc                    LEA EAX,[EBP + -0x24]
005412bc  745c                      JZ 0x0054131a
005412be  50                        PUSH EAX
005412bf  0f57d2                    XORPS XMM2,XMM2
005412c2  8bcb                      MOV ECX,EBX
005412c4  e807701900                CALL 0x006d82d0
005412c9  f30f109b9c030000          MOVSS XMM3,dword ptr [EBX + 0x39c]
005412d1  0f28c3                    MOVAPS XMM0,XMM3
005412d4  f30f1010                  MOVSS XMM2,dword ptr [EAX]
005412d8  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
005412dd  f30f5915a4a7ba00          MULSS XMM2,dword ptr [0x00baa7a4]
005412e5  f30f590da4a7ba00          MULSS XMM1,dword ptr [0x00baa7a4]
005412ed  f30f59c2                  MULSS XMM0,XMM2
005412f1  f30f59d9                  MULSS XMM3,XMM1
005412f5  f30f588334030000          ADDSS XMM0,dword ptr [EBX + 0x334]
005412fd  f30f589b38030000          ADDSS XMM3,dword ptr [EBX + 0x338]
00541305  f30f118334030000          MOVSS dword ptr [EBX + 0x334],XMM0
0054130d  f30f119b38030000          MOVSS dword ptr [EBX + 0x338],XMM3
00541315  e9c8000000                JMP 0x005413e2
0054131a  51                        PUSH ECX
0054131b  c7042400000000            MOV dword ptr [ESP],0x0
00541322  8bcb                      MOV ECX,EBX
00541324  50                        PUSH EAX
00541325  e816d91700                CALL 0x006bec40
0054132a  8db33c030000              LEA ESI,[EBX + 0x33c]
00541330  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00541334  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
00541338  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0054133d  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
00541342  0f28c1                    MOVAPS XMM0,XMM1
00541345  f30f114df0                MOVSS dword ptr [EBP + -0x10],XMM1
0054134a  f30f59c1                  MULSS XMM0,XMM1
0054134e  0f28ca                    MOVAPS XMM1,XMM2
00541351  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
00541356  f30f59ca                  MULSS XMM1,XMM2
0054135a  f30f58c1                  ADDSS XMM0,XMM1
0054135e  e8ed46efff                CALL 0x00435a50
00541363  0f28c8                    MOVAPS XMM1,XMM0
00541366  0f57c0                    XORPS XMM0,XMM0
00541369  0f2fc8                    COMISS XMM1,XMM0
0054136c  761b                      JBE 0x00541389
0054136e  f30f101584a7ba00          MOVSS XMM2,dword ptr [0x00baa784]
00541376  f30f5ed1                  DIVSS XMM2,XMM1
0054137a  0f28da                    MOVAPS XMM3,XMM2
0054137d  f30f5955ec                MULSS XMM2,dword ptr [EBP + -0x14]
00541382  f30f595df0                MULSS XMM3,dword ptr [EBP + -0x10]
00541387  eb0a                      JMP 0x00541393
00541389  f30f105df0                MOVSS XMM3,dword ptr [EBP + -0x10]
0054138e  f30f1055ec                MOVSS XMM2,dword ptr [EBP + -0x14]
00541393  f30f108b9c030000          MOVSS XMM1,dword ptr [EBX + 0x39c]
0054139b  0f28c1                    MOVAPS XMM0,XMM1
0054139e  f30f59ca                  MULSS XMM1,XMM2
005413a2  f30f59c3                  MULSS XMM0,XMM3
005413a6  f30f588b38030000          ADDSS XMM1,dword ptr [EBX + 0x338]
005413ae  f30f588334030000          ADDSS XMM0,dword ptr [EBX + 0x334]
005413b6  f30f118b38030000          MOVSS dword ptr [EBX + 0x338],XMM1
005413be  f30f118334030000          MOVSS dword ptr [EBX + 0x334],XMM0
005413c6  eb20                      JMP 0x005413e8
005413c8  f30f108034030000          MOVSS XMM0,dword ptr [EAX + 0x334]
005413d0  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
005413d5  f30f108038030000          MOVSS XMM0,dword ptr [EAX + 0x338]
005413dd  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
005413e2  8db33c030000              LEA ESI,[EBX + 0x33c]
005413e8  8b4320                    MOV EAX,dword ptr [EBX + 0x20]
005413eb  a801                      TEST AL,0x1
005413ed  750a                      JNZ 0x005413f9
005413ef  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005413f7  eb08                      JMP 0x00541401
005413f9  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
00541401  660f6ec0                  MOVD XMM0,EAX
00541405  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00541409  c1e81f                    SHR EAX,0x1f
0054140c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00541415  a17816c700                MOV EAX,[0x00c71678]
0054141a  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00541420  2b8328030000              SUB EAX,dword ptr [EBX + 0x328]
00541426  660f5ac0                  CVTPD2PS XMM0,XMM0
0054142a  660f6ec8                  MOVD XMM1,EAX
0054142e  f30f5905a0a8ba00          MULSS XMM0,dword ptr [0x00baa8a0]
00541436  0f5bc9                    CVTDQ2PS XMM1,XMM1
00541439  f30f59ca                  MULSS XMM1,XMM2
0054143d  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00541445  f30f58c8                  ADDSS XMM1,XMM0
00541449  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
00541451  0f28c1                    MOVAPS XMM0,XMM1
00541454  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
00541459  e8c2c0edff                CALL 0x0041d520
0054145e  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
00541463  e8f8da1a00                CALL 0x006eef60
00541468  660f6ec8                  MOVD XMM1,EAX
0054146c  f30fe6c9                  CVTDQ2PD XMM1,XMM1
00541470  c1e81f                    SHR EAX,0x1f
00541473  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0054147c  660f5ac1                  CVTPD2PS XMM0,XMM1
00541480  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00541488  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00541490  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
00541495  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
0054149a  e8a1c0edff                CALL 0x0041d540
0054149f  f30f105de8                MOVSS XMM3,dword ptr [EBP + -0x18]
005414a4  f30f5c1e                  SUBSS XMM3,dword ptr [ESI]
005414a8  f30f1065e4                MOVSS XMM4,dword ptr [EBP + -0x1c]
005414ad  f30f5c6604                SUBSS XMM4,dword ptr [ESI + 0x4]
005414b2  f30f1055f0                MOVSS XMM2,dword ptr [EBP + -0x10]
005414b7  a17816c700                MOV EAX,[0x00c71678]
005414bc  f30f591da0a0ba00          MULSS XMM3,dword ptr [0x00baa0a0]
005414c4  6a08                      PUSH 0x8
005414c6  f30f5925a0a0ba00          MULSS XMM4,dword ptr [0x00baa0a0]
005414ce  56                        PUSH ESI
005414cf  f30f59c2                  MULSS XMM0,XMM2
005414d3  f30f5955e0                MULSS XMM2,dword ptr [EBP + -0x20]
005414d8  f30f58d8                  ADDSS XMM3,XMM0
005414dc  f30f58e2                  ADDSS XMM4,XMM2
005414e0  f30f119bb00b0000          MOVSS dword ptr [EBX + 0xbb0],XMM3
005414e8  f30f101d24a9ba00          MOVSS XMM3,dword ptr [0x00baa924]
005414f0  f30f11a3b40b0000          MOVSS dword ptr [EBX + 0xbb4],XMM4
005414f8  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005414fe  8d45c4                    LEA EAX,[EBP + -0x3c]
00541501  81c118120000              ADD ECX,0x1218
00541507  50                        PUSH EAX
00541508  e88392edff                CALL 0x0041a790
0054150d  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
00541510  33ff                      XOR EDI,EDI
00541512  85c0                      TEST EAX,EAX
00541514  0f84fd000000              JZ 0x00541617
0054151a  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
0054151d  0f1f00                    NOP dword ptr [EAX]
00541520  8b34b9                    MOV ESI,dword ptr [ECX + EDI*0x4]
00541523  8b4620                    MOV EAX,dword ptr [ESI + 0x20]
00541526  3b4320                    CMP EAX,dword ptr [EBX + 0x20]
00541529  0f82dc000000              JC 0x0054160b
0054152f  f30f108b3c030000          MOVSS XMM1,dword ptr [EBX + 0x33c]
00541537  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0054153f  f30f109340030000          MOVSS XMM2,dword ptr [EBX + 0x340]
00541547  f30f5c9640030000          SUBSS XMM2,dword ptr [ESI + 0x340]
0054154f  0f28c1                    MOVAPS XMM0,XMM1
00541552  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
00541557  f30f59c1                  MULSS XMM0,XMM1
0054155b  0f28ca                    MOVAPS XMM1,XMM2
0054155e  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
00541563  f30f59ca                  MULSS XMM1,XMM2
00541567  f30f58c1                  ADDSS XMM0,XMM1
0054156b  e8e044efff                CALL 0x00435a50
00541570  0f28c8                    MOVAPS XMM1,XMM0
00541573  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
0054157b  f30f5e0d24a9ba00          DIVSS XMM1,dword ptr [0x00baa924]
00541583  f30f1055e4                MOVSS XMM2,dword ptr [EBP + -0x1c]
00541588  f30f105de8                MOVSS XMM3,dword ptr [EBP + -0x18]
0054158d  f30f5ce1                  SUBSS XMM4,XMM1
00541591  0f57c9                    XORPS XMM1,XMM1
00541594  0f2fc1                    COMISS XMM0,XMM1
00541597  f30f592580a3ba00          MULSS XMM4,dword ptr [0x00baa380]
0054159f  760c                      JBE 0x005415ad
005415a1  f30f5ee0                  DIVSS XMM4,XMM0
005415a5  f30f59d4                  MULSS XMM2,XMM4
005415a9  f30f59dc                  MULSS XMM3,XMM4
005415ad  f30f108b9c030000          MOVSS XMM1,dword ptr [EBX + 0x39c]
005415b5  0f28c1                    MOVAPS XMM0,XMM1
005415b8  f30f59cb                  MULSS XMM1,XMM3
005415bc  f30f59c2                  MULSS XMM0,XMM2
005415c0  f30f588b64030000          ADDSS XMM1,dword ptr [EBX + 0x364]
005415c8  f30f588360030000          ADDSS XMM0,dword ptr [EBX + 0x360]
005415d0  f30f118b64030000          MOVSS dword ptr [EBX + 0x364],XMM1
005415d8  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
005415e0  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
005415e8  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
005415f0  f30f5cc2                  SUBSS XMM0,XMM2
005415f4  f30f5ccb                  SUBSS XMM1,XMM3
005415f8  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
00541600  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
00541608  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
0054160b  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
0054160e  47                        INC EDI
0054160f  3bf8                      CMP EDI,EAX
00541611  0f8209ffffff              JC 0x00541520
00541617  83bbbc03000000            CMP dword ptr [EBX + 0x3bc],0x0
0054161e  8b7dc8                    MOV EDI,dword ptr [EBP + -0x38]
00541621  0f85ee000000              JNZ 0x00541715
00541627  33f6                      XOR ESI,ESI
00541629  85c0                      TEST EAX,EAX
0054162b  0f84e4000000              JZ 0x00541715
00541631  0f1f4000                  NOP dword ptr [EAX]
00541635  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
00541640  8b04b7                    MOV EAX,dword ptr [EDI + ESI*0x4]
00541643  83b8bc03000000            CMP dword ptr [EAX + 0x3bc],0x0
0054164a  0f85bb000000              JNZ 0x0054170b
00541650  f30f108334030000          MOVSS XMM0,dword ptr [EBX + 0x334]
00541658  f30f108b38030000          MOVSS XMM1,dword ptr [EBX + 0x338]
00541660  f30f5c8838030000          SUBSS XMM1,dword ptr [EAX + 0x338]
00541668  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
0054166d  f30f5c8034030000          SUBSS XMM0,dword ptr [EAX + 0x334]
00541675  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
0054167a  0f28d0                    MOVAPS XMM2,XMM0
0054167d  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00541682  f30f59d0                  MULSS XMM2,XMM0
00541686  0f28c1                    MOVAPS XMM0,XMM1
00541689  f30f59c1                  MULSS XMM0,XMM1
0054168d  f30f58d0                  ADDSS XMM2,XMM0
00541691  f30f100534acba00          MOVSS XMM0,dword ptr [0x00baac34]
00541699  0f2fc2                    COMISS XMM0,XMM2
0054169c  766d                      JBE 0x0054170b
0054169e  0f28c2                    MOVAPS XMM0,XMM2
005416a1  e8aa43efff                CALL 0x00435a50
005416a6  0f28c8                    MOVAPS XMM1,XMM0
005416a9  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005416b1  f30f5e0dd0a9ba00          DIVSS XMM1,dword ptr [0x00baa9d0]
005416b9  f30f5cd1                  SUBSS XMM2,XMM1
005416bd  0f57c9                    XORPS XMM1,XMM1
005416c0  0f2fc1                    COMISS XMM0,XMM1
005416c3  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
005416cb  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
005416d0  7613                      JBE 0x005416e5
005416d2  f30f5ed0                  DIVSS XMM2,XMM0
005416d6  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
005416db  f30f59ca                  MULSS XMM1,XMM2
005416df  f30f59c2                  MULSS XMM0,XMM2
005416e3  eb05                      JMP 0x005416ea
005416e5  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
005416ea  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
005416ef  f30f588338030000          ADDSS XMM0,dword ptr [EBX + 0x338]
005416f7  f30f58d1                  ADDSS XMM2,XMM1
005416fb  f30f118338030000          MOVSS dword ptr [EBX + 0x338],XMM0
00541703  f30f119334030000          MOVSS dword ptr [EBX + 0x334],XMM2
0054170b  46                        INC ESI
0054170c  3b75d0                    CMP ESI,dword ptr [EBP + -0x30]
0054170f  0f822bffffff              JC 0x00541640
00541715  807dc400                  CMP byte ptr [EBP + -0x3c],0x0
00541719  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00541721  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00541729  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00541731  7535                      JNZ 0x00541768
00541733  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
00541739  85d2                      TEST EDX,EDX
0054173b  7405                      JZ 0x00541742
0054173d  83c230                    ADD EDX,0x30
00541740  eb05                      JMP 0x00541747
00541742  ba18f6c700                MOV EDX,0xc7f618
00541747  85ff                      TEST EDI,EDI
00541749  7416                      JZ 0x00541761
0054174b  8b47fc                    MOV EAX,dword ptr [EDI + -0x4]
0054174e  8d4ffc                    LEA ECX,[EDI + -0x4]
00541751  2902                      SUB dword ptr [EDX],EAX
00541753  51                        PUSH ECX
00541754  835a0400                  SBB dword ptr [EDX + 0x4],0x0
00541758  ff15dc87b100              CALL dword ptr [0x00b187dc]
0054175e  83c404                    ADD ESP,0x4
00541761  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00541768  8b737c                    MOV ESI,dword ptr [EBX + 0x7c]
0054176b  85f6                      TEST ESI,ESI
0054176d  7447                      JZ 0x005417b6
0054176f  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00541773  8bc6                      MOV EAX,ESI
00541775  7202                      JC 0x00541779
00541777  8b06                      MOV EAX,dword ptr [ESI]
00541779  b904deb100                MOV ECX,0xb1de04
0054177e  6690                      NOP
00541780  8a10                      MOV DL,byte ptr [EAX]
00541782  3a11                      CMP DL,byte ptr [ECX]
00541784  751a                      JNZ 0x005417a0
00541786  84d2                      TEST DL,DL
00541788  7412                      JZ 0x0054179c
0054178a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0054178d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00541790  750e                      JNZ 0x005417a0
00541792  83c002                    ADD EAX,0x2
00541795  83c102                    ADD ECX,0x2
00541798  84d2                      TEST DL,DL
0054179a  75e4                      JNZ 0x00541780
0054179c  33c0                      XOR EAX,EAX
0054179e  eb05                      JMP 0x005417a5
005417a0  1bc0                      SBB EAX,EAX
005417a2  83c801                    OR EAX,0x1
005417a5  85c0                      TEST EAX,EAX
005417a7  750d                      JNZ 0x005417b6
005417a9  384634                    CMP byte ptr [ESI + 0x34],AL
005417ac  742a                      JZ 0x005417d8
005417ae  38838c000000              CMP byte ptr [EBX + 0x8c],AL
005417b4  7522                      JNZ 0x005417d8
005417b6  6a01                      PUSH 0x1
005417b8  6804deb100                PUSH 0xb1de04
005417bd  8d4b48                    LEA ECX,[EBX + 0x48]
005417c0  e80b8eecff                CALL 0x0040a5d0
005417c5  84c0                      TEST AL,AL
005417c7  740f                      JZ 0x005417d8
005417c9  8d4b78                    LEA ECX,[EBX + 0x78]
005417cc  e8df89ecff                CALL 0x0040a1b0
005417d1  c6838c00000001            MOV byte ptr [EBX + 0x8c],0x1
005417d8  f30f108360030000          MOVSS XMM0,dword ptr [EBX + 0x360]
005417e0  0f57c9                    XORPS XMM1,XMM1
005417e3  0f2fc1                    COMISS XMM0,XMM1
005417e6  0f97c0                    SETA AL
005417e9  888348010000              MOV byte ptr [EBX + 0x148],AL
005417ef  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
005417f2  64890d00000000            MOV dword ptr FS:[0x0],ECX
005417f9  59                        POP ECX
005417fa  5f                        POP EDI
005417fb  5e                        POP ESI
005417fc  5b                        POP EBX
005417fd  8be5                      MOV ESP,EBP
005417ff  5d                        POP EBP
00541800  c3                        RET
