//Esta função vai substituir todas as letras minúsculas pelas letras maiúsculas correspondentes
void upper1(char *str) {

	for(int i = 0; i < 30; i++) {
		//65+32 equivale a "a" e 90+32 equivale a "z"
		if(str[i] >= 65 + 32 && str[i] <= 90 + 32) { 
			//-32 transforma a letra minúscula em maiúscula
			str[i] = str[i] - 32;				     
		}
	}
}
