output: sum3ints.o main.o
	gcc sum3ints.o main.o -o output

asm.o: sum3ints.s
	gcc -g -Wall -c sum3ints.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
