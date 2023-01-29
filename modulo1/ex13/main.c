#include <stdio.h>
#include "where_is.h"


int main(){
	
    char c;
    char str[500];
    int vec[500];

	printf("\nQual o texto que pretende verificar? (Máximo de caracteres = 500)\n");
	scanf("%[^\n]%*c", str);

    for(int i = 0; i < 50; i++) {
        if(str[i] >= 65 + 32 && str[i] <= 90 + 32) {
            str[i] = str[i] - 32;
        }
    }

    printf("\nInsira uma letra: ");
    scanf("%c", &c);
    

	if(c >= 65 + 32 && c <= 90 + 32) {
          c = c - 32;
    }
	//Uso da função where_is
    printf("contador:%i\n", where_is(str,c,vec));
    for(int i = 0; i < where_is(str,c,vec);i++){
        printf("%i\n", vec[i]);
    }
    return 0;
}
