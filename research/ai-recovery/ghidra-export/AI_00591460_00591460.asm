; J460 NPC AI 0x00591460 AI_00591460
; types=904
; identities=904.0.0,904.1.0,904.10.0
; entry=00591460
00591460  55                        PUSH EBP
00591461  8bec                      MOV EBP,ESP
00591463  6aff                      PUSH -0x1
00591465  686b56af00                PUSH 0xaf566b
0059146a  64a100000000              MOV EAX,FS:[0x0]
00591470  50                        PUSH EAX
00591471  81ec1c010000              SUB ESP,0x11c
00591477  a1b493bf00                MOV EAX,[0x00bf93b4]
0059147c  33c5                      XOR EAX,EBP
0059147e  8945f0                    MOV dword ptr [EBP + -0x10],EAX
00591481  53                        PUSH EBX
00591482  56                        PUSH ESI
00591483  57                        PUSH EDI
00591484  50                        PUSH EAX
00591485  8d45f4                    LEA EAX,[EBP + -0xc]
00591488  64a300000000              MOV FS:[0x0],EAX
0059148e  8bf9                      MOV EDI,ECX
00591490  89bde8feffff              MOV dword ptr [EBP + 0xfffffee8],EDI
00591496  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00591499  85c0                      TEST EAX,EAX
0059149b  750a                      JNZ 0x005914a7
0059149d  e8ced7ffff                CALL 0x0058ec70
005914a2  e9f9070000                JMP 0x00591ca0
005914a7  83f801                    CMP EAX,0x1
005914aa  0f8527030000              JNZ 0x005917d7
005914b0  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005914b6  85c0                      TEST EAX,EAX
005914b8  747c                      JZ 0x00591536
005914ba  83f803                    CMP EAX,0x3
005914bd  0f85b4000000              JNZ 0x00591577
005914c3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005914c7  743b                      JZ 0x00591504
005914c9  68d4d2b100                PUSH 0xb1d2d4
005914ce  8d4f78                    LEA ECX,[EDI + 0x78]
005914d1  e8fa98e7ff                CALL 0x0040add0
005914d6  84c0                      TEST AL,AL
005914d8  742a                      JZ 0x00591504
005914da  51                        PUSH ECX
005914db  c704240000803f            MOV dword ptr [ESP],0x3f800000
005914e2  6a00                      PUSH 0x0
005914e4  6a02                      PUSH 0x2
005914e6  51                        PUSH ECX
005914e7  c704240000803f            MOV dword ptr [ESP],0x3f800000
005914ee  8bcf                      MOV ECX,EDI
005914f0  68f3010000                PUSH 0x1f3
005914f5  e8a6561400                CALL 0x006d6ba0
005914fa  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00591504  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0059150c  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00591514  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0059151c  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00591524  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0059152c  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00591534  eb41                      JMP 0x00591577
00591536  6a00                      PUSH 0x0
00591538  6898d5b100                PUSH 0xb1d598
0059153d  8d4f48                    LEA ECX,[EDI + 0x48]
00591540  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0059154a  e8318ee7ff                CALL 0x0040a380
0059154f  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00591555  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0059155b  83e1fb                    AND ECX,0xfffffffb
0059155e  83c911                    OR ECX,0x11
00591561  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0059156b  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00591571  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00591577  8a8773010000              MOV AL,byte ptr [EDI + 0x173]
0059157d  84c0                      TEST AL,AL
0059157f  754e                      JNZ 0x005915cf
00591581  f30f104f14                MOVSS XMM1,dword ptr [EDI + 0x14]
00591586  0f57c0                    XORPS XMM0,XMM0
00591589  0f2fc8                    COMISS XMM1,XMM0
0059158c  0f860e070000              JBE 0x00591ca0
00591592  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
00591595  2504000001                AND EAX,0x1000004
0059159a  83c800                    OR EAX,0x0
0059159d  7407                      JZ 0x005915a6
0059159f  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
005915a6  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
005915a9  89470c                    MOV dword ptr [EDI + 0xc],EAX
005915ac  8a8773010000              MOV AL,byte ptr [EDI + 0x173]
005915b2  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
005915b9  c7471800000000            MOV dword ptr [EDI + 0x18],0x0
005915c0  c7471c00000000            MOV dword ptr [EDI + 0x1c],0x0
005915c7  84c0                      TEST AL,AL
005915c9  0f84d1060000              JZ 0x00591ca0
005915cf  8d9f3c030000              LEA EBX,[EDI + 0x33c]
005915d5  be07000000                MOV ESI,0x7
005915da  660f1f440000              NOP word ptr [EAX + EAX*0x1]
005915e0  e87bd91500                CALL 0x006eef60
005915e5  660f6ec0                  MOVD XMM0,EAX
005915e9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005915ed  c1e81f                    SHR EAX,0x1f
005915f0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005915f9  660f5ac0                  CVTPD2PS XMM0,XMM0
005915fd  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00591605  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0059160d  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00591615  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0059161d  e81ebfe8ff                CALL 0x0041d540
00591622  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0059162a  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
00591632  e8e9bee8ff                CALL 0x0041d520
00591637  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0059163f  e81cd91500                CALL 0x006eef60
00591644  660f6ec8                  MOVD XMM1,EAX
00591648  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0059164c  c1e81f                    SHR EAX,0x1f
0059164f  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
00591658  660f5ac9                  CVTPD2PS XMM1,XMM1
0059165c  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00591664  0f28c1                    MOVAPS XMM0,XMM1
00591667  f30f598d14ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff14]
0059166f  f30f598510ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff10]
00591677  f30f590d34a8ba00          MULSS XMM1,dword ptr [0x00baa834]
0059167f  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
00591687  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0059168f  f30f5803                  ADDSS XMM0,dword ptr [EBX]
00591693  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
0059169b  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
005916a3  e8b8d81500                CALL 0x006eef60
005916a8  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
005916b0  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
005916b8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005916be  50                        PUSH EAX
005916bf  6807000100                PUSH 0x10007
005916c4  6a00                      PUSH 0x0
005916c6  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
005916cc  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
005916d4  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
005916dc  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
005916e4  50                        PUSH EAX
005916e5  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
005916eb  50                        PUSH EAX
005916ec  6a04                      PUSH 0x4
005916ee  68e8030000                PUSH 0x3e8
005916f3  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
005916fb  e82074e9ff                CALL 0x00428b20
00591700  8bc8                      MOV ECX,EAX
00591702  8b10                      MOV EDX,dword ptr [EAX]
00591704  ff520c                    CALL dword ptr [EDX + 0xc]
00591707  83ee01                    SUB ESI,0x1
0059170a  0f85d0feffff              JNZ 0x005915e0
00591710  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00591716  6898010000                PUSH 0x198
0059171b  8d4914                    LEA ECX,[ECX + 0x14]
0059171e  e8fd823900                CALL 0x00929a20
00591723  8bb7ec030000              MOV ESI,dword ptr [EDI + 0x3ec]
00591729  84c0                      TEST AL,AL
0059172b  743b                      JZ 0x00591768
0059172d  6a00                      PUSH 0x0
0059172f  6a00                      PUSH 0x0
00591731  8bd3                      MOV EDX,EBX
00591733  8d8dfcfeffff              LEA ECX,[EBP + 0xfffffefc]
00591739  e802cd1500                CALL 0x006ee440
0059173e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00591744  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
0059174a  83c408                    ADD ESP,0x8
0059174d  56                        PUSH ESI
0059174e  688d000000                PUSH 0x8d
00591753  6a00                      PUSH 0x0
00591755  50                        PUSH EAX
00591756  53                        PUSH EBX
00591757  685e010000                PUSH 0x15e
0059175c  6a05                      PUSH 0x5
0059175e  e8bd73e9ff                CALL 0x00428b20
00591763  e938050000                JMP 0x00591ca0
00591768  f30f7e0594f5b100          MOVQ XMM0,qword ptr [0x00b1f594]
00591770  a19cf5b100                MOV EAX,[0x00b1f59c]
00591775  660fd685f0feffff          MOVQ qword ptr [EBP + 0xfffffef0],XMM0
0059177d  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00591783  85f6                      TEST ESI,ESI
00591785  7510                      JNZ 0x00591797
00591787  6854bfb600                PUSH 0xb6bf54
0059178c  6a10                      PUSH 0x10
0059178e  e82dfb4700                CALL 0x00a112c0
00591793  83c408                    ADD ESP,0x8
00591796  cc                        INT3
00591797  8b8df0feffff              MOV ECX,dword ptr [EBP + 0xfffffef0]
0059179d  8bc6                      MOV EAX,ESI
0059179f  d3e8                      SHR EAX,CL
005917a1  8b8df4feffff              MOV ECX,dword ptr [EBP + 0xfffffef4]
005917a7  33c6                      XOR EAX,ESI
005917a9  8bd0                      MOV EDX,EAX
005917ab  d3e2                      SHL EDX,CL
005917ad  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
005917b3  33d0                      XOR EDX,EAX
005917b5  57                        PUSH EDI
005917b6  8bc2                      MOV EAX,EDX
005917b8  6a07                      PUSH 0x7
005917ba  d3e8                      SHR EAX,CL
005917bc  8bcb                      MOV ECX,EBX
005917be  33c2                      XOR EAX,EDX
005917c0  ba06000000                MOV EDX,0x6
005917c5  6a01                      PUSH 0x1
005917c7  50                        PUSH EAX
005917c8  6a00                      PUSH 0x0
005917ca  e8419c1800                CALL 0x0071b410
005917cf  83c414                    ADD ESP,0x14
005917d2  e9c9040000                JMP 0x00591ca0
005917d7  83f80a                    CMP EAX,0xa
005917da  0f85c0040000              JNZ 0x00591ca0
005917e0  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
005917e7  752e                      JNZ 0x00591817
005917e9  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
005917ef  83e1fb                    AND ECX,0xfffffffb
005917f2  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005917fc  81c911000044              OR ECX,0x44000011
00591802  818f6c01000008200000      OR dword ptr [EDI + 0x16c],0x2008
0059180c  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00591812  e989040000                JMP 0x00591ca0
00591817  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0059181d  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
00591823  85c0                      TEST EAX,EAX
00591825  0f8470040000              JZ 0x00591c9b
0059182b  81782888030000            CMP dword ptr [EAX + 0x28],0x388
00591832  0f8563040000              JNZ 0x00591c9b
00591838  83782c00                  CMP dword ptr [EAX + 0x2c],0x0
0059183c  0f8559040000              JNZ 0x00591c9b
00591842  a17816c700                MOV EAX,[0x00c71678]
00591847  33f6                      XOR ESI,ESI
00591849  89b510ffffff              MOV dword ptr [EBP + 0xffffff10],ESI
0059184f  89b5e0feffff              MOV dword ptr [EBP + 0xfffffee0],ESI
00591855  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0059185b  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00591861  33c0                      XOR EAX,EAX
00591863  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00591869  8985d8feffff              MOV dword ptr [EBP + 0xfffffed8],EAX
0059186f  6aff                      PUSH -0x1
00591871  68c6030000                PUSH 0x3c6
00591876  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0059187c  8975fc                    MOV dword ptr [EBP + -0x4],ESI
0059187f  33db                      XOR EBX,EBX
00591881  8bcf                      MOV ECX,EDI
00591883  50                        PUSH EAX
00591884  899ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],EBX
0059188a  e8d1f31300                CALL 0x006d0c60
0059188f  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00591893  399df8feffff              CMP dword ptr [EBP + 0xfffffef8],EBX
00591899  0f8631030000              JBE 0x00591bd0
0059189f  8b8508ffffff              MOV EAX,dword ptr [EBP + 0xffffff08]
005918a5  33ff                      XOR EDI,EDI
005918a7  8b8df0feffff              MOV ECX,dword ptr [EBP + 0xfffffef0]
005918ad  0f1f00                    NOP dword ptr [EAX]
005918b0  8b14b9                    MOV EDX,dword ptr [ECX + EDI*0x4]
005918b3  899510ffffff              MOV dword ptr [EBP + 0xffffff10],EDX
005918b9  3982bc030000              CMP dword ptr [EDX + 0x3bc],EAX
005918bf  7575                      JNZ 0x00591936
005918c1  8b8ac4030000              MOV ECX,dword ptr [EDX + 0x3c4]
005918c7  85c9                      TEST ECX,ECX
005918c9  7465                      JZ 0x00591930
005918cb  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
005918d1  2500010000                AND EAX,0x100
005918d6  83c800                    OR EAX,0x0
005918d9  744f                      JZ 0x0059192a
005918db  e8b00f0800                CALL 0x00612890
005918e0  84c0                      TEST AL,AL
005918e2  7446                      JZ 0x0059192a
005918e4  8b8110040000              MOV EAX,dword ptr [ECX + 0x410]
005918ea  8b8d08ffffff              MOV ECX,dword ptr [EBP + 0xffffff08]
005918f0  3b81400f0000              CMP EAX,dword ptr [ECX + 0xf40]
005918f6  750f                      JNZ 0x00591907
005918f8  3bde                      CMP EBX,ESI
005918fa  740f                      JZ 0x0059190b
005918fc  8913                      MOV dword ptr [EBX],EDX
005918fe  83c304                    ADD EBX,0x4
00591901  899ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],EBX
00591907  8bc1                      MOV EAX,ECX
00591909  eb25                      JMP 0x00591930
0059190b  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
00591911  50                        PUSH EAX
00591912  53                        PUSH EBX
00591913  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
00591919  e802b0e9ff                CALL 0x0042c920
0059191e  8bb5e0feffff              MOV ESI,dword ptr [EBP + 0xfffffee0]
00591924  8b9ddcfeffff              MOV EBX,dword ptr [EBP + 0xfffffedc]
0059192a  8b8508ffffff              MOV EAX,dword ptr [EBP + 0xffffff08]
00591930  8b8df0feffff              MOV ECX,dword ptr [EBP + 0xfffffef0]
00591936  47                        INC EDI
00591937  3bbdf8feffff              CMP EDI,dword ptr [EBP + 0xfffffef8]
0059193d  0f826dffffff              JC 0x005918b0
00591943  8bbde8feffff              MOV EDI,dword ptr [EBP + 0xfffffee8]
00591949  89b510ffffff              MOV dword ptr [EBP + 0xffffff10],ESI
0059194f  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
00591955  89b514ffffff              MOV dword ptr [EBP + 0xffffff14],ESI
0059195b  3bf3                      CMP ESI,EBX
0059195d  0f846d020000              JZ 0x00591bd0
00591963  f30f100da4a7ba00          MOVSS XMM1,dword ptr [0x00baa7a4]
0059196b  0f57d2                    XORPS XMM2,XMM2
0059196e  8bcf                      MOV ECX,EDI
00591970  e8ebad1100                CALL 0x006ac760
00591975  85c0                      TEST EAX,EAX
00591977  7454                      JZ 0x005919cd
00591979  0f1f8000000000            NOP dword ptr [EAX]
00591980  8b06                      MOV EAX,dword ptr [ESI]
00591982  8d55c4                    LEA EDX,[EBP + -0x3c]
00591985  0f280540c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac540]
0059198c  6a01                      PUSH 0x1
0059198e  6a01                      PUSH 0x1
00591990  8b88c4030000              MOV ECX,dword ptr [EAX + 0x3c4]
00591996  6a00                      PUSH 0x0
00591998  6a06                      PUSH 0x6
0059199a  52                        PUSH EDX
0059199b  8b01                      MOV EAX,dword ptr [ECX]
0059199d  0f1145c4                  MOVUPS xmmword ptr [EBP + -0x3c],XMM0
005919a1  c745e43333333f            MOV dword ptr [EBP + -0x1c],0x3f333333
005919a8  0f57c0                    XORPS XMM0,XMM0
005919ab  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
005919b2  0f1145d4                  MOVUPS xmmword ptr [EBP + -0x2c],XMM0
005919b6  c745ec00000000            MOV dword ptr [EBP + -0x14],0x0
005919bd  ff503c                    CALL dword ptr [EAX + 0x3c]
005919c0  83c604                    ADD ESI,0x4
005919c3  3bf3                      CMP ESI,EBX
005919c5  75b9                      JNZ 0x00591980
005919c7  8bb514ffffff              MOV ESI,dword ptr [EBP + 0xffffff14]
005919cd  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
005919d5  0f2f0554a8ba00            COMISS XMM0,dword ptr [0x00baa854]
005919dc  7650                      JBE 0x00591a2e
005919de  6690                      NOP
005919e0  8b06                      MOV EAX,dword ptr [ESI]
005919e2  8b80c4030000              MOV EAX,dword ptr [EAX + 0x3c4]
005919e8  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
005919ee  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
005919f4  51                        PUSH ECX
005919f5  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
005919fb  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
00591a01  898dfcfeffff              MOV dword ptr [EBP + 0xfffffefc],ECX
00591a07  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
00591a0d  c7042400000040            MOV dword ptr [ESP],0x40000000
00591a14  50                        PUSH EAX
00591a15  e846192800                CALL 0x00813360
00591a1a  84c0                      TEST AL,AL
00591a1c  7409                      JZ 0x00591a27
00591a1e  83c604                    ADD ESI,0x4
00591a21  3bf3                      CMP ESI,EBX
00591a23  75bb                      JNZ 0x005919e0
00591a25  eb07                      JMP 0x00591a2e
00591a27  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
00591a2e  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00591a35  7409                      JZ 0x00591a40
00591a37  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
00591a3e  eb0d                      JMP 0x00591a4d
00591a40  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00591a47  0f84e8010000              JZ 0x00591c35
00591a4d  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
00591a53  e8d8d4eaff                CALL 0x0043ef30
00591a58  f30f101de8a7ba00          MOVSS XMM3,dword ptr [0x00baa7e8]
00591a60  8db73c030000              LEA ESI,[EDI + 0x33c]
00591a66  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
00591a6c  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00591a72  83ec0c                    SUB ESP,0xc
00591a75  c744240800000041          MOV dword ptr [ESP + 0x8],0x41000000
00591a7d  c744240400000041          MOV dword ptr [ESP + 0x4],0x41000000
00591a85  c7042400000041            MOV dword ptr [ESP],0x41000000
00591a8c  56                        PUSH ESI
00591a8d  50                        PUSH EAX
00591a8e  e8bd142800                CALL 0x00812f50
00591a93  8bc3                      MOV EAX,EBX
00591a95  c785fcfeffff00000041      MOV dword ptr [EBP + 0xfffffefc],0x41000000
00591a9f  2b8514ffffff              SUB EAX,dword ptr [EBP + 0xffffff14]
00591aa5  8bcf                      MOV ECX,EDI
00591aa7  c1f802                    SAR EAX,0x2
00591aaa  660f6ec0                  MOVD XMM0,EAX
00591aae  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00591ab2  c1e81f                    SHR EAX,0x1f
00591ab5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00591abe  660f5ac0                  CVTPD2PS XMM0,XMM0
00591ac2  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
00591aca  f30f5f05a4a7ba00          MAXSS XMM0,dword ptr [0x00baa7a4]
00591ad2  f30f5d0568a8ba00          MINSS XMM0,dword ptr [0x00baa868]
00591ada  f30f2cc0                  CVTTSS2SI EAX,XMM0
00591ade  660f6ec0                  MOVD XMM0,EAX
00591ae2  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00591ae8  50                        PUSH EAX
00591ae9  0f5bc0                    CVTDQ2PS XMM0,XMM0
00591aec  6a09                      PUSH 0x9
00591aee  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
00591af4  50                        PUSH EAX
00591af5  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00591afb  50                        PUSH EAX
00591afc  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
00591b04  e8d7971300                CALL 0x006cb2e0
00591b09  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
00591b11  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00591b17  f30f1106                  MOVSS dword ptr [ESI],XMM0
00591b1b  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
00591b23  6a05                      PUSH 0x5
00591b25  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
00591b2a  e8411b1700                CALL 0x00703670
00591b2f  8bb514ffffff              MOV ESI,dword ptr [EBP + 0xffffff14]
00591b35  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
00591b40  8b0e                      MOV ECX,dword ptr [ESI]
00591b42  8d55c8                    LEA EDX,[EBP + -0x38]
00591b45  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00591b4d  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00591b55  6a1e                      PUSH 0x1e
00591b57  8b01                      MOV EAX,dword ptr [ECX]
00591b59  52                        PUSH EDX
00591b5a  6a00                      PUSH 0x0
00591b5c  6a00                      PUSH 0x0
00591b5e  51                        PUSH ECX
00591b5f  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
00591b66  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00591b6d  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00591b74  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
00591b7b  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
00591b80  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
00591b85  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
00591b8a  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00591b8f  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00591b96  c745ec00000000            MOV dword ptr [EBP + -0x14],0x0
00591b9d  c7042400007a44            MOV dword ptr [ESP],0x447a0000
00591ba4  ff5020                    CALL dword ptr [EAX + 0x20]
00591ba7  83c604                    ADD ESI,0x4
00591baa  3bf3                      CMP ESI,EBX
00591bac  7592                      JNZ 0x00591b40
00591bae  8b8508ffffff              MOV EAX,dword ptr [EBP + 0xffffff08]
00591bb4  8b88400f0000              MOV ECX,dword ptr [EAX + 0xf40]
00591bba  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
00591bc0  81a168010000ffffbfff      AND dword ptr [ECX + 0x168],0xffbfffff
00591bca  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
00591bd0  8b07                      MOV EAX,dword ptr [EDI]
00591bd2  8bcf                      MOV ECX,EDI
00591bd4  ff5028                    CALL dword ptr [EAX + 0x28]
00591bd7  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00591bdb  80bdecfeffff00            CMP byte ptr [EBP + 0xfffffeec],0x0
00591be2  7518                      JNZ 0x00591bfc
00591be4  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
00591be8  b101                      MOV CL,0x1
00591bea  8b95f0feffff              MOV EDX,dword ptr [EBP + 0xfffffef0]
00591bf0  6a00                      PUSH 0x0
00591bf2  6a00                      PUSH 0x0
00591bf4  e8b72c4d00                CALL 0x00a648b0
00591bf9  83c408                    ADD ESP,0x8
00591bfc  8b9514ffffff              MOV EDX,dword ptr [EBP + 0xffffff14]
00591c02  85d2                      TEST EDX,EDX
00591c04  0f8496000000              JZ 0x00591ca0
00591c0a  8b8d10ffffff              MOV ECX,dword ptr [EBP + 0xffffff10]
00591c10  8bc2                      MOV EAX,EDX
00591c12  2bca                      SUB ECX,EDX
00591c14  83e1fc                    AND ECX,0xfffffffc
00591c17  81f900100000              CMP ECX,0x1000
00591c1d  7270                      JC 0x00591c8f
00591c1f  8b52fc                    MOV EDX,dword ptr [EDX + -0x4]
00591c22  83c123                    ADD ECX,0x23
00591c25  2bc2                      SUB EAX,EDX
00591c27  83c0fc                    ADD EAX,-0x4
00591c2a  83f81f                    CMP EAX,0x1f
00591c2d  7660                      JBE 0x00591c8f
00591c2f  ff159488b100              CALL dword ptr [0x00b18894]
00591c35  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00591c39  80bdecfeffff00            CMP byte ptr [EBP + 0xfffffeec],0x0
00591c40  7518                      JNZ 0x00591c5a
00591c42  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
00591c46  b101                      MOV CL,0x1
00591c48  8b95f0feffff              MOV EDX,dword ptr [EBP + 0xfffffef0]
00591c4e  6a00                      PUSH 0x0
00591c50  6a00                      PUSH 0x0
00591c52  e8592c4d00                CALL 0x00a648b0
00591c57  83c408                    ADD ESP,0x8
00591c5a  8b9514ffffff              MOV EDX,dword ptr [EBP + 0xffffff14]
00591c60  85d2                      TEST EDX,EDX
00591c62  743c                      JZ 0x00591ca0
00591c64  8b8d10ffffff              MOV ECX,dword ptr [EBP + 0xffffff10]
00591c6a  8bc2                      MOV EAX,EDX
00591c6c  2bca                      SUB ECX,EDX
00591c6e  83e1fc                    AND ECX,0xfffffffc
00591c71  81f900100000              CMP ECX,0x1000
00591c77  7216                      JC 0x00591c8f
00591c79  8b52fc                    MOV EDX,dword ptr [EDX + -0x4]
00591c7c  83c123                    ADD ECX,0x23
00591c7f  2bc2                      SUB EAX,EDX
00591c81  83c0fc                    ADD EAX,-0x4
00591c84  83f81f                    CMP EAX,0x1f
00591c87  7606                      JBE 0x00591c8f
00591c89  ff159488b100              CALL dword ptr [0x00b18894]
00591c8f  51                        PUSH ECX
00591c90  52                        PUSH EDX
00591c91  e8c6d45500                CALL 0x00aef15c
00591c96  83c408                    ADD ESP,0x8
00591c99  eb05                      JMP 0x00591ca0
00591c9b  8b07                      MOV EAX,dword ptr [EDI]
00591c9d  ff5028                    CALL dword ptr [EAX + 0x28]
00591ca0  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00591ca3  64890d00000000            MOV dword ptr FS:[0x0],ECX
00591caa  59                        POP ECX
00591cab  5f                        POP EDI
00591cac  5e                        POP ESI
00591cad  5b                        POP EBX
00591cae  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
00591cb1  33cd                      XOR ECX,EBP
00591cb3  e873d45500                CALL 0x00aef12b
00591cb8  8be5                      MOV ESP,EBP
00591cba  5d                        POP EBP
00591cbb  c3                        RET
