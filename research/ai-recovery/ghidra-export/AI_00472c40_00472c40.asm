; J460 NPC AI 0x00472c40 AI_00472c40
; types=74,75,76
; identities=74.0.0,75.0.0,76.0.0
; entry=00472c40
00472c40  55                        PUSH EBP
00472c41  8bec                      MOV EBP,ESP
00472c43  83e4f8                    AND ESP,0xfffffff8
00472c46  81ec18010000              SUB ESP,0x118
00472c4c  a1b493bf00                MOV EAX,[0x00bf93b4]
00472c51  33c4                      XOR EAX,ESP
00472c53  89842414010000            MOV dword ptr [ESP + 0x114],EAX
00472c5a  56                        PUSH ESI
00472c5b  57                        PUSH EDI
00472c5c  8bf9                      MOV EDI,ECX
00472c5e  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00472c65  0f85a0000000              JNZ 0x00472d0b
00472c6b  837f284a                  CMP dword ptr [EDI + 0x28],0x4a
00472c6f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00472c79  0f85e3140000              JNZ 0x00474162
00472c7f  a17816c700                MOV EAX,[0x00c71678]
00472c84  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00472c8a  83780805                  CMP dword ptr [EAX + 0x8],0x5
00472c8e  0f85ce140000              JNZ 0x00474162
00472c94  83b8b01b000010            CMP dword ptr [EAX + 0x1bb0],0x10
00472c9b  0f85c1140000              JNZ 0x00474162
00472ca1  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00472ca7  8d4f48                    LEA ECX,[EDI + 0x48]
00472caa  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
00472cb1  6a00                      PUSH 0x0
00472cb3  68e4e0b100                PUSH 0xb1e0e4
00472cb8  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00472cbe  e8bd76f9ff                CALL 0x0040a380
00472cc3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00472cc7  7410                      JZ 0x00472cd9
00472cc9  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00472ccc  8d4f78                    LEA ECX,[EDI + 0x78]
00472ccf  8b4030                    MOV EAX,dword ptr [EAX + 0x30]
00472cd2  48                        DEC EAX
00472cd3  50                        PUSH EAX
00472cd4  e82760f9ff                CALL 0x00408d00
00472cd9  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
00472ce3  c787640b000002000000      MOV dword ptr [EDI + 0xb64],0x2
00472ced  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00472cf7  5f                        POP EDI
00472cf8  5e                        POP ESI
00472cf9  8b8c2414010000            MOV ECX,dword ptr [ESP + 0x114]
00472d00  33cc                      XOR ECX,ESP
00472d02  e824c46700                CALL 0x00aef12b
00472d07  8be5                      MOV ESP,EBP
00472d09  5d                        POP EBP
00472d0a  c3                        RET
00472d0b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00472d13  8d442418                  LEA EAX,[ESP + 0x18]
00472d17  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00472d1f  51                        PUSH ECX
00472d20  c7042400000000            MOV dword ptr [ESP],0x0
00472d27  50                        PUSH EAX
00472d28  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00472d30  e80bbf2400                CALL 0x006bec40
00472d35  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
00472d3d  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00472d43  0f28d3                    MOVAPS XMM2,XMM3
00472d46  8d7748                    LEA ESI,[EDI + 0x48]
00472d49  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
00472d50  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00472d54  f30f5c01                  SUBSS XMM0,dword ptr [ECX]
00472d58  89742428                  MOV dword ptr [ESP + 0x28],ESI
00472d5c  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
00472d62  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00472d67  f30f5c4104                SUBSS XMM0,dword ptr [ECX + 0x4]
00472d6c  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00472d72  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00472d78  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00472d80  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00472d87  0f2fd0                    COMISS XMM2,XMM0
00472d8a  763f                      JBE 0x00472dcb
00472d8c  0f57c0                    XORPS XMM0,XMM0
00472d8f  8bce                      MOV ECX,ESI
00472d91  0f2fc3                    COMISS XMM0,XMM3
00472d94  6a00                      PUSH 0x0
00472d96  0f97c0                    SETA AL
00472d99  88442413                  MOV byte ptr [ESP + 0x13],AL
00472d9d  888748010000              MOV byte ptr [EDI + 0x148],AL
00472da3  e87884f9ff                CALL 0x0040b220
00472da8  8a4c240f                  MOV CL,byte ptr [ESP + 0xf]
00472dac  6a04                      PUSH 0x4
00472dae  884832                    MOV byte ptr [EAX + 0x32],CL
00472db1  8bce                      MOV ECX,ESI
00472db3  8a8748010000              MOV AL,byte ptr [EDI + 0x148]
00472db9  88442413                  MOV byte ptr [ESP + 0x13],AL
00472dbd  e85e84f9ff                CALL 0x0040b220
00472dc2  8a4c240f                  MOV CL,byte ptr [ESP + 0xf]
00472dc6  884832                    MOV byte ptr [EAX + 0x32],CL
00472dc9  eb04                      JMP 0x00472dcf
00472dcb  89742428                  MOV dword ptr [ESP + 0x28],ESI
00472dcf  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00472dd2  83f84a                    CMP EAX,0x4a
00472dd5  0f85ab080000              JNZ 0x00473686
00472ddb  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00472de3  8d7748                    LEA ESI,[EDI + 0x48]
00472de6  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00472dee  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00472df6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00472dfa  740d                      JZ 0x00472e09
00472dfc  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00472e03  0f853f020000              JNZ 0x00473048
00472e09  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00472e0f  83f806                    CMP EAX,0x6
00472e12  7519                      JNZ 0x00472e2d
00472e14  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
00472e1e  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
00472e28  e91b020000                JMP 0x00473048
00472e2d  83f810                    CMP EAX,0x10
00472e30  0f8508020000              JNZ 0x0047303e
00472e36  6800000010                PUSH 0x10000000
00472e3b  6a00                      PUSH 0x0
00472e3d  8bcf                      MOV ECX,EDI
00472e3f  e8ec45faff                CALL 0x00417430
00472e44  84c0                      TEST AL,AL
00472e46  7416                      JZ 0x00472e5e
00472e48  6800000020                PUSH 0x20000000
00472e4d  6a00                      PUSH 0x0
00472e4f  8bcf                      MOV ECX,EDI
00472e51  e8da45faff                CALL 0x00417430
00472e56  84c0                      TEST AL,AL
00472e58  0f85b0010000              JNZ 0x0047300e
00472e5e  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00472e64  e887623700                CALL 0x007e90f0
00472e69  8bd0                      MOV EDX,EAX
00472e6b  8d4c2434                  LEA ECX,[ESP + 0x34]
00472e6f  e85cc22000                CALL 0x0067f0d0
00472e74  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00472e7a  e871623700                CALL 0x007e90f0
00472e7f  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
00472e85  f30f5905ccadba00          MULSS XMM0,dword ptr [0x00baadcc]
00472e8d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00472e93  f30f104c2434              MOVSS XMM1,dword ptr [ESP + 0x34]
00472e99  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
00472ea1  6a00                      PUSH 0x0
00472ea3  f30f1054243c              MOVSS XMM2,dword ptr [ESP + 0x3c]
00472ea9  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
00472eb1  50                        PUSH EAX
00472eb2  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00472eb8  8d442430                  LEA EAX,[ESP + 0x30]
00472ebc  f30f10442440              MOVSS XMM0,dword ptr [ESP + 0x40]
00472ec2  f30f5905ccadba00          MULSS XMM0,dword ptr [0x00baadcc]
00472eca  6a00                      PUSH 0x0
00472ecc  57                        PUSH EDI
00472ecd  50                        PUSH EAX
00472ece  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00472ed4  8d442434                  LEA EAX,[ESP + 0x34]
00472ed8  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00472ee0  f30f5cc1                  SUBSS XMM0,XMM1
00472ee4  f30f114c2444              MOVSS dword ptr [ESP + 0x44],XMM1
00472eea  50                        PUSH EAX
00472eeb  6a00                      PUSH 0x0
00472eed  6a4b                      PUSH 0x4b
00472eef  f30f11542434              MOVSS dword ptr [ESP + 0x34],XMM2
00472ef5  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00472efb  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00472f03  f30f5cc2                  SUBSS XMM0,XMM2
00472f07  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
00472f0d  e8feb42800                CALL 0x006fe410
00472f12  6800000010                PUSH 0x10000000
00472f17  6a00                      PUSH 0x0
00472f19  89442430                  MOV dword ptr [ESP + 0x30],EAX
00472f1d  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00472f23  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00472f2a  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00472f30  8bcf                      MOV ECX,EDI
00472f32  e8f944faff                CALL 0x00417430
00472f37  84c0                      TEST AL,AL
00472f39  7418                      JZ 0x00472f53
00472f3b  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
00472f3f  c780800300000000f041      MOV dword ptr [EAX + 0x380],0x41f00000
00472f49  c780840300000000f041      MOV dword ptr [EAX + 0x384],0x41f00000
00472f53  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00472f59  e892613700                CALL 0x007e90f0
00472f5e  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
00472f64  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
00472f6c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00472f72  6a00                      PUSH 0x0
00472f74  50                        PUSH EAX
00472f75  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
00472f7b  8d442428                  LEA EAX,[ESP + 0x28]
00472f7f  f30f10442440              MOVSS XMM0,dword ptr [ESP + 0x40]
00472f85  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
00472f8d  6a00                      PUSH 0x0
00472f8f  57                        PUSH EDI
00472f90  50                        PUSH EAX
00472f91  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00472f97  8d44243c                  LEA EAX,[ESP + 0x3c]
00472f9b  f30f10442444              MOVSS XMM0,dword ptr [ESP + 0x44]
00472fa1  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00472fa9  50                        PUSH EAX
00472faa  6a00                      PUSH 0x0
00472fac  6a4b                      PUSH 0x4b
00472fae  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
00472fb4  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
00472fba  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00472fc2  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
00472fc8  e843b42800                CALL 0x006fe410
00472fcd  6800000010                PUSH 0x10000000
00472fd2  6a00                      PUSH 0x0
00472fd4  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
00472fd8  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00472fde  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00472fe5  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00472feb  8bcf                      MOV ECX,EDI
00472fed  e83e44faff                CALL 0x00417430
00472ff2  84c0                      TEST AL,AL
00472ff4  7418                      JZ 0x0047300e
00472ff6  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
00472ffa  c780800300000000f041      MOV dword ptr [EAX + 0x380],0x41f00000
00473004  c780840300000000f041      MOV dword ptr [EAX + 0x384],0x41f00000
0047300e  8d4c2444                  LEA ECX,[ESP + 0x44]
00473012  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
00473019  e85241f9ff                CALL 0x00407170
0047301e  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00473026  8bcf                      MOV ECX,EDI
00473028  50                        PUSH EAX
00473029  8d873c030000              LEA EAX,[EDI + 0x33c]
0047302f  50                        PUSH EAX
00473030  e88b362400                CALL 0x006b66c0
00473035  8bcf                      MOV ECX,EDI
00473037  e884152400                CALL 0x006b45c0
0047303c  eb0a                      JMP 0x00473048
0047303e  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00473048  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0047304f  7448                      JZ 0x00473099
00473051  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
00473058  743f                      JZ 0x00473099
0047305a  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00473060  838f6801000001            OR dword ptr [EDI + 0x168],0x1
00473067  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0047306e  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00473078  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00473082  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
0047308c  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00473093  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00473099  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0047309f  83c0fe                    ADD EAX,-0x2
004730a2  83f80e                    CMP EAX,0xe
004730a5  0f87b1100000              JA 0x0047415c
004730ab  0fb68094414700            MOVZX EAX,byte ptr [EAX + 0x474194]
004730b2  ff248578414700            JMP dword ptr [EAX*0x4 + 0x474178]
00473686  83f84b                    CMP EAX,0x4b
00473689  0f8539060000              JNZ 0x00473cc8
0047368f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00473697  8d7748                    LEA ESI,[EDI + 0x48]
0047369a  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004736a2  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004736aa  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004736ae  740d                      JZ 0x004736bd
004736b0  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004736b7  0f85fd010000              JNZ 0x004738ba
004736bd  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
004736c4  0f85e6010000              JNZ 0x004738b0
004736ca  6800000010                PUSH 0x10000000
004736cf  6a00                      PUSH 0x0
004736d1  8bcf                      MOV ECX,EDI
004736d3  e8583dfaff                CALL 0x00417430
004736d8  84c0                      TEST AL,AL
004736da  7416                      JZ 0x004736f2
004736dc  6800000020                PUSH 0x20000000
004736e1  6a00                      PUSH 0x0
004736e3  8bcf                      MOV ECX,EDI
004736e5  e8463dfaff                CALL 0x00417430
004736ea  84c0                      TEST AL,AL
004736ec  0f858e010000              JNZ 0x00473880
004736f2  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
004736f8  e8f3593700                CALL 0x007e90f0
004736fd  8bd0                      MOV EDX,EAX
004736ff  8d4c2420                  LEA ECX,[ESP + 0x20]
00473703  e8c8b92000                CALL 0x0067f0d0
00473708  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
0047370e  e8dd593700                CALL 0x007e90f0
00473713  f30f10542420              MOVSS XMM2,dword ptr [ESP + 0x20]
00473719  f30f105c2424              MOVSS XMM3,dword ptr [ESP + 0x24]
0047371f  0f28c2                    MOVAPS XMM0,XMM2
00473722  f30f5905ccadba00          MULSS XMM0,dword ptr [0x00baadcc]
0047372a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00473730  f30f591534a8ba00          MULSS XMM2,dword ptr [0x00baa834]
00473738  6a00                      PUSH 0x0
0047373a  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00473740  0f28c3                    MOVAPS XMM0,XMM3
00473743  f30f5905ccadba00          MULSS XMM0,dword ptr [0x00baadcc]
0047374b  50                        PUSH EAX
0047374c  f30f591d34a8ba00          MULSS XMM3,dword ptr [0x00baa834]
00473754  8d44243c                  LEA EAX,[ESP + 0x3c]
00473758  6a00                      PUSH 0x0
0047375a  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
00473760  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00473768  f30f5cc2                  SUBSS XMM0,XMM2
0047376c  f30f1154243c              MOVSS dword ptr [ESP + 0x3c],XMM2
00473772  57                        PUSH EDI
00473773  50                        PUSH EAX
00473774  8d44242c                  LEA EAX,[ESP + 0x2c]
00473778  f30f115c243c              MOVSS dword ptr [ESP + 0x3c],XMM3
0047377e  50                        PUSH EAX
0047377f  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00473785  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047378d  f30f5cc3                  SUBSS XMM0,XMM3
00473791  6a00                      PUSH 0x0
00473793  6a4c                      PUSH 0x4c
00473795  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
0047379b  e870ac2800                CALL 0x006fe410
004737a0  6800000010                PUSH 0x10000000
004737a5  6a00                      PUSH 0x0
004737a7  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
004737ab  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
004737b1  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
004737b8  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
004737be  8bcf                      MOV ECX,EDI
004737c0  e86b3cfaff                CALL 0x00417430
004737c5  84c0                      TEST AL,AL
004737c7  7418                      JZ 0x004737e1
004737c9  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
004737cd  c780800300000000a041      MOV dword ptr [EAX + 0x380],0x41a00000
004737d7  c780840300000000a041      MOV dword ptr [EAX + 0x384],0x41a00000
004737e1  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
004737e7  e804593700                CALL 0x007e90f0
004737ec  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
004737f2  f30f104c2428              MOVSS XMM1,dword ptr [ESP + 0x28]
004737f8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004737fe  6a00                      PUSH 0x0
00473800  50                        PUSH EAX
00473801  6a00                      PUSH 0x0
00473803  57                        PUSH EDI
00473804  8d442428                  LEA EAX,[ESP + 0x28]
00473808  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0047380e  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00473816  50                        PUSH EAX
00473817  f30f114c2430              MOVSS dword ptr [ESP + 0x30],XMM1
0047381d  8d442434                  LEA EAX,[ESP + 0x34]
00473821  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00473829  50                        PUSH EAX
0047382a  6a00                      PUSH 0x0
0047382c  6a4c                      PUSH 0x4c
0047382e  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00473834  f30f114c2444              MOVSS dword ptr [ESP + 0x44],XMM1
0047383a  e8d1ab2800                CALL 0x006fe410
0047383f  6800000010                PUSH 0x10000000
00473844  6a00                      PUSH 0x0
00473846  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0047384a  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00473850  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00473857  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0047385d  8bcf                      MOV ECX,EDI
0047385f  e8cc3bfaff                CALL 0x00417430
00473864  84c0                      TEST AL,AL
00473866  7418                      JZ 0x00473880
00473868  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
0047386c  c780800300000000a041      MOV dword ptr [EAX + 0x380],0x41a00000
00473876  c780840300000000a041      MOV dword ptr [EAX + 0x384],0x41a00000
00473880  8d4c2444                  LEA ECX,[ESP + 0x44]
00473884  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
0047388b  e8e038f9ff                CALL 0x00407170
00473890  f30f101580a3ba00          MOVSS XMM2,dword ptr [0x00baa380]
00473898  8bcf                      MOV ECX,EDI
0047389a  50                        PUSH EAX
0047389b  8d873c030000              LEA EAX,[EDI + 0x33c]
004738a1  50                        PUSH EAX
004738a2  e8192e2400                CALL 0x006b66c0
004738a7  8bcf                      MOV ECX,EDI
004738a9  e8120d2400                CALL 0x006b45c0
004738ae  eb0a                      JMP 0x004738ba
004738b0  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004738ba  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004738c1  7448                      JZ 0x0047390b
004738c3  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
004738ca  743f                      JZ 0x0047390b
004738cc  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004738d2  838f6801000001            OR dword ptr [EDI + 0x168],0x1
004738d9  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
004738e0  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004738ea  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004738f4  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
004738fe  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00473905  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0047390b  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00473911  83c0fd                    ADD EAX,-0x3
00473914  83f80d                    CMP EAX,0xd
00473917  0f873f080000              JA 0x0047415c
0047391d  0fb680b8414700            MOVZX EAX,byte ptr [EAX + 0x4741b8]
00473924  ff2485a4414700            JMP dword ptr [EAX*0x4 + 0x4741a4]
00473cc8  83f84c                    CMP EAX,0x4c
00473ccb  0f858b040000              JNZ 0x0047415c
00473cd1  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00473cd9  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00473ce1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00473ce9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00473ced  740d                      JZ 0x00473cfc
00473cef  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00473cf6  0f85b9000000              JNZ 0x00473db5
00473cfc  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
00473d03  0f85a2000000              JNZ 0x00473dab
00473d09  6800000010                PUSH 0x10000000
00473d0e  6a00                      PUSH 0x0
00473d10  8bcf                      MOV ECX,EDI
00473d12  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
00473d19  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
00473d20  e80b37faff                CALL 0x00417430
00473d25  84c0                      TEST AL,AL
00473d27  7412                      JZ 0x00473d3b
00473d29  6800000020                PUSH 0x20000000
00473d2e  6a00                      PUSH 0x0
00473d30  8bcf                      MOV ECX,EDI
00473d32  e8f936faff                CALL 0x00417430
00473d37  84c0                      TEST AL,AL
00473d39  7567                      JNZ 0x00473da2
00473d3b  e820b22700                CALL 0x006eef60
00473d40  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00473d46  6a00                      PUSH 0x0
00473d48  50                        PUSH EAX
00473d49  6a00                      PUSH 0x0
00473d4b  57                        PUSH EDI
00473d4c  6840b6c700                PUSH 0xc7b640
00473d51  8d873c030000              LEA EAX,[EDI + 0x33c]
00473d57  50                        PUSH EAX
00473d58  6a00                      PUSH 0x0
00473d5a  6a4d                      PUSH 0x4d
00473d5c  e8afa62800                CALL 0x006fe410
00473d61  6800000010                PUSH 0x10000000
00473d66  6a00                      PUSH 0x0
00473d68  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
00473d6c  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00473d72  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00473d79  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00473d7f  8bcf                      MOV ECX,EDI
00473d81  e8aa36faff                CALL 0x00417430
00473d86  84c0                      TEST AL,AL
00473d88  7418                      JZ 0x00473da2
00473d8a  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
00473d8e  c780800300000000a040      MOV dword ptr [EAX + 0x380],0x40a00000
00473d98  c780840300000000a040      MOV dword ptr [EAX + 0x384],0x40a00000
00473da2  8bcf                      MOV ECX,EDI
00473da4  e817082400                CALL 0x006b45c0
00473da9  eb0a                      JMP 0x00473db5
00473dab  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00473db5  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00473dbc  0f84a8000000              JZ 0x00473e6a
00473dc2  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
00473dc9  0f849b000000              JZ 0x00473e6a
00473dcf  8d4c2444                  LEA ECX,[ESP + 0x44]
00473dd3  e89833f9ff                CALL 0x00407170
00473dd8  6840b6c700                PUSH 0xc7b640
00473ddd  50                        PUSH EAX
00473dde  8d442420                  LEA EAX,[ESP + 0x20]
00473de2  c744242000000000          MOV dword ptr [ESP + 0x20],0x0
00473dea  50                        PUSH EAX
00473deb  8d973c030000              LEA EDX,[EDI + 0x33c]
00473df1  c7442428000020c1          MOV dword ptr [ESP + 0x28],0xc1200000
00473df9  b903000000                MOV ECX,0x3
00473dfe  e8ed3e2600                CALL 0x006d7cf0
00473e03  83c40c                    ADD ESP,0xc
00473e06  89442414                  MOV dword ptr [ESP + 0x14],EAX
00473e0a  8bc8                      MOV ECX,EAX
00473e0c  8b10                      MOV EDX,dword ptr [EAX]
00473e0e  ff520c                    CALL dword ptr [EDX + 0xc]
00473e11  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
00473e15  83797c00                  CMP dword ptr [ECX + 0x7c],0x0
00473e19  7410                      JZ 0x00473e2b
00473e1b  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
00473e23  83c178                    ADD ECX,0x78
00473e26  e8d54ff9ff                CALL 0x00408e00
00473e2b  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00473e31  838f6801000001            OR dword ptr [EDI + 0x168],0x1
00473e38  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
00473e3f  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00473e49  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00473e53  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
00473e5d  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00473e64  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00473e6a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00473e70  83c0fd                    ADD EAX,-0x3
00473e73  83f80d                    CMP EAX,0xd
00473e76  0f87ca020000              JA 0x00474146
00473e7c  0fb680dc414700            MOVZX EAX,byte ptr [EAX + 0x4741dc]
00473e83  ff2485c8414700            JMP dword ptr [EAX*0x4 + 0x4741c8]
00474146  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
0047414d  740d                      JZ 0x0047415c
0047414f  6a00                      PUSH 0x0
00474151  8d8f14040000              LEA ECX,[EDI + 0x414]
00474157  e8a4213700                CALL 0x007e6300
0047415c  ff8710040000              INC dword ptr [EDI + 0x410]
00474162  8b8c241c010000            MOV ECX,dword ptr [ESP + 0x11c]
00474169  5f                        POP EDI
0047416a  5e                        POP ESI
0047416b  33cc                      XOR ECX,ESP
0047416d  e8b9af6700                CALL 0x00aef12b
00474172  8be5                      MOV ESP,EBP
00474174  5d                        POP EBP
00474175  c3                        RET
