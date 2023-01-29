.section .bss

	.global ptr1
	.comm ptr1, 8
	
.section .text

.global encrypt

encrypt:

	movq $0, %rax				#mover 0 para rax
	movq ptr1(%rip), %rdi		#mover ptr1 para rdi	
	
string_loop:

	movb (%rdi), %cl			#mover byte de rdi para cl
	cmpb $0, %cl				#comparar cl com 0 para saber se a string ja acabou
	je end						#se cl = 0 saltar para end
	cmpb $'a', %cl				#comparar "a" com cl
	je noChange					#se cl = a jaltar para noChange
	cmpb $' ', %cl				#comparar cl com " "
	je noChange					#se cl = " " saltar para noChange
	addl $3, (%rdi)				#adicionar 3 ao valor de rdi
	incq %rax					#incrementar rax
	incq %rdi					#incrementar rdi
	jmp string_loop				#saltar para string_loop
	
noChange:

	incq %rdi					#incrementar rdi
	jmp string_loop				#saltar para string_loop
	
end:
	ret							#return
