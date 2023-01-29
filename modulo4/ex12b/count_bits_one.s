.section .data

.section .text
.global count_bits_one

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
