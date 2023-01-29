#include <stdio.h>
#include "vec_greater10.h"

int num = 10;
int vec[] = {10,11,12,13,4,5,6,7,10,19};
int *ptrvec = vec;

int main(void){
	
	int ret = vec_greater10();
	printf("\nExistem %d maiores que 10 no array", ret);
	return 0;

}
