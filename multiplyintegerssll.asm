.data #random acess memory

.text
	addi $s0, $zero, 4 #add 4 to zero and move to s0
	
	#this takes the first value and multiplys it by the second number^2
	sll $t0,  $s0, 2 #this multiplys 4 for by 4 because it multiplys 2 to the i or 2^i
	
	#print it out 
	li $v0, 1 #load imediattely a integer
	add $a0, $zero, $t0
	syscall