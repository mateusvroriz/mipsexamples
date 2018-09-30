.data
	message:  .asciiz "Enter a value"
	zeroAsFloat: .float 0.0
.text
	lwc1 $f4, zeroAsFloat #getting the zero from random acess memory
	
	#Display Message
	li $v0, 4 #load to display text
	la $a0, message
	syscall
	
	#read users input
	li $v0, 6 #6 is the code to read a float
	syscall
	
	#Display value
	li $v0, 2#code to display a float
	add.s $f12, $f0, $f4 #adding zero to the value the user is gonna enter
	syscall