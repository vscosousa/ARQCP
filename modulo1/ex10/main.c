#include <stdio.h>
#include "odd_sum.h"

//Este programa tem como objetivo verificar se os números presentes num array são ímpares
int main(){

		int tamanho;

		printf("\nQual o tamanho do array? ");
		scanf("%d",&tamanho);

		int vec[tamanho];
		vec[0] = tamanho;

		for (int i = 1; i < tamanho; i++){
			printf("Insere o elemento: ");
			scanf("%d",&vec[i]);
		}
	printf("Array: Tamanho = ");
	for (int i = 0; i < vec[0]; i++) {     
        printf("%d ", vec[i]);     
    }   
	printf("\nsum of odd numbers in the array: %d \n", odd_sum(vec));
}
