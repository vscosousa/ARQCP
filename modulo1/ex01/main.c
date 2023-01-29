#include <stdio.h>

int main() {

	int x = 5;
	int* xPtr = &x;
	float y = *xPtr + 3;
	int vec[] = {10, 11, 12, 13};

	printf("\nValor de x: %i\n", x);
	printf("\nValor de y: %f\n", y);
	printf("\nEndereço de x: %p\n", &x);
	printf("\nEndereço de xPtr: %p\n", &xPtr);
	printf("\nValor apontado por xPtr: %i\n", *xPtr);
	printf("\nEndereço de vec: %p\n", &vec);

	for( int i=0;i <= 3; ++i){
		printf("\nO valor de vec[%i] = %i \n", i, vec[i]);
		printf("\nO endereço de vec[%i] = %p \n", i, &vec[i]);
	}

	return 0;
}
