#include <stdio.h>
#include "count_max.h"

int num = 7;
int vec[] = {2,4,2,4,2,4,2};
int *ptrvec = vec;

int main(void){
	
	int ret = count_max();
	printf("\nExistem %d que satisfazem a condição: vi<vi+1>vi+2\n", ret);
	return 0;

}
