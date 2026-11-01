; J460 NPC AI 0x004fd540 AI_004fd540
; types=823
; identities=823.0.0
; entry=004fd540
004fd540  53                        PUSH EBX
004fd541  8bdc                      MOV EBX,ESP
004fd543  83ec08                    SUB ESP,0x8
004fd546  83e4f8                    AND ESP,0xfffffff8
004fd549  83c404                    ADD ESP,0x4
004fd54c  55                        PUSH EBP
004fd54d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004fd550  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004fd554  8bec                      MOV EBP,ESP
004fd556  6aff                      PUSH -0x1
004fd558  68652aaf00                PUSH 0xaf2a65
004fd55d  64a100000000              MOV EAX,FS:[0x0]
004fd563  50                        PUSH EAX
004fd564  53                        PUSH EBX
004fd565  81ec40010000              SUB ESP,0x140
004fd56b  a1b493bf00                MOV EAX,[0x00bf93b4]
004fd570  33c5                      XOR EAX,EBP
004fd572  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004fd575  56                        PUSH ESI
004fd576  57                        PUSH EDI
004fd577  50                        PUSH EAX
004fd578  8d45f4                    LEA EAX,[EBP + -0xc]
004fd57b  64a300000000              MOV FS:[0x0],EAX
004fd581  8bf9                      MOV EDI,ECX
004fd583  660f6e9fa00b0000          MOVD XMM3,dword ptr [EDI + 0xba0]
004fd58b  0f57d2                    XORPS XMM2,XMM2
004fd58e  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
004fd596  0f5bdb                    CVTDQ2PS XMM3,XMM3
004fd599  6a01                      PUSH 0x1
004fd59b  e8a0b81d00                CALL 0x006d8e40
004fd5a0  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004fd5a6  85c0                      TEST EAX,EAX
004fd5a8  0f84ca080000              JZ 0x004fde78
004fd5ae  83f804                    CMP EAX,0x4
004fd5b1  0f84d8040000              JZ 0x004fda8f
004fd5b7  83f808                    CMP EAX,0x8
004fd5ba  0f858d090000              JNZ 0x004fdf4d
004fd5c0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fd5c4  8d7778                    LEA ESI,[EDI + 0x78]
004fd5c7  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
004fd5cd  0f844e040000              JZ 0x004fda21
004fd5d3  6860d5b100                PUSH 0xb1d560
004fd5d8  8bce                      MOV ECX,ESI
004fd5da  e8f1d7f0ff                CALL 0x0040add0
004fd5df  84c0                      TEST AL,AL
004fd5e1  0f8485000000              JZ 0x004fd66c
004fd5e7  51                        PUSH ECX
004fd5e8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fd5ef  6a00                      PUSH 0x0
004fd5f1  6a0a                      PUSH 0xa
004fd5f3  51                        PUSH ECX
004fd5f4  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fd5fb  8bcf                      MOV ECX,EDI
004fd5fd  68f9000000                PUSH 0xf9
004fd602  e899951d00                CALL 0x006d6ba0
004fd607  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004fd60f  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
004fd617  0f28c1                    MOVAPS XMM0,XMM1
004fd61a  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
004fd622  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
004fd628  f30f59d1                  MULSS XMM2,XMM1
004fd62c  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004fd634  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004fd63c  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004fd644  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004fd64c  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004fd654  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004fd65c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004fd664  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004fd66c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fd670  0f84ab030000              JZ 0x004fda21
004fd676  68dcd2b100                PUSH 0xb1d2dc
004fd67b  8bce                      MOV ECX,ESI
004fd67d  e84ed7f0ff                CALL 0x0040add0
004fd682  84c0                      TEST AL,AL
004fd684  0f846b030000              JZ 0x004fd9f5
004fd68a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004fd690  8d8df8feffff              LEA ECX,[EBP + 0xfffffef8]
004fd696  c785f8feffff34000000      MOV dword ptr [EBP + 0xfffffef8],0x34
004fd6a0  e8db904500                CALL 0x00956780
004fd6a5  83ec08                    SUB ESP,0x8
004fd6a8  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004fd6b0  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fd6b7  6a00                      PUSH 0x0
004fd6b9  6a14                      PUSH 0x14
004fd6bb  51                        PUSH ECX
004fd6bc  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fd6c3  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004fd6c9  ffb5f8feffff              PUSH dword ptr [EBP + 0xfffffef8]
004fd6cf  e85c054300                CALL 0x0092dc30
004fd6d4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fd6da  6a0e                      PUSH 0xe
004fd6dc  e88f5f2000                CALL 0x00703670
004fd6e1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fd6e7  8db73c030000              LEA ESI,[EDI + 0x33c]
004fd6ed  6a0a                      PUSH 0xa
004fd6ef  83ec08                    SUB ESP,0x8
004fd6f2  c74424048fc2f53c          MOV dword ptr [ESP + 0x4],0x3cf5c28f
004fd6fa  c70424295c0f3d            MOV dword ptr [ESP],0x3d0f5c29
004fd701  56                        PUSH ESI
004fd702  e869602000                CALL 0x00703770
004fd707  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
004fd70d  e81e18f4ff                CALL 0x0043ef30
004fd712  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004fd718  c7459409000000            MOV dword ptr [EBP + -0x6c],0x9
004fd71f  50                        PUSH EAX
004fd720  6a08                      PUSH 0x8
004fd722  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004fd728  c785dcfeffff00002041      MOV dword ptr [EBP + 0xfffffedc],0x41200000
004fd732  50                        PUSH EAX
004fd733  56                        PUSH ESI
004fd734  8bcf                      MOV ECX,EDI
004fd736  c785e0feffff00000000      MOV dword ptr [EBP + 0xfffffee0],0x0
004fd740  e89bdb1c00                CALL 0x006cb2e0
004fd745  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004fd74b  2500000020                AND EAX,0x20000000
004fd750  83c800                    OR EAX,0x0
004fd753  0f8539010000              JNZ 0x004fd892
004fd759  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fd75f  33d2                      XOR EDX,EDX
004fd761  8995fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EDX
004fd767  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
004fd76d  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
004fd773  c1f802                    SAR EAX,0x2
004fd776  85c0                      TEST EAX,EAX
004fd778  0f8414010000              JZ 0x004fd892
004fd77e  6690                      NOP
004fd780  52                        PUSH EDX
004fd781  e8eaa0f1ff                CALL 0x00417870
004fd786  8bf0                      MOV ESI,EAX
004fd788  89b5f0feffff              MOV dword ptr [EBP + 0xfffffef0],ESI
004fd78e  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
004fd796  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004fd79e  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
004fd7a6  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004fd7ae  0f28c1                    MOVAPS XMM0,XMM1
004fd7b1  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
004fd7b9  f30f59c1                  MULSS XMM0,XMM1
004fd7bd  0f28ca                    MOVAPS XMM1,XMM2
004fd7c0  f30f1195f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM2
004fd7c8  f30f59ca                  MULSS XMM1,XMM2
004fd7cc  f30f58c1                  ADDSS XMM0,XMM1
004fd7d0  e87b82f3ff                CALL 0x00435a50
004fd7d5  f30f100d44aaba00          MOVSS XMM1,dword ptr [0x00baaa44]
004fd7dd  0f2fc8                    COMISS XMM1,XMM0
004fd7e0  0f8682000000              JBE 0x004fd868
004fd7e6  f30f1095f8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef8]
004fd7ee  0f57c9                    XORPS XMM1,XMM1
004fd7f1  0f2fc1                    COMISS XMM0,XMM1
004fd7f4  7621                      JBE 0x004fd817
004fd7f6  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004fd7fe  f30f5ec8                  DIVSS XMM1,XMM0
004fd802  0f28c1                    MOVAPS XMM0,XMM1
004fd805  f30f59d0                  MULSS XMM2,XMM0
004fd809  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004fd811  f30f59c1                  MULSS XMM0,XMM1
004fd815  eb08                      JMP 0x004fd81f
004fd817  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004fd81f  8b06                      MOV EAX,dword ptr [ESI]
004fd821  8d4dac                    LEA ECX,[EBP + -0x54]
004fd824  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
004fd82c  57                        PUSH EDI
004fd82d  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
004fd835  8b7054                    MOV ESI,dword ptr [EAX + 0x54]
004fd838  f30f1195e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM2
004fd840  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004fd848  e8c33af3ff                CALL 0x00431310
004fd84d  51                        PUSH ECX
004fd84e  8b8df0feffff              MOV ECX,dword ptr [EBP + 0xfffffef0]
004fd854  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004fd85a  c7042400001041            MOV dword ptr [ESP],0x41100000
004fd861  50                        PUSH EAX
004fd862  8d45ac                    LEA EAX,[EBP + -0x54]
004fd865  50                        PUSH EAX
004fd866  ffd6                      CALL ESI
004fd868  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fd86e  8b95fcfeffff              MOV EDX,dword ptr [EBP + 0xfffffefc]
004fd874  42                        INC EDX
004fd875  8995fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EDX
004fd87b  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
004fd881  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
004fd887  c1f802                    SAR EAX,0x2
004fd88a  3bd0                      CMP EDX,EAX
004fd88c  0f82eefeffff              JC 0x004fd780
004fd892  817f348b030000            CMP dword ptr [EDI + 0x34],0x38b
004fd899  0f8456010000              JZ 0x004fd9f5
004fd89f  8bcf                      MOV ECX,EDI
004fd8a1  e89a0f1c00                CALL 0x006be840
004fd8a6  6a00                      PUSH 0x0
004fd8a8  6a0c                      PUSH 0xc
004fd8aa  ba02000000                MOV EDX,0x2
004fd8af  b980d24f00                MOV ECX,0x4fd280
004fd8b4  e847d61000                CALL 0x0060af00
004fd8b9  8b8f3c030000              MOV ECX,dword ptr [EDI + 0x33c]
004fd8bf  8bf0                      MOV ESI,EAX
004fd8c1  83c408                    ADD ESP,0x8
004fd8c4  898e3c030000              MOV dword ptr [ESI + 0x33c],ECX
004fd8ca  8b8f40030000              MOV ECX,dword ptr [EDI + 0x340]
004fd8d0  898e40030000              MOV dword ptr [ESI + 0x340],ECX
004fd8d6  8bcf                      MOV ECX,EDI
004fd8d8  e8630f1c00                CALL 0x006be840
004fd8dd  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004fd8e5  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004fd8ed  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004fd8f5  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004fd8fd  0f28c1                    MOVAPS XMM0,XMM1
004fd900  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
004fd908  f30f59c1                  MULSS XMM0,XMM1
004fd90c  0f28ca                    MOVAPS XMM1,XMM2
004fd90f  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
004fd917  f30f59ca                  MULSS XMM1,XMM2
004fd91b  f30f58c1                  ADDSS XMM0,XMM1
004fd91f  e82c81f3ff                CALL 0x00435a50
004fd924  0f28d0                    MOVAPS XMM2,XMM0
004fd927  0f57c0                    XORPS XMM0,XMM0
004fd92a  0f2fd0                    COMISS XMM2,XMM0
004fd92d  7629                      JBE 0x004fd958
004fd92f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004fd937  f30f5eca                  DIVSS XMM1,XMM2
004fd93b  f30f1095fcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffefc]
004fd943  0f28c1                    MOVAPS XMM0,XMM1
004fd946  f30f59d0                  MULSS XMM2,XMM0
004fd94a  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004fd952  f30f59c1                  MULSS XMM0,XMM1
004fd956  eb10                      JMP 0x004fd968
004fd958  f30f1095fcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffefc]
004fd960  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004fd968  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004fd96e  f30f119634030000          MOVSS dword ptr [ESI + 0x334],XMM2
004fd976  f30f118638030000          MOVSS dword ptr [ESI + 0x338],XMM0
004fd97e  8b08                      MOV ECX,dword ptr [EAX]
004fd980  85c9                      TEST ECX,ECX
004fd982  741e                      JZ 0x004fd9a2
004fd984  8985f0feffff              MOV dword ptr [EBP + 0xfffffef0],EAX
004fd98a  81c1cc030000              ADD ECX,0x3cc
004fd990  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
004fd996  50                        PUSH EAX
004fd997  e87418fdff                CALL 0x004cf210
004fd99c  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004fd9a2  50                        PUSH EAX
004fd9a3  8bcf                      MOV ECX,EDI
004fd9a5  8938                      MOV dword ptr [EAX],EDI
004fd9a7  e84403fdff                CALL 0x004cdcf0
004fd9ac  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
004fd9b3  7408                      JZ 0x004fd9bd
004fd9b5  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004fd9bb  eb03                      JMP 0x004fd9c0
004fd9bd  83c8ff                    OR EAX,0xffffffff
004fd9c0  898650040000              MOV dword ptr [ESI + 0x450],EAX
004fd9c6  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004fd9cc  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004fd9d2  81e100010020              AND ECX,0x20000100
004fd9d8  098e68010000              OR dword ptr [ESI + 0x168],ECX
004fd9de  2500001000                AND EAX,0x100000
004fd9e3  09866c010000              OR dword ptr [ESI + 0x16c],EAX
004fd9e9  8b87380c0000              MOV EAX,dword ptr [EDI + 0xc38]
004fd9ef  898678040000              MOV dword ptr [ESI + 0x478],EAX
004fd9f5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fd9f9  7426                      JZ 0x004fda21
004fd9fb  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
004fda01  68dcd2b100                PUSH 0xb1d2dc
004fda06  e865d4f0ff                CALL 0x0040ae70
004fda0b  84c0                      TEST AL,AL
004fda0d  7412                      JZ 0x004fda21
004fda0f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fda17  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004fda1f  eb44                      JMP 0x004fda65
004fda21  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004fda29  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004fda30  9f                        LAHF
004fda31  f6c444                    TEST AH,0x44
004fda34  7a1f                      JP 0x004fda55
004fda36  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004fda3e  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004fda45  9f                        LAHF
004fda46  f6c444                    TEST AH,0x44
004fda49  7a0a                      JP 0x004fda55
004fda4b  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
004fda53  eb08                      JMP 0x004fda5d
004fda55  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
004fda5d  f30f59876c030000          MULSS XMM0,dword ptr [EDI + 0x36c]
004fda65  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fda6d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fda71  740d                      JZ 0x004fda80
004fda73  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004fda7a  0f85cd040000              JNZ 0x004fdf4d
004fda80  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004fda8a  e9be040000                JMP 0x004fdf4d
004fda8f  a118ddb100                MOV EAX,[0x00b1dd18]
004fda94  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
004fda9a  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004fdaa1  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
004fdaa8  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004fdaab  894dc0                    MOV dword ptr [EBP + -0x40],ECX
004fdaae  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
004fdab2  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004fdab9  a130ddb100                MOV EAX,[0x00b1dd30]
004fdabe  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
004fdac4  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004fdacb  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
004fdad2  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004fdad5  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004fdad8  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
004fdadc  51                        PUSH ECX
004fdadd  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004fdae1  8d45bc                    LEA EAX,[EBP + -0x44]
004fdae4  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004fdaeb  8bcf                      MOV ECX,EDI
004fdaed  50                        PUSH EAX
004fdaee  8d45d4                    LEA EAX,[EBP + -0x2c]
004fdaf1  50                        PUSH EAX
004fdaf2  e839381c00                CALL 0x006c1330
004fdaf7  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004fdafb  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004fdafe  83fa10                    CMP EDX,0x10
004fdb01  7228                      JC 0x004fdb2b
004fdb03  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004fdb06  42                        INC EDX
004fdb07  8bc1                      MOV EAX,ECX
004fdb09  81fa00100000              CMP EDX,0x1000
004fdb0f  7210                      JC 0x004fdb21
004fdb11  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004fdb14  83c223                    ADD EDX,0x23
004fdb17  2bc1                      SUB EAX,ECX
004fdb19  83c0fc                    ADD EAX,-0x4
004fdb1c  83f81f                    CMP EAX,0x1f
004fdb1f  7749                      JA 0x004fdb6a
004fdb21  52                        PUSH EDX
004fdb22  51                        PUSH ECX
004fdb23  e834165f00                CALL 0x00aef15c
004fdb28  83c408                    ADD ESP,0x8
004fdb2b  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004fdb32  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004fdb35  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004fdb3c  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004fdb43  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004fdb47  83fa10                    CMP EDX,0x10
004fdb4a  722e                      JC 0x004fdb7a
004fdb4c  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004fdb4f  42                        INC EDX
004fdb50  8bc1                      MOV EAX,ECX
004fdb52  81fa00100000              CMP EDX,0x1000
004fdb58  7216                      JC 0x004fdb70
004fdb5a  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004fdb5d  83c223                    ADD EDX,0x23
004fdb60  2bc1                      SUB EAX,ECX
004fdb62  83c0fc                    ADD EAX,-0x4
004fdb65  83f81f                    CMP EAX,0x1f
004fdb68  7606                      JBE 0x004fdb70
004fdb6a  ff159488b100              CALL dword ptr [0x00b18894]
004fdb70  52                        PUSH EDX
004fdb71  51                        PUSH ECX
004fdb72  e8e5155f00                CALL 0x00aef15c
004fdb77  83c408                    ADD ESP,0x8
004fdb7a  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004fdb80  2500080001                AND EAX,0x1000800
004fdb85  83c800                    OR EAX,0x0
004fdb88  7476                      JZ 0x004fdc00
004fdb8a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fdb91  756d                      JNZ 0x004fdc00
004fdb93  8bcf                      MOV ECX,EDI
004fdb95  e8a60c1c00                CALL 0x006be840
004fdb9a  6a00                      PUSH 0x0
004fdb9c  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
004fdba2  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004fdba8  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
004fdbae  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004fdbb4  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
004fdbba  8d8f14040000              LEA ECX,[EDI + 0x414]
004fdbc0  50                        PUSH EAX
004fdbc1  e87a6d2e00                CALL 0x007e4940
004fdbc6  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
004fdbcd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fdbd5  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
004fdbdd  f30f59c1                  MULSS XMM0,XMM1
004fdbe1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fdbe9  0f8e45020000              JLE 0x004fde34
004fdbef  f30f59c1                  MULSS XMM0,XMM1
004fdbf3  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fdbfb  e934020000                JMP 0x004fde34
004fdc00  6a01                      PUSH 0x1
004fdc02  6884030000                PUSH 0x384
004fdc07  83ec08                    SUB ESP,0x8
004fdc0a  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004fdc10  8bcf                      MOV ECX,EDI
004fdc12  c74424049a99993e          MOV dword ptr [ESP + 0x4],0x3e99999a
004fdc1a  c7042400000000            MOV dword ptr [ESP],0x0
004fdc21  50                        PUSH EAX
004fdc22  e819101c00                CALL 0x006bec40
004fdc27  50                        PUSH EAX
004fdc28  8d8f14040000              LEA ECX,[EDI + 0x414]
004fdc2e  e88d572e00                CALL 0x007e33c0
004fdc33  817f348a030000            CMP dword ptr [EDI + 0x34],0x38a
004fdc3a  0f84f4010000              JZ 0x004fde34
004fdc40  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
004fdc46  85d2                      TEST EDX,EDX
004fdc48  7e1a                      JLE 0x004fdc64
004fdc4a  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004fdc52  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004fdc5a  2bc8                      SUB ECX,EAX
004fdc5c  03ca                      ADD ECX,EDX
004fdc5e  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
004fdc64  8bcf                      MOV ECX,EDI
004fdc66  e8d50b1c00                CALL 0x006be840
004fdc6b  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004fdc72  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004fdc7a  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004fdc82  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fdc8a  f30f1195fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM2
004fdc92  0f8f9c010000              JG 0x004fde34
004fdc98  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fdc9f  7429                      JZ 0x004fdcca
004fdca1  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
004fdca9  8bcf                      MOV ECX,EDI
004fdcab  6a07                      PUSH 0x7
004fdcad  6a00                      PUSH 0x0
004fdcaf  e8acd11c00                CALL 0x006cae60
004fdcb4  84c0                      TEST AL,AL
004fdcb6  7570                      JNZ 0x004fdd28
004fdcb8  6a09                      PUSH 0x9
004fdcba  8bcf                      MOV ECX,EDI
004fdcbc  e89fa51d00                CALL 0x006d8260
004fdcc1  84c0                      TEST AL,AL
004fdcc3  7563                      JNZ 0x004fdd28
004fdcc5  e96a010000                JMP 0x004fde34
004fdcca  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004fdcd2  f30f5cc8                  SUBSS XMM1,XMM0
004fdcd6  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004fdcde  f30f5cc2                  SUBSS XMM0,XMM2
004fdce2  f30f59c9                  MULSS XMM1,XMM1
004fdce6  f30f59c0                  MULSS XMM0,XMM0
004fdcea  f30f58c1                  ADDSS XMM0,XMM1
004fdcee  e85d7df3ff                CALL 0x00435a50
004fdcf3  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
004fdcfb  0f2fc8                    COMISS XMM1,XMM0
004fdcfe  7612                      JBE 0x004fdd12
004fdd00  e85b121f00                CALL 0x006eef60
004fdd05  33d2                      XOR EDX,EDX
004fdd07  b90f000000                MOV ECX,0xf
004fdd0c  f7f1                      DIV ECX
004fdd0e  85d2                      TEST EDX,EDX
004fdd10  7416                      JZ 0x004fdd28
004fdd12  e849121f00                CALL 0x006eef60
004fdd17  33d2                      XOR EDX,EDX
004fdd19  b978000000                MOV ECX,0x78
004fdd1e  f7f1                      DIV ECX
004fdd20  85d2                      TEST EDX,EDX
004fdd22  0f850c010000              JNZ 0x004fde34
004fdd28  6a00                      PUSH 0x0
004fdd2a  8d4f48                    LEA ECX,[EDI + 0x48]
004fdd2d  6860d5b100                PUSH 0xb1d560
004fdd32  e849c6f0ff                CALL 0x0040a380
004fdd37  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
004fdd3f  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004fdd45  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004fdd4f  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
004fdd55  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004fdd5d  50                        PUSH EAX
004fdd5e  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004fdd66  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004fdd6e  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004fdd76  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004fdd7e  e8ad225100                CALL 0x00a10030
004fdd83  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fdd8a  8db734030000              LEA ESI,[EDI + 0x334]
004fdd90  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004fdd94  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004fdd99  f30f590d34a8ba00          MULSS XMM1,dword ptr [0x00baa834]
004fdda1  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
004fdda9  f30f110e                  MOVSS dword ptr [ESI],XMM1
004fddad  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
004fddb2  7476                      JZ 0x004fde2a
004fddb4  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004fddba  0f57d2                    XORPS XMM2,XMM2
004fddbd  50                        PUSH EAX
004fddbe  8bcf                      MOV ECX,EDI
004fddc0  e8dba71d00                CALL 0x006d85a0
004fddc5  6840b6c700                PUSH 0xc7b640
004fddca  8bce                      MOV ECX,ESI
004fddcc  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004fddd0  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004fddd5  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
004fdddd  f30f590d34a8ba00          MULSS XMM1,dword ptr [0x00baa834]
004fdde5  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
004fddea  f30f110e                  MOVSS dword ptr [ESI],XMM1
004fddee  e80d285100                CALL 0x00a10600
004fddf3  84c0                      TEST AL,AL
004fddf5  7433                      JZ 0x004fde2a
004fddf7  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004fddfd  0f57d2                    XORPS XMM2,XMM2
004fde00  50                        PUSH EAX
004fde01  8bcf                      MOV ECX,EDI
004fde03  e8c8a41d00                CALL 0x006d82d0
004fde08  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004fde0c  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004fde11  f30f590d34a8ba00          MULSS XMM1,dword ptr [0x00baa834]
004fde19  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
004fde21  f30f110e                  MOVSS dword ptr [ESI],XMM1
004fde25  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
004fde2a  c787a00b000078000000      MOV dword ptr [EDI + 0xba0],0x78
004fde34  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
004fde3b  0f840c010000              JZ 0x004fdf4d
004fde41  e81a111f00                CALL 0x006eef60
004fde46  33d2                      XOR EDX,EDX
004fde48  b903000000                MOV ECX,0x3
004fde4d  f7f1                      DIV ECX
004fde4f  85d2                      TEST EDX,EDX
004fde51  0f85f6000000              JNZ 0x004fdf4d
004fde57  51                        PUSH ECX
004fde58  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fde5f  52                        PUSH EDX
004fde60  6a3c                      PUSH 0x3c
004fde62  51                        PUSH ECX
004fde63  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fde6a  8bcf                      MOV ECX,EDI
004fde6c  6a74                      PUSH 0x74
004fde6e  e82d8d1d00                CALL 0x006d6ba0
004fde73  e9d5000000                JMP 0x004fdf4d
004fde78  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004fde82  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004fde85  85f6                      TEST ESI,ESI
004fde87  744a                      JZ 0x004fded3
004fde89  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004fde8d  8bc6                      MOV EAX,ESI
004fde8f  7202                      JC 0x004fde93
004fde91  8b06                      MOV EAX,dword ptr [ESI]
004fde93  b918ddb100                MOV ECX,0xb1dd18
004fde98  8a10                      MOV DL,byte ptr [EAX]
004fde9a  3a11                      CMP DL,byte ptr [ECX]
004fde9c  751a                      JNZ 0x004fdeb8
004fde9e  84d2                      TEST DL,DL
004fdea0  7412                      JZ 0x004fdeb4
004fdea2  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004fdea5  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004fdea8  750e                      JNZ 0x004fdeb8
004fdeaa  83c002                    ADD EAX,0x2
004fdead  83c102                    ADD ECX,0x2
004fdeb0  84d2                      TEST DL,DL
004fdeb2  75e4                      JNZ 0x004fde98
004fdeb4  33c0                      XOR EAX,EAX
004fdeb6  eb05                      JMP 0x004fdebd
004fdeb8  1bc0                      SBB EAX,EAX
004fdeba  83c801                    OR EAX,0x1
004fdebd  85c0                      TEST EAX,EAX
004fdebf  7512                      JNZ 0x004fded3
004fdec1  384634                    CMP byte ptr [ESI + 0x34],AL
004fdec4  742e                      JZ 0x004fdef4
004fdec6  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004fdecc  8d7748                    LEA ESI,[EDI + 0x48]
004fdecf  7523                      JNZ 0x004fdef4
004fded1  eb03                      JMP 0x004fded6
004fded3  8d7748                    LEA ESI,[EDI + 0x48]
004fded6  6a01                      PUSH 0x1
004fded8  6818ddb100                PUSH 0xb1dd18
004fdedd  8bce                      MOV ECX,ESI
004fdedf  e8ecc6f0ff                CALL 0x0040a5d0
004fdee4  84c0                      TEST AL,AL
004fdee6  740c                      JZ 0x004fdef4
004fdee8  8d4e30                    LEA ECX,[ESI + 0x30]
004fdeeb  e8c0c2f0ff                CALL 0x0040a1b0
004fdef0  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004fdef4  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004fdefb  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
004fdf01  0f280df0c5ba00            MOVAPS XMM1,xmmword ptr [0x00bac5f0]
004fdf08  81c7e4010000              ADD EDI,0x1e4
004fdf0e  c785d0feffff00000000      MOV dword ptr [EBP + 0xfffffed0],0x0
004fdf18  c785d4feffff00000000      MOV dword ptr [EBP + 0xfffffed4],0x0
004fdf22  c785d8feffff00000000      MOV dword ptr [EBP + 0xfffffed8],0x0
004fdf2c  3bf8                      CMP EDI,EAX
004fdf2e  741d                      JZ 0x004fdf4d
004fdf30  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
004fdf36  0f1107                    MOVUPS xmmword ptr [EDI],XMM0
004fdf39  f30f7e85d0feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffed0]
004fdf41  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
004fdf46  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
004fdf4a  894728                    MOV dword ptr [EDI + 0x28],EAX
004fdf4d  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004fdf50  64890d00000000            MOV dword ptr FS:[0x0],ECX
004fdf57  59                        POP ECX
004fdf58  5f                        POP EDI
004fdf59  5e                        POP ESI
004fdf5a  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004fdf5d  33cd                      XOR ECX,EBP
004fdf5f  e8c7115f00                CALL 0x00aef12b
004fdf64  8be5                      MOV ESP,EBP
004fdf66  5d                        POP EBP
004fdf67  8be3                      MOV ESP,EBX
004fdf69  5b                        POP EBX
004fdf6a  c3                        RET
