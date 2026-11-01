; J460 NPC AI 0x004f9ad0 AI_004f9ad0
; types=818
; identities=818.0.0,818.0.1,818.0.2,818.0.3,818.1.0,818.1.1,818.1.2,818.1.3,818.2.0,818.2.1,818.2.2,818.2.3
; entry=004f9ad0
004f9ad0  53                        PUSH EBX
004f9ad1  8bdc                      MOV EBX,ESP
004f9ad3  83ec08                    SUB ESP,0x8
004f9ad6  83e4f8                    AND ESP,0xfffffff8
004f9ad9  83c404                    ADD ESP,0x4
004f9adc  55                        PUSH EBP
004f9add  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004f9ae0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004f9ae4  8bec                      MOV EBP,ESP
004f9ae6  83ec60                    SUB ESP,0x60
004f9ae9  a1b493bf00                MOV EAX,[0x00bf93b4]
004f9aee  33c5                      XOR EAX,EBP
004f9af0  8945fc                    MOV dword ptr [EBP + -0x4],EAX
004f9af3  56                        PUSH ESI
004f9af4  57                        PUSH EDI
004f9af5  8bf9                      MOV EDI,ECX
004f9af7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f9afd  6a01                      PUSH 0x1
004f9aff  81c1a8ba0100              ADD ECX,0x1baa8
004f9b05  51                        PUSH ECX
004f9b06  6879010000                PUSH 0x179
004f9b0b  e870454c00                CALL 0x009be080
004f9b10  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
004f9b18  85c0                      TEST EAX,EAX
004f9b1a  c645fb00                  MOV byte ptr [EBP + -0x5],0x0
004f9b1e  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004f9b26  0f9545ef                  SETNZ byte ptr [EBP + -0x11]
004f9b2a  2bf0                      SUB ESI,EAX
004f9b2c  a17816c700                MOV EAX,[0x00c71678]
004f9b31  8975f0                    MOV dword ptr [EBP + -0x10],ESI
004f9b34  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f9b3a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004f9b40  894de4                    MOV dword ptr [EBP + -0x1c],ECX
004f9b43  83f810                    CMP EAX,0x10
004f9b46  0f870b0b0000              JA 0x004fa657
004f9b4c  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004f9b54  0fb680a4aa4f00            MOVZX EAX,byte ptr [EAX + 0x4faaa4]
004f9b5b  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
004f9b60  ff248590aa4f00            JMP dword ptr [EAX*0x4 + 0x4faa90]
004f9b67  837f3000                  CMP dword ptr [EDI + 0x30],0x0
004f9b6b  751d                      JNZ 0x004f9b8a
004f9b6d  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
004f9b73  33d2                      XOR EDX,EDX
004f9b75  b903000000                MOV ECX,0x3
004f9b7a  f7f1                      DIV ECX
004f9b7c  8b07                      MOV EAX,dword ptr [EDI]
004f9b7e  8bcf                      MOV ECX,EDI
004f9b80  42                        INC EDX
004f9b81  895730                    MOV dword ptr [EDI + 0x30],EDX
004f9b84  ff5064                    CALL dword ptr [EAX + 0x64]
004f9b87  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
004f9b8a  803900                    CMP byte ptr [ECX],0x0
004f9b8d  7416                      JZ 0x004f9ba5
004f9b8f  a17816c700                MOV EAX,[0x00c71678]
004f9b94  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004f9b9a  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
004f9ba0  83f801                    CMP EAX,0x1
004f9ba3  7f13                      JG 0x004f9bb8
004f9ba5  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004f9bab  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
004f9bb2  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004f9bb8  6a00                      PUSH 0x0
004f9bba  8d7748                    LEA ESI,[EDI + 0x48]
004f9bbd  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004f9bc7  68880bb600                PUSH 0xb60b88
004f9bcc  8bce                      MOV ECX,ESI
004f9bce  e8ad07f1ff                CALL 0x0040a380
004f9bd3  837f2821                  CMP dword ptr [EDI + 0x28],0x21
004f9bd7  0f9445fb                  SETZ byte ptr [EBP + -0x5]
004f9bdb  7450                      JZ 0x004f9c2d
004f9bdd  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004f9be0  83f802                    CMP EAX,0x2
004f9be3  7448                      JZ 0x004f9c2d
004f9be5  0f57c0                    XORPS XMM0,XMM0
004f9be8  c745c0f2f0f03d            MOV dword ptr [EBP + -0x40],0x3df0f0f2
004f9bef  0f1145b0                  MOVUPS xmmword ptr [EBP + -0x50],XMM0
004f9bf3  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004f9bf9  83f801                    CMP EAX,0x1
004f9bfc  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
004f9c03  8d45a0                    LEA EAX,[EBP + -0x60]
004f9c06  0f1145a0                  MOVUPS xmmword ptr [EBP + -0x60],XMM0
004f9c0a  50                        PUSH EAX
004f9c0b  7510                      JNZ 0x004f9c1d
004f9c0d  c745c49998183e            MOV dword ptr [EBP + -0x3c],0x3e189899
004f9c14  c745c8f2f0703e            MOV dword ptr [EBP + -0x38],0x3e70f0f2
004f9c1b  eb1b                      JMP 0x004f9c38
004f9c1d  c745c4b1b0b03d            MOV dword ptr [EBP + -0x3c],0x3db0b0b1
004f9c24  c745c89190903d            MOV dword ptr [EBP + -0x38],0x3d909091
004f9c2b  eb0b                      JMP 0x004f9c38
004f9c2d  684c4dc300                PUSH 0xc34d4c
004f9c32  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004f9c38  e8b3d5f0ff                CALL 0x004071f0
004f9c3d  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004f9c43  83e004                    AND EAX,0x4
004f9c46  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004f9c50  83c800                    OR EAX,0x0
004f9c53  0f84fe030000              JZ 0x004fa057
004f9c59  e802531f00                CALL 0x006eef60
004f9c5e  50                        PUSH EAX
004f9c5f  6a00                      PUSH 0x0
004f9c61  6a00                      PUSH 0x0
004f9c63  6840b6c700                PUSH 0xc7b640
004f9c68  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004f9c6e  51                        PUSH ECX
004f9c6f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f9c75  6a0f                      PUSH 0xf
004f9c77  68e8030000                PUSH 0x3e8
004f9c7c  e89feef2ff                CALL 0x00428b20
004f9c81  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004f9c87  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
004f9c8e  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004f9c94  e9be030000                JMP 0x004fa057
004f9c99  6a00                      PUSH 0x0
004f9c9b  8d7748                    LEA ESI,[EDI + 0x48]
004f9c9e  68880bb600                PUSH 0xb60b88
004f9ca3  8bce                      MOV ECX,ESI
004f9ca5  e8d606f1ff                CALL 0x0040a380
004f9caa  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
004f9cb2  0f28c1                    MOVAPS XMM0,XMM1
004f9cb5  c7877c0300000000c842      MOV dword ptr [EDI + 0x37c],0x42c80000
004f9cbf  f30f59879c030000          MULSS XMM0,dword ptr [EDI + 0x39c]
004f9cc7  f30f588750030000          ADDSS XMM0,dword ptr [EDI + 0x350]
004f9ccf  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004f9cd6  f30f118750030000          MOVSS dword ptr [EDI + 0x350],XMM0
004f9cde  0f868c000000              JBE 0x004f9d70
004f9ce4  ffb740030000              PUSH dword ptr [EDI + 0x340]
004f9cea  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
004f9ced  ffb73c030000              PUSH dword ptr [EDI + 0x33c]
004f9cf3  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
004f9cfd  e87e6a2f00                CALL 0x007f0780
004f9d02  85c0                      TEST EAX,EAX
004f9d04  7415                      JZ 0x004f9d1b
004f9d06  8d4da4                    LEA ECX,[EBP + -0x5c]
004f9d09  e862bff3ff                CALL 0x00435c70
004f9d0e  8b17                      MOV EDX,dword ptr [EDI]
004f9d10  8bcf                      MOV ECX,EDI
004f9d12  50                        PUSH EAX
004f9d13  ff5224                    CALL dword ptr [EDX + 0x24]
004f9d16  e93c090000                JMP 0x004fa657
004f9d1b  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004f9d23  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004f9d2b  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004f9d33  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004f9d3b  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004f9d43  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004f9d4b  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
004f9d53  0f28c1                    MOVAPS XMM0,XMM1
004f9d56  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004f9d5d  0f2f45f4                  COMISS XMM0,dword ptr [EBP + -0xc]
004f9d61  760a                      JBE 0x004f9d6d
004f9d63  f30f590d14adba00          MULSS XMM1,dword ptr [0x00baad14]
004f9d6b  eb03                      JMP 0x004f9d70
004f9d6d  0f57c9                    XORPS XMM1,XMM1
004f9d70  f30f109750030000          MOVSS XMM2,dword ptr [EDI + 0x350]
004f9d78  f30f100530aeba00          MOVSS XMM0,dword ptr [0x00baae30]
004f9d80  0f2fc2                    COMISS XMM0,XMM2
004f9d83  7616                      JBE 0x004f9d9b
004f9d85  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
004f9d8f  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004f9d99  eb27                      JMP 0x004f9dc2
004f9d9b  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004f9da5  33c0                      XOR EAX,EAX
004f9da7  f30f100590adba00          MOVSS XMM0,dword ptr [0x00baad90]
004f9daf  0f2fc2                    COMISS XMM0,XMM2
004f9db2  0f96c0                    SETBE AL
004f9db5  8d044503000000            LEA EAX,[EAX*0x2 + 0x3]
004f9dbc  898784010000              MOV dword ptr [EDI + 0x184],EAX
004f9dc2  837f2821                  CMP dword ptr [EDI + 0x28],0x21
004f9dc6  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004f9dce  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004f9dd6  f30f58c1                  ADDSS XMM0,XMM1
004f9dda  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004f9de2  0f85cd010000              JNZ 0x004f9fb5
004f9de8  838f6801000001            OR dword ptr [EDI + 0x168],0x1
004f9def  8bcf                      MOV ECX,EDI
004f9df1  838f6c01000010            OR dword ptr [EDI + 0x16c],0x10
004f9df8  6a00                      PUSH 0x0
004f9dfa  6a1e                      PUSH 0x1e
004f9dfc  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004f9e03  e808291b00                CALL 0x006ac710
004f9e08  84c0                      TEST AL,AL
004f9e0a  7430                      JZ 0x004f9e3c
004f9e0c  e84f511f00                CALL 0x006eef60
004f9e11  33d2                      XOR EDX,EDX
004f9e13  b903000000                MOV ECX,0x3
004f9e18  f7f1                      DIV ECX
004f9e1a  85d2                      TEST EDX,EDX
004f9e1c  741e                      JZ 0x004f9e3c
004f9e1e  8d4da4                    LEA ECX,[EBP + -0x5c]
004f9e21  e84abef3ff                CALL 0x00435c70
004f9e26  8b17                      MOV EDX,dword ptr [EDI]
004f9e28  6a1e                      PUSH 0x1e
004f9e2a  50                        PUSH EAX
004f9e2b  6a00                      PUSH 0x0
004f9e2d  6a00                      PUSH 0x0
004f9e2f  51                        PUSH ECX
004f9e30  8bcf                      MOV ECX,EDI
004f9e32  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f9e39  ff5220                    CALL dword ptr [EDX + 0x20]
004f9e3c  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004f9e41  0f57d2                    XORPS XMM2,XMM2
004f9e44  0f2fc2                    COMISS XMM0,XMM2
004f9e47  0f8639010000              JBE 0x004f9f86
004f9e4d  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
004f9e50  2504000001                AND EAX,0x1000004
004f9e55  83c800                    OR EAX,0x0
004f9e58  740f                      JZ 0x004f9e69
004f9e5a  c787800300000000803f      MOV dword ptr [EDI + 0x380],0x3f800000
004f9e64  e9c5000000                JMP 0x004f9f2e
004f9e69  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
004f9e6c  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
004f9e6f  0f8489000000              JZ 0x004f9efe
004f9e75  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
004f9e80  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004f9e84  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004f9e8c  0f2fc8                    COMISS XMM1,XMM0
004f9e8f  7228                      JC 0x004f9eb9
004f9e91  0f2fc2                    COMISS XMM0,XMM2
004f9e94  7619                      JBE 0x004f9eaf
004f9e96  e8c5501f00                CALL 0x006eef60
004f9e9b  33d2                      XOR EDX,EDX
004f9e9d  b903000000                MOV ECX,0x3
004f9ea2  f7f1                      DIV ECX
004f9ea4  85d2                      TEST EDX,EDX
004f9ea6  7423                      JZ 0x004f9ecb
004f9ea8  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
004f9ead  eb2e                      JMP 0x004f9edd
004f9eaf  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004f9eb7  eb38                      JMP 0x004f9ef1
004f9eb9  e8a2501f00                CALL 0x006eef60
004f9ebe  33d2                      XOR EDX,EDX
004f9ec0  b903000000                MOV ECX,0x3
004f9ec5  f7f1                      DIV ECX
004f9ec7  85d2                      TEST EDX,EDX
004f9ec9  740a                      JZ 0x004f9ed5
004f9ecb  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
004f9ed3  eb08                      JMP 0x004f9edd
004f9ed5  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
004f9edd  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004f9ee5  f30f5cc8                  SUBSS XMM1,XMM0
004f9ee9  f30f118f80030000          MOVSS dword ptr [EDI + 0x380],XMM1
004f9ef1  83c638                    ADD ESI,0x38
004f9ef4  0f57d2                    XORPS XMM2,XMM2
004f9ef7  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
004f9efa  7584                      JNZ 0x004f9e80
004f9efc  eb08                      JMP 0x004f9f06
004f9efe  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004f9f06  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
004f9f0b  0f2fc1                    COMISS XMM0,XMM1
004f9f0e  760d                      JBE 0x004f9f1d
004f9f10  c787800300000000803f      MOV dword ptr [EDI + 0x380],0x3f800000
004f9f1a  0f28c8                    MOVAPS XMM1,XMM0
004f9f1d  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004f9f25  0f2fc1                    COMISS XMM0,XMM1
004f9f28  c645fb01                  MOV byte ptr [EBP + -0x5],0x1
004f9f2c  7655                      JBE 0x004f9f83
004f9f2e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f9f34  8d4df0                    LEA ECX,[EBP + -0x10]
004f9f37  c745f005010000            MOV dword ptr [EBP + -0x10],0x105
004f9f3e  e83dc84500                CALL 0x00956780
004f9f43  83ec08                    SUB ESP,0x8
004f9f46  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f9f4e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f9f55  6a00                      PUSH 0x0
004f9f57  6a02                      PUSH 0x2
004f9f59  51                        PUSH ECX
004f9f5a  c704249a99593f            MOV dword ptr [ESP],0x3f59999a
004f9f61  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f9f67  ff75f0                    PUSH dword ptr [EBP + -0x10]
004f9f6a  e8c13c4300                CALL 0x0092dc30
004f9f6f  8d4da4                    LEA ECX,[EBP + -0x5c]
004f9f72  e8f9bcf3ff                CALL 0x00435c70
004f9f77  8b17                      MOV EDX,dword ptr [EDI]
004f9f79  8bcf                      MOV ECX,EDI
004f9f7b  50                        PUSH EAX
004f9f7c  ff5224                    CALL dword ptr [EDX + 0x24]
004f9f7f  c645fb01                  MOV byte ptr [EBP + -0x5],0x1
004f9f83  8d7748                    LEA ESI,[EDI + 0x48]
004f9f86  8bcf                      MOV ECX,EDI
004f9f88  e893cc1d00                CALL 0x006d6c20
004f9f8d  85c0                      TEST EAX,EAX
004f9f8f  7f24                      JG 0x004f9fb5
004f9f91  a17816c700                MOV EAX,[0x00c71678]
004f9f96  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004f9f9c  83b8ec11000002            CMP dword ptr [EAX + 0x11ec],0x2
004f9fa3  7f10                      JG 0x004f9fb5
004f9fa5  8d4da4                    LEA ECX,[EBP + -0x5c]
004f9fa8  e8c3bcf3ff                CALL 0x00435c70
004f9fad  8b17                      MOV EDX,dword ptr [EDI]
004f9faf  8bcf                      MOV ECX,EDI
004f9fb1  50                        PUSH EAX
004f9fb2  ff5224                    CALL dword ptr [EDX + 0x24]
004f9fb5  83bf8401000005            CMP dword ptr [EDI + 0x184],0x5
004f9fbc  0f8595000000              JNZ 0x004fa057
004f9fc2  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
004f9fca  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004f9fd1  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
004f9fd9  0f2fc1                    COMISS XMM0,XMM1
004f9fdc  7679                      JBE 0x004fa057
004f9fde  837f2821                  CMP dword ptr [EDI + 0x28],0x21
004f9fe2  7523                      JNZ 0x004fa007
004f9fe4  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f9fec  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004f9ff2  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004f9ffa  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
004f9ffd  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fa005  eb4a                      JMP 0x004fa051
004fa007  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004fa00f  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004fa017  f30f59c0                  MULSS XMM0,XMM0
004fa01b  f30f59c9                  MULSS XMM1,XMM1
004fa01f  f30f58c1                  ADDSS XMM0,XMM1
004fa023  e828baf3ff                CALL 0x00435a50
004fa028  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004fa030  0f2fc8                    COMISS XMM1,XMM0
004fa033  7622                      JBE 0x004fa057
004fa035  e8264f1f00                CALL 0x006eef60
004fa03a  a803                      TEST AL,0x3
004fa03c  7519                      JNZ 0x004fa057
004fa03e  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004fa044  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
004fa04e  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
004fa051  89877c030000              MOV dword ptr [EDI + 0x37c],EAX
004fa057  807dfb00                  CMP byte ptr [EBP + -0x5],0x0
004fa05b  0f84f6050000              JZ 0x004fa657
004fa061  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004fa069  8bce                      MOV ECX,ESI
004fa06b  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
004fa073  6a01                      PUSH 0x1
004fa075  f30f5f05e49fba00          MAXSS XMM0,dword ptr [0x00ba9fe4]
004fa07d  f30f5d45f4                MINSS XMM0,dword ptr [EBP + -0xc]
004fa082  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
004fa087  e89411f1ff                CALL 0x0040b220
004fa08c  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
004fa091  8bce                      MOV ECX,ESI
004fa093  6a00                      PUSH 0x0
004fa095  f30f114034                MOVSS dword ptr [EAX + 0x34],XMM0
004fa09a  f30f114038                MOVSS dword ptr [EAX + 0x38],XMM0
004fa09f  e87c11f1ff                CALL 0x0040b220
004fa0a4  f30f104df0                MOVSS XMM1,dword ptr [EBP + -0x10]
004fa0a9  0f28c1                    MOVAPS XMM0,XMM1
004fa0ac  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
004fa0b4  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004fa0bc  c740540000803f            MOV dword ptr [EAX + 0x54],0x3f800000
004fa0c3  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
004fa0cb  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
004fa0d3  f30f114848                MOVSS dword ptr [EAX + 0x48],XMM1
004fa0d8  f30f11404c                MOVSS dword ptr [EAX + 0x4c],XMM0
004fa0dd  f30f114050                MOVSS dword ptr [EAX + 0x50],XMM0
004fa0e2  e970050000                JMP 0x004fa657
004fa0e7  6a00                      PUSH 0x0
004fa0e9  6898d5b100                PUSH 0xb1d598
004fa0ee  8d4f48                    LEA ECX,[EDI + 0x48]
004fa0f1  e88a02f1ff                CALL 0x0040a380
004fa0f6  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fa0fe  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004fa106  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fa10e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fa112  740d                      JZ 0x004fa121
004fa114  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004fa11b  0f8536050000              JNZ 0x004fa657
004fa121  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004fa12b  e927050000                JMP 0x004fa657
004fa130  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fa137  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fa13f  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004fa147  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fa14f  743d                      JZ 0x004fa18e
004fa151  8d45dc                    LEA EAX,[EBP + -0x24]
004fa154  0f57d2                    XORPS XMM2,XMM2
004fa157  50                        PUSH EAX
004fa158  8bcf                      MOV ECX,EDI
004fa15a  e871e11d00                CALL 0x006d82d0
004fa15f  8bc8                      MOV ECX,EAX
004fa161  f30f1001                  MOVSS XMM0,dword ptr [ECX]
004fa165  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004fa16c  9f                        LAHF
004fa16d  f6c444                    TEST AH,0x44
004fa170  7a1c                      JP 0x004fa18e
004fa172  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
004fa177  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004fa17e  9f                        LAHF
004fa17f  f6c444                    TEST AH,0x44
004fa182  7a0a                      JP 0x004fa18e
004fa184  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004fa18e  85f6                      TEST ESI,ESI
004fa190  0f8e75030000              JLE 0x004fa50b
004fa196  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004fa19c  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
004fa19f  40                        INC EAX
004fa1a0  898710040000              MOV dword ptr [EDI + 0x410],EAX
004fa1a6  83f901                    CMP ECX,0x1
004fa1a9  7405                      JZ 0x004fa1b0
004fa1ab  83f902                    CMP ECX,0x2
004fa1ae  7507                      JNZ 0x004fa1b7
004fa1b0  40                        INC EAX
004fa1b1  898710040000              MOV dword ptr [EDI + 0x410],EAX
004fa1b7  83f80c                    CMP EAX,0xc
004fa1ba  7420                      JZ 0x004fa1dc
004fa1bc  83f818                    CMP EAX,0x18
004fa1bf  741b                      JZ 0x004fa1dc
004fa1c1  83f824                    CMP EAX,0x24
004fa1c4  7416                      JZ 0x004fa1dc
004fa1c6  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fa1cd  750d                      JNZ 0x004fa1dc
004fa1cf  83bf380f000000            CMP dword ptr [EDI + 0xf38],0x0
004fa1d6  0f8409030000              JZ 0x004fa4e5
004fa1dc  51                        PUSH ECX
004fa1dd  8d45d4                    LEA EAX,[EBP + -0x2c]
004fa1e0  c7042400007042            MOV dword ptr [ESP],0x42700000
004fa1e7  50                        PUSH EAX
004fa1e8  8bcf                      MOV ECX,EDI
004fa1ea  e8514a1c00                CALL 0x006bec40
004fa1ef  807def00                  CMP byte ptr [EBP + -0x11],0x0
004fa1f3  7534                      JNZ 0x004fa229
004fa1f5  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004fa1f8  83f801                    CMP EAX,0x1
004fa1fb  7417                      JZ 0x004fa214
004fa1fd  83f802                    CMP EAX,0x2
004fa200  7412                      JZ 0x004fa214
004fa202  e8594d1f00                CALL 0x006eef60
004fa207  33d2                      XOR EDX,EDX
004fa209  b906000000                MOV ECX,0x6
004fa20e  f7f1                      DIV ECX
004fa210  8bc2                      MOV EAX,EDX
004fa212  eb08                      JMP 0x004fa21c
004fa214  e8474d1f00                CALL 0x006eef60
004fa219  83e003                    AND EAX,0x3
004fa21c  85c0                      TEST EAX,EAX
004fa21e  7409                      JZ 0x004fa229
004fa220  c645fb01                  MOV byte ptr [EBP + -0x5],0x1
004fa224  8a4dfb                    MOV CL,byte ptr [EBP + -0x5]
004fa227  eb02                      JMP 0x004fa22b
004fa229  32c9                      XOR CL,CL
004fa22b  8b971c0f0000              MOV EDX,dword ptr [EDI + 0xf1c]
004fa231  83faff                    CMP EDX,-0x1
004fa234  744e                      JZ 0x004fa284
004fa236  8d45dc                    LEA EAX,[EBP + -0x24]
004fa239  c645fb01                  MOV byte ptr [EBP + -0x5],0x1
004fa23d  50                        PUSH EAX
004fa23e  0f57d2                    XORPS XMM2,XMM2
004fa241  8bcf                      MOV ECX,EDI
004fa243  e888e01d00                CALL 0x006d82d0
004fa248  8b971c0f0000              MOV EDX,dword ptr [EDI + 0xf1c]
004fa24e  8a4dfb                    MOV CL,byte ptr [EBP + -0x5]
004fa251  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004fa255  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004fa25a  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
004fa262  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
004fa26a  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004fa272  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004fa27a  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
004fa27f  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004fa284  8bb7380f0000              MOV ESI,dword ptr [EDI + 0xf38]
004fa28a  85f6                      TEST ESI,ESI
004fa28c  0f85dd000000              JNZ 0x004fa36f
004fa292  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004fa298  2500010000                AND EAX,0x100
004fa29d  0bc6                      OR EAX,ESI
004fa29f  0f85ca000000              JNZ 0x004fa36f
004fa2a5  84c9                      TEST CL,CL
004fa2a7  0f85c2000000              JNZ 0x004fa36f
004fa2ad  0f1f00                    NOP dword ptr [EAX]
004fa2b0  e8ab4c1f00                CALL 0x006eef60
004fa2b5  660f6ec0                  MOVD XMM0,EAX
004fa2b9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fa2bd  c1e81f                    SHR EAX,0x1f
004fa2c0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fa2c9  660f5ac0                  CVTPD2PS XMM0,XMM0
004fa2cd  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fa2d5  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004fa2dd  f30f58c0                  ADDSS XMM0,XMM0
004fa2e1  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
004fa2e6  e85532f2ff                CALL 0x0041d540
004fa2eb  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004fa2f0  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
004fa2f5  e82632f2ff                CALL 0x0041d520
004fa2fa  0f28c8                    MOVAPS XMM1,XMM0
004fa2fd  8d873c030000              LEA EAX,[EDI + 0x33c]
004fa303  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004fa308  8d4dcc                    LEA ECX,[EBP + -0x34]
004fa30b  6a00                      PUSH 0x0
004fa30d  6a00                      PUSH 0x0
004fa30f  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004fa317  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004fa31f  6a00                      PUSH 0x0
004fa321  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
004fa329  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
004fa331  68e7030000                PUSH 0x3e7
004fa336  f30f5800                  ADDSS XMM0,dword ptr [EAX]
004fa33a  6a01                      PUSH 0x1
004fa33c  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004fa344  51                        PUSH ECX
004fa345  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
004fa348  50                        PUSH EAX
004fa349  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
004fa34e  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
004fa353  e8986a2f00                CALL 0x007f0df0
004fa358  84c0                      TEST AL,AL
004fa35a  0f8582010000              JNZ 0x004fa4e2
004fa360  46                        INC ESI
004fa361  83fe0a                    CMP ESI,0xa
004fa364  0f8c46ffffff              JL 0x004fa2b0
004fa36a  e973010000                JMP 0x004fa4e2
004fa36f  83faff                    CMP EDX,-0x1
004fa372  755c                      JNZ 0x004fa3d0
004fa374  85f6                      TEST ESI,ESI
004fa376  7558                      JNZ 0x004fa3d0
004fa378  56                        PUSH ESI
004fa379  56                        PUSH ESI
004fa37a  56                        PUSH ESI
004fa37b  68e7030000                PUSH 0x3e7
004fa380  6a01                      PUSH 0x1
004fa382  8d4dd4                    LEA ECX,[EBP + -0x2c]
004fa385  51                        PUSH ECX
004fa386  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
004fa389  8d873c030000              LEA EAX,[EDI + 0x33c]
004fa38f  50                        PUSH EAX
004fa390  e85b6a2f00                CALL 0x007f0df0
004fa395  84c0                      TEST AL,AL
004fa397  7537                      JNZ 0x004fa3d0
004fa399  8d8f14040000              LEA ECX,[EDI + 0x414]
004fa39f  e8bc8e2e00                CALL 0x007e3260
004fa3a4  6a01                      PUSH 0x1
004fa3a6  56                        PUSH ESI
004fa3a7  51                        PUSH ECX
004fa3a8  8d45d4                    LEA EAX,[EBP + -0x2c]
004fa3ab  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fa3b2  50                        PUSH EAX
004fa3b3  8d8f14040000              LEA ECX,[EDI + 0x414]
004fa3b9  e802902e00                CALL 0x007e33c0
004fa3be  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004fa3c6  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
004fa3ce  eb1a                      JMP 0x004fa3ea
004fa3d0  f30f104dd4                MOVSS XMM1,dword ptr [EBP + -0x2c]
004fa3d5  f30f1055d8                MOVSS XMM2,dword ptr [EBP + -0x28]
004fa3da  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004fa3e2  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004fa3ea  0f28c1                    MOVAPS XMM0,XMM1
004fa3ed  f30f114df4                MOVSS dword ptr [EBP + -0xc],XMM1
004fa3f2  f30f59c1                  MULSS XMM0,XMM1
004fa3f6  0f28ca                    MOVAPS XMM1,XMM2
004fa3f9  f30f59ca                  MULSS XMM1,XMM2
004fa3fd  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
004fa402  f30f58c1                  ADDSS XMM0,XMM1
004fa406  e845b6f3ff                CALL 0x00435a50
004fa40b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004fa412  f30f1055f4                MOVSS XMM2,dword ptr [EBP + -0xc]
004fa417  761e                      JBE 0x004fa437
004fa419  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004fa421  f30f5ec8                  DIVSS XMM1,XMM0
004fa425  0f28c1                    MOVAPS XMM0,XMM1
004fa428  f30f59d0                  MULSS XMM2,XMM0
004fa42c  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004fa431  f30f59c1                  MULSS XMM0,XMM1
004fa435  eb05                      JMP 0x004fa43c
004fa437  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004fa43c  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
004fa444  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004fa44c  e80f4b1f00                CALL 0x006eef60
004fa451  660f6ec0                  MOVD XMM0,EAX
004fa455  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fa459  c1e81f                    SHR EAX,0x1f
004fa45c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fa465  660f5ac0                  CVTPD2PS XMM0,XMM0
004fa469  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fa471  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004fa479  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004fa481  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004fa489  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
004fa48e  e8ad30f2ff                CALL 0x0041d540
004fa493  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004fa498  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
004fa49d  e87e30f2ff                CALL 0x0041d520
004fa4a2  f30f109f34030000          MOVSS XMM3,dword ptr [EDI + 0x334]
004fa4aa  f30f10af38030000          MOVSS XMM5,dword ptr [EDI + 0x338]
004fa4b2  0f28d3                    MOVAPS XMM2,XMM3
004fa4b5  f30f5955e8                MULSS XMM2,dword ptr [EBP + -0x18]
004fa4ba  0f28cd                    MOVAPS XMM1,XMM5
004fa4bd  f30f596de8                MULSS XMM5,dword ptr [EBP + -0x18]
004fa4c2  f30f59c8                  MULSS XMM1,XMM0
004fa4c6  f30f59d8                  MULSS XMM3,XMM0
004fa4ca  f30f5cd1                  SUBSS XMM2,XMM1
004fa4ce  f30f58eb                  ADDSS XMM5,XMM3
004fa4d2  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
004fa4da  f30f11af38030000          MOVSS dword ptr [EDI + 0x338],XMM5
004fa4e2  8b75f0                    MOV ESI,dword ptr [EBP + -0x10]
004fa4e5  e8764a1f00                CALL 0x006eef60
004fa4ea  a801                      TEST AL,0x1
004fa4ec  7511                      JNZ 0x004fa4ff
004fa4ee  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004fa4f4  a801                      TEST AL,0x1
004fa4f6  7407                      JZ 0x004fa4ff
004fa4f8  40                        INC EAX
004fa4f9  898710040000              MOV dword ptr [EDI + 0x410],EAX
004fa4ff  83ee01                    SUB ESI,0x1
004fa502  8975f0                    MOV dword ptr [EBP + -0x10],ESI
004fa505  0f858bfcffff              JNZ 0x004fa196
004fa50b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fa512  7429                      JZ 0x004fa53d
004fa514  83bf1004000028            CMP dword ptr [EDI + 0x410],0x28
004fa51b  7e20                      JLE 0x004fa53d
004fa51d  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004fa525  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004fa52d  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004fa535  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004fa53d  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004fa545  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004fa54c  9f                        LAHF
004fa54d  f6c444                    TEST AH,0x44
004fa550  7a29                      JP 0x004fa57b
004fa552  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004fa55a  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004fa561  9f                        LAHF
004fa562  f6c444                    TEST AH,0x44
004fa565  7a14                      JP 0x004fa57b
004fa567  6a00                      PUSH 0x0
004fa569  6854bcb100                PUSH 0xb1bc54
004fa56e  8d4f48                    LEA ECX,[EDI + 0x48]
004fa571  e80afef0ff                CALL 0x0040a380
004fa576  e9a9000000                JMP 0x004fa624
004fa57b  6a00                      PUSH 0x0
004fa57d  68e4dcb100                PUSH 0xb1dce4
004fa582  8d4f48                    LEA ECX,[EDI + 0x48]
004fa585  e8f6fdf0ff                CALL 0x0040a380
004fa58a  807def00                  CMP byte ptr [EBP + -0x11],0x0
004fa58e  f30f101dfca6ba00          MOVSS XMM3,dword ptr [0x00baa6fc]
004fa596  7536                      JNZ 0x004fa5ce
004fa598  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004fa59b  83f801                    CMP EAX,0x1
004fa59e  750a                      JNZ 0x004fa5aa
004fa5a0  f30f101d88a7ba00          MOVSS XMM3,dword ptr [0x00baa788]
004fa5a8  eb24                      JMP 0x004fa5ce
004fa5aa  83f802                    CMP EAX,0x2
004fa5ad  751f                      JNZ 0x004fa5ce
004fa5af  817f348b030000            CMP dword ptr [EDI + 0x34],0x38b
004fa5b6  750a                      JNZ 0x004fa5c2
004fa5b8  f30f100554a5ba00          MOVSS XMM0,dword ptr [0x00baa554]
004fa5c0  eb08                      JMP 0x004fa5ca
004fa5c2  f30f1005b4a5ba00          MOVSS XMM0,dword ptr [0x00baa5b4]
004fa5ca  f30f59d8                  MULSS XMM3,XMM0
004fa5ce  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004fa5d6  0f28cb                    MOVAPS XMM1,XMM3
004fa5d9  f30f598f34030000          MULSS XMM1,dword ptr [EDI + 0x334]
004fa5e1  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
004fa5e9  f30f59d3                  MULSS XMM2,XMM3
004fa5ed  f30f59c8                  MULSS XMM1,XMM0
004fa5f1  f30f59d0                  MULSS XMM2,XMM0
004fa5f5  0f57c0                    XORPS XMM0,XMM0
004fa5f8  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
004fa600  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004fa608  0f2fc1                    COMISS XMM0,XMM1
004fa60b  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004fa613  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004fa61b  0f93c0                    SETNC AL
004fa61e  888748010000              MOV byte ptr [EDI + 0x148],AL
004fa624  83bf1004000030            CMP dword ptr [EDI + 0x410],0x30
004fa62b  7c2a                      JL 0x004fa657
004fa62d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004fa637  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004fa63f  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004fa647  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004fa64f  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004fa657  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004fa65b  740a                      JZ 0x004fa667
004fa65d  837f2821                  CMP dword ptr [EDI + 0x28],0x21
004fa661  0f8582010000              JNZ 0x004fa7e9
004fa667  e8f4481f00                CALL 0x006eef60
004fa66c  33d2                      XOR EDX,EDX
004fa66e  b905000000                MOV ECX,0x5
004fa673  f7f1                      DIV ECX
004fa675  85d2                      TEST EDX,EDX
004fa677  0f856c010000              JNZ 0x004fa7e9
004fa67d  e8de481f00                CALL 0x006eef60
004fa682  660f6ec0                  MOVD XMM0,EAX
004fa686  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fa68a  c1e81f                    SHR EAX,0x1f
004fa68d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fa696  660f5ac0                  CVTPD2PS XMM0,XMM0
004fa69a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fa6a2  f30f590558adba00          MULSS XMM0,dword ptr [0x00baad58]
004fa6aa  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004fa6af  e8ac481f00                CALL 0x006eef60
004fa6b4  660f6ec0                  MOVD XMM0,EAX
004fa6b8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fa6bc  c1e81f                    SHR EAX,0x1f
004fa6bf  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fa6c8  660f5ac0                  CVTPD2PS XMM0,XMM0
004fa6cc  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fa6d4  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004fa6dc  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004fa6e4  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004fa6e9  e872481f00                CALL 0x006eef60
004fa6ee  660f6ec0                  MOVD XMM0,EAX
004fa6f2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fa6f6  c1e81f                    SHR EAX,0x1f
004fa6f9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fa702  660f5ac0                  CVTPD2PS XMM0,XMM0
004fa706  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fa70e  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004fa716  f30f58c0                  ADDSS XMM0,XMM0
004fa71a  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
004fa71f  e83c481f00                CALL 0x006eef60
004fa724  660f6ec0                  MOVD XMM0,EAX
004fa728  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fa72c  c1e81f                    SHR EAX,0x1f
004fa72f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fa738  660f5ac0                  CVTPD2PS XMM0,XMM0
004fa73c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fa744  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
004fa749  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
004fa74e  e8ed2df2ff                CALL 0x0041d540
004fa753  f30f5945f4                MULSS XMM0,dword ptr [EBP + -0xc]
004fa758  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
004fa760  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004fa768  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004fa76d  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
004fa772  e8a92df2ff                CALL 0x0041d520
004fa777  f30f5945f4                MULSS XMM0,dword ptr [EBP + -0xc]
004fa77c  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
004fa784  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004fa78c  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004fa791  e8ca471f00                CALL 0x006eef60
004fa796  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004fa79e  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004fa7a6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fa7ac  50                        PUSH EAX
004fa7ad  6a00                      PUSH 0x0
004fa7af  f30f5845e8                ADDSS XMM0,dword ptr [EBP + -0x18]
004fa7b4  6a00                      PUSH 0x0
004fa7b6  8d45cc                    LEA EAX,[EBP + -0x34]
004fa7b9  50                        PUSH EAX
004fa7ba  8d45dc                    LEA EAX,[EBP + -0x24]
004fa7bd  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
004fa7c2  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004fa7ca  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004fa7d2  50                        PUSH EAX
004fa7d3  6a42                      PUSH 0x42
004fa7d5  68e8030000                PUSH 0x3e8
004fa7da  f30f5845d8                ADDSS XMM0,dword ptr [EBP + -0x28]
004fa7df  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
004fa7e4  e837e3f2ff                CALL 0x00428b20
004fa7e9  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004fa7f0  0f842f020000              JZ 0x004faa25
004fa7f6  837f2821                  CMP dword ptr [EDI + 0x28],0x21
004fa7fa  0f8425020000              JZ 0x004faa25
004fa800  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
004fa808  8db73c030000              LEA ESI,[EDI + 0x33c]
004fa80e  f30f100e                  MOVSS XMM1,dword ptr [ESI]
004fa812  f30f105604                MOVSS XMM2,dword ptr [ESI + 0x4]
004fa817  f30f5cc8                  SUBSS XMM1,XMM0
004fa81b  f30f5c1500aaba00          SUBSS XMM2,dword ptr [0x00baaa00]
004fa823  f30f5ec8                  DIVSS XMM1,XMM0
004fa827  f30f5ed0                  DIVSS XMM2,XMM0
004fa82b  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
004fa833  f30f5815d0a2ba00          ADDSS XMM2,dword ptr [0x00baa2d0]
004fa83b  f30f2cc9                  CVTTSS2SI ECX,XMM1
004fa83f  f30f2cc2                  CVTTSS2SI EAX,XMM2
004fa843  85c9                      TEST ECX,ECX
004fa845  7823                      JS 0x004fa86a
004fa847  8b55e4                    MOV EDX,dword ptr [EBP + -0x1c]
004fa84a  8b520c                    MOV EDX,dword ptr [EDX + 0xc]
004fa84d  3bca                      CMP ECX,EDX
004fa84f  7d19                      JGE 0x004fa86a
004fa851  85c0                      TEST EAX,EAX
004fa853  7815                      JS 0x004fa86a
004fa855  8b75e4                    MOV ESI,dword ptr [EBP + -0x1c]
004fa858  3b4610                    CMP EAX,dword ptr [ESI + 0x10]
004fa85b  8db73c030000              LEA ESI,[EDI + 0x33c]
004fa861  7d07                      JGE 0x004fa86a
004fa863  0fafc2                    IMUL EAX,EDX
004fa866  03c1                      ADD EAX,ECX
004fa868  eb03                      JMP 0x004fa86d
004fa86a  83c8ff                    OR EAX,0xffffffff
004fa86d  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
004fa870  50                        PUSH EAX
004fa871  e88a5f2f00                CALL 0x007f0800
004fa876  85c0                      TEST EAX,EAX
004fa878  0f8564010000              JNZ 0x004fa9e2
004fa87e  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004fa881  83f801                    CMP EAX,0x1
004fa884  7517                      JNZ 0x004fa89d
004fa886  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
004fa88c  8d8760030000              LEA EAX,[EDI + 0x360]
004fa892  6a03                      PUSH 0x3
004fa894  6a00                      PUSH 0x0
004fa896  50                        PUSH EAX
004fa897  56                        PUSH ESI
004fa898  e979010000                JMP 0x004faa16
004fa89d  83f802                    CMP EAX,0x2
004fa8a0  0f85ac000000              JNZ 0x004fa952
004fa8a6  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
004fa8ac  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004fa8b4  8d45dc                    LEA EAX,[EBP + -0x24]
004fa8b7  ff7730                    PUSH dword ptr [EDI + 0x30]
004fa8ba  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004fa8c2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fa8c8  57                        PUSH EDI
004fa8c9  50                        PUSH EAX
004fa8ca  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004fa8cf  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004fa8d7  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004fa8df  56                        PUSH ESI
004fa8e0  6a0b                      PUSH 0xb
004fa8e2  6a21                      PUSH 0x21
004fa8e4  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004fa8e9  e832e2f2ff                CALL 0x00428b20
004fa8ee  8bf0                      MOV ESI,EAX
004fa8f0  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
004fa8f6  8b16                      MOV EDX,dword ptr [ESI]
004fa8f8  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
004fa8ff  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
004fa905  8bce                      MOV ECX,ESI
004fa907  ff520c                    CALL dword ptr [EDX + 0xc]
004fa90a  c78650030000000080bf      MOV dword ptr [ESI + 0x350],0xbf800000
004fa914  e847461f00                CALL 0x006eef60
004fa919  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
004fa921  660f6ec0                  MOVD XMM0,EAX
004fa925  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fa929  c1e81f                    SHR EAX,0x1f
004fa92c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fa935  660f5ac0                  CVTPD2PS XMM0,XMM0
004fa939  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fa941  f30f5cc8                  SUBSS XMM1,XMM0
004fa945  f30f118eb00b0000          MOVSS dword ptr [ESI + 0xbb0],XMM1
004fa94d  e9d3000000                JMP 0x004faa25
004fa952  8bcf                      MOV ECX,EDI
004fa954  e8a7a41d00                CALL 0x006d4e00
004fa959  6aff                      PUSH -0x1
004fa95b  6a00                      PUSH 0x0
004fa95d  6a00                      PUSH 0x0
004fa95f  6a55                      PUSH 0x55
004fa961  8bcf                      MOV ECX,EDI
004fa963  e8c8651c00                CALL 0x006c0f30
004fa968  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
004fa96e  8d4da0                    LEA ECX,[EBP + -0x60]
004fa971  c787640b000000000000      MOV dword ptr [EDI + 0xb64],0x0
004fa97b  898780030000              MOV dword ptr [EDI + 0x380],EAX
004fa981  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
004fa988  e8e3c7f0ff                CALL 0x00407170
004fa98d  50                        PUSH EAX
004fa98e  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004fa994  e857c8f0ff                CALL 0x004071f0
004fa999  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004fa9a1  8bcf                      MOV ECX,EDI
004fa9a3  8b07                      MOV EAX,dword ptr [EDI]
004fa9a5  f30f11874c030000          MOVSS dword ptr [EDI + 0x34c],XMM0
004fa9ad  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004fa9b5  f30f118750030000          MOVSS dword ptr [EDI + 0x350],XMM0
004fa9bd  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004fa9c5  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004fa9cd  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004fa9d5  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004fa9dd  ff500c                    CALL dword ptr [EAX + 0xc]
004fa9e0  eb43                      JMP 0x004faa25
004fa9e2  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004fa9e6  753d                      JNZ 0x004faa25
004fa9e8  6a00                      PUSH 0x0
004fa9ea  6a00                      PUSH 0x0
004fa9ec  6a00                      PUSH 0x0
004fa9ee  51                        PUSH ECX
004fa9ef  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
004fa9f2  8d45dc                    LEA EAX,[EBP + -0x24]
004fa9f5  c7042400000000            MOV dword ptr [ESP],0x0
004fa9fc  56                        PUSH ESI
004fa9fd  50                        PUSH EAX
004fa9fe  e81d8b3100                CALL 0x00813520
004faa03  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
004faa09  8d45dc                    LEA EAX,[EBP + -0x24]
004faa0c  6a03                      PUSH 0x3
004faa0e  6a00                      PUSH 0x0
004faa10  6840b6c700                PUSH 0xc7b640
004faa15  50                        PUSH EAX
004faa16  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004faa1c  6a0a                      PUSH 0xa
004faa1e  6a05                      PUSH 0x5
004faa20  e8fbe0f2ff                CALL 0x00428b20
004faa25  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
004faa28  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
004faa2b  744f                      JZ 0x004faa7c
004faa2d  0f1f00                    NOP dword ptr [EAX]
004faa30  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
004faa33  83e002                    AND EAX,0x2
004faa36  83c800                    OR EAX,0x0
004faa39  7439                      JZ 0x004faa74
004faa3b  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004faa40  8bcf                      MOV ECX,EDI
004faa42  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
004faa46  6aff                      PUSH -0x1
004faa48  6a00                      PUSH 0x0
004faa4a  6832030000                PUSH 0x332
004faa4f  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
004faa54  c70600000000              MOV dword ptr [ESI],0x0
004faa5a  e8c1c7f1ff                CALL 0x00417220
004faa5f  84c0                      TEST AL,AL
004faa61  7411                      JZ 0x004faa74
004faa63  6aff                      PUSH -0x1
004faa65  ff7730                    PUSH dword ptr [EDI + 0x30]
004faa68  6a02                      PUSH 0x2
004faa6a  6832030000                PUSH 0x332
004faa6f  e8bc641c00                CALL 0x006c0f30
004faa74  83c638                    ADD ESI,0x38
004faa77  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
004faa7a  75b4                      JNZ 0x004faa30
004faa7c  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
004faa7f  5f                        POP EDI
004faa80  33cd                      XOR ECX,EBP
004faa82  5e                        POP ESI
004faa83  e8a3465f00                CALL 0x00aef12b
004faa88  8be5                      MOV ESP,EBP
004faa8a  5d                        POP EBP
004faa8b  8be3                      MOV ESP,EBX
004faa8d  5b                        POP EBX
004faa8e  c3                        RET
