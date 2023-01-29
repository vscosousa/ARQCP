#include <stdio.h>
#include "distance.h"

int main(){
	char a[] = "ab";
	char b[] = "aa";
	
	int x = distance(a, b);
	
	printf("Distance value: %d\n", x);
    return 0;
}
