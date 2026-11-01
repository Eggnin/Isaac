; J460 NPC AI 0x005b0891 HELPER_FuseWrite_005b0891
; types=4
; identities=4.*
; entry=005af800
005af800  53                        PUSH EBX
005af801  8bdc                      MOV EBX,ESP
005af803  83ec08                    SUB ESP,0x8
005af806  83e4f8                    AND ESP,0xfffffff8
005af809  83c404                    ADD ESP,0x4
005af80c  55                        PUSH EBP
005af80d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005af810  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005af814  8bec                      MOV EBP,ESP
005af816  81ec00010000              SUB ESP,0x100
005af81c  a1b493bf00                MOV EAX,[0x00bf93b4]
005af821  33c5                      XOR EAX,EBP
005af823  8945fc                    MOV dword ptr [EBP + -0x4],EAX
005af826  a17816c700                MOV EAX,[0x00c71678]
005af82b  56                        PUSH ESI
005af82c  57                        PUSH EDI
005af82d  8bf9                      MOV EDI,ECX
005af82f  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005af835  89b518ffffff              MOV dword ptr [EBP + 0xffffff18],ESI
005af83b  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
005af843  8b5730                    MOV EDX,dword ptr [EDI + 0x30]
005af846  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
005af84e  2bc8                      SUB ECX,EAX
005af850  898d20ffffff              MOV dword ptr [EBP + 0xffffff20],ECX
005af856  85d2                      TEST EDX,EDX
005af858  0f84ab000000              JZ 0x005af909
005af85e  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
005af865  756c                      JNZ 0x005af8d3
005af867  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
005af86f  8d4dd4                    LEA ECX,[EBP + -0x2c]
005af872  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005af87a  8b07                      MOV EAX,dword ptr [EDI]
005af87c  51                        PUSH ECX
005af87d  8bcf                      MOV ECX,EDI
005af87f  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
005af886  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
005af88d  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
005af894  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
005af89b  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
005af8a0  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
005af8a5  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
005af8aa  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
005af8af  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
005af8b6  c745f800000000            MOV dword ptr [EBP + -0x8],0x0
005af8bd  ff5024                    CALL dword ptr [EAX + 0x24]
005af8c0  5f                        POP EDI
005af8c1  5e                        POP ESI
005af8c2  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005af8c5  33cd                      XOR ECX,EBP
005af8c7  e85ff85300                CALL 0x00aef12b
005af8cc  8be5                      MOV ESP,EBP
005af8ce  5d                        POP EBP
005af8cf  8be3                      MOV ESP,EBX
005af8d1  5b                        POP EBX
005af8d2  c3                        RET
005af8d3  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
005af8da  742d                      JZ 0x005af909
005af8dc  8bcf                      MOV ECX,EDI
005af8de  e8adebffff                CALL 0x005ae490
005af8e3  8bcf                      MOV ECX,EDI
005af8e5  e856efffff                CALL 0x005ae840
005af8ea  8b87b40b0000              MOV EAX,dword ptr [EDI + 0xbb4]
005af8f0  898750030000              MOV dword ptr [EDI + 0x350],EAX
005af8f6  5f                        POP EDI
005af8f7  5e                        POP ESI
005af8f8  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005af8fb  33cd                      XOR ECX,EBP
005af8fd  e829f85300                CALL 0x00aef12b
005af902  8be5                      MOV ESP,EBP
005af904  5d                        POP EBP
005af905  8be3                      MOV ESP,EBX
005af907  5b                        POP EBX
005af908  c3                        RET
005af909  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005af90f  83f810                    CMP EAX,0x10
005af912  0f87b6180000              JA 0x005b11ce
005af918  0fb68078145b00            MOVZX EAX,byte ptr [EAX + 0x5b1478]
005af91f  ff248554145b00            JMP dword ptr [EAX*0x4 + 0x5b1454]
005af926  33c9                      XOR ECX,ECX
005af928  85d2                      TEST EDX,EDX
005af92a  0f85e7000000              JNZ 0x005afa17
005af930  89bd20ffffff              MOV dword ptr [EBP + 0xffffff20],EDI
005af936  33f6                      XOR ESI,ESI
005af938  e823f61300                CALL 0x006eef60
005af93d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005af943  46                        INC ESI
005af944  50                        PUSH EAX
005af945  56                        PUSH ESI
005af946  57                        PUSH EDI
005af947  6840b6c700                PUSH 0xc7b640
005af94c  8d873c030000              LEA EAX,[EDI + 0x33c]
005af952  89b514ffffff              MOV dword ptr [EBP + 0xffffff14],ESI
005af958  50                        PUSH EAX
005af959  ff772c                    PUSH dword ptr [EDI + 0x2c]
005af95c  ff7728                    PUSH dword ptr [EDI + 0x28]
005af95f  e8bc91e7ff                CALL 0x00428b20
005af964  8bf0                      MOV ESI,EAX
005af966  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
005af96c  8d8ebc030000              LEA ECX,[ESI + 0x3bc]
005af972  85c0                      TEST EAX,EAX
005af974  741e                      JZ 0x005af994
005af976  898d24ffffff              MOV dword ptr [EBP + 0xffffff24],ECX
005af97c  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
005af982  51                        PUSH ECX
005af983  8d88cc030000              LEA ECX,[EAX + 0x3cc]
005af989  e882f8f1ff                CALL 0x004cf210
005af98e  8d8ebc030000              LEA ECX,[ESI + 0x3bc]
005af994  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
005af99a  8901                      MOV dword ptr [ECX],EAX
005af99c  85c0                      TEST EAX,EAX
005af99e  740e                      JZ 0x005af9ae
005af9a0  51                        PUSH ECX
005af9a1  8bc8                      MOV ECX,EAX
005af9a3  e848e3f1ff                CALL 0x004cdcf0
005af9a8  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
005af9ae  8b88c0030000              MOV ECX,dword ptr [EAX + 0x3c0]
005af9b4  05c0030000                ADD EAX,0x3c0
005af9b9  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
005af9bf  85c9                      TEST ECX,ECX
005af9c1  741e                      JZ 0x005af9e1
005af9c3  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
005af9c9  81c1cc030000              ADD ECX,0x3cc
005af9cf  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
005af9d5  50                        PUSH EAX
005af9d6  e835f8f1ff                CALL 0x004cf210
005af9db  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
005af9e1  50                        PUSH EAX
005af9e2  8bce                      MOV ECX,ESI
005af9e4  8930                      MOV dword ptr [EAX],ESI
005af9e6  e805e3f1ff                CALL 0x004cdcf0
005af9eb  8b06                      MOV EAX,dword ptr [ESI]
005af9ed  8bce                      MOV ECX,ESI
005af9ef  89b520ffffff              MOV dword ptr [EBP + 0xffffff20],ESI
005af9f5  ff500c                    CALL dword ptr [EAX + 0xc]
005af9f8  8bb514ffffff              MOV ESI,dword ptr [EBP + 0xffffff14]
005af9fe  83fe06                    CMP ESI,0x6
005afa01  0f8c31ffffff              JL 0x005af938
005afa07  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
005afa0d  c787100400001e000000      MOV dword ptr [EDI + 0x410],0x1e
005afa17  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
005afa1e  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
005afa24  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
005afa2a  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
005afa34  c787b40b000000006041      MOV dword ptr [EDI + 0xbb4],0x41600000
005afa3e  83f903                    CMP ECX,0x3
005afa41  7454                      JZ 0x005afa97
005afa43  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
005afa4a  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005afa54  752b                      JNZ 0x005afa81
005afa56  8bcf                      MOV ECX,EDI
005afa58  c787100400003c000000      MOV dword ptr [EDI + 0x410],0x3c
005afa62  e829eaffff                CALL 0x005ae490
005afa67  8bcf                      MOV ECX,EDI
005afa69  e8d2edffff                CALL 0x005ae840
005afa6e  5f                        POP EDI
005afa6f  5e                        POP ESI
005afa70  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005afa73  33cd                      XOR ECX,EBP
005afa75  e8b1f65300                CALL 0x00aef12b
005afa7a  8be5                      MOV ESP,EBP
005afa7c  5d                        POP EBP
005afa7d  8be3                      MOV ESP,EBX
005afa7f  5b                        POP EBX
005afa80  c3                        RET
005afa81  e8daf41300                CALL 0x006eef60
005afa86  33d2                      XOR EDX,EDX
005afa88  b91e000000                MOV ECX,0x1e
005afa8d  f7f1                      DIV ECX
005afa8f  03d1                      ADD EDX,ECX
005afa91  899710040000              MOV dword ptr [EDI + 0x410],EDX
005afa97  8bcf                      MOV ECX,EDI
005afa99  e8f2e9ffff                CALL 0x005ae490
005afa9e  8bcf                      MOV ECX,EDI
005afaa0  e89bedffff                CALL 0x005ae840
005afaa5  5f                        POP EDI
005afaa6  5e                        POP ESI
005afaa7  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005afaaa  33cd                      XOR ECX,EBP
005afaac  e87af65300                CALL 0x00aef12b
005afab1  8be5                      MOV ESP,EBP
005afab3  5d                        POP EBP
005afab4  8be3                      MOV ESP,EBX
005afab6  5b                        POP EBX
005afab7  c3                        RET
005afab8  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005afac0  8bcf                      MOV ECX,EDI
005afac2  f30f590528a4ba00          MULSS XMM0,dword ptr [0x00baa428]
005afaca  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005afad2  e8b9e9ffff                CALL 0x005ae490
005afad7  8bcf                      MOV ECX,EDI
005afad9  e842f4ffff                CALL 0x005aef20
005afade  8bcf                      MOV ECX,EDI
005afae0  e85bedffff                CALL 0x005ae840
005afae5  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005afaeb  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005afaf5  85c0                      TEST EAX,EAX
005afaf7  0f8ed1160000              JLE 0x005b11ce
005afafd  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
005afb04  0f85c4160000              JNZ 0x005b11ce
005afb0a  2b8520ffffff              SUB EAX,dword ptr [EBP + 0xffffff20]
005afb10  898710040000              MOV dword ptr [EDI + 0x410],EAX
005afb16  85c0                      TEST EAX,EAX
005afb18  0f8fb0160000              JG 0x005b11ce
005afb1e  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
005afb25  0f85df040000              JNZ 0x005b000a
005afb2b  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005afb31  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
005afb37  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
005afb41  c78520ffffff34000000      MOV dword ptr [EBP + 0xffffff20],0x34
005afb4b  e8306c3a00                CALL 0x00956780
005afb50  83ec08                    SUB ESP,0x8
005afb53  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005afb5b  c704240000803f            MOV dword ptr [ESP],0x3f800000
005afb62  6a00                      PUSH 0x0
005afb64  6a02                      PUSH 0x2
005afb66  51                        PUSH ECX
005afb67  c704240000803f            MOV dword ptr [ESP],0x3f800000
005afb6e  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005afb74  ffb520ffffff              PUSH dword ptr [EBP + 0xffffff20]
005afb7a  e8b1e03700                CALL 0x0092dc30
005afb7f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005afb85  6a0f                      PUSH 0xf
005afb87  e8e43a1500                CALL 0x00703670
005afb8c  8bb518ffffff              MOV ESI,dword ptr [EBP + 0xffffff18]
005afb92  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
005afb98  50                        PUSH EAX
005afb99  8bce                      MOV ECX,ESI
005afb9b  c787100400001e000000      MOV dword ptr [EDI + 0x410],0x1e
005afba5  e856312600                CALL 0x00812d00
005afbaa  8bcf                      MOV ECX,EDI
005afbac  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005afbb0  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
005afbb8  e883ec1000                CALL 0x006be840
005afbbd  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005afbc5  0f2f8514ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff14]
005afbcc  760c                      JBE 0x005afbda
005afbce  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
005afbd1  48                        DEC EAX
005afbd2  898518ffffff              MOV dword ptr [EBP + 0xffffff18],EAX
005afbd8  eb0a                      JMP 0x005afbe4
005afbda  c78518ffffff00000000      MOV dword ptr [EBP + 0xffffff18],0x0
005afbe4  8bcf                      MOV ECX,EDI
005afbe6  e855ec1000                CALL 0x006be840
005afbeb  83ec08                    SUB ESP,0x8
005afbee  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
005afbf6  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
005afbfe  f30f5e0504a9ba00          DIVSS XMM0,dword ptr [0x00baa904]
005afc06  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
005afc0e  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
005afc16  d98524ffffff              FLD dword ptr [EBP + 0xffffff24]
005afc1c  dd1c24                    FSTP qword ptr [ESP]
005afc1f  e8f30c5400                CALL 0x00af0917
005afc24  8b5610                    MOV EDX,dword ptr [ESI + 0x10]
005afc27  83c408                    ADD ESP,0x8
005afc2a  d99d24ffffff              FSTP dword ptr [EBP + 0xffffff24]
005afc30  d98524ffffff              FLD dword ptr [EBP + 0xffffff24]
005afc36  b801000000                MOV EAX,0x1
005afc3b  d99d24ffffff              FSTP dword ptr [EBP + 0xffffff24]
005afc41  f30f2c8d24ffffff          CVTTSS2SI ECX,dword ptr [EBP + 0xffffff24]
005afc49  83f901                    CMP ECX,0x1
005afc4c  0f4cc8                    CMOVL ECX,EAX
005afc4f  83c2fe                    ADD EDX,-0x2
005afc52  3bca                      CMP ECX,EDX
005afc54  899524ffffff              MOV dword ptr [EBP + 0xffffff24],EDX
005afc5a  8bc2                      MOV EAX,EDX
005afc5c  0f4ec1                    CMOVLE EAX,ECX
005afc5f  8bce                      MOV ECX,ESI
005afc61  50                        PUSH EAX
005afc62  ffb518ffffff              PUSH dword ptr [EBP + 0xffffff18]
005afc68  898520ffffff              MOV dword ptr [EBP + 0xffffff20],EAX
005afc6e  e8ad372600                CALL 0x00813420
005afc73  8bd0                      MOV EDX,EAX
005afc75  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
005afc7b  8bc8                      MOV ECX,EAX
005afc7d  85d2                      TEST EDX,EDX
005afc7f  742a                      JZ 0x005afcab
005afc81  837a0410                  CMP dword ptr [EDX + 0x4],0x10
005afc85  7524                      JNZ 0x005afcab
005afc87  83f801                    CMP EAX,0x1
005afc8a  7e1c                      JLE 0x005afca8
005afc8c  3b8524ffffff              CMP EAX,dword ptr [EBP + 0xffffff24]
005afc92  740f                      JZ 0x005afca3
005afc94  e8c7f21300                CALL 0x006eef60
005afc99  a801                      TEST AL,0x1
005afc9b  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
005afca1  7505                      JNZ 0x005afca8
005afca3  8d48ff                    LEA ECX,[EAX + -0x1]
005afca6  eb03                      JMP 0x005afcab
005afca8  8d4801                    LEA ECX,[EAX + 0x1]
005afcab  51                        PUSH ECX
005afcac  ffb518ffffff              PUSH dword ptr [EBP + 0xffffff18]
005afcb2  8bce                      MOV ECX,ESI
005afcb4  e8a7312600                CALL 0x00812e60
005afcb9  99                        CDQ
005afcba  f77e0c                    IDIV dword ptr [ESI + 0xc]
005afcbd  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
005afcc5  660f6eca                  MOVD XMM1,EDX
005afcc9  0f5bc9                    CVTDQ2PS XMM1,XMM1
005afccc  660f6ec0                  MOVD XMM0,EAX
005afcd0  0f5bc0                    CVTDQ2PS XMM0,XMM0
005afcd3  f30f59ca                  MULSS XMM1,XMM2
005afcd7  f30f59c2                  MULSS XMM0,XMM2
005afcdb  f30f58ca                  ADDSS XMM1,XMM2
005afcdf  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
005afce7  0f2f8d14ffffff            COMISS XMM1,dword ptr [EBP + 0xffffff14]
005afcee  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
005afcf6  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005afcfe  760a                      JBE 0x005afd0a
005afd00  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
005afd08  eb08                      JMP 0x005afd12
005afd0a  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005afd12  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
005afd1a  e841f21300                CALL 0x006eef60
005afd1f  83e003                    AND EAX,0x3
005afd22  83c003                    ADD EAX,0x3
005afd25  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
005afd2b  0f8491020000              JZ 0x005affc2
005afd31  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
005afd39  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
005afd40  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
005afd48  e813f21300                CALL 0x006eef60
005afd4d  8bf0                      MOV ESI,EAX
005afd4f  e80cf21300                CALL 0x006eef60
005afd54  660f6ec0                  MOVD XMM0,EAX
005afd58  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005afd5c  c1e81f                    SHR EAX,0x1f
005afd5f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005afd68  660f5ac0                  CVTPD2PS XMM0,XMM0
005afd6c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005afd74  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
005afd7c  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
005afd84  e8d7f11300                CALL 0x006eef60
005afd89  f30f109d14ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff14]
005afd91  0f57e4                    XORPS XMM4,XMM4
005afd94  f30f108d20ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff20]
005afd9c  f30f59cb                  MULSS XMM1,XMM3
005afda0  660f6ec0                  MOVD XMM0,EAX
005afda4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005afda8  c1e81f                    SHR EAX,0x1f
005afdab  f30f59dc                  MULSS XMM3,XMM4
005afdaf  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005afdb8  660f5ad0                  CVTPD2PS XMM2,XMM0
005afdbc  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
005afdc4  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
005afdcc  f30f5c15bca6ba00          SUBSS XMM2,dword ptr [0x00baa6bc]
005afdd4  0f28c2                    MOVAPS XMM0,XMM2
005afdd7  f30f59c4                  MULSS XMM0,XMM4
005afddb  f30f58c8                  ADDSS XMM1,XMM0
005afddf  f30f10851cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff1c]
005afde7  f30f59c2                  MULSS XMM0,XMM2
005afdeb  f30f58c3                  ADDSS XMM0,XMM3
005afdef  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
005afdf7  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
005afdff  e85cf11300                CALL 0x006eef60
005afe04  660f6ec0                  MOVD XMM0,EAX
005afe08  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005afe0c  c1e81f                    SHR EAX,0x1f
005afe0f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005afe18  660f5ac0                  CVTPD2PS XMM0,XMM0
005afe1c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005afe24  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005afe2c  f30f58c0                  ADDSS XMM0,XMM0
005afe30  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
005afe38  e823f11300                CALL 0x006eef60
005afe3d  660f6ec0                  MOVD XMM0,EAX
005afe41  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005afe45  c1e81f                    SHR EAX,0x1f
005afe48  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005afe51  660f5ac0                  CVTPD2PS XMM0,XMM0
005afe55  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005afe5d  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
005afe65  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
005afe6d  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
005afe75  e8c6d6e6ff                CALL 0x0041d540
005afe7a  f30f598518ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff18]
005afe82  f30f588734030000          ADDSS XMM0,dword ptr [EDI + 0x334]
005afe8a  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
005afe92  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
005afe9a  e881d6e6ff                CALL 0x0041d520
005afe9f  f30f598518ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff18]
005afea7  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
005afead  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005afeb3  6a00                      PUSH 0x0
005afeb5  68acd5c500                PUSH 0xc5d5ac
005afeba  f30f588738030000          ADDSS XMM0,dword ptr [EDI + 0x338]
005afec2  68dcd5c500                PUSH 0xc5d5dc
005afec7  6a00                      PUSH 0x0
005afec9  56                        PUSH ESI
005afeca  6a00                      PUSH 0x0
005afecc  6a00                      PUSH 0x0
005afece  50                        PUSH EAX
005afecf  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
005afed5  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
005afedd  50                        PUSH EAX
005afede  6a3b                      PUSH 0x3b
005afee0  68e8030000                PUSH 0x3e8
005afee5  e8368ce7ff                CALL 0x00428b20
005afeea  50                        PUSH EAX
005afeeb  e8c1095400                CALL 0x00af08b1
005afef0  83c414                    ADD ESP,0x14
005afef3  8bf0                      MOV ESI,EAX
005afef5  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005afefd  0f57d2                    XORPS XMM2,XMM2
005aff00  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
005aff08  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
005aff10  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
005aff18  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
005aff20  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
005aff28  f30f598d1cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff1c]
005aff30  f30f59c2                  MULSS XMM0,XMM2
005aff34  f30f58c8                  ADDSS XMM1,XMM0
005aff38  0f2fd1                    COMISS XMM2,XMM1
005aff3b  7610                      JBE 0x005aff4d
005aff3d  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
005aff45  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
005aff4d  e80ef01300                CALL 0x006eef60
005aff52  660f6ec0                  MOVD XMM0,EAX
005aff56  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005aff5a  c1e81f                    SHR EAX,0x1f
005aff5d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005aff66  660f5ac0                  CVTPD2PS XMM0,XMM0
005aff6a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005aff72  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
005aff7a  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
005aff82  f30f598514ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff14]
005aff8a  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
005aff92  e8c9ef1300                CALL 0x006eef60
005aff97  33d2                      XOR EDX,EDX
005aff99  b90f000000                MOV ECX,0xf
005aff9e  f7f1                      DIV ECX
005affa0  8b06                      MOV EAX,dword ptr [ESI]
005affa2  03d1                      ADD EDX,ECX
005affa4  8bce                      MOV ECX,ESI
005affa6  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
005affac  899660040000              MOV dword ptr [ESI + 0x460],EDX
005affb2  ff500c                    CALL dword ptr [EAX + 0xc]
005affb5  83ad24ffffff01            SUB dword ptr [EBP + 0xffffff24],0x1
005affbc  0f8586fdffff              JNZ 0x005afd48
005affc2  8d4dd0                    LEA ECX,[EBP + -0x30]
005affc5  e8a671e5ff                CALL 0x00407170
005affca  8bf0                      MOV ESI,EAX
005affcc  e88fef1300                CALL 0x006eef60
005affd1  b905000000                MOV ECX,0x5
005affd6  33d2                      XOR EDX,EDX
005affd8  f7f1                      DIV ECX
005affda  6a00                      PUSH 0x0
005affdc  51                        PUSH ECX
005affdd  c704240050c347            MOV dword ptr [ESP],0x47c35000
005affe4  56                        PUSH ESI
005affe5  51                        PUSH ECX
005affe6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005affec  8d4206                    LEA EAX,[EDX + 0x6]
005affef  c7042400000041            MOV dword ptr [ESP],0x41000000
005afff6  50                        PUSH EAX
005afff7  6a04                      PUSH 0x4
005afff9  8d8734030000              LEA EAX,[EDI + 0x334]
005affff  50                        PUSH EAX
005b0000  e82b331500                CALL 0x00703330
005b0005  e9c4110000                JMP 0x005b11ce
005b000a  8bcf                      MOV ECX,EDI
005b000c  e81fe2ffff                CALL 0x005ae230
005b0011  e9b8110000                JMP 0x005b11ce
005b0016  8bcf                      MOV ECX,EDI
005b0018  e873e4ffff                CALL 0x005ae490
005b001d  8bcf                      MOV ECX,EDI
005b001f  e81ce8ffff                CALL 0x005ae840
005b0024  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005b002a  2b8520ffffff              SUB EAX,dword ptr [EBP + 0xffffff20]
005b0030  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005b003a  898710040000              MOV dword ptr [EDI + 0x410],EAX
005b0040  85c0                      TEST EAX,EAX
005b0042  0f8f86110000              JG 0x005b11ce
005b0048  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
005b004e  8d8f040c0000              LEA ECX,[EDI + 0xc04]
005b0054  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
005b005a  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
005b0060  898740030000              MOV dword ptr [EDI + 0x340],EAX
005b0066  c787b40b0000000060c1      MOV dword ptr [EDI + 0xbb4],0xc1600000
005b0070  c787b00b0000000080c0      MOV dword ptr [EDI + 0xbb0],0xc0800000
005b007a  e80193eeff                CALL 0x00499380
005b007f  8d8f180c0000              LEA ECX,[EDI + 0xc18]
005b0085  e8f692eeff                CALL 0x00499380
005b008a  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
005b0090  8bce                      MOV ECX,ESI
005b0092  50                        PUSH EAX
005b0093  e8682c2600                CALL 0x00812d00
005b0098  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
005b00a0  8bce                      MOV ECX,ESI
005b00a2  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
005b00aa  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005b00ae  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
005b00b4  50                        PUSH EAX
005b00b5  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
005b00bd  e83e2c2600                CALL 0x00812d00
005b00c2  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005b00c6  0f2f8524ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff24]
005b00cd  760a                      JBE 0x005b00d9
005b00cf  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
005b00d7  eb08                      JMP 0x005b00e1
005b00d9  f30f1005ecadba00          MOVSS XMM0,dword ptr [0x00baadec]
005b00e1  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005b00e9  c7876403000000000000      MOV dword ptr [EDI + 0x364],0x0
005b00f3  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
005b00f9  85f6                      TEST ESI,ESI
005b00fb  7453                      JZ 0x005b0150
005b00fd  0f1f00                    NOP dword ptr [EAX]
005b0100  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
005b0106  8d8e040c0000              LEA ECX,[ESI + 0xc04]
005b010c  89863c030000              MOV dword ptr [ESI + 0x33c],EAX
005b0112  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
005b0118  898640030000              MOV dword ptr [ESI + 0x340],EAX
005b011e  8b87b40b0000              MOV EAX,dword ptr [EDI + 0xbb4]
005b0124  8986b40b0000              MOV dword ptr [ESI + 0xbb4],EAX
005b012a  8b87b00b0000              MOV EAX,dword ptr [EDI + 0xbb0]
005b0130  8986b00b0000              MOV dword ptr [ESI + 0xbb0],EAX
005b0136  e84592eeff                CALL 0x00499380
005b013b  8d8e180c0000              LEA ECX,[ESI + 0xc18]
005b0141  e83a92eeff                CALL 0x00499380
005b0146  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
005b014c  85f6                      TEST ESI,ESI
005b014e  75b0                      JNZ 0x005b0100
005b0150  e80bee1300                CALL 0x006eef60
005b0155  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005b015b  8db73c030000              LEA ESI,[EDI + 0x33c]
005b0161  50                        PUSH EAX
005b0162  6a00                      PUSH 0x0
005b0164  6a00                      PUSH 0x0
005b0166  6840b6c700                PUSH 0xc7b640
005b016b  56                        PUSH ESI
005b016c  6889000000                PUSH 0x89
005b0171  68e8030000                PUSH 0x3e8
005b0176  e8a589e7ff                CALL 0x00428b20
005b017b  f30f10851cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff1c]
005b0183  0f2f8524ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff24]
005b018a  0f96c1                    SETBE CL
005b018d  888848010000              MOV byte ptr [EAX + 0x148],CL
005b0193  8b10                      MOV EDX,dword ptr [EAX]
005b0195  888d0bffffff              MOV byte ptr [EBP + 0xffffff0b],CL
005b019b  8bc8                      MOV ECX,EAX
005b019d  ff520c                    CALL dword ptr [EDX + 0xc]
005b01a0  e8bbed1300                CALL 0x006eef60
005b01a5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005b01ab  50                        PUSH EAX
005b01ac  6a01                      PUSH 0x1
005b01ae  6a00                      PUSH 0x0
005b01b0  6840b6c700                PUSH 0xc7b640
005b01b5  56                        PUSH ESI
005b01b6  6889000000                PUSH 0x89
005b01bb  68e8030000                PUSH 0x3e8
005b01c0  e85b89e7ff                CALL 0x00428b20
005b01c5  8a8d0bffffff              MOV CL,byte ptr [EBP + 0xffffff0b]
005b01cb  888848010000              MOV byte ptr [EAX + 0x148],CL
005b01d1  8bc8                      MOV ECX,EAX
005b01d3  8b10                      MOV EDX,dword ptr [EAX]
005b01d5  ff520c                    CALL dword ptr [EDX + 0xc]
005b01d8  e883ed1300                CALL 0x006eef60
005b01dd  33d2                      XOR EDX,EDX
005b01df  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
005b01e9  b903000000                MOV ECX,0x3
005b01ee  f7f1                      DIV ECX
005b01f0  8d4203                    LEA EAX,[EDX + 0x3]
005b01f3  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
005b01f9  85c0                      TEST EAX,EAX
005b01fb  0f8e66020000              JLE 0x005b0467
005b0201  e85aed1300                CALL 0x006eef60
005b0206  660f6ec0                  MOVD XMM0,EAX
005b020a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005b020e  c1e81f                    SHR EAX,0x1f
005b0211  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005b021a  660f5ac0                  CVTPD2PS XMM0,XMM0
005b021e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005b0226  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
005b022e  f30f5c05bca6ba00          SUBSS XMM0,dword ptr [0x00baa6bc]
005b0236  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
005b023e  e81ded1300                CALL 0x006eef60
005b0243  660f6ec0                  MOVD XMM0,EAX
005b0247  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005b024b  c1e81f                    SHR EAX,0x1f
005b024e  83bd20ffffff00            CMP dword ptr [EBP + 0xffffff20],0x0
005b0255  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005b025e  660f5ac8                  CVTPD2PS XMM1,XMM0
005b0262  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
005b026a  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005b0272  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
005b027a  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
005b0282  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
005b028a  7410                      JZ 0x005b029c
005b028c  f30f590d50adba00          MULSS XMM1,dword ptr [0x00baad50]
005b0294  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
005b029c  e8bfec1300                CALL 0x006eef60
005b02a1  8bf0                      MOV ESI,EAX
005b02a3  e8b8ec1300                CALL 0x006eef60
005b02a8  660f6ec0                  MOVD XMM0,EAX
005b02ac  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005b02b0  c1e81f                    SHR EAX,0x1f
005b02b3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005b02bc  660f5ac0                  CVTPD2PS XMM0,XMM0
005b02c0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005b02c8  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005b02d0  f30f58c0                  ADDSS XMM0,XMM0
005b02d4  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
005b02dc  e87fec1300                CALL 0x006eef60
005b02e1  660f6ec0                  MOVD XMM0,EAX
005b02e5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005b02e9  c1e81f                    SHR EAX,0x1f
005b02ec  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005b02f5  660f5ac0                  CVTPD2PS XMM0,XMM0
005b02f9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005b0301  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
005b0309  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
005b0311  e82ad2e6ff                CALL 0x0041d540
005b0316  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
005b031e  f30f59851cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff1c]
005b0326  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
005b032e  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
005b0336  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
005b033e  e8ddd1e6ff                CALL 0x0041d520
005b0343  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
005b034b  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
005b0351  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005b0357  56                        PUSH ESI
005b0358  6a00                      PUSH 0x0
005b035a  f30f59851cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff1c]
005b0362  6a00                      PUSH 0x0
005b0364  50                        PUSH EAX
005b0365  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
005b036b  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
005b0373  50                        PUSH EAX
005b0374  6a3b                      PUSH 0x3b
005b0376  68e8030000                PUSH 0x3e8
005b037b  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
005b0383  e89887e7ff                CALL 0x00428b20
005b0388  8bf0                      MOV ESI,EAX
005b038a  e8d1eb1300                CALL 0x006eef60
005b038f  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
005b0397  f30f109e40030000          MOVSS XMM3,dword ptr [ESI + 0x340]
005b039f  660f6ec0                  MOVD XMM0,EAX
005b03a3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005b03a7  c1e81f                    SHR EAX,0x1f
005b03aa  83bd20ffffff00            CMP dword ptr [EBP + 0xffffff20],0x0
005b03b1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005b03ba  660f5ad0                  CVTPD2PS XMM2,XMM0
005b03be  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
005b03c6  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
005b03ce  f30f581530a6ba00          ADDSS XMM2,dword ptr [0x00baa630]
005b03d6  f30f119674040000          MOVSS dword ptr [ESI + 0x474],XMM2
005b03de  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005b03e6  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
005b03ee  750a                      JNZ 0x005b03fa
005b03f0  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005b03f8  eb08                      JMP 0x005b0402
005b03fa  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
005b0402  f30f59c1                  MULSS XMM0,XMM1
005b0406  0f57c9                    XORPS XMM1,XMM1
005b0409  f30f59d9                  MULSS XMM3,XMM1
005b040d  f30f58c3                  ADDSS XMM0,XMM3
005b0411  0f2fc8                    COMISS XMM1,XMM0
005b0414  760f                      JBE 0x005b0425
005b0416  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
005b041d  f30f119674040000          MOVSS dword ptr [ESI + 0x474],XMM2
005b0425  e836eb1300                CALL 0x006eef60
005b042a  33d2                      XOR EDX,EDX
005b042c  b90f000000                MOV ECX,0xf
005b0431  f7f1                      DIV ECX
005b0433  8b06                      MOV EAX,dword ptr [ESI]
005b0435  03d1                      ADD EDX,ECX
005b0437  8bce                      MOV ECX,ESI
005b0439  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
005b043f  899660040000              MOV dword ptr [ESI + 0x460],EDX
005b0445  ff500c                    CALL dword ptr [EAX + 0xc]
005b0448  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
005b044e  40                        INC EAX
005b044f  898520ffffff              MOV dword ptr [EBP + 0xffffff20],EAX
005b0455  3b8514ffffff              CMP EAX,dword ptr [EBP + 0xffffff14]
005b045b  0f8ca0fdffff              JL 0x005b0201
005b0461  8db73c030000              LEA ESI,[EDI + 0x33c]
005b0467  c78524ffffff03000000      MOV dword ptr [EBP + 0xffffff24],0x3
005b0471  a17816c700                MOV EAX,[0x00c71678]
005b0476  6a00                      PUSH 0x0
005b0478  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005b047e  f30f108040720000          MOVSS XMM0,dword ptr [EAX + 0x7240]
005b0486  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005b048d  0f97c0                    SETA AL
005b0490  0fb6c0                    MOVZX EAX,AL
005b0493  50                        PUSH EAX
005b0494  6a01                      PUSH 0x1
005b0496  51                        PUSH ECX
005b0497  8b8d18ffffff              MOV ECX,dword ptr [EBP + 0xffffff18]
005b049d  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
005b04a3  c704240000a042            MOV dword ptr [ESP],0x42a00000
005b04aa  56                        PUSH ESI
005b04ab  50                        PUSH EAX
005b04ac  e86f302600                CALL 0x00813520
005b04b1  8bf0                      MOV ESI,EAX
005b04b3  e8a8ea1300                CALL 0x006eef60
005b04b8  660f6ec0                  MOVD XMM0,EAX
005b04bc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005b04c0  c1e81f                    SHR EAX,0x1f
005b04c3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005b04cc  660f5ac0                  CVTPD2PS XMM0,XMM0
005b04d0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005b04d8  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005b04e0  f30f58c0                  ADDSS XMM0,XMM0
005b04e4  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
005b04ec  e84fd0e6ff                CALL 0x0041d540
005b04f1  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
005b04f9  f30f5806                  ADDSS XMM0,dword ptr [ESI]
005b04fd  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
005b0505  f30f10851cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff1c]
005b050d  e80ed0e6ff                CALL 0x0041d520
005b0512  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
005b051a  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
005b0520  8bd7                      MOV EDX,EDI
005b0522  f30f1015b4adba00          MOVSS XMM2,dword ptr [0x00baadb4]
005b052a  6a00                      PUSH 0x0
005b052c  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
005b0531  8db73c030000              LEA ESI,[EDI + 0x33c]
005b0537  50                        PUSH EAX
005b0538  8bce                      MOV ECX,ESI
005b053a  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
005b0542  e879bffaff                CALL 0x0055c4c0
005b0547  83c408                    ADD ESP,0x8
005b054a  83ad24ffffff01            SUB dword ptr [EBP + 0xffffff24],0x1
005b0551  0f851affffff              JNZ 0x005b0471
005b0557  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005b055d  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
005b0563  c78524ffffff34000000      MOV dword ptr [EBP + 0xffffff24],0x34
005b056d  e80e623a00                CALL 0x00956780
005b0572  83ec08                    SUB ESP,0x8
005b0575  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005b057d  c704240000803f            MOV dword ptr [ESP],0x3f800000
005b0584  6a00                      PUSH 0x0
005b0586  6a02                      PUSH 0x2
005b0588  51                        PUSH ECX
005b0589  c704240000803f            MOV dword ptr [ESP],0x3f800000
005b0590  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005b0596  ffb524ffffff              PUSH dword ptr [EBP + 0xffffff24]
005b059c  e88fd63700                CALL 0x0092dc30
005b05a1  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005b05a7  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
005b05ad  c78524ffffffdb010000      MOV dword ptr [EBP + 0xffffff24],0x1db
005b05b7  e8c4613a00                CALL 0x00956780
005b05bc  83ec08                    SUB ESP,0x8
005b05bf  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005b05c7  c704240000803f            MOV dword ptr [ESP],0x3f800000
005b05ce  6a00                      PUSH 0x0
005b05d0  6a02                      PUSH 0x2
005b05d2  51                        PUSH ECX
005b05d3  c704240000803f            MOV dword ptr [ESP],0x3f800000
005b05da  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005b05e0  ffb524ffffff              PUSH dword ptr [EBP + 0xffffff24]
005b05e6  e845d63700                CALL 0x0092dc30
005b05eb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005b05f1  6a0f                      PUSH 0xf
005b05f3  e878301500                CALL 0x00703670
005b05f8  83bf640b000006            CMP dword ptr [EDI + 0xb64],0x6
005b05ff  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
005b0609  740a                      JZ 0x005b0615
005b060b  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
005b0615  8bcf                      MOV ECX,EDI
005b0617  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005b0621  c787c40b000002000000      MOV dword ptr [EDI + 0xbc4],0x2
005b062b  e810e2ffff                CALL 0x005ae840
005b0630  e9990b0000                JMP 0x005b11ce
005b0635  8bcf                      MOV ECX,EDI
005b0637  e854deffff                CALL 0x005ae490
005b063c  8bcf                      MOV ECX,EDI
005b063e  e8fde1ffff                CALL 0x005ae840
005b0643  f30f1097b40b0000          MOVSS XMM2,dword ptr [EDI + 0xbb4]
005b064b  0f57c9                    XORPS XMM1,XMM1
005b064e  0f2fd1                    COMISS XMM2,XMM1
005b0651  0f97c2                    SETA DL
005b0654  84d2                      TEST DL,DL
005b0656  7457                      JZ 0x005b06af
005b0658  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
005b0660  0f2fc1                    COMISS XMM0,XMM1
005b0663  764a                      JBE 0x005b06af
005b0665  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
005b066c  0f845c0b0000              JZ 0x005b11ce
005b0672  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
005b0679  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005b0683  750f                      JNZ 0x005b0694
005b0685  c787100400003c000000      MOV dword ptr [EDI + 0x410],0x3c
005b068f  e93a0b0000                JMP 0x005b11ce
005b0694  e8c7e81300                CALL 0x006eef60
005b0699  33d2                      XOR EDX,EDX
005b069b  b91e000000                MOV ECX,0x1e
005b06a0  f7f1                      DIV ECX
005b06a2  03d1                      ADD EDX,ECX
005b06a4  899710040000              MOV dword ptr [EDI + 0x410],EDX
005b06aa  e91f0b0000                JMP 0x005b11ce
005b06af  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005b06b5  83f80f                    CMP EAX,0xf
005b06b8  7e13                      JLE 0x005b06cd
005b06ba  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
005b06c1  750a                      JNZ 0x005b06cd
005b06c3  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
005b06cd  038520ffffff              ADD EAX,dword ptr [EBP + 0xffffff20]
005b06d3  898710040000              MOV dword ptr [EDI + 0x410],EAX
005b06d9  83f82d                    CMP EAX,0x2d
005b06dc  0f8eec0a0000              JLE 0x005b11ce
005b06e2  84d2                      TEST DL,DL
005b06e4  0f85e40a0000              JNZ 0x005b11ce
005b06ea  0f2e15b4adba00            UCOMISS XMM2,dword ptr [0x00baadb4]
005b06f1  9f                        LAHF
005b06f2  f6c444                    TEST AH,0x44
005b06f5  0f8ad30a0000              JP 0x005b11ce
005b06fb  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
005b0702  c7871004000096000000      MOV dword ptr [EDI + 0x410],0x96
005b070c  0f84bc0a0000              JZ 0x005b11ce
005b0712  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005b071c  e9ad0a0000                JMP 0x005b11ce
005b0721  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005b0729  8bcf                      MOV ECX,EDI
005b072b  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
005b0733  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005b073b  e850ddffff                CALL 0x005ae490
005b0740  8bcf                      MOV ECX,EDI
005b0742  e8f9e0ffff                CALL 0x005ae840
005b0747  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005b074d  85c0                      TEST EAX,EAX
005b074f  7e20                      JLE 0x005b0771
005b0751  2b8520ffffff              SUB EAX,dword ptr [EBP + 0xffffff20]
005b0757  898710040000              MOV dword ptr [EDI + 0x410],EAX
005b075d  85c0                      TEST EAX,EAX
005b075f  7e09                      JLE 0x005b076a
005b0761  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
005b0768  7507                      JNZ 0x005b0771
005b076a  8bcf                      MOV ECX,EDI
005b076c  e8bfdaffff                CALL 0x005ae230
005b0771  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
005b0779  0f57c9                    XORPS XMM1,XMM1
005b077c  0f2fc1                    COMISS XMM0,XMM1
005b077f  761c                      JBE 0x005b079d
005b0781  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
005b0789  0f2fc1                    COMISS XMM0,XMM1
005b078c  720f                      JC 0x005b079d
005b078e  c787a40b0000ffffffff      MOV dword ptr [EDI + 0xba4],0xffffffff
005b0798  e9c8feffff                JMP 0x005b0665
005b079d  8bcf                      MOV ECX,EDI
005b079f  e87ce7ffff                CALL 0x005aef20
005b07a4  e9250a0000                JMP 0x005b11ce
005b07a9  83bfc00b000003            CMP dword ptr [EDI + 0xbc0],0x3
005b07b0  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005b07b8  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
005b07c0  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005b07c8  7451                      JZ 0x005b081b
005b07ca  51                        PUSH ECX
005b07cb  c704240000803f            MOV dword ptr [ESP],0x3f800000
005b07d2  6a00                      PUSH 0x0
005b07d4  6a02                      PUSH 0x2
005b07d6  51                        PUSH ECX
005b07d7  c704240000803f            MOV dword ptr [ESP],0x3f800000
005b07de  8bcf                      MOV ECX,EDI
005b07e0  688e000000                PUSH 0x8e
005b07e5  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
005b07ef  e8ac631200                CALL 0x006d6ba0
005b07f4  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
005b07fc  8d4f48                    LEA ECX,[EDI + 0x48]
005b07ff  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005b0806  6a00                      PUSH 0x0
005b0808  7207                      JC 0x005b0811
005b080a  68502ab600                PUSH 0xb62a50
005b080f  eb05                      JMP 0x005b0816
005b0811  68402ab600                PUSH 0xb62a40
005b0816  e8659be5ff                CALL 0x0040a380
005b081b  8bcf                      MOV ECX,EDI
005b081d  e81ee0ffff                CALL 0x005ae840
005b0822  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
005b0828  85c0                      TEST EAX,EAX
005b082a  0f8480000000              JZ 0x005b08b0
005b0830  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005b0838  f30f118060030000          MOVSS dword ptr [EAX + 0x360],XMM0
005b0840  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005b0848  f30f118064030000          MOVSS dword ptr [EAX + 0x364],XMM0
005b0850  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
005b0856  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
005b085c  89813c030000              MOV dword ptr [ECX + 0x33c],EAX
005b0862  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
005b0868  898140030000              MOV dword ptr [ECX + 0x340],EAX
005b086e  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
005b0874  85c0                      TEST EAX,EAX
005b0876  7438                      JZ 0x005b08b0
005b0878  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005b087c  740d                      JZ 0x005b088b
005b087e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005b0885  0f8543090000              JNZ 0x005b11ce
005b088b  83782804                  CMP dword ptr [EAX + 0x28],0x4
005b088f  751f                      JNZ 0x005b08b0
005b0891  c7801004000000000000      MOV dword ptr [EAX + 0x410],0x0
005b089b  c7801404000000000000      MOV dword ptr [EAX + 0x414],0x0
005b08a5  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
005b08ab  8b01                      MOV EAX,dword ptr [ECX]
005b08ad  ff500c                    CALL dword ptr [EAX + 0xc]
005b08b0  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
005b08b6  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
005b08c0  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005b08ca  85c0                      TEST EAX,EAX
005b08cc  0f84db000000              JZ 0x005b09ad
005b08d2  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005b08da  8d8d0cffffff              LEA ECX,[EBP + 0xffffff0c]
005b08e0  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005b08e8  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
005b08ee  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
005b08f6  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
005b08fe  50                        PUSH EAX
005b08ff  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
005b0907  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
005b090f  e81cf74500                CALL 0x00a10030
005b0914  8bf0                      MOV ESI,EAX
005b0916  e845e61300                CALL 0x006eef60
005b091b  a801                      TEST AL,0x1
005b091d  740a                      JZ 0x005b0929
005b091f  f30f100554a8ba00          MOVSS XMM0,dword ptr [0x00baa854]
005b0927  eb08                      JMP 0x005b0931
005b0929  f30f1005d8adba00          MOVSS XMM0,dword ptr [0x00baadd8]
005b0931  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
005b0939  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
005b0941  e8facbe6ff                CALL 0x0041d540
005b0946  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
005b094e  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
005b0956  e8c5cbe6ff                CALL 0x0041d520
005b095b  f30f1016                  MOVSS XMM2,dword ptr [ESI]
005b095f  0f28d8                    MOVAPS XMM3,XMM0
005b0962  f30f107604                MOVSS XMM6,dword ptr [ESI + 0x4]
005b0967  0f28e2                    MOVAPS XMM4,XMM2
005b096a  f30f59a51cffffff          MULSS XMM4,dword ptr [EBP + 0xffffff1c]
005b0972  0f28ce                    MOVAPS XMM1,XMM6
005b0975  f30f59b51cffffff          MULSS XMM6,dword ptr [EBP + 0xffffff1c]
005b097d  f30f59cb                  MULSS XMM1,XMM3
005b0981  f30f59d3                  MULSS XMM2,XMM3
005b0985  f30f5ce1                  SUBSS XMM4,XMM1
005b0989  f30f58f2                  ADDSS XMM6,XMM2
005b098d  f30f59251ca8ba00          MULSS XMM4,dword ptr [0x00baa81c]
005b0995  f30f59351ca8ba00          MULSS XMM6,dword ptr [0x00baa81c]
005b099d  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
005b09a5  f30f11b764030000          MOVSS dword ptr [EDI + 0x364],XMM6
005b09ad  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
005b09b7  e912080000                JMP 0x005b11ce
005b09bc  6a00                      PUSH 0x0
005b09be  8d7748                    LEA ESI,[EDI + 0x48]
005b09c1  c787b40b0000000080bf      MOV dword ptr [EDI + 0xbb4],0xbf800000
005b09cb  68ccd2b100                PUSH 0xb1d2cc
005b09d0  8bce                      MOV ECX,ESI
005b09d2  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
005b09dc  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
005b09e6  e89599e5ff                CALL 0x0040a380
005b09eb  6a00                      PUSH 0x0
005b09ed  8bce                      MOV ECX,ESI
005b09ef  e82ca8e5ff                CALL 0x0040b220
005b09f4  8bce                      MOV ECX,ESI
005b09f6  c740540000803f            MOV dword ptr [EAX + 0x54],0x3f800000
005b09fd  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
005b0a05  f30f591580a2ba00          MULSS XMM2,dword ptr [0x00baa280]
005b0a0d  f30f11976c030000          MOVSS dword ptr [EDI + 0x36c],XMM2
005b0a15  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005b0a1d  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005b0a25  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005b0a2d  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005b0a35  f30f5eca                  DIVSS XMM1,XMM2
005b0a39  f30f5ec2                  DIVSS XMM0,XMM2
005b0a3d  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005b0a45  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005b0a4d  e82e9de5ff                CALL 0x0040a780
005b0a52  83f802                    CMP EAX,0x2
005b0a55  7507                      JNZ 0x005b0a5e
005b0a57  8bcf                      MOV ECX,EDI
005b0a59  e8e2d6ffff                CALL 0x005ae140
005b0a5e  68dcd2b100                PUSH 0xb1d2dc
005b0a63  8bce                      MOV ECX,ESI
005b0a65  e8c6a5e5ff                CALL 0x0040b030
005b0a6a  84c0                      TEST AL,AL
005b0a6c  0f8440010000              JZ 0x005b0bb2
005b0a72  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005b0a78  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
005b0a7e  c78524ffffff0d000000      MOV dword ptr [EBP + 0xffffff24],0xd
005b0a88  e8f35c3a00                CALL 0x00956780
005b0a8d  83ec08                    SUB ESP,0x8
005b0a90  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005b0a98  c704240000803f            MOV dword ptr [ESP],0x3f800000
005b0a9f  6a00                      PUSH 0x0
005b0aa1  6a02                      PUSH 0x2
005b0aa3  51                        PUSH ECX
005b0aa4  c704240000803f            MOV dword ptr [ESP],0x3f800000
005b0aab  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005b0ab1  ffb524ffffff              PUSH dword ptr [EBP + 0xffffff24]
005b0ab7  e874d13700                CALL 0x0092dc30
005b0abc  8d8d28ffffff              LEA ECX,[EBP + 0xffffff28]
005b0ac2  e869e4e8ff                CALL 0x0043ef30
005b0ac7  e804d7ffff                CALL 0x005ae1d0
005b0acc  84c0                      TEST AL,AL
005b0ace  751a                      JNZ 0x005b0aea
005b0ad0  51                        PUSH ECX
005b0ad1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005b0ad7  e894791800                CALL 0x00738470
005b0adc  33c9                      XOR ECX,ECX
005b0ade  83f81c                    CMP EAX,0x1c
005b0ae1  0f95c1                    SETNZ CL
005b0ae4  83c103                    ADD ECX,0x3
005b0ae7  894dbc                    MOV dword ptr [EBP + -0x44],ECX
005b0aea  8bcf                      MOV ECX,EDI
005b0aec  e84fdd1000                CALL 0x006be840
005b0af1  8bcf                      MOV ECX,EDI
005b0af3  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005b0afb  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
005b0b03  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
005b0b0b  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
005b0b13  e828dd1000                CALL 0x006be840
005b0b18  f30f108d24ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff24]
005b0b20  f30f10851cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff1c]
005b0b28  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005b0b30  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005b0b38  8db060030000              LEA ESI,[EAX + 0x360]
005b0b3e  f30f59c0                  MULSS XMM0,XMM0
005b0b42  f30f59c9                  MULSS XMM1,XMM1
005b0b46  f30f58c1                  ADDSS XMM0,XMM1
005b0b4a  e8014fe8ff                CALL 0x00435a50
005b0b4f  f30f1016                  MOVSS XMM2,dword ptr [ESI]
005b0b53  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
005b0b59  f30f59d0                  MULSS XMM2,XMM0
005b0b5d  50                        PUSH EAX
005b0b5e  51                        PUSH ECX
005b0b5f  c7042400000000            MOV dword ptr [ESP],0x0
005b0b66  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
005b0b6c  f30f59158ca0ba00          MULSS XMM2,dword ptr [0x00baa08c]
005b0b74  8bcf                      MOV ECX,EDI
005b0b76  50                        PUSH EAX
005b0b77  6a0d                      PUSH 0xd
005b0b79  f30f589524ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff24]
005b0b81  f30f11950cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM2
005b0b89  f30f105604                MOVSS XMM2,dword ptr [ESI + 0x4]
005b0b8e  f30f59d0                  MULSS XMM2,XMM0
005b0b92  f30f59158ca0ba00          MULSS XMM2,dword ptr [0x00baa08c]
005b0b9a  f30f58951cffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff1c]
005b0ba2  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
005b0baa  e821c21100                CALL 0x006ccdd0
005b0baf  8d7748                    LEA ESI,[EDI + 0x48]
005b0bb2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005b0bb6  740d                      JZ 0x005b0bc5
005b0bb8  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005b0bbf  0f8509060000              JNZ 0x005b11ce
005b0bc5  8bcf                      MOV ECX,EDI
005b0bc7  e874d5ffff                CALL 0x005ae140
005b0bcc  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
005b0bd3  7435                      JZ 0x005b0c0a
005b0bd5  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
005b0bdc  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005b0be6  750c                      JNZ 0x005b0bf4
005b0be8  c787100400003c000000      MOV dword ptr [EDI + 0x410],0x3c
005b0bf2  eb16                      JMP 0x005b0c0a
005b0bf4  e867e31300                CALL 0x006eef60
005b0bf9  33d2                      XOR EDX,EDX
005b0bfb  b91e000000                MOV ECX,0x1e
005b0c00  f7f1                      DIV ECX
005b0c02  03d1                      ADD EDX,ECX
005b0c04  899710040000              MOV dword ptr [EDI + 0x410],EDX
005b0c0a  6a00                      PUSH 0x0
005b0c0c  8bce                      MOV ECX,ESI
005b0c0e  c787b40b000000006041      MOV dword ptr [EDI + 0xbb4],0x41600000
005b0c18  e803a6e5ff                CALL 0x0040b220
005b0c1d  c7405400000000            MOV dword ptr [EAX + 0x54],0x0
005b0c24  c787100400000f000000      MOV dword ptr [EDI + 0x410],0xf
005b0c2e  e991050000                JMP 0x005b11c4
005b0c33  68dcd2b100                PUSH 0xb1d2dc
005b0c38  8d4f48                    LEA ECX,[EDI + 0x48]
005b0c3b  c787b40b0000000080bf      MOV dword ptr [EDI + 0xbb4],0xbf800000
005b0c45  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
005b0c4f  e83ca4e5ff                CALL 0x0040b090
005b0c54  84c0                      TEST AL,AL
005b0c56  750a                      JNZ 0x005b0c62
005b0c58  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005b0c62  6a00                      PUSH 0x0
005b0c64  68ecd2b100                PUSH 0xb1d2ec
005b0c69  8d4f48                    LEA ECX,[EDI + 0x48]
005b0c6c  e80f97e5ff                CALL 0x0040a380
005b0c71  6a00                      PUSH 0x0
005b0c73  8d4f48                    LEA ECX,[EDI + 0x48]
005b0c76  e8a5a5e5ff                CALL 0x0040b220
005b0c7b  8db73c030000              LEA ESI,[EDI + 0x33c]
005b0c81  68dcd2b100                PUSH 0xb1d2dc
005b0c86  8d4f48                    LEA ECX,[EDI + 0x48]
005b0c89  c740540000803f            MOV dword ptr [EAX + 0x54],0x3f800000
005b0c90  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
005b0c98  f30f591580a2ba00          MULSS XMM2,dword ptr [0x00baa280]
005b0ca0  f30f11976c030000          MOVSS dword ptr [EDI + 0x36c],XMM2
005b0ca8  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005b0cb0  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005b0cb8  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
005b0cbc  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
005b0cc1  f30f5eca                  DIVSS XMM1,XMM2
005b0cc5  f30f5ec2                  DIVSS XMM0,XMM2
005b0cc9  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005b0cd1  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005b0cd9  e852a3e5ff                CALL 0x0040b030
005b0cde  84c0                      TEST AL,AL
005b0ce0  0f8465040000              JZ 0x005b114b
005b0ce6  8bcf                      MOV ECX,EDI
005b0ce8  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
005b0cf2  e849d4ffff                CALL 0x005ae140
005b0cf7  8b8518ffffff              MOV EAX,dword ptr [EBP + 0xffffff18]
005b0cfd  33c9                      XOR ECX,ECX
005b0cff  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
005b0d05  398864120000              CMP dword ptr [EAX + 0x1264],ECX
005b0d0b  0f8652020000              JBE 0x005b0f63
005b0d11  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
005b0d17  6a00                      PUSH 0x0
005b0d19  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
005b0d1c  8bce                      MOV ECX,ESI
005b0d1e  89b524ffffff              MOV dword ptr [EBP + 0xffffff24],ESI
005b0d24  e837b80f00                CALL 0x006ac560
005b0d29  84c0                      TEST AL,AL
005b0d2b  0f84b7000000              JZ 0x005b0de8
005b0d31  837e283e                  CMP dword ptr [ESI + 0x28],0x3e
005b0d35  750a                      JNZ 0x005b0d41
005b0d37  837e2c03                  CMP dword ptr [ESI + 0x2c],0x3
005b0d3b  0f84a7000000              JZ 0x005b0de8
005b0d41  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005b0d49  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005b0d51  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
005b0d59  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
005b0d61  f30f59c0                  MULSS XMM0,XMM0
005b0d65  f30f59c9                  MULSS XMM1,XMM1
005b0d69  f30f58c1                  ADDSS XMM0,XMM1
005b0d6d  e8de4ce8ff                CALL 0x00435a50
005b0d72  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
005b0d7a  0f2fc8                    COMISS XMM1,XMM0
005b0d7d  7669                      JBE 0x005b0de8
005b0d7f  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
005b0d87  8d4dd4                    LEA ECX,[EBP + -0x2c]
005b0d8a  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005b0d92  8b06                      MOV EAX,dword ptr [ESI]
005b0d94  6a1e                      PUSH 0x1e
005b0d96  51                        PUSH ECX
005b0d97  6a00                      PUSH 0x0
005b0d99  6a00                      PUSH 0x0
005b0d9b  51                        PUSH ECX
005b0d9c  8bce                      MOV ECX,ESI
005b0d9e  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
005b0da5  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
005b0dac  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
005b0db3  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
005b0dba  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
005b0dbf  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
005b0dc4  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
005b0dc9  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
005b0dce  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
005b0dd5  c745f800000000            MOV dword ptr [EBP + -0x8],0x0
005b0ddc  c704240000c841            MOV dword ptr [ESP],0x41c80000
005b0de3  ff5020                    CALL dword ptr [EAX + 0x20]
005b0de6  eb7a                      JMP 0x005b0e62
005b0de8  837e2801                  CMP dword ptr [ESI + 0x28],0x1
005b0dec  0f854c010000              JNZ 0x005b0f3e
005b0df2  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005b0dfa  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005b0e02  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
005b0e0a  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
005b0e12  f30f59c0                  MULSS XMM0,XMM0
005b0e16  f30f59c9                  MULSS XMM1,XMM1
005b0e1a  f30f58c1                  ADDSS XMM0,XMM1
005b0e1e  e82d4ce8ff                CALL 0x00435a50
005b0e23  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
005b0e2b  0f2fc8                    COMISS XMM1,XMM0
005b0e2e  0f860a010000              JBE 0x005b0f3e
005b0e34  8b06                      MOV EAX,dword ptr [ESI]
005b0e36  8d4dd4                    LEA ECX,[EBP + -0x2c]
005b0e39  57                        PUSH EDI
005b0e3a  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
005b0e3d  e8ce04e8ff                CALL 0x00431310
005b0e42  6a1e                      PUSH 0x1e
005b0e44  8d45d4                    LEA EAX,[EBP + -0x2c]
005b0e47  50                        PUSH EAX
005b0e48  6a00                      PUSH 0x0
005b0e4a  6a00                      PUSH 0x0
005b0e4c  51                        PUSH ECX
005b0e4d  8b8d24ffffff              MOV ECX,dword ptr [EBP + 0xffffff24]
005b0e53  c704240000803f            MOV dword ptr [ESP],0x3f800000
005b0e5a  ffd6                      CALL ESI
005b0e5c  8bb524ffffff              MOV ESI,dword ptr [EBP + 0xffffff24]
005b0e62  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
005b0e6a  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005b0e72  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
005b0e7a  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
005b0e82  0f28c1                    MOVAPS XMM0,XMM1
005b0e85  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
005b0e8d  f30f59c1                  MULSS XMM0,XMM1
005b0e91  0f28ca                    MOVAPS XMM1,XMM2
005b0e94  f30f11951cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM2
005b0e9c  f30f59ca                  MULSS XMM1,XMM2
005b0ea0  f30f58c1                  ADDSS XMM0,XMM1
005b0ea4  e8a74be8ff                CALL 0x00435a50
005b0ea9  f30f109d1cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff1c]
005b0eb1  0f28d0                    MOVAPS XMM2,XMM0
005b0eb4  0f57c0                    XORPS XMM0,XMM0
005b0eb7  0f2fd0                    COMISS XMM2,XMM0
005b0eba  761e                      JBE 0x005b0eda
005b0ebc  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005b0ec4  f30f5eca                  DIVSS XMM1,XMM2
005b0ec8  f30f109524ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff24]
005b0ed0  f30f59d1                  MULSS XMM2,XMM1
005b0ed4  f30f59d9                  MULSS XMM3,XMM1
005b0ed8  eb08                      JMP 0x005b0ee2
005b0eda  f30f109524ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff24]
005b0ee2  f30f10a66c030000          MOVSS XMM4,dword ptr [ESI + 0x36c]
005b0eea  f30f591d54a8ba00          MULSS XMM3,dword ptr [0x00baa854]
005b0ef2  f30f591554a8ba00          MULSS XMM2,dword ptr [0x00baa854]
005b0efa  0f2ee0                    UCOMISS XMM4,XMM0
005b0efd  9f                        LAHF
005b0efe  f6c444                    TEST AH,0x44
005b0f01  7b3b                      JNP 0x005b0f3e
005b0f03  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
005b0f0b  0f28c1                    MOVAPS XMM0,XMM1
005b0f0e  f30f59cb                  MULSS XMM1,XMM3
005b0f12  f30f59c2                  MULSS XMM0,XMM2
005b0f16  f30f5ecc                  DIVSS XMM1,XMM4
005b0f1a  f30f5ec4                  DIVSS XMM0,XMM4
005b0f1e  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
005b0f26  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
005b0f2e  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
005b0f36  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
005b0f3e  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
005b0f44  8b8518ffffff              MOV EAX,dword ptr [EBP + 0xffffff18]
005b0f4a  41                        INC ECX
005b0f4b  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
005b0f51  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
005b0f57  0f82b4fdffff              JC 0x005b0d11
005b0f5d  8db73c030000              LEA ESI,[EDI + 0x33c]
005b0f63  8bce                      MOV ECX,ESI
005b0f65  e846d1ffff                CALL 0x005ae0b0
005b0f6a  84c0                      TEST AL,AL
005b0f6c  0f8595000000              JNZ 0x005b1007
005b0f72  8b8d18ffffff              MOV ECX,dword ptr [EBP + 0xffffff18]
005b0f78  56                        PUSH ESI
005b0f79  e8a256eaff                CALL 0x00456620
005b0f7e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005b0f84  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
005b0f8a  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
005b0f90  c78524ffffff89000000      MOV dword ptr [EBP + 0xffffff24],0x89
005b0f9a  e8e1573a00                CALL 0x00956780
005b0f9f  83ec08                    SUB ESP,0x8
005b0fa2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005b0faa  c704240000803f            MOV dword ptr [ESP],0x3f800000
005b0fb1  6a00                      PUSH 0x0
005b0fb3  6a02                      PUSH 0x2
005b0fb5  51                        PUSH ECX
005b0fb6  c704240000803f            MOV dword ptr [ESP],0x3f800000
005b0fbd  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005b0fc3  ffb524ffffff              PUSH dword ptr [EBP + 0xffffff24]
005b0fc9  e862cc3700                CALL 0x0092dc30
005b0fce  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005b0fd4  6a08                      PUSH 0x8
005b0fd6  e895261500                CALL 0x00703670
005b0fdb  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
005b0fe1  85c0                      TEST EAX,EAX
005b0fe3  741c                      JZ 0x005b1001
005b0fe5  8b00                      MOV EAX,dword ptr [EAX]
005b0fe7  8d4dd4                    LEA ECX,[EBP + -0x2c]
005b0fea  57                        PUSH EDI
005b0feb  8b7014                    MOV ESI,dword ptr [EAX + 0x14]
005b0fee  e81d03e8ff                CALL 0x00431310
005b0ff3  8b8d1cffffff              MOV ECX,dword ptr [EBP + 0xffffff1c]
005b0ff9  8d45d4                    LEA EAX,[EBP + -0x2c]
005b0ffc  50                        PUSH EAX
005b0ffd  6a01                      PUSH 0x1
005b0fff  ffd6                      CALL ESI
005b1001  8db73c030000              LEA ESI,[EDI + 0x33c]
005b1007  8b8d18ffffff              MOV ECX,dword ptr [EBP + 0xffffff18]
005b100d  6a00                      PUSH 0x0
005b100f  56                        PUSH ESI
005b1010  e87b8ffdff                CALL 0x00589f90
005b1015  84c0                      TEST AL,AL
005b1017  0f842e010000              JZ 0x005b114b
005b101d  8b8d18ffffff              MOV ECX,dword ptr [EBP + 0xffffff18]
005b1023  56                        PUSH ESI
005b1024  e8671c2600                CALL 0x00812c90
005b1029  898520ffffff              MOV dword ptr [EBP + 0xffffff20],EAX
005b102f  e82cdf1300                CALL 0x006eef60
005b1034  8b8d20ffffff              MOV ECX,dword ptr [EBP + 0xffffff20]
005b103a  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
005b1040  85c9                      TEST ECX,ECX
005b1042  7808                      JS 0x005b104c
005b1044  81f9c0010000              CMP ECX,0x1c0
005b104a  7c29                      JL 0x005b1075
005b104c  6838c1b600                PUSH 0xb6c138
005b1051  6a10                      PUSH 0x10
005b1053  e868024600                CALL 0x00a112c0
005b1058  8b8d20ffffff              MOV ECX,dword ptr [EBP + 0xffffff20]
005b105e  83c408                    ADD ESP,0x8
005b1061  85c9                      TEST ECX,ECX
005b1063  0f88b7000000              JS 0x005b1120
005b1069  81f9c0010000              CMP ECX,0x1c0
005b106f  0f8dab000000              JGE 0x005b1120
005b1075  8b8518ffffff              MOV EAX,dword ptr [EBP + 0xffffff18]
005b107b  81bc886c07000084030000    CMP dword ptr [EAX + ECX*0x4 + 0x76c],0x384
005b1086  0f8f81000000              JG 0x005b110d
005b108c  8bd1                      MOV EDX,ECX
005b108e  b907000000                MOV ECX,0x7
005b1093  e848a21500                CALL 0x0070b2e0
005b1098  8b8d20ffffff              MOV ECX,dword ptr [EBP + 0xffffff20]
005b109e  8bd0                      MOV EDX,EAX
005b10a0  8b8518ffffff              MOV EAX,dword ptr [EBP + 0xffffff18]
005b10a6  899524ffffff              MOV dword ptr [EBP + 0xffffff24],EDX
005b10ac  85d2                      TEST EDX,EDX
005b10ae  745d                      JZ 0x005b110d
005b10b0  8b548824                  MOV EDX,dword ptr [EAX + ECX*0x4 + 0x24]
005b10b4  85d2                      TEST EDX,EDX
005b10b6  89951cffffff              MOV dword ptr [EBP + 0xffffff1c],EDX
005b10bc  8b9524ffffff              MOV EDX,dword ptr [EBP + 0xffffff24]
005b10c2  741e                      JZ 0x005b10e2
005b10c4  8b8d1cffffff              MOV ECX,dword ptr [EBP + 0xffffff1c]
005b10ca  6a01                      PUSH 0x1
005b10cc  8b01                      MOV EAX,dword ptr [ECX]
005b10ce  ff10                      CALL dword ptr [EAX]
005b10d0  8b8518ffffff              MOV EAX,dword ptr [EBP + 0xffffff18]
005b10d6  8b8d20ffffff              MOV ECX,dword ptr [EBP + 0xffffff20]
005b10dc  8b9524ffffff              MOV EDX,dword ptr [EBP + 0xffffff24]
005b10e2  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
005b10e8  89548824                  MOV dword ptr [EAX + ECX*0x4 + 0x24],EDX
005b10ec  8bca                      MOV ECX,EDX
005b10ee  c7420800000000            MOV dword ptr [EDX + 0x8],0x0
005b10f5  c7421800000000            MOV dword ptr [EDX + 0x18],0x0
005b10fc  e8af8c1500                CALL 0x00709db0
005b1101  8b8518ffffff              MOV EAX,dword ptr [EBP + 0xffffff18]
005b1107  8b8d20ffffff              MOV ECX,dword ptr [EBP + 0xffffff20]
005b110d  8b4c8824                  MOV ECX,dword ptr [EAX + ECX*0x4 + 0x24]
005b1111  85c9                      TEST ECX,ECX
005b1113  740b                      JZ 0x005b1120
005b1115  83790407                  CMP dword ptr [ECX + 0x4],0x7
005b1119  7505                      JNZ 0x005b1120
005b111b  8b01                      MOV EAX,dword ptr [ECX]
005b111d  ff5004                    CALL dword ptr [EAX + 0x4]
005b1120  8d4dd0                    LEA ECX,[EBP + -0x30]
005b1123  e84860e5ff                CALL 0x00407170
005b1128  6a00                      PUSH 0x0
005b112a  51                        PUSH ECX
005b112b  c704240050c347            MOV dword ptr [ESP],0x47c35000
005b1132  50                        PUSH EAX
005b1133  51                        PUSH ECX
005b1134  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005b113a  c704240000c040            MOV dword ptr [ESP],0x40c00000
005b1141  6a04                      PUSH 0x4
005b1143  6a04                      PUSH 0x4
005b1145  56                        PUSH ESI
005b1146  e8e5211500                CALL 0x00703330
005b114b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005b114f  7409                      JZ 0x005b115a
005b1151  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005b1158  7574                      JNZ 0x005b11ce
005b115a  8bcf                      MOV ECX,EDI
005b115c  e8dfcfffff                CALL 0x005ae140
005b1161  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
005b1168  7435                      JZ 0x005b119f
005b116a  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
005b1171  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005b117b  750c                      JNZ 0x005b1189
005b117d  c787100400003c000000      MOV dword ptr [EDI + 0x410],0x3c
005b1187  eb16                      JMP 0x005b119f
005b1189  e8d2dd1300                CALL 0x006eef60
005b118e  33d2                      XOR EDX,EDX
005b1190  b91e000000                MOV ECX,0x1e
005b1195  f7f1                      DIV ECX
005b1197  03d1                      ADD EDX,ECX
005b1199  899710040000              MOV dword ptr [EDI + 0x410],EDX
005b119f  6a00                      PUSH 0x0
005b11a1  8d4f48                    LEA ECX,[EDI + 0x48]
005b11a4  c787b40b000000006041      MOV dword ptr [EDI + 0xbb4],0x41600000
005b11ae  e86da0e5ff                CALL 0x0040b220
005b11b3  c7405400000000            MOV dword ptr [EAX + 0x54],0x0
005b11ba  c787100400001e000000      MOV dword ptr [EDI + 0x410],0x1e
005b11c4  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005b11ce  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
005b11d5  8b87b40b0000              MOV EAX,dword ptr [EDI + 0xbb4]
005b11db  898750030000              MOV dword ptr [EDI + 0x350],EAX
005b11e1  7554                      JNZ 0x005b1237
005b11e3  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
005b11eb  f30f5e8f84030000          DIVSS XMM1,dword ptr [EDI + 0x384]
005b11f3  f30f100520a2ba00          MOVSS XMM0,dword ptr [0x00baa220]
005b11fb  0f2fc1                    COMISS XMM0,XMM1
005b11fe  7637                      JBE 0x005b1237
005b1200  e8cbcfffff                CALL 0x005ae1d0
005b1205  84c0                      TEST AL,AL
005b1207  752e                      JNZ 0x005b1237
005b1209  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
005b1210  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
005b121a  750a                      JNZ 0x005b1226
005b121c  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
005b1226  e835dd1300                CALL 0x006eef60
005b122b  83e003                    AND EAX,0x3
005b122e  83c003                    ADD EAX,0x3
005b1231  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
005b1237  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
005b123e  7548                      JNZ 0x005b1288
005b1240  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
005b1248  8bd7                      MOV EDX,EDI
005b124a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
005b1250  c7421400000000            MOV dword ptr [EDX + 0x14],0x0
005b1257  8b4208                    MOV EAX,dword ptr [EDX + 0x8]
005b125a  8b4a0c                    MOV ECX,dword ptr [EDX + 0xc]
005b125d  3bc1                      CMP EAX,ECX
005b125f  741d                      JZ 0x005b127e
005b1261  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005b1265  f30f59c1                  MULSS XMM0,XMM1
005b1269  f30f1100                  MOVSS dword ptr [EAX],XMM0
005b126d  83c038                    ADD EAX,0x38
005b1270  f30f584214                ADDSS XMM0,dword ptr [EDX + 0x14]
005b1275  f30f114214                MOVSS dword ptr [EDX + 0x14],XMM0
005b127a  3bc1                      CMP EAX,ECX
005b127c  75e3                      JNZ 0x005b1261
005b127e  8b92c0030000              MOV EDX,dword ptr [EDX + 0x3c0]
005b1284  85d2                      TEST EDX,EDX
005b1286  75c8                      JNZ 0x005b1250
005b1288  f30f101dc4acba00          MOVSS XMM3,dword ptr [0x00baacc4]
005b1290  8bc7                      MOV EAX,EDI
005b1292  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
005b129a  f30f5c4014                SUBSS XMM0,dword ptr [EAX + 0x14]
005b129f  8b80c0030000              MOV EAX,dword ptr [EAX + 0x3c0]
005b12a5  f30f5dc3                  MINSS XMM0,XMM3
005b12a9  0f28d8                    MOVAPS XMM3,XMM0
005b12ac  85c0                      TEST EAX,EAX
005b12ae  75e2                      JNZ 0x005b1292
005b12b0  f30f119d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM3
005b12b8  8bf7                      MOV ESI,EDI
005b12ba  660f1f440000              NOP word ptr [EAX + EAX*0x1]
005b12c0  f30f109680030000          MOVSS XMM2,dword ptr [ESI + 0x380]
005b12c8  f30f5c5614                SUBSS XMM2,dword ptr [ESI + 0x14]
005b12cd  0f2fd3                    COMISS XMM2,XMM3
005b12d0  0f8674000000              JBE 0x005b134a
005b12d6  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
005b12de  8d4dd4                    LEA ECX,[EBP + -0x2c]
005b12e1  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005b12e9  f30f5cd3                  SUBSS XMM2,XMM3
005b12ed  8b06                      MOV EAX,dword ptr [ESI]
005b12ef  6a1e                      PUSH 0x1e
005b12f1  51                        PUSH ECX
005b12f2  6a00                      PUSH 0x0
005b12f4  6800200000                PUSH 0x2000
005b12f9  51                        PUSH ECX
005b12fa  8bce                      MOV ECX,ESI
005b12fc  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
005b1303  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
005b130a  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
005b1311  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
005b1318  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
005b131d  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
005b1322  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
005b1327  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
005b132c  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
005b1333  c745f800000000            MOV dword ptr [EBP + -0x8],0x0
005b133a  f30f111424                MOVSS dword ptr [ESP],XMM2
005b133f  ff5020                    CALL dword ptr [EAX + 0x20]
005b1342  f30f109d24ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff24]
005b134a  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
005b1350  85f6                      TEST ESI,ESI
005b1352  0f8568ffffff              JNZ 0x005b12c0
005b1358  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005b135f  7472                      JZ 0x005b13d3
005b1361  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
005b1367  85f6                      TEST ESI,ESI
005b1369  7468                      JZ 0x005b13d3
005b136b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
005b1370  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
005b1378  8d4dd4                    LEA ECX,[EBP + -0x2c]
005b137b  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005b1383  8b06                      MOV EAX,dword ptr [ESI]
005b1385  51                        PUSH ECX
005b1386  8bce                      MOV ECX,ESI
005b1388  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
005b138f  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
005b1396  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
005b139d  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
005b13a4  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
005b13a9  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
005b13ae  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
005b13b3  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
005b13b8  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
005b13bf  c745f800000000            MOV dword ptr [EBP + -0x8],0x0
005b13c6  ff5024                    CALL dword ptr [EAX + 0x24]
005b13c9  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
005b13cf  85f6                      TEST ESI,ESI
005b13d1  759d                      JNZ 0x005b1370
005b13d3  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
005b13da  7565                      JNZ 0x005b1441
005b13dc  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
005b13e2  85f6                      TEST ESI,ESI
005b13e4  7e5b                      JLE 0x005b1441
005b13e6  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
005b13eb  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005b13f2  764d                      JBE 0x005b1441
005b13f4  f30f58c0                  ADDSS XMM0,XMM0
005b13f8  83ec08                    SUB ESP,0x8
005b13fb  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
005b1403  d98524ffffff              FLD dword ptr [EBP + 0xffffff24]
005b1409  dd1c24                    FSTP qword ptr [ESP]
005b140c  e800f55300                CALL 0x00af0911
005b1411  d99d24ffffff              FSTP dword ptr [EBP + 0xffffff24]
005b1417  d98524ffffff              FLD dword ptr [EBP + 0xffffff24]
005b141d  83c408                    ADD ESP,0x8
005b1420  d99d24ffffff              FSTP dword ptr [EBP + 0xffffff24]
005b1426  f30f2c8524ffffff          CVTTSS2SI EAX,dword ptr [EBP + 0xffffff24]
005b142e  2bf0                      SUB ESI,EAX
005b1430  b801000000                MOV EAX,0x1
005b1435  83fe01                    CMP ESI,0x1
005b1438  0f4fc6                    CMOVG EAX,ESI
005b143b  898710040000              MOV dword ptr [EDI + 0x410],EAX
005b1441  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005b1444  5f                        POP EDI
005b1445  33cd                      XOR ECX,EBP
005b1447  5e                        POP ESI
005b1448  e8dedc5300                CALL 0x00aef12b
005b144d  8be5                      MOV ESP,EBP
005b144f  5d                        POP EBP
005b1450  8be3                      MOV ESP,EBX
005b1452  5b                        POP EBX
005b1453  c3                        RET
