#include <stdio.h>
#include "crossSumBytes.h"

int main()
{
	printf("Hexadecimal byte1: %hx\n", s1);
	printf("Hexadecimal byte2: %hx\n", s2);
    short ret = crossSumBytes();
    printf("Crossed sum result: %i\n", ret);
    printf("Crossed sum result in hexadecimal: %hx\n",ret);
    
	return 0;
}
