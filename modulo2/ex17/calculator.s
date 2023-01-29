.section .data
	.global op1
	.global op2
	
.section .text

.global sum, subt, mult, divi, mod, power2, power3

sum:
	movl op1(%rip), %eax		#armazenar op1 em eax
	movl op2(%rip), %ecx		#armazenar op2 em ecx
	
	addl %ecx, %eax				#op1 + op2
	
	ret							#return

subt:
	movl op1(%rip), %eax		#armazenar op1 em eax
	movl op2(%rip), %ecx		#armazenar op2 em ecx
	
	subl %ecx, %eax				#op1 - op2
	
	ret							#return
	
mult:
	movl op1(%rip), %eax		#armazenar op1 em eax
	movl op2(%rip), %ecx		#armazenar op2 em ecx
	
	imull %ecx, %eax			#op1 x op2
	
	ret							#return

divi:
	movl $0, %edx				#armazenar o valor 0 em edx de maneira a não interferir com o resultado final
	movl op1(%rip), %eax		#armazenar op1 em eax
	movl op2(%rip), %ecx		#armazenar op2 em ecx
	
	idivl %ecx					#op1 / op2
	
	ret
	
mod:
	movl op1(%rip), %eax		#armazenar op1 em eax
	
	cmpl $0, %eax				#comparar eax com 0
	jl negative					#se eax < 0
	jmp end						#salta para o fim caso o número não seja negativo e dá return do resultado do modulo de um número positivo
	negative:					
		not %eax				#inverte o sinal do número
		incl %eax				#incrementa o número, pois a inversão do sinal dá op1-1
	end:
		ret						#return
	
power2:
	movl op1(%rip), %eax		#armazenar op1 em eax
	
	imull %eax, %eax			#op1²
	
	ret
	
power3:
	movl op1(%rip), %eax		#armazenar op1 em eax
	movl %eax, %ecx				#armazenar eax em ecx para poder fazer op1³
	
	imull %eax, %eax			#op1²
	imull %ecx, %eax			#op1³
	
	ret							#return
