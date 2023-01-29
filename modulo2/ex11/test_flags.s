.section .data

.global op1
.global op2

.section .text

.global test_flags
test_flags:

	movl op1(%rip), %edx			#armazenar op1 em edx
	movl op2(%rip), %esi			#armazenar op2 em esi
	
	addl %edx, %esi					#op1 + op2

	jc carry_detetado				#verificar se a carry flag foi ativada
	movq $0, %rax					#armazenar o valor zero em rax caso não ative a carry flag
	jmp check_overflow				#saltar para a verificação da overflow flag
	
carry_detetado:
	movq $1, %rax					#armazenar o valor um em rax
	jmp end							#saltar para o fim da função de maneira a dar retorno do resultado

check_overflow:
	jo overflow_detetado			#verificar se a overflow flag foi ativada
	movq $0, %rax					#armazenar o valor zero em rax caso não ative a overflow flag
	jmp end							#saltar para o fim da função de maneira a dar retorno do resultado
	
overflow_detetado:
	movq $1, %rax					#armazenar o valor um em rax

end:
	ret								#return
