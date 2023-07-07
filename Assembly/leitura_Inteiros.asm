.data
	saudacao: .asciiz "Olá. Por favor, forneça sua idade:"
	saida: .asciiz "Sua idade é "

.text
	# Impirmir saudacao
	li $v0, 4
	la $a0, saudacao
	syscall
	
	# Leitura de dados
	li $v0, 5
	syscall
	
	# Mover o valor para t0
	move $t0, $v0
	
	# Imprimir saida
	li $v0, 4
	la $a0, saida
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall