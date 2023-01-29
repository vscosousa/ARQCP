.section .bss

	.global x
	.global num
	.global ptrvec
	.comm ptrvec, 8
	
.section .text
.global vec_search

vec_search:

	movl num(%rip), %ecx			#mover num para ecx
	movq ptrvec(%rip), %rsi			#mover ptrvec para rsi
	movw x(%rip), %di				#mover x para di
	
	cmpl $0, %ecx					#comparar 0 com ecx para saber se não é null
	jz notFound						#se 0 = ecx saltar para notFound	

loop:
	movw (%rsi), %dx				#mover valor de rsi para dx
	cmpw %di, %dx					#comparar di com dx
	je found						#se di = dx saltar para found
	addq $2, %rsi					#mover rsi para a proxima posição
	
	loop loop						#loop
	jmp notFound					#saltar para notFound

found:
	movq %rsi, %rax					#mover rsi para rax
	jmp end							#saltar para end
	
notFound:
	movq $0, %rax					#mover 0 para rax
	
end:
	ret								#return
	
