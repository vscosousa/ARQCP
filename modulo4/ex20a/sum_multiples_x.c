int sum_multiples_x(char *vec, int x){
	
	char y = (char)(x>>8);
	int i = 0;
	int sum = 0;
	if(y != 0){
		while(vec[i] != 0){
			if(vec[i]%y == 0){
				sum = sum + vec[i];
			}
		i++;
		}
	}
	return counter;
}
