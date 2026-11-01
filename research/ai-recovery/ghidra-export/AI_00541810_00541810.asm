; J460 NPC AI 0x00541810 AI_00541810
; types=288
; identities=288.0.0
; entry=00541810
00541810  55                        PUSH EBP
00541811  8bec                      MOV EBP,ESP
00541813  83e4f8                    AND ESP,0xfffffff8
00541816  83ec18                    SUB ESP,0x18
00541819  56                        PUSH ESI
0054181a  57                        PUSH EDI
0054181b  8bf9                      MOV EDI,ECX
0054181d  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00541824  0f8587000000              JNZ 0x005418b1
0054182a  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00541834  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0054183e  e81dd71a00                CALL 0x006eef60
00541843  660f6ec0                  MOVD XMM0,EAX
00541847  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0054184b  c1e81f                    SHR EAX,0x1f
0054184e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00541857  660f5ac0                  CVTPD2PS XMM0,XMM0
0054185b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00541863  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0054186b  f30f58c0                  ADDSS XMM0,XMM0
0054186f  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00541875  e8c6bcedff                CALL 0x0041d540
0054187a  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00541880  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
00541886  e895bcedff                CALL 0x0041d520
0054188b  f30f104c2408              MOVSS XMM1,dword ptr [ESP + 0x8]
00541891  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00541899  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005418a1  c787a00b00003c000000      MOV dword ptr [EDI + 0xba0],0x3c
005418ab  5f                        POP EDI
005418ac  5e                        POP ESI
005418ad  8be5                      MOV ESP,EBP
005418af  5d                        POP EBP
005418b0  c3                        RET
005418b1  660f6e9fa00b0000          MOVD XMM3,dword ptr [EDI + 0xba0]
005418b9  0f57d2                    XORPS XMM2,XMM2
005418bc  f30f100db4a9ba00          MOVSS XMM1,dword ptr [0x00baa9b4]
005418c4  0f5bdb                    CVTDQ2PS XMM3,XMM3
005418c7  6a01                      PUSH 0x1
005418c9  e872751900                CALL 0x006d8e40
005418ce  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005418d6  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
005418de  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005418e4  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005418ec  83f804                    CMP EAX,0x4
005418ef  0f8599000000              JNZ 0x0054198e
005418f5  6a00                      PUSH 0x0
005418f7  6854bcb100                PUSH 0xb1bc54
005418fc  8d4f48                    LEA ECX,[EDI + 0x48]
005418ff  e87c8aecff                CALL 0x0040a380
00541904  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0054190b  0f8f7e020000              JG 0x00541b8f
00541911  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00541918  7429                      JZ 0x00541943
0054191a  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00541922  8bcf                      MOV ECX,EDI
00541924  6a07                      PUSH 0x7
00541926  6a00                      PUSH 0x0
00541928  e833951800                CALL 0x006cae60
0054192d  84c0                      TEST AL,AL
0054192f  7538                      JNZ 0x00541969
00541931  6a09                      PUSH 0x9
00541933  8bcf                      MOV ECX,EDI
00541935  e826691900                CALL 0x006d8260
0054193a  84c0                      TEST AL,AL
0054193c  752b                      JNZ 0x00541969
0054193e  e94c020000                JMP 0x00541b8f
00541943  e818d61a00                CALL 0x006eef60
00541948  33d2                      XOR EDX,EDX
0054194a  b90a000000                MOV ECX,0xa
0054194f  f7f1                      DIV ECX
00541951  85d2                      TEST EDX,EDX
00541953  0f8536020000              JNZ 0x00541b8f
00541959  8bcf                      MOV ECX,EDI
0054195b  e8c0521900                CALL 0x006d6c20
00541960  83f808                    CMP EAX,0x8
00541963  0f8d26020000              JGE 0x00541b8f
00541969  6a00                      PUSH 0x0
0054196b  6800020000                PUSH 0x200
00541970  8bcf                      MOV ECX,EDI
00541972  e8b95aedff                CALL 0x00417430
00541977  84c0                      TEST AL,AL
00541979  0f8510020000              JNZ 0x00541b8f
0054197f  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00541989  e901020000                JMP 0x00541b8f
0054198e  83f808                    CMP EAX,0x8
00541991  0f85f8010000              JNZ 0x00541b8f
00541997  6a00                      PUSH 0x0
00541999  680812b600                PUSH 0xb61208
0054199e  8d4f48                    LEA ECX,[EDI + 0x48]
005419a1  e8da89ecff                CALL 0x0040a380
005419a6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005419aa  0f84ae010000              JZ 0x00541b5e
005419b0  68dcd2b100                PUSH 0xb1d2dc
005419b5  8d4f78                    LEA ECX,[EDI + 0x78]
005419b8  e81394ecff                CALL 0x0040add0
005419bd  84c0                      TEST AL,AL
005419bf  0f848a010000              JZ 0x00541b4f
005419c5  51                        PUSH ECX
005419c6  c704240000803f            MOV dword ptr [ESP],0x3f800000
005419cd  6a00                      PUSH 0x0
005419cf  6a02                      PUSH 0x2
005419d1  51                        PUSH ECX
005419d2  c704240000803f            MOV dword ptr [ESP],0x3f800000
005419d9  8bcf                      MOV ECX,EDI
005419db  683e010000                PUSH 0x13e
005419e0  e8bb511900                CALL 0x006d6ba0
005419e5  e876d51a00                CALL 0x006eef60
005419ea  8bf0                      MOV ESI,EAX
005419ec  8d442418                  LEA EAX,[ESP + 0x18]
005419f0  50                        PUSH EAX
005419f1  e87ad61300                CALL 0x0067f070
005419f6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005419fc  83c404                    ADD ESP,0x4
005419ff  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00541a03  f30f590530a7ba00          MULSS XMM0,dword ptr [0x00baa730]
00541a0b  6a00                      PUSH 0x0
00541a0d  56                        PUSH ESI
00541a0e  6a00                      PUSH 0x0
00541a10  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00541a18  57                        PUSH EDI
00541a19  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00541a1f  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00541a24  8d442420                  LEA EAX,[ESP + 0x20]
00541a28  f30f590530a7ba00          MULSS XMM0,dword ptr [0x00baa730]
00541a30  50                        PUSH EAX
00541a31  8d44241c                  LEA EAX,[ESP + 0x1c]
00541a35  50                        PUSH EAX
00541a36  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
00541a3e  6a00                      PUSH 0x0
00541a40  6800010000                PUSH 0x100
00541a45  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00541a4b  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00541a53  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00541a5b  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
00541a61  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00541a69  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
00541a71  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00541a77  e894c91b00                CALL 0x006fe410
00541a7c  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00541a82  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00541a89  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00541a8f  e8ccd41a00                CALL 0x006eef60
00541a94  33d2                      XOR EDX,EDX
00541a96  b903000000                MOV ECX,0x3
00541a9b  f7f1                      DIV ECX
00541a9d  85d2                      TEST EDX,EDX
00541a9f  0f85aa000000              JNZ 0x00541b4f
00541aa5  e8b6d41a00                CALL 0x006eef60
00541aaa  8bf0                      MOV ESI,EAX
00541aac  8d442418                  LEA EAX,[ESP + 0x18]
00541ab0  50                        PUSH EAX
00541ab1  e8bad51300                CALL 0x0067f070
00541ab6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00541abc  83c404                    ADD ESP,0x4
00541abf  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00541ac3  f30f590530a7ba00          MULSS XMM0,dword ptr [0x00baa730]
00541acb  6a00                      PUSH 0x0
00541acd  56                        PUSH ESI
00541ace  6a00                      PUSH 0x0
00541ad0  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00541ad8  57                        PUSH EDI
00541ad9  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00541adf  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00541ae4  8d442420                  LEA EAX,[ESP + 0x20]
00541ae8  f30f590530a7ba00          MULSS XMM0,dword ptr [0x00baa730]
00541af0  50                        PUSH EAX
00541af1  8d44241c                  LEA EAX,[ESP + 0x1c]
00541af5  50                        PUSH EAX
00541af6  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
00541afe  6a00                      PUSH 0x0
00541b00  6800010000                PUSH 0x100
00541b05  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00541b0b  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00541b13  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00541b1b  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
00541b21  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00541b29  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
00541b31  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00541b37  e8d4c81b00                CALL 0x006fe410
00541b3c  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00541b42  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00541b49  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00541b4f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00541b53  7409                      JZ 0x00541b5e
00541b55  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00541b5c  7531                      JNZ 0x00541b8f
00541b5e  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00541b65  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00541b6f  7407                      JZ 0x00541b78
00541b71  ba5a000000                MOV EDX,0x5a
00541b76  eb11                      JMP 0x00541b89
00541b78  e8e3d31a00                CALL 0x006eef60
00541b7d  33d2                      XOR EDX,EDX
00541b7f  b91e000000                MOV ECX,0x1e
00541b84  f7f1                      DIV ECX
00541b86  83c25a                    ADD EDX,0x5a
00541b89  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00541b8f  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
00541b95  85d2                      TEST EDX,EDX
00541b97  7e1a                      JLE 0x00541bb3
00541b99  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00541ba1  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00541ba9  2bc8                      SUB ECX,EAX
00541bab  03ca                      ADD ECX,EDX
00541bad  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
00541bb3  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00541bb9  2500020000                AND EAX,0x200
00541bbe  83c800                    OR EAX,0x0
00541bc1  741c                      JZ 0x00541bdf
00541bc3  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00541bca  7513                      JNZ 0x00541bdf
00541bcc  6a00                      PUSH 0x0
00541bce  8d8f14040000              LEA ECX,[EDI + 0x414]
00541bd4  e827472a00                CALL 0x007e6300
00541bd9  5f                        POP EDI
00541bda  5e                        POP ESI
00541bdb  8be5                      MOV ESP,EBP
00541bdd  5d                        POP EBP
00541bde  c3                        RET
00541bdf  f30f1015f8a1ba00          MOVSS XMM2,dword ptr [0x00baa1f8]
00541be7  0f57c0                    XORPS XMM0,XMM0
00541bea  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
00541bf1  f30f100d14adba00          MOVSS XMM1,dword ptr [0x00baad14]
00541bf9  0f28da                    MOVAPS XMM3,XMM2
00541bfc  f30f11542408              MOVSS dword ptr [ESP + 0x8],XMM2
00541c02  f30f115c2410              MOVSS dword ptr [ESP + 0x10],XMM3
00541c08  7609                      JBE 0x00541c13
00541c0a  0f28d1                    MOVAPS XMM2,XMM1
00541c0d  f30f11542408              MOVSS dword ptr [ESP + 0x8],XMM2
00541c13  0f2f8764030000            COMISS XMM0,dword ptr [EDI + 0x364]
00541c1a  7609                      JBE 0x00541c25
00541c1c  0f28d9                    MOVAPS XMM3,XMM1
00541c1f  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
00541c25  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00541c2c  7455                      JZ 0x00541c83
00541c2e  8d442418                  LEA EAX,[ESP + 0x18]
00541c32  0f57d2                    XORPS XMM2,XMM2
00541c35  50                        PUSH EAX
00541c36  8bcf                      MOV ECX,EDI
00541c38  e893661900                CALL 0x006d82d0
00541c3d  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
00541c43  8bf0                      MOV ESI,EAX
00541c45  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
00541c4b  f30f59c0                  MULSS XMM0,XMM0
00541c4f  f30f59c9                  MULSS XMM1,XMM1
00541c53  f30f58c1                  ADDSS XMM0,XMM1
00541c57  e8f43defff                CALL 0x00435a50
00541c5c  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00541c64  f30f105c2410              MOVSS XMM3,dword ptr [ESP + 0x10]
00541c6a  0f28d0                    MOVAPS XMM2,XMM0
00541c6d  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
00541c72  f30f5916                  MULSS XMM2,dword ptr [ESI]
00541c76  f30f58d8                  ADDSS XMM3,XMM0
00541c7a  0f57c0                    XORPS XMM0,XMM0
00541c7d  f30f58542408              ADDSS XMM2,dword ptr [ESP + 0x8]
00541c83  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
00541c8b  0f2ee0                    UCOMISS XMM4,XMM0
00541c8e  9f                        LAHF
00541c8f  f6c444                    TEST AH,0x44
00541c92  7b3b                      JNP 0x00541ccf
00541c94  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00541c9c  0f28c1                    MOVAPS XMM0,XMM1
00541c9f  f30f59cb                  MULSS XMM1,XMM3
00541ca3  f30f59c2                  MULSS XMM0,XMM2
00541ca7  f30f5ecc                  DIVSS XMM1,XMM4
00541cab  f30f5ec4                  DIVSS XMM0,XMM4
00541caf  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00541cb7  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00541cbf  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00541cc7  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00541ccf  5f                        POP EDI
00541cd0  5e                        POP ESI
00541cd1  8be5                      MOV ESP,EBP
00541cd3  5d                        POP EBP
00541cd4  c3                        RET
