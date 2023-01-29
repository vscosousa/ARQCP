#include <stdio.h>
#include "needed_time.h"

char current = 0;
char desired = 0;
int main(void)
{
	printf("\nQual é a temperatura atual? ");
	scanf(" %hhd",&current);
	printf("\nQual é a temperatura desejada? ");
	scanf(" %hhd",&desired);
	int ret = needed_time();
	printf("\nO tempo necessário para atingir a temperatura desejada é: %d segundos\n", ret);
	
	return 0;
	
}
