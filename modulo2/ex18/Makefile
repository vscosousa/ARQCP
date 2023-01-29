output: operation.o main.o
	gcc operation.o main.o -o output

asm.o: operation.s
	gcc -g -Wall -c operation.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
