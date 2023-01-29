.section .bss

	.global ptr1
	.comm ptr1, 8

.section .text

.global seven_count
seven_count:
    
    movq ptr1(%rip), %rdi		# mover o valor de ptr1 para rdi
    movl $0, %eax				#inicializar o contador
    
string_loop:
    
    movb (%rdi), %cl			#mover o byte de rdi para cl
    cmpb $0, %cl				#comparar 0 com cl para saber se a string já acabou
    je end						#se cl = 0 salta para end
    cmpb $55, %cl				#comparar 55() com o valor de cl
    je counter					#se cl = 55() salta para counter
    incq %rdi					#incrementar rdi
    jmp string_loop				#saltar para string_loop
    
counter:
    incl %eax					#incrementar eax
    incq %rdi					#incrementar rdi
    jmp string_loop
    
end:
    ret							#return
