#include <stdio.h>
#include "incr.h"

int main()
{

	short w = 3;
	
    int valor1 = call_incr(w);
    printf("Return value of the function equals to: %d\n",valor1);
    return 0;
}
