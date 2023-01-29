#include <stdio.h>
#include "str_cat.h"

char str3[80];
char str2[40] = "bolos"; 
char str1[40] = "come"; 
char* ptr3 = str3;
char* ptr2 = str2;
char* ptr1 = str1;

int main(void){
	
	str_cat();
	printf("\nPrimeira String: %s", str1);
	printf("\nSegunda String: %s", str2);
	printf("\nA junção das duas frases é: %s", str3);
	return 0;

}
