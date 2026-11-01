; J460 NPC AI 0x0053b2f0 AI_0053b2f0
; types=225
; identities=225.0.0
; entry=0053b2f0
0053b2f0  55                        PUSH EBP
0053b2f1  8bec                      MOV EBP,ESP
0053b2f3  83e4f8                    AND ESP,0xfffffff8
0053b2f6  83ec40                    SUB ESP,0x40
0053b2f9  56                        PUSH ESI
0053b2fa  57                        PUSH EDI
0053b2fb  8bf9                      MOV EDI,ECX
0053b2fd  8b97640b0000              MOV EDX,dword ptr [EDI + 0xb64]
0053b303  85d2                      TEST EDX,EDX
0053b305  7579                      JNZ 0x0053b380
0053b307  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0053b311  8d44241c                  LEA EAX,[ESP + 0x1c]
0053b315  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053b31f  0f57c9                    XORPS XMM1,XMM1
0053b322  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0053b32a  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0053b332  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053b33a  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0053b342  81c7e4010000              ADD EDI,0x1e4
0053b348  0f280540bfba00            MOVAPS XMM0,xmmword ptr [0x00babf40]
0053b34f  8954243c                  MOV dword ptr [ESP + 0x3c],EDX
0053b353  89542440                  MOV dword ptr [ESP + 0x40],EDX
0053b357  89542444                  MOV dword ptr [ESP + 0x44],EDX
0053b35b  3bf8                      CMP EDI,EAX
0053b35d  0f84b3060000              JZ 0x0053ba16
0053b363  0f1107                    MOVUPS xmmword ptr [EDI],XMM0
0053b366  8bc2                      MOV EAX,EDX
0053b368  f30f7e44243c              MOVQ XMM0,qword ptr [ESP + 0x3c]
0053b36e  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
0053b373  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
0053b377  894728                    MOV dword ptr [EDI + 0x28],EAX
0053b37a  5f                        POP EDI
0053b37b  5e                        POP ESI
0053b37c  8be5                      MOV ESP,EBP
0053b37e  5d                        POP EBP
0053b37f  c3                        RET
0053b380  8bb7c00b0000              MOV ESI,dword ptr [EDI + 0xbc0]
0053b386  85f6                      TEST ESI,ESI
0053b388  7e1a                      JLE 0x0053b3a4
0053b38a  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0053b392  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0053b39a  2bc8                      SUB ECX,EAX
0053b39c  03ce                      ADD ECX,ESI
0053b39e  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
0053b3a4  83fa04                    CMP EDX,0x4
0053b3a7  0f85d2030000              JNZ 0x0053b77f
0053b3ad  6a00                      PUSH 0x0
0053b3af  8d7748                    LEA ESI,[EDI + 0x48]
0053b3b2  68e4dcb100                PUSH 0xb1dce4
0053b3b7  8bce                      MOV ECX,ESI
0053b3b9  e8c2efecff                CALL 0x0040a380
0053b3be  51                        PUSH ECX
0053b3bf  8d442418                  LEA EAX,[ESP + 0x18]
0053b3c3  c7042400002041            MOV dword ptr [ESP],0x41200000
0053b3ca  50                        PUSH EAX
0053b3cb  8bcf                      MOV ECX,EDI
0053b3cd  e86e381800                CALL 0x006bec40
0053b3d2  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053b3d9  f30f1018                  MOVSS XMM3,dword ptr [EAX]
0053b3dd  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0053b3e2  f30f5c9f3c030000          SUBSS XMM3,dword ptr [EDI + 0x33c]
0053b3ea  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0053b3f2  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
0053b3f8  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
0053b3fe  7436                      JZ 0x0053b436
0053b400  8d442414                  LEA EAX,[ESP + 0x14]
0053b404  0f57d2                    XORPS XMM2,XMM2
0053b407  50                        PUSH EAX
0053b408  8bcf                      MOV ECX,EDI
0053b40a  e8c1ce1900                CALL 0x006d82d0
0053b40f  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0053b413  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
0053b41b  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
0053b421  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0053b426  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
0053b42e  f30f11542408              MOVSS dword ptr [ESP + 0x8],XMM2
0053b434  eb03                      JMP 0x0053b439
0053b436  0f28d1                    MOVAPS XMM2,XMM1
0053b439  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0053b43f  2500020000                AND EAX,0x200
0053b444  83c800                    OR EAX,0x0
0053b447  0f84e9000000              JZ 0x0053b536
0053b44d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053b454  0f85dc000000              JNZ 0x0053b536
0053b45a  8b7720                    MOV ESI,dword ptr [EDI + 0x20]
0053b45d  e8fe3a1b00                CALL 0x006eef60
0053b462  33d2                      XOR EDX,EDX
0053b464  b91e000000                MOV ECX,0x1e
0053b469  f7f1                      DIV ECX
0053b46b  56                        PUSH ESI
0053b46c  83c20f                    ADD EDX,0xf
0053b46f  8bcf                      MOV ECX,EDI
0053b471  52                        PUSH EDX
0053b472  e899121700                CALL 0x006ac710
0053b477  84c0                      TEST AL,AL
0053b479  751a                      JNZ 0x0053b495
0053b47b  388790010000              CMP byte ptr [EDI + 0x190],AL
0053b481  7512                      JNZ 0x0053b495
0053b483  f30f109fb00b0000          MOVSS XMM3,dword ptr [EDI + 0xbb0]
0053b48b  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0053b493  eb1c                      JMP 0x0053b4b1
0053b495  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
0053b49b  f30f104c2408              MOVSS XMM1,dword ptr [ESP + 0x8]
0053b4a1  f30f119fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM3
0053b4a9  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
0053b4b1  0f28c1                    MOVAPS XMM0,XMM1
0053b4b4  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
0053b4ba  0f28d3                    MOVAPS XMM2,XMM3
0053b4bd  f30f59c1                  MULSS XMM0,XMM1
0053b4c1  f30f100d54abba00          MOVSS XMM1,dword ptr [0x00baab54]
0053b4c9  f30f59d3                  MULSS XMM2,XMM3
0053b4cd  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
0053b4d3  f30f58d0                  ADDSS XMM2,XMM0
0053b4d7  0f2fca                    COMISS XMM1,XMM2
0053b4da  764f                      JBE 0x0053b52b
0053b4dc  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
0053b4e3  9f                        LAHF
0053b4e4  f6c444                    TEST AH,0x44
0053b4e7  7b42                      JNP 0x0053b52b
0053b4e9  0f28c2                    MOVAPS XMM0,XMM2
0053b4ec  e85fa5efff                CALL 0x00435a50
0053b4f1  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0053b4f8  8d7748                    LEA ESI,[EDI + 0x48]
0053b4fb  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
0053b501  f30f10542408              MOVSS XMM2,dword ptr [ESP + 0x8]
0053b507  7633                      JBE 0x0053b53c
0053b509  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
0053b511  f30f5ec8                  DIVSS XMM1,XMM0
0053b515  f30f59d9                  MULSS XMM3,XMM1
0053b519  f30f59d1                  MULSS XMM2,XMM1
0053b51d  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
0053b523  f30f11542408              MOVSS dword ptr [ESP + 0x8],XMM2
0053b529  eb11                      JMP 0x0053b53c
0053b52b  f30f10542408              MOVSS XMM2,dword ptr [ESP + 0x8]
0053b531  8d7748                    LEA ESI,[EDI + 0x48]
0053b534  eb06                      JMP 0x0053b53c
0053b536  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
0053b53c  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0053b544  0f28ca                    MOVAPS XMM1,XMM2
0053b547  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0053b54f  f30f59ca                  MULSS XMM1,XMM2
0053b553  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0053b559  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0053b561  0f28c3                    MOVAPS XMM0,XMM3
0053b564  f30f59c3                  MULSS XMM0,XMM3
0053b568  f30f58c1                  ADDSS XMM0,XMM1
0053b56c  e8dfa4efff                CALL 0x00435a50
0053b571  f30f1054240c              MOVSS XMM2,dword ptr [ESP + 0xc]
0053b577  0f57ed                    XORPS XMM5,XMM5
0053b57a  0f2fc5                    COMISS XMM0,XMM5
0053b57d  f30f104c2408              MOVSS XMM1,dword ptr [ESP + 0x8]
0053b583  7619                      JBE 0x0053b59e
0053b585  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0053b58d  f30f5ed8                  DIVSS XMM3,XMM0
0053b591  0f28e3                    MOVAPS XMM4,XMM3
0053b594  f30f59d9                  MULSS XMM3,XMM1
0053b598  f30f59e2                  MULSS XMM4,XMM2
0053b59c  eb06                      JMP 0x0053b5a4
0053b59e  0f28e2                    MOVAPS XMM4,XMM2
0053b5a1  0f28d9                    MOVAPS XMM3,XMM1
0053b5a4  f30f10742414              MOVSS XMM6,dword ptr [ESP + 0x14]
0053b5aa  0f2ef5                    UCOMISS XMM6,XMM5
0053b5ad  9f                        LAHF
0053b5ae  f6c444                    TEST AH,0x44
0053b5b1  7b38                      JNP 0x0053b5eb
0053b5b3  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0053b5bb  f30f59e0                  MULSS XMM4,XMM0
0053b5bf  f30f59d8                  MULSS XMM3,XMM0
0053b5c3  f30f5ee6                  DIVSS XMM4,XMM6
0053b5c7  f30f5ede                  DIVSS XMM3,XMM6
0053b5cb  f30f58a760030000          ADDSS XMM4,dword ptr [EDI + 0x360]
0053b5d3  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
0053b5db  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
0053b5e3  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0053b5eb  0f2fea                    COMISS XMM5,XMM2
0053b5ee  0f97c0                    SETA AL
0053b5f1  888748010000              MOV byte ptr [EDI + 0x148],AL
0053b5f7  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0053b5fd  25000a0001                AND EAX,0x1000a00
0053b602  83c800                    OR EAX,0x0
0053b605  0f857a030000              JNZ 0x0053b985
0053b60b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053b612  7440                      JZ 0x0053b654
0053b614  6a09                      PUSH 0x9
0053b616  8bcf                      MOV ECX,EDI
0053b618  e843cc1900                CALL 0x006d8260
0053b61d  0fb6c0                    MOVZX EAX,AL
0053b620  85c0                      TEST EAX,EAX
0053b622  7555                      JNZ 0x0053b679
0053b624  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053b62b  0f84d2000000              JZ 0x0053b703
0053b631  6a08                      PUSH 0x8
0053b633  8bcf                      MOV ECX,EDI
0053b635  e826cc1900                CALL 0x006d8260
0053b63a  84c0                      TEST AL,AL
0053b63c  0f8443030000              JZ 0x0053b985
0053b642  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0053b649  0f8f36030000              JG 0x0053b985
0053b64f  e9c6000000                JMP 0x0053b71a
0053b654  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0053b65b  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
0053b663  0f2fc1                    COMISS XMM0,XMM1
0053b666  76bc                      JBE 0x0053b624
0053b668  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
0053b670  0f2f0510a9ba00            COMISS XMM0,dword ptr [0x00baa910]
0053b677  76ab                      JBE 0x0053b624
0053b679  6a01                      PUSH 0x1
0053b67b  6868d6b100                PUSH 0xb1d668
0053b680  8bce                      MOV ECX,ESI
0053b682  e849efecff                CALL 0x0040a5d0
0053b687  84c0                      TEST AL,AL
0053b689  740c                      JZ 0x0053b697
0053b68b  8d4e30                    LEA ECX,[ESI + 0x30]
0053b68e  e81debecff                CALL 0x0040a1b0
0053b693  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0053b697  51                        PUSH ECX
0053b698  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053b69f  6a00                      PUSH 0x0
0053b6a1  6a02                      PUSH 0x2
0053b6a3  51                        PUSH ECX
0053b6a4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053b6ab  8bcf                      MOV ECX,EDI
0053b6ad  6a77                      PUSH 0x77
0053b6af  e8ecb41900                CALL 0x006d6ba0
0053b6b4  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0053b6ba  898734030000              MOV dword ptr [EDI + 0x334],EAX
0053b6c0  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0053b6c6  898738030000              MOV dword ptr [EDI + 0x338],EAX
0053b6cc  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0053b6d6  c7876403000000000000      MOV dword ptr [EDI + 0x364],0x0
0053b6e0  c7876003000000000000      MOV dword ptr [EDI + 0x360],0x0
0053b6ea  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0053b6f4  c7878401000002000000      MOV dword ptr [EDI + 0x184],0x2
0053b6fe  e982020000                JMP 0x0053b985
0053b703  e858381b00                CALL 0x006eef60
0053b708  33d2                      XOR EDX,EDX
0053b70a  b978000000                MOV ECX,0x78
0053b70f  f7f1                      DIV ECX
0053b711  83fa01                    CMP EDX,0x1
0053b714  0f836b020000              JNC 0x0053b985
0053b71a  8bcf                      MOV ECX,EDI
0053b71c  e8ffb41900                CALL 0x006d6c20
0053b721  83f808                    CMP EAX,0x8
0053b724  0f8d5b020000              JGE 0x0053b985
0053b72a  6a01                      PUSH 0x1
0053b72c  6820d4b100                PUSH 0xb1d420
0053b731  8bce                      MOV ECX,ESI
0053b733  e898eeecff                CALL 0x0040a5d0
0053b738  84c0                      TEST AL,AL
0053b73a  740c                      JZ 0x0053b748
0053b73c  8d4e30                    LEA ECX,[ESI + 0x30]
0053b73f  e86ceaecff                CALL 0x0040a1b0
0053b744  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0053b748  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0053b752  c7876403000000000000      MOV dword ptr [EDI + 0x364],0x0
0053b75c  c7876003000000000000      MOV dword ptr [EDI + 0x360],0x0
0053b766  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0053b770  c787c00b00005a000000      MOV dword ptr [EDI + 0xbc0],0x5a
0053b77a  e906020000                JMP 0x0053b985
0053b77f  83fa08                    CMP EDX,0x8
0053b782  0f857b010000              JNZ 0x0053b903
0053b788  c7876403000000000000      MOV dword ptr [EDI + 0x364],0x0
0053b792  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053b796  7409                      JZ 0x0053b7a1
0053b798  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053b79f  7572                      JNZ 0x0053b813
0053b7a1  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0053b7a4  85f6                      TEST ESI,ESI
0053b7a6  744a                      JZ 0x0053b7f2
0053b7a8  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053b7ac  8bc6                      MOV EAX,ESI
0053b7ae  7202                      JC 0x0053b7b2
0053b7b0  8b06                      MOV EAX,dword ptr [ESI]
0053b7b2  b9a4ddb100                MOV ECX,0xb1dda4
0053b7b7  8a10                      MOV DL,byte ptr [EAX]
0053b7b9  3a11                      CMP DL,byte ptr [ECX]
0053b7bb  751a                      JNZ 0x0053b7d7
0053b7bd  84d2                      TEST DL,DL
0053b7bf  7412                      JZ 0x0053b7d3
0053b7c1  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053b7c4  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053b7c7  750e                      JNZ 0x0053b7d7
0053b7c9  83c002                    ADD EAX,0x2
0053b7cc  83c102                    ADD ECX,0x2
0053b7cf  84d2                      TEST DL,DL
0053b7d1  75e4                      JNZ 0x0053b7b7
0053b7d3  33c0                      XOR EAX,EAX
0053b7d5  eb05                      JMP 0x0053b7dc
0053b7d7  1bc0                      SBB EAX,EAX
0053b7d9  83c801                    OR EAX,0x1
0053b7dc  85c0                      TEST EAX,EAX
0053b7de  7512                      JNZ 0x0053b7f2
0053b7e0  384634                    CMP byte ptr [ESI + 0x34],AL
0053b7e3  742e                      JZ 0x0053b813
0053b7e5  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0053b7eb  8d7748                    LEA ESI,[EDI + 0x48]
0053b7ee  7523                      JNZ 0x0053b813
0053b7f0  eb03                      JMP 0x0053b7f5
0053b7f2  8d7748                    LEA ESI,[EDI + 0x48]
0053b7f5  6a01                      PUSH 0x1
0053b7f7  68a4ddb100                PUSH 0xb1dda4
0053b7fc  8bce                      MOV ECX,ESI
0053b7fe  e8cdedecff                CALL 0x0040a5d0
0053b803  84c0                      TEST AL,AL
0053b805  740c                      JZ 0x0053b813
0053b807  8d4e30                    LEA ECX,[ESI + 0x30]
0053b80a  e8a1e9ecff                CALL 0x0040a1b0
0053b80f  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0053b813  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053b817  7472                      JZ 0x0053b88b
0053b819  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053b820  7469                      JZ 0x0053b88b
0053b822  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0053b825  83781410                  CMP dword ptr [EAX + 0x14],0x10
0053b829  7202                      JC 0x0053b82d
0053b82b  8b00                      MOV EAX,dword ptr [EAX]
0053b82d  b9a4ddb100                MOV ECX,0xb1dda4
0053b832  8a10                      MOV DL,byte ptr [EAX]
0053b834  3a11                      CMP DL,byte ptr [ECX]
0053b836  751a                      JNZ 0x0053b852
0053b838  84d2                      TEST DL,DL
0053b83a  7412                      JZ 0x0053b84e
0053b83c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053b83f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053b842  750e                      JNZ 0x0053b852
0053b844  83c002                    ADD EAX,0x2
0053b847  83c102                    ADD ECX,0x2
0053b84a  84d2                      TEST DL,DL
0053b84c  75e4                      JNZ 0x0053b832
0053b84e  33c0                      XOR EAX,EAX
0053b850  eb05                      JMP 0x0053b857
0053b852  1bc0                      SBB EAX,EAX
0053b854  83c801                    OR EAX,0x1
0053b857  85c0                      TEST EAX,EAX
0053b859  7530                      JNZ 0x0053b88b
0053b85b  388748010000              CMP byte ptr [EDI + 0x148],AL
0053b861  7414                      JZ 0x0053b877
0053b863  f30f101500aeba00          MOVSS XMM2,dword ptr [0x00baae00]
0053b86b  c787600300000000c8c1      MOV dword ptr [EDI + 0x360],0xc1c80000
0053b875  eb1c                      JMP 0x0053b893
0053b877  f30f1015a0a8ba00          MOVSS XMM2,dword ptr [0x00baa8a0]
0053b87f  c787600300000000c841      MOV dword ptr [EDI + 0x360],0x41c80000
0053b889  eb08                      JMP 0x0053b893
0053b88b  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
0053b893  0f57db                    XORPS XMM3,XMM3
0053b896  0f2fd3                    COMISS XMM2,XMM3
0053b899  7625                      JBE 0x0053b8c0
0053b89b  a17816c700                MOV EAX,[0x00c71678]
0053b8a0  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0053b8a8  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0053b8ae  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
0053b8b3  f30f580d94aaba00          ADDSS XMM1,dword ptr [0x00baaa94]
0053b8bb  0f2fc1                    COMISS XMM0,XMM1
0053b8be  771e                      JA 0x0053b8de
0053b8c0  0f2fda                    COMISS XMM3,XMM2
0053b8c3  0f86bc000000              JBE 0x0053b985
0053b8c9  f30f100580aeba00          MOVSS XMM0,dword ptr [0x00baae80]
0053b8d1  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
0053b8d8  0f86a7000000              JBE 0x0053b985
0053b8de  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0053b8e5  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0053b8ef  0f94c0                    SETZ AL
0053b8f2  ff8710040000              INC dword ptr [EDI + 0x410]
0053b8f8  888748010000              MOV byte ptr [EDI + 0x148],AL
0053b8fe  e982000000                JMP 0x0053b985
0053b903  83fa09                    CMP EDX,0x9
0053b906  0f8510010000              JNZ 0x0053ba1c
0053b90c  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0053b913  0f57d2                    XORPS XMM2,XMM2
0053b916  c7876403000000000000      MOV dword ptr [EDI + 0x364],0x0
0053b920  740a                      JZ 0x0053b92c
0053b922  f30f100de4adba00          MOVSS XMM1,dword ptr [0x00baade4]
0053b92a  eb08                      JMP 0x0053b934
0053b92c  f30f100d68a8ba00          MOVSS XMM1,dword ptr [0x00baa868]
0053b934  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0053b93c  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0053b943  7e40                      JLE 0x0053b985
0053b945  0f2fd1                    COMISS XMM2,XMM1
0053b948  7611                      JBE 0x0053b95b
0053b94a  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0053b952  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
0053b959  7716                      JA 0x0053b971
0053b95b  0f2fca                    COMISS XMM1,XMM2
0053b95e  7625                      JBE 0x0053b985
0053b960  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0053b968  0f2f8734030000            COMISS XMM0,dword ptr [EDI + 0x334]
0053b96f  7614                      JBE 0x0053b985
0053b971  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0053b97b  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053b985  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0053b98c  0f8484000000              JZ 0x0053ba16
0053b992  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0053b998  2500000001                AND EAX,0x1000000
0053b99d  83c800                    OR EAX,0x0
0053b9a0  7574                      JNZ 0x0053ba16
0053b9a2  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
0053b9a9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053b9af  8db73c030000              LEA ESI,[EDI + 0x33c]
0053b9b5  50                        PUSH EAX
0053b9b6  50                        PUSH EAX
0053b9b7  6a04                      PUSH 0x4
0053b9b9  83ec10                    SUB ESP,0x10
0053b9bc  8bc4                      MOV EAX,ESP
0053b9be  57                        PUSH EDI
0053b9bf  6a01                      PUSH 0x1
0053b9c1  83ec08                    SUB ESP,0x8
0053b9c4  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0053b9c7  c744240400007042          MOV dword ptr [ESP + 0x4],0x42700000
0053b9cf  c7042400002042            MOV dword ptr [ESP],0x42200000
0053b9d6  56                        PUSH ESI
0053b9d7  e8c4381c00                CALL 0x006ff2a0
0053b9dc  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0053b9e4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053b9ea  6a00                      PUSH 0x0
0053b9ec  56                        PUSH ESI
0053b9ed  e89e771c00                CALL 0x00703190
0053b9f2  e869351b00                CALL 0x006eef60
0053b9f7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053b9fd  6a00                      PUSH 0x0
0053b9ff  50                        PUSH EAX
0053ba00  6a00                      PUSH 0x0
0053ba02  6a00                      PUSH 0x0
0053ba04  6840b6c700                PUSH 0xc7b640
0053ba09  56                        PUSH ESI
0053ba0a  6a01                      PUSH 0x1
0053ba0c  68e8030000                PUSH 0x3e8
0053ba11  e8fa291c00                CALL 0x006fe410
0053ba16  5f                        POP EDI
0053ba17  5e                        POP ESI
0053ba18  8be5                      MOV ESP,EBP
0053ba1a  5d                        POP EBP
0053ba1b  c3                        RET
0053ba1c  83fa0d                    CMP EDX,0xd
0053ba1f  0f8560ffffff              JNZ 0x0053b985
0053ba25  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053ba29  8d4f48                    LEA ECX,[EDI + 0x48]
0053ba2c  0f843fffffff              JZ 0x0053b971
0053ba32  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053ba39  0f8432ffffff              JZ 0x0053b971
0053ba3f  6820d4b100                PUSH 0xb1d420
0053ba44  e8e7f5ecff                CALL 0x0040b030
0053ba49  84c0                      TEST AL,AL
0053ba4b  0f8434ffffff              JZ 0x0053b985
0053ba51  51                        PUSH ECX
0053ba52  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053ba59  6a00                      PUSH 0x0
0053ba5b  6a02                      PUSH 0x2
0053ba5d  51                        PUSH ECX
0053ba5e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053ba65  8bcf                      MOV ECX,EDI
0053ba67  6809010000                PUSH 0x109
0053ba6c  e82fb11900                CALL 0x006d6ba0
0053ba71  e8ea341b00                CALL 0x006eef60
0053ba76  8bf0                      MOV ESI,EAX
0053ba78  8d44240c                  LEA EAX,[ESP + 0xc]
0053ba7c  50                        PUSH EAX
0053ba7d  e8ee351400                CALL 0x0067f070
0053ba82  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053ba88  83c404                    ADD ESP,0x4
0053ba8b  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0053ba90  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0053ba94  8d442414                  LEA EAX,[ESP + 0x14]
0053ba98  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
0053baa0  6a00                      PUSH 0x0
0053baa2  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
0053baaa  56                        PUSH ESI
0053baab  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0053bab3  6a00                      PUSH 0x0
0053bab5  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
0053babd  57                        PUSH EDI
0053babe  6840b6c700                PUSH 0xc7b640
0053bac3  50                        PUSH EAX
0053bac4  6a00                      PUSH 0x0
0053bac6  6a37                      PUSH 0x37
0053bac8  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0053bace  f30f11542438              MOVSS dword ptr [ESP + 0x38],XMM2
0053bad4  e837291c00                CALL 0x006fe410
0053bad9  e9a7feffff                JMP 0x0053b985
