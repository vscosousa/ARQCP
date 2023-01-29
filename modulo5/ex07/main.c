#include <stdio.h>
#include <string.h>
#include "fill_s1.h"

int main(void){
	
	int vi = 2;
	char vc = 1;
	int vj = 4;
	char vd = 3;
	
	s1 struct1;
	s1 *s = &struct1;
	
	fill_s1(s, vi, vc, vj, vd);
	printf("c: %d\ni: %d\nd: %d\nj: %d\n\n", s->c, s->i, s->d, s->j);
	return 0;
}
