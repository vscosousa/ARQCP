#include <stdio.h>
#include "vec_search.h"

short x = 2;
int num = 5;
short* ptrvec;

int main(void){

	short vec[] = {1,2,2,3,5};
	ptrvec = vec;
	short* ret = vec_search();
	printf("Return value: %p\n", ret);
	return 0;

}
