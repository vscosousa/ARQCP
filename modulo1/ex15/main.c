#include <stdio.h>
#include <stdlib.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h" 
int counter = 0;
int vec[100];
int main(){
	
		int num = 100;
		int vec1[num];
		int limit = 20;
		int i;
    //Uso da função populate
		populate(vec1,num,limit);

		for (i = 0; i < num; i++){
			printf("%i \n", vec1[i]);
		}
	//Uso da função check
		for (i=0; i < num; i++){
			vec[i] = check(vec1[i],vec1[i+1],vec1[i+2]);   
		}
		
		printf("Array: { ");
		for (i=0; i<100; i++){
			printf("%i ", vec[i]);
			}
		printf("}\n");
		
	//Uso da função inc_nsets
		inc_nsets();
		
    return 0;
}
