output: calc.o main.o
	gcc calc.o main.o -o output

calc.o: calc.s
	gcc -g -Wall -c calc.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
