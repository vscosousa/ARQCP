.section .data


.section .text
.global calculate


calculate:

multiplicação:

	movl %edi, %ecx
	imull %esi, %ecx
	movl %esi, %edx
	movl %edi, %esi
	movb $'*', %dil
	pushq %rcx
	pushq %rdx
	pushq %rsi
	call print_result
	popq %rsi
	popq %rdx
	
subtração:

	movl %esi, %ecx
	subl %edx, %ecx
	movl %ecx, %eax
	movb $'-', %dil
	pushq %rax
	call print_result
	popq %rax
	popq %rcx

conta_final:

	subl %ecx, %eax

ret
	
	
	
	


