; J460 NPC AI 0x0055a010 AI_0055a010
; types=813
; identities=813.0.0
; entry=0055a010
0055a010  55                        PUSH EBP
0055a011  8bec                      MOV EBP,ESP
0055a013  6aff                      PUSH -0x1
0055a015  68354daf00                PUSH 0xaf4d35
0055a01a  64a100000000              MOV EAX,FS:[0x0]
0055a020  50                        PUSH EAX
0055a021  81ecf4000000              SUB ESP,0xf4
0055a027  a1b493bf00                MOV EAX,[0x00bf93b4]
0055a02c  33c5                      XOR EAX,EBP
0055a02e  8945f0                    MOV dword ptr [EBP + -0x10],EAX
0055a031  53                        PUSH EBX
0055a032  56                        PUSH ESI
0055a033  57                        PUSH EDI
0055a034  50                        PUSH EAX
0055a035  8d45f4                    LEA EAX,[EBP + -0xc]
0055a038  64a300000000              MOV FS:[0x0],EAX
0055a03e  8bf9                      MOV EDI,ECX
0055a040  32db                      XOR BL,BL
0055a042  e8f9471600                CALL 0x006be840
0055a047  50                        PUSH EAX
0055a048  8bcf                      MOV ECX,EDI
0055a04a  e811dd1700                CALL 0x006d7d60
0055a04f  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0055a055  be03000000                MOV ESI,0x3
0055a05a  888517ffffff              MOV byte ptr [EBP + 0xffffff17],AL
0055a060  83f910                    CMP ECX,0x10
0055a063  0f8730040000              JA 0x0055a499
0055a069  0fb68130a85500            MOVZX EAX,byte ptr [ECX + 0x55a830]
0055a070  ff248524a85500            JMP dword ptr [EAX*0x4 + 0x55a824]
0055a499  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0055a4a0  7466                      JZ 0x0055a508
0055a4a2  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0055a4a8  83f804                    CMP EAX,0x4
0055a4ab  740e                      JZ 0x0055a4bb
0055a4ad  83f808                    CMP EAX,0x8
0055a4b0  750b                      JNZ 0x0055a4bd
0055a4b2  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0055a4b9  7e02                      JLE 0x0055a4bd
0055a4bb  b301                      MOV BL,0x1
0055a4bd  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0055a4c5  0f2f0500aeba00            COMISS XMM0,dword ptr [0x00baae00]
0055a4cc  763a                      JBE 0x0055a508
0055a4ce  e88d4a1900                CALL 0x006eef60
0055a4d3  a801                      TEST AL,0x1
0055a4d5  7531                      JNZ 0x0055a508
0055a4d7  e8844a1900                CALL 0x006eef60
0055a4dc  33d2                      XOR EDX,EDX
0055a4de  8bcf                      MOV ECX,EDI
0055a4e0  f7f6                      DIV ESI
0055a4e2  33c0                      XOR EAX,EAX
0055a4e4  6aff                      PUSH -0x1
0055a4e6  85d2                      TEST EDX,EDX
0055a4e8  6a00                      PUSH 0x0
0055a4ea  0f94c0                    SETZ AL
0055a4ed  50                        PUSH EAX
0055a4ee  6a0b                      PUSH 0xb
0055a4f0  e83b6a1600                CALL 0x006c0f30
0055a4f5  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
0055a4fb  898780030000              MOV dword ptr [EDI + 0x380],EAX
0055a501  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0055a508  84db                      TEST BL,BL
0055a50a  0f84f8020000              JZ 0x0055a808
0055a510  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0055a518  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0055a51e  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
0055a526  83f812                    CMP EAX,0x12
0055a529  750a                      JNZ 0x0055a535
0055a52b  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0055a533  eb0d                      JMP 0x0055a542
0055a535  83f813                    CMP EAX,0x13
0055a538  7510                      JNZ 0x0055a54a
0055a53a  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0055a542  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
0055a54a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0055a550  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
0055a556  c78510ffffffe2000000      MOV dword ptr [EBP + 0xffffff10],0xe2
0055a560  e81bc23f00                CALL 0x00956780
0055a565  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
0055a56d  83ec08                    SUB ESP,0x8
0055a570  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0055a578  f30f110424                MOVSS dword ptr [ESP],XMM0
0055a57d  6a00                      PUSH 0x0
0055a57f  6a02                      PUSH 0x2
0055a581  51                        PUSH ECX
0055a582  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055a589  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0055a58f  ffb510ffffff              PUSH dword ptr [EBP + 0xffffff10]
0055a595  e896363d00                CALL 0x0092dc30
0055a59a  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0055a5a0  e88b49eeff                CALL 0x0043ef30
0055a5a5  be0b000000                MOV ESI,0xb
0055a5aa  e801f61500                CALL 0x006b9bb0
0055a5af  83e81b                    SUB EAX,0x1b
0055a5b2  740e                      JZ 0x0055a5c2
0055a5b4  83e801                    SUB EAX,0x1
0055a5b7  7515                      JNZ 0x0055a5ce
0055a5b9  c745ac03000000            MOV dword ptr [EBP + -0x54],0x3
0055a5c0  eb07                      JMP 0x0055a5c9
0055a5c2  c745ac04000000            MOV dword ptr [EBP + -0x54],0x4
0055a5c9  be0c000000                MOV ESI,0xc
0055a5ce  8bcf                      MOV ECX,EDI
0055a5d0  e86b421600                CALL 0x006be840
0055a5d5  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055a5dc  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0055a5e4  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
0055a5ec  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
0055a5f4  f30f119508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM2
0055a5fc  f30f119d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM3
0055a604  f30f119d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM3
0055a60c  7475                      JZ 0x0055a683
0055a60e  f30f108f200f0000          MOVSS XMM1,dword ptr [EDI + 0xf20]
0055a616  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
0055a61d  9f                        LAHF
0055a61e  f6c444                    TEST AH,0x44
0055a621  7a15                      JP 0x0055a638
0055a623  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
0055a62b  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0055a632  9f                        LAHF
0055a633  f6c444                    TEST AH,0x44
0055a636  7b4b                      JNP 0x0055a683
0055a638  f30f109f240f0000          MOVSS XMM3,dword ptr [EDI + 0xf24]
0055a640  0f28d1                    MOVAPS XMM2,XMM1
0055a643  f30f591500aaba00          MULSS XMM2,dword ptr [0x00baaa00]
0055a64b  f30f591d00aaba00          MULSS XMM3,dword ptr [0x00baaa00]
0055a653  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
0055a65b  f30f589f40030000          ADDSS XMM3,dword ptr [EDI + 0x340]
0055a663  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
0055a66b  f30f119508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM2
0055a673  f30f119d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM3
0055a67b  f30f119d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM3
0055a683  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0055a68b  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0055a693  f30f5cca                  SUBSS XMM1,XMM2
0055a697  f30f5cc3                  SUBSS XMM0,XMM3
0055a69b  f30f59c9                  MULSS XMM1,XMM1
0055a69f  f30f59c0                  MULSS XMM0,XMM0
0055a6a3  f30f58c1                  ADDSS XMM0,XMM1
0055a6a7  e8a4b3edff                CALL 0x00435a50
0055a6ac  0f2f05d0a9ba00            COMISS XMM0,dword ptr [0x00baa9d0]
0055a6b3  0f86b0000000              JBE 0x0055a769
0055a6b9  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
0055a6c1  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0055a6c9  f30f109504ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff04]
0055a6d1  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0055a6d9  0f28c1                    MOVAPS XMM0,XMM1
0055a6dc  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
0055a6e4  f30f59c1                  MULSS XMM0,XMM1
0055a6e8  0f28ca                    MOVAPS XMM1,XMM2
0055a6eb  f30f119504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM2
0055a6f3  f30f59ca                  MULSS XMM1,XMM2
0055a6f7  f30f58c1                  ADDSS XMM0,XMM1
0055a6fb  e850b3edff                CALL 0x00435a50
0055a700  0f57c9                    XORPS XMM1,XMM1
0055a703  0f2fc1                    COMISS XMM0,XMM1
0055a706  7621                      JBE 0x0055a729
0055a708  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0055a710  f30f5ec8                  DIVSS XMM1,XMM0
0055a714  0f28c1                    MOVAPS XMM0,XMM1
0055a717  f30f598d04ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff04]
0055a71f  f30f598510ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff10]
0055a727  eb10                      JMP 0x0055a739
0055a729  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
0055a731  f30f108d04ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff04]
0055a739  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
0055a741  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0055a749  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0055a751  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0055a759  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
0055a761  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
0055a769  e8f2471900                CALL 0x006eef60
0055a76e  b903000000                MOV ECX,0x3
0055a773  33d2                      XOR EDX,EDX
0055a775  f7f1                      DIV ECX
0055a777  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0055a77d  50                        PUSH EAX
0055a77e  51                        PUSH ECX
0055a77f  c7042400004040            MOV dword ptr [ESP],0x40400000
0055a786  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
0055a78c  50                        PUSH EAX
0055a78d  8d4207                    LEA EAX,[EDX + 0x7]
0055a790  8bcf                      MOV ECX,EDI
0055a792  50                        PUSH EAX
0055a793  e838261700                CALL 0x006ccdd0
0055a798  e8c3471900                CALL 0x006eef60
0055a79d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0055a7a5  0f57c9                    XORPS XMM1,XMM1
0055a7a8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0055a7ae  f30f58c1                  ADDSS XMM0,XMM1
0055a7b2  50                        PUSH EAX
0055a7b3  6a00                      PUSH 0x0
0055a7b5  57                        PUSH EDI
0055a7b6  6840b6c700                PUSH 0xc7b640
0055a7bb  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
0055a7c3  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
0055a7c9  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0055a7d1  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0055a7d9  50                        PUSH EAX
0055a7da  56                        PUSH ESI
0055a7db  68e8030000                PUSH 0x3e8
0055a7e0  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
0055a7e8  e833e3ecff                CALL 0x00428b20
0055a7ed  8bc8                      MOV ECX,EAX
0055a7ef  8b10                      MOV EDX,dword ptr [EAX]
0055a7f1  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
0055a7fb  c780500300000000a0c1      MOV dword ptr [EAX + 0x350],0xc1a00000
0055a805  ff520c                    CALL dword ptr [EDX + 0xc]
0055a808  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0055a80b  64890d00000000            MOV dword ptr FS:[0x0],ECX
0055a812  59                        POP ECX
0055a813  5f                        POP EDI
0055a814  5e                        POP ESI
0055a815  5b                        POP EBX
0055a816  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
0055a819  33cd                      XOR ECX,EBP
0055a81b  e80b495900                CALL 0x00aef12b
0055a820  8be5                      MOV ESP,EBP
0055a822  5d                        POP EBP
0055a823  c3                        RET
