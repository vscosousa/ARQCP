#include <stdio.h>
#include "test_flags.h"

int op1 = 0;
int op2 = 0;
int main()
{
	printf("\nInsira o valor de int1: ");
	scanf("%d", &op1);
	printf("\nInsira o valor de int2: ");
	scanf("%d", &op2);
    char ret = test_flags();
    printf("op1 + op2 overflow or carry result: %hd\n", ret);
    
	return 0;
}
