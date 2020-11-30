#int A[] = {0,4,8,12,16,20,24,28,32,36,40,44,48,52,56,60};
#int h = 10;
#A[12] = h + A[8]

.data
	h: .word 15
	list: .word 0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
	
.text 
	la $t3, list # save the endress of list[0] in $t3
	lw $t5, list+32($zero)  # here you access A [0] and to access another position of the vector use this syntax lw $t0, A+4($zero)
	lw $t6 , h
	add $t4, $t5,$t6  #t4 = t5+ t6
	
	
	sw $t4, list+48($zero) # list[12] = 47
	
	
	addi $v0, $zero, 10  
	syscall