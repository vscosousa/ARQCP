#include <stdio.h>
#include "check_num.h"

int num = 0;
int main(void)
{
	printf("\nInsira o valor de num: ");
	scanf(" %d",&num);
	int ret = check_num();
	printf("\nO valor de check_num é: %d\n", ret);
	
	return 0;
	
}
