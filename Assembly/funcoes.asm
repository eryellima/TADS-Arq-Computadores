.data
	msgUsr: .asciiz "Forneça o número positivo: "
	msgPar: .asciiz "O número é par. "
	msgImpar: .asciiz "O número é impar. "
	
.text
	la $a0, msgUsr
	jal imprimeString
	jal lerInteiro
	
	move $a0, $v0
	jal ehImpar
	beq $v0, $zero, imprimePar
	la $a0, msgImpar
	jal imprimeString
	jal encerraPrograma
	
	imprimePar:
		la $a0, msgPar
		jal imprimeString
		jal encerraPrograma
		
	ehImpar:
		# função verifica se o argumento a0 é impar
		# retornar 1 se for impar
		# retorna 0 se for par
		li $t0, 2
		div $a0, $t0
		
		mfhi $v0
		jr $ra
		
	# Encerra o programa
	encerraPrograma:
		li $v0,10
		syscall
		
	# Função recebe uma string em a0 e a imprime
	imprimeString:
		li $v0, 4
		syscall
		jr $ra
		
	lerInteiro:
		li $v0, 5
		syscall
		jr $ra	