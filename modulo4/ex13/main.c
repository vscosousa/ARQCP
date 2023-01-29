#include <stdio.h>
#include "rotate.h"

int main()
{
	int num = 16;
	int nbits = 2;
	int x = rotate_left(num, nbits);
	int y = rotate_right(num, nbits);
	printf("Rotate left value: %d\n", x);
	printf("Rotate right value: %d\n", y);
    return 0;
    
}
