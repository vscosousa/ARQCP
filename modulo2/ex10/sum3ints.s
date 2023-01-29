.section .data

.global op1
.global op2
.global op3

.section .text

.global sum3ints

sum3ints:

	movl op1(%rip), %eax		#armazenar op1 em eax
	movslq %eax, %rax			#aumentar o tamanho de op1 para 64-bits
	
	movl op2(%rip), %ecx		#armazenar op2 em ecx
	movslq %ecx, %rcx			#aumentar o tamanho de op2 para 64-bits
	
	movl op3(%rip), %edx		#armazenar op3 em edx
	movslq %edx, %rdx			#aumentar o tamanho de op3 para 64-bits
	
	addq %rdx, %rax				#op1 + op2
	addq %rcx, %rax				#op1 + op2 + op3
	
	ret							#return
