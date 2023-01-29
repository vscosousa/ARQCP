#include <stdio.h>
#include "sum_smaller.h"

int main()
{
    int num1 = 2;
    int num2 = 3;
    int smaller;
    int y = sum_smaller(num1, num2, &smaller);
    printf("The smaller value is %d and the sum of %d + %d = %d \n", smaller, num1, num2, y);
    return 0;
}
