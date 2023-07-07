.data
	perguta: .asciiz "Qual o seu nome?"
	saudacao: .asciiz "Olá, "
	
	# Array onde ficara os dados da leitura
	nome: .space 25

.text
	# Imprimir pergunta
	li $v0, 4
	la $a0, perguta
	syscall
	
	# Leitura de dados
	li $v0, 8
	la $a0, nome
	la $a1, 25
	syscall
	
	# Imprimir saudacao
	li $v0, 4
	la $a0, saudacao
	syscall
	
	# Imprimir nome
	li $v0, 4
	la $a0, nome
	syscall