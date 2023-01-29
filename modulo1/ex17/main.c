#include <stdio.h>
#include "swap.h"
int main()
{

	int tamanho;

	printf("\nQual é o tamanho do array? ");
	scanf("%d",&tamanho);

	int vec[tamanho];
	int vec0[tamanho];

	printf("Insere os valores do primeiro Array: ");
	for(int i=0; i<tamanho; i++){
		scanf("%d",&vec[i]);
	}

	printf("Insere os valores do segundo Array: ");
	for(int i=0; i<tamanho; i++){
		scanf("%d",&vec0[i]);
	}
//Uso da função swap
	swap(vec,vec0,tamanho);

	for (int i=0;i<tamanho;i++) {
		printf("O valor do 1º array é: %i \n", vec[i]);
	 }
	 printf("\n");
	 for (int i=0;i<tamanho;i++) {
		printf("Os valor do 2º array é: %i \n", vec0[i]);
	 }
	 
return 0;
}
