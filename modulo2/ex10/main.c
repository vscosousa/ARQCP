#include <stdio.h>
#include "sum3ints.h"

int op1, op2, op3;
int main()
{
	printf("\nInsira o valor de op1: ");
	scanf("%dd", &op1);
	printf("\nInsira o valor de op2: ");
	scanf("%dd", &op2);
	printf("\nInsira o valor de op3: ");
	scanf("%dd", &op3);
	
    long long ret = sum3ints();
    printf("op1 + op2 + op3: %lld\n", ret);
    
	return 0;
}
