; Program for intput

SYS_EXIT  equ 1
RET_EXIT  equ 5
SYS_READ  equ 3
SYS_WRITE equ 4
STD_IN    equ 0
STD_OUT   equ 1
MAX_IN    equ 10

segment .data
    msg db "Type your name:", 0xA, 0xD
    len equ $ - msg

; 'bss' = block started by symbol
segment .bss
    name resb 2

segment .text

global_start

_start:
    mov eax, SYS_WRITE
    mov ebx, STD_OUT
    mov ecx, msg
    mov edx, len
    int 0x80

    ; input
    mov eax, SYS_READ
    mov ebx, STD_IN
    mov ecx, nome
    mov edx, MAX_IN

exit:
    mov eax, SYS_EXIT
    mov ebx, RET_EXIT
    int 0x80