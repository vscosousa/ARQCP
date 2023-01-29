.section .data

	.global current
	.global desired
	
.section .text

.global needed_time
needed_time:

	movb current(%rip), %al			#armazenar current em al
	movb desired(%rip), %cl			#armazenar desired em cl
	
	movsbl %al, %eax				#aumenta o tamanho de current para 32-bits
    movsbl %cl, %ecx				#aumenta o tamanho de desired para 32-bits
    
	cmpl %ecx, %eax 				#compara eax com ecx
	jg negative						#salta para negative caso current>desired
	
	subl %eax,%ecx					#diferença = desired - current
	imull $180, %ecx				#180 * diferença
	movl %ecx, %eax					#armazena o valor final em eax
	jmp end							#salta para o end de maneira a dar return ao resultado final
	
negative:
	
	subl %ecx,%eax					#diferença = current - desired
	imull $240, %eax				#240 * diferença	
	
end:
	ret								#return
