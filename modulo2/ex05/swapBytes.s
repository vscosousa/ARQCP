.section .data
	.global s

.section .text

	.global swapBytes
	
	swapBytes:
	
	movw s(%rip), %ax		#armazenar s em ax
	movb %al, %dl			#mover os bits menos significativos para o registo dl
	movb %ah, %al			#mover os bits mais significativos para al(espaço dos menos significativos)
	add %al, %al			#dobrar o valor dos anteriores bits mais significativos
	movb %dl, %ah			#mover os bits menos significativos para ah(espaço dos mais significativos)

	ret						#return
		
