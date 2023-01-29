.section .bss

	.global ptr1
	.global ptr2
	
	.comm ptr1, 8
	.comm ptr2, 8

.section .text
.global str_copy_porto2

str_copy_porto2:

	movq ptr1(%rip), %rdi		#mover ptr1 para rdi
	movq ptr2(%rip), %rsi		#mover ptr2 para rsi
	
string_loop:
    
    movb (%rdi), %cl			#mover byte de rdi para cl
    cmpb $0, %cl				#comparar 0 com cl para saber se a string já acabou
    je end						#se 0 = cl saltar para end
    cmpb $111, %cl				#comparar cl com 111()					(o)
    je switchMin				#se cl = 111() saltar para switchMin	(o)
    cmpb $79, %cl				#comparar cl com 79()					(O)
    je switchMaiu				#se cl = 79 saltar para switchMaiu		(O)
    movb %cl, (%rsi)			#mover cl para rsi
    incq %rdi					#incrementar rdi
    incq %rsi					#incrementar rsi
    jmp string_loop				#saltar pars string_loop
    
switchMin:

	addb $6, %cl				#adicionar 6 ao valor de cl de forma a transformar x em y (u) 
	movb %cl, (%rsi)			#mover o valor modificado para rsi
	incq %rdi					#incrementar rdi
    incq %rsi					#incrementar rsi
    jmp string_loop				#saltar para string_loop

switchMaiu:

	addb $6, %cl				#adicionar 6 ao valor de cl de forma a transformar x em y (U) 
	movb %cl, (%rsi)			#mover o valor modificado para rsi
	incq %rdi					#incrementar rdi
    incq %rsi					#incrementar rsi
    jmp string_loop				#saltar para string_loop
    
end: 
	movb $0, (%rsi)				#mover 0 para rsi de forma a finalizar a string
	ret							#return
