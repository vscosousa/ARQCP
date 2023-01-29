#include <stdio.h>
#include "reset_bit.h"
 
int main(void){
	int x = 6;
	int pos = 2;
	int * ptr = &x;
	
	int y = reset_bit(ptr,pos);
	
	if(y == 1){
		printf("O %dº bit foi alterado.\n", pos);
	}else{
		printf("O %dº bit não foi alterado.\n", pos);
	}
	
	return 0;
}
