.data#random acess memory

.text #registers are faster

	addi $t0, $zero, 3000 #moving 3000 to t0
	addi $t1, $zero, 10
	
	mult $t0, $t1 #multiply t0 and t1, they can be 32 bits
	
	mflo $s0  #move the result from low to s0 can be low because the numbers are not too big
	
	#Display the product to the screen
	li $v0,1 #load imediatelly an integer
	add $a0,$zero,$s0 #moving the value from s0 to a0 through addition
	syscall
	
	