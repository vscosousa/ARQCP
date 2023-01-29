.section .data

	.global num

.section .text

.global check_num
check_num:

	movl $0, %edx				#armazenar o valor 0 em edx de maneira a não interferir com o resultado final
	movl num(%rip), %eax		#armazenar num em eax
	movl %eax, %esi				#mover o valor de num para esi de maneira a poder usar em fases mais avançadas do código
	movl $2, %ecx				#armazenar o valor 2 em ecx
	
	idivl %ecx					#num / 2

	cmpl $0, %edx				#compara edx com 0
	je even						#salta para even caso o resto(edx) seja igual a zero, ou seja, par
	cmpl $0, %esi				#compara esi com 0
	js negative_odd				#salta para negative_odd caso o número seja negativo e par
	movl $7, %eax				#armazena o valor 7 em eax
	jmp end						#salta para o end de maneira a dar return ao resultado final
	
even:
	
	cmpl $0, %esi				#compara esi com 0
	js negative_even			#salta para negative_odd caso o número seja negativo e ímpar
	movl $6, %eax				#armazena o valor 6 em eax
	jmp end						#salta para o end de maneira a dar return ao resultado final
	
negative_even:
	
	movl $4, %eax				#armazena o valor 4 em eax			
	jmp end						#salta para o end de maneira a dar return ao resultado final
	
negative_odd:
	
	movl $5, %eax				#armazena o valor 5 em eax
	
end:
	ret							#return
