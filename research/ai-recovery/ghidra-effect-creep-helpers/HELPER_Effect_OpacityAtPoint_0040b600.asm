; J460 NPC AI 0x0040b600 HELPER_Effect_OpacityAtPoint
; types=1000
; identities=1000.*
; entry=0040b600
0040b600  53                        PUSH EBX
0040b601  8bdc                      MOV EBX,ESP
0040b603  83ec08                    SUB ESP,0x8
0040b606  83e4f8                    AND ESP,0xfffffff8
0040b609  83c404                    ADD ESP,0x4
0040b60c  55                        PUSH EBP
0040b60d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0040b610  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0040b614  8bec                      MOV EBP,ESP
0040b616  6aff                      PUSH -0x1
0040b618  68800caf00                PUSH 0xaf0c80
0040b61d  64a100000000              MOV EAX,FS:[0x0]
0040b623  50                        PUSH EAX
0040b624  53                        PUSH EBX
0040b625  81ec70010000              SUB ESP,0x170
0040b62b  a1b493bf00                MOV EAX,[0x00bf93b4]
0040b630  33c5                      XOR EAX,EBP
0040b632  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0040b635  56                        PUSH ESI
0040b636  57                        PUSH EDI
0040b637  50                        PUSH EAX
0040b638  8d45f4                    LEA EAX,[EBP + -0xc]
0040b63b  64a300000000              MOV FS:[0x0],EAX
0040b641  f30f119560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM2
0040b649  898d6cffffff              MOV dword ptr [EBP + 0xffffff6c],ECX
0040b64f  8b7308                    MOV ESI,dword ptr [EBX + 0x8]
0040b652  8d8d1cffffff              LEA ECX,[EBP + 0xffffff1c]
0040b658  6a00                      PUSH 0x0
0040b65a  89b558ffffff              MOV dword ptr [EBP + 0xffffff58],ESI
0040b660  e8eb3e6000                CALL 0x00a0f550
0040b665  8b856cffffff              MOV EAX,dword ptr [EBP + 0xffffff6c]
0040b66b  8b5004                    MOV EDX,dword ptr [EAX + 0x4]
0040b66e  85d2                      TEST EDX,EDX
0040b670  0f8436050000              JZ 0x0040bbac
0040b676  33c9                      XOR ECX,ECX
0040b678  898d5cffffff              MOV dword ptr [EBP + 0xffffff5c],ECX
0040b67e  394a1c                    CMP dword ptr [EDX + 0x1c],ECX
0040b681  0f8625050000              JBE 0x0040bbac
0040b687  33f6                      XOR ESI,ESI
0040b689  89b564ffffff              MOV dword ptr [EBP + 0xffffff64],ESI
0040b68f  90                        NOP
0040b690  8b4008                    MOV EAX,dword ptr [EAX + 0x8]
0040b693  8b3c88                    MOV EDI,dword ptr [EAX + ECX*0x4]
0040b696  8b4218                    MOV EAX,dword ptr [EDX + 0x18]
0040b699  8b4c3004                  MOV ECX,dword ptr [EAX + ESI*0x1 + 0x4]
0040b69d  85c9                      TEST ECX,ECX
0040b69f  0f8407040000              JZ 0x0040baac
0040b6a5  8b3430                    MOV ESI,dword ptr [EAX + ESI*0x1]
0040b6a8  8b430c                    MOV EAX,dword ptr [EBX + 0xc]
0040b6ab  85c0                      TEST EAX,EAX
0040b6ad  7808                      JS 0x0040b6b7
0040b6af  3bf0                      CMP ESI,EAX
0040b6b1  0f85f5030000              JNZ 0x0040baac
0040b6b7  6bc76c                    IMUL EAX,EDI,0x6c
0040b6ba  03c1                      ADD EAX,ECX
0040b6bc  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
0040b6c2  50                        PUSH EAX
0040b6c3  e828050000                CALL 0x0040bbf0
0040b6c8  56                        PUSH ESI
0040b6c9  8bb56cffffff              MOV ESI,dword ptr [EBP + 0xffffff6c]
0040b6cf  8b0e                      MOV ECX,dword ptr [ESI]
0040b6d1  e84afbffff                CALL 0x0040b220
0040b6d6  807da400                  CMP byte ptr [EBP + -0x5c],0x0
0040b6da  8bf8                      MOV EDI,EAX
0040b6dc  0f84ca030000              JZ 0x0040baac
0040b6e2  807f7400                  CMP byte ptr [EDI + 0x74],0x0
0040b6e6  0f84c0030000              JZ 0x0040baac
0040b6ec  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
0040b6f2  8bcf                      MOV ECX,EDI
0040b6f4  50                        PUSH EAX
0040b6f5  e896ceffff                CALL 0x00408590
0040b6fa  8b08                      MOV ECX,dword ptr [EAX]
0040b6fc  898d68ffffff              MOV dword ptr [EBP + 0xffffff68],ECX
0040b702  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0040b709  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
0040b70f  85c9                      TEST ECX,ECX
0040b711  7420                      JZ 0x0040b733
0040b713  8b01                      MOV EAX,dword ptr [ECX]
0040b715  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
0040b718  ffd0                      CALL EAX
0040b71a  84c0                      TEST AL,AL
0040b71c  7415                      JZ 0x0040b733
0040b71e  a13c16c700                MOV EAX,[0x00c7163c]
0040b723  85c0                      TEST EAX,EAX
0040b725  740c                      JZ 0x0040b733
0040b727  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
0040b72d  51                        PUSH ECX
0040b72e  ffd0                      CALL EAX
0040b730  83c404                    ADD ESP,0x4
0040b733  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0040b73a  83bd68ffffff00            CMP dword ptr [EBP + 0xffffff68],0x0
0040b741  0f8465030000              JZ 0x0040baac
0040b747  ff36                      PUSH dword ptr [ESI]
0040b749  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
0040b74f  6840b6c700                PUSH 0xc7b640
0040b754  6840b6c700                PUSH 0xc7b640
0040b759  57                        PUSH EDI
0040b75a  50                        PUSH EAX
0040b75b  51                        PUSH ECX
0040b75c  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0040b762  50                        PUSH EAX
0040b763  e838e1ffff                CALL 0x004098a0
0040b768  ff36                      PUSH dword ptr [ESI]
0040b76a  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
0040b770  6840b6c700                PUSH 0xc7b640
0040b775  6840b6c700                PUSH 0xc7b640
0040b77a  57                        PUSH EDI
0040b77b  50                        PUSH EAX
0040b77c  8d4318                    LEA EAX,[EBX + 0x18]
0040b77f  50                        PUSH EAX
0040b780  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
0040b786  50                        PUSH EAX
0040b787  e824e5ffff                CALL 0x00409cb0
0040b78c  8b16                      MOV EDX,dword ptr [ESI]
0040b78e  0f57d2                    XORPS XMM2,XMM2
0040b791  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
0040b796  f30f58473c                ADDSS XMM0,dword ptr [EDI + 0x3c]
0040b79b  f30f108aa4000000          MOVSS XMM1,dword ptr [EDX + 0xa4]
0040b7a3  0f2eca                    UCOMISS XMM1,XMM2
0040b7a6  9f                        LAHF
0040b7a7  f6c444                    TEST AH,0x44
0040b7aa  7a18                      JP 0x0040b7c4
0040b7ac  0f2ec2                    UCOMISS XMM0,XMM2
0040b7af  9f                        LAHF
0040b7b0  f6c444                    TEST AH,0x44
0040b7b3  7a0f                      JP 0x0040b7c4
0040b7b5  f30f106b14                MOVSS XMM5,dword ptr [EBX + 0x14]
0040b7ba  f30f106310                MOVSS XMM4,dword ptr [EBX + 0x10]
0040b7bf  e917010000                JMP 0x0040b8db
0040b7c4  f30f107590                MOVSS XMM6,dword ptr [EBP + -0x70]
0040b7c9  33c9                      XOR ECX,ECX
0040b7cb  f30f597734                MULSS XMM6,dword ptr [EDI + 0x34]
0040b7d0  f30f10aa9c000000          MOVSS XMM5,dword ptr [EDX + 0x9c]
0040b7d8  f30f105d94                MOVSS XMM3,dword ptr [EBP + -0x6c]
0040b7dd  f30f10a2a0000000          MOVSS XMM4,dword ptr [EDX + 0xa0]
0040b7e5  f30f595f38                MULSS XMM3,dword ptr [EDI + 0x38]
0040b7ea  0f2fd6                    COMISS XMM2,XMM6
0040b7ed  0f97c1                    SETA CL
0040b7f0  33c0                      XOR EAX,EAX
0040b7f2  0f2fd5                    COMISS XMM2,XMM5
0040b7f5  0f97c0                    SETA AL
0040b7f8  3bc1                      CMP EAX,ECX
0040b7fa  741b                      JZ 0x0040b817
0040b7fc  0f2fd5                    COMISS XMM2,XMM5
0040b7ff  f30f102d70cbba00          MOVSS XMM5,dword ptr [0x00bacb70]
0040b807  7606                      JBE 0x0040b80f
0040b809  0f57c5                    XORPS XMM0,XMM5
0040b80c  0f57cd                    XORPS XMM1,XMM5
0040b80f  0f2fd6                    COMISS XMM2,XMM6
0040b812  7603                      JBE 0x0040b817
0040b814  0f57c5                    XORPS XMM0,XMM5
0040b817  807f3300                  CMP byte ptr [EDI + 0x33],0x0
0040b81b  f30f102d70cbba00          MOVSS XMM5,dword ptr [0x00bacb70]
0040b823  7403                      JZ 0x0040b828
0040b825  0f57dd                    XORPS XMM3,XMM5
0040b828  80ba0101000000            CMP byte ptr [EDX + 0x101],0x0
0040b82f  7403                      JZ 0x0040b834
0040b831  0f57e5                    XORPS XMM4,XMM5
0040b834  33c9                      XOR ECX,ECX
0040b836  0f2fd4                    COMISS XMM2,XMM4
0040b839  0f97c1                    SETA CL
0040b83c  33c0                      XOR EAX,EAX
0040b83e  0f2fd3                    COMISS XMM2,XMM3
0040b841  0f97c0                    SETA AL
0040b844  3bc8                      CMP ECX,EAX
0040b846  7413                      JZ 0x0040b85b
0040b848  0f2fd4                    COMISS XMM2,XMM4
0040b84b  7606                      JBE 0x0040b853
0040b84d  0f57c5                    XORPS XMM0,XMM5
0040b850  0f57cd                    XORPS XMM1,XMM5
0040b853  0f2fd3                    COMISS XMM2,XMM3
0040b856  7603                      JBE 0x0040b85b
0040b858  0f57c5                    XORPS XMM0,XMM5
0040b85b  f30f58c1                  ADDSS XMM0,XMM1
0040b85f  6840b6c700                PUSH 0xc7b640
0040b864  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
0040b86a  0f57c5                    XORPS XMM0,XMM5
0040b86d  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0040b875  0f28d0                    MOVAPS XMM2,XMM0
0040b878  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
0040b880  e8db4e6000                CALL 0x00a10760
0040b885  f30f108570ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff70]
0040b88d  e8ae1c0100                CALL 0x0041d540
0040b892  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
0040b89a  f30f108570ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff70]
0040b8a2  e8791c0100                CALL 0x0041d520
0040b8a7  f30f10ad74ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff74]
0040b8af  0f28c8                    MOVAPS XMM1,XMM0
0040b8b2  f30f594b14                MULSS XMM1,dword ptr [EBX + 0x14]
0040b8b7  0f28e5                    MOVAPS XMM4,XMM5
0040b8ba  f30f596310                MULSS XMM4,dword ptr [EBX + 0x10]
0040b8bf  f30f596b14                MULSS XMM5,dword ptr [EBX + 0x14]
0040b8c4  f30f594310                MULSS XMM0,dword ptr [EBX + 0x10]
0040b8c9  f30f5ce1                  SUBSS XMM4,XMM1
0040b8cd  f30f58e8                  ADDSS XMM5,XMM0
0040b8d1  f30f116310                MOVSS dword ptr [EBX + 0x10],XMM4
0040b8d6  f30f116b14                MOVSS dword ptr [EBX + 0x14],XMM5
0040b8db  f30f108d80feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe80]
0040b8e3  0f2fe1                    COMISS XMM4,XMM1
0040b8e6  f30f11ad74ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM5
0040b8ee  f30f11a570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM4
0040b8f6  0f86b0010000              JBE 0x0040baac
0040b8fc  f30f108598feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe98]
0040b904  0f2fc4                    COMISS XMM0,XMM4
0040b907  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
0040b90f  0f8697010000              JBE 0x0040baac
0040b915  0f2fad84feffff            COMISS XMM5,dword ptr [EBP + 0xfffffe84]
0040b91c  0f868a010000              JBE 0x0040baac
0040b922  f30f109d9cfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe9c]
0040b92a  0f2fdd                    COMISS XMM3,XMM5
0040b92d  f30f119d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM3
0040b935  0f8671010000              JBE 0x0040baac
0040b93b  0f2ec8                    UCOMISS XMM1,XMM0
0040b93e  9f                        LAHF
0040b93f  f6c444                    TEST AH,0x44
0040b942  7a3c                      JP 0x0040b980
0040b944  68d81bb800                PUSH 0xb81bd8
0040b949  6a10                      PUSH 0x10
0040b94b  e870596000                CALL 0x00a112c0
0040b950  f30f104314                MOVSS XMM0,dword ptr [EBX + 0x14]
0040b955  83c408                    ADD ESP,0x8
0040b958  f30f10a570ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff70]
0040b960  f30f108d80feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe80]
0040b968  f30f109d68ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff68]
0040b970  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
0040b978  f30f108540ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff40]
0040b980  f30f5ce1                  SUBSS XMM4,XMM1
0040b984  f30f5cc1                  SUBSS XMM0,XMM1
0040b988  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
0040b990  f30f5c8df8feffff          SUBSS XMM1,dword ptr [EBP + 0xfffffef8]
0040b998  f30f5ee0                  DIVSS XMM4,XMM0
0040b99c  f30f108584feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe84]
0040b9a4  f30f5f25e49fba00          MAXSS XMM4,dword ptr [0x00ba9fe4]
0040b9ac  0f2ec3                    UCOMISS XMM0,XMM3
0040b9af  f30f5d2554a4ba00          MINSS XMM4,dword ptr [0x00baa454]
0040b9b7  9f                        LAHF
0040b9b8  f30f59cc                  MULSS XMM1,XMM4
0040b9bc  f30f588df8feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffef8]
0040b9c4  f30f114b10                MOVSS dword ptr [EBX + 0x10],XMM1
0040b9c9  f6c444                    TEST AH,0x44
0040b9cc  7a1f                      JP 0x0040b9ed
0040b9ce  68d81bb800                PUSH 0xb81bd8
0040b9d3  6a10                      PUSH 0x10
0040b9d5  e8e6586000                CALL 0x00a112c0
0040b9da  f30f109d68ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff68]
0040b9e2  83c408                    ADD ESP,0x8
0040b9e5  f30f108584feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe84]
0040b9ed  f30f109574ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff74]
0040b9f5  f30f5cd8                  SUBSS XMM3,XMM0
0040b9f9  f30f5cd0                  SUBSS XMM2,XMM0
0040b9fd  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
0040ba05  f30f5c8dfcfeffff          SUBSS XMM1,dword ptr [EBP + 0xfffffefc]
0040ba0d  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
0040ba13  8bcf                      MOV ECX,EDI
0040ba15  50                        PUSH EAX
0040ba16  f30f5ed3                  DIVSS XMM2,XMM3
0040ba1a  f30f5f15e49fba00          MAXSS XMM2,dword ptr [0x00ba9fe4]
0040ba22  f30f5d1554a4ba00          MINSS XMM2,dword ptr [0x00baa454]
0040ba2a  f30f59ca                  MULSS XMM1,XMM2
0040ba2e  f30f588dfcfeffff          ADDSS XMM1,dword ptr [EBP + 0xfffffefc]
0040ba36  f30f114b14                MOVSS dword ptr [EBX + 0x14],XMM1
0040ba3b  e850cbffff                CALL 0x00408590
0040ba40  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0040ba47  8b08                      MOV ECX,dword ptr [EAX]
0040ba49  8b01                      MOV EAX,dword ptr [ECX]
0040ba4b  8b502c                    MOV EDX,dword ptr [EAX + 0x2c]
0040ba4e  f30f2c4314                CVTTSS2SI EAX,dword ptr [EBX + 0x14]
0040ba53  50                        PUSH EAX
0040ba54  f30f2c4310                CVTTSS2SI EAX,dword ptr [EBX + 0x10]
0040ba59  50                        PUSH EAX
0040ba5a  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
0040ba60  50                        PUSH EAX
0040ba61  ffd2                      CALL EDX
0040ba63  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0040ba6a  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
0040ba70  85c9                      TEST ECX,ECX
0040ba72  7420                      JZ 0x0040ba94
0040ba74  8b01                      MOV EAX,dword ptr [ECX]
0040ba76  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
0040ba79  ffd0                      CALL EAX
0040ba7b  84c0                      TEST AL,AL
0040ba7d  7415                      JZ 0x0040ba94
0040ba7f  a13c16c700                MOV EAX,[0x00c7163c]
0040ba84  85c0                      TEST EAX,EAX
0040ba86  740c                      JZ 0x0040ba94
0040ba88  8d8d30ffffff              LEA ECX,[EBP + 0xffffff30]
0040ba8e  51                        PUSH ECX
0040ba8f  ffd0                      CALL EAX
0040ba91  83c404                    ADD ESP,0x4
0040ba94  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0040ba9b  f30f108550ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff50]
0040baa3  0f2f8560ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff60]
0040baaa  7331                      JNC 0x0040badd
0040baac  8b856cffffff              MOV EAX,dword ptr [EBP + 0xffffff6c]
0040bab2  8b8d5cffffff              MOV ECX,dword ptr [EBP + 0xffffff5c]
0040bab8  838564ffffff10            ADD dword ptr [EBP + 0xffffff64],0x10
0040babf  41                        INC ECX
0040bac0  898d5cffffff              MOV dword ptr [EBP + 0xffffff5c],ECX
0040bac6  8b5004                    MOV EDX,dword ptr [EAX + 0x4]
0040bac9  3b4a1c                    CMP ECX,dword ptr [EDX + 0x1c]
0040bacc  0f83d4000000              JNC 0x0040bba6
0040bad2  8bb564ffffff              MOV ESI,dword ptr [EBP + 0xffffff64]
0040bad8  e9b3fbffff                JMP 0x0040b690
0040badd  8b856cffffff              MOV EAX,dword ptr [EBP + 0xffffff6c]
0040bae3  8d5748                    LEA EDX,[EDI + 0x48]
0040bae6  83ec2c                    SUB ESP,0x2c
0040bae9  8bf4                      MOV ESI,ESP
0040baeb  83ec2c                    SUB ESP,0x2c
0040baee  8bcc                      MOV ECX,ESP
0040baf0  8b00                      MOV EAX,dword ptr [EAX]
0040baf2  05a8000000                ADD EAX,0xa8
0040baf7  50                        PUSH EAX
0040baf8  e8c3b6ffff                CALL 0x004071c0
0040bafd  8bce                      MOV ECX,ESI
0040baff  e8dcb7ffff                CALL 0x004072e0
0040bb04  83c42c                    ADD ESP,0x2c
0040bb07  8d55a8                    LEA EDX,[EBP + -0x58]
0040bb0a  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
0040bb10  e8cbb7ffff                CALL 0x004072e0
0040bb15  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
0040bb1d  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
0040bb23  f30f598544ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff44]
0040bb2b  83c42c                    ADD ESP,0x2c
0040bb2e  8b8d58ffffff              MOV ECX,dword ptr [EBP + 0xffffff58]
0040bb34  f30f588510ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff10]
0040bb3c  50                        PUSH EAX
0040bb3d  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
0040bb45  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0040bb4d  f30f598548ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff48]
0040bb55  f30f588514ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff14]
0040bb5d  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
0040bb65  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
0040bb6d  f30f59854cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff4c]
0040bb75  f30f588518ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff18]
0040bb7d  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
0040bb85  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
0040bb8d  f30f598550ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff50]
0040bb95  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
0040bb9d  e87e3b6000                CALL 0x00a0f720
0040bba2  8bc1                      MOV EAX,ECX
0040bba4  eb1b                      JMP 0x0040bbc1
0040bba6  8bb558ffffff              MOV ESI,dword ptr [EBP + 0xffffff58]
0040bbac  0f10851cffffff            MOVUPS XMM0,xmmword ptr [EBP + 0xffffff1c]
0040bbb3  8b852cffffff              MOV EAX,dword ptr [EBP + 0xffffff2c]
0040bbb9  894610                    MOV dword ptr [ESI + 0x10],EAX
0040bbbc  8bc6                      MOV EAX,ESI
0040bbbe  0f1106                    MOVUPS xmmword ptr [ESI],XMM0
0040bbc1  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0040bbc4  64890d00000000            MOV dword ptr FS:[0x0],ECX
0040bbcb  59                        POP ECX
0040bbcc  5f                        POP EDI
0040bbcd  5e                        POP ESI
0040bbce  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0040bbd1  33cd                      XOR ECX,EBP
0040bbd3  e853356e00                CALL 0x00aef12b
0040bbd8  8be5                      MOV ESP,EBP
0040bbda  5d                        POP EBP
0040bbdb  8be3                      MOV ESP,EBX
0040bbdd  5b                        POP EBX
0040bbde  c21800                    RET 0x18
