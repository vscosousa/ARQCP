#include <stdio.h>
#include "inc_and_square.h"

int main()
{
	int value = 2;
    int *v1 = &value;
    int v2 = 3;
    int y = inc_and_square(v1, v2);
    printf("The value of v1 increased by one is %d and the square of v2 is %i\n",value,y);
    return 0;
}
