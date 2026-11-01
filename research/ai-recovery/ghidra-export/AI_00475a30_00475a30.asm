; J460 NPC AI 0x00475a30 AI_00475a30
; types=50
; identities=50.0.0,50.1.0
; entry=00475a30
00475a30  53                        PUSH EBX
00475a31  8bdc                      MOV EBX,ESP
00475a33  83ec08                    SUB ESP,0x8
00475a36  83e4f8                    AND ESP,0xfffffff8
00475a39  83c404                    ADD ESP,0x4
00475a3c  55                        PUSH EBP
00475a3d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00475a40  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00475a44  8bec                      MOV EBP,ESP
00475a46  6aff                      PUSH -0x1
00475a48  68652aaf00                PUSH 0xaf2a65
00475a4d  64a100000000              MOV EAX,FS:[0x0]
00475a53  50                        PUSH EAX
00475a54  53                        PUSH EBX
00475a55  81ec40010000              SUB ESP,0x140
00475a5b  a1b493bf00                MOV EAX,[0x00bf93b4]
00475a60  33c5                      XOR EAX,EBP
00475a62  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00475a65  56                        PUSH ESI
00475a66  57                        PUSH EDI
00475a67  50                        PUSH EAX
00475a68  8d45f4                    LEA EAX,[EBP + -0xc]
00475a6b  64a300000000              MOV FS:[0x0],EAX
00475a71  8bf9                      MOV EDI,ECX
00475a73  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00475a7a  7568                      JNZ 0x00475ae4
00475a7c  0f280590c2ba00            MOVAPS XMM0,xmmword ptr [0x00bac290]
00475a83  8d85b4feffff              LEA EAX,[EBP + 0xfffffeb4]
00475a89  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00475a93  0f57c9                    XORPS XMM1,XMM1
00475a96  81c7e4010000              ADD EDI,0x1e4
00475a9c  c785d4feffff00000000      MOV dword ptr [EBP + 0xfffffed4],0x0
00475aa6  c785d8feffff00000000      MOV dword ptr [EBP + 0xfffffed8],0x0
00475ab0  c785dcfeffff00000000      MOV dword ptr [EBP + 0xfffffedc],0x0
00475aba  3bf8                      CMP EDI,EAX
00475abc  0f84a2050000              JZ 0x00476064
00475ac2  8b85dcfeffff              MOV EAX,dword ptr [EBP + 0xfffffedc]
00475ac8  0f1107                    MOVUPS xmmword ptr [EDI],XMM0
00475acb  f30f7e85d4feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffed4]
00475ad3  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
00475ad8  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
00475adc  894728                    MOV dword ptr [EDI + 0x28],EAX
00475adf  e980050000                JMP 0x00476064
00475ae4  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00475aec  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
00475af4  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00475afc  e83f8d2400                CALL 0x006be840
00475b01  8db73c030000              LEA ESI,[EDI + 0x33c]
00475b07  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00475b0f  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00475b17  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00475b1b  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00475b20  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00475b26  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
00475b2e  f30f118d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM1
00475b36  83f804                    CMP EAX,0x4
00475b39  0f8571010000              JNZ 0x00475cb0
00475b3f  a118ddb100                MOV EAX,[0x00b1dd18]
00475b44  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
00475b4a  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00475b51  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
00475b58  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00475b5b  894dc0                    MOV dword ptr [EBP + -0x40],ECX
00475b5e  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
00475b62  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00475b69  a130ddb100                MOV EAX,[0x00b1dd30]
00475b6e  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00475b74  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00475b7b  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
00475b82  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00475b85  894dd8                    MOV dword ptr [EBP + -0x28],ECX
00475b88  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
00475b8c  51                        PUSH ECX
00475b8d  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00475b91  8d45bc                    LEA EAX,[EBP + -0x44]
00475b94  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00475b9b  8bcf                      MOV ECX,EDI
00475b9d  50                        PUSH EAX
00475b9e  8d45d4                    LEA EAX,[EBP + -0x2c]
00475ba1  50                        PUSH EAX
00475ba2  e889b72400                CALL 0x006c1330
00475ba7  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00475bab  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00475bae  83fa10                    CMP EDX,0x10
00475bb1  7228                      JC 0x00475bdb
00475bb3  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00475bb6  42                        INC EDX
00475bb7  8bc1                      MOV EAX,ECX
00475bb9  81fa00100000              CMP EDX,0x1000
00475bbf  7210                      JC 0x00475bd1
00475bc1  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00475bc4  83c223                    ADD EDX,0x23
00475bc7  2bc1                      SUB EAX,ECX
00475bc9  83c0fc                    ADD EAX,-0x4
00475bcc  83f81f                    CMP EAX,0x1f
00475bcf  7749                      JA 0x00475c1a
00475bd1  52                        PUSH EDX
00475bd2  51                        PUSH ECX
00475bd3  e884956700                CALL 0x00aef15c
00475bd8  83c408                    ADD ESP,0x8
00475bdb  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00475be2  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
00475be5  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00475bec  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00475bf3  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00475bf7  83fa10                    CMP EDX,0x10
00475bfa  722e                      JC 0x00475c2a
00475bfc  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
00475bff  42                        INC EDX
00475c00  8bc1                      MOV EAX,ECX
00475c02  81fa00100000              CMP EDX,0x1000
00475c08  7216                      JC 0x00475c20
00475c0a  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00475c0d  83c223                    ADD EDX,0x23
00475c10  2bc1                      SUB EAX,ECX
00475c12  83c0fc                    ADD EAX,-0x4
00475c15  83f81f                    CMP EAX,0x1f
00475c18  7606                      JBE 0x00475c20
00475c1a  ff159488b100              CALL dword ptr [0x00b18894]
00475c20  52                        PUSH EDX
00475c21  51                        PUSH ECX
00475c22  e835956700                CALL 0x00aef15c
00475c27  83c408                    ADD ESP,0x8
00475c2a  6a00                      PUSH 0x0
00475c2c  51                        PUSH ECX
00475c2d  8d8f14040000              LEA ECX,[EDI + 0x414]
00475c33  c704240000803f            MOV dword ptr [ESP],0x3f800000
00475c3a  e801f73600                CALL 0x007e5340
00475c3f  e81c932700                CALL 0x006eef60
00475c44  33d2                      XOR EDX,EDX
00475c46  b932000000                MOV ECX,0x32
00475c4b  f7f1                      DIV ECX
00475c4d  85d2                      TEST EDX,EDX
00475c4f  0f8509040000              JNZ 0x0047605e
00475c55  899710040000              MOV dword ptr [EDI + 0x410],EDX
00475c5b  e800932700                CALL 0x006eef60
00475c60  33d2                      XOR EDX,EDX
00475c62  b903000000                MOV ECX,0x3
00475c67  f7f1                      DIV ECX
00475c69  85d2                      TEST EDX,EDX
00475c6b  7534                      JNZ 0x00475ca1
00475c6d  a17816c700                MOV EAX,[0x00c71678]
00475c72  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00475c78  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
00475c7e  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
00475c84  03c8                      ADD ECX,EAX
00475c86  33c0                      XOR EAX,EAX
00475c88  85c9                      TEST ECX,ECX
00475c8a  0f4fc1                    CMOVG EAX,ECX
00475c8d  83f803                    CMP EAX,0x3
00475c90  7d0f                      JGE 0x00475ca1
00475c92  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
00475c9c  e9bd030000                JMP 0x0047605e
00475ca1  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00475cab  e9ae030000                JMP 0x0047605e
00475cb0  83f808                    CMP EAX,0x8
00475cb3  0f851c010000              JNZ 0x00475dd5
00475cb9  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00475cbf  83f801                    CMP EAX,0x1
00475cc2  0f85bc000000              JNZ 0x00475d84
00475cc8  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
00475cce  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
00475cd5  e886952000                CALL 0x0067f260
00475cda  83f803                    CMP EAX,0x3
00475cdd  7766                      JA 0x00475d45
00475cdf  ff248584604700            JMP dword ptr [EAX*0x4 + 0x476084]
00475ce6  6a01                      PUSH 0x1
00475ce8  6850e1b100                PUSH 0xb1e150
00475ced  8d4f48                    LEA ECX,[EDI + 0x48]
00475cf0  e8db48f9ff                CALL 0x0040a5d0
00475cf5  84c0                      TEST AL,AL
00475cf7  740f                      JZ 0x00475d08
00475cf9  8d4f78                    LEA ECX,[EDI + 0x78]
00475cfc  e8af44f9ff                CALL 0x0040a1b0
00475d01  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00475d08  c6874801000001            MOV byte ptr [EDI + 0x148],0x1
00475d0f  eb34                      JMP 0x00475d45
00475d11  6a01                      PUSH 0x1
00475d13  6850e1b100                PUSH 0xb1e150
00475d18  eb10                      JMP 0x00475d2a
00475d1a  6a01                      PUSH 0x1
00475d1c  6844e1b100                PUSH 0xb1e144
00475d21  eb07                      JMP 0x00475d2a
00475d23  6a01                      PUSH 0x1
00475d25  6868e1b100                PUSH 0xb1e168
00475d2a  8d4f48                    LEA ECX,[EDI + 0x48]
00475d2d  e89e48f9ff                CALL 0x0040a5d0
00475d32  84c0                      TEST AL,AL
00475d34  740f                      JZ 0x00475d45
00475d36  8d4f78                    LEA ECX,[EDI + 0x78]
00475d39  e87244f9ff                CALL 0x0040a1b0
00475d3e  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00475d45  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
00475d4b  8d8df8feffff              LEA ECX,[EBP + 0xfffffef8]
00475d51  e81a942000                CALL 0x0067f170
00475d56  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00475d5a  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00475d5f  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00475d67  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00475d6f  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
00475d77  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
00475d7f  e9da020000                JMP 0x0047605e
00475d84  83f805                    CMP EAX,0x5
00475d87  7544                      JNZ 0x00475dcd
00475d89  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00475d8d  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
00475d93  741c                      JZ 0x00475db1
00475d95  e89691fcff                CALL 0x0043ef30
00475d9a  50                        PUSH EAX
00475d9b  6a02                      PUSH 0x2
00475d9d  8d87b00b0000              LEA EAX,[EDI + 0xbb0]
00475da3  8bcf                      MOV ECX,EDI
00475da5  50                        PUSH EAX
00475da6  56                        PUSH ESI
00475da7  e834552500                CALL 0x006cb2e0
00475dac  e9ad020000                JMP 0x0047605e
00475db1  e87a91fcff                CALL 0x0043ef30
00475db6  50                        PUSH EAX
00475db7  6a04                      PUSH 0x4
00475db9  8d87b00b0000              LEA EAX,[EDI + 0xbb0]
00475dbf  8bcf                      MOV ECX,EDI
00475dc1  50                        PUSH EAX
00475dc2  56                        PUSH ESI
00475dc3  e818552500                CALL 0x006cb2e0
00475dc8  e991020000                JMP 0x0047605e
00475dcd  83f818                    CMP EAX,0x18
00475dd0  e97d020000                JMP 0x00476052
00475dd5  83f80d                    CMP EAX,0xd
00475dd8  0f8580020000              JNZ 0x0047605e
00475dde  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00475de4  83f801                    CMP EAX,0x1
00475de7  7531                      JNZ 0x00475e1a
00475de9  50                        PUSH EAX
00475dea  6854d5b100                PUSH 0xb1d554
00475def  8d4f48                    LEA ECX,[EDI + 0x48]
00475df2  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
00475df9  e8d247f9ff                CALL 0x0040a5d0
00475dfe  84c0                      TEST AL,AL
00475e00  0f8458020000              JZ 0x0047605e
00475e06  8d4f78                    LEA ECX,[EDI + 0x78]
00475e09  e8a243f9ff                CALL 0x0040a1b0
00475e0e  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00475e15  e944020000                JMP 0x0047605e
00475e1a  83f805                    CMP EAX,0x5
00475e1d  0f852c020000              JNZ 0x0047604f
00475e23  51                        PUSH ECX
00475e24  c704240000803f            MOV dword ptr [ESP],0x3f800000
00475e2b  6a00                      PUSH 0x0
00475e2d  6a02                      PUSH 0x2
00475e2f  51                        PUSH ECX
00475e30  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
00475e37  8bcf                      MOV ECX,EDI
00475e39  6809010000                PUSH 0x109
00475e3e  e85d0d2600                CALL 0x006d6ba0
00475e43  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00475e47  b91d000000                MOV ECX,0x1d
00475e4c  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00475e54  b856000000                MOV EAX,0x56
00475e59  0f45c1                    CMOVNZ EAX,ECX
00475e5c  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
00475e62  a17816c700                MOV EAX,[0x00c71678]
00475e67  6a00                      PUSH 0x0
00475e69  6a00                      PUSH 0x0
00475e6b  6a00                      PUSH 0x0
00475e6d  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
00475e73  33c0                      XOR EAX,EAX
00475e75  8b8ac4120000              MOV ECX,dword ptr [EDX + 0x12c4]
00475e7b  038ac0120000              ADD ECX,dword ptr [EDX + 0x12c0]
00475e81  85c9                      TEST ECX,ECX
00475e83  51                        PUSH ECX
00475e84  0f4fc1                    CMOVG EAX,ECX
00475e87  c7042400000000            MOV dword ptr [ESP],0x0
00475e8e  83f801                    CMP EAX,0x1
00475e91  8bca                      MOV ECX,EDX
00475e93  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00475e99  50                        PUSH EAX
00475e9a  0f85d9000000              JNZ 0x00475f79
00475ea0  f30f5c0d24a9ba00          SUBSS XMM1,dword ptr [0x00baa924]
00475ea8  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00475eb0  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
00475eb6  50                        PUSH EAX
00475eb7  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
00475ebf  0f57c9                    XORPS XMM1,XMM1
00475ec2  f30f58c1                  ADDSS XMM0,XMM1
00475ec6  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00475ece  e84dd63900                CALL 0x00813520
00475ed3  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00475ed7  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00475edd  f30f580524a9ba00          ADDSS XMM0,dword ptr [0x00baa924]
00475ee5  6a00                      PUSH 0x0
00475ee7  6a00                      PUSH 0x0
00475ee9  6a00                      PUSH 0x0
00475eeb  51                        PUSH ECX
00475eec  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00475ef2  0f57c9                    XORPS XMM1,XMM1
00475ef5  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
00475efd  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00475f02  f30f58c1                  ADDSS XMM0,XMM1
00475f06  c7042400000000            MOV dword ptr [ESP],0x0
00475f0d  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00475f13  50                        PUSH EAX
00475f14  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
00475f1a  50                        PUSH EAX
00475f1b  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00475f23  e8f8d53900                CALL 0x00813520
00475f28  e833902700                CALL 0x006eef60
00475f2d  8bb504ffffff              MOV ESI,dword ptr [EBP + 0xffffff04]
00475f33  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00475f39  50                        PUSH EAX
00475f3a  6a00                      PUSH 0x0
00475f3c  57                        PUSH EDI
00475f3d  6840b6c700                PUSH 0xc7b640
00475f42  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
00475f48  50                        PUSH EAX
00475f49  6a00                      PUSH 0x0
00475f4b  56                        PUSH ESI
00475f4c  e8cf2bfbff                CALL 0x00428b20
00475f51  e80a902700                CALL 0x006eef60
00475f56  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00475f5c  50                        PUSH EAX
00475f5d  6a00                      PUSH 0x0
00475f5f  57                        PUSH EDI
00475f60  6840b6c700                PUSH 0xc7b640
00475f65  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
00475f6b  50                        PUSH EAX
00475f6c  6a00                      PUSH 0x0
00475f6e  56                        PUSH ESI
00475f6f  e8ac2bfbff                CALL 0x00428b20
00475f74  e9e5000000                JMP 0x0047605e
00475f79  0f57c0                    XORPS XMM0,XMM0
00475f7c  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
00475f82  f30f58c8                  ADDSS XMM1,XMM0
00475f86  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00475f8e  f30f5c0524a9ba00          SUBSS XMM0,dword ptr [0x00baa924]
00475f96  50                        PUSH EAX
00475f97  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
00475f9f  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00475fa7  e874d53900                CALL 0x00813520
00475fac  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00475fb0  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00475fb6  0f57c9                    XORPS XMM1,XMM1
00475fb9  f30f58c1                  ADDSS XMM0,XMM1
00475fbd  6a00                      PUSH 0x0
00475fbf  6a00                      PUSH 0x0
00475fc1  6a00                      PUSH 0x0
00475fc3  51                        PUSH ECX
00475fc4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00475fca  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
00475fd2  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00475fd7  f30f580524a9ba00          ADDSS XMM0,dword ptr [0x00baa924]
00475fdf  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00475fe5  c7042400000000            MOV dword ptr [ESP],0x0
00475fec  50                        PUSH EAX
00475fed  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
00475ff3  50                        PUSH EAX
00475ff4  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00475ffc  e81fd53900                CALL 0x00813520
00476001  e85a8f2700                CALL 0x006eef60
00476006  8bb504ffffff              MOV ESI,dword ptr [EBP + 0xffffff04]
0047600c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00476012  50                        PUSH EAX
00476013  6a00                      PUSH 0x0
00476015  57                        PUSH EDI
00476016  6840b6c700                PUSH 0xc7b640
0047601b  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
00476021  50                        PUSH EAX
00476022  6a00                      PUSH 0x0
00476024  56                        PUSH ESI
00476025  e8f62afbff                CALL 0x00428b20
0047602a  e8318f2700                CALL 0x006eef60
0047602f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00476035  50                        PUSH EAX
00476036  6a00                      PUSH 0x0
00476038  57                        PUSH EDI
00476039  6840b6c700                PUSH 0xc7b640
0047603e  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
00476044  50                        PUSH EAX
00476045  6a00                      PUSH 0x0
00476047  56                        PUSH ESI
00476048  e8d32afbff                CALL 0x00428b20
0047604d  eb0f                      JMP 0x0047605e
0047604f  83f81a                    CMP EAX,0x1a
00476052  7e0a                      JLE 0x0047605e
00476054  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047605e  ff8710040000              INC dword ptr [EDI + 0x410]
00476064  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00476067  64890d00000000            MOV dword ptr FS:[0x0],ECX
0047606e  59                        POP ECX
0047606f  5f                        POP EDI
00476070  5e                        POP ESI
00476071  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00476074  33cd                      XOR ECX,EBP
00476076  e8b0906700                CALL 0x00aef12b
0047607b  8be5                      MOV ESP,EBP
0047607d  5d                        POP EBP
0047607e  8be3                      MOV ESP,EBX
00476080  5b                        POP EBX
00476081  c3                        RET
