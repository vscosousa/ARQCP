#include <stdio.h>

//Esta função irá copiar os valores de vec 1 para vec2
void copy_vec(int *vec1, int *vec2, int n){
		
		for (int i = 0; i<n; i++){

		*vec2 = *vec1;
		vec1++;
		vec2++;

		}

}
