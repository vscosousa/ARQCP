.section .bss
	
	.global num
	.global ptrvec
	.comm ptrvec, 8
	
.section .text
.global vec_add_two

vec_add_two:

	movl num(%rip), %ecx		#mover num para ecx
	movq ptrvec(%rip), %rdx		#mover ptrvec para rdx
	
string_loop:
    
	cmpl $0, %ecx				#comparar 0 com ecx para saber se a string já acabou
    je end						#se o = ecx saltar para end
    addl $2, (%rdx)				#adicionar 2 ao valor de rdx
    addq $4, %rdx				#mover rdx para a proxima posição
    loop string_loop			#fazer loop
    
end:

	ret							#return
