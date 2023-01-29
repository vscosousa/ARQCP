.section .data

.section .text
.global reset_bit

reset_bit:
	
	movl $0, %eax
	movl %esi, %ecx
	movl (%rdi), %edx
	rorl %ecx, (%rdi)
	andl $-2, (%rdi)
	roll %ecx, (%rdi)
	cmpl %edx, (%rdi)
	jne not_equal
	jmp end
	
not_equal: 
	
	incl %eax

end:
	ret
