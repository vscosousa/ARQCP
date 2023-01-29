#include <stdio.h>
#include "calculator.h"

int op1 = 0;
int op2 = 0;
int choice = 0;

int main()
{
	int ret = 0;
	printf("\n1 - SUM");
	printf("\n2 - SUBTRACTION");
	printf("\n3 - MULTIPLICATION");
	printf("\n4 - DIVISION");
	printf("\n5 - MODULUS");
	printf("\n6 - POWER OF 2");
	printf("\n7 - POWER OF 3");
	printf("\nEscolha uma opcão das listadas acima: ");
	scanf("%i", &choice);
	switch(choice)
	{
		case 1:
			printf("\nInsira o valor de op1: ");
			scanf("%i", &op1);
			printf("\nInsira o valor de op2: ");
			scanf("%i", &op2);
			ret = sum();
			printf("\nop1 + op2 = %hd\n", ret);
			break;
		case 2:
			printf("\nInsira o valor de op1: ");
			scanf("%i", &op1);
			printf("\nInsira o valor de op2: ");
			scanf("%i", &op2);
			ret = subt();
			printf("\nop1 - op2 =  %hd\n", ret);
			break;
		case 3:
			printf("\nInsira o valor de op1: ");
			scanf("%i", &op1);
			printf("\nInsira o valor de op2: ");
			scanf("%i", &op2);
			ret = mult();
			printf("\nop1 x op2 =  %hd\n", ret);
			break;
		case 4:
			printf("\nInsira o valor de op1: ");
			scanf("%i", &op1);
			printf("\nInsira o valor de op2: ");
			scanf("%i", &op2);
			ret = divi();
			printf("\nop1 / op2 =  %hd\n", ret);
			break;
		case 5:
			printf("\nInsira o valor de op1: ");
			scanf("%i", &op1);
			ret = mod();
			printf("\n|op1| = %hd\n", ret);
			break;
		case 6:
			printf("\nInsira o valor de op1: ");
			scanf("%i", &op1);
			ret = power2();
			printf("\nop1² = %hd\n", ret);
			break;
		case 7:
			printf("\nInsira o valor de op1: ");
			scanf("%i", &op1);
			ret = power3();
			printf("\nop1³ = %hd\n", ret);
			break;
		default:
			printf("\nErro! A operação não existe");
	}
    
	return 0;
}
