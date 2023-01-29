output: calculate.o main.o
	gcc calculate.o main.o -o output

calculate.o: calculate.s
	gcc -g -Wall -c calculate.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
