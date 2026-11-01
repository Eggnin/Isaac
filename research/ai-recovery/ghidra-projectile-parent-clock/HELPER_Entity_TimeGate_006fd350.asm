; J460 NPC AI 0x006fd350 HELPER_Entity_TimeGate
; types=9
; identities=9.*
; entry=006fd350
006fd350  8bd1                      MOV EDX,ECX
006fd352  56                        PUSH ESI
006fd353  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
006fd359  83ba788d060000            CMP dword ptr [EDX + 0x68d78],0x0
006fd360  741a                      JZ 0x006fd37c
006fd362  8b8ed8b30400              MOV ECX,dword ptr [ESI + 0x4b3d8]
006fd368  8b86dcb30400              MOV EAX,dword ptr [ESI + 0x4b3dc]
006fd36e  3bc8                      CMP ECX,EAX
006fd370  7474                      JZ 0x006fd3e6
006fd372  2bc1                      SUB EAX,ECX
006fd374  83e0fc                    AND EAX,0xfffffffc
006fd377  83f804                    CMP EAX,0x4
006fd37a  746a                      JZ 0x006fd3e6
006fd37c  83baf464020000            CMP dword ptr [EDX + 0x264f4],0x0
006fd383  7f61                      JG 0x006fd3e6
006fd385  83ba20d5010000            CMP dword ptr [EDX + 0x1d520],0x0
006fd38c  7558                      JNZ 0x006fd3e6
006fd38e  83ba54d6010000            CMP dword ptr [EDX + 0x1d654],0x0
006fd395  754f                      JNZ 0x006fd3e6
006fd397  83ba78ba010000            CMP dword ptr [EDX + 0x1ba78],0x0
006fd39e  7546                      JNZ 0x006fd3e6
006fd3a0  83ba3cb8010000            CMP dword ptr [EDX + 0x1b83c],0x0
006fd3a7  753d                      JNZ 0x006fd3e6
006fd3a9  8b8234c00100              MOV EAX,dword ptr [EDX + 0x1c034]
006fd3af  85c0                      TEST EAX,EAX
006fd3b1  7405                      JZ 0x006fd3b8
006fd3b3  83f802                    CMP EAX,0x2
006fd3b6  742e                      JZ 0x006fd3e6
006fd3b8  8d8a743a0200              LEA ECX,[EDX + 0x23a74]
006fd3be  e88da22b00                CALL 0x009b7650
006fd3c3  84c0                      TEST AL,AL
006fd3c5  751f                      JNZ 0x006fd3e6
006fd3c7  837e0802                  CMP dword ptr [ESI + 0x8],0x2
006fd3cb  7519                      JNZ 0x006fd3e6
006fd3cd  8d8a78670200              LEA ECX,[EDX + 0x26778]
006fd3d3  e838ae1300                CALL 0x00838210
006fd3d8  84c0                      TEST AL,AL
006fd3da  750a                      JNZ 0x006fd3e6
006fd3dc  388254590200              CMP byte ptr [EDX + 0x25954],AL
006fd3e2  7502                      JNZ 0x006fd3e6
006fd3e4  5e                        POP ESI
006fd3e5  c3                        RET
006fd3e6  b001                      MOV AL,0x1
006fd3e8  5e                        POP ESI
006fd3e9  c3                        RET
