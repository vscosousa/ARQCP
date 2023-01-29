#include <stdio.h>
#include "operation.h"

int i = 1;
int n = 0;

int main(void)
{
	printf("\nQual é o valor de n: ");
	scanf("%d",&n);
	int ret = operation();
	printf("\nOperation value equals to: %d\n", ret);
	
	return 0;
	
}
