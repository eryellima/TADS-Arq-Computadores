.data
	maior: .asciiz "O número é maior."
	menor: .asciiz "O número é menor."
	igual: .asciiz "O número é igual a zero."

.text
	# Ler dados
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, imprimiIgual # condição caso seja igual
	bgt $t0, $zero, imprimiMaior # condição caso seja maior
	blt $t0, $zero, imprimiMenor # condição caso seja menor
	
	imprimiIgual:
		li $v0, 4
		la $a0 , igual
		syscall	
		
		li $v0,10 #encerrar o programa
		syscall

	imprimiMaior:
		li $v0, 4
		la $a0 , maior
		syscall
		
		li $v0,10 #encerrar o programa
		syscall
		
	imprimiMenor:
		li $v0, 4
		la $a0 , menor
		syscall