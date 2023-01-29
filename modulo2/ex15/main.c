#include <stdio.h>
#include "compute.h"

int A = 0;
int B = 0;
int C = 0;
int D = 0;

int main()
{
	printf("\nInsira o valor de A: ");
	scanf("%d", &A);
	printf("\nInsira o valor de B: ");
	scanf("%d", &B);
	printf("\nInsira o valor de C: ");
	scanf("%d", &C);
	printf("\nInsira o valor de D: ");
	scanf("%d", &D);
    int ret = compute();
    printf("\n((A*B)-C)/D: %hd\n", ret);
    
	return 0;
}
