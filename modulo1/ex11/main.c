#include <stdio.h>
#include "palindrome.h"

int main(){

	char text[500];
	printf("Qual o texto que pretende verificar? (Máximo de caracteres = 500)\n");
	scanf("%[^\n]%*c", text);
//Uso da função check2
	int check2 = palindrome(text);

	printf("Return: %d \n",check2);

}
