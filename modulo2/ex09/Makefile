output: sum_and_subtract.o main.o
	gcc sum_and_subtract.o main.o -o output

asm.o: sum_and_subtract.s
	gcc -g -Wall -c sum_and_subtract.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
