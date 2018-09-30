.data
	myDouble: .double 7.101 #64 bits
	zeroDouble: .double 0.0
.text
	ldc1 $f2, myDouble
	ldc1 $f0, zeroDouble
	
	li $v0, 3 #print a double ##always use pair registers
	add.d $f12, $f2, $f0 #adding 0 to the number in f2 
	syscall
