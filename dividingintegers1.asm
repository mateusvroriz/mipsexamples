.data

.text
	addi $t0, $zero, 20
	addi $t1, $zero, 5
	
	div $s0, $t0, $t1
	
	#print
	li $v0, 1 #print an integer
	add $a0, $zero, $s0
	syscall
	