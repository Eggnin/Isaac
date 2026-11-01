; J460 NPC AI 0x007d4e01 HELPER_FuseWrite_007d4e01
; types=4
; identities=4.*
; entry=007d4390
007d4390  55                        PUSH EBP
007d4391  8bec                      MOV EBP,ESP
007d4393  6aff                      PUSH -0x1
007d4395  680803b000                PUSH 0xb00308
007d439a  64a100000000              MOV EAX,FS:[0x0]
007d43a0  50                        PUSH EAX
007d43a1  81ecbc070000              SUB ESP,0x7bc
007d43a7  a1b493bf00                MOV EAX,[0x00bf93b4]
007d43ac  33c5                      XOR EAX,EBP
007d43ae  8945f0                    MOV dword ptr [EBP + -0x10],EAX
007d43b1  56                        PUSH ESI
007d43b2  57                        PUSH EDI
007d43b3  50                        PUSH EAX
007d43b4  8d45f4                    LEA EAX,[EBP + -0xc]
007d43b7  64a300000000              MOV FS:[0x0],EAX
007d43bd  8bf9                      MOV EDI,ECX
007d43bf  89bd48f8ffff              MOV dword ptr [EBP + 0xfffff848],EDI
007d43c5  8b872c1f0000              MOV EAX,dword ptr [EDI + 0x1f2c]
007d43cb  85c0                      TEST EAX,EAX
007d43cd  741e                      JZ 0x007d43ed
007d43cf  83f801                    CMP EAX,0x1
007d43d2  7e19                      JLE 0x007d43ed
007d43d4  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
007d43de  83f802                    CMP EAX,0x2
007d43e1  7e0a                      JLE 0x007d43ed
007d43e3  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
007d43ed  8b8f10140000              MOV ECX,dword ptr [EDI + 0x1410]
007d43f3  8bd0                      MOV EDX,EAX
007d43f5  85c9                      TEST ECX,ECX
007d43f7  743a                      JZ 0x007d4433
007d43f9  83792804                  CMP dword ptr [ECX + 0x28],0x4
007d43fd  7534                      JNZ 0x007d4433
007d43ff  83f802                    CMP EAX,0x2
007d4402  740a                      JZ 0x007d440e
007d4404  83f803                    CMP EAX,0x3
007d4407  7405                      JZ 0x007d440e
007d4409  83f804                    CMP EAX,0x4
007d440c  7525                      JNZ 0x007d4433
007d440e  83b91004000002            CMP dword ptr [ECX + 0x410],0x2
007d4415  8bd0                      MOV EDX,EAX
007d4417  7d1a                      JGE 0x007d4433
007d4419  c781100400000a000000      MOV dword ptr [ECX + 0x410],0xa
007d4423  c781140400000a000000      MOV dword ptr [ECX + 0x414],0xa
007d442d  8b972c1f0000              MOV EDX,dword ptr [EDI + 0x1f2c]
007d4433  8bb7301f0000              MOV ESI,dword ptr [EDI + 0x1f30]
007d4439  85f6                      TEST ESI,ESI
007d443b  0f8e8b020000              JLE 0x007d46cc
007d4441  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
007d4449  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
007d4451  2bc8                      SUB ECX,EAX
007d4453  03c9                      ADD ECX,ECX
007d4455  2bf1                      SUB ESI,ECX
007d4457  89b7301f0000              MOV dword ptr [EDI + 0x1f30],ESI
007d445d  83fa05                    CMP EDX,0x5
007d4460  750c                      JNZ 0x007d446e
007d4462  c787301f000000000000      MOV dword ptr [EDI + 0x1f30],0x0
007d446c  eb4a                      JMP 0x007d44b8
007d446e  85f6                      TEST ESI,ESI
007d4470  0f8f56020000              JG 0x007d46cc
007d4476  c787301f000000000000      MOV dword ptr [EDI + 0x1f30],0x0
007d4480  83fa01                    CMP EDX,0x1
007d4483  752a                      JNZ 0x007d44af
007d4485  818f7415000080000000      OR dword ptr [EDI + 0x1574],0x80
007d448f  8bcf                      MOV ECX,EDI
007d4491  c7872c1f000000000000      MOV dword ptr [EDI + 0x1f2c],0x0
007d449b  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
007d44a5  e8c6f0f8ff                CALL 0x00763570
007d44aa  e91d020000                JMP 0x007d46cc
007d44af  83fa02                    CMP EDX,0x2
007d44b2  0f8514020000              JNZ 0x007d46cc
007d44b8  83bf1014000000            CMP dword ptr [EDI + 0x1410],0x0
007d44bf  0f84c2010000              JZ 0x007d4687
007d44c5  8b970c140000              MOV EDX,dword ptr [EDI + 0x140c]
007d44cb  85d2                      TEST EDX,EDX
007d44cd  741a                      JZ 0x007d44e9
007d44cf  8b823c030000              MOV EAX,dword ptr [EDX + 0x33c]
007d44d5  8b8a40030000              MOV ECX,dword ptr [EDX + 0x340]
007d44db  898538f8ffff              MOV dword ptr [EBP + 0xfffff838],EAX
007d44e1  898d3cf8ffff              MOV dword ptr [EBP + 0xfffff83c],ECX
007d44e7  eb12                      JMP 0x007d44fb
007d44e9  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
007d44ef  8b8f40030000              MOV ECX,dword ptr [EDI + 0x340]
007d44f5  8945e8                    MOV dword ptr [EBP + -0x18],EAX
007d44f8  894dec                    MOV dword ptr [EBP + -0x14],ECX
007d44fb  85d2                      TEST EDX,EDX
007d44fd  8d8538f8ffff              LEA EAX,[EBP + 0xfffff838]
007d4503  8d4de8                    LEA ECX,[EBP + -0x18]
007d4506  0f45c8                    CMOVNZ ECX,EAX
007d4509  8b01                      MOV EAX,dword ptr [ECX]
007d450b  8987341f0000              MOV dword ptr [EDI + 0x1f34],EAX
007d4511  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
007d4514  b9dcb9b600                MOV ECX,0xb6b9dc
007d4519  8987381f0000              MOV dword ptr [EDI + 0x1f38],EAX
007d451f  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
007d4525  89873c1f0000              MOV dword ptr [EDI + 0x1f3c],EAX
007d452b  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
007d4531  8987401f0000              MOV dword ptr [EDI + 0x1f40],EAX
007d4537  b89cb9b600                MOV EAX,0xb6b99c
007d453c  83bf2c1f000005            CMP dword ptr [EDI + 0x1f2c],0x5
007d4543  0f45c1                    CMOVNZ EAX,ECX
007d4546  8bcf                      MOV ECX,EDI
007d4548  50                        PUSH EAX
007d4549  e8d278fdff                CALL 0x007abe20
007d454e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
007d4554  8d8d58f8ffff              LEA ECX,[EBP + 0xfffff858]
007d455a  c7872c1f000003000000      MOV dword ptr [EDI + 0x1f2c],0x3
007d4564  c78558f8ffff08040000      MOV dword ptr [EBP + 0xfffff858],0x408
007d456e  e80d221800                CALL 0x00956780
007d4573  83ec08                    SUB ESP,0x8
007d4576  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
007d457c  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
007d4584  c704240000803f            MOV dword ptr [ESP],0x3f800000
007d458b  6a00                      PUSH 0x0
007d458d  6a02                      PUSH 0x2
007d458f  51                        PUSH ECX
007d4590  c704240000803f            MOV dword ptr [ESP],0x3f800000
007d4597  ffb558f8ffff              PUSH dword ptr [EBP + 0xfffff858]
007d459d  e88e961500                CALL 0x0092dc30
007d45a2  6a00                      PUSH 0x0
007d45a4  6848020000                PUSH 0x248
007d45a9  8bcf                      MOV ECX,EDI
007d45ab  e830c1f9ff                CALL 0x007706e0
007d45b0  84c0                      TEST AL,AL
007d45b2  0f8414010000              JZ 0x007d46cc
007d45b8  a17816c700                MOV EAX,[0x00c71678]
007d45bd  6a00                      PUSH 0x0
007d45bf  6a00                      PUSH 0x0
007d45c1  68c5020000                PUSH 0x2c5
007d45c6  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
007d45cc  8d45e0                    LEA EAX,[EBP + -0x20]
007d45cf  68ce000000                PUSH 0xce
007d45d4  6a03                      PUSH 0x3
007d45d6  81c118120000              ADD ECX,0x1218
007d45dc  50                        PUSH EAX
007d45dd  e87e69c4ff                CALL 0x0041af60
007d45e2  33f6                      XOR ESI,ESI
007d45e4  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
007d45eb  3975ec                    CMP dword ptr [EBP + -0x14],ESI
007d45ee  7669                      JBE 0x007d4659
007d45f0  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
007d45f3  8b04b1                    MOV EAX,dword ptr [ECX + ESI*0x4]
007d45f6  39b810040000              CMP dword ptr [EAX + 0x410],EDI
007d45fc  7555                      JNZ 0x007d4653
007d45fe  8b00                      MOV EAX,dword ptr [EAX]
007d4600  8b0d40b6c700              MOV ECX,dword ptr [0x00c7b640]
007d4606  894dc0                    MOV dword ptr [EBP + -0x40],ECX
007d4609  894dc8                    MOV dword ptr [EBP + -0x38],ECX
007d460c  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
007d460f  a144b6c700                MOV EAX,[0x00c7b644]
007d4614  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
007d4617  8945cc                    MOV dword ptr [EBP + -0x34],EAX
007d461a  8d45b0                    LEA EAX,[EBP + -0x50]
007d461d  50                        PUSH EAX
007d461e  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
007d4621  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
007d4628  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
007d462f  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
007d4636  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
007d4639  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
007d4640  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
007d4647  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
007d464e  ffd2                      CALL EDX
007d4650  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
007d4653  46                        INC ESI
007d4654  3b75ec                    CMP ESI,dword ptr [EBP + -0x14]
007d4657  729a                      JC 0x007d45f3
007d4659  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
007d4660  807de000                  CMP byte ptr [EBP + -0x20],0x0
007d4664  7566                      JNZ 0x007d46cc
007d4666  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
007d466d  b101                      MOV CL,0x1
007d466f  8b55e4                    MOV EDX,dword ptr [EBP + -0x1c]
007d4672  6a00                      PUSH 0x0
007d4674  6a00                      PUSH 0x0
007d4676  e835022900                CALL 0x00a648b0
007d467b  83c408                    ADD ESP,0x8
007d467e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
007d4685  eb45                      JMP 0x007d46cc
007d4687  818f7415000080000000      OR dword ptr [EDI + 0x1574],0x80
007d4691  8bcf                      MOV ECX,EDI
007d4693  c7872c1f000000000000      MOV dword ptr [EDI + 0x1f2c],0x0
007d469d  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
007d46a7  e8c4eef8ff                CALL 0x00763570
007d46ac  68142cb600                PUSH 0xb62c14
007d46b1  8bcf                      MOV ECX,EDI
007d46b3  c7873813000001000000      MOV dword ptr [EDI + 0x1338],0x1
007d46bd  c7870416000005000000      MOV dword ptr [EDI + 0x1604],0x5
007d46c7  e8c477fdff                CALL 0x007abe90
007d46cc  8b872c1f0000              MOV EAX,dword ptr [EDI + 0x1f2c]
007d46d2  83e803                    SUB EAX,0x3
007d46d5  0f84a8090000              JZ 0x007d5083
007d46db  83e801                    SUB EAX,0x1
007d46de  0f856a0a0000              JNZ 0x007d514e
007d46e4  39477c                    CMP dword ptr [EDI + 0x7c],EAX
007d46e7  0f84b5080000              JZ 0x007d4fa2
007d46ed  6834d5b100                PUSH 0xb1d534
007d46f2  8d4f78                    LEA ECX,[EDI + 0x78]
007d46f5  e8d666c3ff                CALL 0x0040add0
007d46fa  84c0                      TEST AL,AL
007d46fc  0f849a080000              JZ 0x007d4f9c
007d4702  a17816c700                MOV EAX,[0x00c71678]
007d4707  f30f108ff0140000          MOVSS XMM1,dword ptr [EDI + 0x14f0]
007d470f  f30f1015a0a8ba00          MOVSS XMM2,dword ptr [0x00baa8a0]
007d4717  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
007d471e  7c0a                      JL 0x007d472a
007d4720  f30f119544f8ffff          MOVSS dword ptr [EBP + 0xfffff844],XMM2
007d4728  eb3f                      JMP 0x007d4769
007d472a  0f28c1                    MOVAPS XMM0,XMM1
007d472d  c78550f8ffff00002042      MOV dword ptr [EBP + 0xfffff850],0x42200000
007d4737  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
007d473f  8d854cf8ffff              LEA EAX,[EBP + 0xfffff84c]
007d4745  8d8d50f8ffff              LEA ECX,[EBP + 0xfffff850]
007d474b  0f2f0504a9ba00            COMISS XMM0,dword ptr [0x00baa904]
007d4752  f30f11854cf8ffff          MOVSS dword ptr [EBP + 0xfffff84c],XMM0
007d475a  0f46c1                    CMOVBE EAX,ECX
007d475d  f30f1000                  MOVSS XMM0,dword ptr [EAX]
007d4761  f30f118544f8ffff          MOVSS dword ptr [EBP + 0xfffff844],XMM0
007d4769  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
007d476f  8d8540f8ffff              LEA EAX,[EBP + 0xfffff840]
007d4775  f30f59ca                  MULSS XMM1,XMM2
007d4779  8dbd50f8ffff              LEA EDI,[EBP + 0xfffff850]
007d477f  c78540f8ffff0000a041      MOV dword ptr [EBP + 0xfffff840],0x41a00000
007d4789  8d8d58f8ffff              LEA ECX,[EBP + 0xfffff858]
007d478f  c78558f8ffff09040000      MOV dword ptr [EBP + 0xfffff858],0x409
007d4799  0f2f0d7ca8ba00            COMISS XMM1,dword ptr [0x00baa87c]
007d47a0  f30f118d50f8ffff          MOVSS dword ptr [EBP + 0xfffff850],XMM1
007d47a8  0f46f8                    CMOVBE EDI,EAX
007d47ab  f30f1007                  MOVSS XMM0,dword ptr [EDI]
007d47af  f30f11854cf8ffff          MOVSS dword ptr [EBP + 0xfffff84c],XMM0
007d47b7  e8c41f1800                CALL 0x00956780
007d47bc  83ec08                    SUB ESP,0x8
007d47bf  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
007d47c5  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
007d47cd  c704240000803f            MOV dword ptr [ESP],0x3f800000
007d47d4  6a00                      PUSH 0x0
007d47d6  6a02                      PUSH 0x2
007d47d8  51                        PUSH ECX
007d47d9  c704240000803f            MOV dword ptr [ESP],0x3f800000
007d47e0  ffb558f8ffff              PUSH dword ptr [EBP + 0xfffff858]
007d47e6  e845941500                CALL 0x0092dc30
007d47eb  8b8d48f8ffff              MOV ECX,dword ptr [EBP + 0xfffff848]
007d47f1  8d45d8                    LEA EAX,[EBP + -0x28]
007d47f4  50                        PUSH EAX
007d47f5  8d4978                    LEA ECX,[ECX + 0x78]
007d47f8  e8f3e3c7ff                CALL 0x00452bf0
007d47fd  83781410                  CMP dword ptr [EAX + 0x14],0x10
007d4801  8b5010                    MOV EDX,dword ptr [EAX + 0x10]
007d4804  7202                      JC 0x007d4808
007d4806  8b00                      MOV EAX,dword ptr [EAX]
007d4808  6a0d                      PUSH 0xd
007d480a  68ccb9b600                PUSH 0xb6b9cc
007d480f  8bc8                      MOV ECX,EAX
007d4811  e8ca82c3ff                CALL 0x0040cae0
007d4816  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
007d4819  83c408                    ADD ESP,0x8
007d481c  888557f8ffff              MOV byte ptr [EBP + 0xfffff857],AL
007d4822  83fa10                    CMP EDX,0x10
007d4825  7234                      JC 0x007d485b
007d4827  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
007d482a  42                        INC EDX
007d482b  8bc1                      MOV EAX,ECX
007d482d  81fa00100000              CMP EDX,0x1000
007d4833  7216                      JC 0x007d484b
007d4835  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
007d4838  83c223                    ADD EDX,0x23
007d483b  2bc1                      SUB EAX,ECX
007d483d  83c0fc                    ADD EAX,-0x4
007d4840  83f81f                    CMP EAX,0x1f
007d4843  7606                      JBE 0x007d484b
007d4845  ff159488b100              CALL dword ptr [0x00b18894]
007d484b  52                        PUSH EDX
007d484c  51                        PUSH ECX
007d484d  e80aa93100                CALL 0x00aef15c
007d4852  8a8557f8ffff              MOV AL,byte ptr [EBP + 0xfffff857]
007d4858  83c408                    ADD ESP,0x8
007d485b  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
007d4862  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
007d4869  c645d800                  MOV byte ptr [EBP + -0x28],0x0
007d486d  84c0                      TEST AL,AL
007d486f  0f84d4030000              JZ 0x007d4c49
007d4875  f30f108544f8ffff          MOVSS XMM0,dword ptr [EBP + 0xfffff844]
007d487d  8d8d58f8ffff              LEA ECX,[EBP + 0xfffff858]
007d4883  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
007d488b  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
007d4891  f30f100f                  MOVSS XMM1,dword ptr [EDI]
007d4895  c78558f8ffff34000000      MOV dword ptr [EBP + 0xfffff858],0x34
007d489f  f30f118544f8ffff          MOVSS dword ptr [EBP + 0xfffff844],XMM0
007d48a7  0f28c1                    MOVAPS XMM0,XMM1
007d48aa  f30f58c8                  ADDSS XMM1,XMM0
007d48ae  f30f118d4cf8ffff          MOVSS dword ptr [EBP + 0xfffff84c],XMM1
007d48b6  e8c51e1800                CALL 0x00956780
007d48bb  83ec08                    SUB ESP,0x8
007d48be  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
007d48c4  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
007d48cc  c704240000803f            MOV dword ptr [ESP],0x3f800000
007d48d3  6a00                      PUSH 0x0
007d48d5  6a02                      PUSH 0x2
007d48d7  51                        PUSH ECX
007d48d8  c704240000803f            MOV dword ptr [ESP],0x3f800000
007d48df  ffb558f8ffff              PUSH dword ptr [EBP + 0xfffff858]
007d48e5  e846931500                CALL 0x0092dc30
007d48ea  e871a6f1ff                CALL 0x006eef60
007d48ef  8bbd48f8ffff              MOV EDI,dword ptr [EBP + 0xfffff848]
007d48f5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007d48fb  50                        PUSH EAX
007d48fc  6a00                      PUSH 0x0
007d48fe  57                        PUSH EDI
007d48ff  6840b6c700                PUSH 0xc7b640
007d4904  8db73c030000              LEA ESI,[EDI + 0x33c]
007d490a  56                        PUSH ESI
007d490b  6a7f                      PUSH 0x7f
007d490d  68e8030000                PUSH 0x3e8
007d4912  e80942c5ff                CALL 0x00428b20
007d4917  f30f1006                  MOVSS XMM0,dword ptr [ESI]
007d491b  8bc8                      MOV ECX,EAX
007d491d  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
007d4922  8b01                      MOV EAX,dword ptr [ECX]
007d4924  f30f118134030000          MOVSS dword ptr [ECX + 0x334],XMM0
007d492c  f30f118938030000          MOVSS dword ptr [ECX + 0x338],XMM1
007d4934  ff500c                    CALL dword ptr [EAX + 0xc]
007d4937  e824a6f1ff                CALL 0x006eef60
007d493c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007d4942  50                        PUSH EAX
007d4943  6a00                      PUSH 0x0
007d4945  6a00                      PUSH 0x0
007d4947  6840b6c700                PUSH 0xc7b640
007d494c  56                        PUSH ESI
007d494d  6a12                      PUSH 0x12
007d494f  68e8030000                PUSH 0x3e8
007d4954  e8c741c5ff                CALL 0x00428b20
007d4959  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
007d4961  8bc8                      MOV ECX,EAX
007d4963  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
007d496b  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
007d4973  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
007d497b  8b01                      MOV EAX,dword ptr [ECX]
007d497d  f30f1189e4000000          MOVSS dword ptr [ECX + 0xe4],XMM1
007d4985  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
007d498d  ff500c                    CALL dword ptr [EAX + 0xc]
007d4990  33ff                      XOR EDI,EDI
007d4992  e8c9a5f1ff                CALL 0x006eef60
007d4997  660f6ec0                  MOVD XMM0,EAX
007d499b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
007d499f  c1e81f                    SHR EAX,0x1f
007d49a2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
007d49ab  8bc7                      MOV EAX,EDI
007d49ad  c1e81f                    SHR EAX,0x1f
007d49b0  660f5ac8                  CVTPD2PS XMM1,XMM0
007d49b4  660f6ec7                  MOVD XMM0,EDI
007d49b8  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
007d49c0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
007d49c4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
007d49cd  660f5ac0                  CVTPD2PS XMM0,XMM0
007d49d1  f30f58c1                  ADDSS XMM0,XMM1
007d49d5  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
007d49dd  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
007d49e5  f30f5e0554a8ba00          DIVSS XMM0,dword ptr [0x00baa854]
007d49ed  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
007d49f5  f30f118540f8ffff          MOVSS dword ptr [EBP + 0xfffff840],XMM0
007d49fd  e81e8bc4ff                CALL 0x0041d520
007d4a02  f30f118558f8ffff          MOVSS dword ptr [EBP + 0xfffff858],XMM0
007d4a0a  e851a5f1ff                CALL 0x006eef60
007d4a0f  660f6ec8                  MOVD XMM1,EAX
007d4a13  f30fe6c9                  CVTDQ2PD XMM1,XMM1
007d4a17  c1e81f                    SHR EAX,0x1f
007d4a1a  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
007d4a23  660f5ac1                  CVTPD2PS XMM0,XMM1
007d4a27  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
007d4a2f  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
007d4a37  f30f580554a8ba00          ADDSS XMM0,dword ptr [0x00baa854]
007d4a3f  f30f118550f8ffff          MOVSS dword ptr [EBP + 0xfffff850],XMM0
007d4a47  f30f108540f8ffff          MOVSS XMM0,dword ptr [EBP + 0xfffff840]
007d4a4f  e8ec8ac4ff                CALL 0x0041d540
007d4a54  f30f108d50f8ffff          MOVSS XMM1,dword ptr [EBP + 0xfffff850]
007d4a5c  f30f59c1                  MULSS XMM0,XMM1
007d4a60  f30f598d58f8ffff          MULSS XMM1,dword ptr [EBP + 0xfffff858]
007d4a68  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
007d4a6d  f30f590dc4a3ba00          MULSS XMM1,dword ptr [0x00baa3c4]
007d4a75  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
007d4a7a  e8e1a4f1ff                CALL 0x006eef60
007d4a7f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007d4a85  50                        PUSH EAX
007d4a86  6a00                      PUSH 0x0
007d4a88  6a00                      PUSH 0x0
007d4a8a  8d45e8                    LEA EAX,[EBP + -0x18]
007d4a8d  50                        PUSH EAX
007d4a8e  56                        PUSH ESI
007d4a8f  6a3b                      PUSH 0x3b
007d4a91  68e8030000                PUSH 0x3e8
007d4a96  e88540c5ff                CALL 0x00428b20
007d4a9b  898558f8ffff              MOV dword ptr [EBP + 0xfffff858],EAX
007d4aa1  e8baa4f1ff                CALL 0x006eef60
007d4aa6  83e001                    AND EAX,0x1
007d4aa9  740a                      JZ 0x007d4ab5
007d4aab  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
007d4ab3  eb08                      JMP 0x007d4abd
007d4ab5  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
007d4abd  f30f118550f8ffff          MOVSS dword ptr [EBP + 0xfffff850],XMM0
007d4ac5  e896a4f1ff                CALL 0x006eef60
007d4aca  660f6ec0                  MOVD XMM0,EAX
007d4ace  f30fe6c0                  CVTDQ2PD XMM0,XMM0
007d4ad2  c1e81f                    SHR EAX,0x1f
007d4ad5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
007d4ade  8b8558f8ffff              MOV EAX,dword ptr [EBP + 0xfffff858]
007d4ae4  660f5ac0                  CVTPD2PS XMM0,XMM0
007d4ae8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
007d4af0  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
007d4af8  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
007d4b00  f30f598550f8ffff          MULSS XMM0,dword ptr [EBP + 0xfffff850]
007d4b08  f30f118074040000          MOVSS dword ptr [EAX + 0x474],XMM0
007d4b10  e84ba4f1ff                CALL 0x006eef60
007d4b15  660f6ec0                  MOVD XMM0,EAX
007d4b19  f30fe6c0                  CVTDQ2PD XMM0,XMM0
007d4b1d  c1e81f                    SHR EAX,0x1f
007d4b20  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
007d4b29  8b8558f8ffff              MOV EAX,dword ptr [EBP + 0xfffff858]
007d4b2f  660f5ac8                  CVTPD2PS XMM1,XMM0
007d4b33  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
007d4b3b  f30f590d04a3ba00          MULSS XMM1,dword ptr [0x00baa304]
007d4b43  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
007d4b4b  0f28c1                    MOVAPS XMM0,XMM1
007d4b4e  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
007d4b56  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
007d4b5e  f30f1188e8000000          MOVSS dword ptr [EAX + 0xe8],XMM1
007d4b66  f30f1180e4000000          MOVSS dword ptr [EAX + 0xe4],XMM0
007d4b6e  e8eda3f1ff                CALL 0x006eef60
007d4b73  33d2                      XOR EDX,EDX
007d4b75  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
007d4b7c  b928000000                MOV ECX,0x28
007d4b81  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
007d4b88  f7f1                      DIV ECX
007d4b8a  6a01                      PUSH 0x1
007d4b8c  03d1                      ADD EDX,ECX
007d4b8e  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
007d4b95  8b8d58f8ffff              MOV ECX,dword ptr [EBP + 0xfffff858]
007d4b9b  0f57c0                    XORPS XMM0,XMM0
007d4b9e  6a00                      PUSH 0x0
007d4ba0  68ff000000                PUSH 0xff
007d4ba5  0f1145bc                  MOVUPS xmmword ptr [EBP + -0x44],XMM0
007d4ba9  8b01                      MOV EAX,dword ptr [ECX]
007d4bab  0f2805e0bdba00            MOVAPS XMM0,xmmword ptr [0x00babde0]
007d4bb2  89915c040000              MOV dword ptr [ECX + 0x45c],EDX
007d4bb8  899160040000              MOV dword ptr [ECX + 0x460],EDX
007d4bbe  8d55ac                    LEA EDX,[EBP + -0x54]
007d4bc1  6aff                      PUSH -0x1
007d4bc3  52                        PUSH EDX
007d4bc4  0f1145ac                  MOVUPS xmmword ptr [EBP + -0x54],XMM0
007d4bc8  ff503c                    CALL dword ptr [EAX + 0x3c]
007d4bcb  47                        INC EDI
007d4bcc  83ff0f                    CMP EDI,0xf
007d4bcf  0f82bdfdffff              JC 0x007d4992
007d4bd5  e886a3f1ff                CALL 0x006eef60
007d4bda  8bbd48f8ffff              MOV EDI,dword ptr [EBP + 0xfffff848]
007d4be0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007d4be6  50                        PUSH EAX
007d4be7  6a01                      PUSH 0x1
007d4be9  57                        PUSH EDI
007d4bea  6840b6c700                PUSH 0xc7b640
007d4bef  56                        PUSH ESI
007d4bf0  6a10                      PUSH 0x10
007d4bf2  68e8030000                PUSH 0x3e8
007d4bf7  e8243fc5ff                CALL 0x00428b20
007d4bfc  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
007d4c04  8bf0                      MOV ESI,EAX
007d4c06  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
007d4c0e  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
007d4c16  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
007d4c1e  f30f118ee4000000          MOVSS dword ptr [ESI + 0xe4],XMM1
007d4c26  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
007d4c2e  e82da3f1ff                CALL 0x006eef60
007d4c33  34ff                      XOR AL,0xff
007d4c35  8bce                      MOV ECX,ESI
007d4c37  2401                      AND AL,0x1
007d4c39  888648010000              MOV byte ptr [ESI + 0x148],AL
007d4c3f  8b06                      MOV EAX,dword ptr [ESI]
007d4c41  ff500c                    CALL dword ptr [EAX + 0xc]
007d4c44  e971010000                JMP 0x007d4dba
007d4c49  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007d4c4f  6a0e                      PUSH 0xe
007d4c51  e81aeaf2ff                CALL 0x00703670
007d4c56  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
007d4c5c  8d8d50f8ffff              LEA ECX,[EBP + 0xfffff850]
007d4c62  c78550f8ffff34000000      MOV dword ptr [EBP + 0xfffff850],0x34
007d4c6c  e80f1b1800                CALL 0x00956780
007d4c71  83ec08                    SUB ESP,0x8
007d4c74  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
007d4c7a  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
007d4c82  c704240000803f            MOV dword ptr [ESP],0x3f800000
007d4c89  6a00                      PUSH 0x0
007d4c8b  6a02                      PUSH 0x2
007d4c8d  51                        PUSH ECX
007d4c8e  c704240000803f            MOV dword ptr [ESP],0x3f800000
007d4c95  ffb550f8ffff              PUSH dword ptr [EBP + 0xfffff850]
007d4c9b  e8908f1500                CALL 0x0092dc30
007d4ca0  8bbd48f8ffff              MOV EDI,dword ptr [EBP + 0xfffff848]
007d4ca6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007d4cac  6a0d                      PUSH 0xd
007d4cae  83ec08                    SUB ESP,0x8
007d4cb1  8d873c030000              LEA EAX,[EDI + 0x33c]
007d4cb7  c7442404cdcccc3c          MOV dword ptr [ESP + 0x4],0x3ccccccd
007d4cbf  c704240ad7233d            MOV dword ptr [ESP],0x3d23d70a
007d4cc6  50                        PUSH EAX
007d4cc7  e8a4eaf2ff                CALL 0x00703770
007d4ccc  f30f1087f0140000          MOVSS XMM0,dword ptr [EDI + 0x14f0]
007d4cd4  8d8550f8ffff              LEA EAX,[EBP + 0xfffff850]
007d4cda  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
007d4ce2  8db540f8ffff              LEA ESI,[EBP + 0xfffff840]
007d4ce8  c78550f8ffff00008c42      MOV dword ptr [EBP + 0xfffff850],0x428c0000
007d4cf2  f30f580524a9ba00          ADDSS XMM0,dword ptr [0x00baa924]
007d4cfa  0f2f057ca9ba00            COMISS XMM0,dword ptr [0x00baa97c]
007d4d01  f30f118540f8ffff          MOVSS dword ptr [EBP + 0xfffff840],XMM0
007d4d09  0f46f0                    CMOVBE ESI,EAX
007d4d0c  f30f1006                  MOVSS XMM0,dword ptr [ESI]
007d4d10  f30f5e0504a8ba00          DIVSS XMM0,dword ptr [0x00baa804]
007d4d18  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
007d4d1d  e83ea2f1ff                CALL 0x006eef60
007d4d22  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007d4d28  50                        PUSH EAX
007d4d29  6a00                      PUSH 0x0
007d4d2b  57                        PUSH EDI
007d4d2c  6840b6c700                PUSH 0xc7b640
007d4d31  8d873c030000              LEA EAX,[EDI + 0x33c]
007d4d37  50                        PUSH EAX
007d4d38  6a3d                      PUSH 0x3d
007d4d3a  68e8030000                PUSH 0x3e8
007d4d3f  e8dc3dc5ff                CALL 0x00428b20
007d4d44  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
007d4d4a  89853cf8ffff              MOV dword ptr [EBP + 0xfffff83c],EAX
007d4d50  05bc030000                ADD EAX,0x3bc
007d4d55  898548f8ffff              MOV dword ptr [EBP + 0xfffff848],EAX
007d4d5b  85c9                      TEST ECX,ECX
007d4d5d  741e                      JZ 0x007d4d7d
007d4d5f  898558f8ffff              MOV dword ptr [EBP + 0xfffff858],EAX
007d4d65  81c1cc030000              ADD ECX,0x3cc
007d4d6b  8d8558f8ffff              LEA EAX,[EBP + 0xfffff858]
007d4d71  50                        PUSH EAX
007d4d72  e899a4cfff                CALL 0x004cf210
007d4d77  8b8548f8ffff              MOV EAX,dword ptr [EBP + 0xfffff848]
007d4d7d  50                        PUSH EAX
007d4d7e  8bcf                      MOV ECX,EDI
007d4d80  8938                      MOV dword ptr [EAX],EDI
007d4d82  e8698fcfff                CALL 0x004cdcf0
007d4d87  8b8d3cf8ffff              MOV ECX,dword ptr [EBP + 0xfffff83c]
007d4d8d  f30f2c45ec                CVTTSS2SI EAX,dword ptr [EBP + -0x14]
007d4d92  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
007d4d9a  f30f118154040000          MOVSS dword ptr [ECX + 0x454],XMM0
007d4da2  f30f1006                  MOVSS XMM0,dword ptr [ESI]
007d4da6  f30f118158040000          MOVSS dword ptr [ECX + 0x458],XMM0
007d4dae  89815c040000              MOV dword ptr [ECX + 0x45c],EAX
007d4db4  898160040000              MOV dword ptr [ECX + 0x460],EAX
007d4dba  8b8710140000              MOV EAX,dword ptr [EDI + 0x1410]
007d4dc0  8945ec                    MOV dword ptr [EBP + -0x14],EAX
007d4dc3  85c0                      TEST EAX,EAX
007d4dc5  7459                      JZ 0x007d4e20
007d4dc7  8b00                      MOV EAX,dword ptr [EAX]
007d4dc9  8d4db0                    LEA ECX,[EBP + -0x50]
007d4dcc  57                        PUSH EDI
007d4dcd  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
007d4dd0  e83bc5c5ff                CALL 0x00431310
007d4dd5  f30f108544f8ffff          MOVSS XMM0,dword ptr [EBP + 0xfffff844]
007d4ddd  8d45b0                    LEA EAX,[EBP + -0x50]
007d4de0  6a1e                      PUSH 0x1e
007d4de2  50                        PUSH EAX
007d4de3  6a00                      PUSH 0x0
007d4de5  6800000001                PUSH 0x1000000
007d4dea  51                        PUSH ECX
007d4deb  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
007d4dee  f30f110424                MOVSS dword ptr [ESP],XMM0
007d4df3  ffd6                      CALL ESI
007d4df5  8b8710140000              MOV EAX,dword ptr [EDI + 0x1410]
007d4dfb  83782804                  CMP dword ptr [EAX + 0x28],0x4
007d4dff  751f                      JNZ 0x007d4e20
007d4e01  c7801004000000000000      MOV dword ptr [EAX + 0x410],0x0
007d4e0b  c7801404000000000000      MOV dword ptr [EAX + 0x414],0x0
007d4e15  8b8f10140000              MOV ECX,dword ptr [EDI + 0x1410]
007d4e1b  8b01                      MOV EAX,dword ptr [ECX]
007d4e1d  ff500c                    CALL dword ptr [EAX + 0xc]
007d4e20  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
007d4e27  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007d4e2d  8db73c030000              LEA ESI,[EDI + 0x33c]
007d4e33  6a00                      PUSH 0x0
007d4e35  6a00                      PUSH 0x0
007d4e37  6800000001                PUSH 0x1000000
007d4e3c  83ec10                    SUB ESP,0x10
007d4e3f  8bc4                      MOV EAX,ESP
007d4e41  57                        PUSH EDI
007d4e42  6a00                      PUSH 0x0
007d4e44  83ec08                    SUB ESP,0x8
007d4e47  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
007d4e4a  f30f10854cf8ffff          MOVSS XMM0,dword ptr [EBP + 0xfffff84c]
007d4e52  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
007d4e58  f30f108544f8ffff          MOVSS XMM0,dword ptr [EBP + 0xfffff844]
007d4e60  f30f110424                MOVSS dword ptr [ESP],XMM0
007d4e65  56                        PUSH ESI
007d4e66  e835a4f2ff                CALL 0x006ff2a0
007d4e6b  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
007d4e73  f30f1006                  MOVSS XMM0,dword ptr [ESI]
007d4e77  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
007d4e7c  f30f5cc2                  SUBSS XMM0,XMM2
007d4e80  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
007d4e88  a17816c700                MOV EAX,[0x00c71678]
007d4e8d  f30f5ec2                  DIVSS XMM0,XMM2
007d4e91  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
007d4e97  f30f5eca                  DIVSS XMM1,XMM2
007d4e9b  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
007d4ea3  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
007d4eab  f30f2cd0                  CVTTSS2SI EDX,XMM0
007d4eaf  f30f2cc1                  CVTTSS2SI EAX,XMM1
007d4eb3  85d2                      TEST EDX,EDX
007d4eb5  7816                      JS 0x007d4ecd
007d4eb7  3b510c                    CMP EDX,dword ptr [ECX + 0xc]
007d4eba  7d11                      JGE 0x007d4ecd
007d4ebc  85c0                      TEST EAX,EAX
007d4ebe  780d                      JS 0x007d4ecd
007d4ec0  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
007d4ec3  7d08                      JGE 0x007d4ecd
007d4ec5  0faf410c                  IMUL EAX,dword ptr [ECX + 0xc]
007d4ec9  03c2                      ADD EAX,EDX
007d4ecb  eb03                      JMP 0x007d4ed0
007d4ecd  83c8ff                    OR EAX,0xffffffff
007d4ed0  50                        PUSH EAX
007d4ed1  e82ab90100                CALL 0x007f0800
007d4ed6  85c0                      TEST EAX,EAX
007d4ed8  740e                      JZ 0x007d4ee8
007d4eda  80bf7015000000            CMP byte ptr [EDI + 0x1570],0x0
007d4ee1  7466                      JZ 0x007d4f49
007d4ee3  83f803                    CMP EAX,0x3
007d4ee6  7f61                      JG 0x007d4f49
007d4ee8  57                        PUSH EDI
007d4ee9  8d8d5cf8ffff              LEA ECX,[EBP + 0xfffff85c]
007d4eef  e8ace20000                CALL 0x007e31a0
007d4ef4  8d873c1f0000              LEA EAX,[EDI + 0x1f3c]
007d4efa  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
007d4f01  6a00                      PUSH 0x0
007d4f03  50                        PUSH EAX
007d4f04  8d8d5cf8ffff              LEA ECX,[EBP + 0xfffff85c]
007d4f0a  e861210100                CALL 0x007e7070
007d4f0f  84c0                      TEST AL,AL
007d4f11  7411                      JZ 0x007d4f24
007d4f13  8b06                      MOV EAX,dword ptr [ESI]
007d4f15  89873c1f0000              MOV dword ptr [EDI + 0x1f3c],EAX
007d4f1b  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
007d4f1e  8987401f0000              MOV dword ptr [EDI + 0x1f40],EAX
007d4f24  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
007d4f2b  8b45a4                    MOV EAX,dword ptr [EBP + -0x5c]
007d4f2e  ff7004                    PUSH dword ptr [EAX + 0x4]
007d4f31  8d45a4                    LEA EAX,[EBP + -0x5c]
007d4f34  50                        PUSH EAX
007d4f35  8bc8                      MOV ECX,EAX
007d4f37  e804f6c4ff                CALL 0x00424540
007d4f3c  6a14                      PUSH 0x14
007d4f3e  ff75a4                    PUSH dword ptr [EBP + -0x5c]
007d4f41  e816a23100                CALL 0x00aef15c
007d4f46  83c408                    ADD ESP,0x8
007d4f49  6a00                      PUSH 0x0
007d4f4b  6848020000                PUSH 0x248
007d4f50  8bcf                      MOV ECX,EDI
007d4f52  e889b7f9ff                CALL 0x007706e0
007d4f57  84c0                      TEST AL,AL
007d4f59  7441                      JZ 0x007d4f9c
007d4f5b  c7854cf8ffff03000000      MOV dword ptr [EBP + 0xfffff84c],0x3
007d4f65  6a01                      PUSH 0x1
007d4f67  6a00                      PUSH 0x0
007d4f69  56                        PUSH ESI
007d4f6a  68c5020000                PUSH 0x2c5
007d4f6f  8bcf                      MOV ECX,EDI
007d4f71  e83a44dfff                CALL 0x005c93b0
007d4f76  85c0                      TEST EAX,EAX
007d4f78  7419                      JZ 0x007d4f93
007d4f7a  f30f1006                  MOVSS XMM0,dword ptr [ESI]
007d4f7e  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
007d4f83  f30f118034030000          MOVSS dword ptr [EAX + 0x334],XMM0
007d4f8b  f30f118838030000          MOVSS dword ptr [EAX + 0x338],XMM1
007d4f93  83ad4cf8ffff01            SUB dword ptr [EBP + 0xfffff84c],0x1
007d4f9a  75c9                      JNZ 0x007d4f65
007d4f9c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
007d4fa0  7505                      JNZ 0x007d4fa7
007d4fa2  8d7778                    LEA ESI,[EDI + 0x78]
007d4fa5  eb1f                      JMP 0x007d4fc6
007d4fa7  8d7778                    LEA ESI,[EDI + 0x78]
007d4faa  68b0d3b100                PUSH 0xb1d3b0
007d4faf  8bce                      MOV ECX,ESI
007d4fb1  e81a5ec3ff                CALL 0x0040add0
007d4fb6  84c0                      TEST AL,AL
007d4fb8  740c                      JZ 0x007d4fc6
007d4fba  6840b6c700                PUSH 0xc7b640
007d4fbf  8bcf                      MOV ECX,EDI
007d4fc1  e8aad4ffff                CALL 0x007d2470
007d4fc6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
007d4fca  7463                      JZ 0x007d502f
007d4fcc  68b0d3b100                PUSH 0xb1d3b0
007d4fd1  8bce                      MOV ECX,ESI
007d4fd3  e8985ec3ff                CALL 0x0040ae70
007d4fd8  84c0                      TEST AL,AL
007d4fda  7440                      JZ 0x007d501c
007d4fdc  f30f10973c1f0000          MOVSS XMM2,dword ptr [EDI + 0x1f3c]
007d4fe4  f30f108f401f0000          MOVSS XMM1,dword ptr [EDI + 0x1f40]
007d4fec  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
007d4ff4  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
007d4ffc  f30f5915f8a1ba00          MULSS XMM2,dword ptr [0x00baa1f8]
007d5004  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
007d500c  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
007d5014  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
007d501c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
007d5020  740d                      JZ 0x007d502f
007d5022  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
007d5029  0f851f010000              JNZ 0x007d514e
007d502f  b90f000000                MOV ECX,0xf
007d5034  c7872c1f000000000000      MOV dword ptr [EDI + 0x1f2c],0x0
007d503e  c7873813000001000000      MOV dword ptr [EDI + 0x1338],0x1
007d5048  c7870416000005000000      MOV dword ptr [EDI + 0x1604],0x5
007d5052  8b87bc130000              MOV EAX,dword ptr [EDI + 0x13bc]
007d5058  3bc1                      CMP EAX,ECX
007d505a  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
007d5064  0f4cc1                    CMOVL EAX,ECX
007d5067  818f7415000080000000      OR dword ptr [EDI + 0x1574],0x80
007d5071  8bcf                      MOV ECX,EDI
007d5073  8987bc130000              MOV dword ptr [EDI + 0x13bc],EAX
007d5079  e8f2e4f8ff                CALL 0x00763570
007d507e  e9cb000000                JMP 0x007d514e
007d5083  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
007d5087  740d                      JZ 0x007d5096
007d5089  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
007d5090  0f85b8000000              JNZ 0x007d514e
007d5096  6a00                      PUSH 0x0
007d5098  6a00                      PUSH 0x0
007d509a  8db7341f0000              LEA ESI,[EDI + 0x1f34]
007d50a0  c7872c1f000004000000      MOV dword ptr [EDI + 0x1f2c],0x4
007d50aa  56                        PUSH ESI
007d50ab  8bcf                      MOV ECX,EDI
007d50ad  e89e88ffff                CALL 0x007cd950
007d50b2  8b8f10140000              MOV ECX,dword ptr [EDI + 0x1410]
007d50b8  85c9                      TEST ECX,ECX
007d50ba  7411                      JZ 0x007d50cd
007d50bc  8b06                      MOV EAX,dword ptr [ESI]
007d50be  89813c030000              MOV dword ptr [ECX + 0x33c],EAX
007d50c4  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
007d50c7  898140030000              MOV dword ptr [ECX + 0x340],EAX
007d50cd  8d45d8                    LEA EAX,[EBP + -0x28]
007d50d0  50                        PUSH EAX
007d50d1  8d4f78                    LEA ECX,[EDI + 0x78]
007d50d4  e817dbc7ff                CALL 0x00452bf0
007d50d9  83781410                  CMP dword ptr [EAX + 0x14],0x10
007d50dd  8b5010                    MOV EDX,dword ptr [EAX + 0x10]
007d50e0  7202                      JC 0x007d50e4
007d50e2  8b00                      MOV EAX,dword ptr [EAX]
007d50e4  6a0b                      PUSH 0xb
007d50e6  689cb9b600                PUSH 0xb6b99c
007d50eb  8bc8                      MOV ECX,EAX
007d50ed  e8ee79c3ff                CALL 0x0040cae0
007d50f2  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
007d50f5  83c408                    ADD ESP,0x8
007d50f8  888557f8ffff              MOV byte ptr [EBP + 0xfffff857],AL
007d50fe  83fa10                    CMP EDX,0x10
007d5101  7234                      JC 0x007d5137
007d5103  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
007d5106  42                        INC EDX
007d5107  8bc1                      MOV EAX,ECX
007d5109  81fa00100000              CMP EDX,0x1000
007d510f  7216                      JC 0x007d5127
007d5111  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
007d5114  83c223                    ADD EDX,0x23
007d5117  2bc1                      SUB EAX,ECX
007d5119  83c0fc                    ADD EAX,-0x4
007d511c  83f81f                    CMP EAX,0x1f
007d511f  7606                      JBE 0x007d5127
007d5121  ff159488b100              CALL dword ptr [0x00b18894]
007d5127  52                        PUSH EDX
007d5128  51                        PUSH ECX
007d5129  e82ea03100                CALL 0x00aef15c
007d512e  8a8557f8ffff              MOV AL,byte ptr [EBP + 0xfffff857]
007d5134  83c408                    ADD ESP,0x8
007d5137  8bcf                      MOV ECX,EDI
007d5139  84c0                      TEST AL,AL
007d513b  7407                      JZ 0x007d5144
007d513d  68ccb9b600                PUSH 0xb6b9cc
007d5142  eb05                      JMP 0x007d5149
007d5144  6890b9b600                PUSH 0xb6b990
007d5149  e8d26cfdff                CALL 0x007abe20
007d514e  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
007d5151  64890d00000000            MOV dword ptr FS:[0x0],ECX
007d5158  59                        POP ECX
007d5159  5f                        POP EDI
007d515a  5e                        POP ESI
007d515b  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
007d515e  33cd                      XOR ECX,EBP
007d5160  e8c69f3100                CALL 0x00aef12b
007d5165  8be5                      MOV ESP,EBP
007d5167  5d                        POP EBP
007d5168  c3                        RET
