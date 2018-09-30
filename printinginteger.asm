.data
	age: .word 22 #this is 32 bits, or 4 bytes a word or integer
.text
	li $v0, 1 #1 is printing an integer 
	lw $a0, age #argument register
	syscall