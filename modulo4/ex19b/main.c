#include <stdio.h>
#include "add_byte.h"

int main()
{
	char x = 1;
	int i = 0;
	int array1[] = {6,1,2,3,4,5,6};
	int array2[] = {};
	int *vec1 = array1;
	int *vec2 = array2;
	int y = *vec1;
	add_byte(x, vec1, vec2);
	for(i=0; y > i; i++){
		printf("Return value equals to: %d\n",vec2[i]);
	}
	return 0;
}




