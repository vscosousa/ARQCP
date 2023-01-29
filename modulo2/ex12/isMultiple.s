.section .data

.global A
.global B

.section .text

.global isMultiple
isMultiple:

	movq $0, %rdx				#armazenar zero em edx de maneira não inteferir com o resultado final
	movq A(%rip), %rax			#armazenar A em rax
	movq B(%rip), %rcx			#armazenar B em rcx

	idivq %rcx					#A / B
	
	cmpq $0, %rdx				#comparar o resto da divisão (%dx) com 0
	je true						#saltar para true caso se verifique o resultado da comparação anterior é igual a zero
	movq $0, %rax				#armazenar o valor zero em rax caso não se verifique a condição anterior
	jmp end						#saltar para end de maneira a dar return do resultado
	
true:
	movq $1, %rax				#armazenar o valor um em rax
	
end:
	ret
