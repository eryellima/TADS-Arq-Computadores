.text
	li $t0, 32
	li $t1, 5
	
	srl $s2, $t0, 2
	
 	div $t0, $t1
 	# Parte inteira em s0
 	mflo $s0
 	# Resto em s1
 	mfhi $s1