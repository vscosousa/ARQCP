.section .bss
	
	.global num
	.global ptrvec
	.comm ptrvec, 8
	
.section .text
.global vec_sum

vec_sum:

	movb num(%rip), %cl			#mover num para cl
	movq ptrvec(%rip), %rsi		#mover ptrvec para rsi
	movq $0, %rax				#inicializar rax
	
string_loop:
    
	cmpb $0, %cl				#comparar 0 com cl
    je end						#se cl = 0 salta para end
    addq (%rsi), %rax			#adicionar valor de rsi para rax
    addq $8, %rsi				#mover rsi para a proxima posição
    loop string_loop			#loop string_loop
    
end:

	ret							#return
