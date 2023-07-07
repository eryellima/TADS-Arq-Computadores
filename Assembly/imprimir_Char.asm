.data
	# Caractere a ser impressado
	caractere: .byte 'A'
.text
	# Imprimir char ou string
	li $v0, 4
	la $a0, caractere
	syscall
	
	# Encerrar o programa
	li $v0, 10
	syscall