.text
	li $t0, 12
	addi $t1, $zero, 10
	
	# Multiplicar por 2^10 = 1024
	sll $s1, $t1, 10
	
	li $v0, 1
	move $a0, $s0
	syscall