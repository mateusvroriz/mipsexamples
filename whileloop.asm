.data
	message: .asciiz "after while loop is done"
	space: .asciiz ", "
.text
	main:
		addi $t0, $zero,0 #making sure t0 have 0
		
		
		while:
			bgt $t0, 10, exit #if its bigger than 10 go to label exit
			
			jal printNumber #jumps to the label
			addi $t0, $t0, 1 #same as i++
		
			j while #jump uncoditionaly to a adress
		
		exit:
			li $v0,4 
			la $a0, message
			syscall
			
			#end of program
			li $v0,10
			syscall
		
	printNumber:
		#print the number
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		
		li $v0, 4
		la $a0, space
		syscall
		
		jr $ra # call the number every iteration