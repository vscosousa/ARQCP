.section .data


.section .text
.global greatest

greatest:

	movl %edi, %eax
	
	cmpl %esi, %eax
	jl maior
	jmp seguinte

maior:
		
	movl %esi, %eax
	
seguinte:
	
	cmpl %edx, %eax
	jl maior2
	jmp seguinte2
	
maior2:
	
	movl %edx, %eax
	
seguinte2:
	
	cmpl %ecx, %eax
	jl maior3
	jmp end
	
maior3:
	
	movl %ecx, %eax
	
end:
	ret								#return
