#include <stdio.h>
#include "greater_date.h"

int main()
{
	unsigned int date1 = 10;
	unsigned int date2 = 20;
	int y = greater_date(date1, date2);
	printf("Return value equals to: %d\n",y);
	return 0;
}




