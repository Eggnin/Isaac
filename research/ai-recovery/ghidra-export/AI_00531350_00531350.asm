; J460 NPC AI 0x00531350 AI_00531350
; types=221
; identities=221.0.0
; entry=00531350
00531350  55                        PUSH EBP
00531351  8bec                      MOV EBP,ESP
00531353  81ecc4000000              SUB ESP,0xc4
00531359  a1b493bf00                MOV EAX,[0x00bf93b4]
0053135e  33c5                      XOR EAX,EBP
00531360  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00531363  53                        PUSH EBX
00531364  56                        PUSH ESI
00531365  57                        PUSH EDI
00531366  8bf9                      MOV EDI,ECX
00531368  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0053136f  753a                      JNZ 0x005313ab
00531371  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0053137b  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00531381  898734030000              MOV dword ptr [EDI + 0x334],EAX
00531387  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0053138d  898738030000              MOV dword ptr [EDI + 0x338],EAX
00531393  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0053139a  5f                        POP EDI
0053139b  5e                        POP ESI
0053139c  5b                        POP EBX
0053139d  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005313a0  33cd                      XOR ECX,EBP
005313a2  e884dd5b00                CALL 0x00aef12b
005313a7  8be5                      MOV ESP,EBP
005313a9  5d                        POP EBP
005313aa  c3                        RET
005313ab  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
005313b2  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005313ba  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005313c2  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005313ca  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005313d2  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005313da  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005313e2  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
005313ea  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005313f2  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005313f8  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00531400  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00531408  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
00531410  83f803                    CMP EAX,0x3
00531413  0f8546010000              JNZ 0x0053155f
00531419  6a00                      PUSH 0x0
0053141b  8d5f48                    LEA EBX,[EDI + 0x48]
0053141e  682cd5b100                PUSH 0xb1d52c
00531423  8bcb                      MOV ECX,EBX
00531425  e8568fedff                CALL 0x0040a380
0053142a  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
00531430  85d2                      TEST EDX,EDX
00531432  7e1a                      JLE 0x0053144e
00531434  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0053143c  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00531444  2bc8                      SUB ECX,EAX
00531446  03ca                      ADD ECX,EDX
00531448  898f10040000              MOV dword ptr [EDI + 0x410],ECX
0053144e  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00531455  742b                      JZ 0x00531482
00531457  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0053145f  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
00531466  0f83bf000000              JNC 0x0053152b
0053146c  6a09                      PUSH 0x9
0053146e  8bcf                      MOV ECX,EDI
00531470  e8eb6d1a00                CALL 0x006d8260
00531475  84c0                      TEST AL,AL
00531477  0f85ae000000              JNZ 0x0053152b
0053147d  e995000000                JMP 0x00531517
00531482  8bcf                      MOV ECX,EDI
00531484  e8b7d31800                CALL 0x006be840
00531489  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00531491  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00531499  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005314a1  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005314a9  f30f59c0                  MULSS XMM0,XMM0
005314ad  f30f59c9                  MULSS XMM1,XMM1
005314b1  f30f58c1                  ADDSS XMM0,XMM1
005314b5  0f2f0548acba00            COMISS XMM0,dword ptr [0x00baac48]
005314bc  7750                      JA 0x0053150e
005314be  a17816c700                MOV EAX,[0x00c71678]
005314c3  8bcf                      MOV ECX,EDI
005314c5  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005314cb  e870d31800                CALL 0x006be840
005314d0  6a00                      PUSH 0x0
005314d2  6a00                      PUSH 0x0
005314d4  6a00                      PUSH 0x0
005314d6  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
005314dc  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
005314e2  68e7030000                PUSH 0x3e7
005314e7  89854cffffff              MOV dword ptr [EBP + 0xffffff4c],EAX
005314ed  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
005314f3  6a03                      PUSH 0x3
005314f5  50                        PUSH EAX
005314f6  8d873c030000              LEA EAX,[EDI + 0x33c]
005314fc  898d48ffffff              MOV dword ptr [EBP + 0xffffff48],ECX
00531502  50                        PUSH EAX
00531503  8bce                      MOV ECX,ESI
00531505  e8e6f82b00                CALL 0x007f0df0
0053150a  84c0                      TEST AL,AL
0053150c  7509                      JNZ 0x00531517
0053150e  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
00531515  7e14                      JLE 0x0053152b
00531517  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0053151d  2500020000                AND EAX,0x200
00531522  83c800                    OR EAX,0x0
00531525  0f849d020000              JZ 0x005317c8
0053152b  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00531535  e826da1b00                CALL 0x006eef60
0053153a  33d2                      XOR EDX,EDX
0053153c  b928000000                MOV ECX,0x28
00531541  f7f1                      DIV ECX
00531543  6a00                      PUSH 0x0
00531545  83c250                    ADD EDX,0x50
00531548  8bcb                      MOV ECX,EBX
0053154a  68e80bb600                PUSH 0xb60be8
0053154f  899710040000              MOV dword ptr [EDI + 0x410],EDX
00531555  e8268eedff                CALL 0x0040a380
0053155a  e969020000                JMP 0x005317c8
0053155f  83f808                    CMP EAX,0x8
00531562  0f8564010000              JNZ 0x005316cc
00531568  6a00                      PUSH 0x0
0053156a  8d5f48                    LEA EBX,[EDI + 0x48]
0053156d  6854ddb100                PUSH 0xb1dd54
00531572  8bcb                      MOV ECX,EBX
00531574  e8078eedff                CALL 0x0040a380
00531579  6a00                      PUSH 0x0
0053157b  8bcf                      MOV ECX,EDI
0053157d  e8ce7a1a00                CALL 0x006d9050
00531582  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00531586  0f8423010000              JZ 0x005316af
0053158c  68dcd2b100                PUSH 0xb1d2dc
00531591  8d4f78                    LEA ECX,[EDI + 0x78]
00531594  e83798edff                CALL 0x0040add0
00531599  84c0                      TEST AL,AL
0053159b  0f84fb000000              JZ 0x0053169c
005315a1  51                        PUSH ECX
005315a2  c704240000803f            MOV dword ptr [ESP],0x3f800000
005315a9  6a00                      PUSH 0x0
005315ab  6a02                      PUSH 0x2
005315ad  51                        PUSH ECX
005315ae  c704240000803f            MOV dword ptr [ESP],0x3f800000
005315b5  8bcf                      MOV ECX,EDI
005315b7  68b2000000                PUSH 0xb2
005315bc  e8df551a00                CALL 0x006d6ba0
005315c1  8bcf                      MOV ECX,EDI
005315c3  e878d21800                CALL 0x006be840
005315c8  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005315cf  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005315d7  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
005315df  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
005315e7  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
005315ef  7440                      JZ 0x00531631
005315f1  f30f1097200f0000          MOVSS XMM2,dword ptr [EDI + 0xf20]
005315f9  f30f108f240f0000          MOVSS XMM1,dword ptr [EDI + 0xf24]
00531601  f30f591578aaba00          MULSS XMM2,dword ptr [0x00baaa78]
00531609  f30f590d78aaba00          MULSS XMM1,dword ptr [0x00baaa78]
00531611  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
00531619  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00531621  f30f119548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM2
00531629  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
00531631  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
00531637  e8f4d8f0ff                CALL 0x0043ef30
0053163c  8bf0                      MOV ESI,EAX
0053163e  e81dd91b00                CALL 0x006eef60
00531643  660f6ec0                  MOVD XMM0,EAX
00531647  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053164b  c1e81f                    SHR EAX,0x1f
0053164e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00531657  660f5ac0                  CVTPD2PS XMM0,XMM0
0053165b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00531663  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0053166b  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00531673  e8e8d81b00                CALL 0x006eef60
00531678  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
00531680  83e003                    AND EAX,0x3
00531683  56                        PUSH ESI
00531684  51                        PUSH ECX
00531685  f30f110424                MOVSS dword ptr [ESP],XMM0
0053168a  8d8d48ffffff              LEA ECX,[EBP + 0xffffff48]
00531690  51                        PUSH ECX
00531691  83c005                    ADD EAX,0x5
00531694  8bcf                      MOV ECX,EDI
00531696  50                        PUSH EAX
00531697  e834b71900                CALL 0x006ccdd0
0053169c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005316a0  740d                      JZ 0x005316af
005316a2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005316a9  0f8519010000              JNZ 0x005317c8
005316af  6a00                      PUSH 0x0
005316b1  682cd5b100                PUSH 0xb1d52c
005316b6  8bcb                      MOV ECX,EBX
005316b8  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005316c2  e8b98cedff                CALL 0x0040a380
005316c7  e9fc000000                JMP 0x005317c8
005316cc  83f806                    CMP EAX,0x6
005316cf  0f85d5000000              JNZ 0x005317aa
005316d5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005316d9  7409                      JZ 0x005316e4
005316db  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005316e2  750f                      JNZ 0x005316f3
005316e4  6a00                      PUSH 0x0
005316e6  681411b600                PUSH 0xb61114
005316eb  8d4f48                    LEA ECX,[EDI + 0x48]
005316ee  e88d8cedff                CALL 0x0040a380
005316f3  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
005316fb  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00531703  2bc8                      SUB ECX,EAX
00531705  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0053170b  03c1                      ADD EAX,ECX
0053170d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00531714  898710040000              MOV dword ptr [EDI + 0x410],EAX
0053171a  7450                      JZ 0x0053176c
0053171c  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0053171f  85c0                      TEST EAX,EAX
00531721  0f84a1000000              JZ 0x005317c8
00531727  80783400                  CMP byte ptr [EAX + 0x34],0x0
0053172b  0f8497000000              JZ 0x005317c8
00531731  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
00531739  0f2f87b00b0000            COMISS XMM0,dword ptr [EDI + 0xbb0]
00531740  0f8682000000              JBE 0x005317c8
00531746  6a09                      PUSH 0x9
00531748  8bcf                      MOV ECX,EDI
0053174a  e8116b1a00                CALL 0x006d8260
0053174f  84c0                      TEST AL,AL
00531751  751d                      JNZ 0x00531770
00531753  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0053175b  8bcf                      MOV ECX,EDI
0053175d  6a07                      PUSH 0x7
0053175f  6a00                      PUSH 0x0
00531761  e8fa961900                CALL 0x006cae60
00531766  84c0                      TEST AL,AL
00531768  745e                      JZ 0x005317c8
0053176a  eb04                      JMP 0x00531770
0053176c  85c0                      TEST EAX,EAX
0053176e  7f58                      JG 0x005317c8
00531770  6a00                      PUSH 0x0
00531772  68100cb600                PUSH 0xb60c10
00531777  8d4f48                    LEA ECX,[EDI + 0x48]
0053177a  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
00531784  e8f78bedff                CALL 0x0040a380
00531789  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00531791  0f57c9                    XORPS XMM1,XMM1
00531794  f30f5c0598a1ba00          SUBSS XMM0,dword ptr [0x00baa198]
0053179c  f30f5fc1                  MAXSS XMM0,XMM1
005317a0  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
005317a8  eb21                      JMP 0x005317cb
005317aa  83f807                    CMP EAX,0x7
005317ad  7519                      JNZ 0x005317c8
005317af  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005317b3  7409                      JZ 0x005317be
005317b5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005317bc  750a                      JNZ 0x005317c8
005317be  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005317c8  0f57c9                    XORPS XMM1,XMM1
005317cb  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005317d1  83f803                    CMP EAX,0x3
005317d4  7420                      JZ 0x005317f6
005317d6  83f808                    CMP EAX,0x8
005317d9  741b                      JZ 0x005317f6
005317db  83f807                    CMP EAX,0x7
005317de  7416                      JZ 0x005317f6
005317e0  83f806                    CMP EAX,0x6
005317e3  750d                      JNZ 0x005317f2
005317e5  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005317e8  85c0                      TEST EAX,EAX
005317ea  740a                      JZ 0x005317f6
005317ec  80783400                  CMP byte ptr [EAX + 0x34],0x0
005317f0  7404                      JZ 0x005317f6
005317f2  32db                      XOR BL,BL
005317f4  eb02                      JMP 0x005317f8
005317f6  b301                      MOV BL,0x1
005317f8  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
005317fd  0f2fc1                    COMISS XMM0,XMM1
00531800  0f868b000000              JBE 0x00531891
00531806  0f57c0                    XORPS XMM0,XMM0
00531809  84db                      TEST BL,BL
0053180b  742f                      JZ 0x0053183c
0053180d  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00531810  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00531813  7427                      JZ 0x0053183c
00531815  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
00531820  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00531823  81e100800000              AND ECX,0x8000
00531829  83c900                    OR ECX,0x0
0053182c  7506                      JNZ 0x00531834
0053182e  f30f5800                  ADDSS XMM0,dword ptr [EAX]
00531832  8908                      MOV dword ptr [EAX],ECX
00531834  83c038                    ADD EAX,0x38
00531837  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0053183a  75e4                      JNZ 0x00531820
0053183c  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00531843  7559                      JNZ 0x0053189e
00531845  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0053184b  83f803                    CMP EAX,0x3
0053184e  7405                      JZ 0x00531855
00531850  83f808                    CMP EAX,0x8
00531853  753c                      JNZ 0x00531891
00531855  0f2fc1                    COMISS XMM0,XMM1
00531858  7637                      JBE 0x00531891
0053185a  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00531860  2500080001                AND EAX,0x1000800
00531865  83c800                    OR EAX,0x0
00531868  7527                      JNZ 0x00531891
0053186a  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00531870  f30f2cc8                  CVTTSS2SI ECX,XMM0
00531874  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0053187e  8d0c48                    LEA ECX,[EAX + ECX*0x2]
00531881  b81e000000                MOV EAX,0x1e
00531886  3bc8                      CMP ECX,EAX
00531888  0f4cc1                    CMOVL EAX,ECX
0053188b  898710040000              MOV dword ptr [EDI + 0x410],EAX
00531891  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00531898  0f8436010000              JZ 0x005319d4
0053189e  f30f109fb00b0000          MOVSS XMM3,dword ptr [EDI + 0xbb0]
005318a6  0f28d1                    MOVAPS XMM2,XMM1
005318a9  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005318b1  8bcf                      MOV ECX,EDI
005318b3  6a01                      PUSH 0x1
005318b5  e886751a00                CALL 0x006d8e40
005318ba  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
005318c1  757a                      JNZ 0x0053193d
005318c3  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
005318cb  8bcf                      MOV ECX,EDI
005318cd  6a07                      PUSH 0x7
005318cf  6a00                      PUSH 0x0
005318d1  e88a951900                CALL 0x006cae60
005318d6  84c0                      TEST AL,AL
005318d8  7463                      JZ 0x0053193d
005318da  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005318e1  751a                      JNZ 0x005318fd
005318e3  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005318eb  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
005318f3  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005318fb  eb2e                      JMP 0x0053192b
005318fd  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00531905  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
0053190b  50                        PUSH EAX
0053190c  8bcf                      MOV ECX,EDI
0053190e  e88d6c1a00                CALL 0x006d85a0
00531913  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
0053191b  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
00531923  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
0053192b  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
00531933  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0053193d  84db                      TEST BL,BL
0053193f  7460                      JZ 0x005319a1
00531941  f30f101544aaba00          MOVSS XMM2,dword ptr [0x00baaa44]
00531949  8d873c030000              LEA EAX,[EDI + 0x33c]
0053194f  83ec08                    SUB ESP,0x8
00531952  8bcf                      MOV ECX,EDI
00531954  50                        PUSH EAX
00531955  e8e67d1800                CALL 0x006b9740
0053195a  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00531962  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0053196a  f30f5e0544aaba00          DIVSS XMM0,dword ptr [0x00baaa44]
00531972  84c0                      TEST AL,AL
00531974  7415                      JZ 0x0053198b
00531976  f30f5cc8                  SUBSS XMM1,XMM0
0053197a  0f57d2                    XORPS XMM2,XMM2
0053197d  f30f5fca                  MAXSS XMM1,XMM2
00531981  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
00531989  eb49                      JMP 0x005319d4
0053198b  f30f58c8                  ADDSS XMM1,XMM0
0053198f  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
00531997  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0053199f  eb33                      JMP 0x005319d4
005319a1  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
005319a9  0f57d2                    XORPS XMM2,XMM2
005319ac  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
005319b4  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
005319bc  f30f5e0d44aaba00          DIVSS XMM1,dword ptr [0x00baaa44]
005319c4  f30f5cc1                  SUBSS XMM0,XMM1
005319c8  f30f5fc2                  MAXSS XMM0,XMM2
005319cc  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
005319d4  83bf640b000006            CMP dword ptr [EDI + 0xb64],0x6
005319db  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005319e1  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
005319e7  7505                      JNZ 0x005319ee
005319e9  83e0ef                    AND EAX,0xffffffef
005319ec  eb03                      JMP 0x005319f1
005319ee  83c810                    OR EAX,0x10
005319f1  898768010000              MOV dword ptr [EDI + 0x168],EAX
005319f7  898f6c010000              MOV dword ptr [EDI + 0x16c],ECX
005319fd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00531a01  0f848b000000              JZ 0x00531a92
00531a07  681011b600                PUSH 0xb61110
00531a0c  8d4f78                    LEA ECX,[EDI + 0x78]
00531a0f  e8bc93edff                CALL 0x0040add0
00531a14  84c0                      TEST AL,AL
00531a16  747a                      JZ 0x00531a92
00531a18  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00531a1e  83f812                    CMP EAX,0x12
00531a21  750a                      JNZ 0x00531a2d
00531a23  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00531a2b  eb0d                      JMP 0x00531a3a
00531a2d  83f813                    CMP EAX,0x13
00531a30  7510                      JNZ 0x00531a42
00531a32  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00531a3a  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
00531a42  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00531a48  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00531a4e  c78544ffffff02000000      MOV dword ptr [EBP + 0xffffff44],0x2
00531a58  e8234d4200                CALL 0x00956780
00531a5d  f30f108540ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff40]
00531a65  83ec08                    SUB ESP,0x8
00531a68  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00531a70  f30f110424                MOVSS dword ptr [ESP],XMM0
00531a75  6a00                      PUSH 0x0
00531a77  6a02                      PUSH 0x2
00531a79  51                        PUSH ECX
00531a7a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00531a81  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00531a87  ffb544ffffff              PUSH dword ptr [EBP + 0xffffff44]
00531a8d  e89ec13f00                CALL 0x0092dc30
00531a92  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00531a95  5f                        POP EDI
00531a96  5e                        POP ESI
00531a97  33cd                      XOR ECX,EBP
00531a99  5b                        POP EBX
00531a9a  e88cd65b00                CALL 0x00aef12b
00531a9f  8be5                      MOV ESP,EBP
00531aa1  5d                        POP EBP
00531aa2  c3                        RET
