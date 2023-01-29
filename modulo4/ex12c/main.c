#include <stdio.h>
#include "count_bits_one.h"

int main()
{
	
	int x = 2;
	int num = 4;
	short short1[] = {1,2,3,4};
	short *ptr = short1;
	int y = count_bits_one(x);
	int z = vec_count_bits_one(ptr, num);
	printf("Return value equals to: %d\n",y);
	printf("Counter value equals to: %d\n", z);
	return 0;
}
