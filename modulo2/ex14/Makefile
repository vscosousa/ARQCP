output: getArea.o main.o
	gcc getArea.o main.o -o output

asm.o: getArea.s
	gcc -g -Wall -c getArea.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
