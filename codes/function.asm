

# int soma (int a, int b)
#	return a+b;

# an  function can have 4 paramters

#int main(){
#	int c = 3;
#	int d = 4;
# 	soma(c,d);
#	int e = 5;
#}

.text
addi $a0, $zero, 3  #c
addi $a1, $zero, 4  #d

jal soma #jump and link
addi $t0, $zero, 5
j return0

soma:
	addi $v0, $a0, $a1
	jr $ra

return0:
	addi $v0, $zero, 10
	syscall