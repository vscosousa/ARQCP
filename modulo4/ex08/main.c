#include <stdio.h>
#include "calc.h"

int main()
{
	int a = 3;
	int valor = 10;
	int* b = &valor;
	int c = 2;
    int y = calc(a, b, c);
    printf("(c-4)*z = %d\n",y);
    return 0;
}
