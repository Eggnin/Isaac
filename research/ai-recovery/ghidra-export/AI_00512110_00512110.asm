; J460 NPC AI 0x00512110 AI_00512110
; types=32,279,301
; identities=279.0.0,301.0.0,32.0.0
; entry=00512110
00512110  55                        PUSH EBP
00512111  8bec                      MOV EBP,ESP
00512113  83e4f8                    AND ESP,0xfffffff8
00512116  81ec90000000              SUB ESP,0x90
0051211c  a1b493bf00                MOV EAX,[0x00bf93b4]
00512121  33c4                      XOR EAX,ESP
00512123  8984248c000000            MOV dword ptr [ESP + 0x8c],EAX
0051212a  56                        PUSH ESI
0051212b  57                        PUSH EDI
0051212c  8bf9                      MOV EDI,ECX
0051212e  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00512135  757e                      JNZ 0x005121b5
00512137  817f282d010000            CMP dword ptr [EDI + 0x28],0x12d
0051213e  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00512148  0f851e0f0000              JNZ 0x0051306c
0051214e  0f281530c0ba00            MOVAPS XMM2,xmmword ptr [0x00bac030]
00512155  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0051215b  8d44243c                  LEA EAX,[ESP + 0x3c]
0051215f  c744245c00000000          MOV dword ptr [ESP + 0x5c],0x0
00512167  c7442460cac8483e          MOV dword ptr [ESP + 0x60],0x3e48c8ca
0051216f  0f57c9                    XORPS XMM1,XMM1
00512172  c744246400000000          MOV dword ptr [ESP + 0x64],0x0
0051217a  3bc8                      CMP ECX,EAX
0051217c  7419                      JZ 0x00512197
0051217e  f30f7e44245c              MOVQ XMM0,qword ptr [ESP + 0x5c]
00512184  8b442464                  MOV EAX,dword ptr [ESP + 0x64]
00512188  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0051218d  0f1111                    MOVUPS xmmword ptr [ECX],XMM2
00512190  894128                    MOV dword ptr [ECX + 0x28],EAX
00512193  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
00512197  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
005121a1  5f                        POP EDI
005121a2  5e                        POP ESI
005121a3  8b8c248c000000            MOV ECX,dword ptr [ESP + 0x8c]
005121aa  33cc                      XOR ECX,ESP
005121ac  e87acf5d00                CALL 0x00aef12b
005121b1  8be5                      MOV ESP,EBP
005121b3  5d                        POP EBP
005121b4  c3                        RET
005121b5  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005121bb  2500400000                AND EAX,0x4000
005121c0  83c800                    OR EAX,0x0
005121c3  0f85a5000000              JNZ 0x0051226e
005121c9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005121cf  e87cb11e00                CALL 0x006fd350
005121d4  84c0                      TEST AL,AL
005121d6  0f8592000000              JNZ 0x0051226e
005121dc  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
005121e4  0f57d2                    XORPS XMM2,XMM2
005121e7  f30f58c2                  ADDSS XMM0,XMM2
005121eb  f30f5e0584adba00          DIVSS XMM0,dword ptr [0x00baad84]
005121f3  f30f2cc8                  CVTTSS2SI ECX,XMM0
005121f7  f30f1087a0030000          MOVSS XMM0,dword ptr [EDI + 0x3a0]
005121ff  f30f58c2                  ADDSS XMM0,XMM2
00512203  f30f5e0584adba00          DIVSS XMM0,dword ptr [0x00baad84]
0051220b  f30f2cc0                  CVTTSS2SI EAX,XMM0
0051220f  2bc1                      SUB EAX,ECX
00512211  745b                      JZ 0x0051226e
00512213  e848cd1d00                CALL 0x006eef60
00512218  51                        PUSH ECX
00512219  8bcf                      MOV ECX,EDI
0051221b  660f6ec0                  MOVD XMM0,EAX
0051221f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00512223  c1e81f                    SHR EAX,0x1f
00512226  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0051222f  660f5ac0                  CVTPD2PS XMM0,XMM0
00512233  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0051223b  f30f590570a2ba00          MULSS XMM0,dword ptr [0x00baa270]
00512243  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0051224b  f30f110424                MOVSS dword ptr [ESP],XMM0
00512250  e87b421a00                CALL 0x006b64d0
00512255  6a01                      PUSH 0x1
00512257  6a00                      PUSH 0x0
00512259  68ff000000                PUSH 0xff
0051225e  8b10                      MOV EDX,dword ptr [EAX]
00512260  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00512266  6aff                      PUSH -0x1
00512268  51                        PUSH ECX
00512269  8bc8                      MOV ECX,EAX
0051226b  ff523c                    CALL dword ptr [EDX + 0x3c]
0051226e  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
00512276  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0051227e  f30f5cc1                  SUBSS XMM0,XMM1
00512282  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
0051228a  a17816c700                MOV EAX,[0x00c71678]
0051228f  f30f5ec1                  DIVSS XMM0,XMM1
00512293  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00512299  f30f58c2                  ADDSS XMM0,XMM2
0051229d  f30f2cd0                  CVTTSS2SI EDX,XMM0
005122a1  85d2                      TEST EDX,EDX
005122a3  7850                      JS 0x005122f5
005122a5  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
005122a8  3bd6                      CMP EDX,ESI
005122aa  7d49                      JGE 0x005122f5
005122ac  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005122b4  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
005122bc  f30f5ec1                  DIVSS XMM0,XMM1
005122c0  f30f58c2                  ADDSS XMM0,XMM2
005122c4  f30f2cc0                  CVTTSS2SI EAX,XMM0
005122c8  85c0                      TEST EAX,EAX
005122ca  7829                      JS 0x005122f5
005122cc  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
005122cf  7d24                      JGE 0x005122f5
005122d1  0fafc6                    IMUL EAX,ESI
005122d4  03c2                      ADD EAX,EDX
005122d6  3dbf010000                CMP EAX,0x1bf
005122db  7718                      JA 0x005122f5
005122dd  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
005122e8  7f0b                      JG 0x005122f5
005122ea  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
005122f5  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
005122f8  85f6                      TEST ESI,ESI
005122fa  744f                      JZ 0x0051234b
005122fc  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00512300  8bc6                      MOV EAX,ESI
00512302  7202                      JC 0x00512306
00512304  8b06                      MOV EAX,dword ptr [ESI]
00512306  b9e4dcb100                MOV ECX,0xb1dce4
0051230b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00512310  8a10                      MOV DL,byte ptr [EAX]
00512312  3a11                      CMP DL,byte ptr [ECX]
00512314  751a                      JNZ 0x00512330
00512316  84d2                      TEST DL,DL
00512318  7412                      JZ 0x0051232c
0051231a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0051231d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00512320  750e                      JNZ 0x00512330
00512322  83c002                    ADD EAX,0x2
00512325  83c102                    ADD ECX,0x2
00512328  84d2                      TEST DL,DL
0051232a  75e4                      JNZ 0x00512310
0051232c  33c0                      XOR EAX,EAX
0051232e  eb05                      JMP 0x00512335
00512330  1bc0                      SBB EAX,EAX
00512332  83c801                    OR EAX,0x1
00512335  85c0                      TEST EAX,EAX
00512337  7512                      JNZ 0x0051234b
00512339  384634                    CMP byte ptr [ESI + 0x34],AL
0051233c  742e                      JZ 0x0051236c
0051233e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00512344  8d7748                    LEA ESI,[EDI + 0x48]
00512347  7523                      JNZ 0x0051236c
00512349  eb03                      JMP 0x0051234e
0051234b  8d7748                    LEA ESI,[EDI + 0x48]
0051234e  6a01                      PUSH 0x1
00512350  68e4dcb100                PUSH 0xb1dce4
00512355  8bce                      MOV ECX,ESI
00512357  e87482efff                CALL 0x0040a5d0
0051235c  84c0                      TEST AL,AL
0051235e  740c                      JZ 0x0051236c
00512360  8d4e30                    LEA ECX,[ESI + 0x30]
00512363  e8487eefff                CALL 0x0040a1b0
00512368  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0051236c  8d8f14040000              LEA ECX,[EDI + 0x414]
00512372  e8794c2d00                CALL 0x007e6ff0
00512377  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
0051237e  0f8542090000              JNZ 0x00512cc6
00512384  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00512387  3d17010000                CMP EAX,0x117
0051238c  754d                      JNZ 0x005123db
0051238e  6a01                      PUSH 0x1
00512390  6884030000                PUSH 0x384
00512395  83ec08                    SUB ESP,0x8
00512398  8d44241c                  LEA EAX,[ESP + 0x1c]
0051239c  8bcf                      MOV ECX,EDI
0051239e  c74424040000003f          MOV dword ptr [ESP + 0x4],0x3f000000
005123a6  c7042400000000            MOV dword ptr [ESP],0x0
005123ad  50                        PUSH EAX
005123ae  e88dc81a00                CALL 0x006bec40
005123b3  50                        PUSH EAX
005123b4  8d8f14040000              LEA ECX,[EDI + 0x414]
005123ba  e801102d00                CALL 0x007e33c0
005123bf  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
005123c7  0f57c9                    XORPS XMM1,XMM1
005123ca  0f2fc1                    COMISS XMM0,XMM1
005123cd  0f97c0                    SETA AL
005123d0  888748010000              MOV byte ptr [EDI + 0x148],AL
005123d6  e9b70a0000                JMP 0x00512e92
005123db  3d2d010000                CMP EAX,0x12d
005123e0  0f8513050000              JNZ 0x005128f9
005123e6  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
005123ee  0f2e1554a4ba00            UCOMISS XMM2,dword ptr [0x00baa454]
005123f5  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
005123fd  9f                        LAHF
005123fe  f6c444                    TEST AH,0x44
00512401  7b13                      JNP 0x00512416
00512403  0f28c2                    MOVAPS XMM0,XMM2
00512406  f30f59d1                  MULSS XMM2,XMM1
0051240a  f30f58c1                  ADDSS XMM0,XMM1
0051240e  f30f5cc2                  SUBSS XMM0,XMM2
00512412  f30f5ec8                  DIVSS XMM1,XMM0
00512416  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0051241e  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00512426  0f28c1                    MOVAPS XMM0,XMM1
00512429  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
00512431  2bc8                      SUB ECX,EAX
00512433  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
0051243b  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00512443  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0051244b  018f10040000              ADD dword ptr [EDI + 0x410],ECX
00512451  7809                      JS 0x0051245c
00512453  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0051245a  747f                      JZ 0x005124db
0051245c  e8ffca1d00                CALL 0x006eef60
00512461  33d2                      XOR EDX,EDX
00512463  b95a000000                MOV ECX,0x5a
00512468  f7f1                      DIV ECX
0051246a  899710040000              MOV dword ptr [EDI + 0x410],EDX
00512470  e8ebca1d00                CALL 0x006eef60
00512475  83e003                    AND EAX,0x3
00512478  8d4c240c                  LEA ECX,[ESP + 0xc]
0051247c  8bd0                      MOV EDX,EAX
0051247e  e84dcd1600                CALL 0x0067f1d0
00512483  f30f100598a3ba00          MOVSS XMM0,dword ptr [0x00baa398]
0051248b  8bf0                      MOV ESI,EAX
0051248d  e8aeb0f0ff                CALL 0x0041d540
00512492  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00512498  f30f100598a3ba00          MOVSS XMM0,dword ptr [0x00baa398]
005124a0  e87bb0f0ff                CALL 0x0041d520
005124a5  f30f10642414              MOVSS XMM4,dword ptr [ESP + 0x14]
005124ab  0f28e8                    MOVAPS XMM5,XMM0
005124ae  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
005124b3  0f28dc                    MOVAPS XMM3,XMM4
005124b6  f30f591e                  MULSS XMM3,dword ptr [ESI]
005124ba  f30f592e                  MULSS XMM5,dword ptr [ESI]
005124be  f30f596604                MULSS XMM4,dword ptr [ESI + 0x4]
005124c3  f30f5cd8                  SUBSS XMM3,XMM0
005124c7  f30f58ec                  ADDSS XMM5,XMM4
005124cb  f30f119f34030000          MOVSS dword ptr [EDI + 0x334],XMM3
005124d3  f30f11af38030000          MOVSS dword ptr [EDI + 0x338],XMM5
005124db  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005124e2  0f8450010000              JZ 0x00512638
005124e8  8d44240c                  LEA EAX,[ESP + 0xc]
005124ec  0f57d2                    XORPS XMM2,XMM2
005124ef  50                        PUSH EAX
005124f0  8bcf                      MOV ECX,EDI
005124f2  e8d95d1c00                CALL 0x006d82d0
005124f7  8d8f34030000              LEA ECX,[EDI + 0x334]
005124fd  6840b6c700                PUSH 0xc7b640
00512502  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00512506  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0051250c  f30f1101                  MOVSS dword ptr [ECX],XMM0
00512510  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00512515  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0051251b  f30f114104                MOVSS dword ptr [ECX + 0x4],XMM0
00512520  e80be14f00                CALL 0x00a10630
00512525  84c0                      TEST AL,AL
00512527  0f840b010000              JZ 0x00512638
0051252d  f30f100548adba00          MOVSS XMM0,dword ptr [0x00baad48]
00512535  e806b0f0ff                CALL 0x0041d540
0051253a  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00512540  f30f100548adba00          MOVSS XMM0,dword ptr [0x00baad48]
00512548  e8d3aff0ff                CALL 0x0041d520
0051254d  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
00512553  8d54240c                  LEA EDX,[ESP + 0xc]
00512557  f30f594c2414              MULSS XMM1,dword ptr [ESP + 0x14]
0051255d  8d4c2434                  LEA ECX,[ESP + 0x34]
00512561  0f28d0                    MOVAPS XMM2,XMM0
00512564  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
0051256a  f30f59c2                  MULSS XMM0,XMM2
0051256e  f30f5cc8                  SUBSS XMM1,XMM0
00512572  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
00512578  f30f59442420              MULSS XMM0,dword ptr [ESP + 0x20]
0051257e  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
00512584  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
0051258a  f30f59ca                  MULSS XMM1,XMM2
0051258e  f30f58c8                  ADDSS XMM1,XMM0
00512592  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
00512598  e8d3cb1600                CALL 0x0067f170
0051259d  f30f100598a3ba00          MOVSS XMM0,dword ptr [0x00baa398]
005125a5  8bf0                      MOV ESI,EAX
005125a7  e894aff0ff                CALL 0x0041d540
005125ac  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
005125b2  f30f100598a3ba00          MOVSS XMM0,dword ptr [0x00baa398]
005125ba  e861aff0ff                CALL 0x0041d520
005125bf  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
005125c4  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
005125ca  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
005125d0  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
005125d6  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
005125dc  f30f59c0                  MULSS XMM0,XMM0
005125e0  f30f59c9                  MULSS XMM1,XMM1
005125e4  f30f58c1                  ADDSS XMM0,XMM1
005125e8  e86334f2ff                CALL 0x00435a50
005125ed  f30f101e                  MOVSS XMM3,dword ptr [ESI]
005125f1  0f28c8                    MOVAPS XMM1,XMM0
005125f4  f30f10742424              MOVSS XMM6,dword ptr [ESP + 0x24]
005125fa  0f28d3                    MOVAPS XMM2,XMM3
005125fd  f30f59542420              MULSS XMM2,dword ptr [ESP + 0x20]
00512603  0f28c6                    MOVAPS XMM0,XMM6
00512606  f30f59742420              MULSS XMM6,dword ptr [ESP + 0x20]
0051260c  f30f5944240c              MULSS XMM0,dword ptr [ESP + 0xc]
00512612  f30f595c240c              MULSS XMM3,dword ptr [ESP + 0xc]
00512618  f30f5cd0                  SUBSS XMM2,XMM0
0051261c  f30f58f3                  ADDSS XMM6,XMM3
00512620  f30f59d1                  MULSS XMM2,XMM1
00512624  f30f59f1                  MULSS XMM6,XMM1
00512628  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
00512630  f30f11b738030000          MOVSS dword ptr [EDI + 0x338],XMM6
00512638  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
00512640  33d2                      XOR EDX,EDX
00512642  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0051264a  b907000000                MOV ECX,0x7
0051264f  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00512657  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
0051265f  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00512667  f30f59c1                  MULSS XMM0,XMM1
0051266b  f30f59d1                  MULSS XMM2,XMM1
0051266f  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00512677  f30f100db8a7ba00          MOVSS XMM1,dword ptr [0x00baa7b8]
0051267f  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00512687  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0051268f  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00512697  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
0051269a  f7f1                      DIV ECX
0051269c  8bcf                      MOV ECX,EDI
0051269e  660f6ec2                  MOVD XMM0,EDX
005126a2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005126a6  c1ea1f                    SHR EDX,0x1f
005126a9  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
005126b2  660f5ad0                  CVTPD2PS XMM2,XMM0
005126b6  e8a5a01900                CALL 0x006ac760
005126bb  85c0                      TEST EAX,EAX
005126bd  0f84cf070000              JZ 0x00512e92
005126c3  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005126ca  0f85c2070000              JNZ 0x00512e92
005126d0  6a00                      PUSH 0x0
005126d2  68000a0001                PUSH 0x1000a00
005126d7  8bcf                      MOV ECX,EDI
005126d9  e8524df0ff                CALL 0x00417430
005126de  84c0                      TEST AL,AL
005126e0  0f85ac070000              JNZ 0x00512e92
005126e6  a17816c700                MOV EAX,[0x00c71678]
005126eb  8bcf                      MOV ECX,EDI
005126ed  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005126f3  e848c11a00                CALL 0x006be840
005126f8  8bcf                      MOV ECX,EDI
005126fa  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00512702  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00512708  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00512710  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00512716  e825c11a00                CALL 0x006be840
0051271b  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
00512723  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00512729  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
00512731  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00512737  e824c81d00                CALL 0x006eef60
0051273c  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
00512742  83ec0c                    SUB ESP,0xc
00512745  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
0051274d  8bce                      MOV ECX,ESI
0051274f  660f6ec0                  MOVD XMM0,EAX
00512753  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00512757  c1e81f                    SHR EAX,0x1f
0051275a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00512763  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
0051276b  8d442418                  LEA EAX,[ESP + 0x18]
0051276f  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
00512777  c704240000a041            MOV dword ptr [ESP],0x41a00000
0051277e  50                        PUSH EAX
0051277f  660f5ac0                  CVTPD2PS XMM0,XMM0
00512783  8d442434                  LEA EAX,[ESP + 0x34]
00512787  50                        PUSH EAX
00512788  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00512790  f30f59055ca8ba00          MULSS XMM0,dword ptr [0x00baa85c]
00512798  f30f59c8                  MULSS XMM1,XMM0
0051279c  f30f584c2438              ADDSS XMM1,dword ptr [ESP + 0x38]
005127a2  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
005127a8  f30f104c2434              MOVSS XMM1,dword ptr [ESP + 0x34]
005127ae  f30f59c8                  MULSS XMM1,XMM0
005127b2  f30f584c2428              ADDSS XMM1,dword ptr [ESP + 0x28]
005127b8  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
005127be  e88d073000                CALL 0x00812f50
005127c3  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005127cb  f30f5c442424              SUBSS XMM0,dword ptr [ESP + 0x24]
005127d1  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
005127d7  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
005127dd  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005127e5  f30f5c442428              SUBSS XMM0,dword ptr [ESP + 0x28]
005127eb  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
005127f1  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
005127f7  f30f100598a3ba00          MOVSS XMM0,dword ptr [0x00baa398]
005127ff  e83cadf0ff                CALL 0x0041d540
00512804  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0051280a  f30f100598a3ba00          MOVSS XMM0,dword ptr [0x00baa398]
00512812  e809adf0ff                CALL 0x0041d520
00512817  f30f10642424              MOVSS XMM4,dword ptr [ESP + 0x24]
0051281d  0f28d0                    MOVAPS XMM2,XMM0
00512820  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
00512826  0f28c4                    MOVAPS XMM0,XMM4
00512829  f30f106c2420              MOVSS XMM5,dword ptr [ESP + 0x20]
0051282f  0f28f3                    MOVAPS XMM6,XMM3
00512832  f30f59dd                  MULSS XMM3,XMM5
00512836  0f28cd                    MOVAPS XMM1,XMM5
00512839  f30f59c2                  MULSS XMM0,XMM2
0051283d  f30f59ca                  MULSS XMM1,XMM2
00512841  f30f59f4                  MULSS XMM6,XMM4
00512845  f30f5cd8                  SUBSS XMM3,XMM0
00512849  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
00512851  f30f58f1                  ADDSS XMM6,XMM1
00512855  f30f100d40cbba00          MOVSS XMM1,dword ptr [0x00bacb40]
0051285d  0f54d9                    ANDPS XMM3,XMM1
00512860  0f2fc3                    COMISS XMM0,XMM3
00512863  770c                      JA 0x00512871
00512865  0f54f1                    ANDPS XMM6,XMM1
00512868  0f2fc6                    COMISS XMM0,XMM6
0051286b  0f8621060000              JBE 0x00512e92
00512871  f30f59e4                  MULSS XMM4,XMM4
00512875  f30f59ed                  MULSS XMM5,XMM5
00512879  f30f58e5                  ADDSS XMM4,XMM5
0051287d  0f28c4                    MOVAPS XMM0,XMM4
00512880  e8cb31f2ff                CALL 0x00435a50
00512885  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
0051288d  0f2fc8                    COMISS XMM1,XMM0
00512890  0f86fc050000              JBE 0x00512e92
00512896  51                        PUSH ECX
00512897  8d442438                  LEA EAX,[ESP + 0x38]
0051289b  c70424000080bf            MOV dword ptr [ESP],0xbf800000
005128a2  50                        PUSH EAX
005128a3  8d4c241c                  LEA ECX,[ESP + 0x1c]
005128a7  e854d84f00                CALL 0x00a10100
005128ac  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005128b2  c744241439040000          MOV dword ptr [ESP + 0x14],0x439
005128ba  8b08                      MOV ECX,dword ptr [EAX]
005128bc  898f34030000              MOV dword ptr [EDI + 0x334],ECX
005128c2  8d4c2414                  LEA ECX,[ESP + 0x14]
005128c6  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005128c9  898738030000              MOV dword ptr [EDI + 0x338],EAX
005128cf  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
005128d9  e8a23e4400                CALL 0x00956780
005128de  83ec08                    SUB ESP,0x8
005128e1  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005128e9  c704240000803f            MOV dword ptr [ESP],0x3f800000
005128f0  6a00                      PUSH 0x0
005128f2  6a02                      PUSH 0x2
005128f4  e9b1030000                JMP 0x00512caa
005128f9  8b8f1c040000              MOV ECX,dword ptr [EDI + 0x41c]
005128ff  8b8718040000              MOV EAX,dword ptr [EDI + 0x418]
00512905  6a00                      PUSH 0x0
00512907  51                        PUSH ECX
00512908  894c2418                  MOV dword ptr [ESP + 0x18],ECX
0051290c  8d8f14040000              LEA ECX,[EDI + 0x414]
00512912  89442414                  MOV dword ptr [ESP + 0x14],EAX
00512916  c704240000403f            MOV dword ptr [ESP],0x3f400000
0051291d  e81e2a2d00                CALL 0x007e5340
00512922  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
0051292a  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
00512932  f30f1015c4a3ba00          MOVSS XMM2,dword ptr [0x00baa3c4]
0051293a  0f2edc                    UCOMISS XMM3,XMM4
0051293d  9f                        LAHF
0051293e  f6c444                    TEST AH,0x44
00512941  7b16                      JNP 0x00512959
00512943  0f28cb                    MOVAPS XMM1,XMM3
00512946  0f28c3                    MOVAPS XMM0,XMM3
00512949  f30f58ca                  ADDSS XMM1,XMM2
0051294d  f30f59c2                  MULSS XMM0,XMM2
00512951  f30f5cc8                  SUBSS XMM1,XMM0
00512955  f30f5ed1                  DIVSS XMM2,XMM1
00512959  f30f599760030000          MULSS XMM2,dword ptr [EDI + 0x360]
00512961  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
00512969  0f2edc                    UCOMISS XMM3,XMM4
0051296c  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00512974  9f                        LAHF
00512975  f6c444                    TEST AH,0x44
00512978  7b13                      JNP 0x0051298d
0051297a  0f28c3                    MOVAPS XMM0,XMM3
0051297d  f30f59d9                  MULSS XMM3,XMM1
00512981  f30f58c1                  ADDSS XMM0,XMM1
00512985  f30f5cc3                  SUBSS XMM0,XMM3
00512989  f30f5ec8                  DIVSS XMM1,XMM0
0051298d  837f2820                  CMP dword ptr [EDI + 0x28],0x20
00512991  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
00512999  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005129a1  7558                      JNZ 0x005129fb
005129a3  8d8718040000              LEA EAX,[EDI + 0x418]
005129a9  50                        PUSH EAX
005129aa  8d4c2410                  LEA ECX,[ESP + 0x10]
005129ae  e87ddc4f00                CALL 0x00a10630
005129b3  84c0                      TEST AL,AL
005129b5  7444                      JZ 0x005129fb
005129b7  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005129bd  8d4c2414                  LEA ECX,[ESP + 0x14]
005129c1  c744241438040000          MOV dword ptr [ESP + 0x14],0x438
005129c9  e8b23d4400                CALL 0x00956780
005129ce  83ec08                    SUB ESP,0x8
005129d1  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005129d9  c704240000803f            MOV dword ptr [ESP],0x3f800000
005129e0  6a00                      PUSH 0x0
005129e2  6a1e                      PUSH 0x1e
005129e4  51                        PUSH ECX
005129e5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005129ec  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005129f2  ff742428                  PUSH dword ptr [ESP + 0x28]
005129f6  e835b24100                CALL 0x0092dc30
005129fb  ff7720                    PUSH dword ptr [EDI + 0x20]
005129fe  8bcf                      MOV ECX,EDI
00512a00  6a07                      PUSH 0x7
00512a02  e8099d1900                CALL 0x006ac710
00512a07  84c0                      TEST AL,AL
00512a09  0f8483040000              JZ 0x00512e92
00512a0f  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00512a16  0f8576040000              JNZ 0x00512e92
00512a1c  6a00                      PUSH 0x0
00512a1e  68000a0001                PUSH 0x1000a00
00512a23  8bcf                      MOV ECX,EDI
00512a25  e8064af0ff                CALL 0x00417430
00512a2a  84c0                      TEST AL,AL
00512a2c  0f8560040000              JNZ 0x00512e92
00512a32  a17816c700                MOV EAX,[0x00c71678]
00512a37  8bcf                      MOV ECX,EDI
00512a39  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00512a3f  e8fcbd1a00                CALL 0x006be840
00512a44  8bcf                      MOV ECX,EDI
00512a46  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00512a4e  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00512a54  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00512a5c  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00512a62  e8d9bd1a00                CALL 0x006be840
00512a67  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
00512a6f  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00512a75  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
00512a7d  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00512a83  e8d8c41d00                CALL 0x006eef60
00512a88  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
00512a8e  83ec0c                    SUB ESP,0xc
00512a91  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
00512a99  8bce                      MOV ECX,ESI
00512a9b  660f6ec0                  MOVD XMM0,EAX
00512a9f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00512aa3  c1e81f                    SHR EAX,0x1f
00512aa6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00512aaf  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
00512ab7  8d442418                  LEA EAX,[ESP + 0x18]
00512abb  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
00512ac3  c704240000a041            MOV dword ptr [ESP],0x41a00000
00512aca  50                        PUSH EAX
00512acb  660f5ac0                  CVTPD2PS XMM0,XMM0
00512acf  8d442424                  LEA EAX,[ESP + 0x24]
00512ad3  50                        PUSH EAX
00512ad4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00512adc  f30f59055ca8ba00          MULSS XMM0,dword ptr [0x00baa85c]
00512ae4  f30f59c8                  MULSS XMM1,XMM0
00512ae8  f30f584c2438              ADDSS XMM1,dword ptr [ESP + 0x38]
00512aee  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
00512af4  f30f104c2434              MOVSS XMM1,dword ptr [ESP + 0x34]
00512afa  f30f59c8                  MULSS XMM1,XMM0
00512afe  f30f584c2428              ADDSS XMM1,dword ptr [ESP + 0x28]
00512b04  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
00512b0a  e841043000                CALL 0x00812f50
00512b0f  a17816c700                MOV EAX,[0x00c71678]
00512b14  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00512b1c  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
00512b24  f30f10257ca8ba00          MOVSS XMM4,dword ptr [0x00baa87c]
00512b2c  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00512b32  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
00512b38  99                        CDQ
00512b39  f77e0c                    IDIV dword ptr [ESI + 0xc]
00512b3c  660f6ed2                  MOVD XMM2,EDX
00512b40  0f5bd2                    CVTDQ2PS XMM2,XMM2
00512b43  660f6ec8                  MOVD XMM1,EAX
00512b47  0f5bc9                    CVTDQ2PS XMM1,XMM1
00512b4a  f30f59d0                  MULSS XMM2,XMM0
00512b4e  f30f59c8                  MULSS XMM1,XMM0
00512b52  f30f58d0                  ADDSS XMM2,XMM0
00512b56  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
00512b5e  f30f1154242c              MOVSS dword ptr [ESP + 0x2c],XMM2
00512b64  f30f5c542414              SUBSS XMM2,dword ptr [ESP + 0x14]
00512b6a  f30f114c2430              MOVSS dword ptr [ESP + 0x30],XMM1
00512b70  f30f5c4c2418              SUBSS XMM1,dword ptr [ESP + 0x18]
00512b76  0f28c2                    MOVAPS XMM0,XMM2
00512b79  f30f11542420              MOVSS dword ptr [ESP + 0x20],XMM2
00512b7f  0f54c3                    ANDPS XMM0,XMM3
00512b82  0f2fe0                    COMISS XMM4,XMM0
00512b85  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
00512b8b  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00512b91  770f                      JA 0x00512ba2
00512b93  0f28c1                    MOVAPS XMM0,XMM1
00512b96  0f54c3                    ANDPS XMM0,XMM3
00512b99  0f2fe0                    COMISS XMM4,XMM0
00512b9c  0f86f0020000              JBE 0x00512e92
00512ba2  0f28c1                    MOVAPS XMM0,XMM1
00512ba5  f30f59c1                  MULSS XMM0,XMM1
00512ba9  0f28ca                    MOVAPS XMM1,XMM2
00512bac  f30f59ca                  MULSS XMM1,XMM2
00512bb0  f30f58c1                  ADDSS XMM0,XMM1
00512bb4  e8972ef2ff                CALL 0x00435a50
00512bb9  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
00512bc1  0f2fc8                    COMISS XMM1,XMM0
00512bc4  0f86c8020000              JBE 0x00512e92
00512bca  6a00                      PUSH 0x0
00512bcc  6a00                      PUSH 0x0
00512bce  6a00                      PUSH 0x0
00512bd0  6a00                      PUSH 0x0
00512bd2  6a00                      PUSH 0x0
00512bd4  8d442428                  LEA EAX,[ESP + 0x28]
00512bd8  8bce                      MOV ECX,ESI
00512bda  50                        PUSH EAX
00512bdb  8d442444                  LEA EAX,[ESP + 0x44]
00512bdf  50                        PUSH EAX
00512be0  e80be22d00                CALL 0x007f0df0
00512be5  84c0                      TEST AL,AL
00512be7  0f84a5020000              JZ 0x00512e92
00512bed  f30f1054240c              MOVSS XMM2,dword ptr [ESP + 0xc]
00512bf3  f30f104c2424              MOVSS XMM1,dword ptr [ESP + 0x24]
00512bf9  0f28c2                    MOVAPS XMM0,XMM2
00512bfc  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00512c03  0f2fc8                    COMISS XMM1,XMM0
00512c06  0f57c9                    XORPS XMM1,XMM1
00512c09  7635                      JBE 0x00512c40
00512c0b  0f2f4c2420                COMISS XMM1,dword ptr [ESP + 0x20]
00512c10  c7873803000000000000      MOV dword ptr [EDI + 0x338],0x0
00512c1a  7612                      JBE 0x00512c2e
00512c1c  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00512c24  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00512c2c  eb3b                      JMP 0x00512c69
00512c2e  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00512c36  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00512c3e  eb29                      JMP 0x00512c69
00512c40  0f2fca                    COMISS XMM1,XMM2
00512c43  c7873403000000000000      MOV dword ptr [EDI + 0x334],0x0
00512c4d  760a                      JBE 0x00512c59
00512c4f  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00512c57  eb08                      JMP 0x00512c61
00512c59  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00512c61  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00512c69  837f2820                  CMP dword ptr [EDI + 0x28],0x20
00512c6d  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00512c77  0f8515020000              JNZ 0x00512e92
00512c7d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00512c83  8d4c2414                  LEA ECX,[ESP + 0x14]
00512c87  c744241438040000          MOV dword ptr [ESP + 0x14],0x438
00512c8f  e8ec3a4400                CALL 0x00956780
00512c94  83ec08                    SUB ESP,0x8
00512c97  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00512c9f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00512ca6  6a00                      PUSH 0x0
00512ca8  6a1e                      PUSH 0x1e
00512caa  51                        PUSH ECX
00512cab  c704240000803f            MOV dword ptr [ESP],0x3f800000
00512cb2  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00512cb8  ff742428                  PUSH dword ptr [ESP + 0x28]
00512cbc  e86faf4100                CALL 0x0092dc30
00512cc1  e9cc010000                JMP 0x00512e92
00512cc6  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00512ccd  0f8555010000              JNZ 0x00512e28
00512cd3  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00512cd9  25000b0001                AND EAX,0x1000b00
00512cde  83c800                    OR EAX,0x0
00512ce1  0f8541010000              JNZ 0x00512e28
00512ce7  3987380f0000              CMP dword ptr [EDI + 0xf38],EAX
00512ced  0f8535010000              JNZ 0x00512e28
00512cf3  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00512cfa  0f8528010000              JNZ 0x00512e28
00512d00  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
00512d08  0f57c9                    XORPS XMM1,XMM1
00512d0b  f30f591da4a3ba00          MULSS XMM3,dword ptr [0x00baa3a4]
00512d13  0f2ed9                    UCOMISS XMM3,XMM1
00512d16  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
00512d1e  9f                        LAHF
00512d1f  f6c444                    TEST AH,0x44
00512d22  7b43                      JNP 0x00512d67
00512d24  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
00512d2c  0f28c2                    MOVAPS XMM0,XMM2
00512d2f  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
00512d37  f30f5ec3                  DIVSS XMM0,XMM3
00512d3b  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00512d43  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00512d4b  f30f599738030000          MULSS XMM2,dword ptr [EDI + 0x338]
00512d53  f30f5ed3                  DIVSS XMM2,XMM3
00512d57  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00512d5f  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00512d67  817f282d010000            CMP dword ptr [EDI + 0x28],0x12d
00512d6e  0f841e010000              JZ 0x00512e92
00512d74  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00512d7a  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
00512d80  99                        CDQ
00512d81  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00512d89  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00512d8f  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
00512d97  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
00512d9e  8b490c                    MOV ECX,dword ptr [ECX + 0xc]
00512da1  f7f9                      IDIV ECX
00512da3  660f6eda                  MOVD XMM3,EDX
00512da7  0f5bdb                    CVTDQ2PS XMM3,XMM3
00512daa  660f6ee0                  MOVD XMM4,EAX
00512dae  0f5be4                    CVTDQ2PS XMM4,XMM4
00512db1  f30f59d8                  MULSS XMM3,XMM0
00512db5  f30f59e0                  MULSS XMM4,XMM0
00512db9  f30f58d8                  ADDSS XMM3,XMM0
00512dbd  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00512dc5  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00512dcc  0f2fd0                    COMISS XMM2,XMM0
00512dcf  f30f582500aaba00          ADDSS XMM4,dword ptr [0x00baaa00]
00512dd7  7629                      JBE 0x00512e02
00512dd9  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00512de1  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00512de9  f30f592520a1ba00          MULSS XMM4,dword ptr [0x00baa120]
00512df1  f30f58c4                  ADDSS XMM0,XMM4
00512df5  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
00512dfd  e990000000                JMP 0x00512e92
00512e02  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00512e0a  f30f591d20a1ba00          MULSS XMM3,dword ptr [0x00baa120]
00512e12  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00512e1a  f30f58d8                  ADDSS XMM3,XMM0
00512e1e  f30f119f3c030000          MOVSS dword ptr [EDI + 0x33c],XMM3
00512e26  eb6a                      JMP 0x00512e92
00512e28  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00512e30  f30f118718040000          MOVSS dword ptr [EDI + 0x418],XMM0
00512e38  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00512e40  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
00512e48  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00512e50  f30f118720040000          MOVSS dword ptr [EDI + 0x420],XMM0
00512e58  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00512e60  f30f118724040000          MOVSS dword ptr [EDI + 0x424],XMM0
00512e68  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00512e72  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00512e7a  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00512e82  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00512e8a  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00512e92  8b7720                    MOV ESI,dword ptr [EDI + 0x20]
00512e95  8bcf                      MOV ECX,EDI
00512e97  e8843d1c00                CALL 0x006d6c20
00512e9c  33d2                      XOR EDX,EDX
00512e9e  83f805                    CMP EAX,0x5
00512ea1  8bc6                      MOV EAX,ESI
00512ea3  7d41                      JGE 0x00512ee6
00512ea5  b90c000000                MOV ECX,0xc
00512eaa  f30f100d34a8ba00          MOVSS XMM1,dword ptr [0x00baa834]
00512eb2  f7f1                      DIV ECX
00512eb4  8bcf                      MOV ECX,EDI
00512eb6  8bf2                      MOV ESI,EDX
00512eb8  8bc2                      MOV EAX,EDX
00512eba  c1e81f                    SHR EAX,0x1f
00512ebd  660f6ec6                  MOVD XMM0,ESI
00512ec1  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00512ec5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00512ece  660f5ad0                  CVTPD2PS XMM2,XMM0
00512ed2  e889981900                CALL 0x006ac760
00512ed7  f30f100d34a8ba00          MOVSS XMM1,dword ptr [0x00baa834]
00512edf  85c0                      TEST EAX,EAX
00512ee1  8d4606                    LEA EAX,[ESI + 0x6]
00512ee4  eb3f                      JMP 0x00512f25
00512ee6  b918000000                MOV ECX,0x18
00512eeb  f30f100d9ca8ba00          MOVSS XMM1,dword ptr [0x00baa89c]
00512ef3  f7f1                      DIV ECX
00512ef5  8bcf                      MOV ECX,EDI
00512ef7  8bf2                      MOV ESI,EDX
00512ef9  8bc2                      MOV EAX,EDX
00512efb  c1e81f                    SHR EAX,0x1f
00512efe  660f6ec6                  MOVD XMM0,ESI
00512f02  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00512f06  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00512f0f  660f5ad0                  CVTPD2PS XMM2,XMM0
00512f13  e848981900                CALL 0x006ac760
00512f18  f30f100d9ca8ba00          MOVSS XMM1,dword ptr [0x00baa89c]
00512f20  85c0                      TEST EAX,EAX
00512f22  8d460c                    LEA EAX,[ESI + 0xc]
00512f25  660f6ec0                  MOVD XMM0,EAX
00512f29  0f9f44241f                SETG byte ptr [ESP + 0x1f]
00512f2e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00512f32  c1e81f                    SHR EAX,0x1f
00512f35  8bcf                      MOV ECX,EDI
00512f37  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00512f40  660f5ad0                  CVTPD2PS XMM2,XMM0
00512f44  e817981900                CALL 0x006ac760
00512f49  85c0                      TEST EAX,EAX
00512f4b  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00512f51  0f9fc1                    SETG CL
00512f54  2500000001                AND EAX,0x1000000
00512f59  83c800                    OR EAX,0x0
00512f5c  0f85a4000000              JNZ 0x00513006
00512f62  3844241f                  CMP byte ptr [ESP + 0x1f],AL
00512f66  7529                      JNZ 0x00512f91
00512f68  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00512f70  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00512f78  f30f59c0                  MULSS XMM0,XMM0
00512f7c  f30f59c9                  MULSS XMM1,XMM1
00512f80  f30f58c1                  ADDSS XMM0,XMM1
00512f84  0f2f0504a8ba00            COMISS XMM0,dword ptr [0x00baa804]
00512f8b  7679                      JBE 0x00513006
00512f8d  84c9                      TEST CL,CL
00512f8f  7475                      JZ 0x00513006
00512f91  e8cabf1d00                CALL 0x006eef60
00512f96  6a00                      PUSH 0x0
00512f98  50                        PUSH EAX
00512f99  6a00                      PUSH 0x0
00512f9b  33c9                      XOR ECX,ECX
00512f9d  8db73c030000              LEA ESI,[EDI + 0x33c]
00512fa3  817f282d010000            CMP dword ptr [EDI + 0x28],0x12d
00512faa  57                        PUSH EDI
00512fab  6840b6c700                PUSH 0xc7b640
00512fb0  0f94c1                    SETZ CL
00512fb3  83c116                    ADD ECX,0x16
00512fb6  56                        PUSH ESI
00512fb7  51                        PUSH ECX
00512fb8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00512fbe  68e8030000                PUSH 0x3e8
00512fc3  e848b41e00                CALL 0x006fe410
00512fc8  6a00                      PUSH 0x0
00512fca  68acd5c500                PUSH 0xc5d5ac
00512fcf  68dcd5c500                PUSH 0xc5d5dc
00512fd4  6a00                      PUSH 0x0
00512fd6  50                        PUSH EAX
00512fd7  e8d5d85d00                CALL 0x00af08b1
00512fdc  83c414                    ADD ESP,0x14
00512fdf  8bc8                      MOV ECX,EAX
00512fe1  8b10                      MOV EDX,dword ptr [EAX]
00512fe3  c780e4000000a4709d3f      MOV dword ptr [EAX + 0xe4],0x3f9d70a4
00512fed  c780e8000000a4709d3f      MOV dword ptr [EAX + 0xe8],0x3f9d70a4
00512ff7  c7807404000000000000      MOV dword ptr [EAX + 0x474],0x0
00513001  ff520c                    CALL dword ptr [EDX + 0xc]
00513004  eb06                      JMP 0x0051300c
00513006  8db73c030000              LEA ESI,[EDI + 0x33c]
0051300c  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00513013  7457                      JZ 0x0051306c
00513015  817f282d010000            CMP dword ptr [EDI + 0x28],0x12d
0051301c  754e                      JNZ 0x0051306c
0051301e  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00513024  2500000001                AND EAX,0x1000000
00513029  83c800                    OR EAX,0x0
0051302c  753e                      JNZ 0x0051306c
0051302e  8d4c2468                  LEA ECX,[ESP + 0x68]
00513032  e83941efff                CALL 0x00407170
00513037  0f1005d04bc300            MOVUPS XMM0,xmmword ptr [0x00c34bd0]
0051303e  6a00                      PUSH 0x0
00513040  6a00                      PUSH 0x0
00513042  6a04                      PUSH 0x4
00513044  6a01                      PUSH 0x1
00513046  51                        PUSH ECX
00513047  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051304e  57                        PUSH EDI
0051304f  50                        PUSH EAX
00513050  83ec10                    SUB ESP,0x10
00513053  8bc4                      MOV EAX,ESP
00513055  51                        PUSH ECX
00513056  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051305c  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0051305f  c7042400002042            MOV dword ptr [ESP],0x42200000
00513066  56                        PUSH ESI
00513067  e8f4cf1e00                CALL 0x00700060
0051306c  8b8c2494000000            MOV ECX,dword ptr [ESP + 0x94]
00513073  5f                        POP EDI
00513074  5e                        POP ESI
00513075  33cc                      XOR ECX,ESP
00513077  e8afc05d00                CALL 0x00aef12b
0051307c  8be5                      MOV ESP,EBP
0051307e  5d                        POP EBP
0051307f  c3                        RET
