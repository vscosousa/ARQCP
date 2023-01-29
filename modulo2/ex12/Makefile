output: isMultiple.o main.o
	gcc isMultiple.o main.o -o output

asm.o: isMultiple.s
	gcc -g -Wall -c isMultiple.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
