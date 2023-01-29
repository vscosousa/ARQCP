#include <stdio.h>
#include "test_even.h"

long even = -1;
int num = 3;
long* ptrvec;

int main(void){

	long vec[] = {-1,-1,-1};
	ptrvec = vec;
	int check = test_even();
	int sum = vec_sum_even();
	printf("Return value: %d\n", check);
	printf("A soma dos números pares é: %ld\n", sum);
	return 0;

}
