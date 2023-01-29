output: swapBytes.o main.o
	gcc swapBytes.o main.o -o output

asm.o: swapBytes.s
	gcc -g -Wall -c swapBytes.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
