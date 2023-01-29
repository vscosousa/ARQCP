#include <stdio.h>
#include "sum_even.h"
int main(){	
	
	int tamanho;
	printf("Qual é o tamanho do array? ");
	scanf("%i",&tamanho);
	printf("\n");
	
	int arr[tamanho];
	
	for(int i=0; i<tamanho; i++){
			printf("Introduza o elemento: ");
			scanf("%i",&arr[i]);
	}
//Uso da função evenSum
	sum_even(arr, tamanho);
	
	printf("\nA soma dos números pares é igual a %i",sum_even(arr, tamanho));
	printf("\nO endereço do array é: %p \n", arr);

	return 0;
}
