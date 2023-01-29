#include <stdio.h>
#include <string.h>
int main( void ){
	
	/**union union_u1{
		char vec[32];
		float a;
		int b;
	} u;
	
	union union_u1 * ptr = &u;
	**/
	
	struct struct_s1{
		char vec[32];
		float a;
		int b;
	} s;
	
	struct struct_s1 * ptr = &s;
	
	strcpy(ptr->vec, "arquitectura de computadores" );
	printf( "[1]=%s\n", ptr->vec );
	
	ptr->a = 123.5;
	printf( "[2]=%f\n", ptr->a );
	
	ptr->b = 2;
	printf( "[3]=%d\n", ptr->b );
	
	printf( "[1]=%s\n", ptr->vec );
	printf( "[2]=%f\n", ptr->a );
	printf( "[3]=%d\n", ptr->b );
	
	return 0;
	

/** a) Numa primeira instância o programa atribui um valor a cada uma das variáveis
       e imprime logo após a atribuição de cada uma delas, tal como é possível
       verificar no output seguinte:
       
       [1]=arquitectura de computadores
	   [2]=123.500000
       [3]=2
       
       De seguida, o programa vai imprimir o ultimo valor atribuido ao pointer.
       Isto acontece devido ao facto de numa union a memória ser partilhada por
       todos os elementos da mesma e com isso quando fazemos a ultima atribuição,
       esta irá interferir com todos os campos e ficando por lá como o único valor
       armazenado.
       
       Sendo assim, o output final será o seguinte:
       
       [1]=arquitectura de computadores
	   [2]=123.500000
	   [3]=2
       [1]=
	   [2]=0.000000
	   [3]=2

       
    b) No caso das structs, devido ao facto de cada uma das variáveis ter o seu próprio
	   espaço na memória, o output final será o seguinte:
	   
	   [1]=arquitectura de computadores
	   [2]=123.500000
	   [3]=2
	   [1]=arquitectura de computadores
       [2]=123.500000
       [3]=2

	**/

}
