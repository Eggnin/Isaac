; J460 NPC AI 0x005052a0 AI_005052a0
; types=828
; identities=828.0.0
; entry=005052a0
005052a0  55                        PUSH EBP
005052a1  8bec                      MOV EBP,ESP
005052a3  83e4f8                    AND ESP,0xfffffff8
005052a6  81ec94000000              SUB ESP,0x94
005052ac  a1b493bf00                MOV EAX,[0x00bf93b4]
005052b1  33c4                      XOR EAX,ESP
005052b3  89842490000000            MOV dword ptr [ESP + 0x90],EAX
005052ba  53                        PUSH EBX
005052bb  56                        PUSH ESI
005052bc  57                        PUSH EDI
005052bd  8bf9                      MOV EDI,ECX
005052bf  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
005052c7  f30f2c97a4030000          CVTTSS2SI EDX,dword ptr [EDI + 0x3a4]
005052cf  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005052d7  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
005052df  2bd0                      SUB EDX,EAX
005052e1  a17816c700                MOV EAX,[0x00c71678]
005052e6  89542410                  MOV dword ptr [ESP + 0x10],EDX
005052ea  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005052f2  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005052f8  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005052fe  85c0                      TEST EAX,EAX
00505300  0f841d040000              JZ 0x00505723
00505306  83f803                    CMP EAX,0x3
00505309  0f8432040000              JZ 0x00505741
0050530f  83f808                    CMP EAX,0x8
00505312  0f8501080000              JNZ 0x00505b19
00505318  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050531c  8d5f78                    LEA EBX,[EDI + 0x78]
0050531f  0f84fe030000              JZ 0x00505723
00505325  6820d4b100                PUSH 0xb1d420
0050532a  8bcb                      MOV ECX,EBX
0050532c  e89f5af0ff                CALL 0x0040add0
00505331  84c0                      TEST AL,AL
00505333  0f84bf010000              JZ 0x005054f8
00505339  e8229c1e00                CALL 0x006eef60
0050533e  6a00                      PUSH 0x0
00505340  50                        PUSH EAX
00505341  6a00                      PUSH 0x0
00505343  57                        PUSH EDI
00505344  6840b6c700                PUSH 0xc7b640
00505349  8d8f34030000              LEA ECX,[EDI + 0x334]
0050534f  51                        PUSH ECX
00505350  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00505356  6a01                      PUSH 0x1
00505358  6a09                      PUSH 0x9
0050535a  e8b1901f00                CALL 0x006fe410
0050535f  8bd8                      MOV EBX,EAX
00505361  8b8bbc030000              MOV ECX,dword ptr [EBX + 0x3bc]
00505367  8db3bc030000              LEA ESI,[EBX + 0x3bc]
0050536d  c783100400000000c0c0      MOV dword ptr [EBX + 0x410],0xc0c00000
00505377  c7831404000000000000      MOV dword ptr [EBX + 0x414],0x0
00505381  c783200400000000803f      MOV dword ptr [EBX + 0x420],0x3f800000
0050538b  c7833804000000000000      MOV dword ptr [EBX + 0x438],0x0
00505395  c7833c04000000010000      MOV dword ptr [EBX + 0x43c],0x100
0050539f  85c9                      TEST ECX,ECX
005053a1  7414                      JZ 0x005053b7
005053a3  8d44240c                  LEA EAX,[ESP + 0xc]
005053a7  8974240c                  MOV dword ptr [ESP + 0xc],ESI
005053ab  50                        PUSH EAX
005053ac  81c1cc030000              ADD ECX,0x3cc
005053b2  e8599efcff                CALL 0x004cf210
005053b7  56                        PUSH ESI
005053b8  8bcf                      MOV ECX,EDI
005053ba  893e                      MOV dword ptr [ESI],EDI
005053bc  e82f89fcff                CALL 0x004cdcf0
005053c1  53                        PUSH EBX
005053c2  8bcf                      MOV ECX,EDI
005053c4  e8d75e1c00                CALL 0x006cb2a0
005053c9  8b03                      MOV EAX,dword ptr [EBX]
005053cb  8d4c2444                  LEA ECX,[ESP + 0x44]
005053cf  6a01                      PUSH 0x1
005053d1  6a01                      PUSH 0x1
005053d3  6a01                      PUSH 0x1
005053d5  6a06                      PUSH 0x6
005053d7  0f57c0                    XORPS XMM0,XMM0
005053da  c744247400000000          MOV dword ptr [ESP + 0x74],0x0
005053e2  51                        PUSH ECX
005053e3  8bcb                      MOV ECX,EBX
005053e5  c744247c00000000          MOV dword ptr [ESP + 0x7c],0x0
005053ed  0f11442468                MOVUPS xmmword ptr [ESP + 0x68],XMM0
005053f2  c784248000000000000000    MOV dword ptr [ESP + 0x80],0x0
005053fd  0f11442458                MOVUPS xmmword ptr [ESP + 0x58],XMM0
00505402  ff503c                    CALL dword ptr [EAX + 0x3c]
00505405  8b03                      MOV EAX,dword ptr [EBX]
00505407  8bcb                      MOV ECX,EBX
00505409  ff500c                    CALL dword ptr [EAX + 0xc]
0050540c  e84f9b1e00                CALL 0x006eef60
00505411  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00505417  6a00                      PUSH 0x0
00505419  50                        PUSH EAX
0050541a  6a00                      PUSH 0x0
0050541c  6a00                      PUSH 0x0
0050541e  6840b6c700                PUSH 0xc7b640
00505423  8d8734030000              LEA EAX,[EDI + 0x334]
00505429  50                        PUSH EAX
0050542a  6885000000                PUSH 0x85
0050542f  68e8030000                PUSH 0x3e8
00505434  e8d78f1f00                CALL 0x006fe410
00505439  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00505440  8d542444                  LEA EDX,[ESP + 0x44]
00505444  6a01                      PUSH 0x1
00505446  8bc8                      MOV ECX,EAX
00505448  c744246800000000          MOV dword ptr [ESP + 0x68],0x0
00505450  6a00                      PUSH 0x0
00505452  68ff000000                PUSH 0xff
00505457  0f11442450                MOVUPS xmmword ptr [ESP + 0x50],XMM0
0050545c  8b01                      MOV EAX,dword ptr [ECX]
0050545e  0f280580c8ba00            MOVAPS XMM0,xmmword ptr [0x00bac880]
00505465  6aff                      PUSH -0x1
00505467  52                        PUSH EDX
00505468  0f11442468                MOVUPS xmmword ptr [ESP + 0x68],XMM0
0050546d  c744247c00000000          MOV dword ptr [ESP + 0x7c],0x0
00505475  c784248000000000000000    MOV dword ptr [ESP + 0x80],0x0
00505480  ff503c                    CALL dword ptr [EAX + 0x3c]
00505483  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00505489  8d4c240c                  LEA ECX,[ESP + 0xc]
0050548d  c744240ca2000000          MOV dword ptr [ESP + 0xc],0xa2
00505495  e8e6124500                CALL 0x00956780
0050549a  83ec08                    SUB ESP,0x8
0050549d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005054a5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005054ac  6a00                      PUSH 0x0
005054ae  6a02                      PUSH 0x2
005054b0  51                        PUSH ECX
005054b1  c704240000003f            MOV dword ptr [ESP],0x3f000000
005054b8  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005054be  ff742420                  PUSH dword ptr [ESP + 0x20]
005054c2  e869874200                CALL 0x0092dc30
005054c7  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
005054cd  8db7c0030000              LEA ESI,[EDI + 0x3c0]
005054d3  85c9                      TEST ECX,ECX
005054d5  7414                      JZ 0x005054eb
005054d7  8d44240c                  LEA EAX,[ESP + 0xc]
005054db  8974240c                  MOV dword ptr [ESP + 0xc],ESI
005054df  50                        PUSH EAX
005054e0  81c1cc030000              ADD ECX,0x3cc
005054e6  e8259dfcff                CALL 0x004cf210
005054eb  56                        PUSH ESI
005054ec  8bcb                      MOV ECX,EBX
005054ee  891e                      MOV dword ptr [ESI],EBX
005054f0  e8fb87fcff                CALL 0x004cdcf0
005054f5  8d5f78                    LEA EBX,[EDI + 0x78]
005054f8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005054fc  0f8421020000              JZ 0x00505723
00505502  68dcd2b100                PUSH 0xb1d2dc
00505507  8bcb                      MOV ECX,EBX
00505509  e8c258f0ff                CALL 0x0040add0
0050550e  84c0                      TEST AL,AL
00505510  0f84fa010000              JZ 0x00505710
00505516  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
0050551c  8d9fc0030000              LEA EBX,[EDI + 0x3c0]
00505522  85f6                      TEST ESI,ESI
00505524  0f84e6010000              JZ 0x00505710
0050552a  837e2809                  CMP dword ptr [ESI + 0x28],0x9
0050552e  0f85dc010000              JNZ 0x00505710
00505534  8bcf                      MOV ECX,EDI
00505536  e805931b00                CALL 0x006be840
0050553b  51                        PUSH ECX
0050553c  c7042400002041            MOV dword ptr [ESP],0x41200000
00505543  8d4c2418                  LEA ECX,[ESP + 0x18]
00505547  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0050554f  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00505557  8d442428                  LEA EAX,[ESP + 0x28]
0050555b  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
00505563  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
0050556b  50                        PUSH EAX
0050556c  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
00505572  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
00505578  e883ab5000                CALL 0x00a10100
0050557d  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
00505583  8d4c2470                  LEA ECX,[ESP + 0x70]
00505587  8b8638040000              MOV EAX,dword ptr [ESI + 0x438]
0050558d  81a63c040000fffeffff      AND dword ptr [ESI + 0x43c],0xfffffeff
00505597  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0050559f  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
005055a5  898638040000              MOV dword ptr [ESI + 0x438],EAX
005055ab  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
005055b3  e8b81bf0ff                CALL 0x00407170
005055b8  f30f10864c030000          MOVSS XMM0,dword ptr [ESI + 0x34c]
005055c0  8bd0                      MOV EDX,EAX
005055c2  f30f590524a3ba00          MULSS XMM0,dword ptr [0x00baa324]
005055ca  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
005055d0  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
005055d6  6840b6c700                PUSH 0xc7b640
005055db  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
005055e1  f30f108650030000          MOVSS XMM0,dword ptr [ESI + 0x350]
005055e9  f30f590524a3ba00          MULSS XMM0,dword ptr [0x00baa324]
005055f1  89442428                  MOV dword ptr [ESP + 0x28],EAX
005055f5  8d442418                  LEA EAX,[ESP + 0x18]
005055f9  52                        PUSH EDX
005055fa  894c2430                  MOV dword ptr [ESP + 0x30],ECX
005055fe  8d54242c                  LEA EDX,[ESP + 0x2c]
00505602  50                        PUSH EAX
00505603  b905000000                MOV ECX,0x5
00505608  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0050560e  e8dd261d00                CALL 0x006d7cf0
00505613  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
0050561a  8d4c2450                  LEA ECX,[ESP + 0x50]
0050561e  83c40c                    ADD ESP,0xc
00505621  c7442464cdcccc3e          MOV dword ptr [ESP + 0x64],0x3ecccccd
00505629  8bf0                      MOV ESI,EAX
0050562b  c74424689a99993e          MOV dword ptr [ESP + 0x68],0x3e99999a
00505633  0f11442444                MOVUPS xmmword ptr [ESP + 0x44],XMM0
00505638  8974240c                  MOV dword ptr [ESP + 0xc],ESI
0050563c  0f57c0                    XORPS XMM0,XMM0
0050563f  c744246c3333333f          MOV dword ptr [ESP + 0x6c],0x3f333333
00505647  6a01                      PUSH 0x1
00505649  6a00                      PUSH 0x0
0050564b  68ff000000                PUSH 0xff
00505650  c6864801000001            MOV byte ptr [ESI + 0x148],0x1
00505657  8b06                      MOV EAX,dword ptr [ESI]
00505659  6aff                      PUSH -0x1
0050565b  51                        PUSH ECX
0050565c  8bce                      MOV ECX,ESI
0050565e  c786580300000000803f      MOV dword ptr [ESI + 0x358],0x3f800000
00505668  0f11442468                MOVUPS xmmword ptr [ESP + 0x68],XMM0
0050566d  ff503c                    CALL dword ptr [EAX + 0x3c]
00505670  83bec800000004            CMP dword ptr [ESI + 0xc8],0x4
00505677  7650                      JBE 0x005056c9
00505679  8b4c240c                  MOV ECX,dword ptr [ESP + 0xc]
0050567d  8b35e498c700              MOV ESI,dword ptr [0x00c798e4]
00505683  83c148                    ADD ECX,0x48
00505686  6a04                      PUSH 0x4
00505688  e8935bf0ff                CALL 0x0040b220
0050568d  83e604                    AND ESI,0x4
00505690  b901000000                MOV ECX,0x1
00505695  8b74240c                  MOV ESI,dword ptr [ESP + 0xc]
00505699  ba06000000                MOV EDX,0x6
0050569e  0f44ca                    CMOVZ ECX,EDX
005056a1  c7407800000000            MOV dword ptr [EAX + 0x78],0x0
005056a8  89487c                    MOV dword ptr [EAX + 0x7c],ECX
005056ab  c7808000000001000000      MOV dword ptr [EAX + 0x80],0x1
005056b5  c7808400000001000000      MOV dword ptr [EAX + 0x84],0x1
005056bf  c7808800000001000000      MOV dword ptr [EAX + 0x88],0x1
005056c9  8b06                      MOV EAX,dword ptr [ESI]
005056cb  8bce                      MOV ECX,ESI
005056cd  ff500c                    CALL dword ptr [EAX + 0xc]
005056d0  51                        PUSH ECX
005056d1  c704240000803f            MOV dword ptr [ESP],0x3f800000
005056d8  6a00                      PUSH 0x0
005056da  6a02                      PUSH 0x2
005056dc  51                        PUSH ECX
005056dd  c704240000803f            MOV dword ptr [ESP],0x3f800000
005056e4  8bcf                      MOV ECX,EDI
005056e6  68f9000000                PUSH 0xf9
005056eb  e8b0141d00                CALL 0x006d6ba0
005056f0  8b0b                      MOV ECX,dword ptr [EBX]
005056f2  85c9                      TEST ECX,ECX
005056f4  7414                      JZ 0x0050570a
005056f6  8d44240c                  LEA EAX,[ESP + 0xc]
005056fa  895c240c                  MOV dword ptr [ESP + 0xc],EBX
005056fe  50                        PUSH EAX
005056ff  81c1cc030000              ADD ECX,0x3cc
00505705  e8069bfcff                CALL 0x004cf210
0050570a  c70300000000              MOV dword ptr [EBX],0x0
00505710  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00505714  740d                      JZ 0x00505723
00505716  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0050571d  0f85f2030000              JNZ 0x00505b15
00505723  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050572a  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00505734  0f84c7030000              JZ 0x00505b01
0050573a  33d2                      XOR EDX,EDX
0050573c  e9ce030000                JMP 0x00505b0f
00505741  6a00                      PUSH 0x0
00505743  8d4f48                    LEA ECX,[EDI + 0x48]
00505746  683cd6b100                PUSH 0xb1d63c
0050574b  e8304cf0ff                CALL 0x0040a380
00505750  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
00505757  0f8fb8030000              JG 0x00505b15
0050575d  8bcf                      MOV ECX,EDI
0050575f  e8dc901b00                CALL 0x006be840
00505764  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
0050576c  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
00505774  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0050577c  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00505784  f30f5cd0                  SUBSS XMM2,XMM0
00505788  f30f5cd9                  SUBSS XMM3,XMM1
0050578c  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00505792  f30f114c2438              MOVSS dword ptr [ESP + 0x38],XMM1
00505798  0f28c2                    MOVAPS XMM0,XMM2
0050579b  f30f1154241c              MOVSS dword ptr [ESP + 0x1c],XMM2
005057a1  0f28cb                    MOVAPS XMM1,XMM3
005057a4  f30f59c2                  MULSS XMM0,XMM2
005057a8  f30f59cb                  MULSS XMM1,XMM3
005057ac  f30f115c2420              MOVSS dword ptr [ESP + 0x20],XMM3
005057b2  f30f58c1                  ADDSS XMM0,XMM1
005057b6  e89502f3ff                CALL 0x00435a50
005057bb  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005057c2  7630                      JBE 0x005057f4
005057c4  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005057cc  f30f5ec8                  DIVSS XMM1,XMM0
005057d0  0f28c1                    MOVAPS XMM0,XMM1
005057d3  f30f5944241c              MULSS XMM0,dword ptr [ESP + 0x1c]
005057d9  0f28d0                    MOVAPS XMM2,XMM0
005057dc  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
005057e2  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
005057e8  f30f59c1                  MULSS XMM0,XMM1
005057ec  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
005057f2  eb0c                      JMP 0x00505800
005057f4  f30f1054241c              MOVSS XMM2,dword ptr [ESP + 0x1c]
005057fa  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
00505800  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
00505807  9f                        LAHF
00505808  f6c444                    TEST AH,0x44
0050580b  7a11                      JP 0x0050581e
0050580d  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00505814  9f                        LAHF
00505815  f6c444                    TEST AH,0x44
00505818  0f8bf7020000              JNP 0x00505b15
0050581e  33db                      XOR EBX,EBX
00505820  e83b971e00                CALL 0x006eef60
00505825  0f57c0                    XORPS XMM0,XMM0
00505828  f20f2ac0                  CVTSI2SD XMM0,EAX
0050582c  c1e81f                    SHR EAX,0x1f
0050582f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00505838  660f5ac0                  CVTPD2PS XMM0,XMM0
0050583c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00505844  f30f5905f4aaba00          MULSS XMM0,dword ptr [0x00baaaf4]
0050584c  f30f5c0524aaba00          SUBSS XMM0,dword ptr [0x00baaa24]
00505854  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0050585c  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00505862  e8d97cf1ff                CALL 0x0041d540
00505867  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0050586d  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00505873  e8a87cf1ff                CALL 0x0041d520
00505878  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0050587e  e8dd961e00                CALL 0x006eef60
00505883  f30f10542424              MOVSS XMM2,dword ptr [ESP + 0x24]
00505889  0f57c9                    XORPS XMM1,XMM1
0050588c  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
00505892  0f28e2                    MOVAPS XMM4,XMM2
00505895  f30f5964241c              MULSS XMM4,dword ptr [ESP + 0x1c]
0050589b  0f28c3                    MOVAPS XMM0,XMM3
0050589e  f20f2ac8                  CVTSI2SD XMM1,EAX
005058a2  c1e81f                    SHR EAX,0x1f
005058a5  f30f595c241c              MULSS XMM3,dword ptr [ESP + 0x1c]
005058ab  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
005058b4  f30f59442420              MULSS XMM0,dword ptr [ESP + 0x20]
005058ba  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
005058bd  f30f59542420              MULSS XMM2,dword ptr [ESP + 0x20]
005058c3  660f5ac9                  CVTPD2PS XMM1,XMM1
005058c7  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
005058ca  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
005058cd  f30f5ce0                  SUBSS XMM4,XMM0
005058d1  83c0f7                    ADD EAX,-0x9
005058d4  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005058dc  f30f58da                  ADDSS XMM3,XMM2
005058e0  f30f590d00aaba00          MULSS XMM1,dword ptr [0x00baaa00]
005058e8  f30f580d50a9ba00          ADDSS XMM1,dword ptr [0x00baa950]
005058f0  f30f59e1                  MULSS XMM4,XMM1
005058f4  f30f59d9                  MULSS XMM3,XMM1
005058f8  f30f58a73c030000          ADDSS XMM4,dword ptr [EDI + 0x33c]
00505900  f30f589f40030000          ADDSS XMM3,dword ptr [EDI + 0x340]
00505908  f30f11642424              MOVSS dword ptr [ESP + 0x24],XMM4
0050590e  f30f11642414              MOVSS dword ptr [ESP + 0x14],XMM4
00505914  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
0050591a  f30f115c2418              MOVSS dword ptr [ESP + 0x18],XMM3
00505920  83f803                    CMP EAX,0x3
00505923  7762                      JA 0x00505987
00505925  83ec0c                    SUB ESP,0xc
00505928  8d442420                  LEA EAX,[ESP + 0x20]
0050592c  0f57db                    XORPS XMM3,XMM3
0050592f  8bce                      MOV ECX,ESI
00505931  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00505939  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00505941  c7042400000000            MOV dword ptr [ESP],0x0
00505948  50                        PUSH EAX
00505949  8d44243c                  LEA EAX,[ESP + 0x3c]
0050594d  50                        PUSH EAX
0050594e  e8fdd53000                CALL 0x00812f50
00505953  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
00505959  f30f10642424              MOVSS XMM4,dword ptr [ESP + 0x24]
0050595f  0f2ec4                    UCOMISS XMM0,XMM4
00505962  9f                        LAHF
00505963  f6c444                    TEST AH,0x44
00505966  0f8a32010000              JP 0x00505a9e
0050596c  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
00505972  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
00505978  0f2ec3                    UCOMISS XMM0,XMM3
0050597b  9f                        LAHF
0050597c  f6c444                    TEST AH,0x44
0050597f  0f8a19010000              JP 0x00505a9e
00505985  eb4b                      JMP 0x005059d2
00505987  f30f104614                MOVSS XMM0,dword ptr [ESI + 0x14]
0050598c  0f57c9                    XORPS XMM1,XMM1
0050598f  f30f58c1                  ADDSS XMM0,XMM1
00505993  0f2fe0                    COMISS XMM4,XMM0
00505996  0f8205010000              JC 0x00505aa1
0050599c  f30f10461c                MOVSS XMM0,dword ptr [ESI + 0x1c]
005059a1  f30f5cc1                  SUBSS XMM0,XMM1
005059a5  0f2fc4                    COMISS XMM0,XMM4
005059a8  0f82f3000000              JC 0x00505aa1
005059ae  f30f104618                MOVSS XMM0,dword ptr [ESI + 0x18]
005059b3  f30f58c1                  ADDSS XMM0,XMM1
005059b7  0f2fd8                    COMISS XMM3,XMM0
005059ba  0f82e1000000              JC 0x00505aa1
005059c0  f30f104620                MOVSS XMM0,dword ptr [ESI + 0x20]
005059c5  f30f5cc1                  SUBSS XMM0,XMM1
005059c9  0f2fc3                    COMISS XMM0,XMM3
005059cc  0f82cf000000              JC 0x00505aa1
005059d2  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
005059da  f30f5c1d00aaba00          SUBSS XMM3,dword ptr [0x00baaa00]
005059e2  f30f5ce0                  SUBSS XMM4,XMM0
005059e6  f30f5ed8                  DIVSS XMM3,XMM0
005059ea  f30f5ee0                  DIVSS XMM4,XMM0
005059ee  f30f581dd0a2ba00          ADDSS XMM3,dword ptr [0x00baa2d0]
005059f6  f30f5825d0a2ba00          ADDSS XMM4,dword ptr [0x00baa2d0]
005059fe  f30f2ccb                  CVTTSS2SI ECX,XMM3
00505a02  f30f2cd4                  CVTTSS2SI EDX,XMM4
00505a06  85d2                      TEST EDX,EDX
00505a08  7817                      JS 0x00505a21
00505a0a  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
00505a0d  3bd0                      CMP EDX,EAX
00505a0f  7d10                      JGE 0x00505a21
00505a11  85c9                      TEST ECX,ECX
00505a13  780c                      JS 0x00505a21
00505a15  3b4e10                    CMP ECX,dword ptr [ESI + 0x10]
00505a18  7d07                      JGE 0x00505a21
00505a1a  0fafc1                    IMUL EAX,ECX
00505a1d  03c2                      ADD EAX,EDX
00505a1f  eb03                      JMP 0x00505a24
00505a21  83c8ff                    OR EAX,0xffffffff
00505a24  50                        PUSH EAX
00505a25  8bce                      MOV ECX,ESI
00505a27  e8d4ad2e00                CALL 0x007f0800
00505a2c  85c0                      TEST EAX,EAX
00505a2e  7434                      JZ 0x00505a64
00505a30  6a00                      PUSH 0x0
00505a32  6a00                      PUSH 0x0
00505a34  6a01                      PUSH 0x1
00505a36  51                        PUSH ECX
00505a37  c7042400002041            MOV dword ptr [ESP],0x41200000
00505a3e  8d442424                  LEA EAX,[ESP + 0x24]
00505a42  50                        PUSH EAX
00505a43  8d442450                  LEA EAX,[ESP + 0x50]
00505a47  8bce                      MOV ECX,ESI
00505a49  50                        PUSH EAX
00505a4a  e8d1da3000                CALL 0x00813520
00505a4f  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00505a53  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00505a59  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00505a5e  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00505a64  f30f101544aaba00          MOVSS XMM2,dword ptr [0x00baaa44]
00505a6c  8d442414                  LEA EAX,[ESP + 0x14]
00505a70  83ec08                    SUB ESP,0x8
00505a73  8bcf                      MOV ECX,EDI
00505a75  50                        PUSH EAX
00505a76  e8c53c1b00                CALL 0x006b9740
00505a7b  84c0                      TEST AL,AL
00505a7d  751f                      JNZ 0x00505a9e
00505a7f  6a00                      PUSH 0x0
00505a81  6a00                      PUSH 0x0
00505a83  6a00                      PUSH 0x0
00505a85  6a00                      PUSH 0x0
00505a87  6a03                      PUSH 0x3
00505a89  8d442448                  LEA EAX,[ESP + 0x48]
00505a8d  8bce                      MOV ECX,ESI
00505a8f  50                        PUSH EAX
00505a90  8d44242c                  LEA EAX,[ESP + 0x2c]
00505a94  50                        PUSH EAX
00505a95  e856b32e00                CALL 0x007f0df0
00505a9a  84c0                      TEST AL,AL
00505a9c  7555                      JNZ 0x00505af3
00505a9e  0f57c9                    XORPS XMM1,XMM1
00505aa1  43                        INC EBX
00505aa2  83fb0a                    CMP EBX,0xa
00505aa5  0f8c75fdffff              JL 0x00505820
00505aab  0f57c0                    XORPS XMM0,XMM0
00505aae  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00505ab5  9f                        LAHF
00505ab6  f6c444                    TEST AH,0x44
00505ab9  7a0d                      JP 0x00505ac8
00505abb  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
00505ac2  9f                        LAHF
00505ac3  f6c444                    TEST AH,0x44
00505ac6  7b4d                      JNP 0x00505b15
00505ac8  6a00                      PUSH 0x0
00505aca  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00505ad2  8d4f48                    LEA ECX,[EDI + 0x48]
00505ad5  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
00505add  6854ddb100                PUSH 0xb1dd54
00505ae2  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00505aec  e88f48f0ff                CALL 0x0040a380
00505af1  eb22                      JMP 0x00505b15
00505af3  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00505af9  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
00505aff  ebad                      JMP 0x00505aae
00505b01  e85a941e00                CALL 0x006eef60
00505b06  33d2                      XOR EDX,EDX
00505b08  b91e000000                MOV ECX,0x1e
00505b0d  f7f1                      DIV ECX
00505b0f  8997a40b0000              MOV dword ptr [EDI + 0xba4],EDX
00505b15  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
00505b19  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
00505b1f  85c0                      TEST EAX,EAX
00505b21  7e08                      JLE 0x00505b2b
00505b23  2bc2                      SUB EAX,EDX
00505b25  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
00505b2b  8b8c249c000000            MOV ECX,dword ptr [ESP + 0x9c]
00505b32  5f                        POP EDI
00505b33  5e                        POP ESI
00505b34  5b                        POP EBX
00505b35  33cc                      XOR ECX,ESP
00505b37  e8ef955e00                CALL 0x00aef12b
00505b3c  8be5                      MOV ESP,EBP
00505b3e  5d                        POP EBP
00505b3f  c3                        RET
