#include <stdio.h>
#include "sum_multiples_x.h"

int main()
{
	char array[] = {1, 2, 3, 4, 0};
	char *vec = array;
	int x = 10;
	int y = sum_multiples_x(vec, x);
	printf("Return value equals to: %d\n",y);
	return 0;
}




