#include <stdio.h>
#include "seven_count.h"

char vec[] = "701234567777891";
char *ptr1;

int main(void){
	
	ptr1 = vec;
	int ret = seven_count();
	printf("\nO valor do contador do número 7 é igual a: %i\n",ret);
	return 0;

}
