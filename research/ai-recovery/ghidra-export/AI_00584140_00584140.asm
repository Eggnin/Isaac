; J460 NPC AI 0x00584140 AI_00584140
; types=909
; identities=909.0.0,909.10.0
; entry=00584140
00584140  55                        PUSH EBP
00584141  8bec                      MOV EBP,ESP
00584143  83e4f8                    AND ESP,0xfffffff8
00584146  81ec6c030000              SUB ESP,0x36c
0058414c  a1b493bf00                MOV EAX,[0x00bf93b4]
00584151  33c4                      XOR EAX,ESP
00584153  89842468030000            MOV dword ptr [ESP + 0x368],EAX
0058415a  a17816c700                MOV EAX,[0x00c71678]
0058415f  0f2805b0b0ba00            MOVAPS XMM0,xmmword ptr [0x00bab0b0]
00584166  53                        PUSH EBX
00584167  8bd9                      MOV EBX,ECX
00584169  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0058416f  56                        PUSH ESI
00584170  57                        PUSH EDI
00584171  83bb740b000001            CMP dword ptr [EBX + 0xb74],0x1
00584178  895c2434                  MOV dword ptr [ESP + 0x34],EBX
0058417c  0f11842464030000          MOVUPS xmmword ptr [ESP + 0x364],XMM0
00584184  894c2420                  MOV dword ptr [ESP + 0x20],ECX
00584188  0f855b010000              JNZ 0x005842e9
0058418e  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
00584195  0f849b220000              JZ 0x00586436
0058419b  8bf3                      MOV ESI,EBX
0058419d  0f1f00                    NOP dword ptr [EAX]
005841a0  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
005841a6  85c0                      TEST EAX,EAX
005841a8  7413                      JZ 0x005841bd
005841aa  8178288d030000            CMP dword ptr [EAX + 0x28],0x38d
005841b1  750a                      JNZ 0x005841bd
005841b3  83782c0a                  CMP dword ptr [EAX + 0x2c],0xa
005841b7  7504                      JNZ 0x005841bd
005841b9  8bf0                      MOV ESI,EAX
005841bb  ebe3                      JMP 0x005841a0
005841bd  8bfb                      MOV EDI,EBX
005841bf  90                        NOP
005841c0  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
005841c6  85c0                      TEST EAX,EAX
005841c8  7413                      JZ 0x005841dd
005841ca  8178288d030000            CMP dword ptr [EAX + 0x28],0x38d
005841d1  750a                      JNZ 0x005841dd
005841d3  83782c0a                  CMP dword ptr [EAX + 0x2c],0xa
005841d7  7504                      JNZ 0x005841dd
005841d9  8bf8                      MOV EDI,EAX
005841db  ebe3                      JMP 0x005841c0
005841dd  8b8bbc030000              MOV ECX,dword ptr [EBX + 0x3bc]
005841e3  8d83bc030000              LEA EAX,[EBX + 0x3bc]
005841e9  85c9                      TEST ECX,ECX
005841eb  7420                      JZ 0x0058420d
005841ed  89842484000000            MOV dword ptr [ESP + 0x84],EAX
005841f4  81c1cc030000              ADD ECX,0x3cc
005841fa  8d842484000000            LEA EAX,[ESP + 0x84]
00584201  50                        PUSH EAX
00584202  e809b0f4ff                CALL 0x004cf210
00584207  8d83bc030000              LEA EAX,[EBX + 0x3bc]
0058420d  8b8bc0030000              MOV ECX,dword ptr [EBX + 0x3c0]
00584213  c70000000000              MOV dword ptr [EAX],0x0
00584219  8d83c0030000              LEA EAX,[EBX + 0x3c0]
0058421f  85c9                      TEST ECX,ECX
00584221  7420                      JZ 0x00584243
00584223  89842488000000            MOV dword ptr [ESP + 0x88],EAX
0058422a  81c1cc030000              ADD ECX,0x3cc
00584230  8d842488000000            LEA EAX,[ESP + 0x88]
00584237  50                        PUSH EAX
00584238  e8d3aff4ff                CALL 0x004cf210
0058423d  8d83c0030000              LEA EAX,[EBX + 0x3c0]
00584243  8bce                      MOV ECX,ESI
00584245  c70000000000              MOV dword ptr [EAX],0x0
0058424b  e820efffff                CALL 0x00583170
00584250  8bcf                      MOV ECX,EDI
00584252  e819efffff                CALL 0x00583170
00584257  8b737c                    MOV ESI,dword ptr [EBX + 0x7c]
0058425a  85f6                      TEST ESI,ESI
0058425c  7450                      JZ 0x005842ae
0058425e  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00584262  8bc6                      MOV EAX,ESI
00584264  7202                      JC 0x00584268
00584266  8b06                      MOV EAX,dword ptr [ESI]
00584268  b9f0e5b100                MOV ECX,0xb1e5f0
0058426d  0f1f00                    NOP dword ptr [EAX]
00584270  8a10                      MOV DL,byte ptr [EAX]
00584272  3a11                      CMP DL,byte ptr [ECX]
00584274  751a                      JNZ 0x00584290
00584276  84d2                      TEST DL,DL
00584278  7412                      JZ 0x0058428c
0058427a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0058427d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00584280  750e                      JNZ 0x00584290
00584282  83c002                    ADD EAX,0x2
00584285  83c102                    ADD ECX,0x2
00584288  84d2                      TEST DL,DL
0058428a  75e4                      JNZ 0x00584270
0058428c  33c0                      XOR EAX,EAX
0058428e  eb05                      JMP 0x00584295
00584290  1bc0                      SBB EAX,EAX
00584292  83c801                    OR EAX,0x1
00584295  85c0                      TEST EAX,EAX
00584297  7515                      JNZ 0x005842ae
00584299  384634                    CMP byte ptr [ESI + 0x34],AL
0058429c  0f8494210000              JZ 0x00586436
005842a2  38838c000000              CMP byte ptr [EBX + 0x8c],AL
005842a8  0f8588210000              JNZ 0x00586436
005842ae  6a01                      PUSH 0x1
005842b0  68f0e5b100                PUSH 0xb1e5f0
005842b5  8d4b48                    LEA ECX,[EBX + 0x48]
005842b8  e81363e8ff                CALL 0x0040a5d0
005842bd  84c0                      TEST AL,AL
005842bf  0f8471210000              JZ 0x00586436
005842c5  8d4b78                    LEA ECX,[EBX + 0x78]
005842c8  e8e35ee8ff                CALL 0x0040a1b0
005842cd  c6838c00000001            MOV byte ptr [EBX + 0x8c],0x1
005842d4  5f                        POP EDI
005842d5  5e                        POP ESI
005842d6  5b                        POP EBX
005842d7  8b8c2468030000            MOV ECX,dword ptr [ESP + 0x368]
005842de  33cc                      XOR ECX,ESP
005842e0  e846ae5600                CALL 0x00aef12b
005842e5  8be5                      MOV ESP,EBP
005842e7  5d                        POP EBP
005842e8  c3                        RET
005842e9  83bb640b000000            CMP dword ptr [EBX + 0xb64],0x0
005842f0  7570                      JNZ 0x00584362
005842f2  838b6801000001            OR dword ptr [EBX + 0x168],0x1
005842f9  8d8be4010000              LEA ECX,[EBX + 0x1e4]
005842ff  8b836c010000              MOV EAX,dword ptr [EBX + 0x16c]
00584305  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
0058430f  c783180f000001000000      MOV dword ptr [EBX + 0xf18],0x1
00584319  89836c010000              MOV dword ptr [EBX + 0x16c],EAX
0058431f  c78310040000ffffffff      MOV dword ptr [EBX + 0x410],0xffffffff
00584329  c6833d0c000000            MOV byte ptr [EBX + 0xc3d],0x0
00584330  81f9804ec300              CMP ECX,0xc34e80
00584336  742a                      JZ 0x00584362
00584338  0f1005804ec300            MOVUPS XMM0,xmmword ptr [0x00c34e80]
0058433f  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00584342  0f1005904ec300            MOVUPS XMM0,xmmword ptr [0x00c34e90]
00584349  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0058434d  f30f7e05a04ec300          MOVQ XMM0,qword ptr [0x00c34ea0]
00584355  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0058435a  a1a84ec300                MOV EAX,[0x00c34ea8]
0058435f  894128                    MOV dword ptr [ECX + 0x28],EAX
00584362  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
00584369  0f85c7200000              JNZ 0x00586436
0058436f  8bcb                      MOV ECX,EBX
00584371  e8eae6ffff                CALL 0x00582a60
00584376  8bf8                      MOV EDI,EAX
00584378  8bcb                      MOV ECX,EBX
0058437a  897c243c                  MOV dword ptr [ESP + 0x3c],EDI
0058437e  e8fde6ffff                CALL 0x00582a80
00584383  8bf0                      MOV ESI,EAX
00584385  8d87bc030000              LEA EAX,[EDI + 0x3bc]
0058438b  89442478                  MOV dword ptr [ESP + 0x78],EAX
0058438f  8b00                      MOV EAX,dword ptr [EAX]
00584391  89742440                  MOV dword ptr [ESP + 0x40],ESI
00584395  85c0                      TEST EAX,EAX
00584397  745b                      JZ 0x005843f4
00584399  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005843a1  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005843a9  f30f5c8340030000          SUBSS XMM0,dword ptr [EBX + 0x340]
005843b1  f30f5c8b3c030000          SUBSS XMM1,dword ptr [EBX + 0x33c]
005843b9  f30f59c0                  MULSS XMM0,XMM0
005843bd  f30f59c9                  MULSS XMM1,XMM1
005843c1  f30f58c1                  ADDSS XMM0,XMM1
005843c5  e88616ebff                CALL 0x00435a50
005843ca  8b8330030000              MOV EAX,dword ptr [EBX + 0x330]
005843d0  8b4c2478                  MOV ECX,dword ptr [ESP + 0x78]
005843d4  f30f104838                MOVSS XMM1,dword ptr [EAX + 0x38]
005843d9  8b01                      MOV EAX,dword ptr [ECX]
005843db  f30f588870030000          ADDSS XMM1,dword ptr [EAX + 0x370]
005843e3  f30f580d1ca8ba00          ADDSS XMM1,dword ptr [0x00baa81c]
005843eb  0f2fc8                    COMISS XMM1,XMM0
005843ee  7204                      JC 0x005843f4
005843f0  33c0                      XOR EAX,EAX
005843f2  eb05                      JMP 0x005843f9
005843f4  b804000000                MOV EAX,0x4
005843f9  898388010000              MOV dword ptr [EBX + 0x188],EAX
005843ff  83bb640b000000            CMP dword ptr [EBX + 0xb64],0x0
00584406  7407                      JZ 0x0058440f
00584408  8bcb                      MOV ECX,EBX
0058440a  e861edffff                CALL 0x00583170
0058440f  0f57c9                    XORPS XMM1,XMM1
00584412  3bdf                      CMP EBX,EDI
00584414  0f85ad000000              JNZ 0x005844c7
0058441a  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
00584422  f30f5c8340030000          SUBSS XMM0,dword ptr [EBX + 0x340]
0058442a  0f2fc8                    COMISS XMM1,XMM0
0058442d  760a                      JBE 0x00584439
0058442f  f30f10055caeba00          MOVSS XMM0,dword ptr [0x00baae5c]
00584437  eb08                      JMP 0x00584441
00584439  f30f1005d0a9ba00          MOVSS XMM0,dword ptr [0x00baa9d0]
00584441  f30f118358030000          MOVSS dword ptr [EBX + 0x358],XMM0
00584449  837b3000                  CMP dword ptr [EBX + 0x30],0x0
0058444d  7518                      JNZ 0x00584467
0058444f  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00584457  0f2f833c030000            COMISS XMM0,dword ptr [EBX + 0x33c]
0058445e  0f97c0                    SETA AL
00584461  888348010000              MOV byte ptr [EBX + 0x148],AL
00584467  8b83bc030000              MOV EAX,dword ptr [EBX + 0x3bc]
0058446d  85c0                      TEST EAX,EAX
0058446f  743d                      JZ 0x005844ae
00584471  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00584479  f30f5883b00b0000          ADDSS XMM0,dword ptr [EBX + 0xbb0]
00584481  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00584489  f30f588bb40b0000          ADDSS XMM1,dword ptr [EBX + 0xbb4]
00584491  f30f5c833c030000          SUBSS XMM0,dword ptr [EBX + 0x33c]
00584499  f30f5c8b40030000          SUBSS XMM1,dword ptr [EBX + 0x340]
005844a1  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
005844a9  e9c91c0000                JMP 0x00586177
005844ae  8d8c2430020000            LEA ECX,[ESP + 0x230]
005844b5  e8b617ebff                CALL 0x00435c70
005844ba  8b13                      MOV EDX,dword ptr [EBX]
005844bc  8bcb                      MOV ECX,EBX
005844be  50                        PUSH EAX
005844bf  ff5224                    CALL dword ptr [EDX + 0x24]
005844c2  e9b81c0000                JMP 0x0058617f
005844c7  3bde                      CMP EBX,ESI
005844c9  0f856a1a0000              JNZ 0x00585f39
005844cf  8b83640b0000              MOV EAX,dword ptr [EBX + 0xb64]
005844d5  83f806                    CMP EAX,0x6
005844d8  0f8545140000              JNZ 0x00585923
005844de  8bb310040000              MOV ESI,dword ptr [EBX + 0x410]
005844e4  85f6                      TEST ESI,ESI
005844e6  0f88be130000              JS 0x005858aa
005844ec  f30f1083c40b0000          MOVSS XMM0,dword ptr [EBX + 0xbc4]
005844f4  0f2fc1                    COMISS XMM0,XMM1
005844f7  0f82ad130000              JC 0x005858aa
005844fd  837b3002                  CMP dword ptr [EBX + 0x30],0x2
00584501  7526                      JNZ 0x00584529
00584503  f30f580590a4ba00          ADDSS XMM0,dword ptr [0x00baa490]
0058450b  b828f1b100                MOV EAX,0xb1f128
00584510  8d8c248c000000            LEA ECX,[ESP + 0x8c]
00584517  0f2f059ca8ba00            COMISS XMM0,dword ptr [0x00baa89c]
0058451e  f30f1184248c000000        MOVSS dword ptr [ESP + 0x8c],XMM0
00584527  eb24                      JMP 0x0058454d
00584529  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00584531  b824f1b100                MOV EAX,0xb1f124
00584536  8d8c2490000000            LEA ECX,[ESP + 0x90]
0058453d  0f2f053ca8ba00            COMISS XMM0,dword ptr [0x00baa83c]
00584544  f30f11842490000000        MOVSS dword ptr [ESP + 0x90],XMM0
0058454d  0f46c1                    CMOVBE EAX,ECX
00584550  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00584554  f30f1183c40b0000          MOVSS dword ptr [EBX + 0xbc4],XMM0
0058455c  83fe03                    CMP ESI,0x3
0058455f  772d                      JA 0x0058458e
00584561  64a12c000000              MOV EAX,FS:[0x2c]
00584567  8b08                      MOV ECX,dword ptr [EAX]
00584569  a12000c800                MOV EAX,[0x00c80020]
0058456e  3b810c000000              CMP EAX,dword ptr [ECX + 0xc]
00584574  0f8fd11e0000              JG 0x0058644b
0058457a  f30f1014f52400c800        MOVSS XMM2,dword ptr [ESI*0x8 + 0xc80024]
00584583  f30f101cf52800c800        MOVSS XMM3,dword ptr [ESI*0x8 + 0xc80028]
0058458c  eb10                      JMP 0x0058459e
0058458e  f30f101540b6c700          MOVSS XMM2,dword ptr [0x00c7b640]
00584596  f30f101d44b6c700          MOVSS XMM3,dword ptr [0x00c7b644]
0058459e  f30f1083c40b0000          MOVSS XMM0,dword ptr [EBX + 0xbc4]
005845a6  32c0                      XOR AL,AL
005845a8  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
005845ac  0f28c8                    MOVAPS XMM1,XMM0
005845af  f30f59c3                  MULSS XMM0,XMM3
005845b3  ba01000000                MOV EDX,0x1
005845b8  89442410                  MOV dword ptr [ESP + 0x10],EAX
005845bc  f30f59ca                  MULSS XMM1,XMM2
005845c0  f30f588338030000          ADDSS XMM0,dword ptr [EBX + 0x338]
005845c8  f30f1015e8a8ba00          MOVSS XMM2,dword ptr [0x00baa8e8]
005845d0  f30f588b34030000          ADDSS XMM1,dword ptr [EBX + 0x334]
005845d8  f30f118338030000          MOVSS dword ptr [EBX + 0x338],XMM0
005845e0  f30f118b34030000          MOVSS dword ptr [EBX + 0x334],XMM1
005845e8  f30f104114                MOVSS XMM0,dword ptr [ECX + 0x14]
005845ed  f30f5cc2                  SUBSS XMM0,XMM2
005845f1  0f2fc1                    COMISS XMM0,XMM1
005845f4  760c                      JBE 0x00584602
005845f6  83bb1004000000            CMP dword ptr [EBX + 0x410],0x0
005845fd  0f94c0                    SETZ AL
00584600  eb1b                      JMP 0x0058461d
00584602  f30f10411c                MOVSS XMM0,dword ptr [ECX + 0x1c]
00584607  f30f58c2                  ADDSS XMM0,XMM2
0058460b  0f2fc8                    COMISS XMM1,XMM0
0058460e  7619                      JBE 0x00584629
00584610  83bb1004000002            CMP dword ptr [EBX + 0x410],0x2
00584617  0fb6c0                    MOVZX EAX,AL
0058461a  0f44c2                    CMOVZ EAX,EDX
0058461d  89442410                  MOV dword ptr [ESP + 0x10],EAX
00584621  f30f118334030000          MOVSS dword ptr [EBX + 0x334],XMM0
00584629  f30f104118                MOVSS XMM0,dword ptr [ECX + 0x18]
0058462e  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
00584636  f30f5cc2                  SUBSS XMM0,XMM2
0058463a  f30f109b38030000          MOVSS XMM3,dword ptr [EBX + 0x338]
00584642  f30f58c1                  ADDSS XMM0,XMM1
00584646  0f2fc3                    COMISS XMM0,XMM3
00584649  7616                      JBE 0x00584661
0058464b  f30f118338030000          MOVSS dword ptr [EBX + 0x338],XMM0
00584653  399310040000              CMP dword ptr [EBX + 0x410],EDX
00584659  7531                      JNZ 0x0058468c
0058465b  88542410                  MOV byte ptr [ESP + 0x10],DL
0058465f  eb2b                      JMP 0x0058468c
00584661  f30f104120                MOVSS XMM0,dword ptr [ECX + 0x20]
00584666  f30f58c2                  ADDSS XMM0,XMM2
0058466a  f30f58c1                  ADDSS XMM0,XMM1
0058466e  0f2fd8                    COMISS XMM3,XMM0
00584671  7619                      JBE 0x0058468c
00584673  83bb1004000003            CMP dword ptr [EBX + 0x410],0x3
0058467a  0fb6c0                    MOVZX EAX,AL
0058467d  0f44c2                    CMOVZ EAX,EDX
00584680  f30f118338030000          MOVSS dword ptr [EBX + 0x338],XMM0
00584688  88442410                  MOV byte ptr [ESP + 0x10],AL
0058468c  e8cfa81600                CALL 0x006eef60
00584691  33d2                      XOR EDX,EDX
00584693  f30f1015f8a1ba00          MOVSS XMM2,dword ptr [0x00baa1f8]
0058469b  b91e000000                MOV ECX,0x1e
005846a0  f30f1083c40b0000          MOVSS XMM0,dword ptr [EBX + 0xbc4]
005846a8  f7f1                      DIV ECX
005846aa  85d2                      TEST EDX,EDX
005846ac  750c                      JNZ 0x005846ba
005846ae  f30f59c2                  MULSS XMM0,XMM2
005846b2  f30f1183c40b0000          MOVSS dword ptr [EBX + 0xbc4],XMM0
005846ba  807c241000                CMP byte ptr [ESP + 0x10],0x0
005846bf  0f28c8                    MOVAPS XMM1,XMM0
005846c2  8a9348010000              MOV DL,byte ptr [EBX + 0x148]
005846c8  7435                      JZ 0x005846ff
005846ca  33c9                      XOR ECX,ECX
005846cc  f30f59c2                  MULSS XMM0,XMM2
005846d0  84d2                      TEST DL,DL
005846d2  0f95c1                    SETNZ CL
005846d5  f30f1183c40b0000          MOVSS dword ptr [EBX + 0xbc4],XMM0
005846dd  8d0c4d01000000            LEA ECX,[ECX*0x2 + 0x1]
005846e4  038b10040000              ADD ECX,dword ptr [EBX + 0x410]
005846ea  81e103000080              AND ECX,0x80000003
005846f0  7905                      JNS 0x005846f7
005846f2  49                        DEC ECX
005846f3  83c9fc                    OR ECX,0xfffffffc
005846f6  41                        INC ECX
005846f7  898b10040000              MOV dword ptr [EBX + 0x410],ECX
005846fd  eb09                      JMP 0x00584708
005846ff  8b8b10040000              MOV ECX,dword ptr [EBX + 0x410]
00584705  0f28c1                    MOVAPS XMM0,XMM1
00584708  33c0                      XOR EAX,EAX
0058470a  8af2                      MOV DH,DL
0058470c  84f6                      TEST DH,DH
0058470e  0f94c0                    SETZ AL
00584711  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
00584718  03c1                      ADD EAX,ECX
0058471a  2503000080                AND EAX,0x80000003
0058471f  7905                      JNS 0x00584726
00584721  48                        DEC EAX
00584722  83c8fc                    OR EAX,0xfffffffc
00584725  40                        INC EAX
00584726  8b848464030000            MOV EAX,dword ptr [ESP + EAX*0x4 + 0x364]
0058472d  f30f101d30a6ba00          MOVSS XMM3,dword ptr [0x00baa630]
00584735  8983ec000000              MOV dword ptr [EBX + 0xec],EAX
0058473b  f30f1093bc0b0000          MOVSS XMM2,dword ptr [EBX + 0xbbc]
00584743  84d2                      TEST DL,DL
00584745  7412                      JZ 0x00584759
00584747  f30f100d28aeba00          MOVSS XMM1,dword ptr [0x00baae28]
0058474f  f30f5cd3                  SUBSS XMM2,XMM3
00584753  f30f5fca                  MAXSS XMM1,XMM2
00584757  eb10                      JMP 0x00584769
00584759  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
00584761  f30f58d3                  ADDSS XMM2,XMM3
00584765  f30f5dca                  MINSS XMM1,XMM2
00584769  0f2fc3                    COMISS XMM0,XMM3
0058476c  f30f118bbc0b0000          MOVSS dword ptr [EBX + 0xbbc],XMM1
00584774  0f8630110000              JBE 0x005858aa
0058477a  837b3002                  CMP dword ptr [EBX + 0x30],0x2
0058477e  b803000000                MOV EAX,0x3
00584783  b906000000                MOV ECX,0x6
00584788  0f44c8                    CMOVZ ECX,EAX
0058478b  e880a80f00                CALL 0x0067f010
00584790  85c0                      TEST EAX,EAX
00584792  0f8512110000              JNZ 0x005858aa
00584798  33d2                      XOR EDX,EDX
0058479a  389348010000              CMP byte ptr [EBX + 0x148],DL
005847a0  0f95c2                    SETNZ DL
005847a3  8d145501000000            LEA EDX,[EDX*0x2 + 0x1]
005847aa  039310040000              ADD EDX,dword ptr [EBX + 0x410]
005847b0  81e203000080              AND EDX,0x80000003
005847b6  7905                      JNS 0x005847bd
005847b8  4a                        DEC EDX
005847b9  83cafc                    OR EDX,0xfffffffc
005847bc  42                        INC EDX
005847bd  8d8c24c8000000            LEA ECX,[ESP + 0xc8]
005847c4  e807aa0f00                CALL 0x0067f1d0
005847c9  c78424c000000000000000    MOV dword ptr [ESP + 0xc0],0x0
005847d4  e887a71600                CALL 0x006eef60
005847d9  6840b6c700                PUSH 0xc7b640
005847de  68804ec300                PUSH 0xc34e80
005847e3  8d933c030000              LEA EDX,[EBX + 0x33c]
005847e9  b904000000                MOV ECX,0x4
005847ee  660f6ec0                  MOVD XMM0,EAX
005847f2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005847f6  c1e81f                    SHR EAX,0x1f
005847f9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00584802  8d8424c8000000            LEA EAX,[ESP + 0xc8]
00584809  50                        PUSH EAX
0058480a  660f5ac8                  CVTPD2PS XMM1,XMM0
0058480e  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
00584816  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0058481e  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
00584826  f30f5cc1                  SUBSS XMM0,XMM1
0058482a  f30f118424d0000000        MOVSS dword ptr [ESP + 0xd0],XMM0
00584833  e8b8341500                CALL 0x006d7cf0
00584838  83c40c                    ADD ESP,0xc
0058483b  e820a71600                CALL 0x006eef60
00584840  33d2                      XOR EDX,EDX
00584842  b903000000                MOV ECX,0x3
00584847  f7f1                      DIV ECX
00584849  85d2                      TEST EDX,EDX
0058484b  740a                      JZ 0x00584857
0058484d  837b3002                  CMP dword ptr [EBX + 0x30],0x2
00584851  0f8553100000              JNZ 0x005858aa
00584857  e804a71600                CALL 0x006eef60
0058485c  660f6ec0                  MOVD XMM0,EAX
00584860  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00584864  c1e81f                    SHR EAX,0x1f
00584867  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00584870  660f5ac0                  CVTPD2PS XMM0,XMM0
00584874  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0058487c  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
00584884  f30f590510a9ba00          MULSS XMM0,dword ptr [0x00baa910]
0058488c  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00584894  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0058489a  e8a18ce9ff                CALL 0x0041d540
0058489f  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
005848a5  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
005848ab  e8708ce9ff                CALL 0x0041d520
005848b0  0f28e8                    MOVAPS XMM5,XMM0
005848b3  f30f1044245c              MOVSS XMM0,dword ptr [ESP + 0x5c]
005848b9  0f28cd                    MOVAPS XMM1,XMM5
005848bc  0f28e0                    MOVAPS XMM4,XMM0
005848bf  f30f59a424c8000000        MULSS XMM4,dword ptr [ESP + 0xc8]
005848c8  f30f598c24cc000000        MULSS XMM1,dword ptr [ESP + 0xcc]
005848d1  f30f59ac24c8000000        MULSS XMM5,dword ptr [ESP + 0xc8]
005848da  f30f598424cc000000        MULSS XMM0,dword ptr [ESP + 0xcc]
005848e3  f30f5ce1                  SUBSS XMM4,XMM1
005848e7  f30f58e8                  ADDSS XMM5,XMM0
005848eb  f30f11642424              MOVSS dword ptr [ESP + 0x24],XMM4
005848f1  f30f116c2410              MOVSS dword ptr [ESP + 0x10],XMM5
005848f7  e864a61600                CALL 0x006eef60
005848fc  660f6ec0                  MOVD XMM0,EAX
00584900  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00584904  c1e81f                    SHR EAX,0x1f
00584907  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00584910  660f5ad0                  CVTPD2PS XMM2,XMM0
00584914  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0058491c  0f28c2                    MOVAPS XMM0,XMM2
0058491f  f30f59542410              MULSS XMM2,dword ptr [ESP + 0x10]
00584925  f30f59442424              MULSS XMM0,dword ptr [ESP + 0x24]
0058492b  f30f591534a8ba00          MULSS XMM2,dword ptr [0x00baa834]
00584933  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
0058493b  f30f589340030000          ADDSS XMM2,dword ptr [EBX + 0x340]
00584943  f30f58833c030000          ADDSS XMM0,dword ptr [EBX + 0x33c]
0058494b  f30f11942480000000        MOVSS dword ptr [ESP + 0x80],XMM2
00584954  f30f1144247c              MOVSS dword ptr [ESP + 0x7c],XMM0
0058495a  e801a61600                CALL 0x006eef60
0058495f  f30f104c2424              MOVSS XMM1,dword ptr [ESP + 0x24]
00584965  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
0058496d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00584973  6a00                      PUSH 0x0
00584975  50                        PUSH EAX
00584976  6a00                      PUSH 0x0
00584978  6a00                      PUSH 0x0
0058497a  8d8424e0000000            LEA EAX,[ESP + 0xe0]
00584981  f30f118c24e0000000        MOVSS dword ptr [ESP + 0xe0],XMM1
0058498a  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
00584990  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00584998  50                        PUSH EAX
00584999  8d842490000000            LEA EAX,[ESP + 0x90]
005849a0  50                        PUSH EAX
005849a1  6a05                      PUSH 0x5
005849a3  68e8030000                PUSH 0x3e8
005849a8  f30f118c24f4000000        MOVSS dword ptr [ESP + 0xf4],XMM1
005849b1  e85a9a1700                CALL 0x006fe410
005849b6  8bf0                      MOV ESI,EAX
005849b8  68804ec300                PUSH 0xc34e80
005849bd  8d4e48                    LEA ECX,[ESI + 0x48]
005849c0  e80b2ae8ff                CALL 0x004073d0
005849c5  8b16                      MOV EDX,dword ptr [ESI]
005849c7  8bce                      MOV ECX,ESI
005849c9  ff520c                    CALL dword ptr [EDX + 0xc]
005849cc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005849d2  6a04                      PUSH 0x4
005849d4  e897ec1700                CALL 0x00703670
005849d9  837b3002                  CMP dword ptr [EBX + 0x30],0x2
005849dd  0f85c70e0000              JNZ 0x005858aa
005849e3  8b742420                  MOV ESI,dword ptr [ESP + 0x20]
005849e7  8d44247c                  LEA EAX,[ESP + 0x7c]
005849eb  f30f101d5ca7ba00          MOVSS XMM3,dword ptr [0x00baa75c]
005849f3  83ec0c                    SUB ESP,0xc
005849f6  8bce                      MOV ECX,ESI
005849f8  c744240800008040          MOV dword ptr [ESP + 0x8],0x40800000
00584a00  c744240400008040          MOV dword ptr [ESP + 0x4],0x40800000
00584a08  c7042400008040            MOV dword ptr [ESP],0x40800000
00584a0f  50                        PUSH EAX
00584a10  8d442464                  LEA EAX,[ESP + 0x64]
00584a14  50                        PUSH EAX
00584a15  e836e52800                CALL 0x00812f50
00584a1a  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00584a22  8d442468                  LEA EAX,[ESP + 0x68]
00584a26  f30f5c442454              SUBSS XMM0,dword ptr [ESP + 0x54]
00584a2c  50                        PUSH EAX
00584a2d  8d8c24dc000000            LEA ECX,[ESP + 0xdc]
00584a34  f30f118424dc000000        MOVSS dword ptr [ESP + 0xdc],XMM0
00584a3d  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00584a45  f30f5c44245c              SUBSS XMM0,dword ptr [ESP + 0x5c]
00584a4b  f30f118424e0000000        MOVSS dword ptr [ESP + 0xe0],XMM0
00584a54  e8d7b54800                CALL 0x00a10030
00584a59  e802a51600                CALL 0x006eef60
00584a5e  8bce                      MOV ECX,ESI
00584a60  660f6ec0                  MOVD XMM0,EAX
00584a64  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00584a68  c1e81f                    SHR EAX,0x1f
00584a6b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00584a74  660f5ac8                  CVTPD2PS XMM1,XMM0
00584a78  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00584a80  f30f590d50a9ba00          MULSS XMM1,dword ptr [0x00baa950]
00584a88  f30f580d7ca8ba00          ADDSS XMM1,dword ptr [0x00baa87c]
00584a90  0f28c1                    MOVAPS XMM0,XMM1
00584a93  f30f594c246c              MULSS XMM1,dword ptr [ESP + 0x6c]
00584a99  f30f59442468              MULSS XMM0,dword ptr [ESP + 0x68]
00584a9f  f30f584c2458              ADDSS XMM1,dword ptr [ESP + 0x58]
00584aa5  f30f58442454              ADDSS XMM0,dword ptr [ESP + 0x54]
00584aab  f30f114c2464              MOVSS dword ptr [ESP + 0x64],XMM1
00584ab1  ff742464                  PUSH dword ptr [ESP + 0x64]
00584ab5  f30f11442464              MOVSS dword ptr [ESP + 0x64],XMM0
00584abb  ff742464                  PUSH dword ptr [ESP + 0x64]
00584abf  e8bcbc2600                CALL 0x007f0780
00584ac4  85c0                      TEST EAX,EAX
00584ac6  0f84af000000              JZ 0x00584b7b
00584acc  6a00                      PUSH 0x0
00584ace  6a00                      PUSH 0x0
00584ad0  6a00                      PUSH 0x0
00584ad2  51                        PUSH ECX
00584ad3  c7042400000000            MOV dword ptr [ESP],0x0
00584ada  8d442470                  LEA EAX,[ESP + 0x70]
00584ade  50                        PUSH EAX
00584adf  8d84242c010000            LEA EAX,[ESP + 0x12c]
00584ae6  8bce                      MOV ECX,ESI
00584ae8  50                        PUSH EAX
00584ae9  e832ea2800                CALL 0x00813520
00584aee  8bf0                      MOV ESI,EAX
00584af0  e86ba41600                CALL 0x006eef60
00584af5  660f6ec0                  MOVD XMM0,EAX
00584af9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00584afd  c1e81f                    SHR EAX,0x1f
00584b00  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00584b09  660f5ac0                  CVTPD2PS XMM0,XMM0
00584b0d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00584b15  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
00584b1d  f30f5c0554a8ba00          SUBSS XMM0,dword ptr [0x00baa854]
00584b25  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00584b2b  e830a41600                CALL 0x006eef60
00584b30  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
00584b36  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
00584b3b  660f6ec0                  MOVD XMM0,EAX
00584b3f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00584b43  c1e81f                    SHR EAX,0x1f
00584b46  f30f114c2464              MOVSS dword ptr [ESP + 0x64],XMM1
00584b4c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00584b55  660f5ac0                  CVTPD2PS XMM0,XMM0
00584b59  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00584b61  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
00584b69  f30f5c0554a8ba00          SUBSS XMM0,dword ptr [0x00baa854]
00584b71  f30f5806                  ADDSS XMM0,dword ptr [ESI]
00584b75  f30f11442460              MOVSS dword ptr [ESP + 0x60],XMM0
00584b7b  e8e0a31600                CALL 0x006eef60
00584b80  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00584b86  8944245c                  MOV dword ptr [ESP + 0x5c],EAX
00584b8a  8d44245c                  LEA EAX,[ESP + 0x5c]
00584b8e  50                        PUSH EAX
00584b8f  8d44242c                  LEA EAX,[ESP + 0x2c]
00584b93  89742434                  MOV dword ptr [ESP + 0x34],ESI
00584b97  50                        PUSH EAX
00584b98  53                        PUSH EBX
00584b99  6840b6c700                PUSH 0xc7b640
00584b9e  8d442464                  LEA EAX,[ESP + 0x64]
00584ba2  c744243864000000          MOV dword ptr [ESP + 0x38],0x64
00584baa  50                        PUSH EAX
00584bab  8d442430                  LEA EAX,[ESP + 0x30]
00584baf  c744243017000000          MOV dword ptr [ESP + 0x30],0x17
00584bb7  50                        PUSH EAX
00584bb8  8d842488000000            LEA EAX,[ESP + 0x88]
00584bbf  c7842488000000e8030000    MOV dword ptr [ESP + 0x88],0x3e8
00584bca  50                        PUSH EAX
00584bcb  e810fb2d00                CALL 0x008646e0
00584bd0  a17816c700                MOV EAX,[0x00c71678]
00584bd5  8b4c2470                  MOV ECX,dword ptr [ESP + 0x70]
00584bd9  894c2438                  MOV dword ptr [ESP + 0x38],ECX
00584bdd  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00584be4  0f8ca3020000              JL 0x00584e8d
00584bea  8b8020660200              MOV EAX,dword ptr [EAX + 0x26620]
00584bf0  89442410                  MOV dword ptr [ESP + 0x10],EAX
00584bf4  e867a31600                CALL 0x006eef60
00584bf9  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
00584c01  8bf0                      MOV ESI,EAX
00584c03  a174f6b100                MOV EAX,[0x00b1f674]
00584c08  8b4c2438                  MOV ECX,dword ptr [ESP + 0x38]
00584c0c  8b54241c                  MOV EDX,dword ptr [ESP + 0x1c]
00584c10  89742424                  MOV dword ptr [ESP + 0x24],ESI
00584c14  660fd6842424010000        MOVQ qword ptr [ESP + 0x124],XMM0
00584c1d  89442448                  MOV dword ptr [ESP + 0x48],EAX
00584c21  8984242c010000            MOV dword ptr [ESP + 0x12c],EAX
00584c28  83f905                    CMP ECX,0x5
00584c2b  0f858d000000              JNZ 0x00584cbe
00584c31  81fa2c010000              CMP EDX,0x12c
00584c37  0f8706020000              JA 0x00584e43
00584c3d  0f845a010000              JZ 0x00584d9d
00584c43  83fa46                    CMP EDX,0x46
00584c46  0f84a9000000              JZ 0x00584cf5
00584c4c  83fa64                    CMP EDX,0x64
00584c4f  756d                      JNZ 0x00584cbe
00584c51  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
00584c55  8b742410                  MOV ESI,dword ptr [ESP + 0x10]
00584c59  83f819                    CMP EAX,0x19
00584c5c  743e                      JZ 0x00584c9c
00584c5e  89842494000000            MOV dword ptr [ESP + 0x94],EAX
00584c65  8d4e20                    LEA ECX,[ESI + 0x20]
00584c68  8d842494000000            LEA EAX,[ESP + 0x94]
00584c6f  50                        PUSH EAX
00584c70  8d842418020000            LEA EAX,[ESP + 0x218]
00584c77  50                        PUSH EAX
00584c78  e8233ceaff                CALL 0x004288a0
00584c7d  8b8c241c020000            MOV ECX,dword ptr [ESP + 0x21c]
00584c84  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
00584c88  80790d00                  CMP byte ptr [ECX + 0xd],0x0
00584c8c  750a                      JNZ 0x00584c98
00584c8e  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
00584c91  7c05                      JL 0x00584c98
00584c93  3b4e20                    CMP ECX,dword ptr [ESI + 0x20]
00584c96  7504                      JNZ 0x00584c9c
00584c98  b101                      MOV CL,0x1
00584c9a  eb02                      JMP 0x00584c9e
00584c9c  32c9                      XOR CL,CL
00584c9e  85c0                      TEST EAX,EAX
00584ca0  7404                      JZ 0x00584ca6
00584ca2  84c9                      TEST CL,CL
00584ca4  7410                      JZ 0x00584cb6
00584ca6  8b06                      MOV EAX,dword ptr [ESI]
00584ca8  8bce                      MOV ECX,ESI
00584caa  6a00                      PUSH 0x0
00584cac  ff9084000000              CALL dword ptr [EAX + 0x84]
00584cb2  89442428                  MOV dword ptr [ESP + 0x28],EAX
00584cb6  8b4c2438                  MOV ECX,dword ptr [ESP + 0x38]
00584cba  8b54241c                  MOV EDX,dword ptr [ESP + 0x1c]
00584cbe  8b742430                  MOV ESI,dword ptr [ESP + 0x30]
00584cc2  8b8368010000              MOV EAX,dword ptr [EBX + 0x168]
00584cc8  2500000020                AND EAX,0x20000000
00584ccd  83c800                    OR EAX,0x0
00584cd0  0f84f0010000              JZ 0x00584ec6
00584cd6  81f9e8030000              CMP ECX,0x3e8
00584cdc  0f85e4010000              JNZ 0x00584ec6
00584ce2  83c2ea                    ADD EDX,-0x16
00584ce5  83fa04                    CMP EDX,0x4
00584ce8  0f87d8010000              JA 0x00584ec6
00584cee  ff249594645800            JMP dword ptr [EDX*0x4 + 0x586494]
00584cf5  8b542428                  MOV EDX,dword ptr [ESP + 0x28]
00584cf9  8bc2                      MOV EAX,EDX
00584cfb  c1e80b                    SHR EAX,0xb
00584cfe  89442440                  MOV dword ptr [ESP + 0x40],EAX
00584d02  85d2                      TEST EDX,EDX
00584d04  742c                      JZ 0x00584d32
00584d06  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
00584d0a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00584d10  6a00                      PUSH 0x0
00584d12  52                        PUSH EDX
00584d13  8b00                      MOV EAX,dword ptr [EAX]
00584d15  8d8940a70100              LEA ECX,[ECX + 0x1a740]
00584d1b  8b7028                    MOV ESI,dword ptr [EAX + 0x28]
00584d1e  e85dfd1a00                CALL 0x00734a80
00584d23  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
00584d27  50                        PUSH EAX
00584d28  ffd6                      CALL ESI
00584d2a  84c0                      TEST AL,AL
00584d2c  7488                      JZ 0x00584cb6
00584d2e  8b742424                  MOV ESI,dword ptr [ESP + 0x24]
00584d32  a17816c700                MOV EAX,[0x00c71678]
00584d37  0540a70100                ADD EAX,0x1a740
00584d3c  89442418                  MOV dword ptr [ESP + 0x18],EAX
00584d40  85f6                      TEST ESI,ESI
00584d42  7510                      JNZ 0x00584d54
00584d44  6854bfb600                PUSH 0xb6bf54
00584d49  6a10                      PUSH 0x10
00584d4b  e870c54800                CALL 0x00a112c0
00584d50  83c408                    ADD ESP,0x8
00584d53  cc                        INT3
00584d54  8b8c2424010000            MOV ECX,dword ptr [ESP + 0x124]
00584d5b  8bd6                      MOV EDX,ESI
00584d5d  d3ea                      SHR EDX,CL
00584d5f  8b8c2428010000            MOV ECX,dword ptr [ESP + 0x128]
00584d66  33d6                      XOR EDX,ESI
00584d68  8bc2                      MOV EAX,EDX
00584d6a  d3e0                      SHL EAX,CL
00584d6c  8b4c2448                  MOV ECX,dword ptr [ESP + 0x48]
00584d70  33c2                      XOR EAX,EDX
00584d72  8bf0                      MOV ESI,EAX
00584d74  d3ee                      SHR ESI,CL
00584d76  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00584d7a  33f0                      XOR ESI,EAX
00584d7c  56                        PUSH ESI
00584d7d  89742428                  MOV dword ptr [ESP + 0x28],ESI
00584d81  e87afb1a00                CALL 0x00734900
00584d86  8b4c2440                  MOV ECX,dword ptr [ESP + 0x40]
00584d8a  8bd0                      MOV EDX,EAX
00584d8c  83e101                    AND ECX,0x1
00584d8f  c1e10b                    SHL ECX,0xb
00584d92  0bd1                      OR EDX,ECX
00584d94  89542428                  MOV dword ptr [ESP + 0x28],EDX
00584d98  e965ffffff                JMP 0x00584d02
00584d9d  8b542428                  MOV EDX,dword ptr [ESP + 0x28]
00584da1  85d2                      TEST EDX,EDX
00584da3  7414                      JZ 0x00584db9
00584da5  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
00584da9  52                        PUSH EDX
00584daa  8b01                      MOV EAX,dword ptr [ECX]
00584dac  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
00584daf  ffd0                      CALL EAX
00584db1  84c0                      TEST AL,AL
00584db3  0f84fdfeffff              JZ 0x00584cb6
00584db9  85f6                      TEST ESI,ESI
00584dbb  7510                      JNZ 0x00584dcd
00584dbd  6854bfb600                PUSH 0xb6bf54
00584dc2  6a10                      PUSH 0x10
00584dc4  e8f7c44800                CALL 0x00a112c0
00584dc9  83c408                    ADD ESP,0x8
00584dcc  cc                        INT3
00584dcd  8b8c2424010000            MOV ECX,dword ptr [ESP + 0x124]
00584dd4  8bc6                      MOV EAX,ESI
00584dd6  d3e8                      SHR EAX,CL
00584dd8  8b8c2428010000            MOV ECX,dword ptr [ESP + 0x128]
00584ddf  33c6                      XOR EAX,ESI
00584de1  8bd0                      MOV EDX,EAX
00584de3  d3e2                      SHL EDX,CL
00584de5  8b4c2448                  MOV ECX,dword ptr [ESP + 0x48]
00584de9  33d0                      XOR EDX,EAX
00584deb  6a01                      PUSH 0x1
00584ded  6a0a                      PUSH 0xa
00584def  8bf2                      MOV ESI,EDX
00584df1  6a0a                      PUSH 0xa
00584df3  d3ee                      SHR ESI,CL
00584df5  33f2                      XOR ESI,EDX
00584df7  6a19                      PUSH 0x19
00584df9  56                        PUSH ESI
00584dfa  e881f31a00                CALL 0x00734180
00584dff  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
00584e07  8b0d74f6b100              MOV ECX,dword ptr [0x00b1f674]
00584e0d  6a00                      PUSH 0x0
00584e0f  6a01                      PUSH 0x1
00584e11  6a01                      PUSH 0x1
00584e13  50                        PUSH EAX
00584e14  8d842490020000            LEA EAX,[ESP + 0x290]
00584e1b  89b42490020000            MOV dword ptr [ESP + 0x290],ESI
00584e22  50                        PUSH EAX
00584e23  660fd6842498020000        MOVQ qword ptr [ESP + 0x298],XMM0
00584e2c  898c24a0020000            MOV dword ptr [ESP + 0x2a0],ECX
00584e33  e808052e00                CALL 0x00865340
00584e38  8bd0                      MOV EDX,EAX
00584e3a  89542428                  MOV dword ptr [ESP + 0x28],EDX
00584e3e  e95effffff                JMP 0x00584da1
00584e43  81fa5e010000              CMP EDX,0x15e
00584e49  0f856ffeffff              JNZ 0x00584cbe
00584e4f  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
00584e53  8b7c2410                  MOV EDI,dword ptr [ESP + 0x10]
00584e57  85c9                      TEST ECX,ECX
00584e59  740e                      JZ 0x00584e69
00584e5b  8b07                      MOV EAX,dword ptr [EDI]
00584e5d  51                        PUSH ECX
00584e5e  8bcf                      MOV ECX,EDI
00584e60  8b402c                    MOV EAX,dword ptr [EAX + 0x2c]
00584e63  ffd0                      CALL EAX
00584e65  84c0                      TEST AL,AL
00584e67  741b                      JZ 0x00584e84
00584e69  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00584e6f  6a00                      PUSH 0x0
00584e71  8d8940a70100              LEA ECX,[ECX + 0x1a740]
00584e77  e824ee1a00                CALL 0x00733ca0
00584e7c  8bc8                      MOV ECX,EAX
00584e7e  894c2428                  MOV dword ptr [ESP + 0x28],ECX
00584e82  ebd3                      JMP 0x00584e57
00584e84  8b7c243c                  MOV EDI,dword ptr [ESP + 0x3c]
00584e88  e929feffff                JMP 0x00584cb6
00584e8d  8b54241c                  MOV EDX,dword ptr [ESP + 0x1c]
00584e91  e92cfeffff                JMP 0x00584cc2
00584ec6  6a00                      PUSH 0x0
00584ec8  51                        PUSH ECX
00584ec9  8b8e80650200              MOV ECX,dword ptr [ESI + 0x26580]
00584ecf  e8bcb11600                CALL 0x006f0090
00584ed4  89442418                  MOV dword ptr [ESP + 0x18],EAX
00584ed8  85c0                      TEST EAX,EAX
00584eda  0f8443080000              JZ 0x00585723
00584ee0  e8ab354e00                CALL 0x00a68490
00584ee5  8bda                      MOV EBX,EDX
00584ee7  8bc8                      MOV ECX,EAX
00584ee9  badb34b6d7                MOV EDX,0xd7b634db
00584eee  895c2440                  MOV dword ptr [ESP + 0x40],EBX
00584ef2  f7e2                      MUL EDX
00584ef4  bf82de1b43                MOV EDI,0x431bde82
00584ef9  89442448                  MOV dword ptr [ESP + 0x48],EAX
00584efd  8bf2                      MOV ESI,EDX
00584eff  8bc1                      MOV EAX,ECX
00584f01  b9db34b6d7                MOV ECX,0xd7b634db
00584f06  f7e7                      MUL EDI
00584f08  8bf8                      MOV EDI,EAX
00584f0a  89542448                  MOV dword ptr [ESP + 0x48],EDX
00584f0e  8bc3                      MOV EAX,EBX
00584f10  f7e1                      MUL ECX
00584f12  8bc8                      MOV ECX,EAX
00584f14  8bda                      MOV EBX,EDX
00584f16  8b442440                  MOV EAX,dword ptr [ESP + 0x40]
00584f1a  ba82de1b43                MOV EDX,0x431bde82
00584f1f  f7e2                      MUL EDX
00584f21  03ce                      ADD ECX,ESI
00584f23  8b742434                  MOV ESI,dword ptr [ESP + 0x34]
00584f27  89442424                  MOV dword ptr [ESP + 0x24],EAX
00584f2b  83d300                    ADC EBX,0x0
00584f2e  03f9                      ADD EDI,ECX
00584f30  8b4c2448                  MOV ECX,dword ptr [ESP + 0x48]
00584f34  83d100                    ADC ECX,0x0
00584f37  897c2440                  MOV dword ptr [ESP + 0x40],EDI
00584f3b  33c0                      XOR EAX,EAX
00584f3d  03d9                      ADD EBX,ECX
00584f3f  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
00584f43  13c0                      ADC EAX,EAX
00584f45  03cb                      ADD ECX,EBX
00584f47  8b5c2418                  MOV EBX,dword ptr [ESP + 0x18]
00584f4b  13d0                      ADC EDX,EAX
00584f4d  8dbbc8030000              LEA EDI,[EBX + 0x3c8]
00584f53  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
00584f56  0facd112                  SHRD ECX,EDX,0x12
00584f5a  894334                    MOV dword ptr [EBX + 0x34],EAX
00584f5d  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
00584f60  894c2424                  MOV dword ptr [ESP + 0x24],ECX
00584f64  c1ea12                    SHR EDX,0x12
00584f67  894338                    MOV dword ptr [EBX + 0x38],EAX
00584f6a  8b0f                      MOV ECX,dword ptr [EDI]
00584f6c  89542440                  MOV dword ptr [ESP + 0x40],EDX
00584f70  85c9                      TEST ECX,ECX
00584f72  7414                      JZ 0x00584f88
00584f74  8d44242c                  LEA EAX,[ESP + 0x2c]
00584f78  897c242c                  MOV dword ptr [ESP + 0x2c],EDI
00584f7c  50                        PUSH EAX
00584f7d  81c1cc030000              ADD ECX,0x3cc
00584f83  e888a2f4ff                CALL 0x004cf210
00584f88  57                        PUSH EDI
00584f89  8bce                      MOV ECX,ESI
00584f8b  8937                      MOV dword ptr [EDI],ESI
00584f8d  e85e8df4ff                CALL 0x004cdcf0
00584f92  f30f10442454              MOVSS XMM0,dword ptr [ESP + 0x54]
00584f98  8bcb                      MOV ECX,EBX
00584f9a  ff74245c                  PUSH dword ptr [ESP + 0x5c]
00584f9e  8b03                      MOV EAX,dword ptr [EBX]
00584fa0  ff74242c                  PUSH dword ptr [ESP + 0x2c]
00584fa4  8b7c2440                  MOV EDI,dword ptr [ESP + 0x40]
00584fa8  ff742424                  PUSH dword ptr [ESP + 0x24]
00584fac  f30f11833c030000          MOVSS dword ptr [EBX + 0x33c],XMM0
00584fb4  f30f10442464              MOVSS XMM0,dword ptr [ESP + 0x64]
00584fba  f30f118340030000          MOVSS dword ptr [EBX + 0x340],XMM0
00584fc2  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00584fca  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
00584fd2  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00584fda  57                        PUSH EDI
00584fdb  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
00584fe3  ff5004                    CALL dword ptr [EAX + 0x4]
00584fe6  8b442430                  MOV EAX,dword ptr [ESP + 0x30]
00584fea  53                        PUSH EBX
00584feb  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
00584ff1  8b8a14120000              MOV ECX,dword ptr [EDX + 0x1214]
00584ff7  8d4101                    LEA EAX,[ECX + 0x1]
00584ffa  898214120000              MOV dword ptr [EDX + 0x1214],EAX
00585000  894b20                    MOV dword ptr [EBX + 0x20],ECX
00585003  8d8a18120000              LEA ECX,[EDX + 0x1218]
00585009  e8f234e9ff                CALL 0x00418500
0058500e  6a01                      PUSH 0x1
00585010  8bce                      MOV ECX,ESI
00585012  e8790b1300                CALL 0x006b5b90
00585017  84c0                      TEST AL,AL
00585019  0f8451050000              JZ 0x00585570
0058501f  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00585025  33c0                      XOR EAX,EAX
00585027  81e100000010              AND ECX,0x10000000
0058502d  0bc1                      OR EAX,ECX
0058502f  0f8418020000              JZ 0x0058524d
00585035  8b836c010000              MOV EAX,dword ptr [EBX + 0x16c]
0058503b  8b8b68010000              MOV ECX,dword ptr [EBX + 0x168]
00585041  0d00000010                OR EAX,0x10000000
00585046  898b68010000              MOV dword ptr [EBX + 0x168],ECX
0058504c  89836c010000              MOV dword ptr [EBX + 0x16c],EAX
00585052  83ff09                    CMP EDI,0x9
00585055  7414                      JZ 0x0058506b
00585057  83ff07                    CMP EDI,0x7
0058505a  740f                      JZ 0x0058506b
0058505c  83c820                    OR EAX,0x20
0058505f  898b68010000              MOV dword ptr [EBX + 0x168],ECX
00585065  89836c010000              MOV dword ptr [EBX + 0x16c],EAX
0058506b  8b9664020000              MOV EDX,dword ptr [ESI + 0x264]
00585071  85d2                      TEST EDX,EDX
00585073  0f84b1000000              JZ 0x0058512a
00585079  8b4228                    MOV EAX,dword ptr [EDX + 0x28]
0058507c  f30f108a3c030000          MOVSS XMM1,dword ptr [EDX + 0x33c]
00585084  f30f108240030000          MOVSS XMM0,dword ptr [EDX + 0x340]
0058508c  89842498000000            MOV dword ptr [ESP + 0x98],EAX
00585093  8b422c                    MOV EAX,dword ptr [EDX + 0x2c]
00585096  8984249c000000            MOV dword ptr [ESP + 0x9c],EAX
0058509d  8b4234                    MOV EAX,dword ptr [EDX + 0x34]
005850a0  898424a0000000            MOV dword ptr [ESP + 0xa0],EAX
005850a7  8b4238                    MOV EAX,dword ptr [EDX + 0x38]
005850aa  898424a4000000            MOV dword ptr [ESP + 0xa4],EAX
005850b1  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
005850b7  f30f118c2400020000        MOVSS dword ptr [ESP + 0x200],XMM1
005850c0  2500010000                AND EAX,0x100
005850c5  83c800                    OR EAX,0x0
005850c8  f30f11842404020000        MOVSS dword ptr [ESP + 0x204],XMM0
005850d1  f30f118c24a8000000        MOVSS dword ptr [ESP + 0xa8],XMM1
005850da  f30f108a60030000          MOVSS XMM1,dword ptr [EDX + 0x360]
005850e2  f30f118424ac000000        MOVSS dword ptr [ESP + 0xac],XMM0
005850eb  f30f108264030000          MOVSS XMM0,dword ptr [EDX + 0x364]
005850f3  f30f118c2408020000        MOVSS dword ptr [ESP + 0x208],XMM1
005850fc  f30f1184240c020000        MOVSS dword ptr [ESP + 0x20c],XMM0
00585105  f30f118c24b0000000        MOVSS dword ptr [ESP + 0xb0],XMM1
0058510e  f30f118424b4000000        MOVSS dword ptr [ESP + 0xb4],XMM0
00585117  0f8491000000              JZ 0x005851ae
0058511d  c744241001000000          MOV dword ptr [ESP + 0x10],0x1
00585125  e990000000                JMP 0x005851ba
0058512a  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00585132  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0058513a  c784249800000000000000    MOV dword ptr [ESP + 0x98],0x0
00585145  c784249c00000000000000    MOV dword ptr [ESP + 0x9c],0x0
00585150  c78424a000000000000000    MOV dword ptr [ESP + 0xa0],0x0
0058515b  c78424a400000000000000    MOV dword ptr [ESP + 0xa4],0x0
00585166  f30f118c24d0010000        MOVSS dword ptr [ESP + 0x1d0],XMM1
0058516f  f30f118424d4010000        MOVSS dword ptr [ESP + 0x1d4],XMM0
00585178  f30f118c24a8000000        MOVSS dword ptr [ESP + 0xa8],XMM1
00585181  f30f118424ac000000        MOVSS dword ptr [ESP + 0xac],XMM0
0058518a  f30f118c24d8010000        MOVSS dword ptr [ESP + 0x1d8],XMM1
00585193  f30f118424dc010000        MOVSS dword ptr [ESP + 0x1dc],XMM0
0058519c  f30f118c24b0000000        MOVSS dword ptr [ESP + 0xb0],XMM1
005851a5  f30f118424b4000000        MOVSS dword ptr [ESP + 0xb4],XMM0
005851ae  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
005851b6  85d2                      TEST EDX,EDX
005851b8  741a                      JZ 0x005851d4
005851ba  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
005851c0  2500000020                AND EAX,0x20000000
005851c5  83c800                    OR EAX,0x0
005851c8  7412                      JZ 0x005851dc
005851ca  c744244802000000          MOV dword ptr [ESP + 0x48],0x2
005851d2  eb14                      JMP 0x005851e8
005851d4  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
005851dc  c744244800000000          MOV dword ptr [ESP + 0x48],0x0
005851e4  85d2                      TEST EDX,EDX
005851e6  7419                      JZ 0x00585201
005851e8  8b8a6c010000              MOV ECX,dword ptr [EDX + 0x16c]
005851ee  33c0                      XOR EAX,EAX
005851f0  81e100004000              AND ECX,0x400000
005851f6  0bc1                      OR EAX,ECX
005851f8  7407                      JZ 0x00585201
005851fa  b804000000                MOV EAX,0x4
005851ff  eb02                      JMP 0x00585203
00585201  33c0                      XOR EAX,EAX
00585203  0b442448                  OR EAX,dword ptr [ESP + 0x48]
00585207  8bcb                      MOV ECX,EBX
00585209  0b442410                  OR EAX,dword ptr [ESP + 0x10]
0058520d  6a00                      PUSH 0x0
0058520f  6a00                      PUSH 0x0
00585211  898424c0000000            MOV dword ptr [ESP + 0xc0],EAX
00585218  8d8424a0000000            LEA EAX,[ESP + 0xa0]
0058521f  6aff                      PUSH -0x1
00585221  50                        PUSH EAX
00585222  899424cc000000            MOV dword ptr [ESP + 0xcc],EDX
00585229  e842861200                CALL 0x006ad870
0058522e  8d47f6                    LEA EAX,[EDI + -0xa]
00585231  3ddd030000                CMP EAX,0x3dd
00585236  7741                      JA 0x00585279
00585238  6a01                      PUSH 0x1
0058523a  ff742420                  PUSH dword ptr [ESP + 0x20]
0058523e  8d4b48                    LEA ECX,[EBX + 0x48]
00585241  8bd7                      MOV EDX,EDI
00585243  e8c80af2ff                CALL 0x004a5d10
00585248  83c408                    ADD ESP,0x8
0058524b  eb2c                      JMP 0x00585279
0058524d  6a00                      PUSH 0x0
0058524f  6800000020                PUSH 0x20000000
00585254  8bce                      MOV ECX,ESI
00585256  e8d521e9ff                CALL 0x00417430
0058525b  84c0                      TEST AL,AL
0058525d  741a                      JZ 0x00585279
0058525f  6a00                      PUSH 0x0
00585261  6a00                      PUSH 0x0
00585263  6aff                      PUSH -0x1
00585265  8d8c2464020000            LEA ECX,[ESP + 0x264]
0058526c  e8ff09ebff                CALL 0x00435c70
00585271  50                        PUSH EAX
00585272  8bcb                      MOV ECX,EBX
00585274  e8f7851200                CALL 0x006ad870
00585279  6a00                      PUSH 0x0
0058527b  68acd6c500                PUSH 0xc5d6ac
00585280  68dcd5c500                PUSH 0xc5d5dc
00585285  6a00                      PUSH 0x0
00585287  56                        PUSH ESI
00585288  e824b65600                CALL 0x00af08b1
0058528d  83c414                    ADD ESP,0x14
00585290  89442448                  MOV dword ptr [ESP + 0x48],EAX
00585294  6a00                      PUSH 0x0
00585296  68acd6c500                PUSH 0xc5d6ac
0058529b  68dcd5c500                PUSH 0xc5d5dc
005852a0  6a00                      PUSH 0x0
005852a2  53                        PUSH EBX
005852a3  e809b65600                CALL 0x00af08b1
005852a8  83c414                    ADD ESP,0x14
005852ab  8bf8                      MOV EDI,EAX
005852ad  837c244800                CMP dword ptr [ESP + 0x48],0x0
005852b2  0f84b8020000              JZ 0x00585570
005852b8  85ff                      TEST EDI,EDI
005852ba  0f84b0020000              JZ 0x00585570
005852c0  6a00                      PUSH 0x0
005852c2  6a01                      PUSH 0x1
005852c4  8bcf                      MOV ECX,EDI
005852c6  e86521e9ff                CALL 0x00417430
005852cb  84c0                      TEST AL,AL
005852cd  0f85b1010000              JNZ 0x00585484
005852d3  6800000001                PUSH 0x1000000
005852d8  6a00                      PUSH 0x0
005852da  8bce                      MOV ECX,ESI
005852dc  e84f21e9ff                CALL 0x00417430
005852e1  84c0                      TEST AL,AL
005852e3  0f84ab000000              JZ 0x00585394
005852e9  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
005852f1  8d842430010000            LEA EAX,[ESP + 0x130]
005852f8  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00585300  8bcf                      MOV ECX,EDI
00585302  6a5a                      PUSH 0x5a
00585304  50                        PUSH EAX
00585305  c784243801000000000000    MOV dword ptr [ESP + 0x138],0x0
00585310  c784243c01000000000000    MOV dword ptr [ESP + 0x13c],0x0
0058531b  c784244001000000000000    MOV dword ptr [ESP + 0x140],0x0
00585326  c784244401000000000000    MOV dword ptr [ESP + 0x144],0x0
00585331  f30f118c24e8010000        MOVSS dword ptr [ESP + 0x1e8],XMM1
0058533a  f30f118424ec010000        MOVSS dword ptr [ESP + 0x1ec],XMM0
00585343  f30f118c2448010000        MOVSS dword ptr [ESP + 0x148],XMM1
0058534c  f30f1184244c010000        MOVSS dword ptr [ESP + 0x14c],XMM0
00585355  f30f118c24f0010000        MOVSS dword ptr [ESP + 0x1f0],XMM1
0058535e  f30f118424f4010000        MOVSS dword ptr [ESP + 0x1f4],XMM0
00585367  f30f118c2450010000        MOVSS dword ptr [ESP + 0x150],XMM1
00585370  f30f11842454010000        MOVSS dword ptr [ESP + 0x154],XMM0
00585379  c784245801000000000000    MOV dword ptr [ESP + 0x158],0x0
00585384  c784245c01000000000000    MOV dword ptr [ESP + 0x15c],0x0
0058538f  e83c251300                CALL 0x006b78d0
00585394  6a00                      PUSH 0x0
00585396  6800000001                PUSH 0x1000000
0058539b  8bce                      MOV ECX,ESI
0058539d  e88e20e9ff                CALL 0x00417430
005853a2  84c0                      TEST AL,AL
005853a4  0f84da000000              JZ 0x00585484
005853aa  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
005853b2  8d842458010000            LEA EAX,[ESP + 0x158]
005853b9  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005853c1  8bcf                      MOV ECX,EDI
005853c3  6a00                      PUSH 0x0
005853c5  6a00                      PUSH 0x0
005853c7  6a5a                      PUSH 0x5a
005853c9  50                        PUSH EAX
005853ca  c784246801000000000000    MOV dword ptr [ESP + 0x168],0x0
005853d5  c784246c01000000000000    MOV dword ptr [ESP + 0x16c],0x0
005853e0  c784247001000000000000    MOV dword ptr [ESP + 0x170],0x0
005853eb  c784247401000000000000    MOV dword ptr [ESP + 0x174],0x0
005853f6  f30f118c2400020000        MOVSS dword ptr [ESP + 0x200],XMM1
005853ff  f30f11842404020000        MOVSS dword ptr [ESP + 0x204],XMM0
00585408  f30f118c2478010000        MOVSS dword ptr [ESP + 0x178],XMM1
00585411  f30f1184247c010000        MOVSS dword ptr [ESP + 0x17c],XMM0
0058541a  f30f118c2408020000        MOVSS dword ptr [ESP + 0x208],XMM1
00585423  f30f1184240c020000        MOVSS dword ptr [ESP + 0x20c],XMM0
0058542c  f30f118c2480010000        MOVSS dword ptr [ESP + 0x180],XMM1
00585435  f30f11842484010000        MOVSS dword ptr [ESP + 0x184],XMM0
0058543e  c784248801000000000000    MOV dword ptr [ESP + 0x188],0x0
00585449  c784248c01000000000000    MOV dword ptr [ESP + 0x18c],0x0
00585454  e8b7071300                CALL 0x006b5c10
00585459  83bf3c02000000            CMP dword ptr [EDI + 0x23c],0x0
00585460  7e22                      JLE 0x00585484
00585462  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00585468  818f6801000000000001      OR dword ptr [EDI + 0x168],0x1000000
00585472  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00585478  8b87b8030000              MOV EAX,dword ptr [EDI + 0x3b8]
0058547e  8987b4030000              MOV dword ptr [EDI + 0x3b4],EAX
00585484  8b742448                  MOV ESI,dword ptr [ESP + 0x48]
00585488  8bcf                      MOV ECX,EDI
0058548a  f30f108f380c0000          MOVSS XMM1,dword ptr [EDI + 0xc38]
00585492  8b07                      MOV EAX,dword ptr [EDI]
00585494  f30f598e480f0000          MULSS XMM1,dword ptr [ESI + 0xf48]
0058549c  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
0058549f  f30f118f380c0000          MOVSS dword ptr [EDI + 0xc38],XMM1
005854a7  f30f598fb4030000          MULSS XMM1,dword ptr [EDI + 0x3b4]
005854af  0f28c1                    MOVAPS XMM0,XMM1
005854b2  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
005854ba  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
005854c2  f30f118fe8000000          MOVSS dword ptr [EDI + 0xe8],XMM1
005854ca  f30f1187e4000000          MOVSS dword ptr [EDI + 0xe4],XMM0
005854d2  f30f1087480f0000          MOVSS XMM0,dword ptr [EDI + 0xf48]
005854da  f30f5986480f0000          MULSS XMM0,dword ptr [ESI + 0xf48]
005854e2  f30f1187480f0000          MOVSS dword ptr [EDI + 0xf48],XMM0
005854ea  f30f1086440f0000          MOVSS XMM0,dword ptr [ESI + 0xf44]
005854f2  f30f5987440f0000          MULSS XMM0,dword ptr [EDI + 0xf44]
005854fa  f30f1187440f0000          MOVSS dword ptr [EDI + 0xf44],XMM0
00585502  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0058550a  f30f5986440f0000          MULSS XMM0,dword ptr [ESI + 0xf44]
00585512  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
0058551a  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00585522  f30f5986440f0000          MULSS XMM0,dword ptr [ESI + 0xf44]
0058552a  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
00585532  ffd0                      CALL EAX
00585534  84c0                      TEST AL,AL
00585536  7438                      JZ 0x00585570
00585538  8bb6540f0000              MOV ESI,dword ptr [ESI + 0xf54]
0058553e  81c7540f0000              ADD EDI,0xf54
00585544  8b0f                      MOV ECX,dword ptr [EDI]
00585546  3bce                      CMP ECX,ESI
00585548  7426                      JZ 0x00585570
0058554a  85c9                      TEST ECX,ECX
0058554c  7414                      JZ 0x00585562
0058554e  8d442414                  LEA EAX,[ESP + 0x14]
00585552  897c2414                  MOV dword ptr [ESP + 0x14],EDI
00585556  50                        PUSH EAX
00585557  81c1cc030000              ADD ECX,0x3cc
0058555d  e8ae9cf4ff                CALL 0x004cf210
00585562  8937                      MOV dword ptr [EDI],ESI
00585564  85f6                      TEST ESI,ESI
00585566  7408                      JZ 0x00585570
00585568  57                        PUSH EDI
00585569  8bce                      MOV ECX,ESI
0058556b  e88087f4ff                CALL 0x004cdcf0
00585570  53                        PUSH EBX
00585571  e87a231800                CALL 0x007078f0
00585576  84c0                      TEST AL,AL
00585578  7407                      JZ 0x00585581
0058557a  51                        PUSH ECX
0058557b  53                        PUSH EBX
0058557c  e83f241800                CALL 0x007079c0
00585581  80bb7201000000            CMP byte ptr [EBX + 0x172],0x0
00585588  0f8403010000              JZ 0x00585691
0058558e  8b542430                  MOV EDX,dword ptr [ESP + 0x30]
00585592  8b8258770600              MOV EAX,dword ptr [EDX + 0x67758]
00585598  3b825c770600              CMP EAX,dword ptr [EDX + 0x6775c]
0058559e  0f84ed000000              JZ 0x00585691
005855a4  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
005855a7  8db280770600              LEA ESI,[EDX + 0x67780]
005855ad  8b4b28                    MOV ECX,dword ptr [EBX + 0x28]
005855b0  898424e4000000            MOV dword ptr [ESP + 0xe4],EAX
005855b7  8d8424e0000000            LEA EAX,[ESP + 0xe0]
005855be  50                        PUSH EAX
005855bf  8d442478                  LEA EAX,[ESP + 0x78]
005855c3  898c24e4000000            MOV dword ptr [ESP + 0xe4],ECX
005855ca  50                        PUSH EAX
005855cb  8bce                      MOV ECX,ESI
005855cd  e8cece4500                CALL 0x009e24a0
005855d2  8b3e                      MOV EDI,dword ptr [ESI]
005855d4  397c2474                  CMP dword ptr [ESP + 0x74],EDI
005855d8  753a                      JNZ 0x00585614
005855da  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
005855dd  8bce                      MOV ECX,ESI
005855df  898424e8000000            MOV dword ptr [ESP + 0xe8],EAX
005855e6  8d8424e8000000            LEA EAX,[ESP + 0xe8]
005855ed  50                        PUSH EAX
005855ee  8d842414020000            LEA EAX,[ESP + 0x214]
005855f5  c78424f0000000ffffffff    MOV dword ptr [ESP + 0xf0],0xffffffff
00585600  50                        PUSH EAX
00585601  e89ace4500                CALL 0x009e24a0
00585606  8b00                      MOV EAX,dword ptr [EAX]
00585608  89442474                  MOV dword ptr [ESP + 0x74],EAX
0058560c  3bc7                      CMP EAX,EDI
0058560e  0f847d000000              JZ 0x00585691
00585614  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0058561a  33ff                      XOR EDI,EDI
0058561c  81c6a8ba0100              ADD ESI,0x1baa8
00585622  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00585625  2b06                      SUB EAX,dword ptr [ESI]
00585627  c1f802                    SAR EAX,0x2
0058562a  85c0                      TEST EAX,EAX
0058562c  7463                      JZ 0x00585691
0058562e  6690                      NOP
00585630  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
00585633  8bc1                      MOV EAX,ECX
00585635  2b06                      SUB EAX,dword ptr [ESI]
00585637  c1f802                    SAR EAX,0x2
0058563a  85c0                      TEST EAX,EAX
0058563c  7512                      JNZ 0x00585650
0058563e  68bce6b700                PUSH 0xb7e6bc
00585643  6a10                      PUSH 0x10
00585645  e876bc4800                CALL 0x00a112c0
0058564a  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0058564d  83c408                    ADD ESP,0x8
00585650  8b06                      MOV EAX,dword ptr [ESI]
00585652  2bc8                      SUB ECX,EAX
00585654  c1f902                    SAR ECX,0x2
00585657  3bf9                      CMP EDI,ECX
00585659  7303                      JNC 0x0058565e
0058565b  8d04b8                    LEA EAX,[EAX + EDI*0x4]
0058565e  6840b6c700                PUSH 0xc7b640
00585663  8d4c2458                  LEA ECX,[ESP + 0x58]
00585667  51                        PUSH ECX
00585668  8b08                      MOV ECX,dword ptr [EAX]
0058566a  53                        PUSH EBX
0058566b  6a06                      PUSH 0x6
0058566d  81c1c81f0000              ADD ECX,0x1fc8
00585673  e808b04500                CALL 0x009e0680
00585678  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0058567e  47                        INC EDI
0058567f  81c6a8ba0100              ADD ESI,0x1baa8
00585685  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00585688  2b06                      SUB EAX,dword ptr [ESI]
0058568a  c1f802                    SAR EAX,0x2
0058568d  3bf8                      CMP EDI,EAX
0058568f  729f                      JC 0x00585630
00585691  e8fa2d4e00                CALL 0x00a68490
00585696  8bda                      MOV EBX,EDX
00585698  8bc8                      MOV ECX,EAX
0058569a  badb34b6d7                MOV EDX,0xd7b634db
0058569f  895c2414                  MOV dword ptr [ESP + 0x14],EBX
005856a3  f7e2                      MUL EDX
005856a5  bf82de1b43                MOV EDI,0x431bde82
005856aa  89842418010000            MOV dword ptr [ESP + 0x118],EAX
005856b1  8bf2                      MOV ESI,EDX
005856b3  8bc1                      MOV EAX,ECX
005856b5  b9db34b6d7                MOV ECX,0xd7b634db
005856ba  f7e7                      MUL EDI
005856bc  8bf8                      MOV EDI,EAX
005856be  8954242c                  MOV dword ptr [ESP + 0x2c],EDX
005856c2  8bc3                      MOV EAX,EBX
005856c4  f7e1                      MUL ECX
005856c6  8bda                      MOV EBX,EDX
005856c8  8bc8                      MOV ECX,EAX
005856ca  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
005856ce  ba82de1b43                MOV EDX,0x431bde82
005856d3  f7e2                      MUL EDX
005856d5  03ce                      ADD ECX,ESI
005856d7  89442414                  MOV dword ptr [ESP + 0x14],EAX
005856db  83d300                    ADC EBX,0x0
005856de  03f9                      ADD EDI,ECX
005856e0  8b4c242c                  MOV ECX,dword ptr [ESP + 0x2c]
005856e4  83d100                    ADC ECX,0x0
005856e7  89bc2418010000            MOV dword ptr [ESP + 0x118],EDI
005856ee  8b7c243c                  MOV EDI,dword ptr [ESP + 0x3c]
005856f2  33c0                      XOR EAX,EAX
005856f4  03d9                      ADD EBX,ECX
005856f6  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
005856fa  13c0                      ADC EAX,EAX
005856fc  03cb                      ADD ECX,EBX
005856fe  8b5c2434                  MOV EBX,dword ptr [ESP + 0x34]
00585702  13d0                      ADC EDX,EAX
00585704  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
00585708  0facd112                  SHRD ECX,EDX,0x12
0058570c  c1ea12                    SHR EDX,0x12
0058570f  2b4c2424                  SUB ECX,dword ptr [ESP + 0x24]
00585713  1b542440                  SBB EDX,dword ptr [ESP + 0x40]
00585717  010d30b6c700              ADD dword ptr [0x00c7b630],ECX
0058571d  111534b6c700              ADC dword ptr [0x00c7b634],EDX
00585723  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
0058572b  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
00585733  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
0058573b  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
00585743  f30f1188e8000000          MOVSS dword ptr [EAX + 0xe8],XMM1
0058574b  f30f1180e4000000          MOVSS dword ptr [EAX + 0xe4],XMM0
00585753  e808981600                CALL 0x006eef60
00585758  51                        PUSH ECX
00585759  8bcb                      MOV ECX,EBX
0058575b  660f6ec0                  MOVD XMM0,EAX
0058575f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00585763  c1e81f                    SHR EAX,0x1f
00585766  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0058576f  660f5ac0                  CVTPD2PS XMM0,XMM0
00585773  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0058577b  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00585783  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0058578b  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
00585793  f30f110424                MOVSS dword ptr [ESP],XMM0
00585798  e8330d1300                CALL 0x006b64d0
0058579d  6a01                      PUSH 0x1
0058579f  8bf0                      MOV ESI,EAX
005857a1  6a00                      PUSH 0x0
005857a3  68ff000000                PUSH 0xff
005857a8  6aff                      PUSH -0x1
005857aa  8b16                      MOV EDX,dword ptr [ESI]
005857ac  8bce                      MOV ECX,ESI
005857ae  68804ec300                PUSH 0xc34e80
005857b3  ff523c                    CALL dword ptr [EDX + 0x3c]
005857b6  8b06                      MOV EAX,dword ptr [ESI]
005857b8  8bce                      MOV ECX,ESI
005857ba  ff500c                    CALL dword ptr [EAX + 0xc]
005857bd  e89e971600                CALL 0x006eef60
005857c2  33d2                      XOR EDX,EDX
005857c4  b903000000                MOV ECX,0x3
005857c9  f7f1                      DIV ECX
005857cb  85d2                      TEST EDX,EDX
005857cd  754d                      JNZ 0x0058581c
005857cf  f30f101d5ca8ba00          MOVSS XMM3,dword ptr [0x00baa85c]
005857d7  8d44247c                  LEA EAX,[ESP + 0x7c]
005857db  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
005857df  83ec0c                    SUB ESP,0xc
005857e2  c744240800008041          MOV dword ptr [ESP + 0x8],0x41800000
005857ea  c744240400008041          MOV dword ptr [ESP + 0x4],0x41800000
005857f2  c7042400008041            MOV dword ptr [ESP],0x41800000
005857f9  50                        PUSH EAX
005857fa  8d842438020000            LEA EAX,[ESP + 0x238]
00585801  50                        PUSH EAX
00585802  e849d72800                CALL 0x00812f50
00585807  f30f101590adba00          MOVSS XMM2,dword ptr [0x00baad90]
0058580f  8d4c247c                  LEA ECX,[ESP + 0x7c]
00585813  50                        PUSH EAX
00585814  e8f730f5ff                CALL 0x004d8910
00585819  83c404                    ADD ESP,0x4
0058581c  8d8c2490020000            LEA ECX,[ESP + 0x290]
00585823  e80897ebff                CALL 0x0043ef30
00585828  68d84ec300                PUSH 0xc34ed8
0058582d  8d8c24c0020000            LEA ECX,[ESP + 0x2c0]
00585834  e8b719e8ff                CALL 0x004071f0
00585839  f30f104c2468              MOVSS XMM1,dword ptr [ESP + 0x68]
0058583f  8d842490020000            LEA EAX,[ESP + 0x290]
00585846  f30f590d30aaba00          MULSS XMM1,dword ptr [0x00baaa30]
0058584e  50                        PUSH EAX
0058584f  51                        PUSH ECX
00585850  c7042400000000            MOV dword ptr [ESP],0x0
00585857  8d8424f8000000            LEA EAX,[ESP + 0xf8]
0058585e  f30f584c245c              ADDSS XMM1,dword ptr [ESP + 0x5c]
00585864  50                        PUSH EAX
00585865  6a01                      PUSH 0x1
00585867  8bcb                      MOV ECX,EBX
00585869  c78424f802000000200000    MOV dword ptr [ESP + 0x2f8],0x2000
00585874  c78424fc02000000000000    MOV dword ptr [ESP + 0x2fc],0x0
0058587f  f30f118c2400010000        MOVSS dword ptr [ESP + 0x100],XMM1
00585888  f30f104c247c              MOVSS XMM1,dword ptr [ESP + 0x7c]
0058588e  f30f590d30aaba00          MULSS XMM1,dword ptr [0x00baaa30]
00585896  f30f584c2468              ADDSS XMM1,dword ptr [ESP + 0x68]
0058589c  f30f118c2404010000        MOVSS dword ptr [ESP + 0x104],XMM1
005858a5  e826751400                CALL 0x006ccdd0
005858aa  f30f108b34030000          MOVSS XMM1,dword ptr [EBX + 0x334]
005858b2  f30f108338030000          MOVSS XMM0,dword ptr [EBX + 0x338]
005858ba  f30f5c8340030000          SUBSS XMM0,dword ptr [EBX + 0x340]
005858c2  f30f5c8b3c030000          SUBSS XMM1,dword ptr [EBX + 0x33c]
005858ca  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
005858d2  f30f118b60030000          MOVSS dword ptr [EBX + 0x360],XMM1
005858da  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
005858e2  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
005858ea  f30f59c1                  MULSS XMM0,XMM1
005858ee  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
005858f6  f30f1083340c0000          MOVSS XMM0,dword ptr [EBX + 0xc34]
005858fe  f30f59c1                  MULSS XMM0,XMM1
00585902  f30f1183340c0000          MOVSS dword ptr [EBX + 0xc34],XMM0
0058590a  f30f1083c00b0000          MOVSS XMM0,dword ptr [EBX + 0xbc0]
00585912  f30f59c1                  MULSS XMM0,XMM1
00585916  f30f1183c00b0000          MOVSS dword ptr [EBX + 0xbc0],XMM0
0058591e  e95c080000                JMP 0x0058617f
00585923  83f807                    CMP EAX,0x7
00585926  0f8535010000              JNZ 0x00585a61
0058592c  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00585934  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0058593c  f30f5c933c030000          SUBSS XMM2,dword ptr [EBX + 0x33c]
00585944  f30f5c8b40030000          SUBSS XMM1,dword ptr [EBX + 0x340]
0058594c  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00585954  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0058595c  f30f119360030000          MOVSS dword ptr [EBX + 0x360],XMM2
00585964  f30f118b64030000          MOVSS dword ptr [EBX + 0x364],XMM1
0058596c  f30f10939c030000          MOVSS XMM2,dword ptr [EBX + 0x39c]
00585974  0f2e1554a4ba00            UCOMISS XMM2,dword ptr [0x00baa454]
0058597b  c7836c0300000000803f      MOV dword ptr [EBX + 0x36c],0x3f800000
00585985  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
0058598d  9f                        LAHF
0058598e  f6c444                    TEST AH,0x44
00585991  7b13                      JNP 0x005859a6
00585993  0f28c2                    MOVAPS XMM0,XMM2
00585996  f30f59d1                  MULSS XMM2,XMM1
0058599a  f30f58c1                  ADDSS XMM0,XMM1
0058599e  f30f5cc2                  SUBSS XMM0,XMM2
005859a2  f30f5ec8                  DIVSS XMM1,XMM0
005859a6  f30f1087e8000000          MOVSS XMM0,dword ptr [EDI + 0xe8]
005859ae  0f28d1                    MOVAPS XMM2,XMM1
005859b1  f30f5997e4000000          MULSS XMM2,dword ptr [EDI + 0xe4]
005859b9  f30f59c1                  MULSS XMM0,XMM1
005859bd  f30f1197e4000000          MOVSS dword ptr [EDI + 0xe4],XMM2
005859c5  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
005859cb  f30f1187e8000000          MOVSS dword ptr [EDI + 0xe8],XMM0
005859d3  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005859db  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005859e3  f30f5c8340030000          SUBSS XMM0,dword ptr [EBX + 0x340]
005859eb  f30f5c8b3c030000          SUBSS XMM1,dword ptr [EBX + 0x33c]
005859f3  f30f59c0                  MULSS XMM0,XMM0
005859f7  f30f59c9                  MULSS XMM1,XMM1
005859fb  f30f58c1                  ADDSS XMM0,XMM1
005859ff  e84c00ebff                CALL 0x00435a50
00585a04  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
00585a0c  0f2fc8                    COMISS XMM1,XMM0
00585a0f  7713                      JA 0x00585a24
00585a11  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
00585a19  0f2f442414                COMISS XMM0,dword ptr [ESP + 0x14]
00585a1e  0f865b070000              JBE 0x0058617f
00585a24  8b07                      MOV EAX,dword ptr [EDI]
00585a26  8bcf                      MOV ECX,EDI
00585a28  ff5028                    CALL dword ptr [EAX + 0x28]
00585a2b  8bbfc0030000              MOV EDI,dword ptr [EDI + 0x3c0]
00585a31  85ff                      TEST EDI,EDI
00585a33  0f84fd090000              JZ 0x00586436
00585a39  817f288d030000            CMP dword ptr [EDI + 0x28],0x38d
00585a40  0f85f0090000              JNZ 0x00586436
00585a46  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
00585a4a  74d8                      JZ 0x00585a24
00585a4c  5f                        POP EDI
00585a4d  5e                        POP ESI
00585a4e  5b                        POP EBX
00585a4f  8b8c2468030000            MOV ECX,dword ptr [ESP + 0x368]
00585a56  33cc                      XOR ECX,ESP
00585a58  e8ce965600                CALL 0x00aef12b
00585a5d  8be5                      MOV ESP,EBP
00585a5f  5d                        POP EBP
00585a60  c3                        RET
00585a61  8d8b34030000              LEA ECX,[EBX + 0x334]
00585a67  c7837c03000000007a44      MOV dword ptr [EBX + 0x37c],0x447a0000
00585a71  6840b6c700                PUSH 0xc7b640
00585a76  e885ab4800                CALL 0x00a10600
00585a7b  84c0                      TEST AL,AL
00585a7d  0f85fc060000              JNZ 0x0058617f
00585a83  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
00585a88  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00585a90  f30f1011                  MOVSS XMM2,dword ptr [ECX]
00585a94  f30f10839c030000          MOVSS XMM0,dword ptr [EBX + 0x39c]
00585a9c  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00585aa4  f30f59c8                  MULSS XMM1,XMM0
00585aa8  f30f59d0                  MULSS XMM2,XMM0
00585aac  f30f588b64030000          ADDSS XMM1,dword ptr [EBX + 0x364]
00585ab4  f30f589360030000          ADDSS XMM2,dword ptr [EBX + 0x360]
00585abc  0f28c1                    MOVAPS XMM0,XMM1
00585abf  f30f114c242c              MOVSS dword ptr [ESP + 0x2c],XMM1
00585ac5  f30f59c1                  MULSS XMM0,XMM1
00585ac9  f30f118b64030000          MOVSS dword ptr [EBX + 0x364],XMM1
00585ad1  0f28ca                    MOVAPS XMM1,XMM2
00585ad4  f30f59ca                  MULSS XMM1,XMM2
00585ad8  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
00585ade  f30f119360030000          MOVSS dword ptr [EBX + 0x360],XMM2
00585ae6  f30f58c1                  ADDSS XMM0,XMM1
00585aea  e861ffeaff                CALL 0x00435a50
00585aef  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
00585af7  0f2fc1                    COMISS XMM0,XMM1
00585afa  762c                      JBE 0x00585b28
00585afc  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00585b03  7623                      JBE 0x00585b28
00585b05  f30f5ec8                  DIVSS XMM1,XMM0
00585b09  0f28c1                    MOVAPS XMM0,XMM1
00585b0c  f30f594c242c              MULSS XMM1,dword ptr [ESP + 0x2c]
00585b12  f30f59442414              MULSS XMM0,dword ptr [ESP + 0x14]
00585b18  f30f118b64030000          MOVSS dword ptr [EBX + 0x364],XMM1
00585b20  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
00585b28  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
00585b2c  f30f100de8a8ba00          MOVSS XMM1,dword ptr [0x00baa8e8]
00585b34  f30f10a33c030000          MOVSS XMM4,dword ptr [EBX + 0x33c]
00585b3c  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
00585b44  f30f105014                MOVSS XMM2,dword ptr [EAX + 0x14]
00585b49  f30f5cd1                  SUBSS XMM2,XMM1
00585b4d  0f2fd4                    COMISS XMM2,XMM4
00585b50  760a                      JBE 0x00585b5c
00585b52  c744242000000000          MOV dword ptr [ESP + 0x20],0x0
00585b5a  eb5a                      JMP 0x00585bb6
00585b5c  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
00585b61  f30f58c1                  ADDSS XMM0,XMM1
00585b65  0f2fe0                    COMISS XMM4,XMM0
00585b68  760a                      JBE 0x00585b74
00585b6a  c744242002000000          MOV dword ptr [ESP + 0x20],0x2
00585b72  eb42                      JMP 0x00585bb6
00585b74  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
00585b79  f30f10ab40030000          MOVSS XMM5,dword ptr [EBX + 0x340]
00585b81  f30f5cc1                  SUBSS XMM0,XMM1
00585b85  f30f58c3                  ADDSS XMM0,XMM3
00585b89  0f2fc5                    COMISS XMM0,XMM5
00585b8c  760a                      JBE 0x00585b98
00585b8e  c744242001000000          MOV dword ptr [ESP + 0x20],0x1
00585b96  eb1e                      JMP 0x00585bb6
00585b98  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
00585b9d  f30f58c1                  ADDSS XMM0,XMM1
00585ba1  f30f58c3                  ADDSS XMM0,XMM3
00585ba5  0f2fe8                    COMISS XMM5,XMM0
00585ba8  0f86d1050000              JBE 0x0058617f
00585bae  c744242003000000          MOV dword ptr [ESP + 0x20],0x3
00585bb6  0f2fd4                    COMISS XMM2,XMM4
00585bb9  760a                      JBE 0x00585bc5
00585bbb  f30f11933c030000          MOVSS dword ptr [EBX + 0x33c],XMM2
00585bc3  eb16                      JMP 0x00585bdb
00585bc5  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
00585bca  f30f58c1                  ADDSS XMM0,XMM1
00585bce  0f2fe0                    COMISS XMM4,XMM0
00585bd1  7608                      JBE 0x00585bdb
00585bd3  f30f11833c030000          MOVSS dword ptr [EBX + 0x33c],XMM0
00585bdb  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
00585be0  f30f109340030000          MOVSS XMM2,dword ptr [EBX + 0x340]
00585be8  f30f5cc1                  SUBSS XMM0,XMM1
00585bec  f30f58c3                  ADDSS XMM0,XMM3
00585bf0  0f2fc2                    COMISS XMM0,XMM2
00585bf3  7712                      JA 0x00585c07
00585bf5  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
00585bfa  f30f58c1                  ADDSS XMM0,XMM1
00585bfe  f30f58c3                  ADDSS XMM0,XMM3
00585c02  0f2fd0                    COMISS XMM2,XMM0
00585c05  7608                      JBE 0x00585c0f
00585c07  f30f118340030000          MOVSS dword ptr [EBX + 0x340],XMM0
00585c0f  51                        PUSH ECX
00585c10  c704240000803f            MOV dword ptr [ESP],0x3f800000
00585c17  6a00                      PUSH 0x0
00585c19  6a02                      PUSH 0x2
00585c1b  51                        PUSH ECX
00585c1c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00585c23  8bcb                      MOV ECX,EBX
00585c25  6a4d                      PUSH 0x4d
00585c27  e8740f1500                CALL 0x006d6ba0
00585c2c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00585c32  6a08                      PUSH 0x8
00585c34  e837da1700                CALL 0x00703670
00585c39  8d8c2438030000            LEA ECX,[ESP + 0x338]
00585c40  e82b15e8ff                CALL 0x00407170
00585c45  8bf0                      MOV ESI,EAX
00585c47  c78424f800000000000000    MOV dword ptr [ESP + 0xf8],0x0
00585c52  e809931600                CALL 0x006eef60
00585c57  6840b6c700                PUSH 0xc7b640
00585c5c  56                        PUSH ESI
00585c5d  8db33c030000              LEA ESI,[EBX + 0x33c]
00585c63  b904000000                MOV ECX,0x4
00585c68  660f6ec0                  MOVD XMM0,EAX
00585c6c  8bd6                      MOV EDX,ESI
00585c6e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00585c72  c1e81f                    SHR EAX,0x1f
00585c75  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00585c7e  8d842400010000            LEA EAX,[ESP + 0x100]
00585c85  50                        PUSH EAX
00585c86  660f5ac8                  CVTPD2PS XMM1,XMM0
00585c8a  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
00585c92  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00585c9a  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
00585ca2  f30f5cc1                  SUBSS XMM0,XMM1
00585ca6  f30f11842408010000        MOVSS dword ptr [ESP + 0x108],XMM0
00585caf  e83c201500                CALL 0x006d7cf0
00585cb4  83c40c                    ADD ESP,0xc
00585cb7  8bc8                      MOV ECX,EAX
00585cb9  8b10                      MOV EDX,dword ptr [EAX]
00585cbb  6a01                      PUSH 0x1
00585cbd  6a00                      PUSH 0x0
00585cbf  68ff000000                PUSH 0xff
00585cc4  6aff                      PUSH -0x1
00585cc6  68804ec300                PUSH 0xc34e80
00585ccb  ff523c                    CALL dword ptr [EDX + 0x3c]
00585cce  bf06000000                MOV EDI,0x6
00585cd3  e888921600                CALL 0x006eef60
00585cd8  660f6ec0                  MOVD XMM0,EAX
00585cdc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00585ce0  c1e81f                    SHR EAX,0x1f
00585ce3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00585cec  660f5ac0                  CVTPD2PS XMM0,XMM0
00585cf0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00585cf8  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
00585d00  f30f590510a9ba00          MULSS XMM0,dword ptr [0x00baa910]
00585d08  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00585d10  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00585d16  e82578e9ff                CALL 0x0041d540
00585d1b  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00585d21  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00585d27  e8f477e9ff                CALL 0x0041d520
00585d2c  f30f109334030000          MOVSS XMM2,dword ptr [EBX + 0x334]
00585d34  0f28e8                    MOVAPS XMM5,XMM0
00585d37  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
00585d3d  0f28cd                    MOVAPS XMM1,XMM5
00585d40  f30f109b38030000          MOVSS XMM3,dword ptr [EBX + 0x338]
00585d48  0f28e0                    MOVAPS XMM4,XMM0
00585d4b  f30f59e2                  MULSS XMM4,XMM2
00585d4f  f30f59cb                  MULSS XMM1,XMM3
00585d53  f30f59ea                  MULSS XMM5,XMM2
00585d57  f30f59c3                  MULSS XMM0,XMM3
00585d5b  f30f5ce1                  SUBSS XMM4,XMM1
00585d5f  f30f58e8                  ADDSS XMM5,XMM0
00585d63  f30f11642418              MOVSS dword ptr [ESP + 0x18],XMM4
00585d69  f30f116c2434              MOVSS dword ptr [ESP + 0x34],XMM5
00585d6f  e8ec911600                CALL 0x006eef60
00585d74  660f6ec0                  MOVD XMM0,EAX
00585d78  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00585d7c  c1e81f                    SHR EAX,0x1f
00585d7f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00585d88  660f5ac8                  CVTPD2PS XMM1,XMM0
00585d8c  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
00585d92  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00585d9a  f30f59c1                  MULSS XMM0,XMM1
00585d9e  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
00585da6  f30f5806                  ADDSS XMM0,dword ptr [ESI]
00585daa  f30f11842408010000        MOVSS dword ptr [ESP + 0x108],XMM0
00585db3  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
00585db9  f30f59c1                  MULSS XMM0,XMM1
00585dbd  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
00585dc5  f30f588340030000          ADDSS XMM0,dword ptr [EBX + 0x340]
00585dcd  f30f1184240c010000        MOVSS dword ptr [ESP + 0x10c],XMM0
00585dd6  e885911600                CALL 0x006eef60
00585ddb  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
00585de1  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00585de9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00585def  6a00                      PUSH 0x0
00585df1  50                        PUSH EAX
00585df2  6a00                      PUSH 0x0
00585df4  6a00                      PUSH 0x0
00585df6  8d842410010000            LEA EAX,[ESP + 0x110]
00585dfd  f30f11842410010000        MOVSS dword ptr [ESP + 0x110],XMM0
00585e06  f30f10442444              MOVSS XMM0,dword ptr [ESP + 0x44]
00585e0c  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00585e14  50                        PUSH EAX
00585e15  8d84241c010000            LEA EAX,[ESP + 0x11c]
00585e1c  50                        PUSH EAX
00585e1d  6a04                      PUSH 0x4
00585e1f  68e8030000                PUSH 0x3e8
00585e24  f30f11842424010000        MOVSS dword ptr [ESP + 0x124],XMM0
00585e2d  e8de851700                CALL 0x006fe410
00585e32  8bc8                      MOV ECX,EAX
00585e34  8b10                      MOV EDX,dword ptr [EAX]
00585e36  ff520c                    CALL dword ptr [EDX + 0xc]
00585e39  83ef01                    SUB EDI,0x1
00585e3c  0f8591feffff              JNZ 0x00585cd3
00585e42  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00585e4a  8b7c243c                  MOV EDI,dword ptr [ESP + 0x3c]
00585e4e  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
00585e56  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00585e5e  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
00585e66  8b06                      MOV EAX,dword ptr [ESI]
00585e68  898334030000              MOV dword ptr [EBX + 0x334],EAX
00585e6e  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00585e71  898338030000              MOV dword ptr [EBX + 0x338],EAX
00585e77  c783640b000006000000      MOV dword ptr [EBX + 0xb64],0x6
00585e81  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00585e89  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00585e91  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
00585e96  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
00585e9a  f30f59c0                  MULSS XMM0,XMM0
00585e9e  f30f59c9                  MULSS XMM1,XMM1
00585ea2  f30f58c1                  ADDSS XMM0,XMM1
00585ea6  e8a5fbeaff                CALL 0x00435a50
00585eab  f30f1183b80b0000          MOVSS dword ptr [EBX + 0xbb8],XMM0
00585eb3  b96c20b600                MOV ECX,0xb6206c
00585eb8  c783c00b00008fc2753d      MOV dword ptr [EBX + 0xbc0],0x3d75c28f
00585ec2  b87c20b600                MOV EAX,0xb6207c
00585ec7  837b3000                  CMP dword ptr [EBX + 0x30],0x0
00585ecb  6a00                      PUSH 0x0
00585ecd  0f44c1                    CMOVZ EAX,ECX
00585ed0  c783340c00000000b041      MOV dword ptr [EBX + 0xc34],0x41b00000
00585eda  50                        PUSH EAX
00585edb  8d4f48                    LEA ECX,[EDI + 0x48]
00585ede  e89d44e8ff                CALL 0x0040a380
00585ee3  6a00                      PUSH 0x0
00585ee5  68f0e5b100                PUSH 0xb1e5f0
00585eea  8d4b48                    LEA ECX,[EBX + 0x48]
00585eed  e88e44e8ff                CALL 0x0040a380
00585ef2  837b3000                  CMP dword ptr [EBX + 0x30],0x0
00585ef6  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
00585efa  8b848c64030000            MOV EAX,dword ptr [ESP + ECX*0x4 + 0x364]
00585f01  8983ec000000              MOV dword ptr [EBX + 0xec],EAX
00585f07  0f8472020000              JZ 0x0058617f
00585f0d  33c0                      XOR EAX,EAX
00585f0f  c783c40b0000000080bf      MOV dword ptr [EBX + 0xbc4],0xbf800000
00585f19  388348010000              CMP byte ptr [EBX + 0x148],AL
00585f1f  0f95c0                    SETNZ AL
00585f22  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
00585f29  03c1                      ADD EAX,ECX
00585f2b  83e003                    AND EAX,0x3
00585f2e  898310040000              MOV dword ptr [EBX + 0x410],EAX
00585f34  e946020000                JMP 0x0058617f
00585f39  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00585f41  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00585f49  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
00585f51  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
00585f59  f30f59c0                  MULSS XMM0,XMM0
00585f5d  f30f59c9                  MULSS XMM1,XMM1
00585f61  f30f58c1                  ADDSS XMM0,XMM1
00585f65  e8e6faeaff                CALL 0x00435a50
00585f6a  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00585f70  8d842420020000            LEA EAX,[ESP + 0x220]
00585f77  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00585f7f  8d8c2410010000            LEA ECX,[ESP + 0x110]
00585f86  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00585f8e  50                        PUSH EAX
00585f8f  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00585f95  f30f11842414010000        MOVSS dword ptr [ESP + 0x114],XMM0
00585f9e  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
00585fa6  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00585fae  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00585fb4  f30f11842418010000        MOVSS dword ptr [ESP + 0x118],XMM0
00585fbd  e86ea04800                CALL 0x00a10030
00585fc2  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
00585fca  8bf0                      MOV ESI,EAX
00585fcc  e86f75e9ff                CALL 0x0041d540
00585fd1  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00585fd7  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
00585fdf  e83c75e9ff                CALL 0x0041d520
00585fe4  f30f10642424              MOVSS XMM4,dword ptr [ESP + 0x24]
00585fea  0f28c8                    MOVAPS XMM1,XMM0
00585fed  f30f5906                  MULSS XMM0,dword ptr [ESI]
00585ff1  0f28ec                    MOVAPS XMM5,XMM4
00585ff4  8b83a00b0000              MOV EAX,dword ptr [EBX + 0xba0]
00585ffa  f30f596604                MULSS XMM4,dword ptr [ESI + 0x4]
00585fff  48                        DEC EAX
00586000  660f6e93a40b0000          MOVD XMM2,dword ptr [EBX + 0xba4]
00586008  0f5bd2                    CVTDQ2PS XMM2,XMM2
0058600b  f30f58e0                  ADDSS XMM4,XMM0
0058600f  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
00586014  660f6ec0                  MOVD XMM0,EAX
00586018  0f5bc0                    CVTDQ2PS XMM0,XMM0
0058601b  f30f592e                  MULSS XMM5,dword ptr [ESI]
0058601f  8b742440                  MOV ESI,dword ptr [ESP + 0x40]
00586023  f30f5ed0                  DIVSS XMM2,XMM0
00586027  f30f1044243c              MOVSS XMM0,dword ptr [ESP + 0x3c]
0058602d  f30f5ce9                  SUBSS XMM5,XMM1
00586031  f30f108e50030000          MOVSS XMM1,dword ptr [ESI + 0x350]
00586039  f30f59c2                  MULSS XMM0,XMM2
0058603d  f30f11642424              MOVSS dword ptr [ESP + 0x24],XMM4
00586043  f30f116c242c              MOVSS dword ptr [ESP + 0x2c],XMM5
00586049  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00586051  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
00586057  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0058605d  f30f59c2                  MULSS XMM0,XMM2
00586061  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00586069  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0058606f  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
00586077  f30f5cc8                  SUBSS XMM1,XMM0
0058607b  f30f59ca                  MULSS XMM1,XMM2
0058607f  f30f58c8                  ADDSS XMM1,XMM0
00586083  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0058608b  0f2fc2                    COMISS XMM0,XMM2
0058608e  f30f114c2440              MOVSS dword ptr [ESP + 0x40],XMM1
00586094  0f28ca                    MOVAPS XMM1,XMM2
00586097  f30f58ca                  ADDSS XMM1,XMM2
0058609b  f30f114c2434              MOVSS dword ptr [ESP + 0x34],XMM1
005860a1  7608                      JBE 0x005860ab
005860a3  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
005860a9  eb1c                      JMP 0x005860c7
005860ab  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005860b3  f30f5cc2                  SUBSS XMM0,XMM2
005860b7  f30f114c2434              MOVSS dword ptr [ESP + 0x34],XMM1
005860bd  f30f58c0                  ADDSS XMM0,XMM0
005860c1  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
005860c7  f30f59542414              MULSS XMM2,dword ptr [ESP + 0x14]
005860cd  f30f5996c00b0000          MULSS XMM2,dword ptr [ESI + 0xbc0]
005860d5  0f28c2                    MOVAPS XMM0,XMM2
005860d8  e84374e9ff                CALL 0x0041d520
005860dd  f30f5986c40b0000          MULSS XMM0,dword ptr [ESI + 0xbc4]
005860e5  f20f100d38a6ba00          MOVSD XMM1,qword ptr [0x00baa638]
005860ed  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
005860f3  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
005860f9  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
005860ff  f30f5c0554a4ba00          SUBSS XMM0,dword ptr [0x00baa454]
00586107  0f5ac0                    CVTPS2PD XMM0,XMM0
0058610a  e8f0a75600                CALL 0x00af08ff
0058610f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00586117  f30f1054242c              MOVSS XMM2,dword ptr [ESP + 0x2c]
0058611d  f20f5ac0                  CVTSD2SS XMM0,XMM0
00586121  f30f5cc8                  SUBSS XMM1,XMM0
00586125  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0058612b  f30f598ebc0b0000          MULSS XMM1,dword ptr [ESI + 0xbbc]
00586133  f30f58c1                  ADDSS XMM0,XMM1
00586137  f30f104c2424              MOVSS XMM1,dword ptr [ESP + 0x24]
0058613d  f30f59d0                  MULSS XMM2,XMM0
00586141  f30f59c8                  MULSS XMM1,XMM0
00586145  f30f5854243c              ADDSS XMM2,dword ptr [ESP + 0x3c]
0058614b  f30f10442440              MOVSS XMM0,dword ptr [ESP + 0x40]
00586151  f30f584c2420              ADDSS XMM1,dword ptr [ESP + 0x20]
00586157  f30f5c933c030000          SUBSS XMM2,dword ptr [EBX + 0x33c]
0058615f  f30f5c8b40030000          SUBSS XMM1,dword ptr [EBX + 0x340]
00586167  f30f118350030000          MOVSS dword ptr [EBX + 0x350],XMM0
0058616f  f30f119360030000          MOVSS dword ptr [EBX + 0x360],XMM2
00586177  f30f118b64030000          MOVSS dword ptr [EBX + 0x364],XMM1
0058617f  f30f100dc4acba00          MOVSS XMM1,dword ptr [0x00baacc4]
00586187  0f57db                    XORPS XMM3,XMM3
0058618a  f30f115c2418              MOVSS dword ptr [ESP + 0x18],XMM3
00586190  8bc7                      MOV EAX,EDI
00586192  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0058619a  f30f5c4014                SUBSS XMM0,dword ptr [EAX + 0x14]
0058619f  8b80c0030000              MOV EAX,dword ptr [EAX + 0x3c0]
005861a5  f30f5dc1                  MINSS XMM0,XMM1
005861a9  0f28c8                    MOVAPS XMM1,XMM0
005861ac  85c0                      TEST EAX,EAX
005861ae  740f                      JZ 0x005861bf
005861b0  8178288d030000            CMP dword ptr [EAX + 0x28],0x38d
005861b7  7506                      JNZ 0x005861bf
005861b9  83782c0a                  CMP dword ptr [EAX + 0x2c],0xa
005861bd  74d3                      JZ 0x00586192
005861bf  f30f114c2440              MOVSS dword ptr [ESP + 0x40],XMM1
005861c5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
005861d0  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
005861d8  f30f5c5714                SUBSS XMM2,dword ptr [EDI + 0x14]
005861dd  0f2fd1                    COMISS XMM2,XMM1
005861e0  0f860d010000              JBE 0x005862f3
005861e6  8b07                      MOV EAX,dword ptr [EDI]
005861e8  f30f5cd1                  SUBSS XMM2,XMM1
005861ec  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
005861f4  f30f108b40030000          MOVSS XMM1,dword ptr [EBX + 0x340]
005861fc  8b8b68010000              MOV ECX,dword ptr [EBX + 0x168]
00586202  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
00586205  8b936c010000              MOV EDX,dword ptr [EBX + 0x16c]
0058620b  89442414                  MOV dword ptr [ESP + 0x14],EAX
0058620f  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
00586212  89842480010000            MOV dword ptr [ESP + 0x180],EAX
00586219  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
0058621c  89842484010000            MOV dword ptr [ESP + 0x184],EAX
00586223  8b4334                    MOV EAX,dword ptr [EBX + 0x34]
00586226  89842488010000            MOV dword ptr [ESP + 0x188],EAX
0058622d  8b4338                    MOV EAX,dword ptr [EBX + 0x38]
00586230  8984248c010000            MOV dword ptr [ESP + 0x18c],EAX
00586237  8bc1                      MOV EAX,ECX
00586239  f30f11842490010000        MOVSS dword ptr [ESP + 0x190],XMM0
00586242  2500010000                AND EAX,0x100
00586247  83c800                    OR EAX,0x0
0058624a  f30f108360030000          MOVSS XMM0,dword ptr [EBX + 0x360]
00586252  f30f118c2494010000        MOVSS dword ptr [ESP + 0x194],XMM1
0058625b  f30f108b64030000          MOVSS XMM1,dword ptr [EBX + 0x364]
00586263  f30f1154242c              MOVSS dword ptr [ESP + 0x2c],XMM2
00586269  f30f11842498010000        MOVSS dword ptr [ESP + 0x198],XMM0
00586272  f30f118c249c010000        MOVSS dword ptr [ESP + 0x19c],XMM1
0058627b  7407                      JZ 0x00586284
0058627d  be01000000                MOV ESI,0x1
00586282  eb02                      JMP 0x00586286
00586284  33f6                      XOR ESI,ESI
00586286  81e100000020              AND ECX,0x20000000
0058628c  83c900                    OR ECX,0x0
0058628f  7407                      JZ 0x00586298
00586291  b902000000                MOV ECX,0x2
00586296  eb02                      JMP 0x0058629a
00586298  33c9                      XOR ECX,ECX
0058629a  81e200004000              AND EDX,0x400000
005862a0  33c0                      XOR EAX,EAX
005862a2  0bc2                      OR EAX,EDX
005862a4  7407                      JZ 0x005862ad
005862a6  b804000000                MOV EAX,0x4
005862ab  eb02                      JMP 0x005862af
005862ad  33c0                      XOR EAX,EAX
005862af  0bc1                      OR EAX,ECX
005862b1  899c24a4010000            MOV dword ptr [ESP + 0x1a4],EBX
005862b8  0bc6                      OR EAX,ESI
005862ba  6a1e                      PUSH 0x1e
005862bc  898424a4010000            MOV dword ptr [ESP + 0x1a4],EAX
005862c3  8d842484010000            LEA EAX,[ESP + 0x184]
005862ca  50                        PUSH EAX
005862cb  6a00                      PUSH 0x0
005862cd  6a00                      PUSH 0x0
005862cf  51                        PUSH ECX
005862d0  8bcf                      MOV ECX,EDI
005862d2  f30f111424                MOVSS dword ptr [ESP],XMM2
005862d7  ff542428                  CALL dword ptr [ESP + 0x28]
005862db  f30f105c242c              MOVSS XMM3,dword ptr [ESP + 0x2c]
005862e1  f30f5f5c2418              MAXSS XMM3,dword ptr [ESP + 0x18]
005862e7  f30f104c2440              MOVSS XMM1,dword ptr [ESP + 0x40]
005862ed  f30f115c2418              MOVSS dword ptr [ESP + 0x18],XMM3
005862f3  8bbfc0030000              MOV EDI,dword ptr [EDI + 0x3c0]
005862f9  85ff                      TEST EDI,EDI
005862fb  7413                      JZ 0x00586310
005862fd  817f288d030000            CMP dword ptr [EDI + 0x28],0x38d
00586304  750a                      JNZ 0x00586310
00586306  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
0058630a  0f84c0feffff              JZ 0x005861d0
00586310  8b442478                  MOV EAX,dword ptr [ESP + 0x78]
00586314  8b10                      MOV EDX,dword ptr [EAX]
00586316  85d2                      TEST EDX,EDX
00586318  0f8400010000              JZ 0x0058641e
0058631e  0f2f1de49fba00            COMISS XMM3,dword ptr [0x00ba9fe4]
00586325  0f86f3000000              JBE 0x0058641e
0058632b  8b02                      MOV EAX,dword ptr [EDX]
0058632d  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
00586335  f30f108b40030000          MOVSS XMM1,dword ptr [EBX + 0x340]
0058633d  8b8b68010000              MOV ECX,dword ptr [EBX + 0x168]
00586343  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
00586346  8bb36c010000              MOV ESI,dword ptr [EBX + 0x16c]
0058634c  89442414                  MOV dword ptr [ESP + 0x14],EAX
00586350  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
00586353  898424a8010000            MOV dword ptr [ESP + 0x1a8],EAX
0058635a  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
0058635d  898424ac010000            MOV dword ptr [ESP + 0x1ac],EAX
00586364  8b4334                    MOV EAX,dword ptr [EBX + 0x34]
00586367  898424b0010000            MOV dword ptr [ESP + 0x1b0],EAX
0058636e  8b4338                    MOV EAX,dword ptr [EBX + 0x38]
00586371  898424b4010000            MOV dword ptr [ESP + 0x1b4],EAX
00586378  8bc1                      MOV EAX,ECX
0058637a  f30f118424b8010000        MOVSS dword ptr [ESP + 0x1b8],XMM0
00586383  2500010000                AND EAX,0x100
00586388  83c800                    OR EAX,0x0
0058638b  f30f108360030000          MOVSS XMM0,dword ptr [EBX + 0x360]
00586393  f30f118c24bc010000        MOVSS dword ptr [ESP + 0x1bc],XMM1
0058639c  f30f108b64030000          MOVSS XMM1,dword ptr [EBX + 0x364]
005863a4  f30f118424c0010000        MOVSS dword ptr [ESP + 0x1c0],XMM0
005863ad  f30f118c24c4010000        MOVSS dword ptr [ESP + 0x1c4],XMM1
005863b6  7407                      JZ 0x005863bf
005863b8  bf01000000                MOV EDI,0x1
005863bd  eb02                      JMP 0x005863c1
005863bf  33ff                      XOR EDI,EDI
005863c1  81e100000020              AND ECX,0x20000000
005863c7  83c900                    OR ECX,0x0
005863ca  7407                      JZ 0x005863d3
005863cc  b902000000                MOV ECX,0x2
005863d1  eb02                      JMP 0x005863d5
005863d3  33c9                      XOR ECX,ECX
005863d5  81e600004000              AND ESI,0x400000
005863db  33c0                      XOR EAX,EAX
005863dd  0bc6                      OR EAX,ESI
005863df  7407                      JZ 0x005863e8
005863e1  b804000000                MOV EAX,0x4
005863e6  eb02                      JMP 0x005863ea
005863e8  33c0                      XOR EAX,EAX
005863ea  f30f591d20a1ba00          MULSS XMM3,dword ptr [0x00baa120]
005863f2  0bc1                      OR EAX,ECX
005863f4  0bc7                      OR EAX,EDI
005863f6  899c24cc010000            MOV dword ptr [ESP + 0x1cc],EBX
005863fd  6a1e                      PUSH 0x1e
005863ff  898424cc010000            MOV dword ptr [ESP + 0x1cc],EAX
00586406  8d8424ac010000            LEA EAX,[ESP + 0x1ac]
0058640d  50                        PUSH EAX
0058640e  6a00                      PUSH 0x0
00586410  6a00                      PUSH 0x0
00586412  51                        PUSH ECX
00586413  8bca                      MOV ECX,EDX
00586415  f30f111c24                MOVSS dword ptr [ESP],XMM3
0058641a  ff542428                  CALL dword ptr [ESP + 0x28]
0058641e  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00586426  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0058642e  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00586436  8b8c2474030000            MOV ECX,dword ptr [ESP + 0x374]
0058643d  5f                        POP EDI
0058643e  5e                        POP ESI
0058643f  5b                        POP EBX
00586440  33cc                      XOR ECX,ESP
00586442  e8e48c5600                CALL 0x00aef12b
00586447  8be5                      MOV ESP,EBP
00586449  5d                        POP EBP
0058644a  c3                        RET
0058644b  682000c800                PUSH 0xc80020
00586450  e8488e5600                CALL 0x00aef29d
00586455  83c404                    ADD ESP,0x4
00586458  833d2000c800ff            CMP dword ptr [0x00c80020],-0x1
0058645f  0f8515e1ffff              JNZ 0x0058457a
00586465  0f280590cbba00            MOVAPS XMM0,xmmword ptr [0x00bacb90]
0058646c  0f11052400c800            MOVUPS xmmword ptr [0x00c80024],XMM0
00586473  682000c800                PUSH 0xc80020
00586478  0f2805b0bfba00            MOVAPS XMM0,xmmword ptr [0x00babfb0]
0058647f  0f11053400c800            MOVUPS xmmword ptr [0x00c80034],XMM0
00586486  e8c88d5600                CALL 0x00aef253
0058648b  83c404                    ADD ESP,0x4
0058648e  e9e7e0ffff                JMP 0x0058457a
