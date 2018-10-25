# FAC: TRABALHO 02
	.text
main:
	li $v0, 5	# load appropriate system call code into register $v0;
			# code for reading integer is 5
	syscall		# call operating system to perform operation
	move $a0, $v0	# O PRIMEIRO VALOR LIDO DO TECLADO ESTA DISPONIVEL EM $A0
	li $v0, 5	# load appropriate system call code into register $v0;
			# code for reading integer is 5
	syscall		# call operating system to perform operation
	move $a1, $v0	# O SEGUNDO VALOR LIDO DO TECLADO ESTA DISPONIVEL EM $A1
      
# =================== IMPLEMENTE AQUI SUA SOLUCAO: INICIO
	addi $s3, $zero, 2
	blt $a0, $s3,mensageerro #fazendo comparação de valor valido
	blt $a1, $s3,mensageerro #fazendo comparação de valor valido
	
	bge $a0, $s3, trabalho2
	bge $a1, $s3, trabalho2
	
	mensageerro:
		li $v0, 4 #for is code for displaying text
		la $a0, message
		syscall	
		li   $v0, 10          # system call for exit
     		syscall               # we are out of here.
     		
     	trabalho2: #label para o corpo do programa	
	
	move $t0, $a0 #Guardando o primeiro digito em t0
	move $t1, $a1 #Guardando o segundo digito em t1
	
	mdc:
	rem $a2, $a0, $a1 #Jogando em a2 o resto do primeiro digito com o segundo
	beq $a2, $zero, mmc #Caso o resto seja 0 vai pra função final
	
	move $a0,$a1 #a = b;
	move $a1 ,$a2 # b = resto 
	j mdc #Volta para o loop
	
	
	mmc:
	move $t2, $a1 #Guardando em t2 0 MDC encontrado
	mul $t3, $t0, $t1 #Guardando em t3 a multiplicação do primeiro digito com o segundo
	div $t4, $t3, $t2 #Guardando em t4(mmc) a divisão entre t3(a*b) e t2(mdc)
					
	
		
# =================== IMPLEMENTE AQUI SUA SOLUCAO: FIM      

      jal  print            # call print routine. 
      li   $v0, 10          # system call for exit
      syscall               # we are out of here.
		
#########  routine to print messages
      .data
space:		.asciiz  " "          # space
new_line:	.asciiz  "\n"         # newline
string_MDC:	.asciiz  "MDC: "
string_MMC:	.asciiz  "\nMMC: "
message: 	.asciiz "Entrada invalida."

      .text
print:	la   $a0, string_MDC  
      	li   $v0, 4		# specify Print String service
      	syscall               	# print heading
      	move   $a0, $t2      	# 
	li   $v0, 1           	# specify Print Integer service
      	syscall               	# print $t0
	la   $a0, string_MMC   	# load address of print heading
      	li   $v0, 4           	# specify Print String service
      	syscall               	# print heading
      	move   $a0, $t4      	# 
	li   $v0, 1           	# specify Print Integer service
      	syscall               	# print $t1
	jr   $ra              	# return