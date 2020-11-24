#	int a = 100;
#	int b = 55;
#	while (a >= b)
#		a = a - 1
#		b = b + 1


.text 
	addi $t0, $zero, 100 	#$t0 = a
	addi $t1, $zero,  55 	#$t1 = b

while:  sge $t2, $t0, $t1 #sge check (a >= b)
	beq $t2, $zero, whileOut
	addi $t0, $t0, -1
	addi $t1, $t1, 1
	
whileOut: