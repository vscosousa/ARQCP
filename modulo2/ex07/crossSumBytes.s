.section .data

	.global s1, s2

.section .text

.global crossSumBytes
	
crossSumBytes:

movw s1(%rip), %ax			#armazenar s1 em ax
movw s2(%rip), %cx			#armazenar s2 em cx
addb %ch, %al				#sumar os bits mais significativos de s2 com os menos significativos de s1
addb %cl, %ah				#sumar os bits menos significativos de s2 com os mais significativos de s1

ret							#return
