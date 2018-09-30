.data #this is in a random acess memory
	number1: .word 456
	number2: .word -229
	number3: .word 325
	number4: .word  -552
.text
	lw $t0, number1($zero)
	lw $t1, number2($zero)
	lw $t3, number3($zero)
	lw $t4, number4($zero)
	
	add $t2, $t0, $t1 #t2 gets the value of t0 plus t1	
	add $t5, $t3, $t4
	add $t6, $t2, $t5
	
	li $v0, 1
	add $a0, $zero, $t6
	syscall