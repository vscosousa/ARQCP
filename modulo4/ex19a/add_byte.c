void add_byte(char x, int *vec1, int *vec2){
	int i = 0;
	int y = *vec1;
	*vec2 = *vec1;
	vec1++;
	vec2++;
	for(i=0; y > i; i++){
		char b = (char)*vec1 + x;
		*vec1 &= 0xFFFFFF00;
		*vec2 = b + *vec1;
		vec1++;
		vec2++;
	}
}
