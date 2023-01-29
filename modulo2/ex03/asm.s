.section .data
	.global op1
	.global op2

CONST:
	.int 20

.section .text

.global sum_v2
sum_v2:

	movl op1(%rip), %ecx		#armazenar op1 em ecx
	movl op2(%rip), %eax		#armazenar op2 em eax
	movl CONST(%rip), %edx		#armazenar CONST em edx
	subl %ecx, %edx				#CONST - op1
	subl %ecx, %edx				#CONST - op1 - op1
	addl %edx, %eax				#(CONST - op1 - op1) + op2

	ret							#return
