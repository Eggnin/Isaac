; J460 NPC AI 0x00573030 AI_00573030
; types=921
; identities=921.0.0,921.1.0
; entry=00573030
00573030  53                        PUSH EBX
00573031  8bdc                      MOV EBX,ESP
00573033  83ec08                    SUB ESP,0x8
00573036  83e4f8                    AND ESP,0xfffffff8
00573039  83c404                    ADD ESP,0x4
0057303c  55                        PUSH EBP
0057303d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00573040  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00573044  8bec                      MOV EBP,ESP
00573046  6aff                      PUSH -0x1
00573048  680d51af00                PUSH 0xaf510d
0057304d  64a100000000              MOV EAX,FS:[0x0]
00573053  50                        PUSH EAX
00573054  53                        PUSH EBX
00573055  81eca0010000              SUB ESP,0x1a0
0057305b  a1b493bf00                MOV EAX,[0x00bf93b4]
00573060  33c5                      XOR EAX,EBP
00573062  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00573065  56                        PUSH ESI
00573066  57                        PUSH EDI
00573067  50                        PUSH EAX
00573068  8d45f4                    LEA EAX,[EBP + -0xc]
0057306b  64a300000000              MOV FS:[0x0],EAX
00573071  8bf9                      MOV EDI,ECX
00573073  89bdb0feffff              MOV dword ptr [EBP + 0xfffffeb0],EDI
00573079  8b87740b0000              MOV EAX,dword ptr [EDI + 0xb74]
0057307f  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
00573085  83f804                    CMP EAX,0x4
00573088  0f84691f0000              JZ 0x00574ff7
0057308e  83f802                    CMP EAX,0x2
00573091  0f84d01e0000              JZ 0x00574f67
00573097  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0057309f  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
005730a7  f30f100d54a8ba00          MOVSS XMM1,dword ptr [0x00baa854]
005730af  0f57d2                    XORPS XMM2,XMM2
005730b2  2bf0                      SUB ESI,EAX
005730b4  e8a7961300                CALL 0x006ac760
005730b9  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
005730bf  89859cfeffff              MOV dword ptr [EBP + 0xfffffe9c],EAX
005730c5  83f903                    CMP ECX,0x3
005730c8  741b                      JZ 0x005730e5
005730ca  83f908                    CMP ECX,0x8
005730cd  7416                      JZ 0x005730e5
005730cf  83f907                    CMP ECX,0x7
005730d2  7565                      JNZ 0x00573139
005730d4  8d4f48                    LEA ECX,[EDI + 0x48]
005730d7  68dcd2b100                PUSH 0xb1d2dc
005730dc  e8af7fe9ff                CALL 0x0040b090
005730e1  84c0                      TEST AL,AL
005730e3  7554                      JNZ 0x00573139
005730e5  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
005730ed  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
005730f5  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
005730fc  723b                      JC 0x00573139
005730fe  6a00                      PUSH 0x0
00573100  8d4f48                    LEA ECX,[EDI + 0x48]
00573103  68e4d3b100                PUSH 0xb1d3e4
00573108  e87372e9ff                CALL 0x0040a380
0057310d  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00573113  8bcf                      MOV ECX,EDI
00573115  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0057311f  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
00573129  6a01                      PUSH 0x1
0057312b  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
0057312e  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
00573134  e867f8ffff                CALL 0x005729a0
00573139  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0057313f  83f810                    CMP EAX,0x10
00573142  0f87031a0000              JA 0x00574b4b
00573148  ff2485c8595700            JMP dword ptr [EAX*0x4 + 0x5759c8]
0057314f  0f280520bcba00            MOVAPS XMM0,xmmword ptr [0x00babc20]
00573156  8d4598                    LEA EAX,[EBP + -0x68]
00573159  0f114598                  MOVUPS xmmword ptr [EBP + -0x68],XMM0
0057315d  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00573163  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
0057316a  0f280580c9ba00            MOVAPS XMM0,xmmword ptr [0x00bac980]
00573171  50                        PUSH EAX
00573172  0f1145a8                  MOVUPS xmmword ptr [EBP + -0x58],XMM0
00573176  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
0057317d  c745c000000000            MOV dword ptr [EBP + -0x40],0x0
00573184  e86740e9ff                CALL 0x004071f0
00573189  6a00                      PUSH 0x0
0057318b  68801bb600                PUSH 0xb61b80
00573190  8d4f48                    LEA ECX,[EDI + 0x48]
00573193  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0057319d  c787180f00000a000000      MOV dword ptr [EDI + 0xf18],0xa
005731a7  e89477e9ff                CALL 0x0040a940
005731ac  6a01                      PUSH 0x1
005731ae  8d4f48                    LEA ECX,[EDI + 0x48]
005731b1  e86a80e9ff                CALL 0x0040b220
005731b6  6a02                      PUSH 0x2
005731b8  8d4f48                    LEA ECX,[EDI + 0x48]
005731bb  c6407400                  MOV byte ptr [EAX + 0x74],0x0
005731bf  e85c80e9ff                CALL 0x0040b220
005731c4  6aff                      PUSH -0x1
005731c6  6879030000                PUSH 0x379
005731cb  be01000000                MOV ESI,0x1
005731d0  8bcf                      MOV ECX,EDI
005731d2  c6407400                  MOV byte ptr [EAX + 0x74],0x0
005731d6  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
005731dc  50                        PUSH EAX
005731dd  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
005731e7  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
005731f1  89b5d0feffff              MOV dword ptr [EBP + 0xfffffed0],ESI
005731f7  e864da1500                CALL 0x006d0c60
005731fc  33c9                      XOR ECX,ECX
005731fe  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00573205  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
0057320b  398de0feffff              CMP dword ptr [EBP + 0xfffffee0],ECX
00573211  0f86dc000000              JBE 0x005732f3
00573217  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
0057321d  0f1f00                    NOP dword ptr [EAX]
00573220  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
00573223  85f6                      TEST ESI,ESI
00573225  0f84af000000              JZ 0x005732da
0057322b  a17816c700                MOV EAX,[0x00c71678]
00573230  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00573237  7c06                      JL 0x0057323f
00573239  837e2801                  CMP dword ptr [ESI + 0x28],0x1
0057323d  7411                      JZ 0x00573250
0057323f  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
00573242  83e80a                    SUB EAX,0xa
00573245  3ddd030000                CMP EAX,0x3dd
0057324a  0f8784000000              JA 0x005732d4
00573250  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
00573256  2500000020                AND EAX,0x20000000
0057325b  83c800                    OR EAX,0x0
0057325e  7404                      JZ 0x00573264
00573260  b201                      MOV DL,0x1
00573262  eb02                      JMP 0x00573266
00573264  32d2                      XOR DL,DL
00573266  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0057326c  2500000020                AND EAX,0x20000000
00573271  83c800                    OR EAX,0x0
00573274  7404                      JZ 0x0057327a
00573276  b001                      MOV AL,0x1
00573278  eb02                      JMP 0x0057327c
0057327a  32c0                      XOR AL,AL
0057327c  3ad0                      CMP DL,AL
0057327e  7554                      JNZ 0x005732d4
00573280  83bebc03000000            CMP dword ptr [ESI + 0x3bc],0x0
00573287  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0057328d  7545                      JNZ 0x005732d4
0057328f  50                        PUSH EAX
00573290  8bcf                      MOV ECX,EDI
00573292  8938                      MOV dword ptr [EAX],EDI
00573294  e857aaf5ff                CALL 0x004cdcf0
00573299  f30f108684030000          MOVSS XMM0,dword ptr [ESI + 0x384]
005732a1  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
005732a7  8bc1                      MOV EAX,ECX
005732a9  f30f590598a5ba00          MULSS XMM0,dword ptr [0x00baa598]
005732b1  41                        INC ECX
005732b2  898dd0feffff              MOV dword ptr [EBP + 0xfffffed0],ECX
005732b8  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
005732be  8986c40b0000              MOV dword ptr [ESI + 0xbc4],EAX
005732c4  f30f118684030000          MOVSS dword ptr [ESI + 0x384],XMM0
005732cc  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
005732d4  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
005732da  41                        INC ECX
005732db  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
005732e1  3b8de0feffff              CMP ECX,dword ptr [EBP + 0xfffffee0]
005732e7  0f8233ffffff              JC 0x00573220
005732ed  8bb5d0feffff              MOV ESI,dword ptr [EBP + 0xfffffed0]
005732f3  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
005732f9  89b7c00b0000              MOV dword ptr [EDI + 0xbc0],ESI
005732ff  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00573306  e8a542eaff                CALL 0x004175b0
0057330b  e93b180000                JMP 0x00574b4b
00573310  6a00                      PUSH 0x0
00573312  8d4f48                    LEA ECX,[EDI + 0x48]
00573315  6854bcb100                PUSH 0xb1bc54
0057331a  e86170e9ff                CALL 0x0040a380
0057331f  8d8f14040000              LEA ECX,[EDI + 0x414]
00573325  6a00                      PUSH 0x0
00573327  e824332700                CALL 0x007e6650
0057332c  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00573332  85c0                      TEST EAX,EAX
00573334  7808                      JS 0x0057333e
00573336  03c6                      ADD EAX,ESI
00573338  898710040000              MOV dword ptr [EDI + 0x410],EAX
0057333e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00573346  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0057334e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00573356  83f80f                    CMP EAX,0xf
00573359  7f08                      JG 0x00573363
0057335b  85c0                      TEST EAX,EAX
0057335d  0f89e8170000              JNS 0x00574b4b
00573363  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
00573369  89b5bcfeffff              MOV dword ptr [EBP + 0xfffffebc],ESI
0057336f  85f6                      TEST ESI,ESI
00573371  7409                      JZ 0x0057337c
00573373  817e2879030000            CMP dword ptr [ESI + 0x28],0x379
0057337a  7418                      JZ 0x00573394
0057337c  51                        PUSH ECX
0057337d  8bcf                      MOV ECX,EDI
0057337f  e8ecf6ffff                CALL 0x00572a70
00573384  8bf0                      MOV ESI,EAX
00573386  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
0057338c  85f6                      TEST ESI,ESI
0057338e  0f84e0020000              JZ 0x00573674
00573394  f30f10a740030000          MOVSS XMM4,dword ptr [EDI + 0x340]
0057339c  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
005733a6  f30f109e40030000          MOVSS XMM3,dword ptr [ESI + 0x340]
005733ae  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
005733b6  0f28c3                    MOVAPS XMM0,XMM3
005733b9  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
005733c1  f30f5cc4                  SUBSS XMM0,XMM4
005733c5  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
005733cc  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
005733d3  0f2fd0                    COMISS XMM2,XMM0
005733d6  7607                      JBE 0x005733df
005733d8  b8e01bb600                MOV EAX,0xb61be0
005733dd  eb10                      JMP 0x005733ef
005733df  0f2fe3                    COMISS XMM4,XMM3
005733e2  b8d41bb600                MOV EAX,0xb61bd4
005733e7  b9c41bb600                MOV ECX,0xb61bc4
005733ec  0f46c1                    CMOVBE EAX,ECX
005733ef  6a00                      PUSH 0x0
005733f1  50                        PUSH EAX
005733f2  8d4f48                    LEA ECX,[EDI + 0x48]
005733f5  e8866fe9ff                CALL 0x0040a380
005733fa  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00573400  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00573406  85c9                      TEST ECX,ECX
00573408  741e                      JZ 0x00573428
0057340a  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
00573410  81c1cc030000              ADD ECX,0x3cc
00573416  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0057341c  50                        PUSH EAX
0057341d  e8eebdf5ff                CALL 0x004cf210
00573422  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00573428  50                        PUSH EAX
00573429  8bce                      MOV ECX,ESI
0057342b  8930                      MOV dword ptr [EAX],ESI
0057342d  e8bea8f5ff                CALL 0x004cdcf0
00573432  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
00573439  7d34                      JGE 0x0057346f
0057343b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0057343f  7410                      JZ 0x00573451
00573441  f30f100dcca8ba00          MOVSS XMM1,dword ptr [0x00baa8cc]
00573449  8d4f78                    LEA ECX,[EDI + 0x78]
0057344c  e8af59e9ff                CALL 0x00408e00
00573451  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00573457  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
00573461  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
00573464  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
0057346a  e9a9010000                JMP 0x00573618
0057346f  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00573475  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0057347b  c785e8feffff3c010000      MOV dword ptr [EBP + 0xfffffee8],0x13c
00573485  e8f6323e00                CALL 0x00956780
0057348a  83ec08                    SUB ESP,0x8
0057348d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00573493  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0057349b  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
005734a2  6a00                      PUSH 0x0
005734a4  6a02                      PUSH 0x2
005734a6  51                        PUSH ECX
005734a7  c704240000803f            MOV dword ptr [ESP],0x3f800000
005734ae  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
005734b4  e877a73b00                CALL 0x0092dc30
005734b9  6a00                      PUSH 0x0
005734bb  8bcf                      MOV ECX,EDI
005734bd  e8def4ffff                CALL 0x005729a0
005734c2  e899ba1700                CALL 0x006eef60
005734c7  8bb5bcfeffff              MOV ESI,dword ptr [EBP + 0xfffffebc]
005734cd  50                        PUSH EAX
005734ce  6a00                      PUSH 0x0
005734d0  57                        PUSH EDI
005734d1  8b8e3c030000              MOV ECX,dword ptr [ESI + 0x33c]
005734d7  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
005734dd  8b9640030000              MOV EDX,dword ptr [ESI + 0x340]
005734e3  6840b6c700                PUSH 0xc7b640
005734e8  50                        PUSH EAX
005734e9  68af000000                PUSH 0xaf
005734ee  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
005734f4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005734fa  68e8030000                PUSH 0x3e8
005734ff  8995c8feffff              MOV dword ptr [EBP + 0xfffffec8],EDX
00573505  e81656ebff                CALL 0x00428b20
0057350a  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00573512  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0057351a  f30f100d44a2ba00          MOVSS XMM1,dword ptr [0x00baa244]
00573522  8b08                      MOV ECX,dword ptr [EAX]
00573524  51                        PUSH ECX
00573525  8985b8feffff              MOV dword ptr [EBP + 0xfffffeb8],EAX
0057352b  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00573532  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
00573535  8d4d98                    LEA ECX,[EBP + -0x68]
00573538  e8b303ebff                CALL 0x004238f0
0057353d  8b8db8feffff              MOV ECX,dword ptr [EBP + 0xfffffeb8]
00573543  6a01                      PUSH 0x1
00573545  6a00                      PUSH 0x0
00573547  68ff000000                PUSH 0xff
0057354c  6aff                      PUSH -0x1
0057354e  50                        PUSH EAX
0057354f  ffd2                      CALL EDX
00573551  8b85b8feffff              MOV EAX,dword ptr [EBP + 0xfffffeb8]
00573557  05c4030000                ADD EAX,0x3c4
0057355c  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
00573562  8b08                      MOV ECX,dword ptr [EAX]
00573564  85c9                      TEST ECX,ECX
00573566  741e                      JZ 0x00573586
00573568  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
0057356e  81c1cc030000              ADD ECX,0x3cc
00573574  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0057357a  50                        PUSH EAX
0057357b  e890bcf5ff                CALL 0x004cf210
00573580  8b85ccfeffff              MOV EAX,dword ptr [EBP + 0xfffffecc]
00573586  50                        PUSH EAX
00573587  8bce                      MOV ECX,ESI
00573589  8930                      MOV dword ptr [EAX],ESI
0057358b  e860a7f5ff                CALL 0x004cdcf0
00573590  8b85b8feffff              MOV EAX,dword ptr [EBP + 0xfffffeb8]
00573596  05bc030000                ADD EAX,0x3bc
0057359b  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
005735a1  8b08                      MOV ECX,dword ptr [EAX]
005735a3  85c9                      TEST ECX,ECX
005735a5  741e                      JZ 0x005735c5
005735a7  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
005735ad  81c1cc030000              ADD ECX,0x3cc
005735b3  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
005735b9  50                        PUSH EAX
005735ba  e851bcf5ff                CALL 0x004cf210
005735bf  8b85ccfeffff              MOV EAX,dword ptr [EBP + 0xfffffecc]
005735c5  50                        PUSH EAX
005735c6  8bcf                      MOV ECX,EDI
005735c8  8938                      MOV dword ptr [EAX],EDI
005735ca  e821a7f5ff                CALL 0x004cdcf0
005735cf  8b8db8feffff              MOV ECX,dword ptr [EBP + 0xfffffeb8]
005735d5  8b01                      MOV EAX,dword ptr [ECX]
005735d7  ff500c                    CALL dword ptr [EAX + 0xc]
005735da  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
005735e0  8d8fec0b0000              LEA ECX,[EDI + 0xbec]
005735e6  85c0                      TEST EAX,EAX
005735e8  741e                      JZ 0x00573608
005735ea  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
005735f0  8d88cc030000              LEA ECX,[EAX + 0x3cc]
005735f6  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
005735fc  50                        PUSH EAX
005735fd  e80ebcf5ff                CALL 0x004cf210
00573602  8d8fec0b0000              LEA ECX,[EDI + 0xbec]
00573608  8b85b8feffff              MOV EAX,dword ptr [EBP + 0xfffffeb8]
0057360e  8901                      MOV dword ptr [ECX],EAX
00573610  51                        PUSH ECX
00573611  8bc8                      MOV ECX,EAX
00573613  e8d8a6f5ff                CALL 0x004cdcf0
00573618  83be640b000010            CMP dword ptr [ESI + 0xb64],0x10
0057361f  7439                      JZ 0x0057365a
00573621  6a00                      PUSH 0x0
00573623  8d4e48                    LEA ECX,[ESI + 0x48]
00573626  c786640b000007000000      MOV dword ptr [ESI + 0xb64],0x7
00573630  686811b600                PUSH 0xb61168
00573635  e8466de9ff                CALL 0x0040a380
0057363a  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00573642  f30f100d44b6c700          MOVSS XMM1,dword ptr [0x00c7b644]
0057364a  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
00573652  f30f118e38030000          MOVSS dword ptr [ESI + 0x338],XMM1
0057365a  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00573662  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
00573669  0f97c0                    SETA AL
0057366c  888748010000              MOV byte ptr [EDI + 0x148],AL
00573672  eb22                      JMP 0x00573696
00573674  6a00                      PUSH 0x0
00573676  68e4d3b100                PUSH 0xb1d3e4
0057367b  8d4f48                    LEA ECX,[EDI + 0x48]
0057367e  e8fd6ce9ff                CALL 0x0040a380
00573683  6a01                      PUSH 0x1
00573685  8bcf                      MOV ECX,EDI
00573687  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00573691  e80af3ffff                CALL 0x005729a0
00573696  33c0                      XOR EAX,EAX
00573698  b91e000000                MOV ECX,0x1e
0057369d  398710040000              CMP dword ptr [EDI + 0x410],EAX
005736a3  0f4cc1                    CMOVL EAX,ECX
005736a6  898710040000              MOV dword ptr [EDI + 0x410],EAX
005736ac  e99a140000                JMP 0x00574b4b
005736b1  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
005736b8  8d4748                    LEA EAX,[EDI + 0x48]
005736bb  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005736c3  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
005736cb  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005736d3  7527                      JNZ 0x005736fc
005736d5  6a00                      PUSH 0x0
005736d7  6854bcb100                PUSH 0xb1bc54
005736dc  8bc8                      MOV ECX,EAX
005736de  e89d6ce9ff                CALL 0x0040a380
005736e3  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005736ed  c787100400000f000000      MOV dword ptr [EDI + 0x410],0xf
005736f7  e94f140000                JMP 0x00574b4b
005736fc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00573700  7409                      JZ 0x0057370b
00573702  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00573709  7511                      JNZ 0x0057371c
0057370b  6a00                      PUSH 0x0
0057370d  68b81bb600                PUSH 0xb61bb8
00573712  8bc8                      MOV ECX,EAX
00573714  e8676ce9ff                CALL 0x0040a380
00573719  8d4748                    LEA EAX,[EDI + 0x48]
0057371c  01b710040000              ADD dword ptr [EDI + 0x410],ESI
00573722  8bc8                      MOV ECX,EAX
00573724  68dcd2b100                PUSH 0xb1d2dc
00573729  e80279e9ff                CALL 0x0040b030
0057372e  84c0                      TEST AL,AL
00573730  7453                      JZ 0x00573785
00573732  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00573738  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0057373e  c785e8feffffbd020000      MOV dword ptr [EBP + 0xfffffee8],0x2bd
00573748  e833303e00                CALL 0x00956780
0057374d  83ec08                    SUB ESP,0x8
00573750  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00573756  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0057375e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00573765  6a00                      PUSH 0x0
00573767  6a02                      PUSH 0x2
00573769  51                        PUSH ECX
0057376a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00573771  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
00573777  e8b4a43b00                CALL 0x0092dc30
0057377c  6a00                      PUSH 0x0
0057377e  8bcf                      MOV ECX,EDI
00573780  e81bf2ffff                CALL 0x005729a0
00573785  68dcd2b100                PUSH 0xb1d2dc
0057378a  8d4f48                    LEA ECX,[EDI + 0x48]
0057378d  e8fe78e9ff                CALL 0x0040b090
00573792  84c0                      TEST AL,AL
00573794  7515                      JNZ 0x005737ab
00573796  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00573799  85c0                      TEST EAX,EAX
0057379b  0f84aa130000              JZ 0x00574b4b
005737a1  80783400                  CMP byte ptr [EAX + 0x34],0x0
005737a5  0f84a0130000              JZ 0x00574b4b
005737ab  660f6e8f10040000          MOVD XMM1,dword ptr [EDI + 0x410]
005737b3  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
005737b9  f30f1005d0a8ba00          MOVSS XMM0,dword ptr [0x00baa8d0]
005737c1  8db5ecfeffff              LEA ESI,[EBP + 0xfffffeec]
005737c7  0f5bc9                    CVTDQ2PS XMM1,XMM1
005737ca  c785ccfeffff0000f041      MOV dword ptr [EBP + 0xfffffecc],0x41f00000
005737d4  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
005737dc  0f2fc1                    COMISS XMM0,XMM1
005737df  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
005737e7  0f46f0                    CMOVBE ESI,EAX
005737ea  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
005737f0  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
005737f8  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00573800  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
00573808  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
00573810  0f28c1                    MOVAPS XMM0,XMM1
00573813  f30f118d94feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM1
0057381b  f30f59c1                  MULSS XMM0,XMM1
0057381f  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00573827  0f28ca                    MOVAPS XMM1,XMM2
0057382a  f30f59ca                  MULSS XMM1,XMM2
0057382e  f30f119598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM2
00573836  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0057383e  f30f58c1                  ADDSS XMM0,XMM1
00573842  e80922ecff                CALL 0x00435a50
00573847  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
0057384f  0f2fc8                    COMISS XMM1,XMM0
00573852  7628                      JBE 0x0057387c
00573854  6a00                      PUSH 0x0
00573856  68241cb600                PUSH 0xb61c24
0057385b  8d4f48                    LEA ECX,[EDI + 0x48]
0057385e  e81d6be9ff                CALL 0x0040a380
00573863  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0057386d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00573877  e9dc120000                JMP 0x00574b58
0057387c  f30f100e                  MOVSS XMM1,dword ptr [ESI]
00573880  0f2fc1                    COMISS XMM0,XMM1
00573883  0f86c2120000              JBE 0x00574b4b
00573889  0f57d2                    XORPS XMM2,XMM2
0057388c  0f2fc2                    COMISS XMM0,XMM2
0057388f  0f86b6120000              JBE 0x00574b4b
00573895  f30f5ec8                  DIVSS XMM1,XMM0
00573899  0f28c1                    MOVAPS XMM0,XMM1
0057389c  f30f598d98feffff          MULSS XMM1,dword ptr [EBP + 0xfffffe98]
005738a4  f30f598594feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe94]
005738ac  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005738b4  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005738bc  e98a120000                JMP 0x00574b4b
005738c1  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005738c9  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005738d1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005738d9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005738dd  740d                      JZ 0x005738ec
005738df  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005738e6  0f855f120000              JNZ 0x00574b4b
005738ec  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005738f6  c7871004000018fcffff      MOV dword ptr [EDI + 0x410],0xfffffc18
00573900  e946120000                JMP 0x00574b4b
00573905  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0057390d  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00573915  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
0057391b  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00573923  85f6                      TEST ESI,ESI
00573925  0f848a010000              JZ 0x00573ab5
0057392b  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
00573932  0f857d010000              JNZ 0x00573ab5
00573938  6a00                      PUSH 0x0
0057393a  6a10                      PUSH 0x10
0057393c  8bce                      MOV ECX,ESI
0057393e  e8ed3aeaff                CALL 0x00417430
00573943  84c0                      TEST AL,AL
00573945  0f856a010000              JNZ 0x00573ab5
0057394b  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00573953  8d4f48                    LEA ECX,[EDI + 0x48]
00573956  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
0057395e  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00573966  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0057396e  68d4d2b100                PUSH 0xb1d2d4
00573973  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0057397b  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00573983  e8a876e9ff                CALL 0x0040b030
00573988  84c0                      TEST AL,AL
0057398a  744a                      JZ 0x005739d6
0057398c  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00573992  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00573998  c785e8feffffa2000000      MOV dword ptr [EBP + 0xfffffee8],0xa2
005739a2  e8d92d3e00                CALL 0x00956780
005739a7  83ec08                    SUB ESP,0x8
005739aa  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005739b0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005739b8  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
005739bf  6a00                      PUSH 0x0
005739c1  6a02                      PUSH 0x2
005739c3  51                        PUSH ECX
005739c4  c704240000803f            MOV dword ptr [ESP],0x3f800000
005739cb  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
005739d1  e85aa23b00                CALL 0x0092dc30
005739d6  68dcd2b100                PUSH 0xb1d2dc
005739db  8d4f48                    LEA ECX,[EDI + 0x48]
005739de  e84d76e9ff                CALL 0x0040b030
005739e3  84c0                      TEST AL,AL
005739e5  0f8460110000              JZ 0x00574b4b
005739eb  8bcf                      MOV ECX,EDI
005739ed  e8ee2deeff                CALL 0x004567e0
005739f2  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005739f8  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
005739fe  c785e8feffffcd010000      MOV dword ptr [EBP + 0xfffffee8],0x1cd
00573a08  e8732d3e00                CALL 0x00956780
00573a0d  83ec08                    SUB ESP,0x8
00573a10  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00573a16  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00573a1e  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
00573a25  6a00                      PUSH 0x0
00573a27  6a02                      PUSH 0x2
00573a29  51                        PUSH ECX
00573a2a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00573a31  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
00573a37  e8f4a13b00                CALL 0x0092dc30
00573a3c  8bcf                      MOV ECX,EDI
00573a3e  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00573a48  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
00573a52  e8892deeff                CALL 0x004567e0
00573a57  8bcf                      MOV ECX,EDI
00573a59  c780640b000005000000      MOV dword ptr [EAX + 0xb64],0x5
00573a63  e8782deeff                CALL 0x004567e0
00573a68  6a00                      PUSH 0x0
00573a6a  68e4d3b100                PUSH 0xb1d3e4
00573a6f  8d4848                    LEA ECX,[EAX + 0x48]
00573a72  e80969e9ff                CALL 0x0040a380
00573a77  8bcf                      MOV ECX,EDI
00573a79  e8622deeff                CALL 0x004567e0
00573a7e  8bcf                      MOV ECX,EDI
00573a80  8bf0                      MOV ESI,EAX
00573a82  e8e93cedff                CALL 0x00447770
00573a87  3bf0                      CMP ESI,EAX
00573a89  0f85bc100000              JNZ 0x00574b4b
00573a8f  8bcf                      MOV ECX,EDI
00573a91  e84a2deeff                CALL 0x004567e0
00573a96  83787c00                  CMP dword ptr [EAX + 0x7c],0x0
00573a9a  0f84ab100000              JZ 0x00574b4b
00573aa0  f30f100dcca8ba00          MOVSS XMM1,dword ptr [0x00baa8cc]
00573aa8  8d4878                    LEA ECX,[EAX + 0x78]
00573aab  e85053e9ff                CALL 0x00408e00
00573ab0  e996100000                JMP 0x00574b4b
00573ab5  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
00573abc  0f85c7020000              JNZ 0x00573d89
00573ac2  51                        PUSH ECX
00573ac3  8bcf                      MOV ECX,EDI
00573ac5  e8a6efffff                CALL 0x00572a70
00573aca  8bf0                      MOV ESI,EAX
00573acc  89b5bcfeffff              MOV dword ptr [EBP + 0xfffffebc],ESI
00573ad2  85f6                      TEST ESI,ESI
00573ad4  0f84e2010000              JZ 0x00573cbc
00573ada  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00573ae0  8d87bc030000              LEA EAX,[EDI + 0x3bc]
00573ae6  85c9                      TEST ECX,ECX
00573ae8  741e                      JZ 0x00573b08
00573aea  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
00573af0  81c1cc030000              ADD ECX,0x3cc
00573af6  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
00573afc  50                        PUSH EAX
00573afd  e80eb7f5ff                CALL 0x004cf210
00573b02  8d87bc030000              LEA EAX,[EDI + 0x3bc]
00573b08  50                        PUSH EAX
00573b09  8bce                      MOV ECX,ESI
00573b0b  8930                      MOV dword ptr [EAX],ESI
00573b0d  e8dea1f5ff                CALL 0x004cdcf0
00573b12  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00573b18  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00573b1e  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
00573b28  c785e8feffff3c010000      MOV dword ptr [EBP + 0xfffffee8],0x13c
00573b32  e8492c3e00                CALL 0x00956780
00573b37  83ec08                    SUB ESP,0x8
00573b3a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00573b40  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00573b48  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
00573b4f  6a00                      PUSH 0x0
00573b51  6a02                      PUSH 0x2
00573b53  51                        PUSH ECX
00573b54  c704240000803f            MOV dword ptr [ESP],0x3f800000
00573b5b  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
00573b61  e8caa03b00                CALL 0x0092dc30
00573b66  6a01                      PUSH 0x1
00573b68  8bcf                      MOV ECX,EDI
00573b6a  e831eeffff                CALL 0x005729a0
00573b6f  e8ecb31700                CALL 0x006eef60
00573b74  8b95bcfeffff              MOV EDX,dword ptr [EBP + 0xfffffebc]
00573b7a  50                        PUSH EAX
00573b7b  6a00                      PUSH 0x0
00573b7d  57                        PUSH EDI
00573b7e  8b8a3c030000              MOV ECX,dword ptr [EDX + 0x33c]
00573b84  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
00573b8a  8b9240030000              MOV EDX,dword ptr [EDX + 0x340]
00573b90  6840b6c700                PUSH 0xc7b640
00573b95  50                        PUSH EAX
00573b96  68af000000                PUSH 0xaf
00573b9b  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
00573ba1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00573ba7  68e8030000                PUSH 0x3e8
00573bac  8995c8feffff              MOV dword ptr [EBP + 0xfffffec8],EDX
00573bb2  e8694febff                CALL 0x00428b20
00573bb7  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00573bbf  8bf0                      MOV ESI,EAX
00573bc1  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00573bc9  f30f100d44a2ba00          MOVSS XMM1,dword ptr [0x00baa244]
00573bd1  8b0e                      MOV ECX,dword ptr [ESI]
00573bd3  51                        PUSH ECX
00573bd4  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00573bdb  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
00573bde  8d4d98                    LEA ECX,[EBP + -0x68]
00573be1  e80afdeaff                CALL 0x004238f0
00573be6  6a01                      PUSH 0x1
00573be8  6a00                      PUSH 0x0
00573bea  68ff000000                PUSH 0xff
00573bef  6aff                      PUSH -0x1
00573bf1  50                        PUSH EAX
00573bf2  8bce                      MOV ECX,ESI
00573bf4  ffd2                      CALL EDX
00573bf6  8b86c4030000              MOV EAX,dword ptr [ESI + 0x3c4]
00573bfc  8d8ec4030000              LEA ECX,[ESI + 0x3c4]
00573c02  85c0                      TEST EAX,EAX
00573c04  741e                      JZ 0x00573c24
00573c06  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
00573c0c  8d88cc030000              LEA ECX,[EAX + 0x3cc]
00573c12  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
00573c18  50                        PUSH EAX
00573c19  e8f2b5f5ff                CALL 0x004cf210
00573c1e  8d8ec4030000              LEA ECX,[ESI + 0x3c4]
00573c24  8b85bcfeffff              MOV EAX,dword ptr [EBP + 0xfffffebc]
00573c2a  8901                      MOV dword ptr [ECX],EAX
00573c2c  51                        PUSH ECX
00573c2d  8bc8                      MOV ECX,EAX
00573c2f  e8bca0f5ff                CALL 0x004cdcf0
00573c34  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00573c3a  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00573c40  85c9                      TEST ECX,ECX
00573c42  741e                      JZ 0x00573c62
00573c44  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
00573c4a  81c1cc030000              ADD ECX,0x3cc
00573c50  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
00573c56  50                        PUSH EAX
00573c57  e8b4b5f5ff                CALL 0x004cf210
00573c5c  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00573c62  50                        PUSH EAX
00573c63  8bcf                      MOV ECX,EDI
00573c65  8938                      MOV dword ptr [EAX],EDI
00573c67  e884a0f5ff                CALL 0x004cdcf0
00573c6c  8b06                      MOV EAX,dword ptr [ESI]
00573c6e  8bce                      MOV ECX,ESI
00573c70  ff500c                    CALL dword ptr [EAX + 0xc]
00573c73  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
00573c79  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
00573c7f  85c9                      TEST ECX,ECX
00573c81  741e                      JZ 0x00573ca1
00573c83  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
00573c89  81c1cc030000              ADD ECX,0x3cc
00573c8f  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
00573c95  50                        PUSH EAX
00573c96  e875b5f5ff                CALL 0x004cf210
00573c9b  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
00573ca1  50                        PUSH EAX
00573ca2  8bce                      MOV ECX,ESI
00573ca4  8930                      MOV dword ptr [EAX],ESI
00573ca6  e845a0f5ff                CALL 0x004cdcf0
00573cab  6a00                      PUSH 0x0
00573cad  8d4f48                    LEA ECX,[EDI + 0x48]
00573cb0  68181cb600                PUSH 0xb61c18
00573cb5  e8c666e9ff                CALL 0x0040a380
00573cba  eb2d                      JMP 0x00573ce9
00573cbc  6a00                      PUSH 0x0
00573cbe  8d4f48                    LEA ECX,[EDI + 0x48]
00573cc1  68101cb600                PUSH 0xb61c10
00573cc6  e8b566e9ff                CALL 0x0040a380
00573ccb  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
00573cd5  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00573cdf  c787b00b00000000a042      MOV dword ptr [EDI + 0xbb0],0x42a00000
00573ce9  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00573cef  8bcf                      MOV ECX,EDI
00573cf1  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
00573cfb  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
00573cfe  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
00573d04  e837ab1400                CALL 0x006be840
00573d09  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00573d11  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
00573d17  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00573d1f  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
00573d27  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
00573d2f  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
00573d35  50                        PUSH EAX
00573d36  f30f118dc4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM1
00573d3e  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
00573d46  e8e5c24900                CALL 0x00a10030
00573d4b  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00573d4f  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00573d54  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
00573d5c  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
00573d64  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
00573d6c  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00573d74  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00573d7c  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00573d84  e9c20d0000                JMP 0x00574b4b
00573d89  6a00                      PUSH 0x0
00573d8b  8d4f48                    LEA ECX,[EDI + 0x48]
00573d8e  6854bcb100                PUSH 0xb1bc54
00573d93  e8e865e9ff                CALL 0x0040a380
00573d98  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00573d9e  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00573da8  c787100400000f000000      MOV dword ptr [EDI + 0x410],0xf
00573db2  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
00573dbc  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
00573dbf  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
00573dc5  e9810d0000                JMP 0x00574b4b
00573dca  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
00573dd1  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00573dd9  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00573de1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00573de9  0f8504030000              JNZ 0x005740f3
00573def  6aff                      PUSH -0x1
00573df1  6879030000                PUSH 0x379
00573df6  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
00573dfc  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
00573e06  50                        PUSH EAX
00573e07  8bcf                      MOV ECX,EDI
00573e09  e852ce1500                CALL 0x006d0c60
00573e0e  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00573e15  33c9                      XOR ECX,ECX
00573e17  8b95e0feffff              MOV EDX,dword ptr [EBP + 0xfffffee0]
00573e1d  898da8feffff              MOV dword ptr [EBP + 0xfffffea8],ECX
00573e23  85d2                      TEST EDX,EDX
00573e25  0f84b6020000              JZ 0x005740e1
00573e2b  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
00573e31  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
00573e34  89b5bcfeffff              MOV dword ptr [EBP + 0xfffffebc],ESI
00573e3a  85f6                      TEST ESI,ESI
00573e3c  0f8490020000              JZ 0x005740d2
00573e42  a17816c700                MOV EAX,[0x00c71678]
00573e47  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00573e4e  7c06                      JL 0x00573e56
00573e50  837e2801                  CMP dword ptr [ESI + 0x28],0x1
00573e54  7411                      JZ 0x00573e67
00573e56  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
00573e59  83e80a                    SUB EAX,0xa
00573e5c  3ddd030000                CMP EAX,0x3dd
00573e61  0f8765020000              JA 0x005740cc
00573e67  39bebc030000              CMP dword ptr [ESI + 0x3bc],EDI
00573e6d  0f8559020000              JNZ 0x005740cc
00573e73  83be640b000010            CMP dword ptr [ESI + 0xb64],0x10
00573e7a  0f854c020000              JNZ 0x005740cc
00573e80  83bec40b000063            CMP dword ptr [ESI + 0xbc4],0x63
00573e87  0f853f020000              JNZ 0x005740cc
00573e8d  8d4e48                    LEA ECX,[ESI + 0x48]
00573e90  c786c40b000000000000      MOV dword ptr [ESI + 0xbc4],0x0
00573e9a  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
00573ea0  8b4934                    MOV ECX,dword ptr [ECX + 0x34]
00573ea3  85c9                      TEST ECX,ECX
00573ea5  744c                      JZ 0x00573ef3
00573ea7  83791410                  CMP dword ptr [ECX + 0x14],0x10
00573eab  8bc1                      MOV EAX,ECX
00573ead  7202                      JC 0x00573eb1
00573eaf  8b01                      MOV EAX,dword ptr [ECX]
00573eb1  b9000ab600                MOV ECX,0xb60a00
00573eb6  8a10                      MOV DL,byte ptr [EAX]
00573eb8  3a11                      CMP DL,byte ptr [ECX]
00573eba  751a                      JNZ 0x00573ed6
00573ebc  84d2                      TEST DL,DL
00573ebe  7412                      JZ 0x00573ed2
00573ec0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00573ec3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00573ec6  750e                      JNZ 0x00573ed6
00573ec8  83c002                    ADD EAX,0x2
00573ecb  83c102                    ADD ECX,0x2
00573ece  84d2                      TEST DL,DL
00573ed0  75e4                      JNZ 0x00573eb6
00573ed2  33c0                      XOR EAX,EAX
00573ed4  eb05                      JMP 0x00573edb
00573ed6  1bc0                      SBB EAX,EAX
00573ed8  83c801                    OR EAX,0x1
00573edb  8d4e48                    LEA ECX,[ESI + 0x48]
00573ede  85c0                      TEST EAX,EAX
00573ee0  7514                      JNZ 0x00573ef6
00573ee2  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
00573ee5  80783400                  CMP byte ptr [EAX + 0x34],0x0
00573ee9  7433                      JZ 0x00573f1e
00573eeb  80794400                  CMP byte ptr [ECX + 0x44],0x0
00573eef  752d                      JNZ 0x00573f1e
00573ef1  eb03                      JMP 0x00573ef6
00573ef3  8d4e48                    LEA ECX,[ESI + 0x48]
00573ef6  6a01                      PUSH 0x1
00573ef8  68000ab600                PUSH 0xb60a00
00573efd  e8ce66e9ff                CALL 0x0040a5d0
00573f02  84c0                      TEST AL,AL
00573f04  7418                      JZ 0x00573f1e
00573f06  8bb5ecfeffff              MOV ESI,dword ptr [EBP + 0xfffffeec]
00573f0c  8d4e30                    LEA ECX,[ESI + 0x30]
00573f0f  e89c62e9ff                CALL 0x0040a1b0
00573f14  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00573f18  8bb5bcfeffff              MOV ESI,dword ptr [EBP + 0xfffffebc]
00573f1e  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
00573f22  7410                      JZ 0x00573f34
00573f24  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
00573f27  8d4e78                    LEA ECX,[ESI + 0x78]
00573f2a  8b4030                    MOV EAX,dword ptr [EAX + 0x30]
00573f2d  48                        DEC EAX
00573f2e  50                        PUSH EAX
00573f2f  e8cc4de9ff                CALL 0x00408d00
00573f34  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00573f3a  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00573f40  c785e8feffff05010000      MOV dword ptr [EBP + 0xfffffee8],0x105
00573f4a  e831283e00                CALL 0x00956780
00573f4f  83ec08                    SUB ESP,0x8
00573f52  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00573f58  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00573f60  c704240000803f            MOV dword ptr [ESP],0x3f800000
00573f67  6a00                      PUSH 0x0
00573f69  6a02                      PUSH 0x2
00573f6b  51                        PUSH ECX
00573f6c  c704249a99593f            MOV dword ptr [ESP],0x3f59999a
00573f73  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
00573f79  e8b29c3b00                CALL 0x0092dc30
00573f7e  e8ddaf1700                CALL 0x006eef60
00573f83  8b95bcfeffff              MOV EDX,dword ptr [EBP + 0xfffffebc]
00573f89  50                        PUSH EAX
00573f8a  6a00                      PUSH 0x0
00573f8c  6a00                      PUSH 0x0
00573f8e  8b8a3c030000              MOV ECX,dword ptr [EDX + 0x33c]
00573f94  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
00573f9a  8b9240030000              MOV EDX,dword ptr [EDX + 0x340]
00573fa0  6840b6c700                PUSH 0xc7b640
00573fa5  50                        PUSH EAX
00573fa6  6a0f                      PUSH 0xf
00573fa8  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
00573fae  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00573fb4  68e8030000                PUSH 0x3e8
00573fb9  8995c8feffff              MOV dword ptr [EBP + 0xfffffec8],EDX
00573fbf  e85c4bebff                CALL 0x00428b20
00573fc4  6a22                      PUSH 0x22
00573fc6  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
00573fcd  8d4dd4                    LEA ECX,[EBP + -0x2c]
00573fd0  68ec1bb600                PUSH 0xb61bec
00573fd5  8d7048                    LEA ESI,[EAX + 0x48]
00573fd8  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
00573fde  89b5ecfeffff              MOV dword ptr [EBP + 0xfffffeec],ESI
00573fe4  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00573feb  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00573ff2  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00573ff6  e8d58ce9ff                CALL 0x0040ccd0
00573ffb  6a01                      PUSH 0x1
00573ffd  8d45d4                    LEA EAX,[EBP + -0x2c]
00574000  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
00574004  50                        PUSH EAX
00574005  8bce                      MOV ECX,ESI
00574007  e8447de9ff                CALL 0x0040bd50
0057400c  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00574010  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00574013  83fa10                    CMP EDX,0x10
00574016  722c                      JC 0x00574044
00574018  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0057401b  42                        INC EDX
0057401c  8bc1                      MOV EAX,ECX
0057401e  81fa00100000              CMP EDX,0x1000
00574024  7214                      JC 0x0057403a
00574026  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00574029  83c223                    ADD EDX,0x23
0057402c  2bc1                      SUB EAX,ECX
0057402e  83c0fc                    ADD EAX,-0x4
00574031  83f81f                    CMP EAX,0x1f
00574034  0f8727010000              JA 0x00574161
0057403a  52                        PUSH EDX
0057403b  51                        PUSH ECX
0057403c  e81bb15700                CALL 0x00aef15c
00574041  83c408                    ADD ESP,0x8
00574044  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
0057404a  33f6                      XOR ESI,ESI
0057404c  39b0c8000000              CMP dword ptr [EAX + 0xc8],ESI
00574052  764f                      JBE 0x005740a3
00574054  8bf8                      MOV EDI,EAX
00574056  56                        PUSH ESI
00574057  8d4f48                    LEA ECX,[EDI + 0x48]
0057405a  e8c171e9ff                CALL 0x0040b220
0057405f  8d4848                    LEA ECX,[EAX + 0x48]
00574062  81f9284ec300              CMP ECX,0xc34e28
00574068  742a                      JZ 0x00574094
0057406a  0f1005284ec300            MOVUPS XMM0,xmmword ptr [0x00c34e28]
00574071  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00574074  0f1005384ec300            MOVUPS XMM0,xmmword ptr [0x00c34e38]
0057407b  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0057407f  f30f7e05484ec300          MOVQ XMM0,qword ptr [0x00c34e48]
00574087  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0057408c  a1504ec300                MOV EAX,[0x00c34e50]
00574091  894128                    MOV dword ptr [ECX + 0x28],EAX
00574094  46                        INC ESI
00574095  3bb7c8000000              CMP ESI,dword ptr [EDI + 0xc8]
0057409b  72b9                      JC 0x00574056
0057409d  8bbdb0feffff              MOV EDI,dword ptr [EBP + 0xfffffeb0]
005740a3  8b8decfeffff              MOV ECX,dword ptr [EBP + 0xfffffeec]
005740a9  6a00                      PUSH 0x0
005740ab  687cdab100                PUSH 0xb1da7c
005740b0  e8cb62e9ff                CALL 0x0040a380
005740b5  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
005740bb  8b01                      MOV EAX,dword ptr [ECX]
005740bd  ff500c                    CALL dword ptr [EAX + 0xc]
005740c0  8b8da8feffff              MOV ECX,dword ptr [EBP + 0xfffffea8]
005740c6  8b95e0feffff              MOV EDX,dword ptr [EBP + 0xfffffee0]
005740cc  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
005740d2  41                        INC ECX
005740d3  898da8feffff              MOV dword ptr [EBP + 0xfffffea8],ECX
005740d9  3bca                      CMP ECX,EDX
005740db  0f8250fdffff              JC 0x00573e31
005740e1  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
005740e7  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005740ee  e8bd34eaff                CALL 0x004175b0
005740f3  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
005740fb  0f57d2                    XORPS XMM2,XMM2
005740fe  0f2fca                    COMISS XMM1,XMM2
00574101  7664                      JBE 0x00574167
00574103  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00574107  7409                      JZ 0x00574112
00574109  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00574110  7517                      JNZ 0x00574129
00574112  6a00                      PUSH 0x0
00574114  684c1cb600                PUSH 0xb61c4c
00574119  8d4f48                    LEA ECX,[EDI + 0x48]
0057411c  e85f62e9ff                CALL 0x0040a380
00574121  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
00574129  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00574131  8d4f14                    LEA ECX,[EDI + 0x14]
00574134  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0057413c  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
00574142  0f2f01                    COMISS XMM0,dword ptr [ECX]
00574145  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0057414d  0f46c1                    CMOVBE EAX,ECX
00574150  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
00574154  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0057415c  e9ea090000                JMP 0x00574b4b
00574161  ff159488b100              CALL dword ptr [0x00b18894]
00574167  6a00                      PUSH 0x0
00574169  68441cb600                PUSH 0xb61c44
0057416e  8d4f48                    LEA ECX,[EDI + 0x48]
00574171  e80a62e9ff                CALL 0x0040a380
00574176  6a00                      PUSH 0x0
00574178  8bcf                      MOV ECX,EDI
0057417a  e821511300                CALL 0x006a92a0
0057417f  6a00                      PUSH 0x0
00574181  8bcf                      MOV ECX,EDI
00574183  e858511300                CALL 0x006a92e0
00574188  68dcd2b100                PUSH 0xb1d2dc
0057418d  8d4f48                    LEA ECX,[EDI + 0x48]
00574190  e89b6ee9ff                CALL 0x0040b030
00574195  84c0                      TEST AL,AL
00574197  0f8493000000              JZ 0x00574230
0057419d  51                        PUSH ECX
0057419e  c704240000803f            MOV dword ptr [ESP],0x3f800000
005741a5  6a00                      PUSH 0x0
005741a7  6a02                      PUSH 0x2
005741a9  51                        PUSH ECX
005741aa  c704240000803f            MOV dword ptr [ESP],0x3f800000
005741b1  8bcf                      MOV ECX,EDI
005741b3  680b010000                PUSH 0x10b
005741b8  e8e3291600                CALL 0x006d6ba0
005741bd  51                        PUSH ECX
005741be  c704240000803f            MOV dword ptr [ESP],0x3f800000
005741c5  6a00                      PUSH 0x0
005741c7  6a02                      PUSH 0x2
005741c9  51                        PUSH ECX
005741ca  c704240000803f            MOV dword ptr [ESP],0x3f800000
005741d1  8bcf                      MOV ECX,EDI
005741d3  6839010000                PUSH 0x139
005741d8  e8c3291600                CALL 0x006d6ba0
005741dd  51                        PUSH ECX
005741de  c704240000803f            MOV dword ptr [ESP],0x3f800000
005741e5  6a00                      PUSH 0x0
005741e7  6a02                      PUSH 0x2
005741e9  51                        PUSH ECX
005741ea  c7042400000040            MOV dword ptr [ESP],0x40000000
005741f1  8bcf                      MOV ECX,EDI
005741f3  68a2010000                PUSH 0x1a2
005741f8  e8a3291600                CALL 0x006d6ba0
005741fd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00574203  6a10                      PUSH 0x10
00574205  e866f41800                CALL 0x00703670
0057420a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00574210  8d873c030000              LEA EAX,[EDI + 0x33c]
00574216  6a0a                      PUSH 0xa
00574218  83ec08                    SUB ESP,0x8
0057421b  c7442404cdcccc3c          MOV dword ptr [ESP + 0x4],0x3ccccccd
00574223  c70424295c0f3d            MOV dword ptr [ESP],0x3d0f5c29
0057422a  50                        PUSH EAX
0057422b  e840f51800                CALL 0x00703770
00574230  68dcd2b100                PUSH 0xb1d2dc
00574235  8d4f48                    LEA ECX,[EDI + 0x48]
00574238  e8536ee9ff                CALL 0x0040b090
0057423d  84c0                      TEST AL,AL
0057423f  0f8471010000              JZ 0x005743b6
00574245  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
0057424d  0f57d2                    XORPS XMM2,XMM2
00574250  8bcf                      MOV ECX,EDI
00574252  e809851300                CALL 0x006ac760
00574257  85c0                      TEST EAX,EAX
00574259  0f8457010000              JZ 0x005743b6
0057425f  33f6                      XOR ESI,ESI
00574261  c785c0feffff00000000      MOV dword ptr [EBP + 0xfffffec0],0x0
0057426b  89b5c4feffff              MOV dword ptr [EBP + 0xfffffec4],ESI
00574271  89b5c8feffff              MOV dword ptr [EBP + 0xfffffec8],ESI
00574277  6aff                      PUSH -0x1
00574279  6879030000                PUSH 0x379
0057427e  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
00574284  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
0057428b  50                        PUSH EAX
0057428c  8bcf                      MOV ECX,EDI
0057428e  e8cdc91500                CALL 0x006d0c60
00574293  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
00574297  33c9                      XOR ECX,ECX
00574299  8b95e0feffff              MOV EDX,dword ptr [EBP + 0xfffffee0]
0057429f  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
005742a5  85d2                      TEST EDX,EDX
005742a7  0f84ec000000              JZ 0x00574399
005742ad  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
005742b3  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
005742b6  85c9                      TEST ECX,ECX
005742b8  0f84a2000000              JZ 0x00574360
005742be  a17816c700                MOV EAX,[0x00c71678]
005742c3  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
005742ca  7c06                      JL 0x005742d2
005742cc  83792801                  CMP dword ptr [ECX + 0x28],0x1
005742d0  740d                      JZ 0x005742df
005742d2  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
005742d5  83e80a                    SUB EAX,0xa
005742d8  3ddd030000                CMP EAX,0x3dd
005742dd  777b                      JA 0x0057435a
005742df  83b9640b000010            CMP dword ptr [ECX + 0xb64],0x10
005742e6  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
005742ec  756c                      JNZ 0x0057435a
005742ee  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
005742f4  2500000020                AND EAX,0x20000000
005742f9  83c800                    OR EAX,0x0
005742fc  7404                      JZ 0x00574302
005742fe  b201                      MOV DL,0x1
00574300  eb02                      JMP 0x00574304
00574302  32d2                      XOR DL,DL
00574304  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0057430a  2500000020                AND EAX,0x20000000
0057430f  83c800                    OR EAX,0x0
00574312  7404                      JZ 0x00574318
00574314  b001                      MOV AL,0x1
00574316  eb02                      JMP 0x0057431a
00574318  32c0                      XOR AL,AL
0057431a  3ad0                      CMP DL,AL
0057431c  7536                      JNZ 0x00574354
0057431e  39b9bc030000              CMP dword ptr [ECX + 0x3bc],EDI
00574324  752e                      JNZ 0x00574354
00574326  3bb5c8feffff              CMP ESI,dword ptr [EBP + 0xfffffec8]
0057432c  740d                      JZ 0x0057433b
0057432e  890e                      MOV dword ptr [ESI],ECX
00574330  83c604                    ADD ESI,0x4
00574333  89b5c4feffff              MOV dword ptr [EBP + 0xfffffec4],ESI
00574339  eb19                      JMP 0x00574354
0057433b  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
00574341  50                        PUSH EAX
00574342  56                        PUSH ESI
00574343  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
00574349  e8d285ebff                CALL 0x0042c920
0057434e  8bb5c4feffff              MOV ESI,dword ptr [EBP + 0xfffffec4]
00574354  8b95e0feffff              MOV EDX,dword ptr [EBP + 0xfffffee0]
0057435a  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
00574360  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
00574366  41                        INC ECX
00574367  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
0057436d  3bca                      CMP ECX,EDX
0057436f  0f823effffff              JC 0x005742b3
00574375  8b85c0feffff              MOV EAX,dword ptr [EBP + 0xfffffec0]
0057437b  3bc6                      CMP EAX,ESI
0057437d  741a                      JZ 0x00574399
0057437f  2bf0                      SUB ESI,EAX
00574381  c1fe02                    SAR ESI,0x2
00574384  8bce                      MOV ECX,ESI
00574386  e885ac1000                CALL 0x0067f010
0057438b  8b8dc0feffff              MOV ECX,dword ptr [EBP + 0xfffffec0]
00574391  ff3481                    PUSH dword ptr [ECX + EAX*0x4]
00574394  e877e8ffff                CALL 0x00572c10
00574399  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
0057439f  e80c32eaff                CALL 0x004175b0
005743a4  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
005743aa  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005743b1  e81a06eaff                CALL 0x004149d0
005743b6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005743ba  740d                      JZ 0x005743c9
005743bc  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005743c3  0f8582070000              JNZ 0x00574b4b
005743c9  6aff                      PUSH -0x1
005743cb  6879030000                PUSH 0x379
005743d0  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
005743d6  8bcf                      MOV ECX,EDI
005743d8  50                        PUSH EAX
005743d9  e882c81500                CALL 0x006d0c60
005743de  33f6                      XOR ESI,ESI
005743e0  c745fc05000000            MOV dword ptr [EBP + -0x4],0x5
005743e7  39b5e0feffff              CMP dword ptr [EBP + 0xfffffee0],ESI
005743ed  0f868b000000              JBE 0x0057447e
005743f3  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
005743f9  0f1f8000000000            NOP dword ptr [EAX]
00574400  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
00574403  85c9                      TEST ECX,ECX
00574405  746e                      JZ 0x00574475
00574407  a17816c700                MOV EAX,[0x00c71678]
0057440c  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00574413  7c06                      JL 0x0057441b
00574415  83792801                  CMP dword ptr [ECX + 0x28],0x1
00574419  740d                      JZ 0x00574428
0057441b  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
0057441e  83e80a                    SUB EAX,0xa
00574421  3ddd030000                CMP EAX,0x3dd
00574426  7747                      JA 0x0057446f
00574428  83b9640b000010            CMP dword ptr [ECX + 0xb64],0x10
0057442f  753e                      JNZ 0x0057446f
00574431  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
00574437  2500000020                AND EAX,0x20000000
0057443c  83c800                    OR EAX,0x0
0057443f  7404                      JZ 0x00574445
00574441  b201                      MOV DL,0x1
00574443  eb02                      JMP 0x00574447
00574445  32d2                      XOR DL,DL
00574447  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0057444d  2500000020                AND EAX,0x20000000
00574452  83c800                    OR EAX,0x0
00574455  7404                      JZ 0x0057445b
00574457  b001                      MOV AL,0x1
00574459  eb02                      JMP 0x0057445d
0057445b  32c0                      XOR AL,AL
0057445d  3ad0                      CMP DL,AL
0057445f  750e                      JNZ 0x0057446f
00574461  39b9bc030000              CMP dword ptr [ECX + 0x3bc],EDI
00574467  7506                      JNZ 0x0057446f
00574469  51                        PUSH ECX
0057446a  e8a1e7ffff                CALL 0x00572c10
0057446f  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
00574475  46                        INC ESI
00574476  3bb5e0feffff              CMP ESI,dword ptr [EBP + 0xfffffee0]
0057447c  7282                      JC 0x00574400
0057447e  6a00                      PUSH 0x0
00574480  6854bcb100                PUSH 0xb1bc54
00574485  8d4f48                    LEA ECX,[EDI + 0x48]
00574488  e8f35ee9ff                CALL 0x0040a380
0057448d  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
00574493  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0057449d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005744a7  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005744ae  e8fd30eaff                CALL 0x004175b0
005744b3  e993060000                JMP 0x00574b4b
005744b8  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005744c0  8d4f48                    LEA ECX,[EDI + 0x48]
005744c3  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005744cb  68dcd2b100                PUSH 0xb1d2dc
005744d0  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005744d8  e8536be9ff                CALL 0x0040b030
005744dd  84c0                      TEST AL,AL
005744df  0f8493000000              JZ 0x00574578
005744e5  51                        PUSH ECX
005744e6  c704240000803f            MOV dword ptr [ESP],0x3f800000
005744ed  6a00                      PUSH 0x0
005744ef  6a02                      PUSH 0x2
005744f1  51                        PUSH ECX
005744f2  c704240000803f            MOV dword ptr [ESP],0x3f800000
005744f9  8bcf                      MOV ECX,EDI
005744fb  680b010000                PUSH 0x10b
00574500  e89b261600                CALL 0x006d6ba0
00574505  51                        PUSH ECX
00574506  c704240000803f            MOV dword ptr [ESP],0x3f800000
0057450d  6a00                      PUSH 0x0
0057450f  6a02                      PUSH 0x2
00574511  51                        PUSH ECX
00574512  c704240000803f            MOV dword ptr [ESP],0x3f800000
00574519  8bcf                      MOV ECX,EDI
0057451b  6839010000                PUSH 0x139
00574520  e87b261600                CALL 0x006d6ba0
00574525  51                        PUSH ECX
00574526  c704240000803f            MOV dword ptr [ESP],0x3f800000
0057452d  6a00                      PUSH 0x0
0057452f  6a02                      PUSH 0x2
00574531  51                        PUSH ECX
00574532  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
00574539  8bcf                      MOV ECX,EDI
0057453b  68a2010000                PUSH 0x1a2
00574540  e85b261600                CALL 0x006d6ba0
00574545  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0057454b  6a10                      PUSH 0x10
0057454d  e81ef11800                CALL 0x00703670
00574552  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00574558  8d873c030000              LEA EAX,[EDI + 0x33c]
0057455e  6a0a                      PUSH 0xa
00574560  83ec08                    SUB ESP,0x8
00574563  c7442404cdcccc3c          MOV dword ptr [ESP + 0x4],0x3ccccccd
0057456b  c70424295c0f3d            MOV dword ptr [ESP],0x3d0f5c29
00574572  50                        PUSH EAX
00574573  e8f8f11800                CALL 0x00703770
00574578  68dcd2b100                PUSH 0xb1d2dc
0057457d  8d4f48                    LEA ECX,[EDI + 0x48]
00574580  e80b6be9ff                CALL 0x0040b090
00574585  84c0                      TEST AL,AL
00574587  0f846f010000              JZ 0x005746fc
0057458d  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
00574595  0f57d2                    XORPS XMM2,XMM2
00574598  8bcf                      MOV ECX,EDI
0057459a  e8c1811300                CALL 0x006ac760
0057459f  85c0                      TEST EAX,EAX
005745a1  0f8455010000              JZ 0x005746fc
005745a7  33f6                      XOR ESI,ESI
005745a9  c785c0feffff00000000      MOV dword ptr [EBP + 0xfffffec0],0x0
005745b3  89b5c4feffff              MOV dword ptr [EBP + 0xfffffec4],ESI
005745b9  89b5c8feffff              MOV dword ptr [EBP + 0xfffffec8],ESI
005745bf  6aff                      PUSH -0x1
005745c1  6879030000                PUSH 0x379
005745c6  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
005745cc  c745fc06000000            MOV dword ptr [EBP + -0x4],0x6
005745d3  50                        PUSH EAX
005745d4  8bcf                      MOV ECX,EDI
005745d6  e885c61500                CALL 0x006d0c60
005745db  c645fc07                  MOV byte ptr [EBP + -0x4],0x7
005745df  33c9                      XOR ECX,ECX
005745e1  8b95e0feffff              MOV EDX,dword ptr [EBP + 0xfffffee0]
005745e7  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
005745ed  85d2                      TEST EDX,EDX
005745ef  0f84ea000000              JZ 0x005746df
005745f5  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
005745fb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00574600  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
00574603  85c9                      TEST ECX,ECX
00574605  0f8499000000              JZ 0x005746a4
0057460b  a17816c700                MOV EAX,[0x00c71678]
00574610  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00574617  7c06                      JL 0x0057461f
00574619  83792801                  CMP dword ptr [ECX + 0x28],0x1
0057461d  740d                      JZ 0x0057462c
0057461f  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
00574622  83e80a                    SUB EAX,0xa
00574625  3ddd030000                CMP EAX,0x3dd
0057462a  7772                      JA 0x0057469e
0057462c  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
00574632  2500000020                AND EAX,0x20000000
00574637  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
0057463d  83c800                    OR EAX,0x0
00574640  7404                      JZ 0x00574646
00574642  b201                      MOV DL,0x1
00574644  eb02                      JMP 0x00574648
00574646  32d2                      XOR DL,DL
00574648  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0057464e  2500000020                AND EAX,0x20000000
00574653  83c800                    OR EAX,0x0
00574656  7404                      JZ 0x0057465c
00574658  b001                      MOV AL,0x1
0057465a  eb02                      JMP 0x0057465e
0057465c  32c0                      XOR AL,AL
0057465e  3ad0                      CMP DL,AL
00574660  7536                      JNZ 0x00574698
00574662  39b9bc030000              CMP dword ptr [ECX + 0x3bc],EDI
00574668  752e                      JNZ 0x00574698
0057466a  3bb5c8feffff              CMP ESI,dword ptr [EBP + 0xfffffec8]
00574670  740d                      JZ 0x0057467f
00574672  890e                      MOV dword ptr [ESI],ECX
00574674  83c604                    ADD ESI,0x4
00574677  89b5c4feffff              MOV dword ptr [EBP + 0xfffffec4],ESI
0057467d  eb19                      JMP 0x00574698
0057467f  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
00574685  50                        PUSH EAX
00574686  56                        PUSH ESI
00574687  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
0057468d  e88e82ebff                CALL 0x0042c920
00574692  8bb5c4feffff              MOV ESI,dword ptr [EBP + 0xfffffec4]
00574698  8b95e0feffff              MOV EDX,dword ptr [EBP + 0xfffffee0]
0057469e  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
005746a4  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
005746aa  41                        INC ECX
005746ab  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
005746b1  3bca                      CMP ECX,EDX
005746b3  0f8247ffffff              JC 0x00574600
005746b9  8b85c0feffff              MOV EAX,dword ptr [EBP + 0xfffffec0]
005746bf  3bc6                      CMP EAX,ESI
005746c1  741c                      JZ 0x005746df
005746c3  2bf0                      SUB ESI,EAX
005746c5  c1fe02                    SAR ESI,0x2
005746c8  8bce                      MOV ECX,ESI
005746ca  e841a91000                CALL 0x0067f010
005746cf  8b8dc0feffff              MOV ECX,dword ptr [EBP + 0xfffffec0]
005746d5  ff3481                    PUSH dword ptr [ECX + EAX*0x4]
005746d8  8bcf                      MOV ECX,EDI
005746da  e8e1e5ffff                CALL 0x00572cc0
005746df  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
005746e5  e8c62eeaff                CALL 0x004175b0
005746ea  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
005746f0  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005746f7  e8d402eaff                CALL 0x004149d0
005746fc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00574700  7450                      JZ 0x00574752
00574702  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00574709  7447                      JZ 0x00574752
0057470b  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
00574712  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00574715  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
00574718  3bc1                      CMP EAX,ECX
0057471a  0f842b040000              JZ 0x00574b4b
00574720  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
00574728  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00574730  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00574734  f30f59c1                  MULSS XMM0,XMM1
00574738  f30f1100                  MOVSS dword ptr [EAX],XMM0
0057473c  83c038                    ADD EAX,0x38
0057473f  f30f584714                ADDSS XMM0,dword ptr [EDI + 0x14]
00574744  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
00574749  3bc1                      CMP EAX,ECX
0057474b  75e3                      JNZ 0x00574730
0057474d  e9f9030000                JMP 0x00574b4b
00574752  6aff                      PUSH -0x1
00574754  6879030000                PUSH 0x379
00574759  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0057475f  8bcf                      MOV ECX,EDI
00574761  50                        PUSH EAX
00574762  e8f9c41500                CALL 0x006d0c60
00574767  33f6                      XOR ESI,ESI
00574769  c745fc08000000            MOV dword ptr [EBP + -0x4],0x8
00574770  39b5e0feffff              CMP dword ptr [EBP + 0xfffffee0],ESI
00574776  0f8686000000              JBE 0x00574802
0057477c  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
00574782  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
00574785  85c9                      TEST ECX,ECX
00574787  7470                      JZ 0x005747f9
00574789  a17816c700                MOV EAX,[0x00c71678]
0057478e  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00574795  7c06                      JL 0x0057479d
00574797  83792801                  CMP dword ptr [ECX + 0x28],0x1
0057479b  740d                      JZ 0x005747aa
0057479d  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
005747a0  83e80a                    SUB EAX,0xa
005747a3  3ddd030000                CMP EAX,0x3dd
005747a8  7749                      JA 0x005747f3
005747aa  83b9640b000010            CMP dword ptr [ECX + 0xb64],0x10
005747b1  7540                      JNZ 0x005747f3
005747b3  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
005747b9  2500000020                AND EAX,0x20000000
005747be  83c800                    OR EAX,0x0
005747c1  7404                      JZ 0x005747c7
005747c3  b201                      MOV DL,0x1
005747c5  eb02                      JMP 0x005747c9
005747c7  32d2                      XOR DL,DL
005747c9  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005747cf  2500000020                AND EAX,0x20000000
005747d4  83c800                    OR EAX,0x0
005747d7  7404                      JZ 0x005747dd
005747d9  b001                      MOV AL,0x1
005747db  eb02                      JMP 0x005747df
005747dd  32c0                      XOR AL,AL
005747df  3ad0                      CMP DL,AL
005747e1  7510                      JNZ 0x005747f3
005747e3  39b9bc030000              CMP dword ptr [ECX + 0x3bc],EDI
005747e9  7508                      JNZ 0x005747f3
005747eb  51                        PUSH ECX
005747ec  8bcf                      MOV ECX,EDI
005747ee  e8cde4ffff                CALL 0x00572cc0
005747f3  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
005747f9  46                        INC ESI
005747fa  3bb5e0feffff              CMP ESI,dword ptr [EBP + 0xfffffee0]
00574800  7280                      JC 0x00574782
00574802  6a00                      PUSH 0x0
00574804  6828d4b100                PUSH 0xb1d428
00574809  8d4f48                    LEA ECX,[EDI + 0x48]
0057480c  e86f5be9ff                CALL 0x0040a380
00574811  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
00574817  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00574821  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0057482b  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00574832  e8792deaff                CALL 0x004175b0
00574837  e90f030000                JMP 0x00574b4b
0057483c  8d8f14040000              LEA ECX,[EDI + 0x414]
00574842  6a00                      PUSH 0x0
00574844  e8071e2700                CALL 0x007e6650
00574849  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00574851  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00574859  01b710040000              ADD dword ptr [EDI + 0x410],ESI
0057485f  83bf1004000008            CMP dword ptr [EDI + 0x410],0x8
00574866  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0057486e  0f8ed7020000              JLE 0x00574b4b
00574874  8bcf                      MOV ECX,EDI
00574876  e8c59f1400                CALL 0x006be840
0057487b  6840b6c700                PUSH 0xc7b640
00574880  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
00574886  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0057488e  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
00574896  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
0057489e  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
005748a6  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
005748ae  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
005748b6  e875bd4900                CALL 0x00a10630
005748bb  84c0                      TEST AL,AL
005748bd  0f8488020000              JZ 0x00574b4b
005748c3  6a00                      PUSH 0x0
005748c5  8d4f48                    LEA ECX,[EDI + 0x48]
005748c8  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
005748d2  68381cb600                PUSH 0xb61c38
005748d7  e8a45ae9ff                CALL 0x0040a380
005748dc  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
005748e4  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
005748eb  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005748f3  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
005748fb  0f97c0                    SETA AL
005748fe  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00574906  888748010000              MOV byte ptr [EDI + 0x148],AL
0057490c  e930020000                JMP 0x00574b41
00574911  8d4f48                    LEA ECX,[EDI + 0x48]
00574914  68eca4b100                PUSH 0xb1a4ec
00574919  e8325ce9ff                CALL 0x0040a550
0057491e  84c0                      TEST AL,AL
00574920  740f                      JZ 0x00574931
00574922  6a00                      PUSH 0x0
00574924  682c1cb600                PUSH 0xb61c2c
00574929  8d4f48                    LEA ECX,[EDI + 0x48]
0057492c  e84f5ae9ff                CALL 0x0040a380
00574931  01b710040000              ADD dword ptr [EDI + 0x410],ESI
00574937  8d4f48                    LEA ECX,[EDI + 0x48]
0057493a  68dcd2b100                PUSH 0xb1d2dc
0057493f  e84c67e9ff                CALL 0x0040b090
00574944  84c0                      TEST AL,AL
00574946  7510                      JNZ 0x00574958
00574948  8d4f78                    LEA ECX,[EDI + 0x78]
0057494b  e8602ae9ff                CALL 0x004073b0
00574950  84c0                      TEST AL,AL
00574952  0f84f3010000              JZ 0x00574b4b
00574958  660f6e8f10040000          MOVD XMM1,dword ptr [EDI + 0x410]
00574960  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
00574966  f30f1005d0a8ba00          MOVSS XMM0,dword ptr [0x00baa8d0]
0057496e  8db5ecfeffff              LEA ESI,[EBP + 0xfffffeec]
00574974  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
0057497c  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
00574984  0f5bc9                    CVTDQ2PS XMM1,XMM1
00574987  c785ccfeffff0000f041      MOV dword ptr [EBP + 0xfffffecc],0x41f00000
00574991  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00574999  f30f590db0a4ba00          MULSS XMM1,dword ptr [0x00baa4b0]
005749a1  0f2fc1                    COMISS XMM0,XMM1
005749a4  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
005749ac  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
005749b4  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
005749bc  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
005749c4  0f46f0                    CMOVBE ESI,EAX
005749c7  f30f59d2                  MULSS XMM2,XMM2
005749cb  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
005749d3  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005749db  f30f59c9                  MULSS XMM1,XMM1
005749df  f30f58d1                  ADDSS XMM2,XMM1
005749e3  0f28c2                    MOVAPS XMM0,XMM2
005749e6  e86510ecff                CALL 0x00435a50
005749eb  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
005749f3  0f28d0                    MOVAPS XMM2,XMM0
005749f6  0f2fca                    COMISS XMM1,XMM2
005749f9  761e                      JBE 0x00574a19
005749fb  6a00                      PUSH 0x0
005749fd  68b808b600                PUSH 0xb608b8
00574a02  8d4f48                    LEA ECX,[EDI + 0x48]
00574a05  e87659e9ff                CALL 0x0040a380
00574a0a  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
00574a14  e928010000                JMP 0x00574b41
00574a19  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00574a1d  0f2fd0                    COMISS XMM2,XMM0
00574a20  0f8625010000              JBE 0x00574b4b
00574a26  51                        PUSH ECX
00574a27  8d8f60030000              LEA ECX,[EDI + 0x360]
00574a2d  f30f110424                MOVSS dword ptr [ESP],XMM0
00574a32  e879b64900                CALL 0x00a100b0
00574a37  e90f010000                JMP 0x00574b4b
00574a3c  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00574a44  8d4f48                    LEA ECX,[EDI + 0x48]
00574a47  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00574a4f  68dcd2b100                PUSH 0xb1d2dc
00574a54  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00574a5c  e8cf65e9ff                CALL 0x0040b030
00574a61  84c0                      TEST AL,AL
00574a63  0f8497000000              JZ 0x00574b00
00574a69  51                        PUSH ECX
00574a6a  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
00574a71  6a00                      PUSH 0x0
00574a73  6a02                      PUSH 0x2
00574a75  51                        PUSH ECX
00574a76  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00574a7d  8bcf                      MOV ECX,EDI
00574a7f  68bc020000                PUSH 0x2bc
00574a84  e817211600                CALL 0x006d6ba0
00574a89  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
00574a8f  e89ca4ecff                CALL 0x0043ef30
00574a94  f6871004000001            TEST byte ptr [EDI + 0x410],0x1
00574a9b  c78508ffffff00000000      MOV dword ptr [EBP + 0xffffff08],0x0
00574aa5  750a                      JNZ 0x00574ab1
00574aa7  c78508ffffff920a063f      MOV dword ptr [EBP + 0xffffff08],0x3f060a92
00574ab1  68284ec300                PUSH 0xc34e28
00574ab6  8d8d1cffffff              LEA ECX,[EBP + 0xffffff1c]
00574abc  c7458402000000            MOV dword ptr [EBP + -0x7c],0x2
00574ac3  e82827e9ff                CALL 0x004071f0
00574ac8  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
00574ace  c785c4feffff00001041      MOV dword ptr [EBP + 0xfffffec4],0x41100000
00574ad8  50                        PUSH EAX
00574ad9  6a09                      PUSH 0x9
00574adb  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
00574ae1  c785c8feffff0000c040      MOV dword ptr [EBP + 0xfffffec8],0x40c00000
00574aeb  50                        PUSH EAX
00574aec  8d873c030000              LEA EAX,[EDI + 0x33c]
00574af2  8bcf                      MOV ECX,EDI
00574af4  50                        PUSH EAX
00574af5  e8e6671500                CALL 0x006cb2e0
00574afa  ff8710040000              INC dword ptr [EDI + 0x410]
00574b00  68eca4b100                PUSH 0xb1a4ec
00574b05  8d4f48                    LEA ECX,[EDI + 0x48]
00574b08  e8435ae9ff                CALL 0x0040a550
00574b0d  84c0                      TEST AL,AL
00574b0f  743a                      JZ 0x00574b4b
00574b11  83bf1004000006            CMP dword ptr [EDI + 0x410],0x6
00574b18  8d4f48                    LEA ECX,[EDI + 0x48]
00574b1b  7d0e                      JGE 0x00574b2b
00574b1d  6a01                      PUSH 0x1
00574b1f  6854ddb100                PUSH 0xb1dd54
00574b24  e85758e9ff                CALL 0x0040a380
00574b29  eb20                      JMP 0x00574b4b
00574b2b  6a00                      PUSH 0x0
00574b2d  6828d4b100                PUSH 0xb1d428
00574b32  e84958e9ff                CALL 0x0040a380
00574b37  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00574b41  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00574b4b  83bd9cfeffff00            CMP dword ptr [EBP + 0xfffffe9c],0x0
00574b52  0f84d5000000              JZ 0x00574c2d
00574b58  a17816c700                MOV EAX,[0x00c71678]
00574b5d  be01000000                MOV ESI,0x1
00574b62  6a00                      PUSH 0x0
00574b64  6a00                      PUSH 0x0
00574b66  6aff                      PUSH -0x1
00574b68  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00574b6e  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
00574b74  6aff                      PUSH -0x1
00574b76  6879030000                PUSH 0x379
00574b7b  81c118120000              ADD ECX,0x1218
00574b81  50                        PUSH EAX
00574b82  e8d963eaff                CALL 0x0041af60
00574b87  33d2                      XOR EDX,EDX
00574b89  3995e0feffff              CMP dword ptr [EBP + 0xfffffee0],EDX
00574b8f  766b                      JBE 0x00574bfc
00574b91  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
00574b97  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
00574b9a  85c9                      TEST ECX,ECX
00574b9c  7455                      JZ 0x00574bf3
00574b9e  a17816c700                MOV EAX,[0x00c71678]
00574ba3  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00574baa  7c06                      JL 0x00574bb2
00574bac  83792801                  CMP dword ptr [ECX + 0x28],0x1
00574bb0  740d                      JZ 0x00574bbf
00574bb2  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
00574bb5  83e80a                    SUB EAX,0xa
00574bb8  3ddd030000                CMP EAX,0x3dd
00574bbd  772e                      JA 0x00574bed
00574bbf  39b9bc030000              CMP dword ptr [ECX + 0x3bc],EDI
00574bc5  7526                      JNZ 0x00574bed
00574bc7  83b9640b000010            CMP dword ptr [ECX + 0xb64],0x10
00574bce  741d                      JZ 0x00574bed
00574bd0  3b8fc0030000              CMP ECX,dword ptr [EDI + 0x3c0]
00574bd6  750c                      JNZ 0x00574be4
00574bd8  c781c40b000000000000      MOV dword ptr [ECX + 0xbc4],0x0
00574be2  eb09                      JMP 0x00574bed
00574be4  8bc6                      MOV EAX,ESI
00574be6  46                        INC ESI
00574be7  8981c40b0000              MOV dword ptr [ECX + 0xbc4],EAX
00574bed  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
00574bf3  42                        INC EDX
00574bf4  3b95e0feffff              CMP EDX,dword ptr [EBP + 0xfffffee0]
00574bfa  729b                      JC 0x00574b97
00574bfc  80bdd4feffff00            CMP byte ptr [EBP + 0xfffffed4],0x0
00574c03  89b7c00b0000              MOV dword ptr [EDI + 0xbc0],ESI
00574c09  7522                      JNZ 0x00574c2d
00574c0b  c745fc09000000            MOV dword ptr [EBP + -0x4],0x9
00574c12  b101                      MOV CL,0x1
00574c14  8b95d8feffff              MOV EDX,dword ptr [EBP + 0xfffffed8]
00574c1a  6a00                      PUSH 0x0
00574c1c  6a00                      PUSH 0x0
00574c1e  e88dfc4e00                CALL 0x00a648b0
00574c23  83c408                    ADD ESP,0x8
00574c26  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00574c2d  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00574c34  0f846f0d0000              JZ 0x005759a9
00574c3a  a17816c700                MOV EAX,[0x00c71678]
00574c3f  33c9                      XOR ECX,ECX
00574c41  898dbcfeffff              MOV dword ptr [EBP + 0xfffffebc],ECX
00574c47  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00574c4d  898594feffff              MOV dword ptr [EBP + 0xfffffe94],EAX
00574c53  398864120000              CMP dword ptr [EAX + 0x1264],ECX
00574c59  0f864a0d0000              JBE 0x005759a9
00574c5f  90                        NOP
00574c60  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
00574c66  8b1488                    MOV EDX,dword ptr [EAX + ECX*0x4]
00574c69  8995b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EDX
00574c6f  85d2                      TEST EDX,EDX
00574c71  0f84a1020000              JZ 0x00574f18
00574c77  a17816c700                MOV EAX,[0x00c71678]
00574c7c  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00574c83  7c08                      JL 0x00574c8d
00574c85  8b7228                    MOV ESI,dword ptr [EDX + 0x28]
00574c88  83fe01                    CMP ESI,0x1
00574c8b  7411                      JZ 0x00574c9e
00574c8d  8b7228                    MOV ESI,dword ptr [EDX + 0x28]
00574c90  8d46f6                    LEA EAX,[ESI + -0xa]
00574c93  3ddd030000                CMP EAX,0x3dd
00574c98  0f877a020000              JA 0x00574f18
00574c9e  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
00574ca4  2500000020                AND EAX,0x20000000
00574ca9  c685e7feffff01            MOV byte ptr [EBP + 0xfffffee7],0x1
00574cb0  83c800                    OR EAX,0x0
00574cb3  7507                      JNZ 0x00574cbc
00574cb5  c685e7feffff00            MOV byte ptr [EBP + 0xfffffee7],0x0
00574cbc  8bcf                      MOV ECX,EDI
00574cbe  e8ed1aeeff                CALL 0x004567b0
00574cc3  3885e7feffff              CMP byte ptr [EBP + 0xfffffee7],AL
00574cc9  0f854c020000              JNZ 0x00574f1b
00574ccf  81fe79030000              CMP ESI,0x379
00574cd5  7542                      JNZ 0x00574d19
00574cd7  39babc030000              CMP dword ptr [EDX + 0x3bc],EDI
00574cdd  7549                      JNZ 0x00574d28
00574cdf  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
00574ce5  8d4d9c                    LEA ECX,[EBP + -0x64]
00574ce8  83c810                    OR EAX,0x10
00574ceb  898268010000              MOV dword ptr [EDX + 0x168],EAX
00574cf1  8b826c010000              MOV EAX,dword ptr [EDX + 0x16c]
00574cf7  89826c010000              MOV dword ptr [EDX + 0x16c],EAX
00574cfd  8b02                      MOV EAX,dword ptr [EDX]
00574cff  57                        PUSH EDI
00574d00  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
00574d03  e808c6ebff                CALL 0x00431310
00574d08  8b8db4feffff              MOV ECX,dword ptr [EBP + 0xfffffeb4]
00574d0e  8d459c                    LEA EAX,[EBP + -0x64]
00574d11  50                        PUSH EAX
00574d12  ffd6                      CALL ESI
00574d14  e92a020000                JMP 0x00574f43
00574d19  83fe21                    CMP ESI,0x21
00574d1c  750a                      JNZ 0x00574d28
00574d1e  837a2c0d                  CMP dword ptr [EDX + 0x2c],0xd
00574d22  7504                      JNZ 0x00574d28
00574d24  b001                      MOV AL,0x1
00574d26  eb02                      JMP 0x00574d2a
00574d28  32c0                      XOR AL,AL
00574d2a  84c0                      TEST AL,AL
00574d2c  0f84ae010000              JZ 0x00574ee0
00574d32  8b02                      MOV EAX,dword ptr [EDX]
00574d34  8d4dc4                    LEA ECX,[EBP + -0x3c]
00574d37  57                        PUSH EDI
00574d38  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
00574d3b  e8d0c5ebff                CALL 0x00431310
00574d40  8b8db4feffff              MOV ECX,dword ptr [EBP + 0xfffffeb4]
00574d46  8d45c4                    LEA EAX,[EBP + -0x3c]
00574d49  50                        PUSH EAX
00574d4a  ffd6                      CALL ESI
00574d4c  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00574d52  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00574d58  c785e8feffff05010000      MOV dword ptr [EBP + 0xfffffee8],0x105
00574d62  e8191a3e00                CALL 0x00956780
00574d67  83ec08                    SUB ESP,0x8
00574d6a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00574d70  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00574d78  c704240000803f            MOV dword ptr [ESP],0x3f800000
00574d7f  6a00                      PUSH 0x0
00574d81  6a02                      PUSH 0x2
00574d83  51                        PUSH ECX
00574d84  c704249a99593f            MOV dword ptr [ESP],0x3f59999a
00574d8b  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
00574d91  e89a8e3b00                CALL 0x0092dc30
00574d96  e8c5a11700                CALL 0x006eef60
00574d9b  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
00574da1  50                        PUSH EAX
00574da2  6a00                      PUSH 0x0
00574da4  6a00                      PUSH 0x0
00574da6  8b8a3c030000              MOV ECX,dword ptr [EDX + 0x33c]
00574dac  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
00574db2  8b9240030000              MOV EDX,dword ptr [EDX + 0x340]
00574db8  6840b6c700                PUSH 0xc7b640
00574dbd  50                        PUSH EAX
00574dbe  6a0f                      PUSH 0xf
00574dc0  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
00574dc6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00574dcc  68e8030000                PUSH 0x3e8
00574dd1  8995c8feffff              MOV dword ptr [EBP + 0xfffffec8],EDX
00574dd7  e8443debff                CALL 0x00428b20
00574ddc  6a22                      PUSH 0x22
00574dde  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
00574de5  8d4dd4                    LEA ECX,[EBP + -0x2c]
00574de8  68ec1bb600                PUSH 0xb61bec
00574ded  8d7048                    LEA ESI,[EAX + 0x48]
00574df0  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
00574df6  89b5ecfeffff              MOV dword ptr [EBP + 0xfffffeec],ESI
00574dfc  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00574e03  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00574e0a  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00574e0e  e8bd7ee9ff                CALL 0x0040ccd0
00574e13  6a01                      PUSH 0x1
00574e15  8d45d4                    LEA EAX,[EBP + -0x2c]
00574e18  c745fc0a000000            MOV dword ptr [EBP + -0x4],0xa
00574e1f  50                        PUSH EAX
00574e20  8bce                      MOV ECX,ESI
00574e22  e8296fe9ff                CALL 0x0040bd50
00574e27  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00574e2e  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00574e31  83fa10                    CMP EDX,0x10
00574e34  722c                      JC 0x00574e62
00574e36  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00574e39  42                        INC EDX
00574e3a  8bc1                      MOV EAX,ECX
00574e3c  81fa00100000              CMP EDX,0x1000
00574e42  7214                      JC 0x00574e58
00574e44  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00574e47  83c223                    ADD EDX,0x23
00574e4a  2bc1                      SUB EAX,ECX
00574e4c  83c0fc                    ADD EAX,-0x4
00574e4f  83f81f                    CMP EAX,0x1f
00574e52  0f8709f3ffff              JA 0x00574161
00574e58  52                        PUSH EDX
00574e59  51                        PUSH ECX
00574e5a  e8fda25700                CALL 0x00aef15c
00574e5f  83c408                    ADD ESP,0x8
00574e62  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
00574e68  33f6                      XOR ESI,ESI
00574e6a  39b0c8000000              CMP dword ptr [EAX + 0xc8],ESI
00574e70  764f                      JBE 0x00574ec1
00574e72  8bf8                      MOV EDI,EAX
00574e74  56                        PUSH ESI
00574e75  8d4f48                    LEA ECX,[EDI + 0x48]
00574e78  e8a363e9ff                CALL 0x0040b220
00574e7d  8d4848                    LEA ECX,[EAX + 0x48]
00574e80  81f9284ec300              CMP ECX,0xc34e28
00574e86  742a                      JZ 0x00574eb2
00574e88  0f1005284ec300            MOVUPS XMM0,xmmword ptr [0x00c34e28]
00574e8f  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00574e92  0f1005384ec300            MOVUPS XMM0,xmmword ptr [0x00c34e38]
00574e99  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00574e9d  f30f7e05484ec300          MOVQ XMM0,qword ptr [0x00c34e48]
00574ea5  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00574eaa  a1504ec300                MOV EAX,[0x00c34e50]
00574eaf  894128                    MOV dword ptr [ECX + 0x28],EAX
00574eb2  46                        INC ESI
00574eb3  3bb7c8000000              CMP ESI,dword ptr [EDI + 0xc8]
00574eb9  72b9                      JC 0x00574e74
00574ebb  8bbdb0feffff              MOV EDI,dword ptr [EBP + 0xfffffeb0]
00574ec1  8b8decfeffff              MOV ECX,dword ptr [EBP + 0xfffffeec]
00574ec7  6a00                      PUSH 0x0
00574ec9  687cdab100                PUSH 0xb1da7c
00574ece  e8ad54e9ff                CALL 0x0040a380
00574ed3  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
00574ed9  8b01                      MOV EAX,dword ptr [ECX]
00574edb  ff500c                    CALL dword ptr [EAX + 0xc]
00574ede  eb63                      JMP 0x00574f43
00574ee0  81fe99030000              CMP ESI,0x399
00574ee6  755b                      JNZ 0x00574f43
00574ee8  837a2c01                  CMP dword ptr [EDX + 0x2c],0x1
00574eec  7555                      JNZ 0x00574f43
00574eee  39babc030000              CMP dword ptr [EDX + 0x3bc],EDI
00574ef4  754d                      JNZ 0x00574f43
00574ef6  8b02                      MOV EAX,dword ptr [EDX]
00574ef8  8d8d54feffff              LEA ECX,[EBP + 0xfffffe54]
00574efe  57                        PUSH EDI
00574eff  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
00574f02  e809c4ebff                CALL 0x00431310
00574f07  8b8db4feffff              MOV ECX,dword ptr [EBP + 0xfffffeb4]
00574f0d  8d8554feffff              LEA EAX,[EBP + 0xfffffe54]
00574f13  50                        PUSH EAX
00574f14  ffd6                      CALL ESI
00574f16  eb2b                      JMP 0x00574f43
00574f18  8b7228                    MOV ESI,dword ptr [EDX + 0x28]
00574f1b  83fe09                    CMP ESI,0x9
00574f1e  7523                      JNZ 0x00574f43
00574f20  39babc030000              CMP dword ptr [EDX + 0x3bc],EDI
00574f26  751b                      JNZ 0x00574f43
00574f28  c7823804000000000000      MOV dword ptr [EDX + 0x438],0x0
00574f32  c7823c04000000000000      MOV dword ptr [EDX + 0x43c],0x0
00574f3c  c6827301000001            MOV byte ptr [EDX + 0x173],0x1
00574f43  8b8dbcfeffff              MOV ECX,dword ptr [EBP + 0xfffffebc]
00574f49  8b8594feffff              MOV EAX,dword ptr [EBP + 0xfffffe94]
00574f4f  41                        INC ECX
00574f50  898dbcfeffff              MOV dword ptr [EBP + 0xfffffebc],ECX
00574f56  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
00574f5c  0f82fefcffff              JC 0x00574c60
00574f62  e9420a0000                JMP 0x005759a9
00574f67  ffb7140c0000              PUSH dword ptr [EDI + 0xc14]
00574f6d  8d8f180c0000              LEA ECX,[EDI + 0xc18]
00574f73  e82834f8ff                CALL 0x004f83a0
00574f78  83bf140c000000            CMP dword ptr [EDI + 0xc14],0x0
00574f7f  0f840d010000              JZ 0x00575092
00574f85  8b87240c0000              MOV EAX,dword ptr [EDI + 0xc24]
00574f8b  83ec0c                    SUB ESP,0xc
00574f8e  8bcc                      MOV ECX,ESP
00574f90  83ec0c                    SUB ESP,0xc
00574f93  c70100000000              MOV dword ptr [ECX],0x0
00574f99  c7410400000000            MOV dword ptr [ECX + 0x4],0x0
00574fa0  894108                    MOV dword ptr [ECX + 0x8],EAX
00574fa3  8b87180c0000              MOV EAX,dword ptr [EDI + 0xc18]
00574fa9  8901                      MOV dword ptr [ECX],EAX
00574fab  8bcc                      MOV ECX,ESP
00574fad  8b87140c0000              MOV EAX,dword ptr [EDI + 0xc14]
00574fb3  0387100c0000              ADD EAX,dword ptr [EDI + 0xc10]
00574fb9  83ec0c                    SUB ESP,0xc
00574fbc  c70100000000              MOV dword ptr [ECX],0x0
00574fc2  c7410400000000            MOV dword ptr [ECX + 0x4],0x0
00574fc9  894108                    MOV dword ptr [ECX + 0x8],EAX
00574fcc  8b87040c0000              MOV EAX,dword ptr [EDI + 0xc04]
00574fd2  8901                      MOV dword ptr [ECX],EAX
00574fd4  8bcc                      MOV ECX,ESP
00574fd6  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
00574fdc  c70100000000              MOV dword ptr [ECX],0x0
00574fe2  c7410400000000            MOV dword ptr [ECX + 0x4],0x0
00574fe9  894108                    MOV dword ptr [ECX + 0x8],EAX
00574fec  8b87040c0000              MOV EAX,dword ptr [EDI + 0xc04]
00574ff2  e98b000000                JMP 0x00575082
00574ff7  ffb7280c0000              PUSH dword ptr [EDI + 0xc28]
00574ffd  8d8f040c0000              LEA ECX,[EDI + 0xc04]
00575003  e89833f8ff                CALL 0x004f83a0
00575008  83bf280c000000            CMP dword ptr [EDI + 0xc28],0x0
0057500f  0f847d000000              JZ 0x00575092
00575015  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
0057501b  83ec0c                    SUB ESP,0xc
0057501e  8bcc                      MOV ECX,ESP
00575020  83ec0c                    SUB ESP,0xc
00575023  c70100000000              MOV dword ptr [ECX],0x0
00575029  c7410400000000            MOV dword ptr [ECX + 0x4],0x0
00575030  894108                    MOV dword ptr [ECX + 0x8],EAX
00575033  8b87040c0000              MOV EAX,dword ptr [EDI + 0xc04]
00575039  8901                      MOV dword ptr [ECX],EAX
0057503b  8bcc                      MOV ECX,ESP
0057503d  8b87280c0000              MOV EAX,dword ptr [EDI + 0xc28]
00575043  0387240c0000              ADD EAX,dword ptr [EDI + 0xc24]
00575049  83ec0c                    SUB ESP,0xc
0057504c  c70100000000              MOV dword ptr [ECX],0x0
00575052  c7410400000000            MOV dword ptr [ECX + 0x4],0x0
00575059  894108                    MOV dword ptr [ECX + 0x8],EAX
0057505c  8b87180c0000              MOV EAX,dword ptr [EDI + 0xc18]
00575062  8901                      MOV dword ptr [ECX],EAX
00575064  8bcc                      MOV ECX,ESP
00575066  8b87240c0000              MOV EAX,dword ptr [EDI + 0xc24]
0057506c  c70100000000              MOV dword ptr [ECX],0x0
00575072  c7410400000000            MOV dword ptr [ECX + 0x4],0x0
00575079  894108                    MOV dword ptr [ECX + 0x8],EAX
0057507c  8b87180c0000              MOV EAX,dword ptr [EDI + 0xc18]
00575082  8901                      MOV dword ptr [ECX],EAX
00575084  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
0057508a  e8510f0000                CALL 0x00575fe0
0057508f  83c424                    ADD ESP,0x24
00575092  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00575098  83f808                    CMP EAX,0x8
0057509b  7405                      JZ 0x005750a2
0057509d  83f809                    CMP EAX,0x9
005750a0  752d                      JNZ 0x005750cf
005750a2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005750a6  7411                      JZ 0x005750b9
005750a8  68dcd2b100                PUSH 0xb1d2dc
005750ad  8d4f78                    LEA ECX,[EDI + 0x78]
005750b0  e8bb5de9ff                CALL 0x0040ae70
005750b5  84c0                      TEST AL,AL
005750b7  750d                      JNZ 0x005750c6
005750b9  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005750bc  85c0                      TEST EAX,EAX
005750be  740f                      JZ 0x005750cf
005750c0  80783400                  CMP byte ptr [EAX + 0x34],0x0
005750c4  7409                      JZ 0x005750cf
005750c6  c685e7feffff01            MOV byte ptr [EBP + 0xfffffee7],0x1
005750cd  eb07                      JMP 0x005750d6
005750cf  c685e7feffff00            MOV byte ptr [EBP + 0xfffffee7],0x0
005750d6  68801bb600                PUSH 0xb61b80
005750db  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
005750e1  8bcf                      MOV ECX,EDI
005750e3  50                        PUSH EAX
005750e4  e8071a1400                CALL 0x006b6af0
005750e9  80bde7feffff00            CMP byte ptr [EBP + 0xfffffee7],0x0
005750f0  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005750f8  f30f5800                  ADDSS XMM0,dword ptr [EAX]
005750fc  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
00575104  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00575109  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00575111  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00575119  0f841b010000              JZ 0x0057523a
0057511f  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
00575127  e81484eaff                CALL 0x0041d540
0057512c  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
00575134  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0057513c  e8df83eaff                CALL 0x0041d520
00575141  f30f10af64030000          MOVSS XMM5,dword ptr [EDI + 0x364]
00575149  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
00575151  0f28cd                    MOVAPS XMM1,XMM5
00575154  f30f109decfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffeec]
0057515c  0f28e2                    MOVAPS XMM4,XMM2
0057515f  f30f59c8                  MULSS XMM1,XMM0
00575163  f30f59d0                  MULSS XMM2,XMM0
00575167  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
0057516f  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
00575177  f30f59e3                  MULSS XMM4,XMM3
0057517b  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
00575183  f30f59eb                  MULSS XMM5,XMM3
00575187  f30f5ce1                  SUBSS XMM4,XMM1
0057518b  f30f58ea                  ADDSS XMM5,XMM2
0057518f  f30f11a5ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM4
00575197  f30f11adccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM5
0057519f  e87c83eaff                CALL 0x0041d520
005751a4  f30f10a5ecfeffff          MOVSS XMM4,dword ptr [EBP + 0xfffffeec]
005751ac  0f28d8                    MOVAPS XMM3,XMM0
005751af  f30f10adccfeffff          MOVSS XMM5,dword ptr [EBP + 0xfffffecc]
005751b7  0f28cc                    MOVAPS XMM1,XMM4
005751ba  f30f592520a2ba00          MULSS XMM4,dword ptr [0x00baa220]
005751c2  0f28d5                    MOVAPS XMM2,XMM5
005751c5  f30f592d20a2ba00          MULSS XMM5,dword ptr [0x00baa220]
005751cd  f30f10b5acfeffff          MOVSS XMM6,dword ptr [EBP + 0xfffffeac]
005751d5  f30f1085b8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb8]
005751dd  f30f59cb                  MULSS XMM1,XMM3
005751e1  f30f59d3                  MULSS XMM2,XMM3
005751e5  f30f59e3                  MULSS XMM4,XMM3
005751e9  f30f58f1                  ADDSS XMM6,XMM1
005751ed  f30f59eb                  MULSS XMM5,XMM3
005751f1  f30f58c2                  ADDSS XMM0,XMM2
005751f5  f30f582540b6c700          ADDSS XMM4,dword ptr [0x00c7b640]
005751fd  f30f11b5acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM6
00575205  f30f582d44b6c700          ADDSS XMM5,dword ptr [0x00c7b644]
0057520d  f30f11b5c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM6
00575215  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
0057521d  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
00575225  f30f11a580feffff          MOVSS dword ptr [EBP + 0xfffffe80],XMM4
0057522d  f30f11ad84feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM5
00575235  e988000000                JMP 0x005752c2
0057523a  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
00575242  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0057524a  f30f5e0554a8ba00          DIVSS XMM0,dword ptr [0x00baa854]
00575252  e8c982eaff                CALL 0x0041d520
00575257  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
0057525f  0f57d2                    XORPS XMM2,XMM2
00575262  f30f108db8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb8]
0057526a  f30f58ca                  ADDSS XMM1,XMM2
0057526e  f30f5885acfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffeac]
00575276  f30f118db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM1
0057527e  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
00575286  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
0057528e  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00575296  f30f58c2                  ADDSS XMM0,XMM2
0057529a  f30f118dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM1
005752a2  f30f118580feffff          MOVSS dword ptr [EBP + 0xfffffe80],XMM0
005752aa  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005752b2  f30f580528a5ba00          ADDSS XMM0,dword ptr [0x00baa528]
005752ba  f30f118584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM0
005752c2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005752c6  750c                      JNZ 0x005752d4
005752c8  c785d0feffff00000000      MOV dword ptr [EBP + 0xfffffed0],0x0
005752d2  eb13                      JMP 0x005752e7
005752d4  68801bb600                PUSH 0xb61b80
005752d9  8d4f78                    LEA ECX,[EDI + 0x78]
005752dc  e8ff59e9ff                CALL 0x0040ace0
005752e1  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
005752e7  83bde8feffff02            CMP dword ptr [EBP + 0xfffffee8],0x2
005752ee  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
005752f6  f30f11a5ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM4
005752fe  750a                      JNZ 0x0057530a
00575300  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
00575308  eb03                      JMP 0x0057530d
0057530a  0f28dc                    MOVAPS XMM3,XMM4
0057530d  f30f599f9c030000          MULSS XMM3,dword ptr [EDI + 0x39c]
00575315  8b97100c0000              MOV EDX,dword ptr [EDI + 0xc10]
0057531b  8bb7040c0000              MOV ESI,dword ptr [EDI + 0xc04]
00575321  f30f119da8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM3
00575329  8b87140c0000              MOV EAX,dword ptr [EDI + 0xc14]
0057532f  0387100c0000              ADD EAX,dword ptr [EDI + 0xc10]
00575335  8995b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EDX
0057533b  3bd0                      CMP EDX,EAX
0057533d  0f83ad040000              JNC 0x005757f0
00575343  8d4201                    LEA EAX,[EDX + 0x1]
00575346  85f6                      TEST ESI,ESI
00575348  7404                      JZ 0x0057534e
0057534a  8b0e                      MOV ECX,dword ptr [ESI]
0057534c  eb02                      JMP 0x00575350
0057534e  33c9                      XOR ECX,ECX
00575350  898590feffff              MOV dword ptr [EBP + 0xfffffe90],EAX
00575356  0f28c3                    MOVAPS XMM0,XMM3
00575359  d1ad90feffff              SHR dword ptr [EBP + 0xfffffe90],0x1
0057535f  83e001                    AND EAX,0x1
00575362  898db0feffff              MOV dword ptr [EBP + 0xfffffeb0],ECX
00575368  0f28cb                    MOVAPS XMM1,XMM3
0057536b  8b4908                    MOV ECX,dword ptr [ECX + 0x8]
0057536e  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
00575374  49                        DEC ECX
00575375  8b85b0feffff              MOV EAX,dword ptr [EBP + 0xfffffeb0]
0057537b  238d90feffff              AND ECX,dword ptr [EBP + 0xfffffe90]
00575381  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00575384  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00575387  8b8dbcfeffff              MOV ECX,dword ptr [EBP + 0xfffffebc]
0057538d  f30f5904c8                MULSS XMM0,dword ptr [EAX + ECX*0x8]
00575392  f30f594cc804              MULSS XMM1,dword ptr [EAX + ECX*0x8 + 0x4]
00575398  85f6                      TEST ESI,ESI
0057539a  7404                      JZ 0x005753a0
0057539c  8b06                      MOV EAX,dword ptr [ESI]
0057539e  eb02                      JMP 0x005753a2
005753a0  33c0                      XOR EAX,EAX
005753a2  8bca                      MOV ECX,EDX
005753a4  83e201                    AND EDX,0x1
005753a7  d1e9                      SHR ECX,0x1
005753a9  898d9cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ECX
005753af  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
005753b2  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005753b5  49                        DEC ECX
005753b6  238d9cfeffff              AND ECX,dword ptr [EBP + 0xfffffe9c]
005753bc  899594feffff              MOV dword ptr [EBP + 0xfffffe94],EDX
005753c2  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
005753c5  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
005753ca  f30f584cd004              ADDSS XMM1,dword ptr [EAX + EDX*0x8 + 0x4]
005753d0  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
005753d5  f30f114cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM1
005753db  85f6                      TEST ESI,ESI
005753dd  7404                      JZ 0x005753e3
005753df  8b06                      MOV EAX,dword ptr [ESI]
005753e1  eb02                      JMP 0x005753e5
005753e3  33c0                      XOR EAX,EAX
005753e5  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
005753e8  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005753eb  49                        DEC ECX
005753ec  238d90feffff              AND ECX,dword ptr [EBP + 0xfffffe90]
005753f2  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
005753f8  83c202                    ADD EDX,0x2
005753fb  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
005753fe  89858cfeffff              MOV dword ptr [EBP + 0xfffffe8c],EAX
00575404  85f6                      TEST ESI,ESI
00575406  7404                      JZ 0x0057540c
00575408  8b0e                      MOV ECX,dword ptr [ESI]
0057540a  eb02                      JMP 0x0057540e
0057540c  33c9                      XOR ECX,ECX
0057540e  898d98feffff              MOV dword ptr [EBP + 0xfffffe98],ECX
00575414  8bc2                      MOV EAX,EDX
00575416  8b4908                    MOV ECX,dword ptr [ECX + 0x8]
00575419  83e201                    AND EDX,0x1
0057541c  d1e8                      SHR EAX,0x1
0057541e  49                        DEC ECX
0057541f  23c8                      AND ECX,EAX
00575421  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
00575427  8b8598feffff              MOV EAX,dword ptr [EBP + 0xfffffe98]
0057542d  0f2edc                    UCOMISS XMM3,XMM4
00575430  8995ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EDX
00575436  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00575439  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0057543c  f30f1014d0                MOVSS XMM2,dword ptr [EAX + EDX*0x8]
00575441  f30f591508a1ba00          MULSS XMM2,dword ptr [0x00baa108]
00575449  9f                        LAHF
0057544a  f30f5815e0a3ba00          ADDSS XMM2,dword ptr [0x00baa3e0]
00575452  f6c444                    TEST AH,0x44
00575455  7b16                      JNP 0x0057546d
00575457  0f28ca                    MOVAPS XMM1,XMM2
0057545a  0f28c2                    MOVAPS XMM0,XMM2
0057545d  f30f58cb                  ADDSS XMM1,XMM3
00575461  f30f59c3                  MULSS XMM0,XMM3
00575465  f30f5cc8                  SUBSS XMM1,XMM0
00575469  f30f5ed1                  DIVSS XMM2,XMM1
0057546d  8b85bcfeffff              MOV EAX,dword ptr [EBP + 0xfffffebc]
00575473  0f28c2                    MOVAPS XMM0,XMM2
00575476  8b8d8cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe8c]
0057547c  f30f5904c1                MULSS XMM0,dword ptr [ECX + EAX*0x8]
00575481  f30f5954c104              MULSS XMM2,dword ptr [ECX + EAX*0x8 + 0x4]
00575487  f30f118588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM0
0057548f  f30f1195a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM2
00575497  e8c49a1700                CALL 0x006eef60
0057549c  660f6ec0                  MOVD XMM0,EAX
005754a0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005754a4  c1e81f                    SHR EAX,0x1f
005754a7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005754b0  660f5ac0                  CVTPD2PS XMM0,XMM0
005754b4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005754bc  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005754c4  f30f58c0                  ADDSS XMM0,XMM0
005754c8  f30f11858cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM0
005754d0  e84b80eaff                CALL 0x0041d520
005754d5  f30f11857cfeffff          MOVSS dword ptr [EBP + 0xfffffe7c],XMM0
005754dd  e87e9a1700                CALL 0x006eef60
005754e2  660f6ec8                  MOVD XMM1,EAX
005754e6  f30fe6c9                  CVTDQ2PD XMM1,XMM1
005754ea  c1e81f                    SHR EAX,0x1f
005754ed  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
005754f6  660f5ac1                  CVTPD2PS XMM0,XMM1
005754fa  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00575502  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
0057550a  f30f10858cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe8c]
00575512  e82980eaff                CALL 0x0041d540
00575517  f30f10a57cfeffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe7c]
0057551f  0f28d8                    MOVAPS XMM3,XMM0
00575522  f30f599d98feffff          MULSS XMM3,dword ptr [EBP + 0xfffffe98]
0057552a  f30f59a598feffff          MULSS XMM4,dword ptr [EBP + 0xfffffe98]
00575532  f30f1095a8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffea8]
0057553a  f30f591df8a1ba00          MULSS XMM3,dword ptr [0x00baa1f8]
00575542  f30f5925f8a1ba00          MULSS XMM4,dword ptr [0x00baa1f8]
0057554a  f30f59da                  MULSS XMM3,XMM2
0057554e  f30f59e2                  MULSS XMM4,XMM2
00575552  85f6                      TEST ESI,ESI
00575554  7404                      JZ 0x0057555a
00575556  8b06                      MOV EAX,dword ptr [ESI]
00575558  eb02                      JMP 0x0057555c
0057555a  33c0                      XOR EAX,EAX
0057555c  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0057555f  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00575562  49                        DEC ECX
00575563  238db0feffff              AND ECX,dword ptr [EBP + 0xfffffeb0]
00575569  8b95ccfeffff              MOV EDX,dword ptr [EBP + 0xfffffecc]
0057556f  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00575572  f30f100cd0                MOVSS XMM1,dword ptr [EAX + EDX*0x8]
00575577  0f28c1                    MOVAPS XMM0,XMM1
0057557a  f30f59cc                  MULSS XMM1,XMM4
0057557e  f30f59c3                  MULSS XMM0,XMM3
00575582  f30f109d88feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe88]
0057558a  f30f58d8                  ADDSS XMM3,XMM0
0057558e  f30f1085a4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea4]
00575596  f30f58c1                  ADDSS XMM0,XMM1
0057559a  85f6                      TEST ESI,ESI
0057559c  7404                      JZ 0x005755a2
0057559e  8b06                      MOV EAX,dword ptr [ESI]
005755a0  eb02                      JMP 0x005755a4
005755a2  33c0                      XOR EAX,EAX
005755a4  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
005755a7  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005755aa  49                        DEC ECX
005755ab  238d90feffff              AND ECX,dword ptr [EBP + 0xfffffe90]
005755b1  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
005755b4  8b8dbcfeffff              MOV ECX,dword ptr [EBP + 0xfffffebc]
005755ba  f30f111cc8                MOVSS dword ptr [EAX + ECX*0x8],XMM3
005755bf  f30f1144c804              MOVSS dword ptr [EAX + ECX*0x8 + 0x4],XMM0
005755c5  85f6                      TEST ESI,ESI
005755c7  7404                      JZ 0x005755cd
005755c9  8b06                      MOV EAX,dword ptr [ESI]
005755cb  eb02                      JMP 0x005755cf
005755cd  33c0                      XOR EAX,EAX
005755cf  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
005755d2  0f28c2                    MOVAPS XMM0,XMM2
005755d5  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005755d8  49                        DEC ECX
005755d9  238db0feffff              AND ECX,dword ptr [EBP + 0xfffffeb0]
005755df  f30f590508a1ba00          MULSS XMM0,dword ptr [0x00baa108]
005755e7  c78588feffff00000000      MOV dword ptr [EBP + 0xfffffe88],0x0
005755f1  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
005755f4  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
005755fa  f30f100cd0                MOVSS XMM1,dword ptr [EAX + EDX*0x8]
005755ff  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
00575605  f30f5cc8                  SUBSS XMM1,XMM0
00575609  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
00575610  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
00575618  0f46c1                    CMOVBE EAX,ECX
0057561b  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0057561f  85f6                      TEST ESI,ESI
00575621  7404                      JZ 0x00575627
00575623  8b06                      MOV EAX,dword ptr [ESI]
00575625  eb02                      JMP 0x00575629
00575627  33c0                      XOR EAX,EAX
00575629  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0057562c  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0057562f  49                        DEC ECX
00575630  238db0feffff              AND ECX,dword ptr [EBP + 0xfffffeb0]
00575636  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00575639  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
0057563e  85f6                      TEST ESI,ESI
00575640  7404                      JZ 0x00575646
00575642  8b06                      MOV EAX,dword ptr [ESI]
00575644  eb02                      JMP 0x00575648
00575646  33c0                      XOR EAX,EAX
00575648  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0057564b  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0057564e  49                        DEC ECX
0057564f  238d9cfeffff              AND ECX,dword ptr [EBP + 0xfffffe9c]
00575655  f30f108dacfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeac]
0057565d  f30f1085b8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb8]
00575665  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00575668  8b8d94feffff              MOV ECX,dword ptr [EBP + 0xfffffe94]
0057566e  f30f5c44c804              SUBSS XMM0,dword ptr [EAX + ECX*0x8 + 0x4]
00575674  f30f5c0cc8                SUBSS XMM1,dword ptr [EAX + ECX*0x8]
00575679  f30f59c0                  MULSS XMM0,XMM0
0057567d  f30f59c9                  MULSS XMM1,XMM1
00575681  f30f58c1                  ADDSS XMM0,XMM1
00575685  e8c603ecff                CALL 0x00435a50
0057568a  f30f102d04a9ba00          MOVSS XMM5,dword ptr [0x00baa904]
00575692  0f28e0                    MOVAPS XMM4,XMM0
00575695  0f2fe5                    COMISS XMM4,XMM5
00575698  0f86ab000000              JBE 0x00575749
0057569e  f30f108da8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea8]
005756a6  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
005756ae  e8fdf51000                CALL 0x00684cb0
005756b3  0f28cc                    MOVAPS XMM1,XMM4
005756b6  0f28d0                    MOVAPS XMM2,XMM0
005756b9  f30f5ccd                  SUBSS XMM1,XMM5
005756bd  f30f59d1                  MULSS XMM2,XMM1
005756c1  f30f58d5                  ADDSS XMM2,XMM5
005756c5  85f6                      TEST ESI,ESI
005756c7  7404                      JZ 0x005756cd
005756c9  8b06                      MOV EAX,dword ptr [ESI]
005756cb  eb02                      JMP 0x005756cf
005756cd  33c0                      XOR EAX,EAX
005756cf  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
005756d2  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005756d5  49                        DEC ECX
005756d6  238d9cfeffff              AND ECX,dword ptr [EBP + 0xfffffe9c]
005756dc  8b9594feffff              MOV EDX,dword ptr [EBP + 0xfffffe94]
005756e2  f30f109db8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffeb8]
005756ea  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
005756ed  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
005756f2  f30f104cd004              MOVSS XMM1,dword ptr [EAX + EDX*0x8 + 0x4]
005756f8  f30f5ccb                  SUBSS XMM1,XMM3
005756fc  f30f5c85acfeffff          SUBSS XMM0,dword ptr [EBP + 0xfffffeac]
00575704  f30f59ca                  MULSS XMM1,XMM2
00575708  f30f59c2                  MULSS XMM0,XMM2
0057570c  f30f1095acfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeac]
00575714  f30f5ecc                  DIVSS XMM1,XMM4
00575718  f30f5ec4                  DIVSS XMM0,XMM4
0057571c  f30f58d9                  ADDSS XMM3,XMM1
00575720  f30f58d0                  ADDSS XMM2,XMM0
00575724  85f6                      TEST ESI,ESI
00575726  7404                      JZ 0x0057572c
00575728  8b06                      MOV EAX,dword ptr [ESI]
0057572a  eb02                      JMP 0x0057572e
0057572c  33c0                      XOR EAX,EAX
0057572e  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00575731  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00575734  49                        DEC ECX
00575735  238d9cfeffff              AND ECX,dword ptr [EBP + 0xfffffe9c]
0057573b  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0057573e  f30f1114d0                MOVSS dword ptr [EAX + EDX*0x8],XMM2
00575743  f30f115cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM3
00575749  85f6                      TEST ESI,ESI
0057574b  7404                      JZ 0x00575751
0057574d  8b06                      MOV EAX,dword ptr [ESI]
0057574f  eb02                      JMP 0x00575753
00575751  33c0                      XOR EAX,EAX
00575753  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00575756  0f57c0                    XORPS XMM0,XMM0
00575759  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0057575c  49                        DEC ECX
0057575d  238db0feffff              AND ECX,dword ptr [EBP + 0xfffffeb0]
00575763  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00575766  8b8dccfeffff              MOV ECX,dword ptr [EBP + 0xfffffecc]
0057576c  0f2f04c8                  COMISS XMM0,dword ptr [EAX + ECX*0x8]
00575770  7260                      JC 0x005757d2
00575772  83bde8feffff02            CMP dword ptr [EBP + 0xfffffee8],0x2
00575779  7457                      JZ 0x005757d2
0057577b  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
00575781  83ec0c                    SUB ESP,0xc
00575784  8bc4                      MOV EAX,ESP
00575786  83ec0c                    SUB ESP,0xc
00575789  8d4a03                    LEA ECX,[EDX + 0x3]
0057578c  894808                    MOV dword ptr [EAX + 0x8],ECX
0057578f  8d8f040c0000              LEA ECX,[EDI + 0xc04]
00575795  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
0057579c  8930                      MOV dword ptr [EAX],ESI
0057579e  8bc4                      MOV EAX,ESP
005757a0  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
005757a7  8930                      MOV dword ptr [EAX],ESI
005757a9  895008                    MOV dword ptr [EAX + 0x8],EDX
005757ac  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005757b2  50                        PUSH EAX
005757b3  e81838f2ff                CALL 0x00498fd0
005757b8  f30f109da8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffea8]
005757c0  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
005757c8  8b30                      MOV ESI,dword ptr [EAX]
005757ca  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
005757cd  e957fbffff                JMP 0x00575329
005757d2  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
005757d8  f30f109da8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffea8]
005757e0  83c203                    ADD EDX,0x3
005757e3  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
005757eb  e939fbffff                JMP 0x00575329
005757f0  83bde8feffff02            CMP dword ptr [EBP + 0xfffffee8],0x2
005757f7  0f84ec000000              JZ 0x005758e9
005757fd  83bf140c000000            CMP dword ptr [EDI + 0xc14],0x0
00575804  8db7040c0000              LEA ESI,[EDI + 0xc04]
0057580a  744d                      JZ 0x00575859
0057580c  8b97100c0000              MOV EDX,dword ptr [EDI + 0xc10]
00575812  8bc2                      MOV EAX,EDX
00575814  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
00575817  83e201                    AND EDX,0x1
0057581a  f30f108dacfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeac]
00575822  49                        DEC ECX
00575823  f30f1085b8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb8]
0057582b  d1e8                      SHR EAX,0x1
0057582d  23c8                      AND ECX,EAX
0057582f  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00575832  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00575835  f30f5c44d004              SUBSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
0057583b  f30f5c0cd0                SUBSS XMM1,dword ptr [EAX + EDX*0x8]
00575840  f30f59c0                  MULSS XMM0,XMM0
00575844  f30f59c9                  MULSS XMM1,XMM1
00575848  f30f58c1                  ADDSS XMM0,XMM1
0057584c  0f2f05e8a7ba00            COMISS XMM0,dword ptr [0x00baa7e8]
00575853  0f8690000000              JBE 0x005758e9
00575859  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
0057585f  85c0                      TEST EAX,EAX
00575861  740d                      JZ 0x00575870
00575863  f30f104010                MOVSS XMM0,dword ptr [EAX + 0x10]
00575868  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
00575870  e8eb961700                CALL 0x006eef60
00575875  8bce                      MOV ECX,ESI
00575877  c785a4feffff00000000      MOV dword ptr [EBP + 0xfffffea4],0x0
00575881  660f6ec0                  MOVD XMM0,EAX
00575885  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00575889  c1e81f                    SHR EAX,0x1f
0057588c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00575895  8d85a0feffff              LEA EAX,[EBP + 0xfffffea0]
0057589b  50                        PUSH EAX
0057589c  660f5ac0                  CVTPD2PS XMM0,XMM0
005758a0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005758a8  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
005758b0  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
005758b8  f30f5985ecfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffeec]
005758c0  f30f1185a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM0
005758c8  e8c338f2ff                CALL 0x00499190
005758cd  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
005758d3  8bce                      MOV ECX,ESI
005758d5  50                        PUSH EAX
005758d6  e8b538f2ff                CALL 0x00499190
005758db  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
005758e1  8bce                      MOV ECX,ESI
005758e3  50                        PUSH EAX
005758e4  e8a738f2ff                CALL 0x00499190
005758e9  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
005758ef  85c0                      TEST EAX,EAX
005758f1  743d                      JZ 0x00575930
005758f3  80780c00                  CMP byte ptr [EAX + 0xc],0x0
005758f7  7437                      JZ 0x00575930
005758f9  6a02                      PUSH 0x2
005758fb  8d4f48                    LEA ECX,[EDI + 0x48]
005758fe  e81d59e9ff                CALL 0x0040b220
00575903  8d7048                    LEA ESI,[EAX + 0x48]
00575906  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
0057590c  83c018                    ADD EAX,0x18
0057590f  3bf0                      CMP ESI,EAX
00575911  7467                      JZ 0x0057597a
00575913  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00575916  0f1106                    MOVUPS xmmword ptr [ESI],XMM0
00575919  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
0057591d  0f114610                  MOVUPS xmmword ptr [ESI + 0x10],XMM0
00575921  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
00575926  660fd64620                MOVQ qword ptr [ESI + 0x20],XMM0
0057592b  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
0057592e  eb47                      JMP 0x00575977
00575930  6a02                      PUSH 0x2
00575932  8d4f48                    LEA ECX,[EDI + 0x48]
00575935  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
0057593c  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
00575943  c745c000000000            MOV dword ptr [EBP + -0x40],0x0
0057594a  e8d158e9ff                CALL 0x0040b220
0057594f  8d7048                    LEA ESI,[EAX + 0x48]
00575952  8d4598                    LEA EAX,[EBP + -0x68]
00575955  3bf0                      CMP ESI,EAX
00575957  7421                      JZ 0x0057597a
00575959  0f280550b0ba00            MOVAPS XMM0,xmmword ptr [0x00bab050]
00575960  8b45c0                    MOV EAX,dword ptr [EBP + -0x40]
00575963  0f1106                    MOVUPS xmmword ptr [ESI],XMM0
00575966  0f57c0                    XORPS XMM0,XMM0
00575969  0f114610                  MOVUPS xmmword ptr [ESI + 0x10],XMM0
0057596d  f30f7e45b8                MOVQ XMM0,qword ptr [EBP + -0x48]
00575972  660fd64620                MOVQ qword ptr [ESI + 0x20],XMM0
00575977  894628                    MOV dword ptr [ESI + 0x28],EAX
0057597a  6a01                      PUSH 0x1
0057597c  8d4f48                    LEA ECX,[EDI + 0x48]
0057597f  e89c58e9ff                CALL 0x0040b220
00575984  8d4848                    LEA ECX,[EAX + 0x48]
00575987  3bce                      CMP ECX,ESI
00575989  741e                      JZ 0x005759a9
0057598b  0f1006                    MOVUPS XMM0,xmmword ptr [ESI]
0057598e  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00575991  0f104610                  MOVUPS XMM0,xmmword ptr [ESI + 0x10]
00575995  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00575999  f30f7e4620                MOVQ XMM0,qword ptr [ESI + 0x20]
0057599e  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
005759a3  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
005759a6  894128                    MOV dword ptr [ECX + 0x28],EAX
005759a9  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
005759ac  64890d00000000            MOV dword ptr FS:[0x0],ECX
005759b3  59                        POP ECX
005759b4  5f                        POP EDI
005759b5  5e                        POP ESI
005759b6  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
005759b9  33cd                      XOR ECX,EBP
005759bb  e86b975700                CALL 0x00aef12b
005759c0  8be5                      MOV ESP,EBP
005759c2  5d                        POP EBP
005759c3  8be3                      MOV ESP,EBX
005759c5  5b                        POP EBX
005759c6  c3                        RET
