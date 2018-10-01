.data
	message: .asciiz "The number is less than the other"
.text
	main:
	addi $t0, $zero, 1
	addi $t1, $zero, 200
	
	#this compares the values to see if n1 is less than the n2
	slt $s0,$t0, $t1 #if is true it's 1 registered in s0 else it's a 0
	
	bne $s0, $zero, printMessage
	
	
	#end of program
	li $v0,10
	syscall
	
	printMessage:
	li $v0, 4 #4 to print a text
	la $a0, message
	syscall	
	