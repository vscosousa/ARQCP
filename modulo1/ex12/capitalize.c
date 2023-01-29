//Esta função 
void capitalize (char *str){
	//Verifica se a frase começa com um espaço e, caso não exista, adiciona um
	if(*str != ' ' && (*(str) >= 97 && *(str) <= 122)){
		*str -=32;
	}
	
//Transforma a primeira letra de cada palavra em maiúscula
	for(int i = 0; *(str+i)!= 0; i++){
		if(*(str+i) == ' ' && (*(str+i+1) >= 97 && *(str+i+1) <= 122)){
			*(str+(i+1))-=32;
		}
	}
}
