.section .data
	
	.global num
	
.section .text

.global steps
steps:
	
	movq $0, %rdx				#armazenar o valor 0 em rdx de maneira a não interferir com o resultado final
	movq $3, %rcx				#armanezar o valor 3 em rcx
	movq num(%rip), %rax		#armazenar num em rax
	movq %rax, %rsi				#armazenar rax em rsi de maneira a poder usar o valor de num novamente
	
	imulq $3, %rax				#multiplicar por 3
	addq $6, %rax				#adicionar 6
	cqo							#extensão de sinal do rax
	idivq %rcx					#subtrair por 3
	addq $12, %rax				#adicionar 12
	subq %rsi, %rax				#subtrair num
	subq $1, %rax				#subtrair 1
	ret							#return
