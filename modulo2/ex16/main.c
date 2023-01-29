#include <stdio.h>
#include "steps.h"

long num = 0;

int main()
{
	printf("\nInsira o valor de num: ");
	scanf("%ld", &num);
    long ret = steps();
    printf("\nOperations value equals to: %ld\n", ret);
    
	return 0;
}
