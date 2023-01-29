.section .data

.section .text
.global reset_bit
.global reset_2bits

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
	
reset_2bits:
	
	call reset_bit
	movl $31, %r8d
	subl %esi, %r8d
	movl %r8d, %esi
	call reset_bit
	
	ret
