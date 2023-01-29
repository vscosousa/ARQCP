#include <stdio.h>

int average(int v [],int n){
	int count = 0;
	int i;
	for(i = 0; i<n; i++){
		count += v[i];
	}
	return count/n;
}
