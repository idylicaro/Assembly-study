# int a = 100,b=55;
# if (a <10)
#	a= -15
# else
#	b = 25
#

.text
	addi $t0, $zero, 100 		# $t0 = a
	addi $t1, $zero, 55  		# $t1 = b
	slt  $t2, $t0, $t1   		# a < b
	#beq check $t2 and $zero are equal 
	beq  $t2, $zero, rotulo 	# (t2 == 0) go to rotulo, but t2 recive 1 because a < b is true 
	addi $t0, $zero, -15 		# a = -15
	j desvio 			# jump 
	rotulo: addi $t0, $zero, 25 	# else
	
	desvio: