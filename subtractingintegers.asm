.data #random acess memory
	number1: .word 20
	number2: .word 2

.text
	#loading the values
	lw $s0, number1 	#load the valors to registers s0 = 20
	lw $s1, number2		#s1 = 8
	
	sub $t0, $s0, $s1 #t0 = 20-8
	
	li $v0, 1 # 1 is code for integer
	move $a0, $t0  #moving the value to a0
	syscall
