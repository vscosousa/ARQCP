#include <stdio.h>
#include "test_equal.h"

int main()
{
	char string1[] = "";
	char string2[] = "";
    char *a = string1;
    char *b = string2;
    int y = test_equal(a, b);
    printf("The return value is: %d\n",y);
    return 0;
}
