.section .data


.section .text
.global sum_smaller

sum_smaller:
	
	movl %edi, (%rdx)
	cmpl %esi, (%rdx)
	jl sum
	movl %esi, (%rdx)
	
sum:
	
	addl %edi, %esi
	movl %esi, %eax
	
ret
	
	
	
	


