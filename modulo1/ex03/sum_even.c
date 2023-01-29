//Esta função irá somar apenas os números pares existentes no array utilizando apontadores
int sum_even( int *p, int num) {
	int evenSum = 0;
	for(int i=0; i<num; i++){
		if((*p)%2==0){
			evenSum += *p;
		}
		p++;   
	}
	return evenSum;    
}
