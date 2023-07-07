.data
	espaco: .byte ' '
	
.text
	# Ler dados
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	move $t1, $zero
	
	laco:
		bgt $t1, $t0, saida
		
		li $v0, 1
		move $a0, $t1
		syscall
		
		li $v0, 4
		la $a0, espaco
		syscall
		
		addi $t1, $t1, 1
		j laco
		
	saida:
		
