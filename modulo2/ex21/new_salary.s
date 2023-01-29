.section .data

	.global code
	.global currentSalary
	
.section .text

.global new_salary
new_salary:
	
	movw code(%rip), %cx				#armazena code em cx
	movw currentSalary(%rip), %ax		#armazena currentSalary em ax
	
	cmpw $20, %cx						#compara cx com 20
	je manager							#salta para manager caso o code seja igual a 20
	cmpw $21, %cx						#compara cx com 21
	je engineer							#salta para manager caso o code seja igual a 21
	cmpw $22, %cx						#compara cx com 22
	je technician						#salta para manager caso o code seja igual a 22
	addw $150, %ax						#currentSalary + 150, pois nenhum dos códigos predefinidos foi chamado
	jmp end								#saltar para o end de maneira a dar return ao resultado final
manager:
	addw $400, %ax						#currentSalary + 400
	jmp end								#saltar para o end de maneira a dar return ao resultado final
engineer:
	addw $300, %ax						#currentSalary + 300
	jmp end								#saltar para o end de maneira a dar return ao resultado final
technician:
	addw $200, %ax						#currentSalary + 200
end:
	ret									#return
