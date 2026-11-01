; J460 NPC AI 0x005400d0 AI_005400d0
; types=256
; identities=256.0.0
; entry=005400d0
005400d0  55                        PUSH EBP
005400d1  8bec                      MOV EBP,ESP
005400d3  83e4f8                    AND ESP,0xfffffff8
005400d6  83ec18                    SUB ESP,0x18
005400d9  56                        PUSH ESI
005400da  57                        PUSH EDI
005400db  8bf9                      MOV EDI,ECX
005400dd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005400e3  81c1a8ba0100              ADD ECX,0x1baa8
005400e9  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
005400ef  51                        PUSH ECX
005400f0  e83be44700                CALL 0x009be530
005400f5  8bf0                      MOV ESI,EAX
005400f7  85f6                      TEST ESI,ESI
005400f9  743a                      JZ 0x00540135
005400fb  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00540102  7531                      JNZ 0x00540135
00540104  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054010a  57                        PUSH EDI
0054010b  81c1e4660200              ADD ECX,0x266e4
00540111  e8ea5a4a00                CALL 0x009e5c00
00540116  8b07                      MOV EAX,dword ptr [EDI]
00540118  8bcf                      MOV ECX,EDI
0054011a  ff5028                    CALL dword ptr [EAX + 0x28]
0054011d  6a00                      PUSH 0x0
0054011f  8d873c030000              LEA EAX,[EDI + 0x33c]
00540125  8bce                      MOV ECX,ESI
00540127  50                        PUSH EAX
00540128  6a01                      PUSH 0x1
0054012a  e8a1982100                CALL 0x007599d0
0054012f  5f                        POP EDI
00540130  5e                        POP ESI
00540131  8be5                      MOV ESP,EBP
00540133  5d                        POP EBP
00540134  c3                        RET
00540135  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054013b  6a01                      PUSH 0x1
0054013d  81c1a8ba0100              ADD ECX,0x1baa8
00540143  51                        PUSH ECX
00540144  6a09                      PUSH 0x9
00540146  e835df4700                CALL 0x009be080
0054014b  85c0                      TEST EAX,EAX
0054014d  7453                      JZ 0x005401a2
0054014f  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00540155  2500000020                AND EAX,0x20000000
0054015a  83c800                    OR EAX,0x0
0054015d  7543                      JNZ 0x005401a2
0054015f  6aff                      PUSH -0x1
00540161  50                        PUSH EAX
00540162  50                        PUSH EAX
00540163  6a0d                      PUSH 0xd
00540165  8bcf                      MOV ECX,EDI
00540167  e8c40d1800                CALL 0x006c0f30
0054016c  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00540174  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
0054017c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00540184  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
0054018c  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
00540194  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0054019c  5f                        POP EDI
0054019d  5e                        POP ESI
0054019e  8be5                      MOV ESP,EBP
005401a0  5d                        POP EBP
005401a1  c3                        RET
005401a2  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005401a8  85c0                      TEST EAX,EAX
005401aa  754f                      JNZ 0x005401fb
005401ac  898710040000              MOV dword ptr [EDI + 0x410],EAX
005401b2  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005401bc  e89fed1a00                CALL 0x006eef60
005401c1  660f6ec0                  MOVD XMM0,EAX
005401c5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005401c9  c1e81f                    SHR EAX,0x1f
005401cc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005401d5  660f5ac0                  CVTPD2PS XMM0,XMM0
005401d9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005401e1  f30f58c0                  ADDSS XMM0,XMM0
005401e5  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
005401ed  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
005401f5  5f                        POP EDI
005401f6  5e                        POP ESI
005401f7  8be5                      MOV ESP,EBP
005401f9  5d                        POP EBP
005401fa  c3                        RET
005401fb  83f804                    CMP EAX,0x4
005401fe  0f85de020000              JNZ 0x005404e2
00540204  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0054020c  f30f580588a1ba00          ADDSS XMM0,dword ptr [0x00baa188]
00540214  f30f100da8a7ba00          MOVSS XMM1,dword ptr [0x00baa7a8]
0054021c  0f2fc1                    COMISS XMM0,XMM1
0054021f  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00540227  720c                      JC 0x00540235
00540229  f30f5cc1                  SUBSS XMM0,XMM1
0054022d  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00540235  51                        PUSH ECX
00540236  8d44241c                  LEA EAX,[ESP + 0x1c]
0054023a  c7042400000000            MOV dword ptr [ESP],0x0
00540241  50                        PUSH EAX
00540242  8bcf                      MOV ECX,EDI
00540244  e8f7e91700                CALL 0x006bec40
00540249  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0054024e  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00540256  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0054025a  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
00540262  0f28c1                    MOVAPS XMM0,XMM1
00540265  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
0054026b  f30f59c1                  MULSS XMM0,XMM1
0054026f  0f28ca                    MOVAPS XMM1,XMM2
00540272  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
00540278  f30f59ca                  MULSS XMM1,XMM2
0054027c  f30f58c1                  ADDSS XMM0,XMM1
00540280  e8cb57efff                CALL 0x00435a50
00540285  8bcf                      MOV ECX,EDI
00540287  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0054028d  e8aee51700                CALL 0x006be840
00540292  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00540299  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
005402a1  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
005402a9  8d442418                  LEA EAX,[ESP + 0x18]
005402ad  50                        PUSH EAX
005402ae  0f8492000000              JZ 0x00540346
005402b4  0f57d2                    XORPS XMM2,XMM2
005402b7  8bcf                      MOV ECX,EDI
005402b9  e812801900                CALL 0x006d82d0
005402be  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
005402c6  8bf0                      MOV ESI,EAX
005402c8  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005402d0  0f5ac0                    CVTPS2PD XMM0,XMM0
005402d3  e80f065b00                CALL 0x00af08e7
005402d8  0f57c9                    XORPS XMM1,XMM1
005402db  f20f5ac8                  CVTSD2SS XMM1,XMM0
005402df  f30f1006                  MOVSS XMM0,dword ptr [ESI]
005402e3  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
005402eb  f30f590da4a7ba00          MULSS XMM1,dword ptr [0x00baa7a4]
005402f3  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
005402fb  f30f58c8                  ADDSS XMM1,XMM0
005402ff  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00540307  0f5ac0                    CVTPS2PD XMM0,XMM0
0054030a  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
00540310  e8f0055b00                CALL 0x00af0905
00540315  f30f102de0a3ba00          MOVSS XMM5,dword ptr [0x00baa3e0]
0054031d  0f57e4                    XORPS XMM4,XMM4
00540320  f20f5ae0                  CVTSD2SS XMM4,XMM0
00540324  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00540329  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
00540331  f30f5925a4a7ba00          MULSS XMM4,dword ptr [0x00baa7a4]
00540339  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
00540341  e9c4000000                JMP 0x0054040a
00540346  f30f58c9                  ADDSS XMM1,XMM1
0054034a  f30f58d2                  ADDSS XMM2,XMM2
0054034e  8d4c2414                  LEA ECX,[ESP + 0x14]
00540352  f30f594c2410              MULSS XMM1,dword ptr [ESP + 0x10]
00540358  f30f59542410              MULSS XMM2,dword ptr [ESP + 0x10]
0054035e  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
00540366  f30f5915d4a1ba00          MULSS XMM2,dword ptr [0x00baa1d4]
0054036e  f30f584c2414              ADDSS XMM1,dword ptr [ESP + 0x14]
00540374  f30f5854241c              ADDSS XMM2,dword ptr [ESP + 0x1c]
0054037a  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
00540380  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
00540386  e8a5fc4c00                CALL 0x00a10030
0054038b  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00540393  8bf0                      MOV ESI,EAX
00540395  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0054039d  0f5ac0                    CVTPS2PD XMM0,XMM0
005403a0  e842055b00                CALL 0x00af08e7
005403a5  0f57c9                    XORPS XMM1,XMM1
005403a8  f20f5ac8                  CVTSD2SS XMM1,XMM0
005403ac  f30f1006                  MOVSS XMM0,dword ptr [ESI]
005403b0  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
005403b8  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
005403c0  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
005403c8  f30f58c8                  ADDSS XMM1,XMM0
005403cc  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
005403d4  0f5ac0                    CVTPS2PD XMM0,XMM0
005403d7  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
005403dd  e823055b00                CALL 0x00af0905
005403e2  f30f102de0a3ba00          MOVSS XMM5,dword ptr [0x00baa3e0]
005403ea  0f57e4                    XORPS XMM4,XMM4
005403ed  f20f5ae0                  CVTSD2SS XMM4,XMM0
005403f1  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
005403f6  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
005403fe  f30f59251ca8ba00          MULSS XMM4,dword ptr [0x00baa81c]
00540406  f30f59c5                  MULSS XMM0,XMM5
0054040a  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
00540410  f30f58e0                  ADDSS XMM4,XMM0
00540414  f30f591d80a3ba00          MULSS XMM3,dword ptr [0x00baa380]
0054041c  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
00540424  f30f592580a3ba00          MULSS XMM4,dword ptr [0x00baa380]
0054042c  f30f59dd                  MULSS XMM3,XMM5
00540430  f30f59e5                  MULSS XMM4,XMM5
00540434  f30f591db4a0ba00          MULSS XMM3,dword ptr [0x00baa0b4]
0054043c  f30f5925b4a0ba00          MULSS XMM4,dword ptr [0x00baa0b4]
00540444  f30f59da                  MULSS XMM3,XMM2
00540448  f30f59e2                  MULSS XMM4,XMM2
0054044c  f30f589f60030000          ADDSS XMM3,dword ptr [EDI + 0x360]
00540454  f30f58a764030000          ADDSS XMM4,dword ptr [EDI + 0x364]
0054045c  0f28cb                    MOVAPS XMM1,XMM3
0054045f  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
00540465  f30f59cb                  MULSS XMM1,XMM3
00540469  0f28c4                    MOVAPS XMM0,XMM4
0054046c  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
00540474  f30f59c4                  MULSS XMM0,XMM4
00540478  f30f11642418              MOVSS dword ptr [ESP + 0x18],XMM4
0054047e  f30f11a764030000          MOVSS dword ptr [EDI + 0x364],XMM4
00540486  f30f58c1                  ADDSS XMM0,XMM1
0054048a  e8c155efff                CALL 0x00435a50
0054048f  f30f1015e8a7ba00          MOVSS XMM2,dword ptr [0x00baa7e8]
00540497  0f28c8                    MOVAPS XMM1,XMM0
0054049a  0f2fca                    COMISS XMM1,XMM2
0054049d  762b                      JBE 0x005404ca
0054049f  0f57c0                    XORPS XMM0,XMM0
005404a2  0f2fc8                    COMISS XMM1,XMM0
005404a5  7623                      JBE 0x005404ca
005404a7  f30f5ed1                  DIVSS XMM2,XMM1
005404ab  0f28c2                    MOVAPS XMM0,XMM2
005404ae  f30f59542418              MULSS XMM2,dword ptr [ESP + 0x18]
005404b4  f30f5944240c              MULSS XMM0,dword ptr [ESP + 0xc]
005404ba  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
005404c2  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005404ca  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005404d2  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
005404da  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005404e2  6a00                      PUSH 0x0
005404e4  6804deb100                PUSH 0xb1de04
005404e9  8d4f48                    LEA ECX,[EDI + 0x48]
005404ec  e88f9eecff                CALL 0x0040a380
005404f1  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
005404f9  0f57c9                    XORPS XMM1,XMM1
005404fc  0f2fc1                    COMISS XMM0,XMM1
005404ff  0f97c0                    SETA AL
00540502  888748010000              MOV byte ptr [EDI + 0x148],AL
00540508  5f                        POP EDI
00540509  5e                        POP ESI
0054050a  8be5                      MOV ESP,EBP
0054050c  5d                        POP EBP
0054050d  c3                        RET
