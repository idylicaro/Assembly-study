# Assembly-study

in linux
//command to compile with nasm 
nasm -f elf64 hello.asm
//creating executable
ld -s -o hello hello.o
 

- this send anything at kernel : int 0x80

- 'equ' is a symbol used to attribution

- have four commands in assembly:
    - 'ax' is a accumulator for numerical operations
    - 'bx' is a base record accumulator 
    - 'cx' is a string operations account registration 
    - 'dx' is a data record
    and use in this commands the 'e' or in systems of 64 bits is possible use 'r' too
    - eax ebx ecx edx or in 64x rax rbx rcx rdx