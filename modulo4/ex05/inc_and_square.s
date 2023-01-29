.section .data


.section .text
.global inc_and_square

inc_and_square:

	incl (%rdi)
	imull %esi, %esi
	movl %esi, %eax
	
ret
	
	
	
	


