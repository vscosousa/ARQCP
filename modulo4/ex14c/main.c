#include <stdio.h>
#include "reset_bit.h"
 
int main(void){
	
	int x = 30;
	int pos = 2;
	int *ptr = &x;
	
	reset_2bits(ptr, pos);
	printf("X value after transfomation = %d\n", x);
	return 0;
}
