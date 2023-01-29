#include <stdio.h>
#include "str_copy_porto2.h"

char str1[] = "Sou o Vasco";
char str2[] = {};
char *ptr1;
char *ptr2;

int main(void){
	
	ptr1 = str1;
	ptr2 = str2;
	printf("\nString antes da troca: %s\n",ptr1);
	str_copy_porto2();
	printf("\nString depois da troca: %s\n",ptr2);
	return 0;

}
