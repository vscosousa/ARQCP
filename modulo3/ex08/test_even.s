.section .bss
	
	.global even
	.global num
	.global ptrvec
	.comm ptrvec, 8
	
.section .text
.global test_even
.global vec_sum_even

test_even:

	movq $0, %rdx				#mover 0 para rdx
	movq even(%rip), %rax		#mover even para rax
	movq $2, %rcx				#mover 2 para rcx
	cqo
	idivq %rcx					#rax:rcx
	
	cmpq $0, %rdx				#comparar 0 com rdx
	je even1					#se rdx = 0 saltar para even1
	movq $0, %rax				#mover 0 para rax
	jmp end						#saltar para end
	
even1:
	movq $1, %rax				#mover 1 para rax
	
end:
	ret							#return

vec_sum_even:

	movl num(%rip), %ecx		#mover num para ecx
	movq ptrvec(%rip), %rsi		#ptrvec para rsi	
	movq $0, %r8				#mover 0 para r8

loop:
	cmpl $0, %ecx				#comparar 0 com ecx
	je end1						#se ecx = 0 saltar para end1
	
	movq (%rsi), %rdi			#mover valor de rsi para rdi	
	movq %rdi, even(%rip)		#mover rdi para even

	pushq %rcx					#guardar rcx na stack
	pushq %rsi					#guardar rsi na stack
	call test_even				#chamar test_even
	popq %rsi					#remover rsi da stack
	popq %rcx					#remover rcx da stack
	
	cmpq $1, %rax				#comparar 1 com rax
	je add_even					#se rax = 1 saltar para add_even
	addq $8, %rsi				#mover rsi para a proxima posição
	loop loop					#loop
	jmp end1					#saltar para end1
	
add_even:
	
	addq (%rsi), %r8			#adicionar o valor de rsi para r8	
	addq $8, %rsi				#mover rsi para a proxima posição
	loop loop					#loop
	
end1: 
	movq %r8, %rax				#mover r8 para rax
	ret							#return
