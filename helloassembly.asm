.data #contains the data
	myMessage: .asciiz "Hello DIO \n" #stored in a random acess memory


.text #contains the instructions

	li $v0 ,4 #li = load imediatelly
	la $a0, myMessage #la = load adress into the register
	syscall
