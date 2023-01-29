output: greater_date.o main.o
	gcc greater_date.o main.o -o output

greater_date.o: greater_date.c
	gcc -g -Wall -c greater_date.c
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
