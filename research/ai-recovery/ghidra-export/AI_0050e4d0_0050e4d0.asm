; J460 NPC AI 0x0050e4d0 AI_0050e4d0
; types=24,278
; identities=24.0.0,24.1.0,24.2.0,24.3.0,278.0.0
; entry=0050e4d0
0050e4d0  53                        PUSH EBX
0050e4d1  8bdc                      MOV EBX,ESP
0050e4d3  83ec08                    SUB ESP,0x8
0050e4d6  83e4f8                    AND ESP,0xfffffff8
0050e4d9  83c404                    ADD ESP,0x4
0050e4dc  55                        PUSH EBP
0050e4dd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0050e4e0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0050e4e4  8bec                      MOV EBP,ESP
0050e4e6  6aff                      PUSH -0x1
0050e4e8  681543af00                PUSH 0xaf4315
0050e4ed  64a100000000              MOV EAX,FS:[0x0]
0050e4f3  50                        PUSH EAX
0050e4f4  53                        PUSH EBX
0050e4f5  81ec90000000              SUB ESP,0x90
0050e4fb  a1b493bf00                MOV EAX,[0x00bf93b4]
0050e500  33c5                      XOR EAX,EBP
0050e502  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0050e505  56                        PUSH ESI
0050e506  57                        PUSH EDI
0050e507  50                        PUSH EAX
0050e508  8d45f4                    LEA EAX,[EBP + -0xc]
0050e50b  64a300000000              MOV FS:[0x0],EAX
0050e511  8bf9                      MOV EDI,ECX
0050e513  897d8c                    MOV dword ptr [EBP + -0x74],EDI
0050e516  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
0050e51d  7529                      JNZ 0x0050e548
0050e51f  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0050e525  85c0                      TEST EAX,EAX
0050e527  0f8e340d0000              JLE 0x0050f261
0050e52d  48                        DEC EAX
0050e52e  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0050e534  85c0                      TEST EAX,EAX
0050e536  0f8f250d0000              JG 0x0050f261
0050e53c  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
0050e543  e9190d0000                JMP 0x0050f261
0050e548  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0050e54f  0f85ad010000              JNZ 0x0050e702
0050e555  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0050e558  83f803                    CMP EAX,0x3
0050e55b  755e                      JNZ 0x0050e5bb
0050e55d  51                        PUSH ECX
0050e55e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050e564  e8079f2200                CALL 0x00738470
0050e569  83f820                    CMP EAX,0x20
0050e56c  750a                      JNZ 0x0050e578
0050e56e  8d4dc0                    LEA ECX,[EBP + -0x40]
0050e571  e8fa8befff                CALL 0x00407170
0050e576  eb2e                      JMP 0x0050e5a6
0050e578  0f1005a44dc300            MOVUPS XMM0,xmmword ptr [0x00c34da4]
0050e57f  a1cc4dc300                MOV EAX,[0x00c34dcc]
0050e584  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0050e587  8d4594                    LEA EAX,[EBP + -0x6c]
0050e58a  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
0050e58e  0f1005b44dc300            MOVUPS XMM0,xmmword ptr [0x00c34db4]
0050e595  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
0050e599  f30f7e05c44dc300          MOVQ XMM0,qword ptr [0x00c34dc4]
0050e5a1  660fd645b4                MOVQ qword ptr [EBP + -0x4c],XMM0
0050e5a6  50                        PUSH EAX
0050e5a7  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0050e5ad  e83e8cefff                CALL 0x004071f0
0050e5b2  838f180f000001            OR dword ptr [EDI + 0xf18],0x1
0050e5b9  eb2c                      JMP 0x0050e5e7
0050e5bb  83f802                    CMP EAX,0x2
0050e5be  7527                      JNZ 0x0050e5e7
0050e5c0  f30f101dd0a0ba00          MOVSS XMM3,dword ptr [0x00baa0d0]
0050e5c8  8d4d94                    LEA ECX,[EBP + -0x6c]
0050e5cb  f30f100d8ca0ba00          MOVSS XMM1,dword ptr [0x00baa08c]
0050e5d3  0f28d3                    MOVAPS XMM2,XMM3
0050e5d6  e8a574f2ff                CALL 0x00435a80
0050e5db  50                        PUSH EAX
0050e5dc  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0050e5e2  e8098cefff                CALL 0x004071f0
0050e5e7  8b8780030000              MOV EAX,dword ptr [EDI + 0x380]
0050e5ed  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
0050e5f3  837f300a                  CMP dword ptr [EDI + 0x30],0xa
0050e5f7  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050e601  0f855a0c0000              JNZ 0x0050f261
0050e607  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0050e60d  8bc1                      MOV EAX,ECX
0050e60f  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0050e615  83e004                    AND EAX,0x4
0050e618  83c800                    OR EAX,0x0
0050e61b  0f84c3000000              JZ 0x0050e6e4
0050e621  83e1fb                    AND ECX,0xfffffffb
0050e624  89976c010000              MOV dword ptr [EDI + 0x16c],EDX
0050e62a  898f68010000              MOV dword ptr [EDI + 0x168],ECX
0050e630  e82b091e00                CALL 0x006eef60
0050e635  6a00                      PUSH 0x0
0050e637  68acd5c500                PUSH 0xc5d5ac
0050e63c  68dcd5c500                PUSH 0xc5d5dc
0050e641  6a00                      PUSH 0x0
0050e643  50                        PUSH EAX
0050e644  6a00                      PUSH 0x0
0050e646  57                        PUSH EDI
0050e647  6840b6c700                PUSH 0xc7b640
0050e64c  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0050e652  51                        PUSH ECX
0050e653  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050e659  6a0f                      PUSH 0xf
0050e65b  68e8030000                PUSH 0x3e8
0050e660  e8bba4f1ff                CALL 0x00428b20
0050e665  50                        PUSH EAX
0050e666  e846225e00                CALL 0x00af08b1
0050e66b  8b8f4c030000              MOV ECX,dword ptr [EDI + 0x34c]
0050e671  8bd0                      MOV EDX,EAX
0050e673  83c414                    ADD ESP,0x14
0050e676  895588                    MOV dword ptr [EBP + -0x78],EDX
0050e679  898a4c030000              MOV dword ptr [EDX + 0x34c],ECX
0050e67f  8b8f50030000              MOV ECX,dword ptr [EDI + 0x350]
0050e685  898a50030000              MOV dword ptr [EDX + 0x350],ECX
0050e68b  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
0050e693  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0050e69b  f30f118258030000          MOVSS dword ptr [EDX + 0x358],XMM0
0050e6a3  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
0050e6aa  7431                      JZ 0x0050e6dd
0050e6ac  8b02                      MOV EAX,dword ptr [EDX]
0050e6ae  8b8f640c0000              MOV ECX,dword ptr [EDI + 0xc64]
0050e6b4  c1e106                    SHL ECX,0x6
0050e6b7  81c1c054c300              ADD ECX,0xc354c0
0050e6bd  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
0050e6c0  8d4594                    LEA EAX,[EBP + -0x6c]
0050e6c3  50                        PUSH EAX
0050e6c4  e8b774ffff                CALL 0x00505b80
0050e6c9  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
0050e6cc  6a01                      PUSH 0x1
0050e6ce  6a00                      PUSH 0x0
0050e6d0  68ff000000                PUSH 0xff
0050e6d5  6aff                      PUSH -0x1
0050e6d7  50                        PUSH EAX
0050e6d8  ffd6                      CALL ESI
0050e6da  8b5588                    MOV EDX,dword ptr [EBP + -0x78]
0050e6dd  8b02                      MOV EAX,dword ptr [EDX]
0050e6df  8bca                      MOV ECX,EDX
0050e6e1  ff500c                    CALL dword ptr [EAX + 0xc]
0050e6e4  6a00                      PUSH 0x0
0050e6e6  8d4f48                    LEA ECX,[EDI + 0x48]
0050e6e9  68a40db600                PUSH 0xb60da4
0050e6ee  e88dbcefff                CALL 0x0040a380
0050e6f3  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0050e6fd  e95f0b0000                JMP 0x0050f261
0050e702  817f2816010000            CMP dword ptr [EDI + 0x28],0x116
0050e709  0f57c0                    XORPS XMM0,XMM0
0050e70c  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
0050e714  0f85ec000000              JNZ 0x0050e806
0050e71a  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0050e722  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0050e72a  f30f5cc1                  SUBSS XMM0,XMM1
0050e72e  0f2f0584a7ba00            COMISS XMM0,dword ptr [0x00baa784]
0050e735  0f86cb000000              JBE 0x0050e806
0050e73b  a17816c700                MOV EAX,[0x00c71678]
0050e740  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0050e748  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0050e74e  e8ed001b00                CALL 0x006be840
0050e753  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
0050e75b  81c73c030000              ADD EDI,0x33c
0050e761  6a00                      PUSH 0x0
0050e763  6a00                      PUSH 0x0
0050e765  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0050e76d  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
0050e775  f30f5cca                  SUBSS XMM1,XMM2
0050e779  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
0050e77e  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
0050e784  f30f5cd8                  SUBSS XMM3,XMM0
0050e788  6a00                      PUSH 0x0
0050e78a  51                        PUSH ECX
0050e78b  f30f590d80a3ba00          MULSS XMM1,dword ptr [0x00baa380]
0050e793  8bce                      MOV ECX,ESI
0050e795  c7042400000000            MOV dword ptr [ESP],0x0
0050e79c  f30f591d80a3ba00          MULSS XMM3,dword ptr [0x00baa380]
0050e7a4  50                        PUSH EAX
0050e7a5  f30f58d1                  ADDSS XMM2,XMM1
0050e7a9  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0050e7af  f30f58c3                  ADDSS XMM0,XMM3
0050e7b3  50                        PUSH EAX
0050e7b4  f30f119578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM2
0050e7bc  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
0050e7c4  e8574d3000                CALL 0x00813520
0050e7c9  51                        PUSH ECX
0050e7ca  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
0050e7d1  6a00                      PUSH 0x0
0050e7d3  ff7004                    PUSH dword ptr [EAX + 0x4]
0050e7d6  ff30                      PUSH dword ptr [EAX]
0050e7d8  ff758c                    PUSH dword ptr [EBP + -0x74]
0050e7db  57                        PUSH EDI
0050e7dc  e86f3f1b00                CALL 0x006c2750
0050e7e1  8b7d8c                    MOV EDI,dword ptr [EBP + -0x74]
0050e7e4  83c414                    ADD ESP,0x14
0050e7e7  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050e7ee  6a00                      PUSH 0x0
0050e7f0  6a02                      PUSH 0x2
0050e7f2  51                        PUSH ECX
0050e7f3  c704240000803e            MOV dword ptr [ESP],0x3e800000
0050e7fa  8bcf                      MOV ECX,EDI
0050e7fc  68b5000000                PUSH 0xb5
0050e801  e89a831c00                CALL 0x006d6ba0
0050e806  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0050e80d  0f84d1000000              JZ 0x0050e8e4
0050e813  837f2818                  CMP dword ptr [EDI + 0x28],0x18
0050e817  0f85c7000000              JNZ 0x0050e8e4
0050e81d  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0050e821  0f85bd000000              JNZ 0x0050e8e4
0050e827  e834071e00                CALL 0x006eef60
0050e82c  6a00                      PUSH 0x0
0050e82e  68acd5c500                PUSH 0xc5d5ac
0050e833  68dcd5c500                PUSH 0xc5d5dc
0050e838  6a00                      PUSH 0x0
0050e83a  50                        PUSH EAX
0050e83b  6a00                      PUSH 0x0
0050e83d  57                        PUSH EDI
0050e83e  6840b6c700                PUSH 0xc7b640
0050e843  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0050e849  51                        PUSH ECX
0050e84a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050e850  6a1a                      PUSH 0x1a
0050e852  68e8030000                PUSH 0x3e8
0050e857  e8c4a2f1ff                CALL 0x00428b20
0050e85c  50                        PUSH EAX
0050e85d  e84f205e00                CALL 0x00af08b1
0050e862  8bf0                      MOV ESI,EAX
0050e864  83c414                    ADD ESP,0x14
0050e867  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0050e86d  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0050e873  85c9                      TEST ECX,ECX
0050e875  7418                      JZ 0x0050e88f
0050e877  894584                    MOV dword ptr [EBP + -0x7c],EAX
0050e87a  81c1cc030000              ADD ECX,0x3cc
0050e880  8d4584                    LEA EAX,[EBP + -0x7c]
0050e883  50                        PUSH EAX
0050e884  e88709fcff                CALL 0x004cf210
0050e889  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0050e88f  50                        PUSH EAX
0050e890  8bcf                      MOV ECX,EDI
0050e892  8938                      MOV dword ptr [EAX],EDI
0050e894  e857f4fbff                CALL 0x004cdcf0
0050e899  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
0050e8a1  8bce                      MOV ECX,ESI
0050e8a3  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
0050e8ab  f30f591530a6ba00          MULSS XMM2,dword ptr [0x00baa630]
0050e8b3  8b06                      MOV EAX,dword ptr [ESI]
0050e8b5  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
0050e8bd  c7865c040000d2000000      MOV dword ptr [ESI + 0x45c],0xd2
0050e8c7  f30f1196e4000000          MOVSS dword ptr [ESI + 0xe4],XMM2
0050e8cf  c78660040000d2000000      MOV dword ptr [ESI + 0x460],0xd2
0050e8d9  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0050e8e1  ff500c                    CALL dword ptr [EAX + 0xc]
0050e8e4  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
0050e8eb  0f85fc020000              JNZ 0x0050ebed
0050e8f1  e86a061e00                CALL 0x006eef60
0050e8f6  33d2                      XOR EDX,EDX
0050e8f8  b90a000000                MOV ECX,0xa
0050e8fd  f7f1                      DIV ECX
0050e8ff  85d2                      TEST EDX,EDX
0050e901  755d                      JNZ 0x0050e960
0050e903  e858061e00                CALL 0x006eef60
0050e908  51                        PUSH ECX
0050e909  8bcf                      MOV ECX,EDI
0050e90b  660f6ec0                  MOVD XMM0,EAX
0050e90f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050e913  c1e81f                    SHR EAX,0x1f
0050e916  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050e91f  660f5ac0                  CVTPD2PS XMM0,XMM0
0050e923  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050e92b  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0050e933  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0050e93b  f30f110424                MOVSS dword ptr [ESP],XMM0
0050e940  e88b7b1a00                CALL 0x006b64d0
0050e945  6a01                      PUSH 0x1
0050e947  6a00                      PUSH 0x0
0050e949  68ff000000                PUSH 0xff
0050e94e  8b08                      MOV ECX,dword ptr [EAX]
0050e950  6aff                      PUSH -0x1
0050e952  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
0050e955  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0050e95b  51                        PUSH ECX
0050e95c  8bc8                      MOV ECX,EAX
0050e95e  ffd2                      CALL EDX
0050e960  a118ddb100                MOV EAX,[0x00b1dd18]
0050e965  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
0050e96b  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
0050e972  c745b808000000            MOV dword ptr [EBP + -0x48],0x8
0050e979  8945a8                    MOV dword ptr [EBP + -0x58],EAX
0050e97c  894dac                    MOV dword ptr [EBP + -0x54],ECX
0050e97f  c645b000                  MOV byte ptr [EBP + -0x50],0x0
0050e983  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0050e98a  a130ddb100                MOV EAX,[0x00b1dd30]
0050e98f  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
0050e995  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050e99c  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0050e9a3  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
0050e9a6  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0050e9a9  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
0050e9ad  51                        PUSH ECX
0050e9ae  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0050e9b2  8d45a8                    LEA EAX,[EBP + -0x58]
0050e9b5  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0050e9bc  8bcf                      MOV ECX,EDI
0050e9be  50                        PUSH EAX
0050e9bf  8d45d4                    LEA EAX,[EBP + -0x2c]
0050e9c2  50                        PUSH EAX
0050e9c3  e868291b00                CALL 0x006c1330
0050e9c8  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0050e9cc  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0050e9cf  83fa10                    CMP EDX,0x10
0050e9d2  7228                      JC 0x0050e9fc
0050e9d4  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0050e9d7  42                        INC EDX
0050e9d8  8bc1                      MOV EAX,ECX
0050e9da  81fa00100000              CMP EDX,0x1000
0050e9e0  7210                      JC 0x0050e9f2
0050e9e2  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050e9e5  83c223                    ADD EDX,0x23
0050e9e8  2bc1                      SUB EAX,ECX
0050e9ea  83c0fc                    ADD EAX,-0x4
0050e9ed  83f81f                    CMP EAX,0x1f
0050e9f0  7749                      JA 0x0050ea3b
0050e9f2  52                        PUSH EDX
0050e9f3  51                        PUSH ECX
0050e9f4  e863075e00                CALL 0x00aef15c
0050e9f9  83c408                    ADD ESP,0x8
0050e9fc  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0050ea03  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
0050ea06  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0050ea0d  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050ea14  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0050ea18  83fa10                    CMP EDX,0x10
0050ea1b  722e                      JC 0x0050ea4b
0050ea1d  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
0050ea20  42                        INC EDX
0050ea21  8bc1                      MOV EAX,ECX
0050ea23  81fa00100000              CMP EDX,0x1000
0050ea29  7216                      JC 0x0050ea41
0050ea2b  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050ea2e  83c223                    ADD EDX,0x23
0050ea31  2bc1                      SUB EAX,ECX
0050ea33  83c0fc                    ADD EAX,-0x4
0050ea36  83f81f                    CMP EAX,0x1f
0050ea39  7606                      JBE 0x0050ea41
0050ea3b  ff159488b100              CALL dword ptr [0x00b18894]
0050ea41  52                        PUSH EDX
0050ea42  51                        PUSH ECX
0050ea43  e814075e00                CALL 0x00aef15c
0050ea48  83c408                    ADD ESP,0x8
0050ea4b  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0050ea51  2500080001                AND EAX,0x1000800
0050ea56  83c800                    OR EAX,0x0
0050ea59  7459                      JZ 0x0050eab4
0050ea5b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050ea62  7550                      JNZ 0x0050eab4
0050ea64  8bcf                      MOV ECX,EDI
0050ea66  e8d5fd1a00                CALL 0x006be840
0050ea6b  6a00                      PUSH 0x0
0050ea6d  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0050ea73  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0050ea79  89857cffffff              MOV dword ptr [EBP + 0xffffff7c],EAX
0050ea7f  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
0050ea85  898d78ffffff              MOV dword ptr [EBP + 0xffffff78],ECX
0050ea8b  8d8f14040000              LEA ECX,[EDI + 0x414]
0050ea91  50                        PUSH EAX
0050ea92  e8a95e2d00                CALL 0x007e4940
0050ea97  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050ea9f  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0050eaa7  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050eaaf  e9a2000000                JMP 0x0050eb56
0050eab4  817f2816010000            CMP dword ptr [EDI + 0x28],0x116
0050eabb  750a                      JNZ 0x0050eac7
0050eabd  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
0050eac5  eb61                      JMP 0x0050eb28
0050eac7  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0050eaca  83f801                    CMP EAX,0x1
0050eacd  750a                      JNZ 0x0050ead9
0050eacf  f30f100590a4ba00          MOVSS XMM0,dword ptr [0x00baa490]
0050ead7  eb4f                      JMP 0x0050eb28
0050ead9  83f803                    CMP EAX,0x3
0050eadc  7542                      JNZ 0x0050eb20
0050eade  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0050eae2  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
0050eae8  f30f7e05e0f7b100          MOVQ XMM0,qword ptr [0x00b1f7e0]
0050eaf0  8945dc                    MOV dword ptr [EBP + -0x24],EAX
0050eaf3  a1e8f7b100                MOV EAX,[0x00b1f7e8]
0050eaf8  660fd645e0                MOVQ qword ptr [EBP + -0x20],XMM0
0050eafd  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0050eb00  741e                      JZ 0x0050eb20
0050eb02  8d4ddc                    LEA ECX,[EBP + -0x24]
0050eb05  e876a52d00                CALL 0x007e9080
0050eb0a  d80dd4a1ba00              FMUL dword ptr [0x00baa1d4]
0050eb10  d80524a3ba00              FADD dword ptr [0x00baa324]
0050eb16  d95d84                    FSTP dword ptr [EBP + -0x7c]
0050eb19  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
0050eb1e  eb08                      JMP 0x0050eb28
0050eb20  f30f100580a3ba00          MOVSS XMM0,dword ptr [0x00baa380]
0050eb28  6a01                      PUSH 0x1
0050eb2a  6a00                      PUSH 0x0
0050eb2c  83ec08                    SUB ESP,0x8
0050eb2f  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0050eb35  8bcf                      MOV ECX,EDI
0050eb37  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
0050eb3d  c7042400000000            MOV dword ptr [ESP],0x0
0050eb44  50                        PUSH EAX
0050eb45  e8f6001b00                CALL 0x006bec40
0050eb4a  50                        PUSH EAX
0050eb4b  8d8f14040000              LEA ECX,[EDI + 0x414]
0050eb51  e86a482d00                CALL 0x007e33c0
0050eb56  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050eb5d  8bcf                      MOV ECX,EDI
0050eb5f  7410                      JZ 0x0050eb71
0050eb61  6a0a                      PUSH 0xa
0050eb63  e828971c00                CALL 0x006d8290
0050eb68  0fb6c0                    MOVZX EAX,AL
0050eb6b  85c0                      TEST EAX,EAX
0050eb6d  744e                      JZ 0x0050ebbd
0050eb6f  eb2c                      JMP 0x0050eb9d
0050eb71  e8cafc1a00                CALL 0x006be840
0050eb76  50                        PUSH EAX
0050eb77  8bcf                      MOV ECX,EDI
0050eb79  e8e2911c00                CALL 0x006d7d60
0050eb7e  84c0                      TEST AL,AL
0050eb80  743b                      JZ 0x0050ebbd
0050eb82  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
0050eb89  7432                      JZ 0x0050ebbd
0050eb8b  e8d0031e00                CALL 0x006eef60
0050eb90  33d2                      XOR EDX,EDX
0050eb92  b903000000                MOV ECX,0x3
0050eb97  f7f1                      DIV ECX
0050eb99  85d2                      TEST EDX,EDX
0050eb9b  7520                      JNZ 0x0050ebbd
0050eb9d  51                        PUSH ECX
0050eb9e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050eba5  6a00                      PUSH 0x0
0050eba7  6a28                      PUSH 0x28
0050eba9  51                        PUSH ECX
0050ebaa  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050ebb1  8bcf                      MOV ECX,EDI
0050ebb3  68a5000000                PUSH 0xa5
0050ebb8  e8e37f1c00                CALL 0x006d6ba0
0050ebbd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050ebc5  f30f590538a4ba00          MULSS XMM0,dword ptr [0x00baa438]
0050ebcd  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050ebd5  0f57c0                    XORPS XMM0,XMM0
0050ebd8  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
0050ebdf  0f97c0                    SETA AL
0050ebe2  888748010000              MOV byte ptr [EDI + 0x148],AL
0050ebe8  e99d010000                JMP 0x0050ed8a
0050ebed  8bcf                      MOV ECX,EDI
0050ebef  e84cfc1a00                CALL 0x006be840
0050ebf4  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0050ebf8  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0050ec00  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
0050ec08  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0050ec10  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0050ec18  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
0050ec1d  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
0050ec22  0f85fd000000              JNZ 0x0050ed25
0050ec28  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050ec2f  7439                      JZ 0x0050ec6a
0050ec31  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0050ec39  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0050ec3f  50                        PUSH EAX
0050ec40  8bcf                      MOV ECX,EDI
0050ec42  e889961c00                CALL 0x006d82d0
0050ec47  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0050ec4b  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0050ec50  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0050ec58  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
0050ec60  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
0050ec65  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
0050ec6a  0f28c1                    MOVAPS XMM0,XMM1
0050ec6d  f30f59c1                  MULSS XMM0,XMM1
0050ec71  0f28ca                    MOVAPS XMM1,XMM2
0050ec74  f30f59ca                  MULSS XMM1,XMM2
0050ec78  f30f58c1                  ADDSS XMM0,XMM1
0050ec7c  e8cf6df2ff                CALL 0x00435a50
0050ec81  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
0050ec89  0f2fc8                    COMISS XMM1,XMM0
0050ec8c  0f8681000000              JBE 0x0050ed13
0050ec92  0f2f056ca0ba00            COMISS XMM0,dword ptr [0x00baa06c]
0050ec99  7678                      JBE 0x0050ed13
0050ec9b  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
0050eca3  f30f5ec8                  DIVSS XMM1,XMM0
0050eca7  f30f105588                MOVSS XMM2,dword ptr [EBP + -0x78]
0050ecac  0f57c0                    XORPS XMM0,XMM0
0050ecaf  f30f105d84                MOVSS XMM3,dword ptr [EBP + -0x7c]
0050ecb4  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0050ecbb  0f571d70cbba00            XORPS XMM3,xmmword ptr [0x00bacb70]
0050ecc2  f30f59d1                  MULSS XMM2,XMM1
0050ecc6  f30f59d9                  MULSS XMM3,XMM1
0050ecca  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
0050ecd2  0f2ec8                    UCOMISS XMM1,XMM0
0050ecd5  9f                        LAHF
0050ecd6  f6c444                    TEST AH,0x44
0050ecd9  7b38                      JNP 0x0050ed13
0050ecdb  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0050ece3  f30f59d0                  MULSS XMM2,XMM0
0050ece7  f30f59d8                  MULSS XMM3,XMM0
0050eceb  f30f5ed1                  DIVSS XMM2,XMM1
0050ecef  f30f5ed9                  DIVSS XMM3,XMM1
0050ecf3  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
0050ecfb  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
0050ed03  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0050ed0b  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0050ed13  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050ed1b  f30f5905bca3ba00          MULSS XMM0,dword ptr [0x00baa3bc]
0050ed23  eb10                      JMP 0x0050ed35
0050ed25  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050ed2d  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0050ed35  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050ed3d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050ed41  743d                      JZ 0x0050ed80
0050ed43  68e009b600                PUSH 0xb609e0
0050ed48  8d4f78                    LEA ECX,[EDI + 0x78]
0050ed4b  e880c0efff                CALL 0x0040add0
0050ed50  84c0                      TEST AL,AL
0050ed52  741d                      JZ 0x0050ed71
0050ed54  51                        PUSH ECX
0050ed55  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050ed5c  6a00                      PUSH 0x0
0050ed5e  6a02                      PUSH 0x2
0050ed60  51                        PUSH ECX
0050ed61  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050ed68  8bcf                      MOV ECX,EDI
0050ed6a  6a1d                      PUSH 0x1d
0050ed6c  e82f7e1c00                CALL 0x006d6ba0
0050ed71  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050ed75  7409                      JZ 0x0050ed80
0050ed77  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0050ed7e  750a                      JNZ 0x0050ed8a
0050ed80  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050ed8a  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0050ed91  0f84ca040000              JZ 0x0050f261
0050ed97  817f2816010000            CMP dword ptr [EDI + 0x28],0x116
0050ed9e  757a                      JNZ 0x0050ee1a
0050eda0  e8bb011e00                CALL 0x006eef60
0050eda5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050edab  81c73c030000              ADD EDI,0x33c
0050edb1  50                        PUSH EAX
0050edb2  6a00                      PUSH 0x0
0050edb4  ff758c                    PUSH dword ptr [EBP + -0x74]
0050edb7  6840b6c700                PUSH 0xc7b640
0050edbc  57                        PUSH EDI
0050edbd  6a00                      PUSH 0x0
0050edbf  6818010000                PUSH 0x118
0050edc4  e8579df1ff                CALL 0x00428b20
0050edc9  e892011e00                CALL 0x006eef60
0050edce  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050edd4  8bf0                      MOV ESI,EAX
0050edd6  6a00                      PUSH 0x0
0050edd8  6a00                      PUSH 0x0
0050edda  6a00                      PUSH 0x0
0050eddc  51                        PUSH ECX
0050eddd  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0050ede3  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0050ede9  c7042400002042            MOV dword ptr [ESP],0x42200000
0050edf0  57                        PUSH EDI
0050edf1  50                        PUSH EAX
0050edf2  e829473000                CALL 0x00813520
0050edf7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050edfd  56                        PUSH ESI
0050edfe  6a00                      PUSH 0x0
0050ee00  ff758c                    PUSH dword ptr [EBP + -0x74]
0050ee03  6840b6c700                PUSH 0xc7b640
0050ee08  50                        PUSH EAX
0050ee09  6a00                      PUSH 0x0
0050ee0b  6817010000                PUSH 0x117
0050ee10  e80b9df1ff                CALL 0x00428b20
0050ee15  e947040000                JMP 0x0050f261
0050ee1a  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0050ee1e  0f85c1030000              JNZ 0x0050f1e5
0050ee24  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
0050ee2a  8bcf                      MOV ECX,EDI
0050ee2c  f30f7e05ecf7b100          MOVQ XMM0,qword ptr [0x00b1f7ec]
0050ee34  6800002000                PUSH 0x200000
0050ee39  8945dc                    MOV dword ptr [EBP + -0x24],EAX
0050ee3c  a1f4f7b100                MOV EAX,[0x00b1f7f4]
0050ee41  6a00                      PUSH 0x0
0050ee43  660fd645e0                MOVQ qword ptr [EBP + -0x20],XMM0
0050ee48  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0050ee4b  e8e085f0ff                CALL 0x00417430
0050ee50  84c0                      TEST AL,AL
0050ee52  0f852e010000              JNZ 0x0050ef86
0050ee58  a17816c700                MOV EAX,[0x00c71678]
0050ee5d  b919000000                MOV ECX,0x19
0050ee62  be0f000000                MOV ESI,0xf
0050ee67  6a64                      PUSH 0x64
0050ee69  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0050ee6f  83780805                  CMP dword ptr [EAX + 0x8],0x5
0050ee73  0f44f1                    CMOVZ ESI,ECX
0050ee76  8d4ddc                    LEA ECX,[EBP + -0x24]
0050ee79  0faf7730                  IMUL ESI,dword ptr [EDI + 0x30]
0050ee7d  e89ea12d00                CALL 0x007e9020
0050ee82  b963000000                MOV ECX,0x63
0050ee87  3bf1                      CMP ESI,ECX
0050ee89  0f42ce                    CMOVC ECX,ESI
0050ee8c  3bc1                      CMP EAX,ECX
0050ee8e  0f86f2000000              JBE 0x0050ef86
0050ee94  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0050ee9c  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0050eea4  0f28c8                    MOVAPS XMM1,XMM0
0050eea7  f30f59c8                  MULSS XMM1,XMM0
0050eeab  0f28c2                    MOVAPS XMM0,XMM2
0050eeae  f30f59c2                  MULSS XMM0,XMM2
0050eeb2  f30f58c8                  ADDSS XMM1,XMM0
0050eeb6  f30f10056ca0ba00          MOVSS XMM0,dword ptr [0x00baa06c]
0050eebe  0f2fc1                    COMISS XMM0,XMM1
0050eec1  7611                      JBE 0x0050eed4
0050eec3  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0050eec9  50                        PUSH EAX
0050eeca  e8a1011700                CALL 0x0067f070
0050eecf  83c404                    ADD ESP,0x4
0050eed2  eb6e                      JMP 0x0050ef42
0050eed4  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0050eedc  e85fe6f0ff                CALL 0x0041d540
0050eee1  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
0050eee6  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0050eeee  e82de6f0ff                CALL 0x0041d520
0050eef3  f30f10af60030000          MOVSS XMM5,dword ptr [EDI + 0x360]
0050eefb  8d4580                    LEA EAX,[EBP + -0x80]
0050eefe  f30f10a764030000          MOVSS XMM4,dword ptr [EDI + 0x364]
0050ef06  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
0050ef0c  0f28cc                    MOVAPS XMM1,XMM4
0050ef0f  0f28d5                    MOVAPS XMM2,XMM5
0050ef12  f30f595584                MULSS XMM2,dword ptr [EBP + -0x7c]
0050ef17  50                        PUSH EAX
0050ef18  f30f596584                MULSS XMM4,dword ptr [EBP + -0x7c]
0050ef1d  f30f59c8                  MULSS XMM1,XMM0
0050ef21  f30f59e8                  MULSS XMM5,XMM0
0050ef25  f30f5cd1                  SUBSS XMM2,XMM1
0050ef29  f30f58e5                  ADDSS XMM4,XMM5
0050ef2d  f30f119578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM2
0050ef35  f30f11a57cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM4
0050ef3d  e8ee105000                CALL 0x00a10030
0050ef42  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
0050ef49  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0050ef4d  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0050ef52  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
0050ef5a  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
0050ef5f  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0050ef66  c6459301                  MOV byte ptr [EBP + -0x6d],0x1
0050ef6a  743a                      JZ 0x0050efa6
0050ef6c  c7458828000000            MOV dword ptr [EBP + -0x78],0x28
0050ef73  c6459301                  MOV byte ptr [EBP + -0x6d],0x1
0050ef77  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
0050ef7f  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
0050ef84  eb30                      JMP 0x0050efb6
0050ef86  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
0050ef8d  c6459300                  MOV byte ptr [EBP + -0x6d],0x0
0050ef91  0f85ca020000              JNZ 0x0050f261
0050ef97  0f57c0                    XORPS XMM0,XMM0
0050ef9a  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0050efa1  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0050efa6  b804000000                MOV EAX,0x4
0050efab  2b4730                    SUB EAX,dword ptr [EDI + 0x30]
0050efae  8d3480                    LEA ESI,[EAX + EAX*0x4]
0050efb1  03f6                      ADD ESI,ESI
0050efb3  897588                    MOV dword ptr [EBP + -0x78],ESI
0050efb6  6a01                      PUSH 0x1
0050efb8  68a40db600                PUSH 0xb60da4
0050efbd  8d4f48                    LEA ECX,[EDI + 0x48]
0050efc0  e80bb6efff                CALL 0x0040a5d0
0050efc5  84c0                      TEST AL,AL
0050efc7  740f                      JZ 0x0050efd8
0050efc9  8d4f78                    LEA ECX,[EDI + 0x78]
0050efcc  e8dfb1efff                CALL 0x0040a1b0
0050efd1  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0050efd8  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
0050efdb  85c0                      TEST EAX,EAX
0050efdd  7e15                      JLE 0x0050eff4
0050efdf  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050efe3  740f                      JZ 0x0050eff4
0050efe5  660f6ec8                  MOVD XMM1,EAX
0050efe9  8d4f78                    LEA ECX,[EDI + 0x78]
0050efec  0f5bc9                    CVTDQ2PS XMM1,XMM1
0050efef  e80c9eefff                CALL 0x00408e00
0050eff4  807d9300                  CMP byte ptr [EBP + -0x6d],0x0
0050eff8  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0050f000  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
0050f008  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0050f012  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0050f01a  f30f5fc8                  MAXSS XMM1,XMM0
0050f01e  f30f118f84030000          MOVSS dword ptr [EDI + 0x384],XMM1
0050f026  f30f118f80030000          MOVSS dword ptr [EDI + 0x380],XMM1
0050f02e  0f842d020000              JZ 0x0050f261
0050f034  ff4730                    INC dword ptr [EDI + 0x30]
0050f037  8d4ddc                    LEA ECX,[EBP + -0x24]
0050f03a  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0050f041  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
0050f04b  e8a0a02d00                CALL 0x007e90f0
0050f050  8d4ddc                    LEA ECX,[EBP + -0x24]
0050f053  8987ec030000              MOV dword ptr [EDI + 0x3ec],EAX
0050f059  e892a02d00                CALL 0x007e90f0
0050f05e  f30f108d74ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff74]
0050f066  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
0050f06e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050f074  f30f10558c                MOVSS XMM2,dword ptr [EBP + -0x74]
0050f079  f30f59155ca7ba00          MULSS XMM2,dword ptr [0x00baa75c]
0050f081  50                        PUSH EAX
0050f082  0f28c1                    MOVAPS XMM0,XMM1
0050f085  f30f114d84                MOVSS dword ptr [EBP + -0x7c],XMM1
0050f08a  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0050f092  6a00                      PUSH 0x0
0050f094  57                        PUSH EDI
0050f095  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0050f09b  f30f118d6cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM1
0050f0a3  50                        PUSH EAX
0050f0a4  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
0050f0ac  8d8564ffffff              LEA EAX,[EBP + 0xffffff64]
0050f0b2  0f28c2                    MOVAPS XMM0,XMM2
0050f0b5  f30f11957cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM2
0050f0bd  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0050f0c5  50                        PUSH EAX
0050f0c6  ff772c                    PUSH dword ptr [EDI + 0x2c]
0050f0c9  f30f119570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM2
0050f0d1  ff7728                    PUSH dword ptr [EDI + 0x28]
0050f0d4  f30f118568ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM0
0050f0dc  e83f9af1ff                CALL 0x00428b20
0050f0e1  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0050f0e9  8bf0                      MOV ESI,EAX
0050f0eb  6a00                      PUSH 0x0
0050f0ed  68a40db600                PUSH 0xb60da4
0050f0f2  8d4e48                    LEA ECX,[ESI + 0x48]
0050f0f5  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
0050f0fd  f30f118684030000          MOVSS dword ptr [ESI + 0x384],XMM0
0050f105  e876b2efff                CALL 0x0040a380
0050f10a  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
0050f10d  85c0                      TEST EAX,EAX
0050f10f  7e15                      JLE 0x0050f126
0050f111  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
0050f115  740f                      JZ 0x0050f126
0050f117  660f6ec8                  MOVD XMM1,EAX
0050f11b  8d4e78                    LEA ECX,[ESI + 0x78]
0050f11e  0f5bc9                    CVTDQ2PS XMM1,XMM1
0050f121  e8da9cefff                CALL 0x00408e00
0050f126  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0050f129  8d8ee4010000              LEA ECX,[ESI + 0x1e4]
0050f12f  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0050f136  894630                    MOV dword ptr [ESI + 0x30],EAX
0050f139  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0050f13f  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0050f145  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0050f14b  50                        PUSH EAX
0050f14c  c786640b000003000000      MOV dword ptr [ESI + 0xb64],0x3
0050f156  e89580efff                CALL 0x004071f0
0050f15b  818e6c01000000040000      OR dword ptr [ESI + 0x16c],0x400
0050f165  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0050f16b  838e180f000001            OR dword ptr [ESI + 0xf18],0x1
0050f172  f30f108d74ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff74]
0050f17a  f30f10558c                MOVSS XMM2,dword ptr [EBP + -0x74]
0050f17f  f30f590d90adba00          MULSS XMM1,dword ptr [0x00baad90]
0050f187  c686b003000001            MOV byte ptr [ESI + 0x3b0],0x1
0050f18e  f30f591590adba00          MULSS XMM2,dword ptr [0x00baad90]
0050f196  c786c00b000001000000      MOV dword ptr [ESI + 0xbc0],0x1
0050f1a0  898668010000              MOV dword ptr [ESI + 0x168],EAX
0050f1a6  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0050f1ae  f30f5c4584                SUBSS XMM0,dword ptr [EBP + -0x7c]
0050f1b3  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0050f1bb  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0050f1c3  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
0050f1cb  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0050f1d3  f30f5c857cffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff7c]
0050f1db  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0050f1e3  eb7c                      JMP 0x0050f261
0050f1e5  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
0050f1ec  7573                      JNZ 0x0050f261
0050f1ee  6a00                      PUSH 0x0
0050f1f0  8d4f48                    LEA ECX,[EDI + 0x48]
0050f1f3  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0050f1fa  68a40db600                PUSH 0xb60da4
0050f1ff  c7878003000000002041      MOV dword ptr [EDI + 0x380],0x41200000
0050f209  e872b1efff                CALL 0x0040a380
0050f20e  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0050f212  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0050f21c  7543                      JNZ 0x0050f261
0050f21e  8bcf                      MOV ECX,EDI
0050f220  e8fb791c00                CALL 0x006d6c20
0050f225  83f807                    CMP EAX,0x7
0050f228  7d37                      JGE 0x0050f261
0050f22a  e831fd1d00                CALL 0x006eef60
0050f22f  50                        PUSH EAX
0050f230  6a00                      PUSH 0x0
0050f232  57                        PUSH EDI
0050f233  6840b6c700                PUSH 0xc7b640
0050f238  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0050f23e  51                        PUSH ECX
0050f23f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050f245  6a00                      PUSH 0x0
0050f247  6a55                      PUSH 0x55
0050f249  e8d298f1ff                CALL 0x00428b20
0050f24e  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0050f254  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0050f25b  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0050f261  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0050f264  64890d00000000            MOV dword ptr FS:[0x0],ECX
0050f26b  59                        POP ECX
0050f26c  5f                        POP EDI
0050f26d  5e                        POP ESI
0050f26e  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0050f271  33cd                      XOR ECX,EBP
0050f273  e8b3fe5d00                CALL 0x00aef12b
0050f278  8be5                      MOV ESP,EBP
0050f27a  5d                        POP EBP
0050f27b  8be3                      MOV ESP,EBX
0050f27d  5b                        POP EBX
0050f27e  c3                        RET
