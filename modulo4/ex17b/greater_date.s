.section .data

.section .text
.global greater_date

greater_date:
	
	pushq %rbp
	movq %rsp, %rbp
	
	pushq %rsi
	pushq %rdi
	
	rorl $8, %edi
	rorl $8, %esi
	
	cmpw %si, %di
	jg date1_greater
	jl date2_greater
	
	roll $8, %edi
	roll $8, %esi
	
	cmpb %sil, %dil
	jg date1_greater
	jl date2_greater
	
	rorl $24, %edi
	rorl $24, %esi
	
	cmpb %sil, %dil
	jg date1_greater
	jl date2_greater
	
date1_greater:

	movq -16(%rbp), %rdi
	movl %edi, %eax
	jmp end

date2_greater:

	movq -8(%rbp), %rsi
	movl %esi, %eax
	
end:
	movq %rbp, %rsp
	popq %rbp
	ret
