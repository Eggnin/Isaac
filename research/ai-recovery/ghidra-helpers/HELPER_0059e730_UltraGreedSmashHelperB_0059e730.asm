; J460 NPC AI 0x0059e730 HELPER_0059e730_UltraGreedSmashHelperB
; types=406
; identities=ultra_greed.attack_helper
; entry=0059e730
0059e730  53                        PUSH EBX
0059e731  8bdc                      MOV EBX,ESP
0059e733  83ec08                    SUB ESP,0x8
0059e736  83e4f8                    AND ESP,0xfffffff8
0059e739  83c404                    ADD ESP,0x4
0059e73c  55                        PUSH EBP
0059e73d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0059e740  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0059e744  8bec                      MOV EBP,ESP
0059e746  6aff                      PUSH -0x1
0059e748  680b58af00                PUSH 0xaf580b
0059e74d  64a100000000              MOV EAX,FS:[0x0]
0059e753  50                        PUSH EAX
0059e754  53                        PUSH EBX
0059e755  81ec90000000              SUB ESP,0x90
0059e75b  a1b493bf00                MOV EAX,[0x00bf93b4]
0059e760  33c5                      XOR EAX,EBP
0059e762  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0059e765  56                        PUSH ESI
0059e766  57                        PUSH EDI
0059e767  50                        PUSH EAX
0059e768  8d45f4                    LEA EAX,[EBP + -0xc]
0059e76b  64a300000000              MOV FS:[0x0],EAX
0059e771  8bc1                      MOV EAX,ECX
0059e773  89857cffffff              MOV dword ptr [EBP + 0xffffff7c],EAX
0059e779  6a1e                      PUSH 0x1e
0059e77b  e840fdffff                CALL 0x0059e4c0
0059e780  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0059e786  8d4d90                    LEA ECX,[EBP + -0x70]
0059e789  c745908a000000            MOV dword ptr [EBP + -0x70],0x8a
0059e790  e8eb7f3b00                CALL 0x00956780
0059e795  83ec08                    SUB ESP,0x8
0059e798  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0059e79e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0059e7a6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0059e7ad  6a00                      PUSH 0x0
0059e7af  6a02                      PUSH 0x2
0059e7b1  51                        PUSH ECX
0059e7b2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0059e7b9  ff7590                    PUSH dword ptr [EBP + -0x70]
0059e7bc  e86ff43800                CALL 0x0092dc30
0059e7c1  e89a071500                CALL 0x006eef60
0059e7c6  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0059e7cc  8d4d90                    LEA ECX,[EBP + -0x70]
0059e7cf  c7459030000000            MOV dword ptr [EBP + -0x70],0x30
0059e7d6  660f6ec0                  MOVD XMM0,EAX
0059e7da  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0059e7de  c1e81f                    SHR EAX,0x1f
0059e7e1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0059e7ea  660f5ac0                  CVTPD2PS XMM0,XMM0
0059e7ee  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0059e7f6  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0059e7fe  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
0059e806  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0059e80b  e8707f3b00                CALL 0x00956780
0059e810  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
0059e815  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0059e81b  83ec08                    SUB ESP,0x8
0059e81e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0059e826  f30f110424                MOVSS dword ptr [ESP],XMM0
0059e82b  6a00                      PUSH 0x0
0059e82d  6a02                      PUSH 0x2
0059e82f  51                        PUSH ECX
0059e830  c704240000803f            MOV dword ptr [ESP],0x3f800000
0059e837  ff7590                    PUSH dword ptr [EBP + -0x70]
0059e83a  e8f1f33800                CALL 0x0092dc30
0059e83f  8b157816c700              MOV EDX,dword ptr [0x00c71678]
0059e845  f30f104308                MOVSS XMM0,dword ptr [EBX + 0x8]
0059e84a  f30f104b0c                MOVSS XMM1,dword ptr [EBX + 0xc]
0059e84f  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0059e854  8bb200830100              MOV ESI,dword ptr [EDX + 0x18300]
0059e85a  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
0059e85f  ff86fc700000              INC dword ptr [ESI + 0x70fc]
0059e865  8bbefc700000              MOV EDI,dword ptr [ESI + 0x70fc]
0059e86b  81e701000080              AND EDI,0x80000001
0059e871  7905                      JNS 0x0059e878
0059e873  4f                        DEC EDI
0059e874  83cffe                    OR EDI,0xfffffffe
0059e877  47                        INC EDI
0059e878  83ff02                    CMP EDI,0x2
0059e87b  721f                      JC 0x0059e89c
0059e87d  6858c8b600                PUSH 0xb6c858
0059e882  6a10                      PUSH 0x10
0059e884  e8372a4700                CALL 0x00a112c0
0059e889  8b157816c700              MOV EDX,dword ptr [0x00c71678]
0059e88f  83c408                    ADD ESP,0x8
0059e892  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
0059e897  f30f104d90                MOVSS XMM1,dword ptr [EBP + -0x70]
0059e89c  6a00                      PUSH 0x0
0059e89e  6a00                      PUSH 0x0
0059e8a0  8d8707040000              LEA EAX,[EDI + 0x407]
0059e8a6  8d0cc500000000            LEA ECX,[EAX*0x8 + 0x0]
0059e8ad  2bc8                      SUB ECX,EAX
0059e8af  8d45c0                    LEA EAX,[EBP + -0x40]
0059e8b2  6a04                      PUSH 0x4
0059e8b4  6a01                      PUSH 0x1
0059e8b6  51                        PUSH ECX
0059e8b7  f30f11048e                MOVSS dword ptr [ESI + ECX*0x4],XMM0
0059e8bc  0f57c0                    XORPS XMM0,XMM0
0059e8bf  f30f114c8e04              MOVSS dword ptr [ESI + ECX*0x4 + 0x4],XMM1
0059e8c5  c7448e0800000000          MOV dword ptr [ESI + ECX*0x4 + 0x8],0x0
0059e8cd  c7448e0ccdcccc3c          MOV dword ptr [ESI + ECX*0x4 + 0xc],0x3ccccccd
0059e8d5  c7448e10cdcccc3c          MOV dword ptr [ESI + ECX*0x4 + 0x10],0x3ccccccd
0059e8dd  c7448e1400000000          MOV dword ptr [ESI + ECX*0x4 + 0x14],0x0
0059e8e5  c7448e1819000000          MOV dword ptr [ESI + ECX*0x4 + 0x18],0x19
0059e8ed  8bb57cffffff              MOV ESI,dword ptr [EBP + 0xffffff7c]
0059e8f3  c704246666e63f            MOV dword ptr [ESP],0x3fe66666
0059e8fa  56                        PUSH ESI
0059e8fb  50                        PUSH EAX
0059e8fc  83ec10                    SUB ESP,0x10
0059e8ff  c745e00000003f            MOV dword ptr [EBP + -0x20],0x3f000000
0059e906  8bc4                      MOV EAX,ESP
0059e908  c745e40000803e            MOV dword ptr [EBP + -0x1c],0x3e800000
0059e90f  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0059e913  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0059e91a  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0059e921  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0059e925  51                        PUSH ECX
0059e926  c70000000000              MOV dword ptr [EAX],0x0
0059e92c  8bca                      MOV ECX,EDX
0059e92e  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
0059e935  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
0059e93c  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
0059e943  8d4308                    LEA EAX,[EBX + 0x8]
0059e946  c7042400007042            MOV dword ptr [ESP],0x42700000
0059e94d  50                        PUSH EAX
0059e94e  e80d171600                CALL 0x00700060
0059e953  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0059e95a  8d4594                    LEA EAX,[EBP + -0x6c]
0059e95d  6a00                      PUSH 0x0
0059e95f  51                        PUSH ECX
0059e960  c704240050c347            MOV dword ptr [ESP],0x47c35000
0059e967  50                        PUSH EAX
0059e968  51                        PUSH ECX
0059e969  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059e96f  8d4308                    LEA EAX,[EBX + 0x8]
0059e972  c704240000a040            MOV dword ptr [ESP],0x40a00000
0059e979  6a0f                      PUSH 0xf
0059e97b  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
0059e97f  6a5f                      PUSH 0x5f
0059e981  0f57c0                    XORPS XMM0,XMM0
0059e984  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
0059e98b  50                        PUSH EAX
0059e98c  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
0059e990  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
0059e997  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
0059e99e  e88d491600                CALL 0x00703330
0059e9a3  a17816c700                MOV EAX,[0x00c71678]
0059e9a8  6a00                      PUSH 0x0
0059e9aa  6a01                      PUSH 0x1
0059e9ac  6aff                      PUSH -0x1
0059e9ae  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0059e9b4  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
0059e9ba  6aff                      PUSH -0x1
0059e9bc  6826010000                PUSH 0x126
0059e9c1  81c118120000              ADD ECX,0x1218
0059e9c7  50                        PUSH EAX
0059e9c8  e893c5e7ff                CALL 0x0041af60
0059e9cd  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0059e9d4  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
0059e9da  8bb56cffffff              MOV ESI,dword ptr [EBP + 0xffffff6c]
0059e9e0  3dbc020000                CMP EAX,0x2bc
0059e9e5  7409                      JZ 0x0059e9f0
0059e9e7  83f810                    CMP EAX,0x10
0059e9ea  0f85ad020000              JNZ 0x0059ec9d
0059e9f0  c78570ffffff00000000      MOV dword ptr [EBP + 0xffffff70],0x0
0059e9fa  c78574ffffff00000000      MOV dword ptr [EBP + 0xffffff74],0x0
0059ea04  c78578ffffff00000000      MOV dword ptr [EBP + 0xffffff78],0x0
0059ea0e  8d4588                    LEA EAX,[EBP + -0x78]
0059ea11  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0059ea15  50                        PUSH EAX
0059ea16  6a00                      PUSH 0x0
0059ea18  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
0059ea1e  c7458800000000            MOV dword ptr [EBP + -0x78],0x0
0059ea25  c7458c64000000            MOV dword ptr [EBP + -0x74],0x64
0059ea2c  e88f27f0ff                CALL 0x004a11c0
0059ea31  8bbd74ffffff              MOV EDI,dword ptr [EBP + 0xffffff74]
0059ea37  33c0                      XOR EAX,EAX
0059ea39  8b9570ffffff              MOV EDX,dword ptr [EBP + 0xffffff70]
0059ea3f  8bcf                      MOV ECX,EDI
0059ea41  2bca                      SUB ECX,EDX
0059ea43  c1f903                    SAR ECX,0x3
0059ea46  85c9                      TEST ECX,ECX
0059ea48  7411                      JZ 0x0059ea5b
0059ea4a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0059ea50  833cc201                  CMP dword ptr [EDX + EAX*0x8],0x1
0059ea54  7433                      JZ 0x0059ea89
0059ea56  40                        INC EAX
0059ea57  3bc1                      CMP EAX,ECX
0059ea59  72f5                      JC 0x0059ea50
0059ea5b  c7458801000000            MOV dword ptr [EBP + -0x78],0x1
0059ea62  c7458c46000000            MOV dword ptr [EBP + -0x74],0x46
0059ea69  3bbd78ffffff              CMP EDI,dword ptr [EBP + 0xffffff78]
0059ea6f  7429                      JZ 0x0059ea9a
0059ea71  c70701000000              MOV dword ptr [EDI],0x1
0059ea77  c7470446000000            MOV dword ptr [EDI + 0x4],0x46
0059ea7e  83c708                    ADD EDI,0x8
0059ea81  89bd74ffffff              MOV dword ptr [EBP + 0xffffff74],EDI
0059ea87  eb21                      JMP 0x0059eaaa
0059ea89  8344c20446                ADD dword ptr [EDX + EAX*0x8 + 0x4],0x46
0059ea8e  791a                      JNS 0x0059eaaa
0059ea90  c744c20400000000          MOV dword ptr [EDX + EAX*0x8 + 0x4],0x0
0059ea98  eb10                      JMP 0x0059eaaa
0059ea9a  8d4588                    LEA EAX,[EBP + -0x78]
0059ea9d  50                        PUSH EAX
0059ea9e  57                        PUSH EDI
0059ea9f  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
0059eaa5  e81627f0ff                CALL 0x004a11c0
0059eaaa  e8b1041500                CALL 0x006eef60
0059eaaf  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
0059eab7  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
0059eabd  83c801                    OR EAX,0x1
0059eac0  660fd64584                MOVQ qword ptr [EBP + -0x7c],XMM0
0059eac5  894580                    MOV dword ptr [EBP + -0x80],EAX
0059eac8  83ec10                    SUB ESP,0x10
0059eacb  a174f6b100                MOV EAX,[0x00b1f674]
0059ead0  89458c                    MOV dword ptr [EBP + -0x74],EAX
0059ead3  8bc4                      MOV EAX,ESP
0059ead5  0f104580                  MOVUPS XMM0,xmmword ptr [EBP + -0x80]
0059ead9  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0059eadc  e80fe1efff                CALL 0x0049cbf0
0059eae1  85c0                      TEST EAX,EAX
0059eae3  0f84c6000000              JZ 0x0059ebaf
0059eae9  8b8d7cffffff              MOV ECX,dword ptr [EBP + 0xffffff7c]
0059eaef  83b9640b000010            CMP dword ptr [ECX + 0xb64],0x10
0059eaf6  0f84b3000000              JZ 0x0059ebaf
0059eafc  83f801                    CMP EAX,0x1
0059eaff  0f854e010000              JNZ 0x0059ec53
0059eb05  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059eb0b  6a12                      PUSH 0x12
0059eb0d  e85e4b1600                CALL 0x00703670
0059eb12  85f6                      TEST ESI,ESI
0059eb14  0f8439010000              JZ 0x0059ec53
0059eb1a  897590                    MOV dword ptr [EBP + -0x70],ESI
0059eb1d  0f1f00                    NOP dword ptr [EAX]
0059eb20  85f6                      TEST ESI,ESI
0059eb22  7504                      JNZ 0x0059eb28
0059eb24  33d2                      XOR EDX,EDX
0059eb26  eb09                      JMP 0x0059eb31
0059eb28  e833041500                CALL 0x006eef60
0059eb2d  33d2                      XOR EDX,EDX
0059eb2f  f7f6                      DIV ESI
0059eb31  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
0059eb37  6a00                      PUSH 0x0
0059eb39  68acd6c500                PUSH 0xc5d6ac
0059eb3e  68dcd5c500                PUSH 0xc5d5dc
0059eb43  6a00                      PUSH 0x0
0059eb45  ff3490                    PUSH dword ptr [EAX + EDX*0x4]
0059eb48  e8641d5500                CALL 0x00af08b1
0059eb4d  83c404                    ADD ESP,0x4
0059eb50  8bf8                      MOV EDI,EAX
0059eb52  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
0059eb58  8bcc                      MOV ECX,ESP
0059eb5a  57                        PUSH EDI
0059eb5b  894104                    MOV dword ptr [ECX + 0x4],EAX
0059eb5e  8b8568ffffff              MOV EAX,dword ptr [EBP + 0xffffff68]
0059eb64  c60101                    MOV byte ptr [ECX],0x1
0059eb67  894108                    MOV dword ptr [ECX + 0x8],EAX
0059eb6a  89710c                    MOV dword ptr [ECX + 0xc],ESI
0059eb6d  e8befaffff                CALL 0x0059e630
0059eb72  85ff                      TEST EDI,EDI
0059eb74  7413                      JZ 0x0059eb89
0059eb76  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
0059eb7d  750a                      JNZ 0x0059eb89
0059eb7f  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0059eb89  85c0                      TEST EAX,EAX
0059eb8b  7413                      JZ 0x0059eba0
0059eb8d  83b8640b000003            CMP dword ptr [EAX + 0xb64],0x3
0059eb94  750a                      JNZ 0x0059eba0
0059eb96  c780640b000009000000      MOV dword ptr [EAX + 0xb64],0x9
0059eba0  836d9001                  SUB dword ptr [EBP + -0x70],0x1
0059eba4  0f8576ffffff              JNZ 0x0059eb20
0059ebaa  e9a4000000                JMP 0x0059ec53
0059ebaf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059ebb5  6a0d                      PUSH 0xd
0059ebb7  e8b44a1600                CALL 0x00703670
0059ebbc  85f6                      TEST ESI,ESI
0059ebbe  0f848f000000              JZ 0x0059ec53
0059ebc4  e897031500                CALL 0x006eef60
0059ebc9  33d2                      XOR EDX,EDX
0059ebcb  f7f6                      DIV ESI
0059ebcd  42                        INC EDX
0059ebce  895590                    MOV dword ptr [EBP + -0x70],EDX
0059ebd1  85d2                      TEST EDX,EDX
0059ebd3  7e7e                      JLE 0x0059ec53
0059ebd5  e886031500                CALL 0x006eef60
0059ebda  33d2                      XOR EDX,EDX
0059ebdc  f7f6                      DIV ESI
0059ebde  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
0059ebe4  6a00                      PUSH 0x0
0059ebe6  68acd6c500                PUSH 0xc5d6ac
0059ebeb  68dcd5c500                PUSH 0xc5d5dc
0059ebf0  6a00                      PUSH 0x0
0059ebf2  ff3490                    PUSH dword ptr [EAX + EDX*0x4]
0059ebf5  e8b71c5500                CALL 0x00af08b1
0059ebfa  83c404                    ADD ESP,0x4
0059ebfd  8bf8                      MOV EDI,EAX
0059ebff  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
0059ec05  8bcc                      MOV ECX,ESP
0059ec07  57                        PUSH EDI
0059ec08  894104                    MOV dword ptr [ECX + 0x4],EAX
0059ec0b  8b8568ffffff              MOV EAX,dword ptr [EBP + 0xffffff68]
0059ec11  c60101                    MOV byte ptr [ECX],0x1
0059ec14  894108                    MOV dword ptr [ECX + 0x8],EAX
0059ec17  89710c                    MOV dword ptr [ECX + 0xc],ESI
0059ec1a  e811faffff                CALL 0x0059e630
0059ec1f  85ff                      TEST EDI,EDI
0059ec21  7413                      JZ 0x0059ec36
0059ec23  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
0059ec2a  750a                      JNZ 0x0059ec36
0059ec2c  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0059ec36  85c0                      TEST EAX,EAX
0059ec38  7413                      JZ 0x0059ec4d
0059ec3a  83b8640b000003            CMP dword ptr [EAX + 0xb64],0x3
0059ec41  750a                      JNZ 0x0059ec4d
0059ec43  c780640b000009000000      MOV dword ptr [EAX + 0xb64],0x9
0059ec4d  836d9001                  SUB dword ptr [EBP + -0x70],0x1
0059ec51  7582                      JNZ 0x0059ebd5
0059ec53  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0059ec57  8b8d70ffffff              MOV ECX,dword ptr [EBP + 0xffffff70]
0059ec5d  85c9                      TEST ECX,ECX
0059ec5f  743c                      JZ 0x0059ec9d
0059ec61  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
0059ec67  2bc1                      SUB EAX,ECX
0059ec69  c1f803                    SAR EAX,0x3
0059ec6c  8d14c500000000            LEA EDX,[EAX*0x8 + 0x0]
0059ec73  8bc1                      MOV EAX,ECX
0059ec75  81fa00100000              CMP EDX,0x1000
0059ec7b  7216                      JC 0x0059ec93
0059ec7d  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0059ec80  83c223                    ADD EDX,0x23
0059ec83  2bc1                      SUB EAX,ECX
0059ec85  83c0fc                    ADD EAX,-0x4
0059ec88  83f81f                    CMP EAX,0x1f
0059ec8b  7606                      JBE 0x0059ec93
0059ec8d  ff159488b100              CALL dword ptr [0x00b18894]
0059ec93  52                        PUSH EDX
0059ec94  51                        PUSH ECX
0059ec95  e8c2045500                CALL 0x00aef15c
0059ec9a  83c408                    ADD ESP,0x8
0059ec9d  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
0059eca3  81b8640b0000c6020000      CMP dword ptr [EAX + 0xb64],0x2c6
0059ecad  0f858b000000              JNZ 0x0059ed3e
0059ecb3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059ecb9  6a0a                      PUSH 0xa
0059ecbb  e8b0491600                CALL 0x00703670
0059ecc0  85f6                      TEST ESI,ESI
0059ecc2  747a                      JZ 0x0059ed3e
0059ecc4  e897021500                CALL 0x006eef60
0059ecc9  33d2                      XOR EDX,EDX
0059eccb  8bbd64ffffff              MOV EDI,dword ptr [EBP + 0xffffff64]
0059ecd1  f7f6                      DIV ESI
0059ecd3  6a00                      PUSH 0x0
0059ecd5  68acd6c500                PUSH 0xc5d6ac
0059ecda  68dcd5c500                PUSH 0xc5d5dc
0059ecdf  6a00                      PUSH 0x0
0059ece1  ff3497                    PUSH dword ptr [EDI + EDX*0x4]
0059ece4  e8c81b5500                CALL 0x00af08b1
0059ece9  83c404                    ADD ESP,0x4
0059ecec  89458c                    MOV dword ptr [EBP + -0x74],EAX
0059ecef  8b8568ffffff              MOV EAX,dword ptr [EBP + 0xffffff68]
0059ecf5  8bcc                      MOV ECX,ESP
0059ecf7  89710c                    MOV dword ptr [ECX + 0xc],ESI
0059ecfa  8b758c                    MOV ESI,dword ptr [EBP + -0x74]
0059ecfd  56                        PUSH ESI
0059ecfe  c60101                    MOV byte ptr [ECX],0x1
0059ed01  897904                    MOV dword ptr [ECX + 0x4],EDI
0059ed04  894108                    MOV dword ptr [ECX + 0x8],EAX
0059ed07  e824f9ffff                CALL 0x0059e630
0059ed0c  85f6                      TEST ESI,ESI
0059ed0e  7414                      JZ 0x0059ed24
0059ed10  c786640b000008000000      MOV dword ptr [ESI + 0xb64],0x8
0059ed1a  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
0059ed24  85c0                      TEST EAX,EAX
0059ed26  741c                      JZ 0x0059ed44
0059ed28  c780640b000009000000      MOV dword ptr [EAX + 0xb64],0x9
0059ed32  c7801004000000000000      MOV dword ptr [EAX + 0x410],0x0
0059ed3c  eb06                      JMP 0x0059ed44
0059ed3e  8bbd64ffffff              MOV EDI,dword ptr [EBP + 0xffffff64]
0059ed44  80bd60ffffff00            CMP byte ptr [EBP + 0xffffff60],0x0
0059ed4b  752e                      JNZ 0x0059ed7b
0059ed4d  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
0059ed53  85d2                      TEST EDX,EDX
0059ed55  7405                      JZ 0x0059ed5c
0059ed57  83c230                    ADD EDX,0x30
0059ed5a  eb05                      JMP 0x0059ed61
0059ed5c  ba18f6c700                MOV EDX,0xc7f618
0059ed61  85ff                      TEST EDI,EDI
0059ed63  7416                      JZ 0x0059ed7b
0059ed65  8b47fc                    MOV EAX,dword ptr [EDI + -0x4]
0059ed68  8d4ffc                    LEA ECX,[EDI + -0x4]
0059ed6b  2902                      SUB dword ptr [EDX],EAX
0059ed6d  51                        PUSH ECX
0059ed6e  835a0400                  SBB dword ptr [EDX + 0x4],0x0
0059ed72  ff15dc87b100              CALL dword ptr [0x00b187dc]
0059ed78  83c404                    ADD ESP,0x4
0059ed7b  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0059ed7e  64890d00000000            MOV dword ptr FS:[0x0],ECX
0059ed85  59                        POP ECX
0059ed86  5f                        POP EDI
0059ed87  5e                        POP ESI
0059ed88  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0059ed8b  33cd                      XOR ECX,EBP
0059ed8d  e899035500                CALL 0x00aef12b
0059ed92  8be5                      MOV ESP,EBP
0059ed94  5d                        POP EBP
0059ed95  8be3                      MOV ESP,EBX
0059ed97  5b                        POP EBX
0059ed98  c20800                    RET 0x8
