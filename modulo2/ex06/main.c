#include <stdio.h>
#include "concatBytes.h"

char byte1, byte2;
int main()
{
	printf("\nInsira o valor de Byte1: ");
	scanf("\n%c", &byte1);
	printf("\nInsira o valor de Byte2: ");
	scanf("\n%c", &byte2);
    short ret = concatBytes();
    printf("Concatenated version: %d\n%hx\n",ret, ret);
    
	return 0;
}
