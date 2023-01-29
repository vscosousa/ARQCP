#include <stdio.h>
#include "copy_vec.h"

//Este código tem como objetivo copiar os inteiros do vec1 para o vec2 utilizando apontadores
int main(){
	
	int n;
	printf("\nQual o tamanho do array? ");
	scanf("%i", &n);
	int vec1[n];
	int vec2[n];
	for(int i = 0; i<n; i++){
		printf("\nQual o inteiro? ");
		scanf("%i", &vec1[i]);
		}
	for(int i = 0; i<n; i++){
		printf("\nValor do %iº elemento antes da cópia: %i\n ",i+1, vec2[i]);
		}
	//Uso da função copy_vec
	copy_vec(vec1, vec2, n); 
	for(int i = 0; i<n; i++){
		printf("\nValor do %iº elemento depois da cópia: %i\n",i+1, vec2[i]);
		}
	return 0;
}
