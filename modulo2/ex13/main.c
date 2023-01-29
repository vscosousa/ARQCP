#include <stdio.h>
#include "getArea.h"

int length1 = 0;
int length2 = 0;
int height = 0;
int main()
{
		printf("\nInsira o valor de lenght1: ");
		scanf("%d", &length1);
		
		printf("\nInsira o valor de lenght2: ");
		scanf("%d", &length2);
		
		printf("\nInsira o valor de height: ");
		scanf("%d", &height);
    int ret = getArea();
    printf("\nThe area of the trapeze is: %i m²\n", ret);
    
	return 0;
}
