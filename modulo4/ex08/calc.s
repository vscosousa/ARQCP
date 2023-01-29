.section .data


.section .text
.global calc

calc:

	sall %edi
	subl (%rsi), %edi
	subl $4, %edx
	imull %edx, %edi
	movl %edi, %eax
	
	ret
	
	
	
	


