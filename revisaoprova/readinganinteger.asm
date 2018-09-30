.data
	prompt:  .asciiz "Enter a integer: "
	
.text
	#printing the prompt message
	li $v0, 4 #bring a string or text
	la $a0, prompt 
	syscall
	
	#store the users number
	li $v0, 5 #5 is the code to get an integer and  store in v0
	syscall
	
	#store the result in t0
	move $t0, $v0
	
	#printing out the user number
	li $v0,1 
	move $a0, $t0
	syscall