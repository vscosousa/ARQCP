#include <stdio.h>
#include "power_ref.h"

//Este programa tem como objetivo calcular x^y (x elevado a y)
int main(){
	int x;
	int y;

	printf("Valor de x: ");
	scanf("%i",&x);

	printf("Valor de y: ");
	scanf("%i",&y);
	
//Uso da função power_ref
	power_ref(&x,y);

	printf("x: %i\n",x);
	return 0;
}
