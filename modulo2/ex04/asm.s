.section .data
	.global op1
	.global op2
	.global op3
	.global op4
	
op3:
	.long 1					#declarar variável op3

op4:
	.long 1					#declarar variável op3

.section .text

.global sum_v3
sum_v3:

	movq op1(%rip), %rcx	#armazenar op1 em rcx
	movq op2(%rip), %rdx	#armazenar op2 em rdx
	movq op3(%rip), %rsi	#armazenar op3 em rsi
	movq op4(%rip), %rax	#armazenar op4 em rax
	addq %rsi, %rax			#op4 + op3
	addq %rdx, %rdx			#op2 + op2
	addq %rcx, %rcx			#op1 + op1
	subq %rdx, %rax			#op4 + op3 - op2 - op2
	addq %rcx, %rax			#op4 + op3 - op2 - op2 + op1 + op1

	ret						#return
