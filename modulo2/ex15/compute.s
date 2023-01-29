.section .data

.global A
.global B
.global C
.global D

.section .text

.global compute
compute:

	movq $0, %rdx					#armazenar o valor 0 em rdx de maneira a não interferir com o resultado final
	movq A(%rip), %rax				#armazenar A em rax
	movq B(%rip), %rcx				#armazenar B em rcx
	movq C(%rip), %rsi				#armazenar C em rsi
	movq D(%rip), %rdi				#armazenar D em rdi

end:
	imulq %rcx, %rax				#A*B
	subq %rsi, %rax					#(A*B) - C
	idivq %rdi						#((A*B) - C) / D
	
	ret								#return
