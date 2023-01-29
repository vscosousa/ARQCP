#include <stdio.h>
#include "count_odd.h"

int main()
{
	char numbers[] = {1,2,3,4};
	char *vec = numbers;
	int n = 4;
    int y = count_odd(vec, n);
    printf("O número de números ímpares é igual a %d\n",y);
    return 0;
}
