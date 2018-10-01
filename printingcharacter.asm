.data
	myCharacter: .byte 'm'

.text
	li $v0, 4 #load immediatly 4 is the code for character
	la $a0, myCharacter #load adress
	syscall
