#include <stdio.h>
#include "sum_and_subtract.h"

int A = 0;
short B = 0;
char C, D = 0;
int main()
{
	printf("\nInsira o valor de A: ");
	scanf("%dd", &A);
	printf("\nInsira o valor de B: ");
	scanf("%hd", &B);
	printf("\nInsira o valor de C: ");
	scanf("%hhi", &C);
	printf("\nInsira o valor de D: ");
	scanf("%hhi", &D);
	
    long long ret = sum_and_subtract();
    printf("C + A - D + B: %lld\n", ret);
    
	return 0;
}
