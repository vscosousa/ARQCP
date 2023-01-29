.section .data


.section .text
.global sum_n2

sum_n2:
	
	movq $0, %rax
	cmpl $0, %edi
	jle end
	movslq %edi, %rdi			#mover com extensão do sinal o valor de edi para rdi
	movq $1, %rsi
	
loop:
	movq %rsi, %rdx
	imulq %rdx, %rdx
	addq %rdx, %rax
	incq %rsi
	cmp %rsi, %rdi
	jge loop
	
end:
ret								#return
