.section .data


.section .text
.global incr
.global call_incr

call_incr:
	
	# di = w
	
	pushq %rbp
	movq %rsp, %rbp
	subq $2, %rsp			# create space for a local variable
	
	addw $3, %di			# w + 3
	movw %di,-2(%rbp)		# move x1 to a local variable
	
	leaq -2(%rbp),%rdi		# &x1 -> 1 argument
	movb $0xC3, %sil		# 0xC3 -> 2 argument
	
	call incr
	
	addl -2(%rbp),%eax
	
	movq %rbp, %rsp
	popq %rbp
	
	ret

incr:
	
	movl (%rdi), %eax
	movsbl %sil, %esi
	addl %esi, (%rdi)

	ret
	
	
	
	


