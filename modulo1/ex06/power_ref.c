//Esta função irá multiplicar x por si próprio y vezes e depois irá armazenar o resultado no endereço de x
void power_ref(int *x, int y){
	int resultado = 1;
	while (y != 0){
		resultado *= *x;
		--y;	
	}
	*x = resultado;   
}
