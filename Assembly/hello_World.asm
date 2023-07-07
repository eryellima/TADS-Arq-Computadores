# Área para dados na memória principal
.data
	# Mensagem a ser exibida para o usuário
	msg: .asciiz "Olá, mundo!"
	
# Área para instruções do programa	
.text
	# Instrução para impressao de string
	li $v0, 4
	# Indicar o endereço em que está a mensagem
	la $a0, msg
	# Imprima
	syscall