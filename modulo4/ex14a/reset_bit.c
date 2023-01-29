int reset_bit(int *ptr, int pos){
	
	
	int mask1 = (1 << pos);
	int mask2 = ~mask1;
	int x = mask1 & *ptr;						
	
	*ptr = *ptr & mask2;
	
	if (x == 0){
		return 0;
	}
	else{
		return 1;
		}							
}
