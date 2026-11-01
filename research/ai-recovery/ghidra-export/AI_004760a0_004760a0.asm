; J460 NPC AI 0x004760a0 AI_004760a0
; types=51
; identities=51.0.0,51.1.0,51.10.0,51.11.0,51.20.0,51.21.0,51.30.0,51.31.0
; entry=004760a0
004760a0  55                        PUSH EBP
004760a1  8bec                      MOV EBP,ESP
004760a3  83e4f8                    AND ESP,0xfffffff8
004760a6  83ec78                    SUB ESP,0x78
004760a9  56                        PUSH ESI
004760aa  57                        PUSH EDI
004760ab  8bf9                      MOV EDI,ECX
004760ad  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004760b4  0f85a8020000              JNZ 0x00476362
004760ba  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
004760bd  b90a000000                MOV ECX,0xa
004760c2  6a00                      PUSH 0x0
004760c4  83fa1e                    CMP EDX,0x1e
004760c7  7274                      JC 0x0047613d
004760c9  8b8f30030000              MOV ECX,dword ptr [EDI + 0x330]
004760cf  8bc2                      MOV EAX,EDX
004760d1  33d2                      XOR EDX,EDX
004760d3  f30f104124                MOVSS XMM0,dword ptr [ECX + 0x24]
004760d8  b90a000000                MOV ECX,0xa
004760dd  f7f1                      DIV ECX
004760df  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004760e7  b980e1b100                MOV ECX,0xb1e180
004760ec  83fa01                    CMP EDX,0x1
004760ef  b860e1b100                MOV EAX,0xb1e160
004760f4  0f45c1                    CMOVNZ EAX,ECX
004760f7  8d4f48                    LEA ECX,[EDI + 0x48]
004760fa  50                        PUSH EAX
004760fb  f30f11875c010000          MOVSS dword ptr [EDI + 0x15c],XMM0
00476103  e87842f9ff                CALL 0x0040a380
00476108  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00476110  f30f5e0584a7ba00          DIVSS XMM0,dword ptr [0x00baa784]
00476118  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
00476120  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
00476128  f30f5e0584a7ba00          DIVSS XMM0,dword ptr [0x00baa784]
00476130  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
00476138  e9d3000000                JMP 0x00476210
0047613d  83fa14                    CMP EDX,0x14
00476140  726c                      JC 0x004761ae
00476142  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00476148  f30f104024                MOVSS XMM0,dword ptr [EAX + 0x24]
0047614d  8bc2                      MOV EAX,EDX
0047614f  33d2                      XOR EDX,EDX
00476151  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00476159  f7f1                      DIV ECX
0047615b  b978e1b100                MOV ECX,0xb1e178
00476160  b880e1b100                MOV EAX,0xb1e180
00476165  83fa01                    CMP EDX,0x1
00476168  f30f11875c010000          MOVSS dword ptr [EDI + 0x15c],XMM0
00476170  0f45c1                    CMOVNZ EAX,ECX
00476173  8d4f48                    LEA ECX,[EDI + 0x48]
00476176  50                        PUSH EAX
00476177  e80442f9ff                CALL 0x0040a380
0047617c  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00476184  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
0047618c  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
00476194  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0047619c  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
004761a4  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
004761ac  eb62                      JMP 0x00476210
004761ae  3bd1                      CMP EDX,ECX
004761b0  7251                      JC 0x00476203
004761b2  8bc2                      MOV EAX,EDX
004761b4  33d2                      XOR EDX,EDX
004761b6  f7f1                      DIV ECX
004761b8  b990e1b100                MOV ECX,0xb1e190
004761bd  b878e1b100                MOV EAX,0xb1e178
004761c2  83fa01                    CMP EDX,0x1
004761c5  0f45c1                    CMOVNZ EAX,ECX
004761c8  8d4f48                    LEA ECX,[EDI + 0x48]
004761cb  50                        PUSH EAX
004761cc  e8af41f9ff                CALL 0x0040a380
004761d1  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004761d9  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
004761e1  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
004761e9  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004761f1  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
004761f9  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
00476201  eb0d                      JMP 0x00476210
00476203  6888e1b100                PUSH 0xb1e188
00476208  8d4f48                    LEA ECX,[EDI + 0x48]
0047620b  e87041f9ff                CALL 0x0040a380
00476210  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0047621a  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00476224  e8378d2700                CALL 0x006eef60
00476229  660f6ec0                  MOVD XMM0,EAX
0047622d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00476231  c1e81f                    SHR EAX,0x1f
00476234  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047623d  660f5ac0                  CVTPD2PS XMM0,XMM0
00476241  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00476249  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00476251  f30f58c0                  ADDSS XMM0,XMM0
00476255  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0047625b  e8e072faff                CALL 0x0041d540
00476260  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00476266  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0047626c  e8af72faff                CALL 0x0041d520
00476271  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
00476277  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0047627d  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00476285  33d2                      XOR EDX,EDX
00476287  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0047628f  be0a000000                MOV ESI,0xa
00476294  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00476297  f7f6                      DIV ESI
00476299  83fa01                    CMP EDX,0x1
0047629c  7562                      JNZ 0x00476300
0047629e  0f280d80c9ba00            MOVAPS XMM1,xmmword ptr [0x00bac980]
004762a5  8d442428                  LEA EAX,[ESP + 0x28]
004762a9  c744244800000000          MOV dword ptr [ESP + 0x48],0x0
004762b1  c744244c00000000          MOV dword ptr [ESP + 0x4c],0x0
004762b9  c744245000000000          MOV dword ptr [ESP + 0x50],0x0
004762c1  3bc8                      CMP ECX,EAX
004762c3  0f8485050000              JZ 0x0047684e
004762c9  c701cdcc4c3f              MOV dword ptr [ECX],0x3f4ccccd
004762cf  c741040000403f            MOV dword ptr [ECX + 0x4],0x3f400000
004762d6  c741080000803f            MOV dword ptr [ECX + 0x8],0x3f800000
004762dd  c7410c0000803f            MOV dword ptr [ECX + 0xc],0x3f800000
004762e4  f30f7e442448              MOVQ XMM0,qword ptr [ESP + 0x48]
004762ea  8b442450                  MOV EAX,dword ptr [ESP + 0x50]
004762ee  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004762f3  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
004762f7  894128                    MOV dword ptr [ECX + 0x28],EAX
004762fa  5f                        POP EDI
004762fb  5e                        POP ESI
004762fc  8be5                      MOV ESP,EBP
004762fe  5d                        POP EBP
004762ff  c3                        RET
00476300  0f280d00bbba00            MOVAPS XMM1,xmmword ptr [0x00babb00]
00476307  8d442454                  LEA EAX,[ESP + 0x54]
0047630b  c744247400000000          MOV dword ptr [ESP + 0x74],0x0
00476313  c744247800000000          MOV dword ptr [ESP + 0x78],0x0
0047631b  c744247c00000000          MOV dword ptr [ESP + 0x7c],0x0
00476323  3bc8                      CMP ECX,EAX
00476325  0f8423050000              JZ 0x0047684e
0047632b  c7016666663f              MOV dword ptr [ECX],0x3f666666
00476331  c741046666663f            MOV dword ptr [ECX + 0x4],0x3f666666
00476338  c741086666663f            MOV dword ptr [ECX + 0x8],0x3f666666
0047633f  c7410c0000803f            MOV dword ptr [ECX + 0xc],0x3f800000
00476346  f30f7e442474              MOVQ XMM0,qword ptr [ESP + 0x74]
0047634c  8b44247c                  MOV EAX,dword ptr [ESP + 0x7c]
00476350  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00476355  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
00476359  894128                    MOV dword ptr [ECX + 0x28],EAX
0047635c  5f                        POP EDI
0047635d  5e                        POP ESI
0047635e  8be5                      MOV ESP,EBP
00476360  5d                        POP EBP
00476361  c3                        RET
00476362  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00476369  f30f103d70cbba00          MOVSS XMM7,dword ptr [0x00bacb70]
00476371  0f847e020000              JZ 0x004765f5
00476377  837f2c1e                  CMP dword ptr [EDI + 0x2c],0x1e
0047637b  0f8374020000              JNC 0x004765f5
00476381  e8da8b2700                CALL 0x006eef60
00476386  660f6ec0                  MOVD XMM0,EAX
0047638a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047638e  c1e81f                    SHR EAX,0x1f
00476391  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047639a  660f5ac0                  CVTPD2PS XMM0,XMM0
0047639e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004763a6  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004763ae  f30f58c0                  ADDSS XMM0,XMM0
004763b2  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
004763b8  e88371faff                CALL 0x0041d540
004763bd  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004763c5  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
004763cb  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
004763d1  e84a71faff                CALL 0x0041d520
004763d6  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004763de  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
004763e4  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
004763ea  e8012d3700                CALL 0x007e90f0
004763ef  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
004763f5  8bc8                      MOV ECX,EAX
004763f7  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004763fa  0f28c8                    MOVAPS XMM1,XMM0
004763fd  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00476405  f30f10542410              MOVSS XMM2,dword ptr [ESP + 0x10]
0047640b  83c00a                    ADD EAX,0xa
0047640e  f30f591580a2ba00          MULSS XMM2,dword ptr [0x00baa280]
00476416  6a00                      PUSH 0x0
00476418  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
00476420  51                        PUSH ECX
00476421  6a00                      PUSH 0x0
00476423  57                        PUSH EDI
00476424  8d4c2428                  LEA ECX,[ESP + 0x28]
00476428  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0047642e  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
00476434  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0047643c  51                        PUSH ECX
0047643d  8d4c2434                  LEA ECX,[ESP + 0x34]
00476441  f30f114c242c              MOVSS dword ptr [ESP + 0x2c],XMM1
00476447  51                        PUSH ECX
00476448  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047644e  50                        PUSH EAX
0047644f  ff7728                    PUSH dword ptr [EDI + 0x28]
00476452  f30f11542434              MOVSS dword ptr [ESP + 0x34],XMM2
00476458  f30f1154243c              MOVSS dword ptr [ESP + 0x3c],XMM2
0047645e  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
00476464  e8a77f2800                CALL 0x006fe410
00476469  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0047646f  8b10                      MOV EDX,dword ptr [EAX]
00476471  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00476478  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0047647e  8bc8                      MOV ECX,EAX
00476480  ff520c                    CALL dword ptr [EDX + 0xc]
00476483  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00476489  e8622c3700                CALL 0x007e90f0
0047648e  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00476494  8bc8                      MOV ECX,EAX
00476496  f30f590524adba00          MULSS XMM0,dword ptr [0x00baad24]
0047649e  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004764a1  6a00                      PUSH 0x0
004764a3  51                        PUSH ECX
004764a4  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
004764aa  8d4c2428                  LEA ECX,[ESP + 0x28]
004764ae  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
004764b4  83c00a                    ADD EAX,0xa
004764b7  f30f590524adba00          MULSS XMM0,dword ptr [0x00baad24]
004764bf  6a00                      PUSH 0x0
004764c1  57                        PUSH EDI
004764c2  51                        PUSH ECX
004764c3  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
004764c9  8d4c242c                  LEA ECX,[ESP + 0x2c]
004764cd  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004764d5  f30f5c442420              SUBSS XMM0,dword ptr [ESP + 0x20]
004764db  51                        PUSH ECX
004764dc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004764e2  50                        PUSH EAX
004764e3  ff7728                    PUSH dword ptr [EDI + 0x28]
004764e6  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
004764ec  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004764f4  f30f5c442430              SUBSS XMM0,dword ptr [ESP + 0x30]
004764fa  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
00476500  e80b7f2800                CALL 0x006fe410
00476505  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0047650b  8b10                      MOV EDX,dword ptr [EAX]
0047650d  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00476514  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0047651a  8bc8                      MOV ECX,EAX
0047651c  ff520c                    CALL dword ptr [EDX + 0xc]
0047651f  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00476522  33d2                      XOR EDX,EDX
00476524  b90a000000                MOV ECX,0xa
00476529  f7f1                      DIV ECX
0047652b  83fa01                    CMP EDX,0x1
0047652e  0f85b9000000              JNZ 0x004765ed
00476534  e8278a2700                CALL 0x006eef60
00476539  83e001                    AND EAX,0x1
0047653c  8d7001                    LEA ESI,[EAX + 0x1]
0047653f  b8cdcccccc                MOV EAX,0xcccccccd
00476544  f7672c                    MUL dword ptr [EDI + 0x2c]
00476547  c1ea03                    SHR EDX,0x3
0047654a  3bd6                      CMP EDX,ESI
0047654c  0f839b000000              JNC 0x004765ed
00476552  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00476558  e8932b3700                CALL 0x007e90f0
0047655d  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00476563  8bc8                      MOV ECX,EAX
00476565  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00476568  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0047656e  83c00a                    ADD EAX,0xa
00476571  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00476577  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0047657e  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00476586  6a00                      PUSH 0x0
00476588  51                        PUSH ECX
00476589  6a00                      PUSH 0x0
0047658b  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00476591  8d4c242c                  LEA ECX,[ESP + 0x2c]
00476595  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0047659d  f30f5c442418              SUBSS XMM0,dword ptr [ESP + 0x18]
004765a3  57                        PUSH EDI
004765a4  51                        PUSH ECX
004765a5  8d4c242c                  LEA ECX,[ESP + 0x2c]
004765a9  51                        PUSH ECX
004765aa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004765b0  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
004765b6  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004765be  f30f5c442428              SUBSS XMM0,dword ptr [ESP + 0x28]
004765c4  50                        PUSH EAX
004765c5  ff7728                    PUSH dword ptr [EDI + 0x28]
004765c8  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
004765ce  e83d7e2800                CALL 0x006fe410
004765d3  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
004765d9  8b10                      MOV EDX,dword ptr [EAX]
004765db  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
004765e2  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
004765e8  8bc8                      MOV ECX,EAX
004765ea  ff520c                    CALL dword ptr [EDX + 0xc]
004765ed  f30f103d70cbba00          MOVSS XMM7,dword ptr [0x00bacb70]
004765f5  a17816c700                MOV EAX,[0x00c71678]
004765fa  0f57e4                    XORPS XMM4,XMM4
004765fd  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00476603  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
0047660a  7559                      JNZ 0x00476665
0047660c  f30f100514abba00          MOVSS XMM0,dword ptr [0x00baab14]
00476614  0f2f8740030000            COMISS XMM0,dword ptr [EDI + 0x340]
0047661b  7648                      JBE 0x00476665
0047661d  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
00476625  f30f109f64030000          MOVSS XMM3,dword ptr [EDI + 0x364]
0047662d  0f28ca                    MOVAPS XMM1,XMM2
00476630  f30f59cc                  MULSS XMM1,XMM4
00476634  c787400300000000a043      MOV dword ptr [EDI + 0x340],0x43a00000
0047663e  f30f58cb                  ADDSS XMM1,XMM3
00476642  f30f58c9                  ADDSS XMM1,XMM1
00476646  0f28c1                    MOVAPS XMM0,XMM1
00476649  f30f5cd9                  SUBSS XMM3,XMM1
0047664d  f30f59c4                  MULSS XMM0,XMM4
00476651  f30f5cd0                  SUBSS XMM2,XMM0
00476655  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0047665d  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00476665  f30f10af6c030000          MOVSS XMM5,dword ptr [EDI + 0x36c]
0047666d  f30f592de0a3ba00          MULSS XMM5,dword ptr [0x00baa3e0]
00476675  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0047667b  2500020000                AND EAX,0x200
00476680  83c800                    OR EAX,0x0
00476683  f30f11af6c030000          MOVSS dword ptr [EDI + 0x36c],XMM5
0047668b  7413                      JZ 0x004766a0
0047668d  6a00                      PUSH 0x0
0047668f  8d8f14040000              LEA ECX,[EDI + 0x414]
00476695  e866fc3600                CALL 0x007e6300
0047669a  5f                        POP EDI
0047669b  5e                        POP ESI
0047669c  8be5                      MOV ESP,EBP
0047669e  5d                        POP EBP
0047669f  c3                        RET
004766a0  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004766a3  f30f101d3c79c300          MOVSS XMM3,dword ptr [0x00c3793c]
004766ab  83f80a                    CMP EAX,0xa
004766ae  730a                      JNC 0x004766ba
004766b0  f30f1015d4a1ba00          MOVSS XMM2,dword ptr [0x00baa1d4]
004766b8  eb1c                      JMP 0x004766d6
004766ba  83f814                    CMP EAX,0x14
004766bd  720f                      JC 0x004766ce
004766bf  83f81e                    CMP EAX,0x1e
004766c2  730a                      JNC 0x004766ce
004766c4  f30f1015b8a2ba00          MOVSS XMM2,dword ptr [0x00baa2b8]
004766cc  eb08                      JMP 0x004766d6
004766ce  f30f101544a2ba00          MOVSS XMM2,dword ptr [0x00baa244]
004766d6  f30f10b760030000          MOVSS XMM6,dword ptr [EDI + 0x360]
004766de  0f28c2                    MOVAPS XMM0,XMM2
004766e1  0f2fe6                    COMISS XMM4,XMM6
004766e4  f30f59154079c300          MULSS XMM2,dword ptr [0x00c37940]
004766ec  f30f59d8                  MULSS XMM3,XMM0
004766f0  7603                      JBE 0x004766f5
004766f2  0f57df                    XORPS XMM3,XMM7
004766f5  0f2fa764030000            COMISS XMM4,dword ptr [EDI + 0x364]
004766fc  7603                      JBE 0x00476701
004766fe  0f57d7                    XORPS XMM2,XMM7
00476701  0f2eec                    UCOMISS XMM5,XMM4
00476704  9f                        LAHF
00476705  f6c444                    TEST AH,0x44
00476708  7b37                      JNP 0x00476741
0047670a  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00476712  0f28c1                    MOVAPS XMM0,XMM1
00476715  f30f59ca                  MULSS XMM1,XMM2
00476719  f30f59c3                  MULSS XMM0,XMM3
0047671d  f30f5ecd                  DIVSS XMM1,XMM5
00476721  f30f5ec5                  DIVSS XMM0,XMM5
00476725  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0047672d  f30f58f0                  ADDSS XMM6,XMM0
00476731  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00476739  f30f11b760030000          MOVSS dword ptr [EDI + 0x360],XMM6
00476741  0f2fe6                    COMISS XMM4,XMM6
00476744  0f97c0                    SETA AL
00476747  888748010000              MOV byte ptr [EDI + 0x148],AL
0047674d  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00476753  2500080001                AND EAX,0x1000800
00476758  83c800                    OR EAX,0x0
0047675b  0f84ed000000              JZ 0x0047684e
00476761  8bcf                      MOV ECX,EDI
00476763  e8d8802400                CALL 0x006be840
00476768  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00476770  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00476778  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
00476780  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
00476788  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0047678f  0f28c1                    MOVAPS XMM0,XMM1
00476792  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
00476798  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0047679f  f30f59c1                  MULSS XMM0,XMM1
004767a3  0f28ca                    MOVAPS XMM1,XMM2
004767a6  f30f59ca                  MULSS XMM1,XMM2
004767aa  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
004767b0  f30f58c1                  ADDSS XMM0,XMM1
004767b4  e897f2fbff                CALL 0x00435a50
004767b9  0f57c9                    XORPS XMM1,XMM1
004767bc  0f2fc1                    COMISS XMM0,XMM1
004767bf  7635                      JBE 0x004767f6
004767c1  f30f101500aaba00          MOVSS XMM2,dword ptr [0x00baaa00]
004767c9  f30f5cd0                  SUBSS XMM2,XMM0
004767cd  f30f59158ca0ba00          MULSS XMM2,dword ptr [0x00baa08c]
004767d5  f30f5fd1                  MAXSS XMM2,XMM1
004767d9  f30f5d1554a4ba00          MINSS XMM2,dword ptr [0x00baa454]
004767e1  f30f5ed0                  DIVSS XMM2,XMM0
004767e5  0f28da                    MOVAPS XMM3,XMM2
004767e8  f30f5954240c              MULSS XMM2,dword ptr [ESP + 0xc]
004767ee  f30f595c2410              MULSS XMM3,dword ptr [ESP + 0x10]
004767f4  eb0c                      JMP 0x00476802
004767f6  f30f105c2410              MOVSS XMM3,dword ptr [ESP + 0x10]
004767fc  f30f1054240c              MOVSS XMM2,dword ptr [ESP + 0xc]
00476802  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0047680a  0f2ee1                    UCOMISS XMM4,XMM1
0047680d  9f                        LAHF
0047680e  f6c444                    TEST AH,0x44
00476811  7b3b                      JNP 0x0047684e
00476813  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0047681b  0f28c1                    MOVAPS XMM0,XMM1
0047681e  f30f59ca                  MULSS XMM1,XMM2
00476822  f30f59c3                  MULSS XMM0,XMM3
00476826  f30f5ecc                  DIVSS XMM1,XMM4
0047682a  f30f5ec4                  DIVSS XMM0,XMM4
0047682e  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00476836  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0047683e  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00476846  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0047684e  5f                        POP EDI
0047684f  5e                        POP ESI
00476850  8be5                      MOV ESP,EBP
00476852  5d                        POP EBP
00476853  c3                        RET
