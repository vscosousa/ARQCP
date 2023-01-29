#include <stdio.h>
#include "cube.h"

int main()
{
    int x = 10;
    long y = cube(x);
    printf("The cube of %ld is %ld \n",x,y);
    return 0;
}
