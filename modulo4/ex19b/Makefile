output: add_byte.o main.o
	gcc add_byte.o main.o -o output

add_byte.o: add_byte.s
	gcc -g -Wall -c add_byte.s
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
