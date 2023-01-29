output: str_copy_porto2.o main.o
	gcc str_copy_porto2.o main.o -o output

asm.o: str_copy_porto2.s
	gcc -g -Wall -c str_copy_porto2.s
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.0 output
	
run: output
	./output
