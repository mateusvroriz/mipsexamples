.data
	message: .asciiz " number 1 is greater than number 2"

.text
	main:
		addi $s0, $zero, 10
		addi $s1, $zero, 14
		
		#this compares to see if n1 is bigger than n2
		bgt $s0, $s1, displayHi 
		#blt #contrary of the above
		#bgtz branch when greater than 0
		
	#end of main
	li $v0, 10
	syscall
		
	
	displayHi:
		li $v0, 4 #for is code for displaying text
		la $a0, message
		syscall