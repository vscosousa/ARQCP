#include <stdio.h>
#include "vec_sum.h"
#include "vec_avg.h"

long vec[] = {1,2,3,4,5,6,7,8,9,5};
long* ptrvec;
short num = 10;

int main(void){
	
	int sum = 0;
	int avg = 0;
	ptrvec = vec;
	
	sum = vec_sum();
	avg = vec_avg();
	
	printf("\nSoma dos elementos do array = %d", sum);
	printf("\nMédia dos elementos do array = %d\n", avg);
	return 0;

}
