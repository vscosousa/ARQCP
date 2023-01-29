#include <stdio.h>
#include "capitalize.h"

void capitalize (char *str);
int main(){
	char text[500];
	printf("Qual o texto que pretende verificar? (Máximo de caracteres = 500)\n");
	scanf("%[^\n]%*c", text);
	capitalize(text);
	int i = 0;
	while(text[i] != '\0'){
		printf("%c",text[i]);
		i++;
	}
	printf("\n");
}
