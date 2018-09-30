.data
	PI: .float 3.14
.text
	li $v0, 2 #for float is 2
	lwc1 $f12,  PI #load word from coprocessor 1
	syscall