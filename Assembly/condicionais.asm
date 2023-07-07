.data
	msg: .asciiz "Forneça o número: "
	par: .asciiz "O número é par."
	impar: .asciiz "O número é impar."

.text
	# Imprimir msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Ler dados
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0, $t0
	
	# Possui o resto da divisao por 2
	mfhi $t1
		
	beq $t1, $zero, imprimiPar

	li $v0, 4
	la $a0, impar
	syscall
	
	li $v0, 10 # Encerrar o programa para não continuar o codigo
	syscall
	
	imprimiPar:
		# Imprimir msg
		li $v0, 4
		la $a0, par
		syscall