.data
	# Valor interiro na memória RAM
	idade: .word 56

.text
	li $v0, 1
	lw $a0, idade
	syscall