.data #this is in a random acess memory
	number1: .word 5
	number2: .word 2
.text
	lw $t0, number1($zero)
	lw $t1, number2($zero)
	
	add $t2, $t0, $t1 #t2 gets the value of t0 plus t1
	
	li $v0, 1 #1 is an integer
	add $a0, $zero, $t2 # add 0 to just move the value
	syscall
