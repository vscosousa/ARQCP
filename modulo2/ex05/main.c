#include <stdio.h>
#include "swapBytes.h"

short s = 0;
int main(void)
{
    printf("Value of s:");
    scanf("%hd",&s);
    printf("0x%hx\n",s);
    short ret = swapBytes();
    printf("Value of s after the byte swap: %hd\n0x%hx\n",ret, ret);
    
	return 0;
}
