#include <stdio.h>
#include "vec_add_two.h"

int vec[] = {1,2,3,4,5,6,7,8,9,10};
int* ptrvec;
int num = 10;

int main(void){

	ptrvec = vec;
	printf("\nArray antes da soma: ");
	for(int i = 0; i<num;i++){
		printf(" %d ",ptrvec[i]);
	}
	vec_add_two();
	printf("\nArray depois da soma: ");
	for(int i = 0; i<num;i++){
		printf(" %d ",ptrvec[i]);
	}
	return 0;

}
