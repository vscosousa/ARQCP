#include <stdio.h>
#include "encrypt.h"

char vec[] = "ficha de arquitetura de computadores";
char* ptr1;

int main(void){
	
	ptr1 = vec;
	printf("Frase: %s", vec);
	int counter = encrypt();
	printf("\nForam alterados %d caracteres\n", counter);
	return 0;

}
