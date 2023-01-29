#include <stdio.h>
#include "crossSumBytes.h"

short s1, s2;
int main()
{
	printf("\nInsira o valor de short1: ");
	scanf("%hu", &s1);
	printf("Hexadecimal byte1: %hx", s1);
	printf("\nInsira o valor de Byte2: ");
	scanf("%hu", &s2);
	printf("Hexadecimal byte2: %hx\n", s2);
    short ret = crossSumBytes();
    printf("Crossed sum result: %d\n", ret);
    printf("Crossed sum result in hexadecimal: %hx\n",ret);
    
	return 0;
}
