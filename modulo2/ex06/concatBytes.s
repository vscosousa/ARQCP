.section .data

	.global byte1, byte2

.section .text

	.global concatBytes
	
	concatBytes:

	movb byte1(%rip), %al     #armazenar byte1 em al
	movb byte2(%rip), %ah	  #armazenar byte2 em ah
	

	ret						  #return de ax (junção de al com ah)
