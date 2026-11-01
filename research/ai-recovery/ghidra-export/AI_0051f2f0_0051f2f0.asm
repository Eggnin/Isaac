; J460 NPC AI 0x0051f2f0 AI_0051f2f0
; types=92
; identities=92.0.0,92.1.0,92.1.1
; entry=0051f2f0
0051f2f0  53                        PUSH EBX
0051f2f1  8bdc                      MOV EBX,ESP
0051f2f3  83ec08                    SUB ESP,0x8
0051f2f6  83e4f8                    AND ESP,0xfffffff8
0051f2f9  83c404                    ADD ESP,0x4
0051f2fc  55                        PUSH EBP
0051f2fd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0051f300  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0051f304  8bec                      MOV EBP,ESP
0051f306  6aff                      PUSH -0x1
0051f308  68b045af00                PUSH 0xaf45b0
0051f30d  64a100000000              MOV EAX,FS:[0x0]
0051f313  50                        PUSH EAX
0051f314  53                        PUSH EBX
0051f315  81ec60010000              SUB ESP,0x160
0051f31b  a1b493bf00                MOV EAX,[0x00bf93b4]
0051f320  33c5                      XOR EAX,EBP
0051f322  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0051f325  56                        PUSH ESI
0051f326  57                        PUSH EDI
0051f327  50                        PUSH EAX
0051f328  8d45f4                    LEA EAX,[EBP + -0xc]
0051f32b  64a300000000              MOV FS:[0x0],EAX
0051f331  8bf9                      MOV EDI,ECX
0051f333  89bdc4feffff              MOV dword ptr [EBP + 0xfffffec4],EDI
0051f339  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0051f33f  85c0                      TEST EAX,EAX
0051f341  0f85d3020000              JNZ 0x0051f61a
0051f347  837f285c                  CMP dword ptr [EDI + 0x28],0x5c
0051f34b  0f85ba020000              JNZ 0x0051f60b
0051f351  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0051f355  0f85b0020000              JNZ 0x0051f60b
0051f35b  3987ec0b0000              CMP dword ptr [EDI + 0xbec],EAX
0051f361  0f85a4020000              JNZ 0x0051f60b
0051f367  f30f100dc8aeba00          MOVSS XMM1,dword ptr [0x00baaec8]
0051f36f  898538ffffff              MOV dword ptr [EBP + 0xffffff38],EAX
0051f375  b801000000                MOV EAX,0x1
0051f37a  2b4730                    SUB EAX,dword ptr [EDI + 0x30]
0051f37d  6a01                      PUSH 0x1
0051f37f  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
0051f385  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0051f38b  6a5c                      PUSH 0x5c
0051f38d  50                        PUSH EAX
0051f38e  f30f118d34ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM1
0051f396  e8c5181b00                CALL 0x006d0c60
0051f39b  33c0                      XOR EAX,EAX
0051f39d  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0051f3a4  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
0051f3aa  3985e0feffff              CMP dword ptr [EBP + 0xfffffee0],EAX
0051f3b0  0f862a020000              JBE 0x0051f5e0
0051f3b6  8b8dd8feffff              MOV ECX,dword ptr [EBP + 0xfffffed8]
0051f3bc  0f1f4000                  NOP dword ptr [EAX]
0051f3c0  8b3481                    MOV ESI,dword ptr [ECX + EAX*0x4]
0051f3c3  85f6                      TEST ESI,ESI
0051f3c5  0f84a4000000              JZ 0x0051f46f
0051f3cb  8b157816c700              MOV EDX,dword ptr [0x00c71678]
0051f3d1  83ba1466020002            CMP dword ptr [EDX + 0x26614],0x2
0051f3d8  7c06                      JL 0x0051f3e0
0051f3da  837e2801                  CMP dword ptr [ESI + 0x28],0x1
0051f3de  7413                      JZ 0x0051f3f3
0051f3e0  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0051f3e3  83e80a                    SUB EAX,0xa
0051f3e6  3ddd030000                CMP EAX,0x3dd
0051f3eb  8b8524ffffff              MOV EAX,dword ptr [EBP + 0xffffff24]
0051f3f1  777c                      JA 0x0051f46f
0051f3f3  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
0051f3f9  394e30                    CMP dword ptr [ESI + 0x30],ECX
0051f3fc  7579                      JNZ 0x0051f477
0051f3fe  83bec003000000            CMP dword ptr [ESI + 0x3c0],0x0
0051f405  7570                      JNZ 0x0051f477
0051f407  83beec0b000000            CMP dword ptr [ESI + 0xbec],0x0
0051f40e  7567                      JNZ 0x0051f477
0051f410  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0051f418  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0051f420  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0051f428  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0051f430  f30f59c0                  MULSS XMM0,XMM0
0051f434  f30f59c9                  MULSS XMM1,XMM1
0051f438  f30f58c1                  ADDSS XMM0,XMM1
0051f43c  e80f66f1ff                CALL 0x00435a50
0051f441  83bd38ffffff00            CMP dword ptr [EBP + 0xffffff38],0x0
0051f448  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0051f450  f30f5cc8                  SUBSS XMM1,XMM0
0051f454  7409                      JZ 0x0051f45f
0051f456  0f2f8d34ffffff            COMISS XMM1,dword ptr [EBP + 0xffffff34]
0051f45d  7620                      JBE 0x0051f47f
0051f45f  89b538ffffff              MOV dword ptr [EBP + 0xffffff38],ESI
0051f465  f30f118d34ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM1
0051f46d  eb16                      JMP 0x0051f485
0051f46f  8bb538ffffff              MOV ESI,dword ptr [EBP + 0xffffff38]
0051f475  eb1a                      JMP 0x0051f491
0051f477  8bb538ffffff              MOV ESI,dword ptr [EBP + 0xffffff38]
0051f47d  eb0c                      JMP 0x0051f48b
0051f47f  8bb538ffffff              MOV ESI,dword ptr [EBP + 0xffffff38]
0051f485  8b8524ffffff              MOV EAX,dword ptr [EBP + 0xffffff24]
0051f48b  8b8dd8feffff              MOV ECX,dword ptr [EBP + 0xfffffed8]
0051f491  40                        INC EAX
0051f492  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
0051f498  3b85e0feffff              CMP EAX,dword ptr [EBP + 0xfffffee0]
0051f49e  0f821cffffff              JC 0x0051f3c0
0051f4a4  85f6                      TEST ESI,ESI
0051f4a6  0f8434010000              JZ 0x0051f5e0
0051f4ac  8b8eec0b0000              MOV ECX,dword ptr [ESI + 0xbec]
0051f4b2  8d86ec0b0000              LEA EAX,[ESI + 0xbec]
0051f4b8  85c9                      TEST ECX,ECX
0051f4ba  741e                      JZ 0x0051f4da
0051f4bc  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
0051f4c2  81c1cc030000              ADD ECX,0x3cc
0051f4c8  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
0051f4ce  50                        PUSH EAX
0051f4cf  e83cfdfaff                CALL 0x004cf210
0051f4d4  8d86ec0b0000              LEA EAX,[ESI + 0xbec]
0051f4da  50                        PUSH EAX
0051f4db  8bcf                      MOV ECX,EDI
0051f4dd  8938                      MOV dword ptr [EAX],EDI
0051f4df  e80ce8faff                CALL 0x004cdcf0
0051f4e4  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
0051f4ea  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
0051f4f0  85c9                      TEST ECX,ECX
0051f4f2  741e                      JZ 0x0051f512
0051f4f4  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
0051f4fa  81c1cc030000              ADD ECX,0x3cc
0051f500  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
0051f506  50                        PUSH EAX
0051f507  e804fdfaff                CALL 0x004cf210
0051f50c  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
0051f512  50                        PUSH EAX
0051f513  8bce                      MOV ECX,ESI
0051f515  8930                      MOV dword ptr [EAX],ESI
0051f517  e8d4e7faff                CALL 0x004cdcf0
0051f51c  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
0051f522  8d86c0030000              LEA EAX,[ESI + 0x3c0]
0051f528  85c9                      TEST ECX,ECX
0051f52a  741e                      JZ 0x0051f54a
0051f52c  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
0051f532  81c1cc030000              ADD ECX,0x3cc
0051f538  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
0051f53e  50                        PUSH EAX
0051f53f  e8ccfcfaff                CALL 0x004cf210
0051f544  8d86c0030000              LEA EAX,[ESI + 0x3c0]
0051f54a  50                        PUSH EAX
0051f54b  8bcf                      MOV ECX,EDI
0051f54d  8938                      MOV dword ptr [EAX],EDI
0051f54f  e89ce7faff                CALL 0x004cdcf0
0051f554  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0051f55a  8d87bc030000              LEA EAX,[EDI + 0x3bc]
0051f560  85c9                      TEST ECX,ECX
0051f562  741e                      JZ 0x0051f582
0051f564  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
0051f56a  81c1cc030000              ADD ECX,0x3cc
0051f570  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
0051f576  50                        PUSH EAX
0051f577  e894fcfaff                CALL 0x004cf210
0051f57c  8d87bc030000              LEA EAX,[EDI + 0x3bc]
0051f582  50                        PUSH EAX
0051f583  8bce                      MOV ECX,ESI
0051f585  8930                      MOV dword ptr [EAX],ESI
0051f587  e864e7faff                CALL 0x004cdcf0
0051f58c  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0051f592  85c0                      TEST EAX,EAX
0051f594  744a                      JZ 0x0051f5e0
0051f596  8bc8                      MOV ECX,EAX
0051f598  e893cf1800                CALL 0x006ac530
0051f59d  84c0                      TEST AL,AL
0051f59f  743f                      JZ 0x0051f5e0
0051f5a1  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0051f5a7  05ec0b0000                ADD EAX,0xbec
0051f5ac  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
0051f5b2  8b08                      MOV ECX,dword ptr [EAX]
0051f5b4  85c9                      TEST ECX,ECX
0051f5b6  741e                      JZ 0x0051f5d6
0051f5b8  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
0051f5be  81c1cc030000              ADD ECX,0x3cc
0051f5c4  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
0051f5ca  50                        PUSH EAX
0051f5cb  e840fcfaff                CALL 0x004cf210
0051f5d0  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
0051f5d6  50                        PUSH EAX
0051f5d7  8bce                      MOV ECX,ESI
0051f5d9  8930                      MOV dword ptr [EAX],ESI
0051f5db  e810e7faff                CALL 0x004cdcf0
0051f5e0  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0051f5e7  80bdd4feffff00            CMP byte ptr [EBP + 0xfffffed4],0x0
0051f5ee  751b                      JNZ 0x0051f60b
0051f5f0  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0051f5f7  b101                      MOV CL,0x1
0051f5f9  8b95d8feffff              MOV EDX,dword ptr [EBP + 0xfffffed8]
0051f5ff  6a00                      PUSH 0x0
0051f601  6a00                      PUSH 0x0
0051f603  e8a8525400                CALL 0x00a648b0
0051f608  83c408                    ADD ESP,0x8
0051f60b  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0051f615  e922160000                JMP 0x00520c3c
0051f61a  8d4f48                    LEA ECX,[EDI + 0x48]
0051f61d  6a00                      PUSH 0x0
0051f61f  83f804                    CMP EAX,0x4
0051f622  0f851f100000              JNZ 0x00520647
0051f628  837f285c                  CMP dword ptr [EDI + 0x28],0x5c
0051f62c  ba24ceb100                MOV EDX,0xb1ce24
0051f631  b8e00eb600                MOV EAX,0xb60ee0
0051f636  0f44c2                    CMOVZ EAX,EDX
0051f639  50                        PUSH EAX
0051f63a  e841adeeff                CALL 0x0040a380
0051f63f  8bcf                      MOV ECX,EDI
0051f641  e8faf11900                CALL 0x006be840
0051f646  837f285c                  CMP dword ptr [EDI + 0x28],0x5c
0051f64a  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0051f652  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0051f65a  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0051f662  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
0051f66a  0f85810e0000              JNZ 0x005204f1
0051f670  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0051f674  0f85770e0000              JNZ 0x005204f1
0051f67a  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
0051f680  89b5f4feffff              MOV dword ptr [EBP + 0xfffffef4],ESI
0051f686  85f6                      TEST ESI,ESI
0051f688  0f84400e0000              JZ 0x005204ce
0051f68e  8bce                      MOV ECX,ESI
0051f690  e89bce1800                CALL 0x006ac530
0051f695  84c0                      TEST AL,AL
0051f697  0f84310e0000              JZ 0x005204ce
0051f69d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051f6a4  7419                      JZ 0x0051f6bf
0051f6a6  6a00                      PUSH 0x0
0051f6a8  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
0051f6ae  50                        PUSH EAX
0051f6af  8d8f14040000              LEA ECX,[EDI + 0x414]
0051f6b5  e886522c00                CALL 0x007e4940
0051f6ba  e9360d0000                JMP 0x005203f5
0051f6bf  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
0051f6c6  7459                      JZ 0x0051f721
0051f6c8  6a0b                      PUSH 0xb
0051f6ca  8bce                      MOV ECX,ESI
0051f6cc  e88f8b1b00                CALL 0x006d8260
0051f6d1  84c0                      TEST AL,AL
0051f6d3  752f                      JNZ 0x0051f704
0051f6d5  8b861c0f0000              MOV EAX,dword ptr [ESI + 0xf1c]
0051f6db  8d8f14040000              LEA ECX,[EDI + 0x414]
0051f6e1  89871c0f0000              MOV dword ptr [EDI + 0xf1c],EAX
0051f6e7  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
0051f6ed  6a00                      PUSH 0x0
0051f6ef  50                        PUSH EAX
0051f6f0  e84b522c00                CALL 0x007e4940
0051f6f5  c7871c0f0000ffffffff      MOV dword ptr [EDI + 0xf1c],0xffffffff
0051f6ff  e9f10c0000                JMP 0x005203f5
0051f704  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0051f70c  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0051f714  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0051f71c  e9d40c0000                JMP 0x005203f5
0051f721  6a00                      PUSH 0x0
0051f723  6800010000                PUSH 0x100
0051f728  8bcf                      MOV ECX,EDI
0051f72a  e8017defff                CALL 0x00417430
0051f72f  f30f108d18ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff18]
0051f737  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
0051f73f  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0051f747  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0051f74f  888523ffffff              MOV byte ptr [EBP + 0xffffff23],AL
0051f755  8d873c030000              LEA EAX,[EDI + 0x33c]
0051f75b  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
0051f761  f30f59c0                  MULSS XMM0,XMM0
0051f765  f30f59c9                  MULSS XMM1,XMM1
0051f769  f30f58c1                  ADDSS XMM0,XMM1
0051f76d  e8de62f1ff                CALL 0x00435a50
0051f772  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0051f779  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
0051f781  7e14                      JLE 0x0051f797
0051f783  8d8f18040000              LEA ECX,[EDI + 0x418]
0051f789  6840b6c700                PUSH 0xc7b640
0051f78e  e89d0e4f00                CALL 0x00a10630
0051f793  84c0                      TEST AL,AL
0051f795  7506                      JNZ 0x0051f79d
0051f797  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0051f79d  83be500b000000            CMP dword ptr [ESI + 0xb50],0x0
0051f7a4  f30f1001                  MOVSS XMM0,dword ptr [ECX]
0051f7a8  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0051f7b0  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0051f7b8  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
0051f7bd  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
0051f7c5  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0051f7cd  7e1b                      JLE 0x0051f7ea
0051f7cf  8d8e18040000              LEA ECX,[ESI + 0x418]
0051f7d5  6840b6c700                PUSH 0xc7b640
0051f7da  e8510e4f00                CALL 0x00a10630
0051f7df  84c0                      TEST AL,AL
0051f7e1  7407                      JZ 0x0051f7ea
0051f7e3  8b01                      MOV EAX,dword ptr [ECX]
0051f7e5  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
0051f7e8  eb0c                      JMP 0x0051f7f6
0051f7ea  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
0051f7f0  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
0051f7f6  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
0051f7fe  8db50cffffff              LEA ESI,[EBP + 0xffffff0c]
0051f804  898d10ffffff              MOV dword ptr [EBP + 0xffffff10],ECX
0051f80a  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
0051f810  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0051f814  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0051f81c  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0051f824  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0051f829  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0051f831  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
0051f839  f30f1087580b0000          MOVSS XMM0,dword ptr [EDI + 0xb58]
0051f841  0f2fc1                    COMISS XMM0,XMM1
0051f844  7706                      JA 0x0051f84c
0051f846  f30f10c0                  MOVSS XMM0,XMM0
0051f84a  eb04                      JMP 0x0051f850
0051f84c  f30f10c1                  MOVSS XMM0,XMM1
0051f850  6a00                      PUSH 0x0
0051f852  6800010000                PUSH 0x100
0051f857  8bcf                      MOV ECX,EDI
0051f859  c785e8feffff00000000      MOV dword ptr [EBP + 0xfffffee8],0x0
0051f863  f30f1187580b0000          MOVSS dword ptr [EDI + 0xb58],XMM0
0051f86b  e8c07befff                CALL 0x00417430
0051f870  84c0                      TEST AL,AL
0051f872  7509                      JNZ 0x0051f87d
0051f874  83bf380f000000            CMP dword ptr [EDI + 0xf38],0x0
0051f87b  740a                      JZ 0x0051f887
0051f87d  c785e8feffff84030000      MOV dword ptr [EBP + 0xfffffee8],0x384
0051f887  ff7720                    PUSH dword ptr [EDI + 0x20]
0051f88a  8bcf                      MOV ECX,EDI
0051f88c  6a0e                      PUSH 0xe
0051f88e  e87dce1800                CALL 0x006ac710
0051f893  84c0                      TEST AL,AL
0051f895  0f846a010000              JZ 0x0051fa05
0051f89b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051f8a1  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
0051f8a7  6a00                      PUSH 0x0
0051f8a9  6a00                      PUSH 0x0
0051f8ab  6a00                      PUSH 0x0
0051f8ad  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
0051f8b3  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0051f8b9  6a01                      PUSH 0x1
0051f8bb  50                        PUSH EAX
0051f8bc  8d873c030000              LEA EAX,[EDI + 0x33c]
0051f8c2  50                        PUSH EAX
0051f8c3  e828152d00                CALL 0x007f0df0
0051f8c8  33c0                      XOR EAX,EAX
0051f8ca  388523ffffff              CMP byte ptr [EBP + 0xffffff23],AL
0051f8d0  7411                      JZ 0x0051f8e3
0051f8d2  f30f108528ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff28]
0051f8da  0f2f0524abba00            COMISS XMM0,dword ptr [0x00baab24]
0051f8e1  eb0f                      JMP 0x0051f8f2
0051f8e3  f30f100d68aaba00          MOVSS XMM1,dword ptr [0x00baaa68]
0051f8eb  0f2f8d28ffffff            COMISS XMM1,dword ptr [EBP + 0xffffff28]
0051f8f2  0f97c0                    SETA AL
0051f8f5  85c0                      TEST EAX,EAX
0051f8f7  0f85d5000000              JNZ 0x0051f9d2
0051f8fd  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0051f901  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0051f906  f30f5c851cffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff1c]
0051f90e  f30f5c8d3cffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff3c]
0051f916  f30f59c0                  MULSS XMM0,XMM0
0051f91a  f30f59c9                  MULSS XMM1,XMM1
0051f91e  f30f58c1                  ADDSS XMM0,XMM1
0051f922  e82961f1ff                CALL 0x00435a50
0051f927  f30f100d50a9ba00          MOVSS XMM1,dword ptr [0x00baa950]
0051f92f  0f2fc8                    COMISS XMM1,XMM0
0051f932  0f879a000000              JA 0x0051f9d2
0051f938  0f2f0578aaba00            COMISS XMM0,dword ptr [0x00baaa78]
0051f93f  760d                      JBE 0x0051f94e
0051f941  e81af61c00                CALL 0x006eef60
0051f946  a803                      TEST AL,0x3
0051f948  0f8484000000              JZ 0x0051f9d2
0051f94e  a17816c700                MOV EAX,[0x00c71678]
0051f953  8d8d2cffffff              LEA ECX,[EBP + 0xffffff2c]
0051f959  6a00                      PUSH 0x0
0051f95b  6a00                      PUSH 0x0
0051f95d  6a00                      PUSH 0x0
0051f95f  68e7030000                PUSH 0x3e7
0051f964  6a03                      PUSH 0x3
0051f966  51                        PUSH ECX
0051f967  8d8df8feffff              LEA ECX,[EBP + 0xfffffef8]
0051f96d  51                        PUSH ECX
0051f96e  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0051f974  e877142d00                CALL 0x007f0df0
0051f979  84c0                      TEST AL,AL
0051f97b  7455                      JZ 0x0051f9d2
0051f97d  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0051f981  750a                      JNZ 0x0051f98d
0051f983  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
0051f98b  eb08                      JMP 0x0051f995
0051f98d  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0051f995  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
0051f99b  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0051f9a3  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
0051f9ab  f30f59c1                  MULSS XMM0,XMM1
0051f9af  0f2f055ca7ba00            COMISS XMM0,dword ptr [0x00baa75c]
0051f9b6  771a                      JA 0x0051f9d2
0051f9b8  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0051f9c0  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0051f9c8  2bc8                      SUB ECX,EAX
0051f9ca  018f500b0000              ADD dword ptr [EDI + 0xb50],ECX
0051f9d0  eb33                      JMP 0x0051fa05
0051f9d2  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0051f9d9  7f20                      JG 0x0051f9fb
0051f9db  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0051f9e3  f30f118718040000          MOVSS dword ptr [EDI + 0x418],XMM0
0051f9eb  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0051f9f3  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
0051f9fb  c787500b000003000000      MOV dword ptr [EDI + 0xb50],0x3
0051fa05  ff7720                    PUSH dword ptr [EDI + 0x20]
0051fa08  8bcf                      MOV ECX,EDI
0051fa0a  6a1e                      PUSH 0x1e
0051fa0c  e8ffcc1800                CALL 0x006ac710
0051fa11  84c0                      TEST AL,AL
0051fa13  740b                      JZ 0x0051fa20
0051fa15  8d8f5c0b0000              LEA ECX,[EDI + 0xb5c]
0051fa1b  e830f9faff                CALL 0x004cf350
0051fa20  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0051fa27  0f8e7b090000              JLE 0x005203a8
0051fa2d  8db718040000              LEA ESI,[EDI + 0x418]
0051fa33  6840b6c700                PUSH 0xc7b640
0051fa38  8bce                      MOV ECX,ESI
0051fa3a  e8c10b4f00                CALL 0x00a10600
0051fa3f  84c0                      TEST AL,AL
0051fa41  7515                      JNZ 0x0051fa58
0051fa43  f30f1087580b0000          MOVSS XMM0,dword ptr [EDI + 0xb58]
0051fa4b  0f2f057ca8ba00            COMISS XMM0,dword ptr [0x00baa87c]
0051fa52  0f860a080000              JBE 0x00520262
0051fa58  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
0051fa5e  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
0051fa64  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0051fa6c  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0051fa74  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
0051fa78  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
0051fa80  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
0051fa85  f30f59c9                  MULSS XMM1,XMM1
0051fa89  f30f59c0                  MULSS XMM0,XMM0
0051fa8d  f30f58c1                  ADDSS XMM0,XMM1
0051fa91  e8ba5ff1ff                CALL 0x00435a50
0051fa96  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
0051fa9e  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0051faa6  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0051faae  f30f108518ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff18]
0051fab6  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0051fabe  f30f59c9                  MULSS XMM1,XMM1
0051fac2  f30f59c0                  MULSS XMM0,XMM0
0051fac6  f30f58c1                  ADDSS XMM0,XMM1
0051faca  e8815ff1ff                CALL 0x00435a50
0051facf  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0051fad2  0f28e0                    MOVAPS XMM4,XMM0
0051fad5  f30f103550adba00          MOVSS XMM6,dword ptr [0x00baad50]
0051fadd  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0051fae5  83f801                    CMP EAX,0x1
0051fae8  7505                      JNZ 0x0051faef
0051faea  0f28d6                    MOVAPS XMM2,XMM6
0051faed  eb03                      JMP 0x0051faf2
0051faef  0f28d0                    MOVAPS XMM2,XMM0
0051faf2  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0051fafa  0f57ed                    XORPS XMM5,XMM5
0051fafd  0f28d9                    MOVAPS XMM3,XMM1
0051fb00  f30f5c9e3c030000          SUBSS XMM3,dword ptr [ESI + 0x33c]
0051fb08  f30f59d3                  MULSS XMM2,XMM3
0051fb0c  0f2fd5                    COMISS XMM2,XMM5
0051fb0f  7622                      JBE 0x0051fb33
0051fb11  83f801                    CMP EAX,0x1
0051fb14  7510                      JNZ 0x0051fb26
0051fb16  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0051fb1e  0f28e0                    MOVAPS XMM4,XMM0
0051fb21  e98c000000                JMP 0x0051fbb2
0051fb26  f30f11b538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM6
0051fb2e  0f28e6                    MOVAPS XMM4,XMM6
0051fb31  eb7f                      JMP 0x0051fbb2
0051fb33  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0051fb3b  0f2fc4                    COMISS XMM0,XMM4
0051fb3e  762f                      JBE 0x0051fb6f
0051fb40  f30f1005e0aaba00          MOVSS XMM0,dword ptr [0x00baaae0]
0051fb48  0f2fc4                    COMISS XMM0,XMM4
0051fb4b  7622                      JBE 0x0051fb6f
0051fb4d  f30f5c8d14ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff14]
0051fb55  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0051fb5d  f30f5c8518ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff18]
0051fb65  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
0051fb6d  eb18                      JMP 0x0051fb87
0051fb6f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0051fb77  f30f5c851cffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff1c]
0051fb7f  f30f119d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM3
0051fb87  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0051fb8d  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0051fb95  50                        PUSH EAX
0051fb96  8d8d0cffffff              LEA ECX,[EBP + 0xffffff0c]
0051fb9c  e88f044f00                CALL 0x00a10030
0051fba1  f30f1020                  MOVSS XMM4,dword ptr [EAX]
0051fba5  f30f106804                MOVSS XMM5,dword ptr [EAX + 0x4]
0051fbaa  f30f11a538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM4
0051fbb2  f30f100d40cbba00          MOVSS XMM1,dword ptr [0x00bacb40]
0051fbba  0f28c5                    MOVAPS XMM0,XMM5
0051fbbd  0f28d4                    MOVAPS XMM2,XMM4
0051fbc0  f30f11ad04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM5
0051fbc8  0f54d1                    ANDPS XMM2,XMM1
0051fbcb  0f54c1                    ANDPS XMM0,XMM1
0051fbce  f30f5cd0                  SUBSS XMM2,XMM0
0051fbd2  f30f1005d4a1ba00          MOVSS XMM0,dword ptr [0x00baa1d4]
0051fbda  0f54d1                    ANDPS XMM2,XMM1
0051fbdd  0f2fc2                    COMISS XMM0,XMM2
0051fbe0  762b                      JBE 0x0051fc0d
0051fbe2  e879f31c00                CALL 0x006eef60
0051fbe7  f30f10a538ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff38]
0051fbef  f30f10ad04ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff04]
0051fbf7  a801                      TEST AL,0x1
0051fbf9  750a                      JNZ 0x0051fc05
0051fbfb  f30f5925d0a2ba00          MULSS XMM4,dword ptr [0x00baa2d0]
0051fc03  eb08                      JMP 0x0051fc0d
0051fc05  f30f592dd0a2ba00          MULSS XMM5,dword ptr [0x00baa2d0]
0051fc0d  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0051fc15  0f57f6                    XORPS XMM6,XMM6
0051fc18  0f2ede                    UCOMISS XMM3,XMM6
0051fc1b  0f28cc                    MOVAPS XMM1,XMM4
0051fc1e  0f28d5                    MOVAPS XMM2,XMM5
0051fc21  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
0051fc29  f30f591528a5ba00          MULSS XMM2,dword ptr [0x00baa528]
0051fc31  9f                        LAHF
0051fc32  f6c444                    TEST AH,0x44
0051fc35  7b38                      JNP 0x0051fc6f
0051fc37  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0051fc3f  f30f59c8                  MULSS XMM1,XMM0
0051fc43  f30f59d0                  MULSS XMM2,XMM0
0051fc47  f30f5ecb                  DIVSS XMM1,XMM3
0051fc4b  f30f5ed3                  DIVSS XMM2,XMM3
0051fc4f  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
0051fc57  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0051fc5f  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0051fc67  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0051fc6f  f30f1005c8aeba00          MOVSS XMM0,dword ptr [0x00baaec8]
0051fc77  f30f108f580b0000          MOVSS XMM1,dword ptr [EDI + 0xb58]
0051fc7f  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
0051fc87  f30f5925d0a8ba00          MULSS XMM4,dword ptr [0x00baa8d0]
0051fc8f  f30f592dd0a8ba00          MULSS XMM5,dword ptr [0x00baa8d0]
0051fc97  f30f58a73c030000          ADDSS XMM4,dword ptr [EDI + 0x33c]
0051fc9f  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
0051fca7  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0051fcaf  f30f58af40030000          ADDSS XMM5,dword ptr [EDI + 0x340]
0051fcb7  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
0051fcbf  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0051fcc7  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0051fccf  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
0051fcd7  f30f5cc1                  SUBSS XMM0,XMM1
0051fcdb  f30f11a538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM4
0051fce3  f30f11ad04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM5
0051fceb  f30f11b524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM6
0051fcf3  0f2fc6                    COMISS XMM0,XMM6
0051fcf6  0f8660050000              JBE 0x0052025c
0051fcfc  0f1f4000                  NOP dword ptr [EAX]
0051fd00  e85bf21c00                CALL 0x006eef60
0051fd05  0f57c0                    XORPS XMM0,XMM0
0051fd08  f20f2ac0                  CVTSI2SD XMM0,EAX
0051fd0c  c1e81f                    SHR EAX,0x1f
0051fd0f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0051fd18  660f5ac0                  CVTPD2PS XMM0,XMM0
0051fd1c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0051fd24  f30f590570abba00          MULSS XMM0,dword ptr [0x00baab70]
0051fd2c  f30f5805d0a8ba00          ADDSS XMM0,dword ptr [0x00baa8d0]
0051fd34  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
0051fd3c  e81ff21c00                CALL 0x006eef60
0051fd41  0f57c0                    XORPS XMM0,XMM0
0051fd44  f20f2ac0                  CVTSI2SD XMM0,EAX
0051fd48  c1e81f                    SHR EAX,0x1f
0051fd4b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0051fd54  660f5ac0                  CVTPD2PS XMM0,XMM0
0051fd58  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0051fd60  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0051fd68  f30f58c0                  ADDSS XMM0,XMM0
0051fd6c  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0051fd74  e8c7d7efff                CALL 0x0041d540
0051fd79  f30f598528ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff28]
0051fd81  f30f588538ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff38]
0051fd89  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
0051fd91  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0051fd99  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0051fda1  e87ad7efff                CALL 0x0041d520
0051fda6  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
0051fdae  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
0051fdb6  f30f108d00ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff00]
0051fdbe  f30f59c2                  MULSS XMM0,XMM2
0051fdc2  f30f5ccb                  SUBSS XMM1,XMM3
0051fdc6  a17816c700                MOV EAX,[0x00c71678]
0051fdcb  f30f598528ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff28]
0051fdd3  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0051fdd9  f30f5ecb                  DIVSS XMM1,XMM3
0051fddd  f30f588504ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff04]
0051fde5  f30f58ca                  ADDSS XMM1,XMM2
0051fde9  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0051fdf1  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
0051fdf9  f30f2cd1                  CVTTSS2SI EDX,XMM1
0051fdfd  f30f5ec3                  DIVSS XMM0,XMM3
0051fe01  f30f58c2                  ADDSS XMM0,XMM2
0051fe05  f30f2cc0                  CVTTSS2SI EAX,XMM0
0051fe09  85d2                      TEST EDX,EDX
0051fe0b  7817                      JS 0x0051fe24
0051fe0d  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
0051fe10  3bd6                      CMP EDX,ESI
0051fe12  7d10                      JGE 0x0051fe24
0051fe14  85c0                      TEST EAX,EAX
0051fe16  780c                      JS 0x0051fe24
0051fe18  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
0051fe1b  7d07                      JGE 0x0051fe24
0051fe1d  0faff0                    IMUL ESI,EAX
0051fe20  03f2                      ADD ESI,EDX
0051fe22  eb03                      JMP 0x0051fe27
0051fe24  83ceff                    OR ESI,0xffffffff
0051fe27  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
0051fe2d  89b528ffffff              MOV dword ptr [EBP + 0xffffff28],ESI
0051fe33  50                        PUSH EAX
0051fe34  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
0051fe3a  50                        PUSH EAX
0051fe3b  8d8f5c0b0000              LEA ECX,[EDI + 0xb5c]
0051fe41  e85a8af0ff                CALL 0x004288a0
0051fe46  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
0051fe4c  80780d00                  CMP byte ptr [EAX + 0xd],0x0
0051fe50  7528                      JNZ 0x0051fe7a
0051fe52  3b7010                    CMP ESI,dword ptr [EAX + 0x10]
0051fe55  7c23                      JL 0x0051fe7a
0051fe57  8d8f5c0b0000              LEA ECX,[EDI + 0xb5c]
0051fe5d  3b875c0b0000              CMP EAX,dword ptr [EDI + 0xb5c]
0051fe63  741b                      JZ 0x0051fe80
0051fe65  f30f109524ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff24]
0051fe6d  f30f5c1554a3ba00          SUBSS XMM2,dword ptr [0x00baa354]
0051fe75  e9a5030000                JMP 0x0052021f
0051fe7a  8d8f5c0b0000              LEA ECX,[EDI + 0xb5c]
0051fe80  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
0051fe86  50                        PUSH EAX
0051fe87  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
0051fe8d  50                        PUSH EAX
0051fe8e  e82d47fcff                CALL 0x004e45c0
0051fe93  a17816c700                MOV EAX,[0x00c71678]
0051fe98  f30f102504a9ba00          MOVSS XMM4,dword ptr [0x00baa904]
0051fea0  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0051fea6  8b8528ffffff              MOV EAX,dword ptr [EBP + 0xffffff28]
0051feac  99                        CDQ
0051fead  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
0051feb0  f7f9                      IDIV ECX
0051feb2  660f6ec2                  MOVD XMM0,EDX
0051feb6  0f5bc0                    CVTDQ2PS XMM0,XMM0
0051feb9  660f6ec8                  MOVD XMM1,EAX
0051febd  f30f59c4                  MULSS XMM0,XMM4
0051fec1  0f5bc9                    CVTDQ2PS XMM1,XMM1
0051fec4  f30f58c4                  ADDSS XMM0,XMM4
0051fec8  f30f59cc                  MULSS XMM1,XMM4
0051fecc  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
0051fed4  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0051fedc  f30f5cc4                  SUBSS XMM0,XMM4
0051fee0  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
0051fee8  f30f5ec4                  DIVSS XMM0,XMM4
0051feec  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
0051fef4  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0051fefc  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
0051ff04  f30f2cd0                  CVTTSS2SI EDX,XMM0
0051ff08  0f28c1                    MOVAPS XMM0,XMM1
0051ff0b  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
0051ff13  f30f5ec4                  DIVSS XMM0,XMM4
0051ff17  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0051ff1f  f30f2cc0                  CVTTSS2SI EAX,XMM0
0051ff23  85d2                      TEST EDX,EDX
0051ff25  7814                      JS 0x0051ff3b
0051ff27  3bd1                      CMP EDX,ECX
0051ff29  7d10                      JGE 0x0051ff3b
0051ff2b  85c0                      TEST EAX,EAX
0051ff2d  780c                      JS 0x0051ff3b
0051ff2f  3b4610                    CMP EAX,dword ptr [ESI + 0x10]
0051ff32  7d07                      JGE 0x0051ff3b
0051ff34  0fafc8                    IMUL ECX,EAX
0051ff37  03ca                      ADD ECX,EDX
0051ff39  eb03                      JMP 0x0051ff3e
0051ff3b  83c9ff                    OR ECX,0xffffffff
0051ff3e  51                        PUSH ECX
0051ff3f  8bce                      MOV ECX,ESI
0051ff41  e8ba082d00                CALL 0x007f0800
0051ff46  85c0                      TEST EAX,EAX
0051ff48  0f85c9020000              JNZ 0x00520217
0051ff4e  8a874c0b0000              MOV AL,byte ptr [EDI + 0xb4c]
0051ff54  8bce                      MOV ECX,ESI
0051ff56  6a00                      PUSH 0x0
0051ff58  6a00                      PUSH 0x0
0051ff5a  50                        PUSH EAX
0051ff5b  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
0051ff61  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0051ff67  6a01                      PUSH 0x1
0051ff69  50                        PUSH EAX
0051ff6a  8d873c030000              LEA EAX,[EDI + 0x33c]
0051ff70  50                        PUSH EAX
0051ff71  e87a0e2d00                CALL 0x007f0df0
0051ff76  84c0                      TEST AL,AL
0051ff78  0f8431020000              JZ 0x005201af
0051ff7e  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0051ff82  750a                      JNZ 0x0051ff8e
0051ff84  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
0051ff8c  eb08                      JMP 0x0051ff96
0051ff8e  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0051ff96  f30f108528ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff28]
0051ff9e  f30f5c85e4feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffee4]
0051ffa6  f30f59c1                  MULSS XMM0,XMM1
0051ffaa  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
0051ffb2  0f2fc8                    COMISS XMM1,XMM0
0051ffb5  0f82f4010000              JC 0x005201af
0051ffbb  a17816c700                MOV EAX,[0x00c71678]
0051ffc0  8d8d0cffffff              LEA ECX,[EBP + 0xffffff0c]
0051ffc6  6a00                      PUSH 0x0
0051ffc8  6a00                      PUSH 0x0
0051ffca  6a00                      PUSH 0x0
0051ffcc  68e7030000                PUSH 0x3e7
0051ffd1  6a03                      PUSH 0x3
0051ffd3  51                        PUSH ECX
0051ffd4  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0051ffda  51                        PUSH ECX
0051ffdb  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0051ffe1  e80a0e2d00                CALL 0x007f0df0
0051ffe6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051ffec  6a00                      PUSH 0x0
0051ffee  6a00                      PUSH 0x0
0051fff0  6a00                      PUSH 0x0
0051fff2  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0051fff8  68e7030000                PUSH 0x3e7
0051fffd  88850bffffff              MOV byte ptr [EBP + 0xffffff0b],AL
00520003  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00520009  6a03                      PUSH 0x3
0052000b  50                        PUSH EAX
0052000c  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
00520012  50                        PUSH EAX
00520013  e8d80d2d00                CALL 0x007f0df0
00520018  8a8d23ffffff              MOV CL,byte ptr [EBP + 0xffffff23]
0052001e  84c9                      TEST CL,CL
00520020  740a                      JZ 0x0052002c
00520022  f30f102d50adba00          MOVSS XMM5,dword ptr [0x00baad50]
0052002a  eb08                      JMP 0x00520034
0052002c  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
00520034  84c0                      TEST AL,AL
00520036  740d                      JZ 0x00520045
00520038  0f57c0                    XORPS XMM0,XMM0
0052003b  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
00520043  eb13                      JMP 0x00520058
00520045  f30f100578acba00          MOVSS XMM0,dword ptr [0x00baac78]
0052004d  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
00520055  0f57c0                    XORPS XMM0,XMM0
00520058  84c9                      TEST CL,CL
0052005a  7510                      JNZ 0x0052006c
0052005c  388d0bffffff              CMP byte ptr [EBP + 0xffffff0b],CL
00520062  7508                      JNZ 0x0052006c
00520064  f30f10055cacba00          MOVSS XMM0,dword ptr [0x00baac5c]
0052006c  f30f108d3cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff3c]
00520074  f30f5c8d18ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff18]
0052007c  f30f109d28ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff28]
00520084  f30f109528ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff28]
0052008c  f30f5c9d14ffffff          SUBSS XMM3,dword ptr [EBP + 0xffffff14]
00520094  f30f10a530ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff30]
0052009c  f30f592dd4a1ba00          MULSS XMM5,dword ptr [0x00baa1d4]
005200a4  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
005200ac  f30f10852cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff2c]
005200b4  f30f5cd0                  SUBSS XMM2,XMM0
005200b8  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
005200c0  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
005200c8  f30f5cc4                  SUBSS XMM0,XMM4
005200cc  f30f11a534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM4
005200d4  0f28e1                    MOVAPS XMM4,XMM1
005200d7  f30f118dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM1
005200df  f30f59e1                  MULSS XMM4,XMM1
005200e3  0f28cb                    MOVAPS XMM1,XMM3
005200e6  f30f59cb                  MULSS XMM1,XMM3
005200ea  f30f59c0                  MULSS XMM0,XMM0
005200ee  f30f58e1                  ADDSS XMM4,XMM1
005200f2  f30f59d2                  MULSS XMM2,XMM2
005200f6  f30f119dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM3
005200fe  f30f58c2                  ADDSS XMM0,XMM2
00520102  f30f59e5                  MULSS XMM4,XMM5
00520106  f30f11a5ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM4
0052010e  e83d59f1ff                CALL 0x00435a50
00520113  f30f5c0568aaba00          SUBSS XMM0,dword ptr [0x00baaa68]
0052011b  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00520123  e86845fcff                CALL 0x004e4690
00520128  f30f1095ccfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffecc]
00520130  f30f108d34ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff34]
00520138  f30f5cd0                  SUBSS XMM2,XMM0
0052013c  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
00520144  f30f5c8d18ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff18]
0052014c  f30f5c8514ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff14]
00520154  f30f598dc8feffff          MULSS XMM1,dword ptr [EBP + 0xfffffec8]
0052015c  f30f5985fcfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffefc]
00520164  f30f58c8                  ADDSS XMM1,XMM0
00520168  f30f5cd1                  SUBSS XMM2,XMM1
0052016c  f30f5c95d0feffff          SUBSS XMM2,dword ptr [EBP + 0xfffffed0]
00520174  f30f589500ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff00]
0052017c  0f2f951cffffff            COMISS XMM2,dword ptr [EBP + 0xffffff1c]
00520183  762a                      JBE 0x005201af
00520185  f30f108528ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff28]
0052018d  f30f108d3cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff3c]
00520195  f30f11951cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM2
0052019d  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
005201a5  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
005201ad  eb10                      JMP 0x005201bf
005201af  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
005201b7  f30f108decfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeec]
005201bf  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
005201c6  9f                        LAHF
005201c7  f6c444                    TEST AH,0x44
005201ca  7a0d                      JP 0x005201d9
005201cc  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
005201d3  9f                        LAHF
005201d4  f6c444                    TEST AH,0x44
005201d7  7b3e                      JNP 0x00520217
005201d9  f30f109524ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff24]
005201e1  8db718040000              LEA ESI,[EDI + 0x418]
005201e7  f30f114e04                MOVSS dword ptr [ESI + 0x4],XMM1
005201ec  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
005201f4  f30f1106                  MOVSS dword ptr [ESI],XMM0
005201f8  f30f1087580b0000          MOVSS XMM0,dword ptr [EDI + 0xb58]
00520200  0f2fc8                    COMISS XMM1,XMM0
00520203  7620                      JBE 0x00520225
00520205  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0052020d  f30f1187580b0000          MOVSS dword ptr [EDI + 0xb58],XMM0
00520215  eb0e                      JMP 0x00520225
00520217  f30f109524ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff24]
0052021f  8db718040000              LEA ESI,[EDI + 0x418]
00520225  f30f108f580b0000          MOVSS XMM1,dword ptr [EDI + 0xb58]
0052022d  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
00520235  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
0052023d  f30f581554a4ba00          ADDSS XMM2,dword ptr [0x00baa454]
00520245  f30f5cc1                  SUBSS XMM0,XMM1
00520249  f30f119524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM2
00520251  0f2fc2                    COMISS XMM0,XMM2
00520254  0f87a6faffff              JA 0x0051fd00
0052025a  eb06                      JMP 0x00520262
0052025c  8db718040000              LEA ESI,[EDI + 0x418]
00520262  6840b6c700                PUSH 0xc7b640
00520267  8bce                      MOV ECX,ESI
00520269  e8c2034f00                CALL 0x00a10630
0052026e  84c0                      TEST AL,AL
00520270  0f8479010000              JZ 0x005203ef
00520276  ff7720                    PUSH dword ptr [EDI + 0x20]
00520279  8bcf                      MOV ECX,EDI
0052027b  6a0a                      PUSH 0xa
0052027d  e88ec41800                CALL 0x006ac710
00520282  84c0                      TEST AL,AL
00520284  0f84f4000000              JZ 0x0052037e
0052028a  a17816c700                MOV EAX,[0x00c71678]
0052028f  6a00                      PUSH 0x0
00520291  6a00                      PUSH 0x0
00520293  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00520299  8a874c0b0000              MOV AL,byte ptr [EDI + 0xb4c]
0052029f  50                        PUSH EAX
005202a0  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
005202a6  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
005202ac  6a01                      PUSH 0x1
005202ae  56                        PUSH ESI
005202af  50                        PUSH EAX
005202b0  e83b0b2d00                CALL 0x007f0df0
005202b5  84c0                      TEST AL,AL
005202b7  7415                      JZ 0x005202ce
005202b9  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
005202c1  0f2f87580b0000            COMISS XMM0,dword ptr [EDI + 0xb58]
005202c8  0f8797000000              JA 0x00520365
005202ce  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
005202d6  f30f1016                  MOVSS XMM2,dword ptr [ESI]
005202da  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
005202df  f30f5cca                  SUBSS XMM1,XMM2
005202e3  f30f108518ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff18]
005202eb  f30f5cc3                  SUBSS XMM0,XMM3
005202ef  f30f59c9                  MULSS XMM1,XMM1
005202f3  f30f59c0                  MULSS XMM0,XMM0
005202f7  f30f58c1                  ADDSS XMM0,XMM1
005202fb  f30f100d5cacba00          MOVSS XMM1,dword ptr [0x00baac5c]
00520303  0f2fc8                    COMISS XMM1,XMM0
00520306  775d                      JA 0x00520365
00520308  f30f10a5e4feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffee4]
00520310  f30f108d34ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff34]
00520318  0f28c4                    MOVAPS XMM0,XMM4
0052031b  f30f5cc2                  SUBSS XMM0,XMM2
0052031f  f30f5ccb                  SUBSS XMM1,XMM3
00520323  f30f59c0                  MULSS XMM0,XMM0
00520327  f30f59c9                  MULSS XMM1,XMM1
0052032b  f30f58c8                  ADDSS XMM1,XMM0
0052032f  f30f100508acba00          MOVSS XMM0,dword ptr [0x00baac08]
00520337  0f2fc1                    COMISS XMM0,XMM1
0052033a  7729                      JA 0x00520365
0052033c  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00520340  750a                      JNZ 0x0052034c
00520342  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0052034a  eb08                      JMP 0x00520354
0052034c  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00520354  f30f5cd4                  SUBSS XMM2,XMM4
00520358  f30f59d0                  MULSS XMM2,XMM0
0052035c  0f2f15e49fba00            COMISS XMM2,dword ptr [0x00ba9fe4]
00520363  7619                      JBE 0x0052037e
00520365  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0052036d  f30f1106                  MOVSS dword ptr [ESI],XMM0
00520371  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00520379  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
0052037e  6840b6c700                PUSH 0xc7b640
00520383  8bce                      MOV ECX,ESI
00520385  e8a6024f00                CALL 0x00a10630
0052038a  84c0                      TEST AL,AL
0052038c  7461                      JZ 0x005203ef
0052038e  6a01                      PUSH 0x1
00520390  6a00                      PUSH 0x0
00520392  51                        PUSH ECX
00520393  c70424ac1c8a3f            MOV dword ptr [ESP],0x3f8a1cac
0052039a  8d8f14040000              LEA ECX,[EDI + 0x414]
005203a0  56                        PUSH ESI
005203a1  e81a302c00                CALL 0x007e33c0
005203a6  eb47                      JMP 0x005203ef
005203a8  f30f1087580b0000          MOVSS XMM0,dword ptr [EDI + 0xb58]
005203b0  8d8f14040000              LEA ECX,[EDI + 0x414]
005203b6  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
005203be  6a01                      PUSH 0x1
005203c0  c787540b000000000000      MOV dword ptr [EDI + 0xb54],0x0
005203ca  f30f1187580b0000          MOVSS dword ptr [EDI + 0xb58],XMM0
005203d2  e8295f2c00                CALL 0x007e6300
005203d7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005203df  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
005203e7  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005203ef  8bb5f4feffff              MOV ESI,dword ptr [EBP + 0xfffffef4]
005203f5  f30f100d34a8ba00          MOVSS XMM1,dword ptr [0x00baa834]
005203fd  0f57d2                    XORPS XMM2,XMM2
00520400  8bcf                      MOV ECX,EDI
00520402  e859c31800                CALL 0x006ac760
00520407  85c0                      TEST EAX,EAX
00520409  0f84f6000000              JZ 0x00520505
0052040f  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00520415  e816ebf1ff                CALL 0x0043ef30
0052041a  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00520422  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00520428  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
00520430  8d8d2cffffff              LEA ECX,[EBP + 0xffffff2c]
00520436  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0052043e  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00520446  8db73c030000              LEA ESI,[EDI + 0x33c]
0052044c  c7459800000000            MOV dword ptr [EBP + -0x68],0x0
00520453  50                        PUSH EAX
00520454  c7459c00020000            MOV dword ptr [EBP + -0x64],0x200
0052045b  c78554ffffff9a99193f      MOV dword ptr [EBP + 0xffffff54],0x3f19999a
00520465  c7854cffffffec51b8bd      MOV dword ptr [EBP + 0xffffff4c],0xbdb851ec
0052046f  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00520477  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
0052047f  e8acfb4e00                CALL 0x00a10030
00520484  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
0052048c  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00520492  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
0052049a  8bcf                      MOV ECX,EDI
0052049c  50                        PUSH EAX
0052049d  6a00                      PUSH 0x0
0052049f  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
005204a5  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
005204ad  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
005204b5  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
005204bd  50                        PUSH EAX
005204be  56                        PUSH ESI
005204bf  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
005204c7  e814ae1a00                CALL 0x006cb2e0
005204cc  eb37                      JMP 0x00520505
005204ce  6a01                      PUSH 0x1
005204d0  6884030000                PUSH 0x384
005204d5  51                        PUSH ECX
005204d6  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
005204dc  c704240000803f            MOV dword ptr [ESP],0x3f800000
005204e3  50                        PUSH EAX
005204e4  8d8f14040000              LEA ECX,[EDI + 0x414]
005204ea  e8d12e2c00                CALL 0x007e33c0
005204ef  eb14                      JMP 0x00520505
005204f1  6a00                      PUSH 0x0
005204f3  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
005204f9  50                        PUSH EAX
005204fa  8d8f14040000              LEA ECX,[EDI + 0x414]
00520500  e83b442c00                CALL 0x007e4940
00520505  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0052050d  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00520515  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
0052051b  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00520523  85d2                      TEST EDX,EDX
00520525  7e1a                      JLE 0x00520541
00520527  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0052052f  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00520537  2bc8                      SUB ECX,EAX
00520539  03ca                      ADD ECX,EDX
0052053b  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
00520541  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00520547  33c0                      XOR EAX,EAX
00520549  81e100000010              AND ECX,0x10000000
0052054f  0bc1                      OR EAX,ECX
00520551  7418                      JZ 0x0052056b
00520553  a17816c700                MOV EAX,[0x00c71678]
00520558  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0052055e  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00520561  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00520565  0f8558040000              JNZ 0x005209c3
0052056b  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00520571  83f8ff                    CMP EAX,-0x1
00520574  740c                      JZ 0x00520582
00520576  51                        PUSH ECX
00520577  57                        PUSH EDI
00520578  50                        PUSH EAX
00520579  6a08                      PUSH 0x8
0052057b  e8905b4300                CALL 0x00956110
00520580  eb0b                      JMP 0x0052058d
00520582  6a00                      PUSH 0x0
00520584  6a03                      PUSH 0x3
00520586  8bcf                      MOV ECX,EDI
00520588  e883c11800                CALL 0x006ac710
0052058d  84c0                      TEST AL,AL
0052058f  0f842e040000              JZ 0x005209c3
00520595  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0052059b  25000a0001                AND EAX,0x1000a00
005205a0  83c800                    OR EAX,0x0
005205a3  0f851a040000              JNZ 0x005209c3
005205a9  837f285c                  CMP dword ptr [EDI + 0x28],0x5c
005205ad  7539                      JNZ 0x005205e8
005205af  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005205b3  7533                      JNZ 0x005205e8
005205b5  3987ec0b0000              CMP dword ptr [EDI + 0xbec],EAX
005205bb  0f8502040000              JNZ 0x005209c3
005205c1  3987a00b0000              CMP dword ptr [EDI + 0xba0],EAX
005205c7  7f1f                      JG 0x005205e8
005205c9  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
005205d3  898710040000              MOV dword ptr [EDI + 0x410],EAX
005205d9  c787a00b00000a000000      MOV dword ptr [EDI + 0xba0],0xa
005205e3  e9db030000                JMP 0x005209c3
005205e8  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005205ef  753d                      JNZ 0x0052062e
005205f1  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
005205f9  f30f108d18ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff18]
00520601  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00520609  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00520611  f30f59c0                  MULSS XMM0,XMM0
00520615  f30f59c9                  MULSS XMM1,XMM1
00520619  f30f58c8                  ADDSS XMM1,XMM0
0052061d  f30f100534acba00          MOVSS XMM0,dword ptr [0x00baac34]
00520625  0f2fc1                    COMISS XMM0,XMM1
00520628  0f8695030000              JBE 0x005209c3
0052062e  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00520638  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00520642  e97c030000                JMP 0x005209c3
00520647  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0052064f  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00520657  68d40eb600                PUSH 0xb60ed4
0052065c  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00520664  e8179deeff                CALL 0x0040a380
00520669  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00520670  741c                      JZ 0x0052068e
00520672  6a01                      PUSH 0x1
00520674  6a00                      PUSH 0x0
00520676  51                        PUSH ECX
00520677  c70424cdcc4c3e            MOV dword ptr [ESP],0x3e4ccccd
0052067e  8d8f14040000              LEA ECX,[EDI + 0x414]
00520684  6840b6c700                PUSH 0xc7b640
00520689  e8322d2c00                CALL 0x007e33c0
0052068e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00520692  0f841b030000              JZ 0x005209b3
00520698  68dcd2b100                PUSH 0xb1d2dc
0052069d  8d4f78                    LEA ECX,[EDI + 0x78]
005206a0  e82ba7eeff                CALL 0x0040add0
005206a5  84c0                      TEST AL,AL
005206a7  0f84f7020000              JZ 0x005209a4
005206ad  837f2862                  CMP dword ptr [EDI + 0x28],0x62
005206b1  8d87e4010000              LEA EAX,[EDI + 0x1e4]
005206b7  8db73c030000              LEA ESI,[EDI + 0x33c]
005206bd  0f8557020000              JNZ 0x0052091a
005206c3  51                        PUSH ECX
005206c4  c704240000803f            MOV dword ptr [ESP],0x3f800000
005206cb  6a00                      PUSH 0x0
005206cd  6a02                      PUSH 0x2
005206cf  51                        PUSH ECX
005206d0  c704240000803f            MOV dword ptr [ESP],0x3f800000
005206d7  8bcf                      MOV ECX,EDI
005206d9  68b2000000                PUSH 0xb2
005206de  e8bd641b00                CALL 0x006d6ba0
005206e3  837f3001                  CMP dword ptr [EDI + 0x30],0x1
005206e7  7577                      JNZ 0x00520760
005206e9  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
005206ef  e83ce8f1ff                CALL 0x0043ef30
005206f4  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
005206f7  8bd6                      MOV EDX,ESI
005206f9  834d9801                  OR dword ptr [EBP + -0x68],0x1
005206fd  b904000000                MOV ECX,0x4
00520702  89459c                    MOV dword ptr [EBP + -0x64],EAX
00520705  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0052070b  6840b6c700                PUSH 0xc7b640
00520710  50                        PUSH EAX
00520711  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
00520717  c7852cffffff00000000      MOV dword ptr [EBP + 0xffffff2c],0x0
00520721  50                        PUSH EAX
00520722  c78530ffffff0000a0c1      MOV dword ptr [EBP + 0xffffff30],0xc1a00000
0052072c  e8bf751b00                CALL 0x006d7cf0
00520731  83c40c                    ADD ESP,0xc
00520734  8bc8                      MOV ECX,EAX
00520736  8b10                      MOV EDX,dword ptr [EAX]
00520738  6a01                      PUSH 0x1
0052073a  6a00                      PUSH 0x0
0052073c  68ff000000                PUSH 0xff
00520741  6aff                      PUSH -0x1
00520743  68a44dc300                PUSH 0xc34da4
00520748  ff523c                    CALL dword ptr [EDX + 0x3c]
0052074b  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00520751  c7852cffffff00000041      MOV dword ptr [EBP + 0xffffff2c],0x41000000
0052075b  50                        PUSH EAX
0052075c  6a06                      PUSH 0x6
0052075e  eb4e                      JMP 0x005207ae
00520760  6840b6c700                PUSH 0xc7b640
00520765  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0052076b  c7852cffffff00000000      MOV dword ptr [EBP + 0xffffff2c],0x0
00520775  50                        PUSH EAX
00520776  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
0052077c  c78530ffffff0000a0c1      MOV dword ptr [EBP + 0xffffff30],0xc1a00000
00520786  50                        PUSH EAX
00520787  8bd6                      MOV EDX,ESI
00520789  b904000000                MOV ECX,0x4
0052078e  e85d751b00                CALL 0x006d7cf0
00520793  83c40c                    ADD ESP,0xc
00520796  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0052079c  e88fe7f1ff                CALL 0x0043ef30
005207a1  50                        PUSH EAX
005207a2  c7852cffffff00004041      MOV dword ptr [EBP + 0xffffff2c],0x41400000
005207ac  6a08                      PUSH 0x8
005207ae  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
005207b4  c78530ffffff00000000      MOV dword ptr [EBP + 0xffffff30],0x0
005207be  50                        PUSH EAX
005207bf  56                        PUSH ESI
005207c0  8bcf                      MOV ECX,EDI
005207c2  e819ab1a00                CALL 0x006cb2e0
005207c7  e894e71c00                CALL 0x006eef60
005207cc  0f57c0                    XORPS XMM0,XMM0
005207cf  51                        PUSH ECX
005207d0  8bcf                      MOV ECX,EDI
005207d2  f20f2ac0                  CVTSI2SD XMM0,EAX
005207d6  c1e81f                    SHR EAX,0x1f
005207d9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005207e2  660f5ac0                  CVTPD2PS XMM0,XMM0
005207e6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005207ee  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
005207f6  f30f110424                MOVSS dword ptr [ESP],XMM0
005207fb  e8d05c1900                CALL 0x006b64d0
00520800  e85be71c00                CALL 0x006eef60
00520805  0f57c0                    XORPS XMM0,XMM0
00520808  51                        PUSH ECX
00520809  8bcf                      MOV ECX,EDI
0052080b  f20f2ac0                  CVTSI2SD XMM0,EAX
0052080f  c1e81f                    SHR EAX,0x1f
00520812  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052081b  660f5ac0                  CVTPD2PS XMM0,XMM0
0052081f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00520827  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0052082f  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
00520837  f30f110424                MOVSS dword ptr [ESP],XMM0
0052083c  e88f5c1900                CALL 0x006b64d0
00520841  8bf0                      MOV ESI,EAX
00520843  e818e71c00                CALL 0x006eef60
00520848  0f57c0                    XORPS XMM0,XMM0
0052084b  f20f2ac0                  CVTSI2SD XMM0,EAX
0052084f  c1e81f                    SHR EAX,0x1f
00520852  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052085b  660f5ac0                  CVTPD2PS XMM0,XMM0
0052085f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00520867  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0052086f  e8ece61c00                CALL 0x006eef60
00520874  0f57c0                    XORPS XMM0,XMM0
00520877  f30f109534ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff34]
0052087f  f30f591508a7ba00          MULSS XMM2,dword ptr [0x00baa708]
00520887  f20f2ac0                  CVTSI2SD XMM0,EAX
0052088b  c1e81f                    SHR EAX,0x1f
0052088e  f30f119534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM2
00520896  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052089f  660f5ac0                  CVTPD2PS XMM0,XMM0
005208a3  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005208ab  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
005208b3  f30f58c0                  ADDSS XMM0,XMM0
005208b7  e884ccefff                CALL 0x0041d540
005208bc  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
005208c4  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
005208cc  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
005208d4  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
005208dc  f30f58c0                  ADDSS XMM0,XMM0
005208e0  e83bccefff                CALL 0x0041d520
005208e5  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
005208ed  f30f108dfcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffefc]
005208f5  f30f580534a8ba00          ADDSS XMM0,dword ptr [0x00baa834]
005208fd  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00520905  f30f118e3c030000          MOVSS dword ptr [ESI + 0x33c],XMM1
0052090d  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
00520915  e98a000000                JMP 0x005209a4
0052091a  6840b6c700                PUSH 0xc7b640
0052091f  50                        PUSH EAX
00520920  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
00520926  c7852cffffff00000000      MOV dword ptr [EBP + 0xffffff2c],0x0
00520930  50                        PUSH EAX
00520931  8bd6                      MOV EDX,ESI
00520933  c78530ffffff0000a0c1      MOV dword ptr [EBP + 0xffffff30],0xc1a00000
0052093d  b902000000                MOV ECX,0x2
00520942  e8a9731b00                CALL 0x006d7cf0
00520947  83c408                    ADD ESP,0x8
0052094a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00520951  6a00                      PUSH 0x0
00520953  6a02                      PUSH 0x2
00520955  51                        PUSH ECX
00520956  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052095d  8bcf                      MOV ECX,EDI
0052095f  68b2000000                PUSH 0xb2
00520964  e837621b00                CALL 0x006d6ba0
00520969  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0052096f  e8bce5f1ff                CALL 0x0043ef30
00520974  50                        PUSH EAX
00520975  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00520978  8bcf                      MOV ECX,EDI
0052097a  48                        DEC EAX
0052097b  c7852cffffff00004041      MOV dword ptr [EBP + 0xffffff2c],0x41400000
00520985  f7d8                      NEG EAX
00520987  c78530ffffff00000000      MOV dword ptr [EBP + 0xffffff30],0x0
00520991  1bc0                      SBB EAX,EAX
00520993  83c007                    ADD EAX,0x7
00520996  50                        PUSH EAX
00520997  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
0052099d  50                        PUSH EAX
0052099e  56                        PUSH ESI
0052099f  e83ca91a00                CALL 0x006cb2e0
005209a4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005209a8  7409                      JZ 0x005209b3
005209aa  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005209b1  750a                      JNZ 0x005209bd
005209b3  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005209bd  ff8710040000              INC dword ptr [EDI + 0x410]
005209c3  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005209ca  0f846c020000              JZ 0x00520c3c
005209d0  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005209d7  0f84f5010000              JZ 0x00520bd2
005209dd  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
005209e3  898d34ffffff              MOV dword ptr [EBP + 0xffffff34],ECX
005209e9  85c9                      TEST ECX,ECX
005209eb  0f84e0000000              JZ 0x00520ad1
005209f1  e83abb1800                CALL 0x006ac530
005209f6  84c0                      TEST AL,AL
005209f8  0f84d3000000              JZ 0x00520ad1
005209fe  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
00520a04  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
00520a0b  0f85c0000000              JNZ 0x00520ad1
00520a11  83b91c0f0000ff            CMP dword ptr [ECX + 0xf1c],-0x1
00520a18  0f85b3000000              JNZ 0x00520ad1
00520a1e  3bcf                      CMP ECX,EDI
00520a20  0f84ac010000              JZ 0x00520bd2
00520a26  a17816c700                MOV EAX,[0x00c71678]
00520a2b  33d2                      XOR EDX,EDX
00520a2d  89953cffffff              MOV dword ptr [EBP + 0xffffff3c],EDX
00520a33  8bb078bb0100              MOV ESI,dword ptr [EAX + 0x1bb78]
00520a39  8b807cbb0100              MOV EAX,dword ptr [EAX + 0x1bb7c]
00520a3f  2bc6                      SUB EAX,ESI
00520a41  c1f802                    SAR EAX,0x2
00520a44  85c0                      TEST EAX,EAX
00520a46  0f8470010000              JZ 0x00520bbc
00520a4c  0f1f4000                  NOP dword ptr [EAX]
00520a50  8b3496                    MOV ESI,dword ptr [ESI + EDX*0x4]
00520a53  8b8618160000              MOV EAX,dword ptr [ESI + 0x1618]
00520a59  3b871c0f0000              CMP EAX,dword ptr [EDI + 0xf1c]
00520a5f  754a                      JNZ 0x00520aab
00520a61  8b86c4030000              MOV EAX,dword ptr [ESI + 0x3c4]
00520a67  81c6c4030000              ADD ESI,0x3c4
00520a6d  3bc7                      CMP EAX,EDI
00520a6f  753a                      JNZ 0x00520aab
00520a71  85c0                      TEST EAX,EAX
00520a73  741e                      JZ 0x00520a93
00520a75  8d8dfcfeffff              LEA ECX,[EBP + 0xfffffefc]
00520a7b  89b5fcfeffff              MOV dword ptr [EBP + 0xfffffefc],ESI
00520a81  51                        PUSH ECX
00520a82  8d88cc030000              LEA ECX,[EAX + 0x3cc]
00520a88  e883e7faff                CALL 0x004cf210
00520a8d  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
00520a93  8bd6                      MOV EDX,ESI
00520a95  8bc1                      MOV EAX,ECX
00520a97  56                        PUSH ESI
00520a98  8902                      MOV dword ptr [EDX],EAX
00520a9a  e851d2faff                CALL 0x004cdcf0
00520a9f  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
00520aa5  8b953cffffff              MOV EDX,dword ptr [EBP + 0xffffff3c]
00520aab  a17816c700                MOV EAX,[0x00c71678]
00520ab0  42                        INC EDX
00520ab1  89953cffffff              MOV dword ptr [EBP + 0xffffff3c],EDX
00520ab7  8bb078bb0100              MOV ESI,dword ptr [EAX + 0x1bb78]
00520abd  8b807cbb0100              MOV EAX,dword ptr [EAX + 0x1bb7c]
00520ac3  2bc6                      SUB EAX,ESI
00520ac5  c1f802                    SAR EAX,0x2
00520ac8  3bd0                      CMP EDX,EAX
00520aca  7284                      JC 0x00520a50
00520acc  e9eb000000                JMP 0x00520bbc
00520ad1  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00520ad7  898d3cffffff              MOV dword ptr [EBP + 0xffffff3c],ECX
00520add  85c9                      TEST ECX,ECX
00520adf  0f84ed000000              JZ 0x00520bd2
00520ae5  83792861                  CMP dword ptr [ECX + 0x28],0x61
00520ae9  0f85e3000000              JNZ 0x00520bd2
00520aef  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
00520af6  0f85d6000000              JNZ 0x00520bd2
00520afc  83b91c0f0000ff            CMP dword ptr [ECX + 0xf1c],-0x1
00520b03  0f85c9000000              JNZ 0x00520bd2
00520b09  3bcf                      CMP ECX,EDI
00520b0b  0f84c1000000              JZ 0x00520bd2
00520b11  a17816c700                MOV EAX,[0x00c71678]
00520b16  33d2                      XOR EDX,EDX
00520b18  89951cffffff              MOV dword ptr [EBP + 0xffffff1c],EDX
00520b1e  8bb078bb0100              MOV ESI,dword ptr [EAX + 0x1bb78]
00520b24  8b807cbb0100              MOV EAX,dword ptr [EAX + 0x1bb7c]
00520b2a  2bc6                      SUB EAX,ESI
00520b2c  c1f802                    SAR EAX,0x2
00520b2f  85c0                      TEST EAX,EAX
00520b31  0f8485000000              JZ 0x00520bbc
00520b37  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
00520b40  8b3496                    MOV ESI,dword ptr [ESI + EDX*0x4]
00520b43  8b8618160000              MOV EAX,dword ptr [ESI + 0x1618]
00520b49  3b871c0f0000              CMP EAX,dword ptr [EDI + 0xf1c]
00520b4f  754a                      JNZ 0x00520b9b
00520b51  8b86c4030000              MOV EAX,dword ptr [ESI + 0x3c4]
00520b57  81c6c4030000              ADD ESI,0x3c4
00520b5d  3bc7                      CMP EAX,EDI
00520b5f  753a                      JNZ 0x00520b9b
00520b61  85c0                      TEST EAX,EAX
00520b63  741e                      JZ 0x00520b83
00520b65  8d8dfcfeffff              LEA ECX,[EBP + 0xfffffefc]
00520b6b  89b5fcfeffff              MOV dword ptr [EBP + 0xfffffefc],ESI
00520b71  51                        PUSH ECX
00520b72  8d88cc030000              LEA ECX,[EAX + 0x3cc]
00520b78  e893e6faff                CALL 0x004cf210
00520b7d  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
00520b83  8bd6                      MOV EDX,ESI
00520b85  8bc1                      MOV EAX,ECX
00520b87  56                        PUSH ESI
00520b88  8902                      MOV dword ptr [EDX],EAX
00520b8a  e861d1faff                CALL 0x004cdcf0
00520b8f  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
00520b95  8b951cffffff              MOV EDX,dword ptr [EBP + 0xffffff1c]
00520b9b  a17816c700                MOV EAX,[0x00c71678]
00520ba0  42                        INC EDX
00520ba1  89951cffffff              MOV dword ptr [EBP + 0xffffff1c],EDX
00520ba7  8bb078bb0100              MOV ESI,dword ptr [EAX + 0x1bb78]
00520bad  8b807cbb0100              MOV EAX,dword ptr [EAX + 0x1bb7c]
00520bb3  2bc6                      SUB EAX,ESI
00520bb5  c1f802                    SAR EAX,0x2
00520bb8  3bd0                      CMP EDX,EAX
00520bba  7284                      JC 0x00520b40
00520bbc  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00520bc2  89811c0f0000              MOV dword ptr [ECX + 0xf1c],EAX
00520bc8  c7871c0f0000ffffffff      MOV dword ptr [EDI + 0xf1c],0xffffffff
00520bd2  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00520bd9  7461                      JZ 0x00520c3c
00520bdb  837f341c                  CMP dword ptr [EDI + 0x34],0x1c
00520bdf  755b                      JNZ 0x00520c3c
00520be1  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00520be8  7452                      JZ 0x00520c3c
00520bea  51                        PUSH ECX
00520beb  c704240000803f            MOV dword ptr [ESP],0x3f800000
00520bf2  6a00                      PUSH 0x0
00520bf4  6a02                      PUSH 0x2
00520bf6  51                        PUSH ECX
00520bf7  c704240000003f            MOV dword ptr [ESP],0x3f000000
00520bfe  8bcf                      MOV ECX,EDI
00520c00  6a75                      PUSH 0x75
00520c02  e8995f1b00                CALL 0x006d6ba0
00520c07  8bbfbc030000              MOV EDI,dword ptr [EDI + 0x3bc]
00520c0d  8d8d94feffff              LEA ECX,[EBP + 0xfffffe94]
00520c13  ffb5c4feffff              PUSH dword ptr [EBP + 0xfffffec4]
00520c19  8b07                      MOV EAX,dword ptr [EDI]
00520c1b  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
00520c1e  e8ed06f1ff                CALL 0x00431310
00520c23  6a1e                      PUSH 0x1e
00520c25  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
00520c2b  50                        PUSH EAX
00520c2c  6a00                      PUSH 0x0
00520c2e  6a00                      PUSH 0x0
00520c30  51                        PUSH ECX
00520c31  8bcf                      MOV ECX,EDI
00520c33  c7042400002042            MOV dword ptr [ESP],0x42200000
00520c3a  ffd6                      CALL ESI
00520c3c  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00520c3f  64890d00000000            MOV dword ptr FS:[0x0],ECX
00520c46  59                        POP ECX
00520c47  5f                        POP EDI
00520c48  5e                        POP ESI
00520c49  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00520c4c  33cd                      XOR ECX,EBP
00520c4e  e8d8e45c00                CALL 0x00aef12b
00520c53  8be5                      MOV ESP,EBP
00520c55  5d                        POP EBP
00520c56  8be3                      MOV ESP,EBX
00520c58  5b                        POP EBX
00520c59  c3                        RET
