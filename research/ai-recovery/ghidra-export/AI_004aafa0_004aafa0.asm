; J460 NPC AI 0x004aafa0 AI_004aafa0
; types=950
; identities=950.0.0,950.1.0,950.10.0,950.2.0
; entry=004aafa0
004aafa0  53                        PUSH EBX
004aafa1  8bdc                      MOV EBX,ESP
004aafa3  83ec08                    SUB ESP,0x8
004aafa6  83e4f8                    AND ESP,0xfffffff8
004aafa9  83c404                    ADD ESP,0x4
004aafac  55                        PUSH EBP
004aafad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004aafb0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004aafb4  8bec                      MOV EBP,ESP
004aafb6  6aff                      PUSH -0x1
004aafb8  687031af00                PUSH 0xaf3170
004aafbd  64a100000000              MOV EAX,FS:[0x0]
004aafc3  50                        PUSH EAX
004aafc4  53                        PUSH EBX
004aafc5  81ec48010000              SUB ESP,0x148
004aafcb  a1b493bf00                MOV EAX,[0x00bf93b4]
004aafd0  33c5                      XOR EAX,EBP
004aafd2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004aafd5  56                        PUSH ESI
004aafd6  57                        PUSH EDI
004aafd7  50                        PUSH EAX
004aafd8  8d45f4                    LEA EAX,[EBP + -0xc]
004aafdb  64a300000000              MOV FS:[0x0],EAX
004aafe1  8bf9                      MOV EDI,ECX
004aafe3  89bd0cffffff              MOV dword ptr [EBP + 0xffffff0c],EDI
004aafe9  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004aaff1  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004aaff7  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
004aaffd  8bb600830100              MOV ESI,dword ptr [ESI + 0x18300]
004ab003  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
004ab009  f30f2c97a4030000          CVTTSS2SI EDX,dword ptr [EDI + 0x3a4]
004ab011  2bd0                      SUB EDX,EAX
004ab013  8d87bc030000              LEA EAX,[EDI + 0x3bc]
004ab019  8995f8feffff              MOV dword ptr [EBP + 0xfffffef8],EDX
004ab01f  85c9                      TEST ECX,ECX
004ab021  7412                      JZ 0x004ab035
004ab023  f30f108180030000          MOVSS XMM0,dword ptr [ECX + 0x380]
004ab02b  f30f5e8184030000          DIVSS XMM0,dword ptr [ECX + 0x384]
004ab033  eb08                      JMP 0x004ab03d
004ab035  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004ab03d  8b8f740b0000              MOV ECX,dword ptr [EDI + 0xb74]
004ab043  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
004ab04b  898dfcfeffff              MOV dword ptr [EBP + 0xfffffefc],ECX
004ab051  83f901                    CMP ECX,0x1
004ab054  0f84d32e0000              JZ 0x004adf2d
004ab05a  83f902                    CMP ECX,0x2
004ab05d  0f84cd2e0000              JZ 0x004adf30
004ab063  833800                    CMP dword ptr [EAX],0x0
004ab066  753e                      JNZ 0x004ab0a6
004ab068  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
004ab06e  85c9                      TEST ECX,ECX
004ab070  7434                      JZ 0x004ab0a6
004ab072  83f910                    CMP ECX,0x10
004ab075  742f                      JZ 0x004ab0a6
004ab077  83f902                    CMP ECX,0x2
004ab07a  742a                      JZ 0x004ab0a6
004ab07c  83f907                    CMP ECX,0x7
004ab07f  7425                      JZ 0x004ab0a6
004ab081  6a00                      PUSH 0x0
004ab083  8d4f48                    LEA ECX,[EDI + 0x48]
004ab086  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004ab090  68e4d3b100                PUSH 0xb1d3e4
004ab095  e8e6f2f5ff                CALL 0x0040a380
004ab09a  8b95f8feffff              MOV EDX,dword ptr [EBP + 0xfffffef8]
004ab0a0  8d87bc030000              LEA EAX,[EDI + 0x3bc]
004ab0a6  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
004ab0ac  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
004ab0b4  83f910                    CMP ECX,0x10
004ab0b7  0f879f2d0000              JA 0x004ade5c
004ab0bd  c785fcfeffff02000000      MOV dword ptr [EBP + 0xfffffefc],0x2
004ab0c7  ff248d78e44a00            JMP dword ptr [ECX*0x4 + 0x4ae478]
004ab0ce  837f3400                  CMP dword ptr [EDI + 0x34],0x0
004ab0d2  c787180f000003000000      MOV dword ptr [EDI + 0xf18],0x3
004ab0dc  0f8514010000              JNZ 0x004ab1f6
004ab0e2  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
004ab0e8  8bce                      MOV ECX,ESI
004ab0ea  50                        PUSH EAX
004ab0eb  e8107c3600                CALL 0x00812d00
004ab0f0  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
004ab0f6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ab0fc  6a00                      PUSH 0x0
004ab0fe  57                        PUSH EDI
004ab0ff  6840b6c700                PUSH 0xc7b640
004ab104  50                        PUSH EAX
004ab105  6a01                      PUSH 0x1
004ab107  68b6030000                PUSH 0x3b6
004ab10c  e80fdaf7ff                CALL 0x00428b20
004ab111  8bf0                      MOV ESI,EAX
004ab113  8bce                      MOV ECX,ESI
004ab115  8b06                      MOV EAX,dword ptr [ESI]
004ab117  ff500c                    CALL dword ptr [EAX + 0xc]
004ab11a  57                        PUSH EDI
004ab11b  8bce                      MOV ECX,ESI
004ab11d  e8bee11f00                CALL 0x006a92e0
004ab122  56                        PUSH ESI
004ab123  8bcf                      MOV ECX,EDI
004ab125  e876e11f00                CALL 0x006a92a0
004ab12a  6a00                      PUSH 0x0
004ab12c  6854bcb100                PUSH 0xb1bc54
004ab131  8d4f48                    LEA ECX,[EDI + 0x48]
004ab134  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004ab13e  e83df2f5ff                CALL 0x0040a380
004ab143  6a00                      PUSH 0x0
004ab145  680cd2b100                PUSH 0xb1d20c
004ab14a  8d4f48                    LEA ECX,[EDI + 0x48]
004ab14d  e8eef7f5ff                CALL 0x0040a940
004ab152  6a02                      PUSH 0x2
004ab154  8d4f48                    LEA ECX,[EDI + 0x48]
004ab157  e8c400f6ff                CALL 0x0040b220
004ab15c  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
004ab162  c6407400                  MOV byte ptr [EAX + 0x74],0x0
004ab166  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004ab16c  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
004ab173  83e1fb                    AND ECX,0xfffffffb
004ab176  81c911000080              OR ECX,0x80000011
004ab17c  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004ab186  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004ab18c  c787a00b000014000000      MOV dword ptr [EDI + 0xba0],0x14
004ab196  c787a40b0000ffffffff      MOV dword ptr [EDI + 0xba4],0xffffffff
004ab1a0  33ff                      XOR EDI,EDI
004ab1a2  57                        PUSH EDI
004ab1a3  8bce                      MOV ECX,ESI
004ab1a5  e836b63600                CALL 0x008167e0
004ab1aa  47                        INC EDI
004ab1ab  83ff08                    CMP EDI,0x8
004ab1ae  7cf2                      JL 0x004ab1a2
004ab1b0  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ab1b3  8bce                      MOV ECX,ESI
004ab1b5  83484404                  OR dword ptr [EAX + 0x44],0x4
004ab1b9  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ab1bc  836044fe                  AND dword ptr [EAX + 0x44],0xfffffffe
004ab1c0  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ab1c3  81484400800000            OR dword ptr [EAX + 0x44],0x8000
004ab1ca  e8b1613400                CALL 0x007f1380
004ab1cf  8d8ec81b0000              LEA ECX,[ESI + 0x1bc8]
004ab1d5  e826284900                CALL 0x0093da00
004ab1da  f30f101d78a0ba00          MOVSS XMM3,dword ptr [0x00baa078]
004ab1e2  6a00                      PUSH 0x0
004ab1e4  68703cc300                PUSH 0xc33c70
004ab1e9  e8d2b52500                CALL 0x007067c0
004ab1ee  8bbd0cffffff              MOV EDI,dword ptr [EBP + 0xffffff0c]
004ab1f4  eb68                      JMP 0x004ab25e
004ab1f6  6a00                      PUSH 0x0
004ab1f8  6898d5b100                PUSH 0xb1d598
004ab1fd  8d4f48                    LEA ECX,[EDI + 0x48]
004ab200  c787640b000002000000      MOV dword ptr [EDI + 0xb64],0x2
004ab20a  e871f1f5ff                CALL 0x0040a380
004ab20f  6a00                      PUSH 0x0
004ab211  680cd2b100                PUSH 0xb1d20c
004ab216  8d4f48                    LEA ECX,[EDI + 0x48]
004ab219  e822f7f5ff                CALL 0x0040a940
004ab21e  6a02                      PUSH 0x2
004ab220  8d4f48                    LEA ECX,[EDI + 0x48]
004ab223  e8f8fff5ff                CALL 0x0040b220
004ab228  c6407400                  MOV byte ptr [EAX + 0x74],0x0
004ab22c  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004ab232  a17816c700                MOV EAX,[0x00c71678]
004ab237  83e1fb                    AND ECX,0xfffffffb
004ab23a  81c911000080              OR ECX,0x80000011
004ab240  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004ab24a  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
004ab251  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004ab257  c680d02e020000            MOV byte ptr [EAX + 0x22ed0],0x0
004ab25e  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004ab265  8d45c0                    LEA EAX,[EBP + -0x40]
004ab268  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004ab26c  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004ab272  c787340c000000000000      MOV dword ptr [EDI + 0xc34],0x0
004ab27c  0f2805c0c9ba00            MOVAPS XMM0,xmmword ptr [0x00bac9c0]
004ab283  50                        PUSH EAX
004ab284  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004ab288  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004ab28f  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004ab296  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004ab29d  e84ebff5ff                CALL 0x004071f0
004ab2a2  e9b52b0000                JMP 0x004ade5c
004ab2a7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ab2af  8d4f48                    LEA ECX,[EDI + 0x48]
004ab2b2  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004ab2ba  6888d9b100                PUSH 0xb1d988
004ab2bf  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ab2c7  e864fdf5ff                CALL 0x0040b030
004ab2cc  84c0                      TEST AL,AL
004ab2ce  0f84bc000000              JZ 0x004ab390
004ab2d4  e8873c2400                CALL 0x006eef60
004ab2d9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ab2df  50                        PUSH EAX
004ab2e0  6a00                      PUSH 0x0
004ab2e2  57                        PUSH EDI
004ab2e3  6840b6c700                PUSH 0xc7b640
004ab2e8  8d873c030000              LEA EAX,[EDI + 0x33c]
004ab2ee  50                        PUSH EAX
004ab2ef  68a9000000                PUSH 0xa9
004ab2f4  68e8030000                PUSH 0x3e8
004ab2f9  e822d8f7ff                CALL 0x00428b20
004ab2fe  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
004ab306  8bc8                      MOV ECX,EAX
004ab308  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
004ab310  f30f5915b0a4ba00          MULSS XMM2,dword ptr [0x00baa4b0]
004ab318  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
004ab31e  f30f590db0a4ba00          MULSS XMM1,dword ptr [0x00baa4b0]
004ab326  81896801000000000100      OR dword ptr [ECX + 0x168],0x10000
004ab330  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
004ab336  8b01                      MOV EAX,dword ptr [ECX]
004ab338  f30f1191e4000000          MOVSS dword ptr [ECX + 0xe4],XMM2
004ab340  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
004ab348  c7815c0400002c010000      MOV dword ptr [ECX + 0x45c],0x12c
004ab352  c781600400002c010000      MOV dword ptr [ECX + 0x460],0x12c
004ab35c  ff500c                    CALL dword ptr [EAX + 0xc]
004ab35f  e8fc3b2400                CALL 0x006eef60
004ab364  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ab36a  50                        PUSH EAX
004ab36b  6a01                      PUSH 0x1
004ab36d  57                        PUSH EDI
004ab36e  6840b6c700                PUSH 0xc7b640
004ab373  8d873c030000              LEA EAX,[EDI + 0x33c]
004ab379  50                        PUSH EAX
004ab37a  6884000000                PUSH 0x84
004ab37f  68e8030000                PUSH 0x3e8
004ab384  e897d7f7ff                CALL 0x00428b20
004ab389  8bc8                      MOV ECX,EAX
004ab38b  8b10                      MOV EDX,dword ptr [EAX]
004ab38d  ff520c                    CALL dword ptr [EDX + 0xc]
004ab390  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004ab396  8d4f48                    LEA ECX,[EDI + 0x48]
004ab399  68d4d2b100                PUSH 0xb1d2d4
004ab39e  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
004ab3a4  e887fcf5ff                CALL 0x0040b030
004ab3a9  84c0                      TEST AL,AL
004ab3ab  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
004ab3b1  7505                      JNZ 0x004ab3b8
004ab3b3  83f807                    CMP EAX,0x7
004ab3b6  756b                      JNZ 0x004ab423
004ab3b8  83f807                    CMP EAX,0x7
004ab3bb  750c                      JNZ 0x004ab3c9
004ab3bd  f30f101d78a0ba00          MOVSS XMM3,dword ptr [0x00baa078]
004ab3c5  6a00                      PUSH 0x0
004ab3c7  eb50                      JMP 0x004ab419
004ab3c9  51                        PUSH ECX
004ab3ca  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ab3d1  6a00                      PUSH 0x0
004ab3d3  6a02                      PUSH 0x2
004ab3d5  51                        PUSH ECX
004ab3d6  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ab3dd  8bcf                      MOV ECX,EDI
004ab3df  681d020000                PUSH 0x21d
004ab3e4  e8b7b72200                CALL 0x006d6ba0
004ab3e9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ab3ef  8d873c030000              LEA EAX,[EDI + 0x33c]
004ab3f5  6a14                      PUSH 0x14
004ab3f7  83ec08                    SUB ESP,0x8
004ab3fa  c7442404295c8f3d          MOV dword ptr [ESP + 0x4],0x3d8f5c29
004ab402  c704240ad7233d            MOV dword ptr [ESP],0x3d23d70a
004ab409  50                        PUSH EAX
004ab40a  e861832500                CALL 0x00703770
004ab40f  f30f101dbca0ba00          MOVSS XMM3,dword ptr [0x00baa0bc]
004ab417  6a01                      PUSH 0x1
004ab419  6860c6c500                PUSH 0xc5c660
004ab41e  e89db32500                CALL 0x007067c0
004ab423  68d4d2b100                PUSH 0xb1d2d4
004ab428  8d4f48                    LEA ECX,[EDI + 0x48]
004ab42b  e860fcf5ff                CALL 0x0040b090
004ab430  84c0                      TEST AL,AL
004ab432  740d                      JZ 0x004ab441
004ab434  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ab43a  6a06                      PUSH 0x6
004ab43c  e82f822500                CALL 0x00703670
004ab441  68dcd2b100                PUSH 0xb1d2dc
004ab446  8d4f48                    LEA ECX,[EDI + 0x48]
004ab449  e8e2fbf5ff                CALL 0x0040b030
004ab44e  84c0                      TEST AL,AL
004ab450  750f                      JNZ 0x004ab461
004ab452  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
004ab458  83f807                    CMP EAX,0x7
004ab45b  0f85ce0b0000              JNZ 0x004ac02f
004ab461  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ab464  8bce                      MOV ECX,ESI
004ab466  83484404                  OR dword ptr [EAX + 0x44],0x4
004ab46a  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ab46d  836044fe                  AND dword ptr [EAX + 0x44],0xfffffffe
004ab471  e80a5f3400                CALL 0x007f1380
004ab476  8d8ec81b0000              LEA ECX,[ESI + 0x1bc8]
004ab47c  e87f254900                CALL 0x0093da00
004ab481  83be6412000000            CMP dword ptr [ESI + 0x1264],0x0
004ab488  0f57c0                    XORPS XMM0,XMM0
004ab48b  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004ab493  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004ab49b  0f8695000000              JBE 0x004ab536
004ab4a1  33ff                      XOR EDI,EDI
004ab4a3  0f1f4000                  NOP dword ptr [EAX]
004ab4a7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
004ab4b0  8b865c120000              MOV EAX,dword ptr [ESI + 0x125c]
004ab4b6  8b0cb8                    MOV ECX,dword ptr [EAX + EDI*0x4]
004ab4b9  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
004ab4bf  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
004ab4c2  3dc0030000                CMP EAX,0x3c0
004ab4c7  7418                      JZ 0x004ab4e1
004ab4c9  3de8030000                CMP EAX,0x3e8
004ab4ce  7559                      JNZ 0x004ab529
004ab4d0  83792c4a                  CMP dword ptr [ECX + 0x2c],0x4a
004ab4d4  744e                      JZ 0x004ab524
004ab4d6  81792ca9000000            CMP dword ptr [ECX + 0x2c],0xa9
004ab4dd  754a                      JNZ 0x004ab529
004ab4df  eb43                      JMP 0x004ab524
004ab4e1  83792c04                  CMP dword ptr [ECX + 0x2c],0x4
004ab4e5  753d                      JNZ 0x004ab524
004ab4e7  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
004ab4ed  8bce                      MOV ECX,ESI
004ab4ef  50                        PUSH EAX
004ab4f0  e80b783600                CALL 0x00812d00
004ab4f5  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
004ab4fb  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004ab4ff  f30f5c8134030000          SUBSS XMM0,dword ptr [ECX + 0x334]
004ab507  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004ab50f  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004ab514  f30f5c8138030000          SUBSS XMM0,dword ptr [ECX + 0x338]
004ab51c  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004ab524  8b01                      MOV EAX,dword ptr [ECX]
004ab526  ff5028                    CALL dword ptr [EAX + 0x28]
004ab529  47                        INC EDI
004ab52a  3bbe64120000              CMP EDI,dword ptr [ESI + 0x1264]
004ab530  0f827affffff              JC 0x004ab4b0
004ab536  33c0                      XOR EAX,EAX
004ab538  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
004ab53e  6690                      NOP
004ab540  50                        PUSH EAX
004ab541  8bce                      MOV ECX,ESI
004ab543  e898b23600                CALL 0x008167e0
004ab548  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
004ab54e  40                        INC EAX
004ab54f  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
004ab555  83f808                    CMP EAX,0x8
004ab558  7ce6                      JL 0x004ab540
004ab55a  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ab55d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ab563  6aff                      PUSH -0x1
004ab565  68e8030000                PUSH 0x3e8
004ab56a  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
004ab56d  6a01                      PUSH 0x1
004ab56f  8d8910890100              LEA ECX,[ECX + 0x18910]
004ab575  ff30                      PUSH dword ptr [EAX]
004ab577  e8a4113800                CALL 0x0082c720
004ab57c  8bc8                      MOV ECX,EAX
004ab57e  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ab581  894810                    MOV dword ptr [EAX + 0x10],ECX
004ab584  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ab587  85c0                      TEST EAX,EAX
004ab589  7403                      JZ 0x004ab58e
004ab58b  8b4058                    MOV EAX,dword ptr [EAX + 0x58]
004ab58e  f30f7e05e0f4b100          MOVQ XMM0,qword ptr [0x00b1f4e0]
004ab596  33ff                      XOR EDI,EDI
004ab598  f30f104e20                MOVSS XMM1,dword ptr [ESI + 0x20]
004ab59d  f30f5c4e18                SUBSS XMM1,dword ptr [ESI + 0x18]
004ab5a2  660fd685b0feffff          MOVQ qword ptr [EBP + 0xfffffeb0],XMM0
004ab5aa  f30f10461c                MOVSS XMM0,dword ptr [ESI + 0x1c]
004ab5af  f30f5c4614                SUBSS XMM0,dword ptr [ESI + 0x14]
004ab5b4  8985acfeffff              MOV dword ptr [EBP + 0xfffffeac],EAX
004ab5ba  a1e8f4b100                MOV EAX,[0x00b1f4e8]
004ab5bf  0f28d1                    MOVAPS XMM2,XMM1
004ab5c2  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
004ab5ca  8985b8feffff              MOV dword ptr [EBP + 0xfffffeb8],EAX
004ab5d0  f30f58d0                  ADDSS XMM2,XMM0
004ab5d4  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004ab5dc  f30f58c2                  ADDSS XMM0,XMM2
004ab5e0  f30f119514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM2
004ab5e8  f30f58c8                  ADDSS XMM1,XMM0
004ab5ec  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004ab5f4  f30f118dc0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM1
004ab5fc  0f1f4000                  NOP dword ptr [EAX]
004ab600  8d8dacfeffff              LEA ECX,[EBP + 0xfffffeac]
004ab606  e8e5da3300                CALL 0x007e90f0
004ab60b  8b85acfeffff              MOV EAX,dword ptr [EBP + 0xfffffeac]
004ab611  0f57c0                    XORPS XMM0,XMM0
004ab614  f30f104e14                MOVSS XMM1,dword ptr [ESI + 0x14]
004ab619  f30f106618                MOVSS XMM4,dword ptr [ESI + 0x18]
004ab61e  f20f2ac0                  CVTSI2SD XMM0,EAX
004ab622  c1e81f                    SHR EAX,0x1f
004ab625  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ab62e  8bc7                      MOV EAX,EDI
004ab630  c1e81f                    SHR EAX,0x1f
004ab633  660f5ad0                  CVTPD2PS XMM2,XMM0
004ab637  0f57c0                    XORPS XMM0,XMM0
004ab63a  f30f5915f09fba00          MULSS XMM2,dword ptr [0x00ba9ff0]
004ab642  f20f2ac7                  CVTSI2SD XMM0,EDI
004ab646  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ab64f  660f5ac0                  CVTPD2PS XMM0,XMM0
004ab653  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004ab65b  f30f58d0                  ADDSS XMM2,XMM0
004ab65f  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
004ab667  f30f5995c0feffff          MULSS XMM2,dword ptr [EBP + 0xfffffec0]
004ab66f  f30f5e157ca8ba00          DIVSS XMM2,dword ptr [0x00baa87c]
004ab677  0f2fd0                    COMISS XMM2,XMM0
004ab67a  761d                      JBE 0x004ab699
004ab67c  f30f5cd0                  SUBSS XMM2,XMM0
004ab680  0f57db                    XORPS XMM3,XMM3
004ab683  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
004ab68b  f30f58cb                  ADDSS XMM1,XMM3
004ab68f  f30f5cc2                  SUBSS XMM0,XMM2
004ab693  f30f58c4                  ADDSS XMM0,XMM4
004ab697  eb65                      JMP 0x004ab6fe
004ab699  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004ab6a1  0f2fd0                    COMISS XMM2,XMM0
004ab6a4  762c                      JBE 0x004ab6d2
004ab6a6  f30f5cd0                  SUBSS XMM2,XMM0
004ab6aa  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004ab6b2  f30f5cc2                  SUBSS XMM0,XMM2
004ab6b6  f30f58c1                  ADDSS XMM0,XMM1
004ab6ba  0f28c8                    MOVAPS XMM1,XMM0
004ab6bd  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
004ab6c5  0f28c4                    MOVAPS XMM0,XMM4
004ab6c8  f30f5885ecfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffeec]
004ab6d0  eb34                      JMP 0x004ab706
004ab6d2  f30f109de0feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee0]
004ab6da  0f2fd3                    COMISS XMM2,XMM3
004ab6dd  7611                      JBE 0x004ab6f0
004ab6df  0f28c2                    MOVAPS XMM0,XMM2
004ab6e2  f30f58cb                  ADDSS XMM1,XMM3
004ab6e6  f30f5cc3                  SUBSS XMM0,XMM3
004ab6ea  f30f58c4                  ADDSS XMM0,XMM4
004ab6ee  eb0e                      JMP 0x004ab6fe
004ab6f0  0f28c4                    MOVAPS XMM0,XMM4
004ab6f3  f30f58ca                  ADDSS XMM1,XMM2
004ab6f7  0f57db                    XORPS XMM3,XMM3
004ab6fa  f30f58c3                  ADDSS XMM0,XMM3
004ab6fe  f30f118dd0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM1
004ab706  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004ab70c  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
004ab714  50                        PUSH EAX
004ab715  8bce                      MOV ECX,ESI
004ab717  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004ab71f  f30f118d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM1
004ab727  e8d4753600                CALL 0x00812d00
004ab72c  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
004ab734  8d8dacfeffff              LEA ECX,[EBP + 0xfffffeac]
004ab73a  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
004ab73e  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
004ab746  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004ab74e  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
004ab753  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004ab75b  e890d93300                CALL 0x007e90f0
004ab760  f30f108dd0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed0]
004ab768  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004ab770  f30f59c0                  MULSS XMM0,XMM0
004ab774  f30f59c9                  MULSS XMM1,XMM1
004ab778  f30f58c1                  ADDSS XMM0,XMM1
004ab77c  e8cfa2f8ff                CALL 0x00435a50
004ab781  0f28d0                    MOVAPS XMM2,XMM0
004ab784  0f57c0                    XORPS XMM0,XMM0
004ab787  0f2fd0                    COMISS XMM2,XMM0
004ab78a  7653                      JBE 0x004ab7df
004ab78c  8b85acfeffff              MOV EAX,dword ptr [EBP + 0xfffffeac]
004ab792  0f57c9                    XORPS XMM1,XMM1
004ab795  f20f2ac8                  CVTSI2SD XMM1,EAX
004ab799  c1e81f                    SHR EAX,0x1f
004ab79c  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004ab7a5  660f5ac1                  CVTPD2PS XMM0,XMM1
004ab7a9  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
004ab7b1  f30f5905f09fba00          MULSS XMM0,dword ptr [0x00ba9ff0]
004ab7b9  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
004ab7c1  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
004ab7c9  f30f5ec2                  DIVSS XMM0,XMM2
004ab7cd  f30f1095d0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed0]
004ab7d5  f30f59d0                  MULSS XMM2,XMM0
004ab7d9  f30f59c8                  MULSS XMM1,XMM0
004ab7dd  eb10                      JMP 0x004ab7ef
004ab7df  f30f1095d0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed0]
004ab7e7  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
004ab7ef  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004ab7f7  8d8dacfeffff              LEA ECX,[EBP + 0xfffffeac]
004ab7fd  f30f58c2                  ADDSS XMM0,XMM2
004ab801  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004ab809  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
004ab811  f30f58c1                  ADDSS XMM0,XMM1
004ab815  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
004ab81d  e8ced83300                CALL 0x007e90f0
004ab822  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ab828  50                        PUSH EAX
004ab829  6a00                      PUSH 0x0
004ab82b  6a00                      PUSH 0x0
004ab82d  6840b6c700                PUSH 0xc7b640
004ab832  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
004ab838  50                        PUSH EAX
004ab839  68aa000000                PUSH 0xaa
004ab83e  68e8030000                PUSH 0x3e8
004ab843  e8d8d2f7ff                CALL 0x00428b20
004ab848  8bc8                      MOV ECX,EAX
004ab84a  8b10                      MOV EDX,dword ptr [EAX]
004ab84c  ff520c                    CALL dword ptr [EDX + 0xc]
004ab84f  47                        INC EDI
004ab850  83ff1e                    CMP EDI,0x1e
004ab853  0f82a7fdffff              JC 0x004ab600
004ab859  8bbd0cffffff              MOV EDI,dword ptr [EBP + 0xffffff0c]
004ab85f  83bf140c000000            CMP dword ptr [EDI + 0xc14],0x0
004ab866  0f84ee040000              JZ 0x004abd5a
004ab86c  8b97100c0000              MOV EDX,dword ptr [EDI + 0xc10]
004ab872  8bc2                      MOV EAX,EDX
004ab874  8b8f0c0c0000              MOV ECX,dword ptr [EDI + 0xc0c]
004ab87a  83e201                    AND EDX,0x1
004ab87d  f30f108dfcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffefc]
004ab885  49                        DEC ECX
004ab886  d1e8                      SHR EAX,0x1
004ab888  0f28c1                    MOVAPS XMM0,XMM1
004ab88b  23c8                      AND ECX,EAX
004ab88d  f30f1095f8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef8]
004ab895  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ab89b  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ab89e  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004ab8a3  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004ab8a8  0f28c2                    MOVAPS XMM0,XMM2
004ab8ab  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004ab8b1  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004ab8b7  0f28c1                    MOVAPS XMM0,XMM1
004ab8ba  8b97240c0000              MOV EDX,dword ptr [EDI + 0xc24]
004ab8c0  8bca                      MOV ECX,EDX
004ab8c2  8b87200c0000              MOV EAX,dword ptr [EDI + 0xc20]
004ab8c8  83e201                    AND EDX,0x1
004ab8cb  48                        DEC EAX
004ab8cc  d1e9                      SHR ECX,0x1
004ab8ce  23c8                      AND ECX,EAX
004ab8d0  8b871c0c0000              MOV EAX,dword ptr [EDI + 0xc1c]
004ab8d6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ab8d9  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004ab8de  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004ab8e3  0f28c2                    MOVAPS XMM0,XMM2
004ab8e6  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004ab8ec  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004ab8f2  0f28c1                    MOVAPS XMM0,XMM1
004ab8f5  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004ab8fb  8d5003                    LEA EDX,[EAX + 0x3]
004ab8fe  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ab904  48                        DEC EAX
004ab905  8bca                      MOV ECX,EDX
004ab907  d1e9                      SHR ECX,0x1
004ab909  83e201                    AND EDX,0x1
004ab90c  23c8                      AND ECX,EAX
004ab90e  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ab914  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ab917  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004ab91c  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004ab921  0f28c2                    MOVAPS XMM0,XMM2
004ab924  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004ab92a  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004ab930  0f28c1                    MOVAPS XMM0,XMM1
004ab933  8b87240c0000              MOV EAX,dword ptr [EDI + 0xc24]
004ab939  8d5003                    LEA EDX,[EAX + 0x3]
004ab93c  8b87200c0000              MOV EAX,dword ptr [EDI + 0xc20]
004ab942  48                        DEC EAX
004ab943  8bca                      MOV ECX,EDX
004ab945  d1e9                      SHR ECX,0x1
004ab947  83e201                    AND EDX,0x1
004ab94a  23c8                      AND ECX,EAX
004ab94c  8b871c0c0000              MOV EAX,dword ptr [EDI + 0xc1c]
004ab952  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ab955  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004ab95a  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004ab95f  0f28c2                    MOVAPS XMM0,XMM2
004ab962  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004ab968  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004ab96e  0f28c1                    MOVAPS XMM0,XMM1
004ab971  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004ab977  8d5006                    LEA EDX,[EAX + 0x6]
004ab97a  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ab980  48                        DEC EAX
004ab981  8bca                      MOV ECX,EDX
004ab983  d1e9                      SHR ECX,0x1
004ab985  23c8                      AND ECX,EAX
004ab987  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ab98d  83e201                    AND EDX,0x1
004ab990  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ab993  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004ab998  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004ab99d  0f28c2                    MOVAPS XMM0,XMM2
004ab9a0  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004ab9a6  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004ab9ac  8b87240c0000              MOV EAX,dword ptr [EDI + 0xc24]
004ab9b2  8d5006                    LEA EDX,[EAX + 0x6]
004ab9b5  0f28c1                    MOVAPS XMM0,XMM1
004ab9b8  8b87200c0000              MOV EAX,dword ptr [EDI + 0xc20]
004ab9be  8bca                      MOV ECX,EDX
004ab9c0  48                        DEC EAX
004ab9c1  d1e9                      SHR ECX,0x1
004ab9c3  23c8                      AND ECX,EAX
004ab9c5  83e201                    AND EDX,0x1
004ab9c8  8b871c0c0000              MOV EAX,dword ptr [EDI + 0xc1c]
004ab9ce  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ab9d1  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004ab9d6  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004ab9db  0f28c2                    MOVAPS XMM0,XMM2
004ab9de  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004ab9e4  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004ab9ea  0f28c1                    MOVAPS XMM0,XMM1
004ab9ed  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004ab9f3  8d5009                    LEA EDX,[EAX + 0x9]
004ab9f6  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ab9fc  48                        DEC EAX
004ab9fd  8bca                      MOV ECX,EDX
004ab9ff  d1e9                      SHR ECX,0x1
004aba01  83e201                    AND EDX,0x1
004aba04  23c8                      AND ECX,EAX
004aba06  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004aba0c  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004aba0f  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004aba14  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004aba19  0f28c2                    MOVAPS XMM0,XMM2
004aba1c  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004aba22  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004aba28  0f28c1                    MOVAPS XMM0,XMM1
004aba2b  8b87240c0000              MOV EAX,dword ptr [EDI + 0xc24]
004aba31  8d5009                    LEA EDX,[EAX + 0x9]
004aba34  8b87200c0000              MOV EAX,dword ptr [EDI + 0xc20]
004aba3a  48                        DEC EAX
004aba3b  8bca                      MOV ECX,EDX
004aba3d  d1e9                      SHR ECX,0x1
004aba3f  83e201                    AND EDX,0x1
004aba42  23c8                      AND ECX,EAX
004aba44  8b871c0c0000              MOV EAX,dword ptr [EDI + 0xc1c]
004aba4a  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004aba4d  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004aba52  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004aba57  0f28c2                    MOVAPS XMM0,XMM2
004aba5a  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004aba60  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004aba66  0f28c1                    MOVAPS XMM0,XMM1
004aba69  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004aba6f  8d500c                    LEA EDX,[EAX + 0xc]
004aba72  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004aba78  48                        DEC EAX
004aba79  8bca                      MOV ECX,EDX
004aba7b  d1e9                      SHR ECX,0x1
004aba7d  83e201                    AND EDX,0x1
004aba80  23c8                      AND ECX,EAX
004aba82  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004aba88  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004aba8b  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004aba90  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004aba95  0f28c2                    MOVAPS XMM0,XMM2
004aba98  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004aba9e  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004abaa4  0f28c1                    MOVAPS XMM0,XMM1
004abaa7  8b87240c0000              MOV EAX,dword ptr [EDI + 0xc24]
004abaad  8d500c                    LEA EDX,[EAX + 0xc]
004abab0  8b87200c0000              MOV EAX,dword ptr [EDI + 0xc20]
004abab6  8bca                      MOV ECX,EDX
004abab8  48                        DEC EAX
004abab9  d1e9                      SHR ECX,0x1
004ababb  23c8                      AND ECX,EAX
004ababd  8b871c0c0000              MOV EAX,dword ptr [EDI + 0xc1c]
004abac3  83e201                    AND EDX,0x1
004abac6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004abac9  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004abace  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004abad3  0f28c2                    MOVAPS XMM0,XMM2
004abad6  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004abadc  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004abae2  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004abae8  8d500f                    LEA EDX,[EAX + 0xf]
004abaeb  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004abaf1  8bca                      MOV ECX,EDX
004abaf3  48                        DEC EAX
004abaf4  d1e9                      SHR ECX,0x1
004abaf6  23c8                      AND ECX,EAX
004abaf8  83e201                    AND EDX,0x1
004abafb  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004abb01  0f28c1                    MOVAPS XMM0,XMM1
004abb04  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004abb07  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004abb0c  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004abb11  0f28c2                    MOVAPS XMM0,XMM2
004abb14  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004abb1a  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004abb20  0f28c1                    MOVAPS XMM0,XMM1
004abb23  8b87240c0000              MOV EAX,dword ptr [EDI + 0xc24]
004abb29  8d500f                    LEA EDX,[EAX + 0xf]
004abb2c  8b87200c0000              MOV EAX,dword ptr [EDI + 0xc20]
004abb32  48                        DEC EAX
004abb33  8bca                      MOV ECX,EDX
004abb35  d1e9                      SHR ECX,0x1
004abb37  83e201                    AND EDX,0x1
004abb3a  23c8                      AND ECX,EAX
004abb3c  8b871c0c0000              MOV EAX,dword ptr [EDI + 0xc1c]
004abb42  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004abb45  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004abb4a  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004abb4f  0f28c2                    MOVAPS XMM0,XMM2
004abb52  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004abb58  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004abb5e  0f28c1                    MOVAPS XMM0,XMM1
004abb61  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004abb67  8d5012                    LEA EDX,[EAX + 0x12]
004abb6a  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004abb70  48                        DEC EAX
004abb71  8bca                      MOV ECX,EDX
004abb73  d1e9                      SHR ECX,0x1
004abb75  83e201                    AND EDX,0x1
004abb78  23c8                      AND ECX,EAX
004abb7a  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004abb80  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004abb83  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004abb88  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004abb8d  0f28c2                    MOVAPS XMM0,XMM2
004abb90  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004abb96  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004abb9c  0f28c1                    MOVAPS XMM0,XMM1
004abb9f  8b87240c0000              MOV EAX,dword ptr [EDI + 0xc24]
004abba5  8d5012                    LEA EDX,[EAX + 0x12]
004abba8  8b87200c0000              MOV EAX,dword ptr [EDI + 0xc20]
004abbae  48                        DEC EAX
004abbaf  8bca                      MOV ECX,EDX
004abbb1  d1e9                      SHR ECX,0x1
004abbb3  83e201                    AND EDX,0x1
004abbb6  23c8                      AND ECX,EAX
004abbb8  8b871c0c0000              MOV EAX,dword ptr [EDI + 0xc1c]
004abbbe  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004abbc1  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004abbc6  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004abbcb  0f28c2                    MOVAPS XMM0,XMM2
004abbce  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004abbd4  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004abbda  0f28c1                    MOVAPS XMM0,XMM1
004abbdd  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004abbe3  8d5015                    LEA EDX,[EAX + 0x15]
004abbe6  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004abbec  8bca                      MOV ECX,EDX
004abbee  48                        DEC EAX
004abbef  d1e9                      SHR ECX,0x1
004abbf1  23c8                      AND ECX,EAX
004abbf3  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004abbf9  83e201                    AND EDX,0x1
004abbfc  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004abbff  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004abc04  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004abc09  0f28c2                    MOVAPS XMM0,XMM2
004abc0c  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004abc12  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004abc18  8b87240c0000              MOV EAX,dword ptr [EDI + 0xc24]
004abc1e  8d5015                    LEA EDX,[EAX + 0x15]
004abc21  8bca                      MOV ECX,EDX
004abc23  8b87200c0000              MOV EAX,dword ptr [EDI + 0xc20]
004abc29  83e201                    AND EDX,0x1
004abc2c  48                        DEC EAX
004abc2d  d1e9                      SHR ECX,0x1
004abc2f  23c8                      AND ECX,EAX
004abc31  0f28c1                    MOVAPS XMM0,XMM1
004abc34  8b871c0c0000              MOV EAX,dword ptr [EDI + 0xc1c]
004abc3a  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004abc3d  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004abc42  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004abc47  0f28c2                    MOVAPS XMM0,XMM2
004abc4a  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004abc50  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004abc56  0f28c1                    MOVAPS XMM0,XMM1
004abc59  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004abc5f  8d5018                    LEA EDX,[EAX + 0x18]
004abc62  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004abc68  48                        DEC EAX
004abc69  8bca                      MOV ECX,EDX
004abc6b  d1e9                      SHR ECX,0x1
004abc6d  83e201                    AND EDX,0x1
004abc70  23c8                      AND ECX,EAX
004abc72  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004abc78  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004abc7b  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004abc80  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004abc85  0f28c2                    MOVAPS XMM0,XMM2
004abc88  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004abc8e  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004abc94  0f28c1                    MOVAPS XMM0,XMM1
004abc97  8b87240c0000              MOV EAX,dword ptr [EDI + 0xc24]
004abc9d  8d5018                    LEA EDX,[EAX + 0x18]
004abca0  8b87200c0000              MOV EAX,dword ptr [EDI + 0xc20]
004abca6  48                        DEC EAX
004abca7  8bca                      MOV ECX,EDX
004abca9  d1e9                      SHR ECX,0x1
004abcab  83e201                    AND EDX,0x1
004abcae  23c8                      AND ECX,EAX
004abcb0  8b871c0c0000              MOV EAX,dword ptr [EDI + 0xc1c]
004abcb6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004abcb9  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004abcbe  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004abcc3  0f28c2                    MOVAPS XMM0,XMM2
004abcc6  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004abccc  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004abcd2  0f28c1                    MOVAPS XMM0,XMM1
004abcd5  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004abcdb  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004abce1  8d501b                    LEA EDX,[EAX + 0x1b]
004abce4  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004abcea  48                        DEC EAX
004abceb  8bca                      MOV ECX,EDX
004abced  d1e9                      SHR ECX,0x1
004abcef  83e201                    AND EDX,0x1
004abcf2  23c8                      AND ECX,EAX
004abcf4  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004abcfa  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004abcfd  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004abd02  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004abd07  0f28c2                    MOVAPS XMM0,XMM2
004abd0a  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004abd10  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004abd16  0f28c1                    MOVAPS XMM0,XMM1
004abd19  8b87240c0000              MOV EAX,dword ptr [EDI + 0xc24]
004abd1f  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004abd25  8d501b                    LEA EDX,[EAX + 0x1b]
004abd28  8b87200c0000              MOV EAX,dword ptr [EDI + 0xc20]
004abd2e  8bca                      MOV ECX,EDX
004abd30  48                        DEC EAX
004abd31  d1e9                      SHR ECX,0x1
004abd33  23c8                      AND ECX,EAX
004abd35  8b871c0c0000              MOV EAX,dword ptr [EDI + 0xc1c]
004abd3b  83e201                    AND EDX,0x1
004abd3e  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004abd41  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
004abd46  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004abd4b  0f28c2                    MOVAPS XMM0,XMM2
004abd4e  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004abd54  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004abd5a  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004abd60  c785f4feffff00000000      MOV dword ptr [EBP + 0xfffffef4],0x0
004abd6a  89950cffffff              MOV dword ptr [EBP + 0xffffff0c],EDX
004abd70  8b82acba0100              MOV EAX,dword ptr [EDX + 0x1baac]
004abd76  2b82a8ba0100              SUB EAX,dword ptr [EDX + 0x1baa8]
004abd7c  c1f802                    SAR EAX,0x2
004abd7f  85c0                      TEST EAX,EAX
004abd81  0f84bb010000              JZ 0x004abf42
004abd87  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
004abd90  8b8aacba0100              MOV ECX,dword ptr [EDX + 0x1baac]
004abd96  8bc1                      MOV EAX,ECX
004abd98  2b82a8ba0100              SUB EAX,dword ptr [EDX + 0x1baa8]
004abd9e  c1f802                    SAR EAX,0x2
004abda1  85c0                      TEST EAX,EAX
004abda3  751b                      JNZ 0x004abdc0
004abda5  68bce6b700                PUSH 0xb7e6bc
004abdaa  6a10                      PUSH 0x10
004abdac  e80f555600                CALL 0x00a112c0
004abdb1  8b950cffffff              MOV EDX,dword ptr [EBP + 0xffffff0c]
004abdb7  83c408                    ADD ESP,0x8
004abdba  8b8aacba0100              MOV ECX,dword ptr [EDX + 0x1baac]
004abdc0  8b92a8ba0100              MOV EDX,dword ptr [EDX + 0x1baa8]
004abdc6  2bca                      SUB ECX,EDX
004abdc8  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
004abdce  c1f902                    SAR ECX,0x2
004abdd1  3bc1                      CMP EAX,ECX
004abdd3  7303                      JNC 0x004abdd8
004abdd5  8d1482                    LEA EDX,[EDX + EAX*0x4]
004abdd8  8b02                      MOV EAX,dword ptr [EDX]
004abdda  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
004abde0  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004abde8  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004abdf0  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004abdf8  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004abe00  0f28c1                    MOVAPS XMM0,XMM1
004abe03  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
004abe0b  f30f59c1                  MULSS XMM0,XMM1
004abe0f  0f28ca                    MOVAPS XMM1,XMM2
004abe12  f30f1195ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM2
004abe1a  f30f59ca                  MULSS XMM1,XMM2
004abe1e  f30f58c1                  ADDSS XMM0,XMM1
004abe22  e8299cf8ff                CALL 0x00435a50
004abe27  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
004abe2f  0f28d0                    MOVAPS XMM2,XMM0
004abe32  0f2fca                    COMISS XMM1,XMM2
004abe35  7659                      JBE 0x004abe90
004abe37  f30f109decfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffeec]
004abe3f  0f57c0                    XORPS XMM0,XMM0
004abe42  0f2fd0                    COMISS XMM2,XMM0
004abe45  7619                      JBE 0x004abe60
004abe47  f30f5eca                  DIVSS XMM1,XMM2
004abe4b  f30f1095e0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee0]
004abe53  0f28c1                    MOVAPS XMM0,XMM1
004abe56  f30f59d1                  MULSS XMM2,XMM1
004abe5a  f30f59d8                  MULSS XMM3,XMM0
004abe5e  eb08                      JMP 0x004abe68
004abe60  f30f1095e0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee0]
004abe68  f30f589f3c030000          ADDSS XMM3,dword ptr [EDI + 0x33c]
004abe70  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
004abe78  8b850cffffff              MOV EAX,dword ptr [EBP + 0xffffff0c]
004abe7e  f30f11983c030000          MOVSS dword ptr [EAX + 0x33c],XMM3
004abe86  f30f119040030000          MOVSS dword ptr [EAX + 0x340],XMM2
004abe8e  eb0e                      JMP 0x004abe9e
004abe90  8b850cffffff              MOV EAX,dword ptr [EBP + 0xffffff0c]
004abe96  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004abe9e  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004abea6  83ec0c                    SUB ESP,0xc
004abea9  f30f58803c030000          ADDSS XMM0,dword ptr [EAX + 0x33c]
004abeb1  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
004abeb7  0f57db                    XORPS XMM3,XMM3
004abeba  8bce                      MOV ECX,ESI
004abebc  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
004abec4  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004abecc  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004abed4  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
004abedc  f30f58c2                  ADDSS XMM0,XMM2
004abee0  c7042400000000            MOV dword ptr [ESP],0x0
004abee7  50                        PUSH EAX
004abee8  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
004abeee  50                        PUSH EAX
004abeef  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004abef7  e854703600                CALL 0x00812f50
004abefc  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
004abf02  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
004abf08  6a00                      PUSH 0x0
004abf0a  6a00                      PUSH 0x0
004abf0c  50                        PUSH EAX
004abf0d  e83e1a3200                CALL 0x007cd950
004abf12  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004abf18  8b8df4feffff              MOV ECX,dword ptr [EBP + 0xfffffef4]
004abf1e  41                        INC ECX
004abf1f  89950cffffff              MOV dword ptr [EBP + 0xffffff0c],EDX
004abf25  898df4feffff              MOV dword ptr [EBP + 0xfffffef4],ECX
004abf2b  8b82acba0100              MOV EAX,dword ptr [EDX + 0x1baac]
004abf31  2b82a8ba0100              SUB EAX,dword ptr [EDX + 0x1baa8]
004abf37  c1f802                    SAR EAX,0x2
004abf3a  3bc8                      CMP ECX,EAX
004abf3c  0f824efeffff              JC 0x004abd90
004abf42  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004abf48  8bce                      MOV ECX,ESI
004abf4a  50                        PUSH EAX
004abf4b  e8b06d3600                CALL 0x00812d00
004abf50  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
004abf56  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
004abf5c  6a00                      PUSH 0x0
004abf5e  57                        PUSH EDI
004abf5f  6840b6c700                PUSH 0xc7b640
004abf64  50                        PUSH EAX
004abf65  6a01                      PUSH 0x1
004abf67  68b6030000                PUSH 0x3b6
004abf6c  e8afcbf7ff                CALL 0x00428b20
004abf71  8bc8                      MOV ECX,EAX
004abf73  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
004abf79  8b01                      MOV EAX,dword ptr [ECX]
004abf7b  ff500c                    CALL dword ptr [EAX + 0xc]
004abf7e  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
004abf84  05c0030000                ADD EAX,0x3c0
004abf89  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
004abf8f  8b08                      MOV ECX,dword ptr [EAX]
004abf91  85c9                      TEST ECX,ECX
004abf93  741e                      JZ 0x004abfb3
004abf95  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004abf9b  81c1cc030000              ADD ECX,0x3cc
004abfa1  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
004abfa7  50                        PUSH EAX
004abfa8  e863320200                CALL 0x004cf210
004abfad  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
004abfb3  50                        PUSH EAX
004abfb4  8bcf                      MOV ECX,EDI
004abfb6  8938                      MOV dword ptr [EAX],EDI
004abfb8  e8331d0200                CALL 0x004cdcf0
004abfbd  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
004abfc3  8d87bc030000              LEA EAX,[EDI + 0x3bc]
004abfc9  85c9                      TEST ECX,ECX
004abfcb  741e                      JZ 0x004abfeb
004abfcd  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004abfd3  81c1cc030000              ADD ECX,0x3cc
004abfd9  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
004abfdf  50                        PUSH EAX
004abfe0  e82b320200                CALL 0x004cf210
004abfe5  8d87bc030000              LEA EAX,[EDI + 0x3bc]
004abfeb  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
004abff1  50                        PUSH EAX
004abff2  8908                      MOV dword ptr [EAX],ECX
004abff4  e8f71c0200                CALL 0x004cdcf0
004abff9  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004ac001  f30f108df8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef8]
004ac009  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004ac011  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004ac019  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
004ac01f  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
004ac027  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
004ac02f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004ac033  743c                      JZ 0x004ac071
004ac035  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004ac03c  7433                      JZ 0x004ac071
004ac03e  83f807                    CMP EAX,0x7
004ac041  744a                      JZ 0x004ac08d
004ac043  8bb6f8110000              MOV ESI,dword ptr [ESI + 0x11f8]
004ac049  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
004ac050  0f85061e0000              JNZ 0x004ade5c
004ac056  8d873c030000              LEA EAX,[EDI + 0x33c]
004ac05c  50                        PUSH EAX
004ac05d  8d4e50                    LEA ECX,[ESI + 0x50]
004ac060  e8cb904900                CALL 0x00945130
004ac065  c6868c00000001            MOV byte ptr [ESI + 0x8c],0x1
004ac06c  e9eb1d0000                JMP 0x004ade5c
004ac071  83f807                    CMP EAX,0x7
004ac074  7417                      JZ 0x004ac08d
004ac076  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ac07c  6a00                      PUSH 0x0
004ac07e  6a63                      PUSH 0x63
004ac080  8d893cb80100              LEA ECX,[ECX + 0x1b83c]
004ac086  e835313800                CALL 0x0082f1c0
004ac08b  eb3f                      JMP 0x004ac0cc
004ac08d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ac093  8b81a8ba0100              MOV EAX,dword ptr [ECX + 0x1baa8]
004ac099  3b81acba0100              CMP EAX,dword ptr [ECX + 0x1baac]
004ac09f  7414                      JZ 0x004ac0b5
004ac0a1  8b10                      MOV EDX,dword ptr [EAX]
004ac0a3  83c004                    ADD EAX,0x4
004ac0a6  c6821004000001            MOV byte ptr [EDX + 0x410],0x1
004ac0ad  3b81acba0100              CMP EAX,dword ptr [ECX + 0x1baac]
004ac0b3  75ec                      JNZ 0x004ac0a1
004ac0b5  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004ac0bb  e8f0f03300                CALL 0x007eb1b0
004ac0c0  a17816c700                MOV EAX,[0x00c71678]
004ac0c5  c680d02e020001            MOV byte ptr [EAX + 0x22ed0],0x1
004ac0cc  6a00                      PUSH 0x0
004ac0ce  6854bcb100                PUSH 0xb1bc54
004ac0d3  8d4f48                    LEA ECX,[EDI + 0x48]
004ac0d6  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004ac0e0  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004ac0ea  e891e2f5ff                CALL 0x0040a380
004ac0ef  f30f101dbca0ba00          MOVSS XMM3,dword ptr [0x00baa0bc]
004ac0f7  6a01                      PUSH 0x1
004ac0f9  68703cc300                PUSH 0xc33c70
004ac0fe  c787a00b00003c000000      MOV dword ptr [EDI + 0xba0],0x3c
004ac108  e8b3a62500                CALL 0x007067c0
004ac10d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ac113  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004ac119  8bb6f8110000              MOV ESI,dword ptr [ESI + 0x11f8]
004ac11f  6a00                      PUSH 0x0
004ac121  50                        PUSH EAX
004ac122  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
004ac128  e8732a5100                CALL 0x009beba0
004ac12d  50                        PUSH EAX
004ac12e  8bce                      MOV ECX,ESI
004ac130  e80b8c4900                CALL 0x00944d40
004ac135  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
004ac13b  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ac13e  81484400800000            OR dword ptr [EAX + 0x44],0x8000
004ac145  e9121d0000                JMP 0x004ade5c
004ac14a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ac152  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004ac15a  8b00                      MOV EAX,dword ptr [EAX]
004ac15c  51                        PUSH ECX
004ac15d  c7042400000000            MOV dword ptr [ESP],0x0
004ac164  8bcf                      MOV ECX,EDI
004ac166  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ac16e  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
004ac176  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004ac17e  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
004ac184  50                        PUSH EAX
004ac185  f30f119d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM3
004ac18d  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
004ac195  e8a62a2100                CALL 0x006bec40
004ac19a  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004ac1a2  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004ac1aa  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004ac1b0  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004ac1b8  8d8878030000              LEA ECX,[EAX + 0x378]
004ac1be  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004ac1c6  8db074030000              LEA ESI,[EAX + 0x374]
004ac1cc  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
004ac1d4  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004ac1dc  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
004ac1e2  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004ac1ea  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004ac1f2  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004ac1fa  e84113f7ff                CALL 0x0041d540
004ac1ff  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004ac207  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004ac20f  e80c13f7ff                CALL 0x0041d520
004ac214  f30f1095d8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed8]
004ac21c  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
004ac222  f30f5995ecfeffff          MULSS XMM2,dword ptr [EBP + 0xfffffeec]
004ac22a  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
004ac230  50                        PUSH EAX
004ac231  0f28c8                    MOVAPS XMM1,XMM0
004ac234  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004ac23c  f30f598de0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee0]
004ac244  f30f5985ecfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffeec]
004ac24c  f30f5cd1                  SUBSS XMM2,XMM1
004ac250  f30f108dd8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed8]
004ac258  f30f598de0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee0]
004ac260  f30f58c8                  ADDSS XMM1,XMM0
004ac264  f30f119504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM2
004ac26c  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
004ac274  e8b73d5600                CALL 0x00a10030
004ac279  f30f10ad00ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff00]
004ac281  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
004ac287  f30f10a50cffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff0c]
004ac28f  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
004ac295  f30f5caf3c030000          SUBSS XMM5,dword ptr [EDI + 0x33c]
004ac29d  f30f5ca740030000          SUBSS XMM4,dword ptr [EDI + 0x340]
004ac2a5  50                        PUSH EAX
004ac2a6  0f28cd                    MOVAPS XMM1,XMM5
004ac2a9  f30f11ad00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM5
004ac2b1  f30f598dd8feffff          MULSS XMM1,dword ptr [EBP + 0xfffffed8]
004ac2b9  0f28c4                    MOVAPS XMM0,XMM4
004ac2bc  f30f598514ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff14]
004ac2c4  f30f11a50cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM4
004ac2cc  f30f5cc8                  SUBSS XMM1,XMM0
004ac2d0  0f28c4                    MOVAPS XMM0,XMM4
004ac2d3  f30f5985d8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffed8]
004ac2db  f30f118d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM1
004ac2e3  0f28cd                    MOVAPS XMM1,XMM5
004ac2e6  f30f598d14ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff14]
004ac2ee  f30f58c8                  ADDSS XMM1,XMM0
004ac2f2  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
004ac2fa  e8313d5600                CALL 0x00a10030
004ac2ff  f30f10950cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff0c]
004ac307  f30f109d00ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff00]
004ac30f  0f28ca                    MOVAPS XMM1,XMM2
004ac312  f30f10ade0feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffee0]
004ac31a  0f28c3                    MOVAPS XMM0,XMM3
004ac31d  f30f10a5ecfeffff          MOVSS XMM4,dword ptr [EBP + 0xfffffeec]
004ac325  f30f59c4                  MULSS XMM0,XMM4
004ac329  f30f59cd                  MULSS XMM1,XMM5
004ac32d  f30f58c8                  ADDSS XMM1,XMM0
004ac331  0f57c0                    XORPS XMM0,XMM0
004ac334  0f2fc1                    COMISS XMM0,XMM1
004ac337  0f83c4000000              JNC 0x004ac401
004ac33d  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
004ac345  f30f5995c0feffff          MULSS XMM2,dword ptr [EBP + 0xfffffec0]
004ac34d  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
004ac353  f30f59c3                  MULSS XMM0,XMM3
004ac357  f30f58d0                  ADDSS XMM2,XMM0
004ac35b  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004ac35f  0f2f06                    COMISS XMM0,dword ptr [ESI]
004ac362  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004ac369  0f47f0                    CMOVA ESI,EAX
004ac36c  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004ac372  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004ac376  f30f598070030000          MULSS XMM0,dword ptr [EAX + 0x370]
004ac37e  f30f588770030000          ADDSS XMM0,dword ptr [EDI + 0x370]
004ac386  0f2fd0                    COMISS XMM2,XMM0
004ac389  7776                      JA 0x004ac401
004ac38b  f30f109d14ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff14]
004ac393  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004ac399  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004ac3a1  f30f59c4                  MULSS XMM0,XMM4
004ac3a5  6a00                      PUSH 0x0
004ac3a7  f30f59dd                  MULSS XMM3,XMM5
004ac3ab  51                        PUSH ECX
004ac3ac  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
004ac3b2  f30f58d8                  ADDSS XMM3,XMM0
004ac3b6  0f28c3                    MOVAPS XMM0,XMM3
004ac3b9  f30f599d14ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff14]
004ac3c1  f30f598510ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff10]
004ac3c9  f30f119d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM3
004ac3d1  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004ac3d9  f30f1087340c0000          MOVSS XMM0,dword ptr [EDI + 0xc34]
004ac3e1  f30f110424                MOVSS dword ptr [ESP],XMM0
004ac3e6  50                        PUSH EAX
004ac3e7  e8143d5600                CALL 0x00a10100
004ac3ec  50                        PUSH EAX
004ac3ed  8bcf                      MOV ECX,EDI
004ac3ef  e8bc50f8ff                CALL 0x004314b0
004ac3f4  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
004ac3fc  0f28e0                    MOVAPS XMM4,XMM0
004ac3ff  eb3a                      JMP 0x004ac43b
004ac401  f30f1087340c0000          MOVSS XMM0,dword ptr [EDI + 0xc34]
004ac409  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004ac40f  6a00                      PUSH 0x0
004ac411  51                        PUSH ECX
004ac412  f30f110424                MOVSS dword ptr [ESP],XMM0
004ac417  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
004ac41d  50                        PUSH EAX
004ac41e  e8dd3c5600                CALL 0x00a10100
004ac423  50                        PUSH EAX
004ac424  8bcf                      MOV ECX,EDI
004ac426  e88550f8ff                CALL 0x004314b0
004ac42b  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
004ac433  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
004ac43b  83bfec0b000000            CMP dword ptr [EDI + 0xbec],0x0
004ac442  7408                      JZ 0x004ac44c
004ac444  f30f1025d0a0ba00          MOVSS XMM4,dword ptr [0x00baa0d0]
004ac44c  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004ac454  e857881d00                CALL 0x00684cb0
004ac459  f30f108f340c0000          MOVSS XMM1,dword ptr [EDI + 0xc34]
004ac461  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
004ac467  f30f5ccc                  SUBSS XMM1,XMM4
004ac46b  f30f59c8                  MULSS XMM1,XMM0
004ac46f  f30f58cc                  ADDSS XMM1,XMM4
004ac473  f30f118f340c0000          MOVSS dword ptr [EDI + 0xc34],XMM1
004ac47b  85c0                      TEST EAX,EAX
004ac47d  0f8ed9190000              JLE 0x004ade5c
004ac483  2b85f8feffff              SUB EAX,dword ptr [EBP + 0xfffffef8]
004ac489  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004ac48f  85c0                      TEST EAX,EAX
004ac491  0f8fc5190000              JG 0x004ade5c
004ac497  e8c42a2400                CALL 0x006eef60
004ac49c  8bf0                      MOV ESI,EAX
004ac49e  83e603                    AND ESI,0x3
004ac4a1  e9ef090000                JMP 0x004ace95
004ac4a6  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ac4ae  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004ac4b6  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004ac4bc  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ac4c4  85c0                      TEST EAX,EAX
004ac4c6  7e08                      JLE 0x004ac4d0
004ac4c8  03c2                      ADD EAX,EDX
004ac4ca  898710040000              MOV dword ptr [EDI + 0x410],EAX
004ac4d0  83f85a                    CMP EAX,0x5a
004ac4d3  0f8d8a070000              JGE 0x004acc63
004ac4d9  8bcf                      MOV ECX,EDI
004ac4db  e860232100                CALL 0x006be840
004ac4e0  0f57c9                    XORPS XMM1,XMM1
004ac4e3  8d4f48                    LEA ECX,[EDI + 0x48]
004ac4e6  68dcd2b100                PUSH 0xb1d2dc
004ac4eb  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004ac4f3  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004ac4fb  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004ac503  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004ac50b  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004ac513  f30f58c1                  ADDSS XMM0,XMM1
004ac517  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004ac51f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004ac527  f30f5c0554a8ba00          SUBSS XMM0,dword ptr [0x00baa854]
004ac52f  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
004ac537  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004ac53f  0f5bc0                    CVTDQ2PS XMM0,XMM0
004ac542  f30f5e057ca8ba00          DIVSS XMM0,dword ptr [0x00baa87c]
004ac54a  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004ac552  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
004ac55a  e8d1eaf5ff                CALL 0x0040b030
004ac55f  f30f102520a1ba00          MOVSS XMM4,dword ptr [0x00baa120]
004ac567  84c0                      TEST AL,AL
004ac569  0f843b020000              JZ 0x004ac7aa
004ac56f  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
004ac575  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
004ac57b  e8502c1d00                CALL 0x0067f1d0
004ac580  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
004ac588  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
004ac58e  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004ac596  b95a000000                MOV ECX,0x5a
004ac59b  2b8f10040000              SUB ECX,dword ptr [EDI + 0x410]
004ac5a1  6a00                      PUSH 0x0
004ac5a3  57                        PUSH EDI
004ac5a4  50                        PUSH EAX
004ac5a5  33c0                      XOR EAX,EAX
004ac5a7  c785e4feffff00000000      MOV dword ptr [EBP + 0xfffffee4],0x0
004ac5b1  85c9                      TEST ECX,ECX
004ac5b3  c785e8feffff0000f0c1      MOV dword ptr [EBP + 0xfffffee8],0xc1f00000
004ac5bd  0f4fc1                    CMOVG EAX,ECX
004ac5c0  83c00f                    ADD EAX,0xf
004ac5c3  50                        PUSH EAX
004ac5c4  e897d7feff                CALL 0x00499d60
004ac5c9  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ac5d1  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
004ac5d7  51                        PUSH ECX
004ac5d8  f30f110424                MOVSS dword ptr [ESP],XMM0
004ac5dd  50                        PUSH EAX
004ac5de  6a01                      PUSH 0x1
004ac5e0  e82b2d4c00                CALL 0x0096f310
004ac5e5  83c41c                    ADD ESP,0x1c
004ac5e8  8bf0                      MOV ESI,EAX
004ac5ea  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
004ac5f1  750a                      JNZ 0x004ac5fd
004ac5f3  f30f100530aeba00          MOVSS XMM0,dword ptr [0x00baae30]
004ac5fb  eb08                      JMP 0x004ac605
004ac5fd  f30f1005c4abba00          MOVSS XMM0,dword ptr [0x00baabc4]
004ac605  f30f10a5f4feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffef4]
004ac60d  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
004ac613  f30f10adfcfeffff          MOVSS XMM5,dword ptr [EBP + 0xfffffefc]
004ac61b  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
004ac621  f30f10bd14ffffff          MOVSS XMM7,dword ptr [EBP + 0xffffff14]
004ac629  0f28cc                    MOVAPS XMM1,XMM4
004ac62c  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
004ac634  0f28c5                    MOVAPS XMM0,XMM5
004ac637  f30f5c8d08ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff08]
004ac63f  f30f5c8504ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff04]
004ac647  c785e8feffff0000c842      MOV dword ptr [EBP + 0xfffffee8],0x42c80000
004ac651  f30f59cf                  MULSS XMM1,XMM7
004ac655  f30f598510ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff10]
004ac65d  f30f58c8                  ADDSS XMM1,XMM0
004ac661  0f2f0dd0a9ba00            COMISS XMM1,dword ptr [0x00baa9d0]
004ac668  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
004ac670  0f46c1                    CMOVBE EAX,ECX
004ac673  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004ac677  0f28c1                    MOVAPS XMM0,XMM1
004ac67a  f30f59cf                  MULSS XMM1,XMM7
004ac67e  f30f598510ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff10]
004ac686  f30f588d08ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff08]
004ac68e  f30f588504ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff04]
004ac696  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
004ac69e  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004ac6a6  c6861805000001            MOV byte ptr [ESI + 0x518],0x1
004ac6ad  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004ac6b4  7e42                      JLE 0x004ac6f8
004ac6b6  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004ac6be  f30f5ce8                  SUBSS XMM5,XMM0
004ac6c2  f30f592d20a1ba00          MULSS XMM5,dword ptr [0x00baa120]
004ac6ca  f30f58e8                  ADDSS XMM5,XMM0
004ac6ce  f30f11af34030000          MOVSS dword ptr [EDI + 0x334],XMM5
004ac6d6  f30f5ca738030000          SUBSS XMM4,dword ptr [EDI + 0x338]
004ac6de  f30f592520a1ba00          MULSS XMM4,dword ptr [0x00baa120]
004ac6e6  f30f58a738030000          ADDSS XMM4,dword ptr [EDI + 0x338]
004ac6ee  f30f11a738030000          MOVSS dword ptr [EDI + 0x338],XMM4
004ac6f6  eb3d                      JMP 0x004ac735
004ac6f8  51                        PUSH ECX
004ac6f9  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ac700  6a00                      PUSH 0x0
004ac702  6a02                      PUSH 0x2
004ac704  51                        PUSH ECX
004ac705  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ac70c  8bcf                      MOV ECX,EDI
004ac70e  6824020000                PUSH 0x224
004ac713  e888a42200                CALL 0x006d6ba0
004ac718  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ac71e  6a0a                      PUSH 0xa
004ac720  e84b6f2500                CALL 0x00703670
004ac725  f30f10af34030000          MOVSS XMM5,dword ptr [EDI + 0x334]
004ac72d  f30f10a738030000          MOVSS XMM4,dword ptr [EDI + 0x338]
004ac735  f30f11ae34030000          MOVSS dword ptr [ESI + 0x334],XMM5
004ac73d  8bce                      MOV ECX,ESI
004ac73f  f30f11a638030000          MOVSS dword ptr [ESI + 0x338],XMM4
004ac747  0f1005704bc300            MOVUPS XMM0,xmmword ptr [0x00c34b70]
004ac74e  8b06                      MOV EAX,dword ptr [ESI]
004ac750  0f118628040000            MOVUPS xmmword ptr [ESI + 0x428],XMM0
004ac757  ff500c                    CALL dword ptr [EAX + 0xc]
004ac75a  56                        PUSH ESI
004ac75b  8bcf                      MOV ECX,EDI
004ac75d  e87ecb1f00                CALL 0x006a92e0
004ac762  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004ac768  83f903                    CMP ECX,0x3
004ac76b  7507                      JNZ 0x004ac774
004ac76d  b844ecb100                MOV EAX,0xb1ec44
004ac772  eb10                      JMP 0x004ac784
004ac774  83f901                    CMP ECX,0x1
004ac777  b858ecb100                MOV EAX,0xb1ec58
004ac77c  ba1cecb100                MOV EDX,0xb1ec1c
004ac781  0f45c2                    CMOVNZ EAX,EDX
004ac784  6a00                      PUSH 0x0
004ac786  50                        PUSH EAX
004ac787  8d4f48                    LEA ECX,[EDI + 0x48]
004ac78a  e8f1dbf5ff                CALL 0x0040a380
004ac78f  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004ac796  f30f102520a1ba00          MOVSS XMM4,dword ptr [0x00baa120]
004ac79e  750a                      JNZ 0x004ac7aa
004ac7a0  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
004ac7aa  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004ac7b0  85c0                      TEST EAX,EAX
004ac7b2  0f84a4160000              JZ 0x004ade5c
004ac7b8  83782807                  CMP dword ptr [EAX + 0x28],0x7
004ac7bc  0f859a160000              JNZ 0x004ade5c
004ac7c2  f30f109fb80b0000          MOVSS XMM3,dword ptr [EDI + 0xbb8]
004ac7ca  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004ac7d2  0f2fcb                    COMISS XMM1,XMM3
004ac7d5  7620                      JBE 0x004ac7f7
004ac7d7  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004ac7df  f30f59058ca0ba00          MULSS XMM0,dword ptr [0x00baa08c]
004ac7e7  f30f58d8                  ADDSS XMM3,XMM0
004ac7eb  f30f5dd9                  MINSS XMM3,XMM1
004ac7ef  f30f119fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM3
004ac7f7  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
004ac7ff  f30f5c8f38030000          SUBSS XMM1,dword ptr [EDI + 0x338]
004ac807  f30f1095fcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffefc]
004ac80f  f30f5c9734030000          SUBSS XMM2,dword ptr [EDI + 0x334]
004ac817  f30f59cc                  MULSS XMM1,XMM4
004ac81b  f30f59d4                  MULSS XMM2,XMM4
004ac81f  f30f59cb                  MULSS XMM1,XMM3
004ac823  f30f59d3                  MULSS XMM2,XMM3
004ac827  0f28c1                    MOVAPS XMM0,XMM1
004ac82a  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
004ac832  f30f59c1                  MULSS XMM0,XMM1
004ac836  0f28ca                    MOVAPS XMM1,XMM2
004ac839  f30f11950cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM2
004ac841  f30f59ca                  MULSS XMM1,XMM2
004ac845  f30f58c1                  ADDSS XMM0,XMM1
004ac849  e80292f8ff                CALL 0x00435a50
004ac84e  f30f10155ca7ba00          MOVSS XMM2,dword ptr [0x00baa75c]
004ac856  0f28e0                    MOVAPS XMM4,XMM0
004ac859  0f2fe2                    COMISS XMM4,XMM2
004ac85c  f30f108d0cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff0c]
004ac864  7637                      JBE 0x004ac89d
004ac866  0f57f6                    XORPS XMM6,XMM6
004ac869  0f2fe6                    COMISS XMM4,XMM6
004ac86c  761f                      JBE 0x004ac88d
004ac86e  f30f5ed4                  DIVSS XMM2,XMM4
004ac872  0f28c2                    MOVAPS XMM0,XMM2
004ac875  f30f59c8                  MULSS XMM1,XMM0
004ac879  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
004ac881  f30f59c2                  MULSS XMM0,XMM2
004ac885  0f28e9                    MOVAPS XMM5,XMM1
004ac888  0f28d8                    MOVAPS XMM3,XMM0
004ac88b  eb45                      JMP 0x004ac8d2
004ac88d  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
004ac895  0f28e9                    MOVAPS XMM5,XMM1
004ac898  0f28d8                    MOVAPS XMM3,XMM0
004ac89b  eb35                      JMP 0x004ac8d2
004ac89d  f30f101530a6ba00          MOVSS XMM2,dword ptr [0x00baa630]
004ac8a5  0f28e9                    MOVAPS XMM5,XMM1
004ac8a8  0f2fd4                    COMISS XMM2,XMM4
004ac8ab  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
004ac8b3  0f28d8                    MOVAPS XMM3,XMM0
004ac8b6  761a                      JBE 0x004ac8d2
004ac8b8  0f57f6                    XORPS XMM6,XMM6
004ac8bb  0f2fe6                    COMISS XMM4,XMM6
004ac8be  7612                      JBE 0x004ac8d2
004ac8c0  0f28da                    MOVAPS XMM3,XMM2
004ac8c3  f30f5edc                  DIVSS XMM3,XMM4
004ac8c7  0f28eb                    MOVAPS XMM5,XMM3
004ac8ca  f30f59d8                  MULSS XMM3,XMM0
004ac8ce  f30f59e9                  MULSS XMM5,XMM1
004ac8d2  f30f108dd0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed0]
004ac8da  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004ac8e2  0f28d1                    MOVAPS XMM2,XMM1
004ac8e5  f30f59d5                  MULSS XMM2,XMM5
004ac8e9  f30f59cb                  MULSS XMM1,XMM3
004ac8ed  f30f59d0                  MULSS XMM2,XMM0
004ac8f1  f30f59c8                  MULSS XMM1,XMM0
004ac8f5  f30f589734030000          ADDSS XMM2,dword ptr [EDI + 0x334]
004ac8fd  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004ac905  f30f588f38030000          ADDSS XMM1,dword ptr [EDI + 0x338]
004ac90d  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
004ac915  f30f11950cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM2
004ac91d  f30f5cd0                  SUBSS XMM2,XMM0
004ac921  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
004ac929  0f28d9                    MOVAPS XMM3,XMM1
004ac92c  f30f118dd0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM1
004ac934  f30f5cd8                  SUBSS XMM3,XMM0
004ac938  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004ac940  0f28ca                    MOVAPS XMM1,XMM2
004ac943  f30f1195c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM2
004ac94b  0f28c3                    MOVAPS XMM0,XMM3
004ac94e  f30f119de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM3
004ac956  e805d4feff                CALL 0x00499d60
004ac95b  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ac963  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004ac96b  f30f5c8d00ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff00]
004ac973  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004ac97b  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004ac983  f30f5c85f8feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffef8]
004ac98b  e8d0d3feff                CALL 0x00499d60
004ac990  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ac998  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
004ac9a0  f30f5cc8                  SUBSS XMM1,XMM0
004ac9a4  0f28c1                    MOVAPS XMM0,XMM1
004ac9a7  e8945d1d00                CALL 0x00682740
004ac9ac  0f28d0                    MOVAPS XMM2,XMM0
004ac9af  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
004ac9b7  0f28ca                    MOVAPS XMM1,XMM2
004ac9ba  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004ac9c1  0f2fc8                    COMISS XMM1,XMM0
004ac9c4  0f867a000000              JBE 0x004aca44
004ac9ca  f30f5cc2                  SUBSS XMM0,XMM2
004ac9ce  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004ac9d6  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004ac9de  e85d0bf7ff                CALL 0x0041d540
004ac9e3  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
004ac9eb  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004ac9f3  e8280bf7ff                CALL 0x0041d520
004ac9f8  f30f109d0cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff0c]
004aca00  0f28c8                    MOVAPS XMM1,XMM0
004aca03  f30f598dc0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffec0]
004aca0b  0f28d3                    MOVAPS XMM2,XMM3
004aca0e  f30f5995e8feffff          MULSS XMM2,dword ptr [EBP + 0xfffffee8]
004aca16  f30f599dc0feffff          MULSS XMM3,dword ptr [EBP + 0xfffffec0]
004aca1e  f30f5985e8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee8]
004aca26  f30f58d1                  ADDSS XMM2,XMM1
004aca2a  f30f10a5f8feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffef8]
004aca32  f30f5cd8                  SUBSS XMM3,XMM0
004aca36  f30f58d4                  ADDSS XMM2,XMM4
004aca3a  f30f589d00ffffff          ADDSS XMM3,dword ptr [EBP + 0xffffff00]
004aca42  eb18                      JMP 0x004aca5c
004aca44  f30f1095d0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed0]
004aca4c  f30f109d0cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff0c]
004aca54  f30f10a5f8feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffef8]
004aca5c  f30f119f34030000          MOVSS dword ptr [EDI + 0x334],XMM3
004aca64  0f28cc                    MOVAPS XMM1,XMM4
004aca67  f30f109d00ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff00]
004aca6f  f30f5cca                  SUBSS XMM1,XMM2
004aca73  f30f119738030000          MOVSS dword ptr [EDI + 0x338],XMM2
004aca7b  0f28c3                    MOVAPS XMM0,XMM3
004aca7e  f30f10af34030000          MOVSS XMM5,dword ptr [EDI + 0x334]
004aca86  f30f5cc5                  SUBSS XMM0,XMM5
004aca8a  f30f59c9                  MULSS XMM1,XMM1
004aca8e  f30f59c0                  MULSS XMM0,XMM0
004aca92  f30f58c8                  ADDSS XMM1,XMM0
004aca96  f30f100508acba00          MOVSS XMM0,dword ptr [0x00baac08]
004aca9e  0f2fc1                    COMISS XMM0,XMM1
004acaa1  765e                      JBE 0x004acb01
004acaa3  f30f5ceb                  SUBSS XMM5,XMM3
004acaa7  f30f5cd4                  SUBSS XMM2,XMM4
004acaab  51                        PUSH ECX
004acaac  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004acab2  c7042400007042            MOV dword ptr [ESP],0x42700000
004acab9  50                        PUSH EAX
004acaba  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
004acac0  f30f11ad10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM5
004acac8  f30f119514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM2
004acad0  e82b365600                CALL 0x00a10100
004acad5  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
004acadd  f30f108df8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef8]
004acae5  f30f5800                  ADDSS XMM0,dword ptr [EAX]
004acae9  f30f584804                ADDSS XMM1,dword ptr [EAX + 0x4]
004acaee  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004acaf6  0f28e8                    MOVAPS XMM5,XMM0
004acaf9  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
004acb01  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004acb07  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004acb0f  f30f11a834030000          MOVSS dword ptr [EAX + 0x334],XMM5
004acb17  f30f118038030000          MOVSS dword ptr [EAX + 0x338],XMM0
004acb1f  83bf100400000f            CMP dword ptr [EDI + 0x410],0xf
004acb26  0f8e30130000              JLE 0x004ade5c
004acb2c  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004acb34  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
004acb3a  f30f5c8504ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff04]
004acb42  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004acb4a  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004acb52  f30f5c8508ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff08]
004acb5a  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004acb62  e8f9261d00                CALL 0x0067f260
004acb67  8bf0                      MOV ESI,EAX
004acb69  89b514ffffff              MOV dword ptr [EBP + 0xffffff14],ESI
004acb6f  3bb7c00b0000              CMP ESI,dword ptr [EDI + 0xbc0]
004acb75  0f84e1120000              JZ 0x004ade5c
004acb7b  e8e0232400                CALL 0x006eef60
004acb80  a803                      TEST AL,0x3
004acb82  743d                      JZ 0x004acbc1
004acb84  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004acb8c  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
004acb94  f30f5c8734030000          SUBSS XMM0,dword ptr [EDI + 0x334]
004acb9c  f30f5c8f38030000          SUBSS XMM1,dword ptr [EDI + 0x338]
004acba4  f30f59c0                  MULSS XMM0,XMM0
004acba8  f30f59c9                  MULSS XMM1,XMM1
004acbac  f30f58c8                  ADDSS XMM1,XMM0
004acbb0  f30f1005f0abba00          MOVSS XMM0,dword ptr [0x00baabf0]
004acbb8  0f2fc1                    COMISS XMM0,XMM1
004acbbb  0f869b120000              JBE 0x004ade5c
004acbc1  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
004acbc7  8b01                      MOV EAX,dword ptr [ECX]
004acbc9  ff5028                    CALL dword ptr [EAX + 0x28]
004acbcc  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
004acbd2  8d4f48                    LEA ECX,[EDI + 0x48]
004acbd5  89b7c00b0000              MOV dword ptr [EDI + 0xbc0],ESI
004acbdb  6a00                      PUSH 0x0
004acbdd  83f803                    CMP EAX,0x3
004acbe0  750c                      JNZ 0x004acbee
004acbe2  6830ecb100                PUSH 0xb1ec30
004acbe7  e894d7f5ff                CALL 0x0040a380
004acbec  eb2b                      JMP 0x004acc19
004acbee  83f801                    CMP EAX,0x1
004acbf1  750c                      JNZ 0x004acbff
004acbf3  6890ecb100                PUSH 0xb1ec90
004acbf8  e883d7f5ff                CALL 0x0040a380
004acbfd  eb1a                      JMP 0x004acc19
004acbff  68a4ecb100                PUSH 0xb1eca4
004acc04  e877d7f5ff                CALL 0x0040a380
004acc09  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004acc10  0f94c0                    SETZ AL
004acc13  888748010000              MOV byte ptr [EDI + 0x148],AL
004acc19  8d4f78                    LEA ECX,[EDI + 0x78]
004acc1c  e80f42f9ff                CALL 0x00440e30
004acc21  83e802                    SUB EAX,0x2
004acc24  8d4f48                    LEA ECX,[EDI + 0x48]
004acc27  50                        PUSH EAX
004acc28  e8f3daf5ff                CALL 0x0040a720
004acc2d  51                        PUSH ECX
004acc2e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004acc35  6a00                      PUSH 0x0
004acc37  6a02                      PUSH 0x2
004acc39  51                        PUSH ECX
004acc3a  c704240000003f            MOV dword ptr [ESP],0x3f000000
004acc41  8bcf                      MOV ECX,EDI
004acc43  6a51                      PUSH 0x51
004acc45  c787c40b000004000000      MOV dword ptr [EDI + 0xbc4],0x4
004acc4f  e84c9f2200                CALL 0x006d6ba0
004acc54  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
004acc5e  e9f9110000                JMP 0x004ade5c
004acc63  8d4f78                    LEA ECX,[EDI + 0x78]
004acc66  e845a7f5ff                CALL 0x004073b0
004acc6b  84c0                      TEST AL,AL
004acc6d  7428                      JZ 0x004acc97
004acc6f  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004acc75  83f803                    CMP EAX,0x3
004acc78  740e                      JZ 0x004acc88
004acc7a  83f801                    CMP EAX,0x1
004acc7d  7409                      JZ 0x004acc88
004acc7f  6a00                      PUSH 0x0
004acc81  687cecb100                PUSH 0xb1ec7c
004acc86  eb07                      JMP 0x004acc8f
004acc88  6a00                      PUSH 0x0
004acc8a  6868ecb100                PUSH 0xb1ec68
004acc8f  8d4f48                    LEA ECX,[EDI + 0x48]
004acc92  e8e9d6f5ff                CALL 0x0040a380
004acc97  68eca4b100                PUSH 0xb1a4ec
004acc9c  8d4f48                    LEA ECX,[EDI + 0x48]
004acc9f  e8acd8f5ff                CALL 0x0040a550
004acca4  84c0                      TEST AL,AL
004acca6  0f84b0110000              JZ 0x004ade5c
004accac  6a00                      PUSH 0x0
004accae  6854bcb100                PUSH 0xb1bc54
004accb3  8d4f48                    LEA ECX,[EDI + 0x48]
004accb6  e8c5d6f5ff                CALL 0x0040a380
004accbb  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
004accc2  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004acccc  e98b110000                JMP 0x004ade5c
004accd1  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004accd9  8d7748                    LEA ESI,[EDI + 0x48]
004accdc  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004acce4  8bce                      MOV ECX,ESI
004acce6  68dcd2b100                PUSH 0xb1d2dc
004acceb  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004accf3  e838e3f5ff                CALL 0x0040b030
004accf8  84c0                      TEST AL,AL
004accfa  0f8446010000              JZ 0x004ace46
004acd00  51                        PUSH ECX
004acd01  c704240000803f            MOV dword ptr [ESP],0x3f800000
004acd08  6a00                      PUSH 0x0
004acd0a  6a02                      PUSH 0x2
004acd0c  51                        PUSH ECX
004acd0d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004acd14  8bcf                      MOV ECX,EDI
004acd16  6826020000                PUSH 0x226
004acd1b  e8809e2200                CALL 0x006d6ba0
004acd20  6a00                      PUSH 0x0
004acd22  8bce                      MOV ECX,ESI
004acd24  e8f7e4f5ff                CALL 0x0040b220
004acd29  c740600000803f            MOV dword ptr [EAX + 0x60],0x3f800000
004acd30  e82b222400                CALL 0x006eef60
004acd35  83e001                    AND EAX,0x1
004acd38  8d7003                    LEA ESI,[EAX + 0x3]
004acd3b  85f6                      TEST ESI,ESI
004acd3d  0f84fa000000              JZ 0x004ace3d
004acd43  e818222400                CALL 0x006eef60
004acd48  660f6ec0                  MOVD XMM0,EAX
004acd4c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004acd50  c1e81f                    SHR EAX,0x1f
004acd53  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004acd5c  660f5ac0                  CVTPD2PS XMM0,XMM0
004acd60  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004acd68  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004acd70  f30f58c0                  ADDSS XMM0,XMM0
004acd74  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004acd7c  e8bf07f7ff                CALL 0x0041d540
004acd81  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
004acd89  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004acd91  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004acd99  e88207f7ff                CALL 0x0041d520
004acd9e  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
004acda6  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
004acdac  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
004acdb4  e87721f9ff                CALL 0x0043ef30
004acdb9  c78570ffffff00000000      MOV dword ptr [EBP + 0xffffff70],0x0
004acdc3  c78574ffffff00400000      MOV dword ptr [EBP + 0xffffff74],0x4000
004acdcd  c7852cffffff0000c03f      MOV dword ptr [EBP + 0xffffff2c],0x3fc00000
004acdd7  e884212400                CALL 0x006eef60
004acddc  8bcf                      MOV ECX,EDI
004acdde  c78524ffffffa69bc4bd      MOV dword ptr [EBP + 0xffffff24],0xbdc49ba6
004acde8  660f6ec0                  MOVD XMM0,EAX
004acdec  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004acdf0  c1e81f                    SHR EAX,0x1f
004acdf3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004acdfc  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004ace02  50                        PUSH EAX
004ace03  6a00                      PUSH 0x0
004ace05  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
004ace0b  660f5ac0                  CVTPD2PS XMM0,XMM0
004ace0f  50                        PUSH EAX
004ace10  8d873c030000              LEA EAX,[EDI + 0x33c]
004ace16  50                        PUSH EAX
004ace17  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ace1f  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
004ace27  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
004ace2f  e8ace42100                CALL 0x006cb2e0
004ace34  83ee01                    SUB ESI,0x1
004ace37  0f8506ffffff              JNZ 0x004acd43
004ace3d  ff8710040000              INC dword ptr [EDI + 0x410]
004ace43  8d7748                    LEA ESI,[EDI + 0x48]
004ace46  6888d9b100                PUSH 0xb1d988
004ace4b  8bce                      MOV ECX,ESI
004ace4d  e8dee1f5ff                CALL 0x0040b030
004ace52  84c0                      TEST AL,AL
004ace54  7412                      JZ 0x004ace68
004ace56  83bf1004000003            CMP dword ptr [EDI + 0x410],0x3
004ace5d  7d5b                      JGE 0x004aceba
004ace5f  6a06                      PUSH 0x6
004ace61  8bce                      MOV ECX,ESI
004ace63  e8b8d8f5ff                CALL 0x0040a720
004ace68  83ceff                    OR ESI,0xffffffff
004ace6b  68eca4b100                PUSH 0xb1a4ec
004ace70  8d4f48                    LEA ECX,[EDI + 0x48]
004ace73  e8d8d6f5ff                CALL 0x0040a550
004ace78  84c0                      TEST AL,AL
004ace7a  7419                      JZ 0x004ace95
004ace7c  6a00                      PUSH 0x0
004ace7e  6854bcb100                PUSH 0xb1bc54
004ace83  8d4f48                    LEA ECX,[EDI + 0x48]
004ace86  e8f5d4f5ff                CALL 0x0040a380
004ace8b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004ace95  85f6                      TEST ESI,ESI
004ace97  0f88bf0f0000              JS 0x004ade5c
004ace9d  8bcf                      MOV ECX,EDI
004ace9f  e89c192100                CALL 0x006be840
004acea4  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004aceaa  83fe04                    CMP ESI,0x4
004acead  0f87e1010000              JA 0x004ad094
004aceb3  ff24b5bce44a00            JMP dword ptr [ESI*0x4 + 0x4ae4bc]
004aceba  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004acec2  0f2f8500ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff00]
004acec9  769d                      JBE 0x004ace68
004acecb  e890202400                CALL 0x006eef60
004aced0  a801                      TEST AL,0x1
004aced2  beffffffff                MOV ESI,0xffffffff
004aced7  0f44b5fcfeffff            CMOVZ ESI,dword ptr [EBP + 0xfffffefc]
004acede  eb8b                      JMP 0x004ace6b
004acee0  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
004acee8  8d4f48                    LEA ECX,[EDI + 0x48]
004aceeb  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004acef3  f30f5c9f3c030000          SUBSS XMM3,dword ptr [EDI + 0x33c]
004acefb  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004acf03  6a00                      PUSH 0x0
004acf05  0f28cb                    MOVAPS XMM1,XMM3
004acf08  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004acf0f  0f28c2                    MOVAPS XMM0,XMM2
004acf12  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004acf19  0f2fc8                    COMISS XMM1,XMM0
004acf1c  0f57c0                    XORPS XMM0,XMM0
004acf1f  7623                      JBE 0x004acf44
004acf21  33f6                      XOR ESI,ESI
004acf23  0f2fc3                    COMISS XMM0,XMM3
004acf26  68a4ecb100                PUSH 0xb1eca4
004acf2b  0f46b5fcfeffff            CMOVBE ESI,dword ptr [EBP + 0xfffffefc]
004acf32  e849d4f5ff                CALL 0x0040a380
004acf37  85f6                      TEST ESI,ESI
004acf39  0f94c0                    SETZ AL
004acf3c  888748010000              MOV byte ptr [EDI + 0x148],AL
004acf42  eb20                      JMP 0x004acf64
004acf44  0f2fc2                    COMISS XMM0,XMM2
004acf47  760c                      JBE 0x004acf55
004acf49  be01000000                MOV ESI,0x1
004acf4e  6890ecb100                PUSH 0xb1ec90
004acf53  eb0a                      JMP 0x004acf5f
004acf55  be03000000                MOV ESI,0x3
004acf5a  6830ecb100                PUSH 0xb1ec30
004acf5f  e81cd4f5ff                CALL 0x0040a380
004acf64  51                        PUSH ECX
004acf65  c704240000803f            MOV dword ptr [ESP],0x3f800000
004acf6c  6a00                      PUSH 0x0
004acf6e  6a02                      PUSH 0x2
004acf70  51                        PUSH ECX
004acf71  c704240000803f            MOV dword ptr [ESP],0x3f800000
004acf78  8bcf                      MOV ECX,EDI
004acf7a  6823020000                PUSH 0x223
004acf7f  89b7c00b0000              MOV dword ptr [EDI + 0xbc0],ESI
004acf85  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
004acf8f  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004acf99  e8029c2200                CALL 0x006d6ba0
004acf9e  6a00                      PUSH 0x0
004acfa0  8d4f48                    LEA ECX,[EDI + 0x48]
004acfa3  e878e2f5ff                CALL 0x0040b220
004acfa8  c7406000000040            MOV dword ptr [EAX + 0x60],0x40000000
004acfaf  c787a00b000014000000      MOV dword ptr [EDI + 0xba0],0x14
004acfb9  e9d6000000                JMP 0x004ad094
004acfbe  6a00                      PUSH 0x0
004acfc0  6810edb100                PUSH 0xb1ed10
004acfc5  8d4f48                    LEA ECX,[EDI + 0x48]
004acfc8  e8b3d3f5ff                CALL 0x0040a380
004acfcd  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
004acfd7  c787a00b000028000000      MOV dword ptr [EDI + 0xba0],0x28
004acfe1  e9ae000000                JMP 0x004ad094
004acfe6  6a00                      PUSH 0x0
004acfe8  68ececb100                PUSH 0xb1ecec
004acfed  8d4f48                    LEA ECX,[EDI + 0x48]
004acff0  e88bd3f5ff                CALL 0x0040a380
004acff5  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
004acfff  c787a00b000005000000      MOV dword ptr [EDI + 0xba0],0x5
004ad009  e986000000                JMP 0x004ad094
004ad00e  6a00                      PUSH 0x0
004ad010  68f8ecb100                PUSH 0xb1ecf8
004ad015  8d4f48                    LEA ECX,[EDI + 0x48]
004ad018  e863d3f5ff                CALL 0x0040a380
004ad01d  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
004ad027  c787a00b00003c000000      MOV dword ptr [EDI + 0xba0],0x3c
004ad031  eb61                      JMP 0x004ad094
004ad033  6a00                      PUSH 0x0
004ad035  682cedb100                PUSH 0xb1ed2c
004ad03a  8d4f48                    LEA ECX,[EDI + 0x48]
004ad03d  e83ed3f5ff                CALL 0x0040a380
004ad042  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
004ad048  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004ad050  c787640b00000c000000      MOV dword ptr [EDI + 0xb64],0xc
004ad05a  c787a00b000096000000      MOV dword ptr [EDI + 0xba0],0x96
004ad064  0f2f803c030000            COMISS XMM0,dword ptr [EAX + 0x33c]
004ad06b  51                        PUSH ECX
004ad06c  c7042400000040            MOV dword ptr [ESP],0x40000000
004ad073  6a00                      PUSH 0x0
004ad075  6a02                      PUSH 0x2
004ad077  51                        PUSH ECX
004ad078  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ad07f  8bcf                      MOV ECX,EDI
004ad081  681f020000                PUSH 0x21f
004ad086  0f97c0                    SETA AL
004ad089  888748010000              MOV byte ptr [EDI + 0x148],AL
004ad08f  e80c9b2200                CALL 0x006d6ba0
004ad094  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004ad09a  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
004ad0a0  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004ad0a6  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
004ad0ac  e8af1e2400                CALL 0x006eef60
004ad0b1  33d2                      XOR EDX,EDX
004ad0b3  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004ad0bd  b91e000000                MOV ECX,0x1e
004ad0c2  f7f1                      DIV ECX
004ad0c4  0197a00b0000              ADD dword ptr [EDI + 0xba0],EDX
004ad0ca  e98d0d0000                JMP 0x004ade5c
004ad0cf  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ad0d7  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004ad0df  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ad0e7  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
004ad0ef  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004ad0f7  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004ad0ff  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004ad107  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004ad10f  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004ad117  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004ad11d  85c0                      TEST EAX,EAX
004ad11f  0f8ebf020000              JLE 0x004ad3e4
004ad125  33c9                      XOR ECX,ECX
004ad127  898dfcfeffff              MOV dword ptr [EBP + 0xfffffefc],ECX
004ad12d  85d2                      TEST EDX,EDX
004ad12f  0f8eaf020000              JLE 0x004ad3e4
004ad135  be05000000                MOV ESI,0x5
004ad13a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004ad140  48                        DEC EAX
004ad141  99                        CDQ
004ad142  f7fe                      IDIV ESI
004ad144  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
004ad14a  85d2                      TEST EDX,EDX
004ad14c  0f851d020000              JNZ 0x004ad36f
004ad152  83f805                    CMP EAX,0x5
004ad155  0f8d14020000              JGE 0x004ad36f
004ad15b  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004ad163  660f6ec0                  MOVD XMM0,EAX
004ad167  0f5bc0                    CVTDQ2PS XMM0,XMM0
004ad16a  51                        PUSH ECX
004ad16b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ad172  52                        PUSH EDX
004ad173  6a02                      PUSH 0x2
004ad175  51                        PUSH ECX
004ad176  f30f59c2                  MULSS XMM0,XMM2
004ad17a  8bcf                      MOV ECX,EDI
004ad17c  c704240000003f            MOV dword ptr [ESP],0x3f000000
004ad183  680b010000                PUSH 0x10b
004ad188  f30f5cc8                  SUBSS XMM1,XMM0
004ad18c  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
004ad194  e8079a2200                CALL 0x006d6ba0
004ad199  51                        PUSH ECX
004ad19a  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ad1a1  6a00                      PUSH 0x0
004ad1a3  6a02                      PUSH 0x2
004ad1a5  51                        PUSH ECX
004ad1a6  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ad1ad  8bcf                      MOV ECX,EDI
004ad1af  68b2000000                PUSH 0xb2
004ad1b4  e8e7992200                CALL 0x006d6ba0
004ad1b9  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
004ad1bf  e86c1df9ff                CALL 0x0043ef30
004ad1c4  33f6                      XOR ESI,ESI
004ad1c6  c78524ffffff39b4c8bd      MOV dword ptr [EBP + 0xffffff24],0xbdc8b439
004ad1d0  c78520ffffff000000bf      MOV dword ptr [EBP + 0xffffff20],0xbf000000
004ad1da  89b50cffffff              MOV dword ptr [EBP + 0xffffff0c],ESI
004ad1e0  8bd6                      MOV EDX,ESI
004ad1e2  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
004ad1e8  e8e31f1d00                CALL 0x0067f1d0
004ad1ed  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004ad1f5  f30f108d08ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff08]
004ad1fd  f30f598514ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff14]
004ad205  f30f598d14ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff14]
004ad20d  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004ad215  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004ad21d  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
004ad225  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
004ad22d  83fe03                    CMP ESI,0x3
004ad230  7530                      JNZ 0x004ad262
004ad232  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
004ad23a  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
004ad242  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004ad24a  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004ad252  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
004ad25a  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
004ad262  8b85ecfeffff              MOV EAX,dword ptr [EBP + 0xfffffeec]
004ad268  33f6                      XOR ESI,ESI
004ad26a  85c0                      TEST EAX,EAX
004ad26c  0f8ed4000000              JLE 0x004ad346
004ad272  48                        DEC EAX
004ad273  660f6ec8                  MOVD XMM1,EAX
004ad277  0f5bc9                    CVTDQ2PS XMM1,XMM1
004ad27a  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
004ad282  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
004ad28a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004ad290  660f6ec6                  MOVD XMM0,ESI
004ad294  0f5bc0                    CVTDQ2PS XMM0,XMM0
004ad297  f30f5cc1                  SUBSS XMM0,XMM1
004ad29b  f30f59059ca8ba00          MULSS XMM0,dword ptr [0x00baa89c]
004ad2a3  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004ad2ab  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004ad2b3  e88802f7ff                CALL 0x0041d540
004ad2b8  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
004ad2c0  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
004ad2c8  e85302f7ff                CALL 0x0041d520
004ad2cd  f30f109dc0feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffec0]
004ad2d5  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004ad2db  0f28d3                    MOVAPS XMM2,XMM3
004ad2de  0f28c8                    MOVAPS XMM1,XMM0
004ad2e1  f30f5995d8feffff          MULSS XMM2,dword ptr [EBP + 0xfffffed8]
004ad2e9  8bcf                      MOV ECX,EDI
004ad2eb  50                        PUSH EAX
004ad2ec  f30f598de0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee0]
004ad2f4  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004ad2fa  6a00                      PUSH 0x0
004ad2fc  f30f599de0feffff          MULSS XMM3,dword ptr [EBP + 0xfffffee0]
004ad304  50                        PUSH EAX
004ad305  f30f5985d8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffed8]
004ad30d  f30f5cd1                  SUBSS XMM2,XMM1
004ad311  8d873c030000              LEA EAX,[EDI + 0x33c]
004ad317  50                        PUSH EAX
004ad318  f30f58d8                  ADDSS XMM3,XMM0
004ad31c  f30f1195ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM2
004ad324  f30f119dd0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM3
004ad32c  e8afdf2100                CALL 0x006cb2e0
004ad331  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
004ad339  46                        INC ESI
004ad33a  3bb5ecfeffff              CMP ESI,dword ptr [EBP + 0xfffffeec]
004ad340  0f8c4affffff              JL 0x004ad290
004ad346  8bb50cffffff              MOV ESI,dword ptr [EBP + 0xffffff0c]
004ad34c  46                        INC ESI
004ad34d  89b50cffffff              MOV dword ptr [EBP + 0xffffff0c],ESI
004ad353  83fe04                    CMP ESI,0x4
004ad356  0f8284feffff              JC 0x004ad1e0
004ad35c  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
004ad364  be05000000                MOV ESI,0x5
004ad369  8b8dfcfeffff              MOV ECX,dword ptr [EBP + 0xfffffefc]
004ad36f  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004ad375  40                        INC EAX
004ad376  898710040000              MOV dword ptr [EDI + 0x410],EAX
004ad37c  83f81a                    CMP EAX,0x1a
004ad37f  7d15                      JGE 0x004ad396
004ad381  41                        INC ECX
004ad382  898dfcfeffff              MOV dword ptr [EBP + 0xfffffefc],ECX
004ad388  3b8df8feffff              CMP ECX,dword ptr [EBP + 0xfffffef8]
004ad38e  0f8cacfdffff              JL 0x004ad140
004ad394  eb4e                      JMP 0x004ad3e4
004ad396  f30f100520a2ba00          MOVSS XMM0,dword ptr [0x00baa220]
004ad39e  0f2f8500ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff00]
004ad3a5  7624                      JBE 0x004ad3cb
004ad3a7  e8b41b2400                CALL 0x006eef60
004ad3ac  a801                      TEST AL,0x1
004ad3ae  751b                      JNZ 0x004ad3cb
004ad3b0  6a00                      PUSH 0x0
004ad3b2  6814deb100                PUSH 0xb1de14
004ad3b7  8d4f48                    LEA ECX,[EDI + 0x48]
004ad3ba  e8c1cff5ff                CALL 0x0040a380
004ad3bf  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004ad3c9  eb0f                      JMP 0x004ad3da
004ad3cb  6a00                      PUSH 0x0
004ad3cd  68d4ecb100                PUSH 0xb1ecd4
004ad3d2  8d4f48                    LEA ECX,[EDI + 0x48]
004ad3d5  e8a6cff5ff                CALL 0x0040a380
004ad3da  c78710040000ffffffff      MOV dword ptr [EDI + 0x410],0xffffffff
004ad3e4  68dcd2b100                PUSH 0xb1d2dc
004ad3e9  8d4f48                    LEA ECX,[EDI + 0x48]
004ad3ec  e83fdcf5ff                CALL 0x0040b030
004ad3f1  84c0                      TEST AL,AL
004ad3f3  740a                      JZ 0x004ad3ff
004ad3f5  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
004ad3ff  68eca4b100                PUSH 0xb1a4ec
004ad404  8d4f48                    LEA ECX,[EDI + 0x48]
004ad407  e844d1f5ff                CALL 0x0040a550
004ad40c  84c0                      TEST AL,AL
004ad40e  0f84480a0000              JZ 0x004ade5c
004ad414  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004ad41b  8d4f48                    LEA ECX,[EDI + 0x48]
004ad41e  6a00                      PUSH 0x0
004ad420  7e0f                      JLE 0x004ad431
004ad422  68e0ecb100                PUSH 0xb1ece0
004ad427  e854cff5ff                CALL 0x0040a380
004ad42c  e92b0a0000                JMP 0x004ade5c
004ad431  6854bcb100                PUSH 0xb1bc54
004ad436  e845cff5ff                CALL 0x0040a380
004ad43b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004ad445  e9120a0000                JMP 0x004ade5c
004ad44a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ad452  8d4f48                    LEA ECX,[EDI + 0x48]
004ad455  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004ad45d  68dcd2b100                PUSH 0xb1d2dc
004ad462  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ad46a  e8c1dbf5ff                CALL 0x0040b030
004ad46f  84c0                      TEST AL,AL
004ad471  0f8401010000              JZ 0x004ad578
004ad477  51                        PUSH ECX
004ad478  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ad47f  6a00                      PUSH 0x0
004ad481  6a02                      PUSH 0x2
004ad483  51                        PUSH ECX
004ad484  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ad48b  8bcf                      MOV ECX,EDI
004ad48d  6825020000                PUSH 0x225
004ad492  e809972200                CALL 0x006d6ba0
004ad497  6a00                      PUSH 0x0
004ad499  8d4f48                    LEA ECX,[EDI + 0x48]
004ad49c  e87fddf5ff                CALL 0x0040b220
004ad4a1  8bcf                      MOV ECX,EDI
004ad4a3  c740600000803f            MOV dword ptr [EAX + 0x60],0x3f800000
004ad4aa  e891132100                CALL 0x006be840
004ad4af  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
004ad4b5  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004ad4bd  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004ad4c5  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004ad4cb  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004ad4d3  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004ad4db  50                        PUSH EAX
004ad4dc  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004ad4e4  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
004ad4ec  e83f2b5600                CALL 0x00a10030
004ad4f1  e86a1a2400                CALL 0x006eef60
004ad4f6  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
004ad4fc  e82f1af9ff                CALL 0x0043ef30
004ad501  f6871004000001            TEST byte ptr [EDI + 0x410],0x1
004ad508  c78524ffffff0ad7a3bd      MOV dword ptr [EBP + 0xffffff24],0xbda3d70a
004ad512  c7852cffffff00000040      MOV dword ptr [EBP + 0xffffff2c],0x40000000
004ad51c  c78530ffffffdb0fc93e      MOV dword ptr [EBP + 0xffffff30],0x3ec90fdb
004ad526  740a                      JZ 0x004ad532
004ad528  c78530ffffff00000000      MOV dword ptr [EBP + 0xffffff30],0x0
004ad532  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004ad538  c78570ffffff00000000      MOV dword ptr [EBP + 0xffffff70],0x0
004ad542  50                        PUSH EAX
004ad543  6a09                      PUSH 0x9
004ad545  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
004ad54b  c78574ffffff00800000      MOV dword ptr [EBP + 0xffffff74],0x8000
004ad555  50                        PUSH EAX
004ad556  8d873c030000              LEA EAX,[EDI + 0x33c]
004ad55c  c78504ffffff0000e040      MOV dword ptr [EBP + 0xffffff04],0x40e00000
004ad566  50                        PUSH EAX
004ad567  8bcf                      MOV ECX,EDI
004ad569  c78508ffffff00000041      MOV dword ptr [EBP + 0xffffff08],0x41000000
004ad573  e868dd2100                CALL 0x006cb2e0
004ad578  68eca4b100                PUSH 0xb1a4ec
004ad57d  8d4f48                    LEA ECX,[EDI + 0x48]
004ad580  e8cbcff5ff                CALL 0x0040a550
004ad585  84c0                      TEST AL,AL
004ad587  0f84cf080000              JZ 0x004ade5c
004ad58d  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004ad595  b904000000                MOV ECX,0x4
004ad59a  0f2f8500ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff00]
004ad5a1  b803000000                MOV EAX,0x3
004ad5a6  0f47c1                    CMOVA EAX,ECX
004ad5a9  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
004ad5af  83f9ff                    CMP ECX,-0x1
004ad5b2  751e                      JNZ 0x004ad5d2
004ad5b4  6a00                      PUSH 0x0
004ad5b6  6854bcb100                PUSH 0xb1bc54
004ad5bb  8d4f48                    LEA ECX,[EDI + 0x48]
004ad5be  e8bdcdf5ff                CALL 0x0040a380
004ad5c3  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004ad5cd  e98a080000                JMP 0x004ade5c
004ad5d2  3bc8                      CMP ECX,EAX
004ad5d4  8d4f48                    LEA ECX,[EDI + 0x48]
004ad5d7  7d17                      JGE 0x004ad5f0
004ad5d9  6a01                      PUSH 0x1
004ad5db  68b8ecb100                PUSH 0xb1ecb8
004ad5e0  e89bcdf5ff                CALL 0x0040a380
004ad5e5  ff8710040000              INC dword ptr [EDI + 0x410]
004ad5eb  e96c080000                JMP 0x004ade5c
004ad5f0  6a00                      PUSH 0x0
004ad5f2  68c8ecb100                PUSH 0xb1ecc8
004ad5f7  e884cdf5ff                CALL 0x0040a380
004ad5fc  c78710040000ffffffff      MOV dword ptr [EDI + 0x410],0xffffffff
004ad606  e951080000                JMP 0x004ade5c
004ad60b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ad613  8d7748                    LEA ESI,[EDI + 0x48]
004ad616  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004ad61e  8bce                      MOV ECX,ESI
004ad620  68dcd2b100                PUSH 0xb1d2dc
004ad625  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ad62d  e8fed9f5ff                CALL 0x0040b030
004ad632  84c0                      TEST AL,AL
004ad634  0f840f010000              JZ 0x004ad749
004ad63a  51                        PUSH ECX
004ad63b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ad642  6a00                      PUSH 0x0
004ad644  6a02                      PUSH 0x2
004ad646  51                        PUSH ECX
004ad647  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ad64e  8bcf                      MOV ECX,EDI
004ad650  6820020000                PUSH 0x220
004ad655  e846952200                CALL 0x006d6ba0
004ad65a  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
004ad660  681f020000                PUSH 0x21f
004ad665  8d8924a30200              LEA ECX,[ECX + 0x2a324]
004ad66b  e8c00b4800                CALL 0x0092e230
004ad670  8bcf                      MOV ECX,EDI
004ad672  e8c9112100                CALL 0x006be840
004ad677  8db73c030000              LEA ESI,[EDI + 0x33c]
004ad67d  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
004ad683  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004ad68b  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004ad693  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
004ad699  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
004ad69d  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
004ad6a2  50                        PUSH EAX
004ad6a3  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004ad6ab  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
004ad6b3  e878295600                CALL 0x00a10030
004ad6b8  0f57c0                    XORPS XMM0,XMM0
004ad6bb  0f2f8504ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff04]
004ad6c2  0f97c0                    SETA AL
004ad6c5  888748010000              MOV byte ptr [EDI + 0x148],AL
004ad6cb  e890182400                CALL 0x006eef60
004ad6d0  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004ad6d8  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
004ad6e0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ad6e6  50                        PUSH EAX
004ad6e7  6a00                      PUSH 0x0
004ad6e9  57                        PUSH EDI
004ad6ea  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004ad6f2  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
004ad6f8  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
004ad700  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
004ad708  50                        PUSH EAX
004ad709  56                        PUSH ESI
004ad70a  68ab000000                PUSH 0xab
004ad70f  68e8030000                PUSH 0x3e8
004ad714  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004ad71c  e8ffb3f7ff                CALL 0x00428b20
004ad721  8bf0                      MOV ESI,EAX
004ad723  8bce                      MOV ECX,ESI
004ad725  8b16                      MOV EDX,dword ptr [ESI]
004ad727  ff520c                    CALL dword ptr [EDX + 0xc]
004ad72a  56                        PUSH ESI
004ad72b  8bcf                      MOV ECX,EDI
004ad72d  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
004ad737  c78650030000000038c2      MOV dword ptr [ESI + 0x350],0xc2380000
004ad741  e8da342200                CALL 0x006d0c20
004ad746  8d7748                    LEA ESI,[EDI + 0x48]
004ad749  68d4d2b100                PUSH 0xb1d2d4
004ad74e  8bce                      MOV ECX,ESI
004ad750  e83bd9f5ff                CALL 0x0040b090
004ad755  84c0                      TEST AL,AL
004ad757  0f8402010000              JZ 0x004ad85f
004ad75d  6888d9b100                PUSH 0xb1d988
004ad762  8bce                      MOV ECX,ESI
004ad764  e827d9f5ff                CALL 0x0040b090
004ad769  84c0                      TEST AL,AL
004ad76b  0f85ee000000              JNZ 0x004ad85f
004ad771  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
004ad779  0f57d2                    XORPS XMM2,XMM2
004ad77c  8bcf                      MOV ECX,EDI
004ad77e  e8ddef1f00                CALL 0x006ac760
004ad783  85c0                      TEST EAX,EAX
004ad785  0f84d4000000              JZ 0x004ad85f
004ad78b  e8d0172400                CALL 0x006eef60
004ad790  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ad796  50                        PUSH EAX
004ad797  6a01                      PUSH 0x1
004ad799  57                        PUSH EDI
004ad79a  6840b6c700                PUSH 0xc7b640
004ad79f  8d873c030000              LEA EAX,[EDI + 0x33c]
004ad7a5  50                        PUSH EAX
004ad7a6  68ab000000                PUSH 0xab
004ad7ab  68e8030000                PUSH 0x3e8
004ad7b0  e86bb3f7ff                CALL 0x00428b20
004ad7b5  8bf0                      MOV ESI,EAX
004ad7b7  8bce                      MOV ECX,ESI
004ad7b9  8b16                      MOV EDX,dword ptr [ESI]
004ad7bb  ff520c                    CALL dword ptr [EDX + 0xc]
004ad7be  e89d172400                CALL 0x006eef60
004ad7c3  660f6ec0                  MOVD XMM0,EAX
004ad7c7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ad7cb  c1e81f                    SHR EAX,0x1f
004ad7ce  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ad7d7  660f5ac8                  CVTPD2PS XMM1,XMM0
004ad7db  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004ad7e3  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
004ad7eb  f30f580d98a1ba00          ADDSS XMM1,dword ptr [0x00baa198]
004ad7f3  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
004ad7fb  e860172400                CALL 0x006eef60
004ad800  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
004ad80a  c78650030000000038c2      MOV dword ptr [ESI + 0x350],0xc2380000
004ad814  660f6ec0                  MOVD XMM0,EAX
004ad818  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ad81c  c1e81f                    SHR EAX,0x1f
004ad81f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ad828  660f5ac0                  CVTPD2PS XMM0,XMM0
004ad82c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ad834  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004ad83c  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004ad844  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
004ad84c  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004ad854  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
004ad85c  8d7748                    LEA ESI,[EDI + 0x48]
004ad85f  68eca4b100                PUSH 0xb1a4ec
004ad864  8bce                      MOV ECX,ESI
004ad866  e8e5ccf5ff                CALL 0x0040a550
004ad86b  84c0                      TEST AL,AL
004ad86d  0f84e9050000              JZ 0x004ade5c
004ad873  6a00                      PUSH 0x0
004ad875  6854bcb100                PUSH 0xb1bc54
004ad87a  8bce                      MOV ECX,ESI
004ad87c  e8ffcaf5ff                CALL 0x0040a380
004ad881  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004ad88b  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
004ad892  e9c5050000                JMP 0x004ade5c
004ad897  83bf100400000e            CMP dword ptr [EDI + 0x410],0xe
004ad89e  0f873a020000              JA 0x004adade
004ad8a4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ad8aa  6a04                      PUSH 0x4
004ad8ac  e8bf5d2500                CALL 0x00703670
004ad8b1  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004ad8b9  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004ad8bf  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
004ad8c7  51                        PUSH ECX
004ad8c8  c7042400000000            MOV dword ptr [ESP],0x0
004ad8cf  8bcf                      MOV ECX,EDI
004ad8d1  50                        PUSH EAX
004ad8d2  f30f5887b80b0000          ADDSS XMM0,dword ptr [EDI + 0xbb8]
004ad8da  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
004ad8e2  e859132100                CALL 0x006bec40
004ad8e7  8d8658120000              LEA EAX,[ESI + 0x1258]
004ad8ed  50                        PUSH EAX
004ad8ee  8d8dacfeffff              LEA ECX,[EBP + 0xfffffeac]
004ad8f4  e8179cf6ff                CALL 0x00417510
004ad8f9  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004ad900  33c0                      XOR EAX,EAX
004ad902  8b8db8feffff              MOV ECX,dword ptr [EBP + 0xfffffeb8]
004ad908  8985d8feffff              MOV dword ptr [EBP + 0xfffffed8],EAX
004ad90e  85c9                      TEST ECX,ECX
004ad910  0f84b6010000              JZ 0x004adacc
004ad916  8b95b0feffff              MOV EDX,dword ptr [EBP + 0xfffffeb0]
004ad91c  0f1f4000                  NOP dword ptr [EAX]
004ad920  8b3482                    MOV ESI,dword ptr [EDX + EAX*0x4]
004ad923  85f6                      TEST ESI,ESI
004ad925  0f8492010000              JZ 0x004adabd
004ad92b  837e2809                  CMP dword ptr [ESI + 0x28],0x9
004ad92f  0f8588010000              JNZ 0x004adabd
004ad935  817e34b6030000            CMP dword ptr [ESI + 0x34],0x3b6
004ad93c  0f857b010000              JNZ 0x004adabd
004ad942  837e3000                  CMP dword ptr [ESI + 0x30],0x0
004ad946  0f8571010000              JNZ 0x004adabd
004ad94c  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004ad954  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
004ad95c  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004ad964  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
004ad96c  f30f59c0                  MULSS XMM0,XMM0
004ad970  f30f59c9                  MULSS XMM1,XMM1
004ad974  f30f58c8                  ADDSS XMM1,XMM0
004ad978  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004ad980  f30f59c0                  MULSS XMM0,XMM0
004ad984  0f2fc1                    COMISS XMM0,XMM1
004ad987  0f8230010000              JC 0x004adabd
004ad98d  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004ad994  8d4dc0                    LEA ECX,[EBP + -0x40]
004ad997  8b06                      MOV EAX,dword ptr [ESI]
004ad999  6a01                      PUSH 0x1
004ad99b  6a01                      PUSH 0x1
004ad99d  68ff000000                PUSH 0xff
004ad9a2  6a0c                      PUSH 0xc
004ad9a4  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004ad9a8  51                        PUSH ECX
004ad9a9  0f280500afba00            MOVAPS XMM0,xmmword ptr [0x00baaf00]
004ad9b0  8bce                      MOV ECX,ESI
004ad9b2  c7463001000000            MOV dword ptr [ESI + 0x30],0x1
004ad9b9  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004ad9bd  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004ad9c4  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004ad9cb  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004ad9d2  ff503c                    CALL dword ptr [EAX + 0x3c]
004ad9d5  f30f2c86a4030000          CVTTSS2SI EAX,dword ptr [ESI + 0x3a4]
004ad9dd  8b8e38040000              MOV ECX,dword ptr [ESI + 0x438]
004ad9e3  8b963c040000              MOV EDX,dword ptr [ESI + 0x43c]
004ad9e9  899654040000              MOV dword ptr [ESI + 0x454],EDX
004ad9ef  83ca03                    OR EDX,0x3
004ad9f2  c7865804000000000040      MOV dword ptr [ESI + 0x458],0x40000000
004ad9fc  c786100400000000dcc1      MOV dword ptr [ESI + 0x410],0xc1dc0000
004ada06  c786180400007b14aebd      MOV dword ptr [ESI + 0x418],0xbdae147b
004ada10  c78614040000000080bf      MOV dword ptr [ESI + 0x414],0xbf800000
004ada1a  c78628040000000000c0      MOV dword ptr [ESI + 0x428],0xc0000000
004ada24  83c014                    ADD EAX,0x14
004ada27  89963c040000              MOV dword ptr [ESI + 0x43c],EDX
004ada2d  89865c040000              MOV dword ptr [ESI + 0x45c],EAX
004ada33  8bc1                      MOV EAX,ECX
004ada35  81c900000808              OR ECX,0x8080000
004ada3b  25fffffff7                AND EAX,0xf7ffffff
004ada40  898e38040000              MOV dword ptr [ESI + 0x438],ECX
004ada46  8bcf                      MOV ECX,EDI
004ada48  898650040000              MOV dword ptr [ESI + 0x450],EAX
004ada4e  e8ed0d2100                CALL 0x006be840
004ada53  8b96c4030000              MOV EDX,dword ptr [ESI + 0x3c4]
004ada59  8bc8                      MOV ECX,EAX
004ada5b  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
004ada61  8d86c4030000              LEA EAX,[ESI + 0x3c4]
004ada67  85d2                      TEST EDX,EDX
004ada69  7424                      JZ 0x004ada8f
004ada6b  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004ada71  8d8acc030000              LEA ECX,[EDX + 0x3cc]
004ada77  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
004ada7d  50                        PUSH EAX
004ada7e  e88d170200                CALL 0x004cf210
004ada83  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
004ada89  8d86c4030000              LEA EAX,[ESI + 0x3c4]
004ada8f  8908                      MOV dword ptr [EAX],ECX
004ada91  85c9                      TEST ECX,ECX
004ada93  7406                      JZ 0x004ada9b
004ada95  50                        PUSH EAX
004ada96  e855020200                CALL 0x004cdcf0
004ada9b  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
004adaa1  8b8db8feffff              MOV ECX,dword ptr [EBP + 0xfffffeb8]
004adaa7  8b95b0feffff              MOV EDX,dword ptr [EBP + 0xfffffeb0]
004adaad  c7862c0400009a99593f      MOV dword ptr [ESI + 0x42c],0x3f59999a
004adab7  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
004adabd  40                        INC EAX
004adabe  8985d8feffff              MOV dword ptr [EBP + 0xfffffed8],EAX
004adac4  3bc1                      CMP EAX,ECX
004adac6  0f8254feffff              JC 0x004ad920
004adacc  8d8dacfeffff              LEA ECX,[EBP + 0xfffffeac]
004adad2  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004adad9  e8d29af6ff                CALL 0x004175b0
004adade  68dcd2b100                PUSH 0xb1d2dc
004adae3  8d4f48                    LEA ECX,[EDI + 0x48]
004adae6  e845d5f5ff                CALL 0x0040b030
004adaeb  84c0                      TEST AL,AL
004adaed  7464                      JZ 0x004adb53
004adaef  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004adaf5  8d873c030000              LEA EAX,[EDI + 0x33c]
004adafb  6a14                      PUSH 0x14
004adafd  83ec08                    SUB ESP,0x8
004adb00  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004adb0a  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
004adb14  c7442404295c8f3d          MOV dword ptr [ESP + 0x4],0x3d8f5c29
004adb1c  c704240ad7a33c            MOV dword ptr [ESP],0x3ca3d70a
004adb23  50                        PUSH EAX
004adb24  e8475c2500                CALL 0x00703770
004adb29  51                        PUSH ECX
004adb2a  c704240000803f            MOV dword ptr [ESP],0x3f800000
004adb31  6a00                      PUSH 0x0
004adb33  6a02                      PUSH 0x2
004adb35  51                        PUSH ECX
004adb36  c704240000803f            MOV dword ptr [ESP],0x3f800000
004adb3d  8bcf                      MOV ECX,EDI
004adb3f  6828020000                PUSH 0x228
004adb44  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004adb4e  e84d902200                CALL 0x006d6ba0
004adb53  68eca4b100                PUSH 0xb1a4ec
004adb58  8d4f48                    LEA ECX,[EDI + 0x48]
004adb5b  e8f0c9f5ff                CALL 0x0040a550
004adb60  84c0                      TEST AL,AL
004adb62  0f84f4020000              JZ 0x004ade5c
004adb68  e947faffff                JMP 0x004ad5b4
004adb6d  8b8ef8110000              MOV ECX,dword ptr [ESI + 0x11f8]
004adb73  8d873c030000              LEA EAX,[EDI + 0x33c]
004adb79  50                        PUSH EAX
004adb7a  e891714900                CALL 0x00944d10
004adb7f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004adb87  8d4f48                    LEA ECX,[EDI + 0x48]
004adb8a  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004adb92  68d4d2b100                PUSH 0xb1d2d4
004adb97  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004adba1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004adba9  e882d4f5ff                CALL 0x0040b030
004adbae  84c0                      TEST AL,AL
004adbb0  0f84e5010000              JZ 0x004add9b
004adbb6  33c9                      XOR ECX,ECX
004adbb8  898dd8feffff              MOV dword ptr [EBP + 0xfffffed8],ECX
004adbbe  398e64120000              CMP dword ptr [ESI + 0x1264],ECX
004adbc4  0f86b9000000              JBE 0x004adc83
004adbca  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004adbd0  8b865c120000              MOV EAX,dword ptr [ESI + 0x125c]
004adbd6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004adbd9  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004adbdf  817834b6030000            CMP dword ptr [EAX + 0x34],0x3b6
004adbe6  0f8584000000              JNZ 0x004adc70
004adbec  8b5028                    MOV EDX,dword ptr [EAX + 0x28]
004adbef  83fa09                    CMP EDX,0x9
004adbf2  7516                      JNZ 0x004adc0a
004adbf4  c7803804000000000000      MOV dword ptr [EAX + 0x438],0x0
004adbfe  c7803c04000000000000      MOV dword ptr [EAX + 0x43c],0x0
004adc08  eb5f                      JMP 0x004adc69
004adc0a  83fa07                    CMP EDX,0x7
004adc0d  750c                      JNZ 0x004adc1b
004adc0f  c7805804000001000000      MOV dword ptr [EAX + 0x458],0x1
004adc19  eb55                      JMP 0x004adc70
004adc1b  81fae8030000              CMP EDX,0x3e8
004adc21  754d                      JNZ 0x004adc70
004adc23  83782c7e                  CMP dword ptr [EAX + 0x2c],0x7e
004adc27  750c                      JNZ 0x004adc35
004adc29  c7805004000001000000      MOV dword ptr [EAX + 0x450],0x1
004adc33  eb34                      JMP 0x004adc69
004adc35  81782cab000000            CMP dword ptr [EAX + 0x2c],0xab
004adc3c  7532                      JNZ 0x004adc70
004adc3e  83783000                  CMP dword ptr [EAX + 0x30],0x0
004adc42  752c                      JNZ 0x004adc70
004adc44  6a00                      PUSH 0x0
004adc46  6808edb100                PUSH 0xb1ed08
004adc4b  8d4848                    LEA ECX,[EAX + 0x48]
004adc4e  c7805004000002000000      MOV dword ptr [EAX + 0x450],0x2
004adc58  e823c7f5ff                CALL 0x0040a380
004adc5d  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
004adc63  8b8dd8feffff              MOV ECX,dword ptr [EBP + 0xfffffed8]
004adc69  c6807301000001            MOV byte ptr [EAX + 0x173],0x1
004adc70  41                        INC ECX
004adc71  898dd8feffff              MOV dword ptr [EBP + 0xfffffed8],ECX
004adc77  3b8e64120000              CMP ECX,dword ptr [ESI + 0x1264]
004adc7d  0f824dffffff              JC 0x004adbd0
004adc83  33c9                      XOR ECX,ECX
004adc85  8d87040c0000              LEA EAX,[EDI + 0xc04]
004adc8b  898d0cffffff              MOV dword ptr [EBP + 0xffffff0c],ECX
004adc91  398f140c0000              CMP dword ptr [EDI + 0xc14],ECX
004adc97  0f86cf000000              JBE 0x004add6c
004adc9d  0f1f00                    NOP dword ptr [EAX]
004adca0  8b700c                    MOV ESI,dword ptr [EAX + 0xc]
004adca3  8b4008                    MOV EAX,dword ptr [EAX + 0x8]
004adca6  48                        DEC EAX
004adca7  8d1431                    LEA EDX,[ECX + ESI*0x1]
004adcaa  8bca                      MOV ECX,EDX
004adcac  83e201                    AND EDX,0x1
004adcaf  d1e9                      SHR ECX,0x1
004adcb1  23c8                      AND ECX,EAX
004adcb3  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004adcb9  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
004adcbc  8b04d1                    MOV EAX,dword ptr [ECX + EDX*0x8]
004adcbf  8b4cd104                  MOV ECX,dword ptr [ECX + EDX*0x8 + 0x4]
004adcc3  8b950cffffff              MOV EDX,dword ptr [EBP + 0xffffff0c]
004adcc9  898d08ffffff              MOV dword ptr [EBP + 0xffffff08],ECX
004adccf  83c202                    ADD EDX,0x2
004adcd2  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
004adcd8  03d6                      ADD EDX,ESI
004adcda  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004adce0  8bca                      MOV ECX,EDX
004adce2  48                        DEC EAX
004adce3  d1e9                      SHR ECX,0x1
004adce5  23c8                      AND ECX,EAX
004adce7  83e201                    AND EDX,0x1
004adcea  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004adcf0  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004adcf3  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
004adcf8  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004add00  e85b122400                CALL 0x006eef60
004add05  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004add0b  50                        PUSH EAX
004add0c  6a00                      PUSH 0x0
004add0e  6a00                      PUSH 0x0
004add10  6840b6c700                PUSH 0xc7b640
004add15  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
004add1b  50                        PUSH EAX
004add1c  68c8000000                PUSH 0xc8
004add21  68e8030000                PUSH 0x3e8
004add26  e8f5adf7ff                CALL 0x00428b20
004add2b  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
004add31  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004add39  83c103                    ADD ECX,0x3
004add3c  898d0cffffff              MOV dword ptr [EBP + 0xffffff0c],ECX
004add42  c780dc00000000000000      MOV dword ptr [EAX + 0xdc],0x0
004add4c  f30f1180e0000000          MOVSS dword ptr [EAX + 0xe0],XMM0
004add54  8d87040c0000              LEA EAX,[EDI + 0xc04]
004add5a  3b8f140c0000              CMP ECX,dword ptr [EDI + 0xc14]
004add60  0f823affffff              JC 0x004adca0
004add66  8d87040c0000              LEA EAX,[EDI + 0xc04]
004add6c  8bc8                      MOV ECX,EAX
004add6e  e80db6feff                CALL 0x00499380
004add73  8d8f180c0000              LEA ECX,[EDI + 0xc18]
004add79  e802b6feff                CALL 0x00499380
004add7e  51                        PUSH ECX
004add7f  c704240000803f            MOV dword ptr [ESP],0x3f800000
004add86  6a00                      PUSH 0x0
004add88  6a02                      PUSH 0x2
004add8a  51                        PUSH ECX
004add8b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004add92  8bcf                      MOV ECX,EDI
004add94  6a1e                      PUSH 0x1e
004add96  e8058e2200                CALL 0x006d6ba0
004add9b  68dcd2b100                PUSH 0xb1d2dc
004adda0  8d4f48                    LEA ECX,[EDI + 0x48]
004adda3  e888d2f5ff                CALL 0x0040b030
004adda8  6888d9b100                PUSH 0xb1d988
004addad  8d4f48                    LEA ECX,[EDI + 0x48]
004addb0  e87bd2f5ff                CALL 0x0040b030
004addb5  84c0                      TEST AL,AL
004addb7  7451                      JZ 0x004ade0a
004addb9  e8a2112400                CALL 0x006eef60
004addbe  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004addc4  50                        PUSH EAX
004addc5  6a02                      PUSH 0x2
004addc7  57                        PUSH EDI
004addc8  6840b6c700                PUSH 0xc7b640
004addcd  8d873c030000              LEA EAX,[EDI + 0x33c]
004addd3  50                        PUSH EAX
004addd4  6884000000                PUSH 0x84
004addd9  68e8030000                PUSH 0x3e8
004addde  e83dadf7ff                CALL 0x00428b20
004adde3  8bc8                      MOV ECX,EAX
004adde5  8b10                      MOV EDX,dword ptr [EAX]
004adde7  ff520c                    CALL dword ptr [EDX + 0xc]
004addea  51                        PUSH ECX
004addeb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004addf2  6a00                      PUSH 0x0
004addf4  6a02                      PUSH 0x2
004addf6  51                        PUSH ECX
004addf7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004addfe  8bcf                      MOV ECX,EDI
004ade00  68e2000000                PUSH 0xe2
004ade05  e8968d2200                CALL 0x006d6ba0
004ade0a  68eca4b100                PUSH 0xb1a4ec
004ade0f  8d4f48                    LEA ECX,[EDI + 0x48]
004ade12  e839c7f5ff                CALL 0x0040a550
004ade17  84c0                      TEST AL,AL
004ade19  7441                      JZ 0x004ade5c
004ade1b  6aff                      PUSH -0x1
004ade1d  6a00                      PUSH 0x0
004ade1f  6a02                      PUSH 0x2
004ade21  68b6030000                PUSH 0x3b6
004ade26  8bcf                      MOV ECX,EDI
004ade28  e803312100                CALL 0x006c0f30
004ade2d  6a00                      PUSH 0x0
004ade2f  6898d5b100                PUSH 0xb1d598
004ade34  8d4f48                    LEA ECX,[EDI + 0x48]
004ade37  e844c5f5ff                CALL 0x0040a380
004ade3c  51                        PUSH ECX
004ade3d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ade44  6a00                      PUSH 0x0
004ade46  6a02                      PUSH 0x2
004ade48  51                        PUSH ECX
004ade49  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
004ade50  8bcf                      MOV ECX,EDI
004ade52  682f020000                PUSH 0x22f
004ade57  e8448d2200                CALL 0x006d6ba0
004ade5c  83bf640b000002            CMP dword ptr [EDI + 0xb64],0x2
004ade63  0f84ef050000              JZ 0x004ae458
004ade69  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
004ade6c  33d2                      XOR EDX,EDX
004ade6e  b907000000                MOV ECX,0x7
004ade73  f30f100db8a7ba00          MOVSS XMM1,dword ptr [0x00baa7b8]
004ade7b  f7f1                      DIV ECX
004ade7d  8bcf                      MOV ECX,EDI
004ade7f  660f6ec2                  MOVD XMM0,EDX
004ade83  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ade87  c1ea1f                    SHR EDX,0x1f
004ade8a  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
004ade93  660f5ad0                  CVTPD2PS XMM2,XMM0
004ade97  e8c4e81f00                CALL 0x006ac760
004ade9c  85c0                      TEST EAX,EAX
004ade9e  0f84b4050000              JZ 0x004ae458
004adea4  e8b7102400                CALL 0x006eef60
004adea9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004adeaf  50                        PUSH EAX
004adeb0  6a00                      PUSH 0x0
004adeb2  57                        PUSH EDI
004adeb3  6840b6c700                PUSH 0xc7b640
004adeb8  8d873c030000              LEA EAX,[EDI + 0x33c]
004adebe  50                        PUSH EAX
004adebf  68a9000000                PUSH 0xa9
004adec4  68e8030000                PUSH 0x3e8
004adec9  e852acf7ff                CALL 0x00428b20
004adece  8bf0                      MOV ESI,EAX
004aded0  e88b102400                CALL 0x006eef60
004aded5  8bce                      MOV ECX,ESI
004aded7  c7865c0400003c000000      MOV dword ptr [ESI + 0x45c],0x3c
004adee1  c786600400003c000000      MOV dword ptr [ESI + 0x460],0x3c
004adeeb  660f6ec0                  MOVD XMM0,EAX
004adeef  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004adef3  c1e81f                    SHR EAX,0x1f
004adef6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004adeff  8b06                      MOV EAX,dword ptr [ESI]
004adf01  660f5ac0                  CVTPD2PS XMM0,XMM0
004adf05  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004adf0d  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004adf15  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
004adf1d  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
004adf25  ff500c                    CALL dword ptr [EAX + 0xc]
004adf28  e92b050000                JMP 0x004ae458
004adf2d  83f902                    CMP ECX,0x2
004adf30  0f9485c0feffff            SETZ byte ptr [EBP + 0xfffffec0]
004adf37  83bf640b000002            CMP dword ptr [EDI + 0xb64],0x2
004adf3e  7548                      JNZ 0x004adf88
004adf40  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
004adf46  6a00                      PUSH 0x0
004adf48  6a00                      PUSH 0x0
004adf4a  6aff                      PUSH -0x1
004adf4c  6a0e                      PUSH 0xe
004adf4e  e88d824a00                CALL 0x009561e0
004adf53  84c0                      TEST AL,AL
004adf55  742b                      JZ 0x004adf82
004adf57  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
004adf5d  6a00                      PUSH 0x0
004adf5f  68b6030000                PUSH 0x3b6
004adf64  8d4914                    LEA ECX,[ECX + 0x14]
004adf67  e824d24700                CALL 0x0092b190
004adf6c  8b8dfcfeffff              MOV ECX,dword ptr [EBP + 0xfffffefc]
004adf72  85c0                      TEST EAX,EAX
004adf74  7412                      JZ 0x004adf88
004adf76  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
004adf80  eb06                      JMP 0x004adf88
004adf82  8b8dfcfeffff              MOV ECX,dword ptr [EBP + 0xfffffefc]
004adf88  83f902                    CMP ECX,0x2
004adf8b  0f8481000000              JZ 0x004ae012
004adf91  8bcf                      MOV ECX,EDI
004adf93  e858cfffff                CALL 0x004aaef0
004adf98  6a00                      PUSH 0x0
004adf9a  8d4f48                    LEA ECX,[EDI + 0x48]
004adf9d  e87ed2f5ff                CALL 0x0040b220
004adfa2  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004adfaa  8d4f48                    LEA ECX,[EDI + 0x48]
004adfad  f30f5905d0a0ba00          MULSS XMM0,dword ptr [0x00baa0d0]
004adfb5  83c048                    ADD EAX,0x48
004adfb8  6a00                      PUSH 0x0
004adfba  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
004adfc0  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004adfc8  e853d2f5ff                CALL 0x0040b220
004adfcd  f30f109514ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff14]
004adfd5  0f57c9                    XORPS XMM1,XMM1
004adfd8  f30f105860                MOVSS XMM3,dword ptr [EAX + 0x60]
004adfdd  0f28c3                    MOVAPS XMM0,XMM3
004adfe0  f30f5cc1                  SUBSS XMM0,XMM1
004adfe4  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004adfeb  0f2fd0                    COMISS XMM2,XMM0
004adfee  7205                      JC 0x004adff5
004adff0  0f57d2                    XORPS XMM2,XMM2
004adff3  eb12                      JMP 0x004ae007
004adff5  0f2fcb                    COMISS XMM1,XMM3
004adff8  7606                      JBE 0x004ae000
004adffa  f30f58d3                  ADDSS XMM2,XMM3
004adffe  eb07                      JMP 0x004ae007
004ae000  f30f5cda                  SUBSS XMM3,XMM2
004ae004  0f28d3                    MOVAPS XMM2,XMM3
004ae007  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
004ae00d  f30f115018                MOVSS dword ptr [EAX + 0x18],XMM2
004ae012  6814ecb100                PUSH 0xb1ec14
004ae017  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
004ae01d  8bcf                      MOV ECX,EDI
004ae01f  50                        PUSH EAX
004ae020  e8cb8a2000                CALL 0x006b6af0
004ae025  f30f10a504ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff04]
004ae02d  0f2e2540b6c700            UCOMISS XMM4,dword ptr [0x00c7b640]
004ae034  9f                        LAHF
004ae035  f6c444                    TEST AH,0x44
004ae038  7a19                      JP 0x004ae053
004ae03a  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
004ae042  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004ae049  9f                        LAHF
004ae04a  f6c444                    TEST AH,0x44
004ae04d  0f8b3a010000              JNP 0x004ae18d
004ae053  83bf140c000000            CMP dword ptr [EDI + 0xc14],0x0
004ae05a  0f852d010000              JNZ 0x004ae18d
004ae060  33f6                      XOR ESI,ESI
004ae062  660f6ec6                  MOVD XMM0,ESI
004ae066  8bc6                      MOV EAX,ESI
004ae068  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ae06c  c1e81f                    SHR EAX,0x1f
004ae06f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ae078  660f5ac0                  CVTPD2PS XMM0,XMM0
004ae07c  0f28c8                    MOVAPS XMM1,XMM0
004ae07f  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004ae087  f30f5e0d04a8ba00          DIVSS XMM1,dword ptr [0x00baa804]
004ae08f  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
004ae097  e884f4f6ff                CALL 0x0041d520
004ae09c  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004ae0a4  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
004ae0aa  f30f5c0de8a7ba00          SUBSS XMM1,dword ptr [0x00baa7e8]
004ae0b2  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
004ae0ba  8d8f040c0000              LEA ECX,[EDI + 0xc04]
004ae0c0  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004ae0c8  50                        PUSH EAX
004ae0c9  f30f5cca                  SUBSS XMM1,XMM2
004ae0cd  f30f598d14ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff14]
004ae0d5  f30f58ca                  ADDSS XMM1,XMM2
004ae0d9  0f57d2                    XORPS XMM2,XMM2
004ae0dc  f30f58c1                  ADDSS XMM0,XMM1
004ae0e0  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004ae0e8  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004ae0f0  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004ae0f8  f30f58c2                  ADDSS XMM0,XMM2
004ae0fc  f30f5cc1                  SUBSS XMM0,XMM1
004ae100  f30f598514ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff14]
004ae108  f30f58c1                  ADDSS XMM0,XMM1
004ae10c  f30f58c2                  ADDSS XMM0,XMM2
004ae110  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004ae118  e8332e0000                CALL 0x004b0f50
004ae11d  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004ae123  c785d4feffff00000000      MOV dword ptr [EBP + 0xfffffed4],0x0
004ae12d  50                        PUSH EAX
004ae12e  8d8f040c0000              LEA ECX,[EDI + 0xc04]
004ae134  c785d8feffff00000000      MOV dword ptr [EBP + 0xfffffed8],0x0
004ae13e  e80d2e0000                CALL 0x004b0f50
004ae143  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004ae149  c785dcfeffff0000f0c1      MOV dword ptr [EBP + 0xfffffedc],0xc1f00000
004ae153  50                        PUSH EAX
004ae154  8d8f040c0000              LEA ECX,[EDI + 0xc04]
004ae15a  c785e0feffff00000000      MOV dword ptr [EBP + 0xfffffee0],0x0
004ae164  e8e72d0000                CALL 0x004b0f50
004ae169  46                        INC ESI
004ae16a  83fe0a                    CMP ESI,0xa
004ae16d  0f82effeffff              JC 0x004ae062
004ae173  8d87040c0000              LEA EAX,[EDI + 0xc04]
004ae179  50                        PUSH EAX
004ae17a  8d8f180c0000              LEA ECX,[EDI + 0xc18]
004ae180  e8bb2c0000                CALL 0x004b0e40
004ae185  f30f10a504ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff04]
004ae18d  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004ae193  0f57db                    XORPS XMM3,XMM3
004ae196  85c0                      TEST EAX,EAX
004ae198  742e                      JZ 0x004ae1c8
004ae19a  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004ae1a2  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004ae1aa  f30f58c3                  ADDSS XMM0,XMM3
004ae1ae  f30f580d7ca8ba00          ADDSS XMM1,dword ptr [0x00baa87c]
004ae1b6  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004ae1be  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
004ae1c6  eb18                      JMP 0x004ae1e0
004ae1c8  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
004ae1ce  8b8f38030000              MOV ECX,dword ptr [EDI + 0x338]
004ae1d4  898510ffffff              MOV dword ptr [EBP + 0xffffff10],EAX
004ae1da  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
004ae1e0  83bf140c000000            CMP dword ptr [EDI + 0xc14],0x0
004ae1e7  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
004ae1ed  f30f1010                  MOVSS XMM2,dword ptr [EAX]
004ae1f1  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
004ae1f6  f30f11950cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM2
004ae1fe  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
004ae206  0f848a010000              JZ 0x004ae396
004ae20c  8b97100c0000              MOV EDX,dword ptr [EDI + 0xc10]
004ae212  8bca                      MOV ECX,EDX
004ae214  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ae21a  83e201                    AND EDX,0x1
004ae21d  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004ae225  48                        DEC EAX
004ae226  f30f58a73c030000          ADDSS XMM4,dword ptr [EDI + 0x33c]
004ae22e  d1e9                      SHR ECX,0x1
004ae230  f30f58c3                  ADDSS XMM0,XMM3
004ae234  23c8                      AND ECX,EAX
004ae236  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ae23c  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ae23f  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004ae245  f30f1124d0                MOVSS dword ptr [EAX + EDX*0x8],XMM4
004ae24a  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004ae250  8b8f0c0c0000              MOV ECX,dword ptr [EDI + 0xc0c]
004ae256  49                        DEC ECX
004ae257  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
004ae25f  8d5001                    LEA EDX,[EAX + 0x1]
004ae262  8bc2                      MOV EAX,EDX
004ae264  83e201                    AND EDX,0x1
004ae267  d1e8                      SHR EAX,0x1
004ae269  23c8                      AND ECX,EAX
004ae26b  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ae271  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
004ae274  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
004ae27a  8904d1                    MOV dword ptr [ECX + EDX*0x8],EAX
004ae27d  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
004ae283  8944d104                  MOV dword ptr [ECX + EDX*0x8 + 0x4],EAX
004ae287  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004ae28d  8d5002                    LEA EDX,[EAX + 0x2]
004ae290  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ae296  8bca                      MOV ECX,EDX
004ae298  48                        DEC EAX
004ae299  d1e9                      SHR ECX,0x1
004ae29b  83e201                    AND EDX,0x1
004ae29e  23c8                      AND ECX,EAX
004ae2a0  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ae2a6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ae2a9  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004ae2ae  0f28c2                    MOVAPS XMM0,XMM2
004ae2b1  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
004ae2b9  8b8f100c0000              MOV ECX,dword ptr [EDI + 0xc10]
004ae2bf  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
004ae2c5  83c1fd                    ADD ECX,-0x3
004ae2c8  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ae2ce  03d1                      ADD EDX,ECX
004ae2d0  f30f5c05e8a7ba00          SUBSS XMM0,dword ptr [0x00baa7e8]
004ae2d8  8bca                      MOV ECX,EDX
004ae2da  48                        DEC EAX
004ae2db  d1e9                      SHR ECX,0x1
004ae2dd  83e201                    AND EDX,0x1
004ae2e0  23c8                      AND ECX,EAX
004ae2e2  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ae2e8  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ae2eb  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004ae2f0  0f28c1                    MOVAPS XMM0,XMM1
004ae2f3  f30f58c3                  ADDSS XMM0,XMM3
004ae2f7  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004ae2fd  8b8f100c0000              MOV ECX,dword ptr [EDI + 0xc10]
004ae303  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
004ae309  83c1fe                    ADD ECX,-0x2
004ae30c  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ae312  03d1                      ADD EDX,ECX
004ae314  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004ae31c  8bca                      MOV ECX,EDX
004ae31e  d1e9                      SHR ECX,0x1
004ae320  48                        DEC EAX
004ae321  23c8                      AND ECX,EAX
004ae323  83e201                    AND EDX,0x1
004ae326  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ae32c  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ae32f  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004ae334  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004ae33c  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004ae342  8b8f100c0000              MOV ECX,dword ptr [EDI + 0xc10]
004ae348  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
004ae34e  49                        DEC ECX
004ae34f  03d1                      ADD EDX,ECX
004ae351  8bca                      MOV ECX,EDX
004ae353  d1e9                      SHR ECX,0x1
004ae355  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ae35b  83e201                    AND EDX,0x1
004ae35e  ffb5c0feffff              PUSH dword ptr [EBP + 0xfffffec0]
004ae364  48                        DEC EAX
004ae365  23c8                      AND ECX,EAX
004ae367  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ae36d  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ae370  8bcf                      MOV ECX,EDI
004ae372  c704d00000f0c1            MOV dword ptr [EAX + EDX*0x8],0xc1f00000
004ae379  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
004ae381  e81aac0300                CALL 0x004e8fa0
004ae386  f30f10950cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff0c]
004ae38e  f30f108d00ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff00]
004ae396  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004ae39e  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004ae3a6  0f28c1                    MOVAPS XMM0,XMM1
004ae3a9  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
004ae3b1  f30f59c1                  MULSS XMM0,XMM1
004ae3b5  0f28ca                    MOVAPS XMM1,XMM2
004ae3b8  f30f59ca                  MULSS XMM1,XMM2
004ae3bc  f30f11950cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM2
004ae3c4  f30f58c1                  ADDSS XMM0,XMM1
004ae3c8  e88376f8ff                CALL 0x00435a50
004ae3cd  0f28e8                    MOVAPS XMM5,XMM0
004ae3d0  f30f100588aaba00          MOVSS XMM0,dword ptr [0x00baaa88]
004ae3d8  0f2fe8                    COMISS XMM5,XMM0
004ae3db  0f8677000000              JBE 0x004ae458
004ae3e1  f30f10a50cffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff0c]
004ae3e9  0f28d5                    MOVAPS XMM2,XMM5
004ae3ec  f30f5ee5                  DIVSS XMM4,XMM5
004ae3f0  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
004ae3f8  f30f5cd0                  SUBSS XMM2,XMM0
004ae3fc  f30f59e2                  MULSS XMM4,XMM2
004ae400  f30f592520a1ba00          MULSS XMM4,dword ptr [0x00baa120]
004ae408  f30f5925f8a1ba00          MULSS XMM4,dword ptr [0x00baa1f8]
004ae410  f30f59e3                  MULSS XMM4,XMM3
004ae414  f30f58a760030000          ADDSS XMM4,dword ptr [EDI + 0x360]
004ae41c  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
004ae424  f30f10a500ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff00]
004ae42c  f30f5ee5                  DIVSS XMM4,XMM5
004ae430  f30f59e2                  MULSS XMM4,XMM2
004ae434  f30f592520a1ba00          MULSS XMM4,dword ptr [0x00baa120]
004ae43c  f30f5925f8a1ba00          MULSS XMM4,dword ptr [0x00baa1f8]
004ae444  f30f59e3                  MULSS XMM4,XMM3
004ae448  f30f58a764030000          ADDSS XMM4,dword ptr [EDI + 0x364]
004ae450  f30f11a764030000          MOVSS dword ptr [EDI + 0x364],XMM4
004ae458  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004ae45b  64890d00000000            MOV dword ptr FS:[0x0],ECX
004ae462  59                        POP ECX
004ae463  5f                        POP EDI
004ae464  5e                        POP ESI
004ae465  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004ae468  33cd                      XOR ECX,EBP
004ae46a  e8bc0c6400                CALL 0x00aef12b
004ae46f  8be5                      MOV ESP,EBP
004ae471  5d                        POP EBP
004ae472  8be3                      MOV ESP,EBX
004ae474  5b                        POP EBX
004ae475  c3                        RET
