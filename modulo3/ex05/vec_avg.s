.section .bss
	
	.global num
	
.section .text
.global vec_avg

vec_avg:
	
	call vec_sum				#chamar a função
	movzbq num(%rip), %rcx		#mover byte de num para quad em rcx	
	cmpq $0, %rcx				#comparar rcx com 0 para saber se é possivel fazer divisão
    je zeroDivision				# se rcx = 0 salta para zeroDivision
    cqo							
    idivq %rcx					#dividir por rcx
    jmp end						#saltar para end
				
zeroDivision:

	movq $0, %rax				#mover 0 para rax

end:
	ret							#return
