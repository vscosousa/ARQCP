.section .data

	.global i
	.global n
	.global A
	.global B
	
A:
	.int 10

B:
	.int 5

.global .text


.global operation
operation:

	movl $0, %edx				#armazenar o valor 0 em edx de maneira a não interferir com o resultado final
	movl i(%rip), %esi			#armazenar i em esi
	movl n(%rip), %ecx			#armazenar n em ecx
	movl A(%rip), %eax			#armazenar A em eax
	movl B(%rip), %edi			#armazenar B em edi
	
loop:

	imul %esi, %esi				#i²
	imul %eax, %eax				#A²
	imul %esi, %eax				#i² * A²
	idivl %edi					#i² * A²/B
	incl %esi					#incrementar 
	
	cmpl %esi, %ecx				#comparar ecx com esi
	jg loop						#reinicia as operações caso i<=n

ret
