; J460 NPC AI 0x00547330 AI_00547330
; types=309
; identities=309.0.0
; entry=00547330
00547330  53                        PUSH EBX
00547331  8bdc                      MOV EBX,ESP
00547333  83ec08                    SUB ESP,0x8
00547336  83e4f8                    AND ESP,0xfffffff8
00547339  83c404                    ADD ESP,0x4
0054733c  55                        PUSH EBP
0054733d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00547340  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00547344  8bec                      MOV EBP,ESP
00547346  6aff                      PUSH -0x1
00547348  687549af00                PUSH 0xaf4975
0054734d  64a100000000              MOV EAX,FS:[0x0]
00547353  50                        PUSH EAX
00547354  53                        PUSH EBX
00547355  81eca0000000              SUB ESP,0xa0
0054735b  a1b493bf00                MOV EAX,[0x00bf93b4]
00547360  33c5                      XOR EAX,EBP
00547362  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00547365  56                        PUSH ESI
00547366  57                        PUSH EDI
00547367  50                        PUSH EAX
00547368  8d45f4                    LEA EAX,[EBP + -0xc]
0054736b  64a300000000              MOV FS:[0x0],EAX
00547371  8bf9                      MOV EDI,ECX
00547373  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0054737b  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00547383  f30f5cc1                  SUBSS XMM0,XMM1
00547387  a17816c700                MOV EAX,[0x00c71678]
0054738c  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00547392  f30f5ec1                  DIVSS XMM0,XMM1
00547396  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0054739e  f30f2cf0                  CVTTSS2SI ESI,XMM0
005473a2  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005473aa  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
005473b2  f30f5ec1                  DIVSS XMM0,XMM1
005473b6  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
005473be  f30f2cd0                  CVTTSS2SI EDX,XMM0
005473c2  85f6                      TEST ESI,ESI
005473c4  7836                      JS 0x005473fc
005473c6  8b410c                    MOV EAX,dword ptr [ECX + 0xc]
005473c9  3bf0                      CMP ESI,EAX
005473cb  7d2f                      JGE 0x005473fc
005473cd  85d2                      TEST EDX,EDX
005473cf  782b                      JS 0x005473fc
005473d1  3b5110                    CMP EDX,dword ptr [ECX + 0x10]
005473d4  7d26                      JGE 0x005473fc
005473d6  0fafc2                    IMUL EAX,EDX
005473d9  03c6                      ADD EAX,ESI
005473db  781f                      JS 0x005473fc
005473dd  3dc0010000                CMP EAX,0x1c0
005473e2  7d18                      JGE 0x005473fc
005473e4  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
005473ef  7f0b                      JG 0x005473fc
005473f1  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
005473fc  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00547402  85c0                      TEST EAX,EAX
00547404  0f8551010000              JNZ 0x0054755b
0054740a  0f281520bfba00            MOVAPS XMM2,xmmword ptr [0x00babf20]
00547411  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00547417  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
0054741d  0f57c9                    XORPS XMM1,XMM1
00547420  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
00547426  89857cffffff              MOV dword ptr [EBP + 0xffffff7c],EAX
0054742c  8d8554ffffff              LEA EAX,[EBP + 0xffffff54]
00547432  3bc8                      CMP ECX,EAX
00547434  741d                      JZ 0x00547453
00547436  f30f7e8574ffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff74]
0054743e  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00547444  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00547449  0f1111                    MOVUPS xmmword ptr [ECX],XMM2
0054744c  894128                    MOV dword ptr [ECX + 0x28],EAX
0054744f  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
00547453  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0054745d  8db73c030000              LEA ESI,[EDI + 0x33c]
00547463  8b06                      MOV EAX,dword ptr [ESI]
00547465  898734030000              MOV dword ptr [EDI + 0x334],EAX
0054746b  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0054746e  898738030000              MOV dword ptr [EDI + 0x338],EAX
00547474  e8e77a1a00                CALL 0x006eef60
00547479  33d2                      XOR EDX,EDX
0054747b  818f6c01000000200000      OR dword ptr [EDI + 0x16c],0x2000
00547485  b90a000000                MOV ECX,0xa
0054748a  f7f1                      DIV ECX
0054748c  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00547492  42                        INC EDX
00547493  898768010000              MOV dword ptr [EDI + 0x168],EAX
00547499  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0054749f  e8bc7a1a00                CALL 0x006eef60
005474a4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005474aa  6a00                      PUSH 0x0
005474ac  68acd5c500                PUSH 0xc5d5ac
005474b1  68dcd5c500                PUSH 0xc5d5dc
005474b6  6a00                      PUSH 0x0
005474b8  50                        PUSH EAX
005474b9  6a00                      PUSH 0x0
005474bb  57                        PUSH EDI
005474bc  6840b6c700                PUSH 0xc7b640
005474c1  56                        PUSH ESI
005474c2  6a1a                      PUSH 0x1a
005474c4  68e8030000                PUSH 0x3e8
005474c9  e85216eeff                CALL 0x00428b20
005474ce  50                        PUSH EAX
005474cf  e8dd935a00                CALL 0x00af08b1
005474d4  8bf0                      MOV ESI,EAX
005474d6  83c414                    ADD ESP,0x14
005474d9  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
005474df  8d86bc030000              LEA EAX,[ESI + 0x3bc]
005474e5  c7865c0400001e000000      MOV dword ptr [ESI + 0x45c],0x1e
005474ef  c786600400001e000000      MOV dword ptr [ESI + 0x460],0x1e
005474f9  85c9                      TEST ECX,ECX
005474fb  7418                      JZ 0x00547515
005474fd  8945b0                    MOV dword ptr [EBP + -0x50],EAX
00547500  81c1cc030000              ADD ECX,0x3cc
00547506  8d45b0                    LEA EAX,[EBP + -0x50]
00547509  50                        PUSH EAX
0054750a  e8017df8ff                CALL 0x004cf210
0054750f  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00547515  50                        PUSH EAX
00547516  8bcf                      MOV ECX,EDI
00547518  8938                      MOV dword ptr [EAX],EDI
0054751a  e8d167f8ff                CALL 0x004cdcf0
0054751f  f30f10154079c300          MOVSS XMM2,dword ptr [0x00c37940]
00547527  8bce                      MOV ECX,ESI
00547529  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
00547531  f30f591530a6ba00          MULSS XMM2,dword ptr [0x00baa630]
00547539  8b06                      MOV EAX,dword ptr [ESI]
0054753b  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
00547543  f30f1196e8000000          MOVSS dword ptr [ESI + 0xe8],XMM2
0054754b  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00547553  ff500c                    CALL dword ptr [EAX + 0xc]
00547556  e9df050000                JMP 0x00547b3a
0054755b  83f803                    CMP EAX,0x3
0054755e  0f85cc050000              JNZ 0x00547b30
00547564  6a00                      PUSH 0x0
00547566  8d4f48                    LEA ECX,[EDI + 0x48]
00547569  68a012b600                PUSH 0xb612a0
0054756e  e80d2eecff                CALL 0x0040a380
00547573  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0054757b  8db73c030000              LEA ESI,[EDI + 0x33c]
00547581  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00547589  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0054758d  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
00547592  a17816c700                MOV EAX,[0x00c71678]
00547597  6a00                      PUSH 0x0
00547599  6a00                      PUSH 0x0
0054759b  6aff                      PUSH -0x1
0054759d  6a1a                      PUSH 0x1a
0054759f  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005475a7  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005475af  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005475b5  8d4580                    LEA EAX,[EBP + -0x80]
005475b8  68e8030000                PUSH 0x3e8
005475bd  81c118120000              ADD ECX,0x1218
005475c3  50                        PUSH EAX
005475c4  e89739edff                CALL 0x0041af60
005475c9  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
005475d0  33c0                      XOR EAX,EAX
005475d2  8b4d8c                    MOV ECX,dword ptr [EBP + -0x74]
005475d5  8945bc                    MOV dword ptr [EBP + -0x44],EAX
005475d8  85c9                      TEST ECX,ECX
005475da  0f8495010000              JZ 0x00547775
005475e0  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
005475e3  6a00                      PUSH 0x0
005475e5  68acd5c500                PUSH 0xc5d5ac
005475ea  68dcd5c500                PUSH 0xc5d5dc
005475ef  6a00                      PUSH 0x0
005475f1  ff3481                    PUSH dword ptr [ECX + EAX*0x4]
005475f4  e8b8925a00                CALL 0x00af08b1
005475f9  8bf0                      MOV ESI,EAX
005475fb  83c414                    ADD ESP,0x14
005475fe  39bebc030000              CMP dword ptr [ESI + 0x3bc],EDI
00547604  0f8553010000              JNZ 0x0054775d
0054760a  8b865c040000              MOV EAX,dword ptr [ESI + 0x45c]
00547610  83f81e                    CMP EAX,0x1e
00547613  0f8e30010000              JLE 0x00547749
00547619  660f6ec8                  MOVD XMM1,EAX
0054761d  0f57c0                    XORPS XMM0,XMM0
00547620  0f5bc9                    CVTDQ2PS XMM1,XMM1
00547623  f30f5c0d10a9ba00          SUBSS XMM1,dword ptr [0x00baa910]
0054762b  f30f5e0dd8adba00          DIVSS XMM1,dword ptr [0x00baadd8]
00547633  f30f5fc8                  MAXSS XMM1,XMM0
00547637  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
0054763f  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
00547647  0f28c1                    MOVAPS XMM0,XMM1
0054764a  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00547652  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0054765a  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00547662  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0054766a  83f81f                    CMP EAX,0x1f
0054766d  0f85ea000000              JNZ 0x0054775d
00547673  e8e8781a00                CALL 0x006eef60
00547678  8b8e3c030000              MOV ECX,dword ptr [ESI + 0x33c]
0054767e  8b9640030000              MOV EDX,dword ptr [ESI + 0x340]
00547684  50                        PUSH EAX
00547685  6a00                      PUSH 0x0
00547687  57                        PUSH EDI
00547688  6840b6c700                PUSH 0xc7b640
0054768d  8d45b4                    LEA EAX,[EBP + -0x4c]
00547690  894db4                    MOV dword ptr [EBP + -0x4c],ECX
00547693  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00547699  50                        PUSH EAX
0054769a  6a07                      PUSH 0x7
0054769c  68e8030000                PUSH 0x3e8
005476a1  8955b8                    MOV dword ptr [EBP + -0x48],EDX
005476a4  e87714eeff                CALL 0x00428b20
005476a9  8bf0                      MOV ESI,EAX
005476ab  e8b0781a00                CALL 0x006eef60
005476b0  6a01                      PUSH 0x1
005476b2  6a00                      PUSH 0x0
005476b4  68ff000000                PUSH 0xff
005476b9  660f6ec0                  MOVD XMM0,EAX
005476bd  8d4dc0                    LEA ECX,[EBP + -0x40]
005476c0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005476c4  c1e81f                    SHR EAX,0x1f
005476c7  6aff                      PUSH -0x1
005476c9  51                        PUSH ECX
005476ca  8bce                      MOV ECX,ESI
005476cc  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
005476d3  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
005476da  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
005476e1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005476ea  8b06                      MOV EAX,dword ptr [ESI]
005476ec  660f5ac8                  CVTPD2PS XMM1,XMM0
005476f0  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005476f8  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
00547700  f30f580da4a3ba00          ADDSS XMM1,dword ptr [0x00baa3a4]
00547708  0f28c1                    MOVAPS XMM0,XMM1
0054770b  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00547713  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0054771b  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00547723  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0054772b  0f57c0                    XORPS XMM0,XMM0
0054772e  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00547732  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00547739  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0054773d  ff503c                    CALL dword ptr [EAX + 0x3c]
00547740  8b06                      MOV EAX,dword ptr [ESI]
00547742  8bce                      MOV ECX,ESI
00547744  ff500c                    CALL dword ptr [EAX + 0xc]
00547747  eb14                      JMP 0x0054775d
00547749  c7865c0400001e000000      MOV dword ptr [ESI + 0x45c],0x1e
00547753  c786600400001e000000      MOV dword ptr [ESI + 0x460],0x1e
0054775d  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
00547760  8b4d8c                    MOV ECX,dword ptr [EBP + -0x74]
00547763  40                        INC EAX
00547764  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00547767  3bc1                      CMP EAX,ECX
00547769  0f8271feffff              JC 0x005475e0
0054776f  8db73c030000              LEA ESI,[EDI + 0x33c]
00547775  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
0054777b  85d2                      TEST EDX,EDX
0054777d  7e1f                      JLE 0x0054779e
0054777f  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00547787  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0054778f  2bc8                      SUB ECX,EAX
00547791  2bd1                      SUB EDX,ECX
00547793  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
00547799  e959030000                JMP 0x00547af7
0054779e  81f900010000              CMP ECX,0x100
005477a4  0f834d030000              JNC 0x00547af7
005477aa  e8b1771a00                CALL 0x006eef60
005477af  33d2                      XOR EDX,EDX
005477b1  f30f100594aaba00          MOVSS XMM0,dword ptr [0x00baaa94]
005477b9  b90a000000                MOV ECX,0xa
005477be  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
005477c3  f7f1                      DIV ECX
005477c5  c745b001000000            MOV dword ptr [EBP + -0x50],0x1
005477cc  42                        INC EDX
005477cd  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
005477d3  e888771a00                CALL 0x006eef60
005477d8  660f6ec0                  MOVD XMM0,EAX
005477dc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005477e0  c1e81f                    SHR EAX,0x1f
005477e3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005477ec  660f5ac0                  CVTPD2PS XMM0,XMM0
005477f0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005477f8  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
005477fd  e85e771a00                CALL 0x006eef60
00547802  660f6ec0                  MOVD XMM0,EAX
00547806  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0054780a  c1e81f                    SHR EAX,0x1f
0054780d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00547816  660f5ac0                  CVTPD2PS XMM0,XMM0
0054781a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00547822  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0054782a  f30f58c0                  ADDSS XMM0,XMM0
0054782e  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
00547833  e8e85cedff                CALL 0x0041d520
00547838  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
0054783d  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
00547842  e8f95cedff                CALL 0x0041d540
00547847  f30f1055a0                MOVSS XMM2,dword ptr [EBP + -0x60]
0054784c  8d45b4                    LEA EAX,[EBP + -0x4c]
0054784f  f30f104da8                MOVSS XMM1,dword ptr [EBP + -0x58]
00547854  f30f59c2                  MULSS XMM0,XMM2
00547858  51                        PUSH ECX
00547859  f30f59ca                  MULSS XMM1,XMM2
0054785d  c7042400000000            MOV dword ptr [ESP],0x0
00547864  f30f59c2                  MULSS XMM0,XMM2
00547868  50                        PUSH EAX
00547869  f30f59ca                  MULSS XMM1,XMM2
0054786d  f30f5945bc                MULSS XMM0,dword ptr [EBP + -0x44]
00547872  f30f594dbc                MULSS XMM1,dword ptr [EBP + -0x44]
00547877  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0054787b  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
00547880  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00547886  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0054788b  f30f114db8                MOVSS dword ptr [EBP + -0x48],XMM1
00547890  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
00547896  e8c5ba2c00                CALL 0x00813360
0054789b  84c0                      TEST AL,AL
0054789d  0f8432010000              JZ 0x005479d5
005478a3  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
005478ab  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
005478b0  f30f5cc1                  SUBSS XMM0,XMM1
005478b4  8bb600830100              MOV ESI,dword ptr [ESI + 0x18300]
005478ba  f30f5ec1                  DIVSS XMM0,XMM1
005478be  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
005478c6  f30f2cc8                  CVTTSS2SI ECX,XMM0
005478ca  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
005478cf  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
005478d7  f30f5ec1                  DIVSS XMM0,XMM1
005478db  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
005478e3  f30f2cc0                  CVTTSS2SI EAX,XMM0
005478e7  85c9                      TEST ECX,ECX
005478e9  7817                      JS 0x00547902
005478eb  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
005478ee  3bca                      CMP ECX,EDX
005478f0  7d10                      JGE 0x00547902
005478f2  85c0                      TEST EAX,EAX
005478f4  780c                      JS 0x00547902
005478f6  3b4610                    CMP EAX,dword ptr [ESI + 0x10]
005478f9  7d07                      JGE 0x00547902
005478fb  0fafc2                    IMUL EAX,EDX
005478fe  03c1                      ADD EAX,ECX
00547900  eb03                      JMP 0x00547905
00547902  83c8ff                    OR EAX,0xffffffff
00547905  50                        PUSH EAX
00547906  8bce                      MOV ECX,ESI
00547908  e8f38e2a00                CALL 0x007f0800
0054790d  85c0                      TEST EAX,EAX
0054790f  0f85c0000000              JNZ 0x005479d5
00547915  50                        PUSH EAX
00547916  50                        PUSH EAX
00547917  6aff                      PUSH -0x1
00547919  6a1a                      PUSH 0x1a
0054791b  8845ac                    MOV byte ptr [EBP + -0x54],AL
0054791e  8d8e18120000              LEA ECX,[ESI + 0x1218]
00547924  68e8030000                PUSH 0x3e8
00547929  8d4590                    LEA EAX,[EBP + -0x70]
0054792c  50                        PUSH EAX
0054792d  e82e36edff                CALL 0x0041af60
00547932  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00547936  33c9                      XOR ECX,ECX
00547938  8b759c                    MOV ESI,dword ptr [EBP + -0x64]
0054793b  85f6                      TEST ESI,ESI
0054793d  7473                      JZ 0x005479b2
0054793f  f30f1055b8                MOVSS XMM2,dword ptr [EBP + -0x48]
00547944  f30f105db4                MOVSS XMM3,dword ptr [EBP + -0x4c]
00547949  0f1f8000000000            NOP dword ptr [EAX]
00547950  8b4594                    MOV EAX,dword ptr [EBP + -0x6c]
00547953  0f28c3                    MOVAPS XMM0,XMM3
00547956  0f28ca                    MOVAPS XMM1,XMM2
00547959  8b1488                    MOV EDX,dword ptr [EAX + ECX*0x4]
0054795c  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
0054795f  f30f5c823c030000          SUBSS XMM0,dword ptr [EDX + 0x33c]
00547967  f30f5c8a40030000          SUBSS XMM1,dword ptr [EDX + 0x340]
0054796f  f30f59c0                  MULSS XMM0,XMM0
00547973  f30f59c9                  MULSS XMM1,XMM1
00547977  f30f58c8                  ADDSS XMM1,XMM0
0054797b  f30f100520acba00          MOVSS XMM0,dword ptr [0x00baac20]
00547983  0f2fc1                    COMISS XMM0,XMM1
00547986  7614                      JBE 0x0054799c
00547988  39babc030000              CMP dword ptr [EDX + 0x3bc],EDI
0054798e  ba01000000                MOV EDX,0x1
00547993  0fb6c0                    MOVZX EAX,AL
00547996  0f44c2                    CMOVZ EAX,EDX
00547999  8945ac                    MOV dword ptr [EBP + -0x54],EAX
0054799c  f30f1005e0abba00          MOVSS XMM0,dword ptr [0x00baabe0]
005479a4  0f2fc1                    COMISS XMM0,XMM1
005479a7  7709                      JA 0x005479b2
005479a9  41                        INC ECX
005479aa  3bce                      CMP ECX,ESI
005479ac  72a2                      JC 0x00547950
005479ae  84c0                      TEST AL,AL
005479b0  7550                      JNZ 0x00547a02
005479b2  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
005479b6  807d9000                  CMP byte ptr [EBP + -0x70],0x0
005479ba  7519                      JNZ 0x005479d5
005479bc  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
005479c0  b101                      MOV CL,0x1
005479c2  8b5594                    MOV EDX,dword ptr [EBP + -0x6c]
005479c5  6a00                      PUSH 0x0
005479c7  6a00                      PUSH 0x0
005479c9  e8e2ce5100                CALL 0x00a648b0
005479ce  83c408                    ADD ESP,0x8
005479d1  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
005479d5  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
005479da  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
005479e2  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
005479e5  40                        INC EAX
005479e6  8945b0                    MOV dword ptr [EBP + -0x50],EAX
005479e9  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
005479ee  83f80a                    CMP EAX,0xa
005479f1  0f8f00010000              JG 0x00547af7
005479f7  8db73c030000              LEA ESI,[EDI + 0x33c]
005479fd  e9d1fdffff                JMP 0x005477d3
00547a02  e859751a00                CALL 0x006eef60
00547a07  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00547a0d  6a00                      PUSH 0x0
00547a0f  68acd5c500                PUSH 0xc5d5ac
00547a14  68dcd5c500                PUSH 0xc5d5dc
00547a19  6a00                      PUSH 0x0
00547a1b  50                        PUSH EAX
00547a1c  6a00                      PUSH 0x0
00547a1e  57                        PUSH EDI
00547a1f  6840b6c700                PUSH 0xc7b640
00547a24  8d45b4                    LEA EAX,[EBP + -0x4c]
00547a27  50                        PUSH EAX
00547a28  6a1a                      PUSH 0x1a
00547a2a  68e8030000                PUSH 0x3e8
00547a2f  e8ec10eeff                CALL 0x00428b20
00547a34  50                        PUSH EAX
00547a35  e8778e5a00                CALL 0x00af08b1
00547a3a  8bf0                      MOV ESI,EAX
00547a3c  83c414                    ADD ESP,0x14
00547a3f  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00547a45  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00547a4b  c7865c0400002d000000      MOV dword ptr [ESI + 0x45c],0x2d
00547a55  c786600400002d000000      MOV dword ptr [ESI + 0x460],0x2d
00547a5f  85c9                      TEST ECX,ECX
00547a61  7418                      JZ 0x00547a7b
00547a63  8945a8                    MOV dword ptr [EBP + -0x58],EAX
00547a66  81c1cc030000              ADD ECX,0x3cc
00547a6c  8d45a8                    LEA EAX,[EBP + -0x58]
00547a6f  50                        PUSH EAX
00547a70  e89b77f8ff                CALL 0x004cf210
00547a75  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00547a7b  50                        PUSH EAX
00547a7c  8bcf                      MOV ECX,EDI
00547a7e  8938                      MOV dword ptr [EAX],EDI
00547a80  e86b62f8ff                CALL 0x004cdcf0
00547a85  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
00547a8d  8bce                      MOV ECX,ESI
00547a8f  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
00547a97  f30f591530a6ba00          MULSS XMM2,dword ptr [0x00baa630]
00547a9f  8b06                      MOV EAX,dword ptr [ESI]
00547aa1  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
00547aa9  f30f1196e4000000          MOVSS dword ptr [ESI + 0xe4],XMM2
00547ab1  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00547ab9  ff500c                    CALL dword ptr [EAX + 0xc]
00547abc  807d9000                  CMP byte ptr [EBP + -0x70],0x0
00547ac0  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00547ac8  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00547ad0  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00547ad8  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
00547ae0  7515                      JNZ 0x00547af7
00547ae2  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
00547ae6  b101                      MOV CL,0x1
00547ae8  8b5594                    MOV EDX,dword ptr [EBP + -0x6c]
00547aeb  6a00                      PUSH 0x0
00547aed  6a00                      PUSH 0x0
00547aef  e8bccd5100                CALL 0x00a648b0
00547af4  83c408                    ADD ESP,0x8
00547af7  807d8000                  CMP byte ptr [EBP + -0x80],0x0
00547afb  7533                      JNZ 0x00547b30
00547afd  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
00547b03  85d2                      TEST EDX,EDX
00547b05  7405                      JZ 0x00547b0c
00547b07  83c230                    ADD EDX,0x30
00547b0a  eb05                      JMP 0x00547b11
00547b0c  ba18f6c700                MOV EDX,0xc7f618
00547b11  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
00547b14  85c0                      TEST EAX,EAX
00547b16  7418                      JZ 0x00547b30
00547b18  8d48fc                    LEA ECX,[EAX + -0x4]
00547b1b  8b01                      MOV EAX,dword ptr [ECX]
00547b1d  2902                      SUB dword ptr [EDX],EAX
00547b1f  51                        PUSH ECX
00547b20  835a0400                  SBB dword ptr [EDX + 0x4],0x0
00547b24  ff15dc87b100              CALL dword ptr [0x00b187dc]
00547b2a  83c404                    ADD ESP,0x4
00547b2d  0f1f00                    NOP dword ptr [EAX]
00547b30  c7876c030000cdcc4c3f      MOV dword ptr [EDI + 0x36c],0x3f4ccccd
00547b3a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00547b3d  64890d00000000            MOV dword ptr FS:[0x0],ECX
00547b44  59                        POP ECX
00547b45  5f                        POP EDI
00547b46  5e                        POP ESI
00547b47  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00547b4a  33cd                      XOR ECX,EBP
00547b4c  e8da755a00                CALL 0x00aef12b
00547b51  8be5                      MOV ESP,EBP
00547b53  5d                        POP EBP
00547b54  8be3                      MOV ESP,EBX
00547b56  5b                        POP EBX
00547b57  c3                        RET
