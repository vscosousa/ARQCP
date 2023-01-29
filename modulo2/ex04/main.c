#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;

int main(void)
{
	long res;
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	res = sum_v3();
	printf("sum_v3 = %ld\n",res);
	return 0;
}
