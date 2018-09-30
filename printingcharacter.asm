.data
	myCharacter: .byte 'm'

.text
	li $v0, 4 #load immediatly
	la $a0, myCharacter #load adress
	syscall