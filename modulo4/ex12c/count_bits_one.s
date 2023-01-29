.section .data

.section .text
.global count_bits_one
.global vec_count_bits_one

count_bits_one:
	
	movl $1, %ecx
	movl $0, %eax
	
	loop:
		
		cmpl $32, %ecx
		jg end
		shrl $1, %edi
		jnc next
		incl %eax
		
	next:
	
		incl %ecx
		jmp loop
		
end:
	ret
	
	
vec_count_bits_one:
	
	movl $0, %eax
	movl $0, %r8d
	movl %esi, %ecx
	cmpl $0, %ecx
	je end1
	
	loop1:
		
		movw (%rdi), %dx
		pushq %rdi
		movzwl %dx, %edi
		pushq %rcx
		call count_bits_one
		addl %eax, %r8d
		popq %rcx
		popq %rdi
		addq $2, %rdi
		loop loop1
	
end1:
	movl %r8d, %eax
	ret
