.section .data
	
	.global num
	.global ptrvec
	
.section .text
.global count_max

count_max:
	
	movq ptrvec(%rip), %rsi				#mover ptrvec para rsi
	movl num(%rip), %ecx				#mover num para ecx
	movl $0, %eax						#limpar o registo eax
	cmpl $0, %ecx						#verificar se o array está vazio
	je end								#se num==0 salta para end
loop:
	movl (%rsi), %edi					#mover o valor de rsi para edi, passado o valor de 8 bytes para 4 bytes
	movl 4(%rsi), %edx					#mover o valor que se segue ao anterior no array para edx
	movl 8(%rsi), %r8d					#mover o valor que se segue ao anterior no array para edx
	cmpl %edi, %edx						#comparar edi com edx
	jg first_cond						#se edx>edi salta para first_cond
	
make_loop:

	addq $4, %rsi						#incrementa rsi
	loop loop							#decrementar ecx e saltar para loop
	jmp end								#saltar para end quando ecx==0
	
first_cond:

	cmpl %edx, %r8d						#comparar edx com r8d
	jl second_cond						#se r8d<edx salta para second_cond
	jmp make_loop						#salta para o make_loop
	
second_cond:
	
	incl %eax							#incrementa eax
	jmp make_loop						#salta para o make_loop
	
end:
	ret									#return
