#include <stdio.h>
#include <string.h>
#include "fill_s2.h"

int main(void){
	
	int i;
	char vc[3] = {1, 2, 3};
	int vj = 10;
	short vw[3] = {4, 5, 6};
	
	s2 struct2;
	s2 *s = &struct2;
	
	fill_s2(s, vw, vj, vc);
    for(i = 0; i < 3; i++){
        printf("c[%d]:  %d  ", i+1, s->c[i]);
    }
    printf("\n");
    
    for(i = 0; i < 3; i++){
        printf("w[%d]:  %d  ", i+1, s->w[i]);
    }
    printf("\n");
	printf("j: %d\n", s->j);
	return 0;
}
