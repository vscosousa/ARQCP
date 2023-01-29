.section .data

.global C
.global A
.global D
.global B

.section .text

.global sum_and_subtract

sum_and_subtract:

	movl A(%rip), %eax			#armazenar A em eax
	movslq %eax, %rax			#extender o tamanho de A para 64-bits
	
	movw B(%rip), %cx			#armazenar B em eax
	movswq %cx, %rcx			#extender o tamanho de B para 64-bits
	
	movb C(%rip), %dl			#armazenar C em eax
	movsbq %dl, %rdx			#extender o tamanho de D para 64-bits
	
	movb D(%rip), %sil			#armazenar D em eax
	movsbq %sil, %rsi			#extender o tamanho de D para 64-bits

	addq %rdx, %rax				#C + A
	subq %rsi, %rax				#C + A - D
	addq %rcx, %rax				#C + A - D + B
	
	ret							#return
