.section .data


.section .text
.global cube

cube:
	
	movslq %edi, %rdi			#mover com extensão do sinal o valor de edi para rdi
	movq %rdi, %rax				#mover o valor de rdi para rax
	
	imulq %rdi					#multiplicar rdi com rax e armazenar o valor em rax (2*x)
	imulq %rdi					#multiplicar rdi com rax e armazenar o valor em rax (3*x)
	
ret								#return
