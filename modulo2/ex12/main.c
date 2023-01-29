#include <stdio.h>
#include "isMultiple.h"

int A = 0;
int B = 0;
int main()
{
		printf("\nInsira o valor de A: ");
		scanf("%d", &A);
		printf("\nInsira o valor de B: ");
		scanf("%d", &B);
    char ret = isMultiple();
    printf("A is a multiple of B result: %hd\n", ret);
    
	return 0;
}
