//Esta função vai substituir todas as letras minúsculas pelas letras maiúsculas correspondentes utilizando aritmética de apontadores
void upper2(char *str) {
    
    for(int i = 0; i < 30; i++) {
		//65+32 equivale a "a" e 90+32 equivale a "z"
        if(*str >= 65 + 32 && *str <= 90 + 32) {
			//-32 transforma a letra minúscula em maiúscula 
            *str = *str - 32;				     
        }
    //salta uma posicão no array
    str++;
    }
}
