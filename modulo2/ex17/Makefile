output: calculator.o main.o
	gcc calculator.o main.o -o output

asm.o: calculator.s
	gcc -g -Wall -c calculator.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
