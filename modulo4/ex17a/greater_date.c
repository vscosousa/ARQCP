int greater_date(unsigned int date1, unsigned int date2){

	short year1 = (short) (date1>>8);
	short year2 = (short) (date2>>8);
	char month1 = (char) date1;
	char month2 = (char) date2;
	char day1 = (char) (date1>>24);
	char day2 = (char) (date2>>24);
	
	if (year1 > year2){
		return date1;
	}
	else if (year2 > year1){
		return date2;
	}
	else{
		if (month1 > month2){
			return date1;
		}
		else if (month2 > month1){
			return date2;
		}
		else{
			if (day1 > day2){
				return date1;
			}
			else if (day2 > day1){
				return date2;
			}
			else{
				return date1;
			}
		}
	}
}
