.data
	msg: .asciiz "Forneça um número decimal: "
	zero: .float 0.0

.text
	# Imprimir msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Ler dados
	li $v0, 6
	syscall #valor estará em f0
	
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	
	# Imprimir o número
	li $v0, 2
	syscall