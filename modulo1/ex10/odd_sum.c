//Esta função irá verificar se um número é ímpar e caso seja verdadeira essa condição esse mesmo número irá ser contabilizado no contador sum
int odd_sum(int *p){

	int sum = 0;
	int x = *p;
	p++;
	//Verifica se o número é ímpar através do resto da divisão por 2
	for(int i = 1; i < x; i++){
		if(*p % 2 != 0){
			sum += *p;
		}
		p++;
	}
	return sum;
}
