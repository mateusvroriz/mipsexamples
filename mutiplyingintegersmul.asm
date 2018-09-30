.data
	
.text
	addi $s0, $zero, 10 #add 10 plus zero in the register s0
	addi $s1, $zero, 4
	
	#this can only multiply 16 bits numbers so it's limited
	mul $t0, $s0, $s1 #multiply s0 and s1 and put it in t0 
	
	#display the product
	li $v0, 1 #load imidiate an integer
	add $a0, $zero, $t0 #putting the result into a0
	syscall