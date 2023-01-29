int count_bits_one(int x){

	int counter = 0;
	int carry;
	
	for(int i = 1; i<=32;i++){
		carry = x>>i;
		if(carry & 1){
			counter++;
		}
	}
	return counter;
}
