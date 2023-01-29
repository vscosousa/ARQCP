#include <stdio.h>
#include "new_salary.h"

short code = 0;
short currentSalary = 0;
int main(void)
{
	printf("\nInsira o código: ");
	scanf(" %hd",&code);
	printf("\nInsira o valor do salário atual: ");
	scanf(" %hd",&currentSalary);
	int ret = new_salary();
	printf("\nO valor do novo salário é: %d\n", ret);
	
	return 0;
	
}
