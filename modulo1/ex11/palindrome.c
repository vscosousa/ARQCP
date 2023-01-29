//Esta função vai transformar o texto e verificar se o mesmo é um palindrome
int palindrome(char *str){
	int x;
	int lenght = 0;
	
//Conversão das letras minúsculas para maiúsculas
	for (int i = 0; str[i] != 0; i++){
		if(str[i] >= 97 && str[i] <= 122){
			str[i] = str[i] - 32;
		}
	}
	for(int i = 0; str[i] != 0; i++){
		lenght++;
	}
//Eliminação de qualquer letra minúscula
	for(int i = 0; i < lenght; i++){
        if(str[i] < 65 || str[i] > 90){
            for(x = i;x < lenght;x++){  
				str[x]=str[x+1];
			}  
        lenght--;
        i--;  
        }
	}
	int size = lenght -1;
	
//Verificação do potencial palindrome
	for(int i=0; i<(size/2); i++){
		if(*(str+i) != *(str+size-i)){
			return 0;
		}
	}
	return 1;
	
}
