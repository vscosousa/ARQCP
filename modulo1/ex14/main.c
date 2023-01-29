#include <stdio.h>
#include "frequencies.h"

int main(){

	int n;
	
	printf("\nQual o número de alunos? ");
	scanf("%i", &n);
	
	float vec[n];
	int vecI[n];
	int vecNotas[21];
	
	for(int i = 0; i<n; i++){
		do{
			printf("\nQual a nota do %iº aluno? ", i+1);
			scanf("%f", &vec[i]);
		}
		while(vec[i] < 0 || vec [i] > 20);
	}
		
	for(int i = 0; i<n; i++){
		printf("\nA nota do %iº aluno é %f\n", i+1, vec[i]);
	}
		
	for(int i = 0; i<n; i++){
		printf("\nA nota final do %iº aluno é %i\n", i+1, vecI[i]);
	}
	//Uso da função	
	frequencies(vec, n, vecNotas);	
	
	printf("\n{");
	for(int i = 0; i<21; i++){
		printf("%i ",vecNotas[i]);
	}
	printf("}");
}
