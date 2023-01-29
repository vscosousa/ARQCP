.section .data

	.global ptr1
	.global ptr2
	.global ptr3

.section .text
.global str_cat

str_cat:
	
	movq ptr1(%rip), %rdi		#mover ptr1 para rdi
	movq ptr2(%rip), %rsi		#mover ptr2 para rsi
	movq ptr3(%rip), %rdx		#mover ptr3 para rdx	
	
ptr1_loop:
	
	movb (%rdi), %cl			#mover byte do valor de rdi para cl
    cmpb $0, %cl				#comparar 0 com cl
    je ptr2_loop				#se cl = 0 saltar para ptr2_loop
    movb %cl, (%rdx)			#mover cl para o valor de rdx
    incq %rdi					#incrementar rdi
    incq %rdx					#incrementar rdx
    jmp ptr1_loop				#saltar para ptr1_loop

ptr2_loop:
	
	movb (%rsi), %cl			#mover byte do valor de rsi para cl
    cmpb $0, %cl				#comparar 0 com cl
    je end						#se 0 = cl salta para end
    movb %cl, (%rdx)			#mover cl para o valor de rdx
    incq %rsi					#incrementar rsi
    incq %rdx					#incrementar rdx	
    jmp ptr2_loop				#saltar para ptr2_loop
    
end:
	movb $0, (%rdx)				#mover 0 para o valor de rdx
	ret							#return
