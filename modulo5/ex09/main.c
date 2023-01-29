#include <stdio.h>
#include <string.h>
#include "fun1.h"
#include "fun2.h"
#include "fun3.h"
#include "fun4.h"
#include "structs.h"


int main(void){
	
	int i;
	structA sa;
	structA *ptra = &sa;
	
	ptra->x = 5;
    ptra->y = 10;
	
	structB sb;
	structB *ptrb = &sb;
	
	ptrb->a = sa;
	ptrb->b = ptra;
	ptrb->x = 21;
	ptrb->z = 3;
	ptrb->c = 4;
	ptrb->y = 5;
	for (i=0; i<3; i++){
		ptrb-> e[i] = rand();
	}
	short f1 = fun1(ptrb);
    short f2 = fun2(ptrb);
    short *f3 = fun3(ptrb);
    short f4 = fun4(ptrb);
    printf("fun1 --> s->a.x = %d\n", f1);
    printf("fun2 --> s->z = %d\n", f2);
    printf("fun3 --> &s->z = %p\n", f3);
    printf("fun4 --> s->b->x = %d\n", f4);
	
	
	return 0;
}
