output: steps.o main.o
	gcc steps.o main.o -o output

asm.o: steps.s
	gcc -g -Wall -c steps.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
