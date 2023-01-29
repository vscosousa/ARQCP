.section .data

	.global num
	.global ptrvec
	
.section .text
.global vec_greater10
vec_greater10:


	movq ptrvec(%rip), %rdi			#armazenar ptrvec em rdi
	movl num(%rip), %ecx			#armazenar num em ecx
	movl $0, %eax					#limpar o registo eax
	
	
loop:								
	cmpl $0, %ecx					#comparar ecx com 0
	je end							#se ecx==0 salta para end
	movl (%rdi), %edx				#mover o valor de rdi para edx, passando este de 8 bytes para 4 bytes
	cmpl $10, %edx					#comparar edx com 10
	jg counter						#se edx>10 salta para counter
	addq $4, %rdi					#incrementar rdi
	loop loop						#decrementar ecx e saltar para loop
	jmp end							#saltar para end quando ecx==0
	
counter:

	incl %eax						#incrementar eax
	addq $4, %rdi					#incrementar rdi
	loop loop						#decrementar ecx e saltar para loop
	
end:
	ret								#return
