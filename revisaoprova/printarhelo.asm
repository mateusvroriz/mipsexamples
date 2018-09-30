.data
	message:  .asciiz "eae meu bom"
.text
	li $v0, 4 #we want to load something
	la $a0, message
	syscall