; J460 NPC AI 0x004efb90 AI_004efb90
; types=889
; identities=889.0.0
; entry=004efb90
004efb90  53                        PUSH EBX
004efb91  8bdc                      MOV EBX,ESP
004efb93  83ec08                    SUB ESP,0x8
004efb96  83e4f8                    AND ESP,0xfffffff8
004efb99  83c404                    ADD ESP,0x4
004efb9c  55                        PUSH EBP
004efb9d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004efba0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004efba4  8bec                      MOV EBP,ESP
004efba6  6aff                      PUSH -0x1
004efba8  68983eaf00                PUSH 0xaf3e98
004efbad  64a100000000              MOV EAX,FS:[0x0]
004efbb3  50                        PUSH EAX
004efbb4  53                        PUSH EBX
004efbb5  81ec78010000              SUB ESP,0x178
004efbbb  a1b493bf00                MOV EAX,[0x00bf93b4]
004efbc0  33c5                      XOR EAX,EBP
004efbc2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004efbc5  56                        PUSH ESI
004efbc6  57                        PUSH EDI
004efbc7  50                        PUSH EAX
004efbc8  8d45f4                    LEA EAX,[EBP + -0xc]
004efbcb  64a300000000              MOV FS:[0x0],EAX
004efbd1  8bf9                      MOV EDI,ECX
004efbd3  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004efbdb  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
004efbe3  2bf0                      SUB ESI,EAX
004efbe5  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004efbeb  89b57cfeffff              MOV dword ptr [EBP + 0xfffffe7c],ESI
004efbf1  83f810                    CMP EAX,0x10
004efbf4  0f87061f0000              JA 0x004f1b00
004efbfa  0fb680a81e4f00            MOVZX EAX,byte ptr [EAX + 0x4f1ea8]
004efc01  ff2485841e4f00            JMP dword ptr [EAX*0x4 + 0x4f1e84]
004efc08  818f6801000000000100      OR dword ptr [EDI + 0x168],0x10000
004efc12  83bfc800000002            CMP dword ptr [EDI + 0xc8],0x2
004efc19  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004efc1f  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004efc29  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004efc2f  c787a40b0000e2ffffff      MOV dword ptr [EDI + 0xba4],0xffffffe2
004efc39  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
004efc43  0f86b71e0000              JBE 0x004f1b00
004efc49  68284ec300                PUSH 0xc34e28
004efc4e  51                        PUSH ECX
004efc4f  6a02                      PUSH 0x2
004efc51  8d4f48                    LEA ECX,[EDI + 0x48]
004efc54  e8c7b5f1ff                CALL 0x0040b220
004efc59  83c404                    ADD ESP,0x4
004efc5c  8d4848                    LEA ECX,[EAX + 0x48]
004efc5f  e88c75f1ff                CALL 0x004071f0
004efc64  e9971e0000                JMP 0x004f1b00
004efc69  6a00                      PUSH 0x0
004efc6b  6800080001                PUSH 0x1000800
004efc70  e8bb77f2ff                CALL 0x00417430
004efc75  84c0                      TEST AL,AL
004efc77  7433                      JZ 0x004efcac
004efc79  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004efc80  752a                      JNZ 0x004efcac
004efc82  8bcf                      MOV ECX,EDI
004efc84  e8b7eb1c00                CALL 0x006be840
004efc89  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
004efc8f  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004efc95  898db8feffff              MOV dword ptr [EBP + 0xfffffeb8],ECX
004efc9b  8d8f14040000              LEA ECX,[EDI + 0x414]
004efca1  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
004efca7  e9d1030000                JMP 0x004f007d
004efcac  51                        PUSH ECX
004efcad  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004efcb3  c7042400000000            MOV dword ptr [ESP],0x0
004efcba  50                        PUSH EAX
004efcbb  8bcf                      MOV ECX,EDI
004efcbd  e87eef1c00                CALL 0x006bec40
004efcc2  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
004efcc8  85d2                      TEST EDX,EDX
004efcca  7e1e                      JLE 0x004efcea
004efccc  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004efcd4  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004efcdc  2bc8                      SUB ECX,EAX
004efcde  2bd1                      SUB EDX,ECX
004efce0  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
004efce6  85d2                      TEST EDX,EDX
004efce8  7f2e                      JG 0x004efd18
004efcea  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004efcf0  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004efcf6  85c9                      TEST ECX,ECX
004efcf8  7418                      JZ 0x004efd12
004efcfa  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004efd00  89b5c4feffff              MOV dword ptr [EBP + 0xfffffec4],ESI
004efd06  81c1cc030000              ADD ECX,0x3cc
004efd0c  50                        PUSH EAX
004efd0d  e8fef4fdff                CALL 0x004cf210
004efd12  c70600000000              MOV dword ptr [ESI],0x0
004efd18  8bcf                      MOV ECX,EDI
004efd1a  e8517af5ff                CALL 0x00447770
004efd1f  85c0                      TEST EAX,EAX
004efd21  0f845a010000              JZ 0x004efe81
004efd27  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
004efd2e  0f854d010000              JNZ 0x004efe81
004efd34  8bcf                      MOV ECX,EDI
004efd36  e8357af5ff                CALL 0x00447770
004efd3b  8bc8                      MOV ECX,EAX
004efd3d  e8feea1c00                CALL 0x006be840
004efd42  8bcf                      MOV ECX,EDI
004efd44  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004efd4c  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
004efd54  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
004efd5c  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004efd64  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004efd6c  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
004efd74  e8f779f5ff                CALL 0x00447770
004efd79  f30f108dc4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec4]
004efd81  f30f1085d8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed8]
004efd89  c785bcfeffff00000000      MOV dword ptr [EBP + 0xfffffebc],0x0
004efd93  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004efd9b  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004efda3  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004efda9  c785b8feffff00000000      MOV dword ptr [EBP + 0xfffffeb8],0x0
004efdb3  50                        PUSH EAX
004efdb4  51                        PUSH ECX
004efdb5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004efdbb  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
004efdc1  f30f118d98feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM1
004efdc9  f30f58c9                  ADDSS XMM1,XMM1
004efdcd  f30f11859cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM0
004efdd5  f30f58c0                  ADDSS XMM0,XMM0
004efdd9  6a00                      PUSH 0x0
004efddb  ffb784010000              PUSH dword ptr [EDI + 0x184]
004efde1  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004efde7  f30f588dc4feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffec4]
004efdef  f30f5885d8feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffed8]
004efdf7  50                        PUSH EAX
004efdf8  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
004efdfe  50                        PUSH EAX
004efdff  f30f118da8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM1
004efe07  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
004efe0f  e85c0a3000                CALL 0x007f0870
004efe14  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
004efe1a  50                        PUSH EAX
004efe1b  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
004efe21  e80a025200                CALL 0x00a10030
004efe26  f30f1085b8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb8]
004efe2e  6a01                      PUSH 0x1
004efe30  6884030000                PUSH 0x384
004efe35  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004efe39  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
004efe41  51                        PUSH ECX
004efe42  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
004efe47  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
004efe4d  f30f591d7ca8ba00          MULSS XMM3,dword ptr [0x00baa87c]
004efe55  c704240000403f            MOV dword ptr [ESP],0x3f400000
004efe5c  f30f5cc1                  SUBSS XMM0,XMM1
004efe60  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
004efe68  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
004efe70  f30f5cc3                  SUBSS XMM0,XMM3
004efe74  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
004efe7c  e94b020000                JMP 0x004f00cc
004efe81  8bcf                      MOV ECX,EDI
004efe83  e8e878f5ff                CALL 0x00447770
004efe88  85c0                      TEST EAX,EAX
004efe8a  740d                      JZ 0x004efe99
004efe8c  83bfc40b000002            CMP dword ptr [EDI + 0xbc4],0x2
004efe93  0f84e9fdffff              JZ 0x004efc82
004efe99  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
004efe9f  8bf0                      MOV ESI,EAX
004efea1  85c0                      TEST EAX,EAX
004efea3  7437                      JZ 0x004efedc
004efea5  8bc8                      MOV ECX,EAX
004efea7  e884c61b00                CALL 0x006ac530
004efeac  84c0                      TEST AL,AL
004efeae  752c                      JNZ 0x004efedc
004efeb0  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004efeb6  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004efebc  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004efec2  89b5c4feffff              MOV dword ptr [EBP + 0xfffffec4],ESI
004efec8  81c1cc030000              ADD ECX,0x3cc
004efece  50                        PUSH EAX
004efecf  e83cf3fdff                CALL 0x004cf210
004efed4  c70600000000              MOV dword ptr [ESI],0x0
004efeda  eb08                      JMP 0x004efee4
004efedc  85f6                      TEST ESI,ESI
004efede  0f8577010000              JNZ 0x004f005b
004efee4  f30f108db8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb8]
004efeec  8d973c030000              LEA EDX,[EDI + 0x33c]
004efef2  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
004efefa  33f6                      XOR ESI,ESI
004efefc  f30f5c4204                SUBSS XMM0,dword ptr [EDX + 0x4]
004eff01  f30f5c0a                  SUBSS XMM1,dword ptr [EDX]
004eff05  f30f59c0                  MULSS XMM0,XMM0
004eff09  f30f59c9                  MULSS XMM1,XMM1
004eff0d  f30f58c1                  ADDSS XMM0,XMM1
004eff11  0f2f0524acba00            COMISS XMM0,dword ptr [0x00baac24]
004eff18  0f863d010000              JBE 0x004f005b
004eff1e  a17816c700                MOV EAX,[0x00c71678]
004eff23  f30f101d50a9ba00          MOVSS XMM3,dword ptr [0x00baa950]
004eff2b  6a08                      PUSH 0x8
004eff2d  52                        PUSH EDX
004eff2e  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004eff34  8d45d4                    LEA EAX,[EBP + -0x2c]
004eff37  81c118120000              ADD ECX,0x1218
004eff3d  50                        PUSH EAX
004eff3e  e84da8f2ff                CALL 0x0041a790
004eff43  8975fc                    MOV dword ptr [EBP + -0x4],ESI
004eff46  33d2                      XOR EDX,EDX
004eff48  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004eff4b  85c0                      TEST EAX,EAX
004eff4d  0f84f3000000              JZ 0x004f0046
004eff53  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
004eff56  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
004eff60  8b3491                    MOV ESI,dword ptr [ECX + EDX*0x4]
004eff63  85f6                      TEST ESI,ESI
004eff65  0f8481000000              JZ 0x004effec
004eff6b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004eff71  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
004eff78  7c06                      JL 0x004eff80
004eff7a  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004eff7e  7410                      JZ 0x004eff90
004eff80  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004eff83  83e80a                    SUB EAX,0xa
004eff86  3ddd030000                CMP EAX,0x3dd
004eff8b  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004eff8e  7759                      JA 0x004effe9
004eff90  3bf7                      CMP ESI,EDI
004eff92  7455                      JZ 0x004effe9
004eff94  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
004eff9a  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
004effa0  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
004effa6  8bc1                      MOV EAX,ECX
004effa8  2500000020                AND EAX,0x20000000
004effad  c685a7feffff01            MOV byte ptr [EBP + 0xfffffea7],0x1
004effb4  83c800                    OR EAX,0x0
004effb7  7507                      JNZ 0x004effc0
004effb9  c685a7feffff00            MOV byte ptr [EBP + 0xfffffea7],0x0
004effc0  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004effc6  2500000020                AND EAX,0x20000000
004effcb  83c800                    OR EAX,0x0
004effce  7404                      JZ 0x004effd4
004effd0  b001                      MOV AL,0x1
004effd2  eb02                      JMP 0x004effd6
004effd4  32c0                      XOR AL,AL
004effd6  3885a7feffff              CMP byte ptr [EBP + 0xfffffea7],AL
004effdc  7508                      JNZ 0x004effe6
004effde  83e110                    AND ECX,0x10
004effe1  83c900                    OR ECX,0x0
004effe4  7411                      JZ 0x004efff7
004effe6  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004effe9  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
004effec  42                        INC EDX
004effed  3bd0                      CMP EDX,EAX
004effef  0f826bffffff              JC 0x004eff60
004efff5  eb4f                      JMP 0x004f0046
004efff7  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004efffd  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004f0003  85c9                      TEST ECX,ECX
004f0005  741e                      JZ 0x004f0025
004f0007  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
004f000d  81c1cc030000              ADD ECX,0x3cc
004f0013  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004f0019  50                        PUSH EAX
004f001a  e8f1f1fdff                CALL 0x004cf210
004f001f  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004f0025  50                        PUSH EAX
004f0026  8bce                      MOV ECX,ESI
004f0028  8930                      MOV dword ptr [EAX],ESI
004f002a  e8c1dcfdff                CALL 0x004cdcf0
004f002f  e82cef1f00                CALL 0x006eef60
004f0034  33d2                      XOR EDX,EDX
004f0036  b90f000000                MOV ECX,0xf
004f003b  f7f1                      DIV ECX
004f003d  83c21e                    ADD EDX,0x1e
004f0040  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
004f0046  8d4dd4                    LEA ECX,[EBP + -0x2c]
004f0049  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004f0050  e85b75f2ff                CALL 0x004175b0
004f0055  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
004f005b  8d8f14040000              LEA ECX,[EDI + 0x414]
004f0061  85f6                      TEST ESI,ESI
004f0063  7440                      JZ 0x004f00a5
004f0065  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
004f006b  8b9640030000              MOV EDX,dword ptr [ESI + 0x340]
004f0071  8985b8feffff              MOV dword ptr [EBP + 0xfffffeb8],EAX
004f0077  8995bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EDX
004f007d  6a00                      PUSH 0x0
004f007f  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004f0085  50                        PUSH EAX
004f0086  e8b5482f00                CALL 0x007e4940
004f008b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f0093  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004f009b  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f00a3  eb33                      JMP 0x004f00d8
004f00a5  6a01                      PUSH 0x1
004f00a7  6884030000                PUSH 0x384
004f00ac  83ec08                    SUB ESP,0x8
004f00af  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004f00b5  8bcf                      MOV ECX,EDI
004f00b7  c74424040000403f          MOV dword ptr [ESP + 0x4],0x3f400000
004f00bf  c7042400000000            MOV dword ptr [ESP],0x0
004f00c6  50                        PUSH EAX
004f00c7  e874eb1c00                CALL 0x006bec40
004f00cc  50                        PUSH EAX
004f00cd  8d8f14040000              LEA ECX,[EDI + 0x414]
004f00d3  e8e8322f00                CALL 0x007e33c0
004f00d8  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f00e0  f30f590538a4ba00          MULSS XMM0,dword ptr [0x00baa438]
004f00e8  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f00f0  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004f00f8  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004f0100  f30f59c0                  MULSS XMM0,XMM0
004f0104  f30f59c9                  MULSS XMM1,XMM1
004f0108  f30f58c1                  ADDSS XMM0,XMM1
004f010c  e83f59f4ff                CALL 0x00435a50
004f0111  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
004f0119  0f2fc8                    COMISS XMM1,XMM0
004f011c  7612                      JBE 0x004f0130
004f011e  6a00                      PUSH 0x0
004f0120  ff350c0bb600              PUSH dword ptr [0x00b60b0c]
004f0126  8d4f48                    LEA ECX,[EDI + 0x48]
004f0129  e8b2a5f1ff                CALL 0x0040a6e0
004f012e  eb1c                      JMP 0x004f014c
004f0130  8d8f60030000              LEA ECX,[EDI + 0x360]
004f0136  e825f11800                CALL 0x0067f260
004f013b  6a00                      PUSH 0x0
004f013d  8d4f48                    LEA ECX,[EDI + 0x48]
004f0140  ff3485000bb600            PUSH dword ptr [EAX*0x4 + 0xb60b00]
004f0147  e834a2f1ff                CALL 0x0040a380
004f014c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f0150  0f84aa190000              JZ 0x004f1b00
004f0156  68a009b600                PUSH 0xb609a0
004f015b  8d4f78                    LEA ECX,[EDI + 0x78]
004f015e  e86dacf1ff                CALL 0x0040add0
004f0163  e998190000                JMP 0x004f1b00
004f0168  6a00                      PUSH 0x0
004f016a  83c8ff                    OR EAX,0xffffffff
004f016d  be03000000                MOV ESI,0x3
004f0172  6800080001                PUSH 0x1000800
004f0177  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
004f017d  e8ae72f2ff                CALL 0x00417430
004f0182  84c0                      TEST AL,AL
004f0184  7469                      JZ 0x004f01ef
004f0186  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004f018d  7560                      JNZ 0x004f01ef
004f018f  8bcf                      MOV ECX,EDI
004f0191  e8aae61c00                CALL 0x006be840
004f0196  6a00                      PUSH 0x0
004f0198  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
004f019e  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004f01a4  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
004f01aa  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004f01b0  898db8feffff              MOV dword ptr [EBP + 0xfffffeb8],ECX
004f01b6  8d8f14040000              LEA ECX,[EDI + 0x414]
004f01bc  50                        PUSH EAX
004f01bd  e87e472f00                CALL 0x007e4940
004f01c2  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f01ca  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004f01d2  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f01da  f30f590538a4ba00          MULSS XMM0,dword ptr [0x00baa438]
004f01e2  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f01ea  e9a90e0000                JMP 0x004f1098
004f01ef  51                        PUSH ECX
004f01f0  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004f01f6  c7042400000000            MOV dword ptr [ESP],0x0
004f01fd  50                        PUSH EAX
004f01fe  8bcf                      MOV ECX,EDI
004f0200  e83bea1c00                CALL 0x006bec40
004f0205  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
004f020c  0f8ea4000000              JLE 0x004f02b6
004f0212  a17816c700                MOV EAX,[0x00c71678]
004f0217  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
004f021f  f30f11858cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM0
004f0227  f30f118584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM0
004f022f  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004f0235  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
004f023b  660f6ec0                  MOVD XMM0,EAX
004f023f  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f0242  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
004f024a  f30f5e0554a8ba00          DIVSS XMM0,dword ptr [0x00baa854]
004f0252  e8c9d2f2ff                CALL 0x0041d520
004f0257  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
004f025f  8db7c0030000              LEA ESI,[EDI + 0x3c0]
004f0265  8b0e                      MOV ECX,dword ptr [ESI]
004f0267  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
004f026f  f30f118580feffff          MOVSS dword ptr [EBP + 0xfffffe80],XMM0
004f0277  85c9                      TEST ECX,ECX
004f0279  7418                      JZ 0x004f0293
004f027b  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
004f0281  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
004f0287  81c1cc030000              ADD ECX,0x3cc
004f028d  50                        PUSH EAX
004f028e  e87deffdff                CALL 0x004cf210
004f0293  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
004f029b  f30f108db8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb8]
004f02a3  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004f02ab  c70600000000              MOV dword ptr [ESI],0x0
004f02b1  e9cf020000                JMP 0x004f0585
004f02b6  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
004f02bc  8bc6                      MOV EAX,ESI
004f02be  85f6                      TEST ESI,ESI
004f02c0  7440                      JZ 0x004f0302
004f02c2  8bce                      MOV ECX,ESI
004f02c4  e867c21b00                CALL 0x006ac530
004f02c9  84c0                      TEST AL,AL
004f02cb  740b                      JZ 0x004f02d8
004f02cd  83be640b000010            CMP dword ptr [ESI + 0xb64],0x10
004f02d4  8bc6                      MOV EAX,ESI
004f02d6  752a                      JNZ 0x004f0302
004f02d8  8d87c0030000              LEA EAX,[EDI + 0x3c0]
004f02de  8985d8feffff              MOV dword ptr [EBP + 0xfffffed8],EAX
004f02e4  8d8ecc030000              LEA ECX,[ESI + 0x3cc]
004f02ea  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
004f02f0  50                        PUSH EAX
004f02f1  e81aeffdff                CALL 0x004cf210
004f02f6  c787c003000000000000      MOV dword ptr [EDI + 0x3c0],0x0
004f0300  eb08                      JMP 0x004f030a
004f0302  85c0                      TEST EAX,EAX
004f0304  0f853b020000              JNZ 0x004f0545
004f030a  6aff                      PUSH -0x1
004f030c  6879030000                PUSH 0x379
004f0311  8d45d4                    LEA EAX,[EBP + -0x2c]
004f0314  c785dcfeffff00000000      MOV dword ptr [EBP + 0xfffffedc],0x0
004f031e  0f57c0                    XORPS XMM0,XMM0
004f0321  8bcf                      MOV ECX,EDI
004f0323  50                        PUSH EAX
004f0324  f30f1185a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM0
004f032c  e82f091e00                CALL 0x006d0c60
004f0331  33c0                      XOR EAX,EAX
004f0333  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004f033a  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
004f0340  3945e0                    CMP dword ptr [EBP + -0x20],EAX
004f0343  0f8665010000              JBE 0x004f04ae
004f0349  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
004f034c  0f1f4000                  NOP dword ptr [EAX]
004f0350  8b3481                    MOV ESI,dword ptr [ECX + EAX*0x4]
004f0353  85f6                      TEST ESI,ESI
004f0355  0f8401010000              JZ 0x004f045c
004f035b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f0361  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
004f0368  7c06                      JL 0x004f0370
004f036a  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004f036e  7417                      JZ 0x004f0387
004f0370  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004f0373  83e80a                    SUB EAX,0xa
004f0376  3ddd030000                CMP EAX,0x3dd
004f037b  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
004f0381  0f87d2000000              JA 0x004f0459
004f0387  3bf7                      CMP ESI,EDI
004f0389  0f84ca000000              JZ 0x004f0459
004f038f  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
004f0395  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
004f039b  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
004f03a1  8bc1                      MOV EAX,ECX
004f03a3  2500000020                AND EAX,0x20000000
004f03a8  83c800                    OR EAX,0x0
004f03ab  7404                      JZ 0x004f03b1
004f03ad  b101                      MOV CL,0x1
004f03af  eb02                      JMP 0x004f03b3
004f03b1  32c9                      XOR CL,CL
004f03b3  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004f03b9  2500000020                AND EAX,0x20000000
004f03be  83c800                    OR EAX,0x0
004f03c1  7404                      JZ 0x004f03c7
004f03c3  b001                      MOV AL,0x1
004f03c5  eb02                      JMP 0x004f03c9
004f03c7  32c0                      XOR AL,AL
004f03c9  3ac8                      CMP CL,AL
004f03cb  0f8582000000              JNZ 0x004f0453
004f03d1  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
004f03d7  3b87bc030000              CMP EAX,dword ptr [EDI + 0x3bc]
004f03dd  7574                      JNZ 0x004f0453
004f03df  83be640b000010            CMP dword ptr [ESI + 0xb64],0x10
004f03e6  746b                      JZ 0x004f0453
004f03e8  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004f03f0  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004f03f8  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004f0400  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004f0408  f30f59c0                  MULSS XMM0,XMM0
004f040c  f30f59c9                  MULSS XMM1,XMM1
004f0410  f30f58c1                  ADDSS XMM0,XMM1
004f0414  e83756f4ff                CALL 0x00435a50
004f0419  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004f041f  83e010                    AND EAX,0x10
004f0422  83c800                    OR EAX,0x0
004f0425  7408                      JZ 0x004f042f
004f0427  f30f590520a0ba00          MULSS XMM0,dword ptr [0x00baa020]
004f042f  0f2f85a0feffff            COMISS XMM0,dword ptr [EBP + 0xfffffea0]
004f0436  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
004f043c  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
004f043f  761b                      JBE 0x004f045c
004f0441  8bd6                      MOV EDX,ESI
004f0443  f30f1185a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM0
004f044b  8995dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDX
004f0451  eb0f                      JMP 0x004f0462
004f0453  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
004f0459  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
004f045c  8b95dcfeffff              MOV EDX,dword ptr [EBP + 0xfffffedc]
004f0462  40                        INC EAX
004f0463  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
004f0469  3b45e0                    CMP EAX,dword ptr [EBP + -0x20]
004f046c  0f82defeffff              JC 0x004f0350
004f0472  85d2                      TEST EDX,EDX
004f0474  7438                      JZ 0x004f04ae
004f0476  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
004f047c  8db7c0030000              LEA ESI,[EDI + 0x3c0]
004f0482  85c9                      TEST ECX,ECX
004f0484  741e                      JZ 0x004f04a4
004f0486  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
004f048c  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
004f0492  81c1cc030000              ADD ECX,0x3cc
004f0498  50                        PUSH EAX
004f0499  e872edfdff                CALL 0x004cf210
004f049e  8b95dcfeffff              MOV EDX,dword ptr [EBP + 0xfffffedc]
004f04a4  56                        PUSH ESI
004f04a5  8bca                      MOV ECX,EDX
004f04a7  8916                      MOV dword ptr [ESI],EDX
004f04a9  e842d8fdff                CALL 0x004cdcf0
004f04ae  8d4dd4                    LEA ECX,[EBP + -0x2c]
004f04b1  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004f04b8  e8f370f2ff                CALL 0x004175b0
004f04bd  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004f04c3  85c0                      TEST EAX,EAX
004f04c5  0f857a000000              JNZ 0x004f0545
004f04cb  a17816c700                MOV EAX,[0x00c71678]
004f04d0  f30f1005d0a9ba00          MOVSS XMM0,dword ptr [0x00baa9d0]
004f04d8  f30f11858cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM0
004f04e0  f30f118584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM0
004f04e8  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004f04ee  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
004f04f4  660f6ec0                  MOVD XMM0,EAX
004f04f8  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f04fb  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
004f0503  f30f5e0554a8ba00          DIVSS XMM0,dword ptr [0x00baa854]
004f050b  e810d0f2ff                CALL 0x0041d520
004f0510  f30f108db8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb8]
004f0518  0f28d0                    MOVAPS XMM2,XMM0
004f051b  f30f591504a9ba00          MULSS XMM2,dword ptr [0x00baa904]
004f0523  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
004f052b  f30f5815d0a9ba00          ADDSS XMM2,dword ptr [0x00baa9d0]
004f0533  f30f119580feffff          MOVSS dword ptr [EBP + 0xfffffe80],XMM2
004f053b  f30f1015d0a9ba00          MOVSS XMM2,dword ptr [0x00baa9d0]
004f0543  eb40                      JMP 0x004f0585
004f0545  f30f10157ca8ba00          MOVSS XMM2,dword ptr [0x00baa87c]
004f054d  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004f0555  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004f055d  f30f118db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM1
004f0565  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
004f056d  f30f11958cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM2
004f0575  f30f119584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM2
004f057d  f30f119580feffff          MOVSS dword ptr [EBP + 0xfffffe80],XMM2
004f0585  f30f109f3c030000          MOVSS XMM3,dword ptr [EDI + 0x33c]
004f058d  b894c7c500                MOV EAX,0xc5c794
004f0592  f30f10a740030000          MOVSS XMM4,dword ptr [EDI + 0x340]
004f059a  f30f5cd9                  SUBSS XMM3,XMM1
004f059e  f30f5ce0                  SUBSS XMM4,XMM0
004f05a2  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004f05aa  f30f100534acba00          MOVSS XMM0,dword ptr [0x00baac34]
004f05b2  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
004f05ba  0f57c0                    XORPS XMM0,XMM0
004f05bd  f30f118d94feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM1
004f05c5  f30f119d9cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM3
004f05cd  f30f11a5ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM4
004f05d5  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
004f05dd  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
004f05e5  898590feffff              MOV dword ptr [EBP + 0xfffffe90],EAX
004f05eb  c785d8feffff04000000      MOV dword ptr [EBP + 0xfffffed8],0x4
004f05f5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
004f0600  f30f5918                  MULSS XMM3,dword ptr [EAX]
004f0604  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
004f060a  8db584feffff              LEA ESI,[EBP + 0xfffffe84]
004f0610  0f28cc                    MOVAPS XMM1,XMM4
004f0613  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
004f0618  50                        PUSH EAX
004f0619  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004f061f  50                        PUSH EAX
004f0620  f30f58cb                  ADDSS XMM1,XMM3
004f0624  8d45dc                    LEA EAX,[EBP + -0x24]
004f0627  50                        PUSH EAX
004f0628  a17816c700                MOV EAX,[0x00c71678]
004f062d  0f2fd1                    COMISS XMM2,XMM1
004f0630  f30f118d88feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM1
004f0638  0f46f1                    CMOVBE ESI,ECX
004f063b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f0641  e8fa043000                CALL 0x007f0b40
004f0646  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004f064a  f30f5c8d94feffff          SUBSS XMM1,dword ptr [EBP + 0xfffffe94]
004f0652  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004f0657  f30f5c95d4feffff          SUBSS XMM2,dword ptr [EBP + 0xfffffed4]
004f065f  0f28c1                    MOVAPS XMM0,XMM1
004f0662  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
004f066a  f30f59c1                  MULSS XMM0,XMM1
004f066e  0f28ca                    MOVAPS XMM1,XMM2
004f0671  f30f1195a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM2
004f0679  f30f59ca                  MULSS XMM1,XMM2
004f067d  f30f58c1                  ADDSS XMM0,XMM1
004f0681  e8ca53f4ff                CALL 0x00435a50
004f0686  f30f10958cfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe8c]
004f068e  0f2fc2                    COMISS XMM0,XMM2
004f0691  0f82d7000000              JC 0x004f076e
004f0697  f30f108d80feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe80]
004f069f  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004f06a3  f30f109da0feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffea0]
004f06ab  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
004f06b3  f30f580e                  ADDSS XMM1,dword ptr [ESI]
004f06b7  0f2fc1                    COMISS XMM0,XMM1
004f06ba  761e                      JBE 0x004f06da
004f06bc  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004f06c3  7615                      JBE 0x004f06da
004f06c5  f30f5ec8                  DIVSS XMM1,XMM0
004f06c9  0f28c1                    MOVAPS XMM0,XMM1
004f06cc  f30f59d9                  MULSS XMM3,XMM1
004f06d0  f30f5985dcfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffedc]
004f06d8  eb08                      JMP 0x004f06e2
004f06da  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
004f06e2  f30f588594feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe94]
004f06ea  f30f1095d4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed4]
004f06f2  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004f06fa  f30f58d3                  ADDSS XMM2,XMM3
004f06fe  f30f5cc8                  SUBSS XMM1,XMM0
004f0702  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
004f070a  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004f0712  f30f5cc2                  SUBSS XMM0,XMM2
004f0716  f30f119588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM2
004f071e  f30f59c9                  MULSS XMM1,XMM1
004f0722  f30f59c0                  MULSS XMM0,XMM0
004f0726  f30f58c1                  ADDSS XMM0,XMM1
004f072a  e82153f4ff                CALL 0x00435a50
004f072f  f30f108d78feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe78]
004f0737  0f2fc8                    COMISS XMM1,XMM0
004f073a  f30f10958cfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe8c]
004f0742  762a                      JBE 0x004f076e
004f0744  f30f108d88feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe88]
004f074c  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
004f0754  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
004f075c  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
004f0764  f30f118dacfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM1
004f076c  eb10                      JMP 0x004f077e
004f076e  f30f108dacfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeac]
004f0776  f30f1085a8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea8]
004f077e  8b8590feffff              MOV EAX,dword ptr [EBP + 0xfffffe90]
004f0784  f30f109d9cfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe9c]
004f078c  83c008                    ADD EAX,0x8
004f078f  83add8feffff01            SUB dword ptr [EBP + 0xfffffed8],0x1
004f0796  f30f10a5ccfeffff          MOVSS XMM4,dword ptr [EBP + 0xfffffecc]
004f079e  898590feffff              MOV dword ptr [EBP + 0xfffffe90],EAX
004f07a4  0f8556feffff              JNZ 0x004f0600
004f07aa  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004f07b1  9f                        LAHF
004f07b2  f6c444                    TEST AH,0x44
004f07b5  0f8a88000000              JP 0x004f0843
004f07bb  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
004f07c2  9f                        LAHF
004f07c3  f6c444                    TEST AH,0x44
004f07c6  7a7b                      JP 0x004f0843
004f07c8  f30f10a594feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe94]
004f07d0  8d973c030000              LEA EDX,[EDI + 0x33c]
004f07d6  f30f109dd4feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffed4]
004f07de  33c0                      XOR EAX,EAX
004f07e0  f30f11a5a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM4
004f07e8  0f57c0                    XORPS XMM0,XMM0
004f07eb  f30f5c22                  SUBSS XMM4,dword ptr [EDX]
004f07ef  f30f119dacfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM3
004f07f7  f30f5c5a04                SUBSS XMM3,dword ptr [EDX + 0x4]
004f07fc  0f28d4                    MOVAPS XMM2,XMM4
004f07ff  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004f0806  0f28cb                    MOVAPS XMM1,XMM3
004f0809  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004f0810  0f2fd1                    COMISS XMM2,XMM1
004f0813  7616                      JBE 0x004f082b
004f0815  0f2fc4                    COMISS XMM0,XMM4
004f0818  b902000000                MOV ECX,0x2
004f081d  0f47c8                    CMOVA ECX,EAX
004f0820  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
004f0826  e994010000                JMP 0x004f09bf
004f082b  0f2fc3                    COMISS XMM0,XMM3
004f082e  0f96c0                    SETBE AL
004f0831  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
004f0838  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
004f083e  e97c010000                JMP 0x004f09bf
004f0843  f30f10a594feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe94]
004f084b  0f57c0                    XORPS XMM0,XMM0
004f084e  f30f109dd4feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffed4]
004f0856  f30f5ca73c030000          SUBSS XMM4,dword ptr [EDI + 0x33c]
004f085e  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
004f0866  0f28d4                    MOVAPS XMM2,XMM4
004f0869  f30f11a594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM4
004f0871  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004f0878  0f28cb                    MOVAPS XMM1,XMM3
004f087b  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004f0882  0f2fd1                    COMISS XMM2,XMM1
004f0885  f30f119dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM3
004f088d  f30f11a5b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM4
004f0895  f30f119dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM3
004f089d  760f                      JBE 0x004f08ae
004f089f  33c9                      XOR ECX,ECX
004f08a1  b802000000                MOV EAX,0x2
004f08a6  0f2fc4                    COMISS XMM0,XMM4
004f08a9  0f47c1                    CMOVA EAX,ECX
004f08ac  eb0f                      JMP 0x004f08bd
004f08ae  33c0                      XOR EAX,EAX
004f08b0  0f2fc3                    COMISS XMM0,XMM3
004f08b3  0f96c0                    SETBE AL
004f08b6  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
004f08bd  8bd0                      MOV EDX,EAX
004f08bf  8985d8feffff              MOV dword ptr [EBP + 0xfffffed8],EAX
004f08c5  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
004f08cb  e800e91800                CALL 0x0067f1d0
004f08d0  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004f08d6  85c0                      TEST EAX,EAX
004f08d8  7916                      JNS 0x004f08f0
004f08da  8d8f60030000              LEA ECX,[EDI + 0x360]
004f08e0  e87be91800                CALL 0x0067f260
004f08e5  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
004f08eb  e9c9000000                JMP 0x004f09b9
004f08f0  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
004f08f6  8bce                      MOV ECX,ESI
004f08f8  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
004f08fe  85c0                      TEST EAX,EAX
004f0900  0f8eb3000000              JLE 0x004f09b9
004f0906  8d45dc                    LEA EAX,[EBP + -0x24]
004f0909  50                        PUSH EAX
004f090a  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
004f0910  e81bf75100                CALL 0x00a10030
004f0915  f30f108dccfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffecc]
004f091d  8bce                      MOV ECX,ESI
004f091f  f30f1085c8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec8]
004f0927  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
004f092d  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
004f0932  f30f5900                  MULSS XMM0,dword ptr [EAX]
004f0936  f30f58c8                  ADDSS XMM1,XMM0
004f093a  0f2f0df4a3ba00            COMISS XMM1,dword ptr [0x00baa3f4]
004f0941  7676                      JBE 0x004f09b9
004f0943  f30f108d94feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe94]
004f094b  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
004f0953  f30f59c0                  MULSS XMM0,XMM0
004f0957  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
004f095d  f30f59c9                  MULSS XMM1,XMM1
004f0961  f30f58c1                  ADDSS XMM0,XMM1
004f0965  e8e650f4ff                CALL 0x00435a50
004f096a  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
004f0972  0f2fc8                    COMISS XMM1,XMM0
004f0975  7642                      JBE 0x004f09b9
004f0977  a17816c700                MOV EAX,[0x00c71678]
004f097c  8bce                      MOV ECX,ESI
004f097e  6a00                      PUSH 0x0
004f0980  6a00                      PUSH 0x0
004f0982  6a00                      PUSH 0x0
004f0984  6a00                      PUSH 0x0
004f0986  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
004f098c  8d8da8feffff              LEA ECX,[EBP + 0xfffffea8]
004f0992  6a03                      PUSH 0x3
004f0994  51                        PUSH ECX
004f0995  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004f099b  51                        PUSH ECX
004f099c  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f09a2  e849043000                CALL 0x007f0df0
004f09a7  84c0                      TEST AL,AL
004f09a9  740e                      JZ 0x004f09b9
004f09ab  8bce                      MOV ECX,ESI
004f09ad  89b5c4feffff              MOV dword ptr [EBP + 0xfffffec4],ESI
004f09b3  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
004f09b9  8d973c030000              LEA EDX,[EDI + 0x33c]
004f09bf  a17816c700                MOV EAX,[0x00c71678]
004f09c4  8d8da8feffff              LEA ECX,[EBP + 0xfffffea8]
004f09ca  6a00                      PUSH 0x0
004f09cc  6a00                      PUSH 0x0
004f09ce  6a00                      PUSH 0x0
004f09d0  6a00                      PUSH 0x0
004f09d2  6a00                      PUSH 0x0
004f09d4  51                        PUSH ECX
004f09d5  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f09db  52                        PUSH EDX
004f09dc  e80f043000                CALL 0x007f0df0
004f09e1  84c0                      TEST AL,AL
004f09e3  0f842d010000              JZ 0x004f0b16
004f09e9  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f09f1  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004f09f9  f30f108da8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea8]
004f0a01  f30f1095acfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeac]
004f0a09  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f0a11  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004f0a19  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004f0a21  0f28c1                    MOVAPS XMM0,XMM1
004f0a24  f30f118d90feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM1
004f0a2c  f30f59c1                  MULSS XMM0,XMM1
004f0a30  0f28ca                    MOVAPS XMM1,XMM2
004f0a33  f30f59ca                  MULSS XMM1,XMM2
004f0a37  f30f1195d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM2
004f0a3f  f30f58c1                  ADDSS XMM0,XMM1
004f0a43  e80850f4ff                CALL 0x00435a50
004f0a48  f30f108d90feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe90]
004f0a50  0f28d0                    MOVAPS XMM2,XMM0
004f0a53  0f2f15e49fba00            COMISS XMM2,dword ptr [0x00ba9fe4]
004f0a5a  f30f109dd8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffed8]
004f0a62  7614                      JBE 0x004f0a78
004f0a64  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004f0a6c  f30f5ec2                  DIVSS XMM0,XMM2
004f0a70  f30f59c8                  MULSS XMM1,XMM0
004f0a74  f30f59d8                  MULSS XMM3,XMM0
004f0a78  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
004f0a80  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004f0a86  8d8d9cfeffff              LEA ECX,[EBP + 0xfffffe9c]
004f0a8c  c785ccfeffff00000040      MOV dword ptr [EBP + 0xfffffecc],0x40000000
004f0a96  f30f591de0a3ba00          MULSS XMM3,dword ptr [0x00baa3e0]
004f0a9e  0f2f1530a6ba00            COMISS XMM2,dword ptr [0x00baa630]
004f0aa5  f30f590de0a3ba00          MULSS XMM1,dword ptr [0x00baa3e0]
004f0aad  f30f11959cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM2
004f0ab5  0f46c1                    CMOVBE EAX,ECX
004f0ab8  f30f5918                  MULSS XMM3,dword ptr [EAX]
004f0abc  f30f1010                  MOVSS XMM2,dword ptr [EAX]
004f0ac0  f30f59d1                  MULSS XMM2,XMM1
004f0ac4  f30f119fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM3
004f0acc  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
004f0ad4  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
004f0adc  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004f0ae4  f30f5ed1                  DIVSS XMM2,XMM1
004f0ae8  f30f5ed9                  DIVSS XMM3,XMM1
004f0aec  f30f59d0                  MULSS XMM2,XMM0
004f0af0  f30f59d8                  MULSS XMM3,XMM0
004f0af4  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
004f0afc  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
004f0b04  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004f0b0c  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
004f0b14  eb36                      JMP 0x004f0b4c
004f0b16  6a01                      PUSH 0x1
004f0b18  6a00                      PUSH 0x0
004f0b1a  8d8f14040000              LEA ECX,[EDI + 0x414]
004f0b20  51                        PUSH ECX
004f0b21  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
004f0b27  c704246666663f            MOV dword ptr [ESP],0x3f666666
004f0b2e  50                        PUSH EAX
004f0b2f  e88c282f00                CALL 0x007e33c0
004f0b34  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
004f0b3a  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
004f0b40  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
004f0b46  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
004f0b4c  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
004f0b54  0f57d2                    XORPS XMM2,XMM2
004f0b57  8bcf                      MOV ECX,EDI
004f0b59  e802bc1b00                CALL 0x006ac760
004f0b5e  85c0                      TEST EAX,EAX
004f0b60  0f84e3030000              JZ 0x004f0f49
004f0b66  e8f5e31f00                CALL 0x006eef60
004f0b6b  83e00f                    AND EAX,0xf
004f0b6e  0f85d5030000              JNZ 0x004f0f49
004f0b74  3987bc030000              CMP dword ptr [EDI + 0x3bc],EAX
004f0b7a  0f84c9030000              JZ 0x004f0f49
004f0b80  6aff                      PUSH -0x1
004f0b82  6879030000                PUSH 0x379
004f0b87  8d45d4                    LEA EAX,[EBP + -0x2c]
004f0b8a  8bcf                      MOV ECX,EDI
004f0b8c  50                        PUSH EAX
004f0b8d  e8ce001e00                CALL 0x006d0c60
004f0b92  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004f0b99  8bcf                      MOV ECX,EDI
004f0b9b  f30f101dc8aeba00          MOVSS XMM3,dword ptr [0x00baaec8]
004f0ba3  33f6                      XOR ESI,ESI
004f0ba5  f30f119dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM3
004f0bad  e88edc1c00                CALL 0x006be840
004f0bb2  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004f0bba  f30f118588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM0
004f0bc2  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004f0bca  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004f0bd2  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004f0bda  f30f5cd0                  SUBSS XMM2,XMM0
004f0bde  0f28c1                    MOVAPS XMM0,XMM1
004f0be1  f30f118d9cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM1
004f0be9  f30f59c1                  MULSS XMM0,XMM1
004f0bed  0f28ca                    MOVAPS XMM1,XMM2
004f0bf0  f30f1195ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM2
004f0bf8  f30f59ca                  MULSS XMM1,XMM2
004f0bfc  f30f58c1                  ADDSS XMM0,XMM1
004f0c00  e84b4ef4ff                CALL 0x00435a50
004f0c05  33d2                      XOR EDX,EDX
004f0c07  0f28f0                    MOVAPS XMM6,XMM0
004f0c0a  3955e0                    CMP dword ptr [EBP + -0x20],EDX
004f0c0d  0f8627030000              JBE 0x004f0f3a
004f0c13  f30f10a5ccfeffff          MOVSS XMM4,dword ptr [EBP + 0xfffffecc]
004f0c1b  f30f10ad9cfeffff          MOVSS XMM5,dword ptr [EBP + 0xfffffe9c]
004f0c23  f30f10bd88feffff          MOVSS XMM7,dword ptr [EBP + 0xfffffe88]
004f0c2b  8b45d8                    MOV EAX,dword ptr [EBP + -0x28]
004f0c2e  6690                      NOP
004f0c30  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
004f0c33  85c9                      TEST ECX,ECX
004f0c35  0f848c000000              JZ 0x004f0cc7
004f0c3b  a17816c700                MOV EAX,[0x00c71678]
004f0c40  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004f0c47  7c06                      JL 0x004f0c4f
004f0c49  83792801                  CMP dword ptr [ECX + 0x28],0x1
004f0c4d  740d                      JZ 0x004f0c5c
004f0c4f  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
004f0c52  83e80a                    SUB EAX,0xa
004f0c55  3ddd030000                CMP EAX,0x3dd
004f0c5a  7768                      JA 0x004f0cc4
004f0c5c  3bcf                      CMP ECX,EDI
004f0c5e  7464                      JZ 0x004f0cc4
004f0c60  8b81bc030000              MOV EAX,dword ptr [ECX + 0x3bc]
004f0c66  3b87bc030000              CMP EAX,dword ptr [EDI + 0x3bc]
004f0c6c  7556                      JNZ 0x004f0cc4
004f0c6e  83b9640b000010            CMP dword ptr [ECX + 0xb64],0x10
004f0c75  744d                      JZ 0x004f0cc4
004f0c77  f30f10993c030000          MOVSS XMM3,dword ptr [ECX + 0x33c]
004f0c7f  0f28cc                    MOVAPS XMM1,XMM4
004f0c82  f30f109140030000          MOVSS XMM2,dword ptr [ECX + 0x340]
004f0c8a  f30f5cdf                  SUBSS XMM3,XMM7
004f0c8e  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004f0c96  0f28c5                    MOVAPS XMM0,XMM5
004f0c99  f30f5ece                  DIVSS XMM1,XMM6
004f0c9d  f30f5ec6                  DIVSS XMM0,XMM6
004f0ca1  f30f59d9                  MULSS XMM3,XMM1
004f0ca5  f30f59d0                  MULSS XMM2,XMM0
004f0ca9  f30f58da                  ADDSS XMM3,XMM2
004f0cad  0f2f9dd8feffff            COMISS XMM3,dword ptr [EBP + 0xfffffed8]
004f0cb4  7704                      JA 0x004f0cba
004f0cb6  85f6                      TEST ESI,ESI
004f0cb8  750a                      JNZ 0x004f0cc4
004f0cba  f30f119dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM3
004f0cc2  8bf1                      MOV ESI,ECX
004f0cc4  8b45d8                    MOV EAX,dword ptr [EBP + -0x28]
004f0cc7  42                        INC EDX
004f0cc8  3b55e0                    CMP EDX,dword ptr [EBP + -0x20]
004f0ccb  0f825fffffff              JC 0x004f0c30
004f0cd1  89b590feffff              MOV dword ptr [EBP + 0xfffffe90],ESI
004f0cd7  85f6                      TEST ESI,ESI
004f0cd9  0f845b020000              JZ 0x004f0f3a
004f0cdf  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004f0ce5  05bc030000                ADD EAX,0x3bc
004f0cea  89859cfeffff              MOV dword ptr [EBP + 0xfffffe9c],EAX
004f0cf0  8b08                      MOV ECX,dword ptr [EAX]
004f0cf2  85c9                      TEST ECX,ECX
004f0cf4  741e                      JZ 0x004f0d14
004f0cf6  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
004f0cfc  81c1cc030000              ADD ECX,0x3cc
004f0d02  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004f0d08  50                        PUSH EAX
004f0d09  e802e5fdff                CALL 0x004cf210
004f0d0e  8b859cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe9c]
004f0d14  50                        PUSH EAX
004f0d15  8bce                      MOV ECX,ESI
004f0d17  8930                      MOV dword ptr [EAX],ESI
004f0d19  e8d2cffdff                CALL 0x004cdcf0
004f0d1e  6a00                      PUSH 0x0
004f0d20  8d4f48                    LEA ECX,[EDI + 0x48]
004f0d23  c787640b00000e000000      MOV dword ptr [EDI + 0xb64],0xe
004f0d2d  68ac09b600                PUSH 0xb609ac
004f0d32  e84996f1ff                CALL 0x0040a380
004f0d37  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004f0d3d  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
004f0d43  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f0d49  898734030000              MOV dword ptr [EDI + 0x334],EAX
004f0d4f  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004f0d55  898738030000              MOV dword ptr [EDI + 0x338],EAX
004f0d5b  c785d8feffff3c010000      MOV dword ptr [EBP + 0xfffffed8],0x13c
004f0d65  e8165a4600                CALL 0x00956780
004f0d6a  83ec08                    SUB ESP,0x8
004f0d6d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f0d73  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f0d7b  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
004f0d82  6a00                      PUSH 0x0
004f0d84  6a02                      PUSH 0x2
004f0d86  51                        PUSH ECX
004f0d87  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f0d8e  ffb5d8feffff              PUSH dword ptr [EBP + 0xfffffed8]
004f0d94  e897ce4300                CALL 0x0092dc30
004f0d99  8bcf                      MOV ECX,EDI
004f0d9b  e8d069f5ff                CALL 0x00447770
004f0da0  83b8ec0b000000            CMP dword ptr [EAX + 0xbec],0x0
004f0da7  7412                      JZ 0x004f0dbb
004f0da9  8bcf                      MOV ECX,EDI
004f0dab  e8c069f5ff                CALL 0x00447770
004f0db0  8b88ec0b0000              MOV ECX,dword ptr [EAX + 0xbec]
004f0db6  8b01                      MOV EAX,dword ptr [ECX]
004f0db8  ff5028                    CALL dword ptr [EAX + 0x28]
004f0dbb  e8a0e11f00                CALL 0x006eef60
004f0dc0  8bb590feffff              MOV ESI,dword ptr [EBP + 0xfffffe90]
004f0dc6  50                        PUSH EAX
004f0dc7  6a00                      PUSH 0x0
004f0dc9  57                        PUSH EDI
004f0dca  8b8e3c030000              MOV ECX,dword ptr [ESI + 0x33c]
004f0dd0  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004f0dd6  8b9640030000              MOV EDX,dword ptr [ESI + 0x340]
004f0ddc  6840b6c700                PUSH 0xc7b640
004f0de1  50                        PUSH EAX
004f0de2  68af000000                PUSH 0xaf
004f0de7  898db8feffff              MOV dword ptr [EBP + 0xfffffeb8],ECX
004f0ded  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f0df3  68e8030000                PUSH 0x3e8
004f0df8  8995bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EDX
004f0dfe  e81d7df3ff                CALL 0x00428b20
004f0e03  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
004f0e0b  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
004f0e13  f30f100d44a2ba00          MOVSS XMM1,dword ptr [0x00baa244]
004f0e1b  8b08                      MOV ECX,dword ptr [EAX]
004f0e1d  51                        PUSH ECX
004f0e1e  8985a0feffff              MOV dword ptr [EBP + 0xfffffea0],EAX
004f0e24  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004f0e2b  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
004f0e2e  8d4d8c                    LEA ECX,[EBP + -0x74]
004f0e31  e8ba2af3ff                CALL 0x004238f0
004f0e36  8b8da0feffff              MOV ECX,dword ptr [EBP + 0xfffffea0]
004f0e3c  6a01                      PUSH 0x1
004f0e3e  6a00                      PUSH 0x0
004f0e40  68ff000000                PUSH 0xff
004f0e45  6aff                      PUSH -0x1
004f0e47  50                        PUSH EAX
004f0e48  ffd2                      CALL EDX
004f0e4a  8b85a0feffff              MOV EAX,dword ptr [EBP + 0xfffffea0]
004f0e50  05c4030000                ADD EAX,0x3c4
004f0e55  89859cfeffff              MOV dword ptr [EBP + 0xfffffe9c],EAX
004f0e5b  8b08                      MOV ECX,dword ptr [EAX]
004f0e5d  85c9                      TEST ECX,ECX
004f0e5f  741e                      JZ 0x004f0e7f
004f0e61  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
004f0e67  81c1cc030000              ADD ECX,0x3cc
004f0e6d  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004f0e73  50                        PUSH EAX
004f0e74  e897e3fdff                CALL 0x004cf210
004f0e79  8b859cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe9c]
004f0e7f  50                        PUSH EAX
004f0e80  8bce                      MOV ECX,ESI
004f0e82  8930                      MOV dword ptr [EAX],ESI
004f0e84  e867cefdff                CALL 0x004cdcf0
004f0e89  8bb5a0feffff              MOV ESI,dword ptr [EBP + 0xfffffea0]
004f0e8f  8b96bc030000              MOV EDX,dword ptr [ESI + 0x3bc]
004f0e95  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004f0e9b  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
004f0ea1  898d9cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ECX
004f0ea7  85d2                      TEST EDX,EDX
004f0ea9  7424                      JZ 0x004f0ecf
004f0eab  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
004f0eb1  8d8acc030000              LEA ECX,[EDX + 0x3cc]
004f0eb7  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004f0ebd  50                        PUSH EAX
004f0ebe  e84de3fdff                CALL 0x004cf210
004f0ec3  8b8d9cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe9c]
004f0ec9  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004f0ecf  8908                      MOV dword ptr [EAX],ECX
004f0ed1  85c9                      TEST ECX,ECX
004f0ed3  7406                      JZ 0x004f0edb
004f0ed5  50                        PUSH EAX
004f0ed6  e815cefdff                CALL 0x004cdcf0
004f0edb  8b06                      MOV EAX,dword ptr [ESI]
004f0edd  8bce                      MOV ECX,ESI
004f0edf  ff500c                    CALL dword ptr [EAX + 0xc]
004f0ee2  8bcf                      MOV ECX,EDI
004f0ee4  e88768f5ff                CALL 0x00447770
004f0ee9  8b88ec0b0000              MOV ECX,dword ptr [EAX + 0xbec]
004f0eef  05ec0b0000                ADD EAX,0xbec
004f0ef4  89859cfeffff              MOV dword ptr [EBP + 0xfffffe9c],EAX
004f0efa  85c9                      TEST ECX,ECX
004f0efc  741e                      JZ 0x004f0f1c
004f0efe  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
004f0f04  81c1cc030000              ADD ECX,0x3cc
004f0f0a  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004f0f10  50                        PUSH EAX
004f0f11  e8fae2fdff                CALL 0x004cf210
004f0f16  8b859cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe9c]
004f0f1c  50                        PUSH EAX
004f0f1d  8bce                      MOV ECX,ESI
004f0f1f  8930                      MOV dword ptr [EAX],ESI
004f0f21  e8cacdfdff                CALL 0x004cdcf0
004f0f26  8d4dd4                    LEA ECX,[EBP + -0x2c]
004f0f29  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004f0f30  e87b66f2ff                CALL 0x004175b0
004f0f35  e9c60b0000                JMP 0x004f1b00
004f0f3a  8d4dd4                    LEA ECX,[EBP + -0x2c]
004f0f3d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004f0f44  e86766f2ff                CALL 0x004175b0
004f0f49  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f0f51  f30f590538a4ba00          MULSS XMM0,dword ptr [0x00baa438]
004f0f59  8b85c4feffff              MOV EAX,dword ptr [EBP + 0xfffffec4]
004f0f5f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f0f67  83f8ff                    CMP EAX,-0x1
004f0f6a  0f8422010000              JZ 0x004f1092
004f0f70  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004f0f77  0f8f15010000              JG 0x004f1092
004f0f7d  8bd0                      MOV EDX,EAX
004f0f7f  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
004f0f85  e846e21800                CALL 0x0067f1d0
004f0f8a  f30f1085b8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb8]
004f0f92  8d8de0feffff              LEA ECX,[EBP + 0xfffffee0]
004f0f98  f30f590504a8ba00          MULSS XMM0,dword ptr [0x00baa804]
004f0fa0  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
004f0fa8  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
004f0fb0  f30f590504a8ba00          MULSS XMM0,dword ptr [0x00baa804]
004f0fb8  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
004f0fc0  e86bdff4ff                CALL 0x0043ef30
004f0fc5  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
004f0fcb  c78574ffffff01000000      MOV dword ptr [EBP + 0xffffff74],0x1
004f0fd5  50                        PUSH EAX
004f0fd6  6a00                      PUSH 0x0
004f0fd8  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
004f0fde  8bcf                      MOV ECX,EDI
004f0fe0  50                        PUSH EAX
004f0fe1  8d873c030000              LEA EAX,[EDI + 0x33c]
004f0fe7  50                        PUSH EAX
004f0fe8  e8f3a21d00                CALL 0x006cb2e0
004f0fed  8bcf                      MOV ECX,EDI
004f0fef  e87c67f5ff                CALL 0x00447770
004f0ff4  85c0                      TEST EAX,EAX
004f0ff6  7415                      JZ 0x004f100d
004f0ff8  8bcf                      MOV ECX,EDI
004f0ffa  e87167f5ff                CALL 0x00447770
004f0fff  83b8c00b000001            CMP dword ptr [EAX + 0xbc0],0x1
004f1006  b80a000000                MOV EAX,0xa
004f100b  7405                      JZ 0x004f1012
004f100d  b80f000000                MOV EAX,0xf
004f1012  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004f1018  b9c4ffffff                MOV ECX,0xffffffc4
004f101d  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004f1023  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f1029  48                        DEC EAX
004f102a  85c0                      TEST EAX,EAX
004f102c  c785c4fefffff9000000      MOV dword ptr [EBP + 0xfffffec4],0xf9
004f1036  0f4ec1                    CMOVLE EAX,ECX
004f1039  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
004f103f  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004f1045  e836574600                CALL 0x00956780
004f104a  83ec08                    SUB ESP,0x8
004f104d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f1055  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f105c  6a00                      PUSH 0x0
004f105e  6a02                      PUSH 0x2
004f1060  51                        PUSH ECX
004f1061  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f1068  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f106e  ffb5c4feffff              PUSH dword ptr [EBP + 0xfffffec4]
004f1074  e8b7cb4300                CALL 0x0092dc30
004f1079  8bb5dcfeffff              MOV ESI,dword ptr [EBP + 0xfffffedc]
004f107f  8d4f48                    LEA ECX,[EDI + 0x48]
004f1082  6a01                      PUSH 0x1
004f1084  ff34b5300bb600            PUSH dword ptr [ESI*0x4 + 0xb60b30]
004f108b  e8b098f1ff                CALL 0x0040a940
004f1090  eb06                      JMP 0x004f1098
004f1092  8bb5dcfeffff              MOV ESI,dword ptr [EBP + 0xfffffedc]
004f1098  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
004f109e  8b957cfeffff              MOV EDX,dword ptr [EBP + 0xfffffe7c]
004f10a4  85c9                      TEST ECX,ECX
004f10a6  7e0f                      JLE 0x004f10b7
004f10a8  2bca                      SUB ECX,EDX
004f10aa  33c0                      XOR EAX,EAX
004f10ac  85c9                      TEST ECX,ECX
004f10ae  0f4fc1                    CMOVG EAX,ECX
004f10b1  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004f10b7  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004f10bd  85c0                      TEST EAX,EAX
004f10bf  7917                      JNS 0x004f10d8
004f10c1  33c9                      XOR ECX,ECX
004f10c3  03c2                      ADD EAX,EDX
004f10c5  0f48c8                    CMOVS ECX,EAX
004f10c8  b805000000                MOV EAX,0x5
004f10cd  85c9                      TEST ECX,ECX
004f10cf  0f49c8                    CMOVNS ECX,EAX
004f10d2  898fa40b0000              MOV dword ptr [EDI + 0xba4],ECX
004f10d8  8b879c000000              MOV EAX,dword ptr [EDI + 0x9c]
004f10de  85c0                      TEST EAX,EAX
004f10e0  744b                      JZ 0x004f112d
004f10e2  83781410                  CMP dword ptr [EAX + 0x14],0x10
004f10e6  7202                      JC 0x004f10ea
004f10e8  8b00                      MOV EAX,dword ptr [EAX]
004f10ea  8b0cb5300bb600            MOV ECX,dword ptr [ESI*0x4 + 0xb60b30]
004f10f1  8a10                      MOV DL,byte ptr [EAX]
004f10f3  3a11                      CMP DL,byte ptr [ECX]
004f10f5  751a                      JNZ 0x004f1111
004f10f7  84d2                      TEST DL,DL
004f10f9  7412                      JZ 0x004f110d
004f10fb  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004f10fe  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004f1101  750e                      JNZ 0x004f1111
004f1103  83c002                    ADD EAX,0x2
004f1106  83c102                    ADD ECX,0x2
004f1109  84d2                      TEST DL,DL
004f110b  75e4                      JNZ 0x004f10f1
004f110d  33c0                      XOR EAX,EAX
004f110f  eb05                      JMP 0x004f1116
004f1111  1bc0                      SBB EAX,EAX
004f1113  83c801                    OR EAX,0x1
004f1116  85c0                      TEST EAX,EAX
004f1118  743f                      JZ 0x004f1159
004f111a  6a00                      PUSH 0x0
004f111c  ff34b5300bb600            PUSH dword ptr [ESI*0x4 + 0xb60b30]
004f1123  8d4f48                    LEA ECX,[EDI + 0x48]
004f1126  e8c599f1ff                CALL 0x0040aaf0
004f112b  eb2c                      JMP 0x004f1159
004f112d  6a01                      PUSH 0x1
004f112f  ff34b5300bb600            PUSH dword ptr [ESI*0x4 + 0xb60b30]
004f1136  8d4f48                    LEA ECX,[EDI + 0x48]
004f1139  e8b299f1ff                CALL 0x0040aaf0
004f113e  84c0                      TEST AL,AL
004f1140  7417                      JZ 0x004f1159
004f1142  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004f1149  740e                      JZ 0x004f1159
004f114b  8d8f98000000              LEA ECX,[EDI + 0x98]
004f1151  0f57c9                    XORPS XMM1,XMM1
004f1154  e8a77cf1ff                CALL 0x00408e00
004f1159  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004f1161  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004f1169  f30f59c0                  MULSS XMM0,XMM0
004f116d  f30f59c9                  MULSS XMM1,XMM1
004f1171  f30f58c1                  ADDSS XMM0,XMM1
004f1175  e8d648f4ff                CALL 0x00435a50
004f117a  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
004f1182  0f2fc8                    COMISS XMM1,XMM0
004f1185  7615                      JBE 0x004f119c
004f1187  6a00                      PUSH 0x0
004f1189  ff352c0bb600              PUSH dword ptr [0x00b60b2c]
004f118f  8d4f48                    LEA ECX,[EDI + 0x48]
004f1192  e84995f1ff                CALL 0x0040a6e0
004f1197  e964090000                JMP 0x004f1b00
004f119c  8d8f60030000              LEA ECX,[EDI + 0x360]
004f11a2  e8b9e01800                CALL 0x0067f260
004f11a7  6a00                      PUSH 0x0
004f11a9  8d4f48                    LEA ECX,[EDI + 0x48]
004f11ac  ff3485200bb600            PUSH dword ptr [EAX*0x4 + 0xb60b20]
004f11b3  e8c891f1ff                CALL 0x0040a380
004f11b8  e943090000                JMP 0x004f1b00
004f11bd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f11c5  8d4f48                    LEA ECX,[EDI + 0x48]
004f11c8  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
004f11d0  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f11d8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f11dc  740d                      JZ 0x004f11eb
004f11de  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f11e5  0f8515090000              JNZ 0x004f1b00
004f11eb  6a00                      PUSH 0x0
004f11ed  688809b600                PUSH 0xb60988
004f11f2  e88991f1ff                CALL 0x0040a380
004f11f7  e904090000                JMP 0x004f1b00
004f11fc  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f1204  8d4f48                    LEA ECX,[EDI + 0x48]
004f1207  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
004f120f  68dcd2b100                PUSH 0xb1d2dc
004f1214  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f121c  e80f9ef1ff                CALL 0x0040b030
004f1221  84c0                      TEST AL,AL
004f1223  0f847a080000              JZ 0x004f1aa3
004f1229  8bcf                      MOV ECX,EDI
004f122b  e84065f5ff                CALL 0x00447770
004f1230  85c0                      TEST EAX,EAX
004f1232  0f846b080000              JZ 0x004f1aa3
004f1238  8bcf                      MOV ECX,EDI
004f123a  e83165f5ff                CALL 0x00447770
004f123f  81782899030000            CMP dword ptr [EAX + 0x28],0x399
004f1246  0f8557080000              JNZ 0x004f1aa3
004f124c  8bcf                      MOV ECX,EDI
004f124e  e81d65f5ff                CALL 0x00447770
004f1253  83b8640b000006            CMP dword ptr [EAX + 0xb64],0x6
004f125a  0f8543080000              JNZ 0x004f1aa3
004f1260  8bcf                      MOV ECX,EDI
004f1262  e80965f5ff                CALL 0x00447770
004f1267  8bcf                      MOV ECX,EDI
004f1269  c780640b000003000000      MOV dword ptr [EAX + 0xb64],0x3
004f1273  e8f864f5ff                CALL 0x00447770
004f1278  c7801004000018fcffff      MOV dword ptr [EAX + 0x410],0xfffffc18
004f1282  e91c080000                JMP 0x004f1aa3
004f1287  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f128f  8d4f48                    LEA ECX,[EDI + 0x48]
004f1292  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004f129a  68dcd2b100                PUSH 0xb1d2dc
004f129f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f12a7  e8849df1ff                CALL 0x0040b030
004f12ac  84c0                      TEST AL,AL
004f12ae  0f84a9000000              JZ 0x004f135d
004f12b4  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004f12bc  51                        PUSH ECX
004f12bd  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f12c4  6a00                      PUSH 0x0
004f12c6  6a02                      PUSH 0x2
004f12c8  6a73                      PUSH 0x73
004f12ca  e8a1511c00                CALL 0x006b6470
004f12cf  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004f12d7  51                        PUSH ECX
004f12d8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f12df  6a00                      PUSH 0x0
004f12e1  6a02                      PUSH 0x2
004f12e3  6a50                      PUSH 0x50
004f12e5  e886511c00                CALL 0x006b6470
004f12ea  8d4d8c                    LEA ECX,[EBP + -0x74]
004f12ed  e87e5ef1ff                CALL 0x00407170
004f12f2  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004f12fa  8bcf                      MOV ECX,EDI
004f12fc  50                        PUSH EAX
004f12fd  e89e531c00                CALL 0x006b66a0
004f1302  8d8de0feffff              LEA ECX,[EBP + 0xfffffee0]
004f1308  e823dcf4ff                CALL 0x0043ef30
004f130d  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
004f1313  c78574ffffff01000000      MOV dword ptr [EBP + 0xffffff74],0x1
004f131d  50                        PUSH EAX
004f131e  6a08                      PUSH 0x8
004f1320  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004f1326  c785b8feffff00002041      MOV dword ptr [EBP + 0xfffffeb8],0x41200000
004f1330  50                        PUSH EAX
004f1331  8d873c030000              LEA EAX,[EDI + 0x33c]
004f1337  c785bcfeffff00000000      MOV dword ptr [EBP + 0xfffffebc],0x0
004f1341  50                        PUSH EAX
004f1342  8bcf                      MOV ECX,EDI
004f1344  e8979f1d00                CALL 0x006cb2e0
004f1349  c787a40b0000e2ffffff      MOV dword ptr [EDI + 0xba4],0xffffffe2
004f1353  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
004f135d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f1361  740d                      JZ 0x004f1370
004f1363  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f136a  0f8590070000              JNZ 0x004f1b00
004f1370  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004f1376  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004f137c  83a768010000ee            AND dword ptr [EDI + 0x168],0xffffffee
004f1383  83a76c010000f7            AND dword ptr [EDI + 0x16c],0xfffffff7
004f138a  8b0e                      MOV ECX,dword ptr [ESI]
004f138c  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
004f1393  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
004f1396  89877c030000              MOV dword ptr [EDI + 0x37c],EAX
004f139c  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004f13a6  85c9                      TEST ECX,ECX
004f13a8  7418                      JZ 0x004f13c2
004f13aa  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004f13b0  89b5ccfeffff              MOV dword ptr [EBP + 0xfffffecc],ESI
004f13b6  50                        PUSH EAX
004f13b7  81c1cc030000              ADD ECX,0x3cc
004f13bd  e84edefdff                CALL 0x004cf210
004f13c2  c70600000000              MOV dword ptr [ESI],0x0
004f13c8  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004f13d2  e929070000                JMP 0x004f1b00
004f13d7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f13df  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004f13e7  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004f13ed  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f13f5  83f863                    CMP EAX,0x63
004f13f8  0f85d4000000              JNZ 0x004f14d2
004f13fe  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f1402  8d4f48                    LEA ECX,[EDI + 0x48]
004f1405  7409                      JZ 0x004f1410
004f1407  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f140e  751b                      JNZ 0x004f142b
004f1410  6a00                      PUSH 0x0
004f1412  689409b600                PUSH 0xb60994
004f1417  e8648ff1ff                CALL 0x0040a380
004f141c  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004f1422  83f863                    CMP EAX,0x63
004f1425  0f85a7000000              JNZ 0x004f14d2
004f142b  8d4f78                    LEA ECX,[EDI + 0x78]
004f142e  e87d5ff1ff                CALL 0x004073b0
004f1433  84c0                      TEST AL,AL
004f1435  0f8497000000              JZ 0x004f14d2
004f143b  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004f1442  0f8f8a000000              JG 0x004f14d2
004f1448  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004f1450  0f57d2                    XORPS XMM2,XMM2
004f1453  8bcf                      MOV ECX,EDI
004f1455  e806b31b00                CALL 0x006ac760
004f145a  85c0                      TEST EAX,EAX
004f145c  7474                      JZ 0x004f14d2
004f145e  8bcf                      MOV ECX,EDI
004f1460  e80b63f5ff                CALL 0x00447770
004f1465  85c0                      TEST EAX,EAX
004f1467  7469                      JZ 0x004f14d2
004f1469  8bcf                      MOV ECX,EDI
004f146b  e80063f5ff                CALL 0x00447770
004f1470  83b8640b000006            CMP dword ptr [EAX + 0xb64],0x6
004f1477  7559                      JNZ 0x004f14d2
004f1479  8bcf                      MOV ECX,EDI
004f147b  e8c0d31c00                CALL 0x006be840
004f1480  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004f1488  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004f1490  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
004f1498  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
004f14a0  f30f59c0                  MULSS XMM0,XMM0
004f14a4  f30f59c9                  MULSS XMM1,XMM1
004f14a8  f30f58c8                  ADDSS XMM1,XMM0
004f14ac  f30f100540acba00          MOVSS XMM0,dword ptr [0x00baac40]
004f14b4  0f2fc1                    COMISS XMM0,XMM1
004f14b7  7619                      JBE 0x004f14d2
004f14b9  6a00                      PUSH 0x0
004f14bb  8d4f48                    LEA ECX,[EDI + 0x48]
004f14be  68d409b600                PUSH 0xb609d4
004f14c3  e8b88ef1ff                CALL 0x0040a380
004f14c8  c787a00b00002d000000      MOV dword ptr [EDI + 0xba0],0x2d
004f14d2  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
004f14d8  85c0                      TEST EAX,EAX
004f14da  7e10                      JLE 0x004f14ec
004f14dc  2bc6                      SUB EAX,ESI
004f14de  b900000000                MOV ECX,0x0
004f14e3  0f48c1                    CMOVS EAX,ECX
004f14e6  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004f14ec  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
004f14f3  0f858d010000              JNZ 0x004f1686
004f14f9  8d7748                    LEA ESI,[EDI + 0x48]
004f14fc  68dcd2b100                PUSH 0xb1d2dc
004f1501  8bce                      MOV ECX,ESI
004f1503  e8289bf1ff                CALL 0x0040b030
004f1508  84c0                      TEST AL,AL
004f150a  0f8405010000              JZ 0x004f1615
004f1510  8bcf                      MOV ECX,EDI
004f1512  e89952f6ff                CALL 0x004567b0
004f1517  84c0                      TEST AL,AL
004f1519  0f85f6000000              JNZ 0x004f1615
004f151f  6aff                      PUSH -0x1
004f1521  ff7728                    PUSH dword ptr [EDI + 0x28]
004f1524  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
004f152a  50                        PUSH EAX
004f152b  e830f71d00                CALL 0x006d0c60
004f1530  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
004f1537  33f6                      XOR ESI,ESI
004f1539  8b95bcfeffff              MOV EDX,dword ptr [EBP + 0xfffffebc]
004f153f  85d2                      TEST EDX,EDX
004f1541  7468                      JZ 0x004f15ab
004f1543  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
004f1549  0f1f8000000000            NOP dword ptr [EAX]
004f1550  8b14b0                    MOV EDX,dword ptr [EAX + ESI*0x4]
004f1553  85d2                      TEST EDX,EDX
004f1555  7449                      JZ 0x004f15a0
004f1557  a17816c700                MOV EAX,[0x00c71678]
004f155c  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004f1563  7c06                      JL 0x004f156b
004f1565  837a2801                  CMP dword ptr [EDX + 0x28],0x1
004f1569  740d                      JZ 0x004f1578
004f156b  8b4228                    MOV EAX,dword ptr [EDX + 0x28]
004f156e  83e80a                    SUB EAX,0xa
004f1571  3ddd030000                CMP EAX,0x3dd
004f1576  7722                      JA 0x004f159a
004f1578  8b826c010000              MOV EAX,dword ptr [EDX + 0x16c]
004f157e  8b8a68010000              MOV ECX,dword ptr [EDX + 0x168]
004f1584  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004f1587  8bc1                      MOV EAX,ECX
004f1589  2500000020                AND EAX,0x20000000
004f158e  83c800                    OR EAX,0x0
004f1591  7507                      JNZ 0x004f159a
004f1593  83e110                    AND ECX,0x10
004f1596  0bc8                      OR ECX,EAX
004f1598  7466                      JZ 0x004f1600
004f159a  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
004f15a0  8b95bcfeffff              MOV EDX,dword ptr [EBP + 0xfffffebc]
004f15a6  46                        INC ESI
004f15a7  3bf2                      CMP ESI,EDX
004f15a9  72a5                      JC 0x004f1550
004f15ab  33ff                      XOR EDI,EDI
004f15ad  85d2                      TEST EDX,EDX
004f15af  0f84c1000000              JZ 0x004f1676
004f15b5  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
004f15bb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004f15c0  8b34b8                    MOV ESI,dword ptr [EAX + EDI*0x4]
004f15c3  85f6                      TEST ESI,ESI
004f15c5  0f84a2000000              JZ 0x004f166d
004f15cb  a17816c700                MOV EAX,[0x00c71678]
004f15d0  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004f15d7  7c06                      JL 0x004f15df
004f15d9  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004f15dd  740d                      JZ 0x004f15ec
004f15df  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004f15e2  83e80a                    SUB EAX,0xa
004f15e5  3ddd030000                CMP EAX,0x3dd
004f15ea  777b                      JA 0x004f1667
004f15ec  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004f15f2  2500000020                AND EAX,0x20000000
004f15f7  83c800                    OR EAX,0x0
004f15fa  744f                      JZ 0x004f164b
004f15fc  b001                      MOV AL,0x1
004f15fe  eb4d                      JMP 0x004f164d
004f1600  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
004f1606  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004f160d  e89e5ff2ff                CALL 0x004175b0
004f1612  8d7748                    LEA ESI,[EDI + 0x48]
004f1615  8b957cfeffff              MOV EDX,dword ptr [EBP + 0xfffffe7c]
004f161b  299710040000              SUB dword ptr [EDI + 0x410],EDX
004f1621  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004f1628  0f8fd2040000              JG 0x004f1b00
004f162e  6a00                      PUSH 0x0
004f1630  68e009b600                PUSH 0xb609e0
004f1635  8bce                      MOV ECX,ESI
004f1637  e8448df1ff                CALL 0x0040a380
004f163c  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004f1646  e9b5040000                JMP 0x004f1b00
004f164b  32c0                      XOR AL,AL
004f164d  84c0                      TEST AL,AL
004f164f  7516                      JNZ 0x004f1667
004f1651  8d4dbc                    LEA ECX,[EBP + -0x44]
004f1654  e81746f4ff                CALL 0x00435c70
004f1659  8b16                      MOV EDX,dword ptr [ESI]
004f165b  8bce                      MOV ECX,ESI
004f165d  50                        PUSH EAX
004f165e  ff5224                    CALL dword ptr [EDX + 0x24]
004f1661  8b95bcfeffff              MOV EDX,dword ptr [EBP + 0xfffffebc]
004f1667  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
004f166d  47                        INC EDI
004f166e  3bfa                      CMP EDI,EDX
004f1670  0f824affffff              JC 0x004f15c0
004f1676  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
004f167c  e82f5ff2ff                CALL 0x004175b0
004f1681  e9dd070000                JMP 0x004f1e63
004f1686  83bfc40b000063            CMP dword ptr [EDI + 0xbc4],0x63
004f168d  0f857c010000              JNZ 0x004f180f
004f1693  68dcd2b100                PUSH 0xb1d2dc
004f1698  8d4f48                    LEA ECX,[EDI + 0x48]
004f169b  e89099f1ff                CALL 0x0040b030
004f16a0  84c0                      TEST AL,AL
004f16a2  0f8467010000              JZ 0x004f180f
004f16a8  68d409b600                PUSH 0xb609d4
004f16ad  8d4f48                    LEA ECX,[EDI + 0x48]
004f16b0  e81b8ef1ff                CALL 0x0040a4d0
004f16b5  84c0                      TEST AL,AL
004f16b7  0f8452010000              JZ 0x004f180f
004f16bd  e89ed81f00                CALL 0x006eef60
004f16c2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f16c8  50                        PUSH EAX
004f16c9  6a00                      PUSH 0x0
004f16cb  57                        PUSH EDI
004f16cc  6840b6c700                PUSH 0xc7b640
004f16d1  8d873c030000              LEA EAX,[EDI + 0x33c]
004f16d7  50                        PUSH EAX
004f16d8  6a01                      PUSH 0x1
004f16da  6a09                      PUSH 0x9
004f16dc  e83f74f3ff                CALL 0x00428b20
004f16e1  8bf0                      MOV ESI,EAX
004f16e3  57                        PUSH EDI
004f16e4  8bce                      MOV ECX,ESI
004f16e6  c786100400000000c0c0      MOV dword ptr [ESI + 0x410],0xc0c00000
004f16f0  c7861404000000000000      MOV dword ptr [ESI + 0x414],0x0
004f16fa  c786200400000000803f      MOV dword ptr [ESI + 0x420],0x3f800000
004f1704  c7863804000000000000      MOV dword ptr [ESI + 0x438],0x0
004f170e  c7863c04000000010000      MOV dword ptr [ESI + 0x43c],0x100
004f1718  e8837b1b00                CALL 0x006a92a0
004f171d  51                        PUSH ECX
004f171e  0f57db                    XORPS XMM3,XMM3
004f1721  c7042400000000            MOV dword ptr [ESP],0x0
004f1728  0f57d2                    XORPS XMM2,XMM2
004f172b  8d4d8c                    LEA ECX,[EBP + -0x74]
004f172e  0f57c9                    XORPS XMM1,XMM1
004f1731  e8ba21f3ff                CALL 0x004238f0
004f1736  8b16                      MOV EDX,dword ptr [ESI]
004f1738  8bce                      MOV ECX,ESI
004f173a  6a01                      PUSH 0x1
004f173c  6a01                      PUSH 0x1
004f173e  6a01                      PUSH 0x1
004f1740  6a06                      PUSH 0x6
004f1742  50                        PUSH EAX
004f1743  ff523c                    CALL dword ptr [EDX + 0x3c]
004f1746  8b06                      MOV EAX,dword ptr [ESI]
004f1748  8bce                      MOV ECX,ESI
004f174a  ff500c                    CALL dword ptr [EAX + 0xc]
004f174d  e80ed81f00                CALL 0x006eef60
004f1752  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f1758  50                        PUSH EAX
004f1759  6a00                      PUSH 0x0
004f175b  6a00                      PUSH 0x0
004f175d  6840b6c700                PUSH 0xc7b640
004f1762  8d8734030000              LEA EAX,[EDI + 0x334]
004f1768  50                        PUSH EAX
004f1769  6885000000                PUSH 0x85
004f176e  68e8030000                PUSH 0x3e8
004f1773  e8a873f3ff                CALL 0x00428b20
004f1778  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004f177f  8d55b8                    LEA EDX,[EBP + -0x48]
004f1782  6a01                      PUSH 0x1
004f1784  8bc8                      MOV ECX,EAX
004f1786  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
004f178d  6a00                      PUSH 0x0
004f178f  68ff000000                PUSH 0xff
004f1794  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
004f1798  8b01                      MOV EAX,dword ptr [ECX]
004f179a  0f280580c8ba00            MOVAPS XMM0,xmmword ptr [0x00bac880]
004f17a1  6aff                      PUSH -0x1
004f17a3  52                        PUSH EDX
004f17a4  0f1145c8                  MOVUPS xmmword ptr [EBP + -0x38],XMM0
004f17a8  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
004f17af  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004f17b6  ff503c                    CALL dword ptr [EAX + 0x3c]
004f17b9  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
004f17c1  51                        PUSH ECX
004f17c2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f17c9  6a00                      PUSH 0x0
004f17cb  6a02                      PUSH 0x2
004f17cd  68a2000000                PUSH 0xa2
004f17d2  e809514600                CALL 0x009568e0
004f17d7  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004f17dd  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004f17e3  85c9                      TEST ECX,ECX
004f17e5  741e                      JZ 0x004f1805
004f17e7  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
004f17ed  81c1cc030000              ADD ECX,0x3cc
004f17f3  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004f17f9  50                        PUSH EAX
004f17fa  e811dafdff                CALL 0x004cf210
004f17ff  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004f1805  50                        PUSH EAX
004f1806  8bce                      MOV ECX,ESI
004f1808  8930                      MOV dword ptr [EAX],ESI
004f180a  e8e1c4fdff                CALL 0x004cdcf0
004f180f  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
004f1815  85f6                      TEST ESI,ESI
004f1817  0f84eb010000              JZ 0x004f1a08
004f181d  837e2809                  CMP dword ptr [ESI + 0x28],0x9
004f1821  0f85e1010000              JNZ 0x004f1a08
004f1827  f30f1086a4030000          MOVSS XMM0,dword ptr [ESI + 0x3a4]
004f182f  0f2f0554a8ba00            COMISS XMM0,dword ptr [0x00baa854]
004f1836  0f86cc010000              JBE 0x004f1a08
004f183c  8bcf                      MOV ECX,EDI
004f183e  e8fdcf1c00                CALL 0x006be840
004f1843  51                        PUSH ECX
004f1844  c7042400002041            MOV dword ptr [ESP],0x41200000
004f184b  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
004f1851  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004f1859  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004f1861  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
004f1867  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
004f186f  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
004f1877  50                        PUSH EAX
004f1878  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
004f1880  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
004f1888  e873e85100                CALL 0x00a10100
004f188d  f30f1085a8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea8]
004f1895  8d4d8c                    LEA ECX,[EBP + -0x74]
004f1898  8b8638040000              MOV EAX,dword ptr [ESI + 0x438]
004f189e  81a63c040000fffeffff      AND dword ptr [ESI + 0x43c],0xfffffeff
004f18a8  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
004f18b0  f30f1085acfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeac]
004f18b8  898638040000              MOV dword ptr [ESI + 0x438],EAX
004f18be  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
004f18c6  e8a558f1ff                CALL 0x00407170
004f18cb  f30f10864c030000          MOVSS XMM0,dword ptr [ESI + 0x34c]
004f18d3  8bd0                      MOV EDX,EAX
004f18d5  f30f590524a3ba00          MULSS XMM0,dword ptr [0x00baa324]
004f18dd  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
004f18e3  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
004f18e9  6840b6c700                PUSH 0xc7b640
004f18ee  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
004f18f6  f30f108650030000          MOVSS XMM0,dword ptr [ESI + 0x350]
004f18fe  f30f590524a3ba00          MULSS XMM0,dword ptr [0x00baa324]
004f1906  8985a8feffff              MOV dword ptr [EBP + 0xfffffea8],EAX
004f190c  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004f1912  52                        PUSH EDX
004f1913  898dacfeffff              MOV dword ptr [EBP + 0xfffffeac],ECX
004f1919  8d95a8feffff              LEA EDX,[EBP + 0xfffffea8]
004f191f  50                        PUSH EAX
004f1920  b905000000                MOV ECX,0x5
004f1925  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
004f192d  e8be631e00                CALL 0x006d7cf0
004f1932  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
004f1939  8d4db8                    LEA ECX,[EBP + -0x48]
004f193c  83c40c                    ADD ESP,0xc
004f193f  c745d8cdcccc3e            MOV dword ptr [EBP + -0x28],0x3ecccccd
004f1946  8bf0                      MOV ESI,EAX
004f1948  c745dc9a99993e            MOV dword ptr [EBP + -0x24],0x3e99999a
004f194f  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
004f1953  c745e03333333f            MOV dword ptr [EBP + -0x20],0x3f333333
004f195a  0f57c0                    XORPS XMM0,XMM0
004f195d  6a01                      PUSH 0x1
004f195f  6a00                      PUSH 0x0
004f1961  68ff000000                PUSH 0xff
004f1966  c6864801000001            MOV byte ptr [ESI + 0x148],0x1
004f196d  8b06                      MOV EAX,dword ptr [ESI]
004f196f  6aff                      PUSH -0x1
004f1971  51                        PUSH ECX
004f1972  8bce                      MOV ECX,ESI
004f1974  c786580300000000803f      MOV dword ptr [ESI + 0x358],0x3f800000
004f197e  0f1145c8                  MOVUPS xmmword ptr [EBP + -0x38],XMM0
004f1982  ff503c                    CALL dword ptr [EAX + 0x3c]
004f1985  83bec800000004            CMP dword ptr [ESI + 0xc8],0x4
004f198c  7625                      JBE 0x004f19b3
004f198e  51                        PUSH ECX
004f198f  6a02                      PUSH 0x2
004f1991  8d4dd0                    LEA ECX,[EBP + -0x30]
004f1994  e837fb5100                CALL 0x00a114d0
004f1999  8d45d0                    LEA EAX,[EBP + -0x30]
004f199c  50                        PUSH EAX
004f199d  51                        PUSH ECX
004f199e  6a04                      PUSH 0x4
004f19a0  8d4e48                    LEA ECX,[ESI + 0x48]
004f19a3  e87898f1ff                CALL 0x0040b220
004f19a8  83c404                    ADD ESP,0x4
004f19ab  8d4878                    LEA ECX,[EAX + 0x78]
004f19ae  e80dfc5100                CALL 0x00a115c0
004f19b3  8b06                      MOV EAX,dword ptr [ESI]
004f19b5  8bce                      MOV ECX,ESI
004f19b7  ff500c                    CALL dword ptr [EAX + 0xc]
004f19ba  51                        PUSH ECX
004f19bb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f19c2  6a00                      PUSH 0x0
004f19c4  6a02                      PUSH 0x2
004f19c6  51                        PUSH ECX
004f19c7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f19ce  8bcf                      MOV ECX,EDI
004f19d0  68f9000000                PUSH 0xf9
004f19d5  e8c6511e00                CALL 0x006d6ba0
004f19da  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004f19e0  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004f19e6  85c9                      TEST ECX,ECX
004f19e8  7418                      JZ 0x004f1a02
004f19ea  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004f19f0  89b5ccfeffff              MOV dword ptr [EBP + 0xfffffecc],ESI
004f19f6  50                        PUSH EAX
004f19f7  81c1cc030000              ADD ECX,0x3cc
004f19fd  e80ed8fdff                CALL 0x004cf210
004f1a02  c70600000000              MOV dword ptr [ESI],0x0
004f1a08  8bcf                      MOV ECX,EDI
004f1a0a  e8615df5ff                CALL 0x00447770
004f1a0f  85c0                      TEST EAX,EAX
004f1a11  0f84e9000000              JZ 0x004f1b00
004f1a17  83b8640b00000d            CMP dword ptr [EAX + 0xb64],0xd
004f1a1e  0f85dc000000              JNZ 0x004f1b00
004f1a24  6a00                      PUSH 0x0
004f1a26  68e009b600                PUSH 0xb609e0
004f1a2b  8d4f48                    LEA ECX,[EDI + 0x48]
004f1a2e  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004f1a38  e84389f1ff                CALL 0x0040a380
004f1a3d  6a0f                      PUSH 0xf
004f1a3f  8d4f48                    LEA ECX,[EDI + 0x48]
004f1a42  e8d98cf1ff                CALL 0x0040a720
004f1a47  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004f1a51  e9aa000000                JMP 0x004f1b00
004f1a56  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f1a5e  8d4f48                    LEA ECX,[EDI + 0x48]
004f1a61  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004f1a69  68dcd2b100                PUSH 0xb1d2dc
004f1a6e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f1a76  e8b595f1ff                CALL 0x0040b030
004f1a7b  84c0                      TEST AL,AL
004f1a7d  7424                      JZ 0x004f1aa3
004f1a7f  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004f1a85  83a768010000ee            AND dword ptr [EDI + 0x168],0xffffffee
004f1a8c  83a76c010000f7            AND dword ptr [EDI + 0x16c],0xfffffff7
004f1a93  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
004f1a9a  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
004f1a9d  89877c030000              MOV dword ptr [EDI + 0x37c],EAX
004f1aa3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f1aa7  7409                      JZ 0x004f1ab2
004f1aa9  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f1ab0  754e                      JNZ 0x004f1b00
004f1ab2  83a768010000ee            AND dword ptr [EDI + 0x168],0xffffffee
004f1ab9  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004f1abf  83a76c010000f7            AND dword ptr [EDI + 0x16c],0xfffffff7
004f1ac6  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
004f1acd  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
004f1ad0  89877c030000              MOV dword ptr [EDI + 0x37c],EAX
004f1ad6  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004f1ae0  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004f1ae8  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004f1af0  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004f1af8  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004f1b00  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
004f1b07  0f85d8000000              JNZ 0x004f1be5
004f1b0d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f1b11  8d4f78                    LEA ECX,[EDI + 0x78]
004f1b14  7474                      JZ 0x004f1b8a
004f1b16  68b809b600                PUSH 0xb609b8
004f1b1b  e8c091f1ff                CALL 0x0040ace0
004f1b20  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
004f1b26  8d7748                    LEA ESI,[EDI + 0x48]
004f1b29  85c0                      TEST EAX,EAX
004f1b2b  7460                      JZ 0x004f1b8d
004f1b2d  6a01                      PUSH 0x1
004f1b2f  8bce                      MOV ECX,ESI
004f1b31  e8ea96f1ff                CALL 0x0040b220
004f1b36  8b95c4feffff              MOV EDX,dword ptr [EBP + 0xfffffec4]
004f1b3c  6a01                      PUSH 0x1
004f1b3e  8b0a                      MOV ECX,dword ptr [EDX]
004f1b40  894840                    MOV dword ptr [EAX + 0x40],ECX
004f1b43  8b4a04                    MOV ECX,dword ptr [EDX + 0x4]
004f1b46  894844                    MOV dword ptr [EAX + 0x44],ECX
004f1b49  8bce                      MOV ECX,ESI
004f1b4b  e8d096f1ff                CALL 0x0040b220
004f1b50  8b8dc4feffff              MOV ECX,dword ptr [EBP + 0xfffffec4]
004f1b56  6a01                      PUSH 0x1
004f1b58  8b5110                    MOV EDX,dword ptr [ECX + 0x10]
004f1b5b  895034                    MOV dword ptr [EAX + 0x34],EDX
004f1b5e  8b5114                    MOV EDX,dword ptr [ECX + 0x14]
004f1b61  895038                    MOV dword ptr [EAX + 0x38],EDX
004f1b64  f30f104144                MOVSS XMM0,dword ptr [ECX + 0x44]
004f1b69  8bce                      MOV ECX,ESI
004f1b6b  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
004f1b73  e8a896f1ff                CALL 0x0040b220
004f1b78  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
004f1b80  f30f11403c                MOVSS dword ptr [EAX + 0x3c],XMM0
004f1b85  e9ca000000                JMP 0x004f1c54
004f1b8a  8d7748                    LEA ESI,[EDI + 0x48]
004f1b8d  6a01                      PUSH 0x1
004f1b8f  8bce                      MOV ECX,ESI
004f1b91  e88a96f1ff                CALL 0x0040b220
004f1b96  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004f1b9e  8bce                      MOV ECX,ESI
004f1ba0  6a01                      PUSH 0x1
004f1ba2  f30f114040                MOVSS dword ptr [EAX + 0x40],XMM0
004f1ba7  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004f1baf  f30f114044                MOVSS dword ptr [EAX + 0x44],XMM0
004f1bb4  e86796f1ff                CALL 0x0040b220
004f1bb9  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
004f1bc1  8bce                      MOV ECX,ESI
004f1bc3  6a01                      PUSH 0x1
004f1bc5  f30f114034                MOVSS dword ptr [EAX + 0x34],XMM0
004f1bca  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
004f1bd2  f30f114038                MOVSS dword ptr [EAX + 0x38],XMM0
004f1bd7  e84496f1ff                CALL 0x0040b220
004f1bdc  c7403c00000000            MOV dword ptr [EAX + 0x3c],0x0
004f1be3  eb6f                      JMP 0x004f1c54
004f1be5  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004f1bec  7466                      JZ 0x004f1c54
004f1bee  6a00                      PUSH 0x0
004f1bf0  8d8f98000000              LEA ECX,[EDI + 0x98]
004f1bf6  e8356cf1ff                CALL 0x00408830
004f1bfb  6a01                      PUSH 0x1
004f1bfd  8d4f48                    LEA ECX,[EDI + 0x48]
004f1c00  e81b96f1ff                CALL 0x0040b220
004f1c05  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004f1c0d  8d4f48                    LEA ECX,[EDI + 0x48]
004f1c10  6a01                      PUSH 0x1
004f1c12  f30f114040                MOVSS dword ptr [EAX + 0x40],XMM0
004f1c17  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004f1c1f  f30f114044                MOVSS dword ptr [EAX + 0x44],XMM0
004f1c24  e8f795f1ff                CALL 0x0040b220
004f1c29  6a01                      PUSH 0x1
004f1c2b  8d4f48                    LEA ECX,[EDI + 0x48]
004f1c2e  c7403c00000000            MOV dword ptr [EAX + 0x3c],0x0
004f1c35  e8e695f1ff                CALL 0x0040b220
004f1c3a  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
004f1c42  f30f114034                MOVSS dword ptr [EAX + 0x34],XMM0
004f1c47  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
004f1c4f  f30f114038                MOVSS dword ptr [EAX + 0x38],XMM0
004f1c54  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f1c5a  8db73c030000              LEA ESI,[EDI + 0x33c]
004f1c60  6884030000                PUSH 0x384
004f1c65  56                        PUSH ESI
004f1c66  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004f1c6c  e80fc1fdff                CALL 0x004cdd80
004f1c71  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004f1c79  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
004f1c80  9f                        LAHF
004f1c81  f6c444                    TEST AH,0x44
004f1c84  7a15                      JP 0x004f1c9b
004f1c86  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004f1c8e  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004f1c95  9f                        LAHF
004f1c96  f6c444                    TEST AH,0x44
004f1c99  7b21                      JNP 0x004f1cbc
004f1c9b  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004f1ca3  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004f1ca7  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
004f1cac  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004f1cb4  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004f1cbc  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004f1cc3  7524                      JNZ 0x004f1ce9
004f1cc5  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
004f1ccc  751b                      JNZ 0x004f1ce9
004f1cce  8bcf                      MOV ECX,EDI
004f1cd0  e89b5af5ff                CALL 0x00447770
004f1cd5  85c0                      TEST EAX,EAX
004f1cd7  7410                      JZ 0x004f1ce9
004f1cd9  8bcf                      MOV ECX,EDI
004f1cdb  e8905af5ff                CALL 0x00447770
004f1ce0  83b8640b000007            CMP dword ptr [EAX + 0xb64],0x7
004f1ce7  7517                      JNZ 0x004f1d00
004f1ce9  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
004f1cef  85c0                      TEST EAX,EAX
004f1cf1  740d                      JZ 0x004f1d00
004f1cf3  83782809                  CMP dword ptr [EAX + 0x28],0x9
004f1cf7  7507                      JNZ 0x004f1d00
004f1cf9  c6807301000001            MOV byte ptr [EAX + 0x173],0x1
004f1d00  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004f1d07  0f8456010000              JZ 0x004f1e63
004f1d0d  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004f1d13  8bc1                      MOV EAX,ECX
004f1d15  83e010                    AND EAX,0x10
004f1d18  83c800                    OR EAX,0x0
004f1d1b  0f8542010000              JNZ 0x004f1e63
004f1d21  3987bc030000              CMP dword ptr [EDI + 0x3bc],EAX
004f1d27  740d                      JZ 0x004f1d36
004f1d29  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004f1d2f  f30f104850                MOVSS XMM1,dword ptr [EAX + 0x50]
004f1d34  eb75                      JMP 0x004f1dab
004f1d36  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
004f1d39  8db59cfeffff              LEA ESI,[EBP + 0xfffffe9c]
004f1d3f  48                        DEC EAX
004f1d40  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004f1d48  c7859cfeffff00000000      MOV dword ptr [EBP + 0xfffffe9c],0x0
004f1d52  660f6ec0                  MOVD XMM0,EAX
004f1d56  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f1d5a  c1e81f                    SHR EAX,0x1f
004f1d5d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f1d66  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004f1d6c  660f5ac0                  CVTPD2PS XMM0,XMM0
004f1d70  f30f58c0                  ADDSS XMM0,XMM0
004f1d74  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004f1d7b  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
004f1d83  0f46c6                    CMOVBE EAX,ESI
004f1d86  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004f1d8a  0f2fc8                    COMISS XMM1,XMM0
004f1d8d  7706                      JA 0x004f1d95
004f1d8f  f30f10c1                  MOVSS XMM0,XMM1
004f1d93  eb04                      JMP 0x004f1d99
004f1d95  f30f10c0                  MOVSS XMM0,XMM0
004f1d99  8db73c030000              LEA ESI,[EDI + 0x33c]
004f1d9f  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004f1da7  f30f5cc8                  SUBSS XMM1,XMM0
004f1dab  f30f118f80030000          MOVSS dword ptr [EDI + 0x380],XMM1
004f1db3  83c911                    OR ECX,0x11
004f1db6  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
004f1dbd  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004f1dc3  8bcf                      MOV ECX,EDI
004f1dc5  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
004f1dcc  e85fc81b00                CALL 0x006ae630
004f1dd1  c7877c03000000004843      MOV dword ptr [EDI + 0x37c],0x43480000
004f1ddb  8b06                      MOV EAX,dword ptr [ESI]
004f1ddd  898734030000              MOV dword ptr [EDI + 0x334],EAX
004f1de3  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004f1de6  898738030000              MOV dword ptr [EDI + 0x338],EAX
004f1dec  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004f1df2  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004f1df9  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004f1e03  c787a00b00001e000000      MOV dword ptr [EDI + 0xba0],0x1e
004f1e0d  c787a40b0000c4ffffff      MOV dword ptr [EDI + 0xba4],0xffffffc4
004f1e17  85c0                      TEST EAX,EAX
004f1e19  7423                      JZ 0x004f1e3e
004f1e1b  39b8c0030000              CMP dword ptr [EAX + 0x3c0],EDI
004f1e21  751b                      JNZ 0x004f1e3e
004f1e23  6a00                      PUSH 0x0
004f1e25  68c409b600                PUSH 0xb609c4
004f1e2a  8d4f48                    LEA ECX,[EDI + 0x48]
004f1e2d  e84e85f1ff                CALL 0x0040a380
004f1e32  c787c40b000063000000      MOV dword ptr [EDI + 0xbc4],0x63
004f1e3c  eb0f                      JMP 0x004f1e4d
004f1e3e  6a00                      PUSH 0x0
004f1e40  68000ab600                PUSH 0xb60a00
004f1e45  8d4f48                    LEA ECX,[EDI + 0x48]
004f1e48  e83385f1ff                CALL 0x0040a380
004f1e4d  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
004f1e54  c7871004000096000000      MOV dword ptr [EDI + 0x410],0x96
004f1e5e  7503                      JNZ 0x004f1e63
004f1e60  ff4730                    INC dword ptr [EDI + 0x30]
004f1e63  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004f1e66  64890d00000000            MOV dword ptr FS:[0x0],ECX
004f1e6d  59                        POP ECX
004f1e6e  5f                        POP EDI
004f1e6f  5e                        POP ESI
004f1e70  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004f1e73  33cd                      XOR ECX,EBP
004f1e75  e8b1d25f00                CALL 0x00aef12b
004f1e7a  8be5                      MOV ESP,EBP
004f1e7c  5d                        POP EBP
004f1e7d  8be3                      MOV ESP,EBX
004f1e7f  5b                        POP EBX
004f1e80  c3                        RET
