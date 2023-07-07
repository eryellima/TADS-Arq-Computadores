.data
	msg: .asciiz "Forneça um número decimal: "
	zero: .double 0.0

.text
	# Imprimir msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Ler dados
	li $v0, 7
	syscall #valor estará em f0
	
	# Sò pode usar double em  Reg pares
	ldc1 $f2, zero
	add.d $f12, $f2, $f0
	
	# Imprimir o número
	li $v0, 3
	syscall
