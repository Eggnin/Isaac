; J460 NPC AI 0x007009a0 HELPER_ExplosionEffects
; types=4
; identities=4.17.0
; entry=007009a0
007009a0  53                        PUSH EBX
007009a1  8bdc                      MOV EBX,ESP
007009a3  83ec08                    SUB ESP,0x8
007009a6  83e4f8                    AND ESP,0xfffffff8
007009a9  83c404                    ADD ESP,0x4
007009ac  55                        PUSH EBP
007009ad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
007009b0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
007009b4  8bec                      MOV EBP,ESP
007009b6  6aff                      PUSH -0x1
007009b8  68e0c2af00                PUSH 0xafc2e0
007009bd  64a100000000              MOV EAX,FS:[0x0]
007009c3  50                        PUSH EAX
007009c4  53                        PUSH EBX
007009c5  81ecd0000000              SUB ESP,0xd0
007009cb  a1b493bf00                MOV EAX,[0x00bf93b4]
007009d0  33c5                      XOR EAX,EBP
007009d2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
007009d5  56                        PUSH ESI
007009d6  57                        PUSH EDI
007009d7  50                        PUSH EAX
007009d8  8d45f4                    LEA EAX,[EBP + -0xc]
007009db  64a300000000              MOV FS:[0x0],EAX
007009e1  898d74ffffff              MOV dword ptr [EBP + 0xffffff74],ECX
007009e7  8b4308                    MOV EAX,dword ptr [EBX + 0x8]
007009ea  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
007009ed  8b5318                    MOV EDX,dword ptr [EBX + 0x18]
007009f0  8b731c                    MOV ESI,dword ptr [EBX + 0x1c]
007009f3  230d6045c300              AND ECX,dword ptr [0x00c34560]
007009f9  23156845c300              AND EDX,dword ptr [0x00c34568]
007009ff  23356c45c300              AND ESI,dword ptr [0x00c3456c]
00700a05  8b7b20                    MOV EDI,dword ptr [EBX + 0x20]
00700a08  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
00700a0e  8b4314                    MOV EAX,dword ptr [EBX + 0x14]
00700a11  23056445c300              AND EAX,dword ptr [0x00c34564]
00700a17  0bc8                      OR ECX,EAX
00700a19  89bd68ffffff              MOV dword ptr [EBP + 0xffffff68],EDI
00700a1f  7508                      JNZ 0x00700a29
00700a21  0bd6                      OR EDX,ESI
00700a23  0f84f9030000              JZ 0x00700e22
00700a29  a17816c700                MOV EAX,[0x00c71678]
00700a2e  6a00                      PUSH 0x0
00700a30  6838d8c500                PUSH 0xc5d838
00700a35  68dcd5c500                PUSH 0xc5d5dc
00700a3a  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00700a40  6a00                      PUSH 0x0
00700a42  57                        PUSH EDI
00700a43  89b564ffffff              MOV dword ptr [EBP + 0xffffff64],ESI
00700a49  e863fe3e00                CALL 0x00af08b1
00700a4e  33c9                      XOR ECX,ECX
00700a50  83c414                    ADD ESP,0x14
00700a53  8bd0                      MOV EDX,EAX
00700a55  894d8c                    MOV dword ptr [EBP + -0x74],ECX
00700a58  895584                    MOV dword ptr [EBP + -0x7c],EDX
00700a5b  398e64120000              CMP dword ptr [ESI + 0x1264],ECX
00700a61  0f867a030000              JBE 0x00700de1
00700a67  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
00700a70  8b865c120000              MOV EAX,dword ptr [ESI + 0x125c]
00700a76  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
00700a79  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
00700a7c  894d90                    MOV dword ptr [EBP + -0x70],ECX
00700a7f  81f992010000              CMP ECX,0x192
00700a85  741e                      JZ 0x00700aa5
00700a87  81f905010000              CMP ECX,0x105
00700a8d  7416                      JZ 0x00700aa5
00700a8f  81f9ed000000              CMP ECX,0xed
00700a95  7506                      JNZ 0x00700a9d
00700a97  837e2c02                  CMP dword ptr [ESI + 0x2c],0x2
00700a9b  eb06                      JMP 0x00700aa3
00700a9d  81f992030000              CMP ECX,0x392
00700aa3  755a                      JNZ 0x00700aff
00700aa5  85ff                      TEST EDI,EDI
00700aa7  740f                      JZ 0x00700ab8
00700aa9  817f28e8030000            CMP dword ptr [EDI + 0x28],0x3e8
00700ab0  7506                      JNZ 0x00700ab8
00700ab2  837f2c1f                  CMP dword ptr [EDI + 0x2c],0x1f
00700ab6  7447                      JZ 0x00700aff
00700ab8  85d2                      TEST EDX,EDX
00700aba  7409                      JZ 0x00700ac5
00700abc  80ba4804000000            CMP byte ptr [EDX + 0x448],0x0
00700ac3  753a                      JNZ 0x00700aff
00700ac5  a17816c700                MOV EAX,[0x00c71678]
00700aca  83b8846502000d            CMP dword ptr [EAX + 0x26584],0xd
00700ad1  742c                      JZ 0x00700aff
00700ad3  f30f108e84030000          MOVSS XMM1,dword ptr [ESI + 0x384]
00700adb  0f28c1                    MOVAPS XMM0,XMM1
00700ade  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
00700ae6  f30f588680030000          ADDSS XMM0,dword ptr [ESI + 0x380]
00700aee  f30f5dc8                  MINSS XMM1,XMM0
00700af2  f30f118e80030000          MOVSS dword ptr [ESI + 0x380],XMM1
00700afa  e9c9020000                JMP 0x00700dc8
00700aff  a17816c700                MOV EAX,[0x00c71678]
00700b04  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00700b0b  7c0a                      JL 0x00700b17
00700b0d  83f901                    CMP ECX,0x1
00700b10  7505                      JNZ 0x00700b17
00700b12  894d90                    MOV dword ptr [EBP + -0x70],ECX
00700b15  eb15                      JMP 0x00700b2c
00700b17  83f90a                    CMP ECX,0xa
00700b1a  0f8ca8020000              JL 0x00700dc8
00700b20  81f9e8030000              CMP ECX,0x3e8
00700b26  0f8d9c020000              JGE 0x00700dc8
00700b2c  8b8688010000              MOV EAX,dword ptr [ESI + 0x188]
00700b32  83f801                    CMP EAX,0x1
00700b35  0f848d020000              JZ 0x00700dc8
00700b3b  85c0                      TEST EAX,EAX
00700b3d  0f8485020000              JZ 0x00700dc8
00700b43  80beb003000000            CMP byte ptr [ESI + 0x3b0],0x0
00700b4a  0f8578020000              JNZ 0x00700dc8
00700b50  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
00700b57  0f856b020000              JNZ 0x00700dc8
00700b5d  6a00                      PUSH 0x0
00700b5f  6a10                      PUSH 0x10
00700b61  8bce                      MOV ECX,ESI
00700b63  e8c868d1ff                CALL 0x00417430
00700b68  84c0                      TEST AL,AL
00700b6a  7415                      JZ 0x00700b81
00700b6c  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
00700b6f  3d22030000                CMP EAX,0x322
00700b74  740b                      JZ 0x00700b81
00700b76  3d62030000                CMP EAX,0x362
00700b7b  0f8544020000              JNZ 0x00700dc5
00700b81  85ff                      TEST EDI,EDI
00700b83  7410                      JZ 0x00700b95
00700b85  56                        PUSH ESI
00700b86  8bcf                      MOV ECX,EDI
00700b88  e81384faff                CALL 0x006a8fa0
00700b8d  84c0                      TEST AL,AL
00700b8f  0f8530020000              JNZ 0x00700dc5
00700b95  8b06                      MOV EAX,dword ptr [ESI]
00700b97  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
00700b9a  894580                    MOV dword ptr [EBP + -0x80],EAX
00700b9d  85ff                      TEST EDI,EDI
00700b9f  7465                      JZ 0x00700c06
00700ba1  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00700ba4  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00700bac  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00700bb4  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
00700bb7  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00700bba  8945c8                    MOV dword ptr [EBP + -0x38],EAX
00700bbd  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00700bc0  8945cc                    MOV dword ptr [EBP + -0x34],EAX
00700bc3  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
00700bc6  8945d0                    MOV dword ptr [EBP + -0x30],EAX
00700bc9  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00700bcf  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
00700bd4  2500010000                AND EAX,0x100
00700bd9  83c800                    OR EAX,0x0
00700bdc  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00700be4  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
00700be9  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00700bf1  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
00700bf6  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
00700bfb  7449                      JZ 0x00700c46
00700bfd  c7459001000000            MOV dword ptr [EBP + -0x70],0x1
00700c04  eb4b                      JMP 0x00700c51
00700c06  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00700c0e  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00700c16  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
00700c1d  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
00700c24  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00700c2b  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00700c32  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
00700c37  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
00700c3c  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
00700c41  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
00700c46  c7459000000000            MOV dword ptr [EBP + -0x70],0x0
00700c4d  85ff                      TEST EDI,EDI
00700c4f  7417                      JZ 0x00700c68
00700c51  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00700c57  2500000020                AND EAX,0x20000000
00700c5c  83c800                    OR EAX,0x0
00700c5f  740e                      JZ 0x00700c6f
00700c61  ba02000000                MOV EDX,0x2
00700c66  eb0d                      JMP 0x00700c75
00700c68  c7459000000000            MOV dword ptr [EBP + -0x70],0x0
00700c6f  33d2                      XOR EDX,EDX
00700c71  85ff                      TEST EDI,EDI
00700c73  7419                      JZ 0x00700c8e
00700c75  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00700c7b  33c0                      XOR EAX,EAX
00700c7d  81e100004000              AND ECX,0x400000
00700c83  0bc1                      OR EAX,ECX
00700c85  7407                      JZ 0x00700c8e
00700c87  b804000000                MOV EAX,0x4
00700c8c  eb02                      JMP 0x00700c90
00700c8e  33c0                      XOR EAX,EAX
00700c90  0b5590                    OR EDX,dword ptr [EBP + -0x70]
00700c93  f30f104324                MOVSS XMM0,dword ptr [EBX + 0x24]
00700c98  0bd0                      OR EDX,EAX
00700c9a  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00700ca2  8d45c4                    LEA EAX,[EBP + -0x3c]
00700ca5  6a1e                      PUSH 0x1e
00700ca7  50                        PUSH EAX
00700ca8  6a00                      PUSH 0x0
00700caa  6a00                      PUSH 0x0
00700cac  51                        PUSH ECX
00700cad  8bce                      MOV ECX,ESI
00700caf  8955e4                    MOV dword ptr [EBP + -0x1c],EDX
00700cb2  897de8                    MOV dword ptr [EBP + -0x18],EDI
00700cb5  f30f110424                MOVSS dword ptr [ESP],XMM0
00700cba  ff5580                    CALL dword ptr [EBP + -0x80]
00700cbd  85ff                      TEST EDI,EDI
00700cbf  7463                      JZ 0x00700d24
00700cc1  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00700cc4  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00700ccc  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00700cd4  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
00700cd7  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00700cda  8945c8                    MOV dword ptr [EBP + -0x38],EAX
00700cdd  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00700ce0  8945cc                    MOV dword ptr [EBP + -0x34],EAX
00700ce3  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
00700ce6  8945d0                    MOV dword ptr [EBP + -0x30],EAX
00700ce9  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00700cef  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
00700cf4  2500010000                AND EAX,0x100
00700cf9  83c800                    OR EAX,0x0
00700cfc  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00700d04  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
00700d09  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00700d11  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
00700d16  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
00700d1b  7447                      JZ 0x00700d64
00700d1d  ba01000000                MOV EDX,0x1
00700d22  eb46                      JMP 0x00700d6a
00700d24  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00700d2c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00700d34  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
00700d3b  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
00700d42  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00700d49  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00700d50  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
00700d55  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
00700d5a  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
00700d5f  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
00700d64  33d2                      XOR EDX,EDX
00700d66  85ff                      TEST EDI,EDI
00700d68  7419                      JZ 0x00700d83
00700d6a  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00700d70  2500000020                AND EAX,0x20000000
00700d75  83c800                    OR EAX,0x0
00700d78  740b                      JZ 0x00700d85
00700d7a  c7459002000000            MOV dword ptr [EBP + -0x70],0x2
00700d81  eb0d                      JMP 0x00700d90
00700d83  33d2                      XOR EDX,EDX
00700d85  c7459000000000            MOV dword ptr [EBP + -0x70],0x0
00700d8c  85ff                      TEST EDI,EDI
00700d8e  7419                      JZ 0x00700da9
00700d90  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00700d96  33c0                      XOR EAX,EAX
00700d98  81e100004000              AND ECX,0x400000
00700d9e  0bc1                      OR EAX,ECX
00700da0  7407                      JZ 0x00700da9
00700da2  b804000000                MOV EAX,0x4
00700da7  eb02                      JMP 0x00700dab
00700da9  33c0                      XOR EAX,EAX
00700dab  0bc2                      OR EAX,EDX
00700dad  897de8                    MOV dword ptr [EBP + -0x18],EDI
00700db0  0b4590                    OR EAX,dword ptr [EBP + -0x70]
00700db3  8bce                      MOV ECX,ESI
00700db5  6a00                      PUSH 0x0
00700db7  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
00700dba  8d45c4                    LEA EAX,[EBP + -0x3c]
00700dbd  6a3c                      PUSH 0x3c
00700dbf  50                        PUSH EAX
00700dc0  e8abcffaff                CALL 0x006add70
00700dc5  8b5584                    MOV EDX,dword ptr [EBP + -0x7c]
00700dc8  8b4d8c                    MOV ECX,dword ptr [EBP + -0x74]
00700dcb  8bb564ffffff              MOV ESI,dword ptr [EBP + 0xffffff64]
00700dd1  41                        INC ECX
00700dd2  894d8c                    MOV dword ptr [EBP + -0x74],ECX
00700dd5  3b8e64120000              CMP ECX,dword ptr [ESI + 0x1264]
00700ddb  0f828ffcffff              JC 0x00700a70
00700de1  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00700de8  8d45c0                    LEA EAX,[EBP + -0x40]
00700deb  50                        PUSH EAX
00700dec  a17816c700                MOV EAX,[0x00c71678]
00700df1  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00700df5  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
00700dfc  0f57c0                    XORPS XMM0,XMM0
00700dff  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00700e06  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00700e0c  81c118160000              ADD ECX,0x1618
00700e12  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00700e19  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00700e1d  e88e522900                CALL 0x009960b0
00700e22  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
00700e25  8b4314                    MOV EAX,dword ptr [EBX + 0x14]
00700e28  8b5318                    MOV EDX,dword ptr [EBX + 0x18]
00700e2b  8b731c                    MOV ESI,dword ptr [EBX + 0x1c]
00700e2e  230d904bc300              AND ECX,dword ptr [0x00c34b90]
00700e34  2305944bc300              AND EAX,dword ptr [0x00c34b94]
00700e3a  2315984bc300              AND EDX,dword ptr [0x00c34b98]
00700e40  23359c4bc300              AND ESI,dword ptr [0x00c34b9c]
00700e46  0bc8                      OR ECX,EAX
00700e48  7508                      JNZ 0x00700e52
00700e4a  0bd6                      OR EDX,ESI
00700e4c  0f8498070000              JZ 0x007015ea
00700e52  6a00                      PUSH 0x0
00700e54  6838d8c500                PUSH 0xc5d838
00700e59  68dcd5c500                PUSH 0xc5d5dc
00700e5e  6a00                      PUSH 0x0
00700e60  57                        PUSH EDI
00700e61  e84bfa3e00                CALL 0x00af08b1
00700e66  83c414                    ADD ESP,0x14
00700e69  85ff                      TEST EDI,EDI
00700e6b  0f8427050000              JZ 0x00701398
00700e71  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00700e74  83e80a                    SUB EAX,0xa
00700e77  3ddd030000                CMP EAX,0x3dd
00700e7c  8b87c8030000              MOV EAX,dword ptr [EDI + 0x3c8]
00700e82  0f879c000000              JA 0x00700f24
00700e88  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
00700e8e  33ff                      XOR EDI,EDI
00700e90  e8cbe0feff                CALL 0x006eef60
00700e95  660f6ec7                  MOVD XMM0,EDI
00700e99  8bf0                      MOV ESI,EAX
00700e9b  0f5bc0                    CVTDQ2PS XMM0,XMM0
00700e9e  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00700ea6  f30f59053ca1ba00          MULSS XMM0,dword ptr [0x00baa13c]
00700eae  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00700eb6  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
00700ebb  e880c6d1ff                CALL 0x0041d540
00700ec0  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00700ec8  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
00700ed0  f30f104580                MOVSS XMM0,dword ptr [EBP + -0x80]
00700ed5  e846c6d1ff                CALL 0x0041d520
00700eda  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00700ee2  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
00700ee8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00700eee  56                        PUSH ESI
00700eef  6a00                      PUSH 0x0
00700ef1  ffb564ffffff              PUSH dword ptr [EBP + 0xffffff64]
00700ef7  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
00700eff  50                        PUSH EAX
00700f00  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00700f06  6a00                      PUSH 0x0
00700f08  6a09                      PUSH 0x9
00700f0a  e8117cd2ff                CALL 0x00428b20
00700f0f  47                        INC EDI
00700f10  83ff08                    CMP EDI,0x8
00700f13  0f8c77ffffff              JL 0x00700e90
00700f19  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
00700f1f  e9c6060000                JMP 0x007015ea
00700f24  8bf7                      MOV ESI,EDI
00700f26  897584                    MOV dword ptr [EBP + -0x7c],ESI
00700f29  85c0                      TEST EAX,EAX
00700f2b  7417                      JZ 0x00700f44
00700f2d  0f1f00                    NOP dword ptr [EAX]
00700f30  8bf8                      MOV EDI,EAX
00700f32  897d84                    MOV dword ptr [EBP + -0x7c],EDI
00700f35  8b87c8030000              MOV EAX,dword ptr [EDI + 0x3c8]
00700f3b  85c0                      TEST EAX,EAX
00700f3d  75f1                      JNZ 0x00700f30
00700f3f  8bfe                      MOV EDI,ESI
00700f41  8b7584                    MOV ESI,dword ptr [EBP + -0x7c]
00700f44  837e2801                  CMP dword ptr [ESI + 0x28],0x1
00700f48  0f854a040000              JNZ 0x00701398
00700f4e  f30f108664140000          MOVSS XMM0,dword ptr [ESI + 0x1464]
00700f56  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
00700f5e  e8fddffeff                CALL 0x006eef60
00700f63  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
00700f6b  897590                    MOV dword ptr [EBP + -0x70],ESI
00700f6e  660f6ec0                  MOVD XMM0,EAX
00700f72  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00700f76  c1e81f                    SHR EAX,0x1f
00700f79  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00700f82  660f5ad0                  CVTPD2PS XMM2,XMM0
00700f86  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00700f8e  f30f59d1                  MULSS XMM2,XMM1
00700f92  f30f11558c                MOVSS dword ptr [EBP + -0x74],XMM2
00700f97  85f6                      TEST ESI,ESI
00700f99  0f8458040000              JZ 0x007013f7
00700f9f  6a00                      PUSH 0x0
00700fa1  6a76                      PUSH 0x76
00700fa3  8bce                      MOV ECX,ESI
00700fa5  e836f70600                CALL 0x007706e0
00700faa  84c0                      TEST AL,AL
00700fac  0f85d2020000              JNZ 0x00701284
00700fb2  3886f2130000              CMP byte ptr [ESI + 0x13f2],AL
00700fb8  0f85c6020000              JNZ 0x00701284
00700fbe  6a00                      PUSH 0x0
00700fc0  6a72                      PUSH 0x72
00700fc2  8bce                      MOV ECX,ESI
00700fc4  e817f70600                CALL 0x007706e0
00700fc9  84c0                      TEST AL,AL
00700fcb  0f8543010000              JNZ 0x00701114
00700fd1  3886f4130000              CMP byte ptr [ESI + 0x13f4],AL
00700fd7  0f8537010000              JNZ 0x00701114
00700fdd  6a00                      PUSH 0x0
00700fdf  6a44                      PUSH 0x44
00700fe1  8bce                      MOV ECX,ESI
00700fe3  e8f8f60600                CALL 0x007706e0
00700fe8  84c0                      TEST AL,AL
00700fea  7531                      JNZ 0x0070101d
00700fec  3886f3130000              CMP byte ptr [ESI + 0x13f3],AL
00700ff2  7529                      JNZ 0x0070101d
00700ff4  6a00                      PUSH 0x0
00700ff6  688b010000                PUSH 0x18b
00700ffb  8bce                      MOV ECX,ESI
00700ffd  e8def60600                CALL 0x007706e0
00701002  84c0                      TEST AL,AL
00701004  7517                      JNZ 0x0070101d
00701006  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
0070100e  897590                    MOV dword ptr [EBP + -0x70],ESI
00701011  3886f9130000              CMP byte ptr [ESI + 0x13f9],AL
00701017  0f84c8030000              JZ 0x007013e5
0070101d  8b7d84                    MOV EDI,dword ptr [EBP + -0x7c]
00701020  33c0                      XOR EAX,EAX
00701022  894590                    MOV dword ptr [EBP + -0x70],EAX
00701025  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
00701030  660f6ec0                  MOVD XMM0,EAX
00701034  0f5bc0                    CVTDQ2PS XMM0,XMM0
00701037  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0070103f  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
00701047  f30f58458c                ADDSS XMM0,dword ptr [EBP + -0x74]
0070104c  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00701054  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
00701059  e8e2c4d1ff                CALL 0x0041d540
0070105e  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
00701066  f30f104580                MOVSS XMM0,dword ptr [EBP + -0x80]
0070106b  e8b0c4d1ff                CALL 0x0041d520
00701070  51                        PUSH ECX
00701071  c704240000803f            MOV dword ptr [ESP],0x3f800000
00701078  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0070107e  6a00                      PUSH 0x0
00701080  6a01                      PUSH 0x1
00701082  6a01                      PUSH 0x1
00701084  50                        PUSH EAX
00701085  6aff                      PUSH -0x1
00701087  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
0070108d  8bcf                      MOV ECX,EDI
0070108f  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
00701097  e8d49a0a00                CALL 0x007aab70
0070109c  8bf0                      MOV ESI,EAX
0070109e  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
007010a4  8b08                      MOV ECX,dword ptr [EAX]
007010a6  f30f108688030000          MOVSS XMM0,dword ptr [ESI + 0x388]
007010ae  f30f5805a0a8ba00          ADDSS XMM0,dword ptr [0x00baa8a0]
007010b6  898e3c030000              MOV dword ptr [ESI + 0x33c],ECX
007010bc  8b4804                    MOV ECX,dword ptr [EAX + 0x4]
007010bf  898e40030000              MOV dword ptr [ESI + 0x340],ECX
007010c5  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
007010cf  f30f594324                MULSS XMM0,dword ptr [EBX + 0x24]
007010d4  c78650030000000000c1      MOV dword ptr [ESI + 0x350],0xc1000000
007010de  8b06                      MOV EAX,dword ptr [ESI]
007010e0  51                        PUSH ECX
007010e1  8bce                      MOV ECX,ESI
007010e3  c686e404000001            MOV byte ptr [ESI + 0x4e4],0x1
007010ea  f30f110424                MOVSS dword ptr [ESP],XMM0
007010ef  ff5040                    CALL dword ptr [EAX + 0x40]
007010f2  8b06                      MOV EAX,dword ptr [ESI]
007010f4  8bce                      MOV ECX,ESI
007010f6  ff500c                    CALL dword ptr [EAX + 0xc]
007010f9  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
007010fc  40                        INC EAX
007010fd  894590                    MOV dword ptr [EBP + -0x70],EAX
00701100  83f80a                    CMP EAX,0xa
00701103  0f8c27ffffff              JL 0x00701030
00701109  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
0070110f  e9d6040000                JMP 0x007015ea
00701114  33ff                      XOR EDI,EDI
00701116  6a01                      PUSH 0x1
00701118  6a00                      PUSH 0x0
0070111a  51                        PUSH ECX
0070111b  c7042400000000            MOV dword ptr [ESP],0x0
00701122  8bce                      MOV ECX,ESI
00701124  6a00                      PUSH 0x0
00701126  56                        PUSH ESI
00701127  e8a4cd0a00                CALL 0x007aded0
0070112c  f30f101530abba00          MOVSS XMM2,dword ptr [0x00baab30]
00701134  8bd0                      MOV EDX,EAX
00701136  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
0070113c  660f6ec7                  MOVD XMM0,EDI
00701140  0f5bc0                    CVTDQ2PS XMM0,XMM0
00701143  89957cffffff              MOV dword ptr [EBP + 0xffffff7c],EDX
00701149  8b08                      MOV ECX,dword ptr [EAX]
0070114b  898a3c030000              MOV dword ptr [EDX + 0x33c],ECX
00701151  8b4804                    MOV ECX,dword ptr [EAX + 0x4]
00701154  898a40030000              MOV dword ptr [EDX + 0x340],ECX
0070115a  f30f5905f0a8ba00          MULSS XMM0,dword ptr [0x00baa8f0]
00701162  f30f58458c                ADDSS XMM0,dword ptr [EBP + -0x74]
00701167  0f28c8                    MOVAPS XMM1,XMM0
0070116a  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00701171  0f2fca                    COMISS XMM1,XMM2
00701174  7616                      JBE 0x0070118c
00701176  0f28ca                    MOVAPS XMM1,XMM2
00701179  e8a28bd9ff                CALL 0x00499d20
0070117e  f30f101530abba00          MOVSS XMM2,dword ptr [0x00baab30]
00701186  8b957cffffff              MOV EDX,dword ptr [EBP + 0xffffff7c]
0070118c  0f2f0578aaba00            COMISS XMM0,dword ptr [0x00baaa78]
00701193  7606                      JBE 0x0070119b
00701195  f30f5cc2                  SUBSS XMM0,XMM2
00701199  eb11                      JMP 0x007011ac
0070119b  f30f100d7caeba00          MOVSS XMM1,dword ptr [0x00baae7c]
007011a3  0f2fc8                    COMISS XMM1,XMM0
007011a6  7604                      JBE 0x007011ac
007011a8  f30f58c2                  ADDSS XMM0,XMM2
007011ac  8b02                      MOV EAX,dword ptr [EDX]
007011ae  f30f118238040000          MOVSS dword ptr [EDX + 0x438],XMM0
007011b6  f30f108288030000          MOVSS XMM0,dword ptr [EDX + 0x388]
007011be  f30f5805a0a8ba00          ADDSS XMM0,dword ptr [0x00baa8a0]
007011c6  51                        PUSH ECX
007011c7  8bca                      MOV ECX,EDX
007011c9  f30f594324                MULSS XMM0,dword ptr [EBX + 0x24]
007011ce  f30f110424                MOVSS dword ptr [ESP],XMM0
007011d3  ff5040                    CALL dword ptr [EAX + 0x40]
007011d6  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
007011dc  05bc030000                ADD EAX,0x3bc
007011e1  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
007011e7  8b08                      MOV ECX,dword ptr [EAX]
007011e9  85c9                      TEST ECX,ECX
007011eb  7418                      JZ 0x00701205
007011ed  894580                    MOV dword ptr [EBP + -0x80],EAX
007011f0  81c1cc030000              ADD ECX,0x3cc
007011f6  8d4580                    LEA EAX,[EBP + -0x80]
007011f9  50                        PUSH EAX
007011fa  e811e0dcff                CALL 0x004cf210
007011ff  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
00701205  50                        PUSH EAX
00701206  8bce                      MOV ECX,ESI
00701208  8930                      MOV dword ptr [EAX],ESI
0070120a  e8e1cadcff                CALL 0x004cdcf0
0070120f  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00701215  f30f108038040000          MOVSS XMM0,dword ptr [EAX + 0x438]
0070121d  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00701225  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
0070122a  e811c3d1ff                CALL 0x0041d540
0070122f  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
00701237  f30f104580                MOVSS XMM0,dword ptr [EBP + -0x80]
0070123c  e8dfc2d1ff                CALL 0x0041d520
00701241  8b8d7cffffff              MOV ECX,dword ptr [EBP + 0xffffff7c]
00701247  0f57db                    XORPS XMM3,XMM3
0070124a  56                        PUSH ESI
0070124b  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
00701253  ffb570ffffff              PUSH dword ptr [EBP + 0xffffff70]
00701259  ffb56cffffff              PUSH dword ptr [EBP + 0xffffff6c]
0070125f  e8bc002600                CALL 0x00961320
00701264  8b8d7cffffff              MOV ECX,dword ptr [EBP + 0xffffff7c]
0070126a  8b01                      MOV EAX,dword ptr [ECX]
0070126c  ff500c                    CALL dword ptr [EAX + 0xc]
0070126f  47                        INC EDI
00701270  83ff0a                    CMP EDI,0xa
00701273  0f8c9dfeffff              JL 0x00701116
00701279  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
0070127f  e966030000                JMP 0x007015ea
00701284  33ff                      XOR EDI,EDI
00701286  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
00701290  660f6ec7                  MOVD XMM0,EDI
00701294  0f5bc0                    CVTDQ2PS XMM0,XMM0
00701297  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
0070129f  f30f58458c                ADDSS XMM0,dword ptr [EBP + -0x74]
007012a4  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
007012ac  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
007012b4  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
007012b9  e882c2d1ff                CALL 0x0041d540
007012be  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
007012c6  f30f104580                MOVSS XMM0,dword ptr [EBP + -0x80]
007012cb  e850c2d1ff                CALL 0x0041d520
007012d0  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
007012d8  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
007012de  6a00                      PUSH 0x0
007012e0  51                        PUSH ECX
007012e1  50                        PUSH EAX
007012e2  8d963c030000              LEA EDX,[ESI + 0x33c]
007012e8  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
007012f0  8bce                      MOV ECX,ESI
007012f2  e8494c2f00                CALL 0x009f5f40
007012f7  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
007012fa  83c40c                    ADD ESP,0xc
007012fd  8bf0                      MOV ESI,EAX
007012ff  0f1081c4140000            MOVUPS XMM0,xmmword ptr [ECX + 0x14c4]
00701306  8b06                      MOV EAX,dword ptr [ESI]
00701308  6a01                      PUSH 0x1
0070130a  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
0070130e  6a00                      PUSH 0x0
00701310  0f1081d4140000            MOVUPS XMM0,xmmword ptr [ECX + 0x14d4]
00701317  68ff000000                PUSH 0xff
0070131c  6aff                      PUSH -0x1
0070131e  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
00701322  f30f7e81e4140000          MOVQ XMM0,qword ptr [ECX + 0x14e4]
0070132a  8b89ec140000              MOV ECX,dword ptr [ECX + 0x14ec]
00701330  894dbc                    MOV dword ptr [EBP + -0x44],ECX
00701333  8d4d94                    LEA ECX,[EBP + -0x6c]
00701336  51                        PUSH ECX
00701337  8bce                      MOV ECX,ESI
00701339  660fd645b4                MOVQ qword ptr [EBP + -0x4c],XMM0
0070133e  ff503c                    CALL dword ptr [EAX + 0x3c]
00701341  f30f104324                MOVSS XMM0,dword ptr [EBX + 0x24]
00701346  f30f598688030000          MULSS XMM0,dword ptr [ESI + 0x388]
0070134e  8b06                      MOV EAX,dword ptr [ESI]
00701350  51                        PUSH ECX
00701351  8bce                      MOV ECX,ESI
00701353  f30f110424                MOVSS dword ptr [ESP],XMM0
00701358  ff5040                    CALL dword ptr [EAX + 0x40]
0070135b  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
00701361  8b01                      MOV EAX,dword ptr [ECX]
00701363  89863c030000              MOV dword ptr [ESI + 0x33c],EAX
00701369  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
0070136c  8bce                      MOV ECX,ESI
0070136e  898640030000              MOV dword ptr [ESI + 0x340],EAX
00701374  8b06                      MOV EAX,dword ptr [ESI]
00701376  c686e404000001            MOV byte ptr [ESI + 0x4e4],0x1
0070137d  ff500c                    CALL dword ptr [EAX + 0xc]
00701380  8b7584                    MOV ESI,dword ptr [EBP + -0x7c]
00701383  47                        INC EDI
00701384  83ff0a                    CMP EDI,0xa
00701387  0f8c03ffffff              JL 0x00701290
0070138d  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
00701393  e952020000                JMP 0x007015ea
00701398  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
007013a0  33f6                      XOR ESI,ESI
007013a2  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
007013aa  897590                    MOV dword ptr [EBP + -0x70],ESI
007013ad  e8aedbfeff                CALL 0x006eef60
007013b2  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
007013ba  660f6ec0                  MOVD XMM0,EAX
007013be  f30fe6c0                  CVTDQ2PD XMM0,XMM0
007013c2  c1e81f                    SHR EAX,0x1f
007013c5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
007013ce  660f5ad0                  CVTPD2PS XMM2,XMM0
007013d2  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
007013da  f30f59d1                  MULSS XMM2,XMM1
007013de  f30f11558c                MOVSS dword ptr [EBP + -0x74],XMM2
007013e3  eb15                      JMP 0x007013fa
007013e5  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
007013ed  f30f10558c                MOVSS XMM2,dword ptr [EBP + -0x74]
007013f2  8b7590                    MOV ESI,dword ptr [EBP + -0x70]
007013f5  eb0b                      JMP 0x00701402
007013f7  8b7590                    MOV ESI,dword ptr [EBP + -0x70]
007013fa  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
00701402  f30f101d1ca8ba00          MOVSS XMM3,dword ptr [0x00baa81c]
0070140a  33c0                      XOR EAX,EAX
0070140c  f30f59c3                  MULSS XMM0,XMM3
00701410  894588                    MOV dword ptr [EBP + -0x78],EAX
00701413  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
0070141b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00701420  660f6ec0                  MOVD XMM0,EAX
00701424  0f5bc0                    CVTDQ2PS XMM0,XMM0
00701427  f30f59c1                  MULSS XMM0,XMM1
0070142b  f30f5ec3                  DIVSS XMM0,XMM3
0070142f  f30f58c2                  ADDSS XMM0,XMM2
00701433  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
00701438  85f6                      TEST ESI,ESI
0070143a  7463                      JZ 0x0070149f
0070143c  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00701444  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
00701449  e8f2c0d1ff                CALL 0x0041d540
0070144e  f30f59857cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff7c]
00701456  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
0070145e  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
00701463  e8b8c0d1ff                CALL 0x0041d520
00701468  f30f59857cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff7c]
00701470  51                        PUSH ECX
00701471  c704240000803f            MOV dword ptr [ESP],0x3f800000
00701478  8bce                      MOV ECX,ESI
0070147a  6a00                      PUSH 0x0
0070147c  6a07                      PUSH 0x7
0070147e  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
00701486  ffb570ffffff              PUSH dword ptr [EBP + 0xffffff70]
0070148c  ffb56cffffff              PUSH dword ptr [EBP + 0xffffff6c]
00701492  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00701498  e853f60800                CALL 0x00790af0
0070149d  eb68                      JMP 0x00701507
0070149f  e8bcdafeff                CALL 0x006eef60
007014a4  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
007014a9  8bf0                      MOV ESI,EAX
007014ab  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
007014b3  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
007014b8  e883c0d1ff                CALL 0x0041d540
007014bd  f30f59857cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff7c]
007014c5  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
007014cd  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
007014d2  e849c0d1ff                CALL 0x0041d520
007014d7  f30f59857cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff7c]
007014df  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
007014e5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007014eb  56                        PUSH ESI
007014ec  6a00                      PUSH 0x0
007014ee  57                        PUSH EDI
007014ef  50                        PUSH EAX
007014f0  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
007014f6  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
007014fe  6a00                      PUSH 0x0
00701500  6a02                      PUSH 0x2
00701502  e81976d2ff                CALL 0x00428b20
00701507  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
0070150a  8bf0                      MOV ESI,EAX
0070150c  8b431c                    MOV EAX,dword ptr [EBX + 0x1c]
0070150f  23051c46c300              AND EAX,dword ptr [0x00c3461c]
00701515  8b5318                    MOV EDX,dword ptr [EBX + 0x18]
00701518  230d1046c300              AND ECX,dword ptr [0x00c34610]
0070151e  23151846c300              AND EDX,dword ptr [0x00c34618]
00701524  894580                    MOV dword ptr [EBP + -0x80],EAX
00701527  8b4314                    MOV EAX,dword ptr [EBX + 0x14]
0070152a  23051446c300              AND EAX,dword ptr [0x00c34614]
00701530  0bc8                      OR ECX,EAX
00701532  7505                      JNZ 0x00701539
00701534  0b5580                    OR EDX,dword ptr [EBP + -0x80]
00701537  7414                      JZ 0x0070154d
00701539  8b4e2c                    MOV ECX,dword ptr [ESI + 0x2c]
0070153c  e86fc4f7ff                CALL 0x0067d9b0
00701541  3bc8                      CMP ECX,EAX
00701543  7408                      JZ 0x0070154d
00701545  50                        PUSH EAX
00701546  8bce                      MOV ECX,ESI
00701548  e8b38ef7ff                CALL 0x0067a400
0070154d  f30f108620040000          MOVSS XMM0,dword ptr [ESI + 0x420]
00701555  8bce                      MOV ECX,ESI
00701557  f30f5905f4a4ba00          MULSS XMM0,dword ptr [0x00baa4f4]
0070155f  f30f594324                MULSS XMM0,dword ptr [EBX + 0x24]
00701564  f30f5f056ca0ba00          MAXSS XMM0,dword ptr [0x00baa06c]
0070156c  f30f118624040000          MOVSS dword ptr [ESI + 0x424],XMM0
00701574  f30f118620040000          MOVSS dword ptr [ESI + 0x420],XMM0
0070157c  e8ff61f7ff                CALL 0x00677780
00701581  f30f108688030000          MOVSS XMM0,dword ptr [ESI + 0x388]
00701589  f30f5805a0a8ba00          ADDSS XMM0,dword ptr [0x00baa8a0]
00701591  8b06                      MOV EAX,dword ptr [ESI]
00701593  51                        PUSH ECX
00701594  8bce                      MOV ECX,ESI
00701596  f30f594324                MULSS XMM0,dword ptr [EBX + 0x24]
0070159b  f30f110424                MOVSS dword ptr [ESP],XMM0
007015a0  ff5040                    CALL dword ptr [EAX + 0x40]
007015a3  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
007015a9  f30f10558c                MOVSS XMM2,dword ptr [EBP + -0x74]
007015ae  f30f101d1ca8ba00          MOVSS XMM3,dword ptr [0x00baa81c]
007015b6  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
007015bb  f30f1000                  MOVSS XMM0,dword ptr [EAX]
007015bf  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
007015c2  40                        INC EAX
007015c3  f30f118e38030000          MOVSS dword ptr [ESI + 0x338],XMM1
007015cb  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
007015d3  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
007015db  8b7590                    MOV ESI,dword ptr [EBP + -0x70]
007015de  894588                    MOV dword ptr [EBP + -0x78],EAX
007015e1  83f80a                    CMP EAX,0xa
007015e4  0f8c36feffff              JL 0x00701420
007015ea  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
007015ed  8b4314                    MOV EAX,dword ptr [EBX + 0x14]
007015f0  8b5318                    MOV EDX,dword ptr [EBX + 0x18]
007015f3  8b731c                    MOV ESI,dword ptr [EBX + 0x1c]
007015f6  230dc04ac300              AND ECX,dword ptr [0x00c34ac0]
007015fc  2305c44ac300              AND EAX,dword ptr [0x00c34ac4]
00701602  2315c84ac300              AND EDX,dword ptr [0x00c34ac8]
00701608  2335cc4ac300              AND ESI,dword ptr [0x00c34acc]
0070160e  0bc8                      OR ECX,EAX
00701610  7508                      JNZ 0x0070161a
00701612  0bd6                      OR EDX,ESI
00701614  0f84cb000000              JZ 0x007016e5
0070161a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00701620  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00701626  f30f101d54a8ba00          MOVSS XMM3,dword ptr [0x00baa854]
0070162e  83ec0c                    SUB ESP,0xc
00701631  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00701637  c744240800007041          MOV dword ptr [ESP + 0x8],0x41700000
0070163f  c744240400007041          MOV dword ptr [ESP + 0x4],0x41700000
00701647  c7042400007041            MOV dword ptr [ESP],0x41700000
0070164e  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00701654  50                        PUSH EAX
00701655  e8f6181100                CALL 0x00812f50
0070165a  e801d9feff                CALL 0x006eef60
0070165f  85ff                      TEST EDI,EDI
00701661  7408                      JZ 0x0070166b
00701663  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
00701669  eb02                      JMP 0x0070166d
0070166b  33c9                      XOR ECX,ECX
0070166d  6a00                      PUSH 0x0
0070166f  68acd5c500                PUSH 0xc5d5ac
00701674  68dcd5c500                PUSH 0xc5d5dc
00701679  6a00                      PUSH 0x0
0070167b  50                        PUSH EAX
0070167c  6a00                      PUSH 0x0
0070167e  51                        PUSH ECX
0070167f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00701685  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
0070168b  6840b6c700                PUSH 0xc7b640
00701690  50                        PUSH EAX
00701691  6a35                      PUSH 0x35
00701693  68e8030000                PUSH 0x3e8
00701698  e88374d2ff                CALL 0x00428b20
0070169d  50                        PUSH EAX
0070169e  e80ef23e00                CALL 0x00af08b1
007016a3  f30f104b0c                MOVSS XMM1,dword ptr [EBX + 0xc]
007016a8  8bc8                      MOV ECX,EAX
007016aa  0f28d1                    MOVAPS XMM2,XMM1
007016ad  83c414                    ADD ESP,0x14
007016b0  f30f59153c79c300          MULSS XMM2,dword ptr [0x00c3793c]
007016b8  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
007016c0  8b01                      MOV EAX,dword ptr [ECX]
007016c2  f30f5915d0a0ba00          MULSS XMM2,dword ptr [0x00baa0d0]
007016ca  f30f590dd0a0ba00          MULSS XMM1,dword ptr [0x00baa0d0]
007016d2  f30f1191e4000000          MOVSS dword ptr [ECX + 0xe4],XMM2
007016da  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
007016e2  ff500c                    CALL dword ptr [EAX + 0xc]
007016e5  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
007016e8  a1044cc300                MOV EAX,[0x00c34c04]
007016ed  8b5318                    MOV EDX,dword ptr [EBX + 0x18]
007016f0  8b350c4cc300              MOV ESI,dword ptr [0x00c34c0c]
007016f6  230d004cc300              AND ECX,dword ptr [0x00c34c00]
007016fc  234314                    AND EAX,dword ptr [EBX + 0x14]
007016ff  2315084cc300              AND EDX,dword ptr [0x00c34c08]
00701705  23731c                    AND ESI,dword ptr [EBX + 0x1c]
00701708  0bc8                      OR ECX,EAX
0070170a  7508                      JNZ 0x00701714
0070170c  0bd6                      OR EDX,ESI
0070170e  0f8403010000              JZ 0x00701817
00701714  85ff                      TEST EDI,EDI
00701716  7463                      JZ 0x0070177b
00701718  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0070171b  83f801                    CMP EAX,0x1
0070171e  745b                      JZ 0x0070177b
00701720  8b4f34                    MOV ECX,dword ptr [EDI + 0x34]
00701723  83f901                    CMP ECX,0x1
00701726  7453                      JZ 0x0070177b
00701728  83f803                    CMP EAX,0x3
0070172b  744e                      JZ 0x0070177b
0070172d  83f903                    CMP ECX,0x3
00701730  7449                      JZ 0x0070177b
00701732  e829d8feff                CALL 0x006eef60
00701737  8bb578ffffff              MOV ESI,dword ptr [EBP + 0xffffff78]
0070173d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00701743  50                        PUSH EAX
00701744  6a00                      PUSH 0x0
00701746  57                        PUSH EDI
00701747  6840b6c700                PUSH 0xc7b640
0070174c  56                        PUSH ESI
0070174d  6a0a                      PUSH 0xa
0070174f  6a21                      PUSH 0x21
00701751  e8ca73d2ff                CALL 0x00428b20
00701756  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0070175a  8bc8                      MOV ECX,EAX
0070175c  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
00701761  8b01                      MOV EAX,dword ptr [ECX]
00701763  f30f118134030000          MOVSS dword ptr [ECX + 0x334],XMM0
0070176b  f30f118938030000          MOVSS dword ptr [ECX + 0x338],XMM1
00701773  ff500c                    CALL dword ptr [EAX + 0xc]
00701776  e99c000000                JMP 0x00701817
0070177b  e8e0d7feff                CALL 0x006eef60
00701780  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00701786  6a00                      PUSH 0x0
00701788  68acd5c500                PUSH 0xc5d5ac
0070178d  68dcd5c500                PUSH 0xc5d5dc
00701792  6a00                      PUSH 0x0
00701794  50                        PUSH EAX
00701795  6a00                      PUSH 0x0
00701797  57                        PUSH EDI
00701798  6840b6c700                PUSH 0xc7b640
0070179d  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
007017a3  6a34                      PUSH 0x34
007017a5  68e8030000                PUSH 0x3e8
007017aa  e87173d2ff                CALL 0x00428b20
007017af  50                        PUSH EAX
007017b0  e8fcf03e00                CALL 0x00af08b1
007017b5  f30f104324                MOVSS XMM0,dword ptr [EBX + 0x24]
007017ba  8bf0                      MOV ESI,EAX
007017bc  83c414                    ADD ESP,0x14
007017bf  8b0e                      MOV ECX,dword ptr [ESI]
007017c1  f30f118678040000          MOVSS dword ptr [ESI + 0x478],XMM0
007017c9  8b4140                    MOV EAX,dword ptr [ECX + 0x40]
007017cc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007017d2  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
007017d9  7c0a                      JL 0x007017e5
007017db  f30f100568a8ba00          MOVSS XMM0,dword ptr [0x00baa868]
007017e3  eb08                      JMP 0x007017ed
007017e5  f30f10058ca8ba00          MOVSS XMM0,dword ptr [0x00baa88c]
007017ed  51                        PUSH ECX
007017ee  8bce                      MOV ECX,ESI
007017f0  f30f110424                MOVSS dword ptr [ESP],XMM0
007017f5  ffd0                      CALL EAX
007017f7  e864d7feff                CALL 0x006eef60
007017fc  33d2                      XOR EDX,EDX
007017fe  b978000000                MOV ECX,0x78
00701803  f7f1                      DIV ECX
00701805  81c22c010000              ADD EDX,0x12c
0070180b  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
00701811  899660040000              MOV dword ptr [ESI + 0x460],EDX
00701817  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
0070181a  a19449c300                MOV EAX,[0x00c34994]
0070181f  8b5318                    MOV EDX,dword ptr [EBX + 0x18]
00701822  8b359c49c300              MOV ESI,dword ptr [0x00c3499c]
00701828  230d9049c300              AND ECX,dword ptr [0x00c34990]
0070182e  234314                    AND EAX,dword ptr [EBX + 0x14]
00701831  23159849c300              AND EDX,dword ptr [0x00c34998]
00701837  23731c                    AND ESI,dword ptr [EBX + 0x1c]
0070183a  0bc8                      OR ECX,EAX
0070183c  7508                      JNZ 0x00701846
0070183e  0bd6                      OR EDX,ESI
00701840  0f844d020000              JZ 0x00701a93
00701846  e815d7feff                CALL 0x006eef60
0070184b  33d2                      XOR EDX,EDX
0070184d  b964000000                MOV ECX,0x64
00701852  f7f1                      DIV ECX
00701854  a17816c700                MOV EAX,[0x00c71678]
00701859  8b8090830100              MOV EAX,dword ptr [EAX + 0x18390]
0070185f  83c024                    ADD EAX,0x24
00701862  3bd0                      CMP EDX,EAX
00701864  0f8e10010000              JLE 0x0070197a
0070186a  85ff                      TEST EDI,EDI
0070186c  7450                      JZ 0x007018be
0070186e  8b97dc030000              MOV EDX,dword ptr [EDI + 0x3dc]
00701874  85d2                      TEST EDX,EDX
00701876  751a                      JNZ 0x00701892
00701878  6854bfb600                PUSH 0xb6bf54
0070187d  6a10                      PUSH 0x10
0070187f  e83cfa3000                CALL 0x00a112c0
00701884  8b97dc030000              MOV EDX,dword ptr [EDI + 0x3dc]
0070188a  83c408                    ADD ESP,0x8
0070188d  85d2                      TEST EDX,EDX
0070188f  7501                      JNZ 0x00701892
00701891  cc                        INT3
00701892  8b8fe0030000              MOV ECX,dword ptr [EDI + 0x3e0]
00701898  8bc2                      MOV EAX,EDX
0070189a  d3e8                      SHR EAX,CL
0070189c  8b8fe4030000              MOV ECX,dword ptr [EDI + 0x3e4]
007018a2  33c2                      XOR EAX,EDX
007018a4  8bd0                      MOV EDX,EAX
007018a6  d3e2                      SHL EDX,CL
007018a8  8b8fe8030000              MOV ECX,dword ptr [EDI + 0x3e8]
007018ae  33d0                      XOR EDX,EAX
007018b0  8bf2                      MOV ESI,EDX
007018b2  d3ee                      SHR ESI,CL
007018b4  33f2                      XOR ESI,EDX
007018b6  89b7dc030000              MOV dword ptr [EDI + 0x3dc],ESI
007018bc  eb07                      JMP 0x007018c5
007018be  e89dd6feff                CALL 0x006eef60
007018c3  8bf0                      MOV ESI,EAX
007018c5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007018cb  8b81c8690200              MOV EAX,dword ptr [ECX + 0x269c8]
007018d1  83f802                    CMP EAX,0x2
007018d4  740c                      JZ 0x007018e2
007018d6  c7458801000000            MOV dword ptr [EBP + -0x78],0x1
007018dd  83f803                    CMP EAX,0x3
007018e0  7507                      JNZ 0x007018e9
007018e2  c7458803000000            MOV dword ptr [EBP + -0x78],0x3
007018e9  e872d6feff                CALL 0x006eef60
007018ee  660f6ec0                  MOVD XMM0,EAX
007018f2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
007018f6  c1e81f                    SHR EAX,0x1f
007018f9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00701902  660f5ac0                  CVTPD2PS XMM0,XMM0
00701906  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0070190e  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00701916  f30f58c0                  ADDSS XMM0,XMM0
0070191a  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
0070191f  e81cbcd1ff                CALL 0x0041d540
00701924  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
0070192c  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
00701934  f30f104580                MOVSS XMM0,dword ptr [EBP + -0x80]
00701939  e8e2bbd1ff                CALL 0x0041d520
0070193e  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00701946  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0070194c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00701952  56                        PUSH ESI
00701953  ff7588                    PUSH dword ptr [EBP + -0x78]
00701956  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
0070195e  57                        PUSH EDI
0070195f  50                        PUSH EAX
00701960  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00701966  6a00                      PUSH 0x0
00701968  6a05                      PUSH 0x5
0070196a  e8b171d2ff                CALL 0x00428b20
0070196f  a17816c700                MOV EAX,[0x00c71678]
00701974  ff8090830100              INC dword ptr [EAX + 0x18390]
0070197a  e8e1d5feff                CALL 0x006eef60
0070197f  33d2                      XOR EDX,EDX
00701981  b964000000                MOV ECX,0x64
00701986  f7f1                      DIV ECX
00701988  83fa0f                    CMP EDX,0xf
0070198b  0f8302010000              JNC 0x00701a93
00701991  8b157816c700              MOV EDX,dword ptr [0x00c71678]
00701997  33c0                      XOR EAX,EAX
00701999  c7458c00000000            MOV dword ptr [EBP + -0x74],0x0
007019a0  894590                    MOV dword ptr [EBP + -0x70],EAX
007019a3  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
007019a9  398164120000              CMP dword ptr [ECX + 0x1264],EAX
007019af  0f86de000000              JBE 0x00701a93
007019b5  8bb95c120000              MOV EDI,dword ptr [ECX + 0x125c]
007019bb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
007019c0  83ba1466020002            CMP dword ptr [EDX + 0x26614],0x2
007019c7  8b0c87                    MOV ECX,dword ptr [EDI + EAX*0x4]
007019ca  7c08                      JL 0x007019d4
007019cc  8b7128                    MOV ESI,dword ptr [ECX + 0x28]
007019cf  83fe01                    CMP ESI,0x1
007019d2  7414                      JZ 0x007019e8
007019d4  8b7128                    MOV ESI,dword ptr [ECX + 0x28]
007019d7  8d46f6                    LEA EAX,[ESI + -0xa]
007019da  3ddd030000                CMP EAX,0x3dd
007019df  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
007019e2  0f87fb010000              JA 0x00701be3
007019e8  8b9188010000              MOV EDX,dword ptr [ECX + 0x188]
007019ee  83fa01                    CMP EDX,0x1
007019f1  745e                      JZ 0x00701a51
007019f3  85d2                      TEST EDX,EDX
007019f5  0f84e2010000              JZ 0x00701bdd
007019fb  80b9b003000000            CMP byte ptr [ECX + 0x3b0],0x0
00701a02  754d                      JNZ 0x00701a51
00701a04  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
00701a0b  7544                      JNZ 0x00701a51
00701a0d  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
00701a13  8b9168010000              MOV EDX,dword ptr [ECX + 0x168]
00701a19  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
00701a1f  8bc2                      MOV EAX,EDX
00701a21  83e010                    AND EAX,0x10
00701a24  83c800                    OR EAX,0x0
00701a27  7410                      JZ 0x00701a39
00701a29  81fe22030000              CMP ESI,0x322
00701a2f  7408                      JZ 0x00701a39
00701a31  81fe62030000              CMP ESI,0x362
00701a37  7515                      JNZ 0x00701a4e
00701a39  81e200010000              AND EDX,0x100
00701a3f  8bf1                      MOV ESI,ECX
00701a41  83ca00                    OR EDX,0x0
00701a44  89758c                    MOV dword ptr [EBP + -0x74],ESI
00701a47  7427                      JZ 0x00701a70
00701a49  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
00701a4c  eb06                      JMP 0x00701a54
00701a4e  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
00701a51  8b758c                    MOV ESI,dword ptr [EBP + -0x74]
00701a54  8b157816c700              MOV EDX,dword ptr [0x00c71678]
00701a5a  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
00701a60  40                        INC EAX
00701a61  894590                    MOV dword ptr [EBP + -0x70],EAX
00701a64  3b8164120000              CMP EAX,dword ptr [ECX + 0x1264]
00701a6a  0f8250ffffff              JC 0x007019c0
00701a70  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
00701a76  85f6                      TEST ESI,ESI
00701a78  7419                      JZ 0x00701a93
00701a7a  6a00                      PUSH 0x0
00701a7c  6a00                      PUSH 0x0
00701a7e  6896000000                PUSH 0x96
00701a83  8d4dc4                    LEA ECX,[EBP + -0x3c]
00701a86  e8e541d3ff                CALL 0x00435c70
00701a8b  50                        PUSH EAX
00701a8c  8bce                      MOV ECX,ESI
00701a8e  e8ddbdfaff                CALL 0x006ad870
00701a93  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
00701a96  a1444ac300                MOV EAX,[0x00c34a44]
00701a9b  8b5318                    MOV EDX,dword ptr [EBX + 0x18]
00701a9e  8b354c4ac300              MOV ESI,dword ptr [0x00c34a4c]
00701aa4  230d404ac300              AND ECX,dword ptr [0x00c34a40]
00701aaa  234314                    AND EAX,dword ptr [EBX + 0x14]
00701aad  2315484ac300              AND EDX,dword ptr [0x00c34a48]
00701ab3  23731c                    AND ESI,dword ptr [EBX + 0x1c]
00701ab6  0bc8                      OR ECX,EAX
00701ab8  7508                      JNZ 0x00701ac2
00701aba  0bd6                      OR EDX,ESI
00701abc  0f84c9020000              JZ 0x00701d8b
00701ac2  8bbd78ffffff              MOV EDI,dword ptr [EBP + 0xffffff78]
00701ac8  33c0                      XOR EAX,EAX
00701aca  894584                    MOV dword ptr [EBP + -0x7c],EAX
00701acd  0f1f00                    NOP dword ptr [EAX]
00701ad0  f30f1007                  MOVSS XMM0,dword ptr [EDI]
00701ad4  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
00701adc  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
00701ae1  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
00701ae9  85c0                      TEST EAX,EAX
00701aeb  0f84fa000000              JZ 0x00701beb
00701af1  e86ad4feff                CALL 0x006eef60
00701af6  0f57c0                    XORPS XMM0,XMM0
00701af9  f20f2ac0                  CVTSI2SD XMM0,EAX
00701afd  c1e81f                    SHR EAX,0x1f
00701b00  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00701b09  660f5ac0                  CVTPD2PS XMM0,XMM0
00701b0d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00701b15  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00701b1d  f30f58c0                  ADDSS XMM0,XMM0
00701b21  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
00701b26  e835d4feff                CALL 0x006eef60
00701b2b  0f57c0                    XORPS XMM0,XMM0
00701b2e  f20f2ac0                  CVTSI2SD XMM0,EAX
00701b32  c1e81f                    SHR EAX,0x1f
00701b35  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00701b3e  660f5ac0                  CVTPD2PS XMM0,XMM0
00701b42  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00701b4a  f30f59057ca9ba00          MULSS XMM0,dword ptr [0x00baa97c]
00701b52  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
00701b5a  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
00701b5f  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
00701b64  e8d7b9d1ff                CALL 0x0041d540
00701b69  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
00701b6e  f30f594324                MULSS XMM0,dword ptr [EBX + 0x24]
00701b73  f30f58856cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff6c]
00701b7b  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
00701b83  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
00701b88  e893b9d1ff                CALL 0x0041d520
00701b8d  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
00701b92  f30f594324                MULSS XMM0,dword ptr [EBX + 0x24]
00701b97  f30f588570ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff70]
00701b9f  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
00701ba7  e8b4d3feff                CALL 0x006eef60
00701bac  0f57c0                    XORPS XMM0,XMM0
00701baf  f20f2ac0                  CVTSI2SD XMM0,EAX
00701bb3  c1e81f                    SHR EAX,0x1f
00701bb6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00701bbf  660f5ac0                  CVTPD2PS XMM0,XMM0
00701bc3  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00701bcb  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00701bd3  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
00701bdb  eb16                      JMP 0x00701bf3
00701bdd  8b157816c700              MOV EDX,dword ptr [0x00c71678]
00701be3  8b758c                    MOV ESI,dword ptr [EBP + -0x74]
00701be6  e96ffeffff                JMP 0x00701a5a
00701beb  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00701bf3  f30f594324                MULSS XMM0,dword ptr [EBX + 0x24]
00701bf8  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
00701bfd  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
00701c02  e859d3feff                CALL 0x006eef60
00701c07  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00701c0d  50                        PUSH EAX
00701c0e  6a00                      PUSH 0x0
00701c10  6a00                      PUSH 0x0
00701c12  6840b6c700                PUSH 0xc7b640
00701c17  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
00701c1d  50                        PUSH EAX
00701c1e  6a2c                      PUSH 0x2c
00701c20  68e8030000                PUSH 0x3e8
00701c25  e8f66ed2ff                CALL 0x00428b20
00701c2a  f30f104d90                MOVSS XMM1,dword ptr [EBP + -0x70]
00701c2f  8bc8                      MOV ECX,EAX
00701c31  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
00701c39  8b01                      MOV EAX,dword ptr [ECX]
00701c3b  0f28c1                    MOVAPS XMM0,XMM1
00701c3e  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00701c46  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00701c4e  c7815c040000c2010000      MOV dword ptr [ECX + 0x45c],0x1c2
00701c58  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
00701c60  c78160040000c2010000      MOV dword ptr [ECX + 0x460],0x1c2
00701c6a  f30f1181e4000000          MOVSS dword ptr [ECX + 0xe4],XMM0
00701c72  ff500c                    CALL dword ptr [EAX + 0xc]
00701c75  f30f104d90                MOVSS XMM1,dword ptr [EBP + -0x70]
00701c7a  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
00701c82  0f2fc1                    COMISS XMM0,XMM1
00701c85  760c                      JBE 0x00701c93
00701c87  0f28c1                    MOVAPS XMM0,XMM1
00701c8a  f30f58c8                  ADDSS XMM1,XMM0
00701c8e  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
00701c93  e8c8d2feff                CALL 0x006eef60
00701c98  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
00701ca0  50                        PUSH EAX
00701ca1  33c0                      XOR EAX,EAX
00701ca3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00701ca9  0f2f4580                  COMISS XMM0,dword ptr [EBP + -0x80]
00701cad  0f96c0                    SETBE AL
00701cb0  8d044502000000            LEA EAX,[EAX*0x2 + 0x2]
00701cb7  50                        PUSH EAX
00701cb8  6a00                      PUSH 0x0
00701cba  6840b6c700                PUSH 0xc7b640
00701cbf  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
00701cc5  50                        PUSH EAX
00701cc6  6a02                      PUSH 0x2
00701cc8  68e8030000                PUSH 0x3e8
00701ccd  e84e6ed2ff                CALL 0x00428b20
00701cd2  8bf0                      MOV ESI,EAX
00701cd4  e887d2feff                CALL 0x006eef60
00701cd9  f30f104d90                MOVSS XMM1,dword ptr [EBP + -0x70]
00701cde  8d4d94                    LEA ECX,[EBP + -0x6c]
00701ce1  6a01                      PUSH 0x1
00701ce3  6a00                      PUSH 0x0
00701ce5  660f6ec0                  MOVD XMM0,EAX
00701ce9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00701ced  c1e81f                    SHR EAX,0x1f
00701cf0  68ff000000                PUSH 0xff
00701cf5  6aff                      PUSH -0x1
00701cf7  51                        PUSH ECX
00701cf8  8bce                      MOV ECX,ESI
00701cfa  c745b40000803f            MOV dword ptr [EBP + -0x4c],0x3f800000
00701d01  c745b80000803f            MOV dword ptr [EBP + -0x48],0x3f800000
00701d08  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00701d11  c745bc0000803f            MOV dword ptr [EBP + -0x44],0x3f800000
00701d18  660f5ac0                  CVTPD2PS XMM0,XMM0
00701d1c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00701d24  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00701d2c  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
00701d34  0f28c1                    MOVAPS XMM0,XMM1
00701d37  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00701d3f  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00701d47  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00701d4f  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00701d56  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00701d5e  8b06                      MOV EAX,dword ptr [ESI]
00701d60  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
00701d64  0f57c0                    XORPS XMM0,XMM0
00701d67  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
00701d6b  ff503c                    CALL dword ptr [EAX + 0x3c]
00701d6e  8b06                      MOV EAX,dword ptr [ESI]
00701d70  8bce                      MOV ECX,ESI
00701d72  ff500c                    CALL dword ptr [EAX + 0xc]
00701d75  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
00701d78  40                        INC EAX
00701d79  894584                    MOV dword ptr [EBP + -0x7c],EAX
00701d7c  83f806                    CMP EAX,0x6
00701d7f  0f8c4bfdffff              JL 0x00701ad0
00701d85  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
00701d8b  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
00701d8e  a1d44bc300                MOV EAX,[0x00c34bd4]
00701d93  8b5318                    MOV EDX,dword ptr [EBX + 0x18]
00701d96  8b35dc4bc300              MOV ESI,dword ptr [0x00c34bdc]
00701d9c  230dd04bc300              AND ECX,dword ptr [0x00c34bd0]
00701da2  234314                    AND EAX,dword ptr [EBX + 0x14]
00701da5  2315d84bc300              AND EDX,dword ptr [0x00c34bd8]
00701dab  23731c                    AND ESI,dword ptr [EBX + 0x1c]
00701dae  0bc8                      OR ECX,EAX
00701db0  7508                      JNZ 0x00701dba
00701db2  0bd6                      OR EDX,ESI
00701db4  0f84e9000000              JZ 0x00701ea3
00701dba  85ff                      TEST EDI,EDI
00701dbc  0f84e1000000              JZ 0x00701ea3
00701dc2  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00701dc5  3de8030000                CMP EAX,0x3e8
00701dca  750b                      JNZ 0x00701dd7
00701dcc  837f2c1f                  CMP dword ptr [EDI + 0x2c],0x1f
00701dd0  741d                      JZ 0x00701def
00701dd2  e9cc000000                JMP 0x00701ea3
00701dd7  83f804                    CMP EAX,0x4
00701dda  7413                      JZ 0x00701def
00701ddc  83f802                    CMP EAX,0x2
00701ddf  0f85be000000              JNZ 0x00701ea3
00701de5  837f2c04                  CMP dword ptr [EDI + 0x2c],0x4
00701de9  0f85b4000000              JNZ 0x00701ea3
00701def  8b87c8030000              MOV EAX,dword ptr [EDI + 0x3c8]
00701df5  8bf7                      MOV ESI,EDI
00701df7  85c0                      TEST EAX,EAX
00701df9  7411                      JZ 0x00701e0c
00701dfb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00701e00  8bf0                      MOV ESI,EAX
00701e02  8b86c8030000              MOV EAX,dword ptr [ESI + 0x3c8]
00701e08  85c0                      TEST EAX,EAX
00701e0a  75f4                      JNZ 0x00701e00
00701e0c  e84fd1feff                CALL 0x006eef60
00701e11  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00701e17  50                        PUSH EAX
00701e18  6a00                      PUSH 0x0
00701e1a  56                        PUSH ESI
00701e1b  6840b6c700                PUSH 0xc7b640
00701e20  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00701e26  688d000000                PUSH 0x8d
00701e2b  68e8030000                PUSH 0x3e8
00701e30  e8eb6cd2ff                CALL 0x00428b20
00701e35  f30f10530c                MOVSS XMM2,dword ptr [EBX + 0xc]
00701e3a  8bf0                      MOV ESI,EAX
00701e3c  0f28c2                    MOVAPS XMM0,XMM2
00701e3f  f30f59154079c300          MULSS XMM2,dword ptr [0x00c37940]
00701e47  51                        PUSH ECX
00701e48  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00701e50  8bce                      MOV ECX,ESI
00701e52  c7865c04000096000000      MOV dword ptr [ESI + 0x45c],0x96
00701e5c  f30f595324                MULSS XMM2,dword ptr [EBX + 0x24]
00701e61  c7866004000096000000      MOV dword ptr [ESI + 0x460],0x96
00701e6b  f30f594324                MULSS XMM0,dword ptr [EBX + 0x24]
00701e70  c704240000a040            MOV dword ptr [ESP],0x40a00000
00701e77  f30f5e1550a9ba00          DIVSS XMM2,dword ptr [0x00baa950]
00701e7f  f30f5e0550a9ba00          DIVSS XMM0,dword ptr [0x00baa950]
00701e87  f30f1196e8000000          MOVSS dword ptr [ESI + 0xe8],XMM2
00701e8f  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00701e97  8b06                      MOV EAX,dword ptr [ESI]
00701e99  ff5040                    CALL dword ptr [EAX + 0x40]
00701e9c  8b06                      MOV EAX,dword ptr [ESI]
00701e9e  8bce                      MOV ECX,ESI
00701ea0  ff500c                    CALL dword ptr [EAX + 0xc]
00701ea3  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
00701ea6  8b4314                    MOV EAX,dword ptr [EBX + 0x14]
00701ea9  8b5318                    MOV EDX,dword ptr [EBX + 0x18]
00701eac  8b731c                    MOV ESI,dword ptr [EBX + 0x1c]
00701eaf  230d1046c300              AND ECX,dword ptr [0x00c34610]
00701eb5  23051446c300              AND EAX,dword ptr [0x00c34614]
00701ebb  23151846c300              AND EDX,dword ptr [0x00c34618]
00701ec1  23351c46c300              AND ESI,dword ptr [0x00c3461c]
00701ec7  0bc8                      OR ECX,EAX
00701ec9  7508                      JNZ 0x00701ed3
00701ecb  0bd6                      OR EDX,ESI
00701ecd  0f84af020000              JZ 0x00702182
00701ed3  a17816c700                MOV EAX,[0x00c71678]
00701ed8  33f6                      XOR ESI,ESI
00701eda  897584                    MOV dword ptr [EBP + -0x7c],ESI
00701edd  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00701ee4  7c1d                      JL 0x00701f03
00701ee6  8bf7                      MOV ESI,EDI
00701ee8  897584                    MOV dword ptr [EBP + -0x7c],ESI
00701eeb  85ff                      TEST EDI,EDI
00701eed  7414                      JZ 0x00701f03
00701eef  90                        NOP
00701ef0  837e2801                  CMP dword ptr [ESI + 0x28],0x1
00701ef4  740a                      JZ 0x00701f00
00701ef6  8bb6c8030000              MOV ESI,dword ptr [ESI + 0x3c8]
00701efc  85f6                      TEST ESI,ESI
00701efe  75f0                      JNZ 0x00701ef0
00701f00  897584                    MOV dword ptr [EBP + -0x7c],ESI
00701f03  8bbd78ffffff              MOV EDI,dword ptr [EBP + 0xffffff78]
00701f09  33c0                      XOR EAX,EAX
00701f0b  89458c                    MOV dword ptr [EBP + -0x74],EAX
00701f0e  6690                      NOP
00701f10  f30f1007                  MOVSS XMM0,dword ptr [EDI]
00701f14  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
00701f1c  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
00701f21  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
00701f29  85c0                      TEST EAX,EAX
00701f2b  0f84ec000000              JZ 0x0070201d
00701f31  e82ad0feff                CALL 0x006eef60
00701f36  0f57c0                    XORPS XMM0,XMM0
00701f39  f20f2ac0                  CVTSI2SD XMM0,EAX
00701f3d  c1e81f                    SHR EAX,0x1f
00701f40  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00701f49  660f5ac0                  CVTPD2PS XMM0,XMM0
00701f4d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00701f55  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00701f5d  f30f58c0                  ADDSS XMM0,XMM0
00701f61  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
00701f66  e8f5cffeff                CALL 0x006eef60
00701f6b  0f57c0                    XORPS XMM0,XMM0
00701f6e  f20f2ac0                  CVTSI2SD XMM0,EAX
00701f72  c1e81f                    SHR EAX,0x1f
00701f75  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00701f7e  660f5ac0                  CVTPD2PS XMM0,XMM0
00701f82  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00701f8a  f30f59057ca9ba00          MULSS XMM0,dword ptr [0x00baa97c]
00701f92  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
00701f9a  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
00701f9f  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
00701fa4  e897b5d1ff                CALL 0x0041d540
00701fa9  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
00701fae  f30f594324                MULSS XMM0,dword ptr [EBX + 0x24]
00701fb3  f30f58856cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff6c]
00701fbb  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
00701fc3  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
00701fc8  e853b5d1ff                CALL 0x0041d520
00701fcd  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
00701fd2  f30f594324                MULSS XMM0,dword ptr [EBX + 0x24]
00701fd7  f30f588570ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff70]
00701fdf  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
00701fe7  e874cffeff                CALL 0x006eef60
00701fec  0f57c0                    XORPS XMM0,XMM0
00701fef  f20f2ac0                  CVTSI2SD XMM0,EAX
00701ff3  c1e81f                    SHR EAX,0x1f
00701ff6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00701fff  660f5ac0                  CVTPD2PS XMM0,XMM0
00702003  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0070200b  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00702013  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0070201b  eb08                      JMP 0x00702025
0070201d  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00702025  f30f594324                MULSS XMM0,dword ptr [EBX + 0x24]
0070202a  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
0070202f  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
00702034  e827cffeff                CALL 0x006eef60
00702039  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0070203f  50                        PUSH EAX
00702040  6a00                      PUSH 0x0
00702042  56                        PUSH ESI
00702043  6840b6c700                PUSH 0xc7b640
00702048  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0070204e  50                        PUSH EAX
0070204f  6a2e                      PUSH 0x2e
00702051  68e8030000                PUSH 0x3e8
00702056  e8c56ad2ff                CALL 0x00428b20
0070205b  f30f104d90                MOVSS XMM1,dword ptr [EBP + -0x70]
00702060  8bc8                      MOV ECX,EAX
00702062  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
0070206a  8b01                      MOV EAX,dword ptr [ECX]
0070206c  0f28c1                    MOVAPS XMM0,XMM1
0070206f  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00702077  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0070207f  c7815c040000c2010000      MOV dword ptr [ECX + 0x45c],0x1c2
00702089  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
00702091  c78160040000c2010000      MOV dword ptr [ECX + 0x460],0x1c2
0070209b  f30f1181e4000000          MOVSS dword ptr [ECX + 0xe4],XMM0
007020a3  ff500c                    CALL dword ptr [EAX + 0xc]
007020a6  f30f104d90                MOVSS XMM1,dword ptr [EBP + -0x70]
007020ab  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
007020b3  0f2fc1                    COMISS XMM0,XMM1
007020b6  760c                      JBE 0x007020c4
007020b8  0f28c1                    MOVAPS XMM0,XMM1
007020bb  f30f58c8                  ADDSS XMM1,XMM0
007020bf  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
007020c4  e897cefeff                CALL 0x006eef60
007020c9  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
007020d1  50                        PUSH EAX
007020d2  33c0                      XOR EAX,EAX
007020d4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007020da  0f2f4580                  COMISS XMM0,dword ptr [EBP + -0x80]
007020de  0f96c0                    SETBE AL
007020e1  8d044502000000            LEA EAX,[EAX*0x2 + 0x2]
007020e8  50                        PUSH EAX
007020e9  6a00                      PUSH 0x0
007020eb  6840b6c700                PUSH 0xc7b640
007020f0  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
007020f6  50                        PUSH EAX
007020f7  6a02                      PUSH 0x2
007020f9  68e8030000                PUSH 0x3e8
007020fe  e81d6ad2ff                CALL 0x00428b20
00702103  8bf0                      MOV ESI,EAX
00702105  e856cefeff                CALL 0x006eef60
0070210a  f30f104d90                MOVSS XMM1,dword ptr [EBP + -0x70]
0070210f  8bce                      MOV ECX,ESI
00702111  660f6ec0                  MOVD XMM0,EAX
00702115  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00702119  c1e81f                    SHR EAX,0x1f
0070211c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00702125  8b06                      MOV EAX,dword ptr [ESI]
00702127  660f5ac0                  CVTPD2PS XMM0,XMM0
0070212b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00702133  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0070213b  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
00702143  0f28c1                    MOVAPS XMM0,XMM1
00702146  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0070214e  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00702156  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0070215e  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00702166  ff500c                    CALL dword ptr [EAX + 0xc]
00702169  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
0070216c  8b7584                    MOV ESI,dword ptr [EBP + -0x7c]
0070216f  40                        INC EAX
00702170  89458c                    MOV dword ptr [EBP + -0x74],EAX
00702173  83f806                    CMP EAX,0x6
00702176  0f8c94fdffff              JL 0x00701f10
0070217c  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
00702182  85ff                      TEST EDI,EDI
00702184  740c                      JZ 0x00702192
00702186  837f2804                  CMP dword ptr [EDI + 0x28],0x4
0070218a  7506                      JNZ 0x00702192
0070218c  837f2c0f                  CMP dword ptr [EDI + 0x2c],0xf
00702190  7433                      JZ 0x007021c5
00702192  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
00702195  a12446c300                MOV EAX,[0x00c34624]
0070219a  8b5318                    MOV EDX,dword ptr [EBX + 0x18]
0070219d  8b352c46c300              MOV ESI,dword ptr [0x00c3462c]
007021a3  230d2046c300              AND ECX,dword ptr [0x00c34620]
007021a9  234314                    AND EAX,dword ptr [EBX + 0x14]
007021ac  23152846c300              AND EDX,dword ptr [0x00c34628]
007021b2  23731c                    AND ESI,dword ptr [EBX + 0x1c]
007021b5  0bc8                      OR ECX,EAX
007021b7  7508                      JNZ 0x007021c1
007021b9  0bd6                      OR EDX,ESI
007021bb  0f840e020000              JZ 0x007023cf
007021c1  85ff                      TEST EDI,EDI
007021c3  7445                      JZ 0x0070220a
007021c5  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
007021cb  8bc7                      MOV EAX,EDI
007021cd  894590                    MOV dword ptr [EBP + -0x70],EAX
007021d0  85c9                      TEST ECX,ECX
007021d2  7418                      JZ 0x007021ec
007021d4  8bf9                      MOV EDI,ECX
007021d6  897d90                    MOV dword ptr [EBP + -0x70],EDI
007021d9  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
007021df  85c9                      TEST ECX,ECX
007021e1  75f1                      JNZ 0x007021d4
007021e3  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
007021e9  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
007021ec  83782801                  CMP dword ptr [EAX + 0x28],0x1
007021f0  8b4834                    MOV ECX,dword ptr [EAX + 0x34]
007021f3  894d84                    MOV dword ptr [EBP + -0x7c],ECX
007021f6  8b4838                    MOV ECX,dword ptr [EAX + 0x38]
007021f9  894d8c                    MOV dword ptr [EBP + -0x74],ECX
007021fc  7517                      JNZ 0x00702215
007021fe  8b402c                    MOV EAX,dword ptr [EAX + 0x2c]
00702201  c7458401000000            MOV dword ptr [EBP + -0x7c],0x1
00702208  eb08                      JMP 0x00702212
0070220a  33c0                      XOR EAX,EAX
0070220c  894590                    MOV dword ptr [EBP + -0x70],EAX
0070220f  894584                    MOV dword ptr [EBP + -0x7c],EAX
00702212  89458c                    MOV dword ptr [EBP + -0x74],EAX
00702215  837f2804                  CMP dword ptr [EDI + 0x28],0x4
00702219  8bb574ffffff              MOV ESI,dword ptr [EBP + 0xffffff74]
0070221f  750f                      JNZ 0x00702230
00702221  837f2c0f                  CMP dword ptr [EDI + 0x2c],0xf
00702225  7509                      JNZ 0x00702230
00702227  6a0c                      PUSH 0xc
00702229  8bce                      MOV ECX,ESI
0070222b  e840140000                CALL 0x00703670
00702230  e82bcdfeff                CALL 0x006eef60
00702235  50                        PUSH EAX
00702236  6a00                      PUSH 0x0
00702238  57                        PUSH EDI
00702239  6840b6c700                PUSH 0xc7b640
0070223e  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00702244  8bce                      MOV ECX,ESI
00702246  6a01                      PUSH 0x1
00702248  68e8030000                PUSH 0x3e8
0070224d  e8ce68d2ff                CALL 0x00428b20
00702252  0f2805b0bfba00            MOVAPS XMM0,xmmword ptr [0x00babfb0]
00702259  8d4d94                    LEA ECX,[EBP + -0x6c]
0070225c  6a01                      PUSH 0x1
0070225e  8bf0                      MOV ESI,EAX
00702260  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
00702267  6a00                      PUSH 0x0
00702269  68ff000000                PUSH 0xff
0070226e  6aff                      PUSH -0x1
00702270  8b06                      MOV EAX,dword ptr [ESI]
00702272  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
00702276  89b564ffffff              MOV dword ptr [EBP + 0xffffff64],ESI
0070227c  0f57c0                    XORPS XMM0,XMM0
0070227f  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
00702286  51                        PUSH ECX
00702287  8bce                      MOV ECX,ESI
00702289  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
00702290  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
00702294  ff503c                    CALL dword ptr [EAX + 0x3c]
00702297  33ff                      XOR EDI,EDI
00702299  c7865c04000028000000      MOV dword ptr [ESI + 0x45c],0x28
007022a3  33c0                      XOR EAX,EAX
007022a5  c7866004000028000000      MOV dword ptr [ESI + 0x460],0x28
007022af  894588                    MOV dword ptr [EBP + -0x78],EAX
007022b2  6a00                      PUSH 0x0
007022b4  660f6ec0                  MOVD XMM0,EAX
007022b8  0f5bc0                    CVTDQ2PS XMM0,XMM0
007022bb  56                        PUSH ESI
007022bc  6840b6c700                PUSH 0xc7b640
007022c1  6a1e                      PUSH 0x1e
007022c3  51                        PUSH ECX
007022c4  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
007022cc  f30f110424                MOVSS dword ptr [ESP],XMM0
007022d1  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
007022d7  6a01                      PUSH 0x1
007022d9  e832d02600                CALL 0x0096f310
007022de  8bf0                      MOV ESI,EAX
007022e0  83c41c                    ADD ESP,0x1c
007022e3  8b86c8030000              MOV EAX,dword ptr [ESI + 0x3c8]
007022e9  8d8ec8030000              LEA ECX,[ESI + 0x3c8]
007022ef  85c0                      TEST EAX,EAX
007022f1  7418                      JZ 0x0070230b
007022f3  894d80                    MOV dword ptr [EBP + -0x80],ECX
007022f6  8d4d80                    LEA ECX,[EBP + -0x80]
007022f9  51                        PUSH ECX
007022fa  8d88cc030000              LEA ECX,[EAX + 0x3cc]
00702300  e80bcfdcff                CALL 0x004cf210
00702305  8d8ec8030000              LEA ECX,[ESI + 0x3c8]
0070230b  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
0070230e  8901                      MOV dword ptr [ECX],EAX
00702310  85c0                      TEST EAX,EAX
00702312  7408                      JZ 0x0070231c
00702314  51                        PUSH ECX
00702315  8bc8                      MOV ECX,EAX
00702317  e8d4b9dcff                CALL 0x004cdcf0
0070231c  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0070231f  8bce                      MOV ECX,ESI
00702321  f30f104324                MOVSS XMM0,dword ptr [EBX + 0x24]
00702326  894634                    MOV dword ptr [ESI + 0x34],EAX
00702329  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
0070232c  894638                    MOV dword ptr [ESI + 0x38],EAX
0070232f  f30f1186e0040000          MOVSS dword ptr [ESI + 0x4e0],XMM0
00702337  e8d4d82700                CALL 0x0097fc10
0070233c  8b8e2c050000              MOV ECX,dword ptr [ESI + 0x52c]
00702342  8d862c050000              LEA EAX,[ESI + 0x52c]
00702348  3bcf                      CMP ECX,EDI
0070234a  742a                      JZ 0x00702376
0070234c  85c9                      TEST ECX,ECX
0070234e  7418                      JZ 0x00702368
00702350  894580                    MOV dword ptr [EBP + -0x80],EAX
00702353  81c1cc030000              ADD ECX,0x3cc
00702359  8d4580                    LEA EAX,[EBP + -0x80]
0070235c  50                        PUSH EAX
0070235d  e8aecedcff                CALL 0x004cf210
00702362  8d862c050000              LEA EAX,[ESI + 0x52c]
00702368  8938                      MOV dword ptr [EAX],EDI
0070236a  85ff                      TEST EDI,EDI
0070236c  7408                      JZ 0x00702376
0070236e  50                        PUSH EAX
0070236f  8bcf                      MOV ECX,EDI
00702371  e87ab9dcff                CALL 0x004cdcf0
00702376  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
00702379  85c0                      TEST EAX,EAX
0070237b  741b                      JZ 0x00702398
0070237d  83782801                  CMP dword ptr [EAX + 0x28],0x1
00702381  7515                      JNZ 0x00702398
00702383  f30f104324                MOVSS XMM0,dword ptr [EBX + 0x24]
00702388  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
00702390  51                        PUSH ECX
00702391  f30f110424                MOVSS dword ptr [ESP],XMM0
00702396  eb08                      JMP 0x007023a0
00702398  51                        PUSH ECX
00702399  c7042400000041            MOV dword ptr [ESP],0x41000000
007023a0  8b06                      MOV EAX,dword ptr [ESI]
007023a2  8bce                      MOV ECX,ESI
007023a4  ff5040                    CALL dword ptr [EAX + 0x40]
007023a7  8b06                      MOV EAX,dword ptr [ESI]
007023a9  8bce                      MOV ECX,ESI
007023ab  ff500c                    CALL dword ptr [EAX + 0xc]
007023ae  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
007023b1  85ff                      TEST EDI,EDI
007023b3  0f44fe                    CMOVZ EDI,ESI
007023b6  8bb564ffffff              MOV ESI,dword ptr [EBP + 0xffffff64]
007023bc  40                        INC EAX
007023bd  894588                    MOV dword ptr [EBP + -0x78],EAX
007023c0  83f804                    CMP EAX,0x4
007023c3  0f8ce9feffff              JL 0x007022b2
007023c9  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
007023cf  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
007023d2  a1d447c300                MOV EAX,[0x00c347d4]
007023d7  8b5318                    MOV EDX,dword ptr [EBX + 0x18]
007023da  8b35dc47c300              MOV ESI,dword ptr [0x00c347dc]
007023e0  230dd047c300              AND ECX,dword ptr [0x00c347d0]
007023e6  234314                    AND EAX,dword ptr [EBX + 0x14]
007023e9  2315d847c300              AND EDX,dword ptr [0x00c347d8]
007023ef  23731c                    AND ESI,dword ptr [EBX + 0x1c]
007023f2  0bc8                      OR ECX,EAX
007023f4  7508                      JNZ 0x007023fe
007023f6  0bd6                      OR EDX,ESI
007023f8  0f840e0d0000              JZ 0x0070310c
007023fe  8bb574ffffff              MOV ESI,dword ptr [EBP + 0xffffff74]
00702404  8bce                      MOV ECX,ESI
00702406  6a14                      PUSH 0x14
00702408  e863120000                CALL 0x00703670
0070240d  6a00                      PUSH 0x0
0070240f  6a00                      PUSH 0x0
00702411  57                        PUSH EDI
00702412  51                        PUSH ECX
00702413  c7042400004843            MOV dword ptr [ESP],0x43480000
0070241a  8bce                      MOV ECX,ESI
0070241c  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00702422  c7862c65020006000000      MOV dword ptr [ESI + 0x2652c],0x6
0070242c  c7862865020006000000      MOV dword ptr [ESI + 0x26528],0x6
00702436  c786306502000000803f      MOV dword ptr [ESI + 0x26530],0x3f800000
00702440  e81b1f0000                CALL 0x00704360
00702445  33ff                      XOR EDI,EDI
00702447  e814cbfeff                CALL 0x006eef60
0070244c  660f6ec0                  MOVD XMM0,EAX
00702450  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00702454  c1e81f                    SHR EAX,0x1f
00702457  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00702460  8bc7                      MOV EAX,EDI
00702462  c1e81f                    SHR EAX,0x1f
00702465  660f5ac8                  CVTPD2PS XMM1,XMM0
00702469  660f6ec7                  MOVD XMM0,EDI
0070246d  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00702475  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00702479  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00702482  660f5ac0                  CVTPD2PS XMM0,XMM0
00702486  f30f58c8                  ADDSS XMM1,XMM0
0070248a  f30f5c0dd0a2ba00          SUBSS XMM1,dword ptr [0x00baa2d0]
00702492  f30f590d30abba00          MULSS XMM1,dword ptr [0x00baab30]
0070249a  f30f5e0d54a8ba00          DIVSS XMM1,dword ptr [0x00baa854]
007024a2  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
007024aa  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
007024af  e8accafeff                CALL 0x006eef60
007024b4  660f6ec0                  MOVD XMM0,EAX
007024b8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
007024bc  c1e81f                    SHR EAX,0x1f
007024bf  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
007024c8  660f5ac0                  CVTPD2PS XMM0,XMM0
007024cc  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
007024d4  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
007024dc  f30f580554a8ba00          ADDSS XMM0,dword ptr [0x00baa854]
007024e4  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
007024e9  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
007024ee  e84db0d1ff                CALL 0x0041d540
007024f3  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
007024f8  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
00702500  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
00702505  e816b0d1ff                CALL 0x0041d520
0070250a  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
0070250f  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
00702517  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
0070251f  e83ccafeff                CALL 0x006eef60
00702524  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0070252a  50                        PUSH EAX
0070252b  6a00                      PUSH 0x0
0070252d  6a00                      PUSH 0x0
0070252f  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
00702535  50                        PUSH EAX
00702536  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
0070253c  6a3b                      PUSH 0x3b
0070253e  68e8030000                PUSH 0x3e8
00702543  e8d865d2ff                CALL 0x00428b20
00702548  8bf0                      MOV ESI,EAX
0070254a  e811cafeff                CALL 0x006eef60
0070254f  a801                      TEST AL,0x1
00702551  740a                      JZ 0x0070255d
00702553  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0070255b  eb08                      JMP 0x00702565
0070255d  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00702565  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
0070256a  e8f1c9feff                CALL 0x006eef60
0070256f  660f6ec0                  MOVD XMM0,EAX
00702573  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00702577  c1e81f                    SHR EAX,0x1f
0070257a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00702583  660f5ac0                  CVTPD2PS XMM0,XMM0
00702587  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0070258f  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00702597  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0070259f  f30f594588                MULSS XMM0,dword ptr [EBP + -0x78]
007025a4  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
007025ac  e8afc9feff                CALL 0x006eef60
007025b1  660f6ec0                  MOVD XMM0,EAX
007025b5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
007025b9  c1e81f                    SHR EAX,0x1f
007025bc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
007025c5  660f5ac8                  CVTPD2PS XMM1,XMM0
007025c9  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
007025d1  f30f590d04a3ba00          MULSS XMM1,dword ptr [0x00baa304]
007025d9  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
007025e1  0f28c1                    MOVAPS XMM0,XMM1
007025e4  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
007025ec  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
007025f4  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
007025fc  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00702604  e857c9feff                CALL 0x006eef60
00702609  33d2                      XOR EDX,EDX
0070260b  b928000000                MOV ECX,0x28
00702610  f7f1                      DIV ECX
00702612  03d1                      ADD EDX,ECX
00702614  8d4d94                    LEA ECX,[EBP + -0x6c]
00702617  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
0070261d  899660040000              MOV dword ptr [ESI + 0x460],EDX
00702623  e8a808f8ff                CALL 0x00682ed0
00702628  8b06                      MOV EAX,dword ptr [ESI]
0070262a  8d4d94                    LEA ECX,[EBP + -0x6c]
0070262d  0f2805e0bdba00            MOVAPS XMM0,xmmword ptr [0x00babde0]
00702634  6a01                      PUSH 0x1
00702636  6a00                      PUSH 0x0
00702638  68ff000000                PUSH 0xff
0070263d  6aff                      PUSH -0x1
0070263f  51                        PUSH ECX
00702640  8bce                      MOV ECX,ESI
00702642  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
00702646  ff503c                    CALL dword ptr [EAX + 0x3c]
00702649  47                        INC EDI
0070264a  83ff0f                    CMP EDI,0xf
0070264d  0f82f4fdffff              JC 0x00702447
00702653  e808c9feff                CALL 0x006eef60
00702658  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
0070265e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00702664  50                        PUSH EAX
00702665  6a01                      PUSH 0x1
00702667  57                        PUSH EDI
00702668  6840b6c700                PUSH 0xc7b640
0070266d  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00702673  6a10                      PUSH 0x10
00702675  68e8030000                PUSH 0x3e8
0070267a  e8a164d2ff                CALL 0x00428b20
0070267f  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00702687  8bf0                      MOV ESI,EAX
00702689  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00702691  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
00702699  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
007026a1  f30f118ee4000000          MOVSS dword ptr [ESI + 0xe4],XMM1
007026a9  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
007026b1  e8aac8feff                CALL 0x006eef60
007026b6  f6d0                      NOT AL
007026b8  8bce                      MOV ECX,ESI
007026ba  2401                      AND AL,0x1
007026bc  888648010000              MOV byte ptr [ESI + 0x148],AL
007026c2  8b06                      MOV EAX,dword ptr [ESI]
007026c4  ff500c                    CALL dword ptr [EAX + 0xc]
007026c7  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
007026cd  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
007026d5  8bb574ffffff              MOV ESI,dword ptr [EBP + 0xffffff74]
007026db  f30f1000                  MOVSS XMM0,dword ptr [EAX]
007026df  f30f5cc2                  SUBSS XMM0,XMM2
007026e3  8bb600830100              MOV ESI,dword ptr [ESI + 0x18300]
007026e9  89b57cffffff              MOV dword ptr [EBP + 0xffffff7c],ESI
007026ef  f30f5ec2                  DIVSS XMM0,XMM2
007026f3  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
007026fb  f30f2cd0                  CVTTSS2SI EDX,XMM0
007026ff  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00702704  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
0070270c  f30f5ec2                  DIVSS XMM0,XMM2
00702710  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00702718  f30f2cc8                  CVTTSS2SI ECX,XMM0
0070271c  85d2                      TEST EDX,EDX
0070271e  7817                      JS 0x00702737
00702720  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
00702723  3bd0                      CMP EDX,EAX
00702725  7d10                      JGE 0x00702737
00702727  85c9                      TEST ECX,ECX
00702729  780c                      JS 0x00702737
0070272b  3b4e10                    CMP ECX,dword ptr [ESI + 0x10]
0070272e  7d07                      JGE 0x00702737
00702730  0fafc1                    IMUL EAX,ECX
00702733  03c2                      ADD EAX,EDX
00702735  eb03                      JMP 0x0070273a
00702737  83c8ff                    OR EAX,0xffffffff
0070273a  6a00                      PUSH 0x0
0070273c  50                        PUSH EAX
0070273d  8bce                      MOV ECX,ESI
0070273f  89458c                    MOV dword ptr [EBP + -0x74],EAX
00702742  e8d9001200                CALL 0x00822820
00702747  84c0                      TEST AL,AL
00702749  0f84ca000000              JZ 0x00702819
0070274f  e80cc8feff                CALL 0x006eef60
00702754  8b4d8c                    MOV ECX,dword ptr [EBP + -0x74]
00702757  894580                    MOV dword ptr [EBP + -0x80],EAX
0070275a  85c9                      TEST ECX,ECX
0070275c  7808                      JS 0x00702766
0070275e  81f9c0010000              CMP ECX,0x1c0
00702764  7c26                      JL 0x0070278c
00702766  6838c1b600                PUSH 0xb6c138
0070276b  6a10                      PUSH 0x10
0070276d  e84eeb3000                CALL 0x00a112c0
00702772  8b4d8c                    MOV ECX,dword ptr [EBP + -0x74]
00702775  83c408                    ADD ESP,0x8
00702778  85c9                      TEST ECX,ECX
0070277a  0f8899000000              JS 0x00702819
00702780  81f9c0010000              CMP ECX,0x1c0
00702786  0f8d8d000000              JGE 0x00702819
0070278c  81bc8e6c07000084030000    CMP dword ptr [ESI + ECX*0x4 + 0x76c],0x384
00702797  7f6d                      JG 0x00702806
00702799  8bd1                      MOV EDX,ECX
0070279b  b907000000                MOV ECX,0x7
007027a0  e83b8b0000                CALL 0x0070b2e0
007027a5  8bc8                      MOV ECX,EAX
007027a7  894d88                    MOV dword ptr [EBP + -0x78],ECX
007027aa  85c9                      TEST ECX,ECX
007027ac  7455                      JZ 0x00702803
007027ae  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
007027b1  8b548624                  MOV EDX,dword ptr [ESI + EAX*0x4 + 0x24]
007027b5  85d2                      TEST EDX,EDX
007027b7  740e                      JZ 0x007027c7
007027b9  8b02                      MOV EAX,dword ptr [EDX]
007027bb  8bca                      MOV ECX,EDX
007027bd  6a01                      PUSH 0x1
007027bf  ff10                      CALL dword ptr [EAX]
007027c1  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
007027c4  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
007027c7  894c8624                  MOV dword ptr [ESI + EAX*0x4 + 0x24],ECX
007027cb  8b4580                    MOV EAX,dword ptr [EBP + -0x80]
007027ce  894114                    MOV dword ptr [ECX + 0x14],EAX
007027d1  8b01                      MOV EAX,dword ptr [ECX]
007027d3  c7410800000000            MOV dword ptr [ECX + 0x8],0x0
007027da  c7411800000000            MOV dword ptr [ECX + 0x18],0x0
007027e1  c7413c00000000            MOV dword ptr [ECX + 0x3c],0x0
007027e8  ff5020                    CALL dword ptr [EAX + 0x20]
007027eb  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
007027ee  a17816c700                MOV EAX,[0x00c71678]
007027f3  ff4110                    INC dword ptr [ECX + 0x10]
007027f6  c6411c01                  MOV byte ptr [ECX + 0x1c],0x1
007027fa  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00702800  894128                    MOV dword ptr [ECX + 0x28],EAX
00702803  8b4d8c                    MOV ECX,dword ptr [EBP + -0x74]
00702806  8b4c8e24                  MOV ECX,dword ptr [ESI + ECX*0x4 + 0x24]
0070280a  85c9                      TEST ECX,ECX
0070280c  740b                      JZ 0x00702819
0070280e  83790407                  CMP dword ptr [ECX + 0x4],0x7
00702812  7505                      JNZ 0x00702819
00702814  8b11                      MOV EDX,dword ptr [ECX]
00702816  ff5204                    CALL dword ptr [EDX + 0x4]
00702819  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
0070281c  99                        CDQ
0070281d  f77e0c                    IDIV dword ptr [ESI + 0xc]
00702820  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
00702826  b801000000                MOV EAX,0x1
0070282b  899530ffffff              MOV dword ptr [EBP + 0xffffff30],EDX
00702831  894584                    MOV dword ptr [EBP + -0x7c],EAX
00702834  83ceff                    OR ESI,0xffffffff
00702837  c7458004000000            MOV dword ptr [EBP + -0x80],0x4
0070283e  33d2                      XOR EDX,EDX
00702840  89b564ffffff              MOV dword ptr [EBP + 0xffffff64],ESI
00702846  899544ffffff              MOV dword ptr [EBP + 0xffffff44],EDX
0070284c  0f1f4000                  NOP dword ptr [EAX]
00702850  8bce                      MOV ECX,ESI
00702852  899570ffffff              MOV dword ptr [EBP + 0xffffff70],EDX
00702858  0fafc8                    IMUL ECX,EAX
0070285b  0fafd0                    IMUL EDX,EAX
0070285e  898548ffffff              MOV dword ptr [EBP + 0xffffff48],EAX
00702864  038d30ffffff              ADD ECX,dword ptr [EBP + 0xffffff30]
0070286a  03955cffffff              ADD EDX,dword ptr [EBP + 0xffffff5c]
00702870  898d50ffffff              MOV dword ptr [EBP + 0xffffff50],ECX
00702876  89954cffffff              MOV dword ptr [EBP + 0xffffff4c],EDX
0070287c  0f1f4000                  NOP dword ptr [EAX]
00702880  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00702886  85c9                      TEST ECX,ECX
00702888  7817                      JS 0x007028a1
0070288a  8b700c                    MOV ESI,dword ptr [EAX + 0xc]
0070288d  3bce                      CMP ECX,ESI
0070288f  7d10                      JGE 0x007028a1
00702891  85d2                      TEST EDX,EDX
00702893  780c                      JS 0x007028a1
00702895  3b5010                    CMP EDX,dword ptr [EAX + 0x10]
00702898  7d07                      JGE 0x007028a1
0070289a  0faff2                    IMUL ESI,EDX
0070289d  03f1                      ADD ESI,ECX
0070289f  eb03                      JMP 0x007028a4
007028a1  83ceff                    OR ESI,0xffffffff
007028a4  6a00                      PUSH 0x0
007028a6  56                        PUSH ESI
007028a7  8bc8                      MOV ECX,EAX
007028a9  e872ff1100                CALL 0x00822820
007028ae  84c0                      TEST AL,AL
007028b0  0f84a6070000              JZ 0x0070305c
007028b6  81febf010000              CMP ESI,0x1bf
007028bc  0f8747010000              JA 0x00702a09
007028c2  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
007028c8  8b54b024                  MOV EDX,dword ptr [EAX + ESI*0x4 + 0x24]
007028cc  85d2                      TEST EDX,EDX
007028ce  0f8435010000              JZ 0x00702a09
007028d4  837a3c00                  CMP dword ptr [EDX + 0x3c],0x0
007028d8  0f842b010000              JZ 0x00702a09
007028de  8b02                      MOV EAX,dword ptr [EDX]
007028e0  8b4014                    MOV EAX,dword ptr [EAX + 0x14]
007028e3  898560ffffff              MOV dword ptr [EBP + 0xffffff60],EAX
007028e9  85ff                      TEST EDI,EDI
007028eb  7468                      JZ 0x00702955
007028ed  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
007028f0  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
007028f8  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00702900  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
00702903  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00702906  8945c8                    MOV dword ptr [EBP + -0x38],EAX
00702909  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0070290c  8945cc                    MOV dword ptr [EBP + -0x34],EAX
0070290f  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
00702912  8945d0                    MOV dword ptr [EBP + -0x30],EAX
00702915  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0070291b  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
00702920  2500010000                AND EAX,0x100
00702925  83c800                    OR EAX,0x0
00702928  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00702930  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
00702935  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0070293d  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
00702942  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
00702947  744c                      JZ 0x00702995
00702949  c78574ffffff01000000      MOV dword ptr [EBP + 0xffffff74],0x1
00702953  eb4e                      JMP 0x007029a3
00702955  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0070295d  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00702965  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
0070296c  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
00702973  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
0070297a  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00702981  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
00702986  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0070298b  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
00702990  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
00702995  c78574ffffff00000000      MOV dword ptr [EBP + 0xffffff74],0x0
0070299f  85ff                      TEST EDI,EDI
007029a1  7419                      JZ 0x007029bc
007029a3  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
007029a9  2500000020                AND EAX,0x20000000
007029ae  83c800                    OR EAX,0x0
007029b1  7413                      JZ 0x007029c6
007029b3  c7458802000000            MOV dword ptr [EBP + -0x78],0x2
007029ba  eb15                      JMP 0x007029d1
007029bc  c78574ffffff00000000      MOV dword ptr [EBP + 0xffffff74],0x0
007029c6  c7458800000000            MOV dword ptr [EBP + -0x78],0x0
007029cd  85ff                      TEST EDI,EDI
007029cf  7419                      JZ 0x007029ea
007029d1  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
007029d7  33c0                      XOR EAX,EAX
007029d9  81e100004000              AND ECX,0x400000
007029df  0bc1                      OR EAX,ECX
007029e1  7407                      JZ 0x007029ea
007029e3  b804000000                MOV EAX,0x4
007029e8  eb02                      JMP 0x007029ec
007029ea  33c0                      XOR EAX,EAX
007029ec  0b4588                    OR EAX,dword ptr [EBP + -0x78]
007029ef  8bca                      MOV ECX,EDX
007029f1  0b8574ffffff              OR EAX,dword ptr [EBP + 0xffffff74]
007029f7  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
007029fa  8d45c4                    LEA EAX,[EBP + -0x3c]
007029fd  50                        PUSH EAX
007029fe  6a01                      PUSH 0x1
00702a00  897de8                    MOV dword ptr [EBP + -0x18],EDI
00702a03  ff9560ffffff              CALL dword ptr [EBP + 0xffffff60]
00702a09  e852c5feff                CALL 0x006eef60
00702a0e  898560ffffff              MOV dword ptr [EBP + 0xffffff60],EAX
00702a14  85f6                      TEST ESI,ESI
00702a16  7808                      JS 0x00702a20
00702a18  81fec0010000              CMP ESI,0x1c0
00702a1e  7c23                      JL 0x00702a43
00702a20  6838c1b600                PUSH 0xb6c138
00702a25  6a10                      PUSH 0x10
00702a27  e894e83000                CALL 0x00a112c0
00702a2c  83c408                    ADD ESP,0x8
00702a2f  85f6                      TEST ESI,ESI
00702a31  0f8825060000              JS 0x0070305c
00702a37  81fec0010000              CMP ESI,0x1c0
00702a3d  0f8d19060000              JGE 0x0070305c
00702a43  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00702a49  81bcb06c07000084030000    CMP dword ptr [EAX + ESI*0x4 + 0x76c],0x384
00702a54  0f8f79000000              JG 0x00702ad3
00702a5a  8bd6                      MOV EDX,ESI
00702a5c  b907000000                MOV ECX,0x7
00702a61  e87a880000                CALL 0x0070b2e0
00702a66  8bc8                      MOV ECX,EAX
00702a68  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00702a6e  894d88                    MOV dword ptr [EBP + -0x78],ECX
00702a71  85c9                      TEST ECX,ECX
00702a73  745e                      JZ 0x00702ad3
00702a75  8b54b024                  MOV EDX,dword ptr [EAX + ESI*0x4 + 0x24]
00702a79  85d2                      TEST EDX,EDX
00702a7b  7411                      JZ 0x00702a8e
00702a7d  8b02                      MOV EAX,dword ptr [EDX]
00702a7f  8bca                      MOV ECX,EDX
00702a81  6a01                      PUSH 0x1
00702a83  ff10                      CALL dword ptr [EAX]
00702a85  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
00702a88  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00702a8e  894cb024                  MOV dword ptr [EAX + ESI*0x4 + 0x24],ECX
00702a92  8b8560ffffff              MOV EAX,dword ptr [EBP + 0xffffff60]
00702a98  894114                    MOV dword ptr [ECX + 0x14],EAX
00702a9b  8b01                      MOV EAX,dword ptr [ECX]
00702a9d  c7410800000000            MOV dword ptr [ECX + 0x8],0x0
00702aa4  c7411800000000            MOV dword ptr [ECX + 0x18],0x0
00702aab  c7413c00000000            MOV dword ptr [ECX + 0x3c],0x0
00702ab2  ff5020                    CALL dword ptr [EAX + 0x20]
00702ab5  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
00702ab8  a17816c700                MOV EAX,[0x00c71678]
00702abd  ff4110                    INC dword ptr [ECX + 0x10]
00702ac0  c6411c01                  MOV byte ptr [ECX + 0x1c],0x1
00702ac4  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00702aca  894128                    MOV dword ptr [ECX + 0x28],EAX
00702acd  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00702ad3  8b4cb024                  MOV ECX,dword ptr [EAX + ESI*0x4 + 0x24]
00702ad7  85c9                      TEST ECX,ECX
00702ad9  0f847d050000              JZ 0x0070305c
00702adf  83790407                  CMP dword ptr [ECX + 0x4],0x7
00702ae3  0f8573050000              JNZ 0x0070305c
00702ae9  8b11                      MOV EDX,dword ptr [ECX]
00702aeb  ff5204                    CALL dword ptr [EDX + 0x4]
00702aee  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00702af4  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
00702afc  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
00702aff  8bc6                      MOV EAX,ESI
00702b01  99                        CDQ
00702b02  f7f9                      IDIV ECX
00702b04  660f6ec2                  MOVD XMM0,EDX
00702b08  0f5bc0                    CVTDQ2PS XMM0,XMM0
00702b0b  660f6ed0                  MOVD XMM2,EAX
00702b0f  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
00702b15  f30f59c1                  MULSS XMM0,XMM1
00702b19  0f5bd2                    CVTDQ2PS XMM2,XMM2
00702b1c  f30f58c1                  ADDSS XMM0,XMM1
00702b20  f30f59d1                  MULSS XMM2,XMM1
00702b24  f30f581500aaba00          ADDSS XMM2,dword ptr [0x00baaa00]
00702b2c  0f28c8                    MOVAPS XMM1,XMM0
00702b2f  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00702b37  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
00702b3b  f30f119560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM2
00702b43  f30f5c5004                SUBSS XMM2,dword ptr [EAX + 0x4]
00702b48  0f28c1                    MOVAPS XMM0,XMM1
00702b4b  f30f118d74ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM1
00702b53  f30f59c1                  MULSS XMM0,XMM1
00702b57  0f28ca                    MOVAPS XMM1,XMM2
00702b5a  f30f115590                MOVSS dword ptr [EBP + -0x70],XMM2
00702b5f  f30f59ca                  MULSS XMM1,XMM2
00702b63  f30f58c1                  ADDSS XMM0,XMM1
00702b67  e8e42ed3ff                CALL 0x00435a50
00702b6c  0f57c9                    XORPS XMM1,XMM1
00702b6f  0f2fc1                    COMISS XMM0,XMM1
00702b72  7631                      JBE 0x00702ba5
00702b74  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00702b7c  f30f5ec8                  DIVSS XMM1,XMM0
00702b80  f30f109574ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff74]
00702b88  0f28c1                    MOVAPS XMM0,XMM1
00702b8b  f30f59d0                  MULSS XMM2,XMM0
00702b8f  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
00702b94  f30f59c1                  MULSS XMM0,XMM1
00702b98  f30f119574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM2
00702ba0  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
00702ba5  bf05000000                MOV EDI,0x5
00702baa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00702bb0  e8abc3feff                CALL 0x006eef60
00702bb5  8bf0                      MOV ESI,EAX
00702bb7  e8a4c3feff                CALL 0x006eef60
00702bbc  660f6ec0                  MOVD XMM0,EAX
00702bc0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00702bc4  c1e81f                    SHR EAX,0x1f
00702bc7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00702bd0  660f5ac0                  CVTPD2PS XMM0,XMM0
00702bd4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00702bdc  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
00702be4  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
00702bec  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00702bf4  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
00702bf9  e842a9d1ff                CALL 0x0041d540
00702bfe  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
00702c03  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
00702c08  e813a9d1ff                CALL 0x0041d520
00702c0d  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
00702c12  e849c3feff                CALL 0x006eef60
00702c17  f30f10658c                MOVSS XMM4,dword ptr [EBP + -0x74]
00702c1c  f30f105d88                MOVSS XMM3,dword ptr [EBP + -0x78]
00702c21  0f28c3                    MOVAPS XMM0,XMM3
00702c24  f30f599d74ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff74]
00702c2c  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
00702c31  660f6ec8                  MOVD XMM1,EAX
00702c35  f30fe6c9                  CVTDQ2PD XMM1,XMM1
00702c39  c1e81f                    SHR EAX,0x1f
00702c3c  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
00702c45  660f5ad1                  CVTPD2PS XMM2,XMM1
00702c49  0f28cc                    MOVAPS XMM1,XMM4
00702c4c  f30f596590                MULSS XMM4,dword ptr [EBP + -0x70]
00702c51  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00702c59  f30f598d74ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff74]
00702c61  f30f58dc                  ADDSS XMM3,XMM4
00702c65  f30f5915a4a7ba00          MULSS XMM2,dword ptr [0x00baa7a4]
00702c6d  f30f5cc8                  SUBSS XMM1,XMM0
00702c71  f30f5815a4a7ba00          ADDSS XMM2,dword ptr [0x00baa7a4]
00702c79  f30f59ca                  MULSS XMM1,XMM2
00702c7d  f30f59da                  MULSS XMM3,XMM2
00702c81  f30f118d20ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM1
00702c89  f30f119d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM3
00702c91  e8cac2feff                CALL 0x006eef60
00702c96  660f6ec0                  MOVD XMM0,EAX
00702c9a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00702c9e  c1e81f                    SHR EAX,0x1f
00702ca1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00702caa  660f5ac0                  CVTPD2PS XMM0,XMM0
00702cae  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00702cb6  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00702cbe  f30f58c0                  ADDSS XMM0,XMM0
00702cc2  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
00702cc7  e894c2feff                CALL 0x006eef60
00702ccc  660f6ec0                  MOVD XMM0,EAX
00702cd0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00702cd4  c1e81f                    SHR EAX,0x1f
00702cd7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00702ce0  660f5ac0                  CVTPD2PS XMM0,XMM0
00702ce4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00702cec  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00702cf4  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
00702cf9  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
00702cfe  e83da8d1ff                CALL 0x0041d540
00702d03  f30f59458c                MULSS XMM0,dword ptr [EBP + -0x74]
00702d08  f30f588554ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff54]
00702d10  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
00702d18  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
00702d1d  e8fea7d1ff                CALL 0x0041d520
00702d22  f30f59458c                MULSS XMM0,dword ptr [EBP + -0x74]
00702d27  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00702d2d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00702d33  56                        PUSH ESI
00702d34  6800000200                PUSH 0x20000
00702d39  f30f588560ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff60]
00702d41  6a00                      PUSH 0x0
00702d43  50                        PUSH EAX
00702d44  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00702d4a  50                        PUSH EAX
00702d4b  6a04                      PUSH 0x4
00702d4d  68e8030000                PUSH 0x3e8
00702d52  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
00702d5a  e8c15dd2ff                CALL 0x00428b20
00702d5f  8bf0                      MOV ESI,EAX
00702d61  e8fac1feff                CALL 0x006eef60
00702d66  660f6ec0                  MOVD XMM0,EAX
00702d6a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00702d6e  c1e81f                    SHR EAX,0x1f
00702d71  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00702d7a  660f5ac8                  CVTPD2PS XMM1,XMM0
00702d7e  f30f1005a0adba00          MOVSS XMM0,dword ptr [0x00baada0]
00702d86  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00702d8e  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
00702d96  f30f5cc1                  SUBSS XMM0,XMM1
00702d9a  f30f118614040000          MOVSS dword ptr [ESI + 0x414],XMM0
00702da2  83ef01                    SUB EDI,0x1
00702da5  0f8505feffff              JNZ 0x00702bb0
00702dab  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
00702db1  c7458c02000000            MOV dword ptr [EBP + -0x74],0x2
00702db8  e8a3c1feff                CALL 0x006eef60
00702dbd  0f57c0                    XORPS XMM0,XMM0
00702dc0  f20f2ac0                  CVTSI2SD XMM0,EAX
00702dc4  c1e81f                    SHR EAX,0x1f
00702dc7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00702dd0  660f5ac0                  CVTPD2PS XMM0,XMM0
00702dd4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00702ddc  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00702de4  f30f58c0                  ADDSS XMM0,XMM0
00702de8  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
00702ded  e86ec1feff                CALL 0x006eef60
00702df2  0f57c0                    XORPS XMM0,XMM0
00702df5  f20f2ac0                  CVTSI2SD XMM0,EAX
00702df9  c1e81f                    SHR EAX,0x1f
00702dfc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00702e05  660f5ac0                  CVTPD2PS XMM0,XMM0
00702e09  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00702e11  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
00702e16  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
00702e1b  e820a7d1ff                CALL 0x0041d540
00702e20  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
00702e25  f30f5905a0a8ba00          MULSS XMM0,dword ptr [0x00baa8a0]
00702e2d  f30f588554ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff54]
00702e35  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
00702e3d  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00702e45  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
00702e4a  e8d1a6d1ff                CALL 0x0041d520
00702e4f  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
00702e55  0f28c8                    MOVAPS XMM1,XMM0
00702e58  f30f594d90                MULSS XMM1,dword ptr [EBP + -0x70]
00702e5d  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
00702e65  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
00702e69  f30f590da0a8ba00          MULSS XMM1,dword ptr [0x00baa8a0]
00702e71  f30f588d60ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff60]
00702e79  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
00702e81  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
00702e89  f30f5c4804                SUBSS XMM1,dword ptr [EAX + 0x4]
00702e8e  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
00702e93  e8c8c0feff                CALL 0x006eef60
00702e98  0f57c0                    XORPS XMM0,XMM0
00702e9b  f30f104d90                MOVSS XMM1,dword ptr [EBP + -0x70]
00702ea0  f30f59c9                  MULSS XMM1,XMM1
00702ea4  f20f2ac0                  CVTSI2SD XMM0,EAX
00702ea8  c1e81f                    SHR EAX,0x1f
00702eab  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00702eb4  660f5ac0                  CVTPD2PS XMM0,XMM0
00702eb8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00702ec0  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00702ec8  f30f580534a8ba00          ADDSS XMM0,dword ptr [0x00baa834]
00702ed0  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
00702ed5  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
00702edd  f30f59c0                  MULSS XMM0,XMM0
00702ee1  f30f58c1                  ADDSS XMM0,XMM1
00702ee5  e8662bd3ff                CALL 0x00435a50
00702eea  0f57c9                    XORPS XMM1,XMM1
00702eed  0f2fc1                    COMISS XMM0,XMM1
00702ef0  7628                      JBE 0x00702f1a
00702ef2  f30f104d88                MOVSS XMM1,dword ptr [EBP + -0x78]
00702ef7  f30f5ec8                  DIVSS XMM1,XMM0
00702efb  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
00702f03  f30f59c1                  MULSS XMM0,XMM1
00702f07  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00702f0f  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
00702f14  f30f59c1                  MULSS XMM0,XMM1
00702f18  eb15                      JMP 0x00702f2f
00702f1a  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
00702f22  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00702f2a  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
00702f2f  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
00702f37  85ff                      TEST EDI,EDI
00702f39  0f84a2000000              JZ 0x00702fe1
00702f3f  837f2801                  CMP dword ptr [EDI + 0x28],0x1
00702f43  740a                      JZ 0x00702f4f
00702f45  837f3401                  CMP dword ptr [EDI + 0x34],0x1
00702f49  0f8592000000              JNZ 0x00702fe1
00702f4f  e80cc0feff                CALL 0x006eef60
00702f54  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00702f5a  50                        PUSH EAX
00702f5b  6a00                      PUSH 0x0
00702f5d  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00702f63  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00702f69  50                        PUSH EAX
00702f6a  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
00702f70  50                        PUSH EAX
00702f71  6a2a                      PUSH 0x2a
00702f73  6a02                      PUSH 0x2
00702f75  e8a65bd2ff                CALL 0x00428b20
00702f7a  8bf0                      MOV ESI,EAX
00702f7c  e8dfbffeff                CALL 0x006eef60
00702f81  8bce                      MOV ECX,ESI
00702f83  660f6ec0                  MOVD XMM0,EAX
00702f87  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00702f8b  c1e81f                    SHR EAX,0x1f
00702f8e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00702f97  660f5ac0                  CVTPD2PS XMM0,XMM0
00702f9b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00702fa3  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00702fab  f30f580554a3ba00          ADDSS XMM0,dword ptr [0x00baa354]
00702fb3  f30f5f056ca0ba00          MAXSS XMM0,dword ptr [0x00baa06c]
00702fbb  f30f118624040000          MOVSS dword ptr [ESI + 0x424],XMM0
00702fc3  f30f118620040000          MOVSS dword ptr [ESI + 0x420],XMM0
00702fcb  e8b047f7ff                CALL 0x00677780
00702fd0  8b06                      MOV EAX,dword ptr [ESI]
00702fd2  51                        PUSH ECX
00702fd3  8bce                      MOV ECX,ESI
00702fd5  c7042400007041            MOV dword ptr [ESP],0x41700000
00702fdc  ff5040                    CALL dword ptr [EAX + 0x40]
00702fdf  eb6a                      JMP 0x0070304b
00702fe1  e87abffeff                CALL 0x006eef60
00702fe6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00702fec  50                        PUSH EAX
00702fed  6a00                      PUSH 0x0
00702fef  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00702ff5  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00702ffb  50                        PUSH EAX
00702ffc  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
00703002  50                        PUSH EAX
00703003  6a09                      PUSH 0x9
00703005  6a09                      PUSH 0x9
00703007  e8145bd2ff                CALL 0x00428b20
0070300c  8bf0                      MOV ESI,EAX
0070300e  e84dbffeff                CALL 0x006eef60
00703013  660f6ec0                  MOVD XMM0,EAX
00703017  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0070301b  c1e81f                    SHR EAX,0x1f
0070301e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00703027  660f5ac0                  CVTPD2PS XMM0,XMM0
0070302b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00703033  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0070303b  f30f580554a3ba00          ADDSS XMM0,dword ptr [0x00baa354]
00703043  f30f118620040000          MOVSS dword ptr [ESI + 0x420],XMM0
0070304b  8b06                      MOV EAX,dword ptr [ESI]
0070304d  8bce                      MOV ECX,ESI
0070304f  ff500c                    CALL dword ptr [EAX + 0xc]
00703052  836d8c01                  SUB dword ptr [EBP + -0x74],0x1
00703056  0f855cfdffff              JNZ 0x00702db8
0070305c  8b9544ffffff              MOV EDX,dword ptr [EBP + 0xffffff44]
00703062  8bb564ffffff              MOV ESI,dword ptr [EBP + 0xffffff64]
00703068  8b8d50ffffff              MOV ECX,dword ptr [EBP + 0xffffff50]
0070306e  8d0432                    LEA EAX,[EDX + ESI*0x1]
00703071  2bc8                      SUB ECX,EAX
00703073  8bc6                      MOV EAX,ESI
00703075  2bc2                      SUB EAX,EDX
00703077  898d50ffffff              MOV dword ptr [EBP + 0xffffff50],ECX
0070307d  8b954cffffff              MOV EDX,dword ptr [EBP + 0xffffff4c]
00703083  03d0                      ADD EDX,EAX
00703085  83ad48ffffff01            SUB dword ptr [EBP + 0xffffff48],0x1
0070308c  89954cffffff              MOV dword ptr [EBP + 0xffffff4c],EDX
00703092  0f85e8f7ffff              JNZ 0x00702880
00703098  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0070309b  8bd6                      MOV EDX,ESI
0070309d  89b544ffffff              MOV dword ptr [EBP + 0xffffff44],ESI
007030a3  8bb570ffffff              MOV ESI,dword ptr [EBP + 0xffffff70]
007030a9  f7de                      NEG ESI
007030ab  836d8001                  SUB dword ptr [EBP + -0x80],0x1
007030af  89b564ffffff              MOV dword ptr [EBP + 0xffffff64],ESI
007030b5  0f8595f7ffff              JNZ 0x00702850
007030bb  40                        INC EAX
007030bc  894584                    MOV dword ptr [EBP + -0x7c],EAX
007030bf  83f802                    CMP EAX,0x2
007030c2  0f8e6cf7ffff              JLE 0x00702834
007030c8  e893befeff                CALL 0x006eef60
007030cd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007030d3  50                        PUSH EAX
007030d4  6a00                      PUSH 0x0
007030d6  6a00                      PUSH 0x0
007030d8  6840b6c700                PUSH 0xc7b640
007030dd  6840b6c700                PUSH 0xc7b640
007030e2  6a77                      PUSH 0x77
007030e4  68e8030000                PUSH 0x3e8
007030e9  e8325ad2ff                CALL 0x00428b20
007030ee  c7802004000040317000      MOV dword ptr [EAX + 0x420],0x703140
007030f8  c780240400001e000000      MOV dword ptr [EAX + 0x424],0x1e
00703102  c7802804000000000000      MOV dword ptr [EAX + 0x428],0x0
0070310c  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0070310f  64890d00000000            MOV dword ptr FS:[0x0],ECX
00703116  59                        POP ECX
00703117  5f                        POP EDI
00703118  5e                        POP ESI
00703119  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0070311c  33cd                      XOR ECX,EBP
0070311e  e808c03e00                CALL 0x00aef12b
00703123  8be5                      MOV ESP,EBP
00703125  5d                        POP EBP
00703126  8be3                      MOV ESP,EBX
00703128  5b                        POP EBX
00703129  c22000                    RET 0x20
