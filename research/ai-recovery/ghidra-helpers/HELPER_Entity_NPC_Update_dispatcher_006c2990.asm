; J460 NPC AI 0x006c2990 HELPER_Entity_NPC_Update_dispatcher
; types=
; identities=dispatcher
; entry=006c2990
006c2990  53                        PUSH EBX
006c2991  8bdc                      MOV EBX,ESP
006c2993  83ec08                    SUB ESP,0x8
006c2996  83e4f8                    AND ESP,0xfffffff8
006c2999  83c404                    ADD ESP,0x4
006c299c  55                        PUSH EBP
006c299d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
006c29a0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
006c29a4  8bec                      MOV EBP,ESP
006c29a6  6aff                      PUSH -0x1
006c29a8  68a0a9af00                PUSH 0xafa9a0
006c29ad  64a100000000              MOV EAX,FS:[0x0]
006c29b3  50                        PUSH EAX
006c29b4  53                        PUSH EBX
006c29b5  81ec20010000              SUB ESP,0x120
006c29bb  a1b493bf00                MOV EAX,[0x00bf93b4]
006c29c0  33c5                      XOR EAX,EBP
006c29c2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
006c29c5  56                        PUSH ESI
006c29c6  57                        PUSH EDI
006c29c7  50                        PUSH EAX
006c29c8  8d45f4                    LEA EAX,[EBP + -0xc]
006c29cb  64a300000000              MOV FS:[0x0],EAX
006c29d1  8bf9                      MOV EDI,ECX
006c29d3  83bf740b000000            CMP dword ptr [EDI + 0xb74],0x0
006c29da  750e                      JNZ 0x006c29ea
006c29dc  57                        PUSH EDI
006c29dd  e87edf1900                CALL 0x00860960
006c29e2  84c0                      TEST AL,AL
006c29e4  0f85d4170000              JNZ 0x006c41be
006c29ea  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c29ed  83c0f6                    ADD EAX,-0xa
006c29f0  3dbd030000                CMP EAX,0x3bd
006c29f5  0f87b4170000              JA 0x006c41af
006c29fb  0fb680a4456c00            MOVZX EAX,byte ptr [EAX + 0x6c45a4]
006c2a02  ff2485dc416c00            JMP dword ptr [EAX*0x4 + 0x6c41dc]
006c2a09  8bcf                      MOV ECX,EDI
006c2a0b  e87006e5ff                CALL 0x00513080
006c2a10  e99a170000                JMP 0x006c41af
006c2a15  8bcf                      MOV ECX,EDI
006c2a17  e8c491e4ff                CALL 0x0050bbe0
006c2a1c  e98e170000                JMP 0x006c41af
006c2a21  8bcf                      MOV ECX,EDI
006c2a23  e8c876daff                CALL 0x0046a0f0
006c2a28  e982170000                JMP 0x006c41af
006c2a2d  8bcf                      MOV ECX,EDI
006c2a2f  e86c96daff                CALL 0x0046c0a0
006c2a34  e976170000                JMP 0x006c41af
006c2a39  8bcf                      MOV ECX,EDI
006c2a3b  e850b8daff                CALL 0x0046e290
006c2a40  e96a170000                JMP 0x006c41af
006c2a45  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
006c2a4d  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
006c2a55  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006c2a58  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006c2a60  83f80a                    CMP EAX,0xa
006c2a63  7316                      JNC 0x006c2a7b
006c2a65  837f3000                  CMP dword ptr [EDI + 0x30],0x0
006c2a69  7610                      JBE 0x006c2a7b
006c2a6b  f30f5905f4a3ba00          MULSS XMM0,dword ptr [0x00baa3f4]
006c2a73  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006c2a7b  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006c2a82  0f8469010000              JZ 0x006c2bf1
006c2a88  83f80b                    CMP EAX,0xb
006c2a8b  7409                      JZ 0x006c2a96
006c2a8d  83f801                    CMP EAX,0x1
006c2a90  0f855b010000              JNZ 0x006c2bf1
006c2a96  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
006c2a9c  e88fc4d7ff                CALL 0x0043ef30
006c2aa1  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
006c2aa5  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
006c2aab  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
006c2ab1  c745d40c000000            MOV dword ptr [EBP + -0x2c],0xc
006c2ab8  0f85b9000000              JNZ 0x006c2b77
006c2abe  c78538ffffffc1030000      MOV dword ptr [EBP + 0xffffff38],0x3c1
006c2ac8  e8b33c2900                CALL 0x00956780
006c2acd  83ec08                    SUB ESP,0x8
006c2ad0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006c2ad8  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c2adf  6a00                      PUSH 0x0
006c2ae1  6a02                      PUSH 0x2
006c2ae3  51                        PUSH ECX
006c2ae4  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c2aeb  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
006c2af1  ffb538ffffff              PUSH dword ptr [EBP + 0xffffff38]
006c2af7  e834b12600                CALL 0x0092dc30
006c2afc  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
006c2b02  c7854cffffff0ad7a3bd      MOV dword ptr [EBP + 0xffffff4c],0xbda3d70a
006c2b0c  50                        PUSH EAX
006c2b0d  6a08                      PUSH 0x8
006c2b0f  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
006c2b15  c78554ffffff00000040      MOV dword ptr [EBP + 0xffffff54],0x40000000
006c2b1f  50                        PUSH EAX
006c2b20  8db73c030000              LEA ESI,[EDI + 0x33c]
006c2b26  c7459800200000            MOV dword ptr [EBP + -0x68],0x2000
006c2b2d  56                        PUSH ESI
006c2b2e  8bcf                      MOV ECX,EDI
006c2b30  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
006c2b37  c7851cffffff00000041      MOV dword ptr [EBP + 0xffffff1c],0x41000000
006c2b41  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
006c2b4b  e890870000                CALL 0x006cb2e0
006c2b50  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
006c2b56  c78524ffffff00008040      MOV dword ptr [EBP + 0xffffff24],0x40800000
006c2b60  50                        PUSH EAX
006c2b61  6a08                      PUSH 0x8
006c2b63  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
006c2b69  c78528ffffff00000000      MOV dword ptr [EBP + 0xffffff28],0x0
006c2b73  50                        PUSH EAX
006c2b74  56                        PUSH ESI
006c2b75  eb73                      JMP 0x006c2bea
006c2b77  c78538ffffffc2030000      MOV dword ptr [EBP + 0xffffff38],0x3c2
006c2b81  e8fa3b2900                CALL 0x00956780
006c2b86  83ec08                    SUB ESP,0x8
006c2b89  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006c2b91  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c2b98  6a00                      PUSH 0x0
006c2b9a  6a02                      PUSH 0x2
006c2b9c  51                        PUSH ECX
006c2b9d  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c2ba4  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
006c2baa  ffb538ffffff              PUSH dword ptr [EBP + 0xffffff38]
006c2bb0  e87bb02600                CALL 0x0092dc30
006c2bb5  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
006c2bbb  c7854cffffff8fc275bd      MOV dword ptr [EBP + 0xffffff4c],0xbd75c28f
006c2bc5  50                        PUSH EAX
006c2bc6  6a08                      PUSH 0x8
006c2bc8  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
006c2bce  c78530ffffff00002041      MOV dword ptr [EBP + 0xffffff30],0x41200000
006c2bd8  50                        PUSH EAX
006c2bd9  8d873c030000              LEA EAX,[EDI + 0x33c]
006c2bdf  c78534ffffff00000000      MOV dword ptr [EBP + 0xffffff34],0x0
006c2be9  50                        PUSH EAX
006c2bea  8bcf                      MOV ECX,EDI
006c2bec  e8ef860000                CALL 0x006cb2e0
006c2bf1  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006c2bf4  83f80a                    CMP EAX,0xa
006c2bf7  730c                      JNC 0x006c2c05
006c2bf9  8bcf                      MOV ECX,EDI
006c2bfb  e850e4daff                CALL 0x00471050
006c2c00  e9aa150000                JMP 0x006c41af
006c2c05  83f814                    CMP EAX,0x14
006c2c08  730c                      JNC 0x006c2c16
006c2c0a  8bcf                      MOV ECX,EDI
006c2c0c  e8aff0daff                CALL 0x00471cc0
006c2c11  e999150000                JMP 0x006c41af
006c2c16  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006c2c1c  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
006c2c22  83e1fb                    AND ECX,0xfffffffb
006c2c25  81c900000400              OR ECX,0x40000
006c2c2b  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
006c2c31  898f68010000              MOV dword ptr [EDI + 0x168],ECX
006c2c37  e973150000                JMP 0x006c41af
006c2c3c  8bcf                      MOV ECX,EDI
006c2c3e  e8fdffdaff                CALL 0x00472c40
006c2c43  e967150000                JMP 0x006c41af
006c2c48  8bcf                      MOV ECX,EDI
006c2c4a  e8617ae4ff                CALL 0x0050a6b0
006c2c4f  e95b150000                JMP 0x006c41af
006c2c54  8bcf                      MOV ECX,EDI
006c2c56  e8457ce4ff                CALL 0x0050a8a0
006c2c5b  e94f150000                JMP 0x006c41af
006c2c60  8bcf                      MOV ECX,EDI
006c2c62  e88915dbff                CALL 0x004741f0
006c2c67  e943150000                JMP 0x006c41af
006c2c6c  8bcf                      MOV ECX,EDI
006c2c6e  e88d21dbff                CALL 0x00474e00
006c2c73  e937150000                JMP 0x006c41af
006c2c78  8bcf                      MOV ECX,EDI
006c2c7a  e89124dbff                CALL 0x00475110
006c2c7f  e92b150000                JMP 0x006c41af
006c2c84  8bcf                      MOV ECX,EDI
006c2c86  e8a52ddbff                CALL 0x00475a30
006c2c8b  e91f150000                JMP 0x006c41af
006c2c90  8bcf                      MOV ECX,EDI
006c2c92  e80934dbff                CALL 0x004760a0
006c2c97  e913150000                JMP 0x006c41af
006c2c9c  8bcf                      MOV ECX,EDI
006c2c9e  e8dd70dbff                CALL 0x00479d80
006c2ca3  e907150000                JMP 0x006c41af
006c2ca8  8bcf                      MOV ECX,EDI
006c2caa  e8a1aee6ff                CALL 0x0052db50
006c2caf  e9fb140000                JMP 0x006c41af
006c2cb4  8bcf                      MOV ECX,EDI
006c2cb6  e87581e6ff                CALL 0x0052ae30
006c2cbb  e9ef140000                JMP 0x006c41af
006c2cc0  8bcf                      MOV ECX,EDI
006c2cc2  e8793fd9ff                CALL 0x00456c40
006c2cc7  e9e3140000                JMP 0x006c41af
006c2ccc  8bcf                      MOV ECX,EDI
006c2cce  e86d4bd9ff                CALL 0x00457840
006c2cd3  e9d7140000                JMP 0x006c41af
006c2cd8  8bcf                      MOV ECX,EDI
006c2cda  e8915bd9ff                CALL 0x00458870
006c2cdf  e9cb140000                JMP 0x006c41af
006c2ce4  8bcf                      MOV ECX,EDI
006c2ce6  e83570d9ff                CALL 0x00459d20
006c2ceb  e9bf140000                JMP 0x006c41af
006c2cf0  8bcf                      MOV ECX,EDI
006c2cf2  e869a0d9ff                CALL 0x0045cd60
006c2cf7  e9b3140000                JMP 0x006c41af
006c2cfc  8bcf                      MOV ECX,EDI
006c2cfe  e82d8bd9ff                CALL 0x0045b830
006c2d03  e9a7140000                JMP 0x006c41af
006c2d08  8bcf                      MOV ECX,EDI
006c2d0a  e8513bdbff                CALL 0x00476860
006c2d0f  e99b140000                JMP 0x006c41af
006c2d14  8bcf                      MOV ECX,EDI
006c2d16  e865c5e4ff                CALL 0x0050f280
006c2d1b  e98f140000                JMP 0x006c41af
006c2d20  8bcf                      MOV ECX,EDI
006c2d22  e8b9dde4ff                CALL 0x00510ae0
006c2d27  e983140000                JMP 0x006c41af
006c2d2c  8bcf                      MOV ECX,EDI
006c2d2e  e81d44e5ff                CALL 0x00517150
006c2d33  e977140000                JMP 0x006c41af
006c2d38  8bcf                      MOV ECX,EDI
006c2d3a  e8a150e5ff                CALL 0x00517de0
006c2d3f  e96b140000                JMP 0x006c41af
006c2d44  8bcf                      MOV ECX,EDI
006c2d46  e81576dbff                CALL 0x0047a360
006c2d4b  e95f140000                JMP 0x006c41af
006c2d50  8bcf                      MOV ECX,EDI
006c2d52  e8c960e5ff                CALL 0x00518e20
006c2d57  e953140000                JMP 0x006c41af
006c2d5c  8bcf                      MOV ECX,EDI
006c2d5e  e83d7de5ff                CALL 0x0051aaa0
006c2d63  e947140000                JMP 0x006c41af
006c2d68  8bcf                      MOV ECX,EDI
006c2d6a  e80188e5ff                CALL 0x0051b570
006c2d6f  e93b140000                JMP 0x006c41af
006c2d74  8bcf                      MOV ECX,EDI
006c2d76  e8c592e5ff                CALL 0x0051c040
006c2d7b  e92f140000                JMP 0x006c41af
006c2d80  8bcf                      MOV ECX,EDI
006c2d82  e8a99de5ff                CALL 0x0051cb30
006c2d87  e923140000                JMP 0x006c41af
006c2d8c  8bcf                      MOV ECX,EDI
006c2d8e  e86da5e5ff                CALL 0x0051d300
006c2d93  e917140000                JMP 0x006c41af
006c2d98  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
006c2d9f  0f856d060000              JNZ 0x006c3412
006c2da5  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
006c2dac  8db7bc030000              LEA ESI,[EDI + 0x3bc]
006c2db2  0f8536060000              JNZ 0x006c33ee
006c2db8  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
006c2dbe  2500000020                AND EAX,0x20000000
006c2dc3  c6853fffffff01            MOV byte ptr [EBP + 0xffffff3f],0x1
006c2dca  83c800                    OR EAX,0x0
006c2dcd  7507                      JNZ 0x006c2dd6
006c2dcf  c6853fffffff00            MOV byte ptr [EBP + 0xffffff3f],0x0
006c2dd6  a17816c700                MOV EAX,[0x00c71678]
006c2ddb  6a00                      PUSH 0x0
006c2ddd  6a00                      PUSH 0x0
006c2ddf  6aff                      PUSH -0x1
006c2de1  ff772c                    PUSH dword ptr [EDI + 0x2c]
006c2de4  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006c2dea  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
006c2df0  6a5c                      PUSH 0x5c
006c2df2  81c118120000              ADD ECX,0x1218
006c2df8  50                        PUSH EAX
006c2df9  e86281d5ff                CALL 0x0041af60
006c2dfe  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
006c2e05  33c0                      XOR EAX,EAX
006c2e07  f30f100dc8aeba00          MOVSS XMM1,dword ptr [0x00baaec8]
006c2e0f  8b9500ffffff              MOV EDX,dword ptr [EBP + 0xffffff00]
006c2e15  898538ffffff              MOV dword ptr [EBP + 0xffffff38],EAX
006c2e1b  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
006c2e23  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
006c2e29  899528ffffff              MOV dword ptr [EBP + 0xffffff28],EDX
006c2e2f  398508ffffff              CMP dword ptr [EBP + 0xffffff08],EAX
006c2e35  0f86af010000              JBE 0x006c2fea
006c2e3b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
006c2e40  6a00                      PUSH 0x0
006c2e42  68acd6c500                PUSH 0xc5d6ac
006c2e47  68dcd5c500                PUSH 0xc5d5dc
006c2e4c  6a00                      PUSH 0x0
006c2e4e  ff3482                    PUSH dword ptr [EDX + EAX*0x4]
006c2e51  e85bda4200                CALL 0x00af08b1
006c2e56  8bf0                      MOV ESI,EAX
006c2e58  83c414                    ADD ESP,0x14
006c2e5b  85f6                      TEST ESI,ESI
006c2e5d  0f848e000000              JZ 0x006c2ef1
006c2e63  83bec003000000            CMP dword ptr [ESI + 0x3c0],0x0
006c2e6a  0f8581000000              JNZ 0x006c2ef1
006c2e70  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
006c2e76  81e100000020              AND ECX,0x20000000
006c2e7c  83c900                    OR ECX,0x0
006c2e7f  7404                      JZ 0x006c2e85
006c2e81  b001                      MOV AL,0x1
006c2e83  eb02                      JMP 0x006c2e87
006c2e85  32c0                      XOR AL,AL
006c2e87  3a853fffffff              CMP AL,byte ptr [EBP + 0xffffff3f]
006c2e8d  7562                      JNZ 0x006c2ef1
006c2e8f  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
006c2e97  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
006c2e9f  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
006c2ea7  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
006c2eaf  f30f59c0                  MULSS XMM0,XMM0
006c2eb3  f30f59c9                  MULSS XMM1,XMM1
006c2eb7  f30f58c1                  ADDSS XMM0,XMM1
006c2ebb  e8902bd7ff                CALL 0x00435a50
006c2ec0  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
006c2ec8  8b8d38ffffff              MOV ECX,dword ptr [EBP + 0xffffff38]
006c2ece  f30f5cc8                  SUBSS XMM1,XMM0
006c2ed2  85c9                      TEST ECX,ECX
006c2ed4  7409                      JZ 0x006c2edf
006c2ed6  0f2f8d2cffffff            COMISS XMM1,dword ptr [EBP + 0xffffff2c]
006c2edd  7618                      JBE 0x006c2ef7
006c2edf  8bce                      MOV ECX,ESI
006c2ee1  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
006c2ee9  898d38ffffff              MOV dword ptr [EBP + 0xffffff38],ECX
006c2eef  eb06                      JMP 0x006c2ef7
006c2ef1  8b8d38ffffff              MOV ECX,dword ptr [EBP + 0xffffff38]
006c2ef7  8b8534ffffff              MOV EAX,dword ptr [EBP + 0xffffff34]
006c2efd  8b9528ffffff              MOV EDX,dword ptr [EBP + 0xffffff28]
006c2f03  40                        INC EAX
006c2f04  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
006c2f0a  3b8508ffffff              CMP EAX,dword ptr [EBP + 0xffffff08]
006c2f10  0f822affffff              JC 0x006c2e40
006c2f16  85c9                      TEST ECX,ECX
006c2f18  0f84c6000000              JZ 0x006c2fe4
006c2f1e  8db1c0030000              LEA ESI,[ECX + 0x3c0]
006c2f24  8b0e                      MOV ECX,dword ptr [ESI]
006c2f26  85c9                      TEST ECX,ECX
006c2f28  7418                      JZ 0x006c2f42
006c2f2a  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
006c2f30  89b534ffffff              MOV dword ptr [EBP + 0xffffff34],ESI
006c2f36  81c1cc030000              ADD ECX,0x3cc
006c2f3c  50                        PUSH EAX
006c2f3d  e8cec2e0ff                CALL 0x004cf210
006c2f42  56                        PUSH ESI
006c2f43  8bcf                      MOV ECX,EDI
006c2f45  893e                      MOV dword ptr [ESI],EDI
006c2f47  e8a4ade0ff                CALL 0x004cdcf0
006c2f4c  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
006c2f52  8db7bc030000              LEA ESI,[EDI + 0x3bc]
006c2f58  85c9                      TEST ECX,ECX
006c2f5a  7418                      JZ 0x006c2f74
006c2f5c  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
006c2f62  89b534ffffff              MOV dword ptr [EBP + 0xffffff34],ESI
006c2f68  81c1cc030000              ADD ECX,0x3cc
006c2f6e  50                        PUSH EAX
006c2f6f  e89cc2e0ff                CALL 0x004cf210
006c2f74  8b8538ffffff              MOV EAX,dword ptr [EBP + 0xffffff38]
006c2f7a  8bc8                      MOV ECX,EAX
006c2f7c  56                        PUSH ESI
006c2f7d  8906                      MOV dword ptr [ESI],EAX
006c2f7f  e86cade0ff                CALL 0x004cdcf0
006c2f84  8b8538ffffff              MOV EAX,dword ptr [EBP + 0xffffff38]
006c2f8a  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
006c2f90  898d2cffffff              MOV dword ptr [EBP + 0xffffff2c],ECX
006c2f96  85c9                      TEST ECX,ECX
006c2f98  7450                      JZ 0x006c2fea
006c2f9a  8b97ec0b0000              MOV EDX,dword ptr [EDI + 0xbec]
006c2fa0  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
006c2fa6  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
006c2fac  85d2                      TEST EDX,EDX
006c2fae  7424                      JZ 0x006c2fd4
006c2fb0  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
006c2fb6  8d8acc030000              LEA ECX,[EDX + 0x3cc]
006c2fbc  50                        PUSH EAX
006c2fbd  e84ec2e0ff                CALL 0x004cf210
006c2fc2  8b8d2cffffff              MOV ECX,dword ptr [EBP + 0xffffff2c]
006c2fc8  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
006c2fce  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
006c2fd4  8bb534ffffff              MOV ESI,dword ptr [EBP + 0xffffff34]
006c2fda  8bd1                      MOV EDX,ECX
006c2fdc  50                        PUSH EAX
006c2fdd  8916                      MOV dword ptr [ESI],EDX
006c2fdf  e80cade0ff                CALL 0x004cdcf0
006c2fe4  8db7bc030000              LEA ESI,[EDI + 0x3bc]
006c2fea  833e00                    CMP dword ptr [ESI],0x0
006c2fed  0f85c9030000              JNZ 0x006c33bc
006c2ff3  a17816c700                MOV EAX,[0x00c71678]
006c2ff8  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c2ffe  6a00                      PUSH 0x0
006c3000  6a00                      PUSH 0x0
006c3002  6a00                      PUSH 0x0
006c3004  51                        PUSH ECX
006c3005  c7042400002042            MOV dword ptr [ESP],0x42200000
006c300c  51                        PUSH ECX
006c300d  8d8d1cffffff              LEA ECX,[EBP + 0xffffff1c]
006c3013  51                        PUSH ECX
006c3014  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006c301a  e801051500                CALL 0x00813520
006c301f  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
006c3023  0f85a8020000              JNZ 0x006c32d1
006c3029  e832bf0200                CALL 0x006eef60
006c302e  f30f108d1cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff1c]
006c3036  0f57d2                    XORPS XMM2,XMM2
006c3039  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
006c3041  f30f5c0d54a8ba00          SUBSS XMM1,dword ptr [0x00baa854]
006c3049  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c304f  f30f5cc2                  SUBSS XMM0,XMM2
006c3053  50                        PUSH EAX
006c3054  6a00                      PUSH 0x0
006c3056  57                        PUSH EDI
006c3057  6840b6c700                PUSH 0xc7b640
006c305c  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
006c3062  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
006c306a  50                        PUSH EAX
006c306b  ff772c                    PUSH dword ptr [EDI + 0x2c]
006c306e  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
006c3076  6a5c                      PUSH 0x5c
006c3078  e8a35ad6ff                CALL 0x00428b20
006c307d  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
006c3084  8bf0                      MOV ESI,EAX
006c3086  89b538ffffff              MOV dword ptr [EBP + 0xffffff38],ESI
006c308c  7419                      JZ 0x006c30a7
006c308e  6a00                      PUSH 0x0
006c3090  6a00                      PUSH 0x0
006c3092  6aff                      PUSH -0x1
006c3094  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
006c309a  e8d12bd7ff                CALL 0x00435c70
006c309f  50                        PUSH EAX
006c30a0  8bce                      MOV ECX,ESI
006c30a2  e8c9a7feff                CALL 0x006ad870
006c30a7  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
006c30ad  8d86c0030000              LEA EAX,[ESI + 0x3c0]
006c30b3  85c9                      TEST ECX,ECX
006c30b5  741e                      JZ 0x006c30d5
006c30b7  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
006c30bd  81c1cc030000              ADD ECX,0x3cc
006c30c3  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
006c30c9  50                        PUSH EAX
006c30ca  e841c1e0ff                CALL 0x004cf210
006c30cf  8d86c0030000              LEA EAX,[ESI + 0x3c0]
006c30d5  50                        PUSH EAX
006c30d6  8bcf                      MOV ECX,EDI
006c30d8  8938                      MOV dword ptr [EAX],EDI
006c30da  e811ace0ff                CALL 0x004cdcf0
006c30df  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
006c30e5  8d87bc030000              LEA EAX,[EDI + 0x3bc]
006c30eb  85c9                      TEST ECX,ECX
006c30ed  741e                      JZ 0x006c310d
006c30ef  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
006c30f5  81c1cc030000              ADD ECX,0x3cc
006c30fb  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
006c3101  50                        PUSH EAX
006c3102  e809c1e0ff                CALL 0x004cf210
006c3107  8d87bc030000              LEA EAX,[EDI + 0x3bc]
006c310d  50                        PUSH EAX
006c310e  8bce                      MOV ECX,ESI
006c3110  8930                      MOV dword ptr [EAX],ESI
006c3112  e8d9abe0ff                CALL 0x004cdcf0
006c3117  e844be0200                CALL 0x006eef60
006c311c  f30f108d1cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff1c]
006c3124  0f57d2                    XORPS XMM2,XMM2
006c3127  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
006c312f  f30f580d54a8ba00          ADDSS XMM1,dword ptr [0x00baa854]
006c3137  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c313d  f30f58c2                  ADDSS XMM0,XMM2
006c3141  50                        PUSH EAX
006c3142  6a01                      PUSH 0x1
006c3144  57                        PUSH EDI
006c3145  6840b6c700                PUSH 0xc7b640
006c314a  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
006c3150  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
006c3158  50                        PUSH EAX
006c3159  ff772c                    PUSH dword ptr [EDI + 0x2c]
006c315c  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
006c3164  6a5c                      PUSH 0x5c
006c3166  e8b559d6ff                CALL 0x00428b20
006c316b  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
006c3172  8bf0                      MOV ESI,EAX
006c3174  7419                      JZ 0x006c318f
006c3176  6a00                      PUSH 0x0
006c3178  6a00                      PUSH 0x0
006c317a  6aff                      PUSH -0x1
006c317c  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
006c3182  e8e92ad7ff                CALL 0x00435c70
006c3187  50                        PUSH EAX
006c3188  8bce                      MOV ECX,ESI
006c318a  e8e1a6feff                CALL 0x006ad870
006c318f  8b86c0030000              MOV EAX,dword ptr [ESI + 0x3c0]
006c3195  8d8ec0030000              LEA ECX,[ESI + 0x3c0]
006c319b  85c0                      TEST EAX,EAX
006c319d  741e                      JZ 0x006c31bd
006c319f  898d34ffffff              MOV dword ptr [EBP + 0xffffff34],ECX
006c31a5  8d88cc030000              LEA ECX,[EAX + 0x3cc]
006c31ab  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
006c31b1  50                        PUSH EAX
006c31b2  e859c0e0ff                CALL 0x004cf210
006c31b7  8d8ec0030000              LEA ECX,[ESI + 0x3c0]
006c31bd  8b8538ffffff              MOV EAX,dword ptr [EBP + 0xffffff38]
006c31c3  8901                      MOV dword ptr [ECX],EAX
006c31c5  51                        PUSH ECX
006c31c6  8bc8                      MOV ECX,EAX
006c31c8  e823abe0ff                CALL 0x004cdcf0
006c31cd  8b8538ffffff              MOV EAX,dword ptr [EBP + 0xffffff38]
006c31d3  05bc030000                ADD EAX,0x3bc
006c31d8  89852cffffff              MOV dword ptr [EBP + 0xffffff2c],EAX
006c31de  8b08                      MOV ECX,dword ptr [EAX]
006c31e0  85c9                      TEST ECX,ECX
006c31e2  741e                      JZ 0x006c3202
006c31e4  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
006c31ea  81c1cc030000              ADD ECX,0x3cc
006c31f0  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
006c31f6  50                        PUSH EAX
006c31f7  e814c0e0ff                CALL 0x004cf210
006c31fc  8b852cffffff              MOV EAX,dword ptr [EBP + 0xffffff2c]
006c3202  50                        PUSH EAX
006c3203  8bce                      MOV ECX,ESI
006c3205  8930                      MOV dword ptr [EAX],ESI
006c3207  e8e4aae0ff                CALL 0x004cdcf0
006c320c  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
006c3212  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
006c3218  85c9                      TEST ECX,ECX
006c321a  741e                      JZ 0x006c323a
006c321c  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
006c3222  81c1cc030000              ADD ECX,0x3cc
006c3228  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
006c322e  50                        PUSH EAX
006c322f  e8dcbfe0ff                CALL 0x004cf210
006c3234  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
006c323a  50                        PUSH EAX
006c323b  8bce                      MOV ECX,ESI
006c323d  8930                      MOV dword ptr [EAX],ESI
006c323f  e8acaae0ff                CALL 0x004cdcf0
006c3244  8b8538ffffff              MOV EAX,dword ptr [EBP + 0xffffff38]
006c324a  05ec0b0000                ADD EAX,0xbec
006c324f  89852cffffff              MOV dword ptr [EBP + 0xffffff2c],EAX
006c3255  8b08                      MOV ECX,dword ptr [EAX]
006c3257  85c9                      TEST ECX,ECX
006c3259  741e                      JZ 0x006c3279
006c325b  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
006c3261  81c1cc030000              ADD ECX,0x3cc
006c3267  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
006c326d  50                        PUSH EAX
006c326e  e89dbfe0ff                CALL 0x004cf210
006c3273  8b852cffffff              MOV EAX,dword ptr [EBP + 0xffffff2c]
006c3279  50                        PUSH EAX
006c327a  8bce                      MOV ECX,ESI
006c327c  8930                      MOV dword ptr [EAX],ESI
006c327e  e86daae0ff                CALL 0x004cdcf0
006c3283  8b86ec0b0000              MOV EAX,dword ptr [ESI + 0xbec]
006c3289  8d8eec0b0000              LEA ECX,[ESI + 0xbec]
006c328f  85c0                      TEST EAX,EAX
006c3291  741e                      JZ 0x006c32b1
006c3293  898d34ffffff              MOV dword ptr [EBP + 0xffffff34],ECX
006c3299  8d88cc030000              LEA ECX,[EAX + 0x3cc]
006c329f  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
006c32a5  50                        PUSH EAX
006c32a6  e865bfe0ff                CALL 0x004cf210
006c32ab  8d8eec0b0000              LEA ECX,[ESI + 0xbec]
006c32b1  8b8538ffffff              MOV EAX,dword ptr [EBP + 0xffffff38]
006c32b7  8901                      MOV dword ptr [ECX],EAX
006c32b9  51                        PUSH ECX
006c32ba  8bc8                      MOV ECX,EAX
006c32bc  e82faae0ff                CALL 0x004cdcf0
006c32c1  8b8d38ffffff              MOV ECX,dword ptr [EBP + 0xffffff38]
006c32c7  8b01                      MOV EAX,dword ptr [ECX]
006c32c9  ff500c                    CALL dword ptr [EAX + 0xc]
006c32cc  e9e4000000                JMP 0x006c33b5
006c32d1  e88abc0200                CALL 0x006eef60
006c32d6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c32dc  8bf0                      MOV ESI,EAX
006c32de  6a00                      PUSH 0x0
006c32e0  6a00                      PUSH 0x0
006c32e2  6a00                      PUSH 0x0
006c32e4  51                        PUSH ECX
006c32e5  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
006c32eb  8d873c030000              LEA EAX,[EDI + 0x33c]
006c32f1  c7042400002042            MOV dword ptr [ESP],0x42200000
006c32f8  50                        PUSH EAX
006c32f9  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
006c32ff  50                        PUSH EAX
006c3300  e81b021500                CALL 0x00813520
006c3305  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c330b  56                        PUSH ESI
006c330c  6a00                      PUSH 0x0
006c330e  57                        PUSH EDI
006c330f  6840b6c700                PUSH 0xc7b640
006c3314  50                        PUSH EAX
006c3315  ff772c                    PUSH dword ptr [EDI + 0x2c]
006c3318  6a5c                      PUSH 0x5c
006c331a  e80158d6ff                CALL 0x00428b20
006c331f  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
006c3326  8bf0                      MOV ESI,EAX
006c3328  89b534ffffff              MOV dword ptr [EBP + 0xffffff34],ESI
006c332e  7419                      JZ 0x006c3349
006c3330  6a00                      PUSH 0x0
006c3332  6a00                      PUSH 0x0
006c3334  6aff                      PUSH -0x1
006c3336  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
006c333c  e82f29d7ff                CALL 0x00435c70
006c3341  50                        PUSH EAX
006c3342  8bce                      MOV ECX,ESI
006c3344  e827a5feff                CALL 0x006ad870
006c3349  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
006c334f  81c6c0030000              ADD ESI,0x3c0
006c3355  85c9                      TEST ECX,ECX
006c3357  7418                      JZ 0x006c3371
006c3359  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
006c335f  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
006c3365  81c1cc030000              ADD ECX,0x3cc
006c336b  50                        PUSH EAX
006c336c  e89fbee0ff                CALL 0x004cf210
006c3371  56                        PUSH ESI
006c3372  8bcf                      MOV ECX,EDI
006c3374  893e                      MOV dword ptr [ESI],EDI
006c3376  e875a9e0ff                CALL 0x004cdcf0
006c337b  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
006c3381  8db7bc030000              LEA ESI,[EDI + 0x3bc]
006c3387  85c9                      TEST ECX,ECX
006c3389  7418                      JZ 0x006c33a3
006c338b  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
006c3391  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
006c3397  81c1cc030000              ADD ECX,0x3cc
006c339d  50                        PUSH EAX
006c339e  e86dbee0ff                CALL 0x004cf210
006c33a3  8b8534ffffff              MOV EAX,dword ptr [EBP + 0xffffff34]
006c33a9  8906                      MOV dword ptr [ESI],EAX
006c33ab  56                        PUSH ESI
006c33ac  8bf0                      MOV ESI,EAX
006c33ae  8bce                      MOV ECX,ESI
006c33b0  e83ba9e0ff                CALL 0x004cdcf0
006c33b5  8b06                      MOV EAX,dword ptr [ESI]
006c33b7  8bce                      MOV ECX,ESI
006c33b9  ff500c                    CALL dword ptr [EAX + 0xc]
006c33bc  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c33c3  80bdfcfeffff00            CMP byte ptr [EBP + 0xfffffefc],0x0
006c33ca  7522                      JNZ 0x006c33ee
006c33cc  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
006c33d3  b101                      MOV CL,0x1
006c33d5  8b9528ffffff              MOV EDX,dword ptr [EBP + 0xffffff28]
006c33db  6a00                      PUSH 0x0
006c33dd  6a00                      PUSH 0x0
006c33df  e8cc143a00                CALL 0x00a648b0
006c33e4  83c408                    ADD ESP,0x8
006c33e7  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c33ee  838f6801000001            OR dword ptr [EDI + 0x168],0x1
006c33f5  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
006c33fc  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
006c3406  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
006c340d  e99d0d0000                JMP 0x006c41af
006c3412  8bcf                      MOV ECX,EDI
006c3414  e8a7ebd9ff                CALL 0x00461fc0
006c3419  e9910d0000                JMP 0x006c41af
006c341e  8bcf                      MOV ECX,EDI
006c3420  e8cbbee5ff                CALL 0x0051f2f0
006c3425  e9850d0000                JMP 0x006c41af
006c342a  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
006c3431  75eb                      JNZ 0x006c341e
006c3433  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
006c343d  e96d0d0000                JMP 0x006c41af
006c3442  8bcf                      MOV ECX,EDI
006c3444  e817d8e5ff                CALL 0x00520c60
006c3449  e9610d0000                JMP 0x006c41af
006c344e  8bcf                      MOV ECX,EDI
006c3450  e88bc7daff                CALL 0x0046fbe0
006c3455  e9550d0000                JMP 0x006c41af
006c345a  8bcf                      MOV ECX,EDI
006c345c  e84fe6e5ff                CALL 0x00521ab0
006c3461  e9490d0000                JMP 0x006c41af
006c3466  8bcf                      MOV ECX,EDI
006c3468  e8c3efe5ff                CALL 0x00522430
006c346d  e93d0d0000                JMP 0x006c41af
006c3472  8bcf                      MOV ECX,EDI
006c3474  e887fcd9ff                CALL 0x00463100
006c3479  e9310d0000                JMP 0x006c41af
006c347e  8bcf                      MOV ECX,EDI
006c3480  e87b31daff                CALL 0x00466600
006c3485  e9250d0000                JMP 0x006c41af
006c348a  8bcf                      MOV ECX,EDI
006c348c  e8df41daff                CALL 0x00467670
006c3491  e9190d0000                JMP 0x006c41af
006c3496  8bcf                      MOV ECX,EDI
006c3498  e81314e1ff                CALL 0x004d48b0
006c349d  e90d0d0000                JMP 0x006c41af
006c34a2  8bcf                      MOV ECX,EDI
006c34a4  e8a793dbff                CALL 0x0047c850
006c34a9  e9010d0000                JMP 0x006c41af
006c34ae  8bcf                      MOV ECX,EDI
006c34b0  e83bace5ff                CALL 0x0051e0f0
006c34b5  e9f50c0000                JMP 0x006c41af
006c34ba  8bcf                      MOV ECX,EDI
006c34bc  e80fa3d9ff                CALL 0x0045d7d0
006c34c1  e9e90c0000                JMP 0x006c41af
006c34c6  8bcf                      MOV ECX,EDI
006c34c8  e883abd9ff                CALL 0x0045e050
006c34cd  e9dd0c0000                JMP 0x006c41af
006c34d2  8bcf                      MOV ECX,EDI
006c34d4  e847bad9ff                CALL 0x0045ef20
006c34d9  e9d10c0000                JMP 0x006c41af
006c34de  8bcf                      MOV ECX,EDI
006c34e0  e81bc7d9ff                CALL 0x0045fc00
006c34e5  e9c50c0000                JMP 0x006c41af
006c34ea  8bcf                      MOV ECX,EDI
006c34ec  e80f28e4ff                CALL 0x00505d00
006c34f1  e9b90c0000                JMP 0x006c41af
006c34f6  8bcf                      MOV ECX,EDI
006c34f8  e8f3f9e5ff                CALL 0x00522ef0
006c34fd  e9ad0c0000                JMP 0x006c41af
006c3502  8bcf                      MOV ECX,EDI
006c3504  e8970be6ff                CALL 0x005240a0
006c3509  e9a10c0000                JMP 0x006c41af
006c350e  8bcf                      MOV ECX,EDI
006c3510  e8fb14e6ff                CALL 0x00524a10
006c3515  e9950c0000                JMP 0x006c41af
006c351a  8bcf                      MOV ECX,EDI
006c351c  e86fdde0ff                CALL 0x004d1290
006c3521  e9890c0000                JMP 0x006c41af
006c3526  8bcf                      MOV ECX,EDI
006c3528  e873a3dbff                CALL 0x0047d8a0
006c352d  e97d0c0000                JMP 0x006c41af
006c3532  8bcf                      MOV ECX,EDI
006c3534  e807c1dbff                CALL 0x0047f640
006c3539  e9710c0000                JMP 0x006c41af
006c353e  8bcf                      MOV ECX,EDI
006c3540  e80b21e6ff                CALL 0x00525650
006c3545  e9650c0000                JMP 0x006c41af
006c354a  8bcf                      MOV ECX,EDI
006c354c  e82f4cdaff                CALL 0x00468180
006c3551  e9590c0000                JMP 0x006c41af
006c3556  8bcf                      MOV ECX,EDI
006c3558  e8c3ecffff                CALL 0x006c2220
006c355d  e94d0c0000                JMP 0x006c41af
006c3562  8bcf                      MOV ECX,EDI
006c3564  e8b72de4ff                CALL 0x00506320
006c3569  e9410c0000                JMP 0x006c41af
006c356e  8bcf                      MOV ECX,EDI
006c3570  e80bd5e6ff                CALL 0x00530a80
006c3575  e9350c0000                JMP 0x006c41af
006c357a  8bcf                      MOV ECX,EDI
006c357c  e8cfdde6ff                CALL 0x00531350
006c3581  e9290c0000                JMP 0x006c41af
006c3586  8bcf                      MOV ECX,EDI
006c3588  e823e5e6ff                CALL 0x00531ab0
006c358d  e91d0c0000                JMP 0x006c41af
006c3592  8bcf                      MOV ECX,EDI
006c3594  e837ece6ff                CALL 0x005321d0
006c3599  e9110c0000                JMP 0x006c41af
006c359e  8bcf                      MOV ECX,EDI
006c35a0  e85b37e7ff                CALL 0x00536d00
006c35a5  e9050c0000                JMP 0x006c41af
006c35aa  8bcf                      MOV ECX,EDI
006c35ac  e80f4ce7ff                CALL 0x005381c0
006c35b1  e9f90b0000                JMP 0x006c41af
006c35b6  8bcf                      MOV ECX,EDI
006c35b8  e8d365e7ff                CALL 0x00539b90
006c35bd  e9ed0b0000                JMP 0x006c41af
006c35c2  8bcf                      MOV ECX,EDI
006c35c4  e87775e7ff                CALL 0x0053ab40
006c35c9  e9e10b0000                JMP 0x006c41af
006c35ce  8bcf                      MOV ECX,EDI
006c35d0  e81b7de7ff                CALL 0x0053b2f0
006c35d5  e9d50b0000                JMP 0x006c41af
006c35da  8bcf                      MOV ECX,EDI
006c35dc  e8ff84e7ff                CALL 0x0053bae0
006c35e1  e9c90b0000                JMP 0x006c41af
006c35e6  8bcf                      MOV ECX,EDI
006c35e8  e8e3cae7ff                CALL 0x005400d0
006c35ed  e9bd0b0000                JMP 0x006c41af
006c35f2  8bcf                      MOV ECX,EDI
006c35f4  e817dedbff                CALL 0x00481410
006c35f9  e9b10b0000                JMP 0x006c41af
006c35fe  8bcf                      MOV ECX,EDI
006c3600  e80b01dcff                CALL 0x00483710
006c3605  e9a50b0000                JMP 0x006c41af
006c360a  8bcf                      MOV ECX,EDI
006c360c  e89f1fdcff                CALL 0x004855b0
006c3611  e9990b0000                JMP 0x006c41af
006c3616  8bcf                      MOV ECX,EDI
006c3618  e89337dcff                CALL 0x00486db0
006c361d  e98d0b0000                JMP 0x006c41af
006c3622  8bcf                      MOV ECX,EDI
006c3624  e857d1d9ff                CALL 0x00460780
006c3629  e9810b0000                JMP 0x006c41af
006c362e  8bcf                      MOV ECX,EDI
006c3630  e86b42dcff                CALL 0x004878a0
006c3635  e9750b0000                JMP 0x006c41af
006c363a  8bcf                      MOV ECX,EDI
006c363c  e8ef77dcff                CALL 0x0048ae30
006c3641  e9690b0000                JMP 0x006c41af
006c3646  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
006c364a  8bcf                      MOV ECX,EDI
006c364c  752d                      JNZ 0x006c367b
006c364e  e83d4ae0ff                CALL 0x004c8090
006c3653  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006c365a  0f844f0b0000              JZ 0x006c41af
006c3660  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
006c3666  81a768010000fffffbff      AND dword ptr [EDI + 0x168],0xfffbffff
006c3670  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
006c3676  e9340b0000                JMP 0x006c41af
006c367b  e89093e0ff                CALL 0x004cca10
006c3680  e92a0b0000                JMP 0x006c41af
006c3685  8bcf                      MOV ECX,EDI
006c3687  e844e20000                CALL 0x006d18d0
006c368c  e91e0b0000                JMP 0x006c41af
006c3691  8bcf                      MOV ECX,EDI
006c3693  e8e8dbeaff                CALL 0x00571280
006c3698  e9120b0000                JMP 0x006c41af
006c369d  8bcf                      MOV ECX,EDI
006c369f  e86ccee7ff                CALL 0x00540510
006c36a4  e9060b0000                JMP 0x006c41af
006c36a9  8bcf                      MOV ECX,EDI
006c36ab  e8e078e4ff                CALL 0x0050af90
006c36b0  e9fa0a0000                JMP 0x006c41af
006c36b5  8bcf                      MOV ECX,EDI
006c36b7  e814ffe4ff                CALL 0x005135d0
006c36bc  e9ee0a0000                JMP 0x006c41af
006c36c1  8bcf                      MOV ECX,EDI
006c36c3  e808aee4ff                CALL 0x0050e4d0
006c36c8  e9e20a0000                JMP 0x006c41af
006c36cd  8bcf                      MOV ECX,EDI
006c36cf  e8ccade7ff                CALL 0x0053e4a0
006c36d4  e9d60a0000                JMP 0x006c41af
006c36d9  8bcf                      MOV ECX,EDI
006c36db  e810f6e6ff                CALL 0x00532cf0
006c36e0  e9ca0a0000                JMP 0x006c41af
006c36e5  8bcf                      MOV ECX,EDI
006c36e7  e89404e7ff                CALL 0x00533b80
006c36ec  e9be0a0000                JMP 0x006c41af
006c36f1  8bcf                      MOV ECX,EDI
006c36f3  e8a83de7ff                CALL 0x005374a0
006c36f8  e9b20a0000                JMP 0x006c41af
006c36fd  8bcf                      MOV ECX,EDI
006c36ff  e86c54e7ff                CALL 0x00538b70
006c3704  e9a60a0000                JMP 0x006c41af
006c3709  8bcf                      MOV ECX,EDI
006c370b  e89065dcff                CALL 0x00489ca0
006c3710  e99a0a0000                JMP 0x006c41af
006c3715  8bcf                      MOV ECX,EDI
006c3717  e8d4d6e7ff                CALL 0x00540df0
006c371c  e98e0a0000                JMP 0x006c41af
006c3721  8bcf                      MOV ECX,EDI
006c3723  e8e8e0e7ff                CALL 0x00541810
006c3728  e9820a0000                JMP 0x006c41af
006c372d  8bcf                      MOV ECX,EDI
006c372f  e8ace5e7ff                CALL 0x00541ce0
006c3734  e9760a0000                JMP 0x006c41af
006c3739  8bcf                      MOV ECX,EDI
006c373b  e810eedcff                CALL 0x00492550
006c3740  e96a0a0000                JMP 0x006c41af
006c3745  8bcf                      MOV ECX,EDI
006c3747  e894f4e7ff                CALL 0x00542be0
006c374c  e95e0a0000                JMP 0x006c41af
006c3751  8bcf                      MOV ECX,EDI
006c3753  e8588cdcff                CALL 0x0048c3b0
006c3758  e9520a0000                JMP 0x006c41af
006c375d  8bcf                      MOV ECX,EDI
006c375f  e8acb9dcff                CALL 0x0048f110
006c3764  e9460a0000                JMP 0x006c41af
006c3769  8bcf                      MOV ECX,EDI
006c376b  e810cfdcff                CALL 0x00490680
006c3770  e93a0a0000                JMP 0x006c41af
006c3775  8bcf                      MOV ECX,EDI
006c3777  e884fadcff                CALL 0x00493200
006c377c  e92e0a0000                JMP 0x006c41af
006c3781  8bcf                      MOV ECX,EDI
006c3783  e828b6edff                CALL 0x0059edb0
006c3788  e9220a0000                JMP 0x006c41af
006c378d  8bcf                      MOV ECX,EDI
006c378f  e88c10eeff                CALL 0x005a4820
006c3794  e9160a0000                JMP 0x006c41af
006c3799  8bcf                      MOV ECX,EDI
006c379b  e8c023eeff                CALL 0x005a5b60
006c37a0  e90a0a0000                JMP 0x006c41af
006c37a5  8bcf                      MOV ECX,EDI
006c37a7  e8e42e0100                CALL 0x006d6690
006c37ac  e9fe090000                JMP 0x006c41af
006c37b1  8bcf                      MOV ECX,EDI
006c37b3  e878b6dcff                CALL 0x0048ee30
006c37b8  e9f2090000                JMP 0x006c41af
006c37bd  8bcf                      MOV ECX,EDI
006c37bf  e84cbbdfff                CALL 0x004bf310
006c37c4  e9e6090000                JMP 0x006c41af
006c37c9  8bcf                      MOV ECX,EDI
006c37cb  e870b6dfff                CALL 0x004bee40
006c37d0  e9da090000                JMP 0x006c41af
006c37d5  8bcf                      MOV ECX,EDI
006c37d7  e8a433eeff                CALL 0x005a6b80
006c37dc  e9ce090000                JMP 0x006c41af
006c37e1  8bcf                      MOV ECX,EDI
006c37e3  e808afdfff                CALL 0x004be6f0
006c37e8  e9c2090000                JMP 0x006c41af
006c37ed  8bcf                      MOV ECX,EDI
006c37ef  e83cc5dfff                CALL 0x004bfd30
006c37f4  e9b6090000                JMP 0x006c41af
006c37f9  8bcf                      MOV ECX,EDI
006c37fb  e810e9e4ff                CALL 0x00512110
006c3800  e9aa090000                JMP 0x006c41af
006c3805  8bcf                      MOV ECX,EDI
006c3807  e8c488e7ff                CALL 0x0053c0d0
006c380c  e99e090000                JMP 0x006c41af
006c3811  8bcf                      MOV ECX,EDI
006c3813  e8f81dddff                CALL 0x00495610
006c3818  e992090000                JMP 0x006c41af
006c381d  8bcf                      MOV ECX,EDI
006c381f  e8acf8e7ff                CALL 0x005430d0
006c3824  e986090000                JMP 0x006c41af
006c3829  8bcf                      MOV ECX,EDI
006c382b  e8d02cdeff                CALL 0x004a6500
006c3830  e97a090000                JMP 0x006c41af
006c3835  8bcf                      MOV ECX,EDI
006c3837  e804f9d8ff                CALL 0x00453140
006c383c  e96e090000                JMP 0x006c41af
006c3841  8bcf                      MOV ECX,EDI
006c3843  e8d8fee7ff                CALL 0x00543720
006c3848  e962090000                JMP 0x006c41af
006c384d  8bcf                      MOV ECX,EDI
006c384f  e85c37ddff                CALL 0x00496fb0
006c3854  e956090000                JMP 0x006c41af
006c3859  8bcf                      MOV ECX,EDI
006c385b  e8400ae8ff                CALL 0x005442a0
006c3860  e94a090000                JMP 0x006c41af
006c3865  8bcf                      MOV ECX,EDI
006c3867  e80427e8ff                CALL 0x00545f70
006c386c  e93e090000                JMP 0x006c41af
006c3871  8bcf                      MOV ECX,EDI
006c3873  e8b83ae8ff                CALL 0x00547330
006c3878  e932090000                JMP 0x006c41af
006c387d  8bcf                      MOV ECX,EDI
006c387f  e84c21e0ff                CALL 0x004c59d0
006c3884  e926090000                JMP 0x006c41af
006c3889  8bcf                      MOV ECX,EDI
006c388b  e8d042e8ff                CALL 0x00547b60
006c3890  e91a090000                JMP 0x006c41af
006c3895  8bcf                      MOV ECX,EDI
006c3897  e8245ae8ff                CALL 0x005492c0
006c389c  e90e090000                JMP 0x006c41af
006c38a1  8bcf                      MOV ECX,EDI
006c38a3  e87845e7ff                CALL 0x00537e20
006c38a8  e902090000                JMP 0x006c41af
006c38ad  8bcf                      MOV ECX,EDI
006c38af  e8cc74e8ff                CALL 0x0054ad80
006c38b4  e9f6080000                JMP 0x006c41af
006c38b9  8bcf                      MOV ECX,EDI
006c38bb  e8e064e6ff                CALL 0x00529da0
006c38c0  e9ea080000                JMP 0x006c41af
006c38c5  8bcf                      MOV ECX,EDI
006c38c7  e88499e8ff                CALL 0x0054d250
006c38cc  e9de080000                JMP 0x006c41af
006c38d1  8bcf                      MOV ECX,EDI
006c38d3  e8a8b2e8ff                CALL 0x0054eb80
006c38d8  e9d2080000                JMP 0x006c41af
006c38dd  8bcf                      MOV ECX,EDI
006c38df  e8dccce8ff                CALL 0x005505c0
006c38e4  e9c6080000                JMP 0x006c41af
006c38e9  8bcf                      MOV ECX,EDI
006c38eb  e8b0dae8ff                CALL 0x005513a0
006c38f0  e9ba080000                JMP 0x006c41af
006c38f5  8bcf                      MOV ECX,EDI
006c38f7  e834e4e8ff                CALL 0x00551d30
006c38fc  e9ae080000                JMP 0x006c41af
006c3901  8bcf                      MOV ECX,EDI
006c3903  e8c8e9e8ff                CALL 0x005522d0
006c3908  e9a2080000                JMP 0x006c41af
006c390d  8bcf                      MOV ECX,EDI
006c390f  e81cf4e8ff                CALL 0x00552d30
006c3914  e996080000                JMP 0x006c41af
006c3919  8bcf                      MOV ECX,EDI
006c391b  e8c009e9ff                CALL 0x005542e0
006c3920  e98a080000                JMP 0x006c41af
006c3925  8bcf                      MOV ECX,EDI
006c3927  e88429e9ff                CALL 0x005562b0
006c392c  e97e080000                JMP 0x006c41af
006c3931  8bcf                      MOV ECX,EDI
006c3933  e868c6eaff                CALL 0x0056ffa0
006c3938  e972080000                JMP 0x006c41af
006c393d  8bcf                      MOV ECX,EDI
006c393f  e86c4de9ff                CALL 0x005586b0
006c3944  e966080000                JMP 0x006c41af
006c3949  8bcf                      MOV ECX,EDI
006c394b  e8705ae9ff                CALL 0x005593c0
006c3950  e95a080000                JMP 0x006c41af
006c3955  8bcf                      MOV ECX,EDI
006c3957  e8b466e9ff                CALL 0x0055a010
006c395c  e94e080000                JMP 0x006c41af
006c3961  8bcf                      MOV ECX,EDI
006c3963  e8b873e9ff                CALL 0x0055ad20
006c3968  e942080000                JMP 0x006c41af
006c396d  8bcf                      MOV ECX,EDI
006c396f  e8cc7de9ff                CALL 0x0055b740
006c3974  e936080000                JMP 0x006c41af
006c3979  8bcf                      MOV ECX,EDI
006c397b  e8908ee9ff                CALL 0x0055c810
006c3980  e92a080000                JMP 0x006c41af
006c3985  8bcf                      MOV ECX,EDI
006c3987  e8a498e9ff                CALL 0x0055d230
006c398c  e91e080000                JMP 0x006c41af
006c3991  8bcf                      MOV ECX,EDI
006c3993  e8d8cbe9ff                CALL 0x00560570
006c3998  e912080000                JMP 0x006c41af
006c399d  8bcf                      MOV ECX,EDI
006c399f  e8cc89e4ff                CALL 0x0050c370
006c39a4  e906080000                JMP 0x006c41af
006c39a9  8bcf                      MOV ECX,EDI
006c39ab  e89055e4ff                CALL 0x00508f40
006c39b0  e9fa070000                JMP 0x006c41af
006c39b5  8bcf                      MOV ECX,EDI
006c39b7  e8a4c1e9ff                CALL 0x0055fb60
006c39bc  e9ee070000                JMP 0x006c41af
006c39c1  8bcf                      MOV ECX,EDI
006c39c3  e8d803eaff                CALL 0x00563da0
006c39c8  e9e2070000                JMP 0x006c41af
006c39cd  8bcf                      MOV ECX,EDI
006c39cf  e85c15eaff                CALL 0x00564f30
006c39d4  e9d6070000                JMP 0x006c41af
006c39d9  8bcf                      MOV ECX,EDI
006c39db  e8800ee7ff                CALL 0x00534860
006c39e0  e9ca070000                JMP 0x006c41af
006c39e5  8bcf                      MOV ECX,EDI
006c39e7  e89418e7ff                CALL 0x00535280
006c39ec  e9be070000                JMP 0x006c41af
006c39f1  8bcf                      MOV ECX,EDI
006c39f3  e87899e4ff                CALL 0x0050d370
006c39f8  e9b2070000                JMP 0x006c41af
006c39fd  8bcf                      MOV ECX,EDI
006c39ff  e89cd2e9ff                CALL 0x00560ca0
006c3a04  e9a6070000                JMP 0x006c41af
006c3a09  8bcf                      MOV ECX,EDI
006c3a0b  e810e0e9ff                CALL 0x00561a20
006c3a10  e99a070000                JMP 0x006c41af
006c3a15  8bcf                      MOV ECX,EDI
006c3a17  e874e8e9ff                CALL 0x00562290
006c3a1c  e98e070000                JMP 0x006c41af
006c3a21  8bcf                      MOV ECX,EDI
006c3a23  e8d8f4e9ff                CALL 0x00562f00
006c3a28  e982070000                JMP 0x006c41af
006c3a2d  8bcf                      MOV ECX,EDI
006c3a2f  e88c21eaff                CALL 0x00565bc0
006c3a34  e976070000                JMP 0x006c41af
006c3a39  8bcf                      MOV ECX,EDI
006c3a3b  e860aee0ff                CALL 0x004ce8a0
006c3a40  e96a070000                JMP 0x006c41af
006c3a45  8bcf                      MOV ECX,EDI
006c3a47  e8144fe3ff                CALL 0x004f8960
006c3a4c  e95e070000                JMP 0x006c41af
006c3a51  8bcf                      MOV ECX,EDI
006c3a53  e89853e3ff                CALL 0x004f8df0
006c3a58  e952070000                JMP 0x006c41af
006c3a5d  8bcf                      MOV ECX,EDI
006c3a5f  e86c60e3ff                CALL 0x004f9ad0
006c3a64  e946070000                JMP 0x006c41af
006c3a69  8bcf                      MOV ECX,EDI
006c3a6b  e86070e3ff                CALL 0x004faad0
006c3a70  e93a070000                JMP 0x006c41af
006c3a75  8bcf                      MOV ECX,EDI
006c3a77  e85431e4ff                CALL 0x00506bd0
006c3a7c  e92e070000                JMP 0x006c41af
006c3a81  8bcf                      MOV ECX,EDI
006c3a83  e88882e3ff                CALL 0x004fbd10
006c3a88  e922070000                JMP 0x006c41af
006c3a8d  8bcf                      MOV ECX,EDI
006c3a8f  e88c91e3ff                CALL 0x004fcc20
006c3a94  e916070000                JMP 0x006c41af
006c3a99  8bcf                      MOV ECX,EDI
006c3a9b  e8a09ae3ff                CALL 0x004fd540
006c3aa0  e90a070000                JMP 0x006c41af
006c3aa5  8bcf                      MOV ECX,EDI
006c3aa7  e8d4a4e3ff                CALL 0x004fdf80
006c3aac  e9fe060000                JMP 0x006c41af
006c3ab1  8bcf                      MOV ECX,EDI
006c3ab3  e8d8cee3ff                CALL 0x00500990
006c3ab8  e9f2060000                JMP 0x006c41af
006c3abd  8bcf                      MOV ECX,EDI
006c3abf  e8acd4e3ff                CALL 0x00500f70
006c3ac4  e9e6060000                JMP 0x006c41af
006c3ac9  8bcf                      MOV ECX,EDI
006c3acb  e850bbe3ff                CALL 0x004ff620
006c3ad0  e9da060000                JMP 0x006c41af
006c3ad5  8bcf                      MOV ECX,EDI
006c3ad7  e854e4e3ff                CALL 0x00501f30
006c3adc  e9ce060000                JMP 0x006c41af
006c3ae1  8bcf                      MOV ECX,EDI
006c3ae3  e898eee3ff                CALL 0x00502980
006c3ae8  e9c2060000                JMP 0x006c41af
006c3aed  8bcf                      MOV ECX,EDI
006c3aef  e80cf8e3ff                CALL 0x00503300
006c3af4  e9b6060000                JMP 0x006c41af
006c3af9  8bcf                      MOV ECX,EDI
006c3afb  e8f0ffe3ff                CALL 0x00503af0
006c3b00  e9aa060000                JMP 0x006c41af
006c3b05  8bcf                      MOV ECX,EDI
006c3b07  e8c406e4ff                CALL 0x005041d0
006c3b0c  e99e060000                JMP 0x006c41af
006c3b11  8bcf                      MOV ECX,EDI
006c3b13  e8280fe4ff                CALL 0x00504a40
006c3b18  e992060000                JMP 0x006c41af
006c3b1d  8bcf                      MOV ECX,EDI
006c3b1f  e87c17e4ff                CALL 0x005052a0
006c3b24  e986060000                JMP 0x006c41af
006c3b29  8bcf                      MOV ECX,EDI
006c3b2b  e860c0e2ff                CALL 0x004efb90
006c3b30  e97a060000                JMP 0x006c41af
006c3b35  8bcf                      MOV ECX,EDI
006c3b37  e83416e2ff                CALL 0x004e5170
006c3b3c  e96e060000                JMP 0x006c41af
006c3b41  8bcf                      MOV ECX,EDI
006c3b43  e8280ee2ff                CALL 0x004e4970
006c3b48  e962060000                JMP 0x006c41af
006c3b4d  8bcf                      MOV ECX,EDI
006c3b4f  e81c29e6ff                CALL 0x00526470
006c3b54  e956060000                JMP 0x006c41af
006c3b59  8bcf                      MOV ECX,EDI
006c3b5b  e8102ae2ff                CALL 0x004e6570
006c3b60  e94a060000                JMP 0x006c41af
006c3b65  8bcf                      MOV ECX,EDI
006c3b67  e83443e2ff                CALL 0x004e7ea0
006c3b6c  e93e060000                JMP 0x006c41af
006c3b71  8bcf                      MOV ECX,EDI
006c3b73  e80848e2ff                CALL 0x004e8380
006c3b78  e932060000                JMP 0x006c41af
006c3b7d  8bcf                      MOV ECX,EDI
006c3b7f  e89c8be6ff                CALL 0x0052c720
006c3b84  e926060000                JMP 0x006c41af
006c3b89  8bcf                      MOV ECX,EDI
006c3b8b  e84068e2ff                CALL 0x004ea3d0
006c3b90  e91a060000                JMP 0x006c41af
006c3b95  8bcf                      MOV ECX,EDI
006c3b97  e8a49ce2ff                CALL 0x004ed840
006c3b9c  e90e060000                JMP 0x006c41af
006c3ba1  8bcf                      MOV ECX,EDI
006c3ba3  e89886e2ff                CALL 0x004ec240
006c3ba8  e902060000                JMP 0x006c41af
006c3bad  8bcf                      MOV ECX,EDI
006c3baf  e85c90e2ff                CALL 0x004ecc10
006c3bb4  e9f6050000                JMP 0x006c41af
006c3bb9  8bcf                      MOV ECX,EDI
006c3bbb  e860f0e2ff                CALL 0x004f2c20
006c3bc0  e9ea050000                JMP 0x006c41af
006c3bc5  8bcf                      MOV ECX,EDI
006c3bc7  e8f4e2e2ff                CALL 0x004f1ec0
006c3bcc  e9de050000                JMP 0x006c41af
006c3bd1  8bcf                      MOV ECX,EDI
006c3bd3  e80829e3ff                CALL 0x004f64e0
006c3bd8  e9d2050000                JMP 0x006c41af
006c3bdd  8bcf                      MOV ECX,EDI
006c3bdf  e84c0be3ff                CALL 0x004f4730
006c3be4  e9c6050000                JMP 0x006c41af
006c3be9  8bcf                      MOV ECX,EDI
006c3beb  e8003be3ff                CALL 0x004f76f0
006c3bf0  e9ba050000                JMP 0x006c41af
006c3bf5  8bcf                      MOV ECX,EDI
006c3bf7  e86442e3ff                CALL 0x004f7e60
006c3bfc  e9ae050000                JMP 0x006c41af
006c3c01  8bcf                      MOV ECX,EDI
006c3c03  e8a83be1ff                CALL 0x004d77b0
006c3c08  e9a2050000                JMP 0x006c41af
006c3c0d  8bcf                      MOV ECX,EDI
006c3c0f  e8ec53e1ff                CALL 0x004d9000
006c3c14  e996050000                JMP 0x006c41af
006c3c19  8bcf                      MOV ECX,EDI
006c3c1b  e89017e5ff                CALL 0x005153b0
006c3c20  e98a050000                JMP 0x006c41af
006c3c25  8bcf                      MOV ECX,EDI
006c3c27  e8747ae1ff                CALL 0x004db6a0
006c3c2c  e97e050000                JMP 0x006c41af
006c3c31  8bcf                      MOV ECX,EDI
006c3c33  e85888e1ff                CALL 0x004dc490
006c3c38  e972050000                JMP 0x006c41af
006c3c3d  8bcf                      MOV ECX,EDI
006c3c3f  e84c8ee1ff                CALL 0x004dca90
006c3c44  e966050000                JMP 0x006c41af
006c3c49  8bcf                      MOV ECX,EDI
006c3c4b  e8a09be1ff                CALL 0x004dd7f0
006c3c50  e95a050000                JMP 0x006c41af
006c3c55  8bcf                      MOV ECX,EDI
006c3c57  e8e4ade1ff                CALL 0x004dea40
006c3c5c  e94e050000                JMP 0x006c41af
006c3c61  8bcf                      MOV ECX,EDI
006c3c63  e888b7e1ff                CALL 0x004df3f0
006c3c68  e942050000                JMP 0x006c41af
006c3c6d  8bcf                      MOV ECX,EDI
006c3c6f  e83cd5e4ff                CALL 0x005111b0
006c3c74  e936050000                JMP 0x006c41af
006c3c79  8bcf                      MOV ECX,EDI
006c3c7b  e850d1e1ff                CALL 0x004e0dd0
006c3c80  e92a050000                JMP 0x006c41af
006c3c85  8bcf                      MOV ECX,EDI
006c3c87  e8b4eee1ff                CALL 0x004e2b40
006c3c8c  e91e050000                JMP 0x006c41af
006c3c91  8bcf                      MOV ECX,EDI
006c3c93  e828fce1ff                CALL 0x004e38c0
006c3c98  e912050000                JMP 0x006c41af
006c3c9d  8bcf                      MOV ECX,EDI
006c3c9f  e81cb4d7ff                CALL 0x0043f0c0
006c3ca4  e906050000                JMP 0x006c41af
006c3ca9  8bcf                      MOV ECX,EDI
006c3cab  e8f0d0d8ff                CALL 0x00450da0
006c3cb0  e9fa040000                JMP 0x006c41af
006c3cb5  8bcf                      MOV ECX,EDI
006c3cb7  e834d6ddff                CALL 0x004a12f0
006c3cbc  e9ee040000                JMP 0x006c41af
006c3cc1  8bcf                      MOV ECX,EDI
006c3cc3  e818e2deff                CALL 0x004b1ee0
006c3cc8  e9e2040000                JMP 0x006c41af
006c3ccd  8bcf                      MOV ECX,EDI
006c3ccf  e80c56dfff                CALL 0x004b92e0
006c3cd4  e9d6040000                JMP 0x006c41af
006c3cd9  8bcf                      MOV ECX,EDI
006c3cdb  e8d07cdfff                CALL 0x004bb9b0
006c3ce0  e9ca040000                JMP 0x006c41af
006c3ce5  8bcf                      MOV ECX,EDI
006c3ce7  e8844debff                CALL 0x00578a70
006c3cec  e9be040000                JMP 0x006c41af
006c3cf1  8bcf                      MOV ECX,EDI
006c3cf3  e8985bebff                CALL 0x00579890
006c3cf8  e9b2040000                JMP 0x006c41af
006c3cfd  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
006c3d01  8bcf                      MOV ECX,EDI
006c3d03  750a                      JNZ 0x006c3d0f
006c3d05  e8a69becff                CALL 0x0058d8b0
006c3d0a  e9a0040000                JMP 0x006c41af
006c3d0f  e8bc71ecff                CALL 0x0058aed0
006c3d14  e996040000                JMP 0x006c41af
006c3d19  8bcf                      MOV ECX,EDI
006c3d1b  e8c060ddff                CALL 0x00499de0
006c3d20  e98a040000                JMP 0x006c41af
006c3d25  8bcf                      MOV ECX,EDI
006c3d27  e864b9e0ff                CALL 0x004cf690
006c3d2c  e97e040000                JMP 0x006c41af
006c3d31  8bcf                      MOV ECX,EDI
006c3d33  e88806dfff                CALL 0x004b43c0
006c3d38  e972040000                JMP 0x006c41af
006c3d3d  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006c3d40  85c0                      TEST EAX,EAX
006c3d42  750c                      JNZ 0x006c3d50
006c3d44  8bcf                      MOV ECX,EDI
006c3d46  e8d53deeff                CALL 0x005a7b20
006c3d4b  e95f040000                JMP 0x006c41af
006c3d50  83f801                    CMP EAX,0x1
006c3d53  750c                      JNZ 0x006c3d61
006c3d55  8bcf                      MOV ECX,EDI
006c3d57  e87477eeff                CALL 0x005ab4d0
006c3d5c  e94e040000                JMP 0x006c41af
006c3d61  83f80a                    CMP EAX,0xa
006c3d64  750c                      JNZ 0x006c3d72
006c3d66  8bcf                      MOV ECX,EDI
006c3d68  e8e394eeff                CALL 0x005ad250
006c3d6d  e93d040000                JMP 0x006c41af
006c3d72  83f814                    CMP EAX,0x14
006c3d75  0f8534040000              JNZ 0x006c41af
006c3d7b  8bcf                      MOV ECX,EDI
006c3d7d  e81e9beeff                CALL 0x005ad8a0
006c3d82  e928040000                JMP 0x006c41af
006c3d87  8bcf                      MOV ECX,EDI
006c3d89  e8a28aedff                CALL 0x0059c830
006c3d8e  e91c040000                JMP 0x006c41af
006c3d93  8bcf                      MOV ECX,EDI
006c3d95  e8a6f2ddff                CALL 0x004a3040
006c3d9a  e910040000                JMP 0x006c41af
006c3d9f  8bcf                      MOV ECX,EDI
006c3da1  e80a2cebff                CALL 0x005769b0
006c3da6  e904040000                JMP 0x006c41af
006c3dab  8bcf                      MOV ECX,EDI
006c3dad  e8ee94dfff                CALL 0x004bd2a0
006c3db2  e9f8030000                JMP 0x006c41af
006c3db7  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
006c3dbe  0f85eb030000              JNZ 0x006c41af
006c3dc4  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
006c3dca  81f9804ec300              CMP ECX,0xc34e80
006c3dd0  742a                      JZ 0x006c3dfc
006c3dd2  0f1005804ec300            MOVUPS XMM0,xmmword ptr [0x00c34e80]
006c3dd9  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
006c3ddc  0f1005904ec300            MOVUPS XMM0,xmmword ptr [0x00c34e90]
006c3de3  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
006c3de7  f30f7e05a04ec300          MOVQ XMM0,qword ptr [0x00c34ea0]
006c3def  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
006c3df4  a1a84ec300                MOV EAX,[0x00c34ea8]
006c3df9  894128                    MOV dword ptr [ECX + 0x28],EAX
006c3dfc  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
006c3e06  e9a4030000                JMP 0x006c41af
006c3e0b  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
006c3e0f  750c                      JNZ 0x006c3e1d
006c3e11  8bcf                      MOV ECX,EDI
006c3e13  e818f2eaff                CALL 0x00573030
006c3e18  e992030000                JMP 0x006c41af
006c3e1d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
006c3e23  85c0                      TEST EAX,EAX
006c3e25  0f846c010000              JZ 0x006c3f97
006c3e2b  83f803                    CMP EAX,0x3
006c3e2e  0f857b030000              JNZ 0x006c41af
006c3e34  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
006c3e3a  85f6                      TEST ESI,ESI
006c3e3c  0f843d010000              JZ 0x006c3f7f
006c3e42  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
006c3e49  0f8530010000              JNZ 0x006c3f7f
006c3e4f  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
006c3e57  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
006c3e5f  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
006c3e67  e8d496d5ff                CALL 0x0041d540
006c3e6c  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
006c3e74  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
006c3e7c  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
006c3e84  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
006c3e8c  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
006c3e94  e88796d5ff                CALL 0x0041d520
006c3e99  0f28c8                    MOVAPS XMM1,XMM0
006c3e9c  f30f590d24a9ba00          MULSS XMM1,dword ptr [0x00baa924]
006c3ea4  f30f588e40030000          ADDSS XMM1,dword ptr [ESI + 0x340]
006c3eac  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
006c3eb4  0f28c1                    MOVAPS XMM0,XMM1
006c3eb7  f30f118d34ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM1
006c3ebf  f30f59c1                  MULSS XMM0,XMM1
006c3ec3  f30f108d28ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff28]
006c3ecb  f30f59c9                  MULSS XMM1,XMM1
006c3ecf  f30f58c1                  ADDSS XMM0,XMM1
006c3ed3  e8781bd7ff                CALL 0x00435a50
006c3ed8  0f2f0520a1ba00            COMISS XMM0,dword ptr [0x00baa120]
006c3edf  7219                      JC 0x006c3efa
006c3ee1  0f28c8                    MOVAPS XMM1,XMM0
006c3ee4  f30f590d54a1ba00          MULSS XMM1,dword ptr [0x00baa154]
006c3eec  f30f5d0d30a6ba00          MINSS XMM1,dword ptr [0x00baa630]
006c3ef4  f30f5ec8                  DIVSS XMM1,XMM0
006c3ef8  eb03                      JMP 0x006c3efd
006c3efa  0f57c9                    XORPS XMM1,XMM1
006c3efd  f30f109528ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff28]
006c3f05  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
006c3f0d  f30f59d1                  MULSS XMM2,XMM1
006c3f11  f30f59d0                  MULSS XMM2,XMM0
006c3f15  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
006c3f1d  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
006c3f25  f30f109534ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff34]
006c3f2d  f30f59d1                  MULSS XMM2,XMM1
006c3f31  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
006c3f39  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
006c3f41  f30f59d0                  MULSS XMM2,XMM0
006c3f45  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006c3f4d  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
006c3f55  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
006c3f5d  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
006c3f65  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
006c3f6d  e8cee7fbff                CALL 0x00682740
006c3f72  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
006c3f7a  e930020000                JMP 0x006c41af
006c3f7f  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
006c3f85  e8e61cd7ff                CALL 0x00435c70
006c3f8a  8b17                      MOV EDX,dword ptr [EDI]
006c3f8c  8bcf                      MOV ECX,EDI
006c3f8e  50                        PUSH EAX
006c3f8f  ff5224                    CALL dword ptr [EDX + 0x24]
006c3f92  e918020000                JMP 0x006c41af
006c3f97  e8c4af0200                CALL 0x006eef60
006c3f9c  83e007                    AND EAX,0x7
006c3f9f  8d4f48                    LEA ECX,[EDI + 0x48]
006c3fa2  33d2                      XOR EDX,EDX
006c3fa4  894730                    MOV dword ptr [EDI + 0x30],EAX
006c3fa7  3bd0                      CMP EDX,EAX
006c3fa9  6a00                      PUSH 0x0
006c3fab  1bd2                      SBB EDX,EDX
006c3fad  23d0                      AND EDX,EAX
006c3faf  b807000000                MOV EAX,0x7
006c3fb4  3bd0                      CMP EDX,EAX
006c3fb6  0f42c2                    CMOVC EAX,EDX
006c3fb9  ff3485601cb600            PUSH dword ptr [EAX*0x4 + 0xb61c60]
006c3fc0  e8bb63d4ff                CALL 0x0040a380
006c3fc5  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
006c3fcb  818f6801000000000100      OR dword ptr [EDI + 0x168],0x10000
006c3fd5  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
006c3fdf  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
006c3fe9  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
006c3fef  e9bb010000                JMP 0x006c41af
006c3ff4  8bcf                      MOV ECX,EDI
006c3ff6  e865d4ecff                CALL 0x00591460
006c3ffb  e9af010000                JMP 0x006c41af
006c4000  8bcf                      MOV ECX,EDI
006c4002  e8b9dcecff                CALL 0x00591cc0
006c4007  e9a3010000                JMP 0x006c41af
006c400c  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
006c4010  8bcf                      MOV ECX,EDI
006c4012  750a                      JNZ 0x006c401e
006c4014  e8f7b9ddff                CALL 0x0049fa10
006c4019  e991010000                JMP 0x006c41af
006c401e  e80d91ddff                CALL 0x0049d130
006c4023  e987010000                JMP 0x006c41af
006c4028  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
006c402c  8bcf                      MOV ECX,EDI
006c402e  750a                      JNZ 0x006c403a
006c4030  e80b01ecff                CALL 0x00584140
006c4035  e975010000                JMP 0x006c41af
006c403a  e8613aecff                CALL 0x00587aa0
006c403f  e96b010000                JMP 0x006c41af
006c4044  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006c4047  8bcf                      MOV ECX,EDI
006c4049  83f802                    CMP EAX,0x2
006c404c  750a                      JNZ 0x006c4058
006c404e  e8ddd6ebff                CALL 0x00581730
006c4053  e957010000                JMP 0x006c41af
006c4058  83f801                    CMP EAX,0x1
006c405b  750a                      JNZ 0x006c4067
006c405d  e83ea4ebff                CALL 0x0057e4a0
006c4062  e948010000                JMP 0x006c41af
006c4067  e8547eebff                CALL 0x0057bec0
006c406c  e93e010000                JMP 0x006c41af
006c4071  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006c4074  83f864                    CMP EAX,0x64
006c4077  0f8732010000              JA 0x006c41af
006c407d  0fb6807c496c00            MOVZX EAX,byte ptr [EAX + 0x6c497c]
006c4084  ff248564496c00            JMP dword ptr [EAX*0x4 + 0x6c4964]
006c408b  8bcf                      MOV ECX,EDI
006c408d  e8de50eaff                CALL 0x00569170
006c4092  e918010000                JMP 0x006c41af
006c4097  8bcf                      MOV ECX,EDI
006c4099  e8f264e1ff                CALL 0x004da590
006c409e  e90c010000                JMP 0x006c41af
006c40a3  8bcf                      MOV ECX,EDI
006c40a5  e8b68ceaff                CALL 0x0056cd60
006c40aa  e900010000                JMP 0x006c41af
006c40af  8bcf                      MOV ECX,EDI
006c40b1  e84a1deaff                CALL 0x00565e00
006c40b6  e9f4000000                JMP 0x006c41af
006c40bb  8bcf                      MOV ECX,EDI
006c40bd  e84e27eaff                CALL 0x00566810
006c40c2  e9e8000000                JMP 0x006c41af
006c40c7  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006c40ca  8bcf                      MOV ECX,EDI
006c40cc  83e801                    SUB EAX,0x1
006c40cf  7428                      JZ 0x006c40f9
006c40d1  83e801                    SUB EAX,0x1
006c40d4  7419                      JZ 0x006c40ef
006c40d6  83e808                    SUB EAX,0x8
006c40d9  740a                      JZ 0x006c40e5
006c40db  e8c06edeff                CALL 0x004aafa0
006c40e0  e9ca000000                JMP 0x006c41af
006c40e5  e816c1deff                CALL 0x004b0200
006c40ea  e9c0000000                JMP 0x006c41af
006c40ef  e8dca3deff                CALL 0x004ae4d0
006c40f4  e9b6000000                JMP 0x006c41af
006c40f9  e832c9deff                CALL 0x004b0a30
006c40fe  e9ac000000                JMP 0x006c41af
006c4103  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006c4106  48                        DEC EAX
006c4107  83f867                    CMP EAX,0x67
006c410a  0f8798000000              JA 0x006c41a8
006c4110  0fb680244a6c00            MOVZX EAX,byte ptr [EAX + 0x6c4a24]
006c4117  ff2485e4496c00            JMP dword ptr [EAX*0x4 + 0x6c49e4]
006c411e  8bcf                      MOV ECX,EDI
006c4120  e8fb1fedff                CALL 0x00596120
006c4125  e985000000                JMP 0x006c41af
006c412a  8bcf                      MOV ECX,EDI
006c412c  e8af30edff                CALL 0x005971e0
006c4131  eb7c                      JMP 0x006c41af
006c4133  8bcf                      MOV ECX,EDI
006c4135  e8262bedff                CALL 0x00596c60
006c413a  eb73                      JMP 0x006c41af
006c413c  8bcf                      MOV ECX,EDI
006c413e  e87d0bd8ff                CALL 0x00444cc0
006c4143  eb6a                      JMP 0x006c41af
006c4145  8bcf                      MOV ECX,EDI
006c4147  e83430d8ff                CALL 0x00447180
006c414c  eb61                      JMP 0x006c41af
006c414e  8bcf                      MOV ECX,EDI
006c4150  e85b36d8ff                CALL 0x004477b0
006c4155  eb58                      JMP 0x006c41af
006c4157  8bcf                      MOV ECX,EDI
006c4159  e8e25ed8ff                CALL 0x0044a040
006c415e  eb4f                      JMP 0x006c41af
006c4160  8bcf                      MOV ECX,EDI
006c4162  e88975d8ff                CALL 0x0044b6f0
006c4167  eb46                      JMP 0x006c41af
006c4169  8bcf                      MOV ECX,EDI
006c416b  e86069d8ff                CALL 0x0044aad0
006c4170  eb3d                      JMP 0x006c41af
006c4172  8bcf                      MOV ECX,EDI
006c4174  e8f77ed8ff                CALL 0x0044c070
006c4179  eb34                      JMP 0x006c41af
006c417b  8bcf                      MOV ECX,EDI
006c417d  e82eb1d8ff                CALL 0x0044f2b0
006c4182  eb2b                      JMP 0x006c41af
006c4184  8bcf                      MOV ECX,EDI
006c4186  e875cdd7ff                CALL 0x00440f00
006c418b  eb22                      JMP 0x006c41af
006c418d  8bcf                      MOV ECX,EDI
006c418f  e8bcfcd7ff                CALL 0x00443e50
006c4194  eb19                      JMP 0x006c41af
006c4196  8bcf                      MOV ECX,EDI
006c4198  e86307d8ff                CALL 0x00444900
006c419d  eb10                      JMP 0x006c41af
006c419f  8bcf                      MOV ECX,EDI
006c41a1  e88ac4d7ff                CALL 0x00440630
006c41a6  eb07                      JMP 0x006c41af
006c41a8  8bcf                      MOV ECX,EDI
006c41aa  e8b1e2ecff                CALL 0x00592460
006c41af  83bf740b000000            CMP dword ptr [EDI + 0xb74],0x0
006c41b6  7506                      JNZ 0x006c41be
006c41b8  57                        PUSH EDI
006c41b9  e802c91900                CALL 0x00860ac0
006c41be  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
006c41c1  64890d00000000            MOV dword ptr FS:[0x0],ECX
006c41c8  59                        POP ECX
006c41c9  5f                        POP EDI
006c41ca  5e                        POP ESI
006c41cb  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
006c41ce  33cd                      XOR ECX,EBP
006c41d0  e856af4200                CALL 0x00aef12b
006c41d5  8be5                      MOV ESP,EBP
006c41d7  5d                        POP EBP
006c41d8  8be3                      MOV ESP,EBX
006c41da  5b                        POP EBX
006c41db  c3                        RET
