output: reset_bit.o main.o
	gcc reset_bit.o main.o -o output

reset_bit.o: reset_bit.c
	gcc -g -Wall -c reset_bit.c
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
