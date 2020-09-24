;this is a comment

;this program is a simple hello world in assembly

section .data:
;this section is used to declaration of variables
    msg db 'Hello, world', 0xa
    len equ $ - msg

section .text:
;this section is where we write the program
global _start:

_start:
    mov edx, len
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 0x80
; output
    mov eax, 1
    mov edx, 0
    int 0x80
