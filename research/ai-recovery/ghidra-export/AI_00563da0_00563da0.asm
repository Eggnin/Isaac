; J460 NPC AI 0x00563da0 AI_00563da0
; types=879
; identities=879.0.0
; entry=00563da0
00563da0  53                        PUSH EBX
00563da1  8bdc                      MOV EBX,ESP
00563da3  83ec08                    SUB ESP,0x8
00563da6  83e4f8                    AND ESP,0xfffffff8
00563da9  83c404                    ADD ESP,0x4
00563dac  55                        PUSH EBP
00563dad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00563db0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00563db4  8bec                      MOV EBP,ESP
00563db6  6aff                      PUSH -0x1
00563db8  68e54eaf00                PUSH 0xaf4ee5
00563dbd  64a100000000              MOV EAX,FS:[0x0]
00563dc3  50                        PUSH EAX
00563dc4  53                        PUSH EBX
00563dc5  81ec40010000              SUB ESP,0x140
00563dcb  a1b493bf00                MOV EAX,[0x00bf93b4]
00563dd0  33c5                      XOR EAX,EBP
00563dd2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00563dd5  56                        PUSH ESI
00563dd6  57                        PUSH EDI
00563dd7  50                        PUSH EAX
00563dd8  8d45f4                    LEA EAX,[EBP + -0xc]
00563ddb  64a300000000              MOV FS:[0x0],EAX
00563de1  8bf9                      MOV EDI,ECX
00563de3  89bdbcfeffff              MOV dword ptr [EBP + 0xfffffebc],EDI
00563de9  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
00563df1  6a01                      PUSH 0x1
00563df3  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00563dfb  660f6e9fa00b0000          MOVD XMM3,dword ptr [EDI + 0xba0]
00563e03  0f57d2                    XORPS XMM2,XMM2
00563e06  f30f100d50a9ba00          MOVSS XMM1,dword ptr [0x00baa950]
00563e0e  2bf0                      SUB ESI,EAX
00563e10  0f5bdb                    CVTDQ2PS XMM3,XMM3
00563e13  89b5c0feffff              MOV dword ptr [EBP + 0xfffffec0],ESI
00563e19  e822501700                CALL 0x006d8e40
00563e1e  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00563e24  85c0                      TEST EAX,EAX
00563e26  0f84eb0f0000              JZ 0x00564e17
00563e2c  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
00563e34  83f804                    CMP EAX,0x4
00563e37  0f8475060000              JZ 0x005644b2
00563e3d  83f808                    CMP EAX,0x8
00563e40  0f85bf0e0000              JNZ 0x00564d05
00563e46  6a00                      PUSH 0x0
00563e48  8bcf                      MOV ECX,EDI
00563e4a  e801521700                CALL 0x006d9050
00563e4f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00563e53  8d7778                    LEA ESI,[EDI + 0x78]
00563e56  0f84fe050000              JZ 0x0056445a
00563e5c  68dcd2b100                PUSH 0xb1d2dc
00563e61  8bce                      MOV ECX,ESI
00563e63  e8686feaff                CALL 0x0040add0
00563e68  84c0                      TEST AL,AL
00563e6a  7449                      JZ 0x00563eb5
00563e6c  51                        PUSH ECX
00563e6d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00563e74  6a00                      PUSH 0x0
00563e76  6a0a                      PUSH 0xa
00563e78  51                        PUSH ECX
00563e79  c704240000803f            MOV dword ptr [ESP],0x3f800000
00563e80  e8dbb01800                CALL 0x006eef60
00563e85  f7d0                      NOT EAX
00563e87  8bcf                      MOV ECX,EDI
00563e89  83e001                    AND EAX,0x1
00563e8c  83c00b                    ADD EAX,0xb
00563e8f  50                        PUSH EAX
00563e90  e80b2d1700                CALL 0x006d6ba0
00563e95  51                        PUSH ECX
00563e96  c704240000803f            MOV dword ptr [ESP],0x3f800000
00563e9d  6a00                      PUSH 0x0
00563e9f  6a0a                      PUSH 0xa
00563ea1  51                        PUSH ECX
00563ea2  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
00563ea9  8bcf                      MOV ECX,EDI
00563eab  68d5000000                PUSH 0xd5
00563eb0  e8eb2c1700                CALL 0x006d6ba0
00563eb5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00563eb9  0f849b050000              JZ 0x0056445a
00563ebf  68dcd2b100                PUSH 0xb1d2dc
00563ec4  8bce                      MOV ECX,ESI
00563ec6  e8a56feaff                CALL 0x0040ae70
00563ecb  84c0                      TEST AL,AL
00563ecd  0f8478050000              JZ 0x0056444b
00563ed3  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00563eda  660f6e8fc40b0000          MOVD XMM1,dword ptr [EDI + 0xbc4]
00563ee2  0f5bc9                    CVTDQ2PS XMM1,XMM1
00563ee5  f30f590d10a9ba00          MULSS XMM1,dword ptr [0x00baa910]
00563eed  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
00563ef5  7445                      JZ 0x00563f3c
00563ef7  8d8f200f0000              LEA ECX,[EDI + 0xf20]
00563efd  6840b6c700                PUSH 0xc7b640
00563f02  e829c74a00                CALL 0x00a10630
00563f07  84c0                      TEST AL,AL
00563f09  7431                      JZ 0x00563f3c
00563f0b  f30f1009                  MOVSS XMM1,dword ptr [ECX]
00563f0f  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00563f14  e8475ef3ff                CALL 0x00499d60
00563f19  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00563f21  f30f101510a9ba00          MOVSS XMM2,dword ptr [0x00baa910]
00563f29  0f28c8                    MOVAPS XMM1,XMM0
00563f2c  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
00563f34  e817eb1100                CALL 0x00682a50
00563f39  0f28c8                    MOVAPS XMM1,XMM0
00563f3c  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
00563f44  0f28c1                    MOVAPS XMM0,XMM1
00563f47  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
00563f4f  e8ec95ebff                CALL 0x0041d540
00563f54  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
00563f5c  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
00563f64  e8b795ebff                CALL 0x0041d520
00563f69  83bdc0feffff00            CMP dword ptr [EBP + 0xfffffec0],0x0
00563f70  0f28d0                    MOVAPS XMM2,XMM0
00563f73  f30f1195e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM2
00563f7b  c785e0feffff00000000      MOV dword ptr [EBP + 0xfffffee0],0x0
00563f85  0f8ec0040000              JLE 0x0056444b
00563f8b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00563f90  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00563f96  83f808                    CMP EAX,0x8
00563f99  0f8dac040000              JGE 0x0056444b
00563f9f  40                        INC EAX
00563fa0  898710040000              MOV dword ptr [EDI + 0x410],EAX
00563fa6  660f6ec8                  MOVD XMM1,EAX
00563faa  0f5bc9                    CVTDQ2PS XMM1,XMM1
00563fad  f30f590da0a8ba00          MULSS XMM1,dword ptr [0x00baa8a0]
00563fb5  0f28c1                    MOVAPS XMM0,XMM1
00563fb8  f30f59ca                  MULSS XMM1,XMM2
00563fbc  f30f5985c4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffec4]
00563fc4  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00563fcc  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00563fd4  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
00563fdc  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
00563fe4  e877af1800                CALL 0x006eef60
00563fe9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00563fef  50                        PUSH EAX
00563ff0  6a00                      PUSH 0x0
00563ff2  57                        PUSH EDI
00563ff3  6840b6c700                PUSH 0xc7b640
00563ff8  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
00563ffe  50                        PUSH EAX
00563fff  6a17                      PUSH 0x17
00564001  68e8030000                PUSH 0x3e8
00564006  e8154becff                CALL 0x00428b20
0056400b  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
00564013  8bc8                      MOV ECX,EAX
00564015  0f5bc0                    CVTDQ2PS XMM0,XMM0
00564018  8b01                      MOV EAX,dword ptr [ECX]
0056401a  c7815c0400005a000000      MOV dword ptr [ECX + 0x45c],0x5a
00564024  c781600400005a000000      MOV dword ptr [ECX + 0x460],0x5a
0056402e  f30f5905f4a0ba00          MULSS XMM0,dword ptr [0x00baa0f4]
00564036  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
0056403e  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
00564046  f30f1181e4000000          MOVSS dword ptr [ECX + 0xe4],XMM0
0056404e  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
00564056  ff500c                    CALL dword ptr [EAX + 0xc]
00564059  a17816c700                MOV EAX,[0x00c71678]
0056405e  51                        PUSH ECX
0056405f  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
00564065  c7042400000000            MOV dword ptr [ESP],0x0
0056406c  51                        PUSH ECX
0056406d  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00564073  e8e8f22a00                CALL 0x00813360
00564078  84c0                      TEST AL,AL
0056407a  0f8436020000              JZ 0x005642b6
00564080  e8dbae1800                CALL 0x006eef60
00564085  c745e00ad7a33d            MOV dword ptr [EBP + -0x20],0x3da3d70a
0056408c  c745e40000003f            MOV dword ptr [EBP + -0x1c],0x3f000000
00564093  c745e80ad7233c            MOV dword ptr [EBP + -0x18],0x3c23d70a
0056409a  660f6ec0                  MOVD XMM0,EAX
0056409e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005640a2  c1e81f                    SHR EAX,0x1f
005640a5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005640ae  660f5ac8                  CVTPD2PS XMM1,XMM0
005640b2  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005640ba  0f28c1                    MOVAPS XMM0,XMM1
005640bd  f30f598f38030000          MULSS XMM1,dword ptr [EDI + 0x338]
005640c5  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
005640cd  f30f58c9                  ADDSS XMM1,XMM1
005640d1  f30f58c0                  ADDSS XMM0,XMM0
005640d5  f30f118db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM1
005640dd  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
005640e5  0f57c0                    XORPS XMM0,XMM0
005640e8  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
005640ec  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
005640f3  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
005640f7  e864ae1800                CALL 0x006eef60
005640fc  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00564104  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
0056410c  660f6ec0                  MOVD XMM0,EAX
00564110  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00564114  c1e81f                    SHR EAX,0x1f
00564117  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00564120  660f5ac0                  CVTPD2PS XMM0,XMM0
00564124  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0056412c  f30f5905dcadba00          MULSS XMM0,dword ptr [0x00baaddc]
00564134  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
0056413c  f30f1085d8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed8]
00564144  f30f5cc1                  SUBSS XMM0,XMM1
00564148  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
00564150  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00564158  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
00564160  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
00564168  f30f5cc1                  SUBSS XMM0,XMM1
0056416c  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
00564174  e8e7ad1800                CALL 0x006eef60
00564179  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056417f  50                        PUSH EAX
00564180  6a02                      PUSH 0x2
00564182  6a00                      PUSH 0x0
00564184  8d85b4feffff              LEA EAX,[EBP + 0xfffffeb4]
0056418a  50                        PUSH EAX
0056418b  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00564191  50                        PUSH EAX
00564192  6a02                      PUSH 0x2
00564194  68e8030000                PUSH 0x3e8
00564199  e88249ecff                CALL 0x00428b20
0056419e  6a01                      PUSH 0x1
005641a0  8bf0                      MOV ESI,EAX
005641a2  8d45c0                    LEA EAX,[EBP + -0x40]
005641a5  6a00                      PUSH 0x0
005641a7  68ff000000                PUSH 0xff
005641ac  6aff                      PUSH -0x1
005641ae  8b16                      MOV EDX,dword ptr [ESI]
005641b0  8bce                      MOV ECX,ESI
005641b2  50                        PUSH EAX
005641b3  ff523c                    CALL dword ptr [EDX + 0x3c]
005641b6  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
005641be  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
005641c8  f30f1186e0000000          MOVSS dword ptr [ESI + 0xe0],XMM0
005641d0  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
005641da  e881ad1800                CALL 0x006eef60
005641df  660f6ec0                  MOVD XMM0,EAX
005641e3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005641e7  c1e81f                    SHR EAX,0x1f
005641ea  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005641f3  a17816c700                MOV EAX,[0x00c71678]
005641f8  660f5ac0                  CVTPD2PS XMM0,XMM0
005641fc  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00564204  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0056420c  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
00564214  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0056421a  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
00564222  0f2f8040720000            COMISS XMM0,dword ptr [EAX + 0x7240]
00564229  0f8687000000              JBE 0x005642b6
0056422f  e82cad1800                CALL 0x006eef60
00564234  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056423a  50                        PUSH EAX
0056423b  6a00                      PUSH 0x0
0056423d  6a00                      PUSH 0x0
0056423f  6840b6c700                PUSH 0xc7b640
00564244  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
0056424a  50                        PUSH EAX
0056424b  6a07                      PUSH 0x7
0056424d  68e8030000                PUSH 0x3e8
00564252  e8c948ecff                CALL 0x00428b20
00564257  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
0056425f  8d4dc0                    LEA ECX,[EBP + -0x40]
00564262  8bf0                      MOV ESI,EAX
00564264  f30f118674030000          MOVSS dword ptr [ESI + 0x374],XMM0
0056426c  f30f118678030000          MOVSS dword ptr [ESI + 0x378],XMM0
00564274  e857ec1100                CALL 0x00682ed0
00564279  8b06                      MOV EAX,dword ptr [ESI]
0056427b  8d4dc0                    LEA ECX,[EBP + -0x40]
0056427e  0f2805b0bbba00            MOVAPS XMM0,xmmword ptr [0x00babbb0]
00564285  6a01                      PUSH 0x1
00564287  6a00                      PUSH 0x0
00564289  68ff000000                PUSH 0xff
0056428e  6aff                      PUSH -0x1
00564290  51                        PUSH ECX
00564291  8bce                      MOV ECX,ESI
00564293  c745e00ad7a33d            MOV dword ptr [EBP + -0x20],0x3da3d70a
0056429a  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0056429e  c745e40000003f            MOV dword ptr [EBP + -0x1c],0x3f000000
005642a5  c745e80ad7233c            MOV dword ptr [EBP + -0x18],0x3c23d70a
005642ac  ff503c                    CALL dword ptr [EAX + 0x3c]
005642af  8b06                      MOV EAX,dword ptr [ESI]
005642b1  8bce                      MOV ECX,ESI
005642b3  ff500c                    CALL dword ptr [EAX + 0xc]
005642b6  f6871004000001            TEST byte ptr [EDI + 0x410],0x1
005642bd  0f8567010000              JNZ 0x0056442a
005642c3  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
005642c9  e862acedff                CALL 0x0043ef30
005642ce  50                        PUSH EAX
005642cf  51                        PUSH ECX
005642d0  c7042400002041            MOV dword ptr [ESP],0x41200000
005642d7  8bcf                      MOV ECX,EDI
005642d9  6840b6c700                PUSH 0xc7b640
005642de  6a01                      PUSH 0x1
005642e0  e8eb8a1600                CALL 0x006ccdd0
005642e5  8bf0                      MOV ESI,EAX
005642e7  f30f108620040000          MOVSS XMM0,dword ptr [ESI + 0x420]
005642ef  f30f590524a3ba00          MULSS XMM0,dword ptr [0x00baa324]
005642f7  f30f118620040000          MOVSS dword ptr [ESI + 0x420],XMM0
005642ff  e85cac1800                CALL 0x006eef60
00564304  660f6ec0                  MOVD XMM0,EAX
00564308  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056430c  c1e81f                    SHR EAX,0x1f
0056430f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00564318  660f5ac0                  CVTPD2PS XMM0,XMM0
0056431c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00564324  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
0056432c  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
00564334  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0056433c  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
00564344  e8f791ebff                CALL 0x0041d540
00564349  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
00564351  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
00564359  e8c291ebff                CALL 0x0041d520
0056435e  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
00564366  e8f5ab1800                CALL 0x006eef60
0056436b  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
00564373  8d4dc0                    LEA ECX,[EBP + -0x40]
00564376  f30f5985d4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffed4]
0056437e  660f6ec8                  MOVD XMM1,EAX
00564382  f30fe6c9                  CVTDQ2PD XMM1,XMM1
00564386  c1e81f                    SHR EAX,0x1f
00564389  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
00564392  660f5ad1                  CVTPD2PS XMM2,XMM1
00564396  f30f108dc4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec4]
0056439e  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
005643a6  0f28d9                    MOVAPS XMM3,XMM1
005643a9  f30f599dd0feffff          MULSS XMM3,dword ptr [EBP + 0xfffffed0]
005643b1  f30f598dd4feffff          MULSS XMM1,dword ptr [EBP + 0xfffffed4]
005643b9  f30f59155ca7ba00          MULSS XMM2,dword ptr [0x00baa75c]
005643c1  f30f5cd8                  SUBSS XMM3,XMM0
005643c5  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
005643cd  f30f5985d0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffed0]
005643d5  f30f58155ca7ba00          ADDSS XMM2,dword ptr [0x00baa75c]
005643dd  f30f58c8                  ADDSS XMM1,XMM0
005643e1  f30f59da                  MULSS XMM3,XMM2
005643e5  f30f59ca                  MULSS XMM1,XMM2
005643e9  f30f119e60030000          MOVSS dword ptr [ESI + 0x360],XMM3
005643f1  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
005643f9  e8d2ea1100                CALL 0x00682ed0
005643fe  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00564405  8d4dc0                    LEA ECX,[EBP + -0x40]
00564408  6a01                      PUSH 0x1
0056440a  6a00                      PUSH 0x0
0056440c  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00564410  68ff000000                PUSH 0xff
00564415  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
0056441c  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00564420  8b06                      MOV EAX,dword ptr [ESI]
00564422  6aff                      PUSH -0x1
00564424  51                        PUSH ECX
00564425  8bce                      MOV ECX,ESI
00564427  ff503c                    CALL dword ptr [EAX + 0x3c]
0056442a  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00564430  f30f1095e4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee4]
00564438  40                        INC EAX
00564439  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
0056443f  3b85c0feffff              CMP EAX,dword ptr [EBP + 0xfffffec0]
00564445  0f8c45fbffff              JL 0x00563f90
0056444b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0056444f  7409                      JZ 0x0056445a
00564451  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00564458  753b                      JNZ 0x00564495
0056445a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00564461  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0056446b  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00564475  7407                      JZ 0x0056447e
00564477  ba3c000000                MOV EDX,0x3c
0056447c  eb11                      JMP 0x0056448f
0056447e  e8ddaa1800                CALL 0x006eef60
00564483  33d2                      XOR EDX,EDX
00564485  b996000000                MOV ECX,0x96
0056448a  f7f1                      DIV ECX
0056448c  83c23c                    ADD EDX,0x3c
0056448f  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00564495  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0056449d  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
005644a5  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005644ad  e94b080000                JMP 0x00564cfd
005644b2  a118ddb100                MOV EAX,[0x00b1dd18]
005644b7  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
005644bd  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
005644c4  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
005644cb  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
005644ce  894dd8                    MOV dword ptr [EBP + -0x28],ECX
005644d1  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
005644d5  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
005644dc  a130ddb100                MOV EAX,[0x00b1dd30]
005644e1  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
005644e7  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
005644ee  c745b808000000            MOV dword ptr [EBP + -0x48],0x8
005644f5  8945a8                    MOV dword ptr [EBP + -0x58],EAX
005644f8  894dac                    MOV dword ptr [EBP + -0x54],ECX
005644fb  c645b000                  MOV byte ptr [EBP + -0x50],0x0
005644ff  51                        PUSH ECX
00564500  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00564504  8d45d4                    LEA EAX,[EBP + -0x2c]
00564507  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0056450e  8bcf                      MOV ECX,EDI
00564510  50                        PUSH EAX
00564511  8d45a8                    LEA EAX,[EBP + -0x58]
00564514  50                        PUSH EAX
00564515  e816ce1500                CALL 0x006c1330
0056451a  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0056451e  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
00564521  83fa10                    CMP EDX,0x10
00564524  7228                      JC 0x0056454e
00564526  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
00564529  42                        INC EDX
0056452a  8bc1                      MOV EAX,ECX
0056452c  81fa00100000              CMP EDX,0x1000
00564532  7210                      JC 0x00564544
00564534  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00564537  83c223                    ADD EDX,0x23
0056453a  2bc1                      SUB EAX,ECX
0056453c  83c0fc                    ADD EAX,-0x4
0056453f  83f81f                    CMP EAX,0x1f
00564542  7749                      JA 0x0056458d
00564544  52                        PUSH EDX
00564545  51                        PUSH ECX
00564546  e811ac5800                CALL 0x00aef15c
0056454b  83c408                    ADD ESP,0x8
0056454e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00564555  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00564558  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
0056455f  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
00564566  c645a800                  MOV byte ptr [EBP + -0x58],0x0
0056456a  83fa10                    CMP EDX,0x10
0056456d  722e                      JC 0x0056459d
0056456f  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00564572  42                        INC EDX
00564573  8bc1                      MOV EAX,ECX
00564575  81fa00100000              CMP EDX,0x1000
0056457b  7216                      JC 0x00564593
0056457d  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00564580  83c223                    ADD EDX,0x23
00564583  2bc1                      SUB EAX,ECX
00564585  83c0fc                    ADD EAX,-0x4
00564588  83f81f                    CMP EAX,0x1f
0056458b  7606                      JBE 0x00564593
0056458d  ff159488b100              CALL dword ptr [0x00b18894]
00564593  52                        PUSH EDX
00564594  51                        PUSH ECX
00564595  e8c2ab5800                CALL 0x00aef15c
0056459a  83c408                    ADD ESP,0x8
0056459d  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005645a5  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
005645ad  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005645b5  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005645bc  746f                      JZ 0x0056462d
005645be  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
005645c4  0f57d2                    XORPS XMM2,XMM2
005645c7  50                        PUSH EAX
005645c8  8bcf                      MOV ECX,EDI
005645ca  e8013d1700                CALL 0x006d82d0
005645cf  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
005645d7  f30f106004                MOVSS XMM4,dword ptr [EAX + 0x4]
005645dc  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005645e0  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
005645e8  f30f5925b0a4ba00          MULSS XMM4,dword ptr [0x00baa4b0]
005645f0  f30f5905c0a4ba00          MULSS XMM0,dword ptr [0x00baa4c0]
005645f8  f30f5925c0a4ba00          MULSS XMM4,dword ptr [0x00baa4c0]
00564600  f30f59c3                  MULSS XMM0,XMM3
00564604  f30f59e3                  MULSS XMM4,XMM3
00564608  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00564610  f30f58a764030000          ADDSS XMM4,dword ptr [EDI + 0x364]
00564618  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00564620  f30f11a764030000          MOVSS dword ptr [EDI + 0x364],XMM4
00564628  e9b9030000                JMP 0x005649e6
0056462d  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00564633  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00564639  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
0056463f  8bc1                      MOV EAX,ECX
00564641  25000b0001                AND EAX,0x1000b00
00564646  83c800                    OR EAX,0x0
00564649  7508                      JNZ 0x00564653
0056464b  3987380f0000              CMP dword ptr [EDI + 0xf38],EAX
00564651  740a                      JZ 0x0056465d
00564653  c787c00b00000a000000      MOV dword ptr [EDI + 0xbc0],0xa
0056465d  81e100020000              AND ECX,0x200
00564663  83c900                    OR ECX,0x0
00564666  7455                      JZ 0x005646bd
00564668  e8f3a81800                CALL 0x006eef60
0056466d  33d2                      XOR EDX,EDX
0056466f  b905000000                MOV ECX,0x5
00564674  f7f1                      DIV ECX
00564676  85d2                      TEST EDX,EDX
00564678  0f85e7010000              JNZ 0x00564865
0056467e  e8dda81800                CALL 0x006eef60
00564683  660f6ec0                  MOVD XMM0,EAX
00564687  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056468b  c1e81f                    SHR EAX,0x1f
0056468e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00564697  660f5ac0                  CVTPD2PS XMM0,XMM0
0056469b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005646a3  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
005646ab  e890e01100                CALL 0x00682740
005646b0  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
005646b8  e9a8010000                JMP 0x00564865
005646bd  6a00                      PUSH 0x0
005646bf  6800010000                PUSH 0x100
005646c4  8bcf                      MOV ECX,EDI
005646c6  e8652debff                CALL 0x00417430
005646cb  84c0                      TEST AL,AL
005646cd  7560                      JNZ 0x0056472f
005646cf  83bf380f000000            CMP dword ptr [EDI + 0xf38],0x0
005646d6  7557                      JNZ 0x0056472f
005646d8  6a00                      PUSH 0x0
005646da  6800080001                PUSH 0x1000800
005646df  8bcf                      MOV ECX,EDI
005646e1  e84a2debff                CALL 0x00417430
005646e6  84c0                      TEST AL,AL
005646e8  0f8477010000              JZ 0x00564865
005646ee  8bcf                      MOV ECX,EDI
005646f0  e84ba11500                CALL 0x006be840
005646f5  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005646fd  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00564705  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
0056470d  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
00564715  e84656f3ff                CALL 0x00499d60
0056471a  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00564722  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0056472a  e936010000                JMP 0x00564865
0056472f  8bcf                      MOV ECX,EDI
00564731  e80aa11500                CALL 0x006be840
00564736  ff7720                    PUSH dword ptr [EDI + 0x20]
00564739  8bcf                      MOV ECX,EDI
0056473b  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
00564741  6a05                      PUSH 0x5
00564743  e8c87f1400                CALL 0x006ac710
00564748  84c0                      TEST AL,AL
0056474a  0f8415010000              JZ 0x00564865
00564750  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00564758  8d8f14040000              LEA ECX,[EDI + 0x414]
0056475e  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
00564766  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0056476e  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00564776  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0056477e  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
00564786  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0056478e  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
00564796  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0056479e  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
005647a6  e8b5ea2700                CALL 0x007e3260
005647ab  8b95d4feffff              MOV EDX,dword ptr [EBP + 0xfffffed4]
005647b1  6a01                      PUSH 0x1
005647b3  6884030000                PUSH 0x384
005647b8  51                        PUSH ECX
005647b9  8b823c030000              MOV EAX,dword ptr [EDX + 0x33c]
005647bf  8d8f14040000              LEA ECX,[EDI + 0x414]
005647c5  8b9240030000              MOV EDX,dword ptr [EDX + 0x340]
005647cb  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
005647d1  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
005647d7  c704240000803f            MOV dword ptr [ESP],0x3f800000
005647de  50                        PUSH EAX
005647df  8995ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EDX
005647e5  e8d6eb2700                CALL 0x007e33c0
005647ea  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
005647f2  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
005647fa  e86155f3ff                CALL 0x00499d60
005647ff  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00564807  8bb5c0feffff              MOV ESI,dword ptr [EBP + 0xfffffec0]
0056480d  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00564815  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
0056481d  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00564825  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0056482d  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
00564835  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
0056483d  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00564845  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
0056484d  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00564855  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
0056485d  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00564865  29b7c00b0000              SUB dword ptr [EDI + 0xbc0],ESI
0056486b  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
00564873  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0056487b  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
00564883  e8b88cebff                CALL 0x0041d540
00564888  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00564890  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
00564898  e8838cebff                CALL 0x0041d520
0056489d  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
005648a5  0f28d8                    MOVAPS XMM3,XMM0
005648a8  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
005648b0  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
005648b8  f30f119ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM3
005648c0  f30f59c2                  MULSS XMM0,XMM2
005648c4  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
005648cc  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005648d4  0f28c3                    MOVAPS XMM0,XMM3
005648d7  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
005648df  f30f59c2                  MULSS XMM0,XMM2
005648e3  f30f10151ca8ba00          MOVSS XMM2,dword ptr [0x00baa81c]
005648eb  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
005648f3  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005648fb  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
00564903  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0056490b  e840e11100                CALL 0x00682a50
00564910  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00564918  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0056491f  746b                      JZ 0x0056498c
00564921  e83aa61800                CALL 0x006eef60
00564926  a803                      TEST AL,0x3
00564928  7562                      JNZ 0x0056498c
0056492a  f30f109f9c010000          MOVSS XMM3,dword ptr [EDI + 0x19c]
00564932  f30f10a7a0010000          MOVSS XMM4,dword ptr [EDI + 0x1a0]
0056493a  0f28c3                    MOVAPS XMM0,XMM3
0056493d  f30f10addcfeffff          MOVSS XMM5,dword ptr [EBP + 0xfffffedc]
00564945  f30f58db                  ADDSS XMM3,XMM3
00564949  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
00564951  0f28d4                    MOVAPS XMM2,XMM4
00564954  f30f59c1                  MULSS XMM0,XMM1
00564958  f30f58e4                  ADDSS XMM4,XMM4
0056495c  f30f59d5                  MULSS XMM2,XMM5
00564960  f30f58d0                  ADDSS XMM2,XMM0
00564964  f30f59e2                  MULSS XMM4,XMM2
00564968  f30f59da                  MULSS XMM3,XMM2
0056496c  f30f5cec                  SUBSS XMM5,XMM4
00564970  f30f5ccb                  SUBSS XMM1,XMM3
00564974  0f28c5                    MOVAPS XMM0,XMM5
00564977  e8e453f3ff                CALL 0x00499d60
0056497c  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00564984  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0056498c  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00564993  7f51                      JG 0x005649e6
00564995  e8c6a51800                CALL 0x006eef60
0056499a  660f6ec0                  MOVD XMM0,EAX
0056499e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005649a2  c1e81f                    SHR EAX,0x1f
005649a5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005649ae  660f5ac0                  CVTPD2PS XMM0,XMM0
005649b2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005649ba  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
005649c2  e879dd1100                CALL 0x00682740
005649c7  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
005649cf  e88ca51800                CALL 0x006eef60
005649d4  33d2                      XOR EDX,EDX
005649d6  b978000000                MOV ECX,0x78
005649db  f7f1                      DIV ECX
005649dd  83c22d                    ADD EDX,0x2d
005649e0  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
005649e6  e875a51800                CALL 0x006eef60
005649eb  33d2                      XOR EDX,EDX
005649ed  b914000000                MOV ECX,0x14
005649f2  f7f1                      DIV ECX
005649f4  85d2                      TEST EDX,EDX
005649f6  751f                      JNZ 0x00564a17
005649f8  51                        PUSH ECX
005649f9  c704240000803f            MOV dword ptr [ESP],0x3f800000
00564a00  52                        PUSH EDX
00564a01  6a3c                      PUSH 0x3c
00564a03  51                        PUSH ECX
00564a04  c704240000803f            MOV dword ptr [ESP],0x3f800000
00564a0b  8bcf                      MOV ECX,EDI
00564a0d  68a7000000                PUSH 0xa7
00564a12  e889211700                CALL 0x006d6ba0
00564a17  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
00564a1d  85c0                      TEST EAX,EAX
00564a1f  7e10                      JLE 0x00564a31
00564a21  2bc6                      SUB EAX,ESI
00564a23  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00564a29  85c0                      TEST EAX,EAX
00564a2b  0f8fcc020000              JG 0x00564cfd
00564a31  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00564a38  741b                      JZ 0x00564a55
00564a3a  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00564a42  8bcf                      MOV ECX,EDI
00564a44  6a07                      PUSH 0x7
00564a46  6a00                      PUSH 0x0
00564a48  e813641600                CALL 0x006cae60
00564a4d  84c0                      TEST AL,AL
00564a4f  0f84a8020000              JZ 0x00564cfd
00564a55  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00564a5c  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00564a66  7460                      JZ 0x00564ac8
00564a68  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00564a6e  0f57d2                    XORPS XMM2,XMM2
00564a71  50                        PUSH EAX
00564a72  8bcf                      MOV ECX,EDI
00564a74  e8273b1700                CALL 0x006d85a0
00564a79  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00564a7d  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00564a82  e8d952f3ff                CALL 0x00499d60
00564a87  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00564a8f  f30f5e0510a9ba00          DIVSS XMM0,dword ptr [0x00baa910]
00564a97  e8a4dc1100                CALL 0x00682740
00564a9c  f30f5805e8a7ba00          ADDSS XMM0,dword ptr [0x00baa7e8]
00564aa4  f30f2cc0                  CVTTSS2SI EAX,XMM0
00564aa8  2507000080                AND EAX,0x80000007
00564aad  7905                      JNS 0x00564ab4
00564aaf  48                        DEC EAX
00564ab0  83c8f8                    OR EAX,0xfffffff8
00564ab3  40                        INC EAX
00564ab4  6a01                      PUSH 0x1
00564ab6  8bcf                      MOV ECX,EDI
00564ab8  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
00564abe  e88d451700                CALL 0x006d9050
00564ac3  e991010000                JMP 0x00564c59
00564ac8  c785e4feffff00000000      MOV dword ptr [EBP + 0xfffffee4],0x0
00564ad2  0f1f4000                  NOP dword ptr [EAX]
00564ad6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
00564ae0  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
00564ae8  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00564af0  e86b52f3ff                CALL 0x00499d60
00564af5  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
00564afd  e85ea41800                CALL 0x006eef60
00564b02  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
00564b0a  0f57c9                    XORPS XMM1,XMM1
00564b0d  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00564b15  f20f2ac8                  CVTSI2SD XMM1,EAX
00564b19  c1e81f                    SHR EAX,0x1f
00564b1c  f30f101d10a9ba00          MOVSS XMM3,dword ptr [0x00baa910]
00564b24  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
00564b2d  660f5ad1                  CVTPD2PS XMM2,XMM1
00564b31  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00564b39  f30f5915b4a9ba00          MULSS XMM2,dword ptr [0x00baa9b4]
00564b41  f30f58d0                  ADDSS XMM2,XMM0
00564b45  f30f100530abba00          MOVSS XMM0,dword ptr [0x00baab30]
00564b4d  f30f5cd3                  SUBSS XMM2,XMM3
00564b51  0f28ca                    MOVAPS XMM1,XMM2
00564b54  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00564b5b  0f2fc8                    COMISS XMM1,XMM0
00564b5e  761e                      JBE 0x00564b7e
00564b60  0f28c8                    MOVAPS XMM1,XMM0
00564b63  0f28c2                    MOVAPS XMM0,XMM2
00564b66  e8b551f3ff                CALL 0x00499d20
00564b6b  f30f101d10a9ba00          MOVSS XMM3,dword ptr [0x00baa910]
00564b73  0f28d0                    MOVAPS XMM2,XMM0
00564b76  f30f100530abba00          MOVSS XMM0,dword ptr [0x00baab30]
00564b7e  0f2f1578aaba00            COMISS XMM2,dword ptr [0x00baaa78]
00564b85  7606                      JBE 0x00564b8d
00564b87  f30f5cd0                  SUBSS XMM2,XMM0
00564b8b  eb11                      JMP 0x00564b9e
00564b8d  f30f100d7caeba00          MOVSS XMM1,dword ptr [0x00baae7c]
00564b95  0f2fca                    COMISS XMM1,XMM2
00564b98  7604                      JBE 0x00564b9e
00564b9a  f30f58d0                  ADDSS XMM2,XMM0
00564b9e  f30f5ed3                  DIVSS XMM2,XMM3
00564ba2  f30f5815e8a7ba00          ADDSS XMM2,dword ptr [0x00baa7e8]
00564baa  f30f2cca                  CVTTSS2SI ECX,XMM2
00564bae  81e107000080              AND ECX,0x80000007
00564bb4  7905                      JNS 0x00564bbb
00564bb6  49                        DEC ECX
00564bb7  83c9f8                    OR ECX,0xfffffff8
00564bba  41                        INC ECX
00564bbb  a17816c700                MOV EAX,[0x00c71678]
00564bc0  660f6ec1                  MOVD XMM0,ECX
00564bc4  0f5bc0                    CVTDQ2PS XMM0,XMM0
00564bc7  898fc40b0000              MOV dword ptr [EDI + 0xbc4],ECX
00564bcd  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00564bd3  f30f59c3                  MULSS XMM0,XMM3
00564bd7  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00564bdf  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
00564be7  e85489ebff                CALL 0x0041d540
00564bec  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
00564bf4  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00564bfc  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
00564c04  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
00564c0c  e80f89ebff                CALL 0x0041d520
00564c11  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
00564c19  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00564c1f  51                        PUSH ECX
00564c20  c7042400000000            MOV dword ptr [ESP],0x0
00564c27  8bce                      MOV ECX,ESI
00564c29  50                        PUSH EAX
00564c2a  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00564c32  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
00564c3a  e821e72a00                CALL 0x00813360
00564c3f  84c0                      TEST AL,AL
00564c41  7516                      JNZ 0x00564c59
00564c43  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
00564c49  46                        INC ESI
00564c4a  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
00564c50  83fe08                    CMP ESI,0x8
00564c53  0f8287feffff              JC 0x00564ae0
00564c59  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
00564c5f  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00564c62  8b0c859418b600            MOV ECX,dword ptr [EAX*0x4 + 0xb61894]
00564c69  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
00564c6f  85f6                      TEST ESI,ESI
00564c71  0f8498010000              JZ 0x00564e0f
00564c77  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00564c7b  8bc6                      MOV EAX,ESI
00564c7d  7202                      JC 0x00564c81
00564c7f  8b06                      MOV EAX,dword ptr [ESI]
00564c81  8a10                      MOV DL,byte ptr [EAX]
00564c83  3a11                      CMP DL,byte ptr [ECX]
00564c85  751a                      JNZ 0x00564ca1
00564c87  84d2                      TEST DL,DL
00564c89  7412                      JZ 0x00564c9d
00564c8b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00564c8e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00564c91  750e                      JNZ 0x00564ca1
00564c93  83c002                    ADD EAX,0x2
00564c96  83c102                    ADD ECX,0x2
00564c99  84d2                      TEST DL,DL
00564c9b  75e4                      JNZ 0x00564c81
00564c9d  33c0                      XOR EAX,EAX
00564c9f  eb05                      JMP 0x00564ca6
00564ca1  1bc0                      SBB EAX,EAX
00564ca3  83c801                    OR EAX,0x1
00564ca6  85c0                      TEST EAX,EAX
00564ca8  0f8559010000              JNZ 0x00564e07
00564cae  384634                    CMP byte ptr [ESI + 0x34],AL
00564cb1  742b                      JZ 0x00564cde
00564cb3  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00564cb9  8d7748                    LEA ESI,[EDI + 0x48]
00564cbc  7520                      JNZ 0x00564cde
00564cbe  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
00564cc4  6a01                      PUSH 0x1
00564cc6  51                        PUSH ECX
00564cc7  8bce                      MOV ECX,ESI
00564cc9  e80259eaff                CALL 0x0040a5d0
00564cce  84c0                      TEST AL,AL
00564cd0  740c                      JZ 0x00564cde
00564cd2  8d4e30                    LEA ECX,[ESI + 0x30]
00564cd5  e8d654eaff                CALL 0x0040a1b0
00564cda  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00564cde  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
00564ce4  83e803                    SUB EAX,0x3
00564ce7  83f802                    CMP EAX,0x2
00564cea  0f96c0                    SETBE AL
00564ced  888748010000              MOV byte ptr [EDI + 0x148],AL
00564cf3  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00564cfd  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
00564d05  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00564d0a  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00564d11  7618                      JBE 0x00564d2b
00564d13  f30f59c1                  MULSS XMM0,XMM1
00564d17  b801000000                MOV EAX,0x1
00564d1c  f30f2cc8                  CVTTSS2SI ECX,XMM0
00564d20  3bc8                      CMP ECX,EAX
00564d22  0f4fc1                    CMOVG EAX,ECX
00564d25  2987a00b0000              SUB dword ptr [EDI + 0xba0],EAX
00564d2b  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00564d32  0f84d3010000              JZ 0x00564f0b
00564d38  e823a21800                CALL 0x006eef60
00564d3d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00564d43  81c73c030000              ADD EDI,0x33c
00564d49  50                        PUSH EAX
00564d4a  6a00                      PUSH 0x0
00564d4c  6a00                      PUSH 0x0
00564d4e  6840b6c700                PUSH 0xc7b640
00564d53  57                        PUSH EDI
00564d54  6884000000                PUSH 0x84
00564d59  68e8030000                PUSH 0x3e8
00564d5e  e8bd3decff                CALL 0x00428b20
00564d63  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00564d6a  8d4d94                    LEA ECX,[EBP + -0x6c]
00564d6d  6a01                      PUSH 0x1
00564d6f  8bf0                      MOV ESI,EAX
00564d71  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
00564d78  6a00                      PUSH 0x0
00564d7a  68ff000000                PUSH 0xff
00564d7f  6aff                      PUSH -0x1
00564d81  8b06                      MOV EAX,dword ptr [ESI]
00564d83  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
00564d87  51                        PUSH ECX
00564d88  0f2805b0c3ba00            MOVAPS XMM0,xmmword ptr [0x00bac3b0]
00564d8f  8bce                      MOV ECX,ESI
00564d91  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
00564d95  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
00564d9c  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
00564da3  ff503c                    CALL dword ptr [EAX + 0x3c]
00564da6  8b06                      MOV EAX,dword ptr [ESI]
00564da8  8bce                      MOV ECX,ESI
00564daa  ff500c                    CALL dword ptr [EAX + 0xc]
00564dad  e8aea11800                CALL 0x006eef60
00564db2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00564db8  50                        PUSH EAX
00564db9  6a00                      PUSH 0x0
00564dbb  ffb5bcfeffff              PUSH dword ptr [EBP + 0xfffffebc]
00564dc1  6840b6c700                PUSH 0xc7b640
00564dc6  57                        PUSH EDI
00564dc7  6a17                      PUSH 0x17
00564dc9  68e8030000                PUSH 0x3e8
00564dce  e84d3decff                CALL 0x00428b20
00564dd3  8bc8                      MOV ECX,EAX
00564dd5  8b10                      MOV EDX,dword ptr [EAX]
00564dd7  c780e400000000000040      MOV dword ptr [EAX + 0xe4],0x40000000
00564de1  c780e800000000000040      MOV dword ptr [EAX + 0xe8],0x40000000
00564deb  c7805c0400005a000000      MOV dword ptr [EAX + 0x45c],0x5a
00564df5  c780600400005a000000      MOV dword ptr [EAX + 0x460],0x5a
00564dff  ff520c                    CALL dword ptr [EDX + 0xc]
00564e02  e904010000                JMP 0x00564f0b
00564e07  8d7748                    LEA ESI,[EDI + 0x48]
00564e0a  e9affeffff                JMP 0x00564cbe
00564e0f  8d7748                    LEA ESI,[EDI + 0x48]
00564e12  e9adfeffff                JMP 0x00564cc4
00564e17  6a01                      PUSH 0x1
00564e19  6818ddb100                PUSH 0xb1dd18
00564e1e  8d4f48                    LEA ECX,[EDI + 0x48]
00564e21  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00564e2b  e8a057eaff                CALL 0x0040a5d0
00564e30  84c0                      TEST AL,AL
00564e32  7420                      JZ 0x00564e54
00564e34  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00564e37  85c0                      TEST EAX,EAX
00564e39  7419                      JZ 0x00564e54
00564e3b  8d4f78                    LEA ECX,[EDI + 0x78]
00564e3e  0f57c9                    XORPS XMM1,XMM1
00564e41  e8ba3feaff                CALL 0x00408e00
00564e46  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00564e49  85c0                      TEST EAX,EAX
00564e4b  7407                      JZ 0x00564e54
00564e4d  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
00564e54  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00564e5b  7407                      JZ 0x00564e64
00564e5d  ba3c000000                MOV EDX,0x3c
00564e62  eb11                      JMP 0x00564e75
00564e64  e8f7a01800                CALL 0x006eef60
00564e69  33d2                      XOR EDX,EDX
00564e6b  b996000000                MOV ECX,0x96
00564e70  f7f1                      DIV ECX
00564e72  83c23c                    ADD EDX,0x3c
00564e75  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00564e7b  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00564e85  e8d6a01800                CALL 0x006eef60
00564e8a  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
00564e92  660f6ec0                  MOVD XMM0,EAX
00564e96  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00564e9a  c1e81f                    SHR EAX,0x1f
00564e9d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00564ea6  660f5ad0                  CVTPD2PS XMM2,XMM0
00564eaa  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00564eb2  f30f59d3                  MULSS XMM2,XMM3
00564eb6  0f28ca                    MOVAPS XMM1,XMM2
00564eb9  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00564ec0  0f2fcb                    COMISS XMM1,XMM3
00564ec3  7616                      JBE 0x00564edb
00564ec5  0f28cb                    MOVAPS XMM1,XMM3
00564ec8  0f28c2                    MOVAPS XMM0,XMM2
00564ecb  e8504ef3ff                CALL 0x00499d20
00564ed0  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
00564ed8  0f28d0                    MOVAPS XMM2,XMM0
00564edb  0f2f1578aaba00            COMISS XMM2,dword ptr [0x00baaa78]
00564ee2  7606                      JBE 0x00564eea
00564ee4  f30f5cd3                  SUBSS XMM2,XMM3
00564ee8  eb11                      JMP 0x00564efb
00564eea  f30f10057caeba00          MOVSS XMM0,dword ptr [0x00baae7c]
00564ef2  0f2fc2                    COMISS XMM0,XMM2
00564ef5  7604                      JBE 0x00564efb
00564ef7  f30f58d3                  ADDSS XMM2,XMM3
00564efb  f30f1197b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM2
00564f03  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
00564f0b  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00564f0e  64890d00000000            MOV dword ptr FS:[0x0],ECX
00564f15  59                        POP ECX
00564f16  5f                        POP EDI
00564f17  5e                        POP ESI
00564f18  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00564f1b  33cd                      XOR ECX,EBP
00564f1d  e809a25800                CALL 0x00aef12b
00564f22  8be5                      MOV ESP,EBP
00564f24  5d                        POP EBP
00564f25  8be3                      MOV ESP,EBX
00564f27  5b                        POP EBX
00564f28  c3                        RET
