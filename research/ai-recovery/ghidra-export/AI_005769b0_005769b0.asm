; J460 NPC AI 0x005769b0 AI_005769b0
; types=919
; identities=919.0.0,919.1.0
; entry=005769b0
005769b0  53                        PUSH EBX
005769b1  8bdc                      MOV EBX,ESP
005769b3  83ec08                    SUB ESP,0x8
005769b6  83e4f8                    AND ESP,0xfffffff8
005769b9  83c404                    ADD ESP,0x4
005769bc  55                        PUSH EBP
005769bd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005769c0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005769c4  8bec                      MOV EBP,ESP
005769c6  6aff                      PUSH -0x1
005769c8  68b151af00                PUSH 0xaf51b1
005769cd  64a100000000              MOV EAX,FS:[0x0]
005769d3  50                        PUSH EAX
005769d4  53                        PUSH EBX
005769d5  81ece8000000              SUB ESP,0xe8
005769db  a1b493bf00                MOV EAX,[0x00bf93b4]
005769e0  33c5                      XOR EAX,EBP
005769e2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
005769e5  56                        PUSH ESI
005769e6  57                        PUSH EDI
005769e7  50                        PUSH EAX
005769e8  8d45f4                    LEA EAX,[EBP + -0xc]
005769eb  64a300000000              MOV FS:[0x0],EAX
005769f1  8bf9                      MOV EDI,ECX
005769f3  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005769f7  750a                      JNZ 0x00576a03
005769f9  e852faffff                CALL 0x00576450
005769fe  e96b1a0000                JMP 0x0057846e
00576a03  8b5708                    MOV EDX,dword ptr [EDI + 0x8]
00576a06  0f57c9                    XORPS XMM1,XMM1
00576a09  3b570c                    CMP EDX,dword ptr [EDI + 0xc]
00576a0c  7439                      JZ 0x00576a47
00576a0e  6690                      NOP
00576a10  8b4210                    MOV EAX,dword ptr [EDX + 0x10]
00576a13  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
00576a16  7527                      JNZ 0x00576a3f
00576a18  8bcf                      MOV ECX,EDI
00576a1a  e891fdedff                CALL 0x004567b0
00576a1f  8b4a30                    MOV ECX,dword ptr [EDX + 0x30]
00576a22  d1e9                      SHR ECX,0x1
00576a24  80e101                    AND CL,0x1
00576a27  3ac8                      CMP CL,AL
00576a29  7514                      JNZ 0x00576a3f
00576a2b  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00576a30  f30f5c02                  SUBSS XMM0,dword ptr [EDX]
00576a34  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
00576a39  c70200000000              MOV dword ptr [EDX],0x0
00576a3f  83c238                    ADD EDX,0x38
00576a42  3b570c                    CMP EDX,dword ptr [EDI + 0xc]
00576a45  75c9                      JNZ 0x00576a10
00576a47  0f2f4f14                  COMISS XMM1,dword ptr [EDI + 0x14]
00576a4b  7607                      JBE 0x00576a54
00576a4d  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
00576a54  a17816c700                MOV EAX,[0x00c71678]
00576a59  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00576a61  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00576a67  89b51cffffff              MOV dword ptr [EBP + 0xffffff1c],ESI
00576a6d  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00576a75  2bc8                      SUB ECX,EAX
00576a77  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
00576a7e  898d30ffffff              MOV dword ptr [EBP + 0xffffff30],ECX
00576a84  0f85f0010000              JNZ 0x00576c7a
00576a8a  83bf640b000001            CMP dword ptr [EDI + 0xb64],0x1
00576a91  0f85d7190000              JNZ 0x0057846e
00576a97  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00576a9b  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00576aa3  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00576aab  741f                      JZ 0x00576acc
00576aad  68dcd2b100                PUSH 0xb1d2dc
00576ab2  8d4f78                    LEA ECX,[EDI + 0x78]
00576ab5  e81643e9ff                CALL 0x0040add0
00576aba  84c0                      TEST AL,AL
00576abc  750e                      JNZ 0x00576acc
00576abe  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00576ac2  7408                      JZ 0x00576acc
00576ac4  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00576aca  7514                      JNZ 0x00576ae0
00576acc  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00576ad6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00576ada  0f8495000000              JZ 0x00576b75
00576ae0  8d4f78                    LEA ECX,[EDI + 0x78]
00576ae3  68d4d2b100                PUSH 0xb1d2d4
00576ae8  e8e342e9ff                CALL 0x0040add0
00576aed  84c0                      TEST AL,AL
00576aef  0f8480000000              JZ 0x00576b75
00576af5  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00576afb  83f812                    CMP EAX,0x12
00576afe  750a                      JNZ 0x00576b0a
00576b00  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00576b08  eb0d                      JMP 0x00576b17
00576b0a  83f813                    CMP EAX,0x13
00576b0d  7510                      JNZ 0x00576b1f
00576b0f  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00576b17  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00576b1f  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00576b25  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
00576b2b  c7853cffffff31010000      MOV dword ptr [EBP + 0xffffff3c],0x131
00576b35  e846fc3d00                CALL 0x00956780
00576b3a  f30f10852cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff2c]
00576b42  83ec08                    SUB ESP,0x8
00576b45  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00576b4d  f30f110424                MOVSS dword ptr [ESP],XMM0
00576b52  6a00                      PUSH 0x0
00576b54  6a02                      PUSH 0x2
00576b56  51                        PUSH ECX
00576b57  c704240000803f            MOV dword ptr [ESP],0x3f800000
00576b5e  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00576b64  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
00576b6a  e8c1703b00                CALL 0x0092dc30
00576b6f  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
00576b75  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00576b79  8d4778                    LEA EAX,[EDI + 0x78]
00576b7c  0f84ec180000              JZ 0x0057846e
00576b82  68d4d2b100                PUSH 0xb1d2d4
00576b87  8bc8                      MOV ECX,EAX
00576b89  e8e242e9ff                CALL 0x0040ae70
00576b8e  84c0                      TEST AL,AL
00576b90  0f84d8180000              JZ 0x0057846e
00576b96  83bd30ffffff00            CMP dword ptr [EBP + 0xffffff30],0x0
00576b9d  0f8ecb180000              JLE 0x0057846e
00576ba3  0f1f4000                  NOP dword ptr [EAX]
00576ba7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
00576bb0  ff8710040000              INC dword ptr [EDI + 0x410]
00576bb6  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00576bbc  83f80a                    CMP EAX,0xa
00576bbf  7413                      JZ 0x00576bd4
00576bc1  83f814                    CMP EAX,0x14
00576bc4  740e                      JZ 0x00576bd4
00576bc6  83f81e                    CMP EAX,0x1e
00576bc9  7409                      JZ 0x00576bd4
00576bcb  83f828                    CMP EAX,0x28
00576bce  0f858e000000              JNZ 0x00576c62
00576bd4  51                        PUSH ECX
00576bd5  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00576bdb  c7042400000000            MOV dword ptr [ESP],0x0
00576be2  50                        PUSH EAX
00576be3  8bce                      MOV ECX,ESI
00576be5  e8e67d2a00                CALL 0x0081e9d0
00576bea  e871831700                CALL 0x006eef60
00576bef  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00576bf5  50                        PUSH EAX
00576bf6  6a00                      PUSH 0x0
00576bf8  57                        PUSH EDI
00576bf9  6840b6c700                PUSH 0xc7b640
00576bfe  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00576c04  50                        PUSH EAX
00576c05  6a02                      PUSH 0x2
00576c07  68f0000000                PUSH 0xf0
00576c0c  e80f1febff                CALL 0x00428b20
00576c11  8bc8                      MOV ECX,EAX
00576c13  8b10                      MOV EDX,dword ptr [EAX]
00576c15  ff520c                    CALL dword ptr [EDX + 0xc]
00576c18  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00576c1e  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
00576c24  c7853cffffff09010000      MOV dword ptr [EBP + 0xffffff3c],0x109
00576c2e  e84dfb3d00                CALL 0x00956780
00576c33  83ec08                    SUB ESP,0x8
00576c36  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00576c3e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00576c45  6a00                      PUSH 0x0
00576c47  6a02                      PUSH 0x2
00576c49  51                        PUSH ECX
00576c4a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00576c51  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00576c57  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
00576c5d  e8ce6f3b00                CALL 0x0092dc30
00576c62  83ad30ffffff01            SUB dword ptr [EBP + 0xffffff30],0x1
00576c69  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
00576c6f  0f853bffffff              JNZ 0x00576bb0
00576c75  e9f4170000                JMP 0x0057846e
00576c7a  8a97c30b0000              MOV DL,byte ptr [EDI + 0xbc3]
00576c80  84d2                      TEST DL,DL
00576c82  0f88fd000000              JS 0x00576d85
00576c88  80fa03                    CMP DL,0x3
00576c8b  0f83f4000000              JNC 0x00576d85
00576c91  0fbec2                    MOVSX EAX,DL
00576c94  f30f100485641eb600        MOVSS XMM0,dword ptr [EAX*0x4 + 0xb61e64]
00576c9d  f30f598784030000          MULSS XMM0,dword ptr [EDI + 0x384]
00576ca5  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
00576cac  0f86d3000000              JBE 0x00576d85
00576cb2  fec2                      INC DL
00576cb4  8bcf                      MOV ECX,EDI
00576cb6  8897c30b0000              MOV byte ptr [EDI + 0xbc3],DL
00576cbc  e8ffd81300                CALL 0x006b45c0
00576cc1  8a87c30b0000              MOV AL,byte ptr [EDI + 0xbc3]
00576cc7  3c01                      CMP AL,0x1
00576cc9  7554                      JNZ 0x00576d1f
00576ccb  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
00576cd2  8d4f48                    LEA ECX,[EDI + 0x48]
00576cd5  6a01                      PUSH 0x1
00576cd7  ff3485701eb600            PUSH dword ptr [EAX*0x4 + 0xb61e70]
00576cde  e8ed38e9ff                CALL 0x0040a5d0
00576ce3  84c0                      TEST AL,AL
00576ce5  740f                      JZ 0x00576cf6
00576ce7  8d4f78                    LEA ECX,[EDI + 0x78]
00576cea  e8c134e9ff                CALL 0x0040a1b0
00576cef  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00576cf6  51                        PUSH ECX
00576cf7  c704240000803f            MOV dword ptr [ESP],0x3f800000
00576cfe  6a00                      PUSH 0x0
00576d00  6a02                      PUSH 0x2
00576d02  51                        PUSH ECX
00576d03  c704240000803f            MOV dword ptr [ESP],0x3f800000
00576d0a  8bcf                      MOV ECX,EDI
00576d0c  6a70                      PUSH 0x70
00576d0e  c787640b00000e000000      MOV dword ptr [EDI + 0xb64],0xe
00576d18  e883fe1500                CALL 0x006d6ba0
00576d1d  eb56                      JMP 0x00576d75
00576d1f  3c02                      CMP AL,0x2
00576d21  755c                      JNZ 0x00576d7f
00576d23  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
00576d2a  8d4f48                    LEA ECX,[EDI + 0x48]
00576d2d  6a01                      PUSH 0x1
00576d2f  ff3485801eb600            PUSH dword ptr [EAX*0x4 + 0xb61e80]
00576d36  e89538e9ff                CALL 0x0040a5d0
00576d3b  84c0                      TEST AL,AL
00576d3d  740f                      JZ 0x00576d4e
00576d3f  8d4f78                    LEA ECX,[EDI + 0x78]
00576d42  e86934e9ff                CALL 0x0040a1b0
00576d47  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00576d4e  51                        PUSH ECX
00576d4f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00576d56  6a00                      PUSH 0x0
00576d58  6a02                      PUSH 0x2
00576d5a  51                        PUSH ECX
00576d5b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00576d62  8bcf                      MOV ECX,EDI
00576d64  6a70                      PUSH 0x70
00576d66  e835fe1500                CALL 0x006d6ba0
00576d6b  c787640b00000f000000      MOV dword ptr [EDI + 0xb64],0xf
00576d75  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00576d7f  8b8d30ffffff              MOV ECX,dword ptr [EBP + 0xffffff30]
00576d85  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
00576d8b  85c0                      TEST EAX,EAX
00576d8d  7e08                      JLE 0x00576d97
00576d8f  2bc1                      SUB EAX,ECX
00576d91  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
00576d97  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
00576d9d  85c0                      TEST EAX,EAX
00576d9f  7e08                      JLE 0x00576da9
00576da1  2bc1                      SUB EAX,ECX
00576da3  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00576da9  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00576daf  83f80f                    CMP EAX,0xf
00576db2  0f87b6160000              JA 0x0057846e
00576db8  0fb680ac845700            MOVZX EAX,byte ptr [EAX + 0x5784ac]
00576dbf  ff24858c845700            JMP dword ptr [EAX*0x4 + 0x57848c]
00576dc6  68a44dc300                PUSH 0xc34da4
00576dcb  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00576dd1  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00576ddb  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
00576de5  e80604e9ff                CALL 0x004071f0
00576dea  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
00576df2  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00576dfc  c7874c03000000000000      MOV dword ptr [EDI + 0x34c],0x0
00576e06  c7875003000000008841      MOV dword ptr [EDI + 0x350],0x41880000
00576e10  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00576e18  f30f5cc2                  SUBSS XMM0,XMM2
00576e1c  f30f5ec2                  DIVSS XMM0,XMM2
00576e20  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00576e28  f30f2cc0                  CVTTSS2SI EAX,XMM0
00576e2c  85c0                      TEST EAX,EAX
00576e2e  7811                      JS 0x00576e41
00576e30  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
00576e33  3bc1                      CMP EAX,ECX
00576e35  7d0a                      JGE 0x00576e41
00576e37  837e1001                  CMP dword ptr [ESI + 0x10],0x1
00576e3b  7e04                      JLE 0x00576e41
00576e3d  03c1                      ADD EAX,ECX
00576e3f  eb06                      JMP 0x00576e47
00576e41  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
00576e44  83c8ff                    OR EAX,0xffffffff
00576e47  99                        CDQ
00576e48  f7f9                      IDIV ECX
00576e4a  660f6eca                  MOVD XMM1,EDX
00576e4e  660f6ec0                  MOVD XMM0,EAX
00576e52  0f5bc9                    CVTDQ2PS XMM1,XMM1
00576e55  0f5bc0                    CVTDQ2PS XMM0,XMM0
00576e58  f30f59ca                  MULSS XMM1,XMM2
00576e5c  f30f59c2                  MULSS XMM0,XMM2
00576e60  f30f58ca                  ADDSS XMM1,XMM2
00576e64  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
00576e6c  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
00576e74  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00576e7c  c787c00b00000300ff00      MOV dword ptr [EDI + 0xbc0],0xff0003
00576e86  e8d5801700                CALL 0x006eef60
00576e8b  33d2                      XOR EDX,EDX
00576e8d  b93c000000                MOV ECX,0x3c
00576e92  f7f1                      DIV ECX
00576e94  03d1                      ADD EDX,ECX
00576e96  8997a40b0000              MOV dword ptr [EDI + 0xba4],EDX
00576e9c  e9c3150000                JMP 0x00578464
00576ea1  80bfc20b000000            CMP byte ptr [EDI + 0xbc2],0x0
00576ea8  b850c3c500                MOV EAX,0xc5c350
00576ead  b940c3c500                MOV ECX,0xc5c340
00576eb2  0f4ec8                    CMOVLE ECX,EAX
00576eb5  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
00576ebc  8b0c81                    MOV ECX,dword ptr [ECX + EAX*0x4]
00576ebf  898d3cffffff              MOV dword ptr [EBP + 0xffffff3c],ECX
00576ec5  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00576ec8  85c9                      TEST ECX,ECX
00576eca  744f                      JZ 0x00576f1b
00576ecc  83791410                  CMP dword ptr [ECX + 0x14],0x10
00576ed0  8bc1                      MOV EAX,ECX
00576ed2  7202                      JC 0x00576ed6
00576ed4  8b01                      MOV EAX,dword ptr [ECX]
00576ed6  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
00576edc  0f1f4000                  NOP dword ptr [EAX]
00576ee0  8a10                      MOV DL,byte ptr [EAX]
00576ee2  3a11                      CMP DL,byte ptr [ECX]
00576ee4  751a                      JNZ 0x00576f00
00576ee6  84d2                      TEST DL,DL
00576ee8  7412                      JZ 0x00576efc
00576eea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00576eed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00576ef0  750e                      JNZ 0x00576f00
00576ef2  83c002                    ADD EAX,0x2
00576ef5  83c102                    ADD ECX,0x2
00576ef8  84d2                      TEST DL,DL
00576efa  75e4                      JNZ 0x00576ee0
00576efc  33c0                      XOR EAX,EAX
00576efe  eb05                      JMP 0x00576f05
00576f00  1bc0                      SBB EAX,EAX
00576f02  83c801                    OR EAX,0x1
00576f05  85c0                      TEST EAX,EAX
00576f07  7512                      JNZ 0x00576f1b
00576f09  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00576f0c  80783400                  CMP byte ptr [EAX + 0x34],0x0
00576f10  742c                      JZ 0x00576f3e
00576f12  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00576f19  7523                      JNZ 0x00576f3e
00576f1b  6a01                      PUSH 0x1
00576f1d  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
00576f23  8d4f48                    LEA ECX,[EDI + 0x48]
00576f26  e8a536e9ff                CALL 0x0040a5d0
00576f2b  84c0                      TEST AL,AL
00576f2d  740f                      JZ 0x00576f3e
00576f2f  8d4f78                    LEA ECX,[EDI + 0x78]
00576f32  e87932e9ff                CALL 0x0040a1b0
00576f37  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00576f3e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00576f46  8bcf                      MOV ECX,EDI
00576f48  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00576f50  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
00576f58  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00576f60  e82bf1ffff                CALL 0x00576090
00576f65  0fbf97c00b0000            MOVSX EDX,word ptr [EDI + 0xbc0]
00576f6c  8d8d34ffffff              LEA ECX,[EBP + 0xffffff34]
00576f72  e859821000                CALL 0x0067f1d0
00576f77  8bcf                      MOV ECX,EDI
00576f79  e8c2781400                CALL 0x006be840
00576f7e  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00576f86  8bf0                      MOV ESI,EAX
00576f88  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00576f90  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
00576f98  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
00576fa0  f30f59c0                  MULSS XMM0,XMM0
00576fa4  f30f59c9                  MULSS XMM1,XMM1
00576fa8  f30f58c1                  ADDSS XMM0,XMM1
00576fac  e89feaebff                CALL 0x00435a50
00576fb1  0f28c8                    MOVAPS XMM1,XMM0
00576fb4  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
00576fbc  0f28c1                    MOVAPS XMM0,XMM1
00576fbf  f30f598e64030000          MULSS XMM1,dword ptr [ESI + 0x364]
00576fc7  f30f598660030000          MULSS XMM0,dword ptr [ESI + 0x360]
00576fcf  f30f588e40030000          ADDSS XMM1,dword ptr [ESI + 0x340]
00576fd7  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
00576fdf  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00576fe7  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00576fef  f30f118d1cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM1
00576ff7  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00576fff  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
00577007  e83465eaff                CALL 0x0041d540
0057700c  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00577014  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0057701c  e8ff64eaff                CALL 0x0041d520
00577021  f30f108d38ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff38]
00577029  0f28e0                    MOVAPS XMM4,XMM0
0057702c  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00577034  0f28e8                    MOVAPS XMM5,XMM0
00577037  f30f59cc                  MULSS XMM1,XMM4
0057703b  f30f59ad34ffffff          MULSS XMM5,dword ptr [EBP + 0xffffff34]
00577043  f30f59a534ffffff          MULSS XMM4,dword ptr [EBP + 0xffffff34]
0057704b  f30f598538ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff38]
00577053  f30f5ce9                  SUBSS XMM5,XMM1
00577057  f30f58e0                  ADDSS XMM4,XMM0
0057705b  f30f10059ca8ba00          MOVSS XMM0,dword ptr [0x00baa89c]
00577063  f30f59ad2cffffff          MULSS XMM5,dword ptr [EBP + 0xffffff2c]
0057706b  f30f59a51cffffff          MULSS XMM4,dword ptr [EBP + 0xffffff1c]
00577073  f30f58ec                  ADDSS XMM5,XMM4
00577077  0f542d40cbba00            ANDPS XMM5,xmmword ptr [0x00bacb40]
0057707e  0f2fc5                    COMISS XMM0,XMM5
00577081  7647                      JBE 0x005770ca
00577083  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0057708a  7f3e                      JG 0x005770ca
0057708c  8a97c30b0000              MOV DL,byte ptr [EDI + 0xbc3]
00577092  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
00577099  84d2                      TEST DL,DL
0057709b  7509                      JNZ 0x005770a6
0057709d  8b0c85441eb600            MOV ECX,dword ptr [EAX*0x4 + 0xb61e44]
005770a4  eb07                      JMP 0x005770ad
005770a6  8b0c85541eb600            MOV ECX,dword ptr [EAX*0x4 + 0xb61e54]
005770ad  33c0                      XOR EAX,EAX
005770af  84d2                      TEST DL,DL
005770b1  6a00                      PUSH 0x0
005770b3  0f95c0                    SETNZ AL
005770b6  83c006                    ADD EAX,0x6
005770b9  51                        PUSH ECX
005770ba  8d4f48                    LEA ECX,[EDI + 0x48]
005770bd  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
005770c3  e8b832e9ff                CALL 0x0040a380
005770c8  eb35                      JMP 0x005770ff
005770ca  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
005770d1  7f2c                      JG 0x005770ff
005770d3  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
005770da  8d4f48                    LEA ECX,[EDI + 0x48]
005770dd  6a00                      PUSH 0x0
005770df  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
005770e9  ff3485241eb600            PUSH dword ptr [EAX*0x4 + 0xb61e24]
005770f0  e88b32e9ff                CALL 0x0040a380
005770f5  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005770ff  f30f100dd0a8ba00          MOVSS XMM1,dword ptr [0x00baa8d0]
00577107  0f57d2                    XORPS XMM2,XMM2
0057710a  8bcf                      MOV ECX,EDI
0057710c  e84f561300                CALL 0x006ac760
00577111  85c0                      TEST EAX,EAX
00577113  0f8455130000              JZ 0x0057846e
00577119  e8427e1700                CALL 0x006eef60
0057711e  33d2                      XOR EDX,EDX
00577120  b905000000                MOV ECX,0x5
00577125  f7f1                      DIV ECX
00577127  85d2                      TEST EDX,EDX
00577129  0f853f130000              JNZ 0x0057846e
0057712f  6aff                      PUSH -0x1
00577131  68f0000000                PUSH 0xf0
00577136  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0057713c  8bcf                      MOV ECX,EDI
0057713e  50                        PUSH EAX
0057713f  33f6                      XOR ESI,ESI
00577141  e81a9b1500                CALL 0x006d0c60
00577146  33d2                      XOR EDX,EDX
00577148  8975fc                    MOV dword ptr [EBP + -0x4],ESI
0057714b  399518ffffff              CMP dword ptr [EBP + 0xffffff18],EDX
00577151  7625                      JBE 0x00577178
00577153  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
00577159  8d4e01                    LEA ECX,[ESI + 0x1]
0057715c  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
0057715f  39b8c8030000              CMP dword ptr [EAX + 0x3c8],EDI
00577165  0f45ce                    CMOVNZ ECX,ESI
00577168  42                        INC EDX
00577169  8bf1                      MOV ESI,ECX
0057716b  3b9518ffffff              CMP EDX,dword ptr [EBP + 0xffffff18]
00577171  72e0                      JC 0x00577153
00577173  83fe02                    CMP ESI,0x2
00577176  7d42                      JGE 0x005771ba
00577178  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
0057717f  8d4f48                    LEA ECX,[EDI + 0x48]
00577182  6a00                      PUSH 0x0
00577184  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0057718e  ff3485701eb600            PUSH dword ptr [EAX*0x4 + 0xb61e70]
00577195  e8e631e9ff                CALL 0x0040a380
0057719a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0057719e  7410                      JZ 0x005771b0
005771a0  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
005771a8  8d4f78                    LEA ECX,[EDI + 0x78]
005771ab  e8501ce9ff                CALL 0x00408e00
005771b0  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005771ba  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005771c1  80bd0cffffff00            CMP byte ptr [EBP + 0xffffff0c],0x0
005771c8  0f85a0120000              JNZ 0x0057846e
005771ce  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
005771d5  b101                      MOV CL,0x1
005771d7  8b9510ffffff              MOV EDX,dword ptr [EBP + 0xffffff10]
005771dd  6a00                      PUSH 0x0
005771df  6a00                      PUSH 0x0
005771e1  e8cad64e00                CALL 0x00a648b0
005771e6  83c408                    ADD ESP,0x8
005771e9  e980120000                JMP 0x0057846e
005771ee  c7876c0300009a99193f      MOV dword ptr [EDI + 0x36c],0x3f19999a
005771f8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005771fc  0fbfb7c00b0000            MOVSX ESI,word ptr [EDI + 0xbc0]
00577203  741b                      JZ 0x00577220
00577205  68dcd2b100                PUSH 0xb1d2dc
0057720a  8d4f78                    LEA ECX,[EDI + 0x78]
0057720d  e85e3ce9ff                CALL 0x0040ae70
00577212  84c0                      TEST AL,AL
00577214  740a                      JZ 0x00577220
00577216  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
0057721e  eb08                      JMP 0x00577228
00577220  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
00577228  8bcf                      MOV ECX,EDI
0057722a  e861eeffff                CALL 0x00576090
0057722f  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
00577236  3bc6                      CMP EAX,ESI
00577238  7470                      JZ 0x005772aa
0057723a  6a00                      PUSH 0x0
0057723c  ff3485241eb600            PUSH dword ptr [EAX*0x4 + 0xb61e24]
00577243  8d4f48                    LEA ECX,[EDI + 0x48]
00577246  e88533e9ff                CALL 0x0040a5d0
0057724b  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
00577251  85f6                      TEST ESI,ESI
00577253  7455                      JZ 0x005772aa
00577255  837e2807                  CMP dword ptr [ESI + 0x28],0x7
00577259  754f                      JNZ 0x005772aa
0057725b  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
00577262  51                        PUSH ECX
00577263  8bce                      MOV ECX,ESI
00577265  660f6ec0                  MOVD XMM0,EAX
00577269  0f5bc0                    CVTDQ2PS XMM0,XMM0
0057726c  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00577274  f30f5c0578aaba00          SUBSS XMM0,dword ptr [0x00baaa78]
0057727c  f30f110424                MOVSS dword ptr [ESP],XMM0
00577281  e80a5c3f00                CALL 0x0096ce90
00577286  6683bfc00b000001          CMP word ptr [EDI + 0xbc0],0x1
0057728e  750a                      JNZ 0x0057729a
00577290  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
00577298  eb08                      JMP 0x005772a2
0057729a  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
005772a2  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
005772aa  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005772ae  0f8437010000              JZ 0x005773eb
005772b4  68dcd2b100                PUSH 0xb1d2dc
005772b9  8d4f78                    LEA ECX,[EDI + 0x78]
005772bc  e80f3be9ff                CALL 0x0040add0
005772c1  84c0                      TEST AL,AL
005772c3  0f840f010000              JZ 0x005773d8
005772c9  51                        PUSH ECX
005772ca  c704240000803f            MOV dword ptr [ESP],0x3f800000
005772d1  6a00                      PUSH 0x0
005772d3  6a02                      PUSH 0x2
005772d5  51                        PUSH ECX
005772d6  c704240000803f            MOV dword ptr [ESP],0x3f800000
005772dd  8bcf                      MOV ECX,EDI
005772df  6831010000                PUSH 0x131
005772e4  e8b7f81500                CALL 0x006d6ba0
005772e9  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
005772f0  6a00                      PUSH 0x0
005772f2  57                        PUSH EDI
005772f3  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005772fd  660f6ec8                  MOVD XMM1,EAX
00577301  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00577307  0f5bc9                    CVTDQ2PS XMM1,XMM1
0057730a  50                        PUSH EAX
0057730b  6a2d                      PUSH 0x2d
0057730d  51                        PUSH ECX
0057730e  8d873c030000              LEA EAX,[EDI + 0x33c]
00577314  c78534ffffff00000000      MOV dword ptr [EBP + 0xffffff34],0x0
0057731e  c78538ffffff0000c0c1      MOV dword ptr [EBP + 0xffffff38],0xc1c00000
00577328  0f28c1                    MOVAPS XMM0,XMM1
0057732b  f30f590db4a9ba00          MULSS XMM1,dword ptr [0x00baa9b4]
00577333  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
0057733b  f30f5c0d78aaba00          SUBSS XMM1,dword ptr [0x00baaa78]
00577343  f30f5c0578aaba00          SUBSS XMM0,dword ptr [0x00baaa78]
0057734b  f30f110c24                MOVSS dword ptr [ESP],XMM1
00577350  50                        PUSH EAX
00577351  6a01                      PUSH 0x1
00577353  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0057735b  e8b07f3f00                CALL 0x0096f310
00577360  83c41c                    ADD ESP,0x1c
00577363  8bf0                      MOV ESI,EAX
00577365  6683bfc00b000001          CMP word ptr [EDI + 0xbc0],0x1
0057736d  750a                      JNZ 0x00577379
0057736f  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
00577377  eb08                      JMP 0x00577381
00577379  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
00577381  8b06                      MOV EAX,dword ptr [ESI]
00577383  8bce                      MOV ECX,ESI
00577385  6a01                      PUSH 0x1
00577387  6a00                      PUSH 0x0
00577389  68ff000000                PUSH 0xff
0057738e  6aff                      PUSH -0x1
00577390  68d04dc300                PUSH 0xc34dd0
00577395  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
0057739d  ff503c                    CALL dword ptr [EAX + 0x3c]
005773a0  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
005773a6  8d87c0030000              LEA EAX,[EDI + 0x3c0]
005773ac  85c9                      TEST ECX,ECX
005773ae  741e                      JZ 0x005773ce
005773b0  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
005773b6  81c1cc030000              ADD ECX,0x3cc
005773bc  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
005773c2  50                        PUSH EAX
005773c3  e8487ef5ff                CALL 0x004cf210
005773c8  8d87c0030000              LEA EAX,[EDI + 0x3c0]
005773ce  50                        PUSH EAX
005773cf  8bce                      MOV ECX,ESI
005773d1  8930                      MOV dword ptr [EAX],ESI
005773d3  e81869f5ff                CALL 0x004cdcf0
005773d8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005773dc  740d                      JZ 0x005773eb
005773de  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005773e5  0f8583100000              JNZ 0x0057846e
005773eb  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005773f5  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005773ff  e85c7b1700                CALL 0x006eef60
00577404  33d2                      XOR EDX,EDX
00577406  b93c000000                MOV ECX,0x3c
0057740b  f7f1                      DIV ECX
0057740d  03d1                      ADD EDX,ECX
0057740f  8997a40b0000              MOV dword ptr [EDI + 0xba4],EDX
00577415  e954100000                JMP 0x0057846e
0057741a  c7876c0300009a99193f      MOV dword ptr [EDI + 0x36c],0x3f19999a
00577424  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00577428  7444                      JZ 0x0057746e
0057742a  8d4f78                    LEA ECX,[EDI + 0x78]
0057742d  68f0d3b100                PUSH 0xb1d3f0
00577432  e89939e9ff                CALL 0x0040add0
00577437  84c0                      TEST AL,AL
00577439  7433                      JZ 0x0057746e
0057743b  51                        PUSH ECX
0057743c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00577443  6a00                      PUSH 0x0
00577445  6a02                      PUSH 0x2
00577447  51                        PUSH ECX
00577448  c704240000803f            MOV dword ptr [ESP],0x3f800000
0057744f  8bcf                      MOV ECX,EDI
00577451  6a73                      PUSH 0x73
00577453  e848f71500                CALL 0x006d6ba0
00577458  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
00577462  c787b40b000000009041      MOV dword ptr [EDI + 0xbb4],0x41900000
0057746c  eb0d                      JMP 0x0057747b
0057746e  83bf1004000001            CMP dword ptr [EDI + 0x410],0x1
00577475  0f8573020000              JNZ 0x005776ee
0057747b  8d4f48                    LEA ECX,[EDI + 0x48]
0057747e  e8fd32e9ff                CALL 0x0040a780
00577483  83f81a                    CMP EAX,0x1a
00577486  7530                      JNZ 0x005774b8
00577488  83bf640b000007            CMP dword ptr [EDI + 0xb64],0x7
0057748f  7527                      JNZ 0x005774b8
00577491  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00577495  0f8453020000              JZ 0x005776ee
0057749b  f30f100de4a8ba00          MOVSS XMM1,dword ptr [0x00baa8e4]
005774a3  8d4f78                    LEA ECX,[EDI + 0x78]
005774a6  e85519e9ff                CALL 0x00408e00
005774ab  83bf1004000001            CMP dword ptr [EDI + 0x410],0x1
005774b2  0f8536020000              JNZ 0x005776ee
005774b8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005774bc  0f842c020000              JZ 0x005776ee
005774c2  6818d4b100                PUSH 0xb1d418
005774c7  8d4f78                    LEA ECX,[EDI + 0x78]
005774ca  e80139e9ff                CALL 0x0040add0
005774cf  84c0                      TEST AL,AL
005774d1  0f8417020000              JZ 0x005776ee
005774d7  83bf640b000007            CMP dword ptr [EDI + 0xb64],0x7
005774de  755f                      JNZ 0x0057753f
005774e0  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
005774e7  8d4f48                    LEA ECX,[EDI + 0x48]
005774ea  6a00                      PUSH 0x0
005774ec  8b0485341eb600            MOV EAX,dword ptr [EAX*0x4 + 0xb61e34]
005774f3  85c0                      TEST EAX,EAX
005774f5  7416                      JZ 0x0057750d
005774f7  50                        PUSH EAX
005774f8  e8832ee9ff                CALL 0x0040a380
005774fd  b803000000                MOV EAX,0x3
00577502  898710040000              MOV dword ptr [EDI + 0x410],EAX
00577508  e9e1010000                JMP 0x005776ee
0057750d  68f41db600                PUSH 0xb61df4
00577512  e8692ee9ff                CALL 0x0040a380
00577517  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0057751f  b804000000                MOV EAX,0x4
00577524  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0057752c  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00577534  898710040000              MOV dword ptr [EDI + 0x410],EAX
0057753a  e9af010000                JMP 0x005776ee
0057753f  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00577547  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
0057754d  0fbf97c00b0000            MOVSX EDX,word ptr [EDI + 0xbc0]
00577554  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0057755c  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
00577564  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0057756c  c7871004000002000000      MOV dword ptr [EDI + 0x410],0x2
00577576  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
0057757e  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
00577586  e8457c1000                CALL 0x0067f1d0
0057758b  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
00577593  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
00577599  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
005775a1  51                        PUSH ECX
005775a2  f30f109528ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff28]
005775aa  8bce                      MOV ECX,ESI
005775ac  f30f591504a9ba00          MULSS XMM2,dword ptr [0x00baa904]
005775b4  c7042400000000            MOV dword ptr [ESP],0x0
005775bb  0f28c8                    MOVAPS XMM1,XMM0
005775be  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
005775c6  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
005775ce  f30f588d2cffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff2c]
005775d6  f30f58c2                  ADDSS XMM0,XMM2
005775da  f30f119520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM2
005775e2  50                        PUSH EAX
005775e3  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
005775eb  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
005775f3  e868bd2900                CALL 0x00813360
005775f8  84c0                      TEST AL,AL
005775fa  0f8485000000              JZ 0x00577685
00577600  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00577608  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
0057760e  f30f58852cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff2c]
00577616  f30f109530ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff30]
0057761e  f30f589520ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff20]
00577626  51                        PUSH ECX
00577627  c7042400000000            MOV dword ptr [ESP],0x0
0057762e  8bce                      MOV ECX,ESI
00577630  0f28c8                    MOVAPS XMM1,XMM0
00577633  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0057763b  f30f588d3cffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff3c]
00577643  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0057764b  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
00577653  f30f58c2                  ADDSS XMM0,XMM2
00577657  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
0057765f  50                        PUSH EAX
00577660  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
00577668  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
00577670  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00577678  e8e3bc2900                CALL 0x00813360
0057767d  84c0                      TEST AL,AL
0057767f  0f857bffffff              JNZ 0x00577600
00577685  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
0057768b  8bce                      MOV ECX,ESI
0057768d  50                        PUSH EAX
0057768e  e8fdb52900                CALL 0x00812c90
00577693  99                        CDQ
00577694  f77e0c                    IDIV dword ptr [ESI + 0xc]
00577697  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0057769f  660f6ec0                  MOVD XMM0,EAX
005776a3  660f6eca                  MOVD XMM1,EDX
005776a7  0f5bc9                    CVTDQ2PS XMM1,XMM1
005776aa  0f5bc0                    CVTDQ2PS XMM0,XMM0
005776ad  f30f59ca                  MULSS XMM1,XMM2
005776b1  f30f59c2                  MULSS XMM0,XMM2
005776b5  f30f58ca                  ADDSS XMM1,XMM2
005776b9  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
005776c1  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
005776c9  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005776d1  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
005776d8  83c002                    ADD EAX,0x2
005776db  2503000080                AND EAX,0x80000003
005776e0  7905                      JNS 0x005776e7
005776e2  48                        DEC EAX
005776e3  83c8fc                    OR EAX,0xfffffffc
005776e6  40                        INC EAX
005776e7  668987c00b0000            MOV word ptr [EDI + 0xbc0],AX
005776ee  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005776f4  83f801                    CMP EAX,0x1
005776f7  0f8517010000              JNZ 0x00577814
005776fd  0fbf97c00b0000            MOVSX EDX,word ptr [EDI + 0xbc0]
00577704  8d8d34ffffff              LEA ECX,[EBP + 0xffffff34]
0057770a  e8c17a1000                CALL 0x0067f1d0
0057770f  f30f1097b40b0000          MOVSS XMM2,dword ptr [EDI + 0xbb4]
00577717  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
0057771f  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00577727  f30f59c2                  MULSS XMM0,XMM2
0057772b  f30f59c1                  MULSS XMM0,XMM1
0057772f  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00577737  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0057773f  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
00577747  f30f59c2                  MULSS XMM0,XMM2
0057774b  f30f59c1                  MULSS XMM0,XMM1
0057774f  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
00577757  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0057775f  83bf640b000006            CMP dword ptr [EDI + 0xb64],0x6
00577766  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0057776e  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00577776  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0057777e  f30f5cc8                  SUBSS XMM1,XMM0
00577782  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
0057778a  f30f5fc1                  MAXSS XMM0,XMM1
0057778e  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00577796  0f85f4070000              JNZ 0x00577f90
0057779c  8d4f48                    LEA ECX,[EDI + 0x48]
0057779f  e8dc2fe9ff                CALL 0x0040a780
005777a4  83f850                    CMP EAX,0x50
005777a7  0f8de3070000              JGE 0x00577f90
005777ad  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
005777b3  8bce                      MOV ECX,ESI
005777b5  50                        PUSH EAX
005777b6  e845b52900                CALL 0x00812d00
005777bb  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
005777c3  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005777cb  f30f5c4804                SUBSS XMM1,dword ptr [EAX + 0x4]
005777d0  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
005777d4  f30f598d38ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff38]
005777dc  f30f598534ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff34]
005777e4  f30f58c8                  ADDSS XMM1,XMM0
005777e8  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
005777ef  0f869b070000              JBE 0x00577f90
005777f5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005777f9  0f84a4070000              JZ 0x00577fa3
005777ff  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
00577807  8d4f78                    LEA ECX,[EDI + 0x78]
0057780a  e8f115e9ff                CALL 0x00408e00
0057780f  e97c070000                JMP 0x00577f90
00577814  83f802                    CMP EAX,0x2
00577817  0f8506010000              JNZ 0x00577923
0057781d  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00577825  f30f100d34a8ba00          MOVSS XMM1,dword ptr [0x00baa834]
0057782d  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
00577835  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0057783d  f30f5887b40b0000          ADDSS XMM0,dword ptr [EDI + 0xbb4]
00577845  f30f5dc8                  MINSS XMM1,XMM0
00577849  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
00577851  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
00577859  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
00577861  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
00577869  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
00577871  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00577879  f30f5915d0a0ba00          MULSS XMM2,dword ptr [0x00baa0d0]
00577881  f30f590dd0a0ba00          MULSS XMM1,dword ptr [0x00baa0d0]
00577889  f30f119520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM2
00577891  0f28c1                    MOVAPS XMM0,XMM1
00577894  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
0057789c  f30f59c1                  MULSS XMM0,XMM1
005778a0  0f28ca                    MOVAPS XMM1,XMM2
005778a3  f30f59ca                  MULSS XMM1,XMM2
005778a7  f30f58c1                  ADDSS XMM0,XMM1
005778ab  e8a0e1ebff                CALL 0x00435a50
005778b0  f30f10ad2cffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff2c]
005778b8  0f2fc5                    COMISS XMM0,XMM5
005778bb  f30f109d20ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff20]
005778c3  f30f10a53cffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff3c]
005778cb  0f28d3                    MOVAPS XMM2,XMM3
005778ce  0f28cc                    MOVAPS XMM1,XMM4
005778d1  761b                      JBE 0x005778ee
005778d3  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005778da  7612                      JBE 0x005778ee
005778dc  0f28cd                    MOVAPS XMM1,XMM5
005778df  f30f5ec8                  DIVSS XMM1,XMM0
005778e3  0f28d1                    MOVAPS XMM2,XMM1
005778e6  f30f59cc                  MULSS XMM1,XMM4
005778ea  f30f59d3                  MULSS XMM2,XMM3
005778ee  f30f59951cffffff          MULSS XMM2,dword ptr [EBP + 0xffffff1c]
005778f6  f30f598d1cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff1c]
005778fe  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
00577906  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0057790e  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00577916  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0057791e  e96d060000                JMP 0x00577f90
00577923  83f803                    CMP EAX,0x3
00577926  0f85bb000000              JNZ 0x005779e7
0057792c  0fbf97c00b0000            MOVSX EDX,word ptr [EDI + 0xbc0]
00577933  8d8d34ffffff              LEA ECX,[EBP + 0xffffff34]
00577939  e892781000                CALL 0x0067f1d0
0057793e  f30f1097b40b0000          MOVSS XMM2,dword ptr [EDI + 0xbb4]
00577946  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
0057794e  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00577956  f30f59c2                  MULSS XMM0,XMM2
0057795a  f30f599538ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff38]
00577962  f30f59c1                  MULSS XMM0,XMM1
00577966  f30f59d1                  MULSS XMM2,XMM1
0057796a  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00577972  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0057797a  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00577982  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0057798a  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00577992  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0057799a  f30f58c0                  ADDSS XMM0,XMM0
0057799e  f30f5cc8                  SUBSS XMM1,XMM0
005779a2  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
005779aa  f30f5fc1                  MAXSS XMM0,XMM1
005779ae  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
005779b6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005779ba  740d                      JZ 0x005779c9
005779bc  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005779c3  0f85c7050000              JNZ 0x00577f90
005779c9  6a00                      PUSH 0x0
005779cb  68f41db600                PUSH 0xb61df4
005779d0  8d4f48                    LEA ECX,[EDI + 0x48]
005779d3  e8a829e9ff                CALL 0x0040a380
005779d8  c7871004000004000000      MOV dword ptr [EDI + 0x410],0x4
005779e2  e9a9050000                JMP 0x00577f90
005779e7  83f804                    CMP EAX,0x4
005779ea  0f85a0050000              JNZ 0x00577f90
005779f0  0fbf97c00b0000            MOVSX EDX,word ptr [EDI + 0xbc0]
005779f7  8d8d34ffffff              LEA ECX,[EBP + 0xffffff34]
005779fd  e8ce771000                CALL 0x0067f1d0
00577a02  f30f1097b40b0000          MOVSS XMM2,dword ptr [EDI + 0xbb4]
00577a0a  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
00577a10  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00577a18  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00577a1e  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00577a26  8d7748                    LEA ESI,[EDI + 0x48]
00577a29  0f28ca                    MOVAPS XMM1,XMM2
00577a2c  c78520ffffff0000803f      MOV dword ptr [EBP + 0xffffff20],0x3f800000
00577a36  f30f598d34ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff34]
00577a3e  68dcd2b100                PUSH 0xb1d2dc
00577a43  f30f599538ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff38]
00577a4b  f30f59c8                  MULSS XMM1,XMM0
00577a4f  f30f59d0                  MULSS XMM2,XMM0
00577a53  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
00577a5b  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00577a63  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00577a6b  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00577a73  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
00577a7b  f30f5c879c030000          SUBSS XMM0,dword ptr [EDI + 0x39c]
00577a83  0f2fd8                    COMISS XMM3,XMM0
00577a86  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00577a8e  0f46c1                    CMOVBE EAX,ECX
00577a91  8bce                      MOV ECX,ESI
00577a93  8b00                      MOV EAX,dword ptr [EAX]
00577a95  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
00577a9b  e89035e9ff                CALL 0x0040b030
00577aa0  84c0                      TEST AL,AL
00577aa2  0f8482010000              JZ 0x00577c2a
00577aa8  51                        PUSH ECX
00577aa9  c704240000803f            MOV dword ptr [ESP],0x3f800000
00577ab0  6a00                      PUSH 0x0
00577ab2  6a02                      PUSH 0x2
00577ab4  51                        PUSH ECX
00577ab5  c704240000803f            MOV dword ptr [ESP],0x3f800000
00577abc  8bcf                      MOV ECX,EDI
00577abe  6a68                      PUSH 0x68
00577ac0  e8dbf01500                CALL 0x006d6ba0
00577ac5  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00577acb  e86074ecff                CALL 0x0043ef30
00577ad0  68284ec300                PUSH 0xc34e28
00577ad5  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00577adb  c745d402000000            MOV dword ptr [EBP + -0x2c],0x2
00577ae2  e809f7e8ff                CALL 0x004071f0
00577ae7  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00577aed  c78534ffffff00002041      MOV dword ptr [EBP + 0xffffff34],0x41200000
00577af7  50                        PUSH EAX
00577af8  6a07                      PUSH 0x7
00577afa  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00577b00  c78538ffffff00000000      MOV dword ptr [EBP + 0xffffff38],0x0
00577b0a  50                        PUSH EAX
00577b0b  8d873c030000              LEA EAX,[EDI + 0x33c]
00577b11  8bcf                      MOV ECX,EDI
00577b13  50                        PUSH EAX
00577b14  e8c7371500                CALL 0x006cb2e0
00577b19  6a03                      PUSH 0x3
00577b1b  6a21                      PUSH 0x21
00577b1d  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00577b23  8bcf                      MOV ECX,EDI
00577b25  50                        PUSH EAX
00577b26  e835911500                CALL 0x006d0c60
00577b2b  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
00577b32  33f6                      XOR ESI,ESI
00577b34  8b8d18ffffff              MOV ECX,dword ptr [EBP + 0xffffff18]
00577b3a  89b53cffffff              MOV dword ptr [EBP + 0xffffff3c],ESI
00577b40  85c9                      TEST ECX,ECX
00577b42  0f8471020000              JZ 0x00577db9
00577b48  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
00577b4e  6690                      NOP
00577b50  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
00577b53  85f6                      TEST ESI,ESI
00577b55  0f84b5000000              JZ 0x00577c10
00577b5b  a17816c700                MOV EAX,[0x00c71678]
00577b60  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00577b67  7c06                      JL 0x00577b6f
00577b69  837e2801                  CMP dword ptr [ESI + 0x28],0x1
00577b6d  7411                      JZ 0x00577b80
00577b6f  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
00577b72  83e80a                    SUB EAX,0xa
00577b75  3ddd030000                CMP EAX,0x3dd
00577b7a  0f878a000000              JA 0x00577c0a
00577b80  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
00577b83  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
00577b86  0f857e000000              JNZ 0x00577c0a
00577b8c  83be640b000008            CMP dword ptr [ESI + 0xb64],0x8
00577b93  7575                      JNZ 0x00577c0a
00577b95  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
00577b9b  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
00577ba1  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
00577ba7  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00577bad  50                        PUSH EAX
00577bae  6a07                      PUSH 0x7
00577bb0  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00577bb6  898d28ffffff              MOV dword ptr [EBP + 0xffffff28],ECX
00577bbc  50                        PUSH EAX
00577bbd  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
00577bc3  c78534ffffff00002041      MOV dword ptr [EBP + 0xffffff34],0x41200000
00577bcd  50                        PUSH EAX
00577bce  8bcf                      MOV ECX,EDI
00577bd0  c78538ffffff00000000      MOV dword ptr [EBP + 0xffffff38],0x0
00577bda  e801371500                CALL 0x006cb2e0
00577bdf  6a01                      PUSH 0x1
00577be1  68dcd2b100                PUSH 0xb1d2dc
00577be6  8d4e48                    LEA ECX,[ESI + 0x48]
00577be9  e8022fe9ff                CALL 0x0040aaf0
00577bee  84c0                      TEST AL,AL
00577bf0  7412                      JZ 0x00577c04
00577bf2  8d8e98000000              LEA ECX,[ESI + 0x98]
00577bf8  e8b325e9ff                CALL 0x0040a1b0
00577bfd  c686ac00000001            MOV byte ptr [ESI + 0xac],0x1
00577c04  8b8d18ffffff              MOV ECX,dword ptr [EBP + 0xffffff18]
00577c0a  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
00577c10  8bb53cffffff              MOV ESI,dword ptr [EBP + 0xffffff3c]
00577c16  46                        INC ESI
00577c17  89b53cffffff              MOV dword ptr [EBP + 0xffffff3c],ESI
00577c1d  3bf1                      CMP ESI,ECX
00577c1f  0f822bffffff              JC 0x00577b50
00577c25  e98f010000                JMP 0x00577db9
00577c2a  687cddb100                PUSH 0xb1dd7c
00577c2f  8bce                      MOV ECX,ESI
00577c31  e8fa33e9ff                CALL 0x0040b030
00577c36  84c0                      TEST AL,AL
00577c38  0f8490010000              JZ 0x00577dce
00577c3e  51                        PUSH ECX
00577c3f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00577c46  6a00                      PUSH 0x0
00577c48  6a02                      PUSH 0x2
00577c4a  51                        PUSH ECX
00577c4b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00577c52  8bcf                      MOV ECX,EDI
00577c54  6a6a                      PUSH 0x6a
00577c56  e845ef1500                CALL 0x006d6ba0
00577c5b  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00577c61  e8ca72ecff                CALL 0x0043ef30
00577c66  68284ec300                PUSH 0xc34e28
00577c6b  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00577c71  c745d402000000            MOV dword ptr [EBP + -0x2c],0x2
00577c78  e873f5e8ff                CALL 0x004071f0
00577c7d  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00577c83  c78534ffffff00002041      MOV dword ptr [EBP + 0xffffff34],0x41200000
00577c8d  50                        PUSH EAX
00577c8e  6a06                      PUSH 0x6
00577c90  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00577c96  c78538ffffff00000000      MOV dword ptr [EBP + 0xffffff38],0x0
00577ca0  50                        PUSH EAX
00577ca1  8d873c030000              LEA EAX,[EDI + 0x33c]
00577ca7  8bcf                      MOV ECX,EDI
00577ca9  50                        PUSH EAX
00577caa  e831361500                CALL 0x006cb2e0
00577caf  6a03                      PUSH 0x3
00577cb1  6a21                      PUSH 0x21
00577cb3  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00577cb9  8bcf                      MOV ECX,EDI
00577cbb  50                        PUSH EAX
00577cbc  e89f8f1500                CALL 0x006d0c60
00577cc1  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
00577cc8  33f6                      XOR ESI,ESI
00577cca  8b8d18ffffff              MOV ECX,dword ptr [EBP + 0xffffff18]
00577cd0  89b53cffffff              MOV dword ptr [EBP + 0xffffff3c],ESI
00577cd6  85c9                      TEST ECX,ECX
00577cd8  0f84db000000              JZ 0x00577db9
00577cde  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
00577ce4  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
00577ce7  85f6                      TEST ESI,ESI
00577ce9  0f84b5000000              JZ 0x00577da4
00577cef  a17816c700                MOV EAX,[0x00c71678]
00577cf4  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00577cfb  7c06                      JL 0x00577d03
00577cfd  837e2801                  CMP dword ptr [ESI + 0x28],0x1
00577d01  7411                      JZ 0x00577d14
00577d03  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
00577d06  83e80a                    SUB EAX,0xa
00577d09  3ddd030000                CMP EAX,0x3dd
00577d0e  0f878a000000              JA 0x00577d9e
00577d14  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
00577d17  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
00577d1a  0f857e000000              JNZ 0x00577d9e
00577d20  83be640b000008            CMP dword ptr [ESI + 0xb64],0x8
00577d27  7575                      JNZ 0x00577d9e
00577d29  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
00577d2f  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
00577d35  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
00577d3b  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00577d41  50                        PUSH EAX
00577d42  6a06                      PUSH 0x6
00577d44  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00577d4a  898d28ffffff              MOV dword ptr [EBP + 0xffffff28],ECX
00577d50  50                        PUSH EAX
00577d51  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
00577d57  c78534ffffff00002041      MOV dword ptr [EBP + 0xffffff34],0x41200000
00577d61  50                        PUSH EAX
00577d62  8bcf                      MOV ECX,EDI
00577d64  c78538ffffff00000000      MOV dword ptr [EBP + 0xffffff38],0x0
00577d6e  e86d351500                CALL 0x006cb2e0
00577d73  6a01                      PUSH 0x1
00577d75  68dcd2b100                PUSH 0xb1d2dc
00577d7a  8d4e48                    LEA ECX,[ESI + 0x48]
00577d7d  e86e2de9ff                CALL 0x0040aaf0
00577d82  84c0                      TEST AL,AL
00577d84  7412                      JZ 0x00577d98
00577d86  8d8e98000000              LEA ECX,[ESI + 0x98]
00577d8c  e81f24e9ff                CALL 0x0040a1b0
00577d91  c686ac00000001            MOV byte ptr [ESI + 0xac],0x1
00577d98  8b8d18ffffff              MOV ECX,dword ptr [EBP + 0xffffff18]
00577d9e  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
00577da4  8bb53cffffff              MOV ESI,dword ptr [EBP + 0xffffff3c]
00577daa  46                        INC ESI
00577dab  89b53cffffff              MOV dword ptr [EBP + 0xffffff3c],ESI
00577db1  3bf1                      CMP ESI,ECX
00577db3  0f822bffffff              JC 0x00577ce4
00577db9  8d8d0cffffff              LEA ECX,[EBP + 0xffffff0c]
00577dbf  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00577dc6  e8e5f7e9ff                CALL 0x004175b0
00577dcb  8d7748                    LEA ESI,[EDI + 0x48]
00577dce  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00577dd2  740d                      JZ 0x00577de1
00577dd4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00577ddb  0f85af010000              JNZ 0x00577f90
00577de1  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
00577de8  8bce                      MOV ECX,ESI
00577dea  6a01                      PUSH 0x1
00577dec  ff3485441eb600            PUSH dword ptr [EAX*0x4 + 0xb61e44]
00577df3  e88825e9ff                CALL 0x0040a380
00577df8  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00577e00  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
00577e06  0fbf97c00b0000            MOVSX EDX,word ptr [EDI + 0xbc0]
00577e0d  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00577e15  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
00577e1d  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00577e25  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
00577e2d  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
00577e35  e896731000                CALL 0x0067f1d0
00577e3a  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
00577e42  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
00577e48  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00577e50  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
00577e56  f30f108d28ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff28]
00577e5e  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
00577e66  51                        PUSH ECX
00577e67  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
00577e6f  8bce                      MOV ECX,ESI
00577e71  f30f58852cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff2c]
00577e79  c7042400000000            MOV dword ptr [ESP],0x0
00577e80  50                        PUSH EAX
00577e81  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
00577e89  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00577e91  0f28c1                    MOVAPS XMM0,XMM1
00577e94  f30f588530ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff30]
00577e9c  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00577ea4  e8b7b42900                CALL 0x00813360
00577ea9  84c0                      TEST AL,AL
00577eab  0f8480000000              JZ 0x00577f31
00577eb1  f30f108d20ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff20]
00577eb9  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
00577ebf  f30f588d2cffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff2c]
00577ec7  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
00577ecf  f30f589530ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff30]
00577ed7  51                        PUSH ECX
00577ed8  c7042400000000            MOV dword ptr [ESP],0x0
00577edf  8bce                      MOV ECX,ESI
00577ee1  0f28c1                    MOVAPS XMM0,XMM1
00577ee4  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
00577eec  f30f588520ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff20]
00577ef4  50                        PUSH EAX
00577ef5  f30f118d34ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM1
00577efd  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
00577f05  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
00577f0d  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00577f15  0f28c2                    MOVAPS XMM0,XMM2
00577f18  f30f58853cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff3c]
00577f20  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00577f28  e833b42900                CALL 0x00813360
00577f2d  84c0                      TEST AL,AL
00577f2f  7580                      JNZ 0x00577eb1
00577f31  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00577f37  8bce                      MOV ECX,ESI
00577f39  50                        PUSH EAX
00577f3a  e851ad2900                CALL 0x00812c90
00577f3f  50                        PUSH EAX
00577f40  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00577f46  8bce                      MOV ECX,ESI
00577f48  50                        PUSH EAX
00577f49  e8b2af2900                CALL 0x00812f00
00577f4e  8b08                      MOV ECX,dword ptr [EAX]
00577f50  898f34030000              MOV dword ptr [EDI + 0x334],ECX
00577f56  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00577f59  898738030000              MOV dword ptr [EDI + 0x338],EAX
00577f5f  0fbf87c00b0000            MOVSX EAX,word ptr [EDI + 0xbc0]
00577f66  83c002                    ADD EAX,0x2
00577f69  2503000080                AND EAX,0x80000003
00577f6e  7905                      JNS 0x00577f75
00577f70  48                        DEC EAX
00577f71  83c8fc                    OR EAX,0xfffffffc
00577f74  40                        INC EAX
00577f75  6a5a                      PUSH 0x5a
00577f77  8d4f48                    LEA ECX,[EDI + 0x48]
00577f7a  668987c00b0000            MOV word ptr [EDI + 0xbc0],AX
00577f81  e89a27e9ff                CALL 0x0040a720
00577f86  c7871004000002000000      MOV dword ptr [EDI + 0x410],0x2
00577f90  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00577f94  740d                      JZ 0x00577fa3
00577f96  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00577f9d  0f85cb040000              JNZ 0x0057846e
00577fa3  8a87c20b0000              MOV AL,byte ptr [EDI + 0xbc2]
00577fa9  f6d8                      NEG AL
00577fab  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00577fb5  8887c20b0000              MOV byte ptr [EDI + 0xbc2],AL
00577fbb  c787a00b00003c000000      MOV dword ptr [EDI + 0xba0],0x3c
00577fc5  e990040000                JMP 0x0057845a
00577fca  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00577fd2  8d4f48                    LEA ECX,[EDI + 0x48]
00577fd5  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00577fdd  68d4d2b100                PUSH 0xb1d2d4
00577fe2  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00577fea  e84130e9ff                CALL 0x0040b030
00577fef  84c0                      TEST AL,AL
00577ff1  741d                      JZ 0x00578010
00577ff3  51                        PUSH ECX
00577ff4  c704240000803f            MOV dword ptr [ESP],0x3f800000
00577ffb  6a00                      PUSH 0x0
00577ffd  6a02                      PUSH 0x2
00577fff  51                        PUSH ECX
00578000  c704240000803f            MOV dword ptr [ESP],0x3f800000
00578007  8bcf                      MOV ECX,EDI
00578009  6a74                      PUSH 0x74
0057800b  e890eb1500                CALL 0x006d6ba0
00578010  68dcd2b100                PUSH 0xb1d2dc
00578015  8d4f48                    LEA ECX,[EDI + 0x48]
00578018  e81330e9ff                CALL 0x0040b030
0057801d  84c0                      TEST AL,AL
0057801f  7463                      JZ 0x00578084
00578021  51                        PUSH ECX
00578022  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00578028  c7042400000000            MOV dword ptr [ESP],0x0
0057802f  50                        PUSH EAX
00578030  8bce                      MOV ECX,ESI
00578032  e899692a00                CALL 0x0081e9d0
00578037  e8246f1700                CALL 0x006eef60
0057803c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00578042  50                        PUSH EAX
00578043  6a00                      PUSH 0x0
00578045  57                        PUSH EDI
00578046  6840b6c700                PUSH 0xc7b640
0057804b  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00578051  50                        PUSH EAX
00578052  6a02                      PUSH 0x2
00578054  68f0000000                PUSH 0xf0
00578059  e8c20aebff                CALL 0x00428b20
0057805e  8bc8                      MOV ECX,EAX
00578060  8b10                      MOV EDX,dword ptr [EAX]
00578062  ff520c                    CALL dword ptr [EDX + 0xc]
00578065  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0057806d  51                        PUSH ECX
0057806e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00578075  6a00                      PUSH 0x0
00578077  6a02                      PUSH 0x2
00578079  51                        PUSH ECX
0057807a  6809010000                PUSH 0x109
0057807f  e8bce83d00                CALL 0x00956940
00578084  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00578088  740d                      JZ 0x00578097
0057808a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00578091  0f85d7030000              JNZ 0x0057846e
00578097  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005780a1  e9b4030000                JMP 0x0057845a
005780a6  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005780ae  8d4f48                    LEA ECX,[EDI + 0x48]
005780b1  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
005780b9  68d4d2b100                PUSH 0xb1d2d4
005780be  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005780c6  e8652fe9ff                CALL 0x0040b030
005780cb  84c0                      TEST AL,AL
005780cd  742a                      JZ 0x005780f9
005780cf  51                        PUSH ECX
005780d0  c704240000803f            MOV dword ptr [ESP],0x3f800000
005780d7  6a00                      PUSH 0x0
005780d9  6a02                      PUSH 0x2
005780db  51                        PUSH ECX
005780dc  c704240000803f            MOV dword ptr [ESP],0x3f800000
005780e3  8bcf                      MOV ECX,EDI
005780e5  6a74                      PUSH 0x74
005780e7  e8b4ea1500                CALL 0x006d6ba0
005780ec  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005780f2  6a08                      PUSH 0x8
005780f4  e877b51800                CALL 0x00703670
005780f9  68dcd2b100                PUSH 0xb1d2dc
005780fe  8d4f48                    LEA ECX,[EDI + 0x48]
00578101  e88a2fe9ff                CALL 0x0040b090
00578106  84c0                      TEST AL,AL
00578108  0f8476ffffff              JZ 0x00578084
0057810e  6a03                      PUSH 0x3
00578110  6a21                      PUSH 0x21
00578112  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00578118  8bcf                      MOV ECX,EDI
0057811a  50                        PUSH EAX
0057811b  e8408b1500                CALL 0x006d0c60
00578120  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
00578127  8bb530ffffff              MOV ESI,dword ptr [EBP + 0xffffff30]
0057812d  85f6                      TEST ESI,ESI
0057812f  0f8ea7000000              JLE 0x005781dc
00578135  c78520ffffff06000000      MOV dword ptr [EBP + 0xffffff20],0x6
0057813f  90                        NOP
00578140  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00578146  8bc1                      MOV EAX,ECX
00578148  99                        CDQ
00578149  f7bd20ffffff              IDIV dword ptr [EBP + 0xffffff20]
0057814f  8d4101                    LEA EAX,[ECX + 0x1]
00578152  898710040000              MOV dword ptr [EDI + 0x410],EAX
00578158  85d2                      TEST EDX,EDX
0057815a  0f8573000000              JNZ 0x005781d3
00578160  399518ffffff              CMP dword ptr [EBP + 0xffffff18],EDX
00578166  0f8667000000              JBE 0x005781d3
0057816c  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
00578172  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
00578175  85c9                      TEST ECX,ECX
00578177  7440                      JZ 0x005781b9
00578179  a17816c700                MOV EAX,[0x00c71678]
0057817e  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00578185  7c06                      JL 0x0057818d
00578187  83792801                  CMP dword ptr [ECX + 0x28],0x1
0057818b  740d                      JZ 0x0057819a
0057818d  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
00578190  83e80a                    SUB EAX,0xa
00578193  3ddd030000                CMP EAX,0x3dd
00578198  7719                      JA 0x005781b3
0057819a  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
0057819d  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
005781a0  7511                      JNZ 0x005781b3
005781a2  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005781aa  0f2f8180030000            COMISS XMM0,dword ptr [ECX + 0x380]
005781b1  7311                      JNC 0x005781c4
005781b3  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
005781b9  42                        INC EDX
005781ba  3b9518ffffff              CMP EDX,dword ptr [EBP + 0xffffff18]
005781c0  72b0                      JC 0x00578172
005781c2  eb0f                      JMP 0x005781d3
005781c4  8b01                      MOV EAX,dword ptr [ECX]
005781c6  c781640b000009000000      MOV dword ptr [ECX + 0xb64],0x9
005781d0  ff500c                    CALL dword ptr [EAX + 0xc]
005781d3  83ee01                    SUB ESI,0x1
005781d6  0f8564ffffff              JNZ 0x00578140
005781dc  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005781e3  80bd0cffffff00            CMP byte ptr [EBP + 0xffffff0c],0x0
005781ea  0f8594feffff              JNZ 0x00578084
005781f0  c745fc05000000            MOV dword ptr [EBP + -0x4],0x5
005781f7  b101                      MOV CL,0x1
005781f9  8b9510ffffff              MOV EDX,dword ptr [EBP + 0xffffff10]
005781ff  6a00                      PUSH 0x0
00578201  6a00                      PUSH 0x0
00578203  e8a8c64e00                CALL 0x00a648b0
00578208  83c408                    ADD ESP,0x8
0057820b  e974feffff                JMP 0x00578084
00578210  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00578218  8d4f48                    LEA ECX,[EDI + 0x48]
0057821b  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00578223  68f0d3b100                PUSH 0xb1d3f0
00578228  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00578230  e8fb2de9ff                CALL 0x0040b030
00578235  84c0                      TEST AL,AL
00578237  7437                      JZ 0x00578270
00578239  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
0057823f  8bce                      MOV ECX,ESI
00578241  50                        PUSH EAX
00578242  e8b9aa2900                CALL 0x00812d00
00578247  8b08                      MOV ECX,dword ptr [EAX]
00578249  898f34030000              MOV dword ptr [EDI + 0x334],ECX
0057824f  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00578252  898738030000              MOV dword ptr [EDI + 0x338],EAX
00578258  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00578260  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
00578268  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00578270  68f0d3b100                PUSH 0xb1d3f0
00578275  8d4f48                    LEA ECX,[EDI + 0x48]
00578278  e8132ee9ff                CALL 0x0040b090
0057827d  84c0                      TEST AL,AL
0057827f  0f8479000000              JZ 0x005782fe
00578285  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0057828d  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
00578295  e816ca1000                CALL 0x00684cb0
0057829a  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
005782a2  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
005782aa  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
005782b2  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
005782ba  f30f5cd8                  SUBSS XMM3,XMM0
005782be  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
005782c6  f30f5cd0                  SUBSS XMM2,XMM0
005782ca  f30f59d3                  MULSS XMM2,XMM3
005782ce  f30f58d0                  ADDSS XMM2,XMM0
005782d2  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005782da  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005782e2  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
005782ea  f30f5cc1                  SUBSS XMM0,XMM1
005782ee  f30f59c3                  MULSS XMM0,XMM3
005782f2  f30f58c1                  ADDSS XMM0,XMM1
005782f6  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005782fe  68d4d2b100                PUSH 0xb1d2d4
00578303  8d4f48                    LEA ECX,[EDI + 0x48]
00578306  e8252de9ff                CALL 0x0040b030
0057830b  84c0                      TEST AL,AL
0057830d  0f84c3000000              JZ 0x005783d6
00578313  e8486c1700                CALL 0x006eef60
00578318  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00578320  f30f5c0594aaba00          SUBSS XMM0,dword ptr [0x00baaa94]
00578328  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0057832e  50                        PUSH EAX
0057832f  6a00                      PUSH 0x0
00578331  57                        PUSH EDI
00578332  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0057833a  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00578340  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00578348  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00578350  6840b6c700                PUSH 0xc7b640
00578355  50                        PUSH EAX
00578356  6a01                      PUSH 0x1
00578358  6897030000                PUSH 0x397
0057835d  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
00578365  e8b607ebff                CALL 0x00428b20
0057836a  8bc8                      MOV ECX,EAX
0057836c  8b10                      MOV EDX,dword ptr [EAX]
0057836e  ff520c                    CALL dword ptr [EDX + 0xc]
00578371  e8ea6b1700                CALL 0x006eef60
00578376  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0057837e  f30f580594aaba00          ADDSS XMM0,dword ptr [0x00baaa94]
00578386  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0057838c  50                        PUSH EAX
0057838d  6a00                      PUSH 0x0
0057838f  57                        PUSH EDI
00578390  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
00578398  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
0057839e  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005783a6  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
005783ae  6840b6c700                PUSH 0xc7b640
005783b3  50                        PUSH EAX
005783b4  6a01                      PUSH 0x1
005783b6  6897030000                PUSH 0x397
005783bb  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
005783c3  e85807ebff                CALL 0x00428b20
005783c8  8bc8                      MOV ECX,EAX
005783ca  c6804801000001            MOV byte ptr [EAX + 0x148],0x1
005783d1  8b10                      MOV EDX,dword ptr [EAX]
005783d3  ff520c                    CALL dword ptr [EDX + 0xc]
005783d6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005783da  740d                      JZ 0x005783e9
005783dc  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005783e3  0f8585000000              JNZ 0x0057846e
005783e9  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
005783ef  50                        PUSH EAX
005783f0  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
005783f6  50                        PUSH EAX
005783f7  8d873c030000              LEA EAX,[EDI + 0x33c]
005783fd  50                        PUSH EAX
005783fe  e89daa2900                CALL 0x00812ea0
00578403  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
00578409  85c0                      TEST EAX,EAX
0057840b  7811                      JS 0x0057841e
0057840d  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
00578410  3bc1                      CMP EAX,ECX
00578412  7d0a                      JGE 0x0057841e
00578414  837e1001                  CMP dword ptr [ESI + 0x10],0x1
00578418  7e04                      JLE 0x0057841e
0057841a  03c1                      ADD EAX,ECX
0057841c  eb03                      JMP 0x00578421
0057841e  83c8ff                    OR EAX,0xffffffff
00578421  50                        PUSH EAX
00578422  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
00578428  8bce                      MOV ECX,ESI
0057842a  50                        PUSH EAX
0057842b  e8d0aa2900                CALL 0x00812f00
00578430  8b08                      MOV ECX,dword ptr [EAX]
00578432  898f34030000              MOV dword ptr [EDI + 0x334],ECX
00578438  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0057843b  898738030000              MOV dword ptr [EDI + 0x338],EAX
00578441  b803000000                MOV EAX,0x3
00578446  668987c00b0000            MOV word ptr [EDI + 0xbc0],AX
0057844d  c687c20b0000ff            MOV byte ptr [EDI + 0xbc2],0xff
00578454  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
0057845a  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
00578464  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0057846e  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00578471  64890d00000000            MOV dword ptr FS:[0x0],ECX
00578478  59                        POP ECX
00578479  5f                        POP EDI
0057847a  5e                        POP ESI
0057847b  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0057847e  33cd                      XOR ECX,EBP
00578480  e8a66c5700                CALL 0x00aef12b
00578485  8be5                      MOV ESP,EBP
00578487  5d                        POP EBP
00578488  8be3                      MOV ESP,EBX
0057848a  5b                        POP EBX
0057848b  c3                        RET
