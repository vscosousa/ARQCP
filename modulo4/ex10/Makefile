output: incr.o main.o
	gcc incr.o main.o -o output

incr.o: incr.s
	gcc -g -Wall -c incr.s
    
main.o: main.c
	gcc -g -Wall -c main.c
    
clean:
	rm -f *.0 output
    
run: output
	./output
