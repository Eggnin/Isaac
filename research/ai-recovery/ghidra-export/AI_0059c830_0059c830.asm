; J460 NPC AI 0x0059c830 AI_0059c830
; types=918
; identities=918.0.0
; entry=0059c830
0059c830  53                        PUSH EBX
0059c831  8bdc                      MOV EBX,ESP
0059c833  83ec08                    SUB ESP,0x8
0059c836  83e4f8                    AND ESP,0xfffffff8
0059c839  83c404                    ADD ESP,0x4
0059c83c  55                        PUSH EBP
0059c83d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0059c840  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0059c844  8bec                      MOV EBP,ESP
0059c846  6aff                      PUSH -0x1
0059c848  687d57af00                PUSH 0xaf577d
0059c84d  64a100000000              MOV EAX,FS:[0x0]
0059c853  50                        PUSH EAX
0059c854  53                        PUSH EBX
0059c855  83ec60                    SUB ESP,0x60
0059c858  a1b493bf00                MOV EAX,[0x00bf93b4]
0059c85d  33c5                      XOR EAX,EBP
0059c85f  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0059c862  56                        PUSH ESI
0059c863  57                        PUSH EDI
0059c864  50                        PUSH EAX
0059c865  8d45f4                    LEA EAX,[EBP + -0xc]
0059c868  64a300000000              MOV FS:[0x0],EAX
0059c86e  8bf9                      MOV EDI,ECX
0059c870  897d9c                    MOV dword ptr [EBP + -0x64],EDI
0059c873  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
0059c87a  0f8538010000              JNZ 0x0059c9b8
0059c880  f30f109f80030000          MOVSS XMM3,dword ptr [EDI + 0x380]
0059c888  8bc7                      MOV EAX,EDI
0059c88a  f30f5c5f14                SUBSS XMM3,dword ptr [EDI + 0x14]
0059c88f  90                        NOP
0059c890  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0059c898  f30f5c4014                SUBSS XMM0,dword ptr [EAX + 0x14]
0059c89d  8b80c0030000              MOV EAX,dword ptr [EAX + 0x3c0]
0059c8a3  f30f5dc3                  MINSS XMM0,XMM3
0059c8a7  0f28d8                    MOVAPS XMM3,XMM0
0059c8aa  85c0                      TEST EAX,EAX
0059c8ac  75e2                      JNZ 0x0059c890
0059c8ae  f30f115dbc                MOVSS dword ptr [EBP + -0x44],XMM3
0059c8b3  8bf7                      MOV ESI,EDI
0059c8b5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
0059c8c0  f30f109680030000          MOVSS XMM2,dword ptr [ESI + 0x380]
0059c8c8  f30f5c5614                SUBSS XMM2,dword ptr [ESI + 0x14]
0059c8cd  0f2fd3                    COMISS XMM2,XMM3
0059c8d0  0f86cf000000              JBE 0x0059c9a5
0059c8d6  8b06                      MOV EAX,dword ptr [ESI]
0059c8d8  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0059c8e0  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0059c8e8  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0059c8ee  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
0059c8f1  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0059c8f7  8945b0                    MOV dword ptr [EBP + -0x50],EAX
0059c8fa  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0059c8fd  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
0059c900  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0059c903  8945c8                    MOV dword ptr [EBP + -0x38],EAX
0059c906  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0059c909  8945cc                    MOV dword ptr [EBP + -0x34],EAX
0059c90c  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
0059c90f  8945d0                    MOV dword ptr [EBP + -0x30],EAX
0059c912  8bc1                      MOV EAX,ECX
0059c914  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
0059c919  2500010000                AND EAX,0x100
0059c91e  83c800                    OR EAX,0x0
0059c921  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0059c929  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
0059c92e  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0059c936  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
0059c93b  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
0059c940  c7459c01000000            MOV dword ptr [EBP + -0x64],0x1
0059c947  7507                      JNZ 0x0059c950
0059c949  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
0059c950  81e100000020              AND ECX,0x20000000
0059c956  83c900                    OR ECX,0x0
0059c959  7407                      JZ 0x0059c962
0059c95b  b902000000                MOV ECX,0x2
0059c960  eb02                      JMP 0x0059c964
0059c962  33c9                      XOR ECX,ECX
0059c964  81e200004000              AND EDX,0x400000
0059c96a  33c0                      XOR EAX,EAX
0059c96c  0bc2                      OR EAX,EDX
0059c96e  7407                      JZ 0x0059c977
0059c970  b804000000                MOV EAX,0x4
0059c975  eb02                      JMP 0x0059c979
0059c977  33c0                      XOR EAX,EAX
0059c979  0bc1                      OR EAX,ECX
0059c97b  897de8                    MOV dword ptr [EBP + -0x18],EDI
0059c97e  0b459c                    OR EAX,dword ptr [EBP + -0x64]
0059c981  f30f5cd3                  SUBSS XMM2,XMM3
0059c985  6a1e                      PUSH 0x1e
0059c987  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
0059c98a  8d45c4                    LEA EAX,[EBP + -0x3c]
0059c98d  50                        PUSH EAX
0059c98e  6a00                      PUSH 0x0
0059c990  6800200000                PUSH 0x2000
0059c995  51                        PUSH ECX
0059c996  8bce                      MOV ECX,ESI
0059c998  f30f111424                MOVSS dword ptr [ESP],XMM2
0059c99d  ff55b0                    CALL dword ptr [EBP + -0x50]
0059c9a0  f30f105dbc                MOVSS XMM3,dword ptr [EBP + -0x44]
0059c9a5  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
0059c9ab  85f6                      TEST ESI,ESI
0059c9ad  0f850dffffff              JNZ 0x0059c8c0
0059c9b3  e949180000                JMP 0x0059e201
0059c9b8  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0059c9be  85c0                      TEST EAX,EAX
0059c9c0  0f84cb150000              JZ 0x0059df91
0059c9c6  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0059c9cd  751e                      JNZ 0x0059c9ed
0059c9cf  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0059c9d6  7515                      JNZ 0x0059c9ed
0059c9d8  8d4dc4                    LEA ECX,[EBP + -0x3c]
0059c9db  e89092e9ff                CALL 0x00435c70
0059c9e0  8b17                      MOV EDX,dword ptr [EDI]
0059c9e2  8bcf                      MOV ECX,EDI
0059c9e4  50                        PUSH EAX
0059c9e5  ff5224                    CALL dword ptr [EDX + 0x24]
0059c9e8  e914180000                JMP 0x0059e201
0059c9ed  f30f1035d0a2ba00          MOVSS XMM6,dword ptr [0x00baa2d0]
0059c9f5  83f810                    CMP EAX,0x10
0059c9f8  0f8744120000              JA 0x0059dc42
0059c9fe  0fb68038e25900            MOVZX EAX,byte ptr [EAX + 0x59e238]
0059ca05  ff248520e25900            JMP dword ptr [EAX*0x4 + 0x59e220]
0059ca0c  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0059ca13  747f                      JZ 0x0059ca94
0059ca15  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0059ca1d  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
0059ca25  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
0059ca2b  c787b40b00000000803f      MOV dword ptr [EDI + 0xbb4],0x3f800000
0059ca35  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0059ca3d  85d2                      TEST EDX,EDX
0059ca3f  0f8e56050000              JLE 0x0059cf9b
0059ca45  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0059ca4d  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0059ca55  2bc8                      SUB ECX,EAX
0059ca57  8d0411                    LEA EAX,[ECX + EDX*0x1]
0059ca5a  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0059ca60  85c0                      TEST EAX,EAX
0059ca62  0f8933050000              JNS 0x0059cf9b
0059ca68  6a00                      PUSH 0x0
0059ca6a  688425b600                PUSH 0xb62584
0059ca6f  8d4f48                    LEA ECX,[EDI + 0x48]
0059ca72  e8c9dee6ff                CALL 0x0040a940
0059ca77  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0059ca7d  85c0                      TEST EAX,EAX
0059ca7f  0f8416050000              JZ 0x0059cf9b
0059ca85  c780c00b000002000000      MOV dword ptr [EAX + 0xbc0],0x2
0059ca8f  e907050000                JMP 0x0059cf9b
0059ca94  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0059ca9b  7425                      JZ 0x0059cac2
0059ca9d  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0059caa5  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0059caad  e8aed2efff                CALL 0x00499d60
0059cab2  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
0059caba  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0059cac2  51                        PUSH ECX
0059cac3  8d45b4                    LEA EAX,[EBP + -0x4c]
0059cac6  c7042400000000            MOV dword ptr [ESP],0x0
0059cacd  50                        PUSH EAX
0059cace  8bcf                      MOV ECX,EDI
0059cad0  e86b211200                CALL 0x006bec40
0059cad5  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
0059cadd  f30f102d00aaba00          MOVSS XMM5,dword ptr [0x00baaa00]
0059cae5  0f2fe8                    COMISS XMM5,XMM0
0059cae8  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
0059caf0  7614                      JBE 0x0059cb06
0059caf2  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0059caf7  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0059caff  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0059cb04  eb59                      JMP 0x0059cb5f
0059cb06  f30f5cc5                  SUBSS XMM0,XMM5
0059cb0a  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0059cb12  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
0059cb1a  0f28dc                    MOVAPS XMM3,XMM4
0059cb1d  f30f5e05a0a9ba00          DIVSS XMM0,dword ptr [0x00baa9a0]
0059cb25  f30f5f05e49fba00          MAXSS XMM0,dword ptr [0x00ba9fe4]
0059cb2d  f30f5dc4                  MINSS XMM0,XMM4
0059cb31  f30f5cd8                  SUBSS XMM3,XMM0
0059cb35  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0059cb3a  f30f5cc1                  SUBSS XMM0,XMM1
0059cb3e  f30f59c3                  MULSS XMM0,XMM3
0059cb42  f30f58c1                  ADDSS XMM0,XMM1
0059cb46  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0059cb4e  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0059cb53  f30f5cc2                  SUBSS XMM0,XMM2
0059cb57  f30f59c3                  MULSS XMM0,XMM3
0059cb5b  f30f58c2                  ADDSS XMM0,XMM2
0059cb5f  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0059cb67  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
0059cb6f  0f28c8                    MOVAPS XMM1,XMM0
0059cb72  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
0059cb77  f30f5ccd                  SUBSS XMM1,XMM5
0059cb7b  f30f5e0d44aaba00          DIVSS XMM1,dword ptr [0x00baaa44]
0059cb83  f30f5f0de49fba00          MAXSS XMM1,dword ptr [0x00ba9fe4]
0059cb8b  f30f5dcc                  MINSS XMM1,XMM4
0059cb8f  0f28c1                    MOVAPS XMM0,XMM1
0059cb92  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
0059cb9a  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0059cba2  f30f580d84a7ba00          ADDSS XMM1,dword ptr [0x00baa784]
0059cbaa  f30f58c5                  ADDSS XMM0,XMM5
0059cbae  f30f114da8                MOVSS dword ptr [EBP + -0x58],XMM1
0059cbb3  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0059cbbb  f30f5c8f34030000          SUBSS XMM1,dword ptr [EDI + 0x334]
0059cbc3  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
0059cbc8  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0059cbd0  f30f5c8738030000          SUBSS XMM0,dword ptr [EDI + 0x338]
0059cbd8  e883d1efff                CALL 0x00499d60
0059cbdd  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
0059cbe5  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0059cbed  0f28d0                    MOVAPS XMM2,XMM0
0059cbf0  f30f5c45b0                SUBSS XMM0,dword ptr [EBP + -0x50]
0059cbf5  f30f5855b0                ADDSS XMM2,dword ptr [EBP + -0x50]
0059cbfa  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0059cbff  0f28c2                    MOVAPS XMM0,XMM2
0059cc02  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
0059cc07  e8945b0e00                CALL 0x006827a0
0059cc0c  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0059cc13  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0059cc1b  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
0059cc20  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
0059cc25  e8765b0e00                CALL 0x006827a0
0059cc2a  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0059cc31  0f2f45b0                  COMISS XMM0,dword ptr [EBP + -0x50]
0059cc35  7607                      JBE 0x0059cc3e
0059cc37  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
0059cc3c  eb05                      JMP 0x0059cc43
0059cc3e  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
0059cc43  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0059cc4b  0f28d0                    MOVAPS XMM2,XMM0
0059cc4e  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0059cc53  f30f5955a8                MULSS XMM2,dword ptr [EBP + -0x58]
0059cc58  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0059cc60  e8eb5d0e00                CALL 0x00682a50
0059cc65  0f28c8                    MOVAPS XMM1,XMM0
0059cc68  c787b40b00009a99993f      MOV dword ptr [EDI + 0xbb4],0x3f99999a
0059cc72  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0059cc7a  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
0059cc82  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0059cc8a  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
0059cc92  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0059cc97  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0059cc9f  0f28c1                    MOVAPS XMM0,XMM1
0059cca2  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
0059cca7  e89408e8ff                CALL 0x0041d540
0059ccac  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
0059ccb4  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0059ccb9  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
0059ccbe  e85d08e8ff                CALL 0x0041d520
0059ccc3  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
0059ccc8  0f28c8                    MOVAPS XMM1,XMM0
0059cccb  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
0059ccd2  f30f590db0a4ba00          MULSS XMM1,dword ptr [0x00baa4b0]
0059ccda  9f                        LAHF
0059ccdb  f6c444                    TEST AH,0x44
0059ccde  7b41                      JNP 0x0059cd21
0059cce0  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
0059cce5  f30f5945a4                MULSS XMM0,dword ptr [EBP + -0x5c]
0059ccea  f30f594da4                MULSS XMM1,dword ptr [EBP + -0x5c]
0059ccef  f30f5ec2                  DIVSS XMM0,XMM2
0059ccf3  f30f5eca                  DIVSS XMM1,XMM2
0059ccf7  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0059ccff  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0059cd07  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0059cd0f  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0059cd17  f30f1097b80b0000          MOVSS XMM2,dword ptr [EDI + 0xbb8]
0059cd1f  eb05                      JMP 0x0059cd26
0059cd21  f30f1055a0                MOVSS XMM2,dword ptr [EBP + -0x60]
0059cd26  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0059cd2e  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
0059cd36  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0059cd3e  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0059cd46  f30f59c0                  MULSS XMM0,XMM0
0059cd4a  f30f59c9                  MULSS XMM1,XMM1
0059cd4e  f30f58c8                  ADDSS XMM1,XMM0
0059cd52  f30f1005b8abba00          MOVSS XMM0,dword ptr [0x00baabb8]
0059cd5a  0f2fc1                    COMISS XMM0,XMM1
0059cd5d  7643                      JBE 0x0059cda2
0059cd5f  0f2f15f4aaba00            COMISS XMM2,dword ptr [0x00baaaf4]
0059cd66  763a                      JBE 0x0059cda2
0059cd68  e8f3211500                CALL 0x006eef60
0059cd6d  33d2                      XOR EDX,EDX
0059cd6f  b905000000                MOV ECX,0x5
0059cd74  f7f1                      DIV ECX
0059cd76  85d2                      TEST EDX,EDX
0059cd78  7528                      JNZ 0x0059cda2
0059cd7a  52                        PUSH EDX
0059cd7b  688425b600                PUSH 0xb62584
0059cd80  8d4f48                    LEA ECX,[EDI + 0x48]
0059cd83  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0059cd8d  e8aedbe6ff                CALL 0x0040a940
0059cd92  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0059cd98  c780c00b000002000000      MOV dword ptr [EAX + 0xbc0],0x2
0059cda2  e8b9211500                CALL 0x006eef60
0059cda7  660f6ec0                  MOVD XMM0,EAX
0059cdab  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0059cdaf  c1e81f                    SHR EAX,0x1f
0059cdb2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0059cdbb  660f5ac0                  CVTPD2PS XMM0,XMM0
0059cdbf  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0059cdc7  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0059cdcf  f30f59879c030000          MULSS XMM0,dword ptr [EDI + 0x39c]
0059cdd7  f30f5887b80b0000          ADDSS XMM0,dword ptr [EDI + 0xbb8]
0059cddf  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0059cde7  e9af010000                JMP 0x0059cf9b
0059cdec  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0059cdf3  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0059cdfb  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
0059ce03  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0059ce0b  0f858a010000              JNZ 0x0059cf9b
0059ce11  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
0059ce18  740d                      JZ 0x0059ce27
0059ce1a  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
0059ce21  0f8574010000              JNZ 0x0059cf9b
0059ce27  51                        PUSH ECX
0059ce28  c704240000803f            MOV dword ptr [ESP],0x3f800000
0059ce2f  6a00                      PUSH 0x0
0059ce31  6a02                      PUSH 0x2
0059ce33  51                        PUSH ECX
0059ce34  c704240000803f            MOV dword ptr [ESP],0x3f800000
0059ce3b  6a39                      PUSH 0x39
0059ce3d  e85e9d1300                CALL 0x006d6ba0
0059ce42  0f57c9                    XORPS XMM1,XMM1
0059ce45  0f57c0                    XORPS XMM0,XMM0
0059ce48  33f6                      XOR ESI,ESI
0059ce4a  8bc7                      MOV EAX,EDI
0059ce4c  0f1f4000                  NOP dword ptr [EAX]
0059ce50  f30f58883c030000          ADDSS XMM1,dword ptr [EAX + 0x33c]
0059ce58  f30f588040030000          ADDSS XMM0,dword ptr [EAX + 0x340]
0059ce60  8b80c0030000              MOV EAX,dword ptr [EAX + 0x3c0]
0059ce66  46                        INC ESI
0059ce67  85c0                      TEST EAX,EAX
0059ce69  75e5                      JNZ 0x0059ce50
0059ce6b  51                        PUSH ECX
0059ce6c  890424                    MOV dword ptr [ESP],EAX
0059ce6f  8bcf                      MOV ECX,EDI
0059ce71  8d45b4                    LEA EAX,[EBP + -0x4c]
0059ce74  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
0059ce79  50                        PUSH EAX
0059ce7a  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0059ce7f  e8bc1d1200                CALL 0x006bec40
0059ce84  f30f1055b0                MOVSS XMM2,dword ptr [EBP + -0x50]
0059ce89  8d45b4                    LEA EAX,[EBP + -0x4c]
0059ce8c  660f6ece                  MOVD XMM1,ESI
0059ce90  0f5bc9                    CVTDQ2PS XMM1,XMM1
0059ce93  51                        PUSH ECX
0059ce94  8d4dac                    LEA ECX,[EBP + -0x54]
0059ce97  c7042400004041            MOV dword ptr [ESP],0x41400000
0059ce9e  50                        PUSH EAX
0059ce9f  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0059cea4  f30f5ed1                  DIVSS XMM2,XMM1
0059cea8  f30f5cc2                  SUBSS XMM0,XMM2
0059ceac  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
0059ceb1  f30f5ed1                  DIVSS XMM2,XMM1
0059ceb5  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
0059ceba  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0059cebf  f30f5cc2                  SUBSS XMM0,XMM2
0059cec3  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
0059cec8  e833324700                CALL 0x00a10100
0059cecd  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0059ced2  8bc7                      MOV EAX,EDI
0059ced4  f30f104db4                MOVSS XMM1,dword ptr [EBP + -0x4c]
0059ced9  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0059cedc  0f1f4000                  NOP dword ptr [EAX]
0059cee0  8d7048                    LEA ESI,[EAX + 0x48]
0059cee3  8975a8                    MOV dword ptr [EBP + -0x58],ESI
0059cee6  8b7654                    MOV ESI,dword ptr [ESI + 0x54]
0059cee9  85f6                      TEST ESI,ESI
0059ceeb  744b                      JZ 0x0059cf38
0059ceed  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0059cef1  8bc6                      MOV EAX,ESI
0059cef3  7202                      JC 0x0059cef7
0059cef5  8b06                      MOV EAX,dword ptr [ESI]
0059cef7  b96c25b600                MOV ECX,0xb6256c
0059cefc  0f1f4000                  NOP dword ptr [EAX]
0059cf00  8a10                      MOV DL,byte ptr [EAX]
0059cf02  3a11                      CMP DL,byte ptr [ECX]
0059cf04  751a                      JNZ 0x0059cf20
0059cf06  84d2                      TEST DL,DL
0059cf08  7412                      JZ 0x0059cf1c
0059cf0a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0059cf0d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0059cf10  750e                      JNZ 0x0059cf20
0059cf12  83c002                    ADD EAX,0x2
0059cf15  83c102                    ADD ECX,0x2
0059cf18  84d2                      TEST DL,DL
0059cf1a  75e4                      JNZ 0x0059cf00
0059cf1c  33c0                      XOR EAX,EAX
0059cf1e  eb05                      JMP 0x0059cf25
0059cf20  1bc0                      SBB EAX,EAX
0059cf22  83c801                    OR EAX,0x1
0059cf25  85c0                      TEST EAX,EAX
0059cf27  750f                      JNZ 0x0059cf38
0059cf29  384634                    CMP byte ptr [ESI + 0x34],AL
0059cf2c  7435                      JZ 0x0059cf63
0059cf2e  8b75a8                    MOV ESI,dword ptr [EBP + -0x58]
0059cf31  384664                    CMP byte ptr [ESI + 0x64],AL
0059cf34  752d                      JNZ 0x0059cf63
0059cf36  eb03                      JMP 0x0059cf3b
0059cf38  8b75a8                    MOV ESI,dword ptr [EBP + -0x58]
0059cf3b  6a01                      PUSH 0x1
0059cf3d  686c25b600                PUSH 0xb6256c
0059cf42  8bce                      MOV ECX,ESI
0059cf44  e8a7dbe6ff                CALL 0x0040aaf0
0059cf49  84c0                      TEST AL,AL
0059cf4b  740c                      JZ 0x0059cf59
0059cf4d  8d4e50                    LEA ECX,[ESI + 0x50]
0059cf50  e85bd2e6ff                CALL 0x0040a1b0
0059cf55  c6466401                  MOV byte ptr [ESI + 0x64],0x1
0059cf59  f30f104db4                MOVSS XMM1,dword ptr [EBP + -0x4c]
0059cf5e  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0059cf63  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
0059cf66  c780640b000006000000      MOV dword ptr [EAX + 0xb64],0x6
0059cf70  f30f118860030000          MOVSS dword ptr [EAX + 0x360],XMM1
0059cf78  f30f118064030000          MOVSS dword ptr [EAX + 0x364],XMM0
0059cf80  c780b80b000000000000      MOV dword ptr [EAX + 0xbb8],0x0
0059cf8a  8b80c0030000              MOV EAX,dword ptr [EAX + 0x3c0]
0059cf90  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0059cf93  85c0                      TEST EAX,EAX
0059cf95  0f8545ffffff              JNZ 0x0059cee0
0059cf9b  f30f10157ca8ba00          MOVSS XMM2,dword ptr [0x00baa87c]
0059cfa3  8bcf                      MOV ECX,EDI
0059cfa5  f30f100d9ca8ba00          MOVSS XMM1,dword ptr [0x00baa89c]
0059cfad  6a01                      PUSH 0x1
0059cfaf  e83cae1300                CALL 0x006d7df0
0059cfb4  e9890c0000                JMP 0x0059dc42
0059cfb9  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0059cfc0  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0059cfc8  f30f590544a4ba00          MULSS XMM0,dword ptr [0x00baa444]
0059cfd0  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0059cfd8  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0059cfe0  f30f5887b80b0000          ADDSS XMM0,dword ptr [EDI + 0xbb8]
0059cfe8  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0059cff0  0f84d8000000              JZ 0x0059d0ce
0059cff6  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0059cffe  f30f5c8794010000          SUBSS XMM0,dword ptr [EDI + 0x194]
0059d006  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
0059d00b  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0059d013  f30f5c8798010000          SUBSS XMM0,dword ptr [EDI + 0x198]
0059d01b  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0059d020  e86bb91000                CALL 0x006a8990
0059d025  8bc8                      MOV ECX,EAX
0059d027  85c9                      TEST ECX,ECX
0059d029  0f8497000000              JZ 0x0059d0c6
0059d02f  f30f1055b0                MOVSS XMM2,dword ptr [EBP + -0x50]
0059d034  f30f105dbc                MOVSS XMM3,dword ptr [EBP + -0x44]
0059d039  0f1f8000000000            NOP dword ptr [EAX]
0059d040  80b99001000000            CMP byte ptr [ECX + 0x190],0x0
0059d047  756f                      JNZ 0x0059d0b8
0059d049  8a8790010000              MOV AL,byte ptr [EDI + 0x190]
0059d04f  888190010000              MOV byte ptr [ECX + 0x190],AL
0059d055  8b8794010000              MOV EAX,dword ptr [EDI + 0x194]
0059d05b  898194010000              MOV dword ptr [ECX + 0x194],EAX
0059d061  8b8798010000              MOV EAX,dword ptr [EDI + 0x198]
0059d067  898198010000              MOV dword ptr [ECX + 0x198],EAX
0059d06d  8b879c010000              MOV EAX,dword ptr [EDI + 0x19c]
0059d073  89819c010000              MOV dword ptr [ECX + 0x19c],EAX
0059d079  8b87a0010000              MOV EAX,dword ptr [EDI + 0x1a0]
0059d07f  8981a0010000              MOV dword ptr [ECX + 0x1a0],EAX
0059d085  f30f10899c030000          MOVSS XMM1,dword ptr [ECX + 0x39c]
0059d08d  0f28c1                    MOVAPS XMM0,XMM1
0059d090  f30f59cb                  MULSS XMM1,XMM3
0059d094  f30f59c2                  MULSS XMM0,XMM2
0059d098  f30f588964030000          ADDSS XMM1,dword ptr [ECX + 0x364]
0059d0a0  f30f588160030000          ADDSS XMM0,dword ptr [ECX + 0x360]
0059d0a8  f30f118964030000          MOVSS dword ptr [ECX + 0x364],XMM1
0059d0b0  f30f118160030000          MOVSS dword ptr [ECX + 0x360],XMM0
0059d0b8  8b89c0030000              MOV ECX,dword ptr [ECX + 0x3c0]
0059d0be  85c9                      TEST ECX,ECX
0059d0c0  0f857affffff              JNZ 0x0059d040
0059d0c6  f30f1035d0a2ba00          MOVSS XMM6,dword ptr [0x00baa2d0]
0059d0ce  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0059d0d4  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
0059d0da  85c0                      TEST EAX,EAX
0059d0dc  7562                      JNZ 0x0059d140
0059d0de  85f6                      TEST ESI,ESI
0059d0e0  0f84c2010000              JZ 0x0059d2a8
0059d0e6  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0059d0ee  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0059d0f6  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0059d0fe  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0059d106  e855ccefff                CALL 0x00499d60
0059d10b  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
0059d113  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0059d11b  f30f108e8c030000          MOVSS XMM1,dword ptr [ESI + 0x38c]
0059d123  f30f109690030000          MOVSS XMM2,dword ptr [ESI + 0x390]
0059d12b  f30f588e94030000          ADDSS XMM1,dword ptr [ESI + 0x394]
0059d133  f30f589698030000          ADDSS XMM2,dword ptr [ESI + 0x398]
0059d13b  e9b5000000                JMP 0x0059d1f5
0059d140  85f6                      TEST ESI,ESI
0059d142  0f848d000000              JZ 0x0059d1d5
0059d148  f30f109890030000          MOVSS XMM3,dword ptr [EAX + 0x390]
0059d150  f30f589898030000          ADDSS XMM3,dword ptr [EAX + 0x398]
0059d158  f30f10908c030000          MOVSS XMM2,dword ptr [EAX + 0x38c]
0059d160  f30f589094030000          ADDSS XMM2,dword ptr [EAX + 0x394]
0059d168  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0059d170  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0059d178  f30f589e90030000          ADDSS XMM3,dword ptr [ESI + 0x390]
0059d180  f30f58968c030000          ADDSS XMM2,dword ptr [ESI + 0x38c]
0059d188  f30f589e98030000          ADDSS XMM3,dword ptr [ESI + 0x398]
0059d190  f30f589694030000          ADDSS XMM2,dword ptr [ESI + 0x394]
0059d198  f30f59de                  MULSS XMM3,XMM6
0059d19c  f30f59d6                  MULSS XMM2,XMM6
0059d1a0  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
0059d1a8  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0059d1b0  f30f5cd9                  SUBSS XMM3,XMM1
0059d1b4  f30f5cd0                  SUBSS XMM2,XMM0
0059d1b8  f30f59de                  MULSS XMM3,XMM6
0059d1bc  f30f59d6                  MULSS XMM2,XMM6
0059d1c0  f30f58d9                  ADDSS XMM3,XMM1
0059d1c4  f30f58d0                  ADDSS XMM2,XMM0
0059d1c8  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0059d1d0  e9cb000000                JMP 0x0059d2a0
0059d1d5  f30f10888c030000          MOVSS XMM1,dword ptr [EAX + 0x38c]
0059d1dd  f30f109090030000          MOVSS XMM2,dword ptr [EAX + 0x390]
0059d1e5  f30f588894030000          ADDSS XMM1,dword ptr [EAX + 0x394]
0059d1ed  f30f589098030000          ADDSS XMM2,dword ptr [EAX + 0x398]
0059d1f5  f30f10878c030000          MOVSS XMM0,dword ptr [EDI + 0x38c]
0059d1fd  8d45e4                    LEA EAX,[EBP + -0x1c]
0059d200  f30f588794030000          ADDSS XMM0,dword ptr [EDI + 0x394]
0059d208  51                        PUSH ECX
0059d209  c704240000c041            MOV dword ptr [ESP],0x41c00000
0059d210  8d4db4                    LEA ECX,[EBP + -0x4c]
0059d213  50                        PUSH EAX
0059d214  f30f1155bc                MOVSS dword ptr [EBP + -0x44],XMM2
0059d219  f30f5cc1                  SUBSS XMM0,XMM1
0059d21d  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
0059d222  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0059d227  f30f108790030000          MOVSS XMM0,dword ptr [EDI + 0x390]
0059d22f  f30f588798030000          ADDSS XMM0,dword ptr [EDI + 0x398]
0059d237  f30f5cc2                  SUBSS XMM0,XMM2
0059d23b  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0059d240  e8bb2e4700                CALL 0x00a10100
0059d245  f30f1055b0                MOVSS XMM2,dword ptr [EBP + -0x50]
0059d24a  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0059d252  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0059d25a  f30f5810                  ADDSS XMM2,dword ptr [EAX]
0059d25e  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0059d266  f30f5cd0                  SUBSS XMM2,XMM0
0059d26a  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
0059d272  f30f58d0                  ADDSS XMM2,XMM0
0059d276  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
0059d27b  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
0059d280  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0059d288  f30f5cc1                  SUBSS XMM0,XMM1
0059d28c  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0059d294  f30f58c1                  ADDSS XMM0,XMM1
0059d298  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0059d2a0  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0059d2a8  0f57c0                    XORPS XMM0,XMM0
0059d2ab  33f6                      XOR ESI,ESI
0059d2ad  8bcf                      MOV ECX,EDI
0059d2af  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0059d2b4  8975b0                    MOV dword ptr [EBP + -0x50],ESI
0059d2b7  e8d4b61000                CALL 0x006a8990
0059d2bc  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
0059d2c1  0f28d0                    MOVAPS XMM2,XMM0
0059d2c4  85c0                      TEST EAX,EAX
0059d2c6  7426                      JZ 0x0059d2ee
0059d2c8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
0059d2d0  f30f58808c030000          ADDSS XMM0,dword ptr [EAX + 0x38c]
0059d2d8  f30f589090030000          ADDSS XMM2,dword ptr [EAX + 0x390]
0059d2e0  8b80c0030000              MOV EAX,dword ptr [EAX + 0x3c0]
0059d2e6  46                        INC ESI
0059d2e7  85c0                      TEST EAX,EAX
0059d2e9  75e5                      JNZ 0x0059d2d0
0059d2eb  8975b0                    MOV dword ptr [EBP + -0x50],ESI
0059d2ee  660f6ece                  MOVD XMM1,ESI
0059d2f2  0f57e4                    XORPS XMM4,XMM4
0059d2f5  0f5bc9                    CVTDQ2PS XMM1,XMM1
0059d2f8  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0059d2fe  8bf7                      MOV ESI,EDI
0059d300  0f57db                    XORPS XMM3,XMM3
0059d303  f30f5ec1                  DIVSS XMM0,XMM1
0059d307  f30f5ed1                  DIVSS XMM2,XMM1
0059d30b  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0059d310  0f57c9                    XORPS XMM1,XMM1
0059d313  f30f1155a8                MOVSS dword ptr [EBP + -0x58],XMM2
0059d318  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
0059d31d  85c0                      TEST EAX,EAX
0059d31f  740f                      JZ 0x0059d330
0059d321  8bf0                      MOV ESI,EAX
0059d323  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
0059d329  85c0                      TEST EAX,EAX
0059d32b  75f4                      JNZ 0x0059d321
0059d32d  0f1f00                    NOP dword ptr [EAX]
0059d330  f30f589e94030000          ADDSS XMM3,dword ptr [ESI + 0x394]
0059d338  f30f108e8c030000          MOVSS XMM1,dword ptr [ESI + 0x38c]
0059d340  f30f58a698030000          ADDSS XMM4,dword ptr [ESI + 0x398]
0059d348  f30f5cc8                  SUBSS XMM1,XMM0
0059d34c  f30f115d98                MOVSS dword ptr [EBP + -0x68],XMM3
0059d351  f30f109e90030000          MOVSS XMM3,dword ptr [ESI + 0x390]
0059d359  f30f5cda                  SUBSS XMM3,XMM2
0059d35d  f30f116594                MOVSS dword ptr [EBP + -0x6c],XMM4
0059d362  0f28d1                    MOVAPS XMM2,XMM1
0059d365  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
0059d36a  f30f59d1                  MULSS XMM2,XMM1
0059d36e  0f28c3                    MOVAPS XMM0,XMM3
0059d371  f30f115dbc                MOVSS dword ptr [EBP + -0x44],XMM3
0059d376  f30f59c3                  MULSS XMM0,XMM3
0059d37a  f30f58d0                  ADDSS XMM2,XMM0
0059d37e  0f28c2                    MOVAPS XMM0,XMM2
0059d381  f30f1155b8                MOVSS dword ptr [EBP + -0x48],XMM2
0059d386  e8c586e9ff                CALL 0x00435a50
0059d38b  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0059d393  0f2fc8                    COMISS XMM1,XMM0
0059d396  0f87a9000000              JA 0x0059d445
0059d39c  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0059d3a1  e8aa86e9ff                CALL 0x00435a50
0059d3a6  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0059d3ad  7627                      JBE 0x0059d3d6
0059d3af  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0059d3b7  f30f5ec8                  DIVSS XMM1,XMM0
0059d3bb  0f28c1                    MOVAPS XMM0,XMM1
0059d3be  f30f5945e8                MULSS XMM0,dword ptr [EBP + -0x18]
0059d3c3  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0059d3c8  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
0059d3cd  f30f59c1                  MULSS XMM0,XMM1
0059d3d1  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0059d3d6  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0059d3de  e85d01e8ff                CALL 0x0041d540
0059d3e3  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0059d3e8  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0059d3f0  e82b01e8ff                CALL 0x0041d520
0059d3f5  f30f106dbc                MOVSS XMM5,dword ptr [EBP + -0x44]
0059d3fa  0f28c8                    MOVAPS XMM1,XMM0
0059d3fd  f30f1055b8                MOVSS XMM2,dword ptr [EBP + -0x48]
0059d402  f30f5955e8                MULSS XMM2,dword ptr [EBP + -0x18]
0059d407  f30f5945e8                MULSS XMM0,dword ptr [EBP + -0x18]
0059d40c  f30f59cd                  MULSS XMM1,XMM5
0059d410  f30f596db8                MULSS XMM5,dword ptr [EBP + -0x48]
0059d415  f30f5cd1                  SUBSS XMM2,XMM1
0059d419  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0059d421  f30f58e8                  ADDSS XMM5,XMM0
0059d425  f30f599694030000          MULSS XMM2,dword ptr [ESI + 0x394]
0059d42d  f30f59ae98030000          MULSS XMM5,dword ptr [ESI + 0x398]
0059d435  f30f58ea                  ADDSS XMM5,XMM2
0059d439  f30f586da0                ADDSS XMM5,dword ptr [EBP + -0x60]
0059d43e  f30f116da0                MOVSS dword ptr [EBP + -0x60],XMM5
0059d443  eb05                      JMP 0x0059d44a
0059d445  f30f106da0                MOVSS XMM5,dword ptr [EBP + -0x60]
0059d44a  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
0059d450  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
0059d455  f30f1055a8                MOVSS XMM2,dword ptr [EBP + -0x58]
0059d45a  f30f105d98                MOVSS XMM3,dword ptr [EBP + -0x68]
0059d45f  f30f106594                MOVSS XMM4,dword ptr [EBP + -0x6c]
0059d464  85f6                      TEST ESI,ESI
0059d466  0f85c4feffff              JNZ 0x0059d330
0059d46c  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
0059d46f  0f28d3                    MOVAPS XMM2,XMM3
0059d472  0f28dc                    MOVAPS XMM3,XMM4
0059d475  660f6ec0                  MOVD XMM0,EAX
0059d479  0f5bc0                    CVTDQ2PS XMM0,XMM0
0059d47c  f30f5ee8                  DIVSS XMM5,XMM0
0059d480  f30f5ed0                  DIVSS XMM2,XMM0
0059d484  f30f116da0                MOVSS dword ptr [EBP + -0x60],XMM5
0059d489  f30f115598                MOVSS dword ptr [EBP + -0x68],XMM2
0059d48e  f30f5ed8                  DIVSS XMM3,XMM0
0059d492  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
0059d49a  f30f115d94                MOVSS dword ptr [EBP + -0x6c],XMM3
0059d49f  f30f5c0550a9ba00          SUBSS XMM0,dword ptr [0x00baa950]
0059d4a7  f30f5e05b4a9ba00          DIVSS XMM0,dword ptr [0x00baa9b4]
0059d4af  f30f5f05e49fba00          MAXSS XMM0,dword ptr [0x00ba9fe4]
0059d4b7  f30f5dc1                  MINSS XMM0,XMM1
0059d4bb  f30f5cc8                  SUBSS XMM1,XMM0
0059d4bf  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
0059d4c4  0f28c1                    MOVAPS XMM0,XMM1
0059d4c7  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0059d4cf  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0059d4d4  83f803                    CMP EAX,0x3
0059d4d7  7f0d                      JG 0x0059d4e6
0059d4d9  f30f5905f0a4ba00          MULSS XMM0,dword ptr [0x00baa4f0]
0059d4e1  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0059d4e6  0f28cb                    MOVAPS XMM1,XMM3
0059d4e9  0f28c2                    MOVAPS XMM0,XMM2
0059d4ec  f30f59cb                  MULSS XMM1,XMM3
0059d4f0  f30f59c2                  MULSS XMM0,XMM2
0059d4f4  f30f58c8                  ADDSS XMM1,XMM0
0059d4f8  0f28c1                    MOVAPS XMM0,XMM1
0059d4fb  f30f114db8                MOVSS dword ptr [EBP + -0x48],XMM1
0059d500  e84b85e9ff                CALL 0x00435a50
0059d505  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
0059d50a  f30f1035d0a2ba00          MOVSS XMM6,dword ptr [0x00baa2d0]
0059d512  0f2fce                    COMISS XMM1,XMM6
0059d515  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
0059d51a  0f867f000000              JBE 0x0059d59f
0059d520  0f2fc8                    COMISS XMM1,XMM0
0059d523  767a                      JBE 0x0059d59f
0059d525  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0059d52a  e82185e9ff                CALL 0x00435a50
0059d52f  f30f105d98                MOVSS XMM3,dword ptr [EBP + -0x68]
0059d534  0f57ed                    XORPS XMM5,XMM5
0059d537  0f2fc5                    COMISS XMM0,XMM5
0059d53a  7621                      JBE 0x0059d55d
0059d53c  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
0059d541  f30f5c55b0                SUBSS XMM2,dword ptr [EBP + -0x50]
0059d546  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
0059d54e  f30f5ed0                  DIVSS XMM2,XMM0
0059d552  f30f59da                  MULSS XMM3,XMM2
0059d556  f30f595594                MULSS XMM2,dword ptr [EBP + -0x6c]
0059d55b  eb05                      JMP 0x0059d562
0059d55d  f30f105594                MOVSS XMM2,dword ptr [EBP + -0x6c]
0059d562  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0059d56a  f30f1035d0a2ba00          MOVSS XMM6,dword ptr [0x00baa2d0]
0059d572  0f28c1                    MOVAPS XMM0,XMM1
0059d575  f30f59c3                  MULSS XMM0,XMM3
0059d579  f30f59ca                  MULSS XMM1,XMM2
0059d57d  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0059d585  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0059d58d  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0059d595  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0059d59d  eb03                      JMP 0x0059d5a2
0059d59f  0f57ed                    XORPS XMM5,XMM5
0059d5a2  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
0059d5a7  f30f59c9                  MULSS XMM1,XMM1
0059d5ab  f30f590da4a7ba00          MULSS XMM1,dword ptr [0x00baa7a4]
0059d5b3  0f2fce                    COMISS XMM1,XMM6
0059d5b6  0f86f3000000              JBE 0x0059d6af
0059d5bc  f30f105da0                MOVSS XMM3,dword ptr [EBP + -0x60]
0059d5c1  0f28c3                    MOVAPS XMM0,XMM3
0059d5c4  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0059d5cb  0f2fc8                    COMISS XMM1,XMM0
0059d5ce  0f86db000000              JBE 0x0059d6af
0059d5d4  0f2fdd                    COMISS XMM3,XMM5
0059d5d7  f30f10978c030000          MOVSS XMM2,dword ptr [EDI + 0x38c]
0059d5df  f30f10a790030000          MOVSS XMM4,dword ptr [EDI + 0x390]
0059d5e7  f30f5c55a4                SUBSS XMM2,dword ptr [EBP + -0x5c]
0059d5ec  f30f5c65a8                SUBSS XMM4,dword ptr [EBP + -0x58]
0059d5f1  f30f1155b8                MOVSS dword ptr [EBP + -0x48],XMM2
0059d5f6  f30f1165a8                MOVSS dword ptr [EBP + -0x58],XMM4
0059d5fb  7707                      JA 0x0059d604
0059d5fd  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0059d604  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0059d60c  f30f5ccb                  SUBSS XMM1,XMM3
0059d610  f30f5f0d2cadba00          MAXSS XMM1,dword ptr [0x00baad2c]
0059d618  f30f5dce                  MINSS XMM1,XMM6
0059d61c  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
0059d621  e81affe7ff                CALL 0x0041d540
0059d626  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0059d62b  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0059d633  e8e8fee7ff                CALL 0x0041d520
0059d638  f30f1075b8                MOVSS XMM6,dword ptr [EBP + -0x48]
0059d63d  0f28d8                    MOVAPS XMM3,XMM0
0059d640  f30f107da8                MOVSS XMM7,dword ptr [EBP + -0x58]
0059d645  0f28d6                    MOVAPS XMM2,XMM6
0059d648  f30f5955bc                MULSS XMM2,dword ptr [EBP + -0x44]
0059d64d  0f28cf                    MOVAPS XMM1,XMM7
0059d650  f30f597dbc                MULSS XMM7,dword ptr [EBP + -0x44]
0059d655  f30f10a79c030000          MOVSS XMM4,dword ptr [EDI + 0x39c]
0059d65d  f30f59f3                  MULSS XMM6,XMM3
0059d661  f30f59cb                  MULSS XMM1,XMM3
0059d665  f30f58f7                  ADDSS XMM6,XMM7
0059d669  f30f5cd1                  SUBSS XMM2,XMM1
0059d66d  f30f5975e8                MULSS XMM6,dword ptr [EBP + -0x18]
0059d672  f30f5955e8                MULSS XMM2,dword ptr [EBP + -0x18]
0059d677  f30f5935d0a0ba00          MULSS XMM6,dword ptr [0x00baa0d0]
0059d67f  f30f5915d0a0ba00          MULSS XMM2,dword ptr [0x00baa0d0]
0059d687  f30f59f4                  MULSS XMM6,XMM4
0059d68b  f30f59d4                  MULSS XMM2,XMM4
0059d68f  f30f58b764030000          ADDSS XMM6,dword ptr [EDI + 0x364]
0059d697  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
0059d69f  f30f11b764030000          MOVSS dword ptr [EDI + 0x364],XMM6
0059d6a7  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0059d6af  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0059d6b6  0f8579070000              JNZ 0x0059de35
0059d6bc  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
0059d6c4  0f2f0544aaba00            COMISS XMM0,dword ptr [0x00baaa44]
0059d6cb  0f8671050000              JBE 0x0059dc42
0059d6d1  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
0059d6d9  0f2f45b0                  COMISS XMM0,dword ptr [EBP + -0x50]
0059d6dd  0f865f050000              JBE 0x0059dc42
0059d6e3  8bc7                      MOV EAX,EDI
0059d6e5  897db0                    MOV dword ptr [EBP + -0x50],EDI
0059d6e8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
0059d6f0  8d7048                    LEA ESI,[EAX + 0x48]
0059d6f3  8975bc                    MOV dword ptr [EBP + -0x44],ESI
0059d6f6  8b7654                    MOV ESI,dword ptr [ESI + 0x54]
0059d6f9  85f6                      TEST ESI,ESI
0059d6fb  744b                      JZ 0x0059d748
0059d6fd  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0059d701  8bc6                      MOV EAX,ESI
0059d703  7202                      JC 0x0059d707
0059d705  8b06                      MOV EAX,dword ptr [ESI]
0059d707  b95425b600                MOV ECX,0xb62554
0059d70c  0f1f4000                  NOP dword ptr [EAX]
0059d710  8a10                      MOV DL,byte ptr [EAX]
0059d712  3a11                      CMP DL,byte ptr [ECX]
0059d714  751a                      JNZ 0x0059d730
0059d716  84d2                      TEST DL,DL
0059d718  7412                      JZ 0x0059d72c
0059d71a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0059d71d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0059d720  750e                      JNZ 0x0059d730
0059d722  83c002                    ADD EAX,0x2
0059d725  83c102                    ADD ECX,0x2
0059d728  84d2                      TEST DL,DL
0059d72a  75e4                      JNZ 0x0059d710
0059d72c  33c0                      XOR EAX,EAX
0059d72e  eb05                      JMP 0x0059d735
0059d730  1bc0                      SBB EAX,EAX
0059d732  83c801                    OR EAX,0x1
0059d735  85c0                      TEST EAX,EAX
0059d737  750f                      JNZ 0x0059d748
0059d739  384634                    CMP byte ptr [ESI + 0x34],AL
0059d73c  742b                      JZ 0x0059d769
0059d73e  8b75bc                    MOV ESI,dword ptr [EBP + -0x44]
0059d741  384664                    CMP byte ptr [ESI + 0x64],AL
0059d744  7523                      JNZ 0x0059d769
0059d746  eb03                      JMP 0x0059d74b
0059d748  8b75bc                    MOV ESI,dword ptr [EBP + -0x44]
0059d74b  6a01                      PUSH 0x1
0059d74d  685425b600                PUSH 0xb62554
0059d752  8bce                      MOV ECX,ESI
0059d754  e897d3e6ff                CALL 0x0040aaf0
0059d759  84c0                      TEST AL,AL
0059d75b  740c                      JZ 0x0059d769
0059d75d  8d4e50                    LEA ECX,[ESI + 0x50]
0059d760  e84bcae6ff                CALL 0x0040a1b0
0059d765  c6466401                  MOV byte ptr [ESI + 0x64],0x1
0059d769  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
0059d76c  8b80c0030000              MOV EAX,dword ptr [EAX + 0x3c0]
0059d772  8945b0                    MOV dword ptr [EBP + -0x50],EAX
0059d775  85c0                      TEST EAX,EAX
0059d777  0f8573ffffff              JNZ 0x0059d6f0
0059d77d  39879c000000              CMP dword ptr [EDI + 0x9c],EAX
0059d783  740c                      JZ 0x0059d791
0059d785  3887ac000000              CMP byte ptr [EDI + 0xac],AL
0059d78b  0f85b1040000              JNZ 0x0059dc42
0059d791  8bf7                      MOV ESI,EDI
0059d793  897db0                    MOV dword ptr [EBP + -0x50],EDI
0059d796  8d4e48                    LEA ECX,[ESI + 0x48]
0059d799  894db8                    MOV dword ptr [EBP + -0x48],ECX
0059d79c  8b4954                    MOV ECX,dword ptr [ECX + 0x54]
0059d79f  85c9                      TEST ECX,ECX
0059d7a1  744c                      JZ 0x0059d7ef
0059d7a3  83791410                  CMP dword ptr [ECX + 0x14],0x10
0059d7a7  8bc1                      MOV EAX,ECX
0059d7a9  7202                      JC 0x0059d7ad
0059d7ab  8b01                      MOV EAX,dword ptr [ECX]
0059d7ad  b99825b600                MOV ECX,0xb62598
0059d7b2  8a10                      MOV DL,byte ptr [EAX]
0059d7b4  3a11                      CMP DL,byte ptr [ECX]
0059d7b6  751a                      JNZ 0x0059d7d2
0059d7b8  84d2                      TEST DL,DL
0059d7ba  7412                      JZ 0x0059d7ce
0059d7bc  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0059d7bf  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0059d7c2  750e                      JNZ 0x0059d7d2
0059d7c4  83c002                    ADD EAX,0x2
0059d7c7  83c102                    ADD ECX,0x2
0059d7ca  84d2                      TEST DL,DL
0059d7cc  75e4                      JNZ 0x0059d7b2
0059d7ce  33c0                      XOR EAX,EAX
0059d7d0  eb05                      JMP 0x0059d7d7
0059d7d2  1bc0                      SBB EAX,EAX
0059d7d4  83c801                    OR EAX,0x1
0059d7d7  8d4e48                    LEA ECX,[ESI + 0x48]
0059d7da  85c0                      TEST EAX,EAX
0059d7dc  7514                      JNZ 0x0059d7f2
0059d7de  8b4154                    MOV EAX,dword ptr [ECX + 0x54]
0059d7e1  80783400                  CMP byte ptr [EAX + 0x34],0x0
0059d7e5  742d                      JZ 0x0059d814
0059d7e7  80796400                  CMP byte ptr [ECX + 0x64],0x0
0059d7eb  7527                      JNZ 0x0059d814
0059d7ed  eb03                      JMP 0x0059d7f2
0059d7ef  8d4e48                    LEA ECX,[ESI + 0x48]
0059d7f2  6a01                      PUSH 0x1
0059d7f4  689825b600                PUSH 0xb62598
0059d7f9  e8f2d2e6ff                CALL 0x0040aaf0
0059d7fe  84c0                      TEST AL,AL
0059d800  7412                      JZ 0x0059d814
0059d802  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
0059d805  8d4e50                    LEA ECX,[ESI + 0x50]
0059d808  e8a3c9e6ff                CALL 0x0040a1b0
0059d80d  c6466401                  MOV byte ptr [ESI + 0x64],0x1
0059d811  8b75b0                    MOV ESI,dword ptr [EBP + -0x50]
0059d814  8d8e040c0000              LEA ECX,[ESI + 0xc04]
0059d81a  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
0059d824  c786b80b000000000000      MOV dword ptr [ESI + 0xbb8],0x0
0059d82e  e84dbbefff                CALL 0x00499380
0059d833  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
0059d839  8975b0                    MOV dword ptr [EBP + -0x50],ESI
0059d83c  85f6                      TEST ESI,ESI
0059d83e  0f8552ffffff              JNZ 0x0059d796
0059d844  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0059d84a  894de8                    MOV dword ptr [EBP + -0x18],ECX
0059d84d  85c9                      TEST ECX,ECX
0059d84f  0f84ed030000              JZ 0x0059dc42
0059d855  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
0059d860  8bb1bc030000              MOV ESI,dword ptr [ECX + 0x3bc]
0059d866  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
0059d86c  81c6040c0000              ADD ESI,0xc04
0059d872  8945a8                    MOV dword ptr [EBP + -0x58],EAX
0059d875  8b8140030000              MOV EAX,dword ptr [ECX + 0x340]
0059d87b  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
0059d87e  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
0059d881  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0059d884  a801                      TEST AL,0x1
0059d886  751e                      JNZ 0x0059d8a6
0059d888  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0059d88b  8b4610                    MOV EAX,dword ptr [ESI + 0x10]
0059d88e  83c002                    ADD EAX,0x2
0059d891  d1e8                      SHR EAX,0x1
0059d893  394608                    CMP dword ptr [ESI + 0x8],EAX
0059d896  770e                      JA 0x0059d8a6
0059d898  51                        PUSH ECX
0059d899  8bce                      MOV ECX,ESI
0059d89b  e870bbefff                CALL 0x00499410
0059d8a0  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
0059d8a3  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0059d8a6  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
0059d8a9  8d0409                    LEA EAX,[ECX + ECX*0x1]
0059d8ac  8d50ff                    LEA EDX,[EAX + -0x1]
0059d8af  2355bc                    AND EDX,dword ptr [EBP + -0x44]
0059d8b2  89560c                    MOV dword ptr [ESI + 0xc],EDX
0059d8b5  0f44d0                    CMOVZ EDX,EAX
0059d8b8  49                        DEC ECX
0059d8b9  4a                        DEC EDX
0059d8ba  8bc2                      MOV EAX,EDX
0059d8bc  8955b8                    MOV dword ptr [EBP + -0x48],EDX
0059d8bf  d1e8                      SHR EAX,0x1
0059d8c1  23c8                      AND ECX,EAX
0059d8c3  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0059d8c6  894db0                    MOV dword ptr [EBP + -0x50],ECX
0059d8c9  833c8800                  CMP dword ptr [EAX + ECX*0x4],0x0
0059d8cd  7516                      JNZ 0x0059d8e5
0059d8cf  6a10                      PUSH 0x10
0059d8d1  e8ea1b4700                CALL 0x00a0f4c0
0059d8d6  8b55b0                    MOV EDX,dword ptr [EBP + -0x50]
0059d8d9  83c404                    ADD ESP,0x4
0059d8dc  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0059d8df  890491                    MOV dword ptr [ECX + EDX*0x4],EAX
0059d8e2  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
0059d8e5  8b7e04                    MOV EDI,dword ptr [ESI + 0x4]
0059d8e8  8bca                      MOV ECX,EDX
0059d8ea  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
0059d8ed  83e101                    AND ECX,0x1
0059d8f0  8b0487                    MOV EAX,dword ptr [EDI + EAX*0x4]
0059d8f3  8b7da8                    MOV EDI,dword ptr [EBP + -0x58]
0059d8f6  893cc8                    MOV dword ptr [EAX + ECX*0x8],EDI
0059d8f9  8b7da4                    MOV EDI,dword ptr [EBP + -0x5c]
0059d8fc  897cc804                  MOV dword ptr [EAX + ECX*0x8 + 0x4],EDI
0059d900  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
0059d903  ff4610                    INC dword ptr [ESI + 0x10]
0059d906  89560c                    MOV dword ptr [ESI + 0xc],EDX
0059d909  8b89c0030000              MOV ECX,dword ptr [ECX + 0x3c0]
0059d90f  894de8                    MOV dword ptr [EBP + -0x18],ECX
0059d912  85c9                      TEST ECX,ECX
0059d914  0f8546ffffff              JNZ 0x0059d860
0059d91a  8b7d9c                    MOV EDI,dword ptr [EBP + -0x64]
0059d91d  e920030000                JMP 0x0059dc42
0059d922  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0059d92a  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
0059d932  6a01                      PUSH 0x1
0059d934  f30f10157ca8ba00          MOVSS XMM2,dword ptr [0x00baa87c]
0059d93c  f30f100d9ca8ba00          MOVSS XMM1,dword ptr [0x00baa89c]
0059d944  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0059d94c  e89fa41300                CALL 0x006d7df0
0059d951  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0059d955  740d                      JZ 0x0059d964
0059d957  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0059d95e  0f85de020000              JNZ 0x0059dc42
0059d964  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0059d96b  0f85c4040000              JNZ 0x0059de35
0059d971  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
0059d979  0f28c1                    MOVAPS XMM0,XMM1
0059d97c  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0059d984  f30f588780030000          ADDSS XMM0,dword ptr [EDI + 0x380]
0059d98c  0f2fc8                    COMISS XMM1,XMM0
0059d98f  7706                      JA 0x0059d997
0059d991  f30f10c1                  MOVSS XMM0,XMM1
0059d995  eb04                      JMP 0x0059d99b
0059d997  f30f10c0                  MOVSS XMM0,XMM0
0059d99b  8bf7                      MOV ESI,EDI
0059d99d  33ff                      XOR EDI,EDI
0059d99f  8975b0                    MOV dword ptr [EBP + -0x50],ESI
0059d9a2  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0059d9a7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0059d9b0  8d4e48                    LEA ECX,[ESI + 0x48]
0059d9b3  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
0059d9bb  894db8                    MOV dword ptr [EBP + -0x48],ECX
0059d9be  47                        INC EDI
0059d9bf  8b4954                    MOV ECX,dword ptr [ECX + 0x54]
0059d9c2  85c9                      TEST ECX,ECX
0059d9c4  744c                      JZ 0x0059da12
0059d9c6  83791410                  CMP dword ptr [ECX + 0x14],0x10
0059d9ca  8bc1                      MOV EAX,ECX
0059d9cc  7202                      JC 0x0059d9d0
0059d9ce  8b01                      MOV EAX,dword ptr [ECX]
0059d9d0  b99825b600                MOV ECX,0xb62598
0059d9d5  8a10                      MOV DL,byte ptr [EAX]
0059d9d7  3a11                      CMP DL,byte ptr [ECX]
0059d9d9  751a                      JNZ 0x0059d9f5
0059d9db  84d2                      TEST DL,DL
0059d9dd  7412                      JZ 0x0059d9f1
0059d9df  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0059d9e2  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0059d9e5  750e                      JNZ 0x0059d9f5
0059d9e7  83c002                    ADD EAX,0x2
0059d9ea  83c102                    ADD ECX,0x2
0059d9ed  84d2                      TEST DL,DL
0059d9ef  75e4                      JNZ 0x0059d9d5
0059d9f1  33c0                      XOR EAX,EAX
0059d9f3  eb05                      JMP 0x0059d9fa
0059d9f5  1bc0                      SBB EAX,EAX
0059d9f7  83c801                    OR EAX,0x1
0059d9fa  8d4e48                    LEA ECX,[ESI + 0x48]
0059d9fd  85c0                      TEST EAX,EAX
0059d9ff  7514                      JNZ 0x0059da15
0059da01  8b4154                    MOV EAX,dword ptr [ECX + 0x54]
0059da04  80783400                  CMP byte ptr [EAX + 0x34],0x0
0059da08  742d                      JZ 0x0059da37
0059da0a  80796400                  CMP byte ptr [ECX + 0x64],0x0
0059da0e  7527                      JNZ 0x0059da37
0059da10  eb03                      JMP 0x0059da15
0059da12  8d4e48                    LEA ECX,[ESI + 0x48]
0059da15  6a01                      PUSH 0x1
0059da17  689825b600                PUSH 0xb62598
0059da1c  e8cfd0e6ff                CALL 0x0040aaf0
0059da21  84c0                      TEST AL,AL
0059da23  7412                      JZ 0x0059da37
0059da25  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
0059da28  8d4e50                    LEA ECX,[ESI + 0x50]
0059da2b  e880c7e6ff                CALL 0x0040a1b0
0059da30  c6466401                  MOV byte ptr [ESI + 0x64],0x1
0059da34  8b75b0                    MOV ESI,dword ptr [EBP + -0x50]
0059da37  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
0059da41  e81a151500                CALL 0x006eef60
0059da46  83a668010000fe            AND dword ptr [ESI + 0x168],0xfffffffe
0059da4d  c7868801000004000000      MOV dword ptr [ESI + 0x188],0x4
0059da57  c686b003000000            MOV byte ptr [ESI + 0x3b0],0x0
0059da5e  660f6ec0                  MOVD XMM0,EAX
0059da62  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0059da66  c1e81f                    SHR EAX,0x1f
0059da69  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0059da72  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0059da78  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0059da7e  660f5ac0                  CVTPD2PS XMM0,XMM0
0059da82  f30f5905d8acba00          MULSS XMM0,dword ptr [0x00baacd8]
0059da8a  f30f590500aaba00          MULSS XMM0,dword ptr [0x00baaa00]
0059da92  f30f1186b80b0000          MOVSS dword ptr [ESI + 0xbb8],XMM0
0059da9a  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
0059daa0  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
0059daa5  8975b0                    MOV dword ptr [EBP + -0x50],ESI
0059daa8  85f6                      TEST ESI,ESI
0059daaa  0f8500ffffff              JNZ 0x0059d9b0
0059dab0  8bc7                      MOV EAX,EDI
0059dab2  897db8                    MOV dword ptr [EBP + -0x48],EDI
0059dab5  8b7d9c                    MOV EDI,dword ptr [EBP + -0x64]
0059dab8  33c9                      XOR ECX,ECX
0059daba  99                        CDQ
0059dabb  8bf7                      MOV ESI,EDI
0059dabd  2bc2                      SUB EAX,EDX
0059dabf  d1f8                      SAR EAX,0x1
0059dac1  85c0                      TEST EAX,EAX
0059dac3  7e0f                      JLE 0x0059dad4
0059dac5  85f6                      TEST ESI,ESI
0059dac7  740b                      JZ 0x0059dad4
0059dac9  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
0059dacf  41                        INC ECX
0059dad0  3bc8                      CMP ECX,EAX
0059dad2  7cf1                      JL 0x0059dac5
0059dad4  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0059dadc  8d96bc030000              LEA EDX,[ESI + 0x3bc]
0059dae2  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
0059daea  03c0                      ADD EAX,EAX
0059daec  8b0a                      MOV ECX,dword ptr [EDX]
0059daee  894de8                    MOV dword ptr [EBP + -0x18],ECX
0059daf1  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
0059daf6  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0059dafb  3b45b8                    CMP EAX,dword ptr [EBP + -0x48]
0059dafe  7d6a                      JGE 0x0059db6a
0059db00  8bc1                      MOV EAX,ECX
0059db02  8b88c0030000              MOV ECX,dword ptr [EAX + 0x3c0]
0059db08  05c0030000                ADD EAX,0x3c0
0059db0d  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0059db10  85c9                      TEST ECX,ECX
0059db12  7415                      JZ 0x0059db29
0059db14  8945b8                    MOV dword ptr [EBP + -0x48],EAX
0059db17  81c1cc030000              ADD ECX,0x3cc
0059db1d  8d45b8                    LEA EAX,[EBP + -0x48]
0059db20  50                        PUSH EAX
0059db21  e8ea16f3ff                CALL 0x004cf210
0059db26  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
0059db29  c70000000000              MOV dword ptr [EAX],0x0
0059db2f  8b86c0030000              MOV EAX,dword ptr [ESI + 0x3c0]
0059db35  05bc030000                ADD EAX,0x3bc
0059db3a  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0059db3d  8b08                      MOV ECX,dword ptr [EAX]
0059db3f  85c9                      TEST ECX,ECX
0059db41  7415                      JZ 0x0059db58
0059db43  8945b8                    MOV dword ptr [EBP + -0x48],EAX
0059db46  81c1cc030000              ADD ECX,0x3cc
0059db4c  8d45b8                    LEA EAX,[EBP + -0x48]
0059db4f  50                        PUSH EAX
0059db50  e8bb16f3ff                CALL 0x004cf210
0059db55  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
0059db58  c70000000000              MOV dword ptr [EAX],0x0
0059db5e  8bce                      MOV ECX,ESI
0059db60  8b06                      MOV EAX,dword ptr [ESI]
0059db62  ff5028                    CALL dword ptr [EAX + 0x28]
0059db65  e983000000                JMP 0x0059dbed
0059db6a  8bc1                      MOV EAX,ECX
0059db6c  8b88c0030000              MOV ECX,dword ptr [EAX + 0x3c0]
0059db72  f30f58803c030000          ADDSS XMM0,dword ptr [EAX + 0x33c]
0059db7a  f30f588840030000          ADDSS XMM1,dword ptr [EAX + 0x340]
0059db82  05c0030000                ADD EAX,0x3c0
0059db87  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0059db8a  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0059db92  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0059db9a  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
0059db9f  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0059dba4  85c9                      TEST ECX,ECX
0059dba6  741b                      JZ 0x0059dbc3
0059dba8  8945b8                    MOV dword ptr [EBP + -0x48],EAX
0059dbab  81c1cc030000              ADD ECX,0x3cc
0059dbb1  8d45b8                    LEA EAX,[EBP + -0x48]
0059dbb4  50                        PUSH EAX
0059dbb5  e85616f3ff                CALL 0x004cf210
0059dbba  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
0059dbbd  8d96bc030000              LEA EDX,[ESI + 0x3bc]
0059dbc3  c70000000000              MOV dword ptr [EAX],0x0
0059dbc9  8b0a                      MOV ECX,dword ptr [EDX]
0059dbcb  85c9                      TEST ECX,ECX
0059dbcd  7418                      JZ 0x0059dbe7
0059dbcf  8d45b8                    LEA EAX,[EBP + -0x48]
0059dbd2  8955b8                    MOV dword ptr [EBP + -0x48],EDX
0059dbd5  50                        PUSH EAX
0059dbd6  81c1cc030000              ADD ECX,0x3cc
0059dbdc  e82f16f3ff                CALL 0x004cf210
0059dbe1  8d96bc030000              LEA EDX,[ESI + 0x3bc]
0059dbe7  c70200000000              MOV dword ptr [EDX],0x0
0059dbed  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0059dbf5  8bcf                      MOV ECX,EDI
0059dbf7  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0059dbfc  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0059dc04  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0059dc09  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
0059dc0e  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
0059dc16  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
0059dc1b  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
0059dc23  e898691100                CALL 0x006b45c0
0059dc28  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0059dc2d  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
0059dc35  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
0059dc3a  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
0059dc42  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0059dc49  0f85e6010000              JNZ 0x0059de35
0059dc4f  33c9                      XOR ECX,ECX
0059dc51  8bc7                      MOV EAX,EDI
0059dc53  8b80c0030000              MOV EAX,dword ptr [EAX + 0x3c0]
0059dc59  41                        INC ECX
0059dc5a  85c0                      TEST EAX,EAX
0059dc5c  75f5                      JNZ 0x0059dc53
0059dc5e  83f903                    CMP ECX,0x3
0059dc61  0f8ece010000              JLE 0x0059de35
0059dc67  388773010000              CMP byte ptr [EDI + 0x173],AL
0059dc6d  752b                      JNZ 0x0059dc9a
0059dc6f  8bc1                      MOV EAX,ECX
0059dc71  99                        CDQ
0059dc72  2bc2                      SUB EAX,EDX
0059dc74  d1f8                      SAR EAX,0x1
0059dc76  660f6ec0                  MOVD XMM0,EAX
0059dc7a  0f5bc0                    CVTDQ2PS XMM0,XMM0
0059dc7d  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0059dc85  f30f598784030000          MULSS XMM0,dword ptr [EDI + 0x384]
0059dc8d  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
0059dc94  0f869b010000              JBE 0x0059de35
0059dc9a  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0059dca0  8bf7                      MOV ESI,EDI
0059dca2  838f6801000001            OR dword ptr [EDI + 0x168],0x1
0059dca9  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0059dcb0  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0059dcba  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0059dcc4  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0059dccb  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0059dcd1  6a00                      PUSH 0x0
0059dcd3  8d8e98000000              LEA ECX,[ESI + 0x98]
0059dcd9  c6867301000000            MOV byte ptr [ESI + 0x173],0x0
0059dce0  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
0059dcea  c786640b000010000000      MOV dword ptr [ESI + 0xb64],0x10
0059dcf4  e837abe6ff                CALL 0x00408830
0059dcf9  83bebc03000000            CMP dword ptr [ESI + 0x3bc],0x0
0059dd00  6a00                      PUSH 0x0
0059dd02  7419                      JZ 0x0059dd1d
0059dd04  8d45cc                    LEA EAX,[EBP + -0x34]
0059dd07  68b425b600                PUSH 0xb625b4
0059dd0c  50                        PUSH EAX
0059dd0d  e86e2de8ff                CALL 0x00420a80
0059dd12  83c40c                    ADD ESP,0xc
0059dd15  8d45cc                    LEA EAX,[EBP + -0x34]
0059dd18  6a00                      PUSH 0x0
0059dd1a  50                        PUSH EAX
0059dd1b  eb05                      JMP 0x0059dd22
0059dd1d  68a825b600                PUSH 0xb625a8
0059dd22  8d4e48                    LEA ECX,[ESI + 0x48]
0059dd25  e856c6e6ff                CALL 0x0040a380
0059dd2a  8d8e040c0000              LEA ECX,[ESI + 0xc04]
0059dd30  c786b80b000000000000      MOV dword ptr [ESI + 0xbb8],0x0
0059dd3a  c786bc0b000000000000      MOV dword ptr [ESI + 0xbbc],0x0
0059dd44  e837b6efff                CALL 0x00499380
0059dd49  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
0059dd4f  85f6                      TEST ESI,ESI
0059dd51  0f857affffff              JNZ 0x0059dcd1
0059dd57  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0059dd5d  894db0                    MOV dword ptr [EBP + -0x50],ECX
0059dd60  85c9                      TEST ECX,ECX
0059dd62  0f84cd000000              JZ 0x0059de35
0059dd68  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
0059dd70  8bb1bc030000              MOV ESI,dword ptr [ECX + 0x3bc]
0059dd76  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
0059dd7c  81c6040c0000              ADD ESI,0xc04
0059dd82  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0059dd85  8b8140030000              MOV EAX,dword ptr [ECX + 0x340]
0059dd8b  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
0059dd8e  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
0059dd91  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0059dd94  a801                      TEST AL,0x1
0059dd96  751e                      JNZ 0x0059ddb6
0059dd98  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0059dd9b  8b4610                    MOV EAX,dword ptr [ESI + 0x10]
0059dd9e  83c002                    ADD EAX,0x2
0059dda1  d1e8                      SHR EAX,0x1
0059dda3  394608                    CMP dword ptr [ESI + 0x8],EAX
0059dda6  770e                      JA 0x0059ddb6
0059dda8  51                        PUSH ECX
0059dda9  8bce                      MOV ECX,ESI
0059ddab  e860b6efff                CALL 0x00499410
0059ddb0  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
0059ddb3  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0059ddb6  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
0059ddb9  8d0409                    LEA EAX,[ECX + ECX*0x1]
0059ddbc  8d50ff                    LEA EDX,[EAX + -0x1]
0059ddbf  2355bc                    AND EDX,dword ptr [EBP + -0x44]
0059ddc2  89560c                    MOV dword ptr [ESI + 0xc],EDX
0059ddc5  0f44d0                    CMOVZ EDX,EAX
0059ddc8  4a                        DEC EDX
0059ddc9  8bc2                      MOV EAX,EDX
0059ddcb  8955b8                    MOV dword ptr [EBP + -0x48],EDX
0059ddce  d1e8                      SHR EAX,0x1
0059ddd0  8945a8                    MOV dword ptr [EBP + -0x58],EAX
0059ddd3  8d41ff                    LEA EAX,[ECX + -0x1]
0059ddd6  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
0059ddd9  23c8                      AND ECX,EAX
0059dddb  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0059ddde  894da8                    MOV dword ptr [EBP + -0x58],ECX
0059dde1  833c8800                  CMP dword ptr [EAX + ECX*0x4],0x0
0059dde5  7516                      JNZ 0x0059ddfd
0059dde7  6a10                      PUSH 0x10
0059dde9  e8d2164700                CALL 0x00a0f4c0
0059ddee  8b55a8                    MOV EDX,dword ptr [EBP + -0x58]
0059ddf1  83c404                    ADD ESP,0x4
0059ddf4  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0059ddf7  890491                    MOV dword ptr [ECX + EDX*0x4],EAX
0059ddfa  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
0059ddfd  8b7e04                    MOV EDI,dword ptr [ESI + 0x4]
0059de00  8bca                      MOV ECX,EDX
0059de02  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
0059de05  83e101                    AND ECX,0x1
0059de08  8b0487                    MOV EAX,dword ptr [EDI + EAX*0x4]
0059de0b  8b7de8                    MOV EDI,dword ptr [EBP + -0x18]
0059de0e  893cc8                    MOV dword ptr [EAX + ECX*0x8],EDI
0059de11  8b7da4                    MOV EDI,dword ptr [EBP + -0x5c]
0059de14  897cc804                  MOV dword ptr [EAX + ECX*0x8 + 0x4],EDI
0059de18  8b4db0                    MOV ECX,dword ptr [EBP + -0x50]
0059de1b  ff4610                    INC dword ptr [ESI + 0x10]
0059de1e  89560c                    MOV dword ptr [ESI + 0xc],EDX
0059de21  8b89c0030000              MOV ECX,dword ptr [ECX + 0x3c0]
0059de27  894db0                    MOV dword ptr [EBP + -0x50],ECX
0059de2a  85c9                      TEST ECX,ECX
0059de2c  0f853effffff              JNZ 0x0059dd70
0059de32  8b7d9c                    MOV EDI,dword ptr [EBP + -0x64]
0059de35  e826111500                CALL 0x006eef60
0059de3a  a807                      TEST AL,0x7
0059de3c  755b                      JNZ 0x0059de99
0059de3e  e81d111500                CALL 0x006eef60
0059de43  51                        PUSH ECX
0059de44  8bcf                      MOV ECX,EDI
0059de46  660f6ec0                  MOVD XMM0,EAX
0059de4a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0059de4e  c1e81f                    SHR EAX,0x1f
0059de51  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0059de5a  660f5ac0                  CVTPD2PS XMM0,XMM0
0059de5e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0059de66  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0059de6e  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0059de76  f30f110424                MOVSS dword ptr [ESP],XMM0
0059de7b  e850861100                CALL 0x006b64d0
0059de80  6a01                      PUSH 0x1
0059de82  6a00                      PUSH 0x0
0059de84  68ff000000                PUSH 0xff
0059de89  8b10                      MOV EDX,dword ptr [EAX]
0059de8b  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0059de91  6aff                      PUSH -0x1
0059de93  51                        PUSH ECX
0059de94  8bc8                      MOV ECX,EAX
0059de96  ff523c                    CALL dword ptr [EDX + 0x3c]
0059de99  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0059de9f  2500400000                AND EAX,0x4000
0059dea4  83c800                    OR EAX,0x0
0059dea7  0f85d8000000              JNZ 0x0059df85
0059dead  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059deb3  e898f41500                CALL 0x006fd350
0059deb8  84c0                      TEST AL,AL
0059deba  0f85c5000000              JNZ 0x0059df85
0059dec0  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
0059dec8  0f57d2                    XORPS XMM2,XMM2
0059decb  f30f58c2                  ADDSS XMM0,XMM2
0059decf  f30f590500adba00          MULSS XMM0,dword ptr [0x00baad00]
0059ded7  f30f2cc8                  CVTTSS2SI ECX,XMM0
0059dedb  f30f1087a0030000          MOVSS XMM0,dword ptr [EDI + 0x3a0]
0059dee3  f30f58c2                  ADDSS XMM0,XMM2
0059dee7  f30f590500adba00          MULSS XMM0,dword ptr [0x00baad00]
0059deef  f30f2cc0                  CVTTSS2SI EAX,XMM0
0059def3  2bc1                      SUB EAX,ECX
0059def5  0f848a000000              JZ 0x0059df85
0059defb  e860101500                CALL 0x006eef60
0059df00  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059df06  6a00                      PUSH 0x0
0059df08  50                        PUSH EAX
0059df09  6a00                      PUSH 0x0
0059df0b  57                        PUSH EDI
0059df0c  6840b6c700                PUSH 0xc7b640
0059df11  8d873c030000              LEA EAX,[EDI + 0x33c]
0059df17  50                        PUSH EAX
0059df18  6a5e                      PUSH 0x5e
0059df1a  68e8030000                PUSH 0x3e8
0059df1f  e8ec041600                CALL 0x006fe410
0059df24  8bf0                      MOV ESI,EAX
0059df26  e835101500                CALL 0x006eef60
0059df2b  8bce                      MOV ECX,ESI
0059df2d  660f6ec0                  MOVD XMM0,EAX
0059df31  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0059df35  c1e81f                    SHR EAX,0x1f
0059df38  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0059df41  8b06                      MOV EAX,dword ptr [ESI]
0059df43  660f5ac8                  CVTPD2PS XMM1,XMM0
0059df47  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0059df4f  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
0059df57  f30f580d80a3ba00          ADDSS XMM1,dword ptr [0x00baa380]
0059df5f  0f28c1                    MOVAPS XMM0,XMM1
0059df62  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0059df6a  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0059df72  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0059df7a  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0059df82  ff500c                    CALL dword ptr [EAX + 0xc]
0059df85  8bcf                      MOV ECX,EDI
0059df87  e844e6ffff                CALL 0x0059c5d0
0059df8c  e970020000                JMP 0x0059e201
0059df91  a17816c700                MOV EAX,[0x00c71678]
0059df96  6a00                      PUSH 0x0
0059df98  6a00                      PUSH 0x0
0059df9a  6aff                      PUSH -0x1
0059df9c  ff772c                    PUSH dword ptr [EDI + 0x2c]
0059df9f  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0059dfa5  8d45dc                    LEA EAX,[EBP + -0x24]
0059dfa8  ff7728                    PUSH dword ptr [EDI + 0x28]
0059dfab  81c118120000              ADD ECX,0x1218
0059dfb1  50                        PUSH EAX
0059dfb2  e8a9cfe7ff                CALL 0x0041af60
0059dfb7  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0059dfbe  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
0059dfc1  83ee01                    SUB ESI,0x1
0059dfc4  8975b0                    MOV dword ptr [EBP + -0x50],ESI
0059dfc7  0f88bd000000              JS 0x0059e08a
0059dfcd  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0059dfd0  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
0059dfd3  3bf7                      CMP ESI,EDI
0059dfd5  0f84a0000000              JZ 0x0059e07b
0059dfdb  39bebc030000              CMP dword ptr [ESI + 0x3bc],EDI
0059dfe1  0f8494000000              JZ 0x0059e07b
0059dfe7  83bec003000000            CMP dword ptr [ESI + 0x3c0],0x0
0059dfee  0f8587000000              JNZ 0x0059e07b
0059dff4  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0059dffc  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0059e004  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0059e00c  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0059e014  f30f59c0                  MULSS XMM0,XMM0
0059e018  f30f59c9                  MULSS XMM1,XMM1
0059e01c  f30f58c1                  ADDSS XMM0,XMM1
0059e020  e82b7ae9ff                CALL 0x00435a50
0059e025  f30f100d08a9ba00          MOVSS XMM1,dword ptr [0x00baa908]
0059e02d  0f2fc8                    COMISS XMM1,XMM0
0059e030  7646                      JBE 0x0059e078
0059e032  8bc6                      MOV EAX,ESI
0059e034  3bc7                      CMP EAX,EDI
0059e036  7440                      JZ 0x0059e078
0059e038  8b80bc030000              MOV EAX,dword ptr [EAX + 0x3bc]
0059e03e  85c0                      TEST EAX,EAX
0059e040  7404                      JZ 0x0059e046
0059e042  3bc6                      CMP EAX,ESI
0059e044  75ee                      JNZ 0x0059e034
0059e046  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0059e04c  8d87bc030000              LEA EAX,[EDI + 0x3bc]
0059e052  85c9                      TEST ECX,ECX
0059e054  7418                      JZ 0x0059e06e
0059e056  8945b8                    MOV dword ptr [EBP + -0x48],EAX
0059e059  81c1cc030000              ADD ECX,0x3cc
0059e05f  8d45b8                    LEA EAX,[EBP + -0x48]
0059e062  50                        PUSH EAX
0059e063  e8a811f3ff                CALL 0x004cf210
0059e068  8d87bc030000              LEA EAX,[EDI + 0x3bc]
0059e06e  50                        PUSH EAX
0059e06f  8bce                      MOV ECX,ESI
0059e071  8930                      MOV dword ptr [EAX],ESI
0059e073  e878fcf2ff                CALL 0x004cdcf0
0059e078  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0059e07b  8b75b0                    MOV ESI,dword ptr [EBP + -0x50]
0059e07e  83ee01                    SUB ESI,0x1
0059e081  8975b0                    MOV dword ptr [EBP + -0x50],ESI
0059e084  0f8946ffffff              JNS 0x0059dfd0
0059e08a  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
0059e090  85f6                      TEST ESI,ESI
0059e092  742c                      JZ 0x0059e0c0
0059e094  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
0059e09a  81c6c0030000              ADD ESI,0x3c0
0059e0a0  85c9                      TEST ECX,ECX
0059e0a2  7412                      JZ 0x0059e0b6
0059e0a4  8d45b8                    LEA EAX,[EBP + -0x48]
0059e0a7  8975b8                    MOV dword ptr [EBP + -0x48],ESI
0059e0aa  81c1cc030000              ADD ECX,0x3cc
0059e0b0  50                        PUSH EAX
0059e0b1  e85a11f3ff                CALL 0x004cf210
0059e0b6  56                        PUSH ESI
0059e0b7  8bcf                      MOV ECX,EDI
0059e0b9  893e                      MOV dword ptr [ESI],EDI
0059e0bb  e830fcf2ff                CALL 0x004cdcf0
0059e0c0  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0059e0c7  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
0059e0cb  7537                      JNZ 0x0059e104
0059e0cd  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
0059e0d3  85d2                      TEST EDX,EDX
0059e0d5  7405                      JZ 0x0059e0dc
0059e0d7  83c230                    ADD EDX,0x30
0059e0da  eb05                      JMP 0x0059e0e1
0059e0dc  ba18f6c700                MOV EDX,0xc7f618
0059e0e1  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0059e0e4  85c0                      TEST EAX,EAX
0059e0e6  7415                      JZ 0x0059e0fd
0059e0e8  8d48fc                    LEA ECX,[EAX + -0x4]
0059e0eb  8b01                      MOV EAX,dword ptr [ECX]
0059e0ed  2902                      SUB dword ptr [EDX],EAX
0059e0ef  51                        PUSH ECX
0059e0f0  835a0400                  SBB dword ptr [EDX + 0x4],0x0
0059e0f4  ff15dc87b100              CALL dword ptr [0x00b187dc]
0059e0fa  83c404                    ADD ESP,0x4
0059e0fd  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0059e104  e8570e1500                CALL 0x006eef60
0059e109  6a00                      PUSH 0x0
0059e10b  689825b600                PUSH 0xb62598
0059e110  8d4f48                    LEA ECX,[EDI + 0x48]
0059e113  660f6ec0                  MOVD XMM0,EAX
0059e117  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0059e11b  c1e81f                    SHR EAX,0x1f
0059e11e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0059e127  660f5ac0                  CVTPD2PS XMM0,XMM0
0059e12b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0059e133  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0059e13b  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0059e143  e8f8c7e6ff                CALL 0x0040a940
0059e148  6a23                      PUSH 0x23
0059e14a  6a29                      PUSH 0x29
0059e14c  6a41                      PUSH 0x41
0059e14e  68ff000000                PUSH 0xff
0059e153  6a00                      PUSH 0x0
0059e155  6a00                      PUSH 0x0
0059e157  6a00                      PUSH 0x0
0059e159  8d4dc0                    LEA ECX,[EBP + -0x40]
0059e15c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0059e166  e8d580ebff                CALL 0x00456240
0059e16b  50                        PUSH EAX
0059e16c  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0059e172  e87990e6ff                CALL 0x004071f0
0059e177  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0059e17f  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0059e187  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0059e18d  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
0059e197  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
0059e19f  85c9                      TEST ECX,ECX
0059e1a1  741c                      JZ 0x0059e1bf
0059e1a3  8d873c030000              LEA EAX,[EDI + 0x33c]
0059e1a9  81c1040c0000              ADD ECX,0xc04
0059e1af  50                        PUSH EAX
0059e1b0  e8dbafefff                CALL 0x00499190
0059e1b5  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0059e1bb  85c9                      TEST ECX,ECX
0059e1bd  7521                      JNZ 0x0059e1e0
0059e1bf  8b4f20                    MOV ECX,dword ptr [EDI + 0x20]
0059e1c2  8bc7                      MOV EAX,EDI
0059e1c4  0f1f4000                  NOP dword ptr [EAX]
0059e1c8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
0059e1d0  89887c0c0000              MOV dword ptr [EAX + 0xc7c],ECX
0059e1d6  8b80c0030000              MOV EAX,dword ptr [EAX + 0x3c0]
0059e1dc  85c0                      TEST EAX,EAX
0059e1de  75f0                      JNZ 0x0059e1d0
0059e1e0  8bcf                      MOV ECX,EDI
0059e1e2  e8a9a71000                CALL 0x006a8990
0059e1e7  8bf0                      MOV ESI,EAX
0059e1e9  85f6                      TEST ESI,ESI
0059e1eb  7414                      JZ 0x0059e201
0059e1ed  0f1f00                    NOP dword ptr [EAX]
0059e1f0  8bce                      MOV ECX,ESI
0059e1f2  e8d9e3ffff                CALL 0x0059c5d0
0059e1f7  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
0059e1fd  85f6                      TEST ESI,ESI
0059e1ff  75ef                      JNZ 0x0059e1f0
0059e201  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0059e204  64890d00000000            MOV dword ptr FS:[0x0],ECX
0059e20b  59                        POP ECX
0059e20c  5f                        POP EDI
0059e20d  5e                        POP ESI
0059e20e  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0059e211  33cd                      XOR ECX,EBP
0059e213  e8130f5500                CALL 0x00aef12b
0059e218  8be5                      MOV ESP,EBP
0059e21a  5d                        POP EBP
0059e21b  8be3                      MOV ESP,EBX
0059e21d  5b                        POP EBX
0059e21e  c3                        RET
