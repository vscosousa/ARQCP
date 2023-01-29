#include <stdio.h>
#include "upper2.h"
#include <string.h>

//Este programa tem como objetivo transformar caracteres escritos em lowercase (letras minúsculas) em caracteres uppercase (letras maiúsculas) através do uso de aritmética de apontadores
int main() {
    
    char string[500];
	printf("Qual o texto que pretende transformar? (Máximo de caracteres = 500)\n");
	scanf("%[^\n]%*c", string);
	int arraySize = strlen(string);
	printf("String antes da transformação: ");
	for (int i= 0; i< arraySize; i++) {
		printf("%c", string[i]);
	} 
	printf("\n");
	
//Uso da função upper2
	upper2(string);
	printf("String depois da transformação: ");
	for (int j = 0; j < arraySize; j++) {
		printf("%c", string[j]);
	} 
	printf("\n");

	return 0;
}
