#include <stdio.h>
#include "encrypt.h"
#include "decrypt.h"

char vec[] = "ficha de arquitetura de computadores";
char* ptr1;

int main(void){
	
	ptr1 = vec;
	printf("Frase original: %s", vec);
	int counter = encrypt();
	printf("\nForam alterados %d caracteres\n", counter);
	printf("Frase encriptada: %s", vec);
	counter = decrypt();
	printf("\nForam alterados %d caracteres\n", counter);
	printf("Frase desencriptada: %s\n", vec);
	return 0;

}
