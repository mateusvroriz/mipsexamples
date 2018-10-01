.data
	message: .asciiz "the numbers are equal"
	message2: .asciiz "the numbers are not equal"
.text
	main:
		addi $t0, $zero, 5 #adding 5 to t0
		addi $t1, $zero, 20
		
		#this just goes to a place without condition
		#b numbersDifferent
		
		beq $t0, $t1,numbersEqual#if the values are equal go to that label
		bne $t0,$t1, numbersDifferent #if the values are not-equal go to that label
	
		#syscall to end program
		li $v0,10
		syscall
		
		

	 numbersEqual:
	 la $v0,4 
	 la $a0, message
	 syscall
	 
	#syscall to end program
	li $v0,10
	syscall
	   
	 numbersDifferent:
	 la $v0,4 
	 la $a0, message2
	 syscall
	 
	#syscall to end program
	li $v0,10
	syscall
		
		