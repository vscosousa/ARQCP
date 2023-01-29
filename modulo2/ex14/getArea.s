.section .data

	.global length1
	.global length2
	.global height
	
	length1:
		.int 10							#declarar a variável length1

	length2:
		.int 4							#declarar a variável length2

	height:
		.int 3							#declarar a variável height
	
.section .text
	
.global getArea
getArea:
	
	movl length1(%rip), %eax			#armazenar length1 em eax
	movl length2(%rip), %ecx			#armazenar length2 em ecx
	movl height(%rip), %edx				#armazenar height em edx
	movl $2, %esi						#armazenar o valor 2 em esi
	
	addl %ecx, %eax						#area = length1 + length2
	imull %edx							#area = (length1 + length2)*height
	idivl %esi							#area = (length1 + length2)*height/2
	
	ret									#return
