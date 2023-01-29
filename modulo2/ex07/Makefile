output: crossSumBytes.o main.o
	gcc crossSumBytes.o main.o -o output

asm.o: crossSumBytes.s
	gcc -g -Wall -c crossSumBytes.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
