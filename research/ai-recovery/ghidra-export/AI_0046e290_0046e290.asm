; J460 NPC AI 0x0046e290 AI_0046e290
; types=67
; identities=67.0.0,67.1.0
; entry=0046e290
0046e290  53                        PUSH EBX
0046e291  8bdc                      MOV EBX,ESP
0046e293  83ec08                    SUB ESP,0x8
0046e296  83e4f8                    AND ESP,0xfffffff8
0046e299  83c404                    ADD ESP,0x4
0046e29c  55                        PUSH EBP
0046e29d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0046e2a0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0046e2a4  8bec                      MOV EBP,ESP
0046e2a6  6aff                      PUSH -0x1
0046e2a8  68a628af00                PUSH 0xaf28a6
0046e2ad  64a100000000              MOV EAX,FS:[0x0]
0046e2b3  50                        PUSH EAX
0046e2b4  53                        PUSH EBX
0046e2b5  81ec10030000              SUB ESP,0x310
0046e2bb  a1b493bf00                MOV EAX,[0x00bf93b4]
0046e2c0  33c5                      XOR EAX,EBP
0046e2c2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0046e2c5  56                        PUSH ESI
0046e2c6  57                        PUSH EDI
0046e2c7  50                        PUSH EAX
0046e2c8  8d45f4                    LEA EAX,[EBP + -0xc]
0046e2cb  64a300000000              MOV FS:[0x0],EAX
0046e2d1  8bf9                      MOV EDI,ECX
0046e2d3  89bdc0fdffff              MOV dword ptr [EBP + 0xfffffdc0],EDI
0046e2d9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046e2df  8db73c030000              LEA ESI,[EDI + 0x33c]
0046e2e5  83ec0c                    SUB ESP,0xc
0046e2e8  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0046e2f2  8d85f0fcffff              LEA EAX,[EBP + 0xfffffcf0]
0046e2f8  89b5c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],ESI
0046e2fe  0f57db                    XORPS XMM3,XMM3
0046e301  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0046e307  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0046e30f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0046e317  c7042400002042            MOV dword ptr [ESP],0x42200000
0046e31e  56                        PUSH ESI
0046e31f  50                        PUSH EAX
0046e320  e82b4c3a00                CALL 0x00812f50
0046e325  8b157816c700              MOV EDX,dword ptr [0x00c71678]
0046e32b  f30f101d50adba00          MOVSS XMM3,dword ptr [0x00baad50]
0046e333  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0046e337  f30f1106                  MOVSS dword ptr [ESI],XMM0
0046e33b  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0046e33e  894604                    MOV dword ptr [ESI + 0x4],EAX
0046e341  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
0046e347  0f2e411c                  UCOMISS XMM0,dword ptr [ECX + 0x1c]
0046e34b  9f                        LAHF
0046e34c  f6c444                    TEST AH,0x44
0046e34f  7a10                      JP 0x0046e361
0046e351  c78760030000000080bf      MOV dword ptr [EDI + 0x360],0xbf800000
0046e35b  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
0046e361  0f2e4114                  UCOMISS XMM0,dword ptr [ECX + 0x14]
0046e365  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0046e36d  9f                        LAHF
0046e36e  f6c444                    TEST AH,0x44
0046e371  7a10                      JP 0x0046e383
0046e373  c787600300000000803f      MOV dword ptr [EDI + 0x360],0x3f800000
0046e37d  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
0046e383  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0046e38b  0f2e4920                  UCOMISS XMM1,dword ptr [ECX + 0x20]
0046e38f  9f                        LAHF
0046e390  f6c444                    TEST AH,0x44
0046e393  7a10                      JP 0x0046e3a5
0046e395  c78764030000000080bf      MOV dword ptr [EDI + 0x364],0xbf800000
0046e39f  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
0046e3a5  f30f104118                MOVSS XMM0,dword ptr [ECX + 0x18]
0046e3aa  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
0046e3b2  0f2ec8                    UCOMISS XMM1,XMM0
0046e3b5  9f                        LAHF
0046e3b6  f6c444                    TEST AH,0x44
0046e3b9  7a0a                      JP 0x0046e3c5
0046e3bb  c787640300000000803f      MOV dword ptr [EDI + 0x364],0x3f800000
0046e3c5  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
0046e3c8  f30f100d80a2ba00          MOVSS XMM1,dword ptr [0x00baa280]
0046e3d0  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0046e3d8  f30f1035a4a3ba00          MOVSS XMM6,dword ptr [0x00baa3a4]
0046e3e0  83fa01                    CMP EDX,0x1
0046e3e3  751d                      JNZ 0x0046e402
0046e3e5  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0046e3e8  0f28ce                    MOVAPS XMM1,XMM6
0046e3eb  83f802                    CMP EAX,0x2
0046e3ee  750a                      JNZ 0x0046e3fa
0046e3f0  f30f100d90a4ba00          MOVSS XMM1,dword ptr [0x00baa490]
0046e3f8  eb08                      JMP 0x0046e402
0046e3fa  83f801                    CMP EAX,0x1
0046e3fd  7503                      JNZ 0x0046e402
0046e3ff  0f28c8                    MOVAPS XMM1,XMM0
0046e402  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0046e408  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0046e40e  8985f4fcffff              MOV dword ptr [EBP + 0xfffffcf4],EAX
0046e414  8bc1                      MOV EAX,ECX
0046e416  2500020000                AND EAX,0x200
0046e41b  83c800                    OR EAX,0x0
0046e41e  744b                      JZ 0x0046e46b
0046e420  81e100010000              AND ECX,0x100
0046e426  83c900                    OR ECX,0x0
0046e429  7540                      JNZ 0x0046e46b
0046e42b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0046e433  f30f59c6                  MULSS XMM0,XMM6
0046e437  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0046e43f  85d2                      TEST EDX,EDX
0046e441  7516                      JNZ 0x0046e459
0046e443  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0046e447  7510                      JNZ 0x0046e459
0046e449  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0046e451  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0046e459  8d8f14040000              LEA ECX,[EDI + 0x414]
0046e45f  6a00                      PUSH 0x0
0046e461  e89a7e3700                CALL 0x007e6300
0046e466  e9ad010000                JMP 0x0046e618
0046e46b  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0046e473  0f2f0520a1ba00            COMISS XMM0,dword ptr [0x00baa120]
0046e47a  7205                      JC 0x0046e481
0046e47c  0f28e2                    MOVAPS XMM4,XMM2
0046e47f  eb03                      JMP 0x0046e484
0046e481  0f28e3                    MOVAPS XMM4,XMM3
0046e484  f30f10af60030000          MOVSS XMM5,dword ptr [EDI + 0x360]
0046e48c  0f57c0                    XORPS XMM0,XMM0
0046e48f  0f2fe8                    COMISS XMM5,XMM0
0046e492  7603                      JBE 0x0046e497
0046e494  0f28da                    MOVAPS XMM3,XMM2
0046e497  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
0046e49f  f30f59d6                  MULSS XMM2,XMM6
0046e4a3  f30f59d9                  MULSS XMM3,XMM1
0046e4a7  0f2ed0                    UCOMISS XMM2,XMM0
0046e4aa  f30f11976c030000          MOVSS dword ptr [EDI + 0x36c],XMM2
0046e4b2  f30f59e1                  MULSS XMM4,XMM1
0046e4b6  9f                        LAHF
0046e4b7  f6c444                    TEST AH,0x44
0046e4ba  7b37                      JNP 0x0046e4f3
0046e4bc  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0046e4c4  0f28c1                    MOVAPS XMM0,XMM1
0046e4c7  f30f59cc                  MULSS XMM1,XMM4
0046e4cb  f30f59c3                  MULSS XMM0,XMM3
0046e4cf  f30f5eca                  DIVSS XMM1,XMM2
0046e4d3  f30f5ec2                  DIVSS XMM0,XMM2
0046e4d7  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0046e4df  f30f58c5                  ADDSS XMM0,XMM5
0046e4e3  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0046e4eb  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0046e4f3  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0046e4f7  7519                      JNZ 0x0046e512
0046e4f9  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0046e4fd  7513                      JNZ 0x0046e512
0046e4ff  0f28c2                    MOVAPS XMM0,XMM2
0046e502  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0046e50a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0046e512  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0046e518  2500080001                AND EAX,0x1000800
0046e51d  83c800                    OR EAX,0x0
0046e520  0f84f2000000              JZ 0x0046e618
0046e526  8bcf                      MOV ECX,EDI
0046e528  e813032500                CALL 0x006be840
0046e52d  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0046e535  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0046e539  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
0046e541  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
0046e546  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0046e54d  0f28c1                    MOVAPS XMM0,XMM1
0046e550  f30f118db8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM1
0046e558  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0046e55f  f30f59c1                  MULSS XMM0,XMM1
0046e563  0f28ca                    MOVAPS XMM1,XMM2
0046e566  f30f59ca                  MULSS XMM1,XMM2
0046e56a  f30f1195acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM2
0046e572  f30f58c1                  ADDSS XMM0,XMM1
0046e576  e8d574fcff                CALL 0x00435a50
0046e57b  f30f100d78aaba00          MOVSS XMM1,dword ptr [0x00baaa78]
0046e583  0f28d0                    MOVAPS XMM2,XMM0
0046e586  f30f109dacfdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdac]
0046e58e  f30f5cca                  SUBSS XMM1,XMM2
0046e592  0f57c0                    XORPS XMM0,XMM0
0046e595  0f2fd0                    COMISS XMM2,XMM0
0046e598  f30f590d8ca0ba00          MULSS XMM1,dword ptr [0x00baa08c]
0046e5a0  f30f5fc8                  MAXSS XMM1,XMM0
0046e5a4  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
0046e5ac  7616                      JBE 0x0046e5c4
0046e5ae  f30f5eca                  DIVSS XMM1,XMM2
0046e5b2  f30f1095b8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb8]
0046e5ba  f30f59d1                  MULSS XMM2,XMM1
0046e5be  f30f59d9                  MULSS XMM3,XMM1
0046e5c2  eb08                      JMP 0x0046e5cc
0046e5c4  f30f1095b8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb8]
0046e5cc  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0046e5d4  0f2ee0                    UCOMISS XMM4,XMM0
0046e5d7  9f                        LAHF
0046e5d8  f6c444                    TEST AH,0x44
0046e5db  7b3b                      JNP 0x0046e618
0046e5dd  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0046e5e5  0f28c1                    MOVAPS XMM0,XMM1
0046e5e8  f30f59cb                  MULSS XMM1,XMM3
0046e5ec  f30f59c2                  MULSS XMM0,XMM2
0046e5f0  f30f5ecc                  DIVSS XMM1,XMM4
0046e5f4  f30f5ec4                  DIVSS XMM0,XMM4
0046e5f8  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0046e600  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0046e608  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0046e610  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0046e618  ff7720                    PUSH dword ptr [EDI + 0x20]
0046e61b  8d8564fdffff              LEA EAX,[EBP + 0xfffffd64]
0046e621  8bcf                      MOV ECX,EDI
0046e623  50                        PUSH EAX
0046e624  e8a7272600                CALL 0x006d0dd0
0046e629  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0046e630  33c9                      XOR ECX,ECX
0046e632  a17816c700                MOV EAX,[0x00c71678]
0046e637  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
0046e63d  8b82c0120000              MOV EAX,dword ptr [EDX + 0x12c0]
0046e643  0382c4120000              ADD EAX,dword ptr [EDX + 0x12c4]
0046e649  85c0                      TEST EAX,EAX
0046e64b  0f4fc8                    CMOVG ECX,EAX
0046e64e  8b8570fdffff              MOV EAX,dword ptr [EBP + 0xfffffd70]
0046e654  8985bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EAX
0046e65a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0046e660  898db8fdffff              MOV dword ptr [EBP + 0xfffffdb8],ECX
0046e666  8b0ddc87b100              MOV ECX,dword ptr [0x00b187dc]
0046e66c  898da4fdffff              MOV dword ptr [EBP + 0xfffffda4],ECX
0046e672  83f80e                    CMP EAX,0xe
0046e675  0f87990e0000              JA 0x0046f514
0046e67b  0fb680c8fb4600            MOVZX EAX,byte ptr [EAX + 0x46fbc8]
0046e682  ff2485b0fb4600            JMP dword ptr [EAX*0x4 + 0x46fbb0]
0046e689  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0046e693  e97c0e0000                JMP 0x0046f514
0046e698  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0046e69e  33c0                      XOR EAX,EAX
0046e6a0  81e100000010              AND ECX,0x10000000
0046e6a6  0bc1                      OR EAX,ECX
0046e6a8  740d                      JZ 0x0046e6b7
0046e6aa  8b4204                    MOV EAX,dword ptr [EDX + 0x4]
0046e6ad  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0046e6b1  0f8538010000              JNZ 0x0046e7ef
0046e6b7  e8a4082800                CALL 0x006eef60
0046e6bc  33d2                      XOR EDX,EDX
0046e6be  8bb5b8fdffff              MOV ESI,dword ptr [EBP + 0xfffffdb8]
0046e6c4  b928000000                MOV ECX,0x28
0046e6c9  f7f1                      DIV ECX
0046e6cb  85d2                      TEST EDX,EDX
0046e6cd  752f                      JNZ 0x0046e6fe
0046e6cf  8b85bcfdffff              MOV EAX,dword ptr [EBP + 0xfffffdbc]
0046e6d5  03c6                      ADD EAX,ESI
0046e6d7  83f809                    CMP EAX,0x9
0046e6da  7d22                      JGE 0x0046e6fe
0046e6dc  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046e6e0  7506                      JNZ 0x0046e6e8
0046e6e2  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0046e6e6  7416                      JZ 0x0046e6fe
0046e6e8  6a01                      PUSH 0x1
0046e6ea  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0046e6f4  683cd5b100                PUSH 0xb1d53c
0046e6f9  e9c3000000                JMP 0x0046e7c1
0046e6fe  e85d082800                CALL 0x006eef60
0046e703  33d2                      XOR EDX,EDX
0046e705  b946000000                MOV ECX,0x46
0046e70a  f7f1                      DIV ECX
0046e70c  85d2                      TEST EDX,EDX
0046e70e  752f                      JNZ 0x0046e73f
0046e710  8bc6                      MOV EAX,ESI
0046e712  2b85bcfdffff              SUB EAX,dword ptr [EBP + 0xfffffdbc]
0046e718  83f80a                    CMP EAX,0xa
0046e71b  7d22                      JGE 0x0046e73f
0046e71d  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046e721  7506                      JNZ 0x0046e729
0046e723  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0046e727  7416                      JZ 0x0046e73f
0046e729  6a01                      PUSH 0x1
0046e72b  c787640b00000e000000      MOV dword ptr [EDI + 0xb64],0xe
0046e735  6854d5b100                PUSH 0xb1d554
0046e73a  e982000000                JMP 0x0046e7c1
0046e73f  e81c082800                CALL 0x006eef60
0046e744  33d2                      XOR EDX,EDX
0046e746  b92d000000                MOV ECX,0x2d
0046e74b  f7f1                      DIV ECX
0046e74d  85d2                      TEST EDX,EDX
0046e74f  751d                      JNZ 0x0046e76e
0046e751  8b85bcfdffff              MOV EAX,dword ptr [EBP + 0xfffffdbc]
0046e757  83f804                    CMP EAX,0x4
0046e75a  7e12                      JLE 0x0046e76e
0046e75c  2bf0                      SUB ESI,EAX
0046e75e  83fe05                    CMP ESI,0x5
0046e761  7d0b                      JGE 0x0046e76e
0046e763  39572c                    CMP dword ptr [EDI + 0x2c],EDX
0046e766  7548                      JNZ 0x0046e7b0
0046e768  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0046e76c  7542                      JNZ 0x0046e7b0
0046e76e  e8ed072800                CALL 0x006eef60
0046e773  33d2                      XOR EDX,EDX
0046e775  b946000000                MOV ECX,0x46
0046e77a  f7f1                      DIV ECX
0046e77c  85d2                      TEST EDX,EDX
0046e77e  7512                      JNZ 0x0046e792
0046e780  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0046e783  83f801                    CMP EAX,0x1
0046e786  7428                      JZ 0x0046e7b0
0046e788  85c0                      TEST EAX,EAX
0046e78a  7563                      JNZ 0x0046e7ef
0046e78c  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0046e790  741e                      JZ 0x0046e7b0
0046e792  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046e796  7557                      JNZ 0x0046e7ef
0046e798  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0046e79c  7551                      JNZ 0x0046e7ef
0046e79e  e8bd072800                CALL 0x006eef60
0046e7a3  33d2                      XOR EDX,EDX
0046e7a5  b914000000                MOV ECX,0x14
0046e7aa  f7f1                      DIV ECX
0046e7ac  85d2                      TEST EDX,EDX
0046e7ae  753f                      JNZ 0x0046e7ef
0046e7b0  6a01                      PUSH 0x1
0046e7b2  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0046e7bc  6848d5b100                PUSH 0xb1d548
0046e7c1  8d4f48                    LEA ECX,[EDI + 0x48]
0046e7c4  e807bef9ff                CALL 0x0040a5d0
0046e7c9  84c0                      TEST AL,AL
0046e7cb  0f8490000000              JZ 0x0046e861
0046e7d1  8d4f78                    LEA ECX,[EDI + 0x78]
0046e7d4  e8d7b9f9ff                CALL 0x0040a1b0
0046e7d9  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0046e7e0  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0046e7ea  e9250d0000                JMP 0x0046f514
0046e7ef  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0046e7f2  85f6                      TEST ESI,ESI
0046e7f4  744a                      JZ 0x0046e840
0046e7f6  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0046e7fa  8bc6                      MOV EAX,ESI
0046e7fc  7202                      JC 0x0046e800
0046e7fe  8b06                      MOV EAX,dword ptr [ESI]
0046e800  b9e4dcb100                MOV ECX,0xb1dce4
0046e805  8a10                      MOV DL,byte ptr [EAX]
0046e807  3a11                      CMP DL,byte ptr [ECX]
0046e809  751a                      JNZ 0x0046e825
0046e80b  84d2                      TEST DL,DL
0046e80d  7412                      JZ 0x0046e821
0046e80f  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0046e812  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0046e815  750e                      JNZ 0x0046e825
0046e817  83c002                    ADD EAX,0x2
0046e81a  83c102                    ADD ECX,0x2
0046e81d  84d2                      TEST DL,DL
0046e81f  75e4                      JNZ 0x0046e805
0046e821  33c0                      XOR EAX,EAX
0046e823  eb05                      JMP 0x0046e82a
0046e825  1bc0                      SBB EAX,EAX
0046e827  83c801                    OR EAX,0x1
0046e82a  85c0                      TEST EAX,EAX
0046e82c  7512                      JNZ 0x0046e840
0046e82e  384634                    CMP byte ptr [ESI + 0x34],AL
0046e831  742e                      JZ 0x0046e861
0046e833  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0046e839  8d7748                    LEA ESI,[EDI + 0x48]
0046e83c  7523                      JNZ 0x0046e861
0046e83e  eb03                      JMP 0x0046e843
0046e840  8d7748                    LEA ESI,[EDI + 0x48]
0046e843  6a01                      PUSH 0x1
0046e845  68e4dcb100                PUSH 0xb1dce4
0046e84a  8bce                      MOV ECX,ESI
0046e84c  e87fbdf9ff                CALL 0x0040a5d0
0046e851  84c0                      TEST AL,AL
0046e853  740c                      JZ 0x0046e861
0046e855  8d4e30                    LEA ECX,[ESI + 0x30]
0046e858  e853b9f9ff                CALL 0x0040a1b0
0046e85d  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0046e861  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0046e86b  e9a40c0000                JMP 0x0046f514
0046e870  83bf1004000014            CMP dword ptr [EDI + 0x410],0x14
0046e877  0f85970c0000              JNZ 0x0046f514
0046e87d  51                        PUSH ECX
0046e87e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046e885  6a00                      PUSH 0x0
0046e887  6a02                      PUSH 0x2
0046e889  51                        PUSH ECX
0046e88a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046e891  8bcf                      MOV ECX,EDI
0046e893  6a6c                      PUSH 0x6c
0046e895  e806832600                CALL 0x006d6ba0
0046e89a  c785bcfdffff00000000      MOV dword ptr [EBP + 0xfffffdbc],0x0
0046e8a4  e8b7062800                CALL 0x006eef60
0046e8a9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046e8af  6a00                      PUSH 0x0
0046e8b1  68acd5c500                PUSH 0xc5d5ac
0046e8b6  68dcd5c500                PUSH 0xc5d5dc
0046e8bb  6a00                      PUSH 0x0
0046e8bd  50                        PUSH EAX
0046e8be  6a00                      PUSH 0x0
0046e8c0  57                        PUSH EDI
0046e8c1  6840b6c700                PUSH 0xc7b640
0046e8c6  56                        PUSH ESI
0046e8c7  6a01                      PUSH 0x1
0046e8c9  68e8030000                PUSH 0x3e8
0046e8ce  e84da2fbff                CALL 0x00428b20
0046e8d3  50                        PUSH EAX
0046e8d4  e8d81f6800                CALL 0x00af08b1
0046e8d9  83c414                    ADD ESP,0x14
0046e8dc  8bf0                      MOV ESI,EAX
0046e8de  83bdbcfdffff00            CMP dword ptr [EBP + 0xfffffdbc],0x0
0046e8e5  750a                      JNZ 0x0046e8f1
0046e8e7  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
0046e8ef  eb08                      JMP 0x0046e8f9
0046e8f1  f30f100550aeba00          MOVSS XMM0,dword ptr [0x00baae50]
0046e8f9  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
0046e901  8d4dc0                    LEA ECX,[EBP + -0x40]
0046e904  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0046e90a  0f57c0                    XORPS XMM0,XMM0
0046e90d  818e6801000000000100      OR dword ptr [ESI + 0x168],0x10000
0046e917  6a01                      PUSH 0x1
0046e919  6a00                      PUSH 0x0
0046e91b  68ff000000                PUSH 0xff
0046e920  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0046e926  8b06                      MOV EAX,dword ptr [ESI]
0046e928  6aff                      PUSH -0x1
0046e92a  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0046e92e  51                        PUSH ECX
0046e92f  0f2805b0bbba00            MOVAPS XMM0,xmmword ptr [0x00babbb0]
0046e936  8bce                      MOV ECX,ESI
0046e938  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0046e93c  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0046e943  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0046e94a  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0046e951  ff503c                    CALL dword ptr [EAX + 0x3c]
0046e954  8b06                      MOV EAX,dword ptr [ESI]
0046e956  8bce                      MOV ECX,ESI
0046e958  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
0046e962  c78650030000000020c2      MOV dword ptr [ESI + 0x350],0xc2200000
0046e96c  ff500c                    CALL dword ptr [EAX + 0xc]
0046e96f  8b85bcfdffff              MOV EAX,dword ptr [EBP + 0xfffffdbc]
0046e975  8db73c030000              LEA ESI,[EDI + 0x33c]
0046e97b  40                        INC EAX
0046e97c  8985bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EAX
0046e982  83f802                    CMP EAX,0x2
0046e985  0f8c19ffffff              JL 0x0046e8a4
0046e98b  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046e98f  0f8582000000              JNZ 0x0046ea17
0046e995  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0046e999  757c                      JNZ 0x0046ea17
0046e99b  6800000010                PUSH 0x10000000
0046e9a0  6a00                      PUSH 0x0
0046e9a2  8bcf                      MOV ECX,EDI
0046e9a4  e8878afaff                CALL 0x00417430
0046e9a9  84c0                      TEST AL,AL
0046e9ab  7417                      JZ 0x0046e9c4
0046e9ad  6a00                      PUSH 0x0
0046e9af  51                        PUSH ECX
0046e9b0  6a00                      PUSH 0x0
0046e9b2  6a19                      PUSH 0x19
0046e9b4  8bcf                      MOV ECX,EDI
0046e9b6  e825de2300                CALL 0x006ac7e0
0046e9bb  83f803                    CMP EAX,0x3
0046e9be  0f8361030000              JNC 0x0046ed25
0046e9c4  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0046e9cc  8db73c030000              LEA ESI,[EDI + 0x33c]
0046e9d2  f30f580d7ca8ba00          ADDSS XMM1,dword ptr [0x00baa87c]
0046e9da  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0046e9de  f30f11855cfdffff          MOVSS dword ptr [EBP + 0xfffffd5c],XMM0
0046e9e6  f30f118d60fdffff          MOVSS dword ptr [EBP + 0xfffffd60],XMM1
0046e9ee  e86d052800                CALL 0x006eef60
0046e9f3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046e9f9  50                        PUSH EAX
0046e9fa  6a00                      PUSH 0x0
0046e9fc  57                        PUSH EDI
0046e9fd  6840b6c700                PUSH 0xc7b640
0046ea02  8d855cfdffff              LEA EAX,[EBP + 0xfffffd5c]
0046ea08  50                        PUSH EAX
0046ea09  6a00                      PUSH 0x0
0046ea0b  6a19                      PUSH 0x19
0046ea0d  e80ea1fbff                CALL 0x00428b20
0046ea12  e914030000                JMP 0x0046ed2b
0046ea17  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0046ea1d  33c0                      XOR EAX,EAX
0046ea1f  81e100000010              AND ECX,0x10000000
0046ea25  be03000000                MOV ESI,0x3
0046ea2a  0bc1                      OR EAX,ECX
0046ea2c  7415                      JZ 0x0046ea43
0046ea2e  6a00                      PUSH 0x0
0046ea30  51                        PUSH ECX
0046ea31  6a00                      PUSH 0x0
0046ea33  6a12                      PUSH 0x12
0046ea35  8bcf                      MOV ECX,EDI
0046ea37  e8a4dd2300                CALL 0x006ac7e0
0046ea3c  be06000000                MOV ESI,0x6
0046ea41  2bf0                      SUB ESI,EAX
0046ea43  b940000000                MOV ECX,0x40
0046ea48  c68594fdffff00            MOV byte ptr [EBP + 0xfffffd94],0x0
0046ea4f  c7859cfdffff10000000      MOV dword ptr [EBP + 0xfffffd9c],0x10
0046ea59  c785a0fdffff00000000      MOV dword ptr [EBP + 0xfffffda0],0x0
0046ea63  e8780a5a00                CALL 0x00a0f4e0
0046ea68  898598fdffff              MOV dword ptr [EBP + 0xfffffd98],EAX
0046ea6e  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0046ea72  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0046ea7a  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0046ea82  f30f118da8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM1
0046ea8a  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
0046ea92  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
0046ea9a  85f6                      TEST ESI,ESI
0046ea9c  7e38                      JLE 0x0046ead6
0046ea9e  e8bd042800                CALL 0x006eef60
0046eaa3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046eaa9  50                        PUSH EAX
0046eaaa  6a00                      PUSH 0x0
0046eaac  57                        PUSH EDI
0046eaad  6840b6c700                PUSH 0xc7b640
0046eab2  8d85a8fdffff              LEA EAX,[EBP + 0xfffffda8]
0046eab8  50                        PUSH EAX
0046eab9  6a00                      PUSH 0x0
0046eabb  6a12                      PUSH 0x12
0046eabd  e85ea0fbff                CALL 0x00428b20
0046eac2  50                        PUSH EAX
0046eac3  8d8d94fdffff              LEA ECX,[EBP + 0xfffffd94]
0046eac9  e8628bfaff                CALL 0x00417630
0046eace  f30f108da8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffda8]
0046ead6  f30f580d1ca8ba00          ADDSS XMM1,dword ptr [0x00baa81c]
0046eade  f30f118da8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM1
0046eae6  83fe01                    CMP ESI,0x1
0046eae9  7e38                      JLE 0x0046eb23
0046eaeb  e870042800                CALL 0x006eef60
0046eaf0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046eaf6  50                        PUSH EAX
0046eaf7  6a00                      PUSH 0x0
0046eaf9  57                        PUSH EDI
0046eafa  6840b6c700                PUSH 0xc7b640
0046eaff  8d85a8fdffff              LEA EAX,[EBP + 0xfffffda8]
0046eb05  50                        PUSH EAX
0046eb06  6a00                      PUSH 0x0
0046eb08  6a12                      PUSH 0x12
0046eb0a  e811a0fbff                CALL 0x00428b20
0046eb0f  50                        PUSH EAX
0046eb10  8d8d94fdffff              LEA ECX,[EBP + 0xfffffd94]
0046eb16  e8158bfaff                CALL 0x00417630
0046eb1b  f30f108da8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffda8]
0046eb23  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0046eb26  85c0                      TEST EAX,EAX
0046eb28  754e                      JNZ 0x0046eb78
0046eb2a  f30f5c0d7ca8ba00          SUBSS XMM1,dword ptr [0x00baa87c]
0046eb32  f30f118da8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM1
0046eb3a  83fe02                    CMP ESI,0x2
0046eb3d  0f8ef2000000              JLE 0x0046ec35
0046eb43  e818042800                CALL 0x006eef60
0046eb48  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046eb4e  50                        PUSH EAX
0046eb4f  6a00                      PUSH 0x0
0046eb51  57                        PUSH EDI
0046eb52  6840b6c700                PUSH 0xc7b640
0046eb57  8d85a8fdffff              LEA EAX,[EBP + 0xfffffda8]
0046eb5d  50                        PUSH EAX
0046eb5e  6a00                      PUSH 0x0
0046eb60  6a12                      PUSH 0x12
0046eb62  e8b99ffbff                CALL 0x00428b20
0046eb67  50                        PUSH EAX
0046eb68  8d8d94fdffff              LEA ECX,[EBP + 0xfffffd94]
0046eb6e  e8bd8afaff                CALL 0x00417630
0046eb73  e9bd000000                JMP 0x0046ec35
0046eb78  83f801                    CMP EAX,0x1
0046eb7b  0f85b4000000              JNZ 0x0046ec35
0046eb81  83fe02                    CMP ESI,0x2
0046eb84  0f8eab000000              JLE 0x0046ec35
0046eb8a  a17816c700                MOV EAX,[0x00c71678]
0046eb8f  8bcf                      MOV ECX,EDI
0046eb91  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0046eb97  e8a4fc2400                CALL 0x006be840
0046eb9c  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
0046eba4  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0046ebac  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0046ebb4  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0046ebbc  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
0046ebc4  8d85b4fdffff              LEA EAX,[EBP + 0xfffffdb4]
0046ebca  6a00                      PUSH 0x0
0046ebcc  6a00                      PUSH 0x0
0046ebce  f30f59d4                  MULSS XMM2,XMM4
0046ebd2  6a00                      PUSH 0x0
0046ebd4  f30f59dc                  MULSS XMM3,XMM4
0046ebd8  51                        PUSH ECX
0046ebd9  f30f59cc                  MULSS XMM1,XMM4
0046ebdd  8bce                      MOV ECX,ESI
0046ebdf  c7042400008c42            MOV dword ptr [ESP],0x428c0000
0046ebe6  f30f59c4                  MULSS XMM0,XMM4
0046ebea  50                        PUSH EAX
0046ebeb  f30f58ca                  ADDSS XMM1,XMM2
0046ebef  8d8554fdffff              LEA EAX,[EBP + 0xfffffd54]
0046ebf5  f30f58c3                  ADDSS XMM0,XMM3
0046ebf9  50                        PUSH EAX
0046ebfa  f30f118db4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM1
0046ec02  f30f1185b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM0
0046ec0a  e811493a00                CALL 0x00813520
0046ec0f  51                        PUSH ECX
0046ec10  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
0046ec17  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0046ec1d  6a00                      PUSH 0x0
0046ec1f  ffb558fdffff              PUSH dword ptr [EBP + 0xfffffd58]
0046ec25  ffb554fdffff              PUSH dword ptr [EBP + 0xfffffd54]
0046ec2b  57                        PUSH EDI
0046ec2c  51                        PUSH ECX
0046ec2d  e81e3b2500                CALL 0x006c2750
0046ec32  83c418                    ADD ESP,0x18
0046ec35  33c0                      XOR EAX,EAX
0046ec37  8985b8fdffff              MOV dword ptr [EBP + 0xfffffdb8],EAX
0046ec3d  3985a0fdffff              CMP dword ptr [EBP + 0xfffffda0],EAX
0046ec43  0f8698000000              JBE 0x0046ece1
0046ec49  0f1f8000000000            NOP dword ptr [EAX]
0046ec50  8b8d98fdffff              MOV ECX,dword ptr [EBP + 0xfffffd98]
0046ec56  6a00                      PUSH 0x0
0046ec58  68acd6c500                PUSH 0xc5d6ac
0046ec5d  68dcd5c500                PUSH 0xc5d5dc
0046ec62  6a00                      PUSH 0x0
0046ec64  ff3481                    PUSH dword ptr [ECX + EAX*0x4]
0046ec67  e8451c6800                CALL 0x00af08b1
0046ec6c  8b4f20                    MOV ECX,dword ptr [EDI + 0x20]
0046ec6f  8bf0                      MOV ESI,EAX
0046ec71  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0046ec77  83c414                    ADD ESP,0x14
0046ec7a  898e7c0c0000              MOV dword ptr [ESI + 0xc7c],ECX
0046ec80  8b08                      MOV ECX,dword ptr [EAX]
0046ec82  85c9                      TEST ECX,ECX
0046ec84  741e                      JZ 0x0046eca4
0046ec86  8985c0fdffff              MOV dword ptr [EBP + 0xfffffdc0],EAX
0046ec8c  81c1cc030000              ADD ECX,0x3cc
0046ec92  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
0046ec98  50                        PUSH EAX
0046ec99  e872050600                CALL 0x004cf210
0046ec9e  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0046eca4  50                        PUSH EAX
0046eca5  8bcf                      MOV ECX,EDI
0046eca7  8938                      MOV dword ptr [EAX],EDI
0046eca9  e842f00500                CALL 0x004cdcf0
0046ecae  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0046ecb4  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0046ecbb  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0046ecc1  8b85b8fdffff              MOV EAX,dword ptr [EBP + 0xfffffdb8]
0046ecc7  40                        INC EAX
0046ecc8  c6867401000001            MOV byte ptr [ESI + 0x174],0x1
0046eccf  8985b8fdffff              MOV dword ptr [EBP + 0xfffffdb8],EAX
0046ecd5  3b85a0fdffff              CMP EAX,dword ptr [EBP + 0xfffffda0]
0046ecdb  0f826fffffff              JC 0x0046ec50
0046ece1  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0046ece5  80bd94fdffff00            CMP byte ptr [EBP + 0xfffffd94],0x0
0046ecec  7537                      JNZ 0x0046ed25
0046ecee  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
0046ecf4  85d2                      TEST EDX,EDX
0046ecf6  7405                      JZ 0x0046ecfd
0046ecf8  83c230                    ADD EDX,0x30
0046ecfb  eb05                      JMP 0x0046ed02
0046ecfd  ba18f6c700                MOV EDX,0xc7f618
0046ed02  8b8598fdffff              MOV EAX,dword ptr [EBP + 0xfffffd98]
0046ed08  85c0                      TEST EAX,EAX
0046ed0a  7415                      JZ 0x0046ed21
0046ed0c  8d48fc                    LEA ECX,[EAX + -0x4]
0046ed0f  8b01                      MOV EAX,dword ptr [ECX]
0046ed11  2902                      SUB dword ptr [EDX],EAX
0046ed13  51                        PUSH ECX
0046ed14  835a0400                  SBB dword ptr [EDX + 0x4],0x0
0046ed18  ff95a4fdffff              CALL dword ptr [EBP + 0xfffffda4]
0046ed1e  83c404                    ADD ESP,0x4
0046ed21  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0046ed25  8db73c030000              LEA ESI,[EDI + 0x33c]
0046ed2b  a17816c700                MOV EAX,[0x00c71678]
0046ed30  6a00                      PUSH 0x0
0046ed32  6a01                      PUSH 0x1
0046ed34  6aff                      PUSH -0x1
0046ed36  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0046ed3c  8d85e0fcffff              LEA EAX,[EBP + 0xfffffce0]
0046ed42  6a21                      PUSH 0x21
0046ed44  68e8030000                PUSH 0x3e8
0046ed49  81c118120000              ADD ECX,0x1218
0046ed4f  50                        PUSH EAX
0046ed50  e80bc2faff                CALL 0x0041af60
0046ed55  80bde0fcffff00            CMP byte ptr [EBP + 0xfffffce0],0x0
0046ed5c  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
0046ed5f  8985c0fdffff              MOV dword ptr [EBP + 0xfffffdc0],EAX
0046ed65  7522                      JNZ 0x0046ed89
0046ed67  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
0046ed6b  b101                      MOV CL,0x1
0046ed6d  8b95e4fcffff              MOV EDX,dword ptr [EBP + 0xfffffce4]
0046ed73  6a00                      PUSH 0x0
0046ed75  6a00                      PUSH 0x0
0046ed77  e8345b5f00                CALL 0x00a648b0
0046ed7c  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0046ed80  83c408                    ADD ESP,0x8
0046ed83  8b85c0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc0]
0046ed89  83f819                    CMP EAX,0x19
0046ed8c  0f8382070000              JNC 0x0046f514
0046ed92  e8c9012800                CALL 0x006eef60
0046ed97  33d2                      XOR EDX,EDX
0046ed99  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0046ed9d  b905000000                MOV ECX,0x5
0046eda2  f30f1185bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM0
0046edaa  f7f1                      DIV ECX
0046edac  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0046edb4  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
0046edbc  42                        INC EDX
0046edbd  8995b8fdffff              MOV dword ptr [EBP + 0xfffffdb8],EDX
0046edc3  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
0046edcb  85d2                      TEST EDX,EDX
0046edcd  0f8e41070000              JLE 0x0046f514
0046edd3  e888012800                CALL 0x006eef60
0046edd8  8bf0                      MOV ESI,EAX
0046edda  e881012800                CALL 0x006eef60
0046eddf  660f6ec0                  MOVD XMM0,EAX
0046ede3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0046ede7  c1e81f                    SHR EAX,0x1f
0046edea  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046edf3  660f5ac0                  CVTPD2PS XMM0,XMM0
0046edf7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046edff  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0046ee07  f30f58c0                  ADDSS XMM0,XMM0
0046ee0b  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
0046ee13  e808e7faff                CALL 0x0041d520
0046ee18  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
0046ee20  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0046ee28  e813e7faff                CALL 0x0041d540
0046ee2d  f30f11854cfdffff          MOVSS dword ptr [EBP + 0xfffffd4c],XMM0
0046ee35  f30f1085c4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc4]
0046ee3d  f30f118550fdffff          MOVSS dword ptr [EBP + 0xfffffd50],XMM0
0046ee45  e816012800                CALL 0x006eef60
0046ee4a  660f6ec0                  MOVD XMM0,EAX
0046ee4e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0046ee52  c1e81f                    SHR EAX,0x1f
0046ee55  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046ee5e  660f5ac0                  CVTPD2PS XMM0,XMM0
0046ee62  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046ee6a  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0046ee72  f30f58c0                  ADDSS XMM0,XMM0
0046ee76  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
0046ee7e  e89de6faff                CALL 0x0041d520
0046ee83  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
0046ee8b  e8d0002800                CALL 0x006eef60
0046ee90  660f6ec8                  MOVD XMM1,EAX
0046ee94  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0046ee98  c1e81f                    SHR EAX,0x1f
0046ee9b  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0046eea4  660f5ac1                  CVTPD2PS XMM0,XMM1
0046eea8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046eeb0  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0046eeb8  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
0046eec0  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0046eec8  e873e6faff                CALL 0x0041d540
0046eecd  f30f1095acfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdac]
0046eed5  8d854cfdffff              LEA EAX,[EBP + 0xfffffd4c]
0046eedb  f30f5985c4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdc4]
0046eee3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046eee9  f30f5995c4fdffff          MULSS XMM2,dword ptr [EBP + 0xfffffdc4]
0046eef1  56                        PUSH ESI
0046eef2  f30f5885bcfdffff          ADDSS XMM0,dword ptr [EBP + 0xfffffdbc]
0046eefa  6a00                      PUSH 0x0
0046eefc  f30f5895b0fdffff          ADDSS XMM2,dword ptr [EBP + 0xfffffdb0]
0046ef04  57                        PUSH EDI
0046ef05  50                        PUSH EAX
0046ef06  8d8544fdffff              LEA EAX,[EBP + 0xfffffd44]
0046ef0c  f30f118544fdffff          MOVSS dword ptr [EBP + 0xfffffd44],XMM0
0046ef14  50                        PUSH EAX
0046ef15  6a21                      PUSH 0x21
0046ef17  68e8030000                PUSH 0x3e8
0046ef1c  f30f119548fdffff          MOVSS dword ptr [EBP + 0xfffffd48],XMM2
0046ef24  e8f79bfbff                CALL 0x00428b20
0046ef29  8bf0                      MOV ESI,EAX
0046ef2b  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0046ef31  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0046ef37  85c9                      TEST ECX,ECX
0046ef39  741e                      JZ 0x0046ef59
0046ef3b  8985c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EAX
0046ef41  81c1cc030000              ADD ECX,0x3cc
0046ef47  8d85c4fdffff              LEA EAX,[EBP + 0xfffffdc4]
0046ef4d  50                        PUSH EAX
0046ef4e  e8bd020600                CALL 0x004cf210
0046ef53  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0046ef59  50                        PUSH EAX
0046ef5a  8bcf                      MOV ECX,EDI
0046ef5c  8938                      MOV dword ptr [EAX],EDI
0046ef5e  e88ded0500                CALL 0x004cdcf0
0046ef63  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0046ef69  8bce                      MOV ECX,ESI
0046ef6b  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0046ef72  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0046ef78  8b06                      MOV EAX,dword ptr [ESI]
0046ef7a  ff500c                    CALL dword ptr [EAX + 0xc]
0046ef7d  83adb8fdffff01            SUB dword ptr [EBP + 0xfffffdb8],0x1
0046ef84  0f8549feffff              JNZ 0x0046edd3
0046ef8a  e985050000                JMP 0x0046f514
0046ef8f  83bf1004000012            CMP dword ptr [EDI + 0x410],0x12
0046ef96  0f8578050000              JNZ 0x0046f514
0046ef9c  51                        PUSH ECX
0046ef9d  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046efa4  6a00                      PUSH 0x0
0046efa6  6a02                      PUSH 0x2
0046efa8  51                        PUSH ECX
0046efa9  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046efb0  8bcf                      MOV ECX,EDI
0046efb2  6a6a                      PUSH 0x6a
0046efb4  e8e77b2600                CALL 0x006d6ba0
0046efb9  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0046efbc  85c0                      TEST EAX,EAX
0046efbe  0f8538010000              JNZ 0x0046f0fc
0046efc4  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
0046efc7  b812000000                MOV EAX,0x12
0046efcc  83f901                    CMP ECX,0x1
0046efcf  7505                      JNZ 0x0046efd6
0046efd1  8d414f                    LEA EAX,[ECX + 0x4f]
0046efd4  eb0b                      JMP 0x0046efe1
0046efd6  83f902                    CMP ECX,0x2
0046efd9  ba3d000000                MOV EDX,0x3d
0046efde  0f44c2                    CMOVZ EAX,EDX
0046efe1  6a00                      PUSH 0x0
0046efe3  51                        PUSH ECX
0046efe4  6a00                      PUSH 0x0
0046efe6  50                        PUSH EAX
0046efe7  8bcf                      MOV ECX,EDI
0046efe9  8985b8fdffff              MOV dword ptr [EBP + 0xfffffdb8],EAX
0046efef  e8ecd72300                CALL 0x006ac7e0
0046eff4  83f805                    CMP EAX,0x5
0046eff7  0f8317050000              JNC 0x0046f514
0046effd  e85eff2700                CALL 0x006eef60
0046f002  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0046f00a  f30f580d7ca8ba00          ADDSS XMM1,dword ptr [0x00baa87c]
0046f012  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0046f016  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046f01c  6a00                      PUSH 0x0
0046f01e  68acd6c500                PUSH 0xc5d6ac
0046f023  68dcd5c500                PUSH 0xc5d5dc
0046f028  6a00                      PUSH 0x0
0046f02a  50                        PUSH EAX
0046f02b  6a00                      PUSH 0x0
0046f02d  57                        PUSH EDI
0046f02e  6840b6c700                PUSH 0xc7b640
0046f033  8d853cfdffff              LEA EAX,[EBP + 0xfffffd3c]
0046f039  f30f11853cfdffff          MOVSS dword ptr [EBP + 0xfffffd3c],XMM0
0046f041  50                        PUSH EAX
0046f042  6a00                      PUSH 0x0
0046f044  ffb5b8fdffff              PUSH dword ptr [EBP + 0xfffffdb8]
0046f04a  f30f118d40fdffff          MOVSS dword ptr [EBP + 0xfffffd40],XMM1
0046f052  e8c99afbff                CALL 0x00428b20
0046f057  50                        PUSH EAX
0046f058  e854186800                CALL 0x00af08b1
0046f05d  83c414                    ADD ESP,0x14
0046f060  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0046f066  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0046f06d  c6807401000001            MOV byte ptr [EAX + 0x174],0x1
0046f074  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0046f07a  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0046f07e  0f8590040000              JNZ 0x0046f514
0046f084  f30f1088380c0000          MOVSS XMM1,dword ptr [EAX + 0xc38]
0046f08c  f30f590dc0a4ba00          MULSS XMM1,dword ptr [0x00baa4c0]
0046f094  f30f1188380c0000          MOVSS dword ptr [EAX + 0xc38],XMM1
0046f09c  f30f5988b4030000          MULSS XMM1,dword ptr [EAX + 0x3b4]
0046f0a4  0f28c1                    MOVAPS XMM0,XMM1
0046f0a7  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0046f0af  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0046f0b7  f30f1188e8000000          MOVSS dword ptr [EAX + 0xe8],XMM1
0046f0bf  f30f1180e4000000          MOVSS dword ptr [EAX + 0xe4],XMM0
0046f0c7  f30f108084030000          MOVSS XMM0,dword ptr [EAX + 0x384]
0046f0cf  f30f5905b4a5ba00          MULSS XMM0,dword ptr [0x00baa5b4]
0046f0d7  f30f118084030000          MOVSS dword ptr [EAX + 0x384],XMM0
0046f0df  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0046f0e7  f30f5905b4a5ba00          MULSS XMM0,dword ptr [0x00baa5b4]
0046f0ef  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
0046f0f7  e918040000                JMP 0x0046f514
0046f0fc  83f801                    CMP EAX,0x1
0046f0ff  0f850f040000              JNZ 0x0046f514
0046f105  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0046f10b  e820fefcff                CALL 0x0043ef30
0046f110  8bcf                      MOV ECX,EDI
0046f112  8bf0                      MOV ESI,EAX
0046f114  e827f72400                CALL 0x006be840
0046f119  56                        PUSH ESI
0046f11a  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0046f120  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
0046f126  8d8534fdffff              LEA EAX,[EBP + 0xfffffd34]
0046f12c  51                        PUSH ECX
0046f12d  c7042400000000            MOV dword ptr [ESP],0x0
0046f134  50                        PUSH EAX
0046f135  898d34fdffff              MOV dword ptr [EBP + 0xfffffd34],ECX
0046f13b  8bcf                      MOV ECX,EDI
0046f13d  6a0a                      PUSH 0xa
0046f13f  899538fdffff              MOV dword ptr [EBP + 0xfffffd38],EDX
0046f145  e886dc2500                CALL 0x006ccdd0
0046f14a  e9c5030000                JMP 0x0046f514
0046f14f  83bf1004000011            CMP dword ptr [EDI + 0x410],0x11
0046f156  0f85b8030000              JNZ 0x0046f514
0046f15c  51                        PUSH ECX
0046f15d  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046f164  6a00                      PUSH 0x0
0046f166  6a02                      PUSH 0x2
0046f168  51                        PUSH ECX
0046f169  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046f170  8bcf                      MOV ECX,EDI
0046f172  6a70                      PUSH 0x70
0046f174  e8277a2600                CALL 0x006d6ba0
0046f179  33c9                      XOR ECX,ECX
0046f17b  898dbcfdffff              MOV dword ptr [EBP + 0xfffffdbc],ECX
0046f181  398d70fdffff              CMP dword ptr [EBP + 0xfffffd70],ECX
0046f187  0f8661010000              JBE 0x0046f2ee
0046f18d  8bbdc4fdffff              MOV EDI,dword ptr [EBP + 0xfffffdc4]
0046f193  8b8568fdffff              MOV EAX,dword ptr [EBP + 0xfffffd68]
0046f199  6a00                      PUSH 0x0
0046f19b  68acd6c500                PUSH 0xc5d6ac
0046f1a0  68dcd5c500                PUSH 0xc5d5dc
0046f1a5  6a00                      PUSH 0x0
0046f1a7  ff3488                    PUSH dword ptr [EAX + ECX*0x4]
0046f1aa  e802176800                CALL 0x00af08b1
0046f1af  8bf0                      MOV ESI,EAX
0046f1b1  83c414                    ADD ESP,0x14
0046f1b4  85f6                      TEST ESI,ESI
0046f1b6  0f8413010000              JZ 0x0046f2cf
0046f1bc  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0046f1c2  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0046f1c8  85c9                      TEST ECX,ECX
0046f1ca  741e                      JZ 0x0046f1ea
0046f1cc  8985b0fdffff              MOV dword ptr [EBP + 0xfffffdb0],EAX
0046f1d2  81c1cc030000              ADD ECX,0x3cc
0046f1d8  8d85b0fdffff              LEA EAX,[EBP + 0xfffffdb0]
0046f1de  50                        PUSH EAX
0046f1df  e82c000600                CALL 0x004cf210
0046f1e4  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0046f1ea  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
0046f1f2  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0046f1fa  c70000000000              MOV dword ptr [EAX],0x0
0046f200  c7867c0c0000ffffffff      MOV dword ptr [ESI + 0xc7c],0xffffffff
0046f20a  f30f5c4f04                SUBSS XMM1,dword ptr [EDI + 0x4]
0046f20f  f30f5c07                  SUBSS XMM0,dword ptr [EDI]
0046f213  0f28d1                    MOVAPS XMM2,XMM1
0046f216  f30f118dacfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM1
0046f21e  f30f59d1                  MULSS XMM2,XMM1
0046f222  0f28c8                    MOVAPS XMM1,XMM0
0046f225  f30f59c8                  MULSS XMM1,XMM0
0046f229  f30f1185b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM0
0046f231  f30f58d1                  ADDSS XMM2,XMM1
0046f235  0f2f156ca0ba00            COMISS XMM2,dword ptr [0x00baa06c]
0046f23c  0f868d000000              JBE 0x0046f2cf
0046f242  0f28c2                    MOVAPS XMM0,XMM2
0046f245  e80668fcff                CALL 0x00435a50
0046f24a  f30f109dacfdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdac]
0046f252  0f28d0                    MOVAPS XMM2,XMM0
0046f255  0f57c0                    XORPS XMM0,XMM0
0046f258  0f2fd0                    COMISS XMM2,XMM0
0046f25b  761e                      JBE 0x0046f27b
0046f25d  f30f100d68a8ba00          MOVSS XMM1,dword ptr [0x00baa868]
0046f265  f30f5eca                  DIVSS XMM1,XMM2
0046f269  f30f1095b8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb8]
0046f271  f30f59d1                  MULSS XMM2,XMM1
0046f275  f30f59d9                  MULSS XMM3,XMM1
0046f279  eb08                      JMP 0x0046f283
0046f27b  f30f1095b8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb8]
0046f283  f30f10a66c030000          MOVSS XMM4,dword ptr [ESI + 0x36c]
0046f28b  0f2ee0                    UCOMISS XMM4,XMM0
0046f28e  9f                        LAHF
0046f28f  f6c444                    TEST AH,0x44
0046f292  7b3b                      JNP 0x0046f2cf
0046f294  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
0046f29c  0f28c1                    MOVAPS XMM0,XMM1
0046f29f  f30f59cb                  MULSS XMM1,XMM3
0046f2a3  f30f59c2                  MULSS XMM0,XMM2
0046f2a7  f30f5ecc                  DIVSS XMM1,XMM4
0046f2ab  f30f5ec4                  DIVSS XMM0,XMM4
0046f2af  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
0046f2b7  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
0046f2bf  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
0046f2c7  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0046f2cf  8b8dbcfdffff              MOV ECX,dword ptr [EBP + 0xfffffdbc]
0046f2d5  41                        INC ECX
0046f2d6  898dbcfdffff              MOV dword ptr [EBP + 0xfffffdbc],ECX
0046f2dc  3b8d70fdffff              CMP ECX,dword ptr [EBP + 0xfffffd70]
0046f2e2  0f82abfeffff              JC 0x0046f193
0046f2e8  8bbdc0fdffff              MOV EDI,dword ptr [EBP + 0xfffffdc0]
0046f2ee  a17816c700                MOV EAX,[0x00c71678]
0046f2f3  6a00                      PUSH 0x0
0046f2f5  6a01                      PUSH 0x1
0046f2f7  6aff                      PUSH -0x1
0046f2f9  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0046f2ff  8d8584fdffff              LEA EAX,[EBP + 0xfffffd84]
0046f305  6a21                      PUSH 0x21
0046f307  68e8030000                PUSH 0x3e8
0046f30c  81c118120000              ADD ECX,0x1218
0046f312  50                        PUSH EAX
0046f313  e848bcfaff                CALL 0x0041af60
0046f318  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
0046f31c  33f6                      XOR ESI,ESI
0046f31e  8b8590fdffff              MOV EAX,dword ptr [EBP + 0xfffffd90]
0046f324  89b5acfdffff              MOV dword ptr [EBP + 0xfffffdac],ESI
0046f32a  85c0                      TEST EAX,EAX
0046f32c  0f8415010000              JZ 0x0046f447
0046f332  8bbdc4fdffff              MOV EDI,dword ptr [EBP + 0xfffffdc4]
0046f338  8b8d88fdffff              MOV ECX,dword ptr [EBP + 0xfffffd88]
0046f33e  6690                      NOP
0046f340  8b34b1                    MOV ESI,dword ptr [ECX + ESI*0x4]
0046f343  85f6                      TEST ESI,ESI
0046f345  0f84e1000000              JZ 0x0046f42c
0046f34b  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0046f353  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
0046f35b  f30f5c07                  SUBSS XMM0,dword ptr [EDI]
0046f35f  f30f5c5704                SUBSS XMM2,dword ptr [EDI + 0x4]
0046f364  0f28d8                    MOVAPS XMM3,XMM0
0046f367  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
0046f36f  0f28ca                    MOVAPS XMM1,XMM2
0046f372  f30f59d8                  MULSS XMM3,XMM0
0046f376  f30f59ca                  MULSS XMM1,XMM2
0046f37a  f30f1195b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM2
0046f382  f30f58d9                  ADDSS XMM3,XMM1
0046f386  0f2f1d6ca0ba00            COMISS XMM3,dword ptr [0x00baa06c]
0046f38d  0f8699000000              JBE 0x0046f42c
0046f393  0f28c3                    MOVAPS XMM0,XMM3
0046f396  e8b566fcff                CALL 0x00435a50
0046f39b  f30f109db8fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdb8]
0046f3a3  0f28d0                    MOVAPS XMM2,XMM0
0046f3a6  0f57c0                    XORPS XMM0,XMM0
0046f3a9  0f2fd0                    COMISS XMM2,XMM0
0046f3ac  761e                      JBE 0x0046f3cc
0046f3ae  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
0046f3b6  f30f5eca                  DIVSS XMM1,XMM2
0046f3ba  f30f1095c4fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdc4]
0046f3c2  f30f59d1                  MULSS XMM2,XMM1
0046f3c6  f30f59d9                  MULSS XMM3,XMM1
0046f3ca  eb08                      JMP 0x0046f3d4
0046f3cc  f30f1095c4fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdc4]
0046f3d4  f30f10a66c030000          MOVSS XMM4,dword ptr [ESI + 0x36c]
0046f3dc  8b8d88fdffff              MOV ECX,dword ptr [EBP + 0xfffffd88]
0046f3e2  0f2ee0                    UCOMISS XMM4,XMM0
0046f3e5  9f                        LAHF
0046f3e6  f6c444                    TEST AH,0x44
0046f3e9  8b8590fdffff              MOV EAX,dword ptr [EBP + 0xfffffd90]
0046f3ef  7b3b                      JNP 0x0046f42c
0046f3f1  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
0046f3f9  0f28c1                    MOVAPS XMM0,XMM1
0046f3fc  f30f59cb                  MULSS XMM1,XMM3
0046f400  f30f59c2                  MULSS XMM0,XMM2
0046f404  f30f5ecc                  DIVSS XMM1,XMM4
0046f408  f30f5ec4                  DIVSS XMM0,XMM4
0046f40c  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
0046f414  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
0046f41c  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
0046f424  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0046f42c  8bb5acfdffff              MOV ESI,dword ptr [EBP + 0xfffffdac]
0046f432  46                        INC ESI
0046f433  89b5acfdffff              MOV dword ptr [EBP + 0xfffffdac],ESI
0046f439  3bf0                      CMP ESI,EAX
0046f43b  0f82fffeffff              JC 0x0046f340
0046f441  8bbdc0fdffff              MOV EDI,dword ptr [EBP + 0xfffffdc0]
0046f447  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046f44b  7561                      JNZ 0x0046f4ae
0046f44d  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
0046f453  e8d8fafcff                CALL 0x0043ef30
0046f458  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0046f460  0f57c0                    XORPS XMM0,XMM0
0046f463  f30f5cc8                  SUBSS XMM1,XMM0
0046f467  c7852cfdffff00000041      MOV dword ptr [EBP + 0xfffffd2c],0x41000000
0046f471  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0046f479  f30f5c0504a9ba00          SUBSS XMM0,dword ptr [0x00baa904]
0046f481  50                        PUSH EAX
0046f482  6a09                      PUSH 0x9
0046f484  8d852cfdffff              LEA EAX,[EBP + 0xfffffd2c]
0046f48a  c78530fdffff00000041      MOV dword ptr [EBP + 0xfffffd30],0x41000000
0046f494  50                        PUSH EAX
0046f495  8d8524fdffff              LEA EAX,[EBP + 0xfffffd24]
0046f49b  f30f118d24fdffff          MOVSS dword ptr [EBP + 0xfffffd24],XMM1
0046f4a3  f30f118528fdffff          MOVSS dword ptr [EBP + 0xfffffd28],XMM0
0046f4ab  50                        PUSH EAX
0046f4ac  eb36                      JMP 0x0046f4e4
0046f4ae  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0046f4b2  7537                      JNZ 0x0046f4eb
0046f4b4  8d8dc8fdffff              LEA ECX,[EBP + 0xfffffdc8]
0046f4ba  e871fafcff                CALL 0x0043ef30
0046f4bf  50                        PUSH EAX
0046f4c0  6a09                      PUSH 0x9
0046f4c2  8d851cfdffff              LEA EAX,[EBP + 0xfffffd1c]
0046f4c8  c7851cfdffff0000e040      MOV dword ptr [EBP + 0xfffffd1c],0x40e00000
0046f4d2  50                        PUSH EAX
0046f4d3  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0046f4d9  c78520fdffff00000041      MOV dword ptr [EBP + 0xfffffd20],0x41000000
0046f4e3  51                        PUSH ECX
0046f4e4  8bcf                      MOV ECX,EDI
0046f4e6  e8f5bd2500                CALL 0x006cb2e0
0046f4eb  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0046f4ef  80bd84fdffff00            CMP byte ptr [EBP + 0xfffffd84],0x0
0046f4f6  751c                      JNZ 0x0046f514
0046f4f8  c645fc05                  MOV byte ptr [EBP + -0x4],0x5
0046f4fc  b101                      MOV CL,0x1
0046f4fe  8b9588fdffff              MOV EDX,dword ptr [EBP + 0xfffffd88]
0046f504  6a00                      PUSH 0x0
0046f506  6a00                      PUSH 0x0
0046f508  e8a3535f00                CALL 0x00a648b0
0046f50d  83c408                    ADD ESP,0x8
0046f510  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0046f514  ff8710040000              INC dword ptr [EDI + 0x410]
0046f51a  83bf1004000028            CMP dword ptr [EDI + 0x410],0x28
0046f521  7c0a                      JL 0x0046f52d
0046f523  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0046f52d  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0046f534  0f8412060000              JZ 0x0046fb4c
0046f53a  c785b8fdffff00000000      MOV dword ptr [EBP + 0xfffffdb8],0x0
0046f544  e817fa2700                CALL 0x006eef60
0046f549  33d2                      XOR EDX,EDX
0046f54b  b90a000000                MOV ECX,0xa
0046f550  f7f1                      DIV ECX
0046f552  83c205                    ADD EDX,0x5
0046f555  0f840c010000              JZ 0x0046f667
0046f55b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0046f560  e8fbf92700                CALL 0x006eef60
0046f565  8bf0                      MOV ESI,EAX
0046f567  e8f4f92700                CALL 0x006eef60
0046f56c  660f6ec0                  MOVD XMM0,EAX
0046f570  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0046f574  c1e81f                    SHR EAX,0x1f
0046f577  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046f580  660f5ac0                  CVTPD2PS XMM0,XMM0
0046f584  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046f58c  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0046f594  f30f58c0                  ADDSS XMM0,XMM0
0046f598  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
0046f5a0  e8bbf92700                CALL 0x006eef60
0046f5a5  660f6ec0                  MOVD XMM0,EAX
0046f5a9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0046f5ad  c1e81f                    SHR EAX,0x1f
0046f5b0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046f5b9  660f5ac0                  CVTPD2PS XMM0,XMM0
0046f5bd  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046f5c5  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
0046f5cd  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
0046f5d5  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0046f5dd  e85edffaff                CALL 0x0041d540
0046f5e2  f30f5985c4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdc4]
0046f5ea  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0046f5f2  f30f118514fdffff          MOVSS dword ptr [EBP + 0xfffffd14],XMM0
0046f5fa  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0046f602  e819dffaff                CALL 0x0041d520
0046f607  f30f5985c4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdc4]
0046f60f  8d8514fdffff              LEA EAX,[EBP + 0xfffffd14]
0046f615  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046f61b  56                        PUSH ESI
0046f61c  6a00                      PUSH 0x0
0046f61e  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0046f626  57                        PUSH EDI
0046f627  6840b6c700                PUSH 0xc7b640
0046f62c  50                        PUSH EAX
0046f62d  6a21                      PUSH 0x21
0046f62f  68e8030000                PUSH 0x3e8
0046f634  f30f118518fdffff          MOVSS dword ptr [EBP + 0xfffffd18],XMM0
0046f63c  e8df94fbff                CALL 0x00428b20
0046f641  8bb5b8fdffff              MOV ESI,dword ptr [EBP + 0xfffffdb8]
0046f647  46                        INC ESI
0046f648  89b5b8fdffff              MOV dword ptr [EBP + 0xfffffdb8],ESI
0046f64e  e80df92700                CALL 0x006eef60
0046f653  33d2                      XOR EDX,EDX
0046f655  b90a000000                MOV ECX,0xa
0046f65a  f7f1                      DIV ECX
0046f65c  83c205                    ADD EDX,0x5
0046f65f  3bf2                      CMP ESI,EDX
0046f661  0f82f9feffff              JC 0x0046f560
0046f667  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046f66b  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
0046f673  a174f6b100                MOV EAX,[0x00b1f674]
0046f678  8bb7ec030000              MOV ESI,dword ptr [EDI + 0x3ec]
0046f67e  660fd68578fdffff          MOVQ qword ptr [EBP + 0xfffffd78],XMM0
0046f686  8985bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EAX
0046f68c  0f8556030000              JNZ 0x0046f9e8
0046f692  85f6                      TEST ESI,ESI
0046f694  7510                      JNZ 0x0046f6a6
0046f696  6854bfb600                PUSH 0xb6bf54
0046f69b  6a10                      PUSH 0x10
0046f69d  e81e1c5a00                CALL 0x00a112c0
0046f6a2  83c408                    ADD ESP,0x8
0046f6a5  cc                        INT3
0046f6a6  8b8d78fdffff              MOV ECX,dword ptr [EBP + 0xfffffd78]
0046f6ac  8bd6                      MOV EDX,ESI
0046f6ae  d3ea                      SHR EDX,CL
0046f6b0  8b8d7cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd7c]
0046f6b6  33d6                      XOR EDX,ESI
0046f6b8  8bc2                      MOV EAX,EDX
0046f6ba  d3e0                      SHL EAX,CL
0046f6bc  8b8dbcfdffff              MOV ECX,dword ptr [EBP + 0xfffffdbc]
0046f6c2  33c2                      XOR EAX,EDX
0046f6c4  8bf0                      MOV ESI,EAX
0046f6c6  d3ee                      SHR ESI,CL
0046f6c8  33f0                      XOR ESI,EAX
0046f6ca  b8abaaaaaa                MOV EAX,0xaaaaaaab
0046f6cf  f7e6                      MUL ESI
0046f6d1  8bce                      MOV ECX,ESI
0046f6d3  d1ea                      SHR EDX,0x1
0046f6d5  8d0452                    LEA EAX,[EDX + EDX*0x2]
0046f6d8  2bc8                      SUB ECX,EAX
0046f6da  83c104                    ADD ECX,0x4
0046f6dd  898dc0fdffff              MOV dword ptr [EBP + 0xfffffdc0],ECX
0046f6e3  85c9                      TEST ECX,ECX
0046f6e5  0f8e63010000              JLE 0x0046f84e
0046f6eb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0046f6f0  e86bf82700                CALL 0x006eef60
0046f6f5  0f57c0                    XORPS XMM0,XMM0
0046f6f8  f20f2ac0                  CVTSI2SD XMM0,EAX
0046f6fc  c1e81f                    SHR EAX,0x1f
0046f6ff  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046f708  660f5ac0                  CVTPD2PS XMM0,XMM0
0046f70c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046f714  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0046f71c  f30f58c0                  ADDSS XMM0,XMM0
0046f720  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
0046f728  e8f3ddfaff                CALL 0x0041d520
0046f72d  f30f1185b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM0
0046f735  e826f82700                CALL 0x006eef60
0046f73a  0f57c9                    XORPS XMM1,XMM1
0046f73d  f20f2ac8                  CVTSI2SD XMM1,EAX
0046f741  c1e81f                    SHR EAX,0x1f
0046f744  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0046f74d  660f5ac1                  CVTPD2PS XMM0,XMM1
0046f751  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046f759  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0046f761  f30f598770030000          MULSS XMM0,dword ptr [EDI + 0x370]
0046f769  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
0046f771  f30f1085b0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb0]
0046f779  e8c2ddfaff                CALL 0x0041d540
0046f77e  f30f1095b8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb8]
0046f786  f30f5985c4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdc4]
0046f78e  f30f5995c4fdffff          MULSS XMM2,dword ptr [EBP + 0xfffffdc4]
0046f796  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0046f79e  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
0046f7a6  f30f11850cfdffff          MOVSS dword ptr [EBP + 0xfffffd0c],XMM0
0046f7ae  f30f119510fdffff          MOVSS dword ptr [EBP + 0xfffffd10],XMM2
0046f7b6  e8a5f72700                CALL 0x006eef60
0046f7bb  8985b0fdffff              MOV dword ptr [EBP + 0xfffffdb0],EAX
0046f7c1  85f6                      TEST ESI,ESI
0046f7c3  7510                      JNZ 0x0046f7d5
0046f7c5  6854bfb600                PUSH 0xb6bf54
0046f7ca  6a10                      PUSH 0x10
0046f7cc  e8ef1a5a00                CALL 0x00a112c0
0046f7d1  83c408                    ADD ESP,0x8
0046f7d4  cc                        INT3
0046f7d5  8b8d78fdffff              MOV ECX,dword ptr [EBP + 0xfffffd78]
0046f7db  8bc6                      MOV EAX,ESI
0046f7dd  ffb5b0fdffff              PUSH dword ptr [EBP + 0xfffffdb0]
0046f7e3  d3e8                      SHR EAX,CL
0046f7e5  8b8d7cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd7c]
0046f7eb  33c6                      XOR EAX,ESI
0046f7ed  8bd0                      MOV EDX,EAX
0046f7ef  d3e2                      SHL EDX,CL
0046f7f1  8b8dbcfdffff              MOV ECX,dword ptr [EBP + 0xfffffdbc]
0046f7f7  33d0                      XOR EDX,EAX
0046f7f9  8bf2                      MOV ESI,EDX
0046f7fb  d3ee                      SHR ESI,CL
0046f7fd  b90d000000                MOV ECX,0xd
0046f802  33f2                      XOR ESI,EDX
0046f804  6a00                      PUSH 0x0
0046f806  8bc6                      MOV EAX,ESI
0046f808  83e001                    AND EAX,0x1
0046f80b  57                        PUSH EDI
0046f80c  b812000000                MOV EAX,0x12
0046f811  0f45c1                    CMOVNZ EAX,ECX
0046f814  8d8d0cfdffff              LEA ECX,[EBP + 0xfffffd0c]
0046f81a  6840b6c700                PUSH 0xc7b640
0046f81f  51                        PUSH ECX
0046f820  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046f826  6a00                      PUSH 0x0
0046f828  50                        PUSH EAX
0046f829  e8f292fbff                CALL 0x00428b20
0046f82e  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0046f835  83adc0fdffff01            SUB dword ptr [EBP + 0xfffffdc0],0x1
0046f83c  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0046f842  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0046f848  0f85a2feffff              JNZ 0x0046f6f0
0046f84e  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0046f851  c785b8fdffff0e000000      MOV dword ptr [EBP + 0xfffffdb8],0xe
0046f85b  c785acfdffff00000000      MOV dword ptr [EBP + 0xfffffdac],0x0
0046f865  83f801                    CMP EAX,0x1
0046f868  750c                      JNZ 0x0046f876
0046f86a  c785acfdffff00000000      MOV dword ptr [EBP + 0xfffffdac],0x0
0046f874  eb0f                      JMP 0x0046f885
0046f876  83f802                    CMP EAX,0x2
0046f879  7514                      JNZ 0x0046f88f
0046f87b  c785acfdffff01000000      MOV dword ptr [EBP + 0xfffffdac],0x1
0046f885  c785b8fdffff19000000      MOV dword ptr [EBP + 0xfffffdb8],0x19
0046f88f  85f6                      TEST ESI,ESI
0046f891  7510                      JNZ 0x0046f8a3
0046f893  6854bfb600                PUSH 0xb6bf54
0046f898  6a10                      PUSH 0x10
0046f89a  e8211a5a00                CALL 0x00a112c0
0046f89f  83c408                    ADD ESP,0x8
0046f8a2  cc                        INT3
0046f8a3  8b8d78fdffff              MOV ECX,dword ptr [EBP + 0xfffffd78]
0046f8a9  8bc6                      MOV EAX,ESI
0046f8ab  d3e8                      SHR EAX,CL
0046f8ad  8b8d7cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd7c]
0046f8b3  33c6                      XOR EAX,ESI
0046f8b5  8bd0                      MOV EDX,EAX
0046f8b7  d3e2                      SHL EDX,CL
0046f8b9  8b8dbcfdffff              MOV ECX,dword ptr [EBP + 0xfffffdbc]
0046f8bf  33d0                      XOR EDX,EAX
0046f8c1  8bf2                      MOV ESI,EDX
0046f8c3  d3ee                      SHR ESI,CL
0046f8c5  33f2                      XOR ESI,EDX
0046f8c7  83e601                    AND ESI,0x1
0046f8ca  83c601                    ADD ESI,0x1
0046f8cd  0f8479020000              JZ 0x0046fb4c
0046f8d3  e888f62700                CALL 0x006eef60
0046f8d8  660f6ec0                  MOVD XMM0,EAX
0046f8dc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0046f8e0  c1e81f                    SHR EAX,0x1f
0046f8e3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046f8ec  660f5ac0                  CVTPD2PS XMM0,XMM0
0046f8f0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046f8f8  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0046f900  f30f58c0                  ADDSS XMM0,XMM0
0046f904  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
0046f90c  e80fdcfaff                CALL 0x0041d520
0046f911  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
0046f919  e842f62700                CALL 0x006eef60
0046f91e  660f6ec8                  MOVD XMM1,EAX
0046f922  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0046f926  c1e81f                    SHR EAX,0x1f
0046f929  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0046f932  660f5ac1                  CVTPD2PS XMM0,XMM1
0046f936  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046f93e  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0046f946  f30f598770030000          MULSS XMM0,dword ptr [EDI + 0x370]
0046f94e  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
0046f956  f30f1085b0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb0]
0046f95e  e8dddbfaff                CALL 0x0041d540
0046f963  f30f1095c4fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdc4]
0046f96b  f30f5985c0fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdc0]
0046f973  f30f5995c0fdffff          MULSS XMM2,dword ptr [EBP + 0xfffffdc0]
0046f97b  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0046f983  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
0046f98b  f30f118504fdffff          MOVSS dword ptr [EBP + 0xfffffd04],XMM0
0046f993  f30f119508fdffff          MOVSS dword ptr [EBP + 0xfffffd08],XMM2
0046f99b  e8c0f52700                CALL 0x006eef60
0046f9a0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046f9a6  50                        PUSH EAX
0046f9a7  6a00                      PUSH 0x0
0046f9a9  57                        PUSH EDI
0046f9aa  6840b6c700                PUSH 0xc7b640
0046f9af  8d8504fdffff              LEA EAX,[EBP + 0xfffffd04]
0046f9b5  50                        PUSH EAX
0046f9b6  ffb5acfdffff              PUSH dword ptr [EBP + 0xfffffdac]
0046f9bc  ffb5b8fdffff              PUSH dword ptr [EBP + 0xfffffdb8]
0046f9c2  e85991fbff                CALL 0x00428b20
0046f9c7  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0046f9ce  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0046f9d4  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0046f9da  83ee01                    SUB ESI,0x1
0046f9dd  0f85f0feffff              JNZ 0x0046f8d3
0046f9e3  e964010000                JMP 0x0046fb4c
0046f9e8  c785c0fdffff06000000      MOV dword ptr [EBP + 0xfffffdc0],0x6
0046f9f2  e869f52700                CALL 0x006eef60
0046f9f7  0f57c0                    XORPS XMM0,XMM0
0046f9fa  f20f2ac0                  CVTSI2SD XMM0,EAX
0046f9fe  c1e81f                    SHR EAX,0x1f
0046fa01  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046fa0a  660f5ac0                  CVTPD2PS XMM0,XMM0
0046fa0e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046fa16  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0046fa1e  f30f58c0                  ADDSS XMM0,XMM0
0046fa22  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
0046fa2a  e8f1dafaff                CALL 0x0041d520
0046fa2f  f30f1185b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM0
0046fa37  e824f52700                CALL 0x006eef60
0046fa3c  0f57c9                    XORPS XMM1,XMM1
0046fa3f  f20f2ac8                  CVTSI2SD XMM1,EAX
0046fa43  c1e81f                    SHR EAX,0x1f
0046fa46  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0046fa4f  660f5ac1                  CVTPD2PS XMM0,XMM1
0046fa53  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046fa5b  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0046fa63  f30f598770030000          MULSS XMM0,dword ptr [EDI + 0x370]
0046fa6b  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
0046fa73  f30f1085b0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb0]
0046fa7b  e8c0dafaff                CALL 0x0041d540
0046fa80  f30f108dc4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdc4]
0046fa88  f30f59c1                  MULSS XMM0,XMM1
0046fa8c  f30f598db8fdffff          MULSS XMM1,dword ptr [EBP + 0xfffffdb8]
0046fa94  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0046fa9c  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0046faa4  f30f1185fcfcffff          MOVSS dword ptr [EBP + 0xfffffcfc],XMM0
0046faac  f30f118d00fdffff          MOVSS dword ptr [EBP + 0xfffffd00],XMM1
0046fab4  e8a7f42700                CALL 0x006eef60
0046fab9  8985b0fdffff              MOV dword ptr [EBP + 0xfffffdb0],EAX
0046fabf  85f6                      TEST ESI,ESI
0046fac1  7510                      JNZ 0x0046fad3
0046fac3  6854bfb600                PUSH 0xb6bf54
0046fac8  6a10                      PUSH 0x10
0046faca  e8f1175a00                CALL 0x00a112c0
0046facf  83c408                    ADD ESP,0x8
0046fad2  cc                        INT3
0046fad3  8b8d78fdffff              MOV ECX,dword ptr [EBP + 0xfffffd78]
0046fad9  8bc6                      MOV EAX,ESI
0046fadb  ffb5b0fdffff              PUSH dword ptr [EBP + 0xfffffdb0]
0046fae1  d3e8                      SHR EAX,CL
0046fae3  8b8d7cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd7c]
0046fae9  33c6                      XOR EAX,ESI
0046faeb  8bd0                      MOV EDX,EAX
0046faed  d3e2                      SHL EDX,CL
0046faef  8b8dbcfdffff              MOV ECX,dword ptr [EBP + 0xfffffdbc]
0046faf5  33d0                      XOR EDX,EAX
0046faf7  8bf2                      MOV ESI,EDX
0046faf9  d3ee                      SHR ESI,CL
0046fafb  b90d000000                MOV ECX,0xd
0046fb00  33f2                      XOR ESI,EDX
0046fb02  6a00                      PUSH 0x0
0046fb04  8bc6                      MOV EAX,ESI
0046fb06  83e001                    AND EAX,0x1
0046fb09  57                        PUSH EDI
0046fb0a  b812000000                MOV EAX,0x12
0046fb0f  0f45c1                    CMOVNZ EAX,ECX
0046fb12  8d8dfcfcffff              LEA ECX,[EBP + 0xfffffcfc]
0046fb18  6840b6c700                PUSH 0xc7b640
0046fb1d  51                        PUSH ECX
0046fb1e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046fb24  6a00                      PUSH 0x0
0046fb26  50                        PUSH EAX
0046fb27  e8f48ffbff                CALL 0x00428b20
0046fb2c  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0046fb33  83adc0fdffff01            SUB dword ptr [EBP + 0xfffffdc0],0x1
0046fb3a  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0046fb40  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0046fb46  0f85a6feffff              JNZ 0x0046f9f2
0046fb4c  80bd64fdffff00            CMP byte ptr [EBP + 0xfffffd64],0x0
0046fb53  753b                      JNZ 0x0046fb90
0046fb55  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
0046fb5b  85d2                      TEST EDX,EDX
0046fb5d  7405                      JZ 0x0046fb64
0046fb5f  83c230                    ADD EDX,0x30
0046fb62  eb05                      JMP 0x0046fb69
0046fb64  ba18f6c700                MOV EDX,0xc7f618
0046fb69  8b8d68fdffff              MOV ECX,dword ptr [EBP + 0xfffffd68]
0046fb6f  85c9                      TEST ECX,ECX
0046fb71  741d                      JZ 0x0046fb90
0046fb73  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
0046fb76  83c1fc                    ADD ECX,-0x4
0046fb79  2902                      SUB dword ptr [EDX],EAX
0046fb7b  51                        PUSH ECX
0046fb7c  835a0400                  SBB dword ptr [EDX + 0x4],0x0
0046fb80  ff95a4fdffff              CALL dword ptr [EBP + 0xfffffda4]
0046fb86  83c404                    ADD ESP,0x4
0046fb89  0f1f8000000000            NOP dword ptr [EAX]
0046fb90  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0046fb93  64890d00000000            MOV dword ptr FS:[0x0],ECX
0046fb9a  59                        POP ECX
0046fb9b  5f                        POP EDI
0046fb9c  5e                        POP ESI
0046fb9d  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0046fba0  33cd                      XOR ECX,EBP
0046fba2  e884f56700                CALL 0x00aef12b
0046fba7  8be5                      MOV ESP,EBP
0046fba9  5d                        POP EBP
0046fbaa  8be3                      MOV ESP,EBX
0046fbac  5b                        POP EBX
0046fbad  c3                        RET
