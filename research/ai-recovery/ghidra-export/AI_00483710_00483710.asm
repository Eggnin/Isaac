; J460 NPC AI 0x00483710 AI_00483710
; types=273
; identities=273.0.0,273.10.0
; entry=00483710
00483710  53                        PUSH EBX
00483711  8bdc                      MOV EBX,ESP
00483713  83ec08                    SUB ESP,0x8
00483716  83e4f8                    AND ESP,0xfffffff8
00483719  83c404                    ADD ESP,0x4
0048371c  55                        PUSH EBP
0048371d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00483720  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00483724  8bec                      MOV EBP,ESP
00483726  6aff                      PUSH -0x1
00483728  68302caf00                PUSH 0xaf2c30
0048372d  64a100000000              MOV EAX,FS:[0x0]
00483733  50                        PUSH EAX
00483734  53                        PUSH EBX
00483735  81ecb8020000              SUB ESP,0x2b8
0048373b  a1b493bf00                MOV EAX,[0x00bf93b4]
00483740  33c5                      XOR EAX,EBP
00483742  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00483745  56                        PUSH ESI
00483746  57                        PUSH EDI
00483747  50                        PUSH EAX
00483748  8d45f4                    LEA EAX,[EBP + -0xc]
0048374b  64a300000000              MOV FS:[0x0],EAX
00483751  8bf9                      MOV EDI,ECX
00483753  33c0                      XOR EAX,EAX
00483755  c78598fdffff00000000      MOV dword ptr [EBP + 0xfffffd98],0x0
0048375f  8985a8fdffff              MOV dword ptr [EBP + 0xfffffda8],EAX
00483765  33f6                      XOR ESI,ESI
00483767  888568fdffff              MOV byte ptr [EBP + 0xfffffd68],AL
0048376d  89856cfdffff              MOV dword ptr [EBP + 0xfffffd6c],EAX
00483773  898570fdffff              MOV dword ptr [EBP + 0xfffffd70],EAX
00483779  898574fdffff              MOV dword ptr [EBP + 0xfffffd74],EAX
0048377f  56                        PUSH ESI
00483780  56                        PUSH ESI
00483781  8975fc                    MOV dword ptr [EBP + -0x4],ESI
00483784  a17816c700                MOV EAX,[0x00c71678]
00483789  6aff                      PUSH -0x1
0048378b  56                        PUSH ESI
0048378c  6811010000                PUSH 0x111
00483791  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00483797  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
0048379d  81c118120000              ADD ECX,0x1218
004837a3  50                        PUSH EAX
004837a4  e8b777f9ff                CALL 0x0041af60
004837a9  80bd7cfdffff00            CMP byte ptr [EBP + 0xfffffd7c],0x0
004837b0  8bc8                      MOV ECX,EAX
004837b2  c68568fdffff01            MOV byte ptr [EBP + 0xfffffd68],0x1
004837b9  8b4108                    MOV EAX,dword ptr [ECX + 0x8]
004837bc  8b5104                    MOV EDX,dword ptr [ECX + 0x4]
004837bf  898570fdffff              MOV dword ptr [EBP + 0xfffffd70],EAX
004837c5  8b410c                    MOV EAX,dword ptr [ECX + 0xc]
004837c8  899590fdffff              MOV dword ptr [EBP + 0xfffffd90],EDX
004837ce  89956cfdffff              MOV dword ptr [EBP + 0xfffffd6c],EDX
004837d4  8985a0fdffff              MOV dword ptr [EBP + 0xfffffda0],EAX
004837da  898574fdffff              MOV dword ptr [EBP + 0xfffffd74],EAX
004837e0  7526                      JNZ 0x00483808
004837e2  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004837e6  b101                      MOV CL,0x1
004837e8  8b9580fdffff              MOV EDX,dword ptr [EBP + 0xfffffd80]
004837ee  56                        PUSH ESI
004837ef  56                        PUSH ESI
004837f0  e8bb105e00                CALL 0x00a648b0
004837f5  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004837f9  83c408                    ADD ESP,0x8
004837fc  8b85a0fdffff              MOV EAX,dword ptr [EBP + 0xfffffda0]
00483802  8b9590fdffff              MOV EDX,dword ptr [EBP + 0xfffffd90]
00483808  85c0                      TEST EAX,EAX
0048380a  741e                      JZ 0x0048382a
0048380c  6a00                      PUSH 0x0
0048380e  68acd6c500                PUSH 0xc5d6ac
00483813  68dcd5c500                PUSH 0xc5d5dc
00483818  6a00                      PUSH 0x0
0048381a  ff32                      PUSH dword ptr [EDX]
0048381c  e890d06600                CALL 0x00af08b1
00483821  83c414                    ADD ESP,0x14
00483824  8985a8fdffff              MOV dword ptr [EBP + 0xfffffda8],EAX
0048382a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00483830  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
00483836  6a00                      PUSH 0x0
00483838  6a00                      PUSH 0x0
0048383a  6aff                      PUSH -0x1
0048383c  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00483842  6a0a                      PUSH 0xa
00483844  6811010000                PUSH 0x111
00483849  81c118120000              ADD ECX,0x1218
0048384f  50                        PUSH EAX
00483850  e80b77f9ff                CALL 0x0041af60
00483855  80bd7cfdffff00            CMP byte ptr [EBP + 0xfffffd7c],0x0
0048385c  c68568fdffff01            MOV byte ptr [EBP + 0xfffffd68],0x1
00483863  8b5004                    MOV EDX,dword ptr [EAX + 0x4]
00483866  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00483869  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
0048386c  899590fdffff              MOV dword ptr [EBP + 0xfffffd90],EDX
00483872  89956cfdffff              MOV dword ptr [EBP + 0xfffffd6c],EDX
00483878  898d70fdffff              MOV dword ptr [EBP + 0xfffffd70],ECX
0048387e  8985a0fdffff              MOV dword ptr [EBP + 0xfffffda0],EAX
00483884  898574fdffff              MOV dword ptr [EBP + 0xfffffd74],EAX
0048388a  7528                      JNZ 0x004838b4
0048388c  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
00483890  b101                      MOV CL,0x1
00483892  8b9580fdffff              MOV EDX,dword ptr [EBP + 0xfffffd80]
00483898  6a00                      PUSH 0x0
0048389a  6a00                      PUSH 0x0
0048389c  e80f105e00                CALL 0x00a648b0
004838a1  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004838a5  83c408                    ADD ESP,0x8
004838a8  8b85a0fdffff              MOV EAX,dword ptr [EBP + 0xfffffda0]
004838ae  8b9590fdffff              MOV EDX,dword ptr [EBP + 0xfffffd90]
004838b4  85c0                      TEST EAX,EAX
004838b6  741a                      JZ 0x004838d2
004838b8  6a00                      PUSH 0x0
004838ba  68acd6c500                PUSH 0xc5d6ac
004838bf  68dcd5c500                PUSH 0xc5d5dc
004838c4  6a00                      PUSH 0x0
004838c6  ff32                      PUSH dword ptr [EDX]
004838c8  e8e4cf6600                CALL 0x00af08b1
004838cd  83c414                    ADD ESP,0x14
004838d0  8bf0                      MOV ESI,EAX
004838d2  32c0                      XOR AL,AL
004838d4  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004838db  8985a0fdffff              MOV dword ptr [EBP + 0xfffffda0],EAX
004838e1  85f6                      TEST ESI,ESI
004838e3  7420                      JZ 0x00483905
004838e5  f30f1086bc0b0000          MOVSS XMM0,dword ptr [ESI + 0xbbc]
004838ed  b901000000                MOV ECX,0x1
004838f2  0f2f0584a7ba00            COMISS XMM0,dword ptr [0x00baa784]
004838f9  0fb6c0                    MOVZX EAX,AL
004838fc  0f47c1                    CMOVA EAX,ECX
004838ff  8985a0fdffff              MOV dword ptr [EBP + 0xfffffda0],EAX
00483905  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00483909  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00483911  0f85d0000000              JNZ 0x004839e7
00483917  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
0048391e  0f85c3000000              JNZ 0x004839e7
00483924  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0048392c  f30f59c1                  MULSS XMM0,XMM1
00483930  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
00483937  0f86aa000000              JBE 0x004839e7
0048393d  6a01                      PUSH 0x1
0048393f  683ce1b100                PUSH 0xb1e13c
00483944  8d4f48                    LEA ECX,[EDI + 0x48]
00483947  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
00483951  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0048395b  e8706cf8ff                CALL 0x0040a5d0
00483960  84c0                      TEST AL,AL
00483962  740f                      JZ 0x00483973
00483964  8d4f78                    LEA ECX,[EDI + 0x78]
00483967  e84468f8ff                CALL 0x0040a1b0
0048396c  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00483973  e8e8b52600                CALL 0x006eef60
00483978  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048397e  50                        PUSH EAX
0048397f  6a00                      PUSH 0x0
00483981  57                        PUSH EDI
00483982  6840b6c700                PUSH 0xc7b640
00483987  8d873c030000              LEA EAX,[EDI + 0x33c]
0048398d  50                        PUSH EAX
0048398e  6a0a                      PUSH 0xa
00483990  6811010000                PUSH 0x111
00483995  e88651faff                CALL 0x00428b20
0048399a  51                        PUSH ECX
0048399b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004839a2  6a00                      PUSH 0x0
004839a4  6a3c                      PUSH 0x3c
004839a6  51                        PUSH ECX
004839a7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004839ae  8bcf                      MOV ECX,EDI
004839b0  6a7a                      PUSH 0x7a
004839b2  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004839b9  e8e2312500                CALL 0x006d6ba0
004839be  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
004839c5  0f57d2                    XORPS XMM2,XMM2
004839c8  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004839d0  0f2fc2                    COMISS XMM0,XMM2
004839d3  7706                      JA 0x004839db
004839d5  f30f10c2                  MOVSS XMM0,XMM2
004839d9  eb04                      JMP 0x004839df
004839db  f30f10c0                  MOVSS XMM0,XMM0
004839df  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
004839e7  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004839ed  85c0                      TEST EAX,EAX
004839ef  0f854e020000              JNZ 0x00483c43
004839f5  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
004839f9  0f85a5010000              JNZ 0x00483ba4
004839ff  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00483a09  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00483a0f  898734030000              MOV dword ptr [EDI + 0x334],EAX
00483a15  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00483a1b  898738030000              MOV dword ptr [EDI + 0x338],EAX
00483a21  c787dc000000000080c0      MOV dword ptr [EDI + 0xdc],0xc0800000
00483a2b  c787e000000000000000      MOV dword ptr [EDI + 0xe0],0x0
00483a35  e826b52600                CALL 0x006eef60
00483a3a  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00483a42  f30f58055ca7ba00          ADDSS XMM0,dword ptr [0x00baa75c]
00483a4a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00483a50  6a00                      PUSH 0x0
00483a52  68acd5c500                PUSH 0xc5d5ac
00483a57  68dcd5c500                PUSH 0xc5d5dc
00483a5c  6a00                      PUSH 0x0
00483a5e  50                        PUSH EAX
00483a5f  6a00                      PUSH 0x0
00483a61  57                        PUSH EDI
00483a62  f30f11859cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM0
00483a6a  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
00483a70  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00483a78  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00483a80  6840b6c700                PUSH 0xc7b640
00483a85  50                        PUSH EAX
00483a86  6a0a                      PUSH 0xa
00483a88  68e8030000                PUSH 0x3e8
00483a8d  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
00483a95  e88650faff                CALL 0x00428b20
00483a9a  50                        PUSH EAX
00483a9b  e811ce6600                CALL 0x00af08b1
00483aa0  83c414                    ADD ESP,0x14
00483aa3  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
00483aaa  8bf0                      MOV ESI,EAX
00483aac  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00483ab3  0f57c0                    XORPS XMM0,XMM0
00483ab6  c745e80000803f            MOV dword ptr [EBP + -0x18],0x3f800000
00483abd  8d4dc0                    LEA ECX,[EBP + -0x40]
00483ac0  6a01                      PUSH 0x1
00483ac2  8b06                      MOV EAX,dword ptr [ESI]
00483ac4  6a00                      PUSH 0x0
00483ac6  68ff000000                PUSH 0xff
00483acb  6aff                      PUSH -0x1
00483acd  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00483ad1  51                        PUSH ECX
00483ad2  0f280530bcba00            MOVAPS XMM0,xmmword ptr [0x00babc30]
00483ad9  8bce                      MOV ECX,ESI
00483adb  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00483adf  ff503c                    CALL dword ptr [EAX + 0x3c]
00483ae2  8b06                      MOV EAX,dword ptr [ESI]
00483ae4  51                        PUSH ECX
00483ae5  8bce                      MOV ECX,ESI
00483ae7  c7042400000000            MOV dword ptr [ESP],0x0
00483aee  ff5040                    CALL dword ptr [EAX + 0x40]
00483af1  8b06                      MOV EAX,dword ptr [ESI]
00483af3  8bce                      MOV ECX,ESI
00483af5  ff500c                    CALL dword ptr [EAX + 0xc]
00483af8  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00483afe  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00483b04  85c9                      TEST ECX,ECX
00483b06  741e                      JZ 0x00483b26
00483b08  8985a8fdffff              MOV dword ptr [EBP + 0xfffffda8],EAX
00483b0e  81c1cc030000              ADD ECX,0x3cc
00483b14  8d85a8fdffff              LEA EAX,[EBP + 0xfffffda8]
00483b1a  50                        PUSH EAX
00483b1b  e8f0b60400                CALL 0x004cf210
00483b20  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00483b26  50                        PUSH EAX
00483b27  8bce                      MOV ECX,ESI
00483b29  8930                      MOV dword ptr [EAX],ESI
00483b2b  e8c0a10400                CALL 0x004cdcf0
00483b30  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00483b33  85f6                      TEST ESI,ESI
00483b35  744a                      JZ 0x00483b81
00483b37  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00483b3b  8bc6                      MOV EAX,ESI
00483b3d  7202                      JC 0x00483b41
00483b3f  8b06                      MOV EAX,dword ptr [ESI]
00483b41  b934d7b100                MOV ECX,0xb1d734
00483b46  8a10                      MOV DL,byte ptr [EAX]
00483b48  3a11                      CMP DL,byte ptr [ECX]
00483b4a  751a                      JNZ 0x00483b66
00483b4c  84d2                      TEST DL,DL
00483b4e  7412                      JZ 0x00483b62
00483b50  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00483b53  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00483b56  750e                      JNZ 0x00483b66
00483b58  83c002                    ADD EAX,0x2
00483b5b  83c102                    ADD ECX,0x2
00483b5e  84d2                      TEST DL,DL
00483b60  75e4                      JNZ 0x00483b46
00483b62  33c0                      XOR EAX,EAX
00483b64  eb05                      JMP 0x00483b6b
00483b66  1bc0                      SBB EAX,EAX
00483b68  83c801                    OR EAX,0x1
00483b6b  85c0                      TEST EAX,EAX
00483b6d  7512                      JNZ 0x00483b81
00483b6f  384634                    CMP byte ptr [ESI + 0x34],AL
00483b72  7465                      JZ 0x00483bd9
00483b74  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00483b7a  8d7748                    LEA ESI,[EDI + 0x48]
00483b7d  755a                      JNZ 0x00483bd9
00483b7f  eb03                      JMP 0x00483b84
00483b81  8d7748                    LEA ESI,[EDI + 0x48]
00483b84  6a01                      PUSH 0x1
00483b86  6834d7b100                PUSH 0xb1d734
00483b8b  8bce                      MOV ECX,ESI
00483b8d  e83e6af8ff                CALL 0x0040a5d0
00483b92  84c0                      TEST AL,AL
00483b94  7443                      JZ 0x00483bd9
00483b96  8d4e30                    LEA ECX,[ESI + 0x30]
00483b99  e81266f8ff                CALL 0x0040a1b0
00483b9e  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00483ba2  eb35                      JMP 0x00483bd9
00483ba4  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00483bae  c787340c000000000040      MOV dword ptr [EDI + 0xc34],0x40000000
00483bb8  e8a3b32600                CALL 0x006eef60
00483bbd  33d2                      XOR EDX,EDX
00483bbf  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00483bc9  b91e000000                MOV ECX,0x1e
00483bce  f7f1                      DIV ECX
00483bd0  83c23c                    ADD EDX,0x3c
00483bd3  899710040000              MOV dword ptr [EDI + 0x410],EDX
00483bd9  8b8780030000              MOV EAX,dword ptr [EDI + 0x380]
00483bdf  0f57c9                    XORPS XMM1,XMM1
00483be2  0f281520bfba00            MOVAPS XMM2,xmmword ptr [0x00babf20]
00483be9  8987b80b0000              MOV dword ptr [EDI + 0xbb8],EAX
00483bef  81c7e4010000              ADD EDI,0x1e4
00483bf5  8d853cfdffff              LEA EAX,[EBP + 0xfffffd3c]
00483bfb  c7855cfdffffcdcccc3d      MOV dword ptr [EBP + 0xfffffd5c],0x3dcccccd
00483c05  c78560fdffffcdcccc3d      MOV dword ptr [EBP + 0xfffffd60],0x3dcccccd
00483c0f  c78564fdffff9a99193e      MOV dword ptr [EBP + 0xfffffd64],0x3e19999a
00483c19  3bf8                      CMP EDI,EAX
00483c1b  0f8469190000              JZ 0x0048558a
00483c21  f30f7e855cfdffff          MOVQ XMM0,qword ptr [EBP + 0xfffffd5c]
00483c29  8b8564fdffff              MOV EAX,dword ptr [EBP + 0xfffffd64]
00483c2f  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
00483c34  0f1117                    MOVUPS xmmword ptr [EDI],XMM2
00483c37  894728                    MOV dword ptr [EDI + 0x28],EAX
00483c3a  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
00483c3e  e947190000                JMP 0x0048558a
00483c43  83f804                    CMP EAX,0x4
00483c46  0f8549050000              JNZ 0x00484195
00483c4c  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
00483c53  8d7748                    LEA ESI,[EDI + 0x48]
00483c56  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00483c59  0f8585010000              JNZ 0x00483de4
00483c5f  85c9                      TEST ECX,ECX
00483c61  7505                      JNZ 0x00483c68
00483c63  8d7748                    LEA ESI,[EDI + 0x48]
00483c66  eb4d                      JMP 0x00483cb5
00483c68  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00483c6f  7565                      JNZ 0x00483cd6
00483c71  83791410                  CMP dword ptr [ECX + 0x14],0x10
00483c75  8d7748                    LEA ESI,[EDI + 0x48]
00483c78  8bc1                      MOV EAX,ECX
00483c7a  7202                      JC 0x00483c7e
00483c7c  8b01                      MOV EAX,dword ptr [ECX]
00483c7e  b954bcb100                MOV ECX,0xb1bc54
00483c83  8a10                      MOV DL,byte ptr [EAX]
00483c85  3a11                      CMP DL,byte ptr [ECX]
00483c87  751a                      JNZ 0x00483ca3
00483c89  84d2                      TEST DL,DL
00483c8b  7412                      JZ 0x00483c9f
00483c8d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00483c90  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00483c93  750e                      JNZ 0x00483ca3
00483c95  83c002                    ADD EAX,0x2
00483c98  83c102                    ADD ECX,0x2
00483c9b  84d2                      TEST DL,DL
00483c9d  75e4                      JNZ 0x00483c83
00483c9f  33c0                      XOR EAX,EAX
00483ca1  eb05                      JMP 0x00483ca8
00483ca3  1bc0                      SBB EAX,EAX
00483ca5  83c801                    OR EAX,0x1
00483ca8  85c0                      TEST EAX,EAX
00483caa  7509                      JNZ 0x00483cb5
00483cac  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00483caf  80783400                  CMP byte ptr [EAX + 0x34],0x0
00483cb3  741e                      JZ 0x00483cd3
00483cb5  6a01                      PUSH 0x1
00483cb7  6854bcb100                PUSH 0xb1bc54
00483cbc  8bce                      MOV ECX,ESI
00483cbe  e80d69f8ff                CALL 0x0040a5d0
00483cc3  84c0                      TEST AL,AL
00483cc5  740c                      JZ 0x00483cd3
00483cc7  8d4e30                    LEA ECX,[ESI + 0x30]
00483cca  e8e164f8ff                CALL 0x0040a1b0
00483ccf  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00483cd3  8d7748                    LEA ESI,[EDI + 0x48]
00483cd6  51                        PUSH ECX
00483cd7  8d85a4fdffff              LEA EAX,[EBP + 0xfffffda4]
00483cdd  c7042400000000            MOV dword ptr [ESP],0x0
00483ce4  50                        PUSH EAX
00483ce5  8bcf                      MOV ECX,EDI
00483ce7  e854af2300                CALL 0x006bec40
00483cec  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00483cf0  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00483cf8  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00483cfd  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
00483d05  0f28c1                    MOVAPS XMM0,XMM1
00483d08  f30f118da0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM1
00483d10  f30f59c1                  MULSS XMM0,XMM1
00483d14  0f28ca                    MOVAPS XMM1,XMM2
00483d17  f30f119598fdffff          MOVSS dword ptr [EBP + 0xfffffd98],XMM2
00483d1f  f30f59ca                  MULSS XMM1,XMM2
00483d23  f30f58c1                  ADDSS XMM0,XMM1
00483d27  e8241dfbff                CALL 0x00435a50
00483d2c  f30f1095a0fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffda0]
00483d34  0f28c8                    MOVAPS XMM1,XMM0
00483d37  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
00483d3e  f30f109d98fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffd98]
00483d46  7614                      JBE 0x00483d5c
00483d48  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00483d50  f30f5ec1                  DIVSS XMM0,XMM1
00483d54  f30f59d0                  MULSS XMM2,XMM0
00483d58  f30f59d8                  MULSS XMM3,XMM0
00483d5c  f30f108f340c0000          MOVSS XMM1,dword ptr [EDI + 0xc34]
00483d64  0f28c1                    MOVAPS XMM0,XMM1
00483d67  f30f59cb                  MULSS XMM1,XMM3
00483d6b  f30f59c2                  MULSS XMM0,XMM2
00483d6f  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00483d77  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00483d7f  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00483d85  8d41ff                    LEA EAX,[ECX + -0x1]
00483d88  898710040000              MOV dword ptr [EDI + 0x410],EAX
00483d8e  85c9                      TEST ECX,ECX
00483d90  0f8f3e160000              JG 0x004853d4
00483d96  e8c5b12600                CALL 0x006eef60
00483d9b  33d2                      XOR EDX,EDX
00483d9d  b964000000                MOV ECX,0x64
00483da2  f7f1                      DIV ECX
00483da4  6a00                      PUSH 0x0
00483da6  8bce                      MOV ECX,ESI
00483da8  6868d6b100                PUSH 0xb1d668
00483dad  83fa32                    CMP EDX,0x32
00483db0  7d14                      JGE 0x00483dc6
00483db2  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00483dbc  e8bf65f8ff                CALL 0x0040a380
00483dc1  e90e160000                JMP 0x004853d4
00483dc6  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
00483dd0  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00483dda  e8a165f8ff                CALL 0x0040a380
00483ddf  e9f0150000                JMP 0x004853d4
00483de4  85c9                      TEST ECX,ECX
00483de6  7505                      JNZ 0x00483ded
00483de8  8d7748                    LEA ESI,[EDI + 0x48]
00483deb  eb4d                      JMP 0x00483e3a
00483ded  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00483df4  7565                      JNZ 0x00483e5b
00483df6  83791410                  CMP dword ptr [ECX + 0x14],0x10
00483dfa  8d7748                    LEA ESI,[EDI + 0x48]
00483dfd  8bc1                      MOV EAX,ECX
00483dff  7202                      JC 0x00483e03
00483e01  8b01                      MOV EAX,dword ptr [ECX]
00483e03  b93cd7b100                MOV ECX,0xb1d73c
00483e08  8a10                      MOV DL,byte ptr [EAX]
00483e0a  3a11                      CMP DL,byte ptr [ECX]
00483e0c  751a                      JNZ 0x00483e28
00483e0e  84d2                      TEST DL,DL
00483e10  7412                      JZ 0x00483e24
00483e12  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00483e15  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00483e18  750e                      JNZ 0x00483e28
00483e1a  83c002                    ADD EAX,0x2
00483e1d  83c102                    ADD ECX,0x2
00483e20  84d2                      TEST DL,DL
00483e22  75e4                      JNZ 0x00483e08
00483e24  33c0                      XOR EAX,EAX
00483e26  eb05                      JMP 0x00483e2d
00483e28  1bc0                      SBB EAX,EAX
00483e2a  83c801                    OR EAX,0x1
00483e2d  85c0                      TEST EAX,EAX
00483e2f  7509                      JNZ 0x00483e3a
00483e31  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00483e34  80783400                  CMP byte ptr [EAX + 0x34],0x0
00483e38  741e                      JZ 0x00483e58
00483e3a  6a01                      PUSH 0x1
00483e3c  683cd7b100                PUSH 0xb1d73c
00483e41  8bce                      MOV ECX,ESI
00483e43  e88867f8ff                CALL 0x0040a5d0
00483e48  84c0                      TEST AL,AL
00483e4a  740c                      JZ 0x00483e58
00483e4c  8d4e30                    LEA ECX,[ESI + 0x30]
00483e4f  e85c63f8ff                CALL 0x0040a1b0
00483e54  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00483e58  8d7748                    LEA ESI,[EDI + 0x48]
00483e5b  51                        PUSH ECX
00483e5c  8d85a4fdffff              LEA EAX,[EBP + 0xfffffda4]
00483e62  c7042400000000            MOV dword ptr [ESP],0x0
00483e69  50                        PUSH EAX
00483e6a  8bcf                      MOV ECX,EDI
00483e6c  e8cfad2300                CALL 0x006bec40
00483e71  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00483e75  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00483e7d  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00483e82  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
00483e8a  0f28c1                    MOVAPS XMM0,XMM1
00483e8d  f30f118d98fdffff          MOVSS dword ptr [EBP + 0xfffffd98],XMM1
00483e95  f30f59c1                  MULSS XMM0,XMM1
00483e99  f30f118d88fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM1
00483ea1  0f28ca                    MOVAPS XMM1,XMM2
00483ea4  f30f59ca                  MULSS XMM1,XMM2
00483ea8  f30f119590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM2
00483eb0  f30f1195a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM2
00483eb8  f30f58c1                  ADDSS XMM0,XMM1
00483ebc  e88f1bfbff                CALL 0x00435a50
00483ec1  0f57db                    XORPS XMM3,XMM3
00483ec4  0f2fc3                    COMISS XMM0,XMM3
00483ec7  7634                      JBE 0x00483efd
00483ec9  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00483ed1  f30f5ec8                  DIVSS XMM1,XMM0
00483ed5  f30f108598fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd98]
00483edd  f30f59c1                  MULSS XMM0,XMM1
00483ee1  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
00483ee9  f30f108590fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd90]
00483ef1  f30f59c1                  MULSS XMM0,XMM1
00483ef5  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
00483efd  f30f108f340c0000          MOVSS XMM1,dword ptr [EDI + 0xc34]
00483f05  0f28c1                    MOVAPS XMM0,XMM1
00483f08  f30f598da8fdffff          MULSS XMM1,dword ptr [EBP + 0xfffffda8]
00483f10  f30f598588fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffd88]
00483f18  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00483f20  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00483f28  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00483f2e  8d41ff                    LEA EAX,[ECX + -0x1]
00483f31  898710040000              MOV dword ptr [EDI + 0x410],EAX
00483f37  85c9                      TEST ECX,ECX
00483f39  0f8f95140000              JG 0x004853d4
00483f3f  e81cb02600                CALL 0x006eef60
00483f44  33d2                      XOR EDX,EDX
00483f46  b963000000                MOV ECX,0x63
00483f4b  f7f1                      DIV ECX
00483f4d  6a00                      PUSH 0x0
00483f4f  83fa19                    CMP EDX,0x19
00483f52  7d1b                      JGE 0x00483f6f
00483f54  6880d7b100                PUSH 0xb1d780
00483f59  8bce                      MOV ECX,ESI
00483f5b  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00483f65  e81664f8ff                CALL 0x0040a380
00483f6a  e965140000                JMP 0x004853d4
00483f6f  83fa32                    CMP EDX,0x32
00483f72  7d25                      JGE 0x00483f99
00483f74  6880d7b100                PUSH 0xb1d780
00483f79  8bce                      MOV ECX,ESI
00483f7b  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
00483f85  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00483f8f  e8ec63f8ff                CALL 0x0040a380
00483f94  e93b140000                JMP 0x004853d4
00483f99  83fa4b                    CMP EDX,0x4b
00483f9c  7d1b                      JGE 0x00483fb9
00483f9e  6880d7b100                PUSH 0xb1d780
00483fa3  8bce                      MOV ECX,ESI
00483fa5  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
00483faf  e8cc63f8ff                CALL 0x0040a380
00483fb4  e91b140000                JMP 0x004853d4
00483fb9  68000a0001                PUSH 0x1000a00
00483fbe  8bcf                      MOV ECX,EDI
00483fc0  e86b34f9ff                CALL 0x00417430
00483fc5  84c0                      TEST AL,AL
00483fc7  0f8507140000              JNZ 0x004853d4
00483fcd  e88eaf2600                CALL 0x006eef60
00483fd2  33d2                      XOR EDX,EDX
00483fd4  b906000000                MOV ECX,0x6
00483fd9  f7f1                      DIV ECX
00483fdb  85d2                      TEST EDX,EDX
00483fdd  750a                      JNZ 0x00483fe9
00483fdf  f30f100dc8a7ba00          MOVSS XMM1,dword ptr [0x00baa7c8]
00483fe7  eb30                      JMP 0x00484019
00483fe9  83fa01                    CMP EDX,0x1
00483fec  750a                      JNZ 0x00483ff8
00483fee  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
00483ff6  eb21                      JMP 0x00484019
00483ff8  83fa02                    CMP EDX,0x2
00483ffb  750a                      JNZ 0x00484007
00483ffd  f30f100d34a8ba00          MOVSS XMM1,dword ptr [0x00baa834]
00484005  eb12                      JMP 0x00484019
00484007  83fa03                    CMP EDX,0x3
0048400a  7205                      JC 0x00484011
0048400c  0f57c9                    XORPS XMM1,XMM1
0048400f  eb08                      JMP 0x00484019
00484011  f30f108da8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffda8]
00484019  f30f109598fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd98]
00484021  0f57ed                    XORPS XMM5,XMM5
00484024  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
0048402c  f30f10257ca8ba00          MOVSS XMM4,dword ptr [0x00baa87c]
00484034  0f54d3                    ANDPS XMM2,XMM3
00484037  0f2fe2                    COMISS XMM4,XMM2
0048403a  f30f118d88fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM1
00484042  0f8783000000              JA 0x004840cb
00484048  8b85a0fdffff              MOV EAX,dword ptr [EBP + 0xfffffda0]
0048404e  84c0                      TEST AL,AL
00484050  7410                      JZ 0x00484062
00484052  f30f108590fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd90]
0048405a  0f54c3                    ANDPS XMM0,XMM3
0048405d  0f2fc2                    COMISS XMM0,XMM2
00484060  7769                      JA 0x004840cb
00484062  f30f108590fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd90]
0048406a  0f54c3                    ANDPS XMM0,XMM3
0048406d  0f2fe0                    COMISS XMM4,XMM0
00484070  7711                      JA 0x00484083
00484072  84c0                      TEST AL,AL
00484074  0f84ad000000              JZ 0x00484127
0048407a  0f2fd0                    COMISS XMM2,XMM0
0048407d  0f86a4000000              JBE 0x00484127
00484083  6a00                      PUSH 0x0
00484085  6870d7b100                PUSH 0xb1d770
0048408a  8d4f48                    LEA ECX,[EDI + 0x48]
0048408d  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00484097  e8e462f8ff                CALL 0x0040a380
0048409c  0f57c0                    XORPS XMM0,XMM0
0048409f  0f2f8598fdffff            COMISS XMM0,dword ptr [EBP + 0xfffffd98]
004840a6  f30f108588fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd88]
004840ae  7607                      JBE 0x004840b7
004840b0  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
004840b7  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004840bf  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
004840c9  eb52                      JMP 0x0048411d
004840cb  0f2fad90fdffff            COMISS XMM5,dword ptr [EBP + 0xfffffd90]
004840d2  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
004840dc  760e                      JBE 0x004840ec
004840de  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
004840e5  b88cd7b100                MOV EAX,0xb1d78c
004840ea  eb05                      JMP 0x004840f1
004840ec  b860d7b100                MOV EAX,0xb1d760
004840f1  6a00                      PUSH 0x0
004840f3  50                        PUSH EAX
004840f4  8bce                      MOV ECX,ESI
004840f6  f30f118d88fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM1
004840fe  e87d62f8ff                CALL 0x0040a380
00484103  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0048410d  f30f108588fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd88]
00484115  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0048411d  c787100400001e000000      MOV dword ptr [EDI + 0x410],0x1e
00484127  6840b6c700                PUSH 0xc7b640
0048412c  8d8fb00b0000              LEA ECX,[EDI + 0xbb0]
00484132  e8c9c45800                CALL 0x00a10600
00484137  84c0                      TEST AL,AL
00484139  0f8495120000              JZ 0x004853d4
0048413f  8bcf                      MOV ECX,EDI
00484141  e8faa62300                CALL 0x006be840
00484146  f30f108d98fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd98]
0048414e  f30f108590fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd90]
00484156  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0048415e  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00484166  f30f58883c030000          ADDSS XMM1,dword ptr [EAX + 0x33c]
0048416e  f30f588040030000          ADDSS XMM0,dword ptr [EAX + 0x340]
00484176  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
0048417e  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00484186  c7871004000008000000      MOV dword ptr [EDI + 0x410],0x8
00484190  e93f120000                JMP 0x004853d4
00484195  83f808                    CMP EAX,0x8
00484198  0f85e9040000              JNZ 0x00484687
0048419e  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004841a6  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004841ae  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004841b6  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004841be  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004841c2  0f849e000000              JZ 0x00484266
004841c8  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004841cf  0f8491000000              JZ 0x00484266
004841d5  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004841d8  83781410                  CMP dword ptr [EAX + 0x14],0x10
004841dc  7202                      JC 0x004841e0
004841de  8b00                      MOV EAX,dword ptr [EAX]
004841e0  b968d6b100                MOV ECX,0xb1d668
004841e5  8a10                      MOV DL,byte ptr [EAX]
004841e7  3a11                      CMP DL,byte ptr [ECX]
004841e9  751a                      JNZ 0x00484205
004841eb  84d2                      TEST DL,DL
004841ed  7412                      JZ 0x00484201
004841ef  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004841f2  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004841f5  750e                      JNZ 0x00484205
004841f7  83c002                    ADD EAX,0x2
004841fa  83c102                    ADD ECX,0x2
004841fd  84d2                      TEST DL,DL
004841ff  75e4                      JNZ 0x004841e5
00484201  33c0                      XOR EAX,EAX
00484203  eb05                      JMP 0x0048420a
00484205  1bc0                      SBB EAX,EAX
00484207  83c801                    OR EAX,0x1
0048420a  85c0                      TEST EAX,EAX
0048420c  743b                      JZ 0x00484249
0048420e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00484211  83781410                  CMP dword ptr [EAX + 0x14],0x10
00484215  7202                      JC 0x00484219
00484217  8b00                      MOV EAX,dword ptr [EAX]
00484219  b980d7b100                MOV ECX,0xb1d780
0048421e  6690                      NOP
00484220  8a10                      MOV DL,byte ptr [EAX]
00484222  3a11                      CMP DL,byte ptr [ECX]
00484224  751a                      JNZ 0x00484240
00484226  84d2                      TEST DL,DL
00484228  7412                      JZ 0x0048423c
0048422a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048422d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00484230  750e                      JNZ 0x00484240
00484232  83c002                    ADD EAX,0x2
00484235  83c102                    ADD ECX,0x2
00484238  84d2                      TEST DL,DL
0048423a  75e4                      JNZ 0x00484220
0048423c  33c0                      XOR EAX,EAX
0048423e  eb05                      JMP 0x00484245
00484240  1bc0                      SBB EAX,EAX
00484242  83c801                    OR EAX,0x1
00484245  85c0                      TEST EAX,EAX
00484247  751d                      JNZ 0x00484266
00484249  51                        PUSH ECX
0048424a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00484251  6a00                      PUSH 0x0
00484253  6a3c                      PUSH 0x3c
00484255  51                        PUSH ECX
00484256  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048425d  8bcf                      MOV ECX,EDI
0048425f  6a6c                      PUSH 0x6c
00484261  e83a292500                CALL 0x006d6ba0
00484266  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
0048426d  0f8538010000              JNZ 0x004843ab
00484273  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00484277  7409                      JZ 0x00484282
00484279  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00484280  753d                      JNZ 0x004842bf
00484282  8d45a8                    LEA EAX,[EBP + -0x58]
00484285  50                        PUSH EAX
00484286  8d4f78                    LEA ECX,[EDI + 0x78]
00484289  e862e9fcff                CALL 0x00452bf0
0048428e  c78598fdffff01000000      MOV dword ptr [EBP + 0xfffffd98],0x1
00484298  83781410                  CMP dword ptr [EAX + 0x14],0x10
0048429c  8b5010                    MOV EDX,dword ptr [EAX + 0x10]
0048429f  7202                      JC 0x004842a3
004842a1  8b00                      MOV EAX,dword ptr [EAX]
004842a3  6a06                      PUSH 0x6
004842a5  6868d6b100                PUSH 0xb1d668
004842aa  8bc8                      MOV ECX,EAX
004842ac  e82f88f8ff                CALL 0x0040cae0
004842b1  83c408                    ADD ESP,0x8
004842b4  c685affdffff01            MOV byte ptr [EBP + 0xfffffdaf],0x1
004842bb  84c0                      TEST AL,AL
004842bd  7507                      JNZ 0x004842c6
004842bf  c685affdffff00            MOV byte ptr [EBP + 0xfffffdaf],0x0
004842c6  f68598fdffff01            TEST byte ptr [EBP + 0xfffffd98],0x1
004842cd  7436                      JZ 0x00484305
004842cf  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
004842d2  83fa10                    CMP EDX,0x10
004842d5  722e                      JC 0x00484305
004842d7  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
004842da  42                        INC EDX
004842db  8bc1                      MOV EAX,ECX
004842dd  81fa00100000              CMP EDX,0x1000
004842e3  7216                      JC 0x004842fb
004842e5  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004842e8  83c223                    ADD EDX,0x23
004842eb  2bc1                      SUB EAX,ECX
004842ed  83c0fc                    ADD EAX,-0x4
004842f0  83f81f                    CMP EAX,0x1f
004842f3  7606                      JBE 0x004842fb
004842f5  ff159488b100              CALL dword ptr [0x00b18894]
004842fb  52                        PUSH EDX
004842fc  51                        PUSH ECX
004842fd  e85aae6600                CALL 0x00aef15c
00484302  83c408                    ADD ESP,0x8
00484305  80bdaffdffff00            CMP byte ptr [EBP + 0xfffffdaf],0x0
0048430c  8d4f48                    LEA ECX,[EDI + 0x48]
0048430f  0f8477000000              JZ 0x0048438c
00484315  6a00                      PUSH 0x0
00484317  68b0d7b100                PUSH 0xb1d7b0
0048431c  e85f60f8ff                CALL 0x0040a380
00484321  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
00484327  e804acfbff                CALL 0x0043ef30
0048432c  0f280570c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac770]
00484333  8b855cffffff              MOV EAX,dword ptr [EBP + 0xffffff5c]
00484339  838d58ffffff02            OR dword ptr [EBP + 0xffffff58],0x2
00484340  51                        PUSH ECX
00484341  c704240000803f            MOV dword ptr [ESP],0x3f800000
00484348  6a00                      PUSH 0x0
0048434a  6a3c                      PUSH 0x3c
0048434c  51                        PUSH ECX
0048434d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00484354  8bcf                      MOV ECX,EDI
00484356  6a0b                      PUSH 0xb
00484358  0f11853cffffff            MOVUPS xmmword ptr [EBP + 0xffffff3c],XMM0
0048435f  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
00484365  e836282500                CALL 0x006d6ba0
0048436a  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
00484370  50                        PUSH EAX
00484371  51                        PUSH ECX
00484372  c7042400000000            MOV dword ptr [ESP],0x0
00484379  8bcf                      MOV ECX,EDI
0048437b  6840b6c700                PUSH 0xc7b640
00484380  6a0c                      PUSH 0xc
00484382  e8498a2400                CALL 0x006ccdd0
00484387  e948100000                JMP 0x004853d4
0048438c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00484390  740d                      JZ 0x0048439f
00484392  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00484399  0f8535100000              JNZ 0x004853d4
0048439f  6a00                      PUSH 0x0
004843a1  6854bcb100                PUSH 0xb1bc54
004843a6  e9e00e0000                JMP 0x0048528b
004843ab  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004843ae  85c0                      TEST EAX,EAX
004843b0  0f8570010000              JNZ 0x00484526
004843b6  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004843be  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004843c6  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004843ce  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004843d6  39477c                    CMP dword ptr [EDI + 0x7c],EAX
004843d9  7408                      JZ 0x004843e3
004843db  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004843e1  753d                      JNZ 0x00484420
004843e3  8d45d4                    LEA EAX,[EBP + -0x2c]
004843e6  50                        PUSH EAX
004843e7  8d4f78                    LEA ECX,[EDI + 0x78]
004843ea  e801e8fcff                CALL 0x00452bf0
004843ef  c78598fdffff02000000      MOV dword ptr [EBP + 0xfffffd98],0x2
004843f9  83781410                  CMP dword ptr [EAX + 0x14],0x10
004843fd  8b5010                    MOV EDX,dword ptr [EAX + 0x10]
00484400  7202                      JC 0x00484404
00484402  8b00                      MOV EAX,dword ptr [EAX]
00484404  6a0a                      PUSH 0xa
00484406  6880d7b100                PUSH 0xb1d780
0048440b  8bc8                      MOV ECX,EAX
0048440d  e8ce86f8ff                CALL 0x0040cae0
00484412  83c408                    ADD ESP,0x8
00484415  c685affdffff01            MOV byte ptr [EBP + 0xfffffdaf],0x1
0048441c  84c0                      TEST AL,AL
0048441e  7507                      JNZ 0x00484427
00484420  c685affdffff00            MOV byte ptr [EBP + 0xfffffdaf],0x0
00484427  f68598fdffff02            TEST byte ptr [EBP + 0xfffffd98],0x2
0048442e  7436                      JZ 0x00484466
00484430  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00484433  83fa10                    CMP EDX,0x10
00484436  722e                      JC 0x00484466
00484438  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0048443b  42                        INC EDX
0048443c  8bc1                      MOV EAX,ECX
0048443e  81fa00100000              CMP EDX,0x1000
00484444  7216                      JC 0x0048445c
00484446  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00484449  83c223                    ADD EDX,0x23
0048444c  2bc1                      SUB EAX,ECX
0048444e  83c0fc                    ADD EAX,-0x4
00484451  83f81f                    CMP EAX,0x1f
00484454  7606                      JBE 0x0048445c
00484456  ff159488b100              CALL dword ptr [0x00b18894]
0048445c  52                        PUSH EDX
0048445d  51                        PUSH ECX
0048445e  e8f9ac6600                CALL 0x00aef15c
00484463  83c408                    ADD ESP,0x8
00484466  80bdaffdffff00            CMP byte ptr [EBP + 0xfffffdaf],0x0
0048446d  8d4f48                    LEA ECX,[EDI + 0x48]
00484470  0f8494000000              JZ 0x0048450a
00484476  6a00                      PUSH 0x0
00484478  68b8d7b100                PUSH 0xb1d7b8
0048447d  e8fe5ef8ff                CALL 0x0040a380
00484482  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
00484488  e8a3aafbff                CALL 0x0043ef30
0048448d  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
00484493  838db0feffff01            OR dword ptr [EBP + 0xfffffeb0],0x1
0048449a  51                        PUSH ECX
0048449b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004844a2  6a00                      PUSH 0x0
004844a4  6a3c                      PUSH 0x3c
004844a6  51                        PUSH ECX
004844a7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004844ae  8bcf                      MOV ECX,EDI
004844b0  6a0b                      PUSH 0xb
004844b2  c7856cfeffff0000c03f      MOV dword ptr [EBP + 0xfffffe6c],0x3fc00000
004844bc  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
004844c2  e8d9262500                CALL 0x006d6ba0
004844c7  8bcf                      MOV ECX,EDI
004844c9  e872a32300                CALL 0x006be840
004844ce  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
004844d4  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004844da  8985a8fdffff              MOV dword ptr [EBP + 0xfffffda8],EAX
004844e0  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
004844e6  50                        PUSH EAX
004844e7  51                        PUSH ECX
004844e8  c7042400000000            MOV dword ptr [ESP],0x0
004844ef  8d85a4fdffff              LEA EAX,[EBP + 0xfffffda4]
004844f5  50                        PUSH EAX
004844f6  898da4fdffff              MOV dword ptr [EBP + 0xfffffda4],ECX
004844fc  8bcf                      MOV ECX,EDI
004844fe  6a0f                      PUSH 0xf
00484500  e8cb882400                CALL 0x006ccdd0
00484505  e9ca0e0000                JMP 0x004853d4
0048450a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048450e  0f84700d0000              JZ 0x00485284
00484514  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048451b  0f85b30e0000              JNZ 0x004853d4
00484521  e95e0d0000                JMP 0x00485284
00484526  83f80a                    CMP EAX,0xa
00484529  0f85a50e0000              JNZ 0x004853d4
0048452f  6a00                      PUSH 0x0
00484531  6898d7b100                PUSH 0xb1d798
00484536  8d4f48                    LEA ECX,[EDI + 0x48]
00484539  e8425ef8ff                CALL 0x0040a380
0048453e  68dcd2b100                PUSH 0xb1d2dc
00484543  8d4f48                    LEA ECX,[EDI + 0x48]
00484546  e8e56af8ff                CALL 0x0040b030
0048454b  84c0                      TEST AL,AL
0048454d  0f8412010000              JZ 0x00484665
00484553  8d8db0fdffff              LEA ECX,[EBP + 0xfffffdb0]
00484559  e8d2a9fbff                CALL 0x0043ef30
0048455e  0f280570c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac770]
00484565  8d85b0fdffff              LEA EAX,[EBP + 0xfffffdb0]
0048456b  50                        PUSH EAX
0048456c  51                        PUSH ECX
0048456d  c7042400000000            MOV dword ptr [ESP],0x0
00484574  8bcf                      MOV ECX,EDI
00484576  6840b6c700                PUSH 0xc7b640
0048457b  6a0c                      PUSH 0xc
0048457d  0f1185ecfdffff            MOVUPS xmmword ptr [EBP + 0xfffffdec],XMM0
00484584  e847882400                CALL 0x006ccdd0
00484589  51                        PUSH ECX
0048458a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00484591  6a00                      PUSH 0x0
00484593  6a02                      PUSH 0x2
00484595  51                        PUSH ECX
00484596  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048459d  8bcf                      MOV ECX,EDI
0048459f  68e2000000                PUSH 0xe2
004845a4  e8f7252500                CALL 0x006d6ba0
004845a9  e8b2a92600                CALL 0x006eef60
004845ae  33d2                      XOR EDX,EDX
004845b0  b905000000                MOV ECX,0x5
004845b5  f7f1                      DIV ECX
004845b7  8995a8fdffff              MOV dword ptr [EBP + 0xfffffda8],EDX
004845bd  85d2                      TEST EDX,EDX
004845bf  0f8ea0000000              JLE 0x00484665
004845c5  e896a92600                CALL 0x006eef60
004845ca  8bf0                      MOV ESI,EAX
004845cc  e88fa92600                CALL 0x006eef60
004845d1  660f6ec0                  MOVD XMM0,EAX
004845d5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004845d9  c1e81f                    SHR EAX,0x1f
004845dc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004845e5  660f5ac0                  CVTPD2PS XMM0,XMM0
004845e9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004845f1  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004845f9  f30f58c0                  ADDSS XMM0,XMM0
004845fd  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
00484605  e8368ff9ff                CALL 0x0041d540
0048460a  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00484612  f30f118594fdffff          MOVSS dword ptr [EBP + 0xfffffd94],XMM0
0048461a  f30f1085a0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffda0]
00484622  e8f98ef9ff                CALL 0x0041d520
00484627  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0048462f  8d8594fdffff              LEA EAX,[EBP + 0xfffffd94]
00484635  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048463b  56                        PUSH ESI
0048463c  6a00                      PUSH 0x0
0048463e  57                        PUSH EDI
0048463f  50                        PUSH EAX
00484640  8d873c030000              LEA EAX,[EDI + 0x33c]
00484646  f30f118598fdffff          MOVSS dword ptr [EBP + 0xfffffd98],XMM0
0048464e  50                        PUSH EAX
0048464f  6a00                      PUSH 0x0
00484651  6a12                      PUSH 0x12
00484653  e8c844faff                CALL 0x00428b20
00484658  83ada8fdffff01            SUB dword ptr [EBP + 0xfffffda8],0x1
0048465f  0f8560ffffff              JNZ 0x004845c5
00484665  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00484669  740d                      JZ 0x00484678
0048466b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00484672  0f855c0d0000              JNZ 0x004853d4
00484678  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00484682  e94d0d0000                JMP 0x004853d4
00484687  83f809                    CMP EAX,0x9
0048468a  0f8517020000              JNZ 0x004848a7
00484690  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00484698  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004846a0  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004846a8  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004846b0  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
004846b7  0f84170d0000              JZ 0x004853d4
004846bd  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
004846c3  8d41ff                    LEA EAX,[ECX + -0x1]
004846c6  898710040000              MOV dword ptr [EDI + 0x410],EAX
004846cc  85c9                      TEST ECX,ECX
004846ce  0f8ec1010000              JLE 0x00484895
004846d4  6a00                      PUSH 0x0
004846d6  68000a0001                PUSH 0x1000a00
004846db  8bcf                      MOV ECX,EDI
004846dd  e84e2df9ff                CALL 0x00417430
004846e2  84c0                      TEST AL,AL
004846e4  0f85ab010000              JNZ 0x00484895
004846ea  51                        PUSH ECX
004846eb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004846f2  6a00                      PUSH 0x0
004846f4  6a32                      PUSH 0x32
004846f6  51                        PUSH ECX
004846f7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004846fe  8bcf                      MOV ECX,EDI
00484700  6a77                      PUSH 0x77
00484702  e899242500                CALL 0x006d6ba0
00484707  8d8fb00b0000              LEA ECX,[EDI + 0xbb0]
0048470d  6840b6c700                PUSH 0xc7b640
00484712  e819bf5800                CALL 0x00a10630
00484717  84c0                      TEST AL,AL
00484719  0f84d9000000              JZ 0x004847f8
0048471f  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00484723  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0048472b  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
0048472e  898764030000              MOV dword ptr [EDI + 0x364],EAX
00484734  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0048473b  740a                      JZ 0x00484747
0048473d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00484747  0f57c9                    XORPS XMM1,XMM1
0048474a  0f2fc8                    COMISS XMM1,XMM0
0048474d  51                        PUSH ECX
0048474e  c7042400000000            MOV dword ptr [ESP],0x0
00484755  8bcf                      MOV ECX,EDI
00484757  0f97c0                    SETA AL
0048475a  888748010000              MOV byte ptr [EDI + 0x148],AL
00484760  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
00484766  50                        PUSH EAX
00484767  e8d4a42300                CALL 0x006bec40
0048476c  8d8da4fdffff              LEA ECX,[EBP + 0xfffffda4]
00484772  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00484776  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0048477e  f30f1185a4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM0
00484786  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0048478b  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
00484791  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00484799  50                        PUSH EAX
0048479a  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
004847a2  e889b85800                CALL 0x00a10030
004847a7  f30f1097340c0000          MOVSS XMM2,dword ptr [EDI + 0xc34]
004847af  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004847b7  0f28ca                    MOVAPS XMM1,XMM2
004847ba  f30f5908                  MULSS XMM1,dword ptr [EAX]
004847be  f30f595004                MULSS XMM2,dword ptr [EAX + 0x4]
004847c3  f30f58c9                  ADDSS XMM1,XMM1
004847c7  f30f58d2                  ADDSS XMM2,XMM2
004847cb  f30f59c8                  MULSS XMM1,XMM0
004847cf  f30f59d0                  MULSS XMM2,XMM0
004847d3  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
004847db  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004847e3  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004847eb  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004847f3  e9dc0b0000                JMP 0x004853d4
004847f8  0f57db                    XORPS XMM3,XMM3
004847fb  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00484805  0f2f9f60030000            COMISS XMM3,dword ptr [EDI + 0x360]
0048480c  0f97c0                    SETA AL
0048480f  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00484816  888748010000              MOV byte ptr [EDI + 0x148],AL
0048481c  740a                      JZ 0x00484828
0048481e  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00484828  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00484830  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00484838  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00484840  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00484848  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00484850  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00484858  660f6e9710040000          MOVD XMM2,dword ptr [EDI + 0x410]
00484860  0f5bd2                    CVTDQ2PS XMM2,XMM2
00484863  0f2ed3                    UCOMISS XMM2,XMM3
00484866  9f                        LAHF
00484867  f6c444                    TEST AH,0x44
0048486a  0f8b640b0000              JNP 0x004853d4
00484870  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00484878  f30f5eca                  DIVSS XMM1,XMM2
0048487c  f30f5ec2                  DIVSS XMM0,XMM2
00484880  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00484888  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00484890  e93f0b0000                JMP 0x004853d4
00484895  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0048489f  8d4f48                    LEA ECX,[EDI + 0x48]
004848a2  e9dd090000                JMP 0x00485284
004848a7  83f80a                    CMP EAX,0xa
004848aa  0f850b050000              JNZ 0x00484dbb
004848b0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004848b4  0f849c000000              JZ 0x00484956
004848ba  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004848c1  0f848f000000              JZ 0x00484956
004848c7  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004848ca  83781410                  CMP dword ptr [EAX + 0x14],0x10
004848ce  7202                      JC 0x004848d2
004848d0  8b00                      MOV EAX,dword ptr [EAX]
004848d2  b968d6b100                MOV ECX,0xb1d668
004848d7  8a10                      MOV DL,byte ptr [EAX]
004848d9  3a11                      CMP DL,byte ptr [ECX]
004848db  751a                      JNZ 0x004848f7
004848dd  84d2                      TEST DL,DL
004848df  7412                      JZ 0x004848f3
004848e1  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004848e4  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004848e7  750e                      JNZ 0x004848f7
004848e9  83c002                    ADD EAX,0x2
004848ec  83c102                    ADD ECX,0x2
004848ef  84d2                      TEST DL,DL
004848f1  75e4                      JNZ 0x004848d7
004848f3  33c0                      XOR EAX,EAX
004848f5  eb05                      JMP 0x004848fc
004848f7  1bc0                      SBB EAX,EAX
004848f9  83c801                    OR EAX,0x1
004848fc  85c0                      TEST EAX,EAX
004848fe  7439                      JZ 0x00484939
00484900  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00484903  83781410                  CMP dword ptr [EAX + 0x14],0x10
00484907  7202                      JC 0x0048490b
00484909  8b00                      MOV EAX,dword ptr [EAX]
0048490b  b980d7b100                MOV ECX,0xb1d780
00484910  8a10                      MOV DL,byte ptr [EAX]
00484912  3a11                      CMP DL,byte ptr [ECX]
00484914  751a                      JNZ 0x00484930
00484916  84d2                      TEST DL,DL
00484918  7412                      JZ 0x0048492c
0048491a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048491d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00484920  750e                      JNZ 0x00484930
00484922  83c002                    ADD EAX,0x2
00484925  83c102                    ADD ECX,0x2
00484928  84d2                      TEST DL,DL
0048492a  75e4                      JNZ 0x00484910
0048492c  33c0                      XOR EAX,EAX
0048492e  eb05                      JMP 0x00484935
00484930  1bc0                      SBB EAX,EAX
00484932  83c801                    OR EAX,0x1
00484935  85c0                      TEST EAX,EAX
00484937  751d                      JNZ 0x00484956
00484939  51                        PUSH ECX
0048493a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00484941  6a00                      PUSH 0x0
00484943  6a3c                      PUSH 0x3c
00484945  51                        PUSH ECX
00484946  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048494d  8bcf                      MOV ECX,EDI
0048494f  6a6a                      PUSH 0x6a
00484951  e84a222500                CALL 0x006d6ba0
00484956  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0048495e  8d7748                    LEA ESI,[EDI + 0x48]
00484961  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00484969  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00484971  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00484979  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048497d  0f84a6010000              JZ 0x00484b29
00484983  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048498a  0f850f010000              JNZ 0x00484a9f
00484990  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00484993  83781410                  CMP dword ptr [EAX + 0x14],0x10
00484997  7202                      JC 0x0048499b
00484999  8b00                      MOV EAX,dword ptr [EAX]
0048499b  b968d6b100                MOV ECX,0xb1d668
004849a0  8a10                      MOV DL,byte ptr [EAX]
004849a2  3a11                      CMP DL,byte ptr [ECX]
004849a4  751a                      JNZ 0x004849c0
004849a6  84d2                      TEST DL,DL
004849a8  7412                      JZ 0x004849bc
004849aa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004849ad  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004849b0  750e                      JNZ 0x004849c0
004849b2  83c002                    ADD EAX,0x2
004849b5  83c102                    ADD ECX,0x2
004849b8  84d2                      TEST DL,DL
004849ba  75e4                      JNZ 0x004849a0
004849bc  33c0                      XOR EAX,EAX
004849be  eb05                      JMP 0x004849c5
004849c0  1bc0                      SBB EAX,EAX
004849c2  83c801                    OR EAX,0x1
004849c5  85c0                      TEST EAX,EAX
004849c7  0f84a0000000              JZ 0x00484a6d
004849cd  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004849d0  83781410                  CMP dword ptr [EAX + 0x14],0x10
004849d4  7202                      JC 0x004849d8
004849d6  8b00                      MOV EAX,dword ptr [EAX]
004849d8  b980d7b100                MOV ECX,0xb1d780
004849dd  0f1f00                    NOP dword ptr [EAX]
004849e0  8a10                      MOV DL,byte ptr [EAX]
004849e2  3a11                      CMP DL,byte ptr [ECX]
004849e4  751a                      JNZ 0x00484a00
004849e6  84d2                      TEST DL,DL
004849e8  7412                      JZ 0x004849fc
004849ea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004849ed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004849f0  750e                      JNZ 0x00484a00
004849f2  83c002                    ADD EAX,0x2
004849f5  83c102                    ADD ECX,0x2
004849f8  84d2                      TEST DL,DL
004849fa  75e4                      JNZ 0x004849e0
004849fc  33c0                      XOR EAX,EAX
004849fe  eb05                      JMP 0x00484a05
00484a00  1bc0                      SBB EAX,EAX
00484a02  83c801                    OR EAX,0x1
00484a05  85c0                      TEST EAX,EAX
00484a07  7464                      JZ 0x00484a6d
00484a09  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00484a0c  83781410                  CMP dword ptr [EAX + 0x14],0x10
00484a10  7202                      JC 0x00484a14
00484a12  8b00                      MOV EAX,dword ptr [EAX]
00484a14  b9a4d7b100                MOV ECX,0xb1d7a4
00484a19  0f1f8000000000            NOP dword ptr [EAX]
00484a20  8a10                      MOV DL,byte ptr [EAX]
00484a22  3a11                      CMP DL,byte ptr [ECX]
00484a24  751a                      JNZ 0x00484a40
00484a26  84d2                      TEST DL,DL
00484a28  7412                      JZ 0x00484a3c
00484a2a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00484a2d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00484a30  750e                      JNZ 0x00484a40
00484a32  83c002                    ADD EAX,0x2
00484a35  83c102                    ADD ECX,0x2
00484a38  84d2                      TEST DL,DL
00484a3a  75e4                      JNZ 0x00484a20
00484a3c  33c0                      XOR EAX,EAX
00484a3e  eb05                      JMP 0x00484a45
00484a40  1bc0                      SBB EAX,EAX
00484a42  83c801                    OR EAX,0x1
00484a45  85c0                      TEST EAX,EAX
00484a47  7556                      JNZ 0x00484a9f
00484a49  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
00484a50  8bce                      MOV ECX,ESI
00484a52  50                        PUSH EAX
00484a53  750c                      JNZ 0x00484a61
00484a55  68f0d7b100                PUSH 0xb1d7f0
00484a5a  e82159f8ff                CALL 0x0040a380
00484a5f  eb3e                      JMP 0x00484a9f
00484a61  68c4d7b100                PUSH 0xb1d7c4
00484a66  e81559f8ff                CALL 0x0040a380
00484a6b  eb32                      JMP 0x00484a9f
00484a6d  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
00484a74  b9a4d7b100                MOV ECX,0xb1d7a4
00484a79  b8e0d7b100                MOV EAX,0xb1d7e0
00484a7e  0f44c1                    CMOVZ EAX,ECX
00484a81  8bce                      MOV ECX,ESI
00484a83  6a00                      PUSH 0x0
00484a85  50                        PUSH EAX
00484a86  e8f558f8ff                CALL 0x0040a380
00484a8b  e8d0a42600                CALL 0x006eef60
00484a90  33d2                      XOR EDX,EDX
00484a92  b90a000000                MOV ECX,0xa
00484a97  f7f1                      DIV ECX
00484a99  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
00484a9f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00484aa3  0f8480000000              JZ 0x00484b29
00484aa9  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00484ab0  0f8473000000              JZ 0x00484b29
00484ab6  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00484ab9  83781410                  CMP dword ptr [EAX + 0x14],0x10
00484abd  7202                      JC 0x00484ac1
00484abf  8b00                      MOV EAX,dword ptr [EAX]
00484ac1  b9f0d7b100                MOV ECX,0xb1d7f0
00484ac6  8a10                      MOV DL,byte ptr [EAX]
00484ac8  3a11                      CMP DL,byte ptr [ECX]
00484aca  751a                      JNZ 0x00484ae6
00484acc  84d2                      TEST DL,DL
00484ace  7412                      JZ 0x00484ae2
00484ad0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00484ad3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00484ad6  750e                      JNZ 0x00484ae6
00484ad8  83c002                    ADD EAX,0x2
00484adb  83c102                    ADD ECX,0x2
00484ade  84d2                      TEST DL,DL
00484ae0  75e4                      JNZ 0x00484ac6
00484ae2  33c0                      XOR EAX,EAX
00484ae4  eb05                      JMP 0x00484aeb
00484ae6  1bc0                      SBB EAX,EAX
00484ae8  83c801                    OR EAX,0x1
00484aeb  85c0                      TEST EAX,EAX
00484aed  744e                      JZ 0x00484b3d
00484aef  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00484af2  83781410                  CMP dword ptr [EAX + 0x14],0x10
00484af6  7202                      JC 0x00484afa
00484af8  8b00                      MOV EAX,dword ptr [EAX]
00484afa  b9c4d7b100                MOV ECX,0xb1d7c4
00484aff  90                        NOP
00484b00  8a10                      MOV DL,byte ptr [EAX]
00484b02  3a11                      CMP DL,byte ptr [ECX]
00484b04  751a                      JNZ 0x00484b20
00484b06  84d2                      TEST DL,DL
00484b08  7412                      JZ 0x00484b1c
00484b0a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00484b0d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00484b10  750e                      JNZ 0x00484b20
00484b12  83c002                    ADD EAX,0x2
00484b15  83c102                    ADD ECX,0x2
00484b18  84d2                      TEST DL,DL
00484b1a  75e4                      JNZ 0x00484b00
00484b1c  33c0                      XOR EAX,EAX
00484b1e  eb05                      JMP 0x00484b25
00484b20  1bc0                      SBB EAX,EAX
00484b22  83c801                    OR EAX,0x1
00484b25  85c0                      TEST EAX,EAX
00484b27  7414                      JZ 0x00484b3d
00484b29  68dcd2b100                PUSH 0xb1d2dc
00484b2e  8bce                      MOV ECX,ESI
00484b30  e85b65f8ff                CALL 0x0040b090
00484b35  84c0                      TEST AL,AL
00484b37  0f84d0010000              JZ 0x00484d0d
00484b3d  83bfc40b000004            CMP dword ptr [EDI + 0xbc4],0x4
00484b44  0f8d83010000              JGE 0x00484ccd
00484b4a  51                        PUSH ECX
00484b4b  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
00484b51  c7042400000000            MOV dword ptr [ESP],0x0
00484b58  50                        PUSH EAX
00484b59  8bcf                      MOV ECX,EDI
00484b5b  e8e0a02300                CALL 0x006bec40
00484b60  8d8da4fdffff              LEA ECX,[EBP + 0xfffffda4]
00484b66  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00484b6a  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00484b72  f30f1185a4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM0
00484b7a  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00484b7f  8d8570fdffff              LEA EAX,[EBP + 0xfffffd70]
00484b85  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00484b8d  50                        PUSH EAX
00484b8e  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
00484b96  e895b45800                CALL 0x00a10030
00484b9b  f30f1097340c0000          MOVSS XMM2,dword ptr [EDI + 0xc34]
00484ba3  0f28ca                    MOVAPS XMM1,XMM2
00484ba6  f30f5908                  MULSS XMM1,dword ptr [EAX]
00484baa  f30f595004                MULSS XMM2,dword ptr [EAX + 0x4]
00484baf  a17816c700                MOV EAX,[0x00c71678]
00484bb4  f30f590d24a2ba00          MULSS XMM1,dword ptr [0x00baa224]
00484bbc  f30f591524a2ba00          MULSS XMM2,dword ptr [0x00baa224]
00484bc4  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00484bcc  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00484bd4  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00484bda  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
00484be0  8bb0cc120000              MOV ESI,dword ptr [EAX + 0x12cc]
00484be6  0388c0120000              ADD ECX,dword ptr [EAX + 0x12c0]
00484bec  03b0c8120000              ADD ESI,dword ptr [EAX + 0x12c8]
00484bf2  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
00484bf9  898da8fdffff              MOV dword ptr [EBP + 0xfffffda8],ECX
00484bff  0f85c5000000              JNZ 0x00484cca
00484c05  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00484c0b  b91e000000                MOV ECX,0x1e
00484c10  99                        CDQ
00484c11  f7f9                      IDIV ECX
00484c13  85d2                      TEST EDX,EDX
00484c15  0f85af000000              JNZ 0x00484cca
00484c1b  e840a32600                CALL 0x006eef60
00484c20  a801                      TEST AL,0x1
00484c22  0f85a2000000              JNZ 0x00484cca
00484c28  8b95a8fdffff              MOV EDX,dword ptr [EBP + 0xfffffda8]
00484c2e  33c9                      XOR ECX,ECX
00484c30  85f6                      TEST ESI,ESI
00484c32  0f4fce                    CMOVG ECX,ESI
00484c35  33c0                      XOR EAX,EAX
00484c37  85d2                      TEST EDX,EDX
00484c39  0f4fc2                    CMOVG EAX,EDX
00484c3c  2bc1                      SUB EAX,ECX
00484c3e  83f80f                    CMP EAX,0xf
00484c41  0f8d83000000              JGE 0x00484cca
00484c47  e814a32600                CALL 0x006eef60
00484c4c  8bf0                      MOV ESI,EAX
00484c4e  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
00484c54  50                        PUSH EAX
00484c55  e816a41f00                CALL 0x0067f070
00484c5a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00484c60  83c404                    ADD ESP,0x4
00484c63  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00484c67  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00484c6f  56                        PUSH ESI
00484c70  6a00                      PUSH 0x0
00484c72  57                        PUSH EDI
00484c73  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00484c7b  f30f1185a4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM0
00484c83  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00484c88  8d85a4fdffff              LEA EAX,[EBP + 0xfffffda4]
00484c8e  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00484c96  50                        PUSH EAX
00484c97  8d873c030000              LEA EAX,[EDI + 0x33c]
00484c9d  50                        PUSH EAX
00484c9e  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
00484ca6  6a00                      PUSH 0x0
00484ca8  6a12                      PUSH 0x12
00484caa  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
00484cb2  e8693efaff                CALL 0x00428b20
00484cb7  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00484cbd  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00484cc4  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00484cca  8d7748                    LEA ESI,[EDI + 0x48]
00484ccd  ffb710040000              PUSH dword ptr [EDI + 0x410]
00484cd3  8bcf                      MOV ECX,EDI
00484cd5  ffb7c40b0000              PUSH dword ptr [EDI + 0xbc4]
00484cdb  e800e4ffff                CALL 0x004830e0
00484ce0  83bf1004000078            CMP dword ptr [EDI + 0x410],0x78
00484ce7  7e1e                      JLE 0x00484d07
00484ce9  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
00484cf0  8bce                      MOV ECX,ESI
00484cf2  6a00                      PUSH 0x0
00484cf4  7507                      JNZ 0x00484cfd
00484cf6  68d4d7b100                PUSH 0xb1d7d4
00484cfb  eb05                      JMP 0x00484d02
00484cfd  680cd8b100                PUSH 0xb1d80c
00484d02  e87956f8ff                CALL 0x0040a380
00484d07  ff8710040000              INC dword ptr [EDI + 0x410]
00484d0d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00484d11  0f84bd060000              JZ 0x004853d4
00484d17  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00484d1e  0f85b0060000              JNZ 0x004853d4
00484d24  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00484d27  83781410                  CMP dword ptr [EAX + 0x14],0x10
00484d2b  7202                      JC 0x00484d2f
00484d2d  8b00                      MOV EAX,dword ptr [EAX]
00484d2f  b9d4d7b100                MOV ECX,0xb1d7d4
00484d34  8a10                      MOV DL,byte ptr [EAX]
00484d36  3a11                      CMP DL,byte ptr [ECX]
00484d38  751a                      JNZ 0x00484d54
00484d3a  84d2                      TEST DL,DL
00484d3c  7412                      JZ 0x00484d50
00484d3e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00484d41  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00484d44  750e                      JNZ 0x00484d54
00484d46  83c002                    ADD EAX,0x2
00484d49  83c102                    ADD ECX,0x2
00484d4c  84d2                      TEST DL,DL
00484d4e  75e4                      JNZ 0x00484d34
00484d50  33c0                      XOR EAX,EAX
00484d52  eb05                      JMP 0x00484d59
00484d54  1bc0                      SBB EAX,EAX
00484d56  83c801                    OR EAX,0x1
00484d59  85c0                      TEST EAX,EAX
00484d5b  7440                      JZ 0x00484d9d
00484d5d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00484d60  83781410                  CMP dword ptr [EAX + 0x14],0x10
00484d64  7202                      JC 0x00484d68
00484d66  8b00                      MOV EAX,dword ptr [EAX]
00484d68  b90cd8b100                MOV ECX,0xb1d80c
00484d6d  0f1f00                    NOP dword ptr [EAX]
00484d70  8a10                      MOV DL,byte ptr [EAX]
00484d72  3a11                      CMP DL,byte ptr [ECX]
00484d74  751a                      JNZ 0x00484d90
00484d76  84d2                      TEST DL,DL
00484d78  7412                      JZ 0x00484d8c
00484d7a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00484d7d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00484d80  750e                      JNZ 0x00484d90
00484d82  83c002                    ADD EAX,0x2
00484d85  83c102                    ADD ECX,0x2
00484d88  84d2                      TEST DL,DL
00484d8a  75e4                      JNZ 0x00484d70
00484d8c  33c0                      XOR EAX,EAX
00484d8e  eb05                      JMP 0x00484d95
00484d90  1bc0                      SBB EAX,EAX
00484d92  83c801                    OR EAX,0x1
00484d95  85c0                      TEST EAX,EAX
00484d97  0f8537060000              JNZ 0x004853d4
00484d9d  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
00484da4  b954bcb100                MOV ECX,0xb1bc54
00484da9  b83cd7b100                MOV EAX,0xb1d73c
00484dae  0f44c1                    CMOVZ EAX,ECX
00484db1  8bce                      MOV ECX,ESI
00484db3  6a00                      PUSH 0x0
00484db5  50                        PUSH EAX
00484db6  e9d0040000                JMP 0x0048528b
00484dbb  83f80b                    CMP EAX,0xb
00484dbe  0f8595040000              JNZ 0x00485259
00484dc4  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00484dcc  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00484dd4  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00484ddc  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00484de4  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00484de7  85f6                      TEST ESI,ESI
00484de9  0f84b2000000              JZ 0x00484ea1
00484def  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00484df6  7549                      JNZ 0x00484e41
00484df8  8bc6                      MOV EAX,ESI
00484dfa  83781410                  CMP dword ptr [EAX + 0x14],0x10
00484dfe  7202                      JC 0x00484e02
00484e00  8b00                      MOV EAX,dword ptr [EAX]
00484e02  b960d6b100                MOV ECX,0xb1d660
00484e07  8a10                      MOV DL,byte ptr [EAX]
00484e09  3a11                      CMP DL,byte ptr [ECX]
00484e0b  751a                      JNZ 0x00484e27
00484e0d  84d2                      TEST DL,DL
00484e0f  7412                      JZ 0x00484e23
00484e11  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00484e14  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00484e17  750e                      JNZ 0x00484e27
00484e19  83c002                    ADD EAX,0x2
00484e1c  83c102                    ADD ECX,0x2
00484e1f  84d2                      TEST DL,DL
00484e21  75e4                      JNZ 0x00484e07
00484e23  33c0                      XOR EAX,EAX
00484e25  eb05                      JMP 0x00484e2c
00484e27  1bc0                      SBB EAX,EAX
00484e29  83c801                    OR EAX,0x1
00484e2c  85c0                      TEST EAX,EAX
00484e2e  7511                      JNZ 0x00484e41
00484e30  50                        PUSH EAX
00484e31  681cd8b100                PUSH 0xb1d81c
00484e36  8d4f48                    LEA ECX,[EDI + 0x48]
00484e39  e84255f8ff                CALL 0x0040a380
00484e3e  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00484e41  85f6                      TEST ESI,ESI
00484e43  745c                      JZ 0x00484ea1
00484e45  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00484e4c  7553                      JNZ 0x00484ea1
00484e4e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00484e51  85c0                      TEST EAX,EAX
00484e53  740a                      JZ 0x00484e5f
00484e55  83781410                  CMP dword ptr [EAX + 0x14],0x10
00484e59  7209                      JC 0x00484e64
00484e5b  8b00                      MOV EAX,dword ptr [EAX]
00484e5d  eb05                      JMP 0x00484e64
00484e5f  b8eca4b100                MOV EAX,0xb1a4ec
00484e64  b980d7b100                MOV ECX,0xb1d780
00484e69  0f1f8000000000            NOP dword ptr [EAX]
00484e70  8a10                      MOV DL,byte ptr [EAX]
00484e72  3a11                      CMP DL,byte ptr [ECX]
00484e74  751a                      JNZ 0x00484e90
00484e76  84d2                      TEST DL,DL
00484e78  7412                      JZ 0x00484e8c
00484e7a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00484e7d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00484e80  750e                      JNZ 0x00484e90
00484e82  83c002                    ADD EAX,0x2
00484e85  83c102                    ADD ECX,0x2
00484e88  84d2                      TEST DL,DL
00484e8a  75e4                      JNZ 0x00484e70
00484e8c  33c0                      XOR EAX,EAX
00484e8e  eb05                      JMP 0x00484e95
00484e90  1bc0                      SBB EAX,EAX
00484e92  83c801                    OR EAX,0x1
00484e95  85c0                      TEST EAX,EAX
00484e97  7508                      JNZ 0x00484ea1
00484e99  50                        PUSH EAX
00484e9a  68e0d7b100                PUSH 0xb1d7e0
00484e9f  eb4e                      JMP 0x00484eef
00484ea1  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00484ea4  85c0                      TEST EAX,EAX
00484ea6  744f                      JZ 0x00484ef7
00484ea8  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00484eaf  7546                      JNZ 0x00484ef7
00484eb1  83781410                  CMP dword ptr [EAX + 0x14],0x10
00484eb5  7202                      JC 0x00484eb9
00484eb7  8b00                      MOV EAX,dword ptr [EAX]
00484eb9  b9e0d7b100                MOV ECX,0xb1d7e0
00484ebe  6690                      NOP
00484ec0  8a10                      MOV DL,byte ptr [EAX]
00484ec2  3a11                      CMP DL,byte ptr [ECX]
00484ec4  751a                      JNZ 0x00484ee0
00484ec6  84d2                      TEST DL,DL
00484ec8  7412                      JZ 0x00484edc
00484eca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00484ecd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00484ed0  750e                      JNZ 0x00484ee0
00484ed2  83c002                    ADD EAX,0x2
00484ed5  83c102                    ADD ECX,0x2
00484ed8  84d2                      TEST DL,DL
00484eda  75e4                      JNZ 0x00484ec0
00484edc  33c0                      XOR EAX,EAX
00484ede  eb05                      JMP 0x00484ee5
00484ee0  1bc0                      SBB EAX,EAX
00484ee2  83c801                    OR EAX,0x1
00484ee5  85c0                      TEST EAX,EAX
00484ee7  750e                      JNZ 0x00484ef7
00484ee9  50                        PUSH EAX
00484eea  68c4d7b100                PUSH 0xb1d7c4
00484eef  8d4f48                    LEA ECX,[EDI + 0x48]
00484ef2  e88954f8ff                CALL 0x0040a380
00484ef7  68dcd2b100                PUSH 0xb1d2dc
00484efc  8d4f48                    LEA ECX,[EDI + 0x48]
00484eff  e82c61f8ff                CALL 0x0040b030
00484f04  84c0                      TEST AL,AL
00484f06  0f848a010000              JZ 0x00485096
00484f0c  e84fa02600                CALL 0x006eef60
00484f11  33d2                      XOR EDX,EDX
00484f13  b903000000                MOV ECX,0x3
00484f18  f7f1                      DIV ECX
00484f1a  8995a0fdffff              MOV dword ptr [EBP + 0xfffffda0],EDX
00484f20  e83ba02600                CALL 0x006eef60
00484f25  33d2                      XOR EDX,EDX
00484f27  b91e000000                MOV ECX,0x1e
00484f2c  f7f1                      DIV ECX
00484f2e  a17816c700                MOV EAX,[0x00c71678]
00484f33  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00484f39  51                        PUSH ECX
00484f3a  c7042400008c42            MOV dword ptr [ESP],0x428c0000
00484f41  51                        PUSH ECX
00484f42  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00484f48  8d720f                    LEA ESI,[EDX + 0xf]
00484f4b  e810e43800                CALL 0x00813360
00484f50  84c0                      TEST AL,AL
00484f52  750c                      JNZ 0x00484f60
00484f54  c785a0fdffff00000000      MOV dword ptr [EBP + 0xfffffda0],0x0
00484f5e  eb0c                      JMP 0x00484f6c
00484f60  83bda0fdffff00            CMP dword ptr [EBP + 0xfffffda0],0x0
00484f67  8d4e2d                    LEA ECX,[ESI + 0x2d]
00484f6a  7505                      JNZ 0x00484f71
00484f6c  b95a000000                MOV ECX,0x5a
00484f71  8d41f1                    LEA EAX,[ECX + -0xf]
00484f74  898d98fdffff              MOV dword ptr [EBP + 0xfffffd98],ECX
00484f7a  898710040000              MOV dword ptr [EDI + 0x410],EAX
00484f80  33c0                      XOR EAX,EAX
00484f82  8985a8fdffff              MOV dword ptr [EBP + 0xfffffda8],EAX
00484f88  89858cfdffff              MOV dword ptr [EBP + 0xfffffd8c],EAX
00484f8e  c78590fdffff0000a0c1      MOV dword ptr [EBP + 0xfffffd90],0xc1a00000
00484f98  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00484fa0  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00484fa8  8d958cfdffff              LEA EDX,[EBP + 0xfffffd8c]
00484fae  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00484fb6  6a00                      PUSH 0x0
00484fb8  57                        PUSH EDI
00484fb9  52                        PUSH EDX
00484fba  51                        PUSH ECX
00484fbb  f30f118584fdffff          MOVSS dword ptr [EBP + 0xfffffd84],XMM0
00484fc3  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00484fcb  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
00484fd3  51                        PUSH ECX
00484fd4  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
00484fdc  660f6ec0                  MOVD XMM0,EAX
00484fe0  8d8584fdffff              LEA EAX,[EBP + 0xfffffd84]
00484fe6  0f5bc0                    CVTDQ2PS XMM0,XMM0
00484fe9  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00484ff1  f30f5c0578aaba00          SUBSS XMM0,dword ptr [0x00baaa78]
00484ff9  f30f110424                MOVSS dword ptr [ESP],XMM0
00484ffe  50                        PUSH EAX
00484fff  6a01                      PUSH 0x1
00485001  e80aa34e00                CALL 0x0096f310
00485006  8bd0                      MOV EDX,EAX
00485008  83c41c                    ADD ESP,0x1c
0048500b  8b85a0fdffff              MOV EAX,dword ptr [EBP + 0xfffffda0]
00485011  c7825803000000007a44      MOV dword ptr [EDX + 0x358],0x447a0000
0048501b  83f801                    CMP EAX,0x1
0048501e  751f                      JNZ 0x0048503f
00485020  8d4e2e                    LEA ECX,[ESI + 0x2e]
00485023  c782c80400000000b442      MOV dword ptr [EDX + 0x4c8],0x42b40000
0048502d  c782cc04000000000040      MOV dword ptr [EDX + 0x4cc],0x40000000
00485037  898a58040000              MOV dword ptr [EDX + 0x458],ECX
0048503d  eb22                      JMP 0x00485061
0048503f  83f802                    CMP EAX,0x2
00485042  752a                      JNZ 0x0048506e
00485044  8d462e                    LEA EAX,[ESI + 0x2e]
00485047  c782c80400000000b4c2      MOV dword ptr [EDX + 0x4c8],0xc2b40000
00485051  c782cc040000000000c0      MOV dword ptr [EDX + 0x4cc],0xc0000000
0048505b  898258040000              MOV dword ptr [EDX + 0x458],EAX
00485061  89b2c4040000              MOV dword ptr [EDX + 0x4c4],ESI
00485067  c682c004000001            MOV byte ptr [EDX + 0x4c0],0x1
0048506e  8b02                      MOV EAX,dword ptr [EDX]
00485070  8bca                      MOV ECX,EDX
00485072  ff500c                    CALL dword ptr [EAX + 0xc]
00485075  8b85a8fdffff              MOV EAX,dword ptr [EBP + 0xfffffda8]
0048507b  8b8d98fdffff              MOV ECX,dword ptr [EBP + 0xfffffd98]
00485081  40                        INC EAX
00485082  8985a8fdffff              MOV dword ptr [EBP + 0xfffffda8],EAX
00485088  83f804                    CMP EAX,0x4
0048508b  0f8c0fffffff              JL 0x00484fa0
00485091  e93e030000                JMP 0x004853d4
00485096  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048509a  0f8434030000              JZ 0x004853d4
004850a0  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004850a7  0f84df000000              JZ 0x0048518c
004850ad  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004850b0  83781410                  CMP dword ptr [EAX + 0x14],0x10
004850b4  7202                      JC 0x004850b8
004850b6  8b00                      MOV EAX,dword ptr [EAX]
004850b8  b91cd8b100                MOV ECX,0xb1d81c
004850bd  0f1f00                    NOP dword ptr [EAX]
004850c0  8a10                      MOV DL,byte ptr [EAX]
004850c2  3a11                      CMP DL,byte ptr [ECX]
004850c4  751a                      JNZ 0x004850e0
004850c6  84d2                      TEST DL,DL
004850c8  7412                      JZ 0x004850dc
004850ca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004850cd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004850d0  750e                      JNZ 0x004850e0
004850d2  83c002                    ADD EAX,0x2
004850d5  83c102                    ADD ECX,0x2
004850d8  84d2                      TEST DL,DL
004850da  75e4                      JNZ 0x004850c0
004850dc  33c0                      XOR EAX,EAX
004850de  eb05                      JMP 0x004850e5
004850e0  1bc0                      SBB EAX,EAX
004850e2  83c801                    OR EAX,0x1
004850e5  85c0                      TEST EAX,EAX
004850e7  0f84e0000000              JZ 0x004851cd
004850ed  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004850f4  0f8492000000              JZ 0x0048518c
004850fa  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004850fd  83781410                  CMP dword ptr [EAX + 0x14],0x10
00485101  7202                      JC 0x00485105
00485103  8b00                      MOV EAX,dword ptr [EAX]
00485105  b9c4d7b100                MOV ECX,0xb1d7c4
0048510a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00485110  8a10                      MOV DL,byte ptr [EAX]
00485112  3a11                      CMP DL,byte ptr [ECX]
00485114  751a                      JNZ 0x00485130
00485116  84d2                      TEST DL,DL
00485118  7412                      JZ 0x0048512c
0048511a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048511d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00485120  750e                      JNZ 0x00485130
00485122  83c002                    ADD EAX,0x2
00485125  83c102                    ADD ECX,0x2
00485128  84d2                      TEST DL,DL
0048512a  75e4                      JNZ 0x00485110
0048512c  33c0                      XOR EAX,EAX
0048512e  eb05                      JMP 0x00485135
00485130  1bc0                      SBB EAX,EAX
00485132  83c801                    OR EAX,0x1
00485135  85c0                      TEST EAX,EAX
00485137  0f8490000000              JZ 0x004851cd
0048513d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00485144  7446                      JZ 0x0048518c
00485146  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00485149  83781410                  CMP dword ptr [EAX + 0x14],0x10
0048514d  7202                      JC 0x00485151
0048514f  8b00                      MOV EAX,dword ptr [EAX]
00485151  b90cd8b100                MOV ECX,0xb1d80c
00485156  8a10                      MOV DL,byte ptr [EAX]
00485158  3a11                      CMP DL,byte ptr [ECX]
0048515a  751a                      JNZ 0x00485176
0048515c  84d2                      TEST DL,DL
0048515e  7412                      JZ 0x00485172
00485160  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00485163  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00485166  750e                      JNZ 0x00485176
00485168  83c002                    ADD EAX,0x2
0048516b  83c102                    ADD ECX,0x2
0048516e  84d2                      TEST DL,DL
00485170  75e4                      JNZ 0x00485156
00485172  33c0                      XOR EAX,EAX
00485174  eb05                      JMP 0x0048517b
00485176  1bc0                      SBB EAX,EAX
00485178  83c801                    OR EAX,0x1
0048517b  85c0                      TEST EAX,EAX
0048517d  744e                      JZ 0x004851cd
0048517f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00485186  0f8548020000              JNZ 0x004853d4
0048518c  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0048518f  83781410                  CMP dword ptr [EAX + 0x14],0x10
00485193  7202                      JC 0x00485197
00485195  8b00                      MOV EAX,dword ptr [EAX]
00485197  b90cd8b100                MOV ECX,0xb1d80c
0048519c  0f1f4000                  NOP dword ptr [EAX]
004851a0  8a10                      MOV DL,byte ptr [EAX]
004851a2  3a11                      CMP DL,byte ptr [ECX]
004851a4  751a                      JNZ 0x004851c0
004851a6  84d2                      TEST DL,DL
004851a8  7412                      JZ 0x004851bc
004851aa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004851ad  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004851b0  750e                      JNZ 0x004851c0
004851b2  83c002                    ADD EAX,0x2
004851b5  83c102                    ADD ECX,0x2
004851b8  84d2                      TEST DL,DL
004851ba  75e4                      JNZ 0x004851a0
004851bc  33c0                      XOR EAX,EAX
004851be  eb05                      JMP 0x004851c5
004851c0  1bc0                      SBB EAX,EAX
004851c2  83c801                    OR EAX,0x1
004851c5  85c0                      TEST EAX,EAX
004851c7  0f8507020000              JNZ 0x004853d4
004851cd  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
004851d3  8d41ff                    LEA EAX,[ECX + -0x1]
004851d6  898710040000              MOV dword ptr [EDI + 0x410],EAX
004851dc  85c9                      TEST ECX,ECX
004851de  0f8ff0010000              JG 0x004853d4
004851e4  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
004851eb  7460                      JZ 0x0048524d
004851ed  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004851f1  7446                      JZ 0x00485239
004851f3  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004851fa  753d                      JNZ 0x00485239
004851fc  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004851ff  83781410                  CMP dword ptr [EAX + 0x14],0x10
00485203  7202                      JC 0x00485207
00485205  8b00                      MOV EAX,dword ptr [EAX]
00485207  b90cd8b100                MOV ECX,0xb1d80c
0048520c  0f1f4000                  NOP dword ptr [EAX]
00485210  8a10                      MOV DL,byte ptr [EAX]
00485212  3a11                      CMP DL,byte ptr [ECX]
00485214  751a                      JNZ 0x00485230
00485216  84d2                      TEST DL,DL
00485218  7412                      JZ 0x0048522c
0048521a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048521d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00485220  750e                      JNZ 0x00485230
00485222  83c002                    ADD EAX,0x2
00485225  83c102                    ADD ECX,0x2
00485228  84d2                      TEST DL,DL
0048522a  75e4                      JNZ 0x00485210
0048522c  33c0                      XOR EAX,EAX
0048522e  eb05                      JMP 0x00485235
00485230  1bc0                      SBB EAX,EAX
00485232  83c801                    OR EAX,0x1
00485235  85c0                      TEST EAX,EAX
00485237  7414                      JZ 0x0048524d
00485239  6a00                      PUSH 0x0
0048523b  680cd8b100                PUSH 0xb1d80c
00485240  8d4f48                    LEA ECX,[EDI + 0x48]
00485243  e83851f8ff                CALL 0x0040a380
00485248  e987010000                JMP 0x004853d4
0048524d  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00485257  eb41                      JMP 0x0048529a
00485259  83f810                    CMP EAX,0x10
0048525c  0f8572010000              JNZ 0x004853d4
00485262  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00485265  85c0                      TEST EAX,EAX
00485267  754d                      JNZ 0x004852b6
00485269  8d4f48                    LEA ECX,[EDI + 0x48]
0048526c  39477c                    CMP dword ptr [EDI + 0x7c],EAX
0048526f  740c                      JZ 0x0048527d
00485271  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00485277  0f8557010000              JNZ 0x004853d4
0048527d  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
00485284  6a00                      PUSH 0x0
00485286  683cd7b100                PUSH 0xb1d73c
0048528b  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00485295  e8e650f8ff                CALL 0x0040a380
0048529a  e8c19c2600                CALL 0x006eef60
0048529f  33d2                      XOR EDX,EDX
004852a1  b91e000000                MOV ECX,0x1e
004852a6  f7f1                      DIV ECX
004852a8  83c23c                    ADD EDX,0x3c
004852ab  899710040000              MOV dword ptr [EDI + 0x410],EDX
004852b1  e91e010000                JMP 0x004853d4
004852b6  83f80a                    CMP EAX,0xa
004852b9  0f8515010000              JNZ 0x004853d4
004852bf  6a00                      PUSH 0x0
004852c1  6834d7b100                PUSH 0xb1d734
004852c6  8d4f48                    LEA ECX,[EDI + 0x48]
004852c9  e8b250f8ff                CALL 0x0040a380
004852ce  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004852d6  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004852de  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004852e6  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004852ee  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004852f6  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004852fe  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
00485304  85c0                      TEST EAX,EAX
00485306  7430                      JZ 0x00485338
00485308  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00485310  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00485318  f30f58055ca7ba00          ADDSS XMM0,dword ptr [0x00baa75c]
00485320  f30f580d30a6ba00          ADDSS XMM1,dword ptr [0x00baa630]
00485328  f30f11803c030000          MOVSS dword ptr [EAX + 0x33c],XMM0
00485330  f30f118840030000          MOVSS dword ptr [EAX + 0x340],XMM1
00485338  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00485340  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00485347  0f8681000000              JBE 0x004853ce
0048534d  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00485353  b90f000000                MOV ECX,0xf
00485358  99                        CDQ
00485359  f7f9                      IDIV ECX
0048535b  85d2                      TEST EDX,EDX
0048535d  0f856b000000              JNZ 0x004853ce
00485363  e8f89b2600                CALL 0x006eef60
00485368  a807                      TEST AL,0x7
0048536a  7412                      JZ 0x0048537e
0048536c  80bda0fdffff00            CMP byte ptr [EBP + 0xfffffda0],0x0
00485373  7459                      JZ 0x004853ce
00485375  e8e69b2600                CALL 0x006eef60
0048537a  a801                      TEST AL,0x1
0048537c  7550                      JNZ 0x004853ce
0048537e  6a00                      PUSH 0x0
00485380  68000a0001                PUSH 0x1000a00
00485385  8bcf                      MOV ECX,EDI
00485387  e8a420f9ff                CALL 0x00417430
0048538c  84c0                      TEST AL,AL
0048538e  753e                      JNZ 0x004853ce
00485390  8b85a8fdffff              MOV EAX,dword ptr [EBP + 0xfffffda8]
00485396  85c0                      TEST EAX,EAX
00485398  7409                      JZ 0x004853a3
0048539a  83b8640b000004            CMP dword ptr [EAX + 0xb64],0x4
004853a1  752b                      JNZ 0x004853ce
004853a3  80bda0fdffff00            CMP byte ptr [EBP + 0xfffffda0],0x0
004853aa  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004853b4  7418                      JZ 0x004853ce
004853b6  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
004853be  f30f5c055ca7ba00          SUBSS XMM0,dword ptr [0x00baa75c]
004853c6  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
004853ce  ff8710040000              INC dword ptr [EDI + 0x410]
004853d4  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
004853d8  0f853e010000              JNZ 0x0048551c
004853de  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004853e5  0f8431010000              JZ 0x0048551c
004853eb  a17816c700                MOV EAX,[0x00c71678]
004853f0  8bcf                      MOV ECX,EDI
004853f2  c7801c6502000000803f      MOV dword ptr [EAX + 0x2651c],0x3f800000
004853fc  c7801465020058020000      MOV dword ptr [EAX + 0x26514],0x258
00485406  c7878803000000000000      MOV dword ptr [EDI + 0x388],0x0
00485410  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
00485417  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0048541e  66c7873c0c00000000        MOV word ptr [EDI + 0xc3c],0x0
00485427  c7878003000000000000      MOV dword ptr [EDI + 0x380],0x0
00485431  c7878801000001000000      MOV dword ptr [EDI + 0x188],0x1
0048543b  e8f0912200                CALL 0x006ae630
00485440  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00485446  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
0048544c  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00485452  83ca01                    OR EDX,0x1
00485455  898574fdffff              MOV dword ptr [EBP + 0xfffffd74],EAX
0048545b  a17816c700                MOV EAX,[0x00c71678]
00485460  899768010000              MOV dword ptr [EDI + 0x168],EDX
00485466  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0048546c  33c0                      XOR EAX,EAX
0048546e  8b8ecc120000              MOV ECX,dword ptr [ESI + 0x12cc]
00485474  038ec8120000              ADD ECX,dword ptr [ESI + 0x12c8]
0048547a  85c9                      TEST ECX,ECX
0048547c  0f4fc1                    CMOVG EAX,ECX
0048547f  85c0                      TEST EAX,EAX
00485481  7e13                      JLE 0x00485496
00485483  81e200001000              AND EDX,0x100000
00485489  83ca00                    OR EDX,0x0
0048548c  7508                      JNZ 0x00485496
0048548e  57                        PUSH EDI
0048548f  8bce                      MOV ECX,ESI
00485491  e86a973700                CALL 0x007fec00
00485496  e8c59a2600                CALL 0x006eef60
0048549b  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004854a3  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004854ab  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
004854b3  f30f5c0d1ca8ba00          SUBSS XMM1,dword ptr [0x00baa81c]
004854bb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004854c1  50                        PUSH EAX
004854c2  6a00                      PUSH 0x0
004854c4  57                        PUSH EDI
004854c5  6840b6c700                PUSH 0xc7b640
004854ca  8d8570fdffff              LEA EAX,[EBP + 0xfffffd70]
004854d0  f30f118570fdffff          MOVSS dword ptr [EBP + 0xfffffd70],XMM0
004854d8  50                        PUSH EAX
004854d9  6a0f                      PUSH 0xf
004854db  68e8030000                PUSH 0x3e8
004854e0  f30f118d74fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM1
004854e8  e83336faff                CALL 0x00428b20
004854ed  51                        PUSH ECX
004854ee  c704240000803f            MOV dword ptr [ESP],0x3f800000
004854f5  6a00                      PUSH 0x0
004854f7  6a02                      PUSH 0x2
004854f9  51                        PUSH ECX
004854fa  c704249a99593f            MOV dword ptr [ESP],0x3f59999a
00485501  8bcf                      MOV ECX,EDI
00485503  6805010000                PUSH 0x105
00485508  e893162500                CALL 0x006d6ba0
0048550d  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00485513  85c9                      TEST ECX,ECX
00485515  7405                      JZ 0x0048551c
00485517  8b01                      MOV EAX,dword ptr [ECX]
00485519  ff5028                    CALL dword ptr [EAX + 0x28]
0048551c  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00485524  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0048552c  0f2fc1                    COMISS XMM0,XMM1
0048552f  7627                      JBE 0x00485558
00485531  f30f5cc1                  SUBSS XMM0,XMM1
00485535  f30f5887bc0b0000          ADDSS XMM0,dword ptr [EDI + 0xbbc]
0048553d  0f2f05eca8ba00            COMISS XMM0,dword ptr [0x00baa8ec]
00485544  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
0048554c  760a                      JBE 0x00485558
0048554e  c787bc0b000000000c42      MOV dword ptr [EDI + 0xbbc],0x420c0000
00485558  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
00485560  0f57d2                    XORPS XMM2,XMM2
00485563  f30f5c05d4a1ba00          SUBSS XMM0,dword ptr [0x00baa1d4]
0048556b  0f2fd0                    COMISS XMM2,XMM0
0048556e  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
00485576  760a                      JBE 0x00485582
00485578  c787bc0b000000000000      MOV dword ptr [EDI + 0xbbc],0x0
00485582  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
0048558a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0048558d  64890d00000000            MOV dword ptr FS:[0x0],ECX
00485594  59                        POP ECX
00485595  5f                        POP EDI
00485596  5e                        POP ESI
00485597  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0048559a  33cd                      XOR ECX,EBP
0048559c  e88a9b6600                CALL 0x00aef12b
004855a1  8be5                      MOV ESP,EBP
004855a3  5d                        POP EBP
004855a4  8be3                      MOV ESP,EBX
004855a6  5b                        POP EBX
004855a7  c3                        RET
