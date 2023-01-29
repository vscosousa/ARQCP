#include <stdio.h>
#include "greatest.h"

int main()
{
    int a = 2;
    int b = 3;
    int c = 4;
    int d = 5;
    int y = greatest(a,b,c,d);
    printf("The greatest value is %d \n",y);
    return 0;
}
