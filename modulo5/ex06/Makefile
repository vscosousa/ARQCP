output: fill_student.o update_address.o update_grades.o locate_greater.o main.o
	gcc fill_student.o update_address.o update_grades.o locate_greater.o main.o -o output

fill_student.o: fill_student.c
	gcc -g -Wall -c fill_student.c
	
update_address.o: update_address.s
	gcc -g -Wall -c update_address.s
	
update_grades.o: update_grades.s
	gcc -g -Wall -c update_grades.s

locate_greater.o: locate_greater.s
	gcc -g -Wall -c locate_greater.s
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.o output
	
run: output
	./output
