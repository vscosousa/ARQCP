output: fill_student.o main.o
	gcc fill_student.o main.o -o output

fill_student.o: fill_student.c
	gcc -g -Wall -c fill_student.c
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.o output
	
run: output
	./output
