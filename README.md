# Assembly-study

## "If knowing C is to leave the Matrix, knowing Assembly is knowing how the Matrix is made. - programacaoprogressiva "

in linux
command to compile with nasm: ```nasm -f elf64 hello.asm```

creating executable: ```ld -s -o hello hello.o```
 

- this send anything at kernel : int 0x80

- 'equ' is a symbol used to attribution

- have four commands in assembly:
    - 'ax' is a accumulator for numerical operations
    - 'bx' is a base record accumulator 
    - 'cx' is a string operations account registration 
    - 'dx' is a data record
    and use in this commands the 'e' or in systems of 64 bits is possible use 'r' too
    - eax ebx ecx edx or in 64x rax rbx rcx rdx

- using instructions of transfer of data (MOV destiny, font)
    |    Operation       | exemple      |
    |recorder , recorder | mov Bx,  Cx  |
    |memory , accumulator| mov var, Al  |
    |accumulator , memory| mov Ax,  var |
    |memory, recorder    | mov var, Si  |
    |recorder, memory    | mov Si,  var |
    |recorder, immediate | mov var, 12  |
    |reg_seg, reg16      | mov Ds,  Ax  |
    |reg16, reg_seg      | mov Ax,  Ds  |
    |memory, reg_seg     | mov var, Ds  |

---
### Labels
- labels in assembly works like functions in others languages
exemple:

    ``` 
    label: 
        ; code ...
        ; code ...        
    ```
exemple2: 

    ``` 
    increment:
        inc numberVar
    ```


- now i can increment the numberVar just only calling this label
- exist two types of labels, the local labels and default labels.

defaultLabel: (not have dot)
.localLabel:(have dot)

exemple:

    ``` 
    code1:
    ;... code ...
    .increment:
        inc var1
    ;... code ...

    code2:
    ;... code ...
    .increment:
        inc var2
    ;... code ...

    ```

- i have two labels that using equal names, but this labels are locals label.

---

### Memory and Define

- 1 byte <=> 8 bits

DB  = Define Byte          -> allocates 1 byte

DW = Define Word           -> allocates 2 bytes

DD  = Define Doubleword    -> allocates 4 bytes

DQ  = Define Quadword      -> allocates  8 bytes

DT  = Define Ten           -> allocates 10 bytes

- sintax of an instruction in assembly for allocates memory: ``` name_of_variable instruction_of_define```
exemple:
    ``` varword1 DB 'A' ```

- a byte can represent 2 ^ 8 = 256 characters, in hexadecimal, we can represent these 256 characters using the numbers 00H through FFH

- Reserve memory:
RESB  = Reserve Byte           -> Reserve 1 byte

RESW  = Reserve Word           -> Reserve 2 bytes

RESD  = Reserve Doubleword     -> Reserve 4 bytes

RESQ  = Reserve Quadword       -> Reserve 8 bytes

REST  = Reserve Ten            -> Reserve 10 bytes

- sintax to allocates memory: ``` name_of_variable directive_res_units_unit ```
exemple:
    ``` var1 RESB 1 ; 1 byte ```
    ``` var2 RESB 2 ; 2 byte ```
    ``` var3 RESW 3 ; 3*2= 6 byte ```
